unit classeefdpiscofins;

interface

uses
  System.Actions, System.UITypes,
  Forms, Dialogs, SysUtils, Gauges, ExtCtrls, Controls, Classes,
  ACBrEPCBloco_1, ACBrEPCBloco_A, ACBrEPCBloco_D, ACBrEPCBloco_C, ACBrEPCBloco_M,
  ACBrEPCBlocos, ACBrSpedPisCofins,
  uRichEdit, uRotinas, uprogressbar, ustrings, uConstantes, uregistro,
  utipo,
  classequery, classeaplicacao, classeretornasql, classeempresa, classeACBR;

type
  TApuracao = record
    vlbase : Currency;
    vlimposto : Currency;
    aliquota : Double;
    natureza : string;
    cdst : string;
  end;
  TPisCofins = class(TObject)
  private
    nustpisisentas, nustcofinsisentas, vlbasepisisentas, vlbasecofinsisentas : TStrings;
    erro : TStrings;
    ACBr : TAcbr;
    dti, dtf : TDate;
    cdlp1a: integer;
    pnl : tpanel;
    gau, gau1 : TGauge;
    pc: TACBrSPEDPisCofins;
    participante : array of TParticipante;
    unidade      : array of TUnidade;
    item         : array of TItem;
    procedure Bloco0;
    procedure Registro0000;
    procedure Registro0100;
    procedure Registro0110;
    procedure Registro0140;
    procedure Registro0150;
    procedure Registro0190;
    procedure Registro0200;
    procedure Registro0450;
    procedure BlocoA;
    procedure RegistroA100;
    procedure RegistroA170(rea100: TRegistroA100; tbl, codigo:string);
    procedure BlocoC;
    procedure RegistroC100;
    procedure RegistroC170(rec100:TRegistroC100; tbl, pessoa, codigo:string);
    procedure RegistroC180;
    procedure RegistroC181(rec180: TRegistroC180);
    procedure RegistroC185(rec180: TRegistroC180);
    procedure RegistroC400;
    procedure registroc405(rec400: TRegistroC400; nuserie:string);
    procedure registroC481(rec405: TRegistroC405; nuserie:string; dtemissao: TDate);
    procedure registroC485(rec405: TRegistroC405; nuserie:string; dtemissao: TDate);
    procedure RegistroC490(nudocfiscalicms:string);
    procedure RegistroC491(nudocfiscalicms:string; rec490: TRegistroC490; dtinicial, dtfinal: TDate);
    procedure RegistroC495(nudocfiscalicms:string; rec490: TRegistroC490; dtinicial, dtfinal: TDate);
    procedure RegistroC500;
    procedure RegistroC501(rec500: TRegistroC500; codigo:string);
    procedure RegistroC505(rec500: TRegistroC500; codigo:string);
    procedure BlocoD;
    procedure RegistroD100;
    procedure RegistroD101(red100: TRegistroD100; codigo:string);
    procedure RegistroD105(red100: TRegistroD100; codigo:string);
    procedure RegistroD200;
    procedure RegistroD500;
    procedure RegistroD501(red500:TRegistroD500; codigo:string);
    procedure RegistroD505(red500:TRegistroD500; codigo:string);
    procedure RegistroF500;
    procedure BlocoI;
    procedure RegistroI001;
    procedure BlocoM;
    procedure Registro1900;
    procedure Bloco9;
    procedure NomeArquivo;
    procedure GerarTxt;
    function  get_participante(q : TClasseQuery; pessoa:string):string;
    function  UnidadeExiste(cdunidade:string):boolean;
    procedure Adicionar_unidade        (q : TClasseQuery);
    procedure adicionar_unidade_arquivo;
    procedure adicionar_item_arquivo   (p_insert:integer=0);
    function  itemExiste               (cod_item:string):boolean;
    procedure adicionar_item           (q: TClasseQuery);
    procedure set_gauge(registro:string);
    function  ExisteRegistroA100:Boolean;
    procedure adicionar_pis_isentas(q:TClasseQuery);
    procedure adicionar_cofins_isentas(q: TClasseQuery);
    procedure adicionar_isentas(nust, vlbase:TStrings; tpimposto:string; q: TClasseQuery);
    function  situacao_tributaria_eh_isenta(nust:string):Boolean;
    function  get_valor_base(q: TClasseQuery):Currency;
    function ParticipanteExiste(nucnpj, nucpf: string): boolean;
    procedure Set_participante(tbl, pessoa: string);
    procedure adicionar_participante_arquivo;
    procedure Set_unidade(tbl: string);
    procedure Set_item(tbl: string);
    procedure processarRegistroA100(tbl: string);
    procedure processarRegistroC100(tbl, pessoa: string);
  public
    constructor create;
    destructor  destroy; override;
    function    Gerar      (codigo: integer; diretorio:string):boolean;
    function    GerarJuncao(codigo: integer; diretorio, filename:string):boolean;
  end;

implementation

uses DB, ACBrEPCBloco_0, ACBrEPCBloco_0_Class, classeentrada;

procedure TPisCofins.set_gauge(registro:string);
begin
  pnl.Caption   := registro;
  gau.Progress  := 0;
  gau1.Progress := gau1.Progress + 1;
  Application.ProcessMessages;
end;

procedure TPisCofins.Bloco0;
begin
  pc.DT_INI := dti;
  pc.DT_FIN := dtf;
  pc.IniciaGeracao;
  pc.LinhasBuffer := 1000;
  Registro0000; // Dados da Empresa
  pc.Bloco_0.Registro0001New.IND_MOV := imComDados;
  set_gauge('Registro 0100');
  Registro0100;
  set_gauge('Registro 0110');
  Registro0110;
  set_gauge('Registro 0140');
  Registro0140;
  set_gauge('Registro 0150');
  Registro0150;
  set_gauge('Registro 0190');
  Registro0190;
  set_gauge('Registro 0200');
  Registro0200;
  set_gauge('Registro 0450');
  Registro0450;
  pc.WriteBloco_0;
end;

procedure TPisCofins.BlocoA;
begin
  if not ExisteRegistroA100 then
  begin
    pc.Bloco_A.RegistroA001.IND_MOV := imSemDados;
    Exit;
  end;
  pc.Bloco_A.RegistroA001.IND_MOV := imComDados;
  pc.Bloco_A.RegistroA001.RegistroA010.New;
  pc.Bloco_A.RegistroA001.RegistroA010.Items[0].CNPJ := empresa.nucnpj_;
  set_gauge('Registro A100');
  RegistroA100;
  pc.WriteBloco_A(True);
end;

procedure TPisCofins.Blococ;
begin
  if (empresa.cdindicadorincidencia = _1) and (EMPRESA.CDIND_REG_CUM <> _9) then
  begin
    pc.Bloco_C.RegistroC001New.IND_MOV := imSemDados;
    Exit;
  end;
  pc.Bloco_C.RegistroC001New.IND_MOV   := imComDados;
  pc.Bloco_C.RegistroC001.RegistroC010.New;
  pc.Bloco_C.RegistroC001.RegistroC010.Items[0].CNPJ := empresa.nucnpj_;
  {
INDICADOR DE ESCRITURACAO C010 - 1
	NFE - C180
	ECF - C490
	SERIE D - C490
INDICADOR DE ESCRITURACAO C010 - 2
	NFE - C100 NFE (C170)
	ECF - C400 ECF
	SERIE D C380
  }
  if empresa.livro.cdindescrituracao = _1 then
  begin
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].IND_ESCRI := IndEscriConsolidado;
    set_gauge('Registro C180');
    RegistroC180;
    set_gauge('Registro C490 02');
    RegistroC490('02');
    set_gauge('Registro C490 2D');
    RegistroC490('2D');
  end
  else
  begin
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].IND_ESCRI := IndEscriIndividualizado;
    set_gauge('Registro C100');
    RegistroC100;
    //set_gauge('Registro C380');
    //RegistroC380;
    set_gauge('Registro C400');
    RegistroC400;
  end;
  if empresa.tpregime = _r then
  begin
    set_gauge('Registro C500');
    RegistroC500;
  end;
  pc.WriteBloco_C(True);
end;

procedure TPisCofins.BlocoD;
begin
  if (empresa.cdindicadorincidencia = _1) and (EMPRESA.CDIND_REG_CUM <> _9) then
  begin
    pc.Bloco_D.RegistroD001New.IND_MOV := imSemDados;
    Exit;
  end;
  if empresa.tpregime <> _s then
  begin
    pc.Bloco_D.RegistroD001New.IND_MOV := imComDados
  end
  else
  begin
    pc.Bloco_D.RegistroD001New.IND_MOV := imSemDados;
  end;
  pc.Bloco_D.RegistroD010New.CNPJ  := empresa.nucnpj_;
  if empresa.tpregime = _r then
  begin
    set_gauge('Registro D100');
    RegistroD100;
  end;
  if empresa.tpregime <> _s then
  begin
    set_gauge('Registro D200');
    RegistroD200;
  end;
  if empresa.tpregime = _r then
  begin
    set_gauge('Registro D500');
    RegistroD500;
  end;
  pc.WriteBloco_D;
end;

procedure TPisCofins.Bloco9;
begin
  pc.WriteBloco_9;
end;

procedure TPisCofins.NomeArquivo;
begin
  pc.Arquivo := 'PISCOFINS '+empresa.nmempresa+' '+FormatDateTime(_yyyymm, dti)+'.'+_txt;
end;

procedure TPisCofins.GerarTxt;
begin
  pc.LinhasBuffer := 1000;
  pc.DT_INI       := dti;
  pc.DT_FIN       := dtf;
  pc.SaveFileTXT;
end;

function TPisCofins.Gerar(codigo: integer; diretorio: string):boolean;
begin
  frmprogressbar := tfrmprogressbar.create(nil);
  pc             := TACBrSPEDPisCofins.Create(nil);
  try
    pnl  := frmprogressbar.pnl;
    gau  := frmprogressbar.gau;
    gau1 := frmprogressbar.gau1;
    frmprogressbar.setgau1;
    frmprogressbar.Show;
    gau1.MaxValue := 45;
    cdlp1a := codigo;
    dti := qregistro.datadocodigo(_lp1a, cdlp1a, _dtinicio);
    dtf := qregistro.datadocodigo(_lp1a, cdlp1a, _dtfinal);
    PC.Delimitador := '|';
    pc.Path        := diretorio;
    NomeArquivo;
    set_gauge('Bloco 0');
    Bloco0;
    set_gauge('Bloco A');
    BlocoA;
    set_gauge('Bloco C');
    BlocoC;
    set_gauge('Bloco D');
    BlocoD;
    set_gauge('Bloco F');
    RegistroF500;
    BlocoI;
    BlocoM;
    set_gauge('Bloco 1');
    Registro1900;
    set_gauge('Bloco 9');
    Bloco9;
    if (erro.Count > 0) and (MessageDlg('Foram encontrados erros ao gerar o arquivo.'#13'Deseja visualizá-los?', mtConfirmation, [mbYes, mbNo], 0) = mryes) then
    begin
      ExibirSaidaVideo(erro);
      abort;
    end;
    set_gauge('Gerar Txt');
    GerarTxt;
    result := True;
  finally
    pc.free;
    frmprogressbar.free;
  end;
end;

constructor TPisCofins.create;
begin
  erro                := TStringList.Create;
  ACBr                := tacbr.Create;
  nustpisisentas      := tstringlist.create;
  nustcofinsisentas   := tstringlist.create;
  vlbasepisisentas    := tstringlist.create;
  vlbasecofinsisentas := tstringlist.create;
end;

function TPisCofins.ParticipanteExiste(nucnpj, nucpf:string):boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to high(participante) do
  begin
    if nucnpj <> '' then
    begin
      if participante[i].cnpj = nucnpj then
      begin
        result := true;
        break;
      end;
    end
    else if (nucpf <> '') and (participante[i].cpf = nucpf) then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TPisCofins.Set_participante(tbl, pessoa:string);
  function makesql:string;
  begin
    if (tbl = _entrada) or (tbl = _saida) then
    begin
      result := 'select p.rzsocial'+
                      ',p.tppessoa'+
                      ',p.nucnpj'+
                      ',p.cd'+pessoa+
                      ',p.nucpf'+
                      ',p.nuinscest'+
                      ',p.cdmunicipio'+
                      ',p.dsendereco'+
                      ',p.dsnumero'+
                      ',p.dscomplemento'+
                      ',p.nmbairro '+
                 'from '+pessoa+' p '+
                 'inner join '+tbl+' t on t.cd'+pessoa+'=p.cd'+pessoa+' and p.cdempresa=t.cdempresa '+
                 'WHERE t.cdempresa='+empresa.cdempresa.tostring+' and t.';
      if tbl = _saida then
      begin
        result := result + 'dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '
      end
      else
      begin
        result := result + 'dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and t.nudocfiscalicms<>''02'' ';
      end;
      result := Result +
                 'group by p.rzsocial'+
                        ',p.tppessoa'+
                        ',p.nucnpj'+
                        ',p.cd'+pessoa+
                        ',p.nucpf'+
                        ',p.nuinscest'+
                        ',p.cdmunicipio'+
                        ',p.dsendereco'+
                        ',p.dsnumero'+
                        ',p.dscomplemento'+
                        ',p.nmbairro';
    end;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.Text   := makesql;
    q.q.open;
    pnl.Caption := 'Registro 0150 - Inserindo participante';
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      if Copy(q.q.FieldByName(_rzsocial).AsString, 1, 1) = ' ' then
      begin
        MessageDlg('O '+pessoa+' '+q.q.fieldbyname(_cd+pessoa).asstring+' - '+q.q.fieldbyname(_rzsocial).asstring+#13'possui espaço no inicio do campo.', mtInformation, [mbOK], 0);
        Abort;
      end;
      if q.q.fieldbyname(_cdmunicipio).asstring = '' then
      begin
        MessageDlg('O '+pessoa+' '+q.q.fieldbyname(_cd+pessoa).asstring+' - '+q.q.fieldbyname(_rzsocial).asstring+#13'está com o código da cidade vazio.', mtInformation, [mbOK], 0);
        Abort;
      end;
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      if ParticipanteExiste(removercaracteres(q.q.fieldbyname(_nucnpj).AsString), removercaracteres(q.q.fieldbyname(_nucpf).asstring)) then
      begin
        q.q.next;
        continue;
      end;
      SetLength(participante, High(participante)+2);
      participante[High(participante)].cod_part      := get_participante(q, pessoa);
      participante[High(participante)].nome          := q.q.fieldbyname(_rzsocial).asstring;
      participante[High(participante)].cnpj          := removercaracteres(q.q.fieldbyname(_nucnpj).AsString);
      participante[High(participante)].cpf           := removercaracteres(q.q.fieldbyname(_nucpf).asstring);
      participante[High(participante)].ie            := removercaracteres(q.q.fieldbyname(_nuinscest).asstring);
      participante[High(participante)].suframa       := '';
      participante[High(participante)].dsendereco    := q.q.fieldbyname(_dsendereco).asstring;
      participante[High(participante)].dsnumero      := q.q.fieldbyname(_dsnumero).asstring;
      participante[High(participante)].dscomplemento := q.q.fieldbyname(_dscomplemento).asstring;
      participante[High(participante)].nmbairro      := q.q.fieldbyname(_nmbairro).asstring;
      participante[High(participante)].cdmunicipioi  := q.q.fieldbyname(_cdmunicipio).AsInteger;
      participante[High(participante)].cdpais        := _1058;
      q.q.next;
    end;
  finally
    q.Free;
  end;
end;

procedure TPisCofins.adicionar_participante_arquivo;
var
  x, i : integer;
begin
  for i := 0 to high(participante) do
  begin
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.New(pc.Bloco_0.Registro0001.Registro0140.Items[0]);
    x := pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Count - 1;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].COD_PART := participante[i].cod_part;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].NOME     := participante[i].nome;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].COD_PAIS := participante[i].cdpais;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].CNPJ     := participante[i].cnpj;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].CPF      := participante[i].cpf;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].IE       := participante[i].ie;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].COD_MUN  := participante[i].cdmunicipioi;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].SUFRAMA  := participante[i].suframa;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].ENDERECO := participante[i].dsendereco;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].NUM      := participante[i].dsnumero;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].COMPL    := participante[i].dscomplemento;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0150.Items[x].BAIRRO   := participante[i].nmbairro;
  end;
end;

procedure TPisCofins.Registro0150;
begin
  if (empresa.cdindicadorincidencia = _1) and (EMPRESA.CDIND_REG_CUM <> _9) then
  begin
    Exit;
  end;
  set_participante(_saida  , _cliente);
  set_participante(_saida  , _fornecedor);
  if empresa.tpregime = _r then
  begin
    set_participante(_entrada, _fornecedor);
    set_participante(_entrada, _cliente);
  end;
  adicionar_participante_arquivo;
end;

function TPisCofins.get_participante(q: TClasseQuery; pessoa:string): string;
begin
  if removercaracteres(q.q.FieldByName(_nucnpj).asstring) <> '' then
  begin
    result := removercaracteres(q.q.fieldbyname(_nucnpj).AsString)
  end
  else if removercaracteres(q.q.FieldByName(_nucpf).asstring)  <> '' then
  begin
    result := removercaracteres(q.q.fieldbyname(_nucpf).AsString)
  end
  else
  begin
    result := q.q.fieldbyname(_cd+pessoa).AsString;
  end;
end;

procedure TPisCofins.Set_unidade(tbl:string);
  function makesql:string;
  begin
    if (tbl = _entrada) or (tbl = _saida) then
    begin
      result := 'select u.cdunidade,u.nmunidade '+
                'from '+tbl+' t '+
                'inner join it'+tbl+' i on t.cd'+tbl+'=i.cd'+tbl+' and t.cdempresa=i.cdempresa '+
                'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                'inner join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                'where t.cdempresa='+empresa.cdempresa.tostring+' and not (t.nudocfiscalicms in (''06'',''28'',''08'',''22'',''29'')) and t.';
      if tbl = _saida then
      begin
        result := result + 'dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)
      end
      else
      begin
        result := result + 'dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf);
      end;
      result := result + ' group by u.cdunidade,u.nmunidade';
    end;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.Text := makesql;
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      if UnidadeExiste(q.q.fieldbyname(_cdunidade).AsString) then
      begin
        q.q.next;
        continue;
      end;
      adicionar_unidade(q);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.Registro0190;
begin
  if (empresa.cdindicadorincidencia = _1) and (EMPRESA.CDIND_REG_CUM <> _9) then
  begin
    Exit;
  end;
  if empresa.tpregime = _r then
  begin
    set_unidade(_entrada);
  end;
  set_unidade(_saida);
  adicionar_unidade_arquivo;
end;

function TPisCofins.UnidadeExiste(cdunidade: string): boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to high(unidade) do
  begin
    if unidade[i].unid = cdunidade then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TPisCofins.Adicionar_unidade(q : TClasseQuery);
begin
  SetLength(unidade, High(unidade)+2);
  unidade[High(unidade)].unid  := q.q.fieldbyname(_cdunidade).asstring;
  unidade[High(unidade)].descr := q.q.fieldbyname(_nmunidade).asstring;
end;

procedure TPisCofins.adicionar_unidade_arquivo;
var
  x, i : integer;
begin
  for i := 0 to high(unidade) do
  begin
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0190.New(pc.Bloco_0.Registro0001.Registro0140.Items[0]);
    x                                                                         := pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0190.Count - 1;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0190.Items[x].UNID  := unidade[i].unid;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0190.Items[x].DESCR := unidade[i].descr;
  end
end;

procedure TPisCofins.Registro0000;
  function get_cod_ver(data:TDate):TACBrCodVer;
  begin
    if data < strtodate('01/07/2012') then
    begin
      result := vlVersao101
    end
    else
    begin
      result := vlVersao201;
    end;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.Text := 'select dtinicio,cdtpescrituracao,cdindicadorsituacaoespecial,NURECIBOANTERIOR from lp1a where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+cdlp1a.ToString;
    q.q.Open;
    pc.Bloco_0.Registro0000New.COD_VER          := get_cod_ver(q.q.fieldbyname(_dtinicio).AsDateTime);
    pc.Bloco_0.Registro0000New.TIPO_ESCRIT      := ACBr.GetTpEscrituracao(q.q.fieldbyname(_cdtpescrituracao).AsString);
    pc.Bloco_0.Registro0000New.NUM_REC_ANTERIOR := q.q.fieldbyname(_nureciboanterior).AsString;
    pc.Bloco_0.Registro0000New.NOME             := Empresa.rzsocial;
    pc.Bloco_0.Registro0000New.CNPJ             := empresa.nucnpj_;
    pc.Bloco_0.Registro0000New.UF               := empresa.endereco.sguf;
    pc.Bloco_0.Registro0000New.COD_MUN          := empresa.endereco.cdmunicipio;
    pc.Bloco_0.Registro0000New.SUFRAMA          := empresa.cdsuframa;
    pc.Bloco_0.Registro0000New.IND_NAT_PJ       := ACBr.GetIndicadorPessoaJuridica(empresa.cdindicadorpessoajuridica);
    pc.Bloco_0.Registro0000New.IND_ATIV         := ACBr.getindicadoratividade(empresa.cdindicadoratividade);
    if q.q.fieldbyname(_cdindicadorsituacaoespecial).AsString <> '' then
    begin
      pc.Bloco_0.Registro0000New.IND_SIT_ESP := ACBr.GetIndicadorSituacaoEspecial(q.q.fieldbyname(_cdindicadorsituacaoespecial).AsString);
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.Registro0100;
begin
  pc.Bloco_0.Registro0001.Registro0100.New(pc.Bloco_0.Registro0001);
  pc.Bloco_0.Registro0001.Registro0100.Items[0].NOME     := empresa.contador.nmcontador;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].CPF      := empresa.contador.nucpf_;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].CRC      := empresa.contador.nucrc;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].CNPJ     := empresa.contador.nucnpj_;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].CEP      := removercaracteres(empresa.contador.endereco.nucep);
  pc.Bloco_0.Registro0001.Registro0100.Items[0].ENDERECO := empresa.contador.endereco.dsendereco;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].NUM      := empresa.contador.endereco.dsnumero;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].COMPL    := empresa.contador.endereco.dscomplemento;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].BAIRRO   := empresa.contador.endereco.nmbairro;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].FONE     := empresa.contador.nufone_;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].FAX      := Empresa.contador.nufax_;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].EMAIL    := empresa.contador.email;
  pc.Bloco_0.Registro0001.Registro0100.Items[0].COD_MUN  := empresa.contador.endereco.cdmunicipio;
end;

procedure TPisCofins.Registro0110;
begin
  pc.Bloco_0.Registro0001.Registro0110.COD_INC_TRIB  := ACBr.getindicadorincidencia(empresa.cdindicadorincidencia);
  pc.Bloco_0.Registro0001.Registro0110.COD_TIPO_CONT := ACBr.GetIndicadorContribuicao(empresa.cdindicadorcontribuicao);
  pc.Bloco_0.Registro0001.Registro0110.IND_REG_CUM   := ACBr.getInd_reg_cum(empresa.cdind_reg_cum);
  if empresa.cdindicadorapropriacao <> '' then
  begin
    pc.Bloco_0.Registro0001.Registro0110.IND_APRO_CRED := ACBr.GetIndicadorApropriacao(empresa.cdindicadorapropriacao);
  end;
end;

procedure TPisCofins.Registro0140;
begin
  pc.Bloco_0.Registro0001.Registro0140.New(pc.Bloco_0.Registro0001);
  pc.Bloco_0.Registro0001.Registro0140.Items[0].COD_EST := _1;
  pc.Bloco_0.Registro0001.Registro0140.Items[0].NOME    := empresa.rzsocial;
  pc.Bloco_0.Registro0001.Registro0140.Items[0].CNPJ    := empresa.nucnpj_;
  pc.Bloco_0.Registro0001.Registro0140.Items[0].UF      := empresa.endereco.sguf;
  pc.Bloco_0.Registro0001.Registro0140.Items[0].IE      := empresa.nuinscest_;
  pc.Bloco_0.Registro0001.Registro0140.Items[0].COD_MUN := empresa.endereco.cdmunicipio;
  pc.Bloco_0.Registro0001.Registro0140.Items[0].IM      := empresa.nuinscmunicipal;
  pc.Bloco_0.Registro0001.Registro0140.Items[0].SUFRAMA := '';
end;

procedure TPisCofins.Set_item(tbl:string);
  function makesql:string;
  begin
    result := 'select p.cdproduto'+
                    ',p.nmproduto'+
                    ',p.cdunidade'+
                    ',p.alicms'+
                    ',p.cdtpitem'+
                    ',p.nuclfiscal'+
                    ',p.cdtpitem '+
               'from '+tbl+' t '+
               'inner join it'+tbl+' i on i.cd'+tbl+'=t.cd'+tbl+' and t.cdempresa=i.cdempresa '+
               'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
               'where t.cdempresa='+empresa.cdempresa.tostring+' and not (t.nudocfiscalicms in (''06'',''28'',''08'',''22'',''29'')) and t.';
    if tbl = _saida then
    begin
      result := result + 'dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)
    end
    else
    begin
      result := result + 'dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf);
    end;
    result := result + ' group by p.cdproduto,p.nmproduto,P.cdunidade,p.alicms,p.cdtpitem,p.nuclfiscal';
  end;
var
  q : TClasseQuery;
begin
  q     := TClasseQuery.create;
  try
    q.q.sql.text   := makesql;
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      if itemExiste(q.q.fieldbyname(_cdproduto).AsString) then
      begin
        q.q.next;
        continue;
      end;
      adicionar_item(q);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.Registro0200;
begin
  if (empresa.cdindicadorincidencia = _1) and (EMPRESA.CDIND_REG_CUM <> _9) then
  begin
    Exit;
  end;
  set_item(_saida);
  if empresa.tpregime = _r then
  begin
    set_item(_entrada);
  end;
  adicionar_item_arquivo;
end;

procedure TPisCofins.processarRegistroA100(tbl:string);
  function makesql:string;
  begin
    if tbl = _entrada then
    begin
      result := 'select f.nucnpj'+
                      ',e.nuentrada nusaida,e.nuserie,e.nuchavenfse'+
                      ',''00'' nustdocumento,e.dtemissao,e.vlservico,e.vlproduto,e.cdentrada codigo'+
                      ',e.vldesconto,e.vlbasepis,e.vlpis,e.vlbasecofins,e.vlcofins,E.VLPISRET'+
                      ',E.VLCOFINSRET,E.vliss '+
                'from entrada e '+
                'inner join fornecedor f on f.cdfornecedor=e.cdfornecedor and f.cdempresa=e.cdempresa '+
                'where e.cdempresa='+empresa.cdempresa.tostring+' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and e.vlservico>0 and e.nudocfiscalicms=''01''';
    end
    else if tbl = _saida then
    begin
      result := 'select c.nucnpj'+
                      ',s.nusaida'+
                      ',e.nuserie'+
                      ',s.nuchavenfse'+
                      ',s.nustdocumento'+
                      ',s.dtemissao'+
                      ',s.vlservico'+
                      ',s.vlproduto'+
                      ',s.cdsaida codigo'+
                      ',s.vldesconto'+
                      ',s.vlbasepis'+
                      ',s.vlpis'+
                      ',s.vlbasecofins'+
                      ',s.vlcofins'+
                      ',s.vlpisret'+
                      ',s.vlcofinsret'+
                      ',s.vliss '+
                'from saida s '+
                'inner join serie e on e.cdserie=s.cdserie and s.cdempresa=e.cdempresa '+
                'inner join cliente c on c.cdcliente=s.cdcliente and c.cdempresa=s.cdempresa '+
                'where s.cdempresa='+empresa.cdempresa.tostring+' '+
                'and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and e.boservico=''S''';
    end;
  end;
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.Text   := makesql;
    q.q.Open;
    while not q.q.Eof do
    begin
      if (q.q.FieldByName(_vlcofins).AsCurrency = 0) and (q.q.FieldByName(_vlpis).AsCurrency = 0) and (tbl = _entrada) then
      begin
        q.q.Next;
        Continue;
      end;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.New;
      x := pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Count - 1;
      if tbl = _saida then
      begin
        pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].IND_EMIT := iedfProprio;
        pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].IND_OPER := itoPrestado;
      end
      else
      begin
        pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].IND_EMIT := iedfTerceiro;
        pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].IND_OPER := itoContratado;
      end;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].COD_PART      := removercaracteres(q.q.fieldbyname(_nucnpj).AsString);
      if q.q.FieldByName(_nustdocumento).AsString = _00 then
      begin
        pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].COD_SIT := sdfRegular
      end
      else
      begin
        pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].COD_SIT := sdfCancelado;
      end;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].SER           := q.q.fieldbyname(_nuserie).AsString;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].SUB           := '';
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].NUM_DOC       := q.q.fieldbyname(_nusaida).AsString;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].CHV_NFSE      := q.q.fieldbyname(_nuchavenfse).AsString;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].DT_DOC        := q.q.fieldbyname(_dtemissao).AsDateTime;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].DT_EXE_SERV   := q.q.fieldbyname(_dtemissao).AsDateTime;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].VL_DOC        := q.q.fieldbyname(_vlservico).AsCurrency+q.q.fieldbyname(_vlproduto).AsCurrency;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].IND_PGTO      := ACBr.getind_pagto(tbl, q.q.fieldbyname(_codigo).AsString, q.q.fieldbyname(_dtemissao).AsDateTime);
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].VL_DESC       := q.q.fieldbyname(_vldesconto).ascurrency;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].VL_BC_PIS     := q.q.fieldbyname(_vlbasepis).AsCurrency;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].VL_PIS        := q.q.fieldbyname(_vlpis).AsCurrency;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].VL_BC_COFINS  := q.q.fieldbyname(_vlbasecofins).AsCurrency;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].VL_COFINS     := q.q.fieldbyname(_vlcofins).AsCurrency;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].VL_PIS_RET    := q.q.fieldbyname(_vlpisret).AsCurrency;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].VL_COFINS_RET := q.q.fieldbyname(_vlcofinsret).AsCurrency;
      pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x].VL_ISS        := q.q.fieldbyname(_vliss).AsCurrency;
      RegistroA170(pc.Bloco_A.RegistroA001.RegistroA010.Items[0].RegistroA100.Items[x], tbl, q.q.fieldbyname(_codigo).AsString);
      q.q.Next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroA100;
begin
  if empresa.tpregime = _r then
  begin
    processarRegistroA100(_entrada);
  end;
  processarRegistroA100(_saida);
end;

procedure TPisCofins.RegistroA170(rea100: TRegistroA100; tbl, codigo:string);
var
  q : TClasseQuery;
  x, i : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.Text := 'select i.cdproduto'+
                          ',p.nmproduto'+
                          ',i.vltotal'+
                          ',i.vldesconto'+
                          ',i.vlbasepis'+
                          ',i.alpis'+
                          ',i.vlpis'+
                          ',i.vlbasecofins'+
                          ',i.alcofins'+
                          ',i.cdbccalculocredito'+
                          ',i.vlcofins'+
                          ',i.nustpis'+
                          ',i.nustcofins '+
                    'from it'+tbl+' i '+
                    'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO and p.cdempresa=i.cdempresa '+
                    'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cd'+tbl+'='+codigo;
    q.q.Open;
    i := 0;
    while not q.q.Eof do
    begin
      Inc(i);
      rea100.RegistroA170.New;
      x := rea100.RegistroA170.Count -1;
      rea100.RegistroA170.Items[x].NUM_ITEM      := i;
      rea100.RegistroA170.Items[x].COD_ITEM      := q.q.fieldbyname(_cdproduto).AsString;
      rea100.RegistroA170.Items[x].DESCR_COMPL   := q.q.fieldbyname(_nmproduto).asstring;
      rea100.RegistroA170.Items[x].VL_ITEM       := q.q.fieldbyname(_vltotal).AsCurrency;
      rea100.RegistroA170.Items[x].VL_DESC       := q.q.fieldbyname(_vldesconto).AsCurrency;
      if tbl = _entrada then
      begin
        if (q.q.fieldbyname(_vlpis).AsCurrency > 0) and (q.q.FieldByName(_cdbccalculocredito).AsString = '') then
        begin
          MessageDlg('Código da Base de Cálculo de crédito não está definido'#13+
                     'para o produto '+q.q.fieldbyname(_nmproduto).asstring+#13+
                     'na nota de compra '+nomedocodigo(_entrada, codigo, _nuentrada), mtInformation, [mbOK], 0);
          Abort;
        end;
        rea100.RegistroA170.Items[x].NAT_BC_CRED := ACBr.GetBaseCalculoCredito(q.q.FieldByName(_cdbccalculocredito).AsString);
      end;
      rea100.RegistroA170.Items[x].IND_ORIG_CRED := opcMercadoInterno;
      if q.q.fieldbyname(_nustpis).AsString <> '' then
      begin
        rea100.RegistroA170.Items[x].CST_PIS := ACBr.getcstpis(q.q.fieldbyname(_nustpis).AsString);
      end;
      rea100.RegistroA170.Items[x].VL_BC_PIS     := q.q.fieldbyname(_vlbasepis).AsCurrency;
      rea100.RegistroA170.Items[x].ALIQ_PIS      := q.q.fieldbyname(_alpis).AsFloat;
      rea100.RegistroA170.Items[x].VL_PIS        := q.q.fieldbyname(_vlpis).AsCurrency;
      if q.q.fieldbyname(_nustcofins).AsString <> '' then
      begin
        rea100.RegistroA170.Items[x].CST_COFINS := ACBr.GetCstCofins(q.q.fieldbyname(_nustcofins).AsString);
      end;
      rea100.RegistroA170.Items[x].VL_BC_COFINS  := q.q.fieldbyname(_vlbasecofins).AsCurrency;
      rea100.RegistroA170.Items[x].ALIQ_COFINS   := q.q.fieldbyname(_alcofins).AsFloat;
      rea100.RegistroA170.Items[x].VL_COFINS     := q.q.fieldbyname(_vlcofins).AsCurrency;
      q.q.Next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.processarRegistroC100(tbl, pessoa:string);
  function MakeSQL:string;
  begin
    if tbl = _saida then
    begin
      result := 'select s.nudocfiscalicms'+
                     ',s.nustdocumento'+
                     ',0 indemit' +
                     ',se.nuserie'+
                     ',s.nusaida'+
                     ',s.cdsaida codigo'+
                     ',s.nuchavenfe'+
                     ',s.dtemissao'+
                     ',s.dtsaida'+
                     ',s.vltotal'+
                     ',s.vldesconto'+
                     ',s.vlproduto'+
                     ',s.vlservico'+
                     ',s.cdtpfrete'+
                     ',s.vlfrete'+
                     ',s.vloutdespesa'+
                     ',s.vlseguro'+
                     ',s.vlbaseicms'+
                     ',s.vlicms'+
                     ',s.vlbaseicmssubtrib'+
                     ',s.vlicmssubtrib'+
                     ',s.vlipi'+
                     ',s.vlpis'+
                     ',s.vlpisret'+
                     ',s.vlcofins'+
                     ',s.vlcofinsret'+
                     ',s.vlpissubtrib'+
                     ',s.vlcofinssubtrib'+
                     ',s.tpentsai';
      if pessoa <> '' then
      begin
        result := result +
                     ','+pessoa+'.nucnpj'+
                     ','+pessoa+'.nucpf';
      end;
      result := result +
                     ',s.VLBASEFRETESUB'+
                     ',s.ALFRETESUB'+
                     ',s.VLFRETESUB'+
                     ',s.cdsaida codigo '+
                 'from saida s '+
                 'inner join itlp1a i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa ';
      if pessoa <> '' then
      begin
        result := result + 'inner join '+pessoa+' on '+pessoa+'.cd'+pessoa+'=s.cd'+pessoa+' and s.cdempresa='+pessoa+'.cdempresa ';
      end;
      result := result +
                 'inner join serie SE on se.cdserie=s.cdserie and se.cdempresa=s.cdempresa '+
                 'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nudocfiscalicms in (''01'',''04'',''1B'',''55'') and i.cdtpimposto=1 and i.cdlp1a='+cdlp1a.ToString+' ';
      if pessoa = '' then
      begin
        result := result + 'and s.nustdocumento=''02'' ';
      end;
      result := result +
                 'group by s.nudocfiscalicms'+
                        ',s.nustdocumento'+
                        ',se.nuserie'+
                        ',s.nusaida'+
                        ',s.cdsaida'+
                        ',s.nuchavenfe'+
                        ',s.dtemissao'+
                        ',s.dtsaida'+
                        ',s.vltotal'+
                        ',s.vldesconto'+
                        ',s.vlproduto'+
                        ',s.vlservico'+
                        ',s.cdtpfrete'+
                        ',s.vlfrete'+
                        ',s.vloutdespesa'+
                        ',s.vlseguro'+
                        ',s.vlbaseicms'+
                        ',s.vlicms'+
                        ',s.vlbaseicmssubtrib'+
                        ',s.vlicmssubtrib'+
                        ',s.vlipi'+
                        ',s.vlpisret'+
                        ',s.vlpis'+
                        ',s.vlcofins'+
                        ',s.vlcofinsret'+
                        ',s.vlpissubtrib'+
                        ',s.vlcofinssubtrib'+
                        ',s.tpentsai';
      if pessoa <> '' then
      begin
        result := result + ','+pessoa+'.nucnpj,'+pessoa+'.nucpf';
      end;
      result := result +
                        ',s.VLBASEFRETESUB'+
                        ',s.ALFRETESUB'+
                        ',s.VLFRETESUB'+
                        ',s.cdsaida';
    end
    else
    begin
      result := 'select E.CDEMPRESA,e.nudocfiscalicms'+
                       ',e.nustdocumento'+
                       ',1 indemit' +
                       ',e.nuserie'+
                       ',e.nuentrada nusaida'+
                       ',e.cdentrada codigo'+
                       ',e.nuchavenfe'+
                       ',e.dtemissao'+
                       ',e.dtsaida'+
                       ',e.vltotal'+
                       ',e.vldesconto'+
                       ',e.vlproduto'+
                       ',e.vlservico'+
                       ',e.cdtpfrete'+
                       ',e.vlfrete'+
                       ',e.vloutdespesa'+
                       ',e.vlseguro'+
                       ',(select sum(i.vlbaseicms) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicmS =''S'') vlbaseicms'+
                       ',(select sum(i.vlicms) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlicms'+
                       ',(select sum(i.vlbaseicmssubtrib) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlbaseicmssubtrib'+
                       ',(select sum(i.vlicmssubtrib) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlicmssubtrib'+
                       ',(select sum(i.vlipi) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaipi=''S'') vlipi'+
                       ',(select sum(i.vlpis) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperapis=''S'') vlpis'+
                       ',E.vlpisret'+
                       ',(select sum(i.vlcofins) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperacofins=''S'') vlcofins'+
                       ',E.vlcofinsret'+
                       ',e.vlpissubtrib'+
                       ',e.vlcofinssubtrib'+
                       ',''E'' tpentsai'+
                       ','+pessoa+'.nucnpj,'+pessoa+'.nucpf'+
                       ',e.cdentrada codigo '+
                   'from entrada e '+
                   'inner join '+pessoa+' on '+pessoa+'.cd'+pessoa+'=e.cd'+pessoa+' and e.cdempresa='+pessoa+'.cdempresa '+
                   'INNER JOIN TPENTRADA T ON T.CDTPENTRADA=E.CDTPENTRADA and t.cdempresa=e.cdempresa '+
                   'inner join itlp1a it on it.cdentrada=e.cdentrada and it.cdempresa=e.cdempresa '+
                   'where E.CDEMPRESA='+empresa.cdempresa.tostring+' and e.nudocfiscalicms in (''01'',''04'',''1B'',''55'') and E.vlservico=0 and it.cdtpimposto=1 and it.cdlp1a='+cdlp1a.ToString+' '+
                   'group by E.CDEMPRESA,e.nudocfiscalicms'+
                          ',e.nustdocumento'+
                          ',e.nuserie'+
                          ',e.nuentrada'+
                          ',e.cdentrada'+
                          ',e.nuchavenfe'+
                          ',e.dtemissao'+
                          ',e.dtsaida'+
                          ',e.vltotal'+
                          ',e.vldesconto'+
                          ',e.vlproduto'+
                          ',e.vlservico'+
                          ',e.cdtpfrete'+
                          ',e.vlfrete'+
                          ',e.vloutdespesa'+
                          ',e.vlseguro'+
                          ',e.vlipi'+
                          ',e.vlpis'+
                          ',e.vlPISRET'+
                          ',e.vlcofins'+
                          ',e.vlcofinsRET'+
                          ',e.vlpissubtrib'+
                          ',e.vlcofinssubtrib'+
                          ','+pessoa+'.nucnpj,'+pessoa+'.nucpf'+
                          ',e.cdentrada';
    end;
  end;
var
  q : TClasseQuery;
  i : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.text := makesql;
    q.q.Open;
    gau.MaxValue := q.q.RecordCount;
    while not q.q.Eof do
    begin
      gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.New;
      i := pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Count - 1;
      if tbl = _entrada then
      begin
        pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].IND_OPER := tpEntradaAquisicao;
        pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].IND_EMIT := edTerceiros;
      end
      else
      begin
        if q.q.FieldByName(_tpentsai).AsString = _s then
        begin
          pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].IND_OPER := tpSaidaPrestacao
        end
        else
        begin
          pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].IND_OPER := tpEntradaAquisicao;
        end;
        pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].IND_EMIT := edEmissaoPropria;
      end;
      if (tbl = _saida) and (q.q.fieldbyname(_nuchavenfe).asstring = '') and (q.q.fieldbyname(_nudocfiscalicms).asstring = _55) and (q.q.fieldbyname(_nustdocumento).asstring <> _04) then
      begin
        erro.Add('Nota fiscal '+q.q.fieldbyname(_nusaida).asstring+' de emissão própria não possui o número da chave da NFE.');
      end;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].COD_PART      := get_participante(q, pessoa);
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].COD_MOD       := q.q.fieldbyname(_nudocfiscalicms).AsString;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].COD_SIT       := ACBr.getstdocumento(q.q.fieldbyname(_nustdocumento).AsString);
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].SER           := q.q.fieldbyname(_nuserie).AsString;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].NUM_DOC       := q.q.fieldbyname(_nusaida).AsString;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].CHV_NFE       := q.q.fieldbyname(_nuchavenfe).AsString;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].DT_DOC        := q.q.fieldbyname(_dtemissao).AsDateTime;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].DT_E_S        := q.q.fieldbyname(_dtsaida).AsDateTime;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_DOC        := q.q.fieldbyname(_vltotal).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].IND_PGTO      := ACBr.getind_pagto(tbl, q.q.fieldbyname(_codigo).AsString, q.q.fieldbyname(_dtemissao).AsDateTime);
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_DESC       := q.q.fieldbyname(_vldesconto).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_ABAT_NT    := 0;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_MERC       := q.q.fieldbyname(_vlproduto).AsCurrency+q.q.fieldbyname(_vlservico).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].IND_FRT       := tfSemCobrancaFrete;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_FRT        := q.q.fieldbyname(_vlfrete).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_SEG        := q.q.fieldbyname(_vlseguro).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_OUT_DA     := q.q.fieldbyname(_vloutdespesa).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_BC_ICMS    := q.q.fieldbyname(_vlbaseicms).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_ICMS       := q.q.fieldbyname(_vlicms).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_BC_ICMS_ST := q.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_ICMS_ST    := q.q.fieldbyname(_vlicmssubtrib).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_IPI        := q.q.fieldbyname(_vlipi).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_PIS        := q.q.fieldbyname(_vlpis).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_COFINS     := q.q.fieldbyname(_vlcofins).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_PIS_ST     := q.q.fieldbyname(_vlpisret).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i].VL_COFINS_ST  := q.q.fieldbyname(_vlcofinsret).AsCurrency;
      RegistroC170(pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC100.Items[i], tbl, pessoa, q.q.fieldbyname(_codigo).asstring);
      q.q.Next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroC100;
begin
  if empresa.tpregime = _r then
  begin
    processarRegistroC100(_entrada, _fornecedor);
  end;
  processarRegistroC100(_saida  , _cliente   );
  processarRegistroC100(_saida  , _fornecedor);
  if empresa.tpregime = _r then
  begin
    processarRegistroC100(_entrada, _cliente   );
  end;
end;

procedure TPisCofins.RegistroC170(rec100:TRegistroC100; tbl, pessoa, codigo:string);
  function MakeSQL:string;
  begin
    if tbl = _saida then
    begin
      result := 'select i.cdproduto'+
                      ',i.qtitem'+
                      ',u.cdunidade'+
                      ',i.vltotal'+
                      ',i.vldesconto'+
                      ',i.vloutdespesa'+
                      ',i.vlseguro'+
                      ',i.vlfrete'+
                      ',i.nusticms'+
                      ',p.cdorigem'+
                      ',i.cdcfop'+
                      ',C.BODEVOLUCAO'+
                      ',i.vlbaseicms'+
                      ',i.alicms'+
                      ',i.vlicms'+
                      ',i.vlbaseicmssubtrib'+
                      ',i.alicmssubtrib'+
                      ',i.vlicmssubtrib'+
                      ',i.borecuperaicms'+
                      ',i.nustipi'+
                      ',i.vlbaseipi'+
                      ',i.alipi'+
                      ',i.vlipi'+
                      ',i.nustpis'+
                      ',i.vlbasepis'+
                      ',i.alpis'+
                      ',i.vlpis'+
                      ',i.nustcofins'+
                      ',i.vlbasecofins'+
                      ',i.alcofins'+
                      ',s.nusaida nudocumento'+
                      ',s.tpentsai'+
                      ',P.NMPRODUTO'+
                      ',U.NMUNIDADE'+
                      ',u.cdunidade'+
                      ',i.vlcofins '+
                 'from saida s '+
                 'inner join itsaida i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa '+
                 'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO and i.cdempresa=p.cdempresa '+
                 'left join unidade u on u.cdunidade=P.cdunidade and u.cdempresa=p.cdempresa '+
                 'LEFT JOIN CFOP C ON C.CDCFOP=I.CDCFOP '+
                 'where s.cdempresa='+empresa.cdempresa.tostring+' and i.cdsaida='+codigo+' '+
                 'order by i.cdsaida,i.cdproduto';
    end
    else
    begin
      result := 'select i.cdproduto'+
                      ',i.qtitem'+
                      ',i.cdentrada'+
                      ',u.cdunidade'+
                      ',i.vltotal'+
                      ',i.vldesconto'+
                      ',i.nusticms'+
                      ',p.cdorigem'+
                      ',i.cdcfop'+
                      ',i.vlbaseicms'+
                      ',i.alicms'+
                      ',i.vlicms'+
                      ',i.vlbaseicmssubtrib'+
                      ',i.alicmssubtrib'+
                      ',i.vlicmssubtrib'+
                      ',i.borecuperaicms'+
                      ',i.nustipi'+
                      ',i.vlbaseipi'+
                      ',i.alipi'+
                      ',i.vlipi'+
                      ',i.nustpis'+
                      ',i.vlbasepis'+
                      ',i.alpis'+
                      ',i.vlpis'+
                      ',i.nustcofins'+
                      ',i.vlbasecofins'+
                      ',i.alcofins'+
                      ',i.vlcofins'+
                      ',c.bodiferencialaliquota'+
                      ',i.bondiferencialaliquota'+
                      ',i.borecuperaipi'+
                      ',P.NMPRODUTO'+
                      ',U.NMUNIDADE'+
                      ',p.cdtpitem'+
                      ',e.nuentrada nudocumento '+
                      ',coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlicmssubtrib,0)+coalesce(i.vlipi,0) vlcontabil '+
                  'from entrada e '+
                  'inner join itentrada i on i.cdentrada=e.cdentrada and i.cdempresa=e.cdempresa '+
                  'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO and i.cdempresa=p.cdempresa '+
                  'left join cfop c on c.cdcfop=i.cdcfop '+
                  'left join unidade u on u.cdunidade=P.cdunidade and p.cdempresa=u.cdempresa '+
                  'where e.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' '+
                  'order by i.cdentrada,i.cdproduto';
    end;
  end;
var
  q : TClasseQuery;
  x, i : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.Text := makesql;
    q.q.Open;
    i := 0;
    while not q.q.Eof do
    begin
      if tbl = _entrada then
      begin
        if (q.q.FieldByName(_vlpis).AsCurrency = 0) and (q.q.FieldByName(_vlcofins).AsCurrency = 0) and (q.q.fieldbyname(_nustcofins).AsString = '') and (q.q.fieldbyname(_nustpis).AsString = '') then
        begin
          q.q.Next;
          Continue;
        end;
      end
      else if (tbl = _saida) and (q.q.fieldbyname(_nustcofins).AsString = '') and (q.q.fieldbyname(_nustpis).AsString = '') then
      begin
        q.q.Next;
        Continue;
      end;

      inc(i);
      rec100.RegistroC170.New;
      x := rec100.RegistroC170.Count - 1;
      rec100.RegistroC170.Items[x].NUM_ITEM         := IntToStr(i);
      rec100.RegistroC170.Items[x].COD_ITEM         := q.q.fieldbyname(_cdproduto).asstring;
      rec100.RegistroC170.Items[x].DESCR_COMPL      := q.q.fieldbyname(_nmproduto).AsString;
      rec100.RegistroC170.Items[x].QTD              := q.q.fieldbyname(_qtitem).AsFloat;
      rec100.RegistroC170.Items[x].UNID             := q.q.fieldbyname(_cdunidade).AsString;
      rec100.RegistroC170.Items[x].VL_ITEM          := q.q.fieldbyname(_vltotal).AsCurrency - q.q.fieldbyname(_vldesconto).AsCurrency;
      rec100.RegistroC170.Items[x].VL_DESC          := q.q.fieldbyname(_vldesconto).AsCurrency;
      rec100.RegistroC170.Items[x].IND_MOV          := mfNao;
      rec100.RegistroC170.Items[x].CST_ICMS         := acbr.GetCstICMS(q.q.fieldbyname(_cdorigem).AsString+q.q.fieldbyname(_nusticms).AsString);
      rec100.RegistroC170.Items[x].CFOP             := q.q.fieldbyname(_cdcfop).AsString;
      rec100.RegistroC170.Items[x].VL_BC_ICMS       := q.q.fieldbyname(_vlbaseicms).AsCurrency;
      rec100.RegistroC170.Items[x].ALIQ_ICMS        := q.q.fieldbyname(_alicms).AsFloat;
      rec100.RegistroC170.Items[x].VL_ICMS          := q.q.fieldbyname(_vlicms).AsCurrency;
      rec100.RegistroC170.Items[x].VL_BC_ICMS_ST    := q.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency;
      rec100.RegistroC170.Items[x].ALIQ_ST          := q.q.fieldbyname(_alicmssubtrib).AsFloat;
      rec100.RegistroC170.Items[x].VL_ICMS_ST       := q.q.fieldbyname(_vlicmssubtrib).AsCurrency;
      rec100.RegistroC170.Items[x].IND_APUR         := iaMensal;
      if (q.q.fieldbyname(_nustipi).asstring = '') and ((tbl = _entrada) or ((tbl = _saida) and (q.q.FieldByName(_tpentsai).asstring = _e))) then
      begin
        rec100.RegistroC170.Items[x].CST_IPI := stipiOutrasEntradas
      end
      else if (q.q.fieldbyname(_nustipi).asstring = '') and (tbl = _saida) and (q.q.FieldByName(_tpentsai).asstring = _s) then
      begin
        rec100.RegistroC170.Items[x].CST_IPI          := stipiOutrasSaidas
      end
      else
      begin
        rec100.RegistroC170.Items[x].CST_IPI          := ACBr.getcstipi(q.q.fieldbyname(_nustipi).asstring);
      end;
      rec100.RegistroC170.Items[x].VL_BC_IPI        := q.q.fieldbyname(_vlbaseipi).AsCurrency;
      rec100.RegistroC170.Items[x].ALIQ_IPI         := q.q.fieldbyname(_alipi).AsFloat;
      rec100.RegistroC170.Items[x].VL_IPI           := q.q.fieldbyname(_vlipi).AsCurrency;
      rec100.RegistroC170.Items[x].CST_PIS          := ACBr.getcstpis(q.q.fieldbyname(_nustpis).AsString);
      rec100.RegistroC170.Items[x].VL_BC_PIS        := q.q.fieldbyname(_vlbasepis).AsCurrency;
      rec100.RegistroC170.Items[x].ALIQ_PIS_PERC    := q.q.fieldbyname(_alpis).AsFloat;
      rec100.RegistroC170.Items[x].VL_PIS           := q.q.fieldbyname(_vlpis).AsCurrency;
      if q.q.fieldbyname(_nustcofins).AsString = '' then
      begin
        erro.Add('Não está definido a situação tributária do COFINS no produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+' da nota '+q.q.fieldbyname(_nudocumento).asstring+'.');
      end;
      if q.q.fieldbyname(_nustpis).AsString = '' then
      begin
        erro.Add('Não está definido a situação tributária do PIS no produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+' da nota '+q.q.fieldbyname(_nudocumento).asstring+'.');
      end;
      rec100.RegistroC170.Items[x].CST_COFINS       := ACBr.GetCstCofins(q.q.fieldbyname(_nustcofins).AsString);
      rec100.RegistroC170.Items[x].VL_BC_COFINS     := q.q.fieldbyname(_vlbasecofins).AsCurrency;
      rec100.RegistroC170.Items[x].ALIQ_COFINS_PERC := q.q.fieldbyname(_alcofins).AsFloat;
      rec100.RegistroC170.Items[x].VL_COFINS        := q.q.fieldbyname(_vlcofins).AsCurrency;;
      if (tbl = _saida) and (q.q.FieldByName(_bodevolucao).AsString <> _s) then
      begin
        adicionar_pis_isentas(q);
        adicionar_cofins_isentas(q);
      end;
      q.q.Next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.adicionar_item_arquivo(p_insert: integer);
var
  i, x : Integer;
begin
  for i := 0 to High(item) do
  begin
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.New(pc.Bloco_0.Registro0001.Registro0140.Items[0]);
    x := pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Count - 1;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].COD_ITEM     := item[i].cod_item;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].DESCR_ITEM   := item[i].descr_item;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].COD_BARRA    := item[i].cod_barra;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].COD_ANT_ITEM := item[i].cod_ant_item;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].UNID_INV     := item[i].unid_inv;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].TIPO_ITEM    := ACBr.GetTpItem(item[i].tipo_item);
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].COD_NCM      := item[i].cod_ncm;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].EX_IPI       := item[i].ex_ipi;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].COD_GEN      := item[i].cod_gen;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].COD_LST      := item[i].cod_lst;
    pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0200.Items[x].ALIQ_ICMS    := item[i].aliq_icms_;
  end;
end;

function TPisCofins.itemExiste(cod_item: string): boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to high(item) do
  begin
    if item[i].cod_item = cod_item then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TPisCofins.adicionar_item(q: TClasseQuery);
begin
  if (not q.q.fieldbyname(_nuclfiscal).IsNull) and (q.q.FieldByName(_nuclfiscal).AsString <> _00) and (q.q.fieldbyname(_nuclfiscal).asstring <> '') and (Length(removercaracteres(q.q.fieldbyname(_nuclfiscal).AsString)) <> 8) then
  begin
    MessageDlg('Produto '+q.q.fieldbyname(_cdproduto).AsString+' - '+q.q.fieldbyname(_nmproduto).AsString+#13+
               'Está com a quantidade de digitos diferente de 8 no NCM.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (q.q.fieldbyname(_cdtpitem).asstring = _0) and (q.q.fieldbyname(_nuclfiscal).asstring = '') then
  begin
    messagedlg('Produto '+q.q.fieldbyname(_cdproduto).AsString+' - '+q.q.fieldbyname(_nmproduto).AsString+#13+
               'NCM é um campo obrigatório no cadastro deste produto'#13'quando o tipo de item for "0".', mtInformation, [mbOK], 0);
    Abort;
  end;
  if q.q.fieldbyname(_cdtpitem).asstring = '' then
  begin
    messagedlg('Produto '+q.q.fieldbyname(_cdproduto).AsString+' - '+q.q.fieldbyname(_nmproduto).AsString+#13+
               'tipo de item é um campo obrigatório no cadastro de produto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  SetLength(item, High(item)+2);
  item[High(item)].cod_item   := q.q.fieldbyname(_cdproduto).asstring;
  item[High(item)].descr_item := q.q.fieldbyname(_nmproduto).asstring;
  item[High(item)].unid_inv   := q.q.fieldbyname(_cdunidade).asstring;
  item[High(item)].tipo_item  := FormatarTextoEsquerda(q.q.fieldbyname(_cdtpitem).asstring, 2, _0);
  item[High(item)].cod_ncm    := removercaracteres(q.q.fieldbyname(_nuclfiscal).asstring);
end;

procedure TPisCofins.Registro0450;
var
  q : TClasseQuery;
  x : Integer;
begin
  x := -1;
  q := TClasseQuery.create;
  try
    q.q.sql.Text := 'select f.cdefd0450,f.nmefd0450 '+
                    'from entrada e '+
                    'inner join entradaefd0450 ef on ef.cdentrada=e.cdentrada and e.cdempresa=ef.cdempresa '+
                    'inner join efd0450 f on f.cdefd0450=ef.cdefd0450 and f.cdempresa=ef.cdempresa '+
                    'inner join itlp1a l on l.cdentrada=e.cdentrada and l.cdempresa=e.cdempresa '+
                    'where e.cdempresa='+empresa.cdempresa.tostring+' and e.nudocfiscalicms in (''01'',''55'') and l.cdtpimposto=1 and l.cdlp1a='+cdlp1a.ToString+' '+
                    'group by f.cdefd0450,f.nmefd0450';
    q.q.Open;
    while not q.q.Eof do
    begin
      pc.Bloco_0.Registro0450New;
      inc(x);
      pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0450.Items[x].COD_INF := q.q.fieldbyname(_cdefd0450).asstring;
      pc.Bloco_0.Registro0001.Registro0140.Items[0].Registro0450.Items[x].TXT     := q.q.fieldbyname(_nmefd0450).asstring;
      q.q.Next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroC490(nudocfiscalicms:string);
var
  q : TClasseQuery;
  dia, x : Integer;
  dtinicial, dtfinal : TDate;
  procedure inserir_registro;
  begin
    dtfinal := dtinicial + dia - 1;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC490.New;
    x                                                                              := pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC490.Count - 1;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC490.Items[x].COD_MOD    := nudocfiscalicms;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC490.Items[x].DT_DOC_INI := dtinicial;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC490.Items[x].DT_DOC_FIN := dtfinal;
    registroc491(nudocfiscalicms, pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC490.Items[x], dtinicial, dtfinal);
    registroc495(nudocfiscalicms, pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC490.Items[x], dtinicial, dtfinal);
  end;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.Text := 'select d.dtemissao '+
                    'from saida d '+
                    'inner join serie s on s.cdserie=d.cdserie and d.cdempresa=s.cdempresa  '+
                    'where d.cdempresa='+empresa.cdempresa.tostring+' and s.nudocfiscalicms='+quotedstr(nudocfiscalicms)+' and d.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
                    'group by d.dtemissao';
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    dia := 0;
    dtinicial := q.q.FieldByName(_dtemissao).AsDateTime;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      dtfinal := dtinicial + dia;
      if dtfinal <> q.q.FieldByName(_dtemissao).AsDateTime then
      begin
        inserir_registro;
        dia := 0;
        dtinicial := q.q.FieldByName(_dtemissao).AsDateTime;
      end;
      inc(dia);
      q.q.next;
    end;
    if dia > 0 then
    begin
      inserir_registro;
    end;
  finally
    q.Free;
  end;
end;

procedure TPisCofins.RegistroC491(nudocfiscalicms:string; rec490: TRegistroC490; dtinicial, dtfinal: TDate);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.text   := 'select i.nustpis'+
                            ',i.cdcfop'+
                            ',i.cdproduto'+
                            ',i.alpis'+
                            ',sum(i.vldesconto) vldesconto'+
                            ',sum(i.vlseguro) vlseguro'+
                            ',sum(i.vloutdespesa) vloutdespesa'+
                            ',sum(i.vlfrete) vlfrete'+
                            ',sum(i.vltotal) vltotal'+
                            ',sum(i.vlbasepis) vlbasepis'+
                            ',sum(i.vlpis) vlpis '+
                        'from itsaida i '+
                        'inner join saida s on s.cdempresa=i.cdempresa and s.cdsaida=i.cdsaida '+
                        'inner join serie se on se.cdempresa=s.cdempresa and se.cdserie=s.cdserie '+
                        'where i.cdempresa='+empresa.cdempresa.tostring+' '+
                        'and se.nudocfiscalicms='+quotedstr(nudocfiscalicms)+' '+
                        'and s.dtemissao between '+GetDtBanco(dtinicial)+' and '+getdtbanco(dtfinal)+' '+
                        'group by i.nustpis,i.cdcfop,i.cdproduto,i.alpis';
    q.q.open;
    while not q.q.eof do
    begin
      rec490.RegistroC491.New;
      x                                      := rec490.RegistroC491.Count - 1;
      rec490.RegistroC491.Items[x].COD_ITEM  := q.q.fieldbyname(_cdproduto).AsString;
      rec490.RegistroC491.Items[x].CST_PIS   := acbr.getcstpis(q.q.fieldbyname(_nustpis).asstring);
      rec490.RegistroC491.Items[x].CFOP      := q.q.fieldbyname(_cdcfop).AsInteger;
      rec490.RegistroC491.Items[x].VL_ITEM   := q.q.fieldbyname(_vltotal).AsCurrency - q.q.fieldbyname(_vldesconto).AsCurrency;
      rec490.RegistroC491.Items[x].VL_BC_PIS := q.q.fieldbyname(_vlbasepis).AsCurrency;
      rec490.RegistroC491.Items[x].ALIQ_PIS  := q.q.fieldbyname(_alpis).AsFloat;
      rec490.RegistroC491.Items[x].VL_PIS    := q.q.fieldbyname(_vlpis).AsCurrency;
      adicionar_pis_isentas(q);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroC495(nudocfiscalicms:string; rec490: TRegistroC490; dtinicial, dtfinal: TDate);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.Text   := 'select i.nustcofins'+
                            ',i.cdcfop'+
                            ',i.cdproduto'+
                            ',i.alcofins'+
                            ',sum(i.vldesconto) vldesconto'+
                            ',sum(i.vlseguro) vlseguro'+
                            ',sum(i.vloutdespesa) vloutdespesa'+
                            ',sum(i.vlfrete) vlfrete'+
                            ',sum(i.vltotal) vltotal'+
                            ',sum(i.vlbasecofins) vlbasecofins'+
                            ',sum(i.vlcofins) vlcofins '+
                        'from itsaida i '+
                        'inner join saida s on s.cdempresa=i.cdempresa and s.cdsaida=i.cdsaida '+
                        'inner join serie se on se.cdempresa=s.cdempresa and se.cdserie=s.cdserie '+
                        'where i.cdempresa='+empresa.cdempresa.tostring+' and se.nudocfiscalicms='+quotedstr(nudocfiscalicms)+' and s.dtemissao between '+GetDtBanco(dtinicial)+' and '+getdtbanco(dtfinal)+' '+
                        'group by i.nustcofins,i.cdcfop,i.cdproduto,i.alcofins';
    q.q.open;
    while not q.q.eof do
    begin
      rec490.RegistroC495.New;
      x                                         := rec490.RegistroC495.Count - 1;
      rec490.RegistroC495.Items[x].COD_ITEM     := q.q.fieldbyname(_cdproduto).AsString;
      rec490.RegistroC495.Items[x].CST_cofins   := acbr.getcstcofins(q.q.fieldbyname(_nustcofins).asstring);
      rec490.RegistroC495.Items[x].CFOP         := q.q.fieldbyname(_cdcfop).AsInteger;
      rec490.RegistroC495.Items[x].VL_ITEM      := q.q.fieldbyname(_vltotal).AsCurrency - q.q.fieldbyname(_vldesconto).AsCurrency;
      rec490.RegistroC495.Items[x].VL_BC_cofins := q.q.fieldbyname(_vlbasecofins).AsCurrency;
      rec490.RegistroC495.Items[x].ALIQ_cofins  := q.q.fieldbyname(_alcofins).AsFloat;
      rec490.RegistroC495.Items[x].VL_cofins    := q.q.fieldbyname(_vlcofins).AsCurrency;
      adicionar_cofins_isentas(q);
      q.q.next;
    end;
  finally
    q.Free;
  end;
end;

procedure TPisCofins.RegistroC500;
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text   := 'select e.nudocfiscalicms'+
                            ',e.nustdocumento'+
                            ',e.nuserie'+
                            ',e.nusubserie'+
                            ',e.nuentrada nusaida'+
                            ',e.cdentrada codigo'+
                            ',e.dtemissao'+
                            ',e.dtsaida'+
                            ',e.vltotal'+
                            ',(select sum(i.vlicms) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlicms'+
                            ',e.vlbaseicmssubtrib'+
                            ',(select sum(i.vlpis) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperapis=''S'') vlpis'+
                            ',(select sum(i.vlcofins) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperacofins=''S'') vlcofins'+
                            ',''E'' tpentsai'+
                            ',f.nucnpj,f.nucpf '+
                      'from entrada e '+
                      'inner join fornecedor f on f.cdfornecedor=e.cdfornecedor and f.cdempresa=e.cdempresa '+
                      'inner join itlp1a i on i.cdentrada=e.cdentrada and i.cdempresa=e.cdempresa '+
                      'where f.cdempresa='+empresa.cdempresa.tostring+' and e.nudocfiscalicms in (''28'',''06'',''29'') and i.cdtpimposto=1 and i.cdlp1a='+cdlp1a.ToString;
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      if q.q.FieldByName(_vlpis).AsCurrency = 0 then
      begin
        q.q.Next;
        Continue;
      end;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.New;
      x := pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Count - 1;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].COD_PART := get_participante(q, _fornecedor);
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].COD_MOD  := q.q.fieldbyname(_nudocfiscalicms).AsString;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].COD_SIT  := ACBr.getstdocumento(q.q.fieldbyname(_nustdocumento).asstring);
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].SER      := q.q.fieldbyname(_nuserie).asstring;
      if q.q.fieldbyname(_nusubserie).AsString <> '' then
      begin
        pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].SUB := q.q.fieldbyname(_nusubserie).AsInteger;
      end;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].NUM_DOC   := q.q.fieldbyname(_nusaida).AsInteger;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].DT_DOC    := q.q.fieldbyname(_dtemissao).asdatetime;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].DT_ENT    := q.q.fieldbyname(_dtsaida).asdatetime;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].VL_DOC    := q.q.fieldbyname(_vltotal).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].VL_ICMS   := q.q.fieldbyname(_vlicms).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].VL_PIS    := q.q.fieldbyname(_vlpis).AsCurrency;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x].VL_COFINS := q.q.fieldbyname(_vlcofins).AsCurrency;
      RegistroC501(pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x], q.q.FieldByName(_codigo).AsString);
      RegistroC505(pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC500.Items[x], q.q.FieldByName(_codigo).AsString);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroC501(rec500: TRegistroC500; codigo: string);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.text   := 'select nustpis'+
                            ',alpis'+
                            ',cdbccalculocredito'+
                            ',sum(vltotal) vltotal'+
                            ',sum(vlbasepis) vlbasepis'+
                            ',sum(vlpis) vlpis '+
                        'from itentrada i '+
                        'where cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+codigo+' and borecuperapis=''S'' '+
                        'group by nustpis,alpis,cdbccalculocredito';
    q.q.open;
    while not q.q.eof do
    begin
      if q.q.FieldByName(_cdbccalculocredito).AsString = '' then
      begin
        MessageDlg('Código da Base de Cálculo de crédito não está definido'#13'na nota de compra '+nomedocodigo(_entrada, codigo, _nuentrada), mtInformation, [mbOK], 0);
        Abort;
      end;
      rec500.RegistroC501.New;
      x := rec500.RegistroC501.Count - 1;
      rec500.RegistroC501.Items[x].CST_PIS     := acbr.getcstpis(q.q.fieldbyname(_nustpis).asstring);
      rec500.RegistroC501.Items[x].VL_ITEM     := q.q.fieldbyname(_vltotal).AsCurrency;
      rec500.RegistroC501.Items[x].NAT_BC_CRED := ACBr.GetBaseCalculoCredito(q.q.FieldByName(_cdbccalculocredito).AsString);
      rec500.RegistroC501.Items[x].VL_BC_PIS   := q.q.fieldbyname(_vlbasepis).AsCurrency;
      rec500.RegistroC501.Items[x].ALIQ_PIS    := q.q.fieldbyname(_alpis).AsFloat;
      rec500.RegistroC501.Items[x].VL_PIS      := q.q.fieldbyname(_vlpis).AsCurrency;
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroC505(rec500: TRegistroC500; codigo: string);
var
  q : TClasseQuery;
  x : integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.text   := 'select nustcofins'+
                            ',alcofins'+
                            ',cdbccalculocredito'+
                            ',sum(vltotal) vltotal'+
                            ',sum(vlbasecofins) vlbasecofins'+
                            ',sum(vlcofins) vlcofins '+
                        'from itentrada '+
                        'where cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+codigo+' and borecuperacofins=''S'' '+
                        'group by nustcofins,alcofins,cdbccalculocredito';
    q.q.open;
    while not q.q.eof do
    begin
      if q.q.FieldByName(_cdbccalculocredito).AsString = '' then
      begin
        MessageDlg('Código da Base de Cálculo de crédito não está definido'#13+
                   'para o produto '+q.q.fieldbyname(_nmproduto).asstring+#13+
                   'na nota de compra '+nomedocodigo(_entrada, codigo, _nuentrada), mtInformation, [mbOK], 0);
        Abort;
      end;
      rec500.RegistroC505.New;
      x := rec500.RegistroC505.Count - 1;
      rec500.RegistroC505.Items[x].CST_COFINS   := acbr.getcstcofins(q.q.fieldbyname(_nustcofins).asstring);
      rec500.RegistroC505.Items[x].VL_ITEM      := q.q.fieldbyname(_vltotal).AsCurrency;
      rec500.RegistroC505.Items[x].NAT_BC_CRED  := ACBr.GetBaseCalculoCredito(q.q.FieldByName(_cdbccalculocredito).AsString);
      rec500.RegistroC505.Items[x].VL_BC_cofins := q.q.fieldbyname(_vlbasecofins).AsCurrency;
      rec500.RegistroC505.Items[x].ALIQ_cofins  := q.q.fieldbyname(_alcofins).AsFloat;
      rec500.RegistroC505.Items[x].VL_cofins    := q.q.fieldbyname(_vlcofins).AsCurrency;
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroD100;
var
  q : TClasseQuery;
  x : Integer;
begin
  q  := TClasseQuery.create;
  try
    q.q.sql.text := 'select e.nudocfiscalicms'+
                          ',e.nustdocumento'+
                          ',1 indemit' +
                          ',e.nuserie'+
                          ',e.nusubserie'+
                          ',e.nuentrada nusaida'+
                          ',e.cdentrada codigo'+
                          ',e.nuchavenfe'+
                          ',e.dtemissao'+
                          ',e.dtsaida'+
                          ',e.vltotal'+
                          ',e.vldesconto'+
                          ',e.vlproduto'+
                          ',e.cdtpfrete'+
                          ',e.vlfrete'+
                          ',e.vloutdespesa'+
                          ',e.vlseguro'+
                          ',E.VLSERVICO'+
                          ',(select vlbaseicms from itentrada where cdempresa=e.cdempresa and cdentrada=e.cdentrada and borecuperaicms=''S'') vlbaseicms'+
                          ',(select vlicms from itentrada where cdempresa=e.cdempresa and cdentrada=e.cdentrada and borecuperaicms=''S'') vlicms'+
                          ',e.vlbaseicmssubtrib'+
                          ',e.vlicmssubtrib'+
                          ',e.vlipi'+
                          ',e.vlpis'+
                          ',e.vlcofins'+
                          ',e.vlpissubtrib'+
                          ',e.vlcofinssubtrib'+
                          ',''E'' tpentsai'+
                          ',f.nucnpj,f.nucpf '+
                    'from entrada e '+
                    'inner join fornecedor f on f.cdfornecedor=e.cdfornecedor and e.cdempresa=f.cdempresa '+
                    'inner join itlp1a i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa '+
                    'where e.cdempresa='+empresa.cdempresa.tostring+' and ((e.nudocfiscalicms=''08'' or e.nudocfiscalicms = ''57'') or (e.nudocfiscalicms=''07'')) and i.cdtpimposto=1 and i.cdlp1a='+cdlp1a.ToString;
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.New;
      x := pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Count - 1;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].IND_OPER    := _0;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].IND_EMIT    := iedfTerceiro;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].COD_PART    := get_participante(q, _fornecedor);
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].COD_MOD     := q.q.fieldbyname(_nudocfiscalicms).asstring;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].COD_SIT     := ACBr.GetStDocumentocte(q.q.fieldbyname(_nustdocumento).asstring);
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].SER         := q.q.fieldbyname(_nuserie).asstring;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].SUB         := q.q.fieldbyname(_nusubserie).asstring;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].NUM_DOC     := q.q.fieldbyname(_nusaida).asstring;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].CHV_CTE     := q.q.fieldbyname(_nuchavenfe).asstring;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].DT_DOC      := q.q.fieldbyname(_dtemissao).asdatetime;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].DT_A_P      := q.q.fieldbyname(_dtsaida).asdatetime;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].VL_DOC      := q.q.fieldbyname(_vltotal).AsCurrency;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].VL_DESC     := q.q.fieldbyname(_vldesconto).AsCurrency;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].IND_FRT     := ACBr.GetTpFrete(q.q.fieldbyname(_cdtpfrete).Asstring);
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].VL_SERV     := q.q.fieldbyname(_vlservico).AsCurrency;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].VL_BC_ICMS  := q.q.fieldbyname(_vlbaseicms).AsCurrency;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x].VL_ICMS     := q.q.fieldbyname(_vlicms).AsCurrency;
      RegistroD101(pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x], q.q.fieldbyname(_codigo).asstring);
      RegistroD105(pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD100.Items[x], q.q.fieldbyname(_codigo).asstring);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroD101(red100: TRegistroD100; codigo: string);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.text   := 'select nustpis'+
                            ',alpis'+
                            ',cdbccalculocredito'+
                            ',sum(vltotal) vltotal'+
                            ',sum(vlbasepis) vlbasepis'+
                            ',sum(vlpis) vlpis '+
                        'from itentrada '+
                        'where cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+codigo+' and borecuperapis=''S'' '+
                        'group by nustpis,alpis,cdbccalculocredito';
    q.q.open;
    while not q.q.eof do
    begin
      red100.RegistroD101.New;
      x := red100.RegistroD101.Count - 1;
      red100.RegistroD101.Items[x].CST_PIS     := acbr.getcstpis(q.q.fieldbyname(_nustpis).asstring);
      red100.RegistroD101.Items[x].VL_ITEM     := q.q.fieldbyname(_vltotal).AsCurrency;
      if q.q.FieldByName(_cdbccalculocredito).AsString = '' then
      begin
        MessageDlg('Código da Base de Cálculo de crédito não está definido'#13'na nota de compra '+nomedocodigo(_entrada, codigo, _nuentrada), mtInformation, [mbOK], 0);
        Abort;
      end;
      red100.RegistroD101.Items[x].NAT_BC_CRED := ACBr.GetBaseCalculoCredito(q.q.FieldByName(_cdbccalculocredito).AsString);
      red100.RegistroD101.Items[x].VL_BC_PIS   := q.q.fieldbyname(_vlbasepis).AsCurrency;
      red100.RegistroD101.Items[x].ALIQ_PIS    := q.q.fieldbyname(_alpis).AsFloat;
      red100.RegistroD101.Items[x].VL_PIS      := q.q.fieldbyname(_vlpis).AsCurrency;
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroD105(red100: TRegistroD100; codigo: string);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.text := 'select nustcofins'+
                          ',alcofins'+
                          ',cdbccalculocredito'+
                          ',sum(vltotal) vltotal'+
                          ',sum(vlbasecofins) vlbasecofins'+
                          ',sum(vlcofins) vlcofins '+
                      'from itentrada i '+
                      'where cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+codigo+' and borecuperacofins=''S'' and vlcofins > 0 '+
                      'group by nustcofins,alcofins,cdbccalculocredito';
    q.q.open;
    while not q.q.eof do
    begin
      red100.RegistroD105.New;
      x := red100.RegistroD105.Count - 1;
      red100.RegistroD105.Items[x].CST_COFINS   := acbr.getcstcofins(q.q.fieldbyname(_nustcofins).asstring);
      red100.RegistroD105.Items[x].VL_ITEM      := q.q.fieldbyname(_vltotal).AsCurrency;
      if q.q.FieldByName(_cdbccalculocredito).AsString = '' then
      begin
        MessageDlg('Código da Base de Cálculo de crédito não está definido'#13'para o produto '+q.q.fieldbyname(_nmproduto).asstring+#13'na nota de compra '+nomedocodigo(_entrada, codigo, _nuentrada), mtInformation, [mbOK], 0);
        Abort;
      end;
      red100.RegistroD105.Items[x].NAT_BC_CRED  := ACBr.GetBaseCalculoCredito(q.q.FieldByName(_cdbccalculocredito).AsString);
      red100.RegistroD105.Items[x].VL_BC_cofins := q.q.fieldbyname(_vlbasecofins).AsCurrency;
      red100.RegistroD105.Items[x].ALIQ_cofins  := q.q.fieldbyname(_alcofins).AsFloat;
      red100.RegistroD105.Items[x].VL_cofins    := q.q.fieldbyname(_vlcofins).AsCurrency;
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroD500;
var
  x : Integer;
  entrada : TEntradaList;
  I: Integer;
begin
  entrada := TEntradaList.Create;
  try
    entrada.Ler('nudocfiscalicms in (''21'',''22'') and dtsaida between '+GetDtBanco(dti)+' and '+getdtbanco(dtf));
    gau.MaxValue := entrada.Count;
    for I := 0 to entrada.Count-1 do
    begin
      gau.Progress := i+1;
      Application.ProcessMessages;
      entrada.Items[i].Itentrada.Ler(entrada.Items[i].cdentrada);
      if entrada.Items[i].vlpisrecupera = 0 then
      begin
        Continue;
      end;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.New;
      x := pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Count-1;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].IND_OPER    := itoContratado;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].IND_EMIT    := iedfTerceiro;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].COD_PART    := removercaracteres(qregistro.StringdoCodigo(_fornecedor, entrada.Items[i].cdfornecedor, _nucnpj));
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].COD_MOD     := entrada.Items[i].nudocfiscalicms;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].COD_SIT     := ACBr.GetStDocumentocte(entrada.Items[i].nustdocumento);
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].SER         := entrada.Items[i].nuserie;
      if entrada.Items[i].nusubserie <> '' then
      begin
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].SUB := entrada.Items[i].nusubserie.ToInteger;
      end;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].NUM_DOC     := entrada.Items[i].nuentrada;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].DT_DOC      := entrada.Items[i].dtemissao;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].DT_A_P      := entrada.Items[i].dtsaida;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_DOC      := entrada.Items[i].vltotal;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_DESC     := entrada.Items[i].vldesconto;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_SERV     := entrada.Items[i].vlservico;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_SERV_NT  := entrada.Items[i].vlservico;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_TERC     := entrada.Items[i].vlservico;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_DA       := entrada.Items[i].vlservico;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_BC_ICMS  := entrada.Items[i].vlbaseicmsrecupera;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_ICMS     := entrada.Items[i].vlicmsrecupera;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_PIS      := entrada.Items[i].vlpisrecupera;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x].VL_COFINS   := entrada.Items[i].vlcofinsrecupera;

      RegistroD501(pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x], entrada.Items[i].cdentrada.ToString);
      RegistroD505(pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD500.Items[x], entrada.Items[i].cdentrada.ToString);
    end;
  finally
    FreeAndNil(entrada);
  end;
end;

procedure TPisCofins.RegistroD501(red500:TRegistroD500; codigo: string);
var
  q : TClasseQuery;
  x : Integer;
  itentrada : titentradalist;
  I: Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.text   := 'select nustpis'+
                            ',alpis'+
                            ',cdbccalculocredito'+
                            ',sum(vltotal) vltotal'+
                            ',sum(vlbasepis) vlbasepis'+
                            ',sum(vlpis) vlpis '+
                        'from itentrada '+
                        'where cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+codigo+' and borecuperapis=''S'' '+
                        'group by nustpis,alpis,cdbccalculocredito';
    q.q.open;
    while not q.q.eof do
    begin
      red500.RegistroD501.New;
      x := red500.RegistroD501.Count - 1;
      red500.RegistroD501.Items[x].CST_PIS     := acbr.getcstpis(q.q.fieldbyname(_nustpis).asstring);
      red500.RegistroD501.Items[x].VL_ITEM     := q.q.fieldbyname(_vltotal).AsCurrency;
      if q.q.FieldByName(_cdbccalculocredito).AsString = '' then
      begin
        itentrada := TItEntradaList.Create;
        try
          itentrada.Ler(codigo.ToInteger);
          for I := 0 to itentrada.Count-1 do
          begin
            if itentrada.Items[i].cdbccalculocredito = '' then
            begin
              MessageDlg('Código da Base de Cálculo de crédito não está definido'#13+
                         'para o produto '+qregistro.NomedoCodigo(_produto, itentrada.Items[i].cdproduto)+#13+
                         'na nota de compra '+nomedocodigo(_entrada, codigo, _nuentrada), mtInformation, [mbOK], 0);
              Abort;
            end;
          end;
        finally
          FreeAndNil(itentrada);
        end;
      end;
      red500.RegistroD501.Items[x].NAT_BC_CRED := ACBr.GetBaseCalculoCredito(q.q.FieldByName(_cdbccalculocredito).AsString);
      red500.RegistroD501.Items[x].VL_BC_PIS   := q.q.fieldbyname(_vlbasepis).AsCurrency;
      red500.RegistroD501.Items[x].ALIQ_PIS    := q.q.fieldbyname(_alpis).AsFloat;
      red500.RegistroD501.Items[x].VL_PIS      := q.q.fieldbyname(_vlpis).AsCurrency;
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroD505(red500:TRegistroD500; codigo: string);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.text := 'select nustcofins'+
                          ',alcofins'+
                          ',cdbccalculocredito'+
                          ',sum(vltotal) vltotal'+
                          ',sum(vlbasecofins) vlbasecofins'+
                          ',sum(vlcofins) vlcofins '+
                      'from itentrada '+
                      'where cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+codigo+' and borecuperacofins=''S'' '+
                      'group by nustcofins,alcofins,cdbccalculocredito';
    q.q.open;
    while not q.q.eof do
    begin
      red500.RegistroD505.New;
      x := red500.RegistroD505.Count - 1;
      red500.RegistroD505.Items[x].CST_COFINS   := acbr.getcstcofins(q.q.fieldbyname(_nustcofins).asstring);
      red500.RegistroD505.Items[x].VL_ITEM      := q.q.fieldbyname(_vltotal).AsCurrency;
      if q.q.FieldByName(_cdbccalculocredito).AsString = '' then
      begin
        MessageDlg('Código da Base de Cálculo de crédito não está definido'#13'para o produto '+q.q.fieldbyname(_nmproduto).asstring+#13'na nota de compra '+nomedocodigo(_entrada, codigo, _nuentrada), mtInformation, [mbOK], 0);
        Abort;
      end;
      red500.RegistroD505.Items[x].NAT_BC_CRED  := ACBr.GetBaseCalculoCredito(q.q.FieldByName(_cdbccalculocredito).AsString);
      red500.RegistroD505.Items[x].VL_BC_cofins := q.q.fieldbyname(_vlbasecofins).AsCurrency;
      red500.RegistroD505.Items[x].ALIQ_cofins  := q.q.fieldbyname(_alcofins).AsFloat;
      red500.RegistroD505.Items[x].VL_cofins    := q.q.fieldbyname(_vlcofins).AsCurrency;
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroD200;
var
  q : TClasseQuery;
  x, y : Integer;
begin
  q  := TClasseQuery.create;
  try
    q.q.sql.text := 'select dtemissao' +
                          ',nustdocumento'+
                          ',cdcfop'+
                          ',min(cdcte) cdctei'+
                          ',max(cdcte) cdctef'+
                          ',sum(vlreceber) vlreceber '+
                     'from cte '+
                     'where cdempresa='+empresa.cdempresa.tostring+' and dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' and NUSTDOCUMENTO<>''02'' and NUSTDOCUMENTO<>''05'' and NUSTDOCUMENTO<>''04'' '+
                     'group by dtemissao,nustdocumento,cdcfop';
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    if q.q.recordcount = 0 then
    begin
      exit;
    end;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.New;
      x := pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Count - 1;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].COD_MOD     := _57;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].COD_SIT     := ACBr.GetStDocumentocte(q.q.fieldbyname(_nustdocumento).asstring);
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].SER         := _u;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].SUB         := '';
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].NUM_DOC_INI := q.q.fieldbyname(_cdcte+_i).AsInteger;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].NUM_DOC_FIN := q.q.fieldbyname(_cdcte+_f).AsInteger;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].CFOP        := q.q.fieldbyname(_cdcfop).AsInteger;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].DT_REF      := q.q.fieldbyname(_dtemissao).AsDateTime;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].VL_DOC      := q.q.fieldbyname(_vlreceber).AsCurrency;
      pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].VL_DESC     := 0;
      if q.q.fieldbyname(_vlreceber).AsCurrency > 0 then
      begin
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD201.New;
        y := pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD201.Count - 1;
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD201.Items[y].CST_PIS     := acbr.getcstpis(_01);
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD201.Items[y].VL_ITEM     := q.q.fieldbyname(_vlreceber).AsCurrency;
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD201.Items[y].VL_BC_PIS   := q.q.fieldbyname(_vlreceber).AsCurrency;
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD201.Items[y].ALIQ_PIS    := empresa.faturamento.cte.alpis;
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD201.Items[y].VL_PIS      := q.q.fieldbyname(_vlreceber).AsCurrency * empresa.faturamento.cte.alpis /100;

        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD205.New;
        y := pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD205.Count - 1;
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD205.Items[y].CST_COFINS   := acbr.getcstcofins(_01);
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD205.Items[y].VL_ITEM      := q.q.fieldbyname(_vlreceber).AsCurrency;
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD205.Items[y].VL_BC_cofins := q.q.fieldbyname(_vlreceber).AsCurrency;
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD205.Items[y].ALIQ_cofins  := empresa.faturamento.cte.alcofins;
        pc.Bloco_D.RegistroD001.RegistroD010.Items[0].RegistroD200.Items[x].RegistroD205.Items[y].VL_cofins    := q.q.fieldbyname(_vlreceber).AsCurrency * empresa.faturamento.cte.alcofins /100;
      end;
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

function TPisCofins.GerarJuncao(codigo: integer; diretorio, filename: string):boolean;
var
  arquivo_auxiliar, arquivo_gerado, arquivo_original : tstrings;
  procedure deixar_somente_registro_d200;
  var
    i : integer;
  begin
    arquivo_auxiliar.Clear;
    for i := 0 to arquivo_gerado.Count - 1 do
    begin
      if (copy(arquivo_gerado[i], 1, 6) = '|D200|') or (copy(arquivo_gerado[i], 1, 6) = '|D201|') or (copy(arquivo_gerado[i], 1, 6) = '|D205|')  then
      begin
        arquivo_auxiliar.add(arquivo_gerado[i]);
      end;
    end;
    arquivo_gerado.Text := arquivo_auxiliar.Text;
  end;
  procedure inserir_registro_d200;
  var
    _9900, _9990, d990, d200, d201, d205, x, i : integer;
  begin
    arquivo_auxiliar.Clear;
    d200  := 0;
    d201  := 0;
    d205  := 0;
    d990  := 0;
    _9900 := 0;
    _9990 := 0;
    for i := 0 to arquivo_original.count -1 do
    begin
      if copy(arquivo_original[i], 1, 2) = '|D' then
      begin
        inc(d990);
      end;
      if copy(arquivo_original[i], 1, 6) = '|D990|' then
      begin
        for x := 0 to arquivo_gerado.count - 1 do
        begin
          if copy(arquivo_gerado[x], 1, 6) = '|D200|' then
          begin
            inc(d200);
          end;
          if copy(arquivo_gerado[x], 1, 6) = '|D201|' then
          begin
            inc(d201);
          end;
          if copy(arquivo_gerado[x], 1, 6) = '|D205|' then
          begin
            inc(d205);
          end;
          inc(d990);
          arquivo_auxiliar.Add(arquivo_gerado[x]);
        end;
      end;
      arquivo_auxiliar.Add(arquivo_original[i]);
    end;

    for i := 0 to arquivo_auxiliar.count -1 do
    begin
      if copy(arquivo_auxiliar[i], 1, 6) = '|D990|' then
      begin
        arquivo_auxiliar[i] := '|D990|'+inttostr(d990)+'|';
      end;
    end;

    arquivo_gerado.clear;
    for i := 0 to arquivo_auxiliar.count -1 do
    begin
      arquivo_gerado.Add(arquivo_auxiliar[i]);
      if copy(arquivo_auxiliar[i], 1, 11) = '|9900|D010|' then
      begin
        arquivo_gerado.Add('|9900|D200|'+inttostr(d200)+'|');
        arquivo_gerado.Add('|9900|D201|'+inttostr(d201)+'|');
        arquivo_gerado.Add('|9900|D205|'+inttostr(d205)+'|');
      end;
    end;
    arquivo_auxiliar.Text := arquivo_gerado.Text;

    for i := 0 to arquivo_auxiliar.count -1 do
    begin
      if copy(arquivo_auxiliar[i], 1, 6) = '|9900|' then
      begin
        inc(_9900);
      end;
      if copy(arquivo_auxiliar[i], 1, 2) = '|9' then
      begin
        inc(_9990);
      end;
    end;

    for i := 0 to arquivo_auxiliar.count -1 do
    begin
      if copy(arquivo_auxiliar[i], 1, 11) = '|9900|9900|' then
      begin
        arquivo_auxiliar[i] := '|9900|9900|'+inttostr(_9900)+'|';
      end;
      if copy(arquivo_auxiliar[i], 1, 6) = '|9990|' then
      begin
        arquivo_auxiliar[i] := '|9990|'+inttostr(_9990)+'|';
      end;
      if copy(arquivo_auxiliar[i], 1, 6) = '|9999|' then
      begin
        arquivo_auxiliar[i] := '|9999|'+inttostr(arquivo_auxiliar.count)+'|';
      end;
    end;
  end;
begin
  frmprogressbar   := tfrmprogressbar.create(nil);
  pc               := TACBrSPEDPisCofins.Create(nil);
  arquivo_gerado   := tstringlist.Create;
  arquivo_original := tstringlist.create;
  arquivo_auxiliar := tstringlist.create;
  try
    pnl  := frmprogressbar.pnl;
    gau  := frmprogressbar.gau;
    gau1 := frmprogressbar.gau1;
    frmprogressbar.setgau1;
    frmprogressbar.Show;
    cdlp1a         := codigo;
    dti            := qregistro.datadocodigo(_lp1a, cdlp1a, _dtinicio);
    dtf            := qregistro.datadocodigo(_lp1a, cdlp1a, _dtfinal);
    PC.Delimitador := '|';
    pc.Path        := diretorio;
    NomeArquivo;
    pc.DT_INI := dti;
    pc.DT_FIN := dtf;
    pc.IniciaGeracao;
    pc.LinhasBuffer := 1000;
    if empresa.tpregime <> _s then
    begin
      pc.Bloco_D.RegistroD001New.IND_MOV := imComDados
    end
    else
    begin
      pc.Bloco_D.RegistroD001New.IND_MOV := imSemDados;
    end;
    pc.Bloco_D.RegistroD010New.CNPJ  := empresa.nucnpj_;
    RegistroD200;
    pc.WriteBloco_D;
    GerarTxt;
    //
    arquivo_original.LoadFromFile(filename);
    arquivo_gerado.LoadFromFile(pc.Path+'\'+pc.Arquivo);
    deixar_somente_registro_d200;
    inserir_registro_d200;
    arquivo_auxiliar.SaveToFile(pc.Path+'\'+pc.Arquivo);
    result := True;
  finally
    FreeAndNil(pc);
    FreeAndNil(arquivo_original);
    FreeAndNil(arquivo_auxiliar);
    FreeAndNil(arquivo_gerado);
    FreeAndNil(frmprogressbar);
  end;
end;

destructor TPisCofins.destroy;
begin
  freeandnil(erro);
  freeandnil(ACBr);
  freeandnil(nustpisisentas);
  freeandnil(nustcofinsisentas);
  freeandnil(vlbasepisisentas);
  freeandnil(vlbasecofinsisentas);
  inherited;
end;

function TPisCofins.ExisteRegistroA100: Boolean;
  function makesqlsaida:string;
  begin
    result := 'select count(*) '+
              'from saida s '+
              'inner join serie e on e.cdserie=s.cdserie and s.cdempresa=e.cdempresa '+
              'inner join cliente c on c.cdcliente=s.cdcliente and c.cdempresa=s.cdempresa '+
              'where s.cdempresa='+empresa.cdempresa.tostring+' '+
              'and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and e.boservico=''S''';
  end;
  function makesqlentrada:string;
  begin
    result := 'select count(*) '+
              'from entrada e '+
              'inner join fornecedor f on f.cdfornecedor=e.cdfornecedor and f.cdempresa=e.cdempresa '+
              'where e.cdempresa='+empresa.cdempresa.tostring+' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and e.vlservico>0 and e.nudocfiscalicms=''01''';
  end;
begin
  if Empresa.cdind_reg_cum = _2 then
  begin
    result := False; 
    Exit;
  end;
  result := RetornaSQLInteger(makesqlsaida) > 0;
  if not result then
  begin
    result := RetornaSQLInteger(makesqlentrada) > 0;
  end;
end;

procedure TPisCofins.RegistroC400;
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text := 'select m.nmmodelo'+
                          ',t.nuserie'+
                          ',S.nudocfiscalicms'+
                          ',t.cdtpsaida'+
                          ',t.nucaixa '+
                     'from tpsaida t '+
                     'inner join modelo m on m.cdmodelo=t.cdmodelo and t.cdempresa=m.cdempresa '+
                     'inner join serie s on s.cdserie=t.cdserie and t.cdempresa=s.cdempresa '+
                     'where t.cdempresa='+empresa.cdempresa.tostring+' and s.boativar=''S'' and s.nuserie is not null';
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC400.New;
      x := pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC400.Count - 1;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC400.Items[x].COD_MOD := q.q.fieldbyname(_nudocfiscalicms).AsString;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC400.Items[x].ECF_MOD := q.q.fieldbyname(_nmmodelo).AsString;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC400.Items[x].ECF_FAB := q.q.fieldbyname(_nuserie).AsString;
      pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC400.Items[x].ECF_CX  := q.q.fieldbyname(_nucaixa).AsInteger;
      registroc405(pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC400.Items[x], q.q.fieldbyname(_nuserie).asstring);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.registroc405(rec400: TRegistroC400; nuserie: string);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text   := QRetornaSQL.get_select_from(_reg+_60+_m)+' where cdempresa='+empresa.cdempresa.tostring+' and nuserie='+quotedstr(nuserie)+' and dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf);;
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      rec400.RegistroC405.New;
      x := rec400.RegistroC405.Count - 1;
      rec400.RegistroC405.Items[x].DT_DOC      := q.q.fieldbyname(_dtemissao).AsDateTime;
      rec400.RegistroC405.Items[x].CRO         := q.q.fieldbyname(_NUCRO).AsInteger;
      rec400.RegistroC405.Items[x].CRZ         := q.q.FieldByName(_NUREDUCAOZ).AsInteger;
      rec400.RegistroC405.Items[x].NUM_COO_FIN := q.q.fieldbyname(_COOFINAL).AsInteger;
      rec400.RegistroC405.Items[x].GT_FIN      := q.q.fieldbyname(_VLEQUIPAMENTO).AsCurrency;
      rec400.RegistroC405.Items[x].VL_BRT      := q.q.fieldbyname(_VLBRUTA).AsCurrency;
      registroc481(rec400.RegistroC405.Items[x], nuserie, q.q.fieldbyname(_dtemissao).AsDateTime);
      registroc485(rec400.RegistroC405.Items[x], nuserie, q.q.fieldbyname(_dtemissao).AsDateTime);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.registroC481(rec405: TRegistroC405; nuserie: string; dtemissao: TDate);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text   := 'select i.cdproduto'+
                            ',i.nustpis'+
                            ',i.alpis'+
                            ',sum(i.vldesconto) vldesconto'+
                            ',sum(i.vlseguro) vlseguro'+
                            ',sum(i.vloutdespesa) vloutdespesa'+
                            ',sum(i.vlfrete) vlfrete'+
                            ',sum(i.vltotal) vltotal'+
                            ',sum(i.vlbasepis) vlbasepis'+
                            ',sum(i.vlpis) vlpis '+
                      'from itsaida i '+
                      'left join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                      'left join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
                      'where t.cdempresa='+empresa.cdempresa.tostring+' and t.nuserie='+quotedstr(nuserie)+' and s.dtemissao='+GetDtBanco(dtemissao)+' '+
                      'group by i.cdproduto,i.nustpis,i.alpis';
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      rec405.RegistroC481.New;
      x := rec405.RegistroC481.Count - 1;
      rec405.RegistroC481.Items[x].CST_PIS        := ACBr.getcstpis(q.q.fieldbyname(_nustpis).AsString);
      rec405.RegistroC481.Items[x].VL_ITEM        := q.q.fieldbyname(_vltotal).AsCurrency;
      rec405.RegistroC481.Items[x].VL_BC_PIS      := q.q.FieldByName(_vlbasepis).AsCurrency;
      rec405.RegistroC481.Items[x].ALIQ_PIS       := q.q.fieldbyname(_alpis).AsFloat;
      rec405.RegistroC481.Items[x].VL_PIS         := q.q.fieldbyname(_vlpis).AsCurrency;
      rec405.RegistroC481.Items[x].COD_ITEM       := q.q.fieldbyname(_cdproduto).AsString;
      adicionar_pis_isentas(q);
      q.q.next;
    end;
  finally
    q.free
  end;
end;

procedure TPisCofins.registroC485(rec405: TRegistroC405; nuserie: string; dtemissao: TDate);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text   := 'select i.cdproduto'+
                            ',i.nustcofins'+
                            ',i.alcofins'+
                            ',sum(i.vldesconto) vldesconto'+
                            ',sum(i.vlseguro) vlseguro'+
                            ',sum(i.vloutdespesa) vloutdespesa'+
                            ',sum(i.vlfrete) vlfrete'+
                            ',sum(i.vltotal) vltotal'+
                            ',sum(i.vlbasecofins) vlbasecofins'+
                            ',sum(i.vlcofins) vlcofins '+
                      'from itsaida i '+
                      'left join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                      'left join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
                      'where i.cdempresa='+empresa.cdempresa.tostring+' and t.nuserie='+quotedstr(nuserie)+' and s.dtemissao='+GetDtBanco(dtemissao)+' '+
                      'group by i.cdproduto,i.nustcofins,i.alcofins';
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      rec405.RegistroC485.New;
      x := rec405.RegistroC485.Count - 1;
      rec405.RegistroC485.Items[x].CST_COFINS   := ACBr.GetCstCofins(q.q.fieldbyname(_nustcofins).AsString);
      rec405.RegistroC485.Items[x].VL_ITEM      := q.q.fieldbyname(_vltotal).AsCurrency;
      rec405.RegistroC485.Items[x].VL_BC_COFINS := q.q.FieldByName(_vlbasecofins).AsCurrency;
      rec405.RegistroC485.Items[x].ALIQ_COFINS  := q.q.fieldbyname(_alcofins).AsFloat;
      rec405.RegistroC485.Items[x].VL_COFINS    := q.q.fieldbyname(_vlcofins).AsCurrency;
      rec405.RegistroC485.Items[x].COD_ITEM     := q.q.fieldbyname(_cdproduto).AsString;
      adicionar_cofins_isentas(q);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroF500;
  procedure check_st_01_com_aliquota;
  var
    q : TClasseQuery;
  begin
    q := TClasseQuery.Create;
    try
      q.q.sql.text   := 'select s.nudocfiscalicms'+
                              ',i.cdcfop'+
                              ',i.nustpis'+
                              ',i.nustcofins'+
                              ',i.alpis'+
                              ',i.alcofins'+
                              ',s.nusaida '+
                        'from saida s '+
                        'inner join itsaida i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa '+
                        'where i.nustpis=''01'' and i.nustcofins=''01'' and (i.alpis is null or i.alpis=0 or i.alcofins is null and i.alcofins=0) '+
                        'and s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf);;
      q.q.Open;
      while not q.q.Eof do
      begin
        if q.q.FieldByName(_alpis).AsFloat = 0 then
        begin
          erro.Add('A nota '+q.q.fieldbyname(_nusaida).AsString+' está com a situação tributária do PIS como 01 mas está com a alíquota 0 (zero).');
        end;
        if q.q.FieldByName(_alcofins).AsFloat = 0 then
        begin
          erro.Add('A nota '+q.q.fieldbyname(_nusaida).AsString+' está com a situação tributária do COFINS como 01 mas está com a alíquota 0 (zero).');
        end;
        q.q.Next;
      end;
    finally
      q.Free;
    end;
  end;
var
  q : TClasseQuery;
begin
  if not ((empresa.cdindicadorincidencia = _1) and (empresa.cdind_reg_cum = _2)) then
  begin
    PC.Bloco_F.RegistroF001.IND_MOV := imSemDados;
    Exit;
  end;
  q := TClasseQuery.Create;
  try
    q.q.sql.text   := 'select s.nudocfiscalicms'+
                            ',i.cdcfop'+
                            ',i.nustpis'+
                            ',i.nustcofins'+
                            ',coalesce(i.alpis,0) alpis'+
                            ',coalesce(i.alcofins,0) alcofins'+
                            ',sum(coalesce(i.vltotal,0)+coalesce(i.vlipi,0)) vltotal'+
                            ',sum(coalesce(i.vlbasepis,0)) vlbasepis'+
                            ',sum(coalesce(i.vlbasecofins,0)) vlbasecofins'+
                            ',sum(coalesce(i.vlpis,0)) vlpis'+
                            ',sum(coalesce(i.vlcofins,0)) vlcofins '+
                      'from saida s '+
                      'inner join itsaida i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa '+
                      'where i.nustpis=''01'' and i.nustcofins=''01'' and s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
                      'group by s.nudocfiscalicms'+
                              ',i.cdcfop'+
                              ',i.nustpis'+
                              ',i.nustcofins'+
                              ',i.alpis'+
                              ',i.alcofins';
    q.q.Open;
    if q.q.RecordCount > 0 then
    begin
      pc.Bloco_F.RegistroF001New.IND_MOV := imComDados;
      pc.Bloco_F.RegistroF001New.RegistroF010.New;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].CNPJ := empresa.nucnpj_;
    end
    else
    begin
      pc.Bloco_F.RegistroF001New.IND_MOV := imSemDados;
    end;
    check_st_01_com_aliquota;
    while not q.q.Eof do
    begin
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.New;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].VL_REC_COMP    := q.q.fieldbyname(_vltotal).AsCurrency;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].CST_PIS        := ACBr.getcstpis(q.q.fieldbyname(_nustpis).AsString);
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].VL_DESC_PIS    := 0;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].VL_BC_PIS      := q.q.fieldbyname(_vlbasepis).AsCurrency;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].ALIQ_PIS       := q.q.fieldbyname(_alpis).AsCurrency;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].VL_PIS         := q.q.fieldbyname(_vlpis).AsCurrency;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].CST_COFINS     := ACBr.getcstcofins(q.q.fieldbyname(_nustcofins).AsString);
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].VL_DESC_COFINS := 0;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].VL_BC_COFINS   := q.q.fieldbyname(_vlbasecofins).AsCurrency;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].ALIQ_COFINS    := q.q.fieldbyname(_alcofins).AsCurrency;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].VL_COFINS      := q.q.fieldbyname(_vlcofins).AsCurrency;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].COD_MOD        := q.q.fieldbyname(_nudocfiscalicms).AsString;
      pc.Bloco_F.RegistroF001New.RegistroF010.Items[0].RegistroF550.Items[q.q.RecNo-1].CFOP           := q.q.fieldbyname(_cdcfop).AsInteger;
      q.q.Next;
    end;
    pc.WriteBloco_F;
  finally
    q.Free;
  end;
end;

procedure TPisCofins.Registro1900;
var
  q : TClasseQuery;
  reg1900 : TRegistro1900;
begin
  if not ((empresa.cdindicadorincidencia = _1) and (empresa.cdind_reg_cum = _2)) then
  begin
    PC.Bloco_1.Registro1001.IND_MOV := imSemDados;
    Exit;
  end;
  q := TClasseQuery.Create;
  try
    q.q.sql.text := 'select s.nudocfiscalicms'+
                          ',se.nuserie'+
                          ',s.nustdocumento'+
                          ',S.NUDOCFISCALICMS'+
                          ',i.cdcfop'+
                          ',i.nustpis'+
                          ',i.nustcofins'+
                          ',sum(coalesce(i.vltotal,0)+coalesce(i.vlipi,0)) vltotal'+
                          ',count(*) qtd '+
                    'from saida s '+
                    'inner join itsaida i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa '+
                    'inner join serie se on se.cdserie=s.cdserie and se.cdempresa=s.cdempresa '+
                    'where (s.nudocfiscalicms=''55'' or (s.nudocfiscalicms=''01'' and se.boservico=''S'')) and i.cdcfop >= 5000 and s.vltotal>0 and s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
                    'group by s.nudocfiscalicms'+
                            ',se.nuserie'+
                            ',s.nustdocumento'+
                            ',S.NUDOCFISCALICMS'+
                            ',i.cdcfop'+
                            ',i.nustpis'+
                            ',i.nustcofins';
    q.q.Open;
    if q.q.RecordCount > 0 then
    begin
      PC.Bloco_1.Registro1001.IND_MOV := imComDados
    end
    else
    begin
      pc.Bloco_1.Registro1001.IND_MOV := imSemDados;
    end;
    while not q.q.Eof do
    begin
      reg1900         := pc.Bloco_1.Registro1900New;
      reg1900.CNPJ    := empresa.nucnpj_;
      reg1900.COD_MOD := q.q.fieldbyname(_nudocfiscalicms).AsString;
      reg1900.SER     := q.q.fieldbyname(_nuserie).AsString;
      reg1900.SUB_SER := '';
      if q.q.FieldByName(_nustdocumento).AsString = _00 then
      begin
        reg1900.COD_SIT := csffRegular  // 00 – Documento regular
      end
      else if q.q.FieldByName(_nustdocumento).AsString = _02 then
      begin
        reg1900.COD_SIT := csfCancelado // 02 – Documento cancelado
      end
      else
      begin
        reg1900.COD_SIT := csfOutros;               // 99 – Outros
      end;
      reg1900.VL_TOT_REC := q.q.fieldbyname(_vltotal).AsCurrency;
      reg1900.QUANT_DOC  := q.q.fieldbyname(_qtd).AsInteger;
      if q.q.fieldbyname(_nustpis).AsString    <> '' then
      begin
        reg1900.CST_PIS    := ACBr.getcstpis(q.q.fieldbyname(_nustpis).AsString);
      end;
      if q.q.fieldbyname(_nustcofins).AsString <> '' then
      begin
        reg1900.CST_COFINS := ACBr.getcstcofins(q.q.fieldbyname(_nustcofins).AsString);
      end;
      reg1900.CFOP       := q.q.fieldbyname(_cdcfop).AsInteger;
      q.q.Next;
    end;
    pc.WriteBloco_1;
  finally
    q.Free;
  end;
end;

procedure TPisCofins.RegistroI001;
begin
  PC.Bloco_I.RegistroI001New.IND_MOV := imSemDados;
end;

procedure TPisCofins.BlocoI;
begin
  RegistroI001;
  pc.WriteBloco_I;
end;

procedure TPisCofins.BlocoM;
var
  i : Integer;
begin
  if nustpisisentas.Count = 0 then
  begin
    pc.Bloco_M.RegistroM001New.IND_MOV := imSemDados;
    pc.WriteBloco_M;
    Exit;
  end;
  pc.Bloco_M.RegistroM001New.IND_MOV := imComDados;
  with pc.Bloco_M.RegistroM200New do
  begin
    VL_TOT_CONT_NC_PER   := 0;
    VL_TOT_CRED_DESC     := 0;
    VL_TOT_CRED_DESC_ANT := 0;
    VL_TOT_CONT_NC_DEV   := 0;
    VL_RET_NC            := 0;
    VL_OUT_DED_NC        := 0;
    VL_CONT_NC_REC       := 0;
    VL_TOT_CONT_CUM_PER  := 0;
    VL_RET_CUM           := 0;
    VL_OUT_DED_CUM       := 0;
    VL_CONT_CUM_REC      := 0;
    VL_TOT_CONT_REC      := 0;
  end;

  for i := 0 to vlbasepisisentas.Count - 1 do
  begin
    with pc.Bloco_M.RegistroM400New do
    begin
      CST_PIS    := acbr.getcstpis(nustpisisentas[i]);
      VL_TOT_REC := StrToFloat(vlbasepisisentas[i]);
      with RegistroM410.New do
      begin
        if nustpisisentas[i] = _04 then 
        begin
          NAT_REC := Empresa.cdnaturezareceita04;
        end
        else if nustpisisentas[i] = _08 then 
        begin
          NAT_REC := Empresa.cdnaturezareceita08;             
        end;
        VL_REC  := StrToFloat(vlbasepisisentas[i]);
      end;
    end;
  end;

  with pc.Bloco_M.RegistroM600New do
  begin
    VL_TOT_CONT_NC_PER   := 0;
    VL_TOT_CRED_DESC     := 0;
    VL_TOT_CRED_DESC_ANT := 0;
    VL_TOT_CONT_NC_DEV   := 0;
    VL_RET_NC            := 0;
    VL_OUT_DED_NC        := 0;
    VL_CONT_NC_REC       := 0;
    VL_TOT_CONT_CUM_PER  := 0;
    VL_RET_CUM           := 0;
    VL_OUT_DED_CUM       := 0;
    VL_CONT_CUM_REC      := 0;
    VL_TOT_CONT_REC      := 0;
  end;

  for i := 0 to vlbasecofinsisentas.Count - 1 do
  begin
    with pc.Bloco_M.RegistroM800New do
    begin
      CST_COFINS := ACBr.GetCstCofins(nustcofinsisentas[i]);
      VL_TOT_REC := StrToFloat(vlbasecofinsisentas[i]);
      with RegistroM810.New do
      begin
        if nustcofinsisentas[i] = _04 then 
        begin
          NAT_REC := Empresa.cdnaturezareceita04;
        end
        else if nustcofinsisentas[i] = _08 then 
        begin
          NAT_REC := Empresa.cdnaturezareceita08;             
        end;
        VL_REC  := StrToFloat(vlbasecofinsisentas[i]);
      end;
    end;
  end;
  pc.WriteBloco_M;
end;

function TPisCofins.situacao_tributaria_eh_isenta(nust:string):Boolean;
begin
  result := (nust = _04) or (nust = _05) or (nust = _06) or (nust = _07) or (nust = _08) or (nust = _09);
end;

procedure TPisCofins.adicionar_pis_isentas(q: TClasseQuery);
begin
  adicionar_isentas(nustpisisentas, vlbasepisisentas, _pis, q);
end;

procedure TPisCofins.adicionar_cofins_isentas(q: TClasseQuery);
begin
  adicionar_isentas(nustcofinsisentas, vlbasecofinsisentas, _cofins, q);
end;

function TPisCofins.get_valor_base(q: TClasseQuery):Currency;
begin
  result := q.q.fieldbyname(_vltotal).AsCurrency -
            q.q.fieldbyname(_vldesconto).AsCurrency +
            q.q.fieldbyname(_vlseguro).AsCurrency +
            q.q.fieldbyname(_vlfrete).AsCurrency;
end;

procedure TPisCofins.adicionar_isentas(nust, vlbase:TStrings; tpimposto:string; q: TClasseQuery);
begin
  if nust.indexof(q.q.fieldbyname(_nust+tpimposto).AsString) > -1 then
  begin
    vlbase[nust.indexof(q.q.fieldbyname(_nust+tpimposto).AsString)] := FloatToStr(get_valor_base(q) + StrToFloat(vlbase[nust.indexof(q.q.fieldbyname(_nust+tpimposto).AsString)]));
  end
  else if situacao_tributaria_eh_isenta(q.q.fieldbyname(_nust+tpimposto).AsString) then
  begin
    nust.add(q.q.fieldbyname(_nust+tpimposto).AsString);
    vlbase.add(FloatToStr(get_valor_base(q)));
  end;
end;

procedure TPisCofins.RegistroC180;
var
  q : TClasseQuery;
  x : Integer;
  cdproduto, nuclfiscal : string;
  dtinicial, dtfinal : TDate;
  vltotal : Currency;
  procedure inicializar;
  begin
    vltotal      := q.q.fieldbyname(_vltotal).AsCurrency;
    dtfinal      := q.q.FieldByName(_dtemissao).AsDateTime;
    dtinicial    := q.q.FieldByName(_dtemissao).AsDateTime;
    cdproduto    := q.q.fieldbyname(_cdproduto).AsString;
    nuclfiscal   := q.q.fieldbyname(_nuclfiscal).AsString;
  end;
  procedure inserir_registro;
  begin
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.New;
    x := pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.Count - 1;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.Items[x].COD_MOD     := _55;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.Items[x].DT_DOC_INI  := dtinicial;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.Items[x].DT_DOC_FIN  := dtfinal;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.Items[x].COD_ITEM    := cdproduto;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.Items[x].COD_NCM     := nuclfiscal;
    pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.Items[x].VL_TOT_ITEM := vltotal;
    RegistroC181(pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.Items[x]);
    RegistroC185(pc.Bloco_C.RegistroC001.RegistroC010.Items[0].RegistroC180.Items[x]);
  end;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text := 'select itsaida.cdproduto'+
                           ',produto.nuclfiscal'+
                           ',saida.dtemissao'+
                           ',coalesce(SUM(ITSAIDA.VLTOTAL),0)+'+
                            'coalesce(SUM(ITSAIDA.VLIPI),0)+'+
                            'coalesce(SUM(ITSAIDA.VLOUTDESPESA),0)+'+
                            'coalesce(SUM(ITSAIDA.VLFRETE),0)+'+
                            'coalesce(SUM(ITSAIDA.VLICMSSUBTRIB),0)+'+
                            'coalesce(SUM(ITSAIDA.VLSEGURO),0)-'+
                            'coalesce(SUM(ITSAIDA.VLDESCONTO),0) VLTOTAL '+
                     'from saida '+
                     'inner join itsaida on saida.cdempresa=itsaida.cdempresa and saida.cdsaida=itsaida.cdsaida '+
                     'inner join cfop on cfop.cdcfop=itsaida.cdcfop '+
                     'inner join produto on produto.cdempresa=itsaida.cdempresa and produto.cdproduto=itsaida.cdproduto '+
                     'where saida.nudocfiscalicms=''55'' and itsaida.nustpis in (''01'',''02'',''03'',''04'',''05'',''06'',''07'',''08'',''09'') '+
                     'and saida.cdempresa='+empresa.cdempresa.tostring+' and cfop.bodevolucao=''N'' '+
                     'and saida.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
                     'group by itsaida.cdproduto'+
                             ',produto.nuclfiscal'+
                             ',saida.dtemissao';
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    dtfinal      := 0;
    vltotal      := 0;
    cdproduto    := '';
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      if (dtfinal <> q.q.FieldByName(_dtemissao).AsDateTime) or (cdproduto <> q.q.FieldByName(_cdproduto).AsString) then
      begin
        if dtfinal > 0 then
        begin
          inserir_registro;
        end;
        inicializar;
      end
      else
      begin
        vltotal := vltotal + q.q.fieldbyname(_vltotal).AsCurrency;
      end;
      dtfinal := dtfinal + 1;
      q.q.next;
    end;
    if vltotal > 0 then
    begin
      inserir_registro;
    end;
  finally
    q.free;
  end;
end;

procedure TPisCofins.RegistroC181(rec180: TRegistroC180);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text   := 'select itsaida.cdcfop'+
                            ',itsaida.nustpis'+
                            ',itsaida.alpis'+
                            ',sum(itsaida.vldesconto) vldesconto'+
                            ',sum(itsaida.vloutdespesa) vloutdespesa'+
                            ',sum(itsaida.vlseguro) vlseguro'+
                            ',sum(itsaida.vlfrete) vlfrete'+
                            ',coalesce(SUM(ITSAIDA.VLTOTAL),0)+'+
                             'coalesce(SUM(ITSAIDA.VLIPI),0)+'+
                             'coalesce(SUM(ITSAIDA.VLOUTDESPESA),0)+'+
                             'coalesce(SUM(ITSAIDA.VLFRETE),0)+'+
                             'coalesce(SUM(ITSAIDA.VLICMSSUBTRIB),0)+'+
                             'coalesce(SUM(ITSAIDA.VLSEGURO),0)-'+
                             'coalesce(SUM(ITSAIDA.VLDESCONTO),0) VLREAL'+
                            ',sum(coalesce(itsaida.vltotal,0)) vltotal'+
                            ',sum(itsaida.vlbasepis) vlbasepis'+
                            ',sum(itsaida.vlpis) vlpis '+
                      'from itsaida '+
                      'left join saida on saida.cdsaida=itsaida.cdsaida and itsaida.cdempresa=saida.cdempresa '+
                      'left join tpsaida on tpsaida.cdtpsaida=saida.cdtpsaida and tpsaida.cdempresa=saida.cdempresa '+
                      'inner join cfop on cfop.cdcfop=itsaida.cdcfop '+
                      'where saida.nudocfiscalicms=''55'' and cfop.bodevolucao=''N'' and itsaida.nustpis in (''01'',''02'',''03'',''04'',''05'',''06'',''07'',''08'',''09'') '+
                      'and saida.cdempresa='+empresa.cdempresa.tostring+' and itsaida.cdproduto='+rec180.COD_ITEM+' '+
                      'and saida.dtemissao between '+GetDtBanco(rec180.DT_DOC_INI)+' and '+GetDtBanco(rec180.DT_DOC_FIN)+' '+
                      'group by itsaida.cdcfop,itsaida.cdproduto,itsaida.nustpis,itsaida.alpis';
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      rec180.RegistroC181.New;
      x := rec180.RegistroC181.Count - 1;
      rec180.RegistroC181.Items[x].CST_PIS        := ACBr.getcstpis(q.q.fieldbyname(_nustpis).AsString);
      rec180.RegistroC181.Items[x].CFOP           := q.q.fieldbyname(_cdcfop).AsString;
      rec180.RegistroC181.Items[x].VL_ITEM        := q.q.FieldByName(_vlreal).AsCurrency;
      rec180.RegistroC181.Items[x].VL_DESC        := q.q.fieldbyname(_vldesconto).AsFloat;
      rec180.RegistroC181.Items[x].VL_BC_pis      := q.q.fieldbyname(_vlbasepis).AsCurrency;
      rec180.RegistroC181.Items[x].ALIQ_pis       := q.q.fieldbyname(_alpis).AsFloat;
      rec180.RegistroC181.Items[x].VL_pis         := q.q.fieldbyname(_vlpis).AsCurrency;
      rec180.RegistroC181.Items[x].COD_CTA        := '';
      adicionar_pis_isentas(q);
      q.q.next;
    end;
  finally
    q.free
  end;
end;

procedure TPisCofins.RegistroC185(rec180: TRegistroC180);
var
  q : TClasseQuery;
  x : Integer;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text   := 'select itsaida.cdcfop'+
                            ',itsaida.nustcofins'+
                            ',itsaida.alcofins'+
                            ',sum(itsaida.vldesconto) vldesconto'+
                            ',sum(itsaida.vloutdespesa) vloutdespesa'+
                            ',sum(itsaida.vlseguro) vlseguro'+
                            ',sum(itsaida.vlfrete) vlfrete'+
                            ',coalesce(SUM(ITSAIDA.VLTOTAL),0)+'+
                             'coalesce(SUM(ITSAIDA.VLIPI),0)+'+
                             'coalesce(SUM(ITSAIDA.VLOUTDESPESA),0)+'+
                             'coalesce(SUM(ITSAIDA.VLFRETE),0)+'+
                             'coalesce(SUM(ITSAIDA.VLICMSSUBTRIB),0)+'+
                             'coalesce(SUM(ITSAIDA.VLSEGURO),0)-'+
                             'coalesce(SUM(ITSAIDA.VLDESCONTO),0) VLREAL'+
                            ',sum(itsaida.vltotal) vltotal'+
                            ',sum(itsaida.vlbasecofins) vlbasecofins'+
                            ',sum(itsaida.vlcofins) vlcofins '+
                      'from itsaida '+
                      'left join saida on saida.cdsaida=itsaida.cdsaida and itsaida.cdempresa=saida.cdempresa '+
                      'left join tpsaida on tpsaida.cdtpsaida=saida.cdtpsaida and tpsaida.cdempresa=saida.cdempresa '+
                      'inner join cfop on cfop.cdcfop=itsaida.cdcfop '+
                      'where saida.nudocfiscalicms=''55'' and cfop.bodevolucao=''N'' and itsaida.nustcofins in (''01'',''02'',''03'',''04'',''05'',''06'',''07'',''08'',''09'') '+
                      'and saida.cdempresa='+empresa.cdempresa.tostring+' '+
                      'and itsaida.cdproduto='+rec180.COD_ITEM+' '+
                      'and saida.dtemissao between '+GetDtBanco(rec180.DT_DOC_INI)+' and '+GetDtBanco(rec180.DT_DOC_FIN)+' '+
                      'group by itsaida.cdcfop,itsaida.cdproduto,itsaida.nustcofins,itsaida.alcofins';
    q.q.open;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      rec180.RegistroC185.New;
      x := rec180.RegistroC185.Count - 1;
      rec180.RegistroC185.Items[x].CST_cofins        := ACBr.getcstcofins(q.q.fieldbyname(_nustcofins).AsString);
      rec180.RegistroC185.Items[x].CFOP              := q.q.fieldbyname(_cdcfop).AsString;
      rec180.RegistroC185.Items[x].VL_ITEM           := q.q.FieldByName(_vlreal).AsCurrency;
      rec180.RegistroC185.Items[x].VL_DESC           := q.q.fieldbyname(_vldesconto).AsFloat;
      rec180.RegistroC185.Items[x].VL_BC_cofins      := q.q.fieldbyname(_vlbasecofins).AsCurrency;
      rec180.RegistroC185.Items[x].ALIQ_cofins       := q.q.fieldbyname(_alcofins).AsFloat;
      rec180.RegistroC185.Items[x].VL_cofins         := q.q.fieldbyname(_vlcofins).AsFloat;
      rec180.RegistroC185.Items[x].COD_CTA           := '';
      adicionar_cofins_isentas(q);
      q.q.next;
    end;
  finally
    q.free
  end;
end;

end.
