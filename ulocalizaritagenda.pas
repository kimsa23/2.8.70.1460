unit ulocalizaritagenda;

interface

uses
  forms, Graphics, Buttons, StdCtrls, ComCtrls, Controls, Grids, Mask, Classes,
  ActnList, ExtCtrls, Menus, dialogs, sysutils, system.UITypes,
  DB,
  uregistro, uconstantes, urotinas, udatahora, uexportarexcel, ulocalizarcliente,
  classesqlmontar, classeretornasql, classeempresa, classeform, classeAplicacao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxGraphics, cxLookAndFeels,
  cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView, cxCalc,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxPCdxBarPopupMenu, cxCheckBox,
  dxBar, cxSpinEdit, cxTimeEdit, cxNavigator, dxCore, cxDateUtils,
  System.Actions, ClasseLocalizar;

type
  TfrmLocalizaritagenda = class(TForm)
    Label7: TLabel;
    Label2: TLabel;
    lblCliente: TLabel;
    Label1: TLabel;
    btnfind: TcxButton;
    btncancel: TcxButton;
    btnok: TcxButton;
    Bevel1: TBevel;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvNMEQUIPAMENTO: TcxGridDBColumn;
    tbvNMSTITAGENDA: TcxGridDBColumn;
    tbvHRFIM: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    cbxcdstitagenda: TcxLookupComboBox;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbvHRINICIO: TcxGridDBColumn;
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
    tbvnucor: TcxGridDBColumn;
    lblproduto: TLabel;
    lbldtemissao: TLabel;
    lblhrinicio: TLabel;
    lblentresaida: TLabel;
    lblentreemissao: TLabel;
    lblresposta: TLabel;
    lblatereposta: TLabel;
    edtDtemissaoF: TcxDateEdit;
    edtdtEmissaoi: TcxDateEdit;
    edthrinicioi: TcxTimeEdit;
    edthriniciof: TcxTimeEdit;
    edthrfimi: TcxTimeEdit;
    edthrfimf: TcxTimeEdit;
    tbvNMFUNCIONARIO: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    edtcdfuncionario: TcxButtonEdit;
    lblnmfuncionario: TLabel;
    edtcdequipamento: TcxButtonEdit;
    lblnmequipamento: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grd_DblClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtcdequipamentoExit(Sender: TObject);
    procedure edtcdequipamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcdequipamentoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private   { Private declarations }
    codigo : string;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function Localizaritagenda:string;

var
  frmLocalizaritagenda: TfrmLocalizaritagenda;

implementation

uses uDtmMain, ulocalizarproduto, classeregistro, ulocalizarFuncionario,
  uLocalizarEquipamento;

{$R *.DFM}

function Localizaritagenda:string;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_it+_agenda) then
  begin
    frmLocalizaritagenda := TfrmLocalizaritagenda.Create(application);
  end;
  with frmLocalizaritagenda do
  begin
    if q.q.Active then
    begin
      btnfindclick(btnfind);
    end;
    showmodal;
    if ModalResult = mrok then
    begin
      result := codigo;
    end;
  end;
end;

function TfrmLocalizaritagenda.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where I.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarcodigo    (edtcdproduto.text  , _i     , _cdproduto       , result);
  sqlmontarcodigo    (edtcdcliente.text  , _I     , _cdcliente       , result);
  sqlmontarcodigo    (edtcdfuncionario.text  , _I     , _cdfuncionario       , result);
  sqlmontarcodigo    (edtcdequipamento.text  , _I     , _cdequipamento       , result);
  if cbxcdstitagenda.Text    <> '' then
  begin
    sqlmontarcodigo(qregistro.CodigodoNome(_st+_it+_agenda, cbxcdstitagenda.Text   ), _i, _cd+_st+_it+_agenda, result);
  end;
  sqlmontardata(edtdtEmissaoi.text, edtdtEmissaof.text, _i, _dtemissao, result);
  sqlmontarhora(edthrinicioi.text , edthriniciof.text , _i, _hrinicio , result);
  sqlmontarhora(edthrfimi.text    , edthrfimf.text    , _i, _hrfim    , result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizaritagenda.makesql:string;
begin
  result := 'SELECT I.cditagenda'+
                  ',I.DTEMISSAO'+
                  ',I.CDCLIENTE'+
                  ',c.NMCLIENTE'+
                  ',s.nucor'+
                  ',s.NMSTITAGENDA'+
                  ',F.NMFUNCIONARIO'+
                  ',E.NMEQUIPAMENTO'+
                  ',I.HRINICIO'+
                  ',I.HRFIM '+
            'FROM itagenda i '+
            'left JOIN STITAGENDA S ON S.CDSTITAGENDA=I.CDSTITAGENDA and s.cdempresa=I.cdempresa '+
            'left JOIN CLIENTE C ON I.CDCLIENTE=C.CDCLIENTE and c.cdempresa=I.cdempresa '+
            'left JOIN FUNCIONARIO F ON F.CDFUNCIONARIO=I.CDFUNCIONARIO and F.cdempresa=I.cdempresa '+
            'left join EQUIPAMENTO E on E.cdEQUIPAMENTO=I.cdEQUIPAMENTO and I.cdempresa=E.cdempresa '+
            sqlwhere+' '+
            'order by i.dtemissao,i.hrinicio';
end;

procedure TfrmLocalizaritagenda.btnFindClick(Sender: TObject);
begin
  q.q.Close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0
end;

procedure TfrmLocalizaritagenda.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizaritagenda.grd_DblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizaritagenda.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cditagenda).AsString;
end;

procedure TfrmLocalizaritagenda.AbrirTabelas;
begin
  cbxcdstitagenda.Properties.ListSource := abrir_tabela(_stitagenda);
end;

procedure TfrmLocalizaritagenda.btncancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizaritagenda.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizaritagenda.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizaritagenda.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizaritagenda.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizaritagenda.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizaritagenda.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizaritagenda.edtcdequipamentoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _equipamento, _equipamento);
  colorexit(sender);
end;

procedure TfrmLocalizaritagenda.edtcdequipamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdequipamentoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizaritagenda.edtcdequipamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarequipamento;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdequipamento.text    := cd.ToString;
  lblnmequipamento.caption := qregistro.NomedoCodigo(_equipamento, cd);
end;

procedure TfrmLocalizaritagenda.edtcdfuncionarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario);
  colorexit(sender);
end;

procedure TfrmLocalizaritagenda.edtcdfuncionarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizaritagenda.edtcdfuncionarioPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarfuncionario;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdfuncionario.text    := cd.ToString;
  lblnmfuncionario.caption := qregistro.NomedoCodigo(_funcionario, cd);
end;

procedure TfrmLocalizaritagenda.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizaritagenda.edtcdprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizaritagenda.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := cd.ToString;
  lblnmproduto.caption := qregistro.NomedoCodigo(_produto, cd);
end;

procedure TfrmLocalizaritagenda.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizaritagenda.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizaritagenda.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizaritagenda.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizaritagenda.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizaritagenda.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizaritagenda.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column             := tbvnucor;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
       if ACanvas.Font.Color = clred  then ACanvas.Font.Style := [fsStrikeOut, fsBold]
  else if ACanvas.Font.Color = clblue then ACanvas.Font.Style := [fsBold]
  else ACanvas.Font.Style := [fsBold];
end;

procedure TfrmLocalizaritagenda.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizaritagenda.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizaritagenda.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
