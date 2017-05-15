unit classeimportacaodados;

interface

uses
  SysUtils, Dialogs, Forms, Variants, Controls, Windows, excelxp, Classes, System.Actions, System.UITypes,
  FireDAC.Comp.Client,
  ustrings, uRegistro, uConstantes, uprogressbar, uRotinas, udatahora,
  classeaplicacao, classeexecutasql, classeretornasql, classeempresa, classequery,
  classeproduto, classegerar, classecliente, classefornecedor,
  classemovto;

function Importar_Dados_para_banco(tpfonte, nmexibe:string):Boolean;
function ImportarDigisatProduto: boolean;
function ImportarDigisatCliente: boolean;
function ImportarDigisatFornecedor: boolean;

implementation

type
  TFone = class
    class function set_fone(nufone: string): string;
  end;
  TImportacaoDigisatCliente = class
    function Importar:boolean;
  end;
  TImportacaoDigisatFornecedor = class
    function Importar:boolean;
  end;
  TImportacaoDigisatProduto = class
    function Importar:boolean;
  end;
  TImportarDados = class(TObject)
  private
    reg_importado, reg_ignorado : Integer;
    tpfonte, nmexibe: string;
    tsinclusao : TDateTime;
    function tratar_cep(nucep: string): string;
    procedure importarcliente;
  public
    constructor create(tpfonte_, nmexibe_:string);
  end;

function ImportarDigisatProduto:Boolean;
var
  importar : TImportacaoDigisatProduto;
begin
  importar := TImportacaoDigisatProduto.create;
  try
    result := importar.importar;
  finally
    freeandnil(importar);
  end;
end;

function ImportarDigisatCliente:Boolean;
var
  importar : TImportacaoDigisatCliente;
begin
  importar := TImportacaoDigisatCliente.create;
  try
    result := importar.importar;
  finally
    freeandnil(importar);
  end;
end;

function ImportarDigisatFornecedor:Boolean;
var
  importar : TImportacaoDigisatFornecedor;
begin
  importar := TImportacaoDigisatFornecedor.create;
  try
    result := importar.importar;
  finally
    freeandnil(importar);
  end;
end;

function Importar_Dados_para_banco(tpfonte, nmexibe:string):Boolean;
var
  importacaodados : TImportarDados;
begin
  importacaodados := TImportarDados.create(tpfonte, nmexibe);
  try
    importacaodados.importarcliente;
    messagedlg('Importação concluída!'#13'Registro(s) importado(s) '+inttostr(importacaodados.reg_importado)+#13'Registro(s) ignorado(s) '+inttostr(importacaodados.reg_ignorado), mtinformation, [mbok], 0);
    result := True;
  finally
    importacaodados.Free;
  end;
end;

constructor TImportarDados.create(tpfonte_, nmexibe_: string);
begin
  tpfonte       := tpfonte_;
  nmexibe       := nmexibe_;
  tsinclusao    := tsBanco;
  reg_importado := 0;
  reg_ignorado  := 0;
end;

procedure TImportarDados.importarcliente;
var
  i, LCID : integer;
  dtcadastro, nmfile, codigo:string;
  AplicacaoE : TExcelApplication;
  Planilha : TExcelWorksheet;
  wkbk : _Workbook;
  c : TClasseQuery;
begin
  QRotinas.getfilename(nmfile);
  if nmfile = '' then
  begin
    Exit;
  end;
  AplicacaoE     := TExcelApplication.Create(nil);
  Planilha       := TExcelWorksheet.Create(nil);
  LCID           := GetUserDefaultLCID;
  wkbk           := AplicacaoE.Workbooks.Open(nmfile, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, LCID);
  frmprogressbar := Tfrmprogressbar.Create(application);
  frmprogressbar.gau.MaxValue := 100;
  frmprogressbar.Show;
  c := TClasseQuery.Create(QRetornaSQL.get_select_from(_cliente, empresa.cdempresa, _cd+_empresa), true);
  try
    Planilha.ConnectTo(wkbk.Worksheets[1] as _Worksheet);
    Planilha.Activate; // torna a planilha da lista a planilha ativa
    i := 2;
    codigo := removercaracteres(Trim(Planilha.Range[_A+inttostr(i),_A+inttostr(i)].Value2));
    while codigo <> '' do
    begin
      application.Title           := inttostr(i)+' - '+codigo;
      frmprogressbar.pnl.Caption  := codigo;
      frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
      Application.ProcessMessages;
      if frmprogressbar.gau.Progress = 100 then
      begin
        frmprogressbar.gau.Progress := 0;
      end;
      if c.q.Locate(UpperCase(_CDCLIENTE), codigo, []) then
      begin
        Inc(reg_ignorado);
        Inc(i);
        codigo := removercaracteres(Trim(Planilha.Range[_A+inttostr(i),_A+inttostr(i)].Value2));
        continue;
      end;
      c.q.Insert;
      c.q.FieldByName(_cdcliente).asstring := codigo;
      c.q.FieldByName(_rzsocial).asstring  := UPPERCASE(RetiraAcentos(Planilha.Range[_b+inttostr(i),_b+inttostr(i)].Value2));
      c.q.FieldByName(_nmcliente).asstring := UPPERCASE(RetiraAcentos(Planilha.Range[_b+inttostr(i),_b+inttostr(i)].Value2));
      dtcadastro                         := Planilha.Range[_c+inttostr(i),_c+inttostr(i)].Value2;
      if Trim(dtcadastro) <> '' then
      begin
        c.q.FieldByName(_dtcadastro).AsDateTime  := StrToDate(dtcadastro);
      end;
      if Length(Planilha.Range[_d+inttostr(i),_d+inttostr(i)].Value2) = 14 then
      begin
        c.q.FieldByName(_tppessoa).asstring := _F;
        c.q.FieldByName(_nucpf).asstring    := Planilha.Range[_d+inttostr(i),_d+inttostr(i)].Value2;
      end
      else if Length(Planilha.Range[_d+inttostr(i),_d+inttostr(i)].Value2) = 18 then
      begin
        c.q.FieldByName(_tppessoa).asstring := _J;
        c.q.FieldByName(_nucnpj).asstring   := Planilha.Range[_d+inttostr(i),_d+inttostr(i)].Value2
      end;
      c.q.FieldByName(_nufone1).asstring       := tfone.set_fone(Planilha.Range[_e+inttostr(i),_e+inttostr(i)].Value2);
      c.q.FieldByName(_dsendereco).asstring    := UPPERCASE(RetiraAcentos(Planilha.Range[_f+inttostr(i),_f+inttostr(i)].Value2));
      c.q.FieldByName(_dsendcbrnc).asstring    := UPPERCASE(RetiraAcentos(Planilha.Range[_f+inttostr(i),_f+inttostr(i)].Value2));
      c.q.FieldByName(_dsnumero).asstring      := UPPERCASE(RetiraAcentos(Planilha.Range[_g+inttostr(i),_g+inttostr(i)].Value2));
      c.q.FieldByName(_dsnumcbrnc).asstring    := UPPERCASE(RetiraAcentos(Planilha.Range[_g+inttostr(i),_g+inttostr(i)].Value2));
      c.q.FieldByName(_nmbairro).asstring      := UPPERCASE(RetiraAcentos(Planilha.Range[_h+inttostr(i),_h+inttostr(i)].Value2));
      c.q.FieldByName(_nmbaicbrnc).asstring    := UPPERCASE(RetiraAcentos(Planilha.Range[_h+inttostr(i),_h+inttostr(i)].Value2));
      c.q.FieldByName(_cduf).asstring          := CodigodoCampo(_uf, Planilha.Range[_i+inttostr(i),_i+inttostr(i)].Value2, _sguf);
      if c.q.FieldByName(_cduf).AsString <> '' then
      begin
        c.q.FieldByName(_cdmunicipio).AsString := RetornaSQLString('select cdmunicipio from municipio where cduf='+c.q.FieldByName(_cduf).AsString+' and nmmunicipio = '+ quotedstr(UPPERCASE(RetiraAcentos(Planilha.Range[_j+inttostr(i),_j+inttostr(i)].Value2))));
      end;
      c.q.FieldByName(_nucep).asstring         := tratar_cep(Planilha.Range[_l+inttostr(i),_l+inttostr(i)].Value2);
      c.q.FieldByName(_nucepcbrnc).asstring    := tratar_cep(Planilha.Range[_l+inttostr(i),_l+inttostr(i)].Value2);
      c.q.FieldByName(_cdstcliente).AsString   := _1;
      c.q.FieldByName(_cdusuarioi).AsString    := _1;
      c.q.FieldByName(_cdusuarioa).AsString    := _1;
      c.q.FieldByName(_cdcomputadori).AsString := _1;
      c.q.FieldByName(_cdcomputadora).AsString := _1;
      c.q.FieldByName(_tsinclusao).AsDateTime  := tsinclusao;
      c.q.FieldByName(_tsalteracao).AsDateTime := tsinclusao;
      c.q.FieldByName(_cdempresa).AsLargeInt     := empresa.cdempresa;
      aplicacao.aplyupdates(c.q);
      Inc(i);
      Inc(reg_importado);
      codigo := removercaracteres(Trim(Planilha.Range[_A+inttostr(i),_A+inttostr(i)].Value2));
    end;
  finally
    FreeAndNil(c);
    freeandnil(frmprogressbar);
    AplicacaoE.Workbooks.Close(lcid);
    FreeAndNil(planilha);
    FreeAndNil(AplicacaoE);
  end;
end;

function TImportarDados.tratar_cep(nucep: string): string;
begin
  result := nucep;
  if Length(result) = 8 then
  begin
    result := Copy(nucep, 1, 5)+'-'+copy(nucep, 6, 3);
  end;
end;

function TImportacaoDigisatProduto.Importar: boolean;
var
  qgrupo, q2, q : TClasseQuery;
  sql : TStrings;
  produto : TProduto;
  unidade : tunidade;
  conexao : TFDConnection;
  nmbanco : string;
  movto : tmovto;
begin
  if not QRotinas.getfilename(nmbanco) then
  begin
    exit;
  end;
  conexao := TFDConnection.create(nil);
  try
    conexao.params.text := aplicacao.confire.params.text;
    conexao.params[2] := 'Database='+nmbanco;
    conexao.open;
    q := TClasseQuery.create(conexao, 'select * from estoque');
    q2 := TClasseQuery.create(conexao, 'select * from est_adicionais');
    qgrupo := TClasseQuery.create('select cdgrupo,nunivel from grupo where cdempresa='+empresa.cdempresa.tostring);
    sql := tstringlist.Create;
    frmprogressbar := Tfrmprogressbar.Create(application);
    try
      frmprogressbar.gau.MaxValue := q.q.RecordCount;
      frmprogressbar.Show;
      while not q.q.Eof do
      begin
        frmprogressbar.gau.Progress := q.q.recno;
        frmprogressbar.pnl.Caption  := 'Importando Produto - Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
        Application.ProcessMessages;
        produto := tproduto.create;
        unidade := tunidade.create;
        movto := tmovto.create;
        try
          produto.boativar  := _s;
          produto.boentrada := _s;
          produto.bosaida   := _s;
          produto.bomovto   := _s;
          produto.bopedido  := _s;
          produto.boorcamento := _s;
          produto.boordserv := _s;
          produto.boordcompra := _s;
          produto.bopedidomaterial := _s;
          produto.cdproduto := q.q.FieldByName('CODIGO').AsInteger;
          produto.nmproduto := q.q.FieldByName('NOME').asstring;
          produto.dsproduto := q.q.FieldByName('DESCRICAO').asstring;
          produto.cdunidade := qregistro.CodigodoNomeInteiro(_unidade, q.q.FieldByName('UND_V').asstring);
          if produto.cdunidade = 0 then
          begin
            unidade.nmunidade := q.q.FieldByName('UND_V').asstring;
            sql.add(unidade.Insert(true));
            produto.cdunidade := unidade.cdunidade;
          end;
          produto.vlcusto := q.q.FieldByName('PRECO_CUSTO').ascurrency;
          produto.vlvenda := q.q.FieldByName('PRECO_REV').ascurrency;
          produto.dsobservacao := q.q.FieldByName('OBS').asstring;
          if q2.q.Locate('codigo', q.q.FieldByName('CODIGO').AsInteger, []) then
          begin
            produto.nuclfiscal := q2.q.FieldByName('ncm').AsString;
            produto.nusticms := copy(q2.q.FieldByName('CSOSN').AsString, 2, 3);
            produto.cdorigem := copy(q2.q.FieldByName('CSOSN').AsString, 1, 1);
            produto.cdtpitem := q2.q.FieldByName('tipo_item').AsString;
            if qgrupo.q.Locate(_nunivel, q2.q.FieldByName('tipo_item').AsString, []) then
            begin
              produto.cdgrupo := qgrupo.q.FieldByName(_cdgrupo).asinteger;
              produto.nunivel := qgrupo.q.FieldByName(_nunivel).asstring;
            end;
          end;
          if CodigoExiste(_produto, q.q.FieldByName('CODIGO').AsString) then
          begin
            sql.add(produto.Update(true));
          end
          else
          begin
            sql.add(produto.Insert(true));
            if q.q.FieldByName('qtd').AsFloat > 0 then
            begin
              movto.cdmovto := qgerar.GerarCodigo(_movto);
              movto.cdtpmovto := 2;
              movto.dtemissao := DtBanco;
              with movto.ItMovto.New do
              begin
                cditmovto := qgerar.GerarCodigo(_itmovto);
                cdmovto := movto.cdmovto;
                cdproduto := produto.cdproduto;
                qtitem := q.q.FieldByName('qtd').AsFloat;
                cddigitado := inttostr(produto.cdproduto);
              end;
              sql.add(movto.Insert(true));
              sql.add(movto.itmovto.Items[0].Insert(true));
            end;
          end;
        finally
          freeandnil(movto);
          freeandnil(produto);
          freeandnil(unidade);
        end;
        q.q.Next;
      end;
      if sql.count > 0 then
      begin
        ExecutaScript(sql);
      end;
    finally
      freeandnil(q);
      freeandnil(frmprogressbar);
      freeandnil(q2);
      freeandnil(sql);
    end;
  finally
    freeandnil(conexao);
  end;
end;

function TImportacaoDigisatCliente.Importar: boolean;
var
  q, q2, q3 : TClasseQuery;
  sql : TStrings;
  cliente : tcliente;
  itcontcliente : TItContCliente;
  conexao : TFDConnection;
  nmbanco : string;
begin
  if not QRotinas.getfilename(nmbanco) then
  begin
    exit;
  end;
  conexao := TFDConnection.create(nil);
  try
    conexao.params.text := aplicacao.confire.params.text;
    conexao.params[2] := 'Database='+nmbanco;
    conexao.open;
    q := TClasseQuery.create(conexao, 'select * from clientes');
    q2 := tclassequery.create(conexao, 'select * from cli_enderecos');
    q3 := tclassequery.create(conexao, 'select * from CLI_ADICIONAIS');
    sql := tstringlist.Create;
    frmprogressbar := Tfrmprogressbar.Create(application);
    try
      frmprogressbar.gau.MaxValue := q.q.RecordCount;
      frmprogressbar.Show;
      while not q.q.Eof do
      begin
        frmprogressbar.gau.Progress := q.q.recno;
        frmprogressbar.pnl.Caption  := 'Importando Cliente - Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
        Application.ProcessMessages;
        if q.q.FieldByName('CODIGO').AsString = '0' then
        begin
          q.q.next;
          continue;
        end;
        cliente := tcliente.create;
        itcontcliente := titcontcliente.create;
        try
          cliente.cdpais := _nscpais;
          cliente.cdcliente := q.q.FieldByName('CODIGO').AsLargeInt;
          cliente.rzsocial  := q.q.FieldByName('NOME').AsString;
          cliente.nmcliente := q.q.FieldByName('FANTASIA').AsString;
          if cliente.nmcliente = '' then
          begin
            cliente.nmcliente := cliente.rzsocial;
          end;
          cliente.nucnpj := q.q.FieldByName('CNPJ').AsString;
          cliente.nucpf := q.q.FieldByName('CPF').AsString;
          cliente.nuinscest := q.q.FieldByName('IE').AsString;
          cliente.nuidentid := q.q.FieldByName('RG').AsString;
          cliente.cduf := qregistro.CodigodoString(_uf, q.q.FieldByName('UF').AsString, _sguf);
          cliente.nufone1 := tfone.set_fone(q.q.FieldByName('TELEFONE').AsString);
          cliente.nufax := tfone.set_fone(q.q.FieldByName('FAX').AsString);
          cliente.nufone2 := tfone.set_fone(q.q.FieldByName('CELULAR').AsString);
          cliente.tppessoa := q.q.FieldByName('FIS_JUR').AsString;
          cliente.vllimite := q.q.FieldByName('LIMITE_CREDITO').AsCurrency;
          cliente.tppessoa := q.q.FieldByName('FIS_JUR').AsString;
          cliente.cdstcliente := 1;
          cliente.dsobservacao := q.q.FieldByName('OBSERVACOES').AsString;
          if q2.q.Locate('codigo', q.q.FieldByName('codigo').asstring, []) then
          begin
            cliente.dsendereco := q2.q.FieldByName('endereco').AsString;
            cliente.dscomplemento := q2.q.FieldByName('complemento').AsString;
            cliente.nmbairro := q2.q.FieldByName('BAIRRO').AsString;
            cliente.nucep := q2.q.FieldByName('CEP').AsString;
            cliente.dsnumero := q2.q.FieldByName('NUMERO').AsString;
            cliente.cduf := qregistro.CodigodoString(_uf, q2.q.FieldByName('uf').AsString, _sguf);
            if cliente.cduf > 0 then
            begin
              cliente.cdmunicipio := retornasqlinteger('select cdmunicipio from municipio where cduf='+inttostr(cliente.cduf)+' and nmmunicipio='+quotedstr(uppercase(RetiraAcentos(q2.q.FieldByName('CIDADE').AsString))));
            end;
            cliente.cdpais := qregistro.CodigodoString(_pais, q2.q.FieldByName('PAIS').AsString, _nmpais);
          end;
          if q3.q.Locate('codigo', q.q.FieldByName('codigo').asstring, []) then
          begin
            cliente.email := q3.q.FieldByName('email').AsString;
          end;
          if cliente.cdpais = 0 then
          begin
            cliente.cdpais := _nscpais;
          end;
          if CodigoExiste(_cliente, q.q.FieldByName('CODIGO').AsString) then
          begin
            sql.add(cliente.Update(true));
          end
          else
          begin
            sql.add(cliente.Insert(true));
            if q.q.FieldByName('contato').AsString <> '' then
            begin
              itcontcliente.cditcontcliente := qgerar.GerarCodigo(_itcontcliente);
              itcontcliente.nmitcontcliente := q.q.FieldByName('contato').AsString;
              itcontcliente.cdcliente := cliente.cdcliente;
              sql.add(itcontcliente.Insert(true));
            end;
          end;
        finally
          freeandnil(cliente);
          freeandnil(itcontcliente);
        end;
        q.q.Next;
      end;
      if sql.count > 0 then
      begin
        ExecutaScript(sql);
      end;
    finally
      freeandnil(frmprogressbar);
      freeandnil(q);
      freeandnil(q2);
      freeandnil(q3);
      freeandnil(sql);
    end;
  finally
    freeandnil(conexao);
  end;
end;

class function TFone.set_fone(nufone: string): string;
var
  prefixo : string;
begin
  prefixo := _31;
  nufone := RemoverEspacosVazios(nufone);
  nufone := RemoverCaracterInicio(nufone, _0);
  if copy(nufone, 1, 2) = '(0' then
  begin
    delete(nufone, 2, 1);
  end;
  result := RemoverEspacosVazios(nufone);
  if length(nufone) = 8 then
  begin
    result := '('+prefixo+')'+copy(nufone, 1, 4)+'-'+copy(nufone,5, 4);
  end
  else if length(nufone) = 9 then
  begin
    if copy(result,9, 1) = '.' then
    begin
      result := copy(result,1,8)+'-'+copy(result,10,4)
    end
    else if copy(result,9, 1) = '-' then
    begin
      result := copy(result,1,8)+'-'+copy(result,10,4)
    end
    else if (copy(nufone,5,1) = ' ') or (copy(nufone, 5, 1) = ',') or (copy(nufone, 5, 1) = '-') then
    begin
      result := '('+prefixo+')'+copy(nufone, 1, 4)+'-'+copy(nufone, 6, 4);
    end;
  end
  else if length(nufone) = 10 then
  begin
    if (copy(nufone, 5,1) = '-') and (copy(nufone, 1, 1) = '*') then
    begin
      result := '('+prefixo+')'+copy(nufone, 1, 9)
    end
    else
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone, 3, 4)+'-'+copy(nufone, 7, 4);
    end;
  end
  else if length(nufone) = 11 then
  begin
    if copy(nufone, 3, 1) = '-' then
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone,4,4)+'-'+copy(nufone,8,4)
    end
    else if Copy(nufone, 3, 1) = ' ' then
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone,4,4)+'-'+copy(nufone,8,4)
    end
    else if Copy(nufone, 3, 1) = '/' then
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone,4,4)+'-'+copy(nufone,8,4)
    end
    else
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone,3,9);
    end;
  end
  else if length(nufone) = 12 then
  begin
    if (nufone[3] = ' ') and (nufone[8] = ' ') then
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone,4, 4)+'-'+copy(nufone,9, 4)
    end
    else if (nufone[3] = '-') and (nufone[8] = '-') then
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone,4, 4)+'-'+copy(nufone,9, 4)
    end
    else if (nufone[3] = '/') and (nufone[8] = '-') then
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone,4, 4)+'-'+copy(nufone,9, 4)
    end
    else if (nufone[3] = '.') and (nufone[8] = '-') then
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone,4, 4)+'-'+copy(nufone,9, 4)
    end
    else if (nufone[3] = '-') and (nufone[8] = '.') then
    begin
      result := '('+copy(nufone, 1, 2)+')'+copy(nufone,4, 4)+'-'+copy(nufone,9, 4);
    end;
  end
  else if length(nufone) = 13 then
  begin
    if (nufone[4] = '-') and (nufone[9] = '.') then
    begin
      result := '('+copy(nufone, 2, 2)+')'+copy(nufone,5, 4)+'-'+copy(nufone,10, 4)
    end
    else if (nufone[1] = '(') and (nufone[4] = ')') and (nufone[9] = '-') then
    begin
      result := nufone;
    end
    else
    begin
      result := '('+copy(nufone, 3, 2)+')'+copy(nufone, 6, 4)+'-'+copy(nufone,10,4);
    end;
  end;
end;

{ TImportacaoDigisatFornecedor }

function TImportacaoDigisatFornecedor.Importar: boolean;
var
  Q2, q : TClasseQuery;
  sql : TStrings;
  fornecedor : tfornecedor;
  itcontfornecedor : TItcontfornecedor;
  conexao : TFDConnection;
  nmbanco : string;
begin
  if not QRotinas.getfilename(nmbanco) then
  begin
    exit;
  end;
  conexao := TFDConnection.create(nil);
  try
    conexao.params.text := aplicacao.confire.params.text;
    conexao.params[2] := 'Database='+nmbanco;
    conexao.open;
    q := TClasseQuery.create(conexao, 'select * from fornecedores');
    q2 := tclassequery.create(conexao, 'select * from for_enderecos');
    sql := tstringlist.Create;
    frmprogressbar := Tfrmprogressbar.Create(application);
    try
      frmprogressbar.gau.MaxValue := q.q.RecordCount;
      frmprogressbar.Show;
      while not q.q.Eof do
      begin
        frmprogressbar.gau.Progress := q.q.recno;
        frmprogressbar.pnl.Caption  := 'Importando Fornecedor - Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
        Application.ProcessMessages;
        if q.q.FieldByName('CODIGO').AsString = '0' then
        begin
          q.q.next;
          continue;
        end;
        fornecedor := tfornecedor.create;
        itcontfornecedor := titcontfornecedor.create;
        try
          fornecedor.cdfornecedor := q.q.FieldByName('CODIGO').AsLargeInt;
          fornecedor.rzsocial  := q.q.FieldByName('NOME').AsString;
          fornecedor.nmfornecedor := q.q.FieldByName('FANTASIA').AsString;
          if fornecedor.nmfornecedor = '' then
          begin
            fornecedor.nmfornecedor := fornecedor.rzsocial;
          end;
          fornecedor.nucnpj    := q.q.FieldByName('CNPJ').AsString;
          fornecedor.nucpf     := q.q.FieldByName('CPF').AsString;
          fornecedor.nuinscest := q.q.FieldByName('IE').AsString;
          fornecedor.nuidentid := q.q.FieldByName('RG').AsString;
          fornecedor.cduf         := qregistro.CodigodoString(_uf, q.q.FieldByName('UF').AsString, _sguf);
          fornecedor.nufone1      := tfone.set_fone(q.q.FieldByName('TELEFONE').AsString);
          fornecedor.nufax        := tfone.set_fone(q.q.FieldByName('FAX').AsString);
          fornecedor.nufone2      := tfone.set_fone(q.q.FieldByName('CELULAR').AsString);
          fornecedor.dsobservacao := q.q.FieldByName('OBSERVACOES').AsString;
          if q.q.FieldByName('CNPJ').AsString <> '' then
          begin
            fornecedor.tppessoa := _J;
          end
          else
          begin
            fornecedor.tppessoa := _F;
          end;
          fornecedor.cdstfornecedor := 1;
          if q2.q.Locate('codigo', q.q.FieldByName('codigo').asstring, []) then
          begin
            fornecedor.dsendereco := q2.q.FieldByName('endereco').AsString;
            fornecedor.dscomplemento := q2.q.FieldByName('complemento').AsString;
            fornecedor.nmbairro := q2.q.FieldByName('BAIRRO').AsString;
            fornecedor.nucep := q2.q.FieldByName('CEP').AsString;
            fornecedor.dsnumero := q2.q.FieldByName('NUMERO').AsString;
            fornecedor.cduf := qregistro.CodigodoString(_uf, q2.q.FieldByName('uf').AsString, _sguf);
            if fornecedor.cduf > 0 then
            begin
              fornecedor.cdmunicipio := retornasqlinteger('select cdmunicipio from municipio where cduf='+inttostr(fornecedor.cduf)+' and nmmunicipio='+quotedstr(uppercase(RetiraAcentos(q2.q.FieldByName('CIDADE').AsString))));
            end;
            fornecedor.cdpais := qregistro.CodigodoString(_pais, q2.q.FieldByName('PAIS').AsString, _nmpais);
          end;
          if fornecedor.cdpais = 0 then
          begin
            fornecedor.cdpais := _nscpais;
          end;
          if CodigoExiste(_fornecedor, q.q.FieldByName('CODIGO').AsString) then
          begin
            sql.add(fornecedor.Update(true));
          end
          else
          begin
            sql.add(fornecedor.Insert(true));
            if q.q.FieldByName('contato').AsString <> '' then
            begin
              itcontfornecedor.cditcontfornecedor := qgerar.GerarCodigo(_itcontfornecedor);
              itcontfornecedor.nmitcontfornecedor := q.q.FieldByName('contato').AsString;
              itcontfornecedor.cdfornecedor := fornecedor.cdfornecedor;
              sql.add(itcontfornecedor.Insert(true));
            end;
          end;
        finally
          freeandnil(fornecedor);
          freeandnil(itcontfornecedor);
        end;
        q.q.Next;
      end;
      if sql.count > 0 then
      begin
        ExecutaScript(sql);
      end;
    finally
      freeandnil(q);
      freeandnil(frmprogressbar);
      freeandnil(sql);
    end;
  finally
    freeandnil(conexao);
  end;
end;

end.
