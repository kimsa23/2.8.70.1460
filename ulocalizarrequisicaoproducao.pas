unit ulocalizarrequisicaoproducao;

interface

uses
  forms, Menus, Buttons, Mask, Classes, ExtCtrls, dialogs, sysutils, StdCtrls, ComCtrls,
  Controls, ActnList, Graphics, system.UITypes,
  DB, Grids, sqlexpr,
  uregistro, urotinas, ulocalizar, uconstantes, uexportarexcel, ulocalizarcliente,
  udatahora, uMenuRelatorio,
  classeempresa, classeform, classesqlmontar, classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxStatusBar, cxGroupBox, cxLookAndFeels,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore,
  cxDateUtils, cxNavigator, System.Actions, ClasseLocalizar, classelocacao;

type
  TfrmLocalizarRequisicaoProducao = class(TForm)
    dts: TDataSource;
    Label11: TLabel;
    Bevel1: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtdtemissaoi: TcxDateEdit;
    edtdtemissaof: TcxDateEdit;
    btnfind: TcxButton;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDREQUISICAOPRODUCAO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNMSTREQUISICAOPRODUCAO: TcxGridDBColumn;
    tbvNMTPREQUISICAOPRODUCAO: TcxGridDBColumn;
    tbvNMFUNCIONARIO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cbxcdstrequisicaoproducao: TcxLookupComboBox;
    cbxcdtpRequisicaoProducao: TcxLookupComboBox;
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
    lbldtprventrega: TLabel;
    edtdtprventregai: TcxDateEdit;
    lbldtprevisaoate: TLabel;
    edtdtprventregaf: TcxDateEdit;
    tbvDTPRVENTREGA: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    tbvQTPRODUCAO: TcxGridDBColumn;
    btnimprimir: TdxBarButton;
    actimprimir: TAction;
    pumimprimir: TdxBarPopupMenu;
    tbvCDEMPRESA: TcxGridDBColumn;
    tbvNUCOR: TcxGridDBColumn;
    lblcdfuncionariosolicitante: TLabel;
    tbvNMFUNCIONARIOSOLICITANTE: TcxGridDBColumn;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    edtcdfuncionario: TcxButtonEdit;
    lblnmfuncionario: TLabel;
    edtcdsolicitante: TcxButtonEdit;
    lblnmsolicitante: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure edtcdcontaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpRequisicaoProducaoEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvDblClick(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdsolicitanteExit(Sender: TObject);
    procedure edtcdsolicitanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdsolicitantePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    q : tclassequery;
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarRequisicaoProducao:integer;

var
  frmLocalizarRequisicaoProducao: TfrmLocalizarRequisicaoProducao;

implementation

uses uDtmMain, ulocalizarproduto, ulocalizarFuncionario;

{$R *.DFM}

function LocalizarRequisicaoProducao:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_Localizar+_RequisicaoProducao) then
  begin
    frmLocalizarRequisicaoProducao := TfrmLocalizarRequisicaoProducao.Create(application);
  end;
  if frmLocalizarRequisicaoProducao.q.q.Active then
  begin
    frmLocalizarRequisicaoProducao.btnFindClick(frmLocalizarRequisicaoProducao.btnFind);
  end;
  frmLocalizarRequisicaoProducao.showmodal;
  if frmLocalizarRequisicaoProducao.ModalResult = mrok then
  begin
    result := frmLocalizarRequisicaoProducao.q.q.fieldbyname(_cdrequisicaoproducao).AsInteger;
  end;
end;

function TfrmLocalizarRequisicaoProducao.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where RequisicaoProducao.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarcodigo(cbxcdtpRequisicaoProducao.EditValue     , _RequisicaoProducao  , _cdtprequisicaoproducao  , result);
  sqlmontarcodigo(cbxcdstRequisicaoProducao.EditValue     , _RequisicaoProducao  , _cdstrequisicaoproducao  , result);
  sqlmontarcodigo(edtcdproduto.text                  , _itRequisicaoProducao, _cdproduto               , result);
  sqlmontarcodigo(edtcdfuncionario.text              , _RequisicaoProducao  , _cdfuncionario           , result);
  sqlmontarcodigo(edtcdsolicitante.text   , _RequisicaoProducao  , _cdfuncionariosolicitante, result);
  sqlmontardata  (edtdtemissaoi.text   , edtdtemissaof.text   , _RequisicaoProducao, _dtemissao             , result);
  sqlmontardata  (edtdtprventregai.text, edtdtprventregaf.text, _RequisicaoProducao, _dtprventrega          , result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarRequisicaoProducao.makesql:string;
begin
  result := 'SELECT RequisicaoProducao.CDEMPRESA'+
                  ',RequisicaoProducao.CDRequisicaoProducao'+
                  ',RequisicaoProducao.dtemissao'+
                  ',RequisicaoProducao.dtprventrega'+
                  ',RequisicaoProducao.qtitem'+
                  ',RequisicaoProducao.qtproducao'+
                  ',stRequisicaoProducao.nmstRequisicaoProducao'+
                  ',strequisicaoproducao.nucor'+
                  ',tpRequisicaoProducao.nmtpRequisicaoProducao'+
                  ',solicitante.nmfuncionario nmfuncionariosolicitante'+
                  ',funcionario.nmfuncionario '+
            'FROM RequisicaoProducao '+
            'left join stRequisicaoProducao on stRequisicaoProducao.cdstRequisicaoProducao=RequisicaoProducao.cdstRequisicaoProducao and stRequisicaoProducao.cdempresa=RequisicaoProducao.cdempresa '+
            'left join tpRequisicaoProducao on tpRequisicaoProducao.cdtpRequisicaoProducao=RequisicaoProducao.cdtpRequisicaoProducao and RequisicaoProducao.cdempresa=tpRequisicaoProducao.cdempresa '+
            'left join funcionario on funcionario.cdfuncionario=RequisicaoProducao.cdfuncionario and RequisicaoProducao.cdempresa=funcionario.cdempresa '+
            'left join funcionario solicitante on solicitante.cdfuncionario=RequisicaoProducao.cdfuncionariosolicitante and RequisicaoProducao.cdempresa=solicitante.cdempresa '+
            'left join itRequisicaoProducao on itRequisicaoProducao.cdRequisicaoProducao=RequisicaoProducao.cdRequisicaoProducao and RequisicaoProducao.cdempresa=itRequisicaoProducao.cdempresa ' +
            sqlwhere +' '+
            'group by RequisicaoProducao.CDEMPRESA'+
                   ',RequisicaoProducao.CDRequisicaoProducao'+
                    ',RequisicaoProducao.dtemissao'+
                    ',RequisicaoProducao.dtprventrega'+
                    ',RequisicaoProducao.qtitem'+
                    ',RequisicaoProducao.qtproducao'+
                    ',stRequisicaoProducao.nmstRequisicaoProducao'+
                    ',strequisicaoproducao.nucor'+
                    ',tpRequisicaoProducao.nmtpRequisicaoProducao'+
                    ',solicitante.nmfuncionario'+
                    ',funcionario.nmfuncionario';
end;

procedure TfrmLocalizarRequisicaoProducao.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarRequisicaoProducao.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarRequisicaoProducao.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarRequisicaoProducao.edtcdcontaKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarRequisicaoProducao.edtcdfuncionarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario);
  colorexit(sender);
end;

procedure TfrmLocalizarRequisicaoProducao.edtcdfuncionarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarRequisicaoProducao.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfuncionarioPropertiesButtonClick(edtcdfuncionario, lblnmfuncionario);
end;

procedure TfrmLocalizarRequisicaoProducao.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarRequisicaoProducao.edtcdprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarRequisicaoProducao.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmLocalizarRequisicaoProducao.edtcdsolicitanteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario, _solicitante);
  colorexit(sender);
end;

procedure TfrmLocalizarRequisicaoProducao.edtcdsolicitanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdsolicitantePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarRequisicaoProducao.edtcdsolicitantePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfuncionarioPropertiesButtonClick(edtcdsolicitante, lblnmsolicitante);
end;

procedure TfrmLocalizarRequisicaoProducao.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarRequisicaoProducao.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarRequisicaoProducao.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  TRegistro.SetQueryLocalizar(q, dts, tbv);
  AbrirTabelas;
  GeraMenuRelatorio ('', btnimprimir, 59, tbv, q.q, _requisicaoproducao);
end;

procedure TfrmLocalizarRequisicaoProducao.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarRequisicaoProducao.AbrirTabelas;
begin
  cbxcdtpRequisicaoProducao.Properties.ListSource := abrir_tabela(_tpRequisicaoProducao);
  cbxcdstRequisicaoProducao.Properties.ListSource := abrir_tabela(_stRequisicaoProducao);
end;

procedure TfrmLocalizarRequisicaoProducao.cbxcdtpRequisicaoProducaoEnter(Sender: TObject);
begin
  abrir_tabela(_tpRequisicaoProducao);
  colorenter(sender);
end;

procedure TfrmLocalizarRequisicaoProducao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarRequisicaoProducao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarRequisicaoProducao.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarRequisicaoProducao.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarRequisicaoProducao.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarRequisicaoProducao.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarRequisicaoProducao.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarRequisicaoProducao.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarRequisicaoProducao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarRequisicaoProducao.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarRequisicaoProducao.actimprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmLocalizarRequisicaoProducao.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCOR;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
    if ACanvas.Font.Color = clred then
    begin
      ACanvas.Font.Style := [fsStrikeOut, fsBold]
    end
    else if ACanvas.Font.Color <> clblack then
    begin
      ACanvas.Font.Style := [fsBold];
    end;
  end;
end;

end.
