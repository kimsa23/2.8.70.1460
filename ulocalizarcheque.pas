unit ulocalizarcheque;

interface

uses
  forms, Mask, sysutils, dialogs, Classes, ExtCtrls, StdCtrls, ComCtrls, Buttons,
  Menus, ActnList, Controls, system.UITypes,
  DB, DBClient, Grids,
  urotinas, uregistro, ulocalizar, uexportarexcel, uconstantes,
  udatahora, ustrings,
  classesqlmontar, classeretornasql, classeempresa, classeform, classeAplicacao, classequery,
  classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxCalc, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, dxStatusBar, cxGroupBox, cxCurrencyEdit, cxLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore, cxDateUtils, cxNavigator,
  System.Actions, ClasseLocalizar;

type
  TfrmLocalizarCheque = class(TForm)
    bvl: TBevel;
    lblduplicata: TLabel;
    lbldtemissao: TLabel;
    lblateemissao: TLabel;
    lblstatus: TLabel;
    lbldtprorrogacao: TLabel;
    lblateprorrogacao: TLabel;
    lblvlcheque: TLabel;
    lblatevlcheque: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lblnucpfcnpj: TLabel;
    lblnmemitente: TLabel;
    lblcliente: TLabel;
    lbldtentrada: TLabel;
    lblateentrada: TLabel;
    lbldtvencimento: TLabel;
    lblatevencimento: TLabel;
    lblatevlsaldo: TLabel;
    lblvlsaldo: TLabel;
    edtdtEmissaoi: TcxDateEdit;
    edtdtvencimentof: TcxDateEdit;
    edtDtprorrogacaof: TcxDateEdit;
    edtDtprorrogacaoi: TcxDateEdit;
    edtdtvencimentoi: TcxDateEdit;
    edtdtentradaf: TcxDateEdit;
    edtDtemissaof: TcxDateEdit;
    edtdtentradai: TcxDateEdit;
    edtvlchequei: TcxCalcEdit;
    edtvlsaldoi: TcxCalcEdit;
    edtvlchequef: TcxCalcEdit;
    edtvlsaldof: TcxCalcEdit;
    edtnucheque: TcxTextEdit;
    edtnucontacorrente: TcxTextEdit;
    edtnuagencia: TcxTextEdit;
    edtnmemitente: TcxTextEdit;
    edtnucpfcnpj: TcxTextEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    btnFind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDCHEQUE: TcxGridDBColumn;
    tbvNUCHEQUE: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTENTRADA: TcxGridDBColumn;
    tbvDTPRORROGACAO: TcxGridDBColumn;
    tbvDTVENCIMENTO: TcxGridDBColumn;
    tbvVLCHEQUE: TcxGridDBColumn;
    tbvNMBANCO: TcxGridDBColumn;
    tbvNUAGENCIA: TcxGridDBColumn;
    tbvNUCONTACORRENTE: TcxGridDBColumn;
    tbvNMSTCHEQUE: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdstcheque: TcxLookupComboBox;
    cbxcdbanco: TcxLookupComboBox;
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
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdstchequeEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
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

function Localizarcheque:integer;

var
  frmLocalizarCheque: TfrmLocalizarCheque;

implementation

uses ulocalizarCliente, uDtmMain;

{$R *.DFM}

function Localizarcheque:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_cheque) then
  begin
    frmlocalizarcheque := Tfrmlocalizarcheque.Create(application);
  end;
  if frmlocalizarcheque.q.q.Active then
  begin
    frmlocalizarcheque.btnfindclick(frmlocalizarcheque.btnfind);
  end;
  frmlocalizarcheque.showmodal;
  if frmlocalizarcheque.ModalResult = mrok then
  begin
    result := frmlocalizarcheque.codigo;
  end;
end;

function TfrmLocalizarCheque.makesql:string;
begin
  result := 'SELECT CDCHEQUE'+
                  ',NUCHEQUE'+
                  ',NMCLIENTE'+
                  ',DTEMISSAO'+
                  ',DTENTRADA'+
                  ',DTPRORROGACAO'+
                  ',DTVENCIMENTO'+
                  ',VLCHEQUE'+
                  ',NMBANCO'+
                  ',C.NUAGENCIA'+
                  ',NUCONTACORRENTE'+
                  ',NMSTCHEQUE '+
            'FROM CHEQUE c '+
            'LEFT JOIN STCHEQUE s ON S.CDSTCHEQUE=C.CDSTCHEQUE and s.cdempresa=c.cdempresa '+
            'LEFT JOIN BANCO b ON B.CDBANCO=C.CDBANCO '+
            'LEFT JOIN CLIENTE cl ON Cl.CDCLIENTE=C.CDCLIENTE and cl.cdempresa=c.cdempresa '+
            sqlwhere;
end;

function TfrmLocalizarCheque.sqlwhere: string;
var
  criterio : string;
begin
  result := result + 'where c.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarnomelike(edtnucheque.Text, _c, _nucheque, result);
  sqlmontarnomelike(edtnucontacorrente.Text, _c, _nu + _conta + _corrente, result);
  sqlmontarnomelike(edtnuagencia.Text, _c, _nuagencia, result);
  sqlmontarnomelike(edtnucpfcnpj.Text, _c, _nucpfcnpj, result);
  sqlmontarnomelike(edtnmemitente.Text, _c, _nmemitente, result);
  sqlmontarcodigo(cbxcdbanco.EditValue, _c, _cdbanco, result);
  sqlmontarcodigo(cbxcdstcheque.EditValue, _c, _cdstcheque, result);
  sqlmontarcodigo(edtcdcliente.text, _c, _cdcliente, result);
  sqlmontardata(edtdtemissaoi.text, edtdtemissaof.text, _c, _dtemissao, result);
  sqlmontardata(edtdtprorrogacaoi.text, edtdtprorrogacaof.text, _c, _dtprorrogacao, result);
  sqlmontardata(edtdtentradai.text, edtdtentradaf.text, _c, _dtentrada, result);
  sqlmontardata(edtdtvencimentoi.text, edtdtvencimentof.text, _c, _dtvencimento, result);
  sqlmontarvalor(edtvlchequei.Value, edtvlchequef.Value, _c, _vlcheque, result);
  sqlmontarvalor(edtvlsaldoi.Value, edtvlsaldof.Value, _c, _vlsaldo, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarCheque.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0
end;

procedure TfrmLocalizarCheque.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarCheque.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarCheque.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarCheque.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarCheque.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarCheque.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdcheque).AsInteger;
end;

procedure TfrmLocalizarCheque.AbrirTabelas;
begin
  cbxcdstcheque.Properties.ListSource := abrir_tabela(_stcheque);
  cbxcdbanco.Properties.ListSource := abrir_tabela(_banco);
end;

procedure TfrmLocalizarCheque.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarCheque.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarCheque.cbxcdstchequeEnter(Sender: TObject);
begin
  cbxcdstcheque.Properties.ListSource := abrir_tabela(_stcheque);
  colorenter(Sender);
end;

procedure TfrmLocalizarCheque.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarCheque.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarCheque.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;
procedure TfrmLocalizarCheque.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarCheque.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarCheque.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarCheque.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarCheque.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarCheque.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarCheque.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarCheque.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarCheque.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
