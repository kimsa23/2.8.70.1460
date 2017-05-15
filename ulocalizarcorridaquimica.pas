unit ulocalizarcorridaquimica;

interface

uses
  forms, Buttons, StdCtrls, Mask, Classes, ExtCtrls, dialogs, sysutils, ComCtrls,
  Menus, Controls, ActnList,
  DB,
  ulocalizarcliente, udatahora, urotinas, uregistro, ulocalizar,
  uconstantes, uexportarexcel,
  classeempresa, classeform, classesqlmontar, classeRetornaSQL, classeAplicacao,
  classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxGraphics,
  dxStatusBar, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore, cxDateUtils, cxNavigator,
  System.Actions, ClasseLocalizar;
  
type
  TfrmLocalizarCorridaquimica = class(TForm)
    Bevel1: TBevel;
    lbltpgradevalor: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    edtdtcorridaf: TcxDateEdit;
    edtdtcertificadof: TcxDateEdit;
    edtdtcertificadoi: TcxDateEdit;
    edtdtcorridai: TcxDateEdit;
    edtnupedido: TcxButtonEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    btnFind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDCORRIDAQUIMICA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    edtcdcertificadoqualidade: TcxTextEdit;
    tbvNMTPGRADEVALOR: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdtpgradevalor: TcxLookupComboBox;
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
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure edtnupedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabelas;
    function makesql: string;
  public    { Public declarations }
  end;

function LocalizarCorridaQuimica:integer;

var
  frmLocalizarCorridaquimica: TfrmLocalizarCorridaquimica;

implementation

uses uLocalizarPedido, uDtmMain;

{$R *.DFM}

function LocalizarCorridaQuimica:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_Localizar+_CorridaQuimica) then
  begin
    frmLocalizarCorridaQuimica := TfrmLocalizarCorridaQuimica.Create(application);
  end;
  if frmLocalizarCorridaQuimica.q.q.Active then
  begin
    frmLocalizarCorridaQuimica.btnfindclick(frmLocalizarCorridaQuimica.btnfind);
  end;
  frmLocalizarCorridaQuimica.showmodal;
  if frmLocalizarCorridaQuimica.ModalResult = mrok then
  begin
    result := frmLocalizarCorridaQuimica.codigo;
  end;
end;

function TfrmLocalizarCorridaquimica.makesql:string;
begin
  result := 'SELECT corridaquimica.NUcorridaquimica'+
                  ',corridaquimica.dtemissao'+
                  ',TPGRADEVALOR.NMTPGRADEVALOR'+
                  ',corridaquimica.CDCORRIDAQUIMICA '+
            'FROM corridaquimica '+
            'LEFT JOIN TPGRADEVALOR ON TPGRADEVALOR.CDTPGRADEVALOR=corridaquimica.CDTPGRADEVALOR and TPGRADEVALOR.cdempresa=corridaquimica.cdempresa '+
            'left join certificadoqualidade on certificadoqualidade.cdcorridaquimica=corridaquimica.cdcorridaquimica and certificadoqualidade.cdempresa=corridaquimica.cdempresa '+
            'where corridaquimica.cdempresa='+empresa.cdempresa.ToString+' ';
  sqlmontarcodigo(cbxcdtpgradevalor.EditValue   , _corridaquimica, _cdtpgradevalor        , result);
  sqlmontarcodigo(edtcdcertificadoqualidade.text,_certificadoqualidade, _cdcertificadoqualidade, result);
  sqlmontarstring(edtnupedido.text              ,_certificadoqualidade, _nupedido              , result);
  sqlmontardata  (edtdtcorridai.text      , edtdtcorridaf.text     , _corridaquimica , _dtemissao, result);
  sqlmontardata  (edtdtcertificadoi.text  , edtdtcertificadof.text , _certificadoqualidade, _dtemissao, result);
  result := result + ' group by corridaquimica.NUCORRIDAQUIMICA,corridaquimica.dtemissao,TPGRADEVALOR.NMTPGRADEVALOR,corridaquimica.CDCORRIDAQUIMICA';
end;

procedure TfrmLocalizarCorridaquimica.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarCorridaquimica.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarCorridaquimica.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarCorridaquimica.edtnupedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnupedidoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCorridaquimica.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_CDCORRIDAQUIMICA).AsInteger;
end;

procedure TfrmLocalizarCorridaquimica.AbrirTabelas;
begin
  cbxcdtpgradevalor.Properties.ListSource := abrir_tabela(_tpgradevalor);
end;

procedure TfrmLocalizarCorridaquimica.edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := LocalizarPedido;
  if cd = 0 then
  begin
    exit;
  end;
  edtnupedido.text := cd.ToString;
end;

procedure TfrmLocalizarCorridaquimica.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarCorridaquimica.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarCorridaquimica.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarCorridaquimica.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarCorridaquimica.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarCorridaquimica.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarCorridaquimica.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarCorridaquimica.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarCorridaquimica.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarCorridaquimica.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarCorridaquimica.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarCorridaquimica.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarCorridaquimica.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarCorridaquimica.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
