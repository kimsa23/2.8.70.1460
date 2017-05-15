unit ulocalizarContrato;

interface

uses
  forms, StdCtrls, sysutils, dialogs, ComCtrls, ExtCtrls, Buttons, Classes,
  ActnList, Menus, Controls, system.UITypes,
  DB,
  uregistro, udatahora, ulocalizar, urotinas, uconstantes,
  ulocalizarcliente, uexportarexcel,
  classeempresa, classesqlmontar, classeRetornaSQL, classeform, classeAplicacao,
  classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, dxStatusBar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, cxLookAndFeels, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxBar, dxCore, cxDateUtils, cxNavigator, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarContrato = class(TForm)
    Bevel2: TBevel;
    lblCliente: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtdtfinalf: TcxDateEdit;
    edtdtfinali: TcxDateEdit;
    edtdtiniciof: TcxDateEdit;
    edtdtinicioi: TcxDateEdit;
    edtnmcontrato: TcxTextEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDCONTRATO: TcxGridDBColumn;
    tbvNMCONTRATO: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvDTINICIO: TcxGridDBColumn;
    tbvDTFINAL: TcxGridDBColumn;
    tbvNMSTCONTRATO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdstcontrato: TcxLookupComboBox;
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
    actlimparcriterio: TAction;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    actitcontratopaciente: TAction;
    actopcoes: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    actmodograde: TAction;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure actitcontratopacienteExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarContrato:integer;

var
  frmLocalizarContrato: TfrmLocalizarContrato;

implementation

uses uDtmMain, udlgtabela;

{$R *.DFM}

function Localizarcontrato:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_contrato) then
  begin
    frmlocalizarcontrato := tfrmlocalizarcontrato.Create(application);
  end;
  if frmlocalizarcontrato.q.q.Active then
  begin
    frmlocalizarcontrato.btnfindclick(frmlocalizarcontrato.btnfind);
  end;
  frmlocalizarcontrato.showmodal;
  if frmlocalizarcontrato.ModalResult = mrok then
  begin
    result := frmlocalizarcontrato.codigo;
  end;
end;

function TfrmLocalizarContrato.makesql:string;
begin
  result := 'SELECT C.CDCONTRATO'+
                  ',C.NMCONTRATO'+
                  ',CL.NMCLIENTE'+
                  ',C.DTINICIO'+
                  ',C.DTFINAL'+
                  ',S.NMSTCONTRATO '+
            'FROM CONTRATO c '+
            'LEFT JOIN CLIENTE cl ON CL.CDCLIENTE=C.CDCLIENTE and c.cdempresa=cl.cdempresa '+
            'LEFT JOIN STCONTRATO s ON S.CDSTCONTRATO=C.CDSTCONTRATO and s.cdempresa=c.cdempresa '+
            sqlwhere+
            ' order by c.cdcontrato';
end;

function TfrmLocalizarContrato.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where c.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarnomelike(edtnmcontrato.Text, _c, _nm + _contrato, result);
  sqlmontarcodigo(edtcdcliente.text, _c, _cdcliente, result);
  sqlmontarcodigo(cbxcdstcontrato.EditValue, _c, _cdstcontrato, result);
  sqlmontardata(edtdtinicioi.text, edtdtiniciof.text, _c, _dtinicio, result);
  sqlmontardata(edtdtfinali.text, edtdtfinalf.text, _c, _dtfinal, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarContrato.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarContrato.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarContrato.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarContrato.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarContrato.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarContrato.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarContrato.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
  actitcontratopaciente.Visible := RegistroExiste(_tpcontrato, _bopaciente+'=''S''');
end;

procedure TfrmLocalizarContrato.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarContrato.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarContrato.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarContrato.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarContrato.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarContrato.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarContrato.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarContrato.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarContrato.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarContrato.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarContrato.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarContrato.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarContrato.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarContrato.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdcontrato).AsInteger;
end;

procedure TfrmLocalizarContrato.AbrirTabelas;
begin
  cbxcdstcontrato.Properties.ListSource := abrir_tabela(_stcontrato);
end;

procedure TfrmLocalizarContrato.actitcontratopacienteExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itcontratopaciente))), q.q.FieldByName(_cdcontrato).asInteger, _cdcontrato);
end;

procedure TfrmLocalizarContrato.actopcoesExecute(Sender: TObject);
begin
//
end;

end.
