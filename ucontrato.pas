unit ucontrato;

interface

uses
  System.Actions, System.UITypes,
  forms, Windows, dialogs, graphics, Mask, Buttons, Controls, ToolWin, ExtCtrls, types,
  sysutils, StdCtrls, ComCtrls, Spin, Classes, ActnList, Menus, math,
  FMTBcd, DBClient, Provider, DBCtrls, DB, Grids, sqlexpr,
  uexportarexcel, udatahora, uregistroib, uregistro, urotinas,
  udbmemo, ulocalizar, uanotacao, uconstantes, unumero, ustrings,
  uMenuRelatorio,
  ulocalizarcliente,
  classeproduto, classeconsiste, classeexecutasql, classeusuario,
  classegerar, classeretornasql, classecontrato, classeregistro, classecliente,
  classeregistrainformacao, classeform,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxGroupBox, cxButtons,
  dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit, cxDBEdit, cxMaskEdit, cxCalendar, cxTextEdit,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTimeEdit, cxButtonEdit, cxCalc, cxCurrencyEdit, cxPCdxBarPopupMenu,
  cxCheckBox, cxNavigator, dxBarBuiltInMenu, cxSplitter;

type
  TfrmContrato = class(TForm)
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
    lbldtinicio: TLabel;
    lbldtfinal: TLabel;
    Label4: TLabel;
    pnl: TcxLabel;
    Label5: TLabel;
    pgc: TcxPageControl;
    tbsProduto: TcxTabSheet;
    edtnome: TcxDBTextEdit;
    edtdtinicio: TcxDBDateEdit;
    edtdtfinal: TcxDBDateEdit;
    cbxcdstcontrato: TcxDBLookupComboBox;
    edtcodigo: TcxTextEdit;
    sds: TSQLDataSet;
    sdsitcontrato: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    sdsCDCONTRATO: TIntegerField;
    sdsCDSTCONTRATO: TIntegerField;
    sdsNMCONTRATO: TStringField;
    sdsDTINICIO: TDateField;
    sdsDTFINAL: TDateField;
    sdsNUDIAPREVENTIVA: TIntegerField;
    sdsHRATENDIMENTO: TTimeField;
    sdsHRRESOLUCAO: TTimeField;
    sdsVLCONTRATO: TFMTBCDField;
    sdsNUPARCELAS: TIntegerField;
    sdsVLPARCELA: TFMTBCDField;
    sdsPRCOMISSAO: TFloatField;
    sdsCDREPRESENTANTE: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDTREFINANCIAMENTO: TDateField;
    sdsDTPAGAMENTO: TDateField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDCONTRATO: TIntegerField;
    cdsCDSTCONTRATO: TIntegerField;
    cdsNMCONTRATO: TStringField;
    cdsDTINICIO: TDateField;
    cdsDTFINAL: TDateField;
    cdsNUDIAPREVENTIVA: TIntegerField;
    cdsHRATENDIMENTO: TTimeField;
    cdsHRRESOLUCAO: TTimeField;
    cdsVLCONTRATO: TFMTBCDField;
    cdsNUPARCELAS: TIntegerField;
    cdsVLPARCELA: TFMTBCDField;
    cdsPRCOMISSAO: TFloatField;
    cdsCDREPRESENTANTE: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDTREFINANCIAMENTO: TDateField;
    cdsDTPAGAMENTO: TDateField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    dts1: TDataSource;
    sdsitcontratoCDITCONTRATO: TIntegerField;
    sdsitcontratoCDPRODUTO: TIntegerField;
    sdsitcontratoCDUSUARIOI: TIntegerField;
    sdsitcontratoCDUSUARIOA: TIntegerField;
    sdsitcontratoCDCOMPUTADORI: TIntegerField;
    sdsitcontratoCDCOMPUTADORA: TIntegerField;
    sdsitcontratoCDCONTRATO: TIntegerField;
    sdsitcontratoTSINCLUSAO: TSQLTimeStampField;
    sdsitcontratoTSALTERACAO: TSQLTimeStampField;
    sdsitcontratoCDDIGITADO: TStringField;
    sdsitcontratoQTITEM: TFloatField;
    sdsitcontratoVLUNITARIO: TFMTBCDField;
    sdsitcontratoVLTOTAL: TFMTBCDField;
    cdsitcontrato: TClientDataSet;
    cdssdsitcontrato: TDataSetField;
    cdsitcontratoCDITCONTRATO: TIntegerField;
    cdsitcontratoCDPRODUTO: TIntegerField;
    cdsitcontratoCDUSUARIOI: TIntegerField;
    cdsitcontratoCDUSUARIOA: TIntegerField;
    cdsitcontratoCDCOMPUTADORI: TIntegerField;
    cdsitcontratoCDCOMPUTADORA: TIntegerField;
    cdsitcontratoCDCONTRATO: TIntegerField;
    cdsitcontratoTSINCLUSAO: TSQLTimeStampField;
    cdsitcontratoTSALTERACAO: TSQLTimeStampField;
    cdsitcontratoCDDIGITADO: TStringField;
    cdsitcontratoQTITEM: TFloatField;
    cdsitcontratoVLUNITARIO: TFMTBCDField;
    cdsitcontratoVLTOTAL: TFMTBCDField;
    tbvitcontrato: TcxGridDBTableView;
    grditcontratoLevel1: TcxGridLevel;
    grditcontrato: TcxGrid;
    dtsitcontrato: TDataSource;
    tbvitcontratoCDDIGITADO: TcxGridDBColumn;
    tbvitcontratoQTITEM: TcxGridDBColumn;
    tbvitcontratoVLUNITARIO: TcxGridDBColumn;
    tbvitcontratoVLTOTAL: TcxGridDBColumn;
    sdsNMCLIENTE: TStringField;
    cdsNMCLIENTE: TStringField;
    tbsordserv: TcxTabSheet;
    Label6: TLabel;
    edtnudiapreventiva: TcxDBSpinEdit;
    lbltpcontrato: TLabel;
    cbxcdtpcontrato: TcxDBLookupComboBox;
    sdsCDTPCONTRATO: TIntegerField;
    cdsCDTPCONTRATO: TIntegerField;
    Label15: TLabel;
    edtHRATENDIMENTO: TcxDBTimeEdit;
    Label16: TLabel;
    edtHRRESOLUCAO: TcxDBTimeEdit;
    gbxcliente: TcxGroupBox;
    lblcdcliente: TLabel;
    lblnmcliente: TDBText;
    edtCDCLIENTE: TcxDBButtonEdit;
    lbldtemissao: TLabel;
    edtdtemissao: TcxDBDateEdit;
    sdsitcontratoNMPRODUTO: TStringField;
    cdsitcontratoNMPRODUTO: TStringField;
    tbvitcontratoNMPRODUTO: TcxGridDBColumn;
    sdsitcontratoVLEXCEDENTE: TFMTBCDField;
    cdsitcontratoVLEXCEDENTE: TFMTBCDField;
    tbvitcontratoVLEXCEDENTE: TcxGridDBColumn;
    sdsCDPERIODICIDADE: TIntegerField;
    sdsCDPRODUTO: TIntegerField;
    sdsCDPRODUTOEXCEDENTE: TIntegerField;
    cdsCDPERIODICIDADE: TIntegerField;
    cdsCDPRODUTO: TIntegerField;
    cdsCDPRODUTOEXCEDENTE: TIntegerField;
    sdsNMPRODUTO: TStringField;
    sdsNMPRODUTOEXCEDENTE: TStringField;
    cdsNMPRODUTO: TStringField;
    cdsNMPRODUTOEXCEDENTE: TStringField;
    sdsBOMENSALIDADE: TStringField;
    cdsBOMENSALIDADE: TStringField;
    actabrirtpcontrato: TAction;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    actitcontratopaciente: TAction;
    dxBarButton3: TdxBarButton;
    tbsNegociacao: TcxTabSheet;
    tbvnegociacao: TcxGridDBTableView;
    glvnegociacao: TcxGridLevel;
    grdnegociacao: TcxGrid;
    sdsparcela: TSQLDataSet;
    cdsparcela: TClientDataSet;
    dtsparcela: TDataSource;
    sdsnegociacao: TSQLDataSet;
    cdsnegociacao: TClientDataSet;
    dtsnegociacao: TDataSource;
    sdsparcelaCDITCONTRATOPARCELA: TIntegerField;
    sdsparcelaCDUSUARIOI: TIntegerField;
    sdsparcelaCDUSUARIOA: TIntegerField;
    sdsparcelaCDCOMPUTADORI: TIntegerField;
    sdsparcelaCDCOMPUTADORA: TIntegerField;
    sdsparcelaCDITCONTRATONEGOCIACAO: TIntegerField;
    sdsparcelaTSINCLUSAO: TSQLTimeStampField;
    sdsparcelaTSALTERACAO: TSQLTimeStampField;
    sdsparcelaNUPARCELA: TIntegerField;
    sdsparcelaDTPARCELA: TDateField;
    sdsparcelaVLSALDO: TFMTBCDField;
    sdsparcelaVLJUROS: TFMTBCDField;
    sdsparcelaVLJUROSADICIONAL: TFMTBCDField;
    sdsparcelaVLSALDOCORRIGIDO: TFMTBCDField;
    sdsparcelaVLAMORTIZACAO: TFMTBCDField;
    sdsparcelaVLSALDODEVEDOR: TFMTBCDField;
    sdsnegociacaoCDITCONTRATONEGOCIACAO: TIntegerField;
    sdsnegociacaoCDCONTRATO: TIntegerField;
    sdsnegociacaoCDUSUARIOI: TIntegerField;
    sdsnegociacaoCDUSUARIOA: TIntegerField;
    sdsnegociacaoCDCOMPUTADORI: TIntegerField;
    sdsnegociacaoCDCOMPUTADORA: TIntegerField;
    sdsnegociacaoCDTPCORRECAO: TIntegerField;
    sdsnegociacaoCDPERIODICIDADE: TIntegerField;
    sdsnegociacaoTSINCLUSAO: TSQLTimeStampField;
    sdsnegociacaoTSALTERACAO: TSQLTimeStampField;
    sdsnegociacaoVLSALDO: TFMTBCDField;
    sdsnegociacaoNUDIA: TIntegerField;
    sdsnegociacaoVLPARCELA: TFMTBCDField;
    sdsnegociacaoPRJURO: TFloatField;
    sdsnegociacaoDTEMISSAO: TDateField;
    sdsnegociacaoNMITCONTRATONEGOCIACAO: TStringField;
    cdssdsnegociacao: TDataSetField;
    cdsparcelaCDITCONTRATOPARCELA: TIntegerField;
    cdsparcelaCDUSUARIOI: TIntegerField;
    cdsparcelaCDUSUARIOA: TIntegerField;
    cdsparcelaCDCOMPUTADORI: TIntegerField;
    cdsparcelaCDCOMPUTADORA: TIntegerField;
    cdsparcelaCDITCONTRATONEGOCIACAO: TIntegerField;
    cdsparcelaTSINCLUSAO: TSQLTimeStampField;
    cdsparcelaTSALTERACAO: TSQLTimeStampField;
    cdsparcelaNUPARCELA: TIntegerField;
    cdsparcelaDTPARCELA: TDateField;
    cdsparcelaVLSALDO: TFMTBCDField;
    cdsparcelaVLJUROS: TFMTBCDField;
    cdsparcelaVLJUROSADICIONAL: TFMTBCDField;
    cdsparcelaVLSALDOCORRIGIDO: TFMTBCDField;
    cdsparcelaVLAMORTIZACAO: TFMTBCDField;
    cdsparcelaVLSALDODEVEDOR: TFMTBCDField;
    cdsnegociacaoCDITCONTRATONEGOCIACAO: TIntegerField;
    cdsnegociacaoCDCONTRATO: TIntegerField;
    cdsnegociacaoCDUSUARIOI: TIntegerField;
    cdsnegociacaoCDUSUARIOA: TIntegerField;
    cdsnegociacaoCDCOMPUTADORI: TIntegerField;
    cdsnegociacaoCDCOMPUTADORA: TIntegerField;
    cdsnegociacaoCDTPCORRECAO: TIntegerField;
    cdsnegociacaoCDPERIODICIDADE: TIntegerField;
    cdsnegociacaoTSINCLUSAO: TSQLTimeStampField;
    cdsnegociacaoTSALTERACAO: TSQLTimeStampField;
    cdsnegociacaoVLSALDO: TFMTBCDField;
    cdsnegociacaoNUDIA: TIntegerField;
    cdsnegociacaoVLPARCELA: TFMTBCDField;
    cdsnegociacaoPRJURO: TFloatField;
    cdsnegociacaoDTEMISSAO: TDateField;
    cdsnegociacaoNMITCONTRATONEGOCIACAO: TStringField;
    tbvnegociacaoCDTPCORRECAO: TcxGridDBColumn;
    tbvnegociacaoCDPERIODICIDADE: TcxGridDBColumn;
    tbvnegociacaoVLSALDO: TcxGridDBColumn;
    tbvnegociacaoNUDIA: TcxGridDBColumn;
    tbvnegociacaoVLPARCELA: TcxGridDBColumn;
    tbvnegociacaoPRJURO: TcxGridDBColumn;
    tbvnegociacaoDTEMISSAO: TcxGridDBColumn;
    tbvnegociacaoNMITCONTRATONEGOCIACAO: TcxGridDBColumn;
    actnegociacao: TAction;
    dxBarButton1: TdxBarButton;
    gbxvalores: TcxGroupBox;
    lblvlcontrato: TLabel;
    lbl2: TLabel;
    lblcdprodutoexcedente: TLabel;
    txtnmproduto: TDBText;
    txtnmprodutoexcedente: TDBText;
    edtvlcontrato: TcxDBCalcEdit;
    edtcdproduto: TcxDBButtonEdit;
    edtcdprodutoexcedente: TcxDBButtonEdit;
    ckbbomensalidade: TcxDBCheckBox;
    grdparcela: TcxGrid;
    tbvparcela: TcxGridDBTableView;
    tbvparcelaNUPARCELA: TcxGridDBColumn;
    tbvparcelaDTPARCELA: TcxGridDBColumn;
    tbvparcelaVLSALDO: TcxGridDBColumn;
    tbvparcelaVLJUROS: TcxGridDBColumn;
    tbvparcelaVLJUROSADICIONAL: TcxGridDBColumn;
    tbvparcelaVLSALDOCORRIGIDO: TcxGridDBColumn;
    tbvparcelaVLAMORTIZACAO: TcxGridDBColumn;
    tbvparcelaVLSALDODEVEDOR: TcxGridDBColumn;
    glvparcela: TcxGridLevel;
    spl1: TcxSplitter;
    cxLabel1: TcxLabel;
    dts2: TDataSource;
    cdsnegociacaosdsparcela: TDataSetField;
    sdsparcelaVLPARCELA: TFMTBCDField;
    cdsparcelaVLPARCELA: TFMTBCDField;
    tbvparcelaVLPARCELA: TcxGridDBColumn;
    sdsnegociacaoNUPARCELAS: TIntegerField;
    cdsnegociacaoNUPARCELAS: TIntegerField;
    tbvnegociacaoNUPARCELAS: TcxGridDBColumn;
    sdsparcelaPRCORRECAO: TFloatField;
    cdsparcelaPRCORRECAO: TFloatField;
    tbvparcelaPRCORRECAO: TcxGridDBColumn;
    tbvparcelaVLSALDODEVEDORREAJUSTADO: TcxGridDBColumn;
    tbvparcelaVLREAJUSTE: TcxGridDBColumn;
    sdsparcelaVLSALDODEVEDORREAJUSTADO: TFMTBCDField;
    sdsparcelaVLREAJUSTE: TFMTBCDField;
    cdsparcelaVLSALDODEVEDORREAJUSTADO: TFMTBCDField;
    cdsparcelaVLREAJUSTE: TFMTBCDField;
    tbvnegociacaoDTTERMINO: TcxGridDBColumn;
    tbvnegociacaoBOATIVO: TcxGridDBColumn;
    sdsnegociacaoDTTERMINO: TDateField;
    cdsnegociacaoDTTERMINO: TDateField;
    sdsnegociacaoBOATIVO: TStringField;
    cdsnegociacaoBOATIVO: TStringField;
    actcalculoprestacao: TAction;
    dxBarButton2: TdxBarButton;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsCDCONDPAGTO: TIntegerField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsCDCONDPAGTO: TIntegerField;
    sdsitcontratoCDEMPRESA: TLargeintField;
    cdsitcontratoCDEMPRESA: TLargeintField;
    sdsnegociacaoCDEMPRESA: TLargeintField;
    sdsnegociacaoVLINTERMEDIARIA: TFMTBCDField;
    sdsparcelaCDEMPRESA: TLargeintField;
    sdsparcelaCDITTPCORRECAO: TIntegerField;
    cdsnegociacaoCDEMPRESA: TLargeintField;
    cdsnegociacaoVLINTERMEDIARIA: TFMTBCDField;
    cdsparcelaCDEMPRESA: TLargeintField;
    cdsparcelaCDITTPCORRECAO: TIntegerField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cdsitcontratoBeforePost(DataSet: TDataSet);
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
    procedure cdsCDTPCONTRATOValidate(Sender: TField);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure grditcontratoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitcontratoCDDIGITADOValidate(Sender: TField);
    procedure cdsitcontratoNewRecord(DataSet: TDataSet);
    procedure edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure setvalortotal(Sender: TField);
    procedure actfecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpcontratoEnter(Sender: TObject);
    procedure cbxcdstcontratoEnter(Sender: TObject);
    procedure cbxcdtpcontratoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoexcedenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoexcedentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDPRODUTOValidate(Sender: TField);
    procedure cdsCDPRODUTOEXCEDENTEValidate(Sender: TField);
    procedure actabrirtpcontratoExecute(Sender: TObject);
    procedure lbltpcontratoDblClick(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actopcoesExecute(Sender: TObject);
    procedure actitcontratopacienteExecute(Sender: TObject);
    procedure actnegociacaoExecute(Sender: TObject);
    procedure actcalculoprestacaoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    produto  : TProduto;
    contrato : TContrato;
    cliente  : TCliente;
    procedure setrecord(cdtp:integer);
    procedure abrirtabela;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

const
  tbl      = 'contrato';
  exibe    = 'Contrato';
  artigoI  = 'o';
var
  frmContrato: TfrmContrato;

implementation

uses uDtmMain,
  uMain,
  uProgressBar,
  ulocalizarproduto,
  classeempresa,
  udlgtabela, ucontratonegociacao, udlgCalculoPrestacao;

{$R *.DFM}

function TfrmContrato.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmContrato.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmContrato.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmContrato.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmContrato.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmContrato.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  contrato    := Tcontrato.create;
  cliente     := TCliente.create;
  produto     := tproduto.create;
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmContrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmContrato.FormDestroy(Sender: TObject);
begin
  produto.free;
  freeandnil(contrato);
  cliente.free;
  registro.Destroy;
end;

procedure TfrmContrato.cdsitcontratoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitcontrato);
end;

procedure TfrmContrato.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmContrato.actSalvarExecute(Sender: TObject);
begin
  registro.salvar;
end;

procedure TfrmContrato.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmContrato.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmContrato.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmContrato.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmContrato.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmContrato.actcalculoprestacaoExecute(Sender: TObject);
begin
  CalculoPrestacao;
end;

procedure TfrmContrato.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmContrato.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmContrato.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmContrato.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actnegociacao.Enabled := acteditar.Enabled;
  actcalculoprestacao.Enabled := acteditar.Enabled;
  actitcontratopaciente.Enabled := acteditar.Enabled;
end;

procedure TfrmContrato.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmContrato.setrecord(cdtp: integer);
begin
  if cdtp = 0 then
  begin
    exit;
  end;
  contrato.tpcontrato.Select(cdtp);
  actitcontratopaciente.Visible := contrato.tpcontrato.bopaciente = _s;
  tbsProduto.TabVisible         := contrato.tpcontrato.boproduto = _s;
  edtdtinicio.Visible           := contrato.tpcontrato.bodtiniciofinal = _s;
  edtdtfinal.Visible            := contrato.tpcontrato.bodtiniciofinal = _s;
  lbldtinicio.Visible           := contrato.tpcontrato.bodtiniciofinal = _s;
  lbldtfinal.Visible            := contrato.tpcontrato.bodtiniciofinal = _s;
  gbxcliente.Visible            := contrato.tpcontrato.bocliente = _s;
  tbsordserv.TabVisible         := contrato.tpcontrato.boordserv = _s;
  lblvlcontrato.Visible         := contrato.tpcontrato.bovlcontrato = _s;
  edtvlcontrato.Visible         := contrato.tpcontrato.bovlcontrato = _s;
  lblcdprodutoexcedente.Visible := contrato.tpcontrato.bovlexcedente = _s;
  edtcdprodutoexcedente.Visible := contrato.tpcontrato.bovlexcedente = _s;
  txtnmprodutoexcedente.Visible := contrato.tpcontrato.bovlexcedente = _s;
  ckbbomensalidade.Visible      := contrato.tpcontrato.bomensalidade = _s;
  tbsNegociacao.TabVisible      := contrato.tpcontrato.bonegociacao = _s;
  actnegociacao.Visible         := contrato.tpcontrato.bonegociacao = _s;
  tbvitcontratoVLEXCEDENTE.Visible := contrato.tpcontrato.bovlexcedente = _s;
end;

procedure TfrmContrato.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPCONTRATO.asinteger:= registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime  := dtbanco;
  cdsCDSTCONTRATO.AsInteger := qregistro.Codigo_status_novo(tbl);
end;

procedure TfrmContrato.cdsCDTPCONTRATOValidate(Sender: TField);
begin
  if not CodigoExiste(_tp+tbl, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_tipo+' '+_contrato)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  setrecord(sender.AsInteger);
end;

procedure TfrmContrato.cdsAfterScroll(DataSet: TDataSet);
begin
  setrecord(cdsCDTPCONTRATO.asInteger);
  contrato.Select(cds);
  contrato.tpcontrato.Select(contrato.cdtpcontrato);
  contrato.ItContrato.Ler(contrato.cdcontrato);
  contrato.ItContratoPaciente.Ler(contrato.cdcontrato);
  contrato.ItContratoNegociacao.Ler(contrato.cdcontrato);
end;

procedure TfrmContrato.grditcontratoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdsitcontrato, false);
end;

procedure TfrmContrato.cdsitcontratoCDDIGITADOValidate(Sender: TField);
begin
  if sender.asstring = '' then
  begin
    Exit;
  end;
  produto.cdproduto := produto.CodigoProdutoDigitado(sender.AsString, '');
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados;
  cdsitcontratoNMPRODUTO.asstring := produto.nmproduto;
  cdsitcontratoCDPRODUTO.AsInteger := produto.cdproduto;
end;

procedure TfrmContrato.cdsitcontratoNewRecord(DataSet: TDataSet);
begin
  cdsitcontratoCDITCONTRATO.AsString := GerarCodigo(_it+_contrato);
  cdsitcontratoQTITEM.AsFloat        := 0;
  cdsitcontratoVLUNITARIO.AsCurrency := 0;
end;

procedure TfrmContrato.edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then edtcdclientePropertiesButtonClick(sender, 0)
                         else nextcontrol(Sender, Key, shift);
end;

procedure TfrmContrato.edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.edtCDCLIENTEPropertiesButtonClick(self, cds);
end;

procedure TfrmContrato.edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblnmcliente.Hint :=cliente.hint_rzsocial;
  end;
end;

procedure TfrmContrato.cdsCDCLIENTEValidate(Sender: TField);
begin
  if not cliente.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cliente.stcliente.Select(cliente.cdstcliente);
  if cliente.stcliente.bogerarinfo <> _s then
  begin
    messagedlg('Cliente está no status '+cliente.stcliente.nmstcliente+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMCLIENTE.AsString := cliente.nmcliente;
end;

procedure TfrmContrato.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmContrato.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmContrato.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmContrato.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure TfrmContrato.setvalortotal(Sender: TField);
begin
  cdsitcontratoVLTOTAL.AsCurrency := cdsitcontratoQTITEM.AsFloat * cdsitcontratoVLUNITARIO.AsCurrency;
end;

procedure TfrmContrato.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmContrato.FormCreate(Sender: TObject);
begin
  GeraMenuRelatorio ('', btnimprimir, 62, cds, _contrato);
  abrirtabela;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure TfrmContrato.cbxcdtpcontratoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpcontrato);
end;

procedure TfrmContrato.cbxcdstcontratoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_stcontrato);
end;

procedure TfrmContrato.cbxcdtpcontratoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    setrecord(cbxcdtpcontrato.EditValue);
  end;
end;

procedure TfrmContrato.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmContrato.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
   cdsCDproduto.AsInteger := cd;
  end
end;

procedure TfrmContrato.edtcdprodutoexcedenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoexcedentePropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmContrato.edtcdprodutoexcedentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
   cdsCDPRODUTOEXCEDENTE.AsInteger := cd;
  end
end;

procedure TfrmContrato.cdsCDPRODUTOValidate(Sender: TField);
begin
  if not CodigoExiste(_produto, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_produto)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsNMproduto.AsString := nomedocodigo(_produto, Sender.asstring);
end;

procedure TfrmContrato.cdsCDPRODUTOEXCEDENTEValidate(Sender: TField);
begin
  if not CodigoExiste(_produto, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_produto)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsNMprodutoexcedente.AsString := nomedocodigo(_produto, Sender.asstring);
end;

procedure TfrmContrato.actabrirtpcontratoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmContrato.lbltpcontratoDblClick(Sender: TObject);
begin
  actAbrirtpcontrato.onExecute(actAbrirtpcontrato);
end;

procedure TfrmContrato.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmContrato.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmContrato.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmContrato.actitcontratopacienteExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itcontratopaciente))), cds.FieldByName(_cdcontrato).AsInteger, _cdcontrato);
end;

procedure TfrmContrato.actnegociacaoExecute(Sender: TObject);
begin
  if GerarNegociacaoContrato(cdsCDCONTRATO.AsInteger) then
  begin
    Abrir(cdsCDCONTRATO.AsInteger);
  end;
end;

procedure TfrmContrato.abrirtabela;
begin
  cbxcdtpcontrato.Properties.ListSource                                           := abrir_tabela(_tpcontrato);
  cbxcdstcontrato.Properties.ListSource                                           := abrir_tabela(_stcontrato);
  TcxLookupComboBoxProperties(tbvnegociacaoCDTPCORRECAO.Properties).ListSource    := abrir_tabela(_tpcorrecao);
  TcxLookupComboBoxProperties(tbvnegociacaoCDPERIODICIDADE.Properties).ListSource := abrir_tabela(_periodicidade);
end;

end.
