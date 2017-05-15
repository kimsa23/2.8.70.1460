unit uLocalizarPedidoMaterial;

interface

uses
  System.Actions, System.UITypes,
  forms, Mask, Classes, ExtCtrls, dialogs, sysutils, Buttons, StdCtrls, ComCtrls,
  Controls, ActnList, graphics,
  DB,
  urotinas, udatahora, ulocalizarcliente, uregistro, ulocalizar,
  uconstantes, uexportarexcel,
  classeempresa, classesqlmontar, classeform, classeAplicacao, classequery, classeregistro,
  cxLookAndFeelPainters, cxGraphics, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxControls, cxContainer, cxEdit,
  cxGroupBox, dxStatusBar, cxButtonEdit, cxCalendar, cxCalc, Menus, cxButtons,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxLookAndFeels, dxBar, cxNavigator, dxCore, cxDateUtils,
  ClasseLocalizar;

type
  TfrmLocalizarPedidoMaterial = class(TForm)
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    tbvCDPEDIDOMATERIAL: TcxGridDBColumn;
    tbvNMTPPEDIDOMATERIAL: TcxGridDBColumn;
    tbvNMSTPEDIDOMATERIAL: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTEMPREGO: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvNMFUNCIONARIO: TcxGridDBColumn;
    lblTipo: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    lblValorTotal: TLabel;
    lblEntre: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    label10: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    btnfind: TcxButton;
    btncancelar: TcxButton;
    btnok: TcxButton;
    edtvlPedidof: TcxCalcEdit;
    edtvlPedidoi: TcxCalcEdit;
    edtdtEmpregof: TcxDateEdit;
    edtdtEmpregoi: TcxDateEdit;
    edtdtEmissaof: TcxDateEdit;
    edtdtEmissaoi: TcxDateEdit;
    cbxcdtppedidomaterial: TcxLookupComboBox;
    cbxcdstpedidomaterial: TcxLookupComboBox;
    cbxcdcntcusto: TcxLookupComboBox;
    Bevel1: TBevel;
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
    cbxcdtpfornecedor: TcxLookupComboBox;
    lblnmtpfornecedor: TLabel;
    edtcdrim: TcxButtonEdit;
    lblrim: TLabel;
    tbvnucor: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdfornecedor: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    edtcdfuncionario: TcxButtonEdit;
    lblnmfuncionario: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtppedidomaterialEnter(Sender: TObject);
    procedure cbxcdcntcustoEnter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdrimExit(Sender: TObject);
    procedure edtcdrimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdrimPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabelas;
    function sqlwhere: string;
    function makesql:string;
  public    { Public declarations }
  end;

function LocalizarPedidoMaterial:integer;

var
  frmLocalizarPedidoMaterial: TfrmLocalizarPedidoMaterial;

implementation

uses ustrings,
  uDtmMain,
  ulocalizarfornecedor,
  ulocalizarproduto,
  ulocalizarrim, ulocalizarFuncionario;

{$R *.DFM}

function LocalizarPedidoMaterial:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_Localizar+_Pedido+_Material) then
  begin
    frmLocalizarPedidoMaterial := TfrmLocalizarPedidoMaterial.Create(application);
  end;
  if frmLocalizarPedidoMaterial.q.q.Active then
  begin
    frmLocalizarPedidoMaterial.btnfindclick(frmLocalizarPedidoMaterial.btnfind);
  end;
  frmLocalizarPedidoMaterial.showmodal;
  if frmLocalizarPedidoMaterial.ModalResult = mrok then
  begin
    result := frmLocalizarPedidoMaterial.codigo;
  end;
end;

function TfrmLocalizarPedidoMaterial.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where p.cdempresa='+empresa.cdempresa.ToString+' ';
  criterio := result;
  sqlmontarcodigo(cbxcdtppedidomaterial.EditValue       , _p   , _cdtppedido+_material    , result);
  sqlmontarcodigo(cbxcdtpfornecedor.EditValue           , _f+_o, _cdtpfornecedor          , result);
  sqlmontarcodigo(cbxcdstpedidomaterial.EditValue       , _p   , _cdstpedido+_material    , result);
  sqlmontarcodigo(edtcdfuncionario.text            , _p   , _cdfuncionario+_solicitante, result);
  sqlmontarcodigo(cbxcdcntcusto.EditValue               , _i   , _cdcntcusto                , result);
  sqlmontarcodigo(edtcdproduto.text                , _i   , _cdproduto                 , result);
  sqlmontarcodigo(edtcdrim.Text                         , _I   , _cdrim                     , result);
  sqlmontarcodigo(edtcdfornecedor.text             , _pf  , _cdfornecedor              , result);
  sqlmontardata  (edtdtEmissaoi.Text, edtdtEmissaof.Text, _p   , _dtemissao, result);
  sqlmontardata  (edtdtEmpregoi.text, edtdtEmpregof.text, _p   , _dtemprego, result);
  sqlmontarvalor (edtvlPedidoi.Value, edtvlPedidof.Value, _p   , _vltotal    , result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarPedidoMaterial.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.SQL.Text := makesql;
  Q.q.Open;
  btnOk.Enabled := Q.q.RecordCount > 0;
end;

procedure TfrmLocalizarPedidoMaterial.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarPedidoMaterial.FormShow(Sender: TObject);
begin
  edtvlpedidoi.Value :=0;
  edtvlpedidof.Value :=0;
end;

function TfrmLocalizarPedidoMaterial.makesql: string;
begin
  result := 'SELECT p.CDPEDIDOMATERIAL'+
                           ',t.nmtppedidomaterial'+
                           ',s.nmstpedidomaterial'+
                           ',s.nucor'+
                           ',f.nmfuncionario'+
                           ',p.DTEMISSAO'+
                           ',p.DTEMPREGO'+
                           ',p.VLTOTAL '+
                      'FROM PEDIDOMATERIAL P '+
                      'left join stpedidomaterial s on s.cdstpedidomaterial=p.cdstpedidomaterial '+
                      'left join funcionario f on f.cdfuncionario=p.cdfuncionariosolicitante and f.cdempresa=p.cdempresa '+
                      'left join tppedidomaterial t on t.cdtppedidomaterial=p.cdtppedidomaterial and t.cdempresa=p.cdempresa '+
                      'left join itpedidomaterial i on i.cdpedidomaterial=p.cdpedidomaterial and i.cdempresa=p.cdempresa '+
                      'left join cntcusto c on c.cdcntcusto=i.cdcntcusto and c.cdempresa=i.cdempresa '+
                      'left join pedidomaterialfornecedor pf on pf.cdpedidomaterial=p.cdpedidomaterial and pf.cdempresa=p.cdempresa '+
                      'left join fornecedor fo on fo.cdempresa=pf.cdempresa and fo.cdfornecedor=pf.cdfornecedor '+
                      sqlwhere+
                      'group by p.CDPEDIDOMATERIAL'+
                              ',t.nmtppedidomaterial'+
                              ',s.nmstpedidomaterial'+
                              ',s.nucor'+
                              ',f.nmfuncionario'+
                              ',p.DTEMISSAO'+
                              ',p.DTEMPREGO'+
                              ',p.VLTOTAL '+
                      'order by p.CDPEDIDOMATERIAL desc';
end;

procedure TfrmLocalizarPedidoMaterial.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdpedidomaterial).asinteger;
end;

procedure TfrmLocalizarPedidoMaterial.AbrirTabelas;
begin
  cbxcdtppedidomaterial.Properties.ListSource := abrir_tabela(_tppedidomaterial);
  cbxcdstpedidomaterial.Properties.ListSource := abrir_tabela(_stpedidomaterial);
  cbxcdtpfornecedor.Properties.ListSource := abrir_tabela(_tpfornecedor);
  cbxcdcntcusto.Properties.ListSource := abrir_tabela(_cntcusto);
end;

procedure TfrmLocalizarPedidoMaterial.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCOR;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if (ACanvas.Font.Color = clwindowtext) or (ACanvas.Font.Color = clblack) then
  begin
    exit;
  end;
  if ACanvas.Font.Color = clred  then
  begin
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end
  else
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarPedidoMaterial.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarPedidoMaterial.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarPedidoMaterial.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarPedidoMaterial.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarPedidoMaterial.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarPedidoMaterial.cbxcdtppedidomaterialEnter(Sender: TObject);
begin
  abrir_tabela(_tppedidomaterial);
  colorenter(sender);
end;

procedure TfrmLocalizarPedidoMaterial.cbxcdcntcustoEnter(Sender: TObject);
begin
  abrir_tabela(_cntcusto);
  colorenter(sender);
end;

procedure TfrmLocalizarPedidoMaterial.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarPedidoMaterial.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarPedidoMaterial.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarPedidoMaterial.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarPedidoMaterial.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarPedidoMaterial.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarPedidoMaterial.edtcdfuncionarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario);
  colorexit(sender);
end;

procedure TfrmLocalizarPedidoMaterial.edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarPedidoMaterial.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarfuncionario;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdfuncionario.text    := cd.tostring;
  lblnmfuncionario.caption := qregistro.NomedoCodigo(_funcionario, cd);
end;

procedure TfrmLocalizarPedidoMaterial.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarPedidoMaterial.edtcdprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarPedidoMaterial.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarPedidoMaterial.edtcdrimExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdrim.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_rim, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(__requisicao+' '+_material)]), mterror, [mbok], 0);
    edtcdrim.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarPedidoMaterial.edtcdrimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdrimPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarPedidoMaterial.edtcdrimPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarrim;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdrim.text := cd.ToString;
end;

procedure TfrmLocalizarPedidoMaterial.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarPedidoMaterial.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarPedidoMaterial.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarPedidoMaterial.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarPedidoMaterial.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarPedidoMaterial.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    q.q.prior;
    key := 0;
  end;
end;

end.
