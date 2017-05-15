unit uexportarexcel;

interface

uses
  System.Actions, System.UITypes,
  forms, StdCtrls, Buttons, Controls, CheckLst, Classes, ExtCtrls, shellapi, windows,
  comobj, idglobal, variants, dialogs, sysutils,
  DB, sqlexpr,
  uConstantes, usystem, uXLConst,
  classeusuario, classeform, classeexecutasql, classeaplicacao, classequery,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxButtons, cxButtonEdit, cxGraphics, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxClasses, cxGroupBox,
  cxGridExportLink;

type
  TfrmExporExcel = class(TForm)
    Panel1: TPanel;
    memsql: TMemo;
    pnl1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private    { Private declarations }
    path : string;
  public    { Public declarations }
  end;

procedure ExportarExcel;overload;
procedure ExportarExcel(grd:TcxGrid);overload;
procedure ExportarExcel(key : Word; sender: TObject);overload;
procedure ExportarExcel(sql : string);overload;

var
  frmExporExcel: TfrmExporExcel;

implementation

//uses uexibircampos;

{$R *.dfm}

procedure ExportarExcel(key : Word; sender: TObject);
var
  vfilename : string;
begin
  if key <> __keyexportarexcel then
  begin
    Exit;
  end;
  vfilename := getSpecialDir+'\'+NomeTemporario+'.'+_xls;
  ExportGridToExcel(vfilename, TcxGrid(TcxGridDBTableView(Sender).GetParentComponent));
  if FileExists(vfilename) then
  begin
    ShellExecute(Application.handle, PChar(_OPEN), PChar(vFileName), nil, nil, SW_SHOWMAXIMIZED);
  end;
end;

procedure ExportarExcel(grd:TcxGrid);
var
  vfilename : string;
begin
  vfilename := getSpecialDir+'\'+NomeTemporario+'.'+_xls;
  ExportGridToExcel(vfilename, grd);
  if FileExists(vfilename) then
  begin
    ShellExecute(Application.handle, PChar(_OPEN), PChar(vFileName), nil, nil, SW_SHOWMAXIMIZED);
  end;
end;

procedure ExportarExcel(sql : string);overload;
var
  l, i: Integer;
  XLApp, Sheet: Variant;
  q : TClasseQuery;
begin
  frmExporExcel := TfrmExporExcel.Create(nil);
  q := tClasseQuery.create(sql);
  try
    XLApp         := CreateOleObject('Excel.Application');
    XLApp.Visible := True;
    XLApp.Workbooks.Add(xlWBatWorkSheet);
    XLApp.Workbooks[1].WorkSheets[1].Name := _exportar;
    //  Inserir Dados
    Sheet := XLApp.Workbooks[1].WorkSheets[_exportar];  // montar colunas
    for i := 0 to q.q.FieldCount - 1 do
    begin
      sheet.cells[1, i+1] := q.q.fields[i].FieldName;
    end;
    q.q.first;
    i:=1;
    While not q.q.Eof do begin
      inc(i);
      for l := 0 to q.q.FieldCount - 1 do
      begin
        Sheet.Cells[i, l+1] := q.q.Fields[l].asString;
      end;
      q.q.Next;
    End;
    showmessage('Dados Exportados');
    // Formatar Colunas
    if not VarIsEmpty(XLApp) then
    begin
      XLApp.DisplayAlerts := False;  // Discard unsaved files....
      XLApp.Quit;
    end;
  finally
    freeandnil(q);
    freeandnil(frmExporExcel);
  end;
end;

procedure ExportarExcel;
begin
  frmExporExcel := TfrmExporExcel.Create(nil);
  try
    frmExporExcel.ShowModal;
  finally
    freeandnil(frmExporExcel);
  end;
end;

{
procedure ExportarExcel(path:string);
begin
  frmExporExcel := TfrmExporExcel.Create(nil);
  try
    frmexporexcel.path := path;
    frmExporExcel.ShowModal;
  finally
    freeandnil(frmExporExcel);
  end;
end;
}
procedure TfrmExporExcel.BitBtn2Click(Sender: TObject);
var
  l, i: Integer;
  XLApp, Sheet: Variant;
  q : TClasseQuery;
begin
  if path = '' then
  begin
    q := tclassequery.create;
    try
      q.q.sql.text := memsql.Text;
      try
        q.q.open;
      except
        MessageDlg('Comando sql inválido.', mtInformation, [mbOK], 0);
        Abort;
      end;
      XLApp         := CreateOleObject('Excel.Application');
      XLApp.Visible := True;
      XLApp.Workbooks.Add(xlWBatWorkSheet);
      XLApp.Workbooks[1].WorkSheets[1].Name := _exportar;
      //  Inserir Dados
      Sheet := XLApp.Workbooks[1].WorkSheets[_exportar];  // montar colunas
      for i := 0 to q.q.Fields.Count - 1 do
      begin
        sheet.cells[1, i+1] := q.q.fields[i].FieldName;
      end;
      q.q.first;
      i := 1;
      While not q.q.Eof do
      begin
        inc(i);
        for l := 0 to q.q.fields.Count - 1 do
        begin
               if q.q.fields[l].DataType = ftCurrency then Sheet.Cells[i, l+1] := q.q.Fields[l].AsCurrency
          else if q.q.fields[l].datatype = ftFloat    then sheet.cells[i, l+1] := q.q.fields[l].AsFloat
          else if q.q.fields[l].datatype = ftDateTime then sheet.cells[i, l+1] := q.q.fields[l].AsDateTime
          else if q.q.fields[l].datatype = ftString   then sheet.cells[i, l+1] := q.q.fields[l].AsString
          else if q.q.fields[l].datatype = ftBlob     then sheet.cells[i, l+1] := q.q.fields[l].AsVariant
          else                                             Sheet.Cells[i, l+1] := q.q.Fields[l].asString + ' ';
        end;
        q.q.Next;
      End;
      showmessage('Dados Exportados');
      //
      // Formatar Colunas
      //
      if not VarIsEmpty(XLApp) then
      begin
        XLApp.DisplayAlerts := False;  // Discard unsaved files....
        XLApp.Quit;
      end;
    finally
      freeandnil(q);
    end;
  end
  else
  begin
    q := TClasseQuery.create;
    try
      q.q.sql.text := memsql.Text;
      q.q.open;
      XLApp         := CreateOleObject('Excel.Application');
      XLApp.Visible := True;
      XLApp.Workbooks.Add(xlWBatWorkSheet);
      XLApp.Workbooks[1].WorkSheets[1].Name := _exportar;
      //
      //  Inserir Dados
      //
      Sheet := XLApp.Workbooks[1].WorkSheets[_exportar];  // montar colunas
      for i := 0 to q.q.Fields.Count - 1 do
      begin
        sheet.cells[1, i+1] := q.q.fields[i].FieldName;
      end;
      q.q.first;
      i := 1;
      While not q.q.Eof do
      begin
        inc(i);
        for l := 0 to q.q.fields.Count - 1 do
        begin
          Sheet.Cells[i, l+1] := q.q.Fields[l].asString;
        end;
        q.q.Next;
      End;
      showmessage('Dados Exportados');
      // Formatar Colunas
      if not VarIsEmpty(XLApp) then
      begin
        XLApp.DisplayAlerts := False;  // Discard unsaved files....
        XLApp.Quit;
      end;
    finally
      freeandnil(q);
    end;
  end;
end;

procedure TfrmExporExcel.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmExporExcel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

end.
