unit uconsultaprodutoimprimirfichamovimentacaoterceiro;

interface

uses System.Actions, System.UITypes,
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  stdctrls, ExtCtrls, ComCtrls, Dialogs,
  DB, dbclient,
  umontarsql, udatahora, unumero, ustrings, uprogressbar,
  uconstantes, uregistro,
  classeaplicacao, classeempresa, classeretornasql, classequery,
  frxClass, frxDBSet;

type
  TfrmconsultaProdutoImprimirFichaMovimentacao1 = class(TForm)
    dbd1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private { Private declarations }
  public  { Public declarations }
  end;

var
  frmconsultaProdutoImprimirFichaMovimentacao1: TfrmconsultaProdutoImprimirFichaMovimentacao1;

function imprimirconsultaprodutofichamovimentacaoterceiro(tipo: string; cdtipo, cdproduto: TStrings; dti, dtf : TDate):boolean;

implementation

{$R *.dfm}

function imprimirconsultaprodutofichamovimentacaoterceiro(tipo: string; cdtipo, cdproduto: TStrings; dti, dtf : TDate):boolean;
  procedure CriarTabelaTemporaria(var tbl: string; var qt: tclientdataset);
  begin
    qt.FieldDefs.add(_CDPRODUTO   , ftstring,  20, false);
    qt.FieldDefs.add(_NMPRODUTO   , ftstring, 100, false);
    qt.FieldDefs.add(_nmUNIDADE   , ftstring,  20, false);
    qt.FieldDefs.add(_nudocumento , ftstring,  20, false);
    qt.FieldDefs.add(_tpentsai    , ftstring,  10, false);
    qt.FieldDefs.add(_nmreduzido  , ftstring,  10, false);
    qt.FieldDefs.add(_DTEMISSAO   , ftDate);
    qt.FieldDefs.add(_qtitem      , ftFloat);
    qt.FieldDefs.add(_qt+_saldo   , ftFloat);
    qt.FieldDefs.add(_qt+_ANTerior, ftFloat);
    qt.CreateDataSet;
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
                    ',(select first 1 qtestoque from hestoque'+tipo+' h where h.cdempresa=p.cdempresa and h.cdproduto=p.cdproduto and h.dthistorico<'+getdtbanco(dti)+' ';
    sqlmontarlista(cdtipo, _h, _cd+tipo, result);
    result := result +
                      'order by h.dthistorico desc) qtestoque '+
               'from produto p '+
               'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and p.cdempresa=t.cdempresa '+
               'left join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
               'where p.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarlista(cdproduto, _p, _cdproduto, result);
    result := result + 'ORDER BY P.NUNIVEL';
  end;
  function makesqlentrada:string;
  begin
    result := 'select e.nuentrada'+
                    ',e.dtsaida'+
                    ',t.nmreduzido'+
                    ',i.qtitem'+
                    ',i.cdproduto '+
              'from entrada e '+
              'inner join itentrada i on e.cdentrada=i.cdentrada and e.cdempresa=i.cdempresa '+
              'inner join cfop c on c.cdcfop=i.cdcfop '+
              'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=e.cdempresa '+
              'where c.boestoqueterceiro=''S'' and e.cdempresa='+empresa.cdempresa.tostring+' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdproduto, _i, _cdproduto, result);
    sqlmontarlista(cdtipo   , _e, _cd+tipo  , result);
    result := result + 'order by e.dtsaida,e.nuentrada,i.cditentrada'
  end;
  function makesqlsaida:string;
  begin
    result := 'select s.nusaida'+
                    ',s.dtemissao dtsaida'+
                    ',s.tpentsai'+
                    ',t.nmreduzido'+
                    ',qtitem'+
                    ',i.cdproduto '+
              'from saida s '+
              'inner join itsaida i on s.cdsaida=i.cdsaida and s.cdempresa=i.cdempresa '+
              'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
              'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
              'inner join cfop c on c.cdcfop=i.cdcfop '+
              'where c.boestoqueterceiro=''S'' and s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdproduto, _i, _cdproduto, result);
    sqlmontarlista(cdtipo   , _s, _cd+tipo  , result);
    result := result + 'order by s.dtemissao,t.tpentsai,s.nusaida,i.CDitsaida';
  end;
var
  qt : tclientdataset;
  boqtnegativo : boolean;
  ce, cs, cr, c : TClasseQuery;
  dtemissao, tbl : string;
  qtsaldoanterior: double;
  dti_ : TDate;
  procedure formatarCampoMovimento(c: TClasseQuery; nudocumento, tpentsai, nutpdoc, qtitem: string);
  begin
    qt.Append;
    qt.FieldByName(_CDPRODUTO).asstring      := cr.q.fieldByName(_cdproduto).asstring;
    qt.fieldByName(_NMPRODUTO).AsString      := cr.q.fieldByName(_nmproduto).asstring;
    qt.fieldByName(_nmUNIDADE).AsString      := cr.q.fieldByName(_nmunidade).asstring;
    qt.fieldByName(_nudocumento).AsString    := nudocumento;
    qt.fieldByName(_DTEMISSAO).AsString      := dtemissao;
    qt.fieldByName(_TPENTSAI).AsString       := tpentsai;
    qt.fieldByName(_NMREDUZIDO).AsString     := nutpdoc;
    qt.fieldByName(_qt+_saldo).AsFloat       := qtsaldoanterior;
    qt.fieldByName(_QTITEM).Ascurrency       := c.q.fieldByName(_qtitem).ascurrency;
    qt.fieldByName(_qt+_ANTERIOR).Ascurrency := cr.q.fieldByName(_qtestoque).ascurrency;
    qt.Post;
  end;
  procedure movimentacaoEntrada;
  var
    tpentsai : string;
  begin
    while not ce.q.eof do
    begin
      if ce.q.fieldByName(_dtsaida).AsDateTime > dti_ then
      begin
        break;
      end;
      qtsaldoanterior := qtsaldoanterior + ce.q.fieldByName(_qtitem).ascurrency;
      if not boqtnegativo then
      begin
        boqtnegativo := qtsaldoanterior < 0;
      end;
      tpentsai := _E;
      formatarCampoMovimento(ce, ce.q.fieldByName(_nuentrada).asstring, tpentsai, copy(ce.q.fieldByName(_nmreduzido).asstring, 1, 3), formatfloat(__decimal4, ce.q.fieldByName(_qtitem).ascurrency));
      ce.q.next;
    end;
  end;
  procedure MovimentacaoSaida;
  begin
    while not cs.q.eof do
    begin
      if cs.q.fieldByName(_dtsaida).AsDateTime > dti_ then
      begin
        break;
      end;
      if cs.q.fieldByName(_tpentsai).asstring = _S then
      begin
        qtsaldoanterior := qtsaldoanterior - cs.q.fieldByName(_qtitem).AsCurrency;
      end
      else
      begin
        if cs.q.fieldByName(_tpentsai).asstring = _E then
        begin
          qtsaldoanterior := qtsaldoanterior + cs.q.fieldByName(_qtitem).ascurrency
        end
        else
        begin
          qtsaldoanterior := qtsaldoanterior - cs.q.fieldByName(_qtitem).ascurrency;
        end;
      end;
      if not boqtnegativo then
      begin
        boqtnegativo := qtsaldoanterior < 0;
      end;
      formatarCampoMovimento(cs, cs.q.fieldByName(_nusaida).asstring, cs.q.fieldByName(_tpentsai).asstring, copy(cs.q.fieldByName(_nmreduzido).asstring, 1, 3), formatfloat(__decimal4, cs.q.fieldByName(_qtitem).ascurrency));
      cs.q.next;
    end;
  end;
begin
  boqtnegativo   := false;

  qt:= tclientdataset.create(nil);

  cr := TClasseQuery.Create;
  c  := TClasseQuery.Create;
  ce := TClasseQuery.Create;
  cs := TClasseQuery.Create;

  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    c.q.connection  := aplicacao.confire;
    cr.q.connection := aplicacao.confire;
    ce.q.connection := aplicacao.confire;
    cs.q.connection := aplicacao.confire;
    frmprogressbar.Show;
    frmprogressbar.pnl.caption := 'Criar Tabela temporária';
    Application.ProcessMessages;
    criartabelatemporaria(tbl, qt);
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
      frmprogressbar.pnl.caption := 'Registro '+inttostr(frmprogressbar.gau.Progress)+ ' de '+inttostr(frmprogressbar.gau.MaxValue)+
                                    ' - Produto: '+cr.q.fieldByName(_cdproduto).asstring+' - '+cr.q.fieldByName(_nmproduto).asstring;
      Application.ProcessMessages;
      qtsaldoanterior  := cr.q.fieldByName(_qtestoque).ascurrency; // estoque de acordo com a ficha de movimentação

      if (ce.q.recordcount > 0) or (cs.q.recordcount > 0) or (qtsaldoanterior > 0) then
      begin
        dti_       := dti;
        frmprogressbar.gau1.Progress := 0;
        frmprogressbar.gau1.MaxValue := round(dtf - dti_);
        while dti_ <= dtf do
        begin
          frmprogressbar.gau1.Progress := frmprogressbar.gau1.Progress + 1;
          application.ProcessMessages;
          dtemissao   := formatdatetime(_dd_mm_yyyy, dti_);
          movimentacaoentrada;
          movimentacaoSaida;
          dti_ := dti_ + 1;
        end;
      end;
      cr.q.next;
    end;
    if qt.RecordCount = 0 then
    begin
      messagedlg(_msg_Nao_existem_registros_para_este_relatorio, mtInformation, [mbok], 0);
      result := false;
      exit;
    end;
    frmconsultaProdutoImprimirFichaMovimentacao1 := tfrmconsultaProdutoImprimirFichaMovimentacao1.Create(application);
    try
      with frmconsultaProdutoImprimirFichaMovimentacao1 do
      begin
        dbd1.DataSet := qT;
        frxReport1.ShowReport;
      end;
    finally
      freeandnil(frmconsultaProdutoImprimirFichaMovimentacao1);
    end;
    result := true;
  finally
    freeandnil(frmprogressbar);
    freeandnil(qt);
    freeandnil(c);
    freeandnil(cr);
    freeandnil(cs);
    freeandnil(ce);
  end ;
end;

end.
