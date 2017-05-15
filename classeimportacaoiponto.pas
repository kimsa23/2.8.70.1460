unit classeimportacaoiponto;

interface

uses
  System.Actions, System.UITypes,
  Forms, Dialogs, Controls, SysUtils, Classes,
  ACBrValidador,
  uRichEdit, uProgressBar, uRegistro, ustrings, uRotinas, uConstantes, uProtector, udatahora,
  FireDAC.Stan.Option,FireDAC.Comp.Client,
  classequery, classeretornasql, classegerar, classeregistrainformacao, classefuncionario,
  classeexecutasql, classeempresa, classeEndereco, classeaplicacao;

function ImportarIponto(dti, dtf: TDate):Boolean;

implementation

uses uDtmMain, DB, classepontotrabalho;

Type
  TImportacao = class(tobject)
    private
      cdstfuncionario : string;
      dtadmissao : TDate;
      dtdemissao : TDate;
      dti: TDate;
      dtf: TDate;
      qryponto: TClasseQuery;
      coniponto : TFDConnection;
      function conectarBancoIponto:Boolean;
      procedure processarPonto;
      procedure atualizarTabela(tabela, codigo:string);
      procedure atualizarFuncionario(cdfuncionario:integer; boinsert:boolean);
      procedure inserirMotivoAbono;
      procedure atualizarPonto;
      procedure processarAbono(qrypontotrabalho : TClasseQuery; nu:string);
      function getCdturno(cdfuncionario: string; dtemissao: TDate):string;
      procedure inserirItturno(cdturno:string);
    public
      constructor Create;
      destructor destroy;override;
      function Importar(datai, dataf: TDate; cdfuncionario_: integer=0):Boolean;
  end;

function ImportarIponto(dti, dtf:TDate):Boolean;
var
  importacao : TImportacao;
begin
  importacao := timportacao.Create;
  try
    result := importacao.Importar(dti, dtf);
  finally
    importacao.destroy;
  end;
end;

procedure TImportacao.atualizarFuncionario(cdfuncionario: integer; boinsert:boolean);
var
  qryPEDESTRES, qryTBHISTORICO_FUNCIONARIO: TClasseQuery;
  funcionario : TFuncionario;
  cdmunicipio : string;
begin
  qryPEDESTRES               := TClasseQuery.Create(coniponto, 'select * from PEDESTRES where codigo='+inttostr(cdfuncionario));
  qryTBHISTORICO_FUNCIONARIO := TClasseQuery.Create(coniponto, 'select * from TBHISTORICO_FUNCIONARIO where codfuncionario='+inttostr(cdfuncionario));
  funcionario := TFuncionario.Create;
  try
    funcionario.Select(cdfuncionario);
    funcionario.cdfuncionario := cdfuncionario;
    atualizarTabela(_setor , qryPEDESTRES.q.fieldbyname(_CODSETOR).asstring);
    atualizarTabela(_funcao, qryPEDESTRES.q.fieldbyname(_CODCARGO).asstring);
    funcionario.nmfuncionario    := UpperCase(RetiraAcentos(qryPEDESTRES.q.fieldbyname('NOME').asstring));
    funcionario.DTADMISSAO       := qryPEDESTRES.q.fieldbyname('DTADMISSAO').AsDateTime;
    funcionario.DTDEMISSAO       := qryPEDESTRES.q.fieldbyname('DTRESCISAO').AsDateTime;
    if (funcionario.DTDEMISSAO <> strtodate(_31_12_1899)) and (funcionario.DTDEMISSAO > StrToDate('01/01/2000')) then
    begin
      funcionario.cdstfuncionario := 3;
    end;
    if funcionario.dtdemissao = StrToDate(_30_12_1899) then
    begin
      funcionario.dtdemissao := 0;
    end;
    cdstfuncionario := funcionario.cdstfuncionario.ToString;
    dtdemissao      := funcionario.dtdemissao;
    dtadmissao      := funcionario.dtadmissao;
    funcionario.cdsetor            := qryPEDESTRES.q.fieldbyname('CODSETOR').asinteger;
    funcionario.cdfuncao           := qryPEDESTRES.q.fieldbyname('CODCARGO').asinteger;
    funcionario.nucracha           := qryPEDESTRES.q.fieldbyname('CRACHA').asstring;
    funcionario.nuinss             := qryPEDESTRES.q.fieldbyname('PIS').asstring;
    if boinsert then
    begin
      funcionario.email              := qryPEDESTRES.q.fieldbyname('EMAIL').asstring;
      funcionario.dsobservacao       := qryPEDESTRES.q.fieldbyname('OBS').asstring;
      funcionario.nucarteiratrabalho := qryPEDESTRES.q.fieldbyname('CTPS').asstring;
      funcionario.nuseriecarteiratrabalho := qryPEDESTRES.q.fieldbyname('SERIE').asstring;
      funcionario.dtcadastro       := qryPEDESTRES.q.fieldbyname('DATA_CADASTRO').AsDateTime;
      funcionario.nulivropagina    := UpperCase(RetiraAcentos(qryPEDESTRES.q.fieldbyname('REGISTRO').asstring));
      funcionario.nmpai              := UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('NOME_PAI').asstring));
      funcionario.nmmae              := UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('NOME_MAE').asstring));
      funcionario.nucpf              := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('CPF').asstring;
      funcionario.nuidentid          := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('RG').asstring;
      funcionario.cduf               := qregistro.CodigodoString(_uf, UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('UF').asstring)), _sguf);
      if qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('CIDADE').asstring <> '' then
      begin
        cdmunicipio := qendereco.get_cdmunicipio(UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('UF').asstring)), UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('CIDADE').asstring)));
        if cdmunicipio <> '' then
        begin
          funcionario.cdmunicipio        := strtoint(cdmunicipio);
        end;
      end
      else
      begin
        funcionario.cdmunicipio        := 0;
      end;
      funcionario.dtnascimento       := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('DT_NASCIMENTO').AsDateTime;
      funcionario.nucep              := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('CEP').asstring;
      funcionario.nmbairro           := UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('BAIRRO').asstring));
      funcionario.nufone1            := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('TEL').asstring;
      funcionario.nufone2            := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('CEL').asstring;
      funcionario.cdsexo             := UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('SEXO').asstring));
      funcionario.cdestcivil         := UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('EST_CIVIL').asstring));
      funcionario.dsendereco         := UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('ENDERECO').asstring));
      funcionario.nureservista       := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('RESERVISTA').asstring;
      funcionario.tpcategoriacnh     := UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('CATEGORIA_CNH').asstring));
      funcionario.nucnh              := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('CNH').asstring;
      funcionario.dtvalidadecnh      := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('VALIDADE_CNH').AsDateTime;
      funcionario.dtemissaoidentid   := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('DTEMISSAO_RG').AsDateTime;
      funcionario.dsemissaoidentid   := UpperCase(RetiraAcentos(qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('EMISSOR_RG').asstring));
      funcionario.nutituloeleitor    := qryTBHISTORICO_FUNCIONARIO.q.fieldbyname('TITULO_ELEITOR').asstring;
      funcionario.Insert;
    end
    else
    begin
      funcionario.Update;
    end;
  finally
    freeandnil(qryPEDESTRES);
    freeandnil(qryTBHISTORICO_FUNCIONARIO);
  end;
end;

procedure TImportacao.atualizarPonto;
var
  qrypontotrabalho : TClasseQuery;
  pontotrabalho : TPontoTrabalho;
begin
  if (cdstfuncionario = _3) and (dtdemissao < qryponto.q.fieldbyname(_DTPONTO).AsDateTime) then
  begin
    Exit;
  end;
  if dtadmissao > qryponto.q.fieldbyname(_DTPONTO).AsDateTime then
  begin
    Exit;
  end;
  qrypontotrabalho := TClasseQuery.Create('select * '+
                                          'from pontotrabalho '+
                                          'where cdempresa='+empresa.cdempresa.tostring+' and cdfuncionario='+qryponto.q.fieldbyname(_CODFUNCIONARIO).AsString+' and dtemissao='+getdtbanco(qryponto.q.fieldbyname(_DTPONTO).AsDateTime), true);
  pontotrabalho    := TPontoTrabalho.create;
  try
    qrypontotrabalho.q.Insert;
    qrypontotrabalho.q.FieldByName(_cdturno).asstring       := getCdturno(qryponto.q.fieldbyname(_CODFUNCIONARIO).AsString, qryponto.q.fieldbyname(_DTPONTO).AsDateTime);
    qrypontotrabalho.q.FieldByName(_cdempresa).AsLargeInt     := empresa.cdempresa;
    qrypontotrabalho.q.FieldByName(_CDFUNCIONARIO).asstring := qryponto.q.fieldbyname(_CODFUNCIONARIO).AsString;
    qrypontotrabalho.q.FieldByName(_DTEMISSAO).AsDateTime   := qryponto.q.fieldbyname(_DTPONTO).AsDateTime;
    processarAbono(qrypontotrabalho, _1);
    processarAbono(qrypontotrabalho, _2);
    processarAbono(qrypontotrabalho, _3);
    processarAbono(qrypontotrabalho, _4);
    processarAbono(qrypontotrabalho, _5);
    processarAbono(qrypontotrabalho, _6);
    processarAbono(qrypontotrabalho, _7);
    processarAbono(qrypontotrabalho, _8);
    qrypontotrabalho.q.FieldByName(_HRPONTO1).AsDateTime    := qryponto.q.fieldbyname(_HORAPONTO1).AsDateTime;
    qrypontotrabalho.q.FieldByName(_HRPONTO2).AsDateTime    := qryponto.q.fieldbyname(_HORAPONTO2).AsDateTime;
    qrypontotrabalho.q.FieldByName(_HRPONTO3).AsDateTime    := qryponto.q.fieldbyname(_HORAPONTO3).AsDateTime;
    qrypontotrabalho.q.FieldByName(_HRPONTO4).AsDateTime    := qryponto.q.fieldbyname(_HORAPONTO4).AsDateTime;
    qrypontotrabalho.q.FieldByName(_HRPONTO5).AsDateTime    := qryponto.q.fieldbyname(_HORAPONTO5).AsDateTime;
    qrypontotrabalho.q.FieldByName(_HRPONTO6).AsDateTime    := qryponto.q.fieldbyname(_HORAPONTO6).AsDateTime;
    qrypontotrabalho.q.FieldByName(_HRPONTO7).AsDateTime    := qryponto.q.fieldbyname(_HORAPONTO7).AsDateTime;
    qrypontotrabalho.q.FieldByName(_HRPONTO8).AsDateTime    := qryponto.q.fieldbyname(_HORAPONTO8).AsDateTime;
    qrypontotrabalho.q.FieldByName(_BOFERIADO).asstring     := get_dia_eh_feriado(qryponto.q.fieldbyname(_DTPONTO).AsDateTime);
    RegistraInformacao_(qrypontotrabalho.q);
    pontotrabalho.Select(qrypontotrabalho.q);
    pontotrabalho.CalcularHoras;
    pontotrabalho.Atribuir(qrypontotrabalho.q);
    qrypontotrabalho.q.Post;
    qrypontotrabalho.q.ApplyUpdates(0);
  finally
    freeandnil(qrypontotrabalho);
    pontotrabalho.destroy;
  end;
end;

procedure TImportacao.atualizarTabela(tabela, codigo: string);
  procedure set_nmabreviado;
  begin
    ExecSQL('update tpabono set nmabreviado='+quotedstr(UpperCase(RetiraAcentos(NomedoCodigo(coniponto, _TBMOTIVOABONO, codigo, _CODABONO, _abreviatura))))+' where cdempresa='+empresa.cdempresa.tostring+' and cdtpabono='+codigo);
  end;
begin
  if codigo = '' then
  begin
    Exit;
  end;
  if CodigoExiste(tabela, codigo) then
  begin
    if tabela = _setor then
    begin
      ExecSQL('update setor set nmsetor='+quotedstr(UpperCase(RetiraAcentos(NomedoCodigo(coniponto, _TBSETOR, codigo, _CODSETOR, _DESCSETOR))))+' where cdempresa='+empresa.cdempresa.tostring+' and cdsetor='+codigo)
    end
    else if tabela = _funcao  then
    begin
      ExecSQL('update funcao set nmfuncao='+quotedstr(UpperCase(RetiraAcentos(NomedoCodigo(coniponto, _TBcargo, codigo, _CODcargo, _DESCcargo))))+' where cdempresa='+empresa.cdempresa.tostring+' and cdfuncao='+codigo)
    end
    else if tabela = _tpabono then
    begin
      ExecSQL('update tpabono set nmtpabono='+quotedstr(UpperCase(RetiraAcentos(NomedoCodigo(coniponto, _TBMOTIVOABONO, codigo, _CODABONO, _DESCABONO))))+' where cdempresa='+empresa.cdempresa.tostring+' and cdtpabono='+codigo);
      set_nmabreviado;
    end;
  end
  else if tabela = _setor then
  begin
    inserirregistro(tabela, codigo, UpperCase(RetiraAcentos(NomedoCodigo(coniponto, _TBSETOR        , codigo, _CODSETOR, _DESCSETOR))))
  end
  else if tabela = _funcao  then
  begin
    inserirregistro(tabela, codigo, UpperCase(RetiraAcentos(NomedoCodigo(coniponto, _TBCARGO        , codigo, _CODCARGO, _DESCCARGO))))
  end
  else if tabela = _tpabono then
  begin
    inserirregistro(tabela, codigo, UpperCase(RetiraAcentos(NomedoCodigo(coniponto, _TBMOTIVOABONO, codigo, _CODABONO, _DESCABONO))));
    set_nmabreviado;
  end;
end;

function TImportacao.conectarBancoIponto: Boolean;
begin
  coniponto.Params.Clear;
  coniponto.LoginPrompt := false;
  coniponto.Params.Add('Server='+Empresa.funcionario.dsservidoriponto);
  coniponto.Params.Add('Database='+empresa.funcionario.dspathiponto);
  coniponto.Params.Add('Protocol=TCPIP');
  coniponto.Params.Add('User_Name=USRCONSULTA');
  coniponto.Params.Add('Password=inspellconsulta');
  coniponto.Params.Add('DriverID=FB');
  coniponto.Params.add('ServerCharSet=WIN1252');
  coniponto.open;
  result := True;
end;

constructor TImportacao.Create;
begin
  coniponto := TFDConnection.Create(nil);
  qryponto  := TClasseQuery.create(coniponto, '');
end;

destructor TImportacao.destroy;
begin
  FreeAndNil(coniponto);
  inherited;
end;

function TImportacao.getCdturno(cdfuncionario: string; dtemissao: TDate): string;
begin
  result := RetornaSQLString(coniponto, 'SELECT FIRST 1 CODTABHOR '+
                                        'FROM TBAGENDAMENTOTABELA '+
                                        'WHERE CODFUNCIONARIO='+cdfuncionario+' and DATAINICIAL<='+GetDtBanco(dtemissao)+' '+
                                        'order by datainicial desc');
  if CodigoExiste(_turno, result) then
  begin
    Exit;
  end;
  if result = '' then
  begin
    messagedlg('Não foi encontrato o turno do funcionario '+nomedocodigo(_funcionario, cdfuncionario)+' na data menor ou igual a '+GetDtAbrev(dtemissao)+'.', mtinformation, [mbok], 0);
    abort;
  end;
  InserirRegistro(_turno, Result, RetornaSQLString(coniponto, 'SELECT DESCRICAO FROM TBTABELAHORARIO WHERE CODTABHOR='+result));
  inserirItturno(Result);
end;

function TImportacao.Importar(datai, dataf: TDate; cdfuncionario_: integer=0):Boolean;
begin
  dti := datai;
  dtf := dataf;
  result := conectarBancoIponto;
  if not result then
  begin
    Exit;
  end;
  ExecSQL('delete from pontotrabalho where cdempresa='+empresa.cdempresa.tostring+' and dtemissao between '+GetDtBanco(datai)+' and '+GetDtBanco(dataf));
  qryponto.q.Open('select * from TBPONTO where dtponto between '+GetDtBanco(dti)+' and '+getdtbanco(dtf)+' ORDER BY CODFUNCIONARIO,DTPONTO');;
  if qryponto.q.Eof then
  begin
    Result := True;
    Exit;
  end;
  processarPonto;
  result := true;
end;

procedure TImportacao.inserirItturno(cdturno: string);
var
  t, q: TClasseQuery;
begin
  q := TClasseQuery.Create(QRetornaSQL.get_select_from(_itturno, _0, _cdturno));
  t := TClasseQuery.create(coniponto, 'select * from TBCONFIGURACAOSEMANA where CODTABHOR='+cdturno);
  try
    while not t.q.Eof do
    begin
      if t.q.fieldbyname('diasemana').AsInteger in [1, 7] then
      begin
        t.q.Next;
        Continue;
      end;
      q.q.Insert;
      q.q.FieldByName(_cdturno).AsString      := cdturno;
      q.q.FieldByName(_cditturno).AsString    := GerarCodigo(_itturno);
      q.q.FieldByName(_hrinicio1).AsDateTime  := t.q.fieldbyname('entrada1').AsDateTime;
      q.q.FieldByName(_hrinicio2).AsDateTime  := t.q.fieldbyname('entrada2').AsDateTime;
      q.q.FieldByName(_hrtermino1).AsDateTime := t.q.fieldbyname('saida1').AsDateTime;
      q.q.FieldByName(_hrtermino2).AsDateTime := t.q.fieldbyname('saida2').AsDateTime;
      q.q.FieldByName(_cddia).AsString        := t.q.fieldbyname('diasemana').AsString;
      RegistraInformacao_(q.q);
      q.q.Post;
      q.q.applyupdates(0);
      t.q.Next;
    end;
  finally
    freeandnil(q);
    freeandnil(t);
  end;
end;

procedure TImportacao.inserirMotivoAbono;
var
  i : integer;
begin
  for i := 1 to 8 do
  begin
    atualizarTabela(_tpabono, qryponto.q.fieldbyname(_CODABONO+inttostr(i)).AsString);
    atualizarTabela(_tpabono, qryponto.q.fieldbyname(_motivo+inttostr(i)).AsString);
  end;
end;

procedure TImportacao.processarAbono(qrypontotrabalho : TClasseQuery; nu: string);
begin
  if qryponto.q.fieldbyname(_CODABONO+nu).AsString <> '' then
  begin
    qrypontotrabalho.q.FieldByName(_CDTPABONO+nu).asstring    := qryponto.q.fieldbyname(_CODABONO+nu).AsString
  end
  else if qryponto.q.fieldbyname(_motivo+nu).AsString   <> '' then
  begin
    qrypontotrabalho.q.FieldByName(_CDTPABONO+nu).asstring    := qryponto.q.fieldbyname(_motivo+nu).AsString;
  end;
end;

procedure TImportacao.processarPonto;
var
  cdfuncionario : string;
begin
  cdfuncionario  := '';
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := qryponto.q.RecordCount;
    frmprogressbar.Show;
    while not qryponto.q.Eof do
    begin
      frmprogressbar.pnl.Caption := 'Processando... Registro '+inttostr(qryponto.q.RecNo)+' de '+inttostr(qryponto.q.RecordCount)+ ' - Funcionário '+qryponto.q.fieldbyname(_codfuncionario).AsString+' - Data '+qryponto.q.fieldbyname(_DTPONTO).AsString;
      frmprogressbar.gau.Progress := qryponto.q.RecNo;
      Application.ProcessMessages;
      if cdfuncionario <> qryponto.q.fieldbyname(_codfuncionario).AsString then
      begin
        atualizarFuncionario(qryponto.q.fieldbyname(_codfuncionario).AsInteger, not CodigoExiste(_funcionario, qryponto.q.fieldbyname(_codfuncionario).AsString));
        cdfuncionario := qryponto.q.fieldbyname(_codfuncionario).AsString;
      end;
      inserirMotivoAbono;
      atualizarPonto;
      qryponto.q.next;
    end;
  finally
    frmprogressbar.free;
  end;
end;

end.
