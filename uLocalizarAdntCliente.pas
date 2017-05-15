unit uLocalizarAdntCliente;

interface

uses
  forms, Mask, Classes, ExtCtrls, dialogs, sysutils, Buttons, StdCtrls, ComCtrls,
  ActnList, DB, Menus, Controls, system.UITypes,
  urotinas, ustrings, udatahora, uregistro, uconstantes,
  classesqlmontar, classeretornasql, classeempresa, classeform, classeAplicacao,
  classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxCalc, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxGroupBox, dxStatusBar,
  cxLookAndFeels, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar,
  dxCore, cxDateUtils, cxNavigator, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarAdntCliente = class(TForm)
    Bevel1: TBevel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    lblcodigo: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    edtdtnf: TcxDateEdit;
    edtdtni: TcxDateEdit;
    edtDteF: TcxDateEdit;
    edtdtEi: TcxDateEdit;
    edtvltotali: TcxCalcEdit;
    edtvltotalf: TcxCalcEdit;
    edtvlutilizadoi: TcxCalcEdit;
    edtvlutilizadof: TcxCalcEdit;
    edtvlsaldoi: TcxCalcEdit;
    edtvlsaldof: TcxCalcEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    btnFind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDADNTCLIENTE: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvVLADNTCLIENTE: TcxGridDBColumn;
    tbvVLUTILIZADO: TcxGridDBColumn;
    tbvVLSALDO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTENTRADA: TcxGridDBColumn;
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
    actlimparcriterio: TAction;
    dxBarButton1: TdxBarButton;
    lblstspedido: TLabel;
    cbxcdstadntcliente: TcxLookupComboBox;
    tbvNMSTADNTCLIENTE: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actfiltroExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    function sqlwhere:string;
  public    { Public declarations }
  end;

function Localizaradntcliente:integer;

var
  frmLocalizarAdntCliente: TfrmLocalizarAdntCliente;

implementation

uses uExportarExcel, ulocalizarCliente, uDtmMain;

{$R *.DFM}

function Localizaradntcliente:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_adntcliente) then
  begin
    frmlocalizaradntcliente := Tfrmlocalizaradntcliente.Create(application);
  end;
  if frmlocalizaradntcliente.q.q.Active then
  begin
    frmlocalizaradntcliente.btnfindclick(frmlocalizaradntcliente.btnfind);
  end;
  frmlocalizaradntcliente.showmodal;
  if frmlocalizaradntcliente.ModalResult = mrok then
  begin
    result := frmlocalizaradntcliente.codigo;
  end;
end;

function TfrmLocalizarAdntCliente.makesql:string;
begin
  result := 'SELECT CDADNTCLIENTE'+
                  ',A.CDCLIENTE'+
                  ',NMCLIENTE'+
                  ',S.NMSTADNTCLIENTE'+
                  ',VLADNTCLIENTE'+
                  ',VLUTILIZADO'+
                  ',VLSALDO'+
                  ',DTEMISSAO'+
                  ',DTENTRADA '+
            'FROM ADNTCLIENTE A '+
            'INNER JOIN CLIENTE C ON C.CDCLIENTE=A.CDCLIENTE and c.cdempresa=a.cdempresa '+
            'LEFT JOIN STADNTCLIENTE S ON S.CDSTADNTCLIENTE=A.CDSTADNTCLIENTE AND S.CDEMPRESA=A.CDEMPRESA '+
            sqlwhere+
            ' order by cdadntcliente desc';
end;

function TfrmLocalizarAdntCliente.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where a.cdempresa=' + empresa.cdempresa.ToString + ' ';
  criterio := result;
  sqlmontarcodigo(edtcdcliente.text, _a, _cdcliente, result);
  sqlmontarcodigo(cbxcdstadntcliente.editvalue, _a, _cdstadntcliente, result);
  sqlmontardata(edtdtei.text, edtdtef.text, _a, _dtemissao, result);
  sqlmontardata(edtdtni.text, edtdtnf.text, _a, _dtentrada, result);
  sqlmontarvalor(edtvltotali.Value, edtvltotalf.Value, _a, _vl+_adntcliente, result);
  sqlmontarvalor(edtvlutilizadoi.Value, edtvlutilizadof.Value, _a, _vlutilizado, result);
  sqlmontarvalor(edtvlsaldoi.Value, edtvlsaldof.Value, _a, _vlsaldo, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarAdntCliente.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarAdntCliente.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarAdntCliente.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdadntcliente).AsInteger;
end;

procedure TfrmLocalizarAdntCliente.AbrirTabelas;
begin
  cbxcdstadntcliente.Properties.ListSource := abrir_tabela(_stadntcliente);
end;

procedure TfrmLocalizarAdntCliente.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarAdntCliente.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarAdntCliente.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarAdntCliente.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarAdntCliente.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarAdntCliente.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarAdntCliente.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarAdntCliente.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarAdntCliente.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarAdntCliente.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarAdntCliente.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarAdntCliente.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarAdntCliente.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarAdntCliente.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarAdntCliente.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarAdntCliente.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarAdntCliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
