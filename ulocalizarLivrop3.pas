unit ulocalizarLivrop3;

interface

uses
  forms, Buttons, StdCtrls, ComCtrls, Mask, Classes, ExtCtrls, dialogs, sysutils,
  ActnList, Menus, Controls,
  DB,
  uregistro, ulocalizarcliente, udatahora, ulocalizar, uconstantes,
  urotinas, uexportarexcel,
  classeempresa, classeform, classesqlmontar, classeaplicacao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, cxGroupBox, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxStatusBar,
  cxLookAndFeels, dxBar, dxCore, cxDateUtils, cxNavigator, System.Actions,
  ClasseLocalizar;
  
type
  TfrmLocalizarlp1a = class(TForm)
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    edtdttf: TcxDateEdit;
    edtdtif: TcxDateEdit;
    edtdtti: TcxDateEdit;
    edtdtii: TcxDateEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    btnFind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDLP1A: TcxGridDBColumn;
    tbvDTINICIO: TcxGridDBColumn;
    tbvDTFINAL: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    act: TActionList;
    actfiltro: TAction;
    actagrupar: TAction;
    actexcel: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton1: TdxBarButton;
    actlimparcriterio: TAction;
    dxBarButton3: TdxBarButton;
    actmodograde: TAction;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    function makesql: string;
  public    { Public declarations }
  end;

function Localizarlp1a:integer;

var
  frmLocalizarlp1a: TfrmLocalizarlp1a;

implementation

uses uDtmMain, classeregistro;

{$R *.DFM}

function Localizarlp1a:Integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_Localizar+_lp1a) then
  begin
    frmLocalizarlp1a := tfrmLocalizarlp1a.Create(application);
  end;
  if frmLocalizarlp1a.q.q.Active then
  begin
    frmLocalizarlp1a.btnfindclick(frmLocalizarlp1a.btnfind);
    frmLocalizarlp1a.qAfterScroll(frmLocalizarlp1a.q.q);
  end;
  frmLocalizarlp1a.showmodal;
  if frmLocalizarlp1a.ModalResult = mrok then
  begin
    result := frmLocalizarlp1a.codigo;
  end;
end;

function TfrmLocalizarlp1a.makesql : string;
begin
  result := 'SELECT cdlp1a,DTINICIO,DTFINAL FROM LP1A where cdempresa='+empresa.cdempresa.ToString+' ';
  sqlmontardata(edtdtii.text, edtdtif.text, _lp1a, _dtinicio, result);
  sqlmontardata(edtdtti.text, edtdttf.text, _Lp1a, _DTFINAL , result);
  result := result + ' order by dtinicio desc';
end;

procedure TfrmLocalizarlp1a.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarlp1a.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarlp1a.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdlp1a).AsInteger;
end;

procedure TfrmLocalizarlp1a.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarlp1a.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarlp1a.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarlp1a.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarlp1a.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarlp1a.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarlp1a.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarlp1a.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarlp1a.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarlp1a.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarlp1a.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarlp1a.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
end;

procedure TfrmLocalizarlp1a.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarlp1a.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not q.q.Active) or (q.q.RecordCount <= 0) then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    q.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    q.q.Prior;
    key := 0;
  end;
end;

end.
