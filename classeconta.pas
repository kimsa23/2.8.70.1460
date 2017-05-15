unit classeconta;

interface

uses
  system.UITypes,
  forms, dialogs, classes, controls, sysutils, Windows, Variants, Contnrs,
  db,
  ExcelXP,
  uRichEdit, uRotinas, udatahora, ustrings, uprogressbar, uregistro, uconstantes,
  classeaplicacao, classeempresa, classeregistrainformacao, classeexecutasql, classeretornasql,
  classequery, classedao;

type
  TSetBoleto = class(TRegistroQuipos)
  private
    Fdsinstrucao2: string;
    Fcdtpcarteiraboleto: integer;
    Fcdsetboletorespemissao: integer;
    Fnuconvenio: string;
    Fdsboleto: string;
    Fdsinstrucao1: string;
    Fdsboletofr: string;
    Fnuboleta: integer;
    Fnudiasprotesto: integer;
    Fdsespecie: string;
    Fnmsetboleto: string;
    Fcdconta: integer;
    Fdsinstrucaoboleta: string;
    Fbodespesaretornoliquidado: string;
    Fcdcedente: string;
    Fnuremessa: integer;
    Fdsboletofatura: string;
    Fcdsetboletocaractitulo: integer;
    Fdslocalpagamento: string;
    Fcdsetboleto: integer;
    Fboaceite: string;
    Fnucarteira: string;
    Fdspathremessa: string;
    Ftparquivocobranca: string;
    Fdsboletocarne: string;
    Fdsmodalidade: string;
  public
    [keyfield]
    property cdsetboleto : integer read Fcdsetboleto write fcdsetboleto;
    [fk]
    property cdconta : integer read Fcdconta write fcdconta;
    [fk]
    property cdsetboletorespemissao : integer read Fcdsetboletorespemissao write fcdsetboletorespemissao;
    [fk]
    property cdsetboletocaractitulo : integer read Fcdsetboletocaractitulo write fcdsetboletocaractitulo;
    [fk]
    property cdtpcarteiraboleto : integer read Fcdtpcarteiraboleto write fcdtpcarteiraboleto;
    property nmsetboleto : string read Fnmsetboleto write fnmsetboleto;
    property nuboleta : integer read Fnuboleta write fnuboleta;
    property nucarteira : string read Fnucarteira write fnucarteira;
    property nuconvenio : string read Fnuconvenio write fnuconvenio;
    property nuremessa : integer read Fnuremessa write fnuremessa;
    property tparquivocobranca : string read Ftparquivocobranca write ftparquivocobranca;
    property dsinstrucaoboleta : string read Fdsinstrucaoboleta write fdsinstrucaoboleta;
    property dsinstrucao1 : string read Fdsinstrucao1 write fdsinstrucao1;
    property dsinstrucao2 : string read Fdsinstrucao2 write fdsinstrucao2;
    property dsespecie : string read Fdsespecie write fdsespecie;
    property boaceite : string read Fboaceite write fboaceite;
    property cdcedente : string read Fcdcedente write fcdcedente;
    property dsmodalidade : string read Fdsmodalidade write fdsmodalidade;
    property dslocalpagamento : string read Fdslocalpagamento write fdslocalpagamento;
    property dspathremessa : string read Fdspathremessa write fdspathremessa;
    property dsboleto : string read Fdsboleto write fdsboleto;
    property dsboletocarne : string read Fdsboletocarne write fdsboletocarne;
    property dsboletofatura : string read Fdsboletofatura write fdsboletofatura;
    property dsboletofr : string read Fdsboletofr write fdsboletofr;
    property bodespesaretornoliquidado : string read Fbodespesaretornoliquidado write fbodespesaretornoliquidado;
    property nudiasprotesto : integer read Fnudiasprotesto write fnudiasprotesto;
    function remessa_inc:integer;
    function nuboleta_inc:Integer;
  end;
  TSetBoletoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TSetBoleto;
    procedure SetItem(Index: Integer; const Value: TSetBoleto);
  public
    function New: TSetBoleto;
    property Items[Index: Integer]: TSetBoleto read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
  end;
  TTpConta = class(TRegistroQuipos)
  private
    Fcdtpconta: integer;
    Fbobanco: String;
    Fnucntcontabil: string;
    Fnmtpconta: string;
  public
    [keyfield]
    property cdtpconta : integer read Fcdtpconta write fcdtpconta;
    property nmtpconta : string read Fnmtpconta write fnmtpconta;
    property nucntcontabil : string read Fnucntcontabil write fnucntcontabil;
    property bobanco : String read Fbobanco write fbobanco;
  end;
  TConta = class(TRegistroQuipos)
  private
    Fcdstconta: integer;
    Fcdtpconta: integer;
    Fdtsaldo: TDate;
    Fbosaldo: String;
    Fnucor: integer;
    Fdtextrato: TDate;
    Fcdconta: integer;
    Fnucntcontabil: string;
    Fcdusuario: integer;
    Fcdcedente: integer;
    Fnuconta: string;
    Fvlsaldoinicial: currency;
    Fvlsaldo: currency;
    Fidcobranca: string;
    Fvllimite: currency;
    Fvlextratoinicial: currency;
    Fvlextrato: currency;
    Fnucheque: integer;
    Fnmconta: string;
    Ftpconta: ttpconta;
    fcdbanco: integer;
    fnuagencia: string;
    fsetboleto: TSetBoletoList;
    Fboignorardocumentorepetido: string;
  public
    property setboleto : TSetBoletoList read fsetboleto write fsetboleto;
    property tpconta : ttpconta read Ftpconta write ftpconta;
    [keyfield]
    property cdconta : integer read Fcdconta write fcdconta;
    [fk]
    property cdstconta : integer read Fcdstconta write fcdstconta;
    [fk]
    property cdtpconta : integer read Fcdtpconta write fcdtpconta;
    [fk]
    property cdusuario : integer read Fcdusuario write fcdusuario;
    [fk]
    property cdbanco :integer read fcdbanco write fcdbanco;
    property nuagencia : string read fnuagencia write fnuagencia;
    property nmconta : string read Fnmconta write fnmconta;
    property idcobranca : string read Fidcobranca write fidcobranca;
    property vllimite : currency read Fvllimite write fvllimite;
    property vlsaldo : currency read Fvlsaldo write fvlsaldo;
    property dtsaldo : TDate read Fdtsaldo write fdtsaldo;
    property nucheque : integer read Fnucheque write fnucheque;
    property bosaldo : String read Fbosaldo write fbosaldo;
    property nucntcontabil : string read Fnucntcontabil write fnucntcontabil;
    property vlsaldoinicial : currency read Fvlsaldoinicial write fvlsaldoinicial;
    property nuconta : string read Fnuconta write fnuconta;
    property vlextrato : currency read Fvlextrato write fvlextrato;
    property vlextratoinicial : currency read Fvlextratoinicial write fvlextratoinicial;
    property dtextrato : TDate read Fdtextrato write fdtextrato;
    property cdcedente : integer read Fcdcedente write fcdcedente;
    property nucor : integer read Fnucor write fnucor;
    property boignorardocumentorepetido : string read Fboignorardocumentorepetido write Fboignorardocumentorepetido;
    function AbrirCaixa(dti, dtf: TDate):Boolean;
    function fecharCaixa(dti, dtf: TDate):Boolean;
    constructor create;
    destructor destroy; override;
    function Bancopossuiremessa:Boolean;
    function ObterSetBoleto:string;
    function ListaContasAtiva:string;
    function RecalcularSaldo  (dt: TDate):boolean;
    function RecalcularExtrato(dt: TDate):boolean;
    function ValorSaldoData   (dt: TDate; codigo:integer):currency;
    function ValorExtratoData (dt: TDate):currency;
    function ValorSaldoInicialContas(dti_:TDate; bosaldodia:boolean):currency;
    function ValorSaldoInicial(dti_:TDate):currency;
    function SeTipoContaEhCaixa(codigo:string):Boolean;
  end;

implementation

uses ClasseRecalcularSaldoConta;

constructor Tconta.create;
begin
  inherited;
  fsetboleto := tsetboletolist.create;
  ftpconta := ttpconta.create;
end;

function TConta.RecalcularExtrato(dt: TDate): boolean;
var
  c : TClasseQuery;
  dtemissao, dtnormal : TDate;
  vlentrada, vlsaida : currency;
  sql : TStrings;
  progresso : TFrmProgressbar;
begin
  vlentrada := 0;
  vlsaida   := 0;
  c         := TClasseQuery.Create;
  progresso := tfrmprogressbar.Create(nil);
  sql       := TStringList.create;
  try
    self.select(cdconta);
    if FormatDateTime(_yyyymmdd, dt) <= FormatDateTime(_yyyymmdd, self.dtextrato) then
    begin
      sql.Add('update movbancario set cdextrato=null where cdempresa='+cdempresa.ToString+' and cdconta='+inttostr(cdconta)+' AND dtemissao<'+getdtbanco(self.dtextrato)+';');
      sql.Add('delete from extrato where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta)+' AND dtemissao<'+getdtbanco(self.dtextrato)+';');
      sql.Add('delete from hcontaextrato where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta)+';');// and dthcontaextrato>='+getdtbanco(dt)+';');
      //sql.Add('delete from hcontaextrato where cdconta='+cdconta+' and dthcontaextrato>='+getdtbanco(dt)+';');
      dt := self.dtextrato;
      sql.add('insert into hcontaextrato('+
             'cdconta,cdsthcontaextrato,dthcontaextrato,vlsaldo,vlentrada,vlsaida,'+_sqlreg+
              inttostr(cdconta)+',1,'+getdtbanco(dt)+','+getcurrencys(self.vlextratoinicial)+',0,0,'+SQLRegistra+';');
      dt := dt + 1;
    end
    else if RetornaSQLInteger('select count(*) from hcontaextrato where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta)) > 0 then
    begin
      dtnormal := RetornaSQLData('select first 1 dthcontaextrato '+
                                       'from hcontaextrato h '+
                                       'inner join sthcontaextrato s on s.cdsthcontaextrato=h.cdsthcontaextrato and h.cdempresa=s.cdempresa '+
                                       'where h.cdempresa='+empresa.cdempresa.ToString+' and s.boatualizar=''S'' '+
                                       'and cdconta='+inttostr(cdconta)+' '+
                                       'and dthcontaextrato<'+getdtbanco(dt)+' ');
      if (dtnormal < dt) and (dtnormal >= self.dtextrato) and (formatdatetime(_dd_mm_yyyy, dtnormal) <> _30_12_1899) then
      begin
        dt := dtnormal;
      end;
      sql.Add('delete from hcontaextrato where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta)+' and dthcontaextrato>='+getdtbanco(dt)+';');
      Self.vlsaldoinicial := RetornaSQLCurrency('select first 1 vlsaldo '+
                                                      'from hcontaextrato '+
                                                      'where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta)+' and dthcontaextrato<'+getdtbanco(dt)+' '+
                                                      'order by dthcontaextrato desc');
    end;
    // verifica se existe alguma data anterior ao do recalculo que precisa atualizar
    // excluir saldo a partir de uma determinada data
    // obter o valor do último saldo válido
    progresso.Show;
    progresso.pnl.Caption := 'Lendo registro. Aguarde...';
    Application.ProcessMessages;
    c.q.open('select e.cdextrato'+
                   ',e.dtemissao'+
                   ',e.vlextrato'+
                   ',e.vlpagamento'+
                   ',e.vldeposito'+
                   ',e.vlsaldo'+
                   ',c.BOATIVAR'+
                   ',e.cdnatureza '+
             'from extrato e '+
             'left join catextrato c on c.cdempresa=e.cdempresa and c.cdcatextrato=e.cdcatextrato '+
             'where e.cdempresa='+empresa.cdempresa.ToString+' and e.dtemissao>='+getdtbanco(dt)+' and e.cdconta='+inttostr(cdconta)+' '+
             'order by e.dtemissao,e.cdextrato');
    dtemissao              := c.q.fieldbyname(_dtemissao).AsDateTime;
    progresso.gau.MaxValue := RetornaSQLInteger( 'select count(*) from extrato where cdempresa='+empresa.cdempresa.ToString+' and dtemissao>='+getdtbanco(dt)+' and cdconta='+inttostr(cdconta));
    if progresso.gau.MaxValue = 0 then
    begin
      dtemissao := dt;
    end;
    // processar
    progresso.gau.Progress := 0;
    while not c.q.Eof do
    begin
      progresso.gau.Progress := progresso.gau.Progress + 1;
      progresso.pnl.Caption  := 'Registro '+IntToStr(progresso.gau.Progress)+' de '+inttostr(progresso.gau.MaxValue)+' - Data: '+FormatarDataAbreviada(c.q.fieldbyname(_dtemissao).AsDateTime, 10);
      Application.ProcessMessages;

      if dtemissao <> c.q.fieldbyname(_dtemissao).AsDateTime then
      begin
        // inserir registro
        sql.add('insert into hcontaextrato(cdconta,cdsthcontaextrato,dthcontaextrato,vlsaldo,vlentrada,vlsaida,'+_sqlreg+
                      inttostr(cdconta)+',1,'+getdtbanco(dtemissao)+','+
                      getcurrencys(self.vlextratoinicial)+','+
                      getcurrencys(vlentrada)+','+
                      getcurrencys(vlsaida)+','+
                      SQLRegistra+';');
        // inicializa valores
        dtemissao := c.q.fieldbyname(_dtemissao).AsDateTime;
        vlsaida   := 0;
        vlentrada := 0;
      end;
      if c.q.FieldByName(_boativar).AsString = _n then
      begin
        sql.add('update extrato set vlsaldo=0 where cdempresa='+empresa.cdempresa.ToString+' and cdextrato='+c.q.fieldbyname(_cdextrato).asstring+';');
        c.q.Next;
        Continue;
      end;
      if c.q.Fieldbyname(_cdnatureza).AsString = _C then
      begin
        self.vlextratoinicial := self.vlextratoinicial + c.q.fieldbyname(_vldeposito).ascurrency;
        vlentrada             := vlentrada + c.q.fieldbyname(_vldeposito).ascurrency;
        sql.add('update extrato set vlsaldo='+getcurrencys(self.vlextratoinicial)+' where cdempresa='+empresa.cdempresa.ToString+' and cdextrato='+c.q.fieldbyname(_cdextrato).asstring+';');
      end
      else
      begin
        self.vlextratoinicial := self.vlextratoinicial - c.q.fieldbyname(_vlpagamento).AsCurrency;
        vlsaida               := vlsaida               + c.q.fieldbyname(_vlpagamento).ascurrency;
        sql.add('update extrato set vlsaldo='+getcurrencys(self.vlextratoinicial)+' where cdempresa='+empresa.cdempresa.ToString+' and cdextrato='+c.q.fieldbyname(_cdextrato).asstring+';');
      end;
      c.q.Next;
    end;
    if dtemissao <> dt then
    begin
      sql.add('insert into hcontaextrato('+
                   'cdconta,cdsthcontaextrato,dthcontaextrato,vlsaldo,vlentrada,vlsaida,'+_sqlreg+
                    inttostr(cdconta)+',1,'+getdtbanco(dtemissao)+','+getcurrencys(self.vlextratoinicial)+','+
                    getcurrencys(vlentrada)+','+getcurrencys(vlsaida)+','+SQLRegistra+';');
    end;
    sql.Add('update conta set vlextrato='+getcurrencys(self.vlextratoinicial)+' where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta)+';');
    result := ExecutaScript(sql);
  finally
    freeandnil(c);
    freeandnil(progresso);
    freeandnil(sql);
  end;
end;

function TConta.ValorExtratoData(dt: TDate): currency;
begin
  result := RetornaSQLCurrency('select first 1 vlsaldo '+
                                     'from hcontaextrato '+
                                     'where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta)+' and dthcontaextrato<='+getdtbanco(dt)+' '+
                                     'order by dthcontaextrato desc');
end;

function TConta.Bancopossuiremessa: Boolean;
begin
  result := (cdbanco = 1) or (cdbanco = 237) or (cdbanco = 356) or (cdbanco = 341) or (cdbanco = 409);
end;

function TConta.ValorSaldoData(dt: TDate; codigo:integer): currency;
begin
  result := RetornaSQLCurrency('select first 1 vlsaldo '+
                               'from hcontasaldo '+
                               'where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(codigo)+' and dthcontasaldo<'+getdtbanco(dt)+' '+
                               'order by dthcontasaldo desc');
end;

function TConta.ValorSaldoInicial(dti_:TDate):currency;
var
  s : TClasseQuery;
begin
  s := TClasseQuery.Create('select cdconta from conta where cdempresa='+empresa.cdempresa.ToString+' and cdstconta=1');
  try
    result := 0;
    while not s.q.eof do
    begin
      result := result + ValorSaldoData(dti_, s.q.fieldbyname(_cdconta).asinteger);
      s.q.next;
    end;
  finally
    freeandnil(s);
  end;
end;

function TConta.ValorSaldoInicialContas(dti_:TDate; bosaldodia:boolean):currency;
var
  s : TClasseQuery;
  dtsaldo : TDate;
  function makesql:string;
  begin
    result := 'select vlsaldo '+
              'from hcontasaldo '+
              'where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+s.q.fieldbyname(_cdconta).asstring+' '+
              'and dthcontasaldo=(select max(dthcontasaldo) from hcontasaldo where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+s.q.fieldbyname(_cdconta).asstring+' and dthcontasaldo<'+getdtbanco(dtsaldo)+')';
  end;
begin
  dtsaldo := dti_;
  if bosaldodia then
  begin
    dtsaldo := DtBanco;
  end;
  s  := TClasseQuery.Create('select cdconta from conta where cdempresa='+empresa.cdempresa.ToString+' and cdstconta=1');
  try
    result := 0;
    while not s.q.eof do
    begin
      result := result + RetornaSQLCurrency(makesql);
      s.q.next;
    end;
  finally
    freeandnil(s);
  end;
end;

function TConta.ListaContasAtiva: string;
var
  s : TClasseQuery;
begin
  s := TClasseQuery.Create('select cdconta from conta where cdempresa='+empresa.cdempresa.ToString+' and cdstconta=1');
  try
    result := '';
    while not s.q.eof do
    begin
      if result <> '' then
      begin
        result := result + ',';
      end;
      Result := Result + s.q.fieldbyname(_cdconta).AsString;
      s.q.next;
    end;
  finally
    freeandnil(s);
  end;
end;

destructor TConta.destroy;
begin
  freeandnil(fsetboleto);
  freeandnil(ftpconta);
  inherited;
end;

function TConta.ObterSetBoleto: string;
var
  s : TClasseQuery;
begin
  s := TClasseQuery.Create('select cdsetboleto from setboleto where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta));
  try
    result := '';
    while not s.q.Eof do
    begin
      if result <> '' then
      begin
        result := result+#13;
      end;
      result := result + s.q.fieldbyname(_cd+_set+_boleto).AsString;
      s.q.Next;
    end;
  finally
    freeandnil(s);
  end;
end;

function TConta.AbrirCaixa(dti, dtf: TDate): Boolean;
var
  sql : TStrings;
  dtemissao : TDate;
begin
  if dti < dtsaldo then
  begin
    MessageDlg('Data inicial ('+formatdatetime(_dd_mm_yyyy, dti)+') não pode ser menor do que a data do saldo ('+formatdatetime(_dd_mm_yyyy, dtsaldo)+').'#13'Altere a data para continuar.', mtInformation, [mbOK], 0);
    abort;
  end;
  dtemissao := RetornaSQLData('select max(dtemissao) from contafechada where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta));
  if dtf < dtemissao then
  begin
    MessageDlg('Data final não pode ser menor do que a data do último fechamento ('+formatdatetime(_dd_mm_yyyy, dtemissao)+'.'#13'É necessário abrir as datas posteriores para continuar.', mtInformation, [mbOK], 0);
    abort;
  end;
  sql := TStringList.Create;
  try
    sql.Add('delete from contafechada where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta)+' and dtemissao between '+GetDtBanco(dti)+' and '+getdtbanco(dtf)+';');
    result := ExecutaScript(sql);
  finally
    sql.Free;
  end;
end;

function TConta.fecharCaixa(dti, dtf: TDate): Boolean;
var
  dtminimo, dtemissao : TDate;
  sql : TStrings;
  function existe_data_aberta_do_saldo_a_data_inicio:tdate;
    function makesql:string;
    begin
      result := 'select min(dtemissao) from movbancario where '+get_cd_empresa+' and cdconta='+inttostr(cdconta)+' and dtemissao>'+getdtbanco(dtemissao)+' and dtemissao<'+GetDtBanco(dti);
    end;
  begin
    if dtemissao = 0 then
    begin
      result := 0;
      Exit;
    end;
    result := RetornaSQLData(makesql);
  end;
begin
  self.select(cdconta);
  if dti < dtsaldo then
  begin
    MessageDlg('Data inicial ('+formatdatetime(_dd_mm_yyyy, dti)+') não pode ser menor do que a data do saldo ('+formatdatetime(_dd_mm_yyyy, dtsaldo)+').'#13+
               'Altere a data para continuar.', mtInformation, [mbOK], 0);
    abort;
  end;
  dtemissao := RetornaSQLData('select max(dtemissao) from contafechada where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta));
  dtminimo  := existe_data_aberta_do_saldo_a_data_inicio;
  if dtminimo > 0 then
  begin
    MessageDlg('Data inicial ('+FormatDateTime(_dd_mm_yyyy, dti)+') maior do que a data ('+FormatDateTime(_dd_mm_yyyy, dtminimo)+') do último fechamento.'#13'É necessário fechar as datas anteriores para continuar.', mtInformation, [mbOK], 0);
    abort;
  end;
  sql := TStringList.Create;
  try
    if (dtemissao> 0) and (dtemissao < dti-1) then
    begin
      dti := dtemissao + 1;
    end;
    while dti <= dtf do
    begin
      if RetornaSQLInteger('select count(*) from contafechada where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+inttostr(cdconta)+' and dtemissao='+GetDtBanco(dti)) = 0 then
      begin
        sql.add('insert into contafechada(cdconta,dtemissao,'+_sqlreg+inttostr(cdconta)+','+getdtbanco(dti)+','+SQLRegistra+';');
      end;
      dti := dti + 1;
    end;
    result := ExecutaScript(sql);
  finally
    sql.Free;
  end;
end;

function TConta.RecalcularSaldo(dt: TDate): boolean;
var
  recalcularsaldoConta : TRecalcularSaldoConta;
begin
  recalcularsaldoConta := TRecalcularSaldoConta.create;
  try
    self.select(cdconta);
    result := recalcularsaldoConta.Calcular(inttostr(cdconta), dt, dtsaldo, vlsaldoinicial);
  finally
    recalcularsaldoConta.destroy;
  end;
end;

function TConta.SeTipoContaEhCaixa(codigo: string): Boolean;
begin
  Result := NomedoCodigo(_conta, codigo, _cdtpconta) = _2;
end;

function TSetBoleto.remessa_inc: integer;
begin
  ExecutaSQL('update setboleto set nuremessa=nuremessa+1 where cdempresa='+empresa.cdempresa.ToString+' and cdsetboleto='+inttostr(cdsetboleto));
  select(cdsetboleto);
  result := nuremessa;
end;

function TSetBoleto.nuboleta_inc: Integer;
begin
  ExecutaSQL('update setboleto set nuboleta=nuboleta+1 where cdempresa='+empresa.cdempresa.ToString+' and cdsetboleto='+inttostr(cdsetboleto));
  select(cdsetboleto);
  result := nuboleta;
end;

function TSetBoletoList.GetItem(Index: Integer): TSetBoleto;
begin
  Result := TSetBoleto(Inherited Items[Index]);
end;

function TSetBoletoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_SetBoleto, codigo, _cdconta));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.select(q.q.fieldbyname(_cdSetBoleto).AsInteger);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TSetBoletoList.New: TSetBoleto;
begin
  Result := TSetBoleto.Create;
  Add(Result);
end;

procedure TSetBoletoList.SetItem(Index: Integer; const Value: TSetBoleto);
begin
  Put(Index, Value);
end;

end.
