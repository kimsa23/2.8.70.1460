unit ulocalizardespesaconvenio;

interface

uses
  forms, Menus, Buttons, Mask, Classes, ExtCtrls, dialogs, sysutils, StdCtrls, ComCtrls,
  Controls, ActnList,
  DB,
  uregistro, urotinas, ulocalizar, uconstantes, uexportarexcel, ulocalizarcliente,
  udatahora,
  classeempresa, classeform, classesqlmontar, classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxStatusBar, cxGroupBox, cxLookAndFeels,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore,
  cxDateUtils, cxNavigator, System.Actions, ClasseLocalizar;

type
  TfrmLocalizardespesaconvenio = class(TForm)
    dts: TDataSource;
    Bevel1: TBevel;
    Label8: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtdtinicioi: TcxDateEdit;
    edtdtiniciof: TcxDateEdit;
    btnfind: TcxButton;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDDESPESACONVENIO: TcxGridDBColumn;
    tbvDTINICIO: TcxGridDBColumn;
    tbvDTTERMINO: TcxGridDBColumn;
    tbvNMTPCONVENIO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cbxcdtpconvenio: TcxLookupComboBox;
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
    lbl1: TLabel;
    edtdtterminoi: TcxDateEdit;
    lbl2: TLabel;
    edtdtterminof: TcxDateEdit;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure edtcdcontaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpconvenioEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
  private   { Private declarations }
    q : tclassequery;
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarDespesaConvenio:integer;

var
  frmLocalizardespesaconvenio: TfrmLocalizardespesaconvenio;

implementation

uses uDtmMain, ulocalizarproduto;

{$R *.DFM}

function LocalizarDespesaConvenio:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_Localizar+_despesaconvenio) then
  begin
    frmLocalizardespesaconvenio := TfrmLocalizardespesaconvenio.Create(application);
  end;
  if frmLocalizardespesaconvenio.q.q.Active then
  begin
    frmLocalizardespesaconvenio.btnfindclick(frmLocalizardespesaconvenio.btnfind);
  end;
  frmLocalizardespesaconvenio.showmodal;
  if frmLocalizardespesaconvenio.ModalResult = mrok then
  begin
    result := frmLocalizardespesaconvenio.q.q.fieldbyname(_cddespesaconvenio).Asinteger;
  end;
end;

function TfrmLocalizardespesaconvenio.sqlwhere:string;
begin
  result := 'where d.cdempresa='+empresa.cdempresa.ToString+' ';
  sqlmontarcodigo(cbxcdtpconvenio.EditValue             , _d, _cdtpconvenio, result);
  sqlmontardata  (edtdtinicioi.text , edtdtiniciof.text , _d, _dtinicio    , result);
  sqlmontardata  (edtdtterminoi.text, edtdtterminof.text, _d, _dttermino   , result);
end;

function TfrmLocalizardespesaconvenio.makesql:string;
begin
  result := 'SELECT d.cddespesaconvenio'+
                  ',d.dtinicio'+
                  ',d.dttermino'+
                  ',t.nmtpconvenio '+
            'FROM DESPESACONVENIO D '+
            'left join tpconvenio t on t.cdempresa=d.cdempresa and t.cdtpconvenio=d.cdtpconvenio '+
            sqlwhere;
end;

procedure TfrmLocalizardespesaconvenio.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizardespesaconvenio.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizardespesaconvenio.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizardespesaconvenio.edtcdcontaKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizardespesaconvenio.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizardespesaconvenio.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizardespesaconvenio.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  TRegistro.SetQueryLocalizar(q, dts, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizardespesaconvenio.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizardespesaconvenio.AbrirTabelas;
begin
  cbxcdtpconvenio.Properties.ListSource := abrir_tabela(_tpconvenio);
end;

procedure TfrmLocalizardespesaconvenio.cbxcdtpconvenioEnter(Sender: TObject);
begin
  abrir_tabela(_tpconvenio);
  colorenter(sender);
end;

procedure TfrmLocalizardespesaconvenio.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizardespesaconvenio.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizardespesaconvenio.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizardespesaconvenio.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizardespesaconvenio.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizardespesaconvenio.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizardespesaconvenio.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizardespesaconvenio.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizardespesaconvenio.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizardespesaconvenio.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

end.
