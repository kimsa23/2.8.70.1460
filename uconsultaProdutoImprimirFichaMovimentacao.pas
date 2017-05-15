unit uconsultaProdutoImprimirFichaMovimentacao;

interface

uses Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  stdctrls, ExtCtrls, ComCtrls, Dialogs,
  DB, sqlexpr, dbclient, provider,
  umontarsql, udatahora, unumero, ustrings, uprogressbar, uconstantes, uregistro,
  classeaplicacao, classeempresa, classeretornasql, classequery,
  frxClass, frxDBSet;

type
  TfrmconsultaProdutoImprimirFichaMovimentacao = class(TForm)
    dbd1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private { Private declarations }
  public  { Public declarations }
  end;

var
  frmconsultaProdutoImprimirFichaMovimentacao: TfrmconsultaProdutoImprimirFichaMovimentacao;

function imprimirconsultaprodutofichamovimentacao(cdproduto, cdgrupo:TStrings; dti, dtf : TDate; tpdata, cbxcodigo: string; bogrupo:boolean; bonflivro, bosuprimirzerado, bofichanegativa:boolean):boolean;

implementation

{$R *.dfm}

function imprimirconsultaprodutofichamovimentacao(cdproduto, cdgrupo:TStrings; dti, dtf : TDate;
  tpdata, cbxcodigo: string; bogrupo:boolean; bonflivro, bosuprimirzerado, bofichanegativa:boolean):boolean;
  function QtdMovimento(cdproduto, tipo, tbl :string;dti, dtf:TDate):extended;
  var
    sql : string;
  begin
    tbl := lowercase(tbl);
    if tbl = _saida then
    begin
      sql := 'select sum(i.qtitem) '+
             'from itsaida i '+
             'inner join saida s on s.cdsaida=i.cdsaida and s.cdempresa=i.cdempresa '+
             'inner join cfop c on c.cdcfop=i.cdcfop '+
             'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
             'where t.cdempresa='+empresa.cdempresa.tostring+' and t.boestoque=''S'' and i.cdproduto='+cdproduto+' and t.tpentsai='+quotedstr(tipo)+' and s.'+tpdata+' between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
      if bonflivro then
      begin
        sql := sql + 'and c.BOLIVROPRODUCAO=''S''';
      end;
    end
    else if tbl = _entrada then
    begin
      sql := 'select sum(i.qtitem) '+
             'from itentrada i '+
             'inner join entrada e on e.cdentrada=i.cdentrada and s.cdempresa=i.cdempresa '+
             'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=s.cdempresa '+
             'where t.cdempresa='+empresa.cdempresa.tostring+' and t.boestoque=''S'' and i.cdproduto='+cdproduto+' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)
    end
    else if tbl = _movto then
    begin
      sql := 'select sum(i.qtitem) '+
             'from itmovto i '+
             'inner join movto m on m.cdmovto=i.cdmovto and m.cdempresa=i.cdempresa '+
             'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and m.cdempresa=t.cdempresa '+
             'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto='+cdproduto+' and t.tpmovto='+quotedstr(tipo)+' and m.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf);
    end;
    result := RetornaSQLCurrency(sql);
  end;
  procedure CriarTabelaTemporaria(var tbl: string; var qt: tclientdataset);
  begin
    qt.FieldDefs.add(_CDPRODUTO , ftstring,  20, false);
    qt.FieldDefs.add(_NMPRODUTO , ftstring, 100, false);
    qt.FieldDefs.add(_UNIDADE   , ftstring,  20, false);
    qt.FieldDefs.add('QTSALDOANT', ftstring,  20, false);
    qt.FieldDefs.add('QTSALDOV'  , ftstring,  20, false);
    qt.FieldDefs.add('QTCUSTOM'  , ftstring,  20, false);
    qt.FieldDefs.add('DOC'       , ftstring,  20, false);
    qt.FieldDefs.add(_DTEMISSAO , ftstring,  10, false);
    qt.FieldDefs.add('ES'        , ftstring,  10, false);
    qt.FieldDefs.add('TD'        , ftstring,  10, false);
    qt.FieldDefs.add('QUANT'     , ftcurrency);
    qt.FieldDefs.add('VT'        , ftcurrency);
    qt.FieldDefs.add('SALDOQTDE' , ftcurrency);
    qt.FieldDefs.add('SALDOVALOR', ftcurrency);
    qt.FieldDefs.add('CUSTOM'    , ftcurrency);
    qt.CreateDataSet;
  end;
  function nmclassifica:string;
  begin
    if cbxcodigo = 'Grupo+Item' then
    begin
      result := _cditem
    end
    else if cbxcodigo = 'Código Reduzido' then
    begin
      result := _cdproduto
    end
    else if cbxcodigo = 'Código Alternativo' then
    begin
      result := _cdalternativo;
    end;
  end;
  function makesql:string;
  begin
    result := 'select p.cdproduto'+
                    ',p.cdgrupo'+
                    ',p.cditem'+
                    ',p.cdalternativo'+
                    ',p.nmproduto'+
                    ',u.nmunidade'+
                    ',p.nunivel'+
                    ',(select first 1 qtestoque from hcustomedio where cdempresa=p.cdempresa and cdproduto=p.cdproduto and (dthistorico<'+getdtbanco(dti)+') order by dthistorico desc) qtestoque'+
                    ',(select first 1 vlcustomedio from hcustomedio where cdempresa=p.cdempresa and cdproduto=p.cdproduto and (dthistorico<'+getdtbanco(dti)+') order by dthistorico desc) vlcustomedio'+
                    ',(select first 1 vlsaldovalor from hcustomedio where cdempresa=p.cdempresa and cdproduto=p.cdproduto and (dthistorico<'+getdtbanco(dti)+') order by dthistorico desc) vlsaldovalor '+
               'from produto p '+
               'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and p.cdempresa=t.cdempresa '+
               'left join unidade u on u.cdunidade=p.cdunidade and u.cdempresa=p.cdempresa '+
               'where p.cdempresa='+empresa.cdempresa.tostring+' and t.boservico=''N'' ';
    sqlmontarlista(cdgrupo   , _p, _cdgrupo  , result);
    sqlmontarlista(cdproduto , _p, _cdproduto, result);
    result := result + 'order by ';
    if bogrupo then
    begin
      result := result + 'p.nunivel,';
    end;
    result := result + 'p.'+nmclassifica;
  end;
  function makesqlmovto:string;
  begin
    result := 'select i.cdmovto'+
                    ',m.dtemissao'+
                    ',t.tpmovto'+
                    ',t.nmtpmovto'+
                    ',i.qtitem'+
                    ',i.vlunitario'+
                    ',i.vltotal'+
                    ',i.vlsaldovalor'+
                    ',i.cditlote' +
                    ',i.cdproduto '+
              'from movto m '+
              'inner join itmovto i on m.cdmovto=i.cdmovto and m.cdempresa=i.cdempresa '+
              'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and m.cdempresa=t.cdempresa '+
              'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
              'where p.cdempresa='+empresa.cdempresa.tostring+' and m.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdgrupo   , _p, _cdgrupo  , result);
    sqlmontarlista(cdproduto , _p, _cdproduto, result);
    result := result + 'order by i.cdproduto,m.dtemissao,t.tpmovto,i.cdmovto,i.cditmovto'
  end;
  function makesqlentrada:string;
  begin
    result := 'select e.nuentrada'+
                    ',e.dtsaida'+
                    ',t.nmreduzido'+
                    ',i.qtitem'+
                    ',i.vltotal'+
                    ',i.vlcofins'+
                    ',i.vlpis'+
                    ',i.vlicms'+
                    ',i.vlipi'+
                    ',i.vlfrete'+
                    ',i.vldesconto'+
                    ',i.vlcustomedio'+
                    ',i.vlsaldovalor'+
                    ',i.vloutdespesa'+
                    ',i.vlseguro'+
                    ',i.vlicmssubtrib'+
                    ',i.borecuperaicms'+
                    ',i.borecuperapis'+
                    ',i.borecuperacofins'+
                    ',i.borecuperaipi'+
                    ',i.cdproduto '+
              'from entrada e '+
              'inner join itentrada i on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
              'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and e.cdempresa=t.cdempresa '+
              'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
              'inner join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and p.cdempresa=tp.cdempresa '+
              'where p.cdempresa='+empresa.cdempresa.tostring+' and tp.boservico=''N'' and t.boestoque=''S'' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdgrupo   , _p, _cdgrupo  , result);
    sqlmontarlista(cdproduto , _p, _cdproduto, result);
    result := result + 'order by i.cdproduto,e.dtsaida,e.nuentrada,i.cditentrada'
  end;
  function makesqlsaida:string;
  begin
    result := 'select s.nusaida'+
                    ',s.'+tpdata+' dtsaida'+
                    ',s.tpentsai'+
                    ',t.nmreduzido'+
                    ',i.qtitem'+
                    ',i.vltotal'+
                    ',i.vlpis'+
                    ',i.vlcofins'+
                    ',i.vlicms'+
                    ',i.vlipi'+
                    ',i.vldesconto'+
                    ',i.vlfrete'+
                    ',i.vlsaldovalor'+
                    ',i.vloutdespesa'+
                    ',i.vlseguro'+
                    ',i.vlicmssubtrib'+
                    ',p.borecuperaicms'+
                    ',p.borecuperacofins'+
                    ',p.borecuperapis'+
                    ',i.vlcustomedio'+
                    ',i.borecuperaipi'+
                    ',i.cdproduto '+
              'from saida s '+
              'inner join itsaida i on s.cdsaida=i.cdsaida and s.cdempresa=i.cdempresa '+
              'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
              'inner join cfop c on c.cdcfop=i.cdcfop '+
              'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
              'inner join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and p.cdempresa=tp.cdempresa '+
              'where p.cdempresa='+empresa.cdempresa.tostring+' and tp.boservico=''N'' and t.boestoque=''S'' and s.'+tpdata+' between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    if bonflivro then
    begin
        result := result + 'and c.BOLIVROPRODUCAO=''S'' ';
    end;
    sqlmontarlista(cdgrupo   , _p, _cdgrupo  , result);
    sqlmontarlista(cdproduto , _p, _cdproduto, result);
    result := result + 'order by i.cdproduto,s.'+tpdata+',t.tpentsai,s.nusaida,i.CDitsaida';
  end;
var
  qt : tclientdataset;
  boqtnegativo : boolean;
  se, sm, ss, sr, s : tsqldataset;
  de, dm, ds, dr, d : TDataSetprovider;
  ce, cm, cs, cr, c : TClientdataset;
  nunivelcditem, vltotal, tpentsai, dtemissao, tbl, nmunidade, nmproduto, vlcustomedios : string;
  qtsaldoant,saldov,vlcustom, cditlote, qtsaldoanteriors, saldovalors : string;
  qtsaldoanterior, saldovalor, vltotal_, vlcustomedioanterior: currency;
  dti_ : TDate;
  procedure CabecalhoProduto;
  begin
    if cbxcodigo = 'Grupo+Item' then
    begin
      nunivelcditem := cr.fieldbyname(_nunivel).Asstring+'.'+FormatarTextoEsquerda(cr.fieldbyname(_cditem).Asstring, __tamcditem, _0)
    end
    else if cbxcodigo = 'Código Reduzido' then
    begin
      nunivelcditem := cr.fieldbyname(_cdproduto).Asstring
    end
    else if cbxcodigo = 'Código Alternativo' then
    begin
      nunivelcditem := cr.fieldbyname(_cdalternativo).Asstring;
    end;
    nunivelcditem := FormatarTextoEsquerda(nunivelcditem, 15);
    nmproduto        := FormatarTextoDireita(copy(cr.fieldbyname(_nmproduto).Asstring, 1, 35), 35);
    nmunidade        := FormatarTextoDireita(copy(cr.fieldbyname(_nmunidade).Asstring, 1, 07), 7);
    qtsaldoanteriors := FormatarTextoEsquerda(formatfloat(__decimal4, qtsaldoanterior), 12);
    if qtsaldoanterior = 0 then
    begin
      vlcustomedioanterior := 0
    end
    else
    begin
      vlcustomedioanterior := cr.fieldbyname(_vlcustomedio).Ascurrency;
    end;
    saldovalor    := cr.fieldbyname(_vlsaldovalor).Ascurrency;
    saldovalors   := FormatarMoeda        (saldovalor, 12);
    vlcustomedios := FormatarTextoEsquerda(formatfloat(__decimal4, vlcustomedioanterior), 12);
  end;
  procedure formatarCampoMovimento(c: tclientdataset; nudocumento, tpentsai, nutpdoc, qtitem: string; vlcustomedioanterior: currency; cditlote:string='');
  begin
    qt.Append;
    qt.Fieldbyname(_CDPRODUTO).Asstring       := nunivelcditem;
    qt.fieldbyname(_NMPRODUTO).AsString       := nmproduto;
    qt.fieldbyname(_UNIDADE).AsString         := nmunidade;
    qt.fieldbyname(_qt+_saldo+'ANT').AsString   := qtsaldoant;
    qt.fieldbyname(_qt+_saldo+_V).AsString      := saldov;
    qt.fieldbyname(_QT+_CUSTO+_M).AsString    := vlcustom;
    qt.fieldbyname(_DOC).AsString             := nudocumento;
    qt.fieldbyname(_DTEMISSAO).AsString       := dtemissao;
    qt.fieldbyname(_E+_S).AsString            := tpentsai;
    qt.fieldbyname(_T+_D).AsString            := nutpdoc;
    qt.fieldbyname(_QUANT).Ascurrency         := c.fieldbyname(_qtitem).Ascurrency;
    qt.fieldbyname(_V+_T).Ascurrency          := vltotal_;
    qt.fieldbyname(_SALDO+_QTD+_E).Ascurrency := qtsaldoanterior;
    qt.fieldbyname(_SALDO+_VALOR).AsCurrency  := saldovalor;
    qt.fieldbyname(_CUSTO+_M).AsCurrency      := vlcustomedioanterior;
    qt.Post;
  end;
  procedure movimentacaoEntrada;
  begin
    while not ce.eof do
    begin
      if ce.fieldbyname(_dtsaida).AsDateTime > dti_ then
      begin
        break;
      end;
      vltotal_ := ce.fieldbyname(_vltotal).Ascurrency      + ce.fieldbyname(_vlfrete).Ascurrency -
                  ce.fieldbyname(_vldesconto).Ascurrency   + ce.fieldbyname(_vlipi).Ascurrency   +
                  ce.fieldbyname(_vloutdespesa).Ascurrency + ce.fieldbyname(_vlseguro).Ascurrency+
                  ce.fieldbyname(_vlicmssubtrib).Ascurrency;

      if ce.fieldbyname(_borecuperaicms).asstring   = _S then
      begin
        vltotal_ := vltotal_ - ce.fieldbyname(_vlicms).ascurrency;
      end;
      if ce.fieldbyname(_borecuperacofins).Asstring = _S then
      begin
        vltotal_ := vltotal_ - ce.fieldbyname(_vlcofins).Ascurrency;
      end;
      if ce.fieldbyname(_borecuperapis).asstring = _S then
      begin
        vltotal_ := vltotal_ - ce.fieldbyname(_vlpis).ascurrency;
      end;
      if ce.fieldbyname(_borecuperaipi).asstring = _S then
      begin
        vltotal_ := vltotal_ - ce.fieldbyname(_vlipi).ascurrency;
      end;
      vlcustomedioanterior := ce.fieldbyname(_vlcustomedio).Ascurrency;
      qtsaldoanterior      := qtsaldoanterior + ce.fieldbyname(_qtitem).AsCurrency;
      saldovalor           := ce.fieldbyname(_vlsaldovalor).Ascurrency;
      vlcustomedios        := formatfloat(__decimal4, ce.fieldbyname(_vlcustomedio).AsCurrency);

      vltotal          := formatfloat(__moeda, vltotal_);
      qtsaldoanteriors := formatfloat(__decimal4, qtsaldoanterior);
      saldovalors      := formatfloat(__moeda, saldovalor);
      if not boqtnegativo then
      begin
        boqtnegativo := qtsaldoanterior < 0; 
      end;

      tpentsai         := _E;
      formatarCampoMovimento(ce, ce.fieldbyname(_nuentrada).Asstring, tpentsai, copy(ce.fieldbyname(_nmreduzido).Asstring, 1, 3), formatfloat(__decimal4, ce.fieldbyname(_qtitem).Ascurrency), vlcustomedioanterior);
      ce.next;
    end;
  end;
  procedure MovimentacaoSaida;
  begin
    while not cs.eof do
    begin
      if cs.fieldbyname(_dtsaida).AsDateTime > dti_ then
      begin
        break;
      end;
      vltotal_ := cs.fieldbyname(_qtitem).Ascurrency * cs.fieldbyname(_vlcustomedio).Ascurrency;
      vltotal  := formatfloat(__moeda, vltotal_);
      if cs.fieldbyname(_tpentsai).Asstring = _E then
      begin
        qtsaldoanterior := qtsaldoanterior + cs.fieldbyname(_qtitem).Ascurrency
      end
      else
      begin
        qtsaldoanterior := qtsaldoanterior - cs.fieldbyname(_qtitem).Ascurrency;
      end;
      qtsaldoanteriors     := formatfloat(__decimal4, qtsaldoanterior);
      saldovalor           := cs.fieldbyname(_vlsaldovalor).Ascurrency;
      vlcustomedioanterior := cs.fieldbyname(_vlcustomedio).Ascurrency;
      vlcustomedios        := formatfloat(__decimal4, cs.fieldbyname(_vlcustomedio).Ascurrency);
      if not boqtnegativo then
      begin
        boqtnegativo := qtsaldoanterior < 0;
      end;
      saldovalors          := formatfloat(__moeda, saldovalor);
      formatarCampoMovimento(cs, cs.fieldbyname(_nusaida).Asstring, cs.fieldbyname(_tpentsai).Asstring, copy(cs.fieldbyname(_nmreduzido).Asstring, 1, 3), formatfloat(__decimal4, cs.fieldbyname(_qtitem).Ascurrency),
                             vlcustomedioanterior);
      cs.next;
    end;
  end;
  procedure MovimentacaoMovto;
  begin
    while not cm.eof do
    begin
      if cm.fieldbyname(_dtemissao).AsDateTime > dti_ then
      begin
        break;
      end;
      vltotal_ := cm.fieldbyname(_vltotal).Ascurrency;
      vltotal  := formatfloat(__moeda, vltotal_);

      if cm.fieldbyname(_tpmovto).Asstring = _E then
      begin
        qtsaldoanterior := qtsaldoanterior + cm.fieldbyname(_qtitem).Ascurrency
      end
      else
      begin
        qtsaldoanterior := qtsaldoanterior - cm.fieldbyname(_qtitem).Ascurrency;
      end;

      qtsaldoanteriors := formatfloat(__decimal4, qtsaldoanterior);
      saldovalor       := cm.fieldbyname(_vlsaldovalor).Ascurrency;
      saldovalors      := formatfloat(__moeda, saldovalor);
      cditlote         := cm.fieldbyname(_cd+_it+_lote).Asstring;

      if not boqtnegativo then
      begin
        boqtnegativo := qtsaldoanterior < 0;
      end;

      if saldovalor <= 0 then
      begin
        vlcustomedios := formatfloat(__decimal4, 0);
        formatarCampoMovimento(cm, cm.fieldbyname(_cd+_movto).Asstring, cm.fieldbyname(_tpmovto).Asstring, copy(cm.fieldbyname(_nmtpmovto).Asstring, 1, 3), formatfloat(__decimal4, cm.fieldbyname(_qtitem).Ascurrency),
                               0, cditlote);
      end
      else
      begin
        vlcustomedios := formatfloat(__decimal4, cm.fieldbyname(_vlunitario).Ascurrency);
        formatarCampoMovimento(cm, cm.fieldbyname(_cd+_movto).Asstring, cm.fieldbyname(_tpmovto).Asstring,
                               copy(cm.fieldbyname(_nmtpmovto).Asstring, 1, 3), formatfloat(__decimal4, cm.fieldbyname(_qtitem).Ascurrency),
                               cm.fieldbyname(_vlunitario).Ascurrency, cditlote);
      end;
      cm.next;
    end;
  end;
begin
  boqtnegativo   := false;
  nunivelcditem  := '';

  sr := tsqldataset.create     (nil);
  dr := TDataSetprovider.Create(nil);
  cr := TClientdataset.Create  (nil);

  s := tsqldataset.create     (nil);
  d := TDataSetprovider.Create(nil);
  c := TClientdataset.Create  (nil);

  qt:= tclientdataset.create(nil);

  se := tsqldataset.create     (nil);
  de := TDataSetprovider.Create(nil);
  ce := TClientdataset.Create  (nil);

  sm := tsqldataset.create     (nil);
  dm := TDataSetprovider.Create(nil);
  cm := TClientdataset.Create  (nil);

  ss := tsqldataset.create     (nil);
  ds := TDataSetprovider.Create(nil);
  cs := TClientdataset.Create  (nil);

  ss.GetMetadata := False;
  sm.GetMetadata := False;
  se.GetMetadata := False;
  s.GetMetadata  := False;
  sr.GetMetadata := False;

  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    s.SQLConnection  := aplicacao.con2;
    sr.SQLConnection := aplicacao.con2;
    se.SQLConnection := aplicacao.con2;
    sm.SQLConnection := aplicacao.con2;
    ss.SQLConnection := aplicacao.con2;
    frmprogressbar.Show;
    frmprogressbar.pnl.caption := 'Criar Tabela temporária';
    Application.ProcessMessages;
    criartabelatemporaria(tbl, qt);
    frmprogressbar.pnl.caption := 'Abrir Tabela de Produtos';
    Application.ProcessMessages;
    sr.CommandText   := makesql;

    dr.DataSet       := sr;
    cr.SetProvider(dr);
    cr.Open;
    cr.Addindex(_indice, 'NUNIVEL;'+nmclassifica,[]);
    cr.indexname := _indice;
    cr.First;
    //
    frmprogressbar.pnl.caption := 'Abrir Tabela de Compra';
    Application.ProcessMessages;
    se.CommandText := makesqlentrada;
    de.DataSet     := se;
    ce.SetProvider(de);
    ce.Open;
    //
    frmprogressbar.pnl.caption := 'Abrir Tabela de Movimentação de Estoque';
    Application.ProcessMessages;
    sm.CommandText := makesqlmovto;
    dm.DataSet     := sm;
    cm.SetProvider(dm);
    cm.Open;
    //
    frmprogressbar.pnl.caption := 'Abrir Tabela de Nota Fiscal';
    Application.ProcessMessages;
    ss.CommandText := makesqlsaida;
    ds.DataSet     := ss;
    cs.SetProvider(ds);
    cs.Open;
    //
    frmprogressbar.gau1.Visible := true;
    frmprogressbar.gau.MaxValue := cr.RecordCount;
    frmprogressbar.Height := 43;
    frmprogressbar.Show;
    while not cr.Eof do // para cada produto
    begin
      boqtnegativo := false;
      frmprogressbar.gau.Progress := cr.RecNo;
      frmprogressbar.pnl.caption := 'Registro '+inttostr(frmprogressbar.gau.Progress)+
                                    ' de '+inttostr(frmprogressbar.gau.MaxValue)+
                                    ' - Produto: '+cr.fieldbyname(_cdproduto).Asstring+' - '+cr.fieldbyname(_nmproduto).Asstring;
      Application.ProcessMessages;
      qtsaldoanterior  := cr.fieldbyname(_qtestoque).Ascurrency; // estoque de acordo com a ficha de movimentação

      ce.filtered := False;
      ce.filter := 'cdproduto='+cr.fieldbyname(_cdproduto).AsString;
      Ce.filtered := True;

      cm.filtered := False;                                    
      cm.filter := 'cdproduto='+cr.fieldbyname(_cdproduto).AsString;
      cm.filtered := true;

      cs.filtered := False;
      cs.filter := 'cdproduto='+cr.fieldbyname(_cdproduto).AsString;
      cs.filtered := true;

      if (Ce.recordcount > 0) or (cm.recordcount > 0) or (cs.recordcount > 0) or (qtsaldoanterior > 0) then
      begin
        CabecalhoProduto;
        qtsaldoant := qtsaldoanteriors;
        saldov     := saldovalors;
        vlcustom   := vlcustomedios;
        dti_         := dti;
        frmprogressbar.gau1.Progress := 0;
        frmprogressbar.gau1.MaxValue := round(dtf - dti_);
        while dti_ <= dtf do
        begin
          frmprogressbar.gau1.Progress := frmprogressbar.gau1.Progress + 1;
          application.ProcessMessages;
          dtemissao   := formatdatetime(_dd_mm_yyyy, dti_);
          movimentacaoentrada;
          movimentacaoSaida;
          movimentacaoMovto;
          dti_ := dti_ + 1;
        end;
      end;
      cr.next;
    end;
    //
    frmconsultaProdutoImprimirFichaMovimentacao := tfrmconsultaProdutoImprimirFichaMovimentacao.Create(application);
    try
      with frmconsultaProdutoImprimirFichaMovimentacao do
      begin
        dbd1.DataSet := qt;
        frxReport1.Variables['vNMEmpresa'] := QuotedStr(Empresa.nmempresa);
        frxReport1.ShowReport;
      end;
    finally
      freeandnil(frmconsultaProdutoImprimirFichaMovimentacao);
    end;
    result := true;
  finally
    freeandnil(frmprogressbar);
    freeandnil(s);
    freeandnil(sr);
    freeandnil(sm);
    freeandnil(ss);
    freeandnil(se);
    freeandnil(qt);
    freeandnil(d);
    freeandnil(dr);
    freeandnil(dm);
    freeandnil(ds);
    freeandnil(de);
    freeandnil(c);
    freeandnil(cr);
    freeandnil(cm);
    freeandnil(cs);
    freeandnil(ce);
  end ;
end;

end.
