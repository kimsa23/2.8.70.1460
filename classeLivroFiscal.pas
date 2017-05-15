unit classeLivroFiscal;

interface

uses
  System.Actions, System.UITypes,
  gauges, dialogs, classes, controls, forms, sysutils, math, db,
  sqlexpr, Provider, DBClient,
  uRichEdit, utipo, ustrings, uregistro, udatahora, uconstantes,
  uprogressbar,
  classeretornasql, classeexecutasql, classeusuario, classeempresa, classegerar, classequery,
  classeaplicacao, classeregistrainformacao, classeDifAliquota;

type
  TITLp1a = record
    cdsaida: string;
    cdentrada : string;
    cdcte : string;
    cdcliente : string;
    cdfornecedor : string;
    cdcfop : string;
    cdtpop1a : string;
    cdtpimposto : string;
    nuemitente : string;
    nudocumento : string;
    nuserie : string;
    tpsaient : string;
    dtemissao : string;
    dtentrada : string;
    cduf : integer;
    dsobservacao : string;
    nmespecie : string;
    vlcontabil : currency;
    vlbase : currency;
    vlbcst : currency;
    aliquota : double;
    vlimposto : currency;
    vlst : currency;
    vlisentas : currency;
    vloutras: currency;
  end;
  TLivroFiscal = class(TObject)
  private
    qit, q: TClasseQuery;
    c_pulo : TClientdataset;
    itlp1a : TITLp1a;
    ipicfop, icmscfop, ipi, icms : timposto;
    cdlp1a: integer;
    nucnpjcpf: string;
    vlajusteciapi, vlimpostos, vlimpostoe, vlimpostois, vlimpostoie, alempresa, vldif : Currency;
    dt_, dti, dtf:TDate;
    prcoeficienteciapi : Double;
    tsinsercaos: string;
    maxis, mxcie, maxs, mxc, rec, mxp, max : integer;
    Calcdif: TDiferencialAL;
    itufp1a : Titufp1a;
    cfope, cfops, subtotale, subtotals, cfopie, cfopis, subtotalie, subtotalis : TSubTotalA;
    cfop : tacumula;
    mensagem, sql : TStrings;
    gau, gau1: tgauge;
    function  aliquotaempresa(emp: string):Currency;
    procedure AjusteCiapi;
    procedure AtivoPISCOFINS;
    procedure ApuracaoUF;
    procedure check_nota(tabela:string);
    procedure DadosPessoa(tabela:string='');
    function  dis:string;
    function  dfs:string;
    function  formatarcnpjcpf(nucnpjcpf:string):string;
    procedure incluirItem    (var lista:TSubTotalA; cdcfop  : string;                  vlcontabil, vlbase, vlimposto, vlisentas, vloutras: Currency);overload;
    procedure incluirItem    (var lista:Titufp1a  ; nudocfiscalicms, tpsaient: string; vlcontabil, vlbase, vlimposto, vlisentas, vloutras: Currency);overload;
    procedure incluirItemUF  (var lista:TSubTotalA; cdcfop  : string;                  vlcontabil, vlbase, vlimposto, vlisentas, vloutras: Currency);
    procedure InicializarValores;
    procedure InseriritemLivro;
    procedure InserirLp1a;
    procedure inserir_item_vazio(cdcte, cdsaida, cdtpimposto, cdtpop1a, dsobservacao, dtemissao, dtentrada:string);
    procedure ItemApuracao;
    procedure ItemUF;
    function  makesqlentrada:string;
    function  makesqlcte:string;
    function  makesqlsaida:string;
    function  makesqlitentrada(cdentrada:string):string;
    function  makesqlitsaida(cdsaida: string):string;
    procedure RegistroApuracao;
    function  Get_VlContabil(tbl:string):currency;
    function  Get_cdcfop(tbl:string):string;
    function  saldocredorperiodoanterior(cdtpimposto:string):currency;
    function  se_nusticms_30_40_41(nusticms:string):boolean;
    procedure set_icms_estrutura(tbl:string);
    procedure set_ipi_estrutura(tbl:string);
    procedure SomarValores;
    function  TabelaEntrada:boolean;
    function  TabelaSaida: boolean;
    function  TabelaCTE:Boolean;
    procedure ZerarImposto(var imposto: timposto);
    function  sqlregistra:string;
    procedure realizar_recalculo_custo_medio;
    procedure check_dtfinal;
    procedure check_nfe_envida_sem_chave_nao_enviada;
    procedure incrementar_gauge(exibe:string; d : TDataset);
    procedure set_gauge(nmespecie:string; progresso: integer; d: TDataset);
    procedure set_field_c_pulo;
    procedure inserir_registro_c_pulo;
    procedure verificar_pulo_nota;
    function  nota_nao_foi_enviada:boolean;
    function  nota_inutilizada:boolean;
    function  nota_cancelada:boolean;
    function  nota_denegada:boolean;
  public
    constructor create;
    destructor destroy;override;
    function InserirLivro:integer;
    class function PermiteAlterarNota(dtemissao: TDate):boolean;
    class function UltimoDia:TDate;
  end;

implementation

uses classesaida, classerecalculocustomedio;

const
  sql6  = 'insert into lp1a(cdtpescrituracao,cdlp1a,dtinicio,dtfinal,';
  sql9  = 'insert into itapuf(cdlp1a,cditapuf,cdtpimposto,tpsaient,vlcontabil,vlbase,vloutras,vlimposto,vlisentas,';
  sql10 = 'insert into itapuracao(cdlp1a,cditapuracao,cdtpimposto,cdcfop,tpsaient,vlcontabil,vlbase,vloutras,vlimposto,vlisentas,';

class function TLivroFiscal.UltimoDia:TDate;
begin
  result := RetornaSQLData('select max(dtfinal) from lp1a where cdempresa='+empresa.cdempresa.ToString);
end;

class function TLivroFiscal.PermiteAlterarNota(dtemissao: TDate):boolean;
begin
  result := RetornaSQLInteger('select count(*) '+
                              'from lp1a '+
                              'where cdempresa='+empresa.cdempresa.ToString+' and dtinicio<='+getdtbanco(dtemissao)+' and dtfinal>='+getdtbanco(dtemissao)) = 0;
end;

procedure TLivroFiscal.realizar_recalculo_custo_medio;
var
  recalculoCustoMedio : TRecalculoCustoMedio;
  linha, cdproduto, cdgrupo: TStrings;
begin
  if not empresa.livro.borecalcularcustomedio then
  begin
    Exit;
  end;
  recalculoCustoMedio := TRecalculoCustoMedio.create;
  linha     := TStringList.Create;
  cdproduto := tstringlist.Create;
  cdgrupo   := tstringlist.Create;
  try
    recalculoCustoMedio.Executar(linha, cdproduto, cdgrupo, dti, DtBanco, _dtsaida, false, false, false);
  finally
    recalculoCustoMedio.Free;
    linha.Free;
    cdproduto.Free;
    cdgrupo.Free;
  end;
end;

procedure TLivroFiscal.InserirLp1a;
begin
  cdlp1a := qgerar.GerarCodigo(_lp1a);
  sql.add(sql6+_sqlreg+'0,'+cdlp1a.ToString+','+quotedstr(dis)+','+quotedstr(dfs)+','+sqlregistra+');');
end;

procedure TLivroFiscal.inserir_item_vazio(cdcte, cdsaida, cdtpimposto, cdtpop1a, dsobservacao, dtemissao, dtentrada:string);
begin
  itlp1a.cdentrada    := '';
  itlp1a.cdcte        := cdcte;
  itlp1a.cdsaida      := cdsaida;
  itlp1a.cdcliente    := '';
  itlp1a.cdfornecedor := '';
  itlp1a.cdtpimposto  := cdtpimposto;
  itlp1a.cduf         := 0;
  itlp1a.CDTPOP1A     := cdtpop1a;
  itlp1a.TPSAIENT     := '';
  itlp1a.DTENTRADA    := dtentrada;
  itlp1a.dtemissao    := dtemissao;
  itlp1a.dsobservacao := dsobservacao;
  itlp1a.nuemitente   := '';
  itlp1a.cdcfop       := '';
  itlp1a.vlcontabil   := 0;
  itlp1a.vlbase       := 0;
  itlp1a.vlbcst       := 0;
  itlp1a.aliquota     := 0;
  itlp1a.vlimposto    := 0;
  itlp1a.vlst         := 0;
  itlp1a.vlisentas    := 0;
  itlp1a.vloutras     := 0;
  inseriritemlivro;
end;

procedure TLivroFiscal.ItemUF;
var
  i : integer;
begin
  gau.maxvalue  := high(itufp1a);
  gau1.Progress := 4;
  for I := 0 to high(itufp1a) do
  begin
    gau.progress := i;
    application.ProcessMessages;
    if itufp1a[i].cduf <> 0 then
    begin
      sql.add('insert into itufp1a(cdlp1a,cditufp1a,cduf,tpsaient,vlcontabil,vlbase,vlisentas,vloutras,vlimposto,'+_sqlreg+
              cdlp1a.ToString+','+gerarcodigo(_itufp1a)+','+inttostr(itufp1a[i].cduf)+','+quotedstr(itufp1a[i].tpsaient)+','+
              FormatarMoedaA(itufp1a[i].vlcontabil)+','+
              FormatarMoedaA(itufp1a[i].vlbase)+','+
              FormatarMoedaA(itufp1a[i].vlisentas)+','+
              FormatarMoedaA(itufp1a[i].vloutras)+','+
              FormatarMoedaA(itufp1a[i].vlimposto )+','+
              sqlregistra+');');
    end;
  end;
end;

function TLivroFiscal.InserirLivro:integer;
begin
  dti := empresa.livro.dtiniciolivro;
  dtf := Ultimo_Dia_Mes(dti);
  if RetornaSQLString('select max(cdlp1a) from lp1a where cdempresa='+empresa.cdempresa.ToString) <> '' then // verificar se existe registro no livro
  begin
    dtf := RetornaSQLData('select max(dtfinal) from lp1a where cdempresa='+empresa.cdempresa.ToString); // caso haja buscar a data do último livro
    dti := dtf + 1;                                              // determina a data do atual livro a partir da data do livro anterior
    dtf := Ultimo_Dia_Mes(dti);
  end;
  check_dtfinal;
  check_nfe_envida_sem_chave_nao_enviada;
  realizar_recalculo_custo_medio;
  sql      := tstringlist.create;
  mensagem := tstringlist.create;
  q        := TClasseQuery.Create;
  qit      := TClasseQuery.Create;
  c_pulo := TClientDataSet.Create(nil);
  try
    frmprogressbar := tfrmprogressbar.create(nil);
    try
      gau  := frmprogressbar.gau;
      gau1 := frmprogressbar.gau1;
      gau1.MaxValue := 12;
      frmprogressbar.setgau1;
      frmprogressbar.Show;
      frmprogressbar.pnl.caption := 'Inicializar Valores';
      InicializarValores;
      frmprogressbar.pnl.caption := 'Criar registro do livro';
      inserirlp1a;
      frmprogressbar.pnl.caption := 'Processar entrada';
      TabelaEntrada;
      frmprogressbar.pnl.caption := 'Processar Saída';
      TabelaSaida;
      frmprogressbar.pnl.caption := 'Processar CTE';
      TabelaCTE;
      frmprogressbar.pnl.caption := 'Processar UF';
      ItemUF;
      frmprogressbar.pnl.caption := 'Processar Apuração';
      ItemApuracao;
      frmprogressbar.pnl.caption := 'Processar Apuração UF';
      ApuracaoUF;
      frmprogressbar.pnl.caption := 'Processar Ajuste Ciapi';
      AjusteCiapi;
      frmprogressbar.pnl.caption := 'Processar Registro Apuração';
      RegistroApuracao;
      frmprogressbar.pnl.caption := 'Processar Ativo PIS/COFINS';
      AtivoPISCOFINS;
    finally
      FreeAndNil(frmprogressbar);
    end;
    if mensagem.Count > 0 then
    begin
      ExibirSaidaVideo(mensagem);
      if not Empresa.livro.boignorarerro then
      begin
        abort;
      end;
    end;
    ExecutaScript(sql);
  finally;
    freeandnil(sql);
    freeandnil(mensagem);
    freeandnil(q);
    freeandnil(qit);
    c_pulo.free;
  end;
  result := cdlp1a;
end;

procedure TLivroFiscal.incluirItemUF(var lista:TSubTotalA; cdcfop: string; vlcontabil, vlbase, vlimposto, vlisentas, vloutras: Currency);
var
  x: Integer;
begin
 if cdcfop = '' then
 begin
   exit;
 end;
  x := strtoint(cdcfop[1]) - 1;
  if x > 2 then
  begin
    x := x - 4;
  end;
  lista[x].vlcontabil := lista[x].vlcontabil + vlcontabil;
  lista[x].vlbase     := lista[x].vlbase     + vlbase;
  lista[x].vlcredito  := lista[x].vlcredito  + vlimposto;
  lista[x].vlisentas  := lista[x].vlisentas  + vlisentas;
  lista[x].vloutras   := lista[x].vloutras   + vloutras;
end;

procedure TLivroFiscal.incrementar_gauge(exibe:string; d : TDataset);
begin
  gau.progress := gau.progress + 1;
  frmprogressbar.pnl.caption := 'Procesar '+exibe+' - Registro '+inttostr(d.RecNo)+' de '+inttostr(d.RecordCount);
  application.ProcessMessages;
end;

procedure TLivroFiscal.InseriritemLivro;
begin
  sql.add('insert into itlp1a'+
           '(CDLP1A,CDITLP1A,CDCFOP,CDTPIMPOSTO,CDCTE,CDENTRADA,CDSAIDA,CDCLIENTE,'+
            'CDFORNECEDOR,CDUF,CDTPOP1A,TPSAIENT,DTENTRADA,NMESPECIE,NUSERIE,DTEMISSAO,'+
            'VLCONTABIL,VLBASE,ALIQUOTA,VLIMPOSTO,VLISENTAS,VLOUTRAS,VLBASEICMSSUBTRIB,'+
            'VLICMSSUBTRIB,DSOBSERVACAO,NUDOCUMENTO,NUEMITENTE,'+_sqlreg+
           cdlp1a.ToString+','+
           GerarCodigo(_itlp1a)+','+
           getnull(itlp1a.cdcfop)+','+
           itlp1a.cdtpimposto+','+
           getnull(itlp1a.cdcte)+','+
           getnull(itlp1a.cdentrada)+','+
           getnull(itlp1a.cdsaida)+','+
           getnull(itlp1a.cdcliente)+','+
           getnull(itlp1a.cdfornecedor)+','+
           getNullInteger(itlp1a.cduf)+','+
           itlp1a.CDTPOP1A+','+
           getnull(itlp1a.tpsaient, _string)+','+
           getnull(itlp1a.dtentrada)+','+
           quotedstr(itlp1a.nmespecie)+','+
           quotedstr(itlp1a.NUSERIE)+','+
           getnull(itlp1a.dtemissao)+','+
           formatarmoedaA(itlp1a.vlcontabil)+','+
           formatarmoedaA(itlp1a.vlbase  )+','+
           formatarmoedaA(itlp1a.aliquota)+','+
           formatarmoedaA(itlp1a.vlimposto)+','+
           formatarmoedaA(itlp1a.vlisentas )+','+
           formatarmoedaA(itlp1a.vloutras)+','+
           formatarmoedaA(itlp1a.vlbcst)+','+
           formatarmoedaA(itlp1a.vlst)+','+
           quotedstr(itlp1a.DSOBSERVACAO)+','+
           itlp1a.NUDOCUMENTO+','+
           getnull(itlp1a.nuemitente, _string)+','+
           sqlregistra+');');
end;

procedure TLivroFiscal.ApuracaoUF;
var
  kl, i : integer;
begin
  kl := high(subtotale);
  gau.maxvalue := kl;
  gau1.Progress := 9;
  for I := 0 to high(subtotale) do
  begin
    gau.progress := i;
    application.ProcessMessages;
    sql.add(sql9+_sqlreg+
            cdlp1a.ToString+','+
            GerarCodigo(_itapuf)+',1,''E'','+
            formatarmoedaA(subtotale[i].vlcontabil)+','+
            formatarmoedaA(subtotale[i].vlbase    )+','+
            formatarmoedaA(subtotale[i].vloutras  )+','+
            formatarmoedaA(subtotale[i].vlcredito )+','+
            formatarmoedaA(subtotale[i].vlisentas )+','+
            sqlregistra+');');
    vlimpostoe := vlimpostoe + subtotale[i].vlcredito;
  end;
  gau.maxvalue := high(subtotals);
  gau1.Progress := 10;
  for I := 0 to high(subtotals) do
  begin
    gau.progress := i;
    application.ProcessMessages;
    sql.add(sql9+_sqlreg+
            cdlp1a.ToString+','+
            GerarCodigo(_itapuf)+',1,''S'','+
            FormatarMoedaA(subtotals[i].vlcontabil)+','+
            FormatarMoedaA(subtotals[i].vlbase   )+','+
            FormatarMoedaA(subtotals[i].vloutras)+','+
            FormatarMoedaA(subtotals[i].vlcredito )+','+
            FormatarMoedaA(subtotals[i].vlisentas)+','+
            sqlregistra+');');
    vlimpostos := vlimpostos + subtotals[i].vlcredito;
  end;
  gau.maxvalue := high(subtotalie);
  gau1.Progress := 11;
  for I := 0 to high(subtotalie) do
  begin
    gau.progress := i;
    application.ProcessMessages;
    sql.add(sql9+_sqlreg+
            cdlp1a.ToString+','+
            GerarCodigo(_itapuf)+',2,''E'','+
            FormatarMoedaA(subtotalie[i].vlcontabil)+','+
            FormatarMoedaA(subtotalie[i].vlbase    )+','+
            FormatarMoedaA(subtotalie[i].vloutras  )+','+
            FormatarMoedaA(subtotalie[i].vlcredito )+','+
            FormatarMoedaA(subtotalie[i].vlisentas)+','+
            sqlregistra+');');
    vlimpostoie := vlimpostoie + subtotalie[i].vlcredito;
  end;
  gau.maxvalue := high(subtotalis);
  gau1.Progress := 12;
  for I := 0 to high(subtotalis) do
  begin
    gau.progress := i;
    application.ProcessMessages;
    sql.add(sql9+_sqlreg+
            cdlp1a.ToString+','+
            GerarCodigo(_itapuf)+',2,''S'','+
            FormatarMoedaA(subtotalis[i].vlcontabil)+','+
            FormatarMoedaA(subtotalis[i].vlbase    )+','+
            FormatarMoedaA(subtotalis[i].vloutras  )+','+
            FormatarMoedaA(subtotalis[i].vlcredito )+','+
            FormatarMoedaA(subtotalis[i].vlisentas )+','+
            sqlregistra+');');
    vlimpostois := vlimpostois + subtotalis[i].vlcredito;
  end;
end;

procedure TLivroFiscal.ItemApuracao;
var
  max : integer;
  vloutrosdebitos, vloutroscreditos: string;
  procedure entrada_icms;
  var
    c, i : integer;
  begin
    if not (high(cfope) > -1) then
    begin
      Exit;
    end;
    gau.maxvalue  := high(cfope);
    gau1.Progress := 5;
    for I := 0 to high(cfope) do
    begin
      gau.progress := i;
      application.ProcessMessages;
      cfop.valor       := 0;
      max              := calcdif.max(_vlcfop);
      vloutroscreditos := _null;
      vloutrosdebitos  := _null;
      if Calcdif.error then
      begin
        for C := 0 to max do
        begin
          if Calcdif.lerindicevalor(_vlcfop,_string,C) = cfope[i].cdcfop then
          begin
            cfop.valor := cfop.valor + Calcdif.lerindicevalor(_vlcfop,_valor,C);
          end;
          if cfop.valor > 0 then
          begin
            vloutrosdebitos  := FormatarMoedaA( cfop.valor)
          end
          else if cfop.valor < 0 then
          begin
            vloutroscreditos := FormatarMoedaA(-cfop.valor);
          end;
        end;
      end;
      sql.add(sql10+'vloutroscreditos,vloutrosdebitos,'+_sqlreg+cdlp1a.ToString+','+GerarCodigo(_itapuracao)+',1,'+cfope[i].cdcfop+',''E'','+
              FormatarMoedaA(cfope[i].vlcontabil)+','+FormatarMoedaA(cfope[i].vlbase    )+','+
              FormatarMoedaA(cfope[i].vloutras  )+','+FormatarMoedaA(cfope[i].vlcredito )+','+
              FormatarMoedaA(cfope[i].vlisentas )+','+vloutroscreditos+','+vloutrosdebitos+','+sqlregistra+');');
    end;
  end;
  procedure saida_icms;
  var
    i : integer;
    vlsaida, vltributada : Currency;
  begin
    vlsaida     := 0;
    vltributada := 0;
    if not (high(cfops) > -1) then
    begin
      Exit;
    end;
    gau.maxvalue  := high(cfops);
    gau1.Progress := 6;
    for I := 0 to high(cfops) do
    begin
      gau.progress := i;
      application.ProcessMessages;
      //if BooleandoCodigo(_cfop, cfops[i].cdcfop, _botributadaciapi) then
      //begin
      vltributada := vltributada + cfops[i].vlbase;
      //end;
      //if BooleandoCodigo(_cfop, cfops[i].cdcfop, _bosaidaciapi) then
      //begin
      vlsaida := vlsaida + cfops[i].vlcontabil;
      //end;
      sql.add(sql10+_sqlreg+cdlp1a.ToString+','+
              GerarCodigo(_itapuracao)+',1,'+
              cfops[i].cdcfop+',''S'','+
              FormatarMoedaA(cfops[i].vlcontabil)+','+
              FormatarMoedaA(cfops[i].vlbase    )+','+
              FormatarMoedaA(cfops[i].vloutras  )+','+
              FormatarMoedaA(cfops[i].vlcredito )+','+
              FormatarMoedaA(cfops[i].vlisentas )+','+
              sqlregistra+');');
    end;
    if vlsaida = 0 then
    begin
      prcoeficienteciapi := 0
    end
    else
    begin
      prcoeficienteciapi := vltributada/vlsaida;
    end;
    sql.Add('update lp1a '+
            'set vltributadaciapi='+getcurrencys(vltributada)+',vlsaidaciapi='+getcurrencys(vlsaida)+',PRCOEFICIENTECIAPI='+getcurrencys(prcoeficienteciapi)+' '+
            'where cdempresa='+empresa.cdempresa.ToString+' and cdlp1a='+cdlp1a.ToString+';');
  end;
  procedure entrada_ipi;
  var
    i : integer;
  begin
    if not (high(cfopie) > -1) then
    begin
      Exit;
    end;
    gau.maxvalue  := high(cfopie);
    gau1.Progress := 7;
    for I := 0 to high(cfopie) do
    begin
      gau.progress := i;
      application.ProcessMessages;
      sql.add(sql10+_sqlreg+cdlp1a.ToString+','+GerarCodigo(_itapuracao)+',2,'+cfopie[i].cdcfop+',''E'','+
              FormatarMoedaA(cfopie[i].vlcontabil)+','+FormatarMoedaA(cfopie[i].vlbase    )+','+
              FormatarMoedaA(cfopie[i].vloutras  )+','+FormatarMoedaA(cfopie[i].vlcredito )+','+
              FormatarMoedaA(cfopie[i].vlisentas )+','+sqlregistra+');');
    end;
  end;
  procedure saida_ipi;
  var
    i : integer;
  begin
    if not (high(cfopis) > -1) then
    begin
      Exit;
    end;
    gau.progress  := high(cfopis);
    gau1.Progress := 8;
    for I := 0 to high(cfopis) do
    begin
      gau.progress := i;
      application.ProcessMessages;
      sql.add(sql10+_sqlreg+cdlp1a.ToString+','+GerarCodigo(_itapuracao)+',2,'+cfopis[i].cdcfop+',''S'','+
              FormatarMoedaA(cfopis[i].vlcontabil)+','+FormatarMoedaA(cfopis[i].vlbase    )+','+
              FormatarMoedaA(cfopis[i].vloutras  )+','+FormatarMoedaA(cfopis[i].vlcredito )+','+
              FormatarMoedaA(cfopis[i].vlisentas )+','+sqlregistra+');');
    end;
  end;
begin
  entrada_icms;
  saida_icms;
  entrada_ipi;
  saida_ipi;
end;

function TLivroFiscal.aliquotaempresa(emp: string):Currency;
begin
  result := RetornaSQLCurrency('select u.alicms from uf u inner join empresa e on e.cduf=u.cduf where e.nmempresa='+quotedstr(emp))
end;

procedure TLivroFiscal.InicializarValores;
  procedure zerar(sub: TSubTotalA);
  var
    i : integer;
  begin
    for i := 0 to high(sub) do
    begin
      sub[i].vlcontabil := 0;
      sub[i].vlbase     := 0;
      sub[i].vlcredito  := 0;
      sub[i].vlisentas  := 0;
      sub[i].vloutras   := 0;
    end;
  end;
  procedure set_subtotale;
  begin
    setlength(subtotale, 3);
    zerar    (subtotale);
    subtotale[0].cdcfop  := '1.000 do Estado        ';
    subtotale[1].cdcfop  := '2.000 de outros estados';
    subtotale[2].cdcfop  := '3.000 do exterior      ';
  end;
  procedure set_subtotals;
  begin
    setlength(subtotals, 3);
    zerar    (subtotals);
    subtotals[0].cdcfop  := '5.000 para o Estado    ';
    subtotals[1].cdcfop  := '6.000 p/ outros estados';
    subtotals[2].cdcfop  := '7.000 para o exterior  ';
  end;
  procedure set_subtotalie;
  begin
    setlength(subtotalie, 3);
    zerar    (subtotalie);
    subtotalie[0].cdcfop := '1.000 do Estado        ';
    subtotalie[1].cdcfop := '2.000 de outros estados';
    subtotalie[2].cdcfop := '3.000 do exterior      ';
  end;
  procedure set_subtotalis;
  begin
    setlength(subtotalis, 3);
    zerar    (subtotalis);
    subtotalis[0].cdcfop := '5.000 para o Estado    ';
    subtotalis[1].cdcfop := '6.000 p/ outros estados';
    subtotalis[2].cdcfop := '7.000 para o exterior  ';
  end;
begin
  vlimpostoe   := 0;
  vlimpostos   := 0;

  vlimpostoie  := 0;
  vlimpostois  := 0;

  dt_          := dtbanco;

  max          := 0;
  mxp          := -1;
  rec          := 0;

  gau.Visible  := true;
  gau1.Visible := true;

  mxc          := 0;
  maxs         := 0;
  mxcie        := 0;
  maxis        := 0;

  set_subtotale;
  set_subtotals;
  set_subtotalie;
  set_subtotalis;

  zerar(cfope);
  zerar(cfops);
  zerar(cfopie);
  zerar(cfopis);

  setlength(itufp1a, 1);
  alempresa := aliquotaempresa(empresa.nmempresa);
  calcdif.inicializa;
  tsinsercaos := formatdatetime(__tsbanco, tsbanco);
end;

procedure TLivroFiscal.SomarValores;
begin
  icmscfop.vlcontabil := icmscfop.vlcontabil + icms.vlcontabil;
  icmscfop.vlbase     := icmscfop.vlbase     + icms.vlbase;
  icmscfop.vl         := icmscfop.vl         + icms.vl;
  icmscfop.al         := icms.al;
  icmscfop.vloutras   := icmscfop.vloutras   + icms.vloutras;
  icmscfop.vlisentas  := icmscfop.vlisentas  + icms.vlisentas;
  icmscfop.vlbcst     := icmscfop.vlbcst     + icms.vlbcst;
  icmscfop.vlst       := icmscfop.vlst       + icms.vlst;
  icmscfop.cdcfop     := icms.cdcfop;

  ipicfop.vlcontabil := ipicfop.vlcontabil + ipi.vlcontabil;
  ipicfop.vlbase     := ipicfop.vlbase     + ipi.vlbase;
  ipicfop.vl         := ipicfop.vl         + ipi.vl;
  ipicfop.vloutras   := ipicfop.vloutras   + ipi.vloutras;
  ipicfop.cdcfop     := ipi.cdcfop;

  if ipi.al > ipicfop.al then
  begin
    ipicfop.al := ipi.al;
  end;
end;

procedure TLivroFiscal.set_field_c_pulo;
begin
  c_pulo.FieldDefs.Clear;
  c_pulo.FieldDefs.Add(_nuserie, ftString, 3);
  c_pulo.FieldDefs.Add(_nudocfiscalicms, ftString, 2);
  c_pulo.FieldDefs.Add(_nuentrada, ftinteger);
  c_pulo.IndexDefs.Add(_pk , _nudocfiscalicms+';'+_nuserie+';'+_nuentrada, []);
  c_pulo.IndexName := _pk;
  c_pulo.CreateDataSet;
end;

procedure TLivroFiscal.inserir_registro_c_pulo;
begin
  c_pulo.Insert;
  c_pulo.FieldByName(_nuserie).AsString         := q.q.fieldbyname(_nuserie).AsString;
  c_pulo.FieldByName(_nuentrada).AsInteger      := q.q.fieldbyname(_nuentrada).AsInteger;
  c_pulo.FieldByName(_nudocfiscalicms).AsString := q.q.fieldbyname(_nudocfiscalicms).AsString;
  c_pulo.Post;
end;

procedure TLivroFiscal.verificar_pulo_nota;
var
  nuserie : string;
  i, nuentrada : Integer;
begin
  c_pulo.First;
  nuserie := '';
  set_gauge(_NF, 1, c_pulo);
  while not c_pulo.Eof do
  begin
    incrementar_gauge('Pulo de nota '+inttostr(nuentrada), c_pulo);
    application.processmessages;
    if c_pulo.FieldByName(_nudocfiscalicms).AsString = _2d then
    begin
      c_pulo.Next;
      Continue;
    end;
    if nuserie <> c_pulo.FieldByName(_nuserie).AsString then
    begin
      nuserie   := c_pulo.FieldByName(_nuserie).AsString;
      nuentrada := c_pulo.FieldByName(_nuentrada).AsInteger;
    end;
    i := 0;
    while nuentrada < c_pulo.FieldByName(_nuentrada).AsInteger do
    begin
      inc(i);
      if i > 100 then
      begin
        mensagem.Add('Pulo de nota acima de 500 números. Favor verificar lançamento até o número '+c_pulo.FieldByName(_nuentrada).asstring+'.');
        break;
      end;
      incrementar_gauge('Pulo de nota '+inttostr(nuentrada), c_pulo);
      application.processmessages;
      mensagem.Add('Pulo de nota '+inttostr(nuentrada)+' na série '+nuserie+'.');
      Inc(nuentrada);
    end;
    Inc(nuentrada);
    c_pulo.Next;
  end;
end;

function TLivroFiscal.nota_nao_foi_enviada:boolean;
begin
  result := (q.q.FieldByName(_nudocfiscalicms).AsString = _55) and
            (
              (q.q.FieldByName(_nuchavenfe).AsString = '') or
              (Length(q.q.FieldByName(_nuchavenfe).AsString) <> 44)
            )
            and
            (
              (q.q.FieldByName(_nustdocumento).AsString = _00) or
              (q.q.FieldByName(_nustdocumento).AsString = _99) or
              (q.q.FieldByName(_nustdocumento).AsString = _02) or
              (q.q.FieldByName(_nustdocumento).AsString = _06)
            );
end;

function TLivroFiscal.nota_inutilizada:boolean;
begin
  result := false;
  if q.q.FieldByName(_nustdocumento).AsString = _05 then
  begin
    DadosPessoa;
    inserir_item_vazio('', q.q.fieldbyname(_cdsaida).Asstring, _1, _1, uppercase(_NOTA+' '+_fiscal+' '+_inutilizada), '', '');
    inserir_item_vazio('', q.q.fieldbyname(_cdsaida).Asstring, _2, _1, uppercase(_NOTA+' '+_fiscal+' '+_inutilizada), '', '');
    result := true;
  end;
end;

function TLivroFiscal.nota_cancelada:boolean;
begin
  result := false;
  if (q.q.FieldByName(_nustdocumento).AsString = _02) or (q.q.FieldByName(_nustdocumento).AsString = _03) then
  begin
    DadosPessoa;
    inserir_item_vazio('', q.q.fieldbyname(_cdsaida).Asstring, _1, _1, uppercase(_NOTA+' '+_fiscal+' '+_cancelada), getdtbanco(q.q.fieldbyname(_dtemissao).AsDateTime), getdtbanco(q.q.fieldbyname(_dtsaida).AsDateTime));
    inserir_item_vazio('', q.q.fieldbyname(_cdsaida).Asstring, _2, _1, uppercase(_NOTA+' '+_fiscal+' '+_cancelada), getdtbanco(q.q.fieldbyname(_dtemissao).AsDateTime), getdtbanco(q.q.fieldbyname(_dtsaida).AsDateTime));
    result := true;
  end;
end;

function TLivroFiscal.nota_denegada:boolean;
begin
  result := false;
  if q.q.FieldByName(_nustdocumento).AsString = _04 then
  begin
    DadosPessoa;
    inserir_item_vazio('', q.q.fieldbyname(_cdsaida).Asstring, _1, _1, uppercase(_NOTA+' '+_fiscal+' '+_denegada), '', '');
    inserir_item_vazio('', q.q.fieldbyname(_cdsaida).Asstring, _2, _1, uppercase(_NOTA+' '+_fiscal+' '+_denegada), '', '');
    result := true;
  end;
end;

function TLivroFiscal.TabelaSaida:boolean;
  procedure inserir_entrada;
  begin
    itlp1a.cdtpimposto  := _1; // icms
    itlp1a.dsobservacao := '';
    itlp1a.cdtpop1a     := _1;
    if icmscfop.vl <= 0 then
    begin
      itlp1a.cdtpop1a := _3;
    end;
    itlp1a.cdcfop       := icmscfop.cdcfop;
    itlp1a.vlcontabil   := icmscfop.vlcontabil;
    itlp1a.vlbase       := icmscfop.vlbase;
    itlp1a.vlbcst       := icmscfop.vlbcst;
    itlp1a.aliquota     := icmscfop.al;
    itlp1a.vlimposto    := icmscfop.vl;
    itlp1a.vlst         := icmscfop.vlst;
    itlp1a.vlisentas    := 0;
    itlp1a.vloutras     := icmscfop.vloutras;

    inseriritemlivro;
    incluirItem     (itufp1a  , q.q.fieldbyname(_nudocfiscalicms).AsString, _E, icmscfop.vlcontabil, icmscfop.vlbase, icmscfop.vl, itlp1a.vlisentas, icmscfop.vloutras); // item da unidade federativa
    incluirItem     (cfope    , icmscfop.cdcfop,                                icmscfop.vlcontabil, icmscfop.vlbase, icmscfop.vl, itlp1a.vlisentas, icmscfop.vloutras);
    incluirItemUF   (subtotale, icmscfop.cdcfop,                                icmscfop.vlcontabil, icmscfop.vlbase, icmscfop.vl, itlp1a.vlisentas, icmscfop.vloutras);

    itlp1a.cdtpimposto  := _2; // ipi
    if ipicfop.vl <= 0 then
    begin
      itlp1a.cdtpop1a  := _3;
    end;
    itlp1a.vlbase     := ipicfop.vlbase;
    itlp1a.vlbcst     := 0;
    itlp1a.aliquota   := ipicfop.al;
    itlp1a.vlimposto  := ipicfop.vl;
    itlp1a.vlst       := 0;
    itlp1a.vloutras   := ipicfop.vloutras;

    inseriritemlivro;
    incluirItem     (cfopie    , ipicfop.cdcfop, ipicfop.vlcontabil, ipicfop.vlbase, ipicfop.vl, itlp1a.vlisentas, ipicfop.vloutras); // apuracao de ipi entrada tabela "SAIDA"
    incluirItemUF   (subtotalie, ipicfop.cdcfop, ipicfop.vlcontabil, ipicfop.vlbase, ipicfop.vl, itlp1a.vlisentas, ipicfop.vloutras);
  end;
  procedure inserir_saida;
  begin
    itlp1a.dsobservacao := '';
    if q.q.fieldbyname(_vlicmsfretesub).AsCurrency > 0 then
    begin
      itlp1a.dsobservacao := 'ICMS ST Frete '+formatfloat(__moeda, q.q.fieldbyname(_vlicmsfretesub).ascurrency);
    end;
    itlp1a.cdtpimposto  := _1; // icms
    itlp1a.cdtpop1a     := _1;
    itlp1a.cdcfop       := icmscfop.cdcfop;
    itlp1a.vlcontabil   := icmscfop.vlcontabil;
    itlp1a.vlbase       := icmscfop.vlbase;
    itlp1a.vlbcst       := icmscfop.vlbcst;
    itlp1a.aliquota     := icmscfop.al;
    itlp1a.vlimposto    := icmscfop.vl;
    itlp1a.vlst         := icmscfop.vlst;
    itlp1a.vlisentas    := icmscfop.vlisentas;
    itlp1a.vloutras     := icmscfop.vloutras;

    inseriritemlivro;
    incluirItem     (itufp1a  , q.q.fieldbyname(_nudocfiscalicms).AsString, _S, icmscfop.vlcontabil, icmscfop.vlbase, icmscfop.vl, itlp1a.vlisentas, icmscfop.vloutras); // Apuração
    incluirItem     (cfops    , icmscfop.cdcfop,                                icmscfop.vlcontabil, icmscfop.vlbase, icmscfop.vl, itlp1a.vlisentas, icmscfop.vloutras);
    incluirItemUF   (subtotals, icmscfop.cdcfop,                                icmscfop.vlcontabil, icmscfop.vlbase, icmscfop.vl, itlp1a.vlisentas, icmscfop.vloutras);

    itlp1a.cdtpimposto  := _2; // ipi
    itlp1a.vlbase       := ipicfop.vlbase;
    itlp1a.vlbcst       := 0;
    itlp1a.aliquota     := ipicfop.al;
    itlp1a.vlimposto    := ipicfop.vl;
    itlp1a.vlst         := 0;
    itlp1a.vloutras     := ipicfop.vloutras;

    inseriritemlivro;
    incluirItem     (cfopis    , ipicfop.cdcfop, ipicfop.vlcontabil, ipicfop.vlbase, ipicfop.vl, itlp1a.vlisentas, ipicfop.vloutras); // apuracao de ipi de saida tabela "SAIDA"
    incluirItemUF   (subtotalis, ipicfop.cdcfop, ipicfop.vlcontabil, ipicfop.vlbase, ipicfop.vl, itlp1a.vlisentas, ipicfop.vloutras);
  end;
begin
  set_field_c_pulo;
  q.q.close;
  q.q.open(makesqlsaida);
  set_gauge(_NF, 1, q.q);
  while not q.q.eof do
  begin
    inserir_registro_c_pulo;
    incrementar_gauge(_nota+' '+_fiscal, q.q);
    if nota_nao_foi_enviada then
    begin
      mensagem.add('A nota fiscal de saída '+q.q.fieldbyname(_nuentrada).asstring+' não foi enviada. Envie a nota para a receita ou mude a situação do documento!');
    end;
    if nota_inutilizada or nota_cancelada or nota_denegada then
    begin
      q.q.next;
      continue;
    end;
    check_nota(_saida);
    if (q.q.fieldbyname(_nudocfiscalicms).AsString <> _02) and (q.q.fieldbyname(_nudocfiscalicms).AsString <> _2D) and q.q.fieldbyname(_cdcliente).IsNull and q.q.fieldbyname(_cdfornecedor).IsNull then
    begin
      mensagem.add('A nota fiscal de saída '+q.q.fieldbyname(_nuentrada).asstring+' não possui cliente e nem fornecedor. Altere a nota fiscal para continuar!');
    end;
    DadosPessoa;
    itlp1a.cdsaida   := q.q.fieldbyname(_cdsaida).Asstring;
    itlp1a.cdentrada := '';
    zerarImposto(ipicfop);
    zerarImposto(icmscfop);
    zerarImposto(ipi);
    zerarImposto(icms);
    qit.q.close;
    qit.q.open(makesqlitsaida(q.q.fieldbyname(_cdsaida).asstring));
    if qit.q.RecordCount = 0 then
    begin
      if q.q.fieldbyname(_nustdocumento).AsString = _00 then
      begin
        mensagem.add('A nota fiscal de saída '+q.q.fieldbyname(_nuentrada).asstring+' não possui itens. Corrija a nota para prosseguir!');
      end;
      icmscfop.cdcfop     := itlp1a.cdcfop;
      icmscfop.vlcontabil := q.q.fieldbyname(_vltotal).AsCurrency;
      icmscfop.vlbase     := q.q.fieldbyname(_vlbaseicms).AsCurrency;
      icmscfop.al         := q.q.fieldbyname(_alicms).AsCurrency;
      icmscfop.vl         := q.q.fieldbyname(_vlicms).AsCurrency;
      icmscfop.vlbcst     := q.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency;
      icmscfop.vlst       := q.q.fieldbyname(_vlicmssubtrib).AsCurrency;
      icmscfop.vloutras   := icmscfop.vlcontabil - icmscfop.vlbase;
      if icmscfop.vloutras < 0 then
      begin
        icmscfop.vloutras := 0;
      end;
      ipicfop.vlcontabil  := q.q.fieldbyname(_vltotal).AsCurrency;
      ipicfop.vlbase      := q.q.fieldbyname(_vlbaseipi).AsCurrency;
      ipicfop.vl          := q.q.fieldbyname(_vlipi).AsCurrency;
      ipicfop.vloutras := ipi.vlcontabil - ipicfop.vlbase - ipicfop.vl;
      if ipicfop.vloutras < 0 then
      begin
        ipicfop.vloutras := 0;
      end;
      if (q.q.fieldbyname(_tpentsai).asstring = _E) and (not q.q.fieldbyname(_vlicmssubtrib).isnull) then
      begin
        icmscfop.vlbase := q.q.fieldbyname(_vlbaseicmssubtrib).ascurrency;
        icmscfop.vl     := q.q.fieldbyname(_vlicmssubtrib).ascurrency;
        icmscfop.al     := q.q.fieldbyname(_alicmssubtrib).ascurrency;
      end
    end
    else
    begin
      while not qit.q.eof do
      begin
        set_icms_estrutura(_saida);
        set_ipi_estrutura (_saida);
        if ((icms.cdcfop <> icmscfop.cdcfop) or (icms.al <> icmscfop.al)) and (icmscfop.cdcfop <> '') then // Verifica se o cfop é o mesmo do item anterior
        begin
          if q.q.fieldbyname(_tpentsai).asstring = _E then
          begin
            inserir_entrada // entrada tabela "SAIDA"
          end
          else if q.q.fieldbyname(_tpentsai).asstring = _S then
          begin
            inserir_saida; // saida tabela "SAIDA"
          end;
          zerarImposto(ipicfop);
          zerarImposto(icmscfop);
        end;
        SomarValores;
        qit.q.next;
      end;
      if q.q.fieldbyname(_tpentsai).asstring = _E then
      begin
        inserir_entrada
      end
      else if q.q.fieldbyname(_tpentsai).asstring = _S then
      begin
        inserir_saida;
      end;
    end;
    q.q.next;
  end;
  verificar_pulo_nota;
  result := true;
end;

function TLivroFiscal.makesqlcte: string;
begin
  result := 'select c.cdcte'+
                  ',C.CDSTCTE'+
                  ',c.dtemissao'+
                  ',c.vlservico'+
                  ',c.vlbaseicms'+
                  ',c.vlicms'+
                  ',c.cdcfop'+
                  ',c.alicms'+
                  ',c.cdctetptomador'+
                  ',ce.nucnpj nucnpje'+
                  ',ce.nucpf nucpfe'+
                  ',ce.cduf cdufe'+
                  ',c.cdremetente cdclientee'+
                  ',cd.nucnpj nucnpjd'+
                  ',cd.nucpf nucpfd'+
                  ',cd.cduf cdufd'+
                  ',c.cddestinatario cdcliented'+
                  ',cx.nucnpj nucnpjx'+
                  ',cx.nucpf nucpfx'+
                  ',cx.cduf cdufx'+
                  ',c.cdexpedidor cdclientex'+
                  ',cr.nucnpj nucnpjr'+
                  ',cr.nucpf nucpfr'+
                  ',cr.cduf cdufr'+
                  ',c.cdrecebedor cdclienter'+
                  ',co.nucnpj nucnpjo'+
                  ',co.nucpf nucpfo'+
                  ',co.cduf cdufo'+
                  ',c.cdtomador cdclienteo '+
             'from CTE C '+
             'left join cliente ce on ce.cdcliente=c.cdremetente and c.cdempresa=ce.cdempresa '+
             'left join cliente cd on cd.cdcliente=c.cddestinatario and c.cdempresa=cd.cdempresa '+
             'left join cliente cx on cx.cdcliente=c.cdexpedidor and c.cdempresa=cx.cdempresa '+
             'left join cliente cr on cr.cdcliente=c.cdrecebedor and c.cdempresa=cr.cdempresa '+
             'left join cliente co on co.cdcliente=c.cdtomador and c.cdempresa=co.cdempresa '+
             'where c.cdempresa='+empresa.cdempresa.ToString+' and c.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
             'order by c.cdcte';
end;

function TLivroFiscal.makesqlentrada:string;
begin
  result := 'select e.dtsaida'+
                  ',e.nuserie'+
                  ',e.nuentrada'+
                  ',e.dtemissao'+
                  ',E.NUDOCFISCALICMS'+
                  ',c.tppessoa tppessoac'+
                  ',c.cdcliente'+
                  ',c.nucnpj nucnpjc'+
                  ',c.nucpf nucpfc'+
                  ',c.cduf cdufc'+
                  ',''E'' tpentsai'+
                  ',ufc.sguf sgufc'+
                  ',uff.sguf sguff'+
                  ',f.tppessoa tppessoaf'+
                  ',f.cdfornecedor'+
                  ',f.nucnpj nucnpjf'+
                  ',f.nucpf nucpff'+
                  ',f.cduf cduff'+
                  ',e.vltotal'+
                  ',e.cdcfop'+
                  ',e.vlbaseicms'+
                  ',e.vlicms'+
                  ',e.vlbaseipi'+
                  ',e.vlipi'+
                  ',e.cdentrada'+
                  ',E.NUSTDOCUMENTO'+
                  ',''E'' tpentsai '+
            'from entrada e '+
            'inner join itentrada i on i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada '+
            'inner join produto p on p.cdempresa=i.cdempresa and p.cdproduto=i.cdproduto '+
            'inner join tpproduto t on t.cdempresa=p.cdempresa and t.cdtpproduto=p.cdtpproduto '+
            'left join cliente c on c.cdcliente=e.cdcliente and e.cdempresa=c.cdempresa '+
            'left join uf ufc on ufc.cduf=c.cduf '+
            'left join fornecedor f on f.cdfornecedor=e.cdfornecedor and e.cdempresa=f.cdempresa '+
            'left join uf uff on uff.cduf=f.cduf '+
            'where e.cdempresa='+empresa.cdempresa.ToString+' and e.dtsaida between '+quotedstr(dis)+' and '+quotedstr(dfs)+' and t.boservico<>''S'' '+
            'group by e.dtsaida'+
                  ',e.nuserie'+
                  ',e.nuentrada'+
                  ',e.dtemissao'+
                  ',E.NUDOCFISCALICMS'+
                  ',c.tppessoa'+
                  ',c.cdcliente'+
                  ',c.nucnpj'+
                  ',c.nucpf'+
                  ',c.cduf'+
                  ',ufc.sguf'+
                  ',uff.sguf'+
                  ',f.tppessoa'+
                  ',f.cdfornecedor'+
                  ',f.nucnpj'+
                  ',f.nucpf'+
                  ',f.cduf'+
                  ',e.vltotal'+
                  ',e.cdcfop'+
                  ',e.vlbaseicms'+
                  ',e.vlicms'+
                  ',e.vlbaseipi'+
                  ',e.vlipi'+
                  ',e.cdentrada'+
                  ',E.NUSTDOCUMENTO '+
            'order by e.dtsaida,e.cdentrada';
end;

function TLivroFiscal.makesqlitentrada(cdentrada:string):string;
begin
  result := 'select i.cditentrada'+
                  ',i.cdproduto'+
                  ',i.qtitem'+
                  ',i.alicms'+
                  ',i.alipi'+
                  ',i.vltotal'+
                  ',i.vldesconto'+
                  ',i.vlbaseicms'+
                  ',i.vlbaseicmssubtrib'+
                  ',i.vlicms'+
                  ',i.vlbaseipi'+
                  ',i.vlipi'+
                  ',i.vlfrete'+
                  ',i.vlseguro'+
                  ',i.vloutdespesa'+
                  ',i.vlicmssubtrib'+
                  ',i.borecuperaicms'+
                  ',i.borecuperaipi'+
                  ',cfop.bodiferencialaliquota'+
                  ',I.BONDIFERENCIALALIQUOTA'+
                  ',i.borecuperaipiespecial'+
                  ',I.NUSTICMS'+
                  ',i.cdcfop'+
                  ',i.cdentrada '+
              'from entrada e '+
              'inner join itentrada i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa '+
              'left join cfop on cfop.cdcfop=i.cdcfop '+
              'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
              'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
              'where e.cdempresa='+empresa.cdempresa.ToString+' and e.cdentrada='+cdentrada+' '+
              'order by i.alicms desc,i.cdcfop';
end;

function TLivroFiscal.makesqlitsaida(cdsaida: string):string;
begin
  result := 'select i.cditsaida'+
                  ',i.cdproduto'+
                  ',i.qtitem'+
                  ',i.alicms'+
                  ',i.alipi'+
                  ',i.vltotal'+
                  ',i.vldesconto'+
                  ',i.vlbaseicms'+
                  ',i.vlbaseicmssubtrib'+
                  ',i.vlicms'+
                  ',i.vlicmssubtrib'+
                  ',i.vlbaseipi'+
                  ',i.vlipi'+
                  ',i.vlfrete'+
                  ',i.vlseguro'+
                  ',i.vloutdespesa'+
                  ',i.borecuperaicms'+
                  ',i.borecuperaipi'+
                  ',I.NUSTICMS'+
                  ',i.cdcfop'+
                  ',i.cdsaida '+
             'from saida s '+
             'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
             'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
             'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
             'where s.cdempresa='+empresa.cdempresa.ToString+' and s.cdsaida='+cdsaida+' '+
             'order by i.alicms desc,i.cdcfop';
end;

function TLivroFiscal.makesqlsaida: string;
begin
  result := 'select s.dtsaida'+
                  ',se.nuserie'+
                  ',s.nusaida nuentrada'+
                  ',s.dtemissao'+
                  ',s.vltotal'+
                  ',s.cdcfop'+
                  ',S.NUDOCFISCALICMS'+
                  ',s.nustdocumento'+
                  ',s.nuchavenfe'+
                  ',s.vlbaseicms'+
                  ',s.vlicms'+
                  ',s.vlouticms'+
                  ',s.vlicmssubtrib'+
                  ',s.vlbaseicmssubtrib'+
                  ',s.vlbaseipi'+
                  ',s.vlipi'+
                  ',s.vlisentaicms'+
                  ',s.vloutipi'+
                  ',s.vlisentaipi'+
                  ',s.cdsaida'+
                  ',ufc.sguf sgufc'+
                  ',uff.sguf sguff'+
                  ',s.cdcfop'+
                  ',c.tppessoa tppessoac'+
                  ',c.cdcliente'+
                  ',c.nucnpj nucnpjc'+
                  ',c.nucpf nucpfc'+
                  ',c.cduf cdufc'+
                  ',f.tppessoa tppessoaf'+
                  ',f.cdfornecedor'+
                  ',f.nucnpj nucnpjf'+
                  ',f.nucpf nucpff'+
                  ',f.cduf cduff'+
                  ',s.tpentsai'+
                  ',s.vlfrete'+
                  ',s.vlfretesub'+
                  ',s.nustdocumento'+
                  ',i.vlicms vlicmsfretesub '+
             'from saida s '+
             'LEFT join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
             'left join itsaidafretesub i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
             'left join serie se on sE.cdserie=s.cdserie and s.cdempresa=se.cdempresa '+
             'left join cliente c on c.cdcliente=s.cdcliente and s.cdempresa=c.cdempresa '+
             'left join uf ufc on ufc.cduf=c.cduf '+
             'left join fornecedor f on f.cdfornecedor=s.cdfornecedor and s.cdempresa=f.cdempresa '+
             'left join uf uff on uff.cduf=f.cduf '+
             'where se.boservico<>''S'' and s.cdempresa='+empresa.cdempresa.ToString+' and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
             'order by se.nuserie,s.nusaida';
end;

procedure TLivroFiscal.check_nota(tabela:string);
begin
  if q.q.fieldbyname(_cdcfop).isnull then
  begin
    mensagem.add('A nota fiscal de '+tabela+' '+q.q.fieldbyname(_nuentrada).asstring+' não foi preenchido o CFOP. Preencha o CFOP para continuar!');
  end;
  if q.q.fieldbyname(_cduf+_c).isnull and (not q.q.fieldbyname(_cdcliente).isnull) then
  begin
    mensagem.add('A nota fiscal de '+tabela+' '+q.q.fieldbyname(_nuentrada).asstring+' o cliente '+q.q.fieldbyname(_cdcliente).asstring+' não tem a UF preenchida. Preencha a UF para continuar!');
  end;
  if q.q.fieldbyname(_cduf+_f).isnull and (not q.q.fieldbyname(_cdfornecedor).isnull) then
  begin
    mensagem.add('A nota fiscal de '+tabela+' '+q.q.fieldbyname(_nuentrada).asstring+' o Fornecedor '+q.q.fieldbyname(_cdfornecedor).asstring+' não tem a UF preenchida. Preencha a UF para continuar!');
  end;
  if q.q.fieldbyname(_nustdocumento).AsString = '' then
  begin
    mensagem.Add('A nota fiscal de '+tabela+' '+q.q.fieldbyname(_nuentrada).asstring+' está com a situação do documento vazio. Preencha a situação do documento para continuar!');
  end;
end;

procedure TLivroFiscal.set_gauge(nmespecie:string; progresso: integer; d: TDataset);
begin
  gau1.Progress    := progresso;
  itlp1a.nmespecie := uppercase(nmespecie);
  gau.MaxValue     := d.RecordCount;
  gau.progress     := 0;
end;

procedure TLivroFiscal.set_icms_estrutura(tbl:string);
begin
  icms.cdcfop     := get_cdcfop(tbl);
  icms.borecupera := qit.q.fieldbyname(_borecuperaicms).AsString = _S;
  icms.al         := qit.q.fieldbyname(_alicms).AsCurrency;
  icms.vlbase     := qit.q.fieldbyname(_vlbaseicms).AsCurrency;
  icms.vl         := qit.q.fieldbyname(_vlicms).AsCurrency;
  icms.vlbcst     := qit.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency;
  icms.vlst       := qit.q.fieldbyname(_vlicmssubtrib).AsCurrency;
  icms.vlcontabil := get_vlcontabil(tbl);
  icms.vlisentas := 0;
  icms.vloutras  := 0;
  if ((q.q.fieldbyname(_tpentsai).asstring = _E)  and (not icms.borecupera)) or (icms.vl = 0) then
  begin
    icms.vlbase := 0;
    icms.vl     := 0;
    icms.al     := 0;
    if se_nusticms_30_40_41(qit.q.fieldbyname(_nusticms).asstring) then
    begin
      icms.vlisentas := icms.vlcontabil
    end
    else
    begin
      icms.vloutras  := icms.vlcontabil;
    end;
  end
  else
  begin
    if se_nusticms_30_40_41(qit.q.fieldbyname(_nusticms).asstring) then
    begin
      icms.vlisentas := icms.vlcontabil - icms.vlbase
    end
    else
    begin
      icms.vloutras  := icms.vlcontabil - icms.vlbase;
    end;
  end;
  if (icms.vloutras < 0) and (icms.vlcontabil > 0) then
  begin
    mensagem.Add('O produto '+qit.q.fieldbyname(_cdproduto).asstring+' - '+NomedoCodigo(_produto, qit.q.fieldbyname(_cdproduto).asstring)+#13+
                 'na nota   '+q.q.fieldbyname(_nuentrada).AsString+
                 ' está com o valor da base do ICMS('+getcurrencys(icms.vlbase)+') maior do que o valor contábil('+getcurrencys(icms.vlcontabil)+').');
  end;
  if icms.vloutras < 0 then
  begin
    icms.vloutras := 0;
  end;
  if icms.vlisentas < 0 then
  begin
    icms.vlisentas := 0;
  end;
end;

function TLivroFiscal.se_nusticms_30_40_41(nusticms:string):boolean;
begin
  result := (nusticms = _30) or (nusticms = _40) or (nusticms = _41);
end;

procedure TLivroFiscal.set_ipi_estrutura(tbl:string);
begin
  ipi.cdcfop     := get_cdcfop(tbl);
  ipi.borecupera := qit.q.fieldbyname(_borecuperaipi).AsString  = _S;
  ipi.al         := qit.q.fieldbyname(_alipi).AsCurrency;
  ipi.vlbase     := qit.q.fieldbyname(_vlbaseipi).AsCurrency;
  ipi.vl         := qit.q.fieldbyname(_vlipi).AsCurrency;
  ipi.vlcontabil := get_vlcontabil(tbl);
  if ((q.q.fieldbyname(_tpentsai).asstring = _E)  and (not ipi.borecupera)) or (ipi.vl = 0) then
  begin
    ipi.vlbase := 0;
    ipi.vl     := 0;
    ipi.al     := 0;
  end;
  ipi.vloutras := ipi.vlcontabil - ipi.vlbase - ipi.vl;
  if ipi.vloutras < 0 then
  begin
    ipi.vloutras := 0;
  end;
end;

function TLivroFiscal.TabelaEntrada:boolean;
  function se_quebra_icms:boolean; // Verifica se o cfop é o mesmo do item anterior
  begin
    result := ((icmscfop.cdcfop <> icms.cdcfop) or (icms.al <> icmscfop.al)) and (icmscfop.cdcfop <> '');
  end;
  function se_quebra_ipi:boolean; // Verifica se o cfop é o mesmo do item anterior
  begin
    result := ((ipicfop.cdcfop <> ipi.cdcfop) or (ipi.al <> ipicfop.al)) and (ipicfop.cdcfop <> '');
  end;
  procedure set_quebra_icms;
  begin // Verifica se ha diferencial e calcula para em seguida somar o geral do cfop
    itlp1a.cdtpimposto  := _1;
    if Calcdif.ler(_dif,_string) = _0_00 then
    begin
      itlp1a.dsobservacao := '';
    end;
    if Calcdif.ler(_dif) > 0 then
    begin
      itlp1a.dsobservacao := 'BC '+calcdif.ler(_base,_string)+' DIF ALIQ '+Calcdif.ler(_dif,_string);
      CalcDif.NewVlNota(q.q.fieldbyname(_nuentrada).AsString);
      Calcdif.SetVlBase(0,true);
    end;
    itlp1a.cdtpop1a := _1;
    if icmscfop.vl <= 0 then
    begin
      itlp1a.cdtpop1a := _3;
    end;
    itlp1a.cdcfop     := icmscfop.cdcfop;
    itlp1a.vlcontabil := icmscfop.vlcontabil;
    itlp1a.vlbase     := icmscfop.vlbase;
    itlp1a.vlbcst     := icmscfop.vlbcst;
    itlp1a.aliquota   := icmscfop.al;
    itlp1a.vlimposto  := icmscfop.vl;
    itlp1a.vlst       := icmscfop.vlst;
    itlp1a.vlisentas  := icmscfop.vlisentas;
    itlp1a.vloutras   := icmscfop.vloutras;
    inseriritemlivro;
    incluirItem     (itufp1a  , q.q.fieldbyname(_nudocfiscalicms).AsString, _E, icmscfop.vlcontabil, icmscfop.vlbase, icmscfop.vl, icmscfop.vlisentas, icmscfop.vloutras); // item da unidade federativa
    incluirItem     (cfope    , icmscfop.cdcfop,                                icmscfop.vlcontabil, icmscfop.vlbase, icmscfop.vl, icmscfop.vlisentas, icmscfop.vloutras);
    incluirItemUF   (subtotale, icmscfop.cdcfop,                                icmscfop.vlcontabil, icmscfop.vlbase, icmscfop.vl, icmscfop.vlisentas, icmscfop.vloutras);
    zerarImposto(icmscfop);
  end;
  procedure set_quebra_ipi;
  begin
    itlp1a.cdtpimposto  := _2;
    itlp1a.dsobservacao := '';
    itlp1a.cdtpop1a     := _1;
    if ipicfop.vl <= 0 then
    begin
      itlp1a.cdtpop1a := _3;
    end;
    itlp1a.vlisentas  := 0;
    itlp1a.cdcfop     := ipicfop.cdcfop;
    itlp1a.vlcontabil := ipicfop.vlcontabil;
    itlp1a.vlbase     := ipicfop.vlbase;
    itlp1a.vlbcst     := 0;
    itlp1a.aliquota   := ipicfop.al;
    itlp1a.vlimposto  := ipicfop.vl;
    itlp1a.vlst       := 0;
    itlp1a.vloutras   := ipicfop.vloutras;
    inseriritemlivro;
    incluirItem     (    cfopie, ipicfop.cdcfop, ipicfop.vlcontabil, ipicfop.vlbase, ipicfop.vl, itlp1a.vlisentas, ipicfop.vloutras); // apuracao de ipi de entrada Tabela "ENTRADA"
    incluirItemUF   (subtotalie, ipicfop.cdcfop, ipicfop.vlcontabil, ipicfop.vlbase, ipicfop.vl, itlp1a.vlisentas, ipicfop.vloutras);
    zerarImposto(ipicfop);
  end;
  procedure calcular_diferencial_aliquota;
  begin
    if (qit.q.fieldbyname(_bodiferencialaliquota).asstring = _S) and (qit.q.fieldbyname(_bondiferencialaliquota).asstring <> _S) then
    begin
      vldif := RoundTo(((alempresa * qit.q.fieldbyname(_vlbaseicms).AsCurrency)/100) - qit.q.fieldbyname(_vlicms).AsCurrency, -2);
      Calcdif.DebCred(vldif);
      Calcdif.SetVlitem(vldif);
      Calcdif.NewVlCFOP(vldif,itlp1a.cdcfop);
      Calcdif.SetVlBase(qit.q.fieldbyname(_vlbaseicms).AsCurrency);
    end;
  end;
begin
  q.q.close;
  q.q.open(makesqlentrada);
  set_gauge(_nf, 2, q.q);
  itlp1a.nmespecie := uppercase(_NF);
  itlp1a.cdsaida   := '';
  while not q.q.eof do
  begin
    incrementar_gauge(_compra, q.q);
    check_nota(_entrada);
    DadosPessoa;
    itlp1a.cdentrada := q.q.fieldbyname(_cdentrada).Asstring;

    qit.q.close;
    qit.q.open(makesqlitentrada(q.q.fieldbyname(_cdentrada).asstring));
    zerarImposto(ipicfop);
    zerarImposto(icmscfop);
    zerarImposto(ipi);
    zerarImposto(icms);

    qit.q.First;
    while not qit.q.eof do // Percorre todos os itens da nota fiscal
    begin
      set_icms_estrutura(_entrada);
      if se_quebra_icms then
      begin
        set_quebra_icms;
      end;
      calcular_diferencial_aliquota;
      set_ipi_estrutura(_entrada);
      if se_quebra_ipi  then
      begin
        set_quebra_ipi;
      end;
      SomarValores;
      qit.q.next;
    end;
    set_quebra_icms;
    set_quebra_ipi;
    q.q.next;
  end;
  result := true;
end;

function TLivroFiscal.saldocredorperiodoanterior(cdtpimposto:string):currency;
begin
  if RetornaSQLInteger('select count(*) from lp1a where cdempresa='+empresa.cdempresa.ToString) = 0 then
  begin
    if cdtpimposto = _1 then
    begin
      result := Empresa.livro.vlsaldocredor
    end
    else if cdtpimposto = _2 then
    begin
      result := Empresa.livro.vlsaldocredoripi
    end
    else
    begin
      result := 0;
    end;
  end
  else
  begin
    result := RetornaSQLCurrency('select vlsaldocredor from itregapuracao where cdempresa='+empresa.cdempresa.ToString+' and cdlp1a<'+cdlp1a.ToString+' and cdtpimposto='+cdtpimposto+' order by cdlp1a desc');
  end;
end;

procedure TLivroFiscal.RegistroApuracao;
const
  sql11 = 'insert into itregapuracao'+
          '(cdlp1a,cditregapuracao,cdtpimposto,vldebito,vldoutros,vldestorno,'+
           'vldtotal,vlcredito,vlcoutros,vlcestorno,vlcsubtotal,vlcsaldocredor,'+
           'vlctotal,vlsaldodevedor,vldeducoes,vlimposto,vlsaldocredor,';
var
  l_vlsaldocredor, l_vlimposto, l_vlsaldodevedor, l_vlctotal, l_vlcsaldocredor, l_vlcsubtotal, l_vlcredito: currency;
begin
  l_vlsaldocredor  := saldocredorperiodoanterior(_1);
  l_vlcsaldocredor := l_vlsaldocredor;
  l_vlctotal       := vlimpostoe + l_vlsaldocredor+vlajusteciapi;
  l_vlsaldodevedor := (vlimpostos - (vlimpostoe + l_vlsaldocredor+vlajusteciapi));

  l_vlimposto      := 0;
  l_vlsaldocredor  := 0;

       if vlimpostos > l_vlctotal then l_vlimposto     := l_vlsaldodevedor
  else if vlimpostos < l_vlctotal then l_vlsaldocredor := l_vlctotal - vlimpostos;

  sql.add(sql11+_sqlreg+
          cdlp1a.ToString+','+
          GerarCodigo(_itregapuracao)+','+
          '1,'+
          FormatarMoedaA(vlimpostos)+','+
          '0,'+
          '0,'+
          FormatarMoedaA(vlimpostos)+','+
          FormatarMoedaA(vlimpostoe)+','+
          FormatarMoedaA(vlajusteciapi)+','+
          '0,'+
          FormatarMoedaA(vlimpostoe)+','+
          FormatarMoedaA(l_vlcsaldocredor)+','+
          FormatarMoedaA(l_vlctotal)+','+
          FormatarMoedaA(l_vlsaldodevedor)+','+
          '0,'+
          FormatarMoedaA(l_vlimposto)+    ','+
          FormatarMoedaA(l_vlsaldocredor)+','+
          sqlregistra+');');
  //
  l_vlsaldocredor  := saldocredorperiodoanterior(_2);
  l_vlcredito      := vlimpostoie;
  l_vlcsubtotal    := vlimpostoie;
  l_vlcsaldocredor := l_vlsaldocredor;

  l_vlctotal       := vlimpostoie + l_vlcsaldocredor;
  l_vlsaldodevedor := vlimpostois - l_vlctotal;
  if l_vlsaldodevedor < 0 then l_vlsaldodevedor := 0;

  l_vlimposto      := 0;
  l_vlsaldocredor  := 0;

       if vlimpostois > l_vlctotal then l_vlimposto     := l_vlsaldodevedor
  else if vlimpostois < l_vlctotal then l_vlsaldocredor := l_vlctotal - vlimpostois;

  sql.add(sql11+_sqlreg+cdlp1a.ToString+','+GerarCodigo(_itregapuracao)+',2,'+
          FormatarMoedaA(vlimpostois   )+',0,0,'+
          FormatarMoedaA(vlimpostois   )+','+
          FormatarMoedaA(l_vlcredito     )+',0,0,'+
          FormatarMoedaA(l_vlcsubtotal   )+','+
          FormatarMoedaA(l_vlcsaldocredor)+','+
          FormatarMoedaA(l_vlctotal      )+','+
          FormatarMoedaA(l_vlsaldodevedor)+',0,'+
          FormatarMoedaA(l_vlimposto     )+','+
          FormatarMoedaA(l_vlsaldocredor )+','+
          sqlregistra+');');
end;

function TLivroFiscal.Get_VlContabil(tbl:string):currency;
begin
  result := qit.q.fieldbyname(_vltotal).AsCurrency +
            qit.q.fieldbyname(_vlfrete).AsCurrency +
            qit.q.fieldbyname(_vlicmssubtrib).AsCurrency +
            qit.q.fieldbyname(_vlseguro).AsCurrency +
            qit.q.fieldbyname(_vloutdespesa).AsCurrency -
            //qit.q.fieldbyname(_vlirrf).AsCurrency -
            qit.q.fieldbyname(_vldesconto).AsCurrency;
  {
  if result = 0 then
  begin
    result := qit.q.fieldbyname(_vlbaseicms).AsCurrency;
  end;
  }
  if (tbl = _saida) or ((tbl = _entrada) and (qit.q.fieldbyname(_borecuperaipiespecial).AsString <> _S)) then
  begin
    result := result + qit.q.fieldbyname(_vlipi).AsCurrency;
  end;
end;

function TLivroFiscal.Get_cdcfop(tbl:string):string;
  function get_tipo:string;
  begin
    if tbl = _saida then result := 'Nota Fiscal'
                    else result := 'Compra';
  end;
begin
  result := qit.q.fieldbyname(_cdcfop).asstring;
  if itlp1a.cdcfop = '' then
  begin
    mensagem.Add('A '+get_tipo+' '+q.q.fieldbyname(_nu+_entrada).AsString+' está com algum item sem cfop.');
  end;
end;

procedure TLivroFiscal.ZerarImposto(var imposto: timposto);
begin
  imposto.cdcfop     := '';
  imposto.vl         := 0;
  imposto.vlbase     := 0;
  imposto.vloutras   := 0;
  imposto.vlisentas  := 0;
  imposto.vlbcst     := 0;
  imposto.vlst       := 0;
  imposto.al         := 0;
  imposto.vlcontabil := 0;
end;

function TLivroFiscal.formatarcnpjcpf(nucnpjcpf:string):string;
begin
  result := RemoverChar(RemoverChar(RemoverChar(nucnpjcpf, '.'), '/'), '-');
  result := copy(result, 1, 8)+copy(result, 11, 2);
end;

procedure TLivroFiscal.DadosPessoa(tabela:string='');
  function tp:string;
  begin
         if not q.q.fieldbyname(_cdcliente).IsNull    then result := _c
    else if not q.q.fieldbyname(_cdfornecedor).IsNull then result := _f
    else                                                   result := '';
  end;
  function gettipo(cdctetptomador:integer):string;
  begin
    case cdctetptomador of
      1 : result := _e;
      2 : result := _x;
      3 : result := _r;
      4 : result := _d;
      5 : result := _o;
    end;
  end;
  function get_participante: string;
  var
    tipo : string;
  begin
    tipo := '';
    tipo := gettipo(q.q.fieldbyname(_cdctetptomador).AsInteger);
    if tipo = '' then
    begin
      result := '';
      exit;
    end;
         if q.q.fieldbyname(_nucnpj+tipo).asstring <> '' then result := formatarcnpjcpf(removercaracteres(q.q.fieldbyname(_nucnpj+tipo).AsString))
    else if q.q.fieldbyname(_nucpf+tipo).asstring  <> '' then result := formatarcnpjcpf(removercaracteres(q.q.fieldbyname(_nucpf+tipo).AsString))
    else result := '';
  end;
  function get_participante_cte(tbl: string): string;
  var
    tipo : string;
  begin
    tipo := '';
    tipo := gettipo(q.q.fieldbyname(_cdctetptomador).AsInteger);
    if tipo = '' then
    begin
      result := '';
      exit;
    end;
    result := q.q.fieldbyname(_cd+tbl+tipo).AsString;
  end;
  function get_uf_cte(tbl: string): integer;
  var
    tipo : string;
  begin
    tipo := '';
    tipo := gettipo(q.q.fieldbyname(_cdctetptomador).AsInteger);
    if tipo = '' then
    begin
      result := 0;
      exit;
    end;
    result := q.q.fieldbyname(_cd+tbl+tipo).Asinteger;
  end;
begin
  if tabela = _cte then
  begin
    itlp1a.cduf         := get_uf_cte(_uf);
    itlp1a.tpsaient     := _s;
    itlp1a.nuserie      := _1;
    itlp1a.nudocumento  := q.q.fieldbyname(_cdcte).asstring;
    itlp1a.cdcliente    := get_participante_cte(_cliente);
    itlp1a.cdfornecedor := '';
    itlp1a.dtemissao    := getdtbanco(q.q.fieldbyname(_dtemissao).AsDateTime);
    itlp1a.dtentrada    := getdtbanco(q.q.fieldbyname(_dtemissao).AsDateTime);
    itlp1a.nuemitente   := get_participante;
    itlp1a.cdcfop       := q.q.fieldbyname(_cdcfop).asstring;
    exit;
  end;
  if tp = '' then
  begin
    nucnpjcpf    := '';
    itlp1a.cduf  := 0;
  end
  else
  begin
         if q.q.fieldbyname(_tppessoa+tp).AsString = _J then nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucnpj+tp).asstring)
    else if q.q.fieldbyname(_tppessoa+tp).asstring = _F then nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucpf+tp).asstring);
    itlp1a.cduf := q.q.fieldbyname(_cduf+tp).asinteger;
  end;

  if q.q.fieldbyname(_nuserie).asstring = '' then
  begin
    mensagem.Add('A nota '+q.q.fieldbyname(_nuentrada).asstring+' não possui o número de série.');
  end;
  itlp1a.tpsaient     := q.q.fieldbyname(_tpentsai).asstring;
  itlp1a.nuserie      := q.q.fieldbyname(_nuserie).asstring;
  itlp1a.nudocumento  := q.q.fieldbyname(_nuentrada).asstring;
  itlp1a.cdcliente    := q.q.fieldbyname(_cdcliente).asstring;
  itlp1a.cdfornecedor := q.q.fieldbyname(_cdfornecedor).asstring;
  itlp1a.dtemissao    := getdtbanco(q.q.fieldbyname(_dtemissao).AsDateTime);
  itlp1a.dtentrada    := getdtbanco(q.q.fieldbyname(_dtsaida).AsDateTime);
  itlp1a.nuemitente   := nucnpjcpf;
  itlp1a.cdcfop       := q.q.fieldbyname(_cdcfop).asstring;
end;

procedure TLivroFiscal.incluirItem(var lista:TSubTotalA; cdcfop: string; vlcontabil, vlbase, vlimposto, vlisentas, vloutras: Currency);
var
  x, i, max: Integer;
begin
  x := -1;
  max := high(lista);
  for i := 0 to max do
  begin
    if lista[i].cdcfop = cdcfop then
    begin
      x := i;
      break;
    end;
  end;
  if (x = -1) then
  begin
    if not ((max = 0) and (lista[0].cdcfop = ''))  then
    begin
      inc(max);
      setlength(lista, max + 1);
    end;
    x := max;
  end;
  lista[x].cdcfop     := cdcfop;
  lista[x].vlcontabil := lista[x].vlcontabil + vlcontabil;
  lista[x].vlbase     := lista[x].vlbase     + vlbase;
  lista[x].vlcredito  := lista[x].vlcredito  + vlimposto;
  lista[x].vlisentas  := lista[x].vlisentas  + vlisentas;
  lista[x].vloutras   := lista[x].vloutras   + vloutras;
end;

procedure TLivroFiscal.incluirItem(var lista:Titufp1a; nudocfiscalicms, tpsaient: string; vlcontabil, vlbase, vlimposto, vlisentas, vloutras: Currency);
var
  x, i, max: Integer;
begin
  if ((nudocfiscalicms = _02) or (nudocfiscalicms = _2d)) and (itlp1a.cduf = 0)then
  begin
    itlp1a.cduf := empresa.endereco.cduf;
  end;
  x   := -1;
  max := high(lista);
  for i := 0 to max do
  begin
    if (lista[i].cduf = itlp1a.cduf) and (lista[i].tpsaient = tpsaient) then
    begin
      x := i;
      break;
    end;
  end;
  if (x = -1) then
  begin
    if not ((max = 0) and (lista[0].cduf = 0))  then
    begin
      inc(max);
      setlength(lista, max + 1);
    end;
    x := max;
  end;
  lista[x].cduf       := itlp1a.cduf;
  lista[x].tpsaient   := tpsaient;
  lista[x].vlcontabil := lista[x].vlcontabil + vlcontabil;
  lista[x].vlbase     := lista[x].vlbase     + vlbase;
  lista[x].vlimposto  := lista[x].vlimposto  + vlimposto;
  lista[x].vlisentas  := lista[x].vlisentas  + vlisentas;
  lista[x].vloutras   := lista[x].vloutras   + vloutras;
end;

function TLivroFiscal.dis: string;
begin
  result := formatdatetime(_mm_dd_yyyy, dti);
end;

function TLivroFiscal.dfs: string;
begin
  result := formatdatetime(_mm_dd_yyyy, dtf);
end;

function TLivroFiscal.sqlregistra: string;
begin
  result := inttostr(usuario.cdusuario)+','+inttostr(usuario.cdusuario)+','+vgcdcomputador+','+vgcdcomputador+','+quotedstr(tsinsercaos)+','+quotedstr(tsinsercaos)+','+empresa.cdempresa.ToString;
end;

procedure TLivroFiscal.check_dtfinal;
begin
  if (dtf >= DtBanco) and (not ((FormatDateTime(_mm, dtf) = FormatDateTime(_mm, DtBanco)) and empresa.livro.bomesatual)) then
  begin
    MessageDlg('Não pode gerar livro fiscal antes de terminar o mês vigente.', mtInformation, [mbOK], 0);
   Abort;
  end;
end;

procedure TLivroFiscal.check_nfe_envida_sem_chave_nao_enviada;
var
  saida : TSaida;
begin
  saida := tsaida.create;
  try
    if saida.VerificarNFEEnviadaSemChave(dti, dtf) or saida.VerificarNFENaoEnviada(dti, dtf) then
    begin
      Abort;
    end;
  finally
    saida.Free;
  end;
end;

constructor TLivroFiscal.create;
begin
  Calcdif   := TDiferencialAL.Create;
end;

procedure TLivroFiscal.AjusteCiapi;
  procedure processarlp1a;
    function makesql2:string;
    var
      codigo : string;
    begin
      result := '';
      codigo := RetornaSQLString('select first 1 cdlp1a from lp1a where cdempresa='+empresa.cdempresa.ToString+' and cdlp1a<'+cdlp1a.ToString+' ORDER BY CDLP1A DESC');
      if codigo <> '' then
      begin
        result := 'select * '+
                  'from LP1ACIAPI '+
                  'where cdempresa='+empresa.cdempresa.ToString+' and boativado=''S'' and NUPARCELA<>48 and cdlp1a='+codigo;
      end;
    end;
  var
    q : TClasseQuery;
    vlajuste : Currency;
  begin
    q := TClasseQuery.Create;
    try
      q.q.sql.Text   := makesql2;
      if q.q.sql.Text = '' then
      begin
        Exit;
      end;
      q.q.Open;
      while not q.q.Eof do
      begin
        vlajuste := prcoeficienteciapi * q.q.fieldbyname(_vlicms).AsCurrency*(1/48);
        vlajusteciapi := vlajusteciapi + vlajuste;
        sql.Add('insert into LP1ACIAPI(CDLP1A,CDLP1ACIAPI,cdITENTRADA,cdITSAIDA,NUDOCUMENTO,NUPARCELA,boativado,VLAJUSTE,vlicms,vldeducao,'+
                'vlsaldo,CDPRODUTO,CDDIGITADO,DTEMISSAO,CDTPCIAPI,VLICMSSUBTRIB,VLICMSFRETE,VLICMSDIFALIQUOTA,NUITEM,CDINDIVIDUALBEM,CDTPMERCADORIAATIVO,'+
                'CDINDICADOREMITENTE,CDFORNECEDOR,CDCLIENTE,NUDOCFISCALICMS,NUSERIE,NUCHAVENFE,'+_sqlreg+
                cdlp1a.ToString+','+GerarCodigo(_lp1aciapi)+','+
                getnull(q.q.fieldbyname(_cditentrada).AsString)+','+
                getnull(q.q.fieldbyname(_cditsaida).AsString)+','+
                getnull(q.q.fieldbyname(_nudocumento).AsString)+','+
                IntToStr(q.q.fieldbyname(_nuparcela).AsInteger+1)+',''S'','+
                getcurrencys(vlajuste)+','+
                getcurrencys(q.q.fieldbyname(_vlicms).ascurrency)+','+
                getcurrencys(q.q.fieldbyname(_vldeducao).ascurrency+
                vlajuste)+','+
                getcurrencys(q.q.fieldbyname(_vlsaldo).AsCurrency-vlajuste)+','+
                q.q.fieldbyname(_cdproduto).AsString+','+
                q.q.fieldbyname(_cddigitado).AsString+','+
                getdtbanco(q.q.fieldbyname(_dtemissao).asdatetime)+','+
                q.q.fieldbyname(_cdtpciapi).AsString+','+
                getcurrencys(q.q.fieldbyname(_vlicmssubtrib).AsCurrency)+','+
                getcurrencys(q.q.fieldbyname(_vlicmsfrete).AsCurrency)+','+
                getcurrencys(q.q.fieldbyname(_vlicmsdifaliquota).AsCurrency)+','+
                q.q.fieldbyname(_nuitem).AsString+','+
                q.q.fieldbyname(_cdindividualbem).AsString+','+
                q.q.fieldbyname(_cdtpmercadoriaativo).AsString+','+
                q.q.fieldbyname(_cdindicadoremitente).AsString+','+
                getnull(q.q.fieldbyname(_cdfornecedor).AsString)+','+
                getnull(q.q.fieldbyname(_cdcliente).AsString)+','+
                QuotedStr(q.q.fieldbyname(_nudocfiscalicms).AsString)+','+
                QuotedStr(q.q.fieldbyname(_nuserie).AsString)+','+
                QuotedStr(q.q.fieldbyname(_nuchavenfe).AsString)+','+
                sqlregistra+');');
        q.q.Next;
      end;
    finally
      FreeAndNil(q);
    end;
  end;
  procedure processar(tbl:string);
    function makesql(tbl:string):string;
    begin
      result := 'select i.cd'+tbl+
                      ',t.nu'+tbl+
                      ',i.cdit'+tbl+
                      ',t.nudocfiscalicms nudocfiscalicms'+tbl+
                      ',t.nuchavenfe nuchavenfe'+tbl+
                      ',i.vlicms'+
                      ',i.cdproduto'+
                      ',t.dtemissao'+
                      ',t.dtsaida';
      if tbl = _entrada then result := result + ',T.CDFORNECEDOR,t.nuserie nuserie'+tbl
                        else result := result + ',T.CDCLIENTE,s.nuserie nuserie'+tbl;
      result := result +
                ' from '+tbl+' t '+
                'inner join it'+tbl+' i on i.cd'+tbl+'=t.cd'+tbl+' and t.cdempresa=i.cdempresa ';
      if tbl = _saida then
      begin
        result := result + 'left join serie s on s.cdserie=t.cdserie and s.cdempresa=t.cdempresa ';
      end;
      result := result + 'where t.cdempresa='+empresa.cdempresa.ToString+' and i.BORECUPERAAJUSTEICMS=''S'' and ';
           if tbl = _saida   then result := Result + _dtemissao
      else if tbl = _entrada then result := result + _dtsaida;
      result := result + ' between '+getdtbanco(dti)+' and '+getdtbanco(dtf);
    end;
  var
    q : TClasseQuery;
    texto : string;
    vlajuste : Currency;
  begin
    rec := 0;
    q   := TClasseQuery.create;
    try
      q.q.open(makesql(tbl));
      while not q.q.Eof do
      begin
        vlajuste      := prcoeficienteciapi * q.q.fieldbyname(_vlicms).AsCurrency*(1/48);
        vlajusteciapi := vlajusteciapi + vlajuste;
        texto := 'insert into LP1ACIAPI(CDLP1A,CDLP1ACIAPI,NUDOCUMENTO,NUPARCELA,BOATIVADO,VLAJUSTE,vlicms,vldeducao,vlsaldo,'+
                 'CDPRODUTO,cddigitado,DTEMISSAO,cdITENTRADA,cdITSAIDA,CDFORNECEDOR,CDCLIENTE,CDINDICADOREMITENTE,NUDOCFISCALICMS,NUSERIE,NUCHAVENFE,CDTPCIAPI,'+
                 'VLICMSSUBTRIB,VLICMSFRETE,VLICMSDIFALIQUOTA,NUITEM,CDINDIVIDUALBEM,CDTPMERCADORIAATIVO,'+_sqlreg+
                 cdlp1a.ToString+','+
                 GerarCodigo(_lp1aciapi)+','+
                 q.q.fieldbyname(_nu+tbl).asstring+',1,''S'','+
                 getcurrencys(vlajuste)+','+
                 getcurrencys(q.q.fieldbyname(_vlicms).AsCurrency)+','+
                 getcurrencys(vlajuste)+','+
                 getcurrencys(q.q.fieldbyname(_vlicms).AsCurrency-vlajuste)+','+
                 q.q.fieldbyname(_cdproduto).asstring+','+
                 q.q.fieldbyname(_cdproduto).asstring+','+
                 getdtbanco(q.q.fieldbyname(_dtemissao).asdatetime)+',';
        if tbl = _entrada then
        begin
          texto := texto +
                   q.q.fieldbyname(_cditentrada).asstring+
                   ',null,'+
                   q.q.fieldbyname(_cdfornecedor).AsString+
                   ',null,1,'+
                   QuotedStr(q.q.fieldbyname(_nudocfiscalicms+tbl).AsString)+','+
                   QuotedStr(q.q.fieldbyname(_nuserie+tbl).AsString)+','+
                   QuotedStr(q.q.fieldbyname(_nuchavenfe+tbl).AsString)+',';
        end
        else if tbl = _saida then
        begin
          texto := texto +
                   'null,'+
                   q.q.fieldbyname(_cditsaida).asstring+
                   ',null,'+
                   q.q.fieldbyname(_cdcliente).AsString+',0,'+
                   QuotedStr(q.q.fieldbyname(_nudocfiscalicms+tbl).AsString)+','+
                   QuotedStr(q.q.fieldbyname(_nuserie+tbl).AsString)+','+
                   QuotedStr(q.q.fieldbyname(_nuchavenfe+tbl).AsString)+',';
        end;
        texto := texto +'2,0,0,0,1,'+q.q.fieldbyname(_cdproduto).asstring+',1,'+sqlregistra+');';
        sql.add(texto);
        q.q.Next;
      end;
    finally
      freeandnil(q);
    end;
  end;
begin
  vlajusteciapi := 0;
  processar(_entrada);
  processar(_saida);
  processarlp1a;
end;

destructor TLivroFiscal.destroy;
begin
  calcdif.free;
  inherited;
end;

procedure TLivroFiscal.AtivoPISCOFINS;
  function makesql:string;
  begin
    result := 'select cdativopiscofins,nuparcela,vldeducao,alpis,alcofins,vlsaldo '+
              'from ativopiscofins '+
              'where cdempresa='+empresa.cdempresa.ToString+' and nuparcela<qtparcela and dtinicio<='+GetDtBanco(dti)+' and dttermino>='+GetDtBanco(dti);
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create;
  try
    q.q.open(makesql);
    while not q.q.Eof do
    begin
      sql.Add('insert into LP1AATIVOPISCOFINS(CDLP1A,CDLP1AATIVOPISCOFINS,CDATIVOPISCOFINS,NUPARCELA,VLBASEPIS,VLPIS,VLBASECOFINS,VLCOFINS,VLDEDUCAO,VLSALDO,'+_sqlreg+
              cdlp1a.ToString+','+GerarCodigo(_LP1AATIVOPISCOFINS)+','+
              q.q.fieldbyname(_cdativopiscofins).AsString+','+
              inttostr(q.q.fieldbyname(_nuparcela).Asinteger+1)+','+
              getcurrencys(q.q.fieldbyname(_vldeducao).AsCurrency)+','+
              getcurrencys(q.q.fieldbyname(_vldeducao).AsCurrency*q.q.fieldbyname(_alpis).AsFloat/100)+','+
              getcurrencys(q.q.fieldbyname(_vldeducao).AsCurrency)+','+
              getcurrencys(q.q.fieldbyname(_vldeducao).AsCurrency*q.q.fieldbyname(_alcofins).AsFloat/100)+','+
              getcurrencys(q.q.fieldbyname(_vldeducao).AsCurrency)+','+
              getcurrencys(q.q.fieldbyname(_vlsaldo).AsCurrency-q.q.fieldbyname(_vldeducao).AsCurrency)+','+sqlregistra+');');
      sql.add('update ativopiscofins set nuparcela=nuparcela+1,vlsaldo=vlsaldo-vldeducao where cdempresa='+empresa.cdempresa.ToString+' and cdativopiscofins='+q.q.fieldbyname(_cdativopiscofins).AsString+';');
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

function TLivroFiscal.TabelaCTE: Boolean;
var
  cdctei : Integer;
begin
  cdctei := 0;
  q.q.close;
  q.q.open(makesqlcte);
  if q.q.RecordCount = 0 then
  begin
    result := false;
    exit;
  end;
  set_gauge(_CTE, 3, q.q);
  itlp1a.nmespecie := uppercase(_cte);
  while not q.q.eof do
  begin
    incrementar_gauge(_cte, q.q);

    if cdctei = 0 then cdctei := q.q.fieldbyname(_cdcte).AsInteger
                  else Inc(cdctei);
    if cdctei < q.q.fieldbyname(_cdcte).AsInteger then
    begin
      mensagem.Add('O(s) cte(s) esta(m) faltando: '+inttostr(cdctei)+' até '+inttostr(q.q.fieldbyname(_cdcte).AsInteger-1)+'.');
      cdctei := q.q.fieldbyname(_cdcte).AsInteger;
    end;
    if q.q.fieldbyname(_cdstcte).AsString = _1 then
    begin
      mensagem.Add('O cte '+q.q.fieldbyname(_cdcte).AsString+' não foi enviado.');
    end;
    if q.q.fieldbyname(_cdstcte).AsString = _4 then
    begin
      DadosPessoa(_cte);
      inserir_item_vazio(q.q.fieldbyname(_cdcte).AsString, '', _1, _1, uppercase(_cte+' '+_inutilizado), '', '');
      inserir_item_vazio(q.q.fieldbyname(_cdcte).AsString, '', _2, _1, uppercase(_cte+' '+_inutilizado), '', '');
      q.q.next;
      continue;
    end;
    if q.q.fieldbyname(_cdstcte).AsString = _2 then
    begin
      DadosPessoa(_cte);
      inserir_item_vazio(q.q.fieldbyname(_cdcte).AsString, '', _1, _1, uppercase(_cte+' '+_cancelado), '', '');
      inserir_item_vazio(q.q.fieldbyname(_cdcte).AsString, '', _2, _1, uppercase(_cte+' '+_cancelado), '', '');
      q.q.next;
      continue;
    end;


    DadosPessoa(_cte);
    itlp1a.tpsaient     := _s;
    itlp1a.cdtpimposto  := _1;
    itlp1a.dsobservacao := '';
    itlp1a.cdtpop1a     := _1;
    itlp1a.cdentrada    := '';
    itlp1a.cdsaida      := '';
    itlp1a.cdcte        := q.q.fieldbyname(_cdcte).AsString;
    itlp1a.cdcfop       := q.q.fieldbyname(_cdcfop).AsString;
    itlp1a.vlcontabil   := q.q.fieldbyname(_vlservico).AsCurrency;
    itlp1a.vlbase       := q.q.fieldbyname(_vlbaseicms).AsCurrency;
    itlp1a.vlbcst       := 0;
    itlp1a.aliquota     := q.q.fieldbyname(_alicms).Asfloat;
    itlp1a.vlimposto    := q.q.fieldbyname(_vlicms).AsCurrency;
    itlp1a.vlst         := 0;
    itlp1a.vlisentas    := 0;
    itlp1a.vloutras     := 0;
    inseriritemlivro;
    incluirItem     (itufp1a  , _55,       _s, itlp1a.vlcontabil,   itlp1a.vlbase, itlp1a.vlimposto, itlp1a.vlisentas, itlp1a.vloutras);
    incluirItem     (cfops    , itlp1a.cdcfop, itlp1a.vlcontabil,   itlp1a.vlbase, itlp1a.vlimposto, itlp1a.vlisentas, itlp1a.vloutras);
    incluirItemUF   (subtotals, itlp1a.cdcfop, itlp1a.vlcontabil, icmscfop.vlbase, itlp1a.vlimposto, itlp1a.vlisentas, itlp1a.vloutras);

    itlp1a.cdtpimposto  := _2;
    itlp1a.cdtpop1a     := _1;
    itlp1a.vlcontabil   := q.q.fieldbyname(_vlservico).AsCurrency;
    itlp1a.vlbase       := 0;
    itlp1a.vlbcst       := 0;
    itlp1a.aliquota     := 0;
    itlp1a.vlimposto    := 0;
    itlp1a.vlst         := 0;
    itlp1a.vlisentas    := 0;
    itlp1a.vloutras     := q.q.fieldbyname(_vlservico).AsCurrency;
    inseriritemlivro;
    incluirItem     (itufp1a   , _55,       _s, itlp1a.vlcontabil,   itlp1a.vlbase, itlp1a.vlimposto, itlp1a.vlisentas, itlp1a.vloutras);
    incluirItem     (cfopis    , itlp1a.cdcfop, itlp1a.vlcontabil,   itlp1a.vlbase, itlp1a.vlimposto, itlp1a.vlisentas, itlp1a.vloutras);
    incluirItemUF   (subtotalis, itlp1a.cdcfop, itlp1a.vlcontabil, icmscfop.vlbase, itlp1a.vlimposto, itlp1a.vlisentas, itlp1a.vloutras);

    q.q.next;
  end;
  result := true;
end;

end.
{unit classeLivroFiscal;

interface

uses
  System.Actions, System.UITypes,
  gauges, dialogs, classes, controls, forms, sysutils, math, db,
  sqlexpr, Provider, DBClient,
  uRichEdit, utipo, ustrings, uregistro, udatahora, uconstantes,
  uprogressbar,
  classeretornasql, classeexecutasql, classeusuario, classeempresa, classegerar, classequery,
  classeaplicacao, classeregistrainformacao, classeDifAliquota, ClasseLp1a,
  ClasseAtivoPisCofins;

type
  TITLp1a = record
    cdsaida: integer;
    cdentrada : integer;
    cdcte : integer;
    cdcliente : string;
    cdfornecedor : string;
    cdcfop : integer;
    cdtpop1a : integer;
    cdtpimposto : integer;
    nuemitente : string;
    nudocumento : integer;
    nuserie : string;
    tpsaient : string;
    dtemissao : TDate;
    dtentrada : TDate;
    cduf : integer;
    dsobservacao : string;
    nmespecie : string;
    vlcontabil : currency;
    vlbase : currency;
    vlbcst : currency;
    aliquota : double;
    vlimposto : currency;
    vlst : currency;
    vlisentas : currency;
    vloutras: currency;
  end;
  TLivroFiscal = class(TObject)
  private
    c_pulo : TClientdataset;
    itlp1a : TITLp1a;
    ipicfop : timposto;
    icmscfop : timposto;
    ipi : timposto;
    icms : timposto;
    nucnpjcpf: string;
    vlajusteciapi : Currency;
    vlimpostos : Currency;
    vlimpostoe : Currency;
    vlimpostois : Currency;
    vlimpostoie : Currency;
    vldif : Currency;
    prcoeficienteciapi : Double;
    Calcdif: TDiferencialAL;
    subtotalie : titapuflist;
    subtotalis : titapuflist;
    subtotals : titapuflist;
    subtotale : titapuflist;
    cfope : TSubTotalA;
    cfops : TSubTotalA;
    cfopie : TSubTotalA;
    cfopis : TSubTotalA;
    cfop : tacumula;
    mensagem : TStrings;
    sql : TStrings;
    gau: tgauge;
    gau1: tgauge;
    lp1a : TLp1a;
    procedure AjusteCiapi;
    procedure AtivoPISCOFINS;
    procedure ApuracaoUF;
    function formatarcnpjcpf(nucnpjcpf:string):string;
    procedure InicializarValores;
    procedure ItemApuracao;
    procedure ItemUF;
    procedure RegistroApuracao;
    function Get_VlContabil(qit: TClasseQuery):currency;
    function Get_cdcfop(q, qit: TClasseQuery; tbl:string):integer;
    function saldocredorperiodoanterior(cdtpimposto:string):currency;
    procedure SomarValores;
    function TabelaEntrada:boolean;
    function TabelaSaida: boolean;
    procedure TabelaCTE;
    procedure ZerarImposto(var imposto: timposto);
    procedure RealizarRecalculoCustoMedio;
    procedure set_field_c_pulo;
    procedure inserir_registro_c_pulo(q:TClasseQuery);
    procedure verificar_pulo_nota;
    procedure ItemApuracaoEntradaIcms;
    procedure ItemApuracaoSaidaIcms;
    procedure ItemApuracaoEntradaIPI;
    procedure ItemApuracaoSaidaIPI;
    function GetCdcfopGetTipo(tbl: string): string;
    procedure AjusteCiapiProcessarLp1a;
    procedure AjusteCiapiProcessar(tbl: string);
    function AjusteCiapiProcessarMakesql(tbl: string): string;
    function AjusteCiapiProcessarLp1aMakesql: string;
    function DadosPessoaTP(q: TClasseQuery):string;
    function DadosPessoaGetTipo(cdctetptomador: integer): string;
    function DadosPessoaGetParticipante(q: TClasseQuery):string;
    function DadosPessoaGetParticipanteCTE(q: TClasseQuery; tbl: string): string;
    function DadosPessoaGetUFCTE(q: TClasseQuery; tbl: string): integer;
  public
    constructor create;
    destructor destroy;override;
    function InserirLivro:string;
    class function PermiteAlterarNota(dtemissao: TDate):boolean;
    class function UltimoDia:TDate;
  end;

implementation

uses classesaida, classerecalculocustomedio;

class function TLivroFiscal.UltimoDia:TDate;
begin
  result := RetornaSQLData('select max(dtfinal) from lp1a where cdempresa='+empresa.cdempresa.tostring);
end;

class function TLivroFiscal.PermiteAlterarNota(dtemissao: TDate):boolean;
begin
  result := RetornaSQLInteger('select count(*) from lp1a where cdempresa='+empresa.cdempresa.tostring+' and dtinicio<='+getdtbanco(dtemissao)+' and dtfinal>='+getdtbanco(dtemissao)) = 0;
end;

procedure TLivroFiscal.RealizarRecalculoCustoMedio;
var
  recalculoCustoMedio : TRecalculoCustoMedio;
  linha, cdproduto, cdgrupo: TStrings;
begin
  if not empresa.livro.borecalcularcustomedio then
  begin
    Exit;
  end;
  recalculoCustoMedio := TRecalculoCustoMedio.create;
  linha     := TStringList.Create;
  cdproduto := tstringlist.Create;
  cdgrupo   := tstringlist.Create;
  try
    recalculoCustoMedio.Executar(linha, cdproduto, cdgrupo, lp1a.dtinicio, DtBanco, _dtsaida, false, false, false);
  finally
    freeandnil(recalculoCustoMedio);
    freeandnil(linha);
    freeandnil(cdproduto);
    freeandnil(cdgrupo);
  end;
end;

procedure TLivroFiscal.ItemUF;
var
  i : integer;
begin
  gau.maxvalue  := lp1a.ItUfp1a.count-1;
  gau1.Progress := 4;
  for I := 0 to lp1a.ItUfp1a.count -1 do
  begin
    gau.progress := i;
    application.ProcessMessages;
    if lp1a.ItUfp1a.Items[i].cduf <> 0 then
    begin
      sql.Add(lp1a.ItUfp1a.Items[i].Insert(true));
    end;
  end;
end;

function TLivroFiscal.InserirLivro:string;
begin
  lp1a.dtinicio := empresa.livro.dtiniciolivro;
  lp1a.dtfinal := Ultimo_Dia_Mes(lp1a.dtinicio);
  if RetornaSQLString('select max(cdlp1a) from lp1a where cdempresa='+empresa.cdempresa.tostring) <> '' then // verificar se existe registro no livro
  begin
    lp1a.dtfinal := RetornaSQLData('select max(dtfinal) from lp1a where cdempresa='+empresa.cdempresa.tostring); // caso haja buscar a data do último livro
    lp1a.dtinicio := lp1a.dtfinal + 1;                                              // determina a data do atual livro a partir da data do livro anterior
    lp1a.dtfinal := Ultimo_Dia_Mes(lp1a.dtinicio);
  end;
  if (lp1a.dtfinal >= DtBanco) and (not ((FormatDateTime(_mm, lp1a.dtfinal) = FormatDateTime(_mm, DtBanco)) and empresa.livro.bomesatual)) then
  begin
    MessageDlg('Não pode gerar livro fiscal antes de terminar o mês vigente.', mtInformation, [mbOK], 0);
   Abort;
  end;
  if TSaida.VerificarNFEEnviadaSemChave(lp1a.dtinicio, lp1a.dtfinal) or Tsaida.VerificarNFENaoEnviada(lp1a.dtinicio, lp1a.dtfinal) then
  begin
    Abort;
  end;
  RealizarRecalculoCustoMedio;
  sql      := tstringlist.create;
  mensagem := tstringlist.create;
  c_pulo := TClientDataSet.Create(nil);
  try
    frmprogressbar := tfrmprogressbar.create(nil);
    try
      gau  := frmprogressbar.gau;
      gau1 := frmprogressbar.gau1;
      gau1.MaxValue := 12;
      frmprogressbar.setgau1;
      frmprogressbar.Show;
      frmprogressbar.pnl.caption := 'Inicializar Valores';
      InicializarValores;
      frmprogressbar.pnl.caption := 'Criar registro do livro';
      lp1a.cdlp1a := qgerar.GerarCodigo(_lp1a);
      lp1a.cdtpescrituracao := 0;
      sql.add(lp1a.Insert(true));
      frmprogressbar.pnl.caption := 'Processar entrada';
      TabelaEntrada;
      frmprogressbar.pnl.caption := 'Processar Saída';
      TabelaSaida;
      frmprogressbar.pnl.caption := 'Processar CTE';
      TabelaCTE;
      frmprogressbar.pnl.caption := 'Processar UF';
      ItemUF;
      frmprogressbar.pnl.caption := 'Processar Apuração';
      ItemApuracao;
      frmprogressbar.pnl.caption := 'Processar Apuração UF';
      ApuracaoUF;
      frmprogressbar.pnl.caption := 'Processar Ajuste Ciapi';
      AjusteCiapi;
      frmprogressbar.pnl.caption := 'Processar Registro Apuração';
      RegistroApuracao;
      frmprogressbar.pnl.caption := 'Processar Ativo PIS/COFINS';
      AtivoPISCOFINS;
    finally
      FreeAndNil(frmprogressbar);
    end;
    if mensagem.Count > 0 then
    begin
      ExibirSaidaVideo(mensagem);
      if not Empresa.livro.boignorarerro then
      begin
        abort;
      end;
    end;
    ExecutaScript(sql);
  finally;
    freeandnil(sql);
    freeandnil(mensagem);
    freeandnil(c_pulo);
  end;
  result := inttostr(lp1a.cdlp1a);
end;

procedure TLivroFiscal.ApuracaoUF;
var
  i : integer;
begin
  gau.maxvalue := subtotale.Count;
  gau1.Progress := 9;
  for I := 0 to subtotale.Count - 1 do
  begin
    gau.progress := i;
    application.ProcessMessages;
    subtotale.Items[i].cdtpimposto := 1;
    subtotale.Items[i].tpsaient := _e;
    sql.add(subtotale.Items[i].Insert(true));
    vlimpostoe := vlimpostoe + subtotale.Items[i].vlimposto;
  end;
  gau.maxvalue := subtotals.Count;
  gau1.Progress := 10;
  for I := 0 to subtotals.Count - 1 do
  begin
    gau.progress := i;
    application.ProcessMessages;
    subtotals.Items[i].cdtpimposto := 1;
    subtotals.Items[i].tpsaient := _s;
    sql.add(subtotals.Items[i].Insert(true));
    vlimpostos := vlimpostos + subtotals.Items[i].vlimposto;
  end;
  gau.maxvalue := subtotalie.Count;
  gau1.Progress := 11;
  for I := 0 to subtotalie.Count - 1 do
  begin
    gau.progress := i;
    application.ProcessMessages;
    subtotalie.Items[i].cdtpimposto := 2;
    subtotalie.Items[i].tpsaient := _e;
    sql.add(subtotalie.Items[i].Insert(true));
    vlimpostoie := vlimpostoie + subtotalie.Items[i].vlimposto;
  end;
  gau.maxvalue := subtotalis.Count - 1;
  gau1.Progress := 12;
  for I := 0 to subtotalis.Count - 1 do
  begin
    gau.progress := i;
    application.ProcessMessages;
    subtotalis.Items[i].cdtpimposto := 2;
    subtotalis.Items[i].tpsaient := _s;
    sql.add(subtotalis.Items[i].Insert(true));
    vlimpostois := vlimpostois + subtotalis.Items[i].vlimposto;
  end;
end;

procedure TLivroFiscal.ItemApuracaoEntradaIcms;
var
  maximo, c, i : integer;
  vloutrosdebitos, vloutroscreditos: Currency;
begin
  if not (high(cfope) > -1) then
  begin
    Exit;
  end;
  gau.maxvalue  := high(cfope);
  gau1.Progress := 5;
  for I := 0 to high(cfope) do
  begin
    gau.progress := i;
    application.ProcessMessages;
    cfop.valor       := 0;
    maximo           := calcdif.max(_vlcfop);
    if Calcdif.error then
    begin
      for C := 0 to maximo do
      begin
        if Calcdif.lerindicevalor(_vlcfop,_string,C) = cfope[i].cdcfop then
        begin
          cfop.valor := cfop.valor + Calcdif.lerindicevalor(_vlcfop,_valor,C);
        end;
        if cfop.valor > 0 then
        begin
          vloutrosdebitos  := cfop.valor;
        end
        else if cfop.valor < 0 then
        begin
          vloutroscreditos := -cfop.valor;
        end;
      end;
    end;
    with lp1a.itapuracao.New do
    begin
      cditapuracao := qgerar.GerarCodigo(_itapuracao);
      cdlp1a := lp1a.cdlp1a;
      cdtpimposto := 1;
      cdcfop := cfope[i].cdcfop;
      tpsaient := _e;
      vlcontabil := cfope[i].vlcontabil;
      vlbase := cfope[i].vlbase;
      vloutras := cfope[i].vloutras;
      vlimposto := cfope[i].vlimposto;
      vlisentas := cfope[i].vlisentas;
      vloutroscreditos := vloutroscreditos;
      vloutrosdebitos := vloutrosdebitos;
      sql.Add(Insert(true));
    end;
  end;
end;

procedure TLivroFiscal.ItemApuracaoSaidaIcms;
var
  i : integer;
  vlsaida, vltributada : Currency;
begin
  vlsaida     := 0;
  vltributada := 0;
  if not (high(cfops) > -1) then
  begin
    Exit;
  end;
  gau.maxvalue  := high(cfops);
  gau1.Progress := 6;
  for I := 0 to high(cfops) do
  begin
    gau.progress := i;
    application.ProcessMessages;
    if qregistro.BooleandoCodigo(_cfop, cfops[i].cdcfop, _botributadaciapi) then
    begin
      vltributada := vltributada + cfops[i].vlcontabil;
    end;
    if qregistro.BooleandoCodigo(_cfop, cfops[i].cdcfop, _bosaidaciapi) then
    begin
      vlsaida := vlsaida + cfops[i].vlcontabil;
    end;
    with lp1a.itapuracao.New do
    begin
      cditapuracao := qgerar.GerarCodigo(_itapuracao);
      cdlp1a := lp1a.cdlp1a;
      cdtpimposto := 1;
      cdcfop := cfops[i].cdcfop;
      tpsaient := _s;
      vlcontabil := cfops[i].vlcontabil;
      vlbase := cfops[i].vlbase;
      vloutras := cfops[i].vloutras;
      vlimposto := cfops[i].vlimposto;
      vlisentas := cfops[i].vlisentas;
      sql.Add(insert(true));
    end;
  end;
  if vlsaida = 0 then
  begin
    prcoeficienteciapi := 0
  end
  else
  begin
    prcoeficienteciapi := vltributada/vlsaida;
  end;
  sql.Add('update lp1a '+
          'set vltributadaciapi='+getcurrencys(vltributada)+',vlsaidaciapi='+getcurrencys(vlsaida)+',PRCOEFICIENTECIAPI='+getcurrencys(prcoeficienteciapi)+' '+
          'where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+inttostr(lp1a.cdlp1a)+';');
end;

procedure TLivroFiscal.ItemApuracaoEntradaIPI;
var
  i : integer;
begin
  if not (high(cfopie) > -1) then
  begin
    Exit;
  end;
  gau.maxvalue  := high(cfopie);
  gau1.Progress := 7;
  for I := 0 to high(cfopie) do
  begin
    gau.progress := i;
    application.ProcessMessages;
    with lp1a.itapuracao.New do
    begin
      cditapuracao := qgerar.GerarCodigo(_itapuracao);
      cdlp1a := lp1a.cdlp1a;
      cdtpimposto := 2;
      cdcfop := cfopie[i].cdcfop;
      tpsaient := _e;
      vlcontabil := cfopie[i].vlcontabil;
      vlbase := cfopie[i].vlbase;
      vloutras := cfopie[i].vloutras;
      vlimposto := cfopie[i].vlimposto;
      vlisentas := cfopie[i].vlisentas;
      sql.add(insert(true));
    end;
  end;
end;

procedure TLivroFiscal.ItemApuracaoSaidaIPI;
var
  i : integer;
begin
  if not (high(cfopis) > -1) then
  begin
    Exit;
  end;
  gau.progress  := high(cfopis);
  gau1.Progress := 8;
  for I := 0 to high(cfopis) do
  begin
    gau.progress := i;
    application.ProcessMessages;
    with lp1a.itapuracao.New do
    begin
      cditapuracao := qgerar.GerarCodigo(_itapuracao);
      cdlp1a := lp1a.cdlp1a;
      cdtpimposto := 2;
      cdcfop := cfopis[i].cdcfop;
      tpsaient := _s;
      vlcontabil := cfopis[i].vlcontabil;
      vlbase := cfopis[i].vlbase;
      vloutras := cfopis[i].vloutras;
      vlimposto := cfopis[i].vlimposto;
      vlisentas := cfopis[i].vlisentas;
      sql.add(insert(true));
    end;
  end;
end;

procedure TLivroFiscal.ItemApuracao;
begin
  ItemApuracaoEntradaIcms;
  ItemApuracaoSaidaIcms;
  ItemApuracaoEntradaIPI;
  ItemApuracaoSaidaIPI;
end;

procedure TLivroFiscal.InicializarValores;
begin
  vlimpostoe   := 0;
  vlimpostos   := 0;
  vlimpostoie  := 0;
  vlimpostois  := 0;
  gau.Visible  := true;
  gau1.Visible := true;
  calcdif.inicializa;
end;

procedure TLivroFiscal.SomarValores;
begin
  icmscfop.vlcontabil := icmscfop.vlcontabil + icms.vlcontabil;
  icmscfop.vlbase     := icmscfop.vlbase     + icms.vlbase;
  icmscfop.vl         := icmscfop.vl         + icms.vl;
  icmscfop.al         := icms.al;
  icmscfop.vloutras   := icmscfop.vloutras   + icms.vloutras;
  icmscfop.vlisentas  := icmscfop.vlisentas  + icms.vlisentas;
  icmscfop.vlbcst     := icmscfop.vlbcst     + icms.vlbcst;
  icmscfop.vlst       := icmscfop.vlst       + icms.vlst;
  icmscfop.cdcfop     := icms.cdcfop;
  ipicfop.vlcontabil := ipicfop.vlcontabil + ipi.vlcontabil;
  ipicfop.vlbase     := ipicfop.vlbase     + ipi.vlbase;
  ipicfop.vl         := ipicfop.vl         + ipi.vl;
  ipicfop.vloutras   := ipicfop.vloutras   + ipi.vloutras;
  ipicfop.cdcfop     := ipi.cdcfop;
  if ipi.al > ipicfop.al then
  begin
    ipicfop.al := ipi.al;
  end;
end;

procedure TLivroFiscal.set_field_c_pulo;
begin
  c_pulo.FieldDefs.Clear;
  c_pulo.FieldDefs.Add(_nuserie, ftString, 3);
  c_pulo.FieldDefs.Add(_nudocfiscalicms, ftString, 2);
  c_pulo.FieldDefs.Add(_nuentrada, ftinteger);
  c_pulo.IndexDefs.Add(_pk , _nudocfiscalicms+';'+_nuserie+';'+_nuentrada, []);
  c_pulo.IndexName := _pk;
  c_pulo.CreateDataSet;
end;

procedure TLivroFiscal.inserir_registro_c_pulo(q:TClasseQuery);
begin
  c_pulo.Insert;
  c_pulo.FieldByName(_nuserie).AsString         := q.q.fieldbyname(_nuserie).AsString;
  c_pulo.FieldByName(_nuentrada).AsInteger      := q.q.fieldbyname(_nuentrada).AsInteger;
  c_pulo.FieldByName(_nudocfiscalicms).AsString := q.q.fieldbyname(_nudocfiscalicms).AsString;
  c_pulo.Post;
end;

procedure TLivroFiscal.verificar_pulo_nota;
var
  nuserie : string;
  i, nuentrada : Integer;
begin
  c_pulo.First;
  nuserie := '';
  gau1.Progress    := 1;
  itlp1a.nmespecie := uppercase(_NF);
  gau.MaxValue     := c_pulo.RecordCount;
  gau.progress     := 0;
  while not c_pulo.Eof do
  begin
    gau.progress := gau.progress + 1;
    frmprogressbar.pnl.caption := 'Procesar '+'Pulo de nota '+inttostr(nuentrada)+' - Registro '+inttostr(c_pulo.RecNo)+' de '+inttostr(c_pulo.RecordCount);
    application.ProcessMessages;
    if c_pulo.FieldByName(_nudocfiscalicms).AsString = _2d then
    begin
      c_pulo.Next;
      Continue;
    end;
    if nuserie <> c_pulo.FieldByName(_nuserie).AsString then
    begin
      nuserie   := c_pulo.FieldByName(_nuserie).AsString;
      nuentrada := c_pulo.FieldByName(_nuentrada).AsInteger;
    end;
    i := 0;
    while nuentrada < c_pulo.FieldByName(_nuentrada).AsInteger do
    begin
      inc(i);
      if i > 100 then
      begin
        mensagem.Add('Pulo de nota acima de 500 números. Favor verificar lançamento até o número '+c_pulo.FieldByName(_nuentrada).asstring+'.');
        break;
      end;
      gau.progress := gau.progress + 1;
      frmprogressbar.pnl.caption := 'Procesar '+'Pulo de nota '+inttostr(nuentrada)+' - Registro '+inttostr(c_pulo.RecNo)+' de '+inttostr(c_pulo.RecordCount);
      application.ProcessMessages;
      mensagem.Add('Pulo de nota '+inttostr(nuentrada)+' na série '+nuserie+'.');
      Inc(nuentrada);
    end;
    Inc(nuentrada);
    c_pulo.Next;
  end;
end;

function TLivroFiscal.TabelaSaida:boolean;
var
  q, qit : TClasseQuery;
  w, k, h, maximus, o: Integer;
begin
  q := TClasseQuery.create('select s.dtsaida'+
                                 ',se.nuserie'+
                                 ',s.nusaida nuentrada'+
                                 ',s.dtemissao'+
                                 ',s.vltotal'+
                                 ',s.cdcfop'+
                                 ',S.NUDOCFISCALICMS'+
                                 ',s.nustdocumento'+
                                 ',s.nuchavenfe'+
                                 ',s.vlbaseicms'+
                                 ',s.alicms'+
                                 ',s.vlicms'+
                                 ',s.vlouticms'+
                                 ',s.vlicmsret'+
                                 ',s.vlicmssubtrib'+
                                 ',s.vlbaseicmssubtrib'+
                                 ',s.alicmssubtrib'+
                                 ',s.vlbaseipi'+
                                 ',s.alipi'+
                                 ',s.vlipi'+
                                 ',s.vlisentaicms'+
                                 ',s.vloutipi'+
                                 ',s.vlisentaipi'+
                                 ',s.cdsaida'+
                                 ',ufc.sguf sgufc'+
                                 ',uff.sguf sguff'+
                                 ',s.cdcfop'+
                                 ',c.tppessoa tppessoac'+
                                 ',c.cdcliente'+
                                 ',c.nucnpj nucnpjc'+
                                 ',c.nucpf nucpfc'+
                                 ',c.cduf cdufc'+
                                 ',f.tppessoa tppessoaf'+
                                 ',f.cdfornecedor'+
                                 ',f.nucnpj nucnpjf'+
                                 ',f.nucpf nucpff'+
                                 ',f.cduf cduff'+
                                 ',s.tpentsai'+
                                 ',s.vlfrete'+
                                 ',s.vlfretesub'+
                                 ',s.nustdocumento'+
                                 ',i.vlicms vlicmsfretesub '+
                           'from saida s '+
                           'LEFT join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
                           'left join itsaidafretesub i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
                           'left join serie se on sE.cdserie=s.cdserie and s.cdempresa=se.cdempresa '+
                           'left join cliente c on c.cdcliente=s.cdcliente and s.cdempresa=c.cdempresa '+
                           'left join uf ufc on ufc.cduf=c.cduf '+
                           'left join fornecedor f on f.cdfornecedor=s.cdfornecedor and s.cdempresa=f.cdempresa '+
                           'left join uf uff on uff.cduf=f.cduf '+
                           'where se.boservico<>''S'' and s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+getdtbanco(lp1a.dtinicio)+' and '+getdtbanco(lp1a.dtfinal)+' '+
                           'order by se.nuserie,s.nusaida');
  qit := TClasseQuery.create;
  try
    set_field_c_pulo;
    gau1.Progress    := 2;
    itlp1a.nmespecie := uppercase(_NF);
    gau.MaxValue     := q.q.RecordCount;
    gau.progress     := 0;
    while not q.q.eof do
    begin
      inserir_registro_c_pulo(q);
      gau.progress := gau.progress + 1;
      frmprogressbar.pnl.caption := 'Procesar '+_nota+' '+_fiscal+' - Registro '+inttostr(q.q.RecNo)+' de '+inttostr(q.q.RecordCount);
      application.ProcessMessages;
      if (q.q.FieldByName(_nudocfiscalicms).AsString = _55) and
         ((q.q.FieldByName(_nuchavenfe).AsString = '') or (Length(q.q.FieldByName(_nuchavenfe).AsString) <> 44)) and
         ((q.q.FieldByName(_nustdocumento).AsString = _00) or (q.q.FieldByName(_nustdocumento).AsString = _99) or
          (q.q.FieldByName(_nustdocumento).AsString = _02) or (q.q.FieldByName(_nustdocumento).AsString = _06)) then
      begin
        mensagem.add('A nota fiscal de saída '+q.q.fieldbyname(_nuentrada).asstring+' não foi enviada. Envie a nota para a receita ou mude a situação do documento!');
      end;
      if q.q.FieldByName(_nustdocumento).AsString = _05 then
      begin
        if DadosPessoaTP(q) = '' then
        begin
          nucnpjcpf    := '';
          itlp1a.cduf  := 0;
        end
        else
        begin
          if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).AsString = _J then
          begin
            nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucnpj+DadosPessoaTP(q)).asstring)
          end
          else if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).asstring = _F then
          begin
            nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucpf+DadosPessoaTP(q)).asstring);
          end;
          itlp1a.cduf := q.q.fieldbyname(_cduf+DadosPessoaTP(q)).asinteger;
        end;
        if q.q.fieldbyname(_nuserie).asstring = '' then
        begin
          mensagem.Add('A nota '+q.q.fieldbyname(_nuentrada).asstring+' não possui o número de série.');
        end;
        with lp1a.itlp1a.New do // icms
        begin
          cdlp1a       := lp1a.cdlp1a;
          cditlp1a     := qgerar.GerarCodigo(_itlp1a);
          cdcfop       := 0;
          cdtpimposto  := 1;
          cdcte        := 0;
          cdentrada    := 0;
          cdsaida      := q.q.fieldbyname(_cdsaida).Asinteger;
          cdcliente    := '';
          cdfornecedor := '';
          cduf         := 0;
          cdtpop1a     := 1;
          tpsaient     := '';
          dtentrada    := 0;
          nmespecie    := itlp1a.nmespecie;
          nuserie      := q.q.fieldbyname(_nuserie).asstring;
          dtemissao    := 0;
          vlcontabil   := 0;
          vlbase       := 0;
          aliquota     := 0;
          vlimposto    := 0;
          vlisentas    := 0;
          vloutras     := 0;
          vlbaseicmssubtrib := 0;
          vlicmssubtrib := 0;
          dsobservacao  := uppercase(_NOTA+' '+_fiscal+' '+_inutilizada);
          nudocumento   := q.q.fieldbyname(_nuentrada).asInteger;
          nuemitente    := '';
          sql.add(insert(true));
        end;
        with lp1a.itlp1a.New do // ipi
        begin
          cdlp1a       := lp1a.cdlp1a;
          cditlp1a     := qgerar.GerarCodigo(_itlp1a);
          cdcfop       := 0;
          cdtpimposto  := 2;
          cdcte        := 0;
          cdentrada    := 0;
          cdsaida      := q.q.fieldbyname(_cdsaida).Asinteger;
          cdcliente    := '';
          cdfornecedor := '';
          cduf         := 0;
          cdtpop1a     := 1;
          tpsaient     := '';
          dtentrada    := 0;
          nmespecie    := itlp1a.nmespecie;
          nuserie      := q.q.fieldbyname(_nuserie).asstring;
          dtemissao    := 0;
          vlcontabil   := 0;
          vlbase       := 0;
          aliquota     := 0;
          vlimposto    := 0;
          vlisentas    := 0;
          vloutras     := 0;
          vlbaseicmssubtrib := 0;
          vlicmssubtrib := 0;
          dsobservacao  := uppercase(_NOTA+' '+_fiscal+' '+_inutilizada);
          nudocumento   := q.q.fieldbyname(_nuentrada).asInteger;
          nuemitente    := '';
          sql.add(insert(true));
        end;
        q.q.next;
        continue;
      end;
      if (q.q.FieldByName(_nustdocumento).AsString = _02) or (q.q.FieldByName(_nustdocumento).AsString = _03) then
      begin
        if DadosPessoaTP(q) = '' then
        begin
          nucnpjcpf    := '';
          itlp1a.cduf  := 0;
        end
        else
        begin
          if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).AsString = _J then
          begin
            nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucnpj+DadosPessoaTP(q)).asstring)
          end
          else if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).asstring = _F then
          begin
            nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucpf+DadosPessoaTP(q)).asstring);
          end;
          itlp1a.cduf := q.q.fieldbyname(_cduf+DadosPessoaTP(q)).asinteger;
        end;
        if q.q.fieldbyname(_nuserie).asstring = '' then
        begin
          mensagem.Add('A nota '+q.q.fieldbyname(_nuentrada).asstring+' não possui o número de série.');
        end;
        with lp1a.itlp1a.New do // icms
        begin
          cdlp1a       := lp1a.cdlp1a;
          cditlp1a     := qgerar.GerarCodigo(_itlp1a);
          cdcfop       := 0;
          cdtpimposto  := 1;
          cdcte        := 0;
          cdentrada    := 0;
          cdsaida      := q.q.fieldbyname(_cdsaida).Asinteger;
          cdcliente    := '';
          cdfornecedor := '';
          cduf         := 0;
          cdtpop1a     := 1;
          tpsaient     := '';
          dtentrada    := 0;
          nmespecie    := itlp1a.nmespecie;
          nuserie      := q.q.fieldbyname(_nuserie).asstring;
          dtemissao    := 0;
          vlcontabil   := 0;
          vlbase       := 0;
          aliquota     := 0;
          vlimposto    := 0;
          vlisentas    := 0;
          vloutras     := 0;
          vlbaseicmssubtrib := 0;
          vlicmssubtrib := 0;
          dsobservacao  := uppercase(_NOTA+' '+_fiscal+' '+_cancelada);
          nudocumento   := q.q.fieldbyname(_nuentrada).asInteger;
          nuemitente    := '';
          sql.add(insert(true));
        end;
        with lp1a.itlp1a.New do // ipi
        begin
          cdlp1a       := lp1a.cdlp1a;
          cditlp1a     := qgerar.GerarCodigo(_itlp1a);
          cdcfop       := 0;
          cdtpimposto  := 2;
          cdcte        := 0;
          cdentrada    := 0;
          cdsaida      := q.q.fieldbyname(_cdsaida).Asinteger;
          cdcliente    := '';
          cdfornecedor := '';
          cduf         := 0;
          cdtpop1a     := 1;
          tpsaient     := '';
          dtentrada    := 0;
          nmespecie    := itlp1a.nmespecie;
          nuserie      := q.q.fieldbyname(_nuserie).asstring;
          dtemissao    := 0;
          vlcontabil   := 0;
          vlbase       := 0;
          aliquota     := 0;
          vlimposto    := 0;
          vlisentas    := 0;
          vloutras     := 0;
          vlbaseicmssubtrib := 0;
          vlicmssubtrib := 0;
          dsobservacao  := uppercase(_NOTA+' '+_fiscal+' '+_cancelada);
          nudocumento   := q.q.fieldbyname(_nuentrada).asInteger;
          nuemitente    := '';
          sql.add(insert(true));
        end;
        q.q.next;
        continue;
      end;
      if q.q.FieldByName(_nustdocumento).AsString = _04 then
      begin
        if DadosPessoaTP(q) = '' then
        begin
          nucnpjcpf    := '';
          itlp1a.cduf  := 0;
        end
        else
        begin
          if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).AsString = _J then
          begin
            nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucnpj+DadosPessoaTP(q)).asstring)
          end
          else if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).asstring = _F then
          begin
            nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucpf+DadosPessoaTP(q)).asstring);
          end;
          itlp1a.cduf := q.q.fieldbyname(_cduf+DadosPessoaTP(q)).asinteger;
        end;
        if q.q.fieldbyname(_nuserie).asstring = '' then
        begin
          mensagem.Add('A nota '+q.q.fieldbyname(_nuentrada).asstring+' não possui o número de série.');
        end;
        with lp1a.itlp1a.New do // icms
        begin
          cdlp1a       := lp1a.cdlp1a;
          cditlp1a     := qgerar.GerarCodigo(_itlp1a);
          cdcfop       := 0;
          cdtpimposto  := 1;
          cdcte        := 0;
          cdentrada    := 0;
          cdsaida      := q.q.fieldbyname(_cdsaida).Asinteger;
          cdcliente    := '';
          cdfornecedor := '';
          cduf         := 0;
          cdtpop1a     := 1;
          tpsaient     := '';
          dtentrada    := 0;
          nmespecie    := itlp1a.nmespecie;
          nuserie      := q.q.fieldbyname(_nuserie).asstring;
          dtemissao    := 0;
          vlcontabil   := 0;
          vlbase       := 0;
          aliquota     := 0;
          vlimposto    := 0;
          vlisentas    := 0;
          vloutras     := 0;
          vlbaseicmssubtrib := 0;
          vlicmssubtrib := 0;
          dsobservacao  := uppercase(_NOTA+' '+_fiscal+' '+_denegada);
          nudocumento   := q.q.fieldbyname(_nuentrada).asInteger;
          nuemitente    := '';
          sql.add(insert(true));
        end;
        with lp1a.itlp1a.New do // ipi
        begin
          cdlp1a       := lp1a.cdlp1a;
          cditlp1a     := qgerar.GerarCodigo(_itlp1a);
          cdcfop       := 0;
          cdtpimposto  := 2;
          cdcte        := 0;
          cdentrada    := 0;
          cdsaida      := q.q.fieldbyname(_cdsaida).Asinteger;
          cdcliente    := '';
          cdfornecedor := '';
          cduf         := 0;
          cdtpop1a     := 1;
          tpsaient     := '';
          dtentrada    := 0;
          nmespecie    := itlp1a.nmespecie;
          nuserie      := q.q.fieldbyname(_nuserie).asstring;
          dtemissao    := 0;
          vlcontabil   := 0;
          vlbase       := 0;
          aliquota     := 0;
          vlimposto    := 0;
          vlisentas    := 0;
          vloutras     := 0;
          vlbaseicmssubtrib := 0;
          vlicmssubtrib := 0;
          dsobservacao  := uppercase(_NOTA+' '+_fiscal+' '+_denegada);
          nudocumento   := q.q.fieldbyname(_nuentrada).asInteger;
          nuemitente    := '';
          sql.add(insert(true));
        end;
        q.q.next;
        continue;
      end;
      if q.q.fieldbyname(_cdcfop).isnull then
      begin
        mensagem.add('A nota fiscal de '+_saida+' '+q.q.fieldbyname(_nuentrada).asstring+' não foi preenchido o CFOP. Preencha o CFOP para continuar!');
      end;
      if q.q.fieldbyname(_cduf+_c).isnull and (not q.q.fieldbyname(_cdcliente).isnull) then
      begin
        mensagem.add('A nota fiscal de '+_saida+' '+q.q.fieldbyname(_nuentrada).asstring+' o cliente '+q.q.fieldbyname(_cdcliente).asstring+' não tem a UF preenchida. Preencha a UF para continuar!');
      end;
      if q.q.fieldbyname(_cduf+_f).isnull and (not q.q.fieldbyname(_cdfornecedor).isnull) then
      begin
        mensagem.add('A nota fiscal de '+_saida+' '+q.q.fieldbyname(_nuentrada).asstring+' o Fornecedor '+q.q.fieldbyname(_cdfornecedor).asstring+' não tem a UF preenchida. Preencha a UF para continuar!');
      end;
      if q.q.fieldbyname(_nustdocumento).AsString = '' then
      begin
        mensagem.Add('A nota fiscal de '+_saida+' '+q.q.fieldbyname(_nuentrada).asstring+' está com a situação do documento vazio. Preencha a situação do documento para continuar!');
      end;
      if (q.q.fieldbyname(_nudocfiscalicms).AsString <> _02) and (q.q.fieldbyname(_nudocfiscalicms).AsString <> _2D) and q.q.fieldbyname(_cdcliente).IsNull and q.q.fieldbyname(_cdfornecedor).IsNull then
      begin
        mensagem.add('A nota fiscal de saída '+q.q.fieldbyname(_nuentrada).asstring+' não possui cliente e nem fornecedor. Altere a nota fiscal para continuar!');
      end;
      if DadosPessoaTP(q) = '' then
      begin
        nucnpjcpf    := '';
        itlp1a.cduf  := 0;
      end
      else
      begin
        if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).AsString = _J then
        begin
          nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucnpj+DadosPessoaTP(q)).asstring)
        end
        else if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).asstring = _F then
        begin
          nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucpf+DadosPessoaTP(q)).asstring);
        end;
        itlp1a.cduf := q.q.fieldbyname(_cduf+DadosPessoaTP(q)).asinteger;
      end;
      if q.q.fieldbyname(_nuserie).asstring = '' then
      begin
        mensagem.Add('A nota '+q.q.fieldbyname(_nuentrada).asstring+' não possui o número de série.');
      end;
      itlp1a.tpsaient     := q.q.fieldbyname(_tpentsai).asstring;
      itlp1a.nuserie      := q.q.fieldbyname(_nuserie).asstring;
      itlp1a.nudocumento  := q.q.fieldbyname(_nuentrada).asInteger;
      itlp1a.cdcliente    := q.q.fieldbyname(_cdcliente).asstring;
      itlp1a.cdfornecedor := q.q.fieldbyname(_cdfornecedor).asstring;
      itlp1a.dtemissao    := q.q.fieldbyname(_dtemissao).AsDateTime;
      itlp1a.dtentrada    := q.q.fieldbyname(_dtsaida).AsDateTime;
      itlp1a.nuemitente   := nucnpjcpf;
      itlp1a.cdcfop       := q.q.fieldbyname(_cdcfop).asInteger;
      itlp1a.cdsaida := q.q.fieldbyname(_cdsaida).Asinteger;
      itlp1a.cdentrada := 0;
      zerarImposto(ipicfop);
      zerarImposto(icmscfop);
      zerarImposto(ipi);
      zerarImposto(icms);
      qit.q.close;
      qit.q.open('select i.cditsaida'+
                       ',i.cdproduto'+
                       ',i.qtitem'+
                       ',i.alicms'+
                       ',i.alipi'+
                       ',i.vltotal'+
                       ',i.vldesconto'+
                       ',i.vlbaseicms'+
                       ',i.vlbaseicmssubtrib'+
                       ',i.vlicms'+
                       ',i.vlicmssubtrib'+
                       ',i.vlbaseipi'+
                       ',i.vlipi'+
                       ',i.vlfrete'+
                       ',i.vlseguro'+
                       ',i.vloutdespesa'+
                       ',i.borecuperaicms'+
                       ',i.borecuperaipi'+
                       ',I.NUSTICMS'+
                       ',i.cdcfop'+
                       ',i.cdsaida '+
                 'from saida s '+
                 'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
                 'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                 'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
                 'where s.cdempresa='+empresa.cdempresa.tostring+' and s.cdsaida='+q.q.fieldbyname(_cdsaida).asstring+' '+
                 'order by i.alicms desc,i.cdcfop');
      if qit.q.RecordCount = 0 then
      begin
        if q.q.fieldbyname(_nustdocumento).AsString = _00 then
        begin
          mensagem.add('A nota fiscal de saída '+q.q.fieldbyname(_nuentrada).asstring+' não possui itens. Corrija a nota para prosseguir!');
        end;
        icmscfop.cdcfop     := itlp1a.cdcfop;
        icmscfop.vlcontabil := q.q.fieldbyname(_vltotal).AsCurrency;
        icmscfop.vlbase     := q.q.fieldbyname(_vlbaseicms).AsCurrency;
        icmscfop.al         := q.q.fieldbyname(_alicms).AsCurrency;
        icmscfop.vl         := q.q.fieldbyname(_vlicms).AsCurrency;
        icmscfop.vlbcst     := q.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency;
        icmscfop.vlst       := q.q.fieldbyname(_vlicmssubtrib).AsCurrency;
        icmscfop.vloutras   := icmscfop.vlcontabil - icmscfop.vlbase;
        if icmscfop.vloutras < 0 then
        begin
          icmscfop.vloutras := 0;
        end;
        ipicfop.vlcontabil  := q.q.fieldbyname(_vltotal).AsCurrency;
        ipicfop.vlbase      := q.q.fieldbyname(_vlbaseipi).AsCurrency;
        ipicfop.vl          := q.q.fieldbyname(_vlipi).AsCurrency;
        ipicfop.vloutras := ipi.vlcontabil - ipicfop.vlbase - ipicfop.vl;
        if ipicfop.vloutras < 0 then
        begin
          ipicfop.vloutras := 0;
        end;
        if (q.q.fieldbyname(_tpentsai).asstring = _E) and (not q.q.fieldbyname(_vlicmssubtrib).isnull) then
        begin
          icmscfop.vlbase := q.q.fieldbyname(_vlbaseicmssubtrib).ascurrency;
          icmscfop.vl     := q.q.fieldbyname(_vlicmssubtrib).ascurrency;
          icmscfop.al     := q.q.fieldbyname(_alicmssubtrib).ascurrency;
        end
      end
      else
      begin
        while not qit.q.eof do
        begin
          icms.cdcfop     := get_cdcfop(q, qit, _saida);
          icms.borecupera := qit.q.fieldbyname(_borecuperaicms).AsString = _S;
          icms.al         := qit.q.fieldbyname(_alicms).AsCurrency;
          icms.vlbase     := qit.q.fieldbyname(_vlbaseicms).AsCurrency;
          icms.vl         := qit.q.fieldbyname(_vlicms).AsCurrency;
          icms.vlbcst     := qit.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency;
          icms.vlst       := qit.q.fieldbyname(_vlicmssubtrib).AsCurrency;
          icms.vlcontabil := get_vlcontabil(qit);
          icms.vlisentas := 0;
          icms.vloutras  := 0;
          if ((q.q.fieldbyname(_tpentsai).asstring = _E)  and (not icms.borecupera)) or (icms.vl = 0) then
          begin
            icms.vlbase := 0;
            icms.vl     := 0;
            icms.al     := 0;
            if (qit.q.fieldbyname(_nusticms).asstring = _30) or (qit.q.fieldbyname(_nusticms).asstring = _40) or (qit.q.fieldbyname(_nusticms).asstring = _41) then
            begin
              icms.vlisentas := icms.vlcontabil
            end
            else
            begin
              icms.vloutras  := icms.vlcontabil;
            end;
          end
          else
          begin
            if (qit.q.fieldbyname(_nusticms).asstring = _30) or (qit.q.fieldbyname(_nusticms).asstring = _40) or (qit.q.fieldbyname(_nusticms).asstring = _41) then
            begin
              icms.vlisentas := icms.vlcontabil - icms.vlbase
            end
            else
            begin
              icms.vloutras  := icms.vlcontabil - icms.vlbase;
            end;
          end;
          if (icms.vloutras < 0) and (icms.vlcontabil > 0) then
          begin
            mensagem.Add('O produto '+qit.q.fieldbyname(_cdproduto).asstring+' - '+NomedoCodigo(_produto, qit.q.fieldbyname(_cdproduto).asstring)+#13+
                         'na nota   '+q.q.fieldbyname(_nuentrada).AsString+
                         ' está com o valor da base do ICMS('+getcurrencys(icms.vlbase)+') maior do que o valor contábil('+getcurrencys(icms.vlcontabil)+').');
          end;
          if icms.vloutras < 0 then
          begin
            icms.vloutras := 0;
          end;
          if icms.vlisentas < 0 then
          begin
            icms.vlisentas := 0;
          end;
          ipi.cdcfop     := Get_cdcfop(q, qit, _saida);
          ipi.borecupera := qit.q.fieldbyname(_borecuperaipi).AsString  = _S;
          ipi.al         := qit.q.fieldbyname(_alipi).AsCurrency;
          ipi.vlbase     := qit.q.fieldbyname(_vlbaseipi).AsCurrency;
          ipi.vl         := qit.q.fieldbyname(_vlipi).AsCurrency;
          ipi.vlcontabil := get_vlcontabil(qit);
          if ((q.q.fieldbyname(_tpentsai).asstring = _E)  and (not ipi.borecupera)) or (ipi.vl = 0) then
          begin
            ipi.vlbase := 0;
            ipi.vl     := 0;
            ipi.al     := 0;
          end;
          ipi.vloutras := ipi.vlcontabil - ipi.vlbase - ipi.vl;
          if ipi.vloutras < 0 then
          begin
            ipi.vloutras := 0;
          end;
          if ((icms.cdcfop <> icmscfop.cdcfop) or (icms.al <> icmscfop.al)) and (icmscfop.cdcfop <> 0) then // Verifica se o cfop é o mesmo do item anterior
          begin
            if q.q.fieldbyname(_tpentsai).asstring = _E then
            begin
              itlp1a.cdtpimposto  := 1; // icms
              itlp1a.dsobservacao := '';
              itlp1a.cdtpop1a     := 1;
              if icmscfop.vl <= 0 then
              begin
                itlp1a.cdtpop1a := 3;
              end;
              itlp1a.cdcfop       := icmscfop.cdcfop;
              itlp1a.vlcontabil   := icmscfop.vlcontabil;
              itlp1a.vlbase       := icmscfop.vlbase;
              itlp1a.vlbcst       := icmscfop.vlbcst;
              itlp1a.aliquota     := icmscfop.al;
              itlp1a.vlimposto    := icmscfop.vl;
              itlp1a.vlst         := icmscfop.vlst;
              itlp1a.vlisentas    := 0;
              itlp1a.vloutras     := icmscfop.vloutras;
              with lp1a.itlp1a.New do
              begin
                cdlp1a       := lp1a.cdlp1a;
                cditlp1a     := qgerar.GerarCodigo(_itlp1a);
                cdcfop       := itlp1a.cdcfop;
                cdtpimposto  := itlp1a.cdtpimposto;
                cdcte        := itlp1a.cdcte;
                cdentrada    := itlp1a.cdentrada;
                cdsaida      := itlp1a.cdsaida;
                cdcliente    := itlp1a.cdcliente;
                cdfornecedor := itlp1a.cdfornecedor;
                cduf         := itlp1a.cduf;
                cdtpop1a     := itlp1a.cdtpop1a;
                tpsaient     := itlp1a.tpsaient;
                dtentrada    := itlp1a.dtentrada;
                nmespecie    := itlp1a.nmespecie;
                nuserie      := itlp1a.nuserie;
                dtemissao    := itlp1a.dtemissao;
                vlcontabil   := itlp1a.vlcontabil;
                vlbase       := itlp1a.vlbase;
                aliquota     := itlp1a.aliquota;
                vlimposto    := itlp1a.vlimposto;
                vlisentas    := itlp1a.vlisentas;
                vloutras     := itlp1a.vloutras;
                vlbaseicmssubtrib := itlp1a.vlbcst;
                vlicmssubtrib := itlp1a.vlst;
                dsobservacao  := itlp1a.DSOBSERVACAO;
                nudocumento   := itlp1a.NUDOCUMENTO;
                nuemitente    := itlp1a.nuemitente;
                sql.add(insert(true));
              end;
              if ((q.q.fieldbyname(_nudocfiscalicms).AsString = _02) or (q.q.fieldbyname(_nudocfiscalicms).AsString = _2d)) and (itlp1a.cduf = 0)then
              begin
                itlp1a.cduf := empresa.endereco.cduf;
              end;
              w := lp1a.ItUfp1a.ObterIndice(itlp1a.cduf, _e);
              if w = -1 then
              begin
                lp1a.ItUfp1a.New;
                w := lp1a.ItUfp1a.count-1;
                lp1a.ItUfp1a.items[w].cdlp1a := lp1a.cdlp1a;
              end;
              lp1a.ItUfp1a.items[w].cduf       := itlp1a.cduf;
              lp1a.ItUfp1a.items[w].tpsaient   := _e;
              lp1a.ItUfp1a.items[w].vlcontabil := lp1a.ItUfp1a.items[w].vlcontabil + icmscfop.vlcontabil;
              lp1a.ItUfp1a.items[w].vlbase     := lp1a.ItUfp1a.items[w].vlbase     + icmscfop.vlbase;
              lp1a.ItUfp1a.items[w].vlimposto  := lp1a.ItUfp1a.items[w].vlimposto  + icmscfop.vl;
              lp1a.ItUfp1a.items[w].vlisentas  := lp1a.ItUfp1a.items[w].vlisentas  + itlp1a.vlisentas;
              lp1a.ItUfp1a.items[w].vloutras   := lp1a.ItUfp1a.items[w].vloutras   + icmscfop.vloutras;
              k := -1;
              maximus := high(cfope);
              for h := 0 to maximus do
              begin
                if cfope[h].cdcfop = icmscfop.cdcfop then
                begin
                  k := h;
                  break;
                end;
              end;
              if (k = -1) then
              begin
                if not ((maximus = 0) and (cfope[0].cdcfop = 0))  then
                begin
                  inc(maximus);
                  setlength(cfope, maximus + 1);
                end;
                k := maximus;
              end;
              cfope[k].cdcfop     := icmscfop.cdcfop;
              cfope[k].vlcontabil := cfope[k].vlcontabil + icmscfop.vlcontabil;
              cfope[k].vlbase     := cfope[k].vlbase     + icmscfop.vlbase;
              cfope[k].vlimposto  := cfope[k].vlimposto  + icmscfop.vl;
              cfope[k].vlisentas  := cfope[k].vlisentas  + itlp1a.vlisentas;
              cfope[k].vloutras   := cfope[k].vloutras   + icmscfop.vloutras;
              if icmscfop.cdcfop = 0 then
              begin
                exit;
              end;
              o := strtoint(copy(inttostr(icmscfop.cdcfop), 1, 1)) - 1;
              if o > 2 then
              begin
                o := o - 4;
              end;
              subtotale.Items[o].vlcontabil := subtotale.Items[o].vlcontabil + icmscfop.vlcontabil;
              subtotale.Items[o].vlbase     := subtotale.Items[o].vlbase     + icmscfop.vlbase;
              subtotale.Items[o].vlimposto  := subtotale.Items[o].vlimposto  + icmscfop.vl;
              subtotale.Items[o].vlisentas  := subtotale.Items[o].vlisentas  + itlp1a.vlisentas;
              subtotale.Items[o].vloutras   := subtotale.Items[o].vloutras   + icmscfop.vloutras;
              itlp1a.cdtpimposto  := 2; // ipi
              if ipicfop.vl <= 0 then
              begin
                itlp1a.cdtpop1a  := 3;
              end;
              itlp1a.vlbase     := ipicfop.vlbase;
              itlp1a.vlbcst     := 0;
              itlp1a.aliquota   := ipicfop.al;
              itlp1a.vlimposto  := ipicfop.vl;
              itlp1a.vlst       := 0;
              itlp1a.vloutras   := ipicfop.vloutras;
              with lp1a.itlp1a.New do
              begin
                cdlp1a       := lp1a.cdlp1a;
                cditlp1a     := qgerar.GerarCodigo(_itlp1a);
                cdcfop       := itlp1a.cdcfop;
                cdtpimposto  := itlp1a.cdtpimposto;
                cdcte        := itlp1a.cdcte;
                cdentrada    := itlp1a.cdentrada;
                cdsaida      := itlp1a.cdsaida;
                cdcliente    := itlp1a.cdcliente;
                cdfornecedor := itlp1a.cdfornecedor;
                cduf         := itlp1a.cduf;
                cdtpop1a     := itlp1a.cdtpop1a;
                tpsaient     := itlp1a.tpsaient;
                dtentrada    := itlp1a.dtentrada;
                nmespecie    := itlp1a.nmespecie;
                nuserie      := itlp1a.nuserie;
                dtemissao    := itlp1a.dtemissao;
                vlcontabil   := itlp1a.vlcontabil;
                vlbase       := itlp1a.vlbase;
                aliquota     := itlp1a.aliquota;
                vlimposto    := itlp1a.vlimposto;
                vlisentas    := itlp1a.vlisentas;
                vloutras     := itlp1a.vloutras;
                vlbaseicmssubtrib := itlp1a.vlbcst;
                vlicmssubtrib := itlp1a.vlst;
                dsobservacao  := itlp1a.DSOBSERVACAO;
                nudocumento   := itlp1a.NUDOCUMENTO;
                nuemitente    := itlp1a.nuemitente;
                sql.add(insert(true));
              end;
              k := -1;
              maximus := high(cfopie);
              for h := 0 to maximus do
              begin
                if cfopie[h].cdcfop = ipicfop.cdcfop then
                begin
                  k := h;
                  break;
                end;
              end;
              if (k = -1) then
              begin
                if not ((maximus = 0) and (cfopie[0].cdcfop = 0))  then
                begin
                  inc(maximus);
                  setlength(cfopie, maximus + 1);
                end;
                k := maximus;
              end;
              cfopie[k].cdcfop     := ipicfop.cdcfop;
              cfopie[k].vlcontabil := cfopie[k].vlcontabil + ipicfop.vlcontabil;
              cfopie[k].vlbase     := cfopie[k].vlbase     + ipicfop.vlbase;
              cfopie[k].vlimposto  := cfopie[k].vlimposto  + ipicfop.vl;
              cfopie[k].vlisentas  := cfopie[k].vlisentas  + itlp1a.vlisentas;
              cfopie[k].vloutras   := cfopie[k].vloutras   + ipicfop.vloutras;
              if ipicfop.cdcfop = 0 then
              begin
                exit;
              end;
              o := strtoint(copy(inttostr(ipicfop.cdcfop), 1, 1)) - 1;
              if o > 2 then
              begin
                o := o - 4;
              end;
              subtotalie.Items[o].vlcontabil := subtotalie.Items[o].vlcontabil + ipicfop.vlcontabil;
              subtotalie.Items[o].vlbase     := subtotalie.Items[o].vlbase     + ipicfop.vlbase;
              subtotalie.Items[o].vlimposto  := subtotalie.Items[o].vlimposto  + ipicfop.vl;
              subtotalie.Items[o].vlisentas  := subtotalie.Items[o].vlisentas  + itlp1a.vlisentas;
              subtotalie.Items[o].vloutras   := subtotalie.Items[o].vloutras   + ipicfop.vloutras;
            end
            else if q.q.fieldbyname(_tpentsai).asstring = _S then
            begin
              itlp1a.dsobservacao := '';
              if q.q.fieldbyname(_vlicmsfretesub).AsCurrency > 0 then
              begin
                itlp1a.dsobservacao := 'ICMS ST Frete '+formatfloat(__moeda, q.q.fieldbyname(_vlicmsfretesub).ascurrency);
              end;
              itlp1a.cdtpimposto  := 1; // icms
              itlp1a.cdtpop1a     := 1;
              itlp1a.cdcfop       := icmscfop.cdcfop;
              itlp1a.vlcontabil   := icmscfop.vlcontabil;
              itlp1a.vlbase       := icmscfop.vlbase;
              itlp1a.vlbcst       := icmscfop.vlbcst;
              itlp1a.aliquota     := icmscfop.al;
              itlp1a.vlimposto    := icmscfop.vl;
              itlp1a.vlst         := icmscfop.vlst;
              itlp1a.vlisentas    := icmscfop.vlisentas;
              itlp1a.vloutras     := icmscfop.vloutras;
              with lp1a.itlp1a.New do
              begin
                cdlp1a       := lp1a.cdlp1a;
                cditlp1a     := qgerar.GerarCodigo(_itlp1a);
                cdcfop       := itlp1a.cdcfop;
                cdtpimposto  := itlp1a.cdtpimposto;
                cdcte        := itlp1a.cdcte;
                cdentrada    := itlp1a.cdentrada;
                cdsaida      := itlp1a.cdsaida;
                cdcliente    := itlp1a.cdcliente;
                cdfornecedor := itlp1a.cdfornecedor;
                cduf         := itlp1a.cduf;
                cdtpop1a     := itlp1a.cdtpop1a;
                tpsaient     := itlp1a.tpsaient;
                dtentrada    := itlp1a.dtentrada;
                nmespecie    := itlp1a.nmespecie;
                nuserie      := itlp1a.nuserie;
                dtemissao    := itlp1a.dtemissao;
                vlcontabil   := itlp1a.vlcontabil;
                vlbase       := itlp1a.vlbase;
                aliquota     := itlp1a.aliquota;
                vlimposto    := itlp1a.vlimposto;
                vlisentas    := itlp1a.vlisentas;
                vloutras     := itlp1a.vloutras;
                vlbaseicmssubtrib := itlp1a.vlbcst;
                vlicmssubtrib := itlp1a.vlst;
                dsobservacao  := itlp1a.DSOBSERVACAO;
                nudocumento   := itlp1a.NUDOCUMENTO;
                nuemitente    := itlp1a.nuemitente;
                sql.add(insert(true));
              end;
              if ((q.q.fieldbyname(_nudocfiscalicms).AsString = _02) or (q.q.fieldbyname(_nudocfiscalicms).AsString = _2d)) and (itlp1a.cduf = 0)then
              begin
                itlp1a.cduf := empresa.endereco.cduf;
              end;
              w := lp1a.ItUfp1a.ObterIndice(itlp1a.cduf, _s);
              if w = -1 then
              begin
                lp1a.ItUfp1a.New;
                w := lp1a.ItUfp1a.count-1;
                lp1a.ItUfp1a.items[w].cdlp1a := lp1a.cdlp1a;
              end;
              lp1a.ItUfp1a.items[w].cduf       := itlp1a.cduf;
              lp1a.ItUfp1a.items[w].tpsaient   := _s;
              lp1a.ItUfp1a.items[w].vlcontabil := lp1a.ItUfp1a.items[w].vlcontabil + icmscfop.vlcontabil;
              lp1a.ItUfp1a.items[w].vlbase     := lp1a.ItUfp1a.items[w].vlbase     + icmscfop.vlbase;
              lp1a.ItUfp1a.items[w].vlimposto  := lp1a.ItUfp1a.items[w].vlimposto  + icmscfop.vl;
              lp1a.ItUfp1a.items[w].vlisentas  := lp1a.ItUfp1a.items[w].vlisentas  + itlp1a.vlisentas;
              lp1a.ItUfp1a.items[w].vloutras   := lp1a.ItUfp1a.items[w].vloutras   + icmscfop.vloutras;
              k := -1;
              maximus := high(cfops);
              for h := 0 to maximus do
              begin
                if cfops[h].cdcfop = icmscfop.cdcfop then
                begin
                  k := h;
                  break;
                end;
              end;
              if (k = -1) then
              begin
                if not ((maximus = 0) and (cfops[0].cdcfop = 0))  then
                begin
                  inc(maximus);
                  setlength(cfops, maximus + 1);
                end;
                k := maximus;
              end;
              cfops[k].cdcfop     := icmscfop.cdcfop;
              cfops[k].vlcontabil := cfops[k].vlcontabil + icmscfop.vlcontabil;
              cfops[k].vlbase     := cfops[k].vlbase     + icmscfop.vlbase;
              cfops[k].vlimposto  := cfops[k].vlimposto  + icmscfop.vl;
              cfops[k].vlisentas  := cfops[k].vlisentas  + itlp1a.vlisentas;
              cfops[k].vloutras   := cfops[k].vloutras   + icmscfop.vloutras;
              if icmscfop.cdcfop = 0 then
              begin
                exit;
              end;
              o := strtoint(copy(inttostr(icmscfop.cdcfop), 1, 1)) - 1;
              if o > 2 then
              begin
                o := o - 4;
              end;
              subtotals.Items[o].vlcontabil := subtotals.Items[o].vlcontabil + icmscfop.vlcontabil;
              subtotals.Items[o].vlbase     := subtotals.Items[o].vlbase     + icmscfop.vlbase;
              subtotals.Items[o].vlimposto  := subtotals.Items[o].vlimposto  + icmscfop.vl;
              subtotals.Items[o].vlisentas  := subtotals.Items[o].vlisentas  + itlp1a.vlisentas;
              subtotals.Items[o].vloutras   := subtotals.Items[o].vloutras   + icmscfop.vloutras;
              itlp1a.cdtpimposto  := 2; // ipi
              itlp1a.vlbase       := ipicfop.vlbase;
              itlp1a.vlbcst       := 0;
              itlp1a.aliquota     := ipicfop.al;
              itlp1a.vlimposto    := ipicfop.vl;
              itlp1a.vlst         := 0;
              itlp1a.vloutras     := ipicfop.vloutras;
              with lp1a.itlp1a.New do
              begin
                cdlp1a       := lp1a.cdlp1a;
                cditlp1a     := qgerar.GerarCodigo(_itlp1a);
                cdcfop       := itlp1a.cdcfop;
                cdtpimposto  := itlp1a.cdtpimposto;
                cdcte        := itlp1a.cdcte;
                cdentrada    := itlp1a.cdentrada;
                cdsaida      := itlp1a.cdsaida;
                cdcliente    := itlp1a.cdcliente;
                cdfornecedor := itlp1a.cdfornecedor;
                cduf         := itlp1a.cduf;
                cdtpop1a     := itlp1a.cdtpop1a;
                tpsaient     := itlp1a.tpsaient;
                dtentrada    := itlp1a.dtentrada;
                nmespecie    := itlp1a.nmespecie;
                nuserie      := itlp1a.nuserie;
                dtemissao    := itlp1a.dtemissao;
                vlcontabil   := itlp1a.vlcontabil;
                vlbase       := itlp1a.vlbase;
                aliquota     := itlp1a.aliquota;
                vlimposto    := itlp1a.vlimposto;
                vlisentas    := itlp1a.vlisentas;
                vloutras     := itlp1a.vloutras;
                vlbaseicmssubtrib := itlp1a.vlbcst;
                vlicmssubtrib := itlp1a.vlst;
                dsobservacao  := itlp1a.DSOBSERVACAO;
                nudocumento   := itlp1a.NUDOCUMENTO;
                nuemitente    := itlp1a.nuemitente;
                sql.add(insert(true));
              end;
              k := -1;
              maximus := high(cfopis);
              for h := 0 to maximus do
              begin
                if cfopis[h].cdcfop = ipicfop.cdcfop then
                begin
                  k := h;
                  break;
                end;
              end;
              if (k = -1) then
              begin
                if not ((maximus = 0) and (cfopis[0].cdcfop = 0))  then
                begin
                  inc(maximus);
                  setlength(cfopis, maximus + 1);
                end;
                k := maximus;
              end;
              cfopis[k].cdcfop     := ipicfop.cdcfop;
              cfopis[k].vlcontabil := cfopis[k].vlcontabil + ipicfop.vlcontabil;
              cfopis[k].vlbase     := cfopis[k].vlbase     + ipicfop.vlbase;
              cfopis[k].vlimposto  := cfopis[k].vlimposto  + ipicfop.vl;
              cfopis[k].vlisentas  := cfopis[k].vlisentas  + itlp1a.vlisentas;
              cfopis[k].vloutras   := cfopis[k].vloutras   + ipicfop.vloutras;
              if ipicfop.cdcfop = 0 then
              begin
                exit;
              end;
              o := strtoint(copy(inttostr(ipicfop.cdcfop), 1, 1)) - 1;
              if o > 2 then
              begin
                o := o - 4;
              end;
              subtotalis.Items[o].vlcontabil := subtotalis.Items[o].vlcontabil + ipicfop.vlcontabil;
              subtotalis.Items[o].vlbase     := subtotalis.Items[o].vlbase     + ipicfop.vlbase;
              subtotalis.Items[o].vlimposto  := subtotalis.Items[o].vlimposto  + ipicfop.vl;
              subtotalis.Items[o].vlisentas  := subtotalis.Items[o].vlisentas  + itlp1a.vlisentas;
              subtotalis.Items[o].vloutras   := subtotalis.Items[o].vloutras   + ipicfop.vloutras;
            end;
            zerarImposto(ipicfop);
            zerarImposto(icmscfop);
          end;
          SomarValores;
          qit.q.next;
        end;
        if q.q.fieldbyname(_tpentsai).asstring = _E then
        begin
          itlp1a.cdtpimposto  := 1; // icms
          itlp1a.dsobservacao := '';
          itlp1a.cdtpop1a     := 1;
          if icmscfop.vl <= 0 then
          begin
            itlp1a.cdtpop1a := 3;
          end;
          itlp1a.cdcfop       := icmscfop.cdcfop;
          itlp1a.vlcontabil   := icmscfop.vlcontabil;
          itlp1a.vlbase       := icmscfop.vlbase;
          itlp1a.vlbcst       := icmscfop.vlbcst;
          itlp1a.aliquota     := icmscfop.al;
          itlp1a.vlimposto    := icmscfop.vl;
          itlp1a.vlst         := icmscfop.vlst;
          itlp1a.vlisentas    := 0;
          itlp1a.vloutras     := icmscfop.vloutras;
          with lp1a.itlp1a.New do
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := itlp1a.cdcfop;
            cdtpimposto  := itlp1a.cdtpimposto;
            cdcte        := itlp1a.cdcte;
            cdentrada    := itlp1a.cdentrada;
            cdsaida      := itlp1a.cdsaida;
            cdcliente    := itlp1a.cdcliente;
            cdfornecedor := itlp1a.cdfornecedor;
            cduf         := itlp1a.cduf;
            cdtpop1a     := itlp1a.cdtpop1a;
            tpsaient     := itlp1a.tpsaient;
            dtentrada    := itlp1a.dtentrada;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := itlp1a.nuserie;
            dtemissao    := itlp1a.dtemissao;
            vlcontabil   := itlp1a.vlcontabil;
            vlbase       := itlp1a.vlbase;
            aliquota     := itlp1a.aliquota;
            vlimposto    := itlp1a.vlimposto;
            vlisentas    := itlp1a.vlisentas;
            vloutras     := itlp1a.vloutras;
            vlbaseicmssubtrib := itlp1a.vlbcst;
            vlicmssubtrib := itlp1a.vlst;
            dsobservacao  := itlp1a.DSOBSERVACAO;
            nudocumento   := itlp1a.NUDOCUMENTO;
            nuemitente    := itlp1a.nuemitente;
            sql.add(insert(true));
          end;
          if ((q.q.fieldbyname(_nudocfiscalicms).AsString = _02) or (q.q.fieldbyname(_nudocfiscalicms).AsString = _2d)) and (itlp1a.cduf = 0)then
          begin
            itlp1a.cduf := empresa.endereco.cduf;
          end;
          w := lp1a.ItUfp1a.ObterIndice(itlp1a.cduf, _e);
          if w = -1 then
          begin
            lp1a.ItUfp1a.New;
            w := lp1a.ItUfp1a.count-1;
            lp1a.ItUfp1a.items[w].cdlp1a := lp1a.cdlp1a;
          end;
          lp1a.ItUfp1a.items[w].cduf       := itlp1a.cduf;
          lp1a.ItUfp1a.items[w].tpsaient   := _e;
          lp1a.ItUfp1a.items[w].vlcontabil := lp1a.ItUfp1a.items[w].vlcontabil + icmscfop.vlcontabil;
          lp1a.ItUfp1a.items[w].vlbase     := lp1a.ItUfp1a.items[w].vlbase     + icmscfop.vlbase;
          lp1a.ItUfp1a.items[w].vlimposto  := lp1a.ItUfp1a.items[w].vlimposto  + icmscfop.vl;
          lp1a.ItUfp1a.items[w].vlisentas  := lp1a.ItUfp1a.items[w].vlisentas  + itlp1a.vlisentas;
          lp1a.ItUfp1a.items[w].vloutras   := lp1a.ItUfp1a.items[w].vloutras   + icmscfop.vloutras;
          k := -1;
          maximus := high(cfope);
          for h := 0 to maximus do
          begin
            if cfope[h].cdcfop = icmscfop.cdcfop then
            begin
              k := h;
              break;
            end;
          end;
          if (k = -1) then
          begin
            if not ((maximus = 0) and (cfope[0].cdcfop = 0))  then
            begin
              inc(maximus);
              setlength(cfope, maximus + 1);
            end;
            k := maximus;
          end;
          cfope[k].cdcfop     := icmscfop.cdcfop;
          cfope[k].vlcontabil := cfope[k].vlcontabil + icmscfop.vlcontabil;
          cfope[k].vlbase     := cfope[k].vlbase     + icmscfop.vlbase;
          cfope[k].vlimposto  := cfope[k].vlimposto  + icmscfop.vl;
          cfope[k].vlisentas  := cfope[k].vlisentas  + itlp1a.vlisentas;
          cfope[k].vloutras   := cfope[k].vloutras   + icmscfop.vloutras;
          if icmscfop.cdcfop = 0 then
          begin
            exit;
          end;
          o := strtoint(copy(inttostr(icmscfop.cdcfop), 1, 1)) - 1;
          if o > 2 then
          begin
            o := o - 4;
          end;
          subtotale.Items[o].vlcontabil := subtotale.Items[o].vlcontabil + icmscfop.vlcontabil;
          subtotale.Items[o].vlbase     := subtotale.Items[o].vlbase     + icmscfop.vlbase;
          subtotale.Items[o].vlimposto  := subtotale.Items[o].vlimposto  + icmscfop.vl;
          subtotale.Items[o].vlisentas  := subtotale.Items[o].vlisentas  + itlp1a.vlisentas;
          subtotale.Items[o].vloutras   := subtotale.Items[o].vloutras   + icmscfop.vloutras;
          itlp1a.cdtpimposto  := 2; // ipi
          if ipicfop.vl <= 0 then
          begin
            itlp1a.cdtpop1a  := 3;
          end;
          itlp1a.vlbase     := ipicfop.vlbase;
          itlp1a.vlbcst     := 0;
          itlp1a.aliquota   := ipicfop.al;
          itlp1a.vlimposto  := ipicfop.vl;
          itlp1a.vlst       := 0;
          itlp1a.vloutras   := ipicfop.vloutras;
          with lp1a.itlp1a.New do
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := itlp1a.cdcfop;
            cdtpimposto  := itlp1a.cdtpimposto;
            cdcte        := itlp1a.cdcte;
            cdentrada    := itlp1a.cdentrada;
            cdsaida      := itlp1a.cdsaida;
            cdcliente    := itlp1a.cdcliente;
            cdfornecedor := itlp1a.cdfornecedor;
            cduf         := itlp1a.cduf;
            cdtpop1a     := itlp1a.cdtpop1a;
            tpsaient     := itlp1a.tpsaient;
            dtentrada    := itlp1a.dtentrada;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := itlp1a.nuserie;
            dtemissao    := itlp1a.dtemissao;
            vlcontabil   := itlp1a.vlcontabil;
            vlbase       := itlp1a.vlbase;
            aliquota     := itlp1a.aliquota;
            vlimposto    := itlp1a.vlimposto;
            vlisentas    := itlp1a.vlisentas;
            vloutras     := itlp1a.vloutras;
            vlbaseicmssubtrib := itlp1a.vlbcst;
            vlicmssubtrib := itlp1a.vlst;
            dsobservacao  := itlp1a.DSOBSERVACAO;
            nudocumento   := itlp1a.NUDOCUMENTO;
            nuemitente    := itlp1a.nuemitente;
            sql.add(insert(true));
          end;
          k := -1;
          maximus := high(cfopie);
          for h := 0 to maximus do
          begin
            if cfopie[h].cdcfop = ipicfop.cdcfop then
            begin
              k := h;
              break;
            end;
          end;
          if (k = -1) then
          begin
            if not ((maximus = 0) and (cfopie[0].cdcfop = 0))  then
            begin
              inc(maximus);
              setlength(cfopie, maximus + 1);
            end;
            k := maximus;
          end;
          cfopie[k].cdcfop     := ipicfop.cdcfop;
          cfopie[k].vlcontabil := cfopie[k].vlcontabil + ipicfop.vlcontabil;
          cfopie[k].vlbase     := cfopie[k].vlbase     + ipicfop.vlbase;
          cfopie[k].vlimposto  := cfopie[k].vlimposto  + ipicfop.vl;
          cfopie[k].vlisentas  := cfopie[k].vlisentas  + itlp1a.vlisentas;
          cfopie[k].vloutras   := cfopie[k].vloutras   + ipicfop.vloutras;
          if ipicfop.cdcfop = 0 then
          begin
            exit;
          end;
          o := strtoint(copy(inttostr(ipicfop.cdcfop), 1, 1)) - 1;
          if o > 2 then
          begin
            o := o - 4;
          end;
          subtotalie.Items[o].vlcontabil := subtotalie.Items[o].vlcontabil + ipicfop.vlcontabil;
          subtotalie.Items[o].vlbase     := subtotalie.Items[o].vlbase     + ipicfop.vlbase;
          subtotalie.Items[o].vlimposto  := subtotalie.Items[o].vlimposto  + ipicfop.vl;
          subtotalie.Items[o].vlisentas  := subtotalie.Items[o].vlisentas  + itlp1a.vlisentas;
          subtotalie.Items[o].vloutras   := subtotalie.Items[o].vloutras   + ipicfop.vloutras;
        end
        else if q.q.fieldbyname(_tpentsai).asstring = _S then
        begin
          itlp1a.dsobservacao := '';
          if q.q.fieldbyname(_vlicmsfretesub).AsCurrency > 0 then
          begin
            itlp1a.dsobservacao := 'ICMS ST Frete '+formatfloat(__moeda, q.q.fieldbyname(_vlicmsfretesub).ascurrency);
          end;
          itlp1a.cdtpimposto  := 1; // icms
          itlp1a.cdtpop1a     := 1;
          itlp1a.cdcfop       := icmscfop.cdcfop;
          itlp1a.vlcontabil   := icmscfop.vlcontabil;
          itlp1a.vlbase       := icmscfop.vlbase;
          itlp1a.vlbcst       := icmscfop.vlbcst;
          itlp1a.aliquota     := icmscfop.al;
          itlp1a.vlimposto    := icmscfop.vl;
          itlp1a.vlst         := icmscfop.vlst;
          itlp1a.vlisentas    := icmscfop.vlisentas;
          itlp1a.vloutras     := icmscfop.vloutras;
          with lp1a.itlp1a.New do
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := itlp1a.cdcfop;
            cdtpimposto  := itlp1a.cdtpimposto;
            cdcte        := itlp1a.cdcte;
            cdentrada    := itlp1a.cdentrada;
            cdsaida      := itlp1a.cdsaida;
            cdcliente    := itlp1a.cdcliente;
            cdfornecedor := itlp1a.cdfornecedor;
            cduf         := itlp1a.cduf;
            cdtpop1a     := itlp1a.cdtpop1a;
            tpsaient     := itlp1a.tpsaient;
            dtentrada    := itlp1a.dtentrada;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := itlp1a.nuserie;
            dtemissao    := itlp1a.dtemissao;
            vlcontabil   := itlp1a.vlcontabil;
            vlbase       := itlp1a.vlbase;
            aliquota     := itlp1a.aliquota;
            vlimposto    := itlp1a.vlimposto;
            vlisentas    := itlp1a.vlisentas;
            vloutras     := itlp1a.vloutras;
            vlbaseicmssubtrib := itlp1a.vlbcst;
            vlicmssubtrib := itlp1a.vlst;
            dsobservacao  := itlp1a.DSOBSERVACAO;
            nudocumento   := itlp1a.NUDOCUMENTO;
            nuemitente    := itlp1a.nuemitente;
            sql.add(insert(true));
          end;
          if ((q.q.fieldbyname(_nudocfiscalicms).AsString = _02) or (q.q.fieldbyname(_nudocfiscalicms).AsString = _2d)) and (itlp1a.cduf = 0)then
          begin
            itlp1a.cduf := empresa.endereco.cduf;
          end;
          w := lp1a.ItUfp1a.ObterIndice(itlp1a.cduf, _s);
          if w = -1 then
          begin
            lp1a.ItUfp1a.New;
            w := lp1a.ItUfp1a.count-1;
            lp1a.ItUfp1a.items[w].cdlp1a := lp1a.cdlp1a;
          end;
          lp1a.ItUfp1a.items[w].cduf       := itlp1a.cduf;
          lp1a.ItUfp1a.items[w].tpsaient   := _s;
          lp1a.ItUfp1a.items[w].vlcontabil := lp1a.ItUfp1a.items[w].vlcontabil + icmscfop.vlcontabil;
          lp1a.ItUfp1a.items[w].vlbase     := lp1a.ItUfp1a.items[w].vlbase     + icmscfop.vlbase;
          lp1a.ItUfp1a.items[w].vlimposto  := lp1a.ItUfp1a.items[w].vlimposto  + icmscfop.vl;
          lp1a.ItUfp1a.items[w].vlisentas  := lp1a.ItUfp1a.items[w].vlisentas  + itlp1a.vlisentas;
          lp1a.ItUfp1a.items[w].vloutras   := lp1a.ItUfp1a.items[w].vloutras   + icmscfop.vloutras;
          k := -1;
          maximus := high(cfops);
          for h := 0 to maximus do
          begin
            if cfops[h].cdcfop = icmscfop.cdcfop then
            begin
              k := h;
              break;
            end;
          end;
          if (k = -1) then
          begin
            if not ((maximus = 0) and (cfops[0].cdcfop = 0))  then
            begin
              inc(maximus);
              setlength(cfops, maximus + 1);
            end;
            k := maximus;
          end;
          cfops[k].cdcfop     := icmscfop.cdcfop;
          cfops[k].vlcontabil := cfops[k].vlcontabil + icmscfop.vlcontabil;
          cfops[k].vlbase     := cfops[k].vlbase     + icmscfop.vlbase;
          cfops[k].vlimposto  := cfops[k].vlimposto  + icmscfop.vl;
          cfops[k].vlisentas  := cfops[k].vlisentas  + itlp1a.vlisentas;
          cfops[k].vloutras   := cfops[k].vloutras   + icmscfop.vloutras;
          if icmscfop.cdcfop = 0 then
          begin
            exit;
          end;
          o := strtoint(copy(inttostr(icmscfop.cdcfop), 1, 1)) - 1;
          if o > 2 then
          begin
            o := o - 4;
          end;
          subtotals.Items[o].vlcontabil := subtotals.Items[o].vlcontabil + icmscfop.vlcontabil;
          subtotals.Items[o].vlbase     := subtotals.Items[o].vlbase     + icmscfop.vlbase;
          subtotals.Items[o].vlimposto  := subtotals.Items[o].vlimposto  + icmscfop.vl;
          subtotals.Items[o].vlisentas  := subtotals.Items[o].vlisentas  + itlp1a.vlisentas;
          subtotals.Items[o].vloutras   := subtotals.Items[o].vloutras   + icmscfop.vloutras;
          itlp1a.cdtpimposto  := 2; // ipi
          itlp1a.vlbase       := ipicfop.vlbase;
          itlp1a.vlbcst       := 0;
          itlp1a.aliquota     := ipicfop.al;
          itlp1a.vlimposto    := ipicfop.vl;
          itlp1a.vlst         := 0;
          itlp1a.vloutras     := ipicfop.vloutras;
          with lp1a.itlp1a.New do
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := itlp1a.cdcfop;
            cdtpimposto  := itlp1a.cdtpimposto;
            cdcte        := itlp1a.cdcte;
            cdentrada    := itlp1a.cdentrada;
            cdsaida      := itlp1a.cdsaida;
            cdcliente    := itlp1a.cdcliente;
            cdfornecedor := itlp1a.cdfornecedor;
            cduf         := itlp1a.cduf;
            cdtpop1a     := itlp1a.cdtpop1a;
            tpsaient     := itlp1a.tpsaient;
            dtentrada    := itlp1a.dtentrada;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := itlp1a.nuserie;
            dtemissao    := itlp1a.dtemissao;
            vlcontabil   := itlp1a.vlcontabil;
            vlbase       := itlp1a.vlbase;
            aliquota     := itlp1a.aliquota;
            vlimposto    := itlp1a.vlimposto;
            vlisentas    := itlp1a.vlisentas;
            vloutras     := itlp1a.vloutras;
            vlbaseicmssubtrib := itlp1a.vlbcst;
            vlicmssubtrib := itlp1a.vlst;
            dsobservacao  := itlp1a.DSOBSERVACAO;
            nudocumento   := itlp1a.NUDOCUMENTO;
            nuemitente    := itlp1a.nuemitente;
            sql.add(insert(true));
          end;
          k := -1;
          maximus := high(cfopis);
          for h := 0 to maximus do
          begin
            if cfopis[h].cdcfop = ipicfop.cdcfop then
            begin
              k := h;
              break;
            end;
          end;
          if (k = -1) then
          begin
            if not ((maximus = 0) and (cfopis[0].cdcfop = 0))  then
            begin
              inc(maximus);
              setlength(cfopis, maximus + 1);
            end;
            k := maximus;
          end;
          cfopis[k].cdcfop     := ipicfop.cdcfop;
          cfopis[k].vlcontabil := cfopis[k].vlcontabil + ipicfop.vlcontabil;
          cfopis[k].vlbase     := cfopis[k].vlbase     + ipicfop.vlbase;
          cfopis[k].vlimposto  := cfopis[k].vlimposto  + ipicfop.vl;
          cfopis[k].vlisentas  := cfopis[k].vlisentas  + itlp1a.vlisentas;
          cfopis[k].vloutras   := cfopis[k].vloutras   + ipicfop.vloutras;
          if ipicfop.cdcfop = 0 then
          begin
            exit;
          end;
          o := strtoint(copy(inttostr(ipicfop.cdcfop), 1, 1)) - 1;
          if o > 2 then
          begin
            o := o - 4;
          end;
          subtotalis.Items[o].vlcontabil := subtotalis.Items[o].vlcontabil + ipicfop.vlcontabil;
          subtotalis.Items[o].vlbase     := subtotalis.Items[o].vlbase     + ipicfop.vlbase;
          subtotalis.Items[o].vlimposto  := subtotalis.Items[o].vlimposto  + ipicfop.vl;
          subtotalis.Items[o].vlisentas  := subtotalis.Items[o].vlisentas  + itlp1a.vlisentas;
          subtotalis.Items[o].vloutras   := subtotalis.Items[o].vloutras   + ipicfop.vloutras;
        end;
      end;
      q.q.next;
    end;
    verificar_pulo_nota;
    result := true;
  finally
    freeandnil(q);
    freeandnil(qit);
  end;
end;

function TLivroFiscal.TabelaEntrada:boolean;
var
  q, qit : TClasseQuery;
  o, w, k, h, maximus: Integer;
begin
  q := TClasseQuery.create('select e.dtsaida'+
                                 ',e.nuserie'+
                                 ',e.nuentrada'+
                                 ',e.dtemissao'+
                                 ',E.NUDOCFISCALICMS'+
                                 ',c.tppessoa tppessoac'+
                                 ',c.cdcliente'+
                                 ',c.nucnpj nucnpjc'+
                                 ',c.nucpf nucpfc'+
                                 ',c.cduf cdufc'+
                                 ',''E'' tpentsai'+
                                 ',ufc.sguf sgufc'+
                                 ',uff.sguf sguff'+
                                 ',f.tppessoa tppessoaf'+
                                 ',f.cdfornecedor'+
                                 ',f.nucnpj nucnpjf'+
                                 ',f.nucpf nucpff'+
                                 ',f.cduf cduff'+
                                 ',e.vltotal'+
                                 ',e.cdcfop'+
                                 ',e.vlbaseicms'+
                                 ',e.vlicms'+
                                 ',e.vlbaseipi'+
                                 ',e.vlipi'+
                                 ',e.cdentrada'+
                                 ',E.NUSTDOCUMENTO'+
                                 ',''E'' tpentsai '+
                           'from entrada e '+
                           'inner join itentrada i on i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada '+
                           'inner join produto p on p.cdempresa=i.cdempresa and p.cdproduto=i.cdproduto '+
                           'inner join tpproduto t on t.cdempresa=p.cdempresa and t.cdtpproduto=p.cdtpproduto '+
                           'left join cliente c on c.cdcliente=e.cdcliente and e.cdempresa=c.cdempresa '+
                           'left join uf ufc on ufc.cduf=c.cduf '+
                           'left join fornecedor f on f.cdfornecedor=e.cdfornecedor and e.cdempresa=f.cdempresa '+
                           'left join uf uff on uff.cduf=f.cduf '+
                           'where e.cdempresa='+empresa.cdempresa.tostring+' and e.dtsaida between '+GetDtBanco(lp1a.dtinicio)+' and '+GetDtBanco(lp1a.dtfinal)+' and t.boservico<>''S'' '+
                           'group by e.dtsaida'+
                                   ',e.nuserie'+
                                   ',e.nuentrada'+
                                   ',e.dtemissao'+
                                   ',E.NUDOCFISCALICMS'+
                                   ',c.tppessoa'+
                                   ',c.cdcliente'+
                                   ',c.nucnpj'+
                                   ',c.nucpf'+
                                   ',c.cduf'+
                                   ',ufc.sguf'+
                                   ',uff.sguf'+
                                   ',f.tppessoa'+
                                   ',f.cdfornecedor'+
                                   ',f.nucnpj'+
                                   ',f.nucpf'+
                                   ',f.cduf'+
                                   ',e.vltotal'+
                                   ',e.cdcfop'+
                                   ',e.vlbaseicms'+
                                   ',e.vlicms'+
                                   ',e.vlbaseipi'+
                                   ',e.vlipi'+
                                   ',e.cdentrada'+
                                   ',E.NUSTDOCUMENTO '+
                           'order by e.dtsaida,e.cdentrada');
  qit := TClasseQuery.create;
  try
    gau1.Progress    := 1;
    gau.MaxValue     := q.q.RecordCount;
    gau.progress     := 0;
    while not q.q.eof do
    begin
      gau.progress := gau.progress + 1;
      frmprogressbar.pnl.caption := 'Procesar '+_compra+' - Registro '+inttostr(q.q.RecNo)+' de '+inttostr(q.q.RecordCount);
      application.ProcessMessages;
      if q.q.fieldbyname(_cdcfop).isnull then
      begin
        mensagem.add('A nota fiscal de '+_entrada+' '+q.q.fieldbyname(_nuentrada).asstring+' não foi preenchido o CFOP. Preencha o CFOP para continuar!');
      end;
      if q.q.fieldbyname(_cduf+_c).isnull and (not q.q.fieldbyname(_cdcliente).isnull) then
      begin
        mensagem.add('A nota fiscal de '+_entrada+' '+q.q.fieldbyname(_nuentrada).asstring+' o cliente '+q.q.fieldbyname(_cdcliente).asstring+' não tem a UF preenchida. Preencha a UF para continuar!');
      end;
      if q.q.fieldbyname(_cduf+_f).isnull and (not q.q.fieldbyname(_cdfornecedor).isnull) then
      begin
        mensagem.add('A nota fiscal de '+_entrada+' '+q.q.fieldbyname(_nuentrada).asstring+' o Fornecedor '+q.q.fieldbyname(_cdfornecedor).asstring+' não tem a UF preenchida. Preencha a UF para continuar!');
      end;
      if q.q.fieldbyname(_nustdocumento).AsString = '' then
      begin
        mensagem.Add('A nota fiscal de '+_entrada+' '+q.q.fieldbyname(_nuentrada).asstring+' está com a situação do documento vazio. Preencha a situação do documento para continuar!');
      end;
      if DadosPessoaTP(q) = '' then
      begin
        nucnpjcpf    := '';
        itlp1a.cduf  := 0;
      end
      else
      begin
        if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).AsString = _J then
        begin
          nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucnpj+DadosPessoaTP(q)).asstring)
        end
        else if q.q.fieldbyname(_tppessoa+DadosPessoaTP(q)).asstring = _F then
        begin
          nucnpjcpf := formatarcnpjcpf(q.q.fieldbyname(_nucpf+DadosPessoaTP(q)).asstring);
        end;
        itlp1a.cduf := q.q.fieldbyname(_cduf+DadosPessoaTP(q)).asinteger;
      end;
      if q.q.fieldbyname(_nuserie).asstring = '' then
      begin
        mensagem.Add('A nota '+q.q.fieldbyname(_nuentrada).asstring+' não possui o número de série.');
      end;
      itlp1a.tpsaient     := q.q.fieldbyname(_tpentsai).asstring;
      itlp1a.nuserie      := q.q.fieldbyname(_nuserie).asstring;
      itlp1a.nudocumento  := q.q.fieldbyname(_nuentrada).asInteger;
      itlp1a.cdcliente    := q.q.fieldbyname(_cdcliente).asstring;
      itlp1a.cdfornecedor := q.q.fieldbyname(_cdfornecedor).asstring;
      itlp1a.dtemissao    := q.q.fieldbyname(_dtemissao).AsDateTime;
      itlp1a.dtentrada    := q.q.fieldbyname(_dtsaida).AsDateTime;
      itlp1a.nuemitente   := nucnpjcpf;
      itlp1a.cdcfop       := q.q.fieldbyname(_cdcfop).asInteger;
      itlp1a.cdentrada := q.q.fieldbyname(_cdentrada).AsInteger;
      itlp1a.cdsaida   := 0;
      itlp1a.nmespecie := uppercase(_nf);
      qit.q.close;
      qit.q.open('select i.cditentrada'+
                       ',i.cdproduto'+
                       ',i.qtitem'+
                       ',i.alicms'+
                       ',i.alipi'+
                       ',i.vltotal'+
                       ',i.vldesconto'+
                       ',i.vlbaseicms'+
                       ',i.vlbaseicmssubtrib'+
                       ',i.vlicms'+
                       ',i.vlbaseipi'+
                       ',i.vlipi'+
                       ',i.vlfrete'+
                       ',i.vlseguro'+
                       ',i.vloutdespesa'+
                       ',i.vlicmssubtrib'+
                       ',i.borecuperaicms'+
                       ',i.borecuperaipi'+
                       ',cfop.bodiferencialaliquota'+
                       ',I.BONDIFERENCIALALIQUOTA'+
                       ',i.borecuperaipiespecial'+
                       ',I.NUSTICMS'+
                       ',i.cdcfop'+
                       ',i.cdentrada '+
                 'from entrada e '+
                 'inner join itentrada i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa '+
                 'left join cfop on cfop.cdcfop=i.cdcfop '+
                 'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                 'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
                 'where e.cdempresa='+empresa.cdempresa.tostring+' and e.cdentrada='+q.q.fieldbyname(_cdentrada).asstring+' '+
                 'order by i.alicms desc,i.cdcfop');
      zerarImposto(ipicfop);
      zerarImposto(icmscfop);
      zerarImposto(ipi);
      zerarImposto(icms);
      qit.q.First;
      while not qit.q.eof do // Percorre todos os itens da nota fiscal
      begin
        //set_icms_estrutura(q, qit, _entrada);
        icms.cdcfop     := get_cdcfop(q, qit, _entrada);
        icms.borecupera := qit.q.fieldbyname(_borecuperaicms).AsString = _S;
        icms.al         := qit.q.fieldbyname(_alicms).AsCurrency;
        icms.vlbase     := qit.q.fieldbyname(_vlbaseicms).AsCurrency;
        icms.vl         := qit.q.fieldbyname(_vlicms).AsCurrency;
        icms.vlbcst     := qit.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency;
        icms.vlst       := qit.q.fieldbyname(_vlicmssubtrib).AsCurrency;
        icms.vlcontabil := get_vlcontabil(qit);
        icms.vlisentas := 0;
        icms.vloutras  := 0;
        if ((q.q.fieldbyname(_tpentsai).asstring = _E)  and (not icms.borecupera)) or (icms.vl = 0) then
        begin
          icms.vlbase := 0;
          icms.vl     := 0;
          icms.al     := 0;
          if (qit.q.fieldbyname(_nusticms).asstring = _30) or (qit.q.fieldbyname(_nusticms).asstring = _40) or (qit.q.fieldbyname(_nusticms).asstring = _41) then
          begin
            icms.vlisentas := icms.vlcontabil
          end
          else
          begin
            icms.vloutras  := icms.vlcontabil;
          end;
        end
        else
        begin
          if (qit.q.fieldbyname(_nusticms).asstring = _30) or (qit.q.fieldbyname(_nusticms).asstring = _40) or (qit.q.fieldbyname(_nusticms).asstring = _41) then
          begin
            icms.vlisentas := icms.vlcontabil - icms.vlbase
          end
          else
          begin
            icms.vloutras  := icms.vlcontabil - icms.vlbase;
          end;
        end;
        if (icms.vloutras < 0) and (icms.vlcontabil > 0) then
        begin
          mensagem.Add('O produto '+qit.q.fieldbyname(_cdproduto).asstring+' - '+NomedoCodigo(_produto, qit.q.fieldbyname(_cdproduto).asstring)+#13+
                       'na nota   '+q.q.fieldbyname(_nuentrada).AsString+
                       ' está com o valor da base do ICMS('+getcurrencys(icms.vlbase)+') maior do que o valor contábil('+getcurrencys(icms.vlcontabil)+').');
        end;
        if icms.vloutras < 0 then
        begin
          icms.vloutras := 0;
        end;
        if icms.vlisentas < 0 then
        begin
          icms.vlisentas := 0;
        end;
        if ((icmscfop.cdcfop <> icms.cdcfop) or (icms.al <> icmscfop.al)) and (icmscfop.cdcfop <> 0) then // TabelaEntradaSeQuebraICMS
        begin
          //TabelaEntradaSetQuebraICMS(q);
          // Verifica se ha diferencial e calcula para em seguida somar o geral do cfop
          itlp1a.cdtpimposto  := 1;
          if Calcdif.ler(_dif,_string) = _0_00 then
          begin
            itlp1a.dsobservacao := '';
          end;
          if Calcdif.ler(_dif) > 0 then
          begin
            itlp1a.dsobservacao := 'BC '+calcdif.ler(_base,_string)+' DIF ALIQ '+Calcdif.ler(_dif,_string);
            CalcDif.NewVlNota(q.q.fieldbyname(_nuentrada).AsInteger);
            Calcdif.SetVlBase(0,true);
          end;
          itlp1a.cdtpop1a := 1;
          if icmscfop.vl <= 0 then
          begin
            itlp1a.cdtpop1a := 3;
          end;
          itlp1a.cdcfop     := icmscfop.cdcfop;
          itlp1a.vlcontabil := icmscfop.vlcontabil;
          itlp1a.vlbase     := icmscfop.vlbase;
          itlp1a.vlbcst     := icmscfop.vlbcst;
          itlp1a.aliquota   := icmscfop.al;
          itlp1a.vlimposto  := icmscfop.vl;
          itlp1a.vlst       := icmscfop.vlst;
          itlp1a.vlisentas  := icmscfop.vlisentas;
          itlp1a.vloutras   := icmscfop.vloutras;
          with lp1a.itlp1a.New do
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := itlp1a.cdcfop;
            cdtpimposto  := itlp1a.cdtpimposto;
            cdcte        := itlp1a.cdcte;
            cdentrada    := itlp1a.cdentrada;
            cdsaida      := itlp1a.cdsaida;
            cdcliente    := itlp1a.cdcliente;
            cdfornecedor := itlp1a.cdfornecedor;
            cduf         := itlp1a.cduf;
            cdtpop1a     := itlp1a.cdtpop1a;
            tpsaient     := itlp1a.tpsaient;
            dtentrada    := itlp1a.dtentrada;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := itlp1a.nuserie;
            dtemissao    := itlp1a.dtemissao;
            vlcontabil   := itlp1a.vlcontabil;
            vlbase       := itlp1a.vlbase;
            aliquota     := itlp1a.aliquota;
            vlimposto    := itlp1a.vlimposto;
            vlisentas    := itlp1a.vlisentas;
            vloutras     := itlp1a.vloutras;
            vlbaseicmssubtrib := itlp1a.vlbcst;
            vlicmssubtrib := itlp1a.vlst;
            dsobservacao  := itlp1a.DSOBSERVACAO;
            nudocumento   := itlp1a.NUDOCUMENTO;
            nuemitente    := itlp1a.nuemitente;
            sql.add(insert(true));
          end;
          if ((q.q.fieldbyname(_nudocfiscalicms).AsString = _02) or (q.q.fieldbyname(_nudocfiscalicms).AsString = _2d)) and (itlp1a.cduf = 0)then
          begin
            itlp1a.cduf := empresa.endereco.cduf;
          end;
          w := lp1a.ItUfp1a.ObterIndice(itlp1a.cduf, _e);
          if w = -1 then
          begin
            lp1a.ItUfp1a.New;
            w := lp1a.ItUfp1a.count-1;
            lp1a.ItUfp1a.items[w].cdlp1a := lp1a.cdlp1a;
          end;
          lp1a.ItUfp1a.items[w].cduf       := itlp1a.cduf;
          lp1a.ItUfp1a.items[w].tpsaient   := _e;
          lp1a.ItUfp1a.items[w].vlcontabil := lp1a.ItUfp1a.items[w].vlcontabil + icmscfop.vlcontabil;
          lp1a.ItUfp1a.items[w].vlbase     := lp1a.ItUfp1a.items[w].vlbase     + icmscfop.vlbase;
          lp1a.ItUfp1a.items[w].vlimposto  := lp1a.ItUfp1a.items[w].vlimposto  + icmscfop.vl;
          lp1a.ItUfp1a.items[w].vlisentas  := lp1a.ItUfp1a.items[w].vlisentas  + icmscfop.vlisentas;
          lp1a.ItUfp1a.items[w].vloutras   := lp1a.ItUfp1a.items[w].vloutras   + icmscfop.vloutras;
          k := -1;
          maximus := high(cfope);
          for h := 0 to maximus do
          begin
            if cfope[h].cdcfop = icmscfop.cdcfop then
            begin
              k := h;
              break;
            end;
          end;
          if (k = -1) then
          begin
            if not ((maximus = 0) and (cfope[0].cdcfop = 0))  then
            begin
              inc(maximus);
              setlength(cfope, maximus + 1);
            end;
            k := maximus;
          end;
          cfope[k].cdcfop     := icmscfop.cdcfop;
          cfope[k].vlcontabil := cfope[k].vlcontabil + icmscfop.vlcontabil;
          cfope[k].vlbase     := cfope[k].vlbase     + icmscfop.vlbase;
          cfope[k].vlimposto  := cfope[k].vlimposto  + icmscfop.vl;
          cfope[k].vlisentas  := cfope[k].vlisentas  + icmscfop.vlisentas;
          cfope[k].vloutras   := cfope[k].vloutras   + icmscfop.vloutras;
          if icmscfop.cdcfop = 0 then
          begin
            exit;
          end;
          o := strtoint(copy(inttostr(icmscfop.cdcfop), 1, 1)) - 1;
          if o > 2 then
          begin
            o := o - 4;
          end;
          subtotale.Items[o].vlcontabil := subtotale.Items[o].vlcontabil + icmscfop.vlcontabil;
          subtotale.Items[o].vlbase     := subtotale.Items[o].vlbase     + icmscfop.vlbase;
          subtotale.Items[o].vlimposto  := subtotale.Items[o].vlimposto  + icmscfop.vl;
          subtotale.Items[o].vlisentas  := subtotale.Items[o].vlisentas  + icmscfop.vlisentas;
          subtotale.Items[o].vloutras   := subtotale.Items[o].vloutras   + icmscfop.vloutras;
          zerarImposto(icmscfop);
        end;
        if (qit.q.fieldbyname(_bodiferencialaliquota).asstring = _S) and (qit.q.fieldbyname(_bondiferencialaliquota).asstring <> _S) then // TabelaEntradaCalcularDiferencialAliquota(qit)
        begin
          vldif := RoundTo(((empresa.uf.alicms * qit.q.fieldbyname(_vlbaseicms).AsCurrency)/100) - qit.q.fieldbyname(_vlicms).AsCurrency, -2);
          Calcdif.DebCred(vldif);
          Calcdif.SetVlitem(vldif);
          Calcdif.NewVlCFOP(vldif, itlp1a.cdcfop);
          Calcdif.SetVlBase(qit.q.fieldbyname(_vlbaseicms).AsCurrency);
        end;
        //set_ipi_estrutura(q, qit, _entrada);
        ipi.cdcfop     := Get_cdcfop(q, qit, _entrada);
        ipi.borecupera := qit.q.fieldbyname(_borecuperaipi).AsString  = _S;
        ipi.al         := qit.q.fieldbyname(_alipi).AsCurrency;
        ipi.vlbase     := qit.q.fieldbyname(_vlbaseipi).AsCurrency;
        ipi.vl         := qit.q.fieldbyname(_vlipi).AsCurrency;
        ipi.vlcontabil := get_vlcontabil(qit);
        if ((q.q.fieldbyname(_tpentsai).asstring = _E)  and (not ipi.borecupera)) or (ipi.vl = 0) then
        begin
          ipi.vlbase := 0;
          ipi.vl     := 0;
          ipi.al     := 0;
        end;
        ipi.vloutras := ipi.vlcontabil - ipi.vlbase - ipi.vl;
        if ipi.vloutras < 0 then
        begin
          ipi.vloutras := 0;
        end;
        if ((ipicfop.cdcfop <> ipi.cdcfop) or (ipi.al <> ipicfop.al)) and (ipicfop.cdcfop <> 0) then // TabelaEntradaSeQuebraIPI
        begin
          itlp1a.cdtpimposto  := 2;
          itlp1a.dsobservacao := '';
          itlp1a.cdtpop1a     := 1;
          if ipicfop.vl <= 0 then
          begin
            itlp1a.cdtpop1a := 3;
          end;
          itlp1a.vlisentas  := 0;
          itlp1a.cdcfop     := ipicfop.cdcfop;
          itlp1a.vlcontabil := ipicfop.vlcontabil;
          itlp1a.vlbase     := ipicfop.vlbase;
          itlp1a.vlbcst     := 0;
          itlp1a.aliquota   := ipicfop.al;
          itlp1a.vlimposto  := ipicfop.vl;
          itlp1a.vlst       := 0;
          itlp1a.vloutras   := ipicfop.vloutras;
          with lp1a.itlp1a.New do
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := itlp1a.cdcfop;
            cdtpimposto  := itlp1a.cdtpimposto;
            cdcte        := itlp1a.cdcte;
            cdentrada    := itlp1a.cdentrada;
            cdsaida      := itlp1a.cdsaida;
            cdcliente    := itlp1a.cdcliente;
            cdfornecedor := itlp1a.cdfornecedor;
            cduf         := itlp1a.cduf;
            cdtpop1a     := itlp1a.cdtpop1a;
            tpsaient     := itlp1a.tpsaient;
            dtentrada    := itlp1a.dtentrada;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := itlp1a.nuserie;
            dtemissao    := itlp1a.dtemissao;
            vlcontabil   := itlp1a.vlcontabil;
            vlbase       := itlp1a.vlbase;
            aliquota     := itlp1a.aliquota;
            vlimposto    := itlp1a.vlimposto;
            vlisentas    := itlp1a.vlisentas;
            vloutras     := itlp1a.vloutras;
            vlbaseicmssubtrib := itlp1a.vlbcst;
            vlicmssubtrib := itlp1a.vlst;
            dsobservacao  := itlp1a.DSOBSERVACAO;
            nudocumento   := itlp1a.NUDOCUMENTO;
            nuemitente    := itlp1a.nuemitente;
            sql.add(insert(true));
          end;
          k := -1;
          maximus := high(cfopie);
          for h := 0 to maximus do
          begin
            if cfopie[h].cdcfop = ipicfop.cdcfop then
            begin
              k := h;
              break;
            end;
          end;
          if (k = -1) then
          begin
            if not ((maximus = 0) and (cfopie[0].cdcfop = 0))  then
            begin
              inc(maximus);
              setlength(cfopie, maximus + 1);
            end;
            k := maximus;
          end;
          cfopie[k].cdcfop     := ipicfop.cdcfop;
          cfopie[k].vlcontabil := cfopie[k].vlcontabil + ipicfop.vlcontabil;
          cfopie[k].vlbase     := cfopie[k].vlbase     + ipicfop.vlbase;
          cfopie[k].vlimposto  := cfopie[k].vlimposto  + ipicfop.vl;
          cfopie[k].vlisentas  := cfopie[k].vlisentas  + itlp1a.vlisentas;
          cfopie[k].vloutras   := cfopie[k].vloutras   + ipicfop.vloutras;
          if ipicfop.cdcfop = 0 then
          begin
            exit;
          end;
          o := strtoint(copy(inttostr(ipicfop.cdcfop), 1, 1)) - 1;
          if o > 2 then
          begin
            o := o - 4;
          end;
          subtotalie.Items[o].vlcontabil := subtotalie.Items[o].vlcontabil + ipicfop.vlcontabil;
          subtotalie.Items[o].vlbase     := subtotalie.Items[o].vlbase     + ipicfop.vlbase;
          subtotalie.Items[o].vlimposto  := subtotalie.Items[o].vlimposto  + ipicfop.vl;
          subtotalie.Items[o].vlisentas  := subtotalie.Items[o].vlisentas  + itlp1a.vlisentas;
          subtotalie.Items[o].vloutras   := subtotalie.Items[o].vloutras   + ipicfop.vloutras;
          zerarImposto(ipicfop);
        end;
        SomarValores;
        qit.q.next;
      end;
      //TabelaEntradaSetQuebraICMS(q);
      // Verifica se ha diferencial e calcula para em seguida somar o geral do cfop
      itlp1a.cdtpimposto  := 1;
      if Calcdif.ler(_dif,_string) = _0_00 then
      begin
        itlp1a.dsobservacao := '';
      end;
      if Calcdif.ler(_dif) > 0 then
      begin
        itlp1a.dsobservacao := 'BC '+calcdif.ler(_base,_string)+' DIF ALIQ '+Calcdif.ler(_dif,_string);
        CalcDif.NewVlNota(q.q.fieldbyname(_nuentrada).AsInteger);
        Calcdif.SetVlBase(0,true);
      end;
      itlp1a.cdtpop1a := 1;
      if icmscfop.vl <= 0 then
      begin
        itlp1a.cdtpop1a := 3;
      end;
      itlp1a.cdcfop     := icmscfop.cdcfop;
      itlp1a.vlcontabil := icmscfop.vlcontabil;
      itlp1a.vlbase     := icmscfop.vlbase;
      itlp1a.vlbcst     := icmscfop.vlbcst;
      itlp1a.aliquota   := icmscfop.al;
      itlp1a.vlimposto  := icmscfop.vl;
      itlp1a.vlst       := icmscfop.vlst;
      itlp1a.vlisentas  := icmscfop.vlisentas;
      itlp1a.vloutras   := icmscfop.vloutras;
      with lp1a.itlp1a.New do
      begin
        cdlp1a       := lp1a.cdlp1a;
        cditlp1a     := qgerar.GerarCodigo(_itlp1a);
        cdcfop       := itlp1a.cdcfop;
        cdtpimposto  := itlp1a.cdtpimposto;
        cdcte        := itlp1a.cdcte;
        cdentrada    := itlp1a.cdentrada;
        cdsaida      := itlp1a.cdsaida;
        cdcliente    := itlp1a.cdcliente;
        cdfornecedor := itlp1a.cdfornecedor;
        cduf         := itlp1a.cduf;
        cdtpop1a     := itlp1a.cdtpop1a;
        tpsaient     := itlp1a.tpsaient;
        dtentrada    := itlp1a.dtentrada;
        nmespecie    := itlp1a.nmespecie;
        nuserie      := itlp1a.nuserie;
        dtemissao    := itlp1a.dtemissao;
        vlcontabil   := itlp1a.vlcontabil;
        vlbase       := itlp1a.vlbase;
        aliquota     := itlp1a.aliquota;
        vlimposto    := itlp1a.vlimposto;
        vlisentas    := itlp1a.vlisentas;
        vloutras     := itlp1a.vloutras;
        vlbaseicmssubtrib := itlp1a.vlbcst;
        vlicmssubtrib := itlp1a.vlst;
        dsobservacao  := itlp1a.DSOBSERVACAO;
        nudocumento   := itlp1a.NUDOCUMENTO;
        nuemitente    := itlp1a.nuemitente;
        sql.add(insert(true));
      end;
      if ((q.q.fieldbyname(_nudocfiscalicms).AsString = _02) or (q.q.fieldbyname(_nudocfiscalicms).AsString = _2d)) and (itlp1a.cduf = 0)then
      begin
        itlp1a.cduf := empresa.endereco.cduf;
      end;
      w := lp1a.ItUfp1a.ObterIndice(itlp1a.cduf, _e);
      if w = -1 then
      begin
        lp1a.ItUfp1a.New;
        w := lp1a.ItUfp1a.count-1;
        lp1a.ItUfp1a.items[w].cdlp1a := lp1a.cdlp1a;
      end;
      lp1a.ItUfp1a.items[w].cduf       := itlp1a.cduf;
      lp1a.ItUfp1a.items[w].tpsaient   := _e;
      lp1a.ItUfp1a.items[w].vlcontabil := lp1a.ItUfp1a.items[w].vlcontabil + icmscfop.vlcontabil;
      lp1a.ItUfp1a.items[w].vlbase     := lp1a.ItUfp1a.items[w].vlbase     + icmscfop.vlbase;
      lp1a.ItUfp1a.items[w].vlimposto  := lp1a.ItUfp1a.items[w].vlimposto  + icmscfop.vl;
      lp1a.ItUfp1a.items[w].vlisentas  := lp1a.ItUfp1a.items[w].vlisentas  + icmscfop.vlisentas;
      lp1a.ItUfp1a.items[w].vloutras   := lp1a.ItUfp1a.items[w].vloutras   + icmscfop.vloutras;
      k := -1;
      maximus := high(cfope);
      for h := 0 to maximus do
      begin
        if cfope[h].cdcfop = icmscfop.cdcfop then
        begin
          k := h;
          break;
        end;
      end;
      if (k = -1) then
      begin
        if not ((maximus = 0) and (cfope[0].cdcfop = 0))  then
        begin
          inc(maximus);
          setlength(cfope, maximus + 1);
        end;
        k := maximus;
      end;
      cfope[k].cdcfop     := icmscfop.cdcfop;
      cfope[k].vlcontabil := cfope[k].vlcontabil + icmscfop.vlcontabil;
      cfope[k].vlbase     := cfope[k].vlbase     + icmscfop.vlbase;
      cfope[k].vlimposto  := cfope[k].vlimposto  + icmscfop.vl;
      cfope[k].vlisentas  := cfope[k].vlisentas  + icmscfop.vlisentas;
      cfope[k].vloutras   := cfope[k].vloutras   + icmscfop.vloutras;
      if icmscfop.cdcfop = 0 then
      begin
        exit;
      end;
      o := strtoint(copy(inttostr(icmscfop.cdcfop), 1, 1)) - 1;
      if o > 2 then
      begin
        o := o - 4;
      end;
      subtotale.Items[o].vlcontabil := subtotale.Items[o].vlcontabil + icmscfop.vlcontabil;
      subtotale.Items[o].vlbase     := subtotale.Items[o].vlbase     + icmscfop.vlbase;
      subtotale.Items[o].vlimposto  := subtotale.Items[o].vlimposto  + icmscfop.vl;
      subtotale.Items[o].vlisentas  := subtotale.Items[o].vlisentas  + icmscfop.vlisentas;
      subtotale.Items[o].vloutras   := subtotale.Items[o].vloutras   + icmscfop.vloutras;
      zerarImposto(icmscfop);
      //TabelaEntradaSetQuebraIPI;
      itlp1a.cdtpimposto  := 2;
      itlp1a.dsobservacao := '';
      itlp1a.cdtpop1a     := 1;
      if ipicfop.vl <= 0 then
      begin
        itlp1a.cdtpop1a := 3;
      end;
      itlp1a.vlisentas  := 0;
      itlp1a.cdcfop     := ipicfop.cdcfop;
      itlp1a.vlcontabil := ipicfop.vlcontabil;
      itlp1a.vlbase     := ipicfop.vlbase;
      itlp1a.aliquota   := ipicfop.al;
      itlp1a.vlimposto  := ipicfop.vl;
      with lp1a.itlp1a.New do
      begin
        cdlp1a       := lp1a.cdlp1a;
        cditlp1a     := qgerar.GerarCodigo(_itlp1a);
        cdcfop       := itlp1a.cdcfop;
        cdtpimposto  := itlp1a.cdtpimposto;
        cdcte        := itlp1a.cdcte;
        cdentrada    := itlp1a.cdentrada;
        cdsaida      := itlp1a.cdsaida;
        cdcliente    := itlp1a.cdcliente;
        cdfornecedor := itlp1a.cdfornecedor;
        cduf         := itlp1a.cduf;
        cdtpop1a     := itlp1a.cdtpop1a;
        tpsaient     := itlp1a.tpsaient;
        dtentrada    := itlp1a.dtentrada;
        nmespecie    := itlp1a.nmespecie;
        nuserie      := itlp1a.nuserie;
        dtemissao    := itlp1a.dtemissao;
        vlcontabil   := itlp1a.vlcontabil;
        vlbase       := itlp1a.vlbase;
        aliquota     := itlp1a.aliquota;
        vlimposto    := itlp1a.vlimposto;
        vlisentas    := itlp1a.vlisentas;
        vloutras     := ipicfop.vloutras;
        vlbaseicmssubtrib := 0;
        vlicmssubtrib := 0;
        dsobservacao  := itlp1a.DSOBSERVACAO;
        nudocumento   := itlp1a.NUDOCUMENTO;
        nuemitente    := itlp1a.nuemitente;
        sql.add(insert(true));
      end;
      k := -1;
      maximus := high(cfopie);
      for h := 0 to maximus do
      begin
        if cfopie[h].cdcfop = ipicfop.cdcfop then
        begin
          k := h;
          break;
        end;
      end;
      if (k = -1) then
      begin
        if not ((maximus = 0) and (cfopie[0].cdcfop = 0))  then
        begin
          inc(maximus);
          setlength(cfopie, maximus + 1);
        end;
        k := maximus;
      end;
      cfopie[k].cdcfop     := ipicfop.cdcfop;
      cfopie[k].vlcontabil := cfopie[k].vlcontabil + ipicfop.vlcontabil;
      cfopie[k].vlbase     := cfopie[k].vlbase     + ipicfop.vlbase;
      cfopie[k].vlimposto  := cfopie[k].vlimposto  + ipicfop.vl;
      cfopie[k].vlisentas  := cfopie[k].vlisentas  + ipicfop.vlisentas;
      cfopie[k].vloutras   := cfopie[k].vloutras   + ipicfop.vloutras;
      if ipicfop.cdcfop = 0 then
      begin
        exit;
      end;
      o := strtoint(copy(inttostr(ipicfop.cdcfop), 1, 1)) - 1;
      if o > 2 then
      begin
        o := o - 4;
      end;
      subtotalie.Items[o].vlcontabil := subtotalie.Items[o].vlcontabil + ipicfop.vlcontabil;
      subtotalie.Items[o].vlbase     := subtotalie.Items[o].vlbase     + ipicfop.vlbase;
      subtotalie.Items[o].vlimposto  := subtotalie.Items[o].vlimposto  + ipicfop.vl;
      subtotalie.Items[o].vlisentas  := subtotalie.Items[o].vlisentas  + itlp1a.vlisentas;
      subtotalie.Items[o].vloutras   := subtotalie.Items[o].vloutras   + ipicfop.vloutras;
      zerarImposto(ipicfop);
      q.q.next;
    end;
    result := true;
  finally
    freeandnil(q);
    freeandnil(qit);
  end;
end;

function TLivroFiscal.saldocredorperiodoanterior(cdtpimposto:string):currency;
begin
  if RetornaSQLInteger('select count(*) from lp1a where cdempresa='+empresa.cdempresa.tostring) = 0 then
  begin
    if cdtpimposto = _1 then
    begin
      result := Empresa.livro.vlsaldocredor
    end
    else if cdtpimposto = _2 then
    begin
      result := Empresa.livro.vlsaldocredoripi
    end
    else
    begin
      result := 0;
    end;
  end
  else
  begin
    result := RetornaSQLCurrency('select vlsaldocredor from itregapuracao where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a<'+inttostr(lp1a.cdlp1a)+' and cdtpimposto='+cdtpimposto+' order by cdlp1a desc');
  end;
end;

procedure TLivroFiscal.RegistroApuracao;
var
  l_vlsaldocredor, l_vlimposto, l_vlsaldodevedor, l_vlctotal, l_vlcsaldocredor, l_vlcsubtotal, l_vlcredito: currency;
begin
  l_vlsaldocredor  := saldocredorperiodoanterior(_1);
  l_vlcsaldocredor := l_vlsaldocredor;
  l_vlctotal       := vlimpostoe + l_vlsaldocredor+vlajusteciapi;
  l_vlsaldodevedor := (vlimpostos - (vlimpostoe + l_vlsaldocredor+vlajusteciapi));
  l_vlimposto      := 0;
  l_vlsaldocredor  := 0;
  if vlimpostos > l_vlctotal then
  begin
    l_vlimposto     := l_vlsaldodevedor
  end
  else if vlimpostos < l_vlctotal then
  begin
    l_vlsaldocredor := l_vlctotal - vlimpostos;
  end;
  with lp1a.itregapuracao.New do
  begin
    cditregapuracao := qgerar.GerarCodigo(_itregapuracao);
    cdlp1a := lp1a.cdlp1a;
    cdtpimposto := 1;
    vldebito := vlimpostos;
    vldoutros := 0;
    vldestorno := 0;
    vldtotal := vlimpostos;
    vlcredito := vlimpostoe;
    vlcoutros := vlajusteciapi;
    vlcestorno := 0;
    vlcsubtotal := vlimpostoe;
    vlcsaldocredor := l_vlcsaldocredor;
    vlctotal := l_vlctotal;
    vlsaldodevedor := l_vlsaldodevedor;
    vldeducoes := 0;
    vlimposto := l_vlimposto;
    vlsaldocredor := l_vlsaldocredor;
    sql.add(insert(true));
  end;
  l_vlsaldocredor  := saldocredorperiodoanterior(_2);
  l_vlcredito      := vlimpostoie;
  l_vlcsubtotal    := vlimpostoie;
  l_vlcsaldocredor := l_vlsaldocredor;
  l_vlctotal       := vlimpostoie + l_vlcsaldocredor;
  l_vlsaldodevedor := vlimpostois - l_vlctotal;
  if l_vlsaldodevedor < 0 then
  begin
    l_vlsaldodevedor := 0;
  end;
  l_vlimposto      := 0;
  l_vlsaldocredor  := 0;
  if vlimpostois > l_vlctotal then
  begin
    l_vlimposto     := l_vlsaldodevedor
  end
  else if vlimpostois < l_vlctotal then
  begin
    l_vlsaldocredor := l_vlctotal - vlimpostois;
  end;
  with lp1a.itregapuracao.New do
  begin
    cditregapuracao := qgerar.GerarCodigo(_itregapuracao);
    cdlp1a := lp1a.cdlp1a;
    cdtpimposto := 2;
    vldebito := vlimpostois;
    vldoutros := 0;
    vldestorno := 0;
    vldtotal := vlimpostois;
    vlcredito := l_vlcredito;
    vlcoutros := 0;
    vlcestorno := 0;
    vlcsubtotal := l_vlcsubtotal;
    vlcsaldocredor := l_vlcsaldocredor;
    vlctotal := l_vlctotal;
    vlsaldodevedor := l_vlsaldodevedor;
    vldeducoes := 0;
    vlimposto := l_vlimposto;
    vlsaldocredor := l_vlsaldocredor;
    sql.add(insert(true));
  end;
end;

function TLivroFiscal.Get_VlContabil(qit: TClasseQuery):currency;
begin
  result := qit.q.fieldbyname(_vltotal).AsCurrency +
            qit.q.fieldbyname(_vlfrete).AsCurrency +
            qit.q.fieldbyname(_vlicmssubtrib).AsCurrency +
            qit.q.fieldbyname(_vlseguro).AsCurrency +
            qit.q.fieldbyname(_vloutdespesa).AsCurrency -
            qit.q.fieldbyname(_vldesconto).AsCurrency;
  if qit.q.fieldbyname(_borecuperaipiespecial).AsString <> _S then
  begin
    result := result + qit.q.fieldbyname(_vlipi).AsCurrency;
  end;
end;

function TLivroFiscal.GetCdcfopGetTipo(tbl:string):string;
begin
  if tbl = _saida then
  begin
    result := 'Nota Fiscal'
  end
  else
  begin
    result := 'Compra';
  end;
end;

function TLivroFiscal.Get_cdcfop(q, qit: TClasseQuery; tbl:string):integer;
begin
  result := qit.q.fieldbyname(_cdcfop).AsInteger;
  if itlp1a.cdcfop = 0 then
  begin
    mensagem.Add('A '+GetCdcfopGetTipo(tbl)+' '+q.q.fieldbyname(_nu+_entrada).AsString+' está com algum item sem cfop.');
  end;
end;

procedure TLivroFiscal.ZerarImposto(var imposto: timposto);
begin
  imposto.cdcfop     := 0;
  imposto.vl         := 0;
  imposto.vlbase     := 0;
  imposto.vloutras   := 0;
  imposto.vlisentas  := 0;
  imposto.vlbcst     := 0;
  imposto.vlst       := 0;
  imposto.al         := 0;
  imposto.vlcontabil := 0;
end;

function TLivroFiscal.formatarcnpjcpf(nucnpjcpf:string):string;
begin
  result := RemoverChar(RemoverChar(RemoverChar(nucnpjcpf, '.'), '/'), '-');
  result := copy(result, 1, 8)+copy(result, 11, 2);
end;

function TLivroFiscal.DadosPessoaTP(q: TClasseQuery):string;
begin
  if not q.q.fieldbyname(_cdcliente).IsNull then
  begin
    result := _c
  end
  else if not q.q.fieldbyname(_cdfornecedor).IsNull then
  begin
    result := _f
  end
  else
  begin
    result := '';
  end;
end;

function TLivroFiscal.DadosPessoaGetTipo(cdctetptomador:integer):string;
begin
  case cdctetptomador of
    1 : result := _e;
    2 : result := _x;
    3 : result := _r;
    4 : result := _d;
    5 : result := _o;
  end;
end;

function TLivroFiscal.DadosPessoaGetParticipante(q: TClasseQuery): string;
var
  tipo : string;
begin
  tipo := '';
  tipo := DadosPessoaGetTipo(q.q.fieldbyname(_cdctetptomador).AsInteger);
  if tipo = '' then
  begin
    result := '';
    exit;
  end;
  if q.q.fieldbyname(_nucnpj+tipo).asstring <> '' then
  begin
    result := formatarcnpjcpf(removercaracteres(q.q.fieldbyname(_nucnpj+tipo).AsString))
  end
  else if q.q.fieldbyname(_nucpf+tipo).asstring  <> '' then
  begin
    result := formatarcnpjcpf(removercaracteres(q.q.fieldbyname(_nucpf+tipo).AsString))
  end
  else
  begin
    result := '';
  end;
end;

function TLivroFiscal.DadosPessoaGetParticipanteCTE(q: TClasseQuery; tbl: string): string;
var
  tipo : string;
begin
  tipo := '';
  tipo := DadosPessoaGetTipo(q.q.fieldbyname(_cdctetptomador).AsInteger);
  if tipo = '' then
  begin
    result := '';
    exit;
  end;
  result := q.q.fieldbyname(_cd+tbl+tipo).AsString;
end;

function TLivroFiscal.DadosPessoaGetUFCTE(q: TClasseQuery; tbl: string): integer;
var
  tipo : string;
begin
  tipo := '';
  tipo := DadosPessoaGetTipo(q.q.fieldbyname(_cdctetptomador).AsInteger);
  if tipo = '' then
  begin
    result := 0;
    exit;
  end;
  result := q.q.fieldbyname(_cd+tbl+tipo).Asinteger;
end;

constructor TLivroFiscal.create;
begin
  Calcdif   := TDiferencialAL.Create;
  subtotale := titapuflist.Create;
  subtotalie := titapuflist.Create;
  subtotalis := titapuflist.Create;
  subtotals := titapuflist.Create;
  lp1a := tlp1a.create;
end;

function TLivroFiscal.AjusteCiapiProcessarLp1aMakesql:string;
var
  codigo : string;
begin
  result := '';
  codigo := RetornaSQLString('select first 1 cdlp1a from lp1a where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a<'+inttostr(lp1a.cdlp1a)+' ORDER BY CDLP1A DESC');
  if codigo <> '' then
  begin
    result := 'select * from LP1ACIAPI where cdempresa='+empresa.cdempresa.tostring+' and boativado=''S'' and NUPARCELA<>48 and cdlp1a='+codigo;
  end;
end;

procedure TLivroFiscal.AjusteCiapiProcessarLp1a;
var
  q : TClasseQuery;
  vlajuste1 : Currency;
begin
  q := TClasseQuery.Create;
  try
    q.q.sql.Text   := AjusteCiapiProcessarLp1aMakesql;
    if q.q.sql.Text = '' then
    begin
      Exit;
    end;
    q.q.Open;
    while not q.q.Eof do
    begin
      vlajuste1 := prcoeficienteciapi * q.q.fieldbyname(_vlicms).AsCurrency*(1/48);
      vlajusteciapi := vlajusteciapi + vlajuste1;
      with lp1a.lp1aciapi.New do
      begin
        Select(q.q);
        cdlp1aciapi := qgerar.GerarCodigo(_lp1aciapi);
        cdlp1a      := lp1a.cdlp1a;
        boativado   := _s;
        vlajuste    := vlajuste1;
        vldeducao   := q.q.fieldbyname(_vldeducao).ascurrency+vlajuste1;
        vlsaldo     := q.q.fieldbyname(_vlsaldo).AsCurrency-vlajuste1;
        sql.Add(insert(true));
      end;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TLivroFiscal.AjusteCiapiProcessarMakesql(tbl:string):string;
begin
  result := 'select i.cd'+tbl+
                  ',t.nu'+tbl+
                  ',i.cdit'+tbl+
                  ',t.nudocfiscalicms nudocfiscalicms'+tbl+
                  ',t.nuchavenfe nuchavenfe'+tbl+
                  ',i.vlicms'+
                  ',i.cdproduto'+
                  ',t.dtemissao'+
                  ',t.dtsaida';
  if tbl = _entrada then
  begin
    result := result + ',T.CDFORNECEDOR,t.nuserie nuserie'+tbl
  end
  else
  begin
    result := result + ',T.CDCLIENTE,s.nuserie nuserie'+tbl;
  end;
  result := result +
            ' from '+tbl+' t '+
            'inner join it'+tbl+' i on i.cd'+tbl+'=t.cd'+tbl+' and t.cdempresa=i.cdempresa ';
  if tbl = _saida then
  begin
    result := result + 'left join serie s on s.cdserie=t.cdserie and s.cdempresa=t.cdempresa ';
  end;
  result := result + 'where t.cdempresa='+empresa.cdempresa.tostring+' and i.BORECUPERAAJUSTEICMS=''S'' and ';
  if tbl = _saida then
  begin
    result := Result + _dtemissao
  end
  else if tbl = _entrada then
  begin
    result := result + _dtsaida;
  end;
  result := result + ' between '+getdtbanco(lp1a.dtinicio)+' and '+getdtbanco(lp1a.dtfinal);
end;

procedure TLivroFiscal.AjusteCiapiProcessar(tbl:string);
var
  q : TClasseQuery;
  texto : string;
  vlajuste1 : Currency;
begin
  q   := TClasseQuery.create;
  try
    q.q.open(AjusteCiapiProcessarMakesql(tbl));
    while not q.q.Eof do
    begin
      vlajuste1      := prcoeficienteciapi * q.q.fieldbyname(_vlicms).AsCurrency*(1/48);
      vlajusteciapi := vlajusteciapi + vlajuste1;
      with lp1a.lp1aciapi.New do
      begin
        cdlp1aciapi := qgerar.GerarCodigo(_lp1aciapi);
        cdlp1a      := lp1a.cdlp1a;
        nudocumento := q.q.fieldbyname(_nu+tbl).asinteger;
        nuparcela   := 1;
        boativado   := _s;
        vlajuste    := vlajuste1;
        vlicms      := q.q.fieldbyname(_vlicms).AsCurrency;
        vldeducao   := vlajuste1;
        vlsaldo     := q.q.fieldbyname(_vlicms).AsCurrency-vlajuste1;
        cdproduto   := q.q.fieldbyname(_cdproduto).AsInteger;
        cddigitado  := q.q.fieldbyname(_cdproduto).asstring;
        dtemissao   := q.q.fieldbyname(_dtemissao).asdatetime;
        if tbl = _entrada then
        begin
          cditentrada         := q.q.fieldbyname(_cditentrada).asInteger;
          cdfornecedor        := q.q.fieldbyname(_cdfornecedor).AsString;
          cdindicadoremitente := 1;
        end
        else if tbl = _saida then
        begin
          cditsaida           := q.q.fieldbyname(_cditsaida).asInteger;
          cdcliente           := q.q.fieldbyname(_cdcliente).AsString;
          cdindicadoremitente := 0;
        end;
        nudocfiscalicms     := q.q.fieldbyname(_nudocfiscalicms+tbl).AsString;
        nuserie             := q.q.fieldbyname(_nuserie+tbl).AsString;
        nuchavenfe          := q.q.fieldbyname(_nuchavenfe+tbl).AsString;
        cdtpciapi           := 2;
        vlicmssubtrib       := 0;
        vlicmsfrete         := 0;
        vlicmsdifaliquota   := 0;
        nuitem              := 1;
        cdindividualbem     := q.q.fieldbyname(_cdproduto).asstring;
        cdtpmercadoriaativo := 1;
        sql.add(insert(true));
      end;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscal.AjusteCiapi;
begin
  vlajusteciapi := 0;
  AjusteCiapiProcessar(_entrada);
  AjusteCiapiProcessar(_saida);
  AjusteCiapiProcessarLp1a;
end;

destructor TLivroFiscal.destroy;
begin
  freeandnil(lp1a);
  freeandnil(subtotale);
  freeandnil(subtotalie);
  freeandnil(subtotalis);
  freeandnil(subtotals);
  freeandnil(calcdif);
  inherited;
end;

procedure TLivroFiscal.AtivoPISCOFINS;
var
  ativopiscofins : tativopiscofinslist;
  i : integer;
begin
  ativopiscofins := tativopiscofinslist.Create;
  try
    ativopiscofins.ler('nuparcela<qtparcela and dtinicio<='+GetDtBanco(lp1a.dtinicio)+' and dttermino>='+GetDtBanco(lp1a.dtinicio));
    for I := 0 to ativopiscofins.Count - 1 do
    begin
      with lp1a.Lp1aAtivoPisCofins.New do
      begin
        cdlp1a               := lp1a.cdlp1a;
        cdlp1aativopiscofins := qgerar.GerarCodigo(_LP1AATIVOPISCOFINS);
        cdativopiscofins     := ativopiscofins.Items[i].cdativopiscofins;
        nuparcela            := ativopiscofins.Items[i].nuparcela+1;
        vlbasepis            := ativopiscofins.Items[i].vldeducao;
        vlpis                := ativopiscofins.Items[i].vldeducao*ativopiscofins.Items[i].alpis/100;
        vlbasecofins         := ativopiscofins.Items[i].vldeducao;
        vlcofins             := ativopiscofins.Items[i].vldeducao*ativopiscofins.Items[i].alcofins/100;
        vldeducao            := ativopiscofins.Items[i].vldeducao;
        vlsaldo              := ativopiscofins.Items[i].vlsaldo-ativopiscofins.Items[i].vldeducao;
        sql.Add(insert(true));
      end;
      ativopiscofins.Items[i].nuparcela := ativopiscofins.Items[i].nuparcela + 1;
      ativopiscofins.Items[i].vlsaldo := ativopiscofins.Items[i].vlsaldo - ativopiscofins.Items[i].vldeducao;
      sql.add(ativopiscofins.Items[i].update(true));
    end;
  finally
    freeandnil(ativopiscofins);
  end;
end;

procedure TLivroFiscal.TabelaCTE;
var
  cdctei : Integer;
  q : TClasseQuery;
  o, w, k, h, maximus: Integer;
begin
  q := TClasseQuery.create('select c.cdcte'+
                                 ',C.CDSTCTE'+
                                 ',c.dtemissao'+
                                 ',c.vlservico'+
                                 ',c.vlbaseicms'+
                                 ',c.vlicms'+
                                 ',c.cdcfop'+
                                 ',c.alicms'+
                                 ',c.cdctetptomador'+
                                 ',ce.nucnpj nucnpje'+
                                 ',ce.nucpf nucpfe'+
                                 ',ce.cduf cdufe'+
                                 ',c.cdremetente cdclientee'+
                                 ',cd.nucnpj nucnpjd'+
                                 ',cd.nucpf nucpfd'+
                                 ',cd.cduf cdufd'+
                                 ',c.cddestinatario cdcliented'+
                                 ',cx.nucnpj nucnpjx'+
                                 ',cx.nucpf nucpfx'+
                                 ',cx.cduf cdufx'+
                                 ',c.cdexpedidor cdclientex'+
                                 ',cr.nucnpj nucnpjr'+
                                 ',cr.nucpf nucpfr'+
                                 ',cr.cduf cdufr'+
                                 ',c.cdrecebedor cdclienter'+
                                 ',co.nucnpj nucnpjo'+
                                 ',co.nucpf nucpfo'+
                                 ',co.cduf cdufo'+
                                 ',c.cdtomador cdclienteo '+
                           'from CTE C '+
                           'left join cliente ce on ce.cdcliente=c.cdremetente and c.cdempresa=ce.cdempresa '+
                           'left join cliente cd on cd.cdcliente=c.cddestinatario and c.cdempresa=cd.cdempresa '+
                           'left join cliente cx on cx.cdcliente=c.cdexpedidor and c.cdempresa=cx.cdempresa '+
                           'left join cliente cr on cr.cdcliente=c.cdrecebedor and c.cdempresa=cr.cdempresa '+
                           'left join cliente co on co.cdcliente=c.cdtomador and c.cdempresa=co.cdempresa '+
                           'where c.cdempresa='+empresa.cdempresa.tostring+' and c.dtemissao between '+GetDtBanco(lp1a.dtinicio)+' and '+GetDtBanco(lp1a.dtfinal)+' '+
                           'order by c.cdcte');
  try
    if q.q.RecordCount = 0 then
    begin
      exit;
    end;
    cdctei := 0;
    gau1.Progress    := 3;
    gau.MaxValue     := q.q.RecordCount;
    gau.progress     := 0;
    itlp1a.nmespecie := uppercase(_cte);
    while not q.q.eof do
    begin
      gau.progress := gau.progress + 1;
      frmprogressbar.pnl.caption := 'Procesar '+_cte+' - Registro '+inttostr(q.q.RecNo)+' de '+inttostr(q.q.RecordCount);
      application.ProcessMessages;
      if cdctei = 0 then
      begin
        cdctei := q.q.fieldbyname(_cdcte).AsInteger
      end
      else
      begin
        Inc(cdctei);
      end;
      if cdctei < q.q.fieldbyname(_cdcte).AsInteger then
      begin
        mensagem.Add('O(s) cte(s) esta(m) faltando: '+inttostr(cdctei)+' até '+inttostr(q.q.fieldbyname(_cdcte).AsInteger-1)+'.');
        cdctei := q.q.fieldbyname(_cdcte).AsInteger;
      end;
      case q.q.FieldByName(_cdstcte).AsInteger of
        1: mensagem.Add('O cte '+q.q.fieldbyname(_cdcte).AsString+' não foi enviado.');
        2:
        begin
          with lp1a.itlp1a.New do // icms
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := q.q.fieldbyname(_cdcfop).asInteger;
            cdtpimposto  := 1;
            cdcte        := q.q.fieldbyname(_cdcte).AsInteger;
            cdentrada    := 0;
            cdsaida      := 0;
            cdcliente    := '';
            cdfornecedor := '';
            cduf         := 0;
            cdtpop1a     := 1;
            tpsaient     := '';
            dtentrada    := 0;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := _1;
            dtemissao    := 0;
            vlcontabil   := 0;
            vlbase       := 0;
            aliquota     := 0;
            vlimposto    := 0;
            vlisentas    := 0;
            vloutras     := 0;
            vlbaseicmssubtrib := 0;
            vlicmssubtrib := 0;
            dsobservacao  := uppercase(_cte+' '+_cancelado);
            nudocumento   := q.q.fieldbyname(_cdcte).asInteger;
            nuemitente    := '';
            sql.add(insert(true));
          end;
          with lp1a.itlp1a.New do // ipi
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := 0;
            cdtpimposto  := 2;
            cdcte        := q.q.fieldbyname(_cdcte).AsInteger;
            cdentrada    := 0;
            cdsaida      := 0;
            cdcliente    := '';
            cdfornecedor := '';
            cduf         := 0;
            cdtpop1a     := 1;
            tpsaient     := '';
            dtentrada    := 0;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := _1;
            dtemissao    := 0;
            vlcontabil   := 0;
            vlbase       := 0;
            aliquota     := 0;
            vlimposto    := 0;
            vlisentas    := 0;
            vloutras     := 0;
            vlbaseicmssubtrib := 0;
            vlicmssubtrib := 0;
            dsobservacao  := uppercase(_cte+' '+_cancelado);
            nudocumento   := q.q.fieldbyname(_cdcte).asInteger;
            nuemitente    := '';
            sql.add(insert(true));
          end;
          q.q.next;
          continue;
        end;
        4:
        begin
          with lp1a.itlp1a.New do // inserir icms
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := 0;
            cdtpimposto  := 1;
            cdcte        := q.q.fieldbyname(_cdcte).AsInteger;
            cdentrada    := 0;
            cdsaida      := 0;
            cdcliente    := '';
            cdfornecedor := '';
            cduf         := 0;
            cdtpop1a     := 1;
            tpsaient     := '';
            dtentrada    := 0;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := _1;
            dtemissao    := 0;
            vlcontabil   := 0;
            vlbase       := 0;
            aliquota     := 0;
            vlimposto    := 0;
            vlisentas    := 0;
            vloutras     := 0;
            vlbaseicmssubtrib := 0;
            vlicmssubtrib := 0;
            dsobservacao  := uppercase(_cte+' '+_inutilizado);
            nudocumento   := q.q.fieldbyname(_cdcte).asInteger;
            nuemitente    := '';
            sql.add(insert(true));
          end;
          with lp1a.itlp1a.New do // inserir ipi
          begin
            cdlp1a       := lp1a.cdlp1a;
            cditlp1a     := qgerar.GerarCodigo(_itlp1a);
            cdcfop       := 0;
            cdtpimposto  := 2;
            cdcte        := q.q.fieldbyname(_cdcte).AsInteger;
            cdentrada    := 0;
            cdsaida      := 0;
            cdcliente    := '';
            cdfornecedor := '';
            cduf         := 0;
            cdtpop1a     := 1;
            tpsaient     := '';
            dtentrada    := 0;
            nmespecie    := itlp1a.nmespecie;
            nuserie      := _1;
            dtemissao    := 0;
            vlcontabil   := 0;
            vlbase       := 0;
            aliquota     := 0;
            vlimposto    := 0;
            vlisentas    := 0;
            vloutras     := 0;
            vlbaseicmssubtrib := 0;
            vlicmssubtrib := 0;
            dsobservacao  := uppercase(_cte+' '+_inutilizado);
            nudocumento   := q.q.fieldbyname(_cdcte).asInteger;
            nuemitente    := '';
            sql.add(insert(true));
          end;
          q.q.next;
          continue;
        end;
      end;
      with lp1a.itlp1a.New do
      begin
        cdlp1a       := lp1a.cdlp1a;
        cditlp1a     := qgerar.GerarCodigo(_itlp1a);
        cdcfop       := q.q.fieldbyname(_cdcfop).AsInteger;
        cdtpimposto  := 1;
        cdcte        := q.q.fieldbyname(_cdcte).AsInteger;
        cdentrada    := 0;
        cdsaida      := 0;
        cdcliente    := DadosPessoaGetParticipanteCTE(q, _cliente);
        cdfornecedor := '';
        cduf         := DadosPessoaGetUFCTE(q, _uf);
        cdtpop1a     := 1;
        tpsaient     := _s;
        dtentrada    := q.q.fieldbyname(_dtemissao).AsDateTime;
        nmespecie    := itlp1a.nmespecie;
        nuserie      := _1;
        dtemissao    := q.q.fieldbyname(_dtemissao).AsDateTime;
        vlcontabil   := q.q.fieldbyname(_vlservico).AsCurrency;
        vlbase       := q.q.fieldbyname(_vlbaseicms).AsCurrency;
        aliquota     := q.q.fieldbyname(_alicms).Asfloat;
        vlimposto    := q.q.fieldbyname(_vlicms).AsCurrency;
        vlisentas    := 0;
        vloutras     := 0;
        vlbaseicmssubtrib := 0;
        vlicmssubtrib := 0;
        dsobservacao  := '';
        nudocumento   := q.q.fieldbyname(_cdcte).asInteger;
        nuemitente    := DadosPessoaGetParticipante(q);
        sql.add(insert(true));
      end;
      if itlp1a.cduf = 0 then
      begin
        itlp1a.cduf := empresa.endereco.cduf;
      end;
      w := lp1a.ItUfp1a.ObterIndice(itlp1a.cduf, _s);
      if w = -1 then
      begin
        lp1a.ItUfp1a.New;
        w := lp1a.ItUfp1a.count-1;
        lp1a.ItUfp1a.items[w].cdlp1a := lp1a.cdlp1a;
      end;
      lp1a.ItUfp1a.items[w].cduf       := itlp1a.cduf;
      lp1a.ItUfp1a.items[w].tpsaient   := _s;
      lp1a.ItUfp1a.items[w].vlcontabil := lp1a.ItUfp1a.items[w].vlcontabil + itlp1a.vlcontabil;
      lp1a.ItUfp1a.items[w].vlbase     := lp1a.ItUfp1a.items[w].vlbase     + itlp1a.vlbase;
      lp1a.ItUfp1a.items[w].vlimposto  := lp1a.ItUfp1a.items[w].vlimposto  + itlp1a.vlimposto;
      lp1a.ItUfp1a.items[w].vlisentas  := lp1a.ItUfp1a.items[w].vlisentas  + itlp1a.vlisentas;
      lp1a.ItUfp1a.items[w].vloutras   := lp1a.ItUfp1a.items[w].vloutras   + itlp1a.vloutras;
      k := -1;
      maximus := high(cfops);
      for h := 0 to maximus do
      begin
        if cfops[h].cdcfop = itlp1a.cdcfop then
        begin
          k := h;
          break;
        end;
      end;
      if (k = -1) then
      begin
        if not ((maximus = 0) and (cfops[0].cdcfop = 0))  then
        begin
          inc(maximus);
          setlength(cfops, maximus + 1);
        end;
        k := maximus;
      end;
      cfops[k].cdcfop     := itlp1a.cdcfop;
      cfops[k].vlcontabil := cfops[k].vlcontabil + itlp1a.vlcontabil;
      cfops[k].vlbase     := cfops[k].vlbase     + itlp1a.vlbase;
      cfops[k].vlimposto  := cfops[k].vlimposto  + itlp1a.vlimposto;
      cfops[k].vlisentas  := cfops[k].vlisentas  + itlp1a.vlisentas;
      cfops[k].vloutras   := cfops[k].vloutras   + itlp1a.vloutras;
      if itlp1a.cdcfop = 0 then
      begin
        exit;
      end;
      o := strtoint(copy(inttostr(itlp1a.cdcfop), 1, 1)) - 1;
      if o > 2 then
      begin
        o := o - 4;
      end;
      subtotals.Items[o].vlcontabil := subtotals.Items[o].vlcontabil + itlp1a.vlcontabil;
      subtotals.Items[o].vlbase     := subtotals.Items[o].vlbase     + icmscfop.vlbase;
      subtotals.Items[o].vlimposto  := subtotals.Items[o].vlimposto  + itlp1a.vlimposto;
      subtotals.Items[o].vlisentas  := subtotals.Items[o].vlisentas  + itlp1a.vlisentas;
      subtotals.Items[o].vloutras   := subtotals.Items[o].vloutras   + itlp1a.vloutras;
      with lp1a.itlp1a.New do
      begin
        cdlp1a       := lp1a.cdlp1a;
        cditlp1a     := qgerar.GerarCodigo(_itlp1a);
        cdcfop       := itlp1a.cdcfop;
        cdtpimposto  := 2;
        cdcte        := itlp1a.cdcte;
        cdentrada    := itlp1a.cdentrada;
        cdsaida      := itlp1a.cdsaida;
        cdcliente    := itlp1a.cdcliente;
        cdfornecedor := itlp1a.cdfornecedor;
        cduf         := itlp1a.cduf;
        cdtpop1a     := 1;
        tpsaient     := itlp1a.tpsaient;
        dtentrada    := itlp1a.dtentrada;
        nmespecie    := itlp1a.nmespecie;
        nuserie      := _1;
        dtemissao    := itlp1a.dtemissao;
        vlcontabil   := q.q.fieldbyname(_vlservico).AsCurrency;
        vlbase       := 0;
        aliquota     := 0;
        vlimposto    := 0;
        vlisentas    := 0;
        vloutras     := q.q.fieldbyname(_vlservico).AsCurrency;
        vlbaseicmssubtrib := 0;
        vlicmssubtrib := 0;
        dsobservacao  := itlp1a.DSOBSERVACAO;
        nudocumento   := q.q.fieldbyname(_cdcte).asInteger;
        nuemitente    := itlp1a.nuemitente;
        sql.add(insert(true));
      end;
      if itlp1a.cduf = 0 then
      begin
        itlp1a.cduf := empresa.endereco.cduf;
      end;
      w := lp1a.ItUfp1a.ObterIndice(itlp1a.cduf, _s);
      if w = -1 then
      begin
        lp1a.ItUfp1a.New;
        w := lp1a.ItUfp1a.count-1;
        lp1a.ItUfp1a.items[w].cdlp1a := lp1a.cdlp1a;
      end;
      lp1a.ItUfp1a.items[w].cduf       := itlp1a.cduf;
      lp1a.ItUfp1a.items[w].tpsaient   := _s;
      lp1a.ItUfp1a.items[w].vlcontabil := lp1a.ItUfp1a.items[w].vlcontabil + itlp1a.vlcontabil;
      lp1a.ItUfp1a.items[w].vlbase     := lp1a.ItUfp1a.items[w].vlbase     + itlp1a.vlbase;
      lp1a.ItUfp1a.items[w].vlimposto  := lp1a.ItUfp1a.items[w].vlimposto  + itlp1a.vlimposto;
      lp1a.ItUfp1a.items[w].vlisentas  := lp1a.ItUfp1a.items[w].vlisentas  + itlp1a.vlisentas;
      lp1a.ItUfp1a.items[w].vloutras   := lp1a.ItUfp1a.items[w].vloutras   + itlp1a.vloutras;
      k := -1;
      maximus := high(cfopis);
      for h := 0 to maximus do
      begin
        if cfopis[h].cdcfop = itlp1a.cdcfop then
        begin
          k := h;
          break;
        end;
      end;
      if (k = -1) then
      begin
        if not ((maximus = 0) and (cfopis[0].cdcfop = 0))  then
        begin
          inc(maximus);
          setlength(cfopis, maximus + 1);
        end;
        k := maximus;
      end;
      cfopis[k].cdcfop     := itlp1a.cdcfop;
      cfopis[k].vlcontabil := cfopis[k].vlcontabil + itlp1a.vlcontabil;
      cfopis[k].vlbase     := cfopis[k].vlbase     + itlp1a.vlbase;
      cfopis[k].vlimposto  := cfopis[k].vlimposto  + itlp1a.vlimposto;
      cfopis[k].vlisentas  := cfopis[k].vlisentas  + itlp1a.vlisentas;
      cfopis[k].vloutras   := cfopis[k].vloutras   + itlp1a.vloutras;
      if itlp1a.cdcfop = 0 then
      begin
        exit;
      end;
      o := strtoint(copy(inttostr(itlp1a.cdcfop), 1, 1)) - 1;
      if o > 2 then
      begin
        o := o - 4;
      end;
      subtotalis.Items[o].vlcontabil := subtotalis.Items[o].vlcontabil + itlp1a.vlcontabil;
      subtotalis.Items[o].vlbase     := subtotalis.Items[o].vlbase     + icmscfop.vlbase;
      subtotalis.Items[o].vlimposto  := subtotalis.Items[o].vlimposto  + itlp1a.vlimposto;
      subtotalis.Items[o].vlisentas  := subtotalis.Items[o].vlisentas  + itlp1a.vlisentas;
      subtotalis.Items[o].vloutras   := subtotalis.Items[o].vloutras   + itlp1a.vloutras;
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

end.}
