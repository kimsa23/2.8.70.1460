unit uconsultasaidaImprimirMensalProdutoPP;

interface

uses
  System.Actions, System.UITypes,
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  ExtCtrls, ComCtrls, Dialogs,
  DB, sqlexpr, dbclient, provider,
  umontarsql, uConstantes, uRegistro, ustrings, udatahora,
  classeaplicacao, classeretornasql, classeempresa,
  frxClass, frxDBSet, frxOLE, frxDMPExport, frxExportCSV, frxExportText,
  frxExportRTF, frxExportXML, frxExportXLS;

type
  TfrmconsultasaidaImprimirMensalProdutoPP = class(TForm)
    dbd1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxlsxprt: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxOLEObject1: TfrxOLEObject;
  private { Private declarations }
  public  { Public declarations }
  end;

var
  frmconsultasaidaImprimirMensalProdutoPP: TfrmconsultasaidaImprimirMensalProdutoPP;

function imprimirconsultasaidamensalprodutoqp(tabela:string; cdrepresentante, cdcliente, cdfornecedor, cdproduto: TStrings; boprodutoinversa: boolean; cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto :TStrings; dti, dtf:TDate; nmbase:string; bodiario:Boolean=false):boolean;

implementation

{$R *.dfm}

function imprimirconsultasaidamensalprodutoqp(tabela:string; cdrepresentante, cdcliente, cdfornecedor, cdproduto: TStrings; boprodutoinversa: boolean; cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto :TStrings; dti, dtf:TDate; nmbase:string; bodiario:Boolean=false):boolean;
var
  qt : tclientdataset;
  s : tsqldataset;
  d : TDataSetprovider;
  c : TClientdataset;
  function makesql:string;
  var
    nmdata : string;
  begin
    if tabela = _ordserv then
    begin
      nmdata := _dtentrada
    end
    else
    begin
      nmdata := _dtemissao;
    end;
    result := 'select '+nmbase+'.cd'+nmbase+','+nmbase+'.nm'+nmbase;
    if bodiario then
    begin
      result := result + ','+tabela+'.'+nmdata+' mes';
    end
    else
    begin
      result := result +
                       ',extract(year from '+tabela+'.'+nmdata+') ano'+
                       ',extract(month from '+tabela+'.'+nmdata+') mes';
    end;
    if tabela = _ordserv then
    begin
        result := result + ',sum(it'+tabela+'.qtitem) qtitem'+
                           ',sum(it'+tabela+'.vltotal-coalesce(it'+tabela+'.vldesconto, 0)) / sum(it'+tabela+'.qtitem) vlunitario'+
                           ',sum(it'+tabela+'.vltotal-coalesce(it'+tabela+'.vldesconto, 0)) vltotal '
    end
    else
    begin
        result := result + ',sum(it'+tabela+'.qtitem) qtitem'+
                           ',sum(it'+tabela+'.vltotal) / sum(it'+tabela+'.qtitem) vlunitario'+
                           ',sum(it'+tabela+'.vltotal) vltotal '
    end;
    result := result +
             'from '+tabela+' '+
             'inner join it'+tabela+' on it'+tabela+'.cd'+tabela+'='+tabela+'.cd'+tabela+' and it'+tabela+'.cdempresa='+tabela+'.cdempresa '+
             'left join produto on it'+tabela+'.cdproduto=produto.cdproduto and produto.cdempresa=it'+tabela+'.cdempresa ';
    if (lowercase(nmbase) = _cntcusto) then
    begin
      result := result + 'left join cntcusto on cntcusto.cdcntcusto=it'+tabela+'.cdcntcusto and cntcusto.cdempresa=it'+tabela+'.cdempresa ';
    end;
    if tabela <> _movto then
    begin
      result := result + 'left join cliente on cliente.cdcliente='+tabela+'.cdcliente and cliente.cdempresa='+tabela+'.cdempresa ';
    end;
    if (tabela <> _pedido) and (tabela <> _ordserv) and (tabela <> _orcamento) and (tabela <> _movto) then
    begin
      result := result + 'left join fornecedor on fornecedor.cdfornecedor='+tabela+'.cdfornecedor and fornecedor.cdempresa='+tabela+'.cdempresa ';
    end;
    result := result + 'where '+tabela+'.cdempresa='+empresa.cdempresa.tostring+' and '+tabela+'.'+nmdata+' between '+GetDtBanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista     (cdrepresentante, tabela     , _cdrepresentante, result);
    sqlmontarlista     (cdrota         , tabela     , _cdrota         , result);
    sqlmontarlista     (cdcliente      , tabela     , _cdcliente      , result);
    sqlmontarlista     (cdfornecedor   , tabela     , _cdfornecedor   , result);
    sqlmontarlista     (cdproduto      , _it+tabela , _cdproduto      , result, 0, boprodutoinversa);
    sqlmontarlistagrupo(cdgrupo        , _produto   , _cdgrupo        , result, cdproduto.count);
    sqlmontarlista     (cduf           , _cliente   , _cduf           , result);
    sqlmontarlista     (cdtpsaida      , tabela     , _cdtp+tabela    , result);
    sqlmontarlista     (cdtpcliente    , _cliente   , _cdtpcliente    , result);
    sqlmontarlista     (cdstordserv    , tabela     , _cdstordserv    , result);
    sqlmontarlista     (cdetapa        , tabela     , _cdetapa        , result);
    if tabela = _entrada then
    begin
      sqlmontarlista(cdcntcusto, _it+tabela, _cdcntcusto, result);
    end;
    result := result + 'group by '+nmbase+'.cd'+nmbase+','+nmbase+'.nm'+nmbase;
    if bodiario then
    begin
      result := result +','+tabela+'.'+nmdata;
    end
    else
    begin
      result := result +',extract(year from '+tabela+'.'+nmdata+'),extract(month from '+tabela+'.'+nmdata+')';
    end;
  end;
begin
  result        := false;
  s             := tsqldataset.create     (nil);
  s.GetMetadata := False;
  d             := TDataSetprovider.Create(nil);
  c             := TClientdataset.Create  (nil);
  qt            := tclientdataset.create(nil);
  try
    qt.FieldDefs.Add(_ano       , ftstring,  10, false);
    if bodiario then
    begin
      qt.FieldDefs.Add(_mes       , ftDate);
    end
    else
    begin
      qt.FieldDefs.Add(_mes       , ftstring,  10, false);
    end;
    qt.FieldDefs.Add(_cdproduto , ftstring,  10, false);
    qt.FieldDefs.Add(_nmproduto , ftstring, 200, false);
    qt.FieldDefs.Add(_qtitem    , ftcurrency);
    qt.FieldDefs.Add(_vlunitario, ftcurrency);
    qt.FieldDefs.Add(_vltotal   , ftcurrency);
    qt.CreateDataSet;
    s.SQLConnection := aplicacao.con2;
    s.CommandText   := makesql;
    d.DataSet       := s;
    c.SetProvider(d);
    c.Open;
    if c.recordcount < 1 then
    begin
      messagedlg(_msg01, mtinformation, [mbok], 0);
      exit;
    end;
    while not c.Eof do
    begin
      qt.Append;
      if bodiario then
      begin
        qt.Fieldbyname(_MES).AsDateTime := c.fieldbyname(_mes).AsDateTime;
      end
      else
      begin
        qt.Fieldbyname(_ANO).Asstring            := c.fieldbyname(_ano).Asstring;
        qt.Fieldbyname(_MES).Asstring            := NomeMes(StrToInt(c.fieldbyname(_mes).Asstring), false);
      end;
      qt.Fieldbyname(_CDPRODUTO).Asstring      := c.fieldbyname(_cd+nmbase).asstring;
      qt.fieldbyname(_NMPRODUTO).Asstring      := c.fieldbyname(_nm+nmbase).asstring;
      qt.fieldbyname(_QTITEM).AsCurrency       := c.fieldbyname(_qtitem).Ascurrency;
      qt.fieldbyname(_VLUNITARIO).AsCurrency   := c.fieldbyname(_vlunitario).Ascurrency;
      qt.fieldbyname(_VLTOTAL).AsCurrency      := c.fieldbyname(_vltotal).Ascurrency;
      qt.Post;
      c.next;
    end;
    frmconsultasaidaImprimirMensalProdutoPP := tfrmconsultasaidaImprimirMensalProdutoPP.Create(application);
    try
      with frmconsultasaidaImprimirMensalProdutoPP do
      begin
        frxReport1.Variables['vtitulo'] := quotedstr('Mensal '+nmbase+' Q/P');
        if bodiario then
        begin
          frxReport1.Variables['vtitulo'] := quotedstr('Diário '+nmbase+' Q/P');
        end;
        dbd1.DataSet := qT;
        frxReport1.ShowReport;
      end;
      result := true;
    finally
      freeandnil(frmconsultasaidaImprimirMensalProdutoPP);
    end;
  finally
    freeandnil(s);
    freeandnil(d);
    freeandnil(c);
    freeandnil(qt);
  end;
end;

end.
