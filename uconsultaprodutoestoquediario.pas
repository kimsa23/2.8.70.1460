unit uconsultaprodutoestoquediario;

interface

uses
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  stdctrls, ExtCtrls, ComCtrls, Dialogs,
  DB,
  umontarsql, udatahora, unumero, ustrings, uprogressbar,
  uconstantes, uregistro,
  classeaplicacao, classeempresa, classeretornasql, classequery,
  frxClass, frxDBSet;

type
  TfrmconsultaProdutoImprimirEstoquediario = class(TForm)
    dbd1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private { Private declarations }
  public  { Public declarations }
  end;

var
  frmconsultaProdutoImprimirEstoquediario: TfrmconsultaProdutoImprimirEstoquediario;

function imprimirconsultaprodutoEstoquediario(cdproduto, cdgrupo:TStrings; dti, dtf : TDate; tpdata, cbxcodigo: string; bogrupo:boolean; bonflivro, bosuprimirzerado, bofichanegativa:boolean):boolean;

implementation

{$R *.dfm}

const
  _sqlentrada = 'select e.nuentrada'+
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
              'inner join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and p.cdempresa=tp.cdempresa ';
  _sqlmovto = 'select i.cdmovto'+
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
              'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa ';

function imprimirconsultaprodutoEstoquediario(cdproduto, cdgrupo:TStrings; dti, dtf : TDate; tpdata, cbxcodigo: string; bogrupo:boolean; bonflivro, bosuprimirzerado, bofichanegativa:boolean):boolean;
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
    result := _sqlmovto+
              'where p.cdempresa='+empresa.cdempresa.tostring+' and m.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdgrupo   , _p, _cdgrupo  , result);
    sqlmontarlista(cdproduto , _p, _cdproduto, result);
    result := result + 'order by i.cdproduto,m.dtemissao,t.tpmovto,i.cdmovto,i.cditmovto'
  end;
  function makesqlentrada:string;
  begin
    result := _sqlentrada+
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
type
  TRegistro = record
    cdproduto  : string;
    nmproduto  : string;
    nmunidade  : string;
    qtsaldoant : string;
    qtsaldov   : string;
    qtcustom   : string;
    dtemissao  : string;
    qtsaldo    : Double;
    vlsaldo    : Currency;
    custom     : Currency;
  end;
var
  registro : TRegistro;
  boentrou : Boolean;
  qt : TDataClient;
  boqtnegativo : boolean;
  ce, cm, cs, cr, c : TClasseQuery;
  dtemissao, nunivelcditem, vltotal, tpentsai, nmunidade, nmproduto, vlcustomedios : string;
  vlcustom, saldov, qtsaldoant, cditlote, qtsaldoanteriors, saldovalors : string;
  qtsaldoanterior, saldovalor, vltotal_, vlcustomedioanterior: currency;
  dti_ : TDate;
  procedure zerar_registro;
  begin
    registro.cdproduto  := '';
    registro.nmproduto  := '';
    registro.nmunidade  := '';
    registro.qtsaldoant := '';
    registro.qtsaldov   := '';
    registro.qtcustom   := '';
    registro.dtemissao  := '';
    registro.qtsaldo    := 0;
    registro.vlsaldo    := 0;
    registro.custom     := 0;
  end;
  procedure CabecalhoProduto;
  begin
    if cbxcodigo = 'Grupo+Item' then
    begin
      nunivelcditem := cr.q.fieldbyname(_nunivel).Asstring+'.'+FormatarTextoEsquerda(cr.q.fieldbyname(_cditem).Asstring, __tamcditem, _0)
    end
    else if cbxcodigo = 'Código Reduzido' then
    begin
      nunivelcditem := cr.q.fieldbyname(_cdproduto).Asstring
    end
    else if cbxcodigo = 'Código Alternativo' then
    begin
      nunivelcditem := cr.q.fieldbyname(_cdalternativo).Asstring;
    end;
    nunivelcditem := FormatarTextoEsquerda(nunivelcditem, 15);
    nmproduto        := FormatarTextoDireita(copy(cr.q.fieldbyname(_nmproduto).Asstring, 1, 35), 35);
    nmunidade        := FormatarTextoDireita(copy(cr.q.fieldbyname(_nmunidade).Asstring, 1, 07), 7);
    qtsaldoanteriors := FormatarTextoEsquerda(formatfloat(__decimal4, qtsaldoanterior), 12);
    if qtsaldoanterior = 0 then
    begin
      vlcustomedioanterior := 0
    end
    else
    begin
      vlcustomedioanterior := cr.q.fieldbyname(_vlcustomedio).Ascurrency;
    end;
    saldovalor    := cr.q.fieldbyname(_vlsaldovalor).Ascurrency;
    saldovalors   := FormatarMoeda        (saldovalor, 12);
    vlcustomedios := FormatarTextoEsquerda(formatfloat(__decimal4, vlcustomedioanterior), 12);
  end;
  procedure inserir_registro;
  begin
    qt.m.Append;
    qt.m.Fieldbyname(_CDPRODUTO).Asstring       := registro.cdproduto;
    qt.m.fieldbyname(_NMPRODUTO).AsString       := registro.nmproduto;
    qt.m.fieldbyname(_UNIDADE).AsString         := registro.nmunidade;
    qt.m.fieldbyname(_qtsaldo+'ANT').AsString := registro.qtsaldoant;
    qt.m.fieldbyname(_qtsaldo+_V).AsString    := registro.qtsaldov;
    qt.m.fieldbyname(_QT+_CUSTO+_M).AsString    := registro.qtcustom;
    qt.m.fieldbyname(_DTEMISSAO).AsString       := registro.dtemissao;
    qt.m.fieldbyname(_SALDO+_QTD+_E).Ascurrency := registro.qtsaldo;
    qt.m.fieldbyname(_SALDO+_VALOR).AsCurrency  := registro.vlsaldo;
    qt.m.fieldbyname(_CUSTO+_M).AsCurrency      := registro.custom;
    qt.m.Post;
  end;
  procedure formatarCampoMovimento(c: TClasseQuery; nudocumento, tpentsai, nutpdoc, qtitem: string; vlcustomedioanterior: currency; cditlote:string='');
  begin
    registro.cdproduto  := nunivelcditem;
    registro.nmproduto  := nmproduto;
    registro.nmunidade  := nmunidade;
    registro.qtsaldoant := qtsaldoant;
    registro.qtsaldov   := saldov;
    registro.qtcustom   := vlcustom;
    registro.dtemissao  := dtemissao;
    registro.qtsaldo    := qtsaldoanterior;
    registro.vlsaldo    := saldovalor;
    registro.custom     := vlcustomedioanterior;
  end;
  procedure movimentacaoEntrada;
  begin
    while not ce.q.eof do
    begin
      if ce.q.fieldbyname(_dtsaida).AsDateTime > dti_ then
      begin
        break;
      end;
      boentrou := True;
      vltotal_ := ce.q.fieldbyname(_vltotal).Ascurrency      + ce.q.fieldbyname(_vlfrete).Ascurrency -
                  ce.q.fieldbyname(_vldesconto).Ascurrency   + ce.q.fieldbyname(_vlipi).Ascurrency   +
                  ce.q.fieldbyname(_vloutdespesa).Ascurrency + ce.q.fieldbyname(_vlseguro).Ascurrency+
                  ce.q.fieldbyname(_vlicmssubtrib).Ascurrency;

      if ce.q.fieldbyname(_borecuperaicms).asstring   = _S then
      begin
        vltotal_ := vltotal_ - ce.q.fieldbyname(_vlicms).ascurrency;
      end;
      if ce.q.fieldbyname(_borecuperacofins).Asstring = _S then
      begin
        vltotal_ := vltotal_ - ce.q.fieldbyname(_vlcofins).Ascurrency;
      end;
      if ce.q.fieldbyname(_borecuperapis).asstring = _S then
      begin
        vltotal_ := vltotal_ - ce.q.fieldbyname(_vlpis).ascurrency;
      end;
      if ce.q.fieldbyname(_borecuperaipi).asstring = _S then
      begin
        vltotal_ := vltotal_ - ce.q.fieldbyname(_vlipi).ascurrency;
      end;
      vlcustomedioanterior := ce.q.fieldbyname(_vlcustomedio).Ascurrency;
      qtsaldoanterior      := qtsaldoanterior + ce.q.fieldbyname(_qtitem).AsCurrency;
      saldovalor           := ce.q.fieldbyname(_vlsaldovalor).Ascurrency;
      vlcustomedios        := formatfloat(__decimal4, ce.q.fieldbyname(_vlcustomedio).AsCurrency);
      vltotal          := formatfloat(__moeda, vltotal_);
      qtsaldoanteriors := formatfloat(__decimal4, qtsaldoanterior);
      saldovalors      := formatfloat(__moeda, saldovalor);
      if not boqtnegativo then
      begin
        boqtnegativo := qtsaldoanterior < 0;
      end;
      tpentsai         := _E;
      formatarCampoMovimento(ce, ce.q.fieldbyname(_nuentrada).Asstring, tpentsai, copy(ce.q.fieldbyname(_nmreduzido).Asstring, 1, 3), formatfloat(__decimal4, ce.q.fieldbyname(_qtitem).Ascurrency), vlcustomedioanterior);
      ce.q.next;
    end;
  end;
  procedure MovimentacaoSaida;
  begin
    while not cs.q.eof do
    begin
      if cs.q.fieldbyname(_dtsaida).AsDateTime > dti_ then
      begin
        break;
      end;
      boentrou := True;
      vltotal_ := cs.q.fieldbyname(_qtitem).Ascurrency * cs.q.fieldbyname(_vlcustomedio).Ascurrency;
      vltotal  := formatfloat(__moeda, vltotal_);
      if cs.q.fieldbyname(_tpentsai).Asstring = _E then
      begin
        qtsaldoanterior := qtsaldoanterior + cs.q.fieldbyname(_qtitem).Ascurrency
      end
      else
      begin
        qtsaldoanterior := qtsaldoanterior - cs.q.fieldbyname(_qtitem).Ascurrency;
      end;
      qtsaldoanteriors     := formatfloat(__decimal4, qtsaldoanterior);
      saldovalor           := cs.q.fieldbyname(_vlsaldovalor).Ascurrency;
      vlcustomedioanterior := cs.q.fieldbyname(_vlcustomedio).Ascurrency;
      vlcustomedios        := formatfloat(__decimal4, cs.q.fieldbyname(_vlcustomedio).Ascurrency);
      if not boqtnegativo then
      begin
        boqtnegativo := qtsaldoanterior < 0;
      end;
      saldovalors          := formatfloat(__moeda, saldovalor);
      formatarCampoMovimento(cs, cs.q.fieldbyname(_nusaida).Asstring,
                             cs.q.fieldbyname(_tpentsai).Asstring,
                             copy(cs.q.fieldbyname(_nmreduzido).Asstring, 1, 3),
                             formatfloat(__decimal4, cs.q.fieldbyname(_qtitem).Ascurrency),
                             vlcustomedioanterior);
      cs.q.next;
    end;
  end;
  procedure MovimentacaoMovto;
  begin
    while not cm.q.eof do
    begin
      if cm.q.fieldbyname(_dtemissao).AsDateTime > dti_ then
      begin
        break;
      end;
      boentrou := True;
      vltotal_ := cm.q.fieldbyname(_vltotal).Ascurrency;
      vltotal  := formatfloat(__moeda, vltotal_);
      if cm.q.fieldbyname(_tpmovto).Asstring = _E then
      begin
        qtsaldoanterior := qtsaldoanterior + cm.q.fieldbyname(_qtitem).Ascurrency
      end
      else
      begin
        qtsaldoanterior := qtsaldoanterior - cm.q.fieldbyname(_qtitem).Ascurrency;
      end;
      qtsaldoanteriors := formatfloat(__decimal4, qtsaldoanterior);
      saldovalor       := cm.q.fieldbyname(_vlsaldovalor).Ascurrency;
      saldovalors      := formatfloat(__moeda, saldovalor);
      cditlote         := cm.q.fieldbyname(_cd+_it+_lote).Asstring;
      if not boqtnegativo then
      begin
        boqtnegativo := qtsaldoanterior < 0;
      end;
      if saldovalor <= 0 then
      begin
        vlcustomedios := formatfloat(__decimal4, 0);
        formatarCampoMovimento(cm, cm.q.fieldbyname(_cd+_movto).Asstring, cm.q.fieldbyname(_tpmovto).Asstring, copy(cm.q.fieldbyname(_nmtpmovto).Asstring, 1, 3), formatfloat(__decimal4, cm.q.fieldbyname(_qtitem).Ascurrency),
                               0, cditlote);
      end
      else
      begin
        vlcustomedios := formatfloat(__decimal4, cm.q.fieldbyname(_vlunitario).Ascurrency);
        formatarCampoMovimento(cm, cm.q.fieldbyname(_cd+_movto).Asstring, cm.q.fieldbyname(_tpmovto).Asstring,
                               copy(cm.q.fieldbyname(_nmtpmovto).Asstring, 1, 3), formatfloat(__decimal4, cm.q.fieldbyname(_qtitem).Ascurrency),
                               cm.q.fieldbyname(_vlunitario).Ascurrency, cditlote);
      end;
      cm.q.next;
    end;
  end;
begin
  boqtnegativo   := false;
  nunivelcditem  := '';
  frmprogressbar := tfrmprogressbar.Create(nil);
  qt:= TDataClient.create;
  cr := TClasseQuery.Create;
  c := TClasseQuery.Create;
  ce := TClasseQuery.Create;
  cm := TClasseQuery.Create;
  cs := TClasseQuery.Create;
  try
    frmprogressbar.Show;
    frmprogressbar.pnl.caption := 'Criar Tabela temporária';
    Application.ProcessMessages;
    qt.m.FieldDefs.add(_CDPRODUTO , ftstring,  20, false);
    qt.m.FieldDefs.add(_NMPRODUTO , ftstring, 100, false);
    qt.m.FieldDefs.add(_UNIDADE   , ftstring,  20, false);
    qt.m.FieldDefs.add('QTSALDOANT', ftstring,  20, false);
    qt.m.FieldDefs.add('QTSALDOV'  , ftstring,  20, false);
    qt.m.FieldDefs.add('QTCUSTOM'  , ftstring,  20, false);
    qt.m.FieldDefs.add(_DTEMISSAO , ftstring,  10, false);
    qt.m.FieldDefs.add('SALDOQTDE' , ftcurrency);
    qt.m.FieldDefs.add('SALDOVALOR', ftcurrency);
    qt.m.FieldDefs.add('CUSTOM'    , ftcurrency);
    qt.m.CreateDataSet;

    frmprogressbar.pnl.caption := 'Abrir Tabela de Produtos';
    Application.ProcessMessages;
    cr.q.sql.text   := makesql;
    cr.q.Open;
    cr.q.First;
    //
    frmprogressbar.pnl.caption := 'Abrir Tabela de Compra';
    Application.ProcessMessages;
    ce.q.sql.text := makesqlentrada;
    ce.q.Open;
    //
    frmprogressbar.pnl.caption := 'Abrir Tabela de Movimentação de Estoque';
    Application.ProcessMessages;
    cm.q.sql.text := makesqlmovto;
    cm.q.Open;
    //
    frmprogressbar.pnl.caption := 'Abrir Tabela de Nota Fiscal';
    Application.ProcessMessages;
    cs.q.sql.text := makesqlsaida;
    cs.q.Open;
    //
    frmprogressbar.gau1.Visible := true;
    frmprogressbar.gau.MaxValue := cr.q.RecordCount;
    frmprogressbar.Height := 43;
    frmprogressbar.Show;
    while not cr.q.Eof do // para cada produto
    begin
      boqtnegativo := false;
      frmprogressbar.gau.Progress := cr.q.RecNo;
      frmprogressbar.pnl.caption  := 'Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue)+' - Produto: '+cr.q.fieldbyname(_cdproduto).Asstring+' - '+cr.q.fieldbyname(_nmproduto).Asstring;
      Application.ProcessMessages;
      qtsaldoanterior  := cr.q.fieldbyname(_qtestoque).Ascurrency; // estoque de acordo com a ficha de movimentação

      ce.q.filtered := False;
      ce.q.filter   := 'cdproduto='+cr.q.fieldbyname(_cdproduto).AsString;
      ce.q.filtered := True;

      cm.q.filtered := False;
      cm.q.filter   := 'cdproduto='+cr.q.fieldbyname(_cdproduto).AsString;
      cm.q.filtered := true;

      cs.q.filtered := False;
      cs.q.filter   := 'cdproduto='+cr.q.fieldbyname(_cdproduto).AsString;
      cs.q.filtered := true;

      if (ce.q.recordcount > 0) or (cm.q.recordcount > 0) or (cs.q.recordcount > 0) or (qtsaldoanterior > 0) then
      begin
        CabecalhoProduto;
        qtsaldoant := qtsaldoanteriors;
        saldov     := saldovalors;
        vlcustom   := vlcustomedios;
        dti_         := dti;
        frmprogressbar.gau1.Progress := 0;
        frmprogressbar.gau1.MaxValue := round(dtf - dti_);
        boentrou     := False;
        while dti_ <= dtf do
        begin
          if boentrou = true then
          begin
            inserir_registro;
          end;
          boentrou := False;
          frmprogressbar.gau1.Progress := frmprogressbar.gau1.Progress + 1;
          application.ProcessMessages;
          dtemissao   := formatdatetime(_dd_mm_yyyy, dti_);
          movimentacaoentrada;
          movimentacaoSaida;
          movimentacaoMovto;
          dti_ := dti_ + 1;
        end;
      end;
      cr.q.next;
    end;
    frmconsultaProdutoImprimirEstoquediario := tfrmconsultaProdutoImprimirEstoquediario.Create(application);
    try
      with frmconsultaProdutoImprimirEstoquediario do
      begin
        dbd1.DataSet := qT.m;
        frxReport1.ShowReport;
      end;
    finally
      freeandnil(frmconsultaProdutoImprimirEstoquediario);
    end;
    result := true;
  finally
    freeandnil(frmprogressbar);
    freeandnil(qt);
    freeandnil(c);
    freeandnil(cr);
    freeandnil(cm);
    freeandnil(cs);
    freeandnil(ce);
  end ;
end;

end.
