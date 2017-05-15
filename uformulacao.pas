unit uformulacao;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, dialogs, graphics, Mask, Buttons, Controls, ToolWin, ExtCtrls, types,
  sysutils, StdCtrls, ComCtrls, Spin, Classes, ActnList, Menus,
  Grids, sqlexpr,
  uexportarexcel, udatahora, uregistro, urotinas, ulocalizar, uconstantes,
  unumero, ustrings, ulocalizarcliente,
  classeproduto, classeconsiste, classeexecutasql, classeusuario, classegerar,
  classeretornasql, classecontrato, classeregistro, classecliente, classeregistrainformacao, classeform,
  classeaplicacao,
  cxLookAndFeelPainters, cxControls,
  cxContainer, cxEdit, cxGroupBox, cxButtons, dxBar, cxClasses,
  cxGraphics, cxLookAndFeels, cxLabel, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSpinEdit, cxDBEdit,
  cxMaskEdit, cxCalendar, cxTextEdit, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTimeEdit, DBCtrls, cxButtonEdit, FMTBcd, DBClient, Provider, cxCalc,
  cxCurrencyEdit, cxPCdxBarPopupMenu, cxSplitter, cxNavigator,
  uMenuRelatorio, dxBarBuiltInMenu;

type
  TfrmFormulacao = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actPrimeiro: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnNovo: TdxBarLargeButton;
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtncancelar: TdxBarLargeButton;
    dxbrlrgbtnexcluir: TdxBarLargeButton;
    dxbrsprtr1: TdxBarSeparator;
    dxbrlrgbtnprimeiro: TdxBarLargeButton;
    dxbrlrgbtnanterior: TdxBarLargeButton;
    dxbrlrgbtnproximo: TdxBarLargeButton;
    dxbrlrgbtnultimo: TdxBarLargeButton;
    dxbrsprtr2: TdxBarSeparator;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    Panel1: TPanel;
    Label1: TLabel;
    pnl: TcxLabel;
    Label5: TLabel;
    edtnome: TcxDBTextEdit;
    edtcodigo: TcxTextEdit;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    sdsCDFORMULACAO: TIntegerField;
    sdsCDREGIAOAPLICACAO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsNMFORMULACAO: TStringField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsDSFORMULACAO: TStringField;
    sdsQTPESO: TFloatField;
    cdsCDFORMULACAO: TIntegerField;
    cdsCDREGIAOAPLICACAO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsNMFORMULACAO: TStringField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsDSFORMULACAO: TStringField;
    cdsQTPESO: TFloatField;
    sdsdetailCDITFORMULACAO: TIntegerField;
    sdsdetailCDFORMULACAO: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailQTITEM: TFloatField;
    sdsdetailPRPESO: TFloatField;
    sdsdetailPRERRO: TFloatField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDITFORMULACAO: TIntegerField;
    cdsdetailCDFORMULACAO: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailQTITEM: TFloatField;
    cdsdetailPRPESO: TFloatField;
    cdsdetailPRERRO: TFloatField;
    sdsdetailNMPRODUTO: TStringField;
    cdsdetailNMPRODUTO: TStringField;
    lbl1: TLabel;
    edtdsformulacao: TcxDBTextEdit;
    cbxcdregiaoaplicacao: TcxDBLookupComboBox;
    lblregiaoaplicacao: TLabel;
    edtqtpeso: TcxDBCalcEdit;
    lblqtpeso: TLabel;
    sdssubstituto: TSQLDataSet;
    cdssubstituto: TClientDataSet;
    dtssubstituto: TDataSource;
    dts2: TDataSource;
    sdssubstitutoCDITFORMULACAOSUBSTITUTO: TIntegerField;
    sdssubstitutoCDITFORMULACAO: TIntegerField;
    sdssubstitutoCDPRODUTO: TIntegerField;
    sdssubstitutoCDUSUARIOI: TIntegerField;
    sdssubstitutoCDUSUARIOA: TIntegerField;
    sdssubstitutoCDCOMPUTADORI: TIntegerField;
    sdssubstitutoCDCOMPUTADORA: TIntegerField;
    sdssubstitutoTSINCLUSAO: TSQLTimeStampField;
    sdssubstitutoTSALTERACAO: TSQLTimeStampField;
    sdssubstitutoCDDIGITADO: TStringField;
    sdssubstitutoNMPRODUTO: TStringField;
    cdsdetailsdssubstituto: TDataSetField;
    cdssubstitutoCDITFORMULACAOSUBSTITUTO: TIntegerField;
    cdssubstitutoCDITFORMULACAO: TIntegerField;
    cdssubstitutoCDPRODUTO: TIntegerField;
    cdssubstitutoCDUSUARIOI: TIntegerField;
    cdssubstitutoCDUSUARIOA: TIntegerField;
    cdssubstitutoCDCOMPUTADORI: TIntegerField;
    cdssubstitutoCDCOMPUTADORA: TIntegerField;
    cdssubstitutoTSINCLUSAO: TSQLTimeStampField;
    cdssubstitutoTSALTERACAO: TSQLTimeStampField;
    cdssubstitutoCDDIGITADO: TStringField;
    cdssubstitutoNMPRODUTO: TStringField;
    sdsQTMISTURA: TFloatField;
    cdsQTMISTURA: TFloatField;
    edtqtmistura: TcxDBCalcEdit;
    Label2: TLabel;
    sdsdetailNMUNIDADE: TStringField;
    cdsdetailNMUNIDADE: TStringField;
    sdssubstitutoNMUNIDADE: TStringField;
    cdssubstitutoNMUNIDADE: TStringField;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    lblnmcliente: TDBText;
    edtCDCLIENTE: TcxDBButtonEdit;
    lblcdcliente: TLabel;
    sdsNMCLIENTE: TStringField;
    cdsNMCLIENTE: TStringField;
    sdsCDSTFORMULACAO: TIntegerField;
    cdsCDSTFORMULACAO: TIntegerField;
    cbxcdstformulacao: TcxDBLookupComboBox;
    Label14: TLabel;
    pgc: TcxPageControl;
    tbscadastro: TcxTabSheet;
    tbsproduto: TcxTabSheet;
    grdsubstituto: TcxGrid;
    tbvsubstituto: TcxGridDBTableView;
    tbvsubstitutoCDDIGITADO: TcxGridDBColumn;
    tbvsubstitutoNMPRODUTO: TcxGridDBColumn;
    tbvsubstitutoNMUNIDADE: TcxGridDBColumn;
    grdsubstitutoLevel1: TcxGridLevel;
    spl1: TcxSplitter;
    cxLabel1: TcxLabel;
    grddetail: TcxGrid;
    tbvdetail: TcxGridDBTableView;
    tbvdetailCDDIGITADO: TcxGridDBColumn;
    tbvdetailNMPRODUTO: TcxGridDBColumn;
    tbvdetailNMUNIDADE: TcxGridDBColumn;
    tbvdetailPRPESO: TcxGridDBColumn;
    tbvdetailQTITEM: TcxGridDBColumn;
    tbvdetailPRERRO: TcxGridDBColumn;
    grddetailLvl: TcxGridLevel;
    cxLabel2: TcxLabel;
    sdsproduto: TSQLDataSet;
    cdsproduto: TClientDataSet;
    dtsproduto: TDataSource;
    grdproduto: TcxGrid;
    tbvproduto: TcxGridDBTableView;
    tbvprodutocdproduto: TcxGridDBColumn;
    tbvprodutocdalternativo: TcxGridDBColumn;
    tbvprodutonmproduto: TcxGridDBColumn;
    tbvprodutonmunidade: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cdssdsproduto: TDataSetField;
    Actabrirproduto: TAction;
    actabrirsubstituta: TAction;
    actabrirmateriaprima: TAction;
    actabrircliente: TAction;
    sdsprodutoCDFORMULACAO: TIntegerField;
    sdsprodutoCDUSUARIOI: TIntegerField;
    sdsprodutoCDUSUARIOA: TIntegerField;
    sdsprodutoCDCOMPUTADORI: TIntegerField;
    sdsprodutoCDCOMPUTADORA: TIntegerField;
    sdsprodutoCDTPEQUIPAMENTO: TIntegerField;
    sdsprodutoTSINCLUSAO: TSQLTimeStampField;
    sdsprodutoTSALTERACAO: TSQLTimeStampField;
    sdsprodutoNMPRODUTO: TStringField;
    sdsprodutoCDALTERNATIVO: TStringField;
    sdsprodutoNMUNIDADE: TStringField;
    sdsprodutoCDPRODUTO: TIntegerField;
    cdsprodutoCDPRODUTO: TIntegerField;
    cdsprodutoCDFORMULACAO: TIntegerField;
    cdsprodutoCDUSUARIOI: TIntegerField;
    cdsprodutoCDUSUARIOA: TIntegerField;
    cdsprodutoCDCOMPUTADORI: TIntegerField;
    cdsprodutoCDCOMPUTADORA: TIntegerField;
    cdsprodutoCDTPEQUIPAMENTO: TIntegerField;
    cdsprodutoTSINCLUSAO: TSQLTimeStampField;
    cdsprodutoTSALTERACAO: TSQLTimeStampField;
    cdsprodutoNMPRODUTO: TStringField;
    cdsprodutoCDALTERNATIVO: TStringField;
    cdsprodutoNMUNIDADE: TStringField;
    dxBarLargeButton1: TdxBarLargeButton;
    actcopiar: TAction;
    lbl2: TLabel;
    lbl3: TLabel;
    sdsDTREVISAO: TDateField;
    sdsNUREVISAO: TStringField;
    cdsDTREVISAO: TDateField;
    cdsNUREVISAO: TStringField;
    edtdtrevisao: TcxDBDateEdit;
    edtnurevisao: TcxDBTextEdit;
    sdsdetailNUSEQUENCIA: TIntegerField;
    cdsdetailNUSEQUENCIA: TIntegerField;
    tbvdetailNUSEQUENCIA: TcxGridDBColumn;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdssubstitutoCDEMPRESA: TLargeintField;
    sdsprodutoCDEMPRESA: TLargeintField;
    sdsprodutoBOQUOCIENTE: TStringField;
    sdsprodutoBOMETODOPROCESSO: TStringField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdssubstitutoCDEMPRESA: TLargeintField;
    cdsprodutoCDEMPRESA: TLargeintField;
    cdsprodutoBOQUOCIENTE: TStringField;
    cdsprodutoBOMETODOPROCESSO: TStringField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dtsStateChange(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure actfecharExecute(Sender: TObject);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure tbvdetailKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grddetailtbvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdssubstitutoBeforePost(DataSet: TDataSet);
    procedure cdssubstitutoNewRecord(DataSet: TDataSet);
    procedure grdsubstitutoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdssubstitutoCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailPRPESOValidate(Sender: TField);
    procedure cdsdetailQTITEMValidate(Sender: TField);
    procedure actImprimirExecute(Sender: TObject);
    procedure edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
    procedure edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure ActabrirprodutoExecute(Sender: TObject);
    procedure actabrirsubstitutaExecute(Sender: TObject);
    procedure actabrirmateriaprimaExecute(Sender: TObject);
    procedure tbvprodutoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvdetailCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvsubstitutoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure lblnmclienteDblClick(Sender: TObject);
    procedure tbvprodutocdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsprodutoBeforePost(DataSet: TDataSet);
    procedure cdsprodutoCDPRODUTOValidate(Sender: TField);
    procedure actcopiarExecute(Sender: TObject);
    procedure cdsQTPESOValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure cdsCDSTFORMULACAOValidate(Sender: TField);
  private      { Private declarations }
    produto : TProduto;
    cliente : TCliente;
    cdstformulacao : string;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

const
  tbl      = 'formulacao';
  exibe    = 'Formulação';
  artigoI  = 'a';
var
  frmFormulacao: TfrmFormulacao;

implementation

uses uDtmMain, uMain, classeempresa, classecopiarregistro;

{$R *.DFM}

function TfrmFormulacao.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmFormulacao.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmFormulacao.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmFormulacao.actabrirmateriaprimaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmFormulacao.ActabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsproduto);
end;

procedure TfrmFormulacao.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
  cdstformulacao := '';
end;

procedure TfrmFormulacao.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmFormulacao.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmFormulacao.edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmFormulacao.edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtCDCLIENTEPropertiesButtonClick(self, cds);
end;

procedure TfrmFormulacao.edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblnmcliente.Hint := cliente.hint_rzsocial;
  end;
end;

procedure TfrmFormulacao.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmFormulacao.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmFormulacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmFormulacao.FormDestroy(Sender: TObject);
begin
  produto.free;
  cliente.free;
  registro.Destroy;
end;

procedure TfrmFormulacao.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  cdstformulacao := cdsCDSTFORMULACAO.AsString;
end;

procedure TfrmFormulacao.actSalvarExecute(Sender: TObject);
begin
  registro.salvar;
  if (cdstformulacao <> '') and (cdstformulacao <> cdsCDSTFORMULACAO.AsString) and (cdsCDSTFORMULACAO.AsString = _2) then
  begin
    ExecutaSQL('delete from produtoformulacao where cdempresa='+cds.FieldByName(_cdempresa).asstring+' and cdformulacao='+cdscdformulacao.AsString);
  end;
end;

procedure TfrmFormulacao.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmFormulacao.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmFormulacao.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmFormulacao.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure TfrmFormulacao.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmFormulacao.actabrirsubstitutaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdssubstituto);
end;

procedure TfrmFormulacao.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmFormulacao.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmFormulacao.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmFormulacao.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmFormulacao.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmFormulacao.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmFormulacao.cdsNewRecord(DataSet: TDataSet);
begin
  cdscdstformulacao.AsInteger := qregistro.Codigo_status_novo(_formulacao);
  registro.NewRecord;
end;

procedure TfrmFormulacao.cdsprodutoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsproduto);
end;

procedure TfrmFormulacao.cdsprodutoCDPRODUTOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  if (produto.cdproduto <> 0) and (cdsprodutoCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsprodutoCDPRODUTO.AsInteger    := produto.cdproduto;
  end;
  cdsprodutoNMPRODUTO.asstring     := produto.nmproduto;
  cdsprodutoNMUNIDADE.asstring     := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  cdsprodutocdalternativo.asstring := produto.cdalternativo;
end;

procedure TfrmFormulacao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmFormulacao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmFormulacao.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmFormulacao.tbvprodutocdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditcdProduto(cdsproduto, _cdproduto);
end;

procedure TfrmFormulacao.tbvprodutoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdproduto  then
  begin
    actabrirproduto.onExecute(actabrirproduto)
  end;
end;

procedure TfrmFormulacao.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure TfrmFormulacao.cdsCDCLIENTEValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMCLIENTE.Clear;
    Exit;
  end;
  if not cliente.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cliente.stcliente.Select(cliente.cdstcliente);
  if cliente.stcliente.bogerarinfo <> _s then
  begin
    messagedlg('Cliente está no status '+cliente.stcliente.nmstcliente+#13'que não permite ser inserido na '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMCLIENTE.AsString := cliente.nmcliente;
end;

procedure TfrmFormulacao.cdsCDSTFORMULACAOValidate(Sender: TField);
var
  produtoformulacaolist : TprodutoformulacaoList;
begin
  if sender.AsInteger = 2 then
  begin
    produtoformulacaolist := TprodutoformulacaoList.Create;
    try
      produtoformulacaolist.Ler(_cdformulacao+'='+sender.DataSet.FieldByName(_cdformulacao).AsString);
      if produtoformulacaolist.Count > 0 then
      begin
        MessageDlg('Formulação não pode ser cancelada porque faz parte do método processo do(s) produto(s):'+#13+produtoformulacaolist.ListaProduto, mtInformation, [mbOK], 0);
        Abort;
      end;
    finally
      FreeAndNil(produtoformulacaolist);
    end;
  end;
end;

procedure TfrmFormulacao.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmFormulacao.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmFormulacao.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITFORMULACAO.AsString := GerarCodigo(_itformulacao);
  cdsdetailNUSEQUENCIA.AsInteger   := cdsdetail.RecordCount + 1;
end;

procedure TfrmFormulacao.cdsdetailPRPESOValidate(Sender: TField);
begin
  cdsdetailQTITEM.OnValidate := nil;
  cdsdetailqtitem.AsFloat    :=  cdsQTPESO.AsFloat * cdsdetailPRPESO.asfloat / 100;
  cdsdetailQTITEM.OnValidate := cdsdetailQTITEMValidate;
end;

procedure TfrmFormulacao.cdsdetailQTITEMValidate(Sender: TField);
begin
  cdsdetailPRPESO.OnValidate := nil;
  cdsdetailPRPESO.asfloat    :=  cdsdetailqtitem.AsFloat / cdsQTPESO.AsFloat *  100;
  cdsdetailPRPESO.OnValidate := cdsdetailPRPESOValidate;
end;

procedure TfrmFormulacao.FormCreate(Sender: TObject);
begin
  cdstformulacao := '';
  cbxcdregiaoaplicacao.Properties.ListSource := abrir_tabela(_regiao+_aplicacao);
  cbxcdSTFORMULACAO.Properties.ListSource    := abrir_tabela(_st+_formulacao);
  produto  := TProduto.create;
  cliente  := TCliente.create;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 54, cds, _formulacao);
end;

procedure TfrmFormulacao.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if cdsdetailQTITEM.IsNull then
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [_Quantidade]), mtinformation, [mbok], 0);
    cdsdetailQTITEM.FocusControl;
    abort;
  end;
  registro.set_update(cdsdetail);
end;

procedure TfrmFormulacao.tbvdetailKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmFormulacao.grddetailtbvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdsdetail, false);
end;

procedure TfrmFormulacao.tbvdetailCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _CDPRODUTO then
  begin
    actabrirmateriaprima.onExecute(actabrirmateriaprima)
  end;
end;

procedure TfrmFormulacao.cdsdetailCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  if (produto.cdproduto <> 0) and (cdsdetailCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsdetailCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  cdsdetailNMPRODUTO.asstring := produto.nmproduto;
  cdsdetailNMUNIDADE.asstring := qregistro.nomedocodigo(_unidade, produto.cdunidade);
end;

procedure TfrmFormulacao.cdssubstitutoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdssubstituto);
end;

procedure TfrmFormulacao.cdssubstitutoNewRecord(DataSet: TDataSet);
begin
  cdssubstitutoCDITFORMULACAOSUBSTITUTO.AsString := GerarCodigo(_itformulacao+_substituto);
end;

procedure TfrmFormulacao.grdsubstitutoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdssubstituto, false);
end;

procedure TfrmFormulacao.tbvsubstitutoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _CDDIGITADO  then
  begin
    actabrirsubstituta.onExecute(actabrirsubstituta)
  end;
end;

procedure TfrmFormulacao.lblnmclienteDblClick(Sender: TObject);
begin
  actAbrircliente.onExecute(actAbrircliente);
end;

procedure TfrmFormulacao.cdssubstitutoCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  if (produto.cdproduto <> 0) and (cdssubstitutoCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdssubstitutoCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  cdssubstitutoNMPRODUTO.asstring := produto.nmproduto;
  cdssubstitutoNMUNIDADE.asstring := qregistro.nomedocodigo(_unidade, produto.cdunidade);
end;

procedure TfrmFormulacao.cdsQTPESOValidate(Sender: TField);
begin
  cdsdetail.DisableControls;
  try
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      cdsdetail.Edit;
      cdsdetailPRPESOValidate(cdsdetailPRPESO);
      cdsdetail.Post;
      cdsdetail.Next;
    end;
    cdsdetail.First;
  finally
    cdsdetail.EnableControls;
  end;
end;

end.
