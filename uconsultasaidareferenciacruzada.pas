unit uconsultasaidareferenciacruzada;

interface

uses
  System.Actions, System.UITypes,
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  ComCtrls, ExtCtrls, Dialogs, MidasLib,
  DB, sqlexpr, dbclient, provider,
  umontarsql, ustrings, uregistro, uconstantes, unumero,
  uprogressbar,
  classeaplicacao, classeretornasql, classeempresa,
  frxClass, frxDBSet, frxOLE, frxDMPExport, frxExportCSV, frxExportText,
  frxExportRTF, frxExportXML, frxExportXLS;

type
  Tfrmconsultasaidareferenciacruzada = class(TForm)
    cds: TClientDataSet;
    cdscd: TIntegerField;
    cdsnm: TStringField;
    cdsqtjaneiro: TCurrencyField;
    cdsqtfevereiro: TCurrencyField;
    cdsqtmarco: TCurrencyField;
    cdsqtabril: TCurrencyField;
    cdsqtmaio: TCurrencyField;
    cdsqtjunho: TCurrencyField;
    cdsqtjulho: TCurrencyField;
    cdsqtagosto: TCurrencyField;
    cdsqtsetembro: TCurrencyField;
    cdsqtoutubro: TCurrencyField;
    cdsqtnovembro: TCurrencyField;
    cdsqtdezembro: TCurrencyField;
    cdsvltotal: TCurrencyField;
    cdsnmempresa: TStringField;
    cdsnmtitulo: TStringField;
    cdsdti: TDateField;
    cdsdtf: TDateField;
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
  public { Public declarations }
  end;

var
  frmconsultasaidareferenciacruzada: Tfrmconsultasaidareferenciacruzada;

function imprimirconsultasaidamensalreferenciacruzada(cdcondpagto, cdrepresentante, cduf, cdrota, cdtpsaida, cdgrupo, cdproduto, cdcntcusto :TStrings; dti, dtf:TDate; porqual, dado,acabado, tbl:string; grupo: string = ''; dev: string = ''; tpdev:string=''):boolean;

implementation

{$R *.dfm}


function imprimirconsultasaidamensalreferenciacruzada(cdcondpagto, cdrepresentante, cduf, cdrota, cdtpsaida, cdgrupo, cdproduto, cdcntcusto:TStrings;
                                                      dti, dtf:TDate;
                                                      porqual, dado, acabado, tbl:string;
                                                      grupo: string = ''; dev: string = ''; tpdev:string=''):boolean;
var
  campomes: TStrings;
  s : tsqldataset;
  d : TDataSetprovider;
  c : TClientdataset;
  dtfs, dtis, mascara, sql_grupo, linhaporqual: string;
  function setTitulo(dado, porqual:string):string;
  begin
    if dado = _qtitem then
    begin
      if tbl = _movto then
      begin
        result := 'Quantidade consumida mensal (por '+porqual+')';
        if cdcntcusto.Count = 1 then
        begin
          result := result + ' '+nomedocodigo(_cntcusto, cdcntcusto[0]);
        end;
      end
      else
      begin
        result := 'Quantidade vendida mensal (por '+porqual+')'
      end;
    end
    else if dado = _vltotal then
    begin
      if tbl = _movto then
      begin
        result := 'Valor consumido mensal (por '+porqual+')';
        if cdcntcusto.Count = 1 then
        begin
          result := result + ' '+nomedocodigo(_cntcusto, cdcntcusto[0]);
        end;
      end
      else if tbl = _entrada then
      begin
        result := 'Valor comprado mensal (por '+porqual+')'
      end
      else
      begin
        result := 'Valor vendido mensal (por '+porqual+')'
      end;
    end
    else if dado = _vlicms     then
    begin
      result := 'Valor do ICMS mensal (por '+porqual+')'
    end
    else if dado = _vlipi      then
    begin
      result := 'Valor do IPI mensal (por '+porqual+')'
    end
    else if dado = _vlbaseicms then
    begin
      result := 'Valor da Base ICMS mensal (por '+porqual+')'
    end
    else if dado = _vlbaseipi  then
    begin
      result := 'Valor da Base IPI mensal (por '+porqual+')'
    end
    else if dado = _vlfrete    then
    begin
      result := 'Valor de frete mensal (por '+porqual+')'
    end
    else if dado = _vlcomissao then
    begin
      result := 'Valor de comissao (por '+porqual+')';
    end;
  end;
  procedure MontarInnerJoin;
  begin
    if (porqual = _Representante) then
    begin
      linhaporqual := 'inner join representante on representante.cdrepresentante=saida.cdrepresentante and representante.cdempresa=saida.cdempresa '
    end
    else if (porqual = 'Uf')           then
    begin
      linhaporqual := 'inner join uf on uf.cduf=cliente.cduf ';
    end;
  end;
  function makesql(var sql_grupo:string; linhaporqual, dtis, dtfs:string; entsai:string):string;
  begin
    result := 'select ' + porqual + '.cd' + porqual;
    if (dado = _vltotal) and (entsai = _entrada) then
    begin
      result := result + ',sum(coalesce(it'+entsai+'.'+dado+',0)+coalesce(itentrada.vlfrete,0)+coalesce(itentrada.vlipi,0)) qttotal '+ sql_grupo
    end
    else
    begin
      result := result + ',sum(it'+entsai+'.'+dado+') qttotal '+ sql_grupo;
    end;
    result := result + ','+porqual+'.nm'+porqual;
    if (entsai = _saida) or (entsai = _movto) then
    begin
      result := result + ',extract(month from '+entsai+'.dtemissao) mes,extract(year from '+entsai+'.dtemissao) ano'
    end
    else
    begin
      result := result + ',extract(month from '+entsai+'.dtsaida) mes,extract(year from '+entsai+'.dtsaida) ano';
    end;
    result := result +' from it'+entsai+' '+
                      'inner join '+entsai+' on it'+entsai+'.cd'+entsai+'='+entsai+'.cd'+entsai+' and '+entsai+'.cdempresa=it'+entsai+'.cdempresa '+
                      'inner join tp'+entsai+' on tp'+entsai+'.cdtp'+entsai+'='+entsai+'.cdtp'+entsai+' and '+entsai+'.cdempresa=tp'+entsai+'.cdempresa '+
                      'inner join produto on produto.cdproduto=it'+entsai+'.cdproduto and produto.cdempresa=it'+entsai+'.cdempresa ';
    if entsai = _saida then
    begin
      result := result + 'left join cliente on cliente.cdcliente='+entsai+'.cdcliente and cliente.cdempresa='+entsai+'.cdempresa ';
    end;
    if linhaporqual <> '' then
    begin
      result := result + linhaporqual;
    end;
    result := result + 'where '+entsai+'.cdempresa='+empresa.cdempresa.tostring+' ';
    if (entsai = _saida) or (entsai = _movto) then
    begin
      result := result + ' and '+entsai+'.dtemissao between '+quotedstr(dtis)+' and '+quotedstr(dtfs)+' '
    end
    else
    begin
      result := result + ' and '+entsai+'.dtsaida between '+quotedstr(dtis)+' and '+quotedstr(dtfs)+' ';
    end;
    sqlmontarlista(cdgrupo    , _produto  , _cdgrupo    , result);
    sqlmontarlista(cduf       , _cliente  , _cduf       , result);
    sqlmontarlista(cdrota     , entsai    , _cdrota     , result);
    sqlmontarlista(cdcondpagto, entsai    , _cdcondpagto, result);
    sqlmontarlista(cdcntcusto , _it+entsai, _cdcntcusto , result);
    sqlmontarlista(cdproduto  , _it+entsai, _cdproduto  , result);
    if entsai = _saida then
    begin
      sqlmontarlista(cdrepresentante, entsai, _cdrepresentante, result);
      sqlmontarlista(cdtpsaida      , entsai, _cdtp+entsai    , result);
    end;
    if grupo = '' then
    begin
      result := result + ' group by '+porqual+'.nm'+porqual+
                                ','+porqual+'.cd'+porqual;
      if (entsai = _saida) or (entsai = _movto) then
      begin
        result := result + ',extract(year from '+entsai+'.dtemissao),extract(month from '+entsai+'.dtemissao) '
      end
      else
      begin
        result := result + ',extract(year from '+entsai  +'.dtsaida),extract(month from '+entsai  +'.dtsaida) ';
      end;
    end;
  end;
  procedure ProcessarVenda(c, qt:tclientdataset);
    procedure inserirregistro;
    begin
      if not qt.Active then
      begin
        qt.CreateDataSet;
        qt.Open;
      end;
      qt.Append;
      qt.fieldbyname(_nm+_titulo).Asstring := setTitulo(dado, porqual);
      qt.Fieldbyname(_nmempresa).Asstring := Empresa.nmempresa;
      qt.Fieldbyname(_dti).AsDateTime := dti;
      qt.Fieldbyname(_dtf).AsDateTime := dtf;
      qt.Fieldbyname(_cd).Asstring := c.fieldbyname(_cd+porqual).asstring;
      qt.Fieldbyname(_nm).AsString := c.Fieldbyname(_nm+porqual).AsString;
    end;
  var
    cdgrupo, cdaux : string;
    mes : integer;
  begin
    cdaux   := '';
    cdgrupo := '';
    while not c.Eof do
    begin
      // quebra de valor insere registro
      if (cdaux <> c.fieldbyname(_cd+porqual).asstring) then
      begin
        if cdaux <> '' then
        begin
          qt.Post;
        end;
        cdaux := c.fieldbyname(_cd+porqual).asstring;
        inserirregistro;
      end;
      mes                                      := c.fieldbyname(_mes).Asinteger-1;
      qt.fieldbyname(campomes[mes]).Ascurrency := c.fieldbyname(_qt+_total).Ascurrency;
      qt.fieldbyname(_vltotal).Ascurrency     := qt.fieldbyname(_vltotal).Ascurrency + c.fieldbyname(_qt+_total).Ascurrency;
      c.next;
    end;
    if qt.State = dsinsert then
    begin
      qt.Post;
    end;
  end;
  procedure PreencherCampoMes;
  begin
    campomes.text := 'qtjaneiro'#13'qtfevereiro'#13'qtmarco'#13'qtabril'#13'qtmaio'#13'qtjunho'#13'qtjulho'#13'qtagosto'#13'qtsetembro'#13'qtoutubro'#13'qtnovembro'#13'qtdezembro';
  end;
  procedure ConfigurarMascara(dado:string; var mascara:string);
  begin
    if dado = _qtitem then
    begin
      mascara := ''
    end
    else
    begin
      mascara := '%2.2m';
    end;
  end;
  procedure processardevolucao(c, qt: tclientdataset);
  var
    flag, mes : integer;
    cdaux : string;
  begin
    cdaux := c.fieldbyname(_cd+porqual).AsString;
    while not c.Eof do
    begin
      flag  := 1;
      cdaux := c.fieldbyname(_cd+porqual).AsString;
      if not qt.Active then
      begin
        qt.Open;
      end;
      qt.Append;
      qt.fieldbyname(_nm+_titulo).Asstring := setTitulo(dado, porqual);
      qt.Fieldbyname(_nmempresa).Asstring  := Empresa.nmempresa;
      qt.Fieldbyname(_dti).AsDateTime      := dti;
      qt.Fieldbyname(_dtf).AsDateTime      := dtf;
      qt.Fieldbyname(_cd).Asstring         := c.fieldbyname(_cd+porqual).asstring;
      qt.Fieldbyname(_nm).AsString         := c.Fieldbyname(_nm+porqual).AsString;
      cdaux                                    := c.fieldbyname(_cd+porqual).asstring;
      mes                                      := c.fieldbyname(_mes).Asinteger-1;
      qt.fieldbyname(campomes[mes]).Ascurrency := qt.fieldbyname(campomes[mes]).Ascurrency - c.fieldbyname(_qt+_total).Ascurrency;
      qt.Fieldbyname(_vltotal).Ascurrency      := qt.Fieldbyname(_vltotal).Ascurrency     - c.fieldbyname(_qt+_total).Ascurrency;
      cdaux := c.fieldbyname(_cd+porqual).asstring;
      c.next;
      if (cdaux <> c.fieldbyname(_cd+porqual).asstring) and (cdaux <> '') and (flag = 1) then
      begin
        qt.Post;
      end;
    end;
  end;
begin
  campomes      := tstringlist.create;
  dtis          := formatdatetime(_mm_dd_yyyy, dti);
  dtfs          := formatdatetime(_mm_dd_yyyy, dtf);
  result        := false;
  s             := tsqldataset.create     (nil);
  s.GetMetadata := False;
  d             := TDataSetprovider.Create(nil);
  c             := TClientdataset.Create  (nil);
  if grupo = ''       then sql_grupo := '';
  try
    preenchercampomes;
    montarinnerjoin;
    s.SQLConnection := aplicacao.con2;
    s.CommandText   := makesql(sql_grupo, linhaporqual, dtis, dtfs, tbl);
    d.DataSet       := s;
    c.SetProvider(d);
    c.Open;
    frmconsultasaidareferenciacruzada := Tfrmconsultasaidareferenciacruzada.Create(application);
    try
      if tpdev = '' then
      begin
        processarVenda(c, frmconsultasaidareferenciacruzada.cds);
      end;
      if tbl = _saida then
      begin
        if (dev = _S) then // subtrair a devolucao dos valores
        begin
          if (tpdev = _saida+_s) and (tpdev <> '') then
          begin
            s.close;
            s.CommandText   := makesql(sql_grupo, linhaporqual, dtis, dtfs, _saida);
            d.DataSet       := s;
            c.SetProvider(d);
            c.Open;
            processardevolucao(c, frmconsultasaidareferenciacruzada.cds);
          end
          else if (tpdev = _entrada+_s) and (tpdev <> '') then
          begin
            s.close;
            s.CommandText   := makesql(sql_grupo, linhaporqual, dtis, dtfs, _entrada);
            d.DataSet       := s;
            c.SetProvider(d);
            c.Open;
            processardevolucao(c, frmconsultasaidareferenciacruzada.cds);
          end
          else if (tpdev <> _entrada+_s) and (tpdev <> _saida+_s) or (tpdev = _devolvida) then
          begin
            s.close;
            s.CommandText   := makesql(sql_grupo, linhaporqual, dtis, dtfs, _saida);
            d.DataSet       := s;
            c.SetProvider(d);
            c.Open;
            processardevolucao(c, frmconsultasaidareferenciacruzada.cds);

            s.close;
            s.CommandText   := makesql(sql_grupo, linhaporqual, dtis, dtfs, _entrada); // devolucao de entrada
            d.DataSet       := s;
            c.SetProvider(d);
            c.Open;
            processardevolucao(c, frmconsultasaidareferenciacruzada.cds);
          end;
        end;
      end;

      if (not frmconsultasaidareferenciacruzada.cds.Active) or (frmconsultasaidareferenciacruzada.cds.RecordCount < 1) then
      begin
        messagedlg(_msg01, mtinformation, [mbok], 0);
        exit;
      end;
      configurarMascara(dado, mascara);
      if grupo = '' then
      begin
        frmconsultasaidareferenciacruzada.frxReport1.Variables['vporqual'] := porqual;
        frmconsultasaidareferenciacruzada.frxReport1.Variables['vtitulo'] := QuotedStr(setTitulo (dado, porqual));
        frmconsultasaidareferenciacruzada.frxReport1.Variables['vcd'] := _cd;
        frmconsultasaidareferenciacruzada.frxReport1.Variables['vnm'] := _nm;
        frmconsultasaidareferenciacruzada.frxReport1.Variables['vmascara'] := mascara;
        frmconsultasaidareferenciacruzada.frxReport1.Variables['vnmempresa'] := QuotedStr(empresa.nmempresa);
        frmconsultasaidareferenciacruzada.frxReport1.Variables['vdti'] := QuotedStr(datetostr(dti));
        frmconsultasaidareferenciacruzada.frxReport1.Variables['vdtf'] := QuotedStr(datetostr(dtf));
        frmconsultasaidareferenciacruzada.dbd1.DataSet := frmconsultasaidareferenciacruzada.cds;
        frmconsultasaidareferenciacruzada.frxReport1.ShowReport;
      end;
      result := true;
    finally
      freeandnil(frmconsultasaidareferenciacruzada);
    end;
  finally
    freeandnil(campomes);
    freeandnil(s);
    freeandnil(d);
    freeandnil(c);
  end;
end;

end.
