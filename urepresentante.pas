unit urepresentante;

interface

uses
  System.Actions, System.UITypes,
  forms, Buttons, Mask, Controls, ToolWin, StdCtrls, Classes, ActnList, ComCtrls,
  ExtCtrls, windows, sysutils, dialogs, types, Menus,
  FMTBcd, DB, DBClient, Provider, Grids, sqlexpr,
  urotinas, uconstantes, uregistroIb, uregistro, ustrings,
  ulocalizar, udatahora, unumero, uexportarexcel, uvalidadocumento,
  classeRegistro, classeempresa, classeconsiste, classeusuario,
  classeexecutasql, classegerar, classeregistrainformacao, classeform, classerepresentante,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, dxBar,
  cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxPCdxBarPopupMenu, cxTextEdit,
  cxDBEdit, cxRadioGroup, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxSpinEdit, cxCalc, cxMemo, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxNavigator, dxBarBuiltInMenu;

type
  TfrmRepresentante = class(TForm)
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
    actImpCadastroG: TAction;
    actimpContatoG: TAction;
    actabrirPedido: TAction;
    actAbrirSaida: TAction;
    actAbrirDuplicata: TAction;
    actabrircliente: TAction;
    actconsultapedido: TAction;
    actconsultasaida: TAction;
    actconsultaduplicata: TAction;
    actconsultacliente: TAction;
    actAlterarRepresentante: TAction;
    actfechar: TAction;
    pgc: TcxPageControl;
    tbscadastro: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    tbscontato: TcxTabSheet;
    tbsconsulta: TcxTabSheet;
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
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    sds: TSQLDataSet;
    sdsitcontrepresentante: TSQLDataSet;
    sdsconsulta: TSQLDataSet;
    sdsitconsulta: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    cdsitcontrepresentante: TClientDataSet;
    cdsconsulta: TClientDataSet;
    cdsitconsulta: TClientDataSet;
    dtsitcontrepresentante: TDataSource;
    dtsconsulta: TDataSource;
    dtsitconsulta: TDataSource;
    sdsCDREPRESENTANTE: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsCDSTREPRESENTANTE: TIntegerField;
    sdsNMREPRESENTANTE: TStringField;
    sdsRZSOCIAL: TStringField;
    sdsTPPESSOA: TStringField;
    sdsDSENDERECO: TStringField;
    sdsNMBAIRRO: TStringField;
    sdsNUCXPOSTAL: TStringField;
    sdsNUCEP: TStringField;
    sdsNUFONE1: TStringField;
    sdsNUFONE2: TStringField;
    sdsNUFONE3: TStringField;
    sdsNUFAX: TStringField;
    sdsPRCOMISSAO: TFloatField;
    sdsNUINSCEST: TStringField;
    sdsNUCNPJ: TStringField;
    sdsNUIDENTID: TStringField;
    sdsNUCPF: TStringField;
    sdsNMPAI: TStringField;
    sdsNMMAE: TStringField;
    sdsNMCONJUGE: TStringField;
    sdsDTNASCIMENTO: TDateField;
    sdsCDSEXO: TStringField;
    sdsCDESTCIVIL: TStringField;
    sdsEMAIL: TStringField;
    sdsHOMEPAGE: TStringField;
    sdsDSOBSERVACAO: TBlobField;
    sdsNUINSS: TStringField;
    sdsNUDEPENDENTES: TIntegerField;
    sdsDSNUMERO: TStringField;
    sdsDSCOMPLEMENTO: TStringField;
    sdsCDMUNICIPIO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDREPRESENTANTE: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsCDSTREPRESENTANTE: TIntegerField;
    cdsNMREPRESENTANTE: TStringField;
    cdsRZSOCIAL: TStringField;
    cdsTPPESSOA: TStringField;
    cdsDSENDERECO: TStringField;
    cdsNMBAIRRO: TStringField;
    cdsNUCXPOSTAL: TStringField;
    cdsNUCEP: TStringField;
    cdsNUFONE1: TStringField;
    cdsNUFONE2: TStringField;
    cdsNUFONE3: TStringField;
    cdsNUFAX: TStringField;
    cdsPRCOMISSAO: TFloatField;
    cdsNUINSCEST: TStringField;
    cdsNUCNPJ: TStringField;
    cdsNUIDENTID: TStringField;
    cdsNUCPF: TStringField;
    cdsNMPAI: TStringField;
    cdsNMMAE: TStringField;
    cdsNMCONJUGE: TStringField;
    cdsDTNASCIMENTO: TDateField;
    cdsCDSEXO: TStringField;
    cdsCDESTCIVIL: TStringField;
    cdsEMAIL: TStringField;
    cdsHOMEPAGE: TStringField;
    cdsDSOBSERVACAO: TBlobField;
    cdsNUINSS: TStringField;
    cdsNUDEPENDENTES: TIntegerField;
    cdsDSNUMERO: TStringField;
    cdsDSCOMPLEMENTO: TStringField;
    cdsCDMUNICIPIO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    sdsitcontrepresentanteCDREPRESENTANTE: TIntegerField;
    sdsitcontrepresentanteNMITCONTREPRESENTANTE: TStringField;
    sdsitcontrepresentanteEMAIL: TStringField;
    sdsitcontrepresentanteHOMEPAGE: TStringField;
    sdsitcontrepresentanteNURAMAL: TStringField;
    sdsitcontrepresentanteNUFONE1: TStringField;
    sdsitcontrepresentanteNUFONE2: TStringField;
    sdsitcontrepresentanteNUFAX: TStringField;
    sdsitcontrepresentanteNMDEPARTAMENTO: TStringField;
    sdsitcontrepresentanteNMSETOR: TStringField;
    sdsitcontrepresentanteNMFUNCAO: TStringField;
    sdsitcontrepresentanteCDUSUARIOI: TIntegerField;
    sdsitcontrepresentanteCDUSUARIOA: TIntegerField;
    sdsitcontrepresentanteCDCOMPUTADORI: TIntegerField;
    sdsitcontrepresentanteCDCOMPUTADORA: TIntegerField;
    sdsitcontrepresentanteTSINCLUSAO: TSQLTimeStampField;
    sdsitcontrepresentanteTSALTERACAO: TSQLTimeStampField;
    sdsitcontrepresentanteCDITCONTREPRESENTANTE: TIntegerField;
    cdssdsitcontrepresentante: TDataSetField;
    cdsitcontrepresentanteCDREPRESENTANTE: TIntegerField;
    cdsitcontrepresentanteNMITCONTREPRESENTANTE: TStringField;
    cdsitcontrepresentanteEMAIL: TStringField;
    cdsitcontrepresentanteHOMEPAGE: TStringField;
    cdsitcontrepresentanteNURAMAL: TStringField;
    cdsitcontrepresentanteNUFONE1: TStringField;
    cdsitcontrepresentanteNUFONE2: TStringField;
    cdsitcontrepresentanteNUFAX: TStringField;
    cdsitcontrepresentanteNMDEPARTAMENTO: TStringField;
    cdsitcontrepresentanteNMSETOR: TStringField;
    cdsitcontrepresentanteNMFUNCAO: TStringField;
    cdsitcontrepresentanteCDUSUARIOI: TIntegerField;
    cdsitcontrepresentanteCDUSUARIOA: TIntegerField;
    cdsitcontrepresentanteCDCOMPUTADORI: TIntegerField;
    cdsitcontrepresentanteCDCOMPUTADORA: TIntegerField;
    cdsitcontrepresentanteTSINCLUSAO: TSQLTimeStampField;
    cdsitcontrepresentanteTSALTERACAO: TSQLTimeStampField;
    cdsitcontrepresentanteCDITCONTREPRESENTANTE: TIntegerField;
    gbxComercial: TcxGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    edtnufax: TcxDBMaskEdit;
    edtnufone2: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtnucxpostal: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    edtnufone3: TcxDBMaskEdit;
    gbxFisica: TcxGroupBox;
    Label27: TLabel;
    Label61: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label13: TLabel;
    edtnmconjuge: TcxDBTextEdit;
    edtdtnascimento: TcxDBDateEdit;
    cbxcdestcivil: TcxDBComboBox;
    cbxcdsexo: TcxDBComboBox;
    edtnmpai: TcxDBTextEdit;
    edtnmmae: TcxDBTextEdit;
    edtnuinscest2: TcxDBTextEdit;
    edtnuidentid: TcxDBTextEdit;
    edtnucpf: TcxDBMaskEdit;
    gbxJuridica: TcxGroupBox;
    Label24: TLabel;
    Label29: TLabel;
    edtnucnpj: TcxDBMaskEdit;
    edtnuinscest: TcxDBTextEdit;
    gbxoutros: TcxGroupBox;
    Label38: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    edthomepage: TcxDBTextEdit;
    edtemail: TcxDBTextEdit;
    cbxcdstrepresentante: TcxDBLookupComboBox;
    Label32: TLabel;
    Label6: TLabel;
    Label19: TLabel;
    edtnuinss: TcxDBTextEdit;
    edtnudependentes: TcxDBSpinEdit;
    edtprcomissao: TcxDBCalcEdit;
    memdsobservacao: TcxDBMemo;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    grditcontrepresentante: TcxGrid;
    tbvitcontrepresentante: TcxGridDBTableView;
    tbvitcontrepresentanteNMITCONTFORNECEDOR: TcxGridDBColumn;
    tbvitcontrepresentanteEMAIL: TcxGridDBColumn;
    tbvitcontrepresentanteHOMEPAGE: TcxGridDBColumn;
    tbvitcontrepresentanteNUFONE1: TcxGridDBColumn;
    tbvitcontrepresentanteNURAMAL: TcxGridDBColumn;
    tbvitcontrepresentanteNUFONE2: TcxGridDBColumn;
    tbvitcontrepresentanteNUFAX: TcxGridDBColumn;
    tbvitcontrepresentanteNMDEPARTAMENTO: TcxGridDBColumn;
    tbvitcontrepresentanteNMSETOR: TcxGridDBColumn;
    tbvitcontrepresentanteNMFUNCAO: TcxGridDBColumn;
    grditcontrepresentanteLevel1: TcxGridLevel;
    btncliente: TdxBarLargeButton;
    btnduplicata: TdxBarLargeButton;
    btnpedido: TdxBarLargeButton;
    btnsaida: TdxBarLargeButton;
    grdconsultaLevel1: TcxGridLevel;
    grdconsulta: TcxGrid;
    dspconsulta: TDataSetProvider;
    dspitconsulta: TDataSetProvider;
    grdconsultapedido: TcxGridDBTableView;
    grdconsultapedidoNUPEDIDO: TcxGridDBColumn;
    grdconsultapedidoDTEMISSAO: TcxGridDBColumn;
    grdconsultapedidoNMCLIENTE: TcxGridDBColumn;
    grdconsultapedidoNMCONDPAGTO: TcxGridDBColumn;
    grdconsultapedidoNMSTPEDIDO: TcxGridDBColumn;
    grdconsultapedidoVLTOTAL: TcxGridDBColumn;
    grdconsultaLevel2: TcxGridLevel;
    grdconsultaitpedido: TcxGridDBTableView;
    grdconsultaitpedidoCDDIGITADO: TcxGridDBColumn;
    grdconsultaitpedidoNMPRODUTO: TcxGridDBColumn;
    grdconsultaitpedidoQTITEM: TcxGridDBColumn;
    grdconsultaitpedidoQTATENDIDA: TcxGridDBColumn;
    grdconsultaitpedidoVLUNITARIO: TcxGridDBColumn;
    grdconsultaitpedidoVLTOTAL: TcxGridDBColumn;
    grdconsultasaida: TcxGridDBTableView;
    grdconsultaitsaida: TcxGridDBTableView;
    grdconsultasaidaNUSAIDA: TcxGridDBColumn;
    grdconsultasaidaDTEMISSAO: TcxGridDBColumn;
    grdconsultasaidaNMCLIENTE: TcxGridDBColumn;
    grdconsultasaidaNMCONDPAGTO: TcxGridDBColumn;
    grdconsultasaidaVLTOTAL: TcxGridDBColumn;
    grdconsultaitsaidaNUPEDIDO: TcxGridDBColumn;
    grdconsultaitsaidaCDDIGITADO: TcxGridDBColumn;
    grdconsultaitsaidaNMPRODUTO: TcxGridDBColumn;
    grdconsultaitsaidaQTITEM: TcxGridDBColumn;
    grdconsultaitsaidaVLUNITARIO: TcxGridDBColumn;
    grdconsultaitsaidaVLTOTAL: TcxGridDBColumn;
    grdconsultaduplicata: TcxGridDBTableView;
    grdconsultaduplicataNUDUPLICATA: TcxGridDBColumn;
    grdconsultaduplicataNMCLIENTE: TcxGridDBColumn;
    grdconsultaduplicataDTEMISSAO: TcxGridDBColumn;
    grdconsultaduplicataDTVENCIMENTO: TcxGridDBColumn;
    grdconsultaduplicataVLDUPLICATA: TcxGridDBColumn;
    grdconsultaduplicataVLSALDO: TcxGridDBColumn;
    grdconsultaduplicataVLRECEBIDO: TcxGridDBColumn;
    grdconsultaduplicataNMSTDUPLICATA: TcxGridDBColumn;
    grdconsultacliente: TcxGridDBTableView;
    grdconsultaclienteCDCLIENTE: TcxGridDBColumn;
    grdconsultaclienteNMCLIENTE: TcxGridDBColumn;
    grdconsultaclienteRZSOCIAL: TcxGridDBColumn;
    grdconsultaclienteDSENDERECO: TcxGridDBColumn;
    grdconsultaclienteNMBAIRRO: TcxGridDBColumn;
    grdconsultaclienteNMMUNICIPIO: TcxGridDBColumn;
    grdconsultaclienteNUCEP: TcxGridDBColumn;
    grdconsultaclienteTPPESSOA: TcxGridDBColumn;
    grdconsultaclienteDTCADASTRO: TcxGridDBColumn;
    grdconsultaclienteSGUF: TcxGridDBColumn;
    sdsCDTPCOMISSAOREPRESENTANTE: TIntegerField;
    cdsCDTPCOMISSAOREPRESENTANTE: TIntegerField;
    Label1: TLabel;
    cbxcdtpcomissaorepresentante: TcxDBLookupComboBox;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    cbxcdusuario: TcxDBLookupComboBox;
    lblusuario: TLabel;
    sdsCDUSUARIO: TIntegerField;
    cdsCDUSUARIO: TIntegerField;
    pnltop: TPanel;
    lblcodigo: TLabel;
    edtcodigo: TcxTextEdit;
    Label3: TLabel;
    edtnome: TcxDBTextEdit;
    lblrzsocial: TLabel;
    edtrzsocial: TcxDBTextEdit;
    rdbtppessoa: TcxDBRadioGroup;
    pnl: TcxLabel;
    sdsCDFUNCIONARIO: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    lblcdfuncionario: TLabel;
    cbxcdfuncionario: TcxDBLookupComboBox;
    sdsCDEMPRESA: TLargeintField;
    sdsitcontrepresentanteCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsitcontrepresentanteCDEMPRESA: TLargeintField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actImpCadastroGExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actimpContatoGExecute(Sender: TObject);
    procedure pgcChange(Sender: TObject);
    procedure actabrirPedidoExecute(Sender: TObject);
    procedure actAbrirSaidaExecute(Sender: TObject);
    procedure actAbrirDuplicataExecute(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure edtnomeExit(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsitcontrepresentanteNewRecord(DataSet: TDataSet);
    procedure cdsitcontrepresentanteBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure rdbtppessoaPropertiesChange(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure actconsultaclienteExecute(Sender: TObject);
    procedure actconsultapedidoExecute(Sender: TObject);
    procedure actconsultasaidaExecute(Sender: TObject);
    procedure actconsultaduplicataExecute(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsNUFONE1Validate(Sender: TField);
    procedure cdsNUFONE2Validate(Sender: TField);
    procedure cdsNUFONE3Validate(Sender: TField);
    procedure cdsNUFAXValidate(Sender: TField);
    procedure cdsitcontrepresentanteNUFONE1Validate(Sender: TField);
    procedure cdsitcontrepresentanteNUFONE2Validate(Sender: TField);
    procedure cdsitcontrepresentanteNUFAXValidate(Sender: TField);
    procedure cdsNMREPRESENTANTEValidate(Sender: TField);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsDTNASCIMENTOValidate(Sender: TField);
    procedure cdsNUCEPValidate(Sender: TField);
    procedure cbxcdusuarioEnter(Sender: TObject);
    procedure cdsCDUFValidate(Sender: TField);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    representante : TRepresentante;
    exibe    : string;
    procedure setquery(tbl:string);
    procedure ConfigurarAlterarRepresentante;
    procedure set_mascara_numero_fone_de_acordo_com_estado;
    procedure set_abrirtabela;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

const
  tbl      = _representante;
  artigoI  = 'o';
var
  frmRepresentante: TfrmRepresentante;

implementation

uses uDtmMain, uMain, uimprimirrelatoriopadrao, uMenuRelatorio;

{$R *.DFM}

procedure TfrmRepresentante.set_mascara_numero_fone_de_acordo_com_estado;
begin
  if BooleandoCodigo(_uf, cdsCDUF.AsString, _bodigito9) then
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
    edtnufax.Properties.EditMask   := _99_99999_9999;
    TcxMaskEditProperties(tbvitcontrepresentanteNUFONE1.Properties).EditMask := _99_99999_9999;
    TcxMaskEditProperties(tbvitcontrepresentanteNUFONE2.Properties).EditMask := _99_99999_9999;
    TcxMaskEditProperties(tbvitcontrepresentanteNUFAX.Properties).EditMask   := _99_99999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
    edtnufax.Properties.EditMask   := _99_9999_9999;
    TcxMaskEditProperties(tbvitcontrepresentanteNUFONE1.Properties).EditMask := _99_9999_9999;
    TcxMaskEditProperties(tbvitcontrepresentanteNUFONE2.Properties).EditMask := _99_9999_9999;
    TcxMaskEditProperties(tbvitcontrepresentanteNUFAX.Properties).EditMask   := _99_9999_9999;
  end;
end;

procedure TfrmRepresentante.setquery(tbl:string);
var
  sql, sql2 : string;
begin
  sql2 := '';
  cdsconsulta.Close;
  cdsitconsulta.Close;
  if cdsCDREPRESENTANTE.asstring = '' then
  begin
    exit;
  end;
  grdconsultaLevel2.Visible := False;
  if tbl = _pedido then
  begin
    sql := 'SELECT P.CDPEDIDO'+
                 ',P.NUPEDIDO'+
                 ',P.DTEMISSAO'+
                 ',C.NMCLIENTE'+
                 ',CP.NMCONDPAGTO'+
                 ',S.NMSTPEDIDO'+
                 ',P.VLTOTAL'+
                 ',P.CDREPRESENTANTE '+
           'FROM PEDIDO P '+
           'LEFT JOIN CLIENTE C ON C.CDCLIENTE=P.CDCLIENTE AND P.CDEMPRESA=C.CDEMPRESA '+
           'LEFT JOIN CONDPAGTO CP ON CP.CDCONDPAGTO=P.CDCONDPAGTO AND P.CDEMPRESA=CP.CDEMPRESA '+
           'LEFT JOIN STPEDIDO S ON S.CDSTPEDIDO=P.CDSTPEDIDO '+
           'WHERE P.CDEMPRESA='+cds.FieldByName(_CDEMPRESA).AsString+' and P.CDREPRESENTANTE='+cdsCDREPRESENTANTE.AsString;
    sql2 := 'SELECT I.CDPEDIDO'+
                  ',I.CDDIGITADO'+
                  ',P.NMPRODUTO'+
                  ',I.QTITEM'+
                  ',I.QTATENDIDA'+
                  ',I.VLUNITARIO'+
                  ',I.VLTOTAL '+
            'FROM PEDIDO PE '+
            'INNER JOIN ITPEDIDO I ON I.CDPEDIDO=Pe.CDPEDIDO AND PE.CDEMPRESA=I.CDEMPRESA '+
            'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND P.CDEMPRESA=I.CDEMPRESA '+
            'where pe.cdempresa='+cds.FieldByName(_CDEMPRESA).asstring+' and pE.cdrepresentante='+cdsCDREPRESENTANTE.AsString;
    grdconsultaLevel1.GridView := grdconsultapedido;
    grdconsultaLevel2.GridView := grdconsultaitpedido;
    grdconsultaLevel2.Visible  := true;
  end
  else if tbl = _saida then
  begin
    sql := 'SELECT S.NUSAIDA'+
                 ',S.DTEMISSAO'+
                 ',C.NMCLIENTE'+
                 ',CP.NMCONDPAGTO'+
                 ',S.VLTOTAL'+
                 ',S.CDREPRESENTANTE'+
                 ',S.CDSAIDA '+
           'FROM SAIDA S '+
           'LEFT JOIN CLIENTE C ON C.CDCLIENTE=S.CDCLIENTE AND s.CDEMPRESA=C.CDEMPRESA '+
           'LEFT JOIN CONDPAGTO CP ON CP.CDCONDPAGTO=S.CDCONDPAGTO AND s.CDEMPRESA=Cp.CDEMPRESA '+
           'where s.cdempresa='+cds.FieldByName(_CDEMPRESA).AsString+' and s.cdrepresentante='+cdscdrepresentante.AsString;
    sql2 := 'SELECT I.CDSAIDA'+
                  ',I.NUPEDIDO'+
                  ',I.CDDIGITADO'+
                  ',P.NMPRODUTO'+
                  ',I.QTITEM'+
                  ',I.VLUNITARIO'+
                  ',I.VLTOTAL '+
            'FROM saida s '+
            'inner join ITSAIDA I on i.cdsaida=s.cdsaida AND s.CDEMPRESA=i.CDEMPRESA '+
            'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND P.CDEMPRESA=i.CDEMPRESA '+
            'where s.cdempresa='+cds.FieldByName(_CDEMPRESA).AsString+' and s.cdrepresentante='+cdscdrepresentante.AsString;
    grdconsultaLevel1.GridView := grdconsultasaida;
    grdconsultaLevel2.GridView := grdconsultaitsaida;
    grdconsultaLevel2.Visible  := true;
  end
  else if tbl = _duplicata then
  begin
    sql := 'SELECT D.NUDUPLICATA'+
                 ',C.NMCLIENTE'+
                 ',D.DTEMISSAO'+
                 ',D.DTVENCIMENTO'+
                 ',D.VLDUPLICATA'+
                 ',D.VLSALDO'+
                 ',D.VLRECEBIDO'+
                 ',D.CDREPRESENTANTE'+
                 ',D.CDDUPLICATA'+
                 ',S.NMSTDUPLICATA '+
           'FROM DUPLICATA D '+
           'LEFT JOIN STDUPLICATA S ON S.CDSTDUPLICATA=D.CDSTDUPLICATA '+
           'LEFT JOIN CLIENTE C ON C.CDCLIENTE=D.CDCLIENTE AND d.CDEMPRESA=C.CDEMPRESA '+
           'where d.cdempresa='+cds.FieldByName(_CDEMPRESA).AsString+' and d.cdrepresentante='+cdscdrepresentante.AsString;
    grdconsultaLevel1.GridView := grdconsultaduplicata;
  end
  else if tbl = _cliente then
  begin
    sql := 'SELECT C.CDCLIENTE'+
                 ',C.NMCLIENTE'+
                 ',C.RZSOCIAL'+
                 ',C.DSENDERECO'+
                 ',C.NMBAIRRO'+
                 ',m.nmmunicipio '+
                 ',C.NUCEP'+
                 ',C.TPPESSOA'+
                 ',C.DTCADASTRO'+
                 ',U.SGUF '+
           'FROM CLIENTE C '+
           'left join municipio M on m.cdmunicipio=c.cdmunicipio '+
           'LEFT JOIN UF U ON U.CDUF=C.CDUF '+
           'where c.cdempresa='+cds.FieldByName(_CDEMPRESA).asstring+' and c.cdrepresentante='+cdscdrepresentante.AsString;
    grdconsultaLevel1.GridView := grdconsultacliente;
  end;
  sdsconsulta.CommandText := sql;
  cdsconsulta.SetProvider(dspconsulta);
  cdsconsulta.Open;
  if sql2 <> '' then
  begin
    sdsitconsulta.CommandText := sql2;
    cdsitconsulta.SetProvider(dspitconsulta);
    cdsitconsulta.Open;
  end;
  ConfigurarAlterarRepresentante;
end;

function TfrmRepresentante.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmRepresentante.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir
end;

procedure TfrmRepresentante.actNovoExecute(Sender: TObject);
begin
  if registro.Novo(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmRepresentante.actSalvarExecute(Sender: TObject);
begin
  registro.Salvar;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmRepresentante.actExcluirExecute(Sender: TObject);
begin
  registro.Excluir;
end;

procedure TfrmRepresentante.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmRepresentante.actCancelarExecute(Sender: TObject);
begin
  registro.Cancelar;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmRepresentante.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
end;

procedure TfrmRepresentante.edtCodigoKeyPress(Sender: TObject;  var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmRepresentante.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmRepresentante.FormShow(Sender: TObject);
begin
  representante := Trepresentante.create;
  pnl.caption   := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmRepresentante.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure TfrmRepresentante.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure TfrmRepresentante.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure TfrmRepresentante.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure TfrmRepresentante.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmRepresentante.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmRepresentante.actImpCadastroGExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(327, 'WHERE R.CDEMPRESA='+cds.FieldByName(_CDEMPRESA).AsString+' and r.cdrepresentante='+cdsCDREPRESENTANTE.asstring);
end;

procedure TfrmRepresentante.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmRepresentante.actimpContatoGExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(328, 'WHERE R.CDEMPRESA='+cds.FieldByName(_CDEMPRESA).AsString+' and r.cdrepresentante='+cdsCDREPRESENTANTE.asstring);
end;

procedure TfrmRepresentante.pgcChange(Sender: TObject);
begin
  if pgc.ActivePage = tbsContato then
  begin
    grditcontrepresentante.SetFocus;
    tbsContato.SetFocus;
  end;
  ConfigurarAlterarRepresentante;
end;

procedure TfrmRepresentante.actabrirPedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmRepresentante.actAbrirSaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmRepresentante.actAbrirDuplicataExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmRepresentante.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmRepresentante.ConfigurarAlterarRepresentante;
begin
  actAlterarRepresentante.Enabled := (pgc.ActivePageIndex = 2) and (cds.RecordCount > 0) and (dts.State <> dsinsert) and (dts.State <> dsedit) and btncliente.Down;
  actAlterarRepresentante.Visible := (pgc.ActivePageIndex = 2) and (cds.RecordCount > 0) and (dts.State <> dsinsert) and (dts.State <> dsedit) and btncliente.Down;
end;

procedure TfrmRepresentante.edtnomeExit(Sender: TObject);
begin
  colorexit(sender);
  if not ((cds.State = dsedit) or (cds.State = dsinsert)) then
  begin
    Exit;
  end;
  if (cdsRZSOCIAL.IsNull and (not cdsNMREPRESENTANTE.isnull)) or (cdsTPPESSOA.AsString = _F) then
  begin
    cdsRZSOCIAL.AsString := cdsNMREPRESENTANTE.asstring;
  end;
end;

procedure TfrmRepresentante.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmRepresentante.FormDestroy(Sender: TObject);
begin
  representante.free;
  registro.destroy;
end;

procedure TfrmRepresentante.cdsitcontrepresentanteNewRecord(DataSet: TDataSet);
begin
  cdsitcontrepresentanteCDITCONTREPRESENTANTE.AsString := GerarCodigo(_it+_cont+_representante);
end;

procedure TfrmRepresentante.cdsitcontrepresentanteBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitcontrepresentante);
end;

procedure TfrmRepresentante.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmRepresentante.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmRepresentante.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmRepresentante.edtnomePropertiesChange(Sender: TObject);
begin
  if ((cds.State=dsedit) or (cds.State=dsinsert)) and (cdsTPPESSOA.AsString = _F) then
  begin
    cdsrzsocial.asstring := tedit(sender).text;
  end;
  if cdsCDREPRESENTANTE.asinteger > 0 then
  begin
    pnl.Caption := exibe+' '+ cdsCDREPRESENTANTE.asstring + ' - ' + edtnome.Text + ' ('+cbxcdstrepresentante.Text+')'
  end
  else
  begin
    pnl.Caption := exibe+' - ' + edtnome.Text + ' ('+cbxcdstrepresentante.Text+')';
  end;
end;

procedure TfrmRepresentante.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmRepresentante.rdbtppessoaPropertiesChange(Sender: TObject);
begin
  if rdbTpPessoa.ItemIndex = -1 then
  begin
    exit
  end;
  gbxoutros.Visible := False;
  gbxJuridica.Enabled := rdbTpPessoa.ItemIndex = 0;
  gbxJuridica.Visible := rdbTpPessoa.ItemIndex = 0;
  lblrzsocial.visible := rdbTpPessoa.ItemIndex = 0;
  edtrzsocial.Visible := rdbTpPessoa.ItemIndex = 0;
  gbxFisica.Enabled   := rdbTpPessoa.ItemIndex <> 0;
  gbxFisica.Visible   := rdbTpPessoa.ItemIndex <> 0;
  gbxoutros.Visible := true;
end;

procedure TfrmRepresentante.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet)); //dtmmain.cdsmunicipio);
  end;
end;

procedure TfrmRepresentante.cbxcdusuarioEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_usuario);
end;

procedure TfrmRepresentante.cdsBeforePost(DataSet: TDataSet);
begin
  if Copy(cdsRZSOCIAL.AsString, 1, 1) = ' ' then
  begin
    MessageDlg('Razão Social não pode conter espaço no início.'#13'Altere a razão social para poder continuar.', mtInformation, [mbOK], 0);
    cdsRZSOCIAL.FocusControl;
    Abort;
  end;
  ConsisteCNPJ(dataset, tbl, exibe);
  ConsisteCPF (dataset, tbl, exibe, false);
  if cdsTPPESSOA.AsString = _J then
  begin
    cdsNUCPF.Clear;
    cdsNUIDENTID.clear;
    cdsDTNASCIMENTO.clear;
    cdsNMMAE.Clear;
    cdsNMPAI.clear;
    cdsCDSEXO.clear;
    cdsCDESTCIVIL.clear;
    cdsNMCONJUGE.clear;
  end
  else if cdsTPPESSOA.AsString = _F then // Pessoa Física - obrigatóriedade de CPF
  begin
    if empresa.fornecedor.bocpfobrigatorio and (cdsNUCPF.asstring = '') then
    begin
      gbxFisica.BringToFront;
      cdsNUCPF.FocusControl;
    end;
    cdsNUCNPJ.Clear;
  end;
  ConsisteInscricaoEstadual(dataset, gbxjuridica, gbxfisica, TEdit(edtnuinscest), tedit(edtnuinscest2), pgc);
  registro.set_update(cds);
end;

procedure TfrmRepresentante.cdsCDUFValidate(Sender: TField);
begin
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmRepresentante.actconsultaclienteExecute(Sender: TObject);
begin
  SetQuery(_cliente);
end;

procedure TfrmRepresentante.actconsultapedidoExecute(Sender: TObject);
begin
  SetQuery(_pedido);
end;

procedure TfrmRepresentante.actconsultasaidaExecute(Sender: TObject);
begin
  SetQuery(_saida);
end;

procedure TfrmRepresentante.actconsultaduplicataExecute(Sender: TObject);
begin
  SetQuery(_duplicata);
end;

procedure TfrmRepresentante.cdsAfterScroll(DataSet: TDataSet);
begin
  if btncliente.Down then
  begin
    setquery(_cliente)
  end
  else if btnduplicata.Down then
  begin
    setquery(_duplicata)
  end
  else if btnpedido.Down then
  begin
    setquery(_pedido)
  end
  else if btnsaida.Down then
  begin
    setquery(_saida);
  end;
  cbxcdufExit(cbxcduf);
  //registro.setStatus(tbl, DataSet);
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmRepresentante.FormCreate(Sender: TObject);
begin
  exibe    := Maiuscula(_representante);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  set_abrirtabela;
  GeraMenuRelatorio ('', btnimprimir, 42, cds, tbl);
end;

procedure TfrmRepresentante.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmRepresentante.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsCDSTREPRESENTANTE.AsInteger := qregistro.Codigo_status_novo(tbl);
  cdsTPPESSOA.asstring := _J;
  if cdsTPPESSOA.asstring = '' then
  begin
    exit
  end;
  if cdsTPPESSOA.asstring = _J then
  begin
    gbxJuridica.BringToFront
  end
  else if cdsTPPESSOA.asstring = _F then
  begin
    gbxFisica.BringToFront;
  end;
  gbxJuridica.Enabled := cdsTPPESSOA.asstring = _J;
  gbxJuridica.Visible := cdsTPPESSOA.asstring = _J;
  lblrzsocial.visible := cdsTPPESSOA.asstring = _J;
  edtrzsocial.Visible := cdsTPPESSOA.asstring = _J;
  gbxFisica.Enabled   := cdsTPPESSOA.asstring <> _J;
  gbxFisica.Visible   := cdsTPPESSOA.asstring <> _J;
end;

procedure TfrmRepresentante.cdsNUFONE1Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmRepresentante.cdsNUFONE2Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmRepresentante.cdsNUFONE3Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmRepresentante.cdsNUCEPValidate(Sender: TField);
begin
  if consistircep(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmRepresentante.cdsNUFAXValidate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmRepresentante.cdsitcontrepresentanteNUFONE1Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmRepresentante.cdsitcontrepresentanteNUFONE2Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmRepresentante.cdsitcontrepresentanteNUFAXValidate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmRepresentante.cdsNMREPRESENTANTEValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmRepresentante.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmRepresentante.cdsDTNASCIMENTOValidate(Sender: TField);
begin
  registro.consistir_data_nascimento(Sender);
end;

procedure TfrmRepresentante.cbxcdfuncionarioEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmRepresentante.set_abrirtabela;
begin
  cbxcdusuario.Properties.ListSource                 := abrir_tabela(_usuario);
  cbxcdfuncionario.Properties.ListSource             := abrir_tabela(_funcionario);
  cbxcduf.Properties.ListSource                      := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource               := abrir_tabela(_municipio);
  cbxcdstrepresentante.Properties.ListSource         := abrir_tabela(_strepresentante);
  cbxcdtpcomissaorepresentante.Properties.ListSource := abrir_tabela(_tpcomissaorepresentante);
end;

end.
