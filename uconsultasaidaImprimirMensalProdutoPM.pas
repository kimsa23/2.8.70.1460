unit uconsultasaidaImprimirMensalProdutoPM;

interface

uses
  System.Actions, System.UITypes,
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  ExtCtrls, ComCtrls, Dialogs,
  DB,
  umontarsql, uConstantes, uRegistro, ustrings, udatahora,
  classeretornasql, classeempresa, classequery,
  frxClass, frxDBSet, frxOLE, frxDMPExport, frxExportCSV, frxExportText,
  frxExportRTF, frxExportXML, frxExportXLS;

type
  TfrmconsultasaidaImprimirMensalProdutoPM = class(TForm)
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
  frmconsultasaidaImprimirMensalProdutoPM: TfrmconsultasaidaImprimirMensalProdutoPM;


function imprimirconsultasaidamensalprodutoqm(tabela:string; cdrepresentante, cdcliente, cdfornecedor, cdproduto: TStrings; boprodutoinversa: boolean; cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto :TStrings; dti, dtf:TDate; nmbase:string; bodiario:Boolean=false):boolean;

implementation

{$R *.dfm}

function imprimirconsultasaidamensalprodutoqm(tabela:string; cdrepresentante, cdcliente, cdfornecedor, cdproduto: TStrings; boprodutoinversa: boolean; cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto :TStrings; dti, dtf:TDate; nmbase:string; bodiario:Boolean=false):boolean;
var
  qt : tdataclient;
  q : tclassequery;
  function makesql:string;
  var
    nmdata, tbl : string;
  begin
    tbl := tabela;
    if LowerCase(tbl) = LowerCase(_saida+_s) then
    begin
      tbl := _saida;
    end;
    if tbl = _ordserv then
    begin
      nmdata := _dtentrada
    end
    else
    begin
      nmdata := _dtemissao;
    end;
    if bodiario then
    begin
      result := 'select '+tbl+'.'+nmdata+' mes'
    end
    else
    begin
      result := 'select extract(year from '+tbl+'.'+nmdata+') ano'+
                      ',extract(month from '+tbl+'.'+nmdata+') mes'
    end;
    Result := result +
                    ','+nmbase+'.cd'+nmbase+
                    ','+nmbase+'.nm'+nmbase;
    if tbl = _ordserv then
    begin
      result := result +
                ',sum(it'+tbl+'.qtitem) qtitem'+
                ',sum(it'+tbl+'.vltotal-coalesce(it'+tbl+'.vldesconto,0))/sum(it'+tbl+'.qtitem) vlunitario'+
                ',sum(it'+tbl+'.vltotal-coalesce(it'+tbl+'.vldesconto,0)) vltotal'
    end
    else
    begin
      result := result +
                ',sum(it'+tbl+'.qtitem) qtitem'+
                ',sum(it'+tbl+'.vltotal)/sum(it'+tbl+'.qtitem) vlunitario'+
                ',sum(it'+tbl+'.vltotal) vltotal'
    end;
    result := result +
           ' from '+tbl+' '+
           'inner join it'+tbl+' on it'+tbl+'.cd'+tbl+'='+tbl+'.cd'+tbl+' and '+tbl+'.cdempresa=it'+tbl+'.cdempresa '+
           'left join produto on produto.cdproduto=it'+tbl+'.cdproduto and produto.cdempresa=it'+tbl+'.cdempresa ';
    if (lowercase(nmbase) = _cntcusto) then
    begin
      result := result + 'left join cntcusto on cntcusto.cdcntcusto=it'+tbl+'.cdcntcusto and cntcusto.cdempresa=it'+tbl+'.cdempresa ';
    end;
    if tbl <> _movto then
    begin
      result := result + 'left join cliente on cliente.cdcliente='+tbl+'.cdcliente and cliente.cdempresa='+tbl+'.cdempresa ';
    end;
    if (tbl <> _pedido) and (tbl <> _ordserv) and (tbl <> _orcamento) and (tbl <> _movto) then
    begin
      result := result + 'left join fornecedor on fornecedor.cdfornecedor='+tbl+'.cdfornecedor and fornecedor.cdempresa='+tbl+'.cdempresa ';
    end;
    result := result + 'where '+tbl+'.cdempresa='+empresa.cdempresa.tostring+' and '+tbl+'.'+nmdata+' between '+quotedstr(formatdatetime(_mm_dd_yyyy, dti))+' and '+quotedstr(formatdatetime(_mm_dd_yyyy, dtf))+' ';
    if (tbl = _saida) and (LowerCase(tabela) = LowerCase(_saida+_s)) then
    begin
      result := result + 'and (select count(*) '+
                              'from duplicata '+
                              'where cdempresa=saida.cdempresa and duplicata.cdsaida=saida.cdsaida)<>(select count(*) from duplicata where cdempresa=saida.cdempresa and cdsaida=saida.cdsaida and duplicata.cdstduplicata <> 1) ';
    end;
    sqlmontarlista     (cdrepresentante, tbl     , _cdrepresentante, result);
    sqlmontarlista     (cdrota         , tbl     , _cdrota         , result);
    sqlmontarlista     (cdcliente      , tbl     , _cdcliente      , result);
    sqlmontarlista     (cdfornecedor   , tbl     , _cdfornecedor   , result);
    sqlmontarlista     (cdproduto      , _it+tbl , _cdproduto      , result, 0, boprodutoinversa);
    sqlmontarlistagrupo(cdgrupo        , _produto, _cdgrupo        , result, cdproduto.count);
    sqlmontarlista     (cduf           , _cliente, _cduf           , result);
    sqlmontarlista     (cdtpsaida      , tbl     , _cdtp+tbl       , result);
    sqlmontarlista     (cdtpcliente    , _cliente, _cdtpcliente    , result);
    sqlmontarlista     (cdstordserv    , tbl     , _cdstordserv    , result);
    sqlmontarlista     (cdetapa        , tbl     , _cdetapa        , result);
    if tbl = _entrada then
    begin
      sqlmontarlista(cdcntcusto, _it+tbl, _cdcntcusto, result);
    end;
    if bodiario then
    begin
      result := result +
             ' group by '+tbl+'.'+nmdata;
    end
    else
    begin
      result := result +
             ' group by extract(year from '+tbl+'.'+nmdata+')'+
                      ',extract(month from '+tbl+'.'+nmdata+')';
    end;
    Result := result +
                    ','+nmbase+'.cd'+nmbase+ ','+nmbase+'.nm'+nmbase+
           ' order by ';
    if bodiario then
    begin
      result := result +tbl+'.'+nmdata;
    end
    else
    begin
      result := result + 'extract(year from '+tbl+'.'+nmdata+')'+
                      ',extract(month from '+tbl+'.'+nmdata+')';
    end;
    if  lowercase(nmbase) = _produto then
    begin
      result := result + ',sum(it'+tbl+'.qtitem)'
    end
    else if (lowercase(nmbase) = _cliente) or (lowercase(nmbase) = _fornecedor) then
    begin
      result := result + ',sum('+tbl+'.psbruto)'
    end;
  end;
begin
  result     := false;
  q  := TClasseQuery.create;
  qt := TDataClient.create;
  try
    qt.m.FieldDefs.Add(_ano       , ftstring,  10, false);
    if bodiario then
    begin
      qt.m.FieldDefs.Add(_mes       , ftDate);
    end
    else
    begin
      qt.m.FieldDefs.Add(_mes       , ftstring,  10, false);
    end;
    qt.m.FieldDefs.Add(_cdproduto , ftstring,  10, false);
    qt.m.FieldDefs.Add(_nmproduto , ftstring, 200, false);
    qt.m.FieldDefs.Add(_qtitem    , ftcurrency);
    qt.m.FieldDefs.Add(_vlunitario, ftcurrency);
    qt.m.FieldDefs.Add(_vltotal   , ftcurrency);
    qt.m.CreateDataSet;
    q.q.SQL.Text := makesql;
    q.q.Open;
    if q.q.recordcount < 1 then
    begin
      messagedlg(_msg01, mtinformation, [mbok], 0);
      exit;
    end;
    // Imprime Cabecalho
    while not q.q.Eof do
    begin
      // Quebra do Relatorio
      qt.m.Append;
      if not bodiario then
      begin
        qt.m.Fieldbyname(_ANO).Asstring          := IntToStr(q.q.fieldbyname(_ano).AsInteger);
        qt.m.Fieldbyname(_MES).Asstring          := NomeMes (q.q.fieldbyname(_mes).Asinteger, false);
      end
      else
      begin
        qt.m.Fieldbyname(_MES).AsDateTime          := q.q.fieldbyname(_mes).AsDateTime;
      end;
      qt.m.Fieldbyname(_CDPRODUTO).Asstring    := q.q.fieldbyname(_cd+nmbase ).asstring;
      qt.m.fieldbyname(_NMPRODUTO).Asstring    := q.q.fieldbyname(_nm+nmbase ).asstring;
      qt.m.fieldbyname(_QTITEM).Asstring       := q.q.fieldbyname(_qtitem).asstring;
      qt.m.fieldbyname(_VLUNITARIO).AsCurrency := q.q.fieldbyname(_vlunitario).Ascurrency;
      qt.m.fieldbyname(_VLTOTAL).AsCurrency    := q.q.fieldbyname(_vltotal).ascurrency;
      qt.m.Post;
      q.q.next;
    end;
    frmconsultasaidaImprimirMensalProdutoPM := tfrmconsultasaidaImprimirMensalProdutoPM.Create(application);
    try
      with frmconsultasaidaImprimirMensalProdutoPM do
      begin
        frxReport1.Variables['vtitulo'] := quotedstr('Mensal '+nmbase+' Q/M');
        if bodiario then
        begin
          frxReport1.Variables['vtitulo'] := quotedstr('Diário '+nmbase+' Q/D');
        end;
        dbd1.DataSet := qT.m;
        frxReport1.ShowReport;
      end;
    finally
      freeandnil(frmconsultasaidaImprimirMensalProdutoPM);
    end;
  finally
    freeandnil(q);
    freeandnil(qt);
  end;
end;

end.
