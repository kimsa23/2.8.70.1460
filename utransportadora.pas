unit utransportadora;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, ComCtrls, ExtCtrls, Menus, StdCtrls, Buttons, sysutils,
  dialogs, Mask, Controls, windows, ToolWin, DateUtils,
  DBCtrls, FMTBcd, DB, DBClient, Provider, sqlexpr, Grids,
  urotinas, ustrings, ulocalizar, uconstantes, uregistroib, uregistro,
  uvalidadocumento, uexportarexcel, uprogressbar, ulocalizarfornecedor,
  udatahora,
  classeempresa, classeconsiste, classegerar, classeregistrainformacao,
  classeform, classeretornasql, classefornecedor, classeRegistro,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, dxBar,
  cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxRadioGroup, cxDropDownEdit, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMemo, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCurrencyEdit, cxDBLabel, cxButtonEdit,
  cxPCdxBarPopupMenu, cxCalc, cxNavigator, dxBarBuiltInMenu, udlgtabela;

type
  TfrmTransportadora = class(TForm)
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
    actabrirentrada: TAction;
    actabrirsaida: TAction;
    actconsultaentrada: TAction;
    actconsultasaida: TAction;
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
    bvl1: TBevel;
    lblcodigo: TLabel;
    Label3: TLabel;
    lblrzsocial: TLabel;
    pgc: TcxPageControl;
    tbscadastro: TcxTabSheet;
    gbxoutros: TcxGroupBox;
    Label38: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    tbsobservacao: TcxTabSheet;
    tbsconsulta: TcxTabSheet;
    pnl: TcxLabel;
    bmg1Bar1: TdxBar;
    btnentrada: TdxBarLargeButton;
    btnsaida: TdxBarLargeButton;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    edtrzsocial: TcxDBTextEdit;
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
    gbxJuridica: TcxGroupBox;
    Label24: TLabel;
    Label29: TLabel;
    edtnucnpj: TcxDBMaskEdit;
    edtnuinscest: TcxDBTextEdit;
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
    rdbtppessoa: TcxDBRadioGroup;
    memdsobservacao: TcxDBMemo;
    dxBarDockControl1: TdxBarDockControl;
    cbxcdsttransportadora: TcxDBLookupComboBox;
    edtemail: TcxDBTextEdit;
    edthomepage: TcxDBTextEdit;
    dts1: TDataSource;
    grdconsultaLevel1: TcxGridLevel;
    grdconsulta: TcxGrid;
    dtsconsulta: TDataSource;
    cdsconsulta: TClientDataSet;
    dspconsulta: TDataSetProvider;
    sdsconsulta: TSQLDataSet;
    sdsitconsulta: TSQLDataSet;
    dspitconsulta: TDataSetProvider;
    cdsitconsulta: TClientDataSet;
    dtsitconsulta: TDataSource;
    grdconsultaentrada: TcxGridDBBandedTableView;
    grdconsultaentradaNUENTRADA: TcxGridDBBandedColumn;
    grdconsultaentradaDTEMISSAO: TcxGridDBBandedColumn;
    grdconsultaentradaVLTOTAL: TcxGridDBBandedColumn;
    grdconsultaentradaDTSAIDA: TcxGridDBBandedColumn;
    grdconsultaentradaNMCONDPAGTO: TcxGridDBBandedColumn;
    grdconsultaentradaVLPRODUTO: TcxGridDBBandedColumn;
    grdconsultaentradaVLFRETE: TcxGridDBBandedColumn;
    grdconsultaentradaVLBASEICMS: TcxGridDBBandedColumn;
    grdconsultaentradaVLICMS: TcxGridDBBandedColumn;
    grdconsultaentradaVLICMSSUBTRIB: TcxGridDBBandedColumn;
    grdconsultaentradaVLBASEICMSSUBTRIB: TcxGridDBBandedColumn;
    grdconsultaentradaVLIPI: TcxGridDBBandedColumn;
    grdconsultaentradaVLISS: TcxGridDBBandedColumn;
    grdconsultaitentrada: TcxGridDBBandedTableView;
    grdconsultaitentradaCDDIGITADO: TcxGridDBBandedColumn;
    grdconsultaitentradaNMPRODUTO: TcxGridDBBandedColumn;
    grdconsultaitentradaQTITEM: TcxGridDBBandedColumn;
    grdconsultaitentradaVLUNITARIO: TcxGridDBBandedColumn;
    grdconsultaitentradaVLTOTAL: TcxGridDBBandedColumn;
    grdconsultaitentradaVLBASEICMS: TcxGridDBBandedColumn;
    grdconsultaitentradaALICMS: TcxGridDBBandedColumn;
    grdconsultaitentradaVLICMS: TcxGridDBBandedColumn;
    grdconsultaitentradaVLIPI: TcxGridDBBandedColumn;
    grdconsultaitentradaVLISS: TcxGridDBBandedColumn;
    grdconsultaLevel4: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    lbl2: TLabel;
    cbxcdpais: TcxDBLookupComboBox;
    grdconsultaentradaNUDOCFISCALICMS: TcxGridDBBandedColumn;
    sdsCDUF: TIntegerField;
    sdsCDSTTRANSPORTADORA: TIntegerField;
    sdsCDMUNICIPIO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDVEICULO: TIntegerField;
    sdsCDVEICULOCARRETA: TIntegerField;
    sdsCDVEICULOCARRETA2: TIntegerField;
    sdsNMTRANSPORTADORA: TStringField;
    sdsRZSOCIAL: TStringField;
    sdsDSENDERECO: TStringField;
    sdsNMBAIRRO: TStringField;
    sdsNUCXPOSTAL: TStringField;
    sdsNUCEP: TStringField;
    sdsNUFONE1: TStringField;
    sdsNUFONE2: TStringField;
    sdsNUFONE3: TStringField;
    sdsNUFAX: TStringField;
    sdsTPPESSOA: TStringField;
    sdsNUINSCEST: TStringField;
    sdsNUCNPJ: TStringField;
    sdsNMMOTORISTA: TStringField;
    sdsNUCPF: TStringField;
    sdsNUIDENTID: TStringField;
    sdsNMMAE: TStringField;
    sdsNMPAI: TStringField;
    sdsNMCONJUGE: TStringField;
    sdsCDSEXO: TStringField;
    sdsCDESTCIVIL: TStringField;
    sdsDTNASCIMENTO: TDateField;
    sdsEMAIL: TStringField;
    sdsHOMEPAGE: TStringField;
    sdsNUINSS: TStringField;
    sdsNUDEPENDENTES: TIntegerField;
    sdsCDOUTROTRANSPORTADORA: TIntegerField;
    sdsDSOBSERVACAO: TBlobField;
    sdsDSNUMERO: TStringField;
    sdsDSCOMPLEMENTO: TStringField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNUCNH: TStringField;
    sdsNURNTRC: TStringField;
    cdsCDUF: TIntegerField;
    cdsCDSTTRANSPORTADORA: TIntegerField;
    cdsCDMUNICIPIO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDVEICULO: TIntegerField;
    cdsCDVEICULOCARRETA: TIntegerField;
    cdsCDVEICULOCARRETA2: TIntegerField;
    cdsNMTRANSPORTADORA: TStringField;
    cdsRZSOCIAL: TStringField;
    cdsDSENDERECO: TStringField;
    cdsNMBAIRRO: TStringField;
    cdsNUCXPOSTAL: TStringField;
    cdsNUCEP: TStringField;
    cdsNUFONE1: TStringField;
    cdsNUFONE2: TStringField;
    cdsNUFONE3: TStringField;
    cdsNUFAX: TStringField;
    cdsTPPESSOA: TStringField;
    cdsNUINSCEST: TStringField;
    cdsNUCNPJ: TStringField;
    cdsNMMOTORISTA: TStringField;
    cdsNUCPF: TStringField;
    cdsNUIDENTID: TStringField;
    cdsNMMAE: TStringField;
    cdsNMPAI: TStringField;
    cdsNMCONJUGE: TStringField;
    cdsCDSEXO: TStringField;
    cdsCDESTCIVIL: TStringField;
    cdsDTNASCIMENTO: TDateField;
    cdsEMAIL: TStringField;
    cdsHOMEPAGE: TStringField;
    cdsNUINSS: TStringField;
    cdsNUDEPENDENTES: TIntegerField;
    cdsCDOUTROTRANSPORTADORA: TIntegerField;
    cdsDSOBSERVACAO: TBlobField;
    cdsDSNUMERO: TStringField;
    cdsDSCOMPLEMENTO: TStringField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNUCNH: TStringField;
    cdsNURNTRC: TStringField;
    sdsCDPAIS: TIntegerField;
    cdsCDPAIS: TIntegerField;
    sdsBONENVIARPDF: TStringField;
    cdsBONENVIARPDF: TStringField;
    Label4: TLabel;
    Label19: TLabel;
    edtnuinss: TcxDBTextEdit;
    edtnudependentes: TcxDBTextEdit;
    Label17: TLabel;
    lbl1: TLabel;
    lblveiculo: TLabel;
    lblcarreta: TLabel;
    lblcarreta2: TLabel;
    edtnmmotorista: TcxDBTextEdit;
    edtnucnh: TcxDBTextEdit;
    edtcdveiculo: TcxDBButtonEdit;
    edtcdveiculocarreta: TcxDBButtonEdit;
    edtcdveiculocarreta2: TcxDBButtonEdit;
    txtNUPLACAVEICULO: TDBText;
    txtNUPLACACARRETA: TDBText;
    txtNUPLACACARRETA2: TDBText;
    sdsNUPLACAVEICULO: TStringField;
    sdsNUPLACACARRETA: TStringField;
    sdsNUPLACACARRETA2: TStringField;
    cdsNUPLACAVEICULO: TStringField;
    cdsNUPLACACARRETA: TStringField;
    cdsNUPLACACARRETA2: TStringField;
    dxBarLargeButton1: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    actimprimircadastro: TAction;
    dxBarButton1: TdxBarButton;
    sdstransportadoramunicipio: TSQLDataSet;
    cdstransportadoramunicipio: TClientDataSet;
    dtstransportadoramunicipio: TDataSource;
    sdstransportadoramunicipioCDMUNICIPIO: TIntegerField;
    sdstransportadoramunicipioPRFRETE: TFloatField;
    sdstransportadoramunicipioCDUSUARIOI: TIntegerField;
    sdstransportadoramunicipioCDUSUARIOA: TIntegerField;
    sdstransportadoramunicipioTSINCLUSAO: TSQLTimeStampField;
    sdstransportadoramunicipioTSALTERACAO: TSQLTimeStampField;
    sdstransportadoramunicipioCDCOMPUTADORI: TIntegerField;
    sdstransportadoramunicipioCDCOMPUTADORA: TIntegerField;
    sdstransportadoramunicipioCDTRANSPORTADORAMUNICIPIO: TIntegerField;
    cdssdstransportadoramunicipio: TDataSetField;
    cdstransportadoramunicipioCDMUNICIPIO: TIntegerField;
    cdstransportadoramunicipioPRFRETE: TFloatField;
    cdstransportadoramunicipioCDUSUARIOI: TIntegerField;
    cdstransportadoramunicipioCDUSUARIOA: TIntegerField;
    cdstransportadoramunicipioTSINCLUSAO: TSQLTimeStampField;
    cdstransportadoramunicipioTSALTERACAO: TSQLTimeStampField;
    cdstransportadoramunicipioCDCOMPUTADORI: TIntegerField;
    cdstransportadoramunicipioCDCOMPUTADORA: TIntegerField;
    cdstransportadoramunicipioCDTRANSPORTADORAMUNICIPIO: TIntegerField;
    tbsmunicipio: TcxTabSheet;
    grdtransportadoramunicipio: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2CDMUNICIPIO: TcxGridDBColumn;
    cxGridDBTableView2PRFRETE: TcxGridDBColumn;
    actabrirveiculo: TAction;
    actabrirveiculo2: TAction;
    actabrirveiculo3: TAction;
    sdsDTCADASTRO: TDateField;
    cdsDTCADASTRO: TDateField;
    lbldtcadastro: TLabel;
    edtdtcadastro: TcxDBDateEdit;
    lblcdtpcnh: TLabel;
    cbxcdtpcnh: TcxDBLookupComboBox;
    sdsCDTPCNH: TIntegerField;
    cdsCDTPCNH: TIntegerField;
    sdsDTVENCIMENTOCNH: TDateField;
    cdsDTVENCIMENTOCNH: TDateField;
    lbldtvencimentocnh: TLabel;
    edtdtvencimentocnh: TcxDBDateEdit;
    chkbonenviarpdf: TcxDBCheckBox;
    actitconttransportadora: TAction;
    actopcoes: TAction;
    btnopcoes: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton2: TdxBarButton;
    actittransportadoraemail: TAction;
    dxBarButton3: TdxBarButton;
    sdsCDTRANSPORTADORA: TLargeintField;
    sdsCDEMPRESA: TLargeintField;
    sdsNMCONTATO: TStringField;
    cdsCDTRANSPORTADORA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsNMCONTATO: TStringField;
    sdstransportadoramunicipioCDTRANSPORTADORA: TLargeintField;
    sdstransportadoramunicipioCDEMPRESA: TLargeintField;
    cdstransportadoramunicipioCDTRANSPORTADORA: TLargeintField;
    cdstransportadoramunicipioCDEMPRESA: TLargeintField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxTpPessoaChange(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actImprimirExecute(Sender: TObject);
    procedure actabrirentradaExecute(Sender: TObject);
    procedure actabrirsaidaExecute(Sender: TObject);
    procedure actconsultaentradaExecute(Sender: TObject);
    procedure actconsultasaidaExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure edtnomeExit(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure rdbtppessoaPropertiesChange(Sender: TObject);
    procedure grdconsultaordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdconsultaautpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdconsultaadntfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdconsultaprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdconsultapedidomaterialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdconsultaitordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdconsultaentradaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdsttransportadoraEnter(Sender: TObject);
    procedure edtcdveiculoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdveiculoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdveiculocarretaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdveiculocarreta2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDVEICULOValidate(Sender: TField);
    procedure cdsCDVEICULOCARRETAValidate(Sender: TField);
    procedure cdsCDVEICULOCARRETA2Validate(Sender: TField);
    procedure actimprimircadastroExecute(Sender: TObject);
    procedure cdstransportadoramunicipioNewRecord(DataSet: TDataSet);
    procedure cdstransportadoramunicipioBeforePost(DataSet: TDataSet);
    procedure cdsNUFONE1Validate(Sender: TField);
    procedure cdsNUFONE2Validate(Sender: TField);
    procedure cdsNUFONE3Validate(Sender: TField);
    procedure cdsNUFAXValidate(Sender: TField);
    procedure cdsNMTRANSPORTADORAValidate(Sender: TField);
    procedure actabrirveiculoExecute(Sender: TObject);
    procedure txtNUPLACAVEICULODblClick(Sender: TObject);
    procedure actabrirveiculo2Execute(Sender: TObject);
    procedure actabrirveiculo3Execute(Sender: TObject);
    procedure txtNUPLACACARRETADblClick(Sender: TObject);
    procedure txtNUPLACACARRETA2DblClick(Sender: TObject);
    procedure edtcdveiculocarretaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdveiculocarreta2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsDTNASCIMENTOValidate(Sender: TField);
    procedure cdsNUCEPValidate(Sender: TField);
    procedure cdsCDUFValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actitconttransportadoraExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actittransportadoraemailExecute(Sender: TObject);
  private      { Private declarations }
    fornecedor : TFornecedor;
    procedure SetQuery(tbl:string);
    procedure set_mascara_numero_fone_de_acordo_com_estado;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:LargeInt):boolean;
  end;

var
  frmTransportadora: TfrmTransportadora;

implementation

uses uDtmMain, uMain, uimprimirrelatoriopadrao, ulocalizarveiculo;

{$R *.DFM}

const
  tbl      = 'transportadora';
  exibe    = 'Transportadora';
  artigoI  = 'a';

procedure TfrmTransportadora.set_mascara_numero_fone_de_acordo_com_estado;
begin
  if BooleandoCodigo(_uf, cdsCDUF.AsString, _bodigito9) then
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
    edtnufax.Properties.EditMask   := _99_99999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
    edtnufax.Properties.EditMask   := _99_9999_9999;
  end;
end;

function TfrmTransportadora.Abrir(codigo:LargeInt):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmTransportadora.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmTransportadora.actNovoExecute(Sender: TObject);
begin
  if registro.Novo(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmTransportadora.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmTransportadora.actSalvarExecute(Sender: TObject);
begin
  if (edtdtnascimento.Date > 0) and (YearsBetween(edtdtnascimento.Date, dtbanco) < 18) then
  begin
    MessageDlg('Transportadora deve ter mais que 18 anos.', mtinformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    edtdtnascimento.SetFocus;
    Abort;
  end;
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmTransportadora.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmTransportadora.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmTransportadora.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmTransportadora.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmTransportadora.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmTransportadora.cbxTpPessoaChange(Sender: TObject);
begin
  if rdbTpPessoa.ItemIndex = -1 then
  begin
    exit
  end;
  if rdbTpPessoa.ItemIndex = 0 then
  begin
    gbxJuridica.BringToFront
  end
  else if rdbTpPessoa.ItemIndex = 1 then
  begin
    gbxFisica.BringToFront;
  end;
  gbxJuridica.Enabled := rdbTpPessoa.ItemIndex = 0;
  gbxJuridica.Visible := rdbTpPessoa.ItemIndex = 0;
  lblrzsocial.visible := rdbTpPessoa.ItemIndex = 0;
  edtrzsocial.Visible := rdbTpPessoa.ItemIndex = 0;
  gbxFisica.Enabled   := rdbTpPessoa.ItemIndex <> 0;
  gbxFisica.Visible   := rdbTpPessoa.ItemIndex <> 0;
end;

procedure TfrmTransportadora.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmTransportadora.FormShow(Sender: TObject);
begin
  fornecedor := TFornecedor.create;
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmTransportadora.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmTransportadora.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmTransportadora.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmTransportadora.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmTransportadora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMain.bmg.Unmerge(bmg1);
  Action := caFree;
end;

procedure TfrmTransportadora.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmTransportadora.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmTransportadora.actitconttransportadoraExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itconttransportadora))), cds.FieldByName(_cdtransportadora).AsLargeInt, _cdtransportadora);
end;

procedure TfrmTransportadora.actittransportadoraemailExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_ittransportadoraemail))), cds.FieldByName(_cdtransportadora).AsLargeInt, _cdtransportadora);
end;

procedure TfrmTransportadora.actabrirentradaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmTransportadora.actabrirsaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmTransportadora.actconsultaentradaExecute(Sender: TObject);
begin
  SetQuery(_entrada);
end;

procedure TfrmTransportadora.actconsultasaidaExecute(Sender: TObject);
begin
  SetQuery(_saida);
end;

procedure TfrmTransportadora.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmTransportadora.FormDestroy(Sender: TObject);
begin
  fornecedor.free;
  registro.destroy;
end;

procedure TfrmTransportadora.SetQuery(tbl:string);
var
  sql, sql2 : string;
begin
  sql2 := '';
  cdsconsulta.Close;
  cdsitconsulta.Close;
  if cds.fieldbyname(_CDTRANSPORTADORA).asstring = '' then
  begin
    exit;
  end;
  grdconsultaLevel4.Visible := False;
  if tbl = _entrada then
  begin
    sql := 'SELECT e.CDENTRADA'+
                 ',e.NUENTRADA'+
                 ',e.DTEMISSAO'+
                 ',e.nudocfiscalicms'+
                 ',e.dtsaida'+
                 ',c.nmcondpagto'+
                 ',e.vlproduto'+
                 ',e.VLTOTAL'+
                 ',e.vlfrete'+
                 ',e.vlbaseicms'+
                 ',e.vlicms'+
                 ',e.vlicmssubtrib'+
                 ',e.vlbaseicmssubtrib'+
                 ',e.vlipi'+
                 ',e.vliss '+
           'FROM ENTRADA e '+
           'left join condpagto c on c.cdcondpagto=e.cdcondpagto and e.cdempresa=c.cdempresa '+
           'where e.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and e.cdtransportadora='+cds.fieldbyname(_CDTRANSPORTADORA).asstring;
    sql2:= 'SELECT i.CDENTRADA'+
                 ',i.CDDIGITADO'+
                 ',p.NMPRODUTO'+
                 ',i.QTITEM'+
                 ',i.VLUNITARIO'+
                 ',i.VLTOTAL'+
                 ',i.vlbaseicms'+
                 ',i.alicms'+
                 ',i.vlicms'+
                 ',i.vlipi'+
                 ',i.vliss '+
           'FROM ENTRADA e '+
           'inner join itentrada i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa '+
           'LEFT JOIN PRODUTO p ON P.CDPRODUTO=i.CDPRODUTO and p.cdempresa=i.cdempresa '+
           'where e.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and e.cdtransportadora='+cds.fieldbyname(_CDTRANSPORTADORA).asstring;
    grdconsultaLevel1.GridView := grdconsultaentrada;
    grdconsultaLevel4.GridView := grdconsultaitentrada;
  end
  else if tbl = _saida then
  begin
    sql := 'SELECT s.CDsaida cdentrada '+
                 ',s.NUsaida nuENTRADA'+
                 ',s.nudocfiscalicms'+
                 ',s.DTEMISSAO'+
                 ',s.dtsaida'+
                 ',c.nmcondpagto'+
                 ',s.vlproduto'+
                 ',s.VLTOTAL'+
                 ',s.vlfrete'+
                 ',s.vlbaseicms'+
                 ',s.vlicms'+
                 ',s.vlicmssubtrib'+
                 ',s.vlbaseicmssubtrib'+
                 ',s.vlipi'+
                 ',s.vliss '+
           'FROM saida s '+
           'left join condpagto c on c.cdcondpagto=s.cdcondpagto and s.cdempresa=c.cdempresa '+
           'where s.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and s.cdtransportadora='+cds.fieldbyname(_CDTRANSPORTADORA).asstring;
    sql2:= 'SELECT i.CDsaida cdENTRADA'+
                 ',i.CDDIGITADO'+
                 ',p.NMPRODUTO'+
                 ',i.QTITEM'+
                 ',i.VLUNITARIO'+
                 ',i.VLTOTAL'+
                 ',i.vlbaseicms'+
                 ',i.alicms'+
                 ',i.vlicms'+
                 ',i.vlipi'+
                 ',i.vliss '+
           'FROM saida s '+
           'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
           'LEFT JOIN PRODUTO p ON P.CDPRODUTO=i.CDPRODUTO and p.cdempresa=i.cdempresa '+
           'where s.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and s.cdtransportadora='+cds.fieldbyname(_CDTRANSPORTADORA).asstring;
    grdconsultaLevel1.GridView := grdconsultaentrada;
    grdconsultaLevel4.GridView := grdconsultaitentrada;
  end;
  sdsconsulta.CommandText := sql;
  cdsconsulta.SetProvider(dspconsulta);
  cdsconsulta.Open;
  if sql2 <> '' then
  begin
    grdconsultaLevel4.Visible := true;
    sdsitconsulta.CommandText := sql2;
    cdsitconsulta.SetProvider(dspitconsulta);
    cdsitconsulta.Open;
  end;
end;

procedure TfrmTransportadora.FormDeactivate(Sender: TObject);
begin
  frmMain.bmg.Unmerge(bmg1);
end;

procedure TfrmTransportadora.cdsAfterScroll(DataSet: TDataSet);
begin
  //registro.setStatus(tbl, cds);
  if btnentrada.Down then
  begin
    setquery(_entrada)
  end
  else if btnsaida.Down then
  begin
    setquery(_saida);
  end;
  cbxcdufExit(cbxcduf);
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmTransportadora.cdsBeforePost(DataSet: TDataSet);
begin
  if Copy(cdsRZSOCIAL.AsString, 1, 1) = ' ' then
  begin
    MessageDlg('Razão Social não pode conter espaço no início.'#13'Altere a razão social para poder continuar.', mtInformation, [mbOK], 0);
    cdsRZSOCIAL.FocusControl;
    Abort;
  end;
  ConsisteCNPJ(dataset, tbl, exibe, empresa.fornecedor.BOCNPJrepetido);
  ConsisteCPF (dataset, tbl, exibe, empresa.fornecedor.BOCNPJrepetido);
  if cdsTPPESSOA.AsString = _J then
  begin
    if empresa.fornecedor.bocnpjobrigatorio and ((cdsCDPAIS.AsInteger = _nscpais) or (cdsCDPAIS.asstring = '')) then
    begin
      if cdsNUCNPJ.asstring = '' then
      begin
        gbxJuridica.BringToFront;
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CNPJ]), mtinformation, [mbok], 0);
        cdsNUCNPJ.FocusControl;
        abort;
      end;
      if cdsNUINSCEST.AsString = '' then
      begin
        gbxJuridica.BringToFront;
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_inscricao_estadual]), mtinformation, [mbok], 0);
        cdsNUINSCEST.FocusControl;
        abort;
      end;
    end;
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
  if empresa.transportadora.bonuinss and cdsNUINSS.IsNull and (cdstppessoa.AsString = _f) then
  begin
    messagedlg('Número do INSS é um campo obrigatório.', mtinformation, [mbok], 0);
    pgc.ActivePage := tbscadastro;
    cdsNUINSS.FocusControl;
    abort;
  end;
  if Dataset.State = dsinsert then
  begin
    if registro.codigoinsercao = '' then
    begin
      if Empresa.transportadora.bocdreduzido or empresa.livro.bopdv then
      begin
        registro.codigoinsercao := GerarCodigo(tbl);
      end
      else
      begin
        if cdsTPPESSOA.AsString = _J then
        begin
          if cdsNUCNPJ.AsString <> '' then
          begin
            registro.codigoinsercao := removercaracteres(cdsNUCNPJ.AsString)
          end
          else
          begin
            registro.codigoinsercao := GerarCodigo(tbl);
          end;
        end
        else if cdsTPPESSOA.AsString = _F then
        begin
          if cdsNUCPF.AsString <> '' then
          begin
            registro.codigoinsercao := removercaracteres(cdsNUCPF.AsString)
          end
          else
          begin
            registro.codigoinsercao := GerarCodigo(tbl);
          end;
        end
        else
        begin
          registro.codigoinsercao := GerarCodigo(tbl);
        end;
      end;
    end;
    cds.fieldbyname(_CDTRANSPORTADORA).Asstring := registro.codigoinsercao;
    edtcodigo.text               := registro.codigoinsercao;
    if cdsdtcadastro.isnull then
    begin
      cdsdtcadastro.asdatetime := dtbanco;
    end;
  end;
  registro.set_update(cds);
end;

procedure TfrmTransportadora.edtnomePropertiesChange(Sender: TObject);
begin
  if ((cds.State=dsedit) or (cds.State=dsinsert)) and (cdsTPPESSOA.AsString = _F) then
  begin
    cdsrzsocial.asstring := tedit(sender).text;
  end;
  if cds.fieldbyname(_CDTRANSPORTADORA).AsLargeInt > 0 then
  begin
    pnl.Caption := exibe+' '+ cds.fieldbyname(_CDTRANSPORTADORA).asstring + ' - ' + edtnome.Text;
  end;
end;

procedure TfrmTransportadora.edtnomeExit(Sender: TObject);
begin
  colorexit(sender);
  if ((cds.State = dsedit) or (cds.State = dsinsert)) and ((cdsRZSOCIAL.IsNull and (not cdsNMTRANSPORTADORA.isnull)) or (cdsTPPESSOA.AsString = _F)) then
  begin
    cdsRZSOCIAL.asstring := cdsNMTRANSPORTADORA.asstring;
  end;
end;

procedure TfrmTransportadora.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsCDSTTRANSPORTADORA.AsInteger := qregistro.Codigo_status_novo(tbl);
  cdsTPPESSOA.asstring := _J;
  if cdsTPPESSOA.asstring = ''  then
  begin
    exit
  end
  else if cdsTPPESSOA.asstring = _J then
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

procedure TfrmTransportadora.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmTransportadora.cbxcdufExit(Sender: TObject);
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

procedure TfrmTransportadora.rdbtppessoaPropertiesChange(Sender: TObject);
begin
  TQForm.ConfigurarRDBTpPessoaPropertiesChange(rdbtppessoa, gbxJuridica, lblrzsocial, gbxFisica);
end;

procedure TfrmTransportadora.grdconsultaordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __keyexportarexcel then
  begin
    exportarexcel(grdconsulta);
  end;
end;

procedure TfrmTransportadora.grdconsultaautpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __keyexportarexcel then
  begin
    exportarexcel(grdconsulta);
  end;
end;

procedure TfrmTransportadora.grdconsultaadntfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __keyexportarexcel then
  begin
    exportarexcel(grdconsulta);
  end;
end;

procedure TfrmTransportadora.grdconsultaprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __keyexportarexcel then
  begin
    exportarexcel(grdconsulta);
  end;
end;

procedure TfrmTransportadora.grdconsultapedidomaterialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __keyexportarexcel then
  begin
    exportarexcel(grdconsulta);
  end;
end;

procedure TfrmTransportadora.grdconsultaitordcompraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __keyexportarexcel then
  begin
    exportarexcel(grdconsulta);
  end;
end;

procedure TfrmTransportadora.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmTransportadora.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmTransportadora.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmTransportadora.grdconsultaentradaDblClick(Sender: TObject);
begin
  actabrirentradaExecute(actabrirentrada);
end;

procedure TfrmTransportadora.FormCreate(Sender: TObject);
begin
  cbxcduf.Properties.ListSource               := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource        := abrir_tabela(_municipio);
  cbxcdsttransportadora.Properties.ListSource := abrir_tabela(_sttransportadora);
  cbxcdpais.Properties.ListSource             := abrir_tabela(_pais);
  cbxcdtpcnh.Properties.ListSource            := abrir_tabela(_tpcnh);
  TcxLookupComboBoxProperties(cxGridDBTableView2CDMUNICIPIO.Properties).ListSource := abrir_tabela(_municipio);
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure TfrmTransportadora.cbxcdsttransportadoraEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_sttransportadora);
end;

procedure TfrmTransportadora.edtcdveiculoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdveiculoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmTransportadora.edtcdveiculoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarveiculo;
  if codigo = 0 then
  begin
    Exit;
  end;
  cdsCDVEICULO.asInteger := codigo;
end;

procedure TfrmTransportadora.edtcdveiculocarretaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarveiculo;
  if codigo = 0 then
  begin
    Exit;
  end;
  cdsCDVEICULOCARRETA.asInteger := codigo;
end;

procedure TfrmTransportadora.edtcdveiculocarreta2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizarveiculo;
  if codigo = 0 then
  begin
    Exit;
  end;
  cdsCDVEICULOCARRETA2.asInteger := codigo;
end;

procedure TfrmTransportadora.cdsCDVEICULOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    exit;
  end;
  cdsNUPLACAVEICULO.AsString := NomedoCodigo(_veiculo, Sender.AsString, _nuplaca);
  if cdsNUPLACAVEICULO.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(__veiculo)]), mterror, [mbok], 0);
    cdsCDVEICULO.FocusControl;
    Abort;
  end;
end;

procedure TfrmTransportadora.cdsCDVEICULOCARRETAValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    exit;
  end;
  cdsNUPLACACARRETA.AsString := NomedoCodigo(_veiculo, Sender.AsString, _nuplaca);
  if cdsNUPLACACARRETA.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(__veiculo)]), mterror, [mbok], 0);
    cdsCDVEICULOCARRETA.FocusControl;
    Abort;
  end;
end;

procedure TfrmTransportadora.cdsCDUFValidate(Sender: TField);
begin
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmTransportadora.cdsCDVEICULOCARRETA2Validate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    exit;
  end;
  cdsNUPLACACARRETA2.AsString := NomedoCodigo(_veiculo, Sender.AsString, _nuplaca);
  if cdsNUPLACACARRETA2.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(__veiculo)]), mterror, [mbok], 0);
    cdsCDVEICULOCARRETA2.FocusControl;
    Abort;
  end;
end;

procedure TfrmTransportadora.actimprimircadastroExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(382, cds.fieldbyname(_CDTRANSPORTADORA).Asstring);
end;

procedure TfrmTransportadora.cdstransportadoramunicipioNewRecord(DataSet: TDataSet);
begin
  cdstransportadoramunicipioCDTRANSPORTADORAMUNICIPIO.AsString := GerarCodigo(_transportadora+_municipio);
end;

procedure TfrmTransportadora.cdstransportadoramunicipioBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdstransportadoramunicipio);
end;

procedure TfrmTransportadora.cdsNUFONE1Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmTransportadora.cdsNUFONE2Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmTransportadora.cdsNUFONE3Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmTransportadora.cdsNUCEPValidate(Sender: TField);
begin
  if consistircep(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmTransportadora.cdsNUFAXValidate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmTransportadora.cdsNMTRANSPORTADORAValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmTransportadora.actabrirveiculoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmTransportadora.txtNUPLACAVEICULODblClick(Sender: TObject);
begin
  actabrirveiculoExecute(actabrirveiculo);
end;

procedure TfrmTransportadora.actabrirveiculo2Execute(Sender: TObject);
begin
  frmMain.AbrirDireto(_cdveiculo+_carreta, TAction(Sender), cds, cds);
end;

procedure TfrmTransportadora.actabrirveiculo3Execute(Sender: TObject);
begin
  frmMain.AbrirDireto(_cdveiculo+_carreta+_2, TAction(Sender), cds, cds);
end;

procedure TfrmTransportadora.txtNUPLACACARRETADblClick(Sender: TObject);
begin
  actabrirveiculo2Execute(actabrirveiculo2);
end;

procedure TfrmTransportadora.txtNUPLACACARRETA2DblClick(Sender: TObject);
begin
  actabrirveiculo3Execute(actabrirveiculo3);
end;

procedure TfrmTransportadora.edtcdveiculocarretaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdveiculocarretaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmTransportadora.edtcdveiculocarreta2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdveiculocarreta2PropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmTransportadora.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmTransportadora.cdsDTNASCIMENTOValidate(Sender: TField);
begin
  registro.consistir_data_nascimento(Sender);
end;

end.
