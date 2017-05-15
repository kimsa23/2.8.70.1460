unit ureportdesigner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  Provider, DBClient, DB,
  uconstantes, ustrings, uRegistro, udatahora,
  classeexecutasql, classeempresa, classeaplicacao, classequery,
  //ConverterRB2FR,
  frxClass, frxDBSet,
  fs_iinterpreter, fs_ipascal, fs_iclassesrtti, fs_igraphicsrtti, fs_iformsrtti,
  fs_iextctrlsrtti, fs_idialogsrtti, fs_iinirtti, fs_idbrtti, fs_idbctrlsrtti,
  fs_ichartrtti,
  frxChart, frxDesgn, frxBarcode, frxOLE, frxRich, frxCross, frxChBox, frxGradient,
  frxDMPExport, frxDCtrl, frxGZip, frxDBXComponents, frxExportXLS, frxExportPDF,
  frxExportXML, frxExportText, frxExportCSV, frxFDComponents, Data.FMTBcd,
  fs_imenusrtti, Data.SqlExpr;

type
  Tfrmreportdesigner = class(TForm)
    frxCSVExport1: TfrxCSVExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxXMLExport1: TfrxXMLExport;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDBXComponents1: TfrxDBXComponents;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxDialogControls1: TfrxDialogControls;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxCrossObject1: TfrxCrossObject;
    frxRichObject1: TfrxRichObject;
    frxOLEObject1: TfrxOLEObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    dsg: TfrxDesigner;
    frxUserDataSet1: TfrxUserDataSet;
    frxChartObject1: TfrxChartObject;
    rpt: TfrxReport;
    fsChartRTTI1: TfsChartRTTI;
    fsDBCtrlsRTTI1: TfsDBCtrlsRTTI;
    fsDBRTTI1: TfsDBRTTI;
    fsIniRTTI1: TfsIniRTTI;
    fsMenusRTTI1: TfsMenusRTTI;
    fsDialogsRTTI1: TfsDialogsRTTI;
    fsExtCtrlsRTTI1: TfsExtCtrlsRTTI;
    fsFormsRTTI1: TfsFormsRTTI;
    fsGraphicsRTTI1: TfsGraphicsRTTI;
    fsClassesRTTI1: TfsClassesRTTI;
    fsPascal1: TfsPascal;
    fsScript1: TfsScript;
    dbd: TfrxDBDataset;
    dts1: TDataSource;
    cds1: TClientDataSet;
    dsp1: TDataSetProvider;
    sds1: TSQLDataSet;
    sds2: TSQLDataSet;
    dsp2: TDataSetProvider;
    cds2: TClientDataSet;
    dts2: TDataSource;
    dbd2: TfrxDBDataset;
    dbd3: TfrxDBDataset;
    dts3: TDataSource;
    cds3: TClientDataSet;
    dsp3: TDataSetProvider;
    sds3: TSQLDataSet;
    sds4: TSQLDataSet;
    dsp4: TDataSetProvider;
    cds4: TClientDataSet;
    dts4: TDataSource;
    dbd4: TfrxDBDataset;
    dbd5: TfrxDBDataset;
    dts5: TDataSource;
    cds5: TClientDataSet;
    dsp5: TDataSetProvider;
    sds5: TSQLDataSet;
    frxFDComponents1: TfrxFDComponents;
  private { Private declarations }
    cdfields, sql : tstrings;
    codigo
    //, filename
    :string;
    function Exibir_report_designer(cdreport, dsscript, dsrelatorio:string; nmfield:string; nmtabela:string):string;
    procedure fechar_client;
    procedure limpar_parametros;
    procedure set_report_dataset;
    function configura_indice:string;
    procedure configura_parametro(c: TClientDataSet);
    function  get_parametro(i:integer; commando:string):string;
    procedure montar_parametros;
    procedure atualizar_script(cdreport, nmfield, nmtabela:string; texto:TStringStream);
    procedure set_dataset1(i:integer);
    procedure set_dataset3(i:integer);
  public { Public declarations }
  end;

function Exibir_report_designer(cdreport, dsscript, dsrelatorio:string; nmfield:string; nmtabela:string):string;


implementation

{$R *.dfm}

uses uDtmMain;

var
  frmreportdesigner: Tfrmreportdesigner;

function Exibir_report_designer(cdreport, dsscript, dsrelatorio:string; nmfield:string; nmtabela:string):string;
begin
  frmreportdesigner := Tfrmreportdesigner.create(nil);
  try
    result := frmreportdesigner.Exibir_report_designer(cdreport, dsscript, dsrelatorio, nmfield, nmtabela);
  finally
    freeandnil(frmreportdesigner);
  end;
end;

procedure Tfrmreportdesigner.fechar_client;
begin
  cds1.Close;
  cds2.Close;
  cds3.Close;
  cds4.Close;
  cds5.Close;
end;

procedure Tfrmreportdesigner.limpar_parametros;
begin
  sds2.Params.Clear;
  sds3.Params.Clear;
  sds4.Params.Clear;
  sds5.Params.Clear;

  cds2.Params.Clear;
  cds3.Params.Clear;
  cds4.Params.Clear;
  cds5.Params.Clear;
end;

procedure Tfrmreportdesigner.set_dataset1(i: integer);
begin
  if cdfields.Count > 0 then
  begin
    sds2.CommandText := sql[i];
    configura_parametro(cds2);
  end
  else
  begin
    sds2.CommandText := get_parametro(i, sql[i]);
  end;
  cds2.Open;
end;

procedure Tfrmreportdesigner.set_dataset3(i: integer);
begin
  if cdfields.Count > 0 then
  begin
    sds3.CommandText := sql[i];
    configura_parametro(cds3);
  end
  else
  begin
    sds3.CommandText := get_parametro(i, sql[i]);
  end;
  cds3.Open;
end;

procedure Tfrmreportdesigner.set_report_dataset;
begin
  dbd.DataSet  := cds1;
  dbd2.DataSet := cds2;
  dbd3.DataSet := cds3;
  dbd4.DataSet := cds4;
  dbd5.DataSet := cds5;
end;

procedure Tfrmreportdesigner.atualizar_script(cdreport, nmfield, nmtabela:string; texto:TStringStream);
  function makesql:string;
  begin
    Result := 'select cd'+nmtabela+','+nmfield;
    if nmtabela <> _report then
    begin
      result := result + ',cdempresa';
    end;
    result := result + ' from '+nmtabela+' where cd'+nmtabela+'='+cdreport;
    if nmtabela <> _report then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.tostring;
    end;
  end;
var
  q : TClasseQuery;
  b : TBlobField;
begin
  q := TClasseQuery.Create(makesql,true);
  try
    q.q.Edit;
    b := TBlobField(q.q.FieldByName(nmfield));
    b.LoadFromStream(texto);
    aplicacao.aplyupdates(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function Tfrmreportdesigner.configura_indice:string;
var
  i : Integer;
begin
  result := '';
  for i := 0 to cdfields.Count - 1 do
  begin
    if i > 0 then
    begin
      result := result + ';';
    end;
    result := result + UpperCase(cdfields[i]);
  end;
end;

procedure Tfrmreportdesigner.configura_parametro(c: TClientDataSet);
var
  i : Integer;
begin
  c.FetchParams;
  for i := 0 to cdfields.Count - 1 do
  begin
    if LowerCase(cdfields[i]) = _cdempresa then c.Params[i].DataType := ftFMTBcd
                                           else c.Params[i].DataType := ftInteger;
  end;
  c.IndexFieldNames := configura_indice;
  c.MasterFields    := configura_indice;
  C.MasterSource    := dts1;
end;

function Tfrmreportdesigner.get_parametro(i:integer; commando:string):string;
var
  posicao, x : integer;
  parametro: array of string;
begin
  result  := '';
  posicao := pos (':', commando);
  if posicao = 0 then
  begin
    result := commando;
    Exit;
  end;
  SetLength(parametro, 5);
  for x := 1 to 4 do
  begin
    posicao := Pos(UpperCase(':'+_where+inttostr(x)), UpperCase(commando));
    if posicao > 0 then
    begin
      parametro[x] := InputBox('Parâmetro', 'Digite o parâmetro '+_where+inttostr(x), codigo);
      if parametro[x] = '' then
      begin
        Abort;
      end;
      while Pos(UpperCase(':'+_where+inttostr(x)), UpperCase(commando)) > 0 do
      begin
        posicao := Pos(UpperCase(':'+_where+inttostr(x)), UpperCase(commando));
        Delete(commando, Pos(UpperCase(':'+_where+inttostr(x)), UpperCase(commando)), 7);
        insert(parametro[x], commando, Posicao);
      end;
    end;
  end;
  if parametro[1] <> '' then
  begin
    result := commando;
    Exit;
  end;
  result := InputBox('Parâmetro', 'Digite o parâmetro '+inttostr(i+1), result);
  if result = '' then
  begin
    abort;
  end;
  result := StringParametro(commando, result);
end;

procedure Tfrmreportdesigner.montar_parametros;
var
  i : integer;
begin
  for i := 0 to sql.count - 1 do
  begin
    if i = 0 then
    begin
      sds1.CommandText := get_parametro(i, sql[i]);
      trY
        cds1.Open;
      except
      end;
    end
    else if i = 1 then
    begin
      set_dataset1(i);
    end
    else if i = 2 then
    begin
      set_dataset3(i);
    end
    else if i = 3 then
    begin
      if cdfields.Count > 0 then
      begin
        sds4.CommandText := sql[i];
        configura_parametro(cds4);
      end
      else
      begin
        sds4.CommandText := get_parametro(i, sql[i]);
      end;
      trY
        cds4.Open;
      except
      end;
    end
    else if i = 4 then
    begin
      if cdfields.Count > 0 then
      begin
        sds5.CommandText := sql[i];
        configura_parametro(cds5);
      end
      else
      begin
        sds5.CommandText := get_parametro(i, sql[i]);
      end;
      trY
        cds5.Open;
      except
      end;
    end;
  end;
end;

function Tfrmreportdesigner.Exibir_report_designer(cdreport, dsscript, dsrelatorio:string; nmfield:string; nmtabela:string):string;
var
  texto, texto2 : TStringStream;
begin
  sql := TStringList.Create;
  cdfields := TStringList.Create;
  texto := TStringStream.Create(dsscript);
  texto2 := TStringStream.Create('');
  try
    if dsrelatorio <> '' then
    begin
      obter_campo_conexao(dsrelatorio, cdfields);
    end;
    getsqlcommandText(dsrelatorio, sql);
    fechar_client;
    limpar_parametros;
    dbd.DataSet  := nil;
    rpt.DataSet  := nil;
    set_report_dataset;
    rpt.DataSet := dbd;
    montar_parametros;
    rpt.LoadFromStream(texto);
    rpt.DesignReport;
    rpt.SaveToStream(texto2);
    if texto <> texto2 then
    begin
      atualizar_script(cdreport, nmfield, nmtabela, texto2);
    end;
  finally
    freeandnil(texto);
    freeandnil(texto2);
    freeandnil(sql);
    freeandnil(cdfields);
  end;
end;

end.
