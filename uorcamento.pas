unit uorcamento;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Classes, ActnList, ComCtrls, ExtCtrls, StdCtrls, ToolWin, Mask, messages,
  sysutils, dialogs, graphics, Controls, Buttons, windows, types, ShellAPI,
  DBCtrls, sqlexpr, FMTBcd, DBClient, Provider, DB, Grids,
  uconstantes, ustrings, uregistro, ulocalizar, urotinas,
  uexportarexcel, udatahora, ulocalizarcliente, ulocalizarproduto,
  uAssinaturaDigital, unumero,
  classeRegistro, classeretornasql, classegerar, classeconsiste,
  classeregistrainformacao, classeform, classeorcamento, classeexecutasql, classecliente,
  classeproduto, classeusuario, classecondpagto, classeempresa, classeequipamento,
  classefuncionario, classerepresentante, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxCurrencyEdit,
  cxContainer, dxBar, cxClasses, cxLabel, cxCheckBox, cxDBEdit, cxCalendar, cxSpinEdit,
  cxTextEdit, cxGroupBox, cxMemo, cxSplitter, cxDBLabel, cxMaskEdit, cxDropDownEdit,
  cxCalc, cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxPC, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtons,
  cxVGrid, cxDBVGrid, cxInplaceContainer, cxGridChartView, cxGridDBChartView,
  cxBlobEdit, cxPCdxBarPopupMenu, cxTimeEdit, cxNavigator,
  cxListView, dxBarBuiltInMenu;

type
  TfrmOrcamento = class(TForm)
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
    actAbrirCliente: TAction;
    actabrirproduto: TAction;
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
    dxBarSubItem1: TdxBarSubItem;
    actabrirfuncionario: TAction;
    actabrirtransportadora: TAction;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    tbsobsinterna: TcxTabSheet;
    pnl1: TPanel;
    gbxcliente: TcxGroupBox;
    lblcodigo: TLabel;
    gbxoutras: TcxGroupBox;
    lblrepresentante: TLabel;
    lblcotacao: TLabel;
    lbltpcobranca: TLabel;
    lblcondpagto: TLabel;
    lbltporcamento: TLabel;
    Label6: TLabel;
    lblnudias: TLabel;
    lblentrega: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    pnl: TcxLabel;
    bvl1: TBevel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    edtCDCLIENTE: TcxDBButtonEdit;
    edtdtemissao: TcxDBDateEdit;
    edtdtprventrega: TcxDBDateEdit;
    edtnudias: TcxDBSpinEdit;
    edtnucotacao: TcxDBTextEdit;
    lblDTFECHAMENTO: TcxDBLabel;
    edtcodigo: TcxTextEdit;
    sdsdetail: TSQLDataSet;
    cdsdetail: TClientDataSet;
    dtsdetail: TDataSource;
    memdsobservacao: TcxDBMemo;
    memDSOBSINTERNA: TcxDBMemo;
    grd: TcxGrid;
    gbxfrete: TcxGroupBox;
    lbltransportadora: TLabel;
    lblvlfrete: TLabel;
    edtvlfrete: TcxDBCalcEdit;
    lbltpfrete: TLabel;
    Label14: TLabel;
    pnl2: TPanel;
    splcalculo: TcxSplitter;
    pgccalculo: TcxPageControl;
    dts1: TDataSource;
    grlgrddetail1Level1: TcxGridLevel;
    tbv: TcxGridDBBandedTableView;
    tbvCDTPGRADEVALOR: TcxGridDBBandedColumn;
    tbvQTITEM: TcxGridDBBandedColumn;
    tbvVLUNITARIO: TcxGridDBBandedColumn;
    tbvQTATENDIDA: TcxGridDBBandedColumn;
    tbvCDDIGITADO: TcxGridDBBandedColumn;
    tbvVLTOTAL: TcxGridDBBandedColumn;
    tbvVLIPI: TcxGridDBBandedColumn;
    tbvALIPI: TcxGridDBBandedColumn;
    tbvVLTOTALCIPI: TcxGridDBBandedColumn;
    tbvDTPRVENTREGA: TcxGridDBBandedColumn;
    tbvDSFORMULA: TcxGridDBBandedColumn;
    tbvDSDESENHO: TcxGridDBBandedColumn;
    tbvALMVA: TcxGridDBBandedColumn;
    tbvVLICMSSUBTRIB: TcxGridDBBandedColumn;
    tbvVLFRETE: TcxGridDBBandedColumn;
    tbvVLDESCONTO: TcxGridDBBandedColumn;
    tbvALICMS: TcxGridDBBandedColumn;
    tbvALICMSSUBTRIB: TcxGridDBBandedColumn;
    tbvNUCOTACAO: TcxGridDBBandedColumn;
    tbvNUITEM: TcxGridDBBandedColumn;
    dts2: TDataSource;
    tbvVLICMS: TcxGridDBBandedColumn;
    colgrddetail1DBBandedTableView1QTLARGURA1: TcxGridDBBandedColumn;
    colgrddetail1DBBandedTableView1QTCOMPRIMENTO1: TcxGridDBBandedColumn;
    colgrddetail1DBBandedTableView1QTALTURA1: TcxGridDBBandedColumn;
    colgrddetail1DBBandedTableView1QTPECA: TcxGridDBBandedColumn;
    cbxcdtporcamento: TcxDBLookupComboBox;
    cbxcdcondpagto: TcxDBLookupComboBox;
    cbxcdtpcobranca: TcxDBLookupComboBox;
    cbxcdtransportadora: TcxDBLookupComboBox;
    cbxcdrepresentante: TcxDBLookupComboBox;
    cbxcdtpfrete: TcxDBLookupComboBox;
    sdsCDORCAMENTO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDSTORCAMENTO: TIntegerField;
    sdsCDTPORCAMENTO: TIntegerField;
    sdsCDCONDPAGTO: TIntegerField;
    sdsCDREPRESENTANTE: TIntegerField;
    sdsCDFUNCIONARIOVENDEDOR: TIntegerField;
    sdsCDFUNCIONARIOORCAMENTISTA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsDTEMISSAO: TDateField;
    sdsDTPRVENTREGA: TDateField;
    sdsDTVALIDADE: TDateField;
    sdsDTPRORROGACAO: TDateField;
    sdsNUCOTACAO: TStringField;
    sdsVLTOTAL: TFMTBCDField;
    sdsVLPRODUTO: TFMTBCDField;
    sdsVLICMS: TFMTBCDField;
    sdsCDTPCOBRANCA: TIntegerField;
    sdsPRDESCONTO: TFloatField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsVLTOTALSDESCONTO: TFMTBCDField;
    sdsDSOBSERVACAO: TBlobField;
    sdsDSOBSINTERNA: TBlobField;
    sdsNUDIAS: TIntegerField;
    sdsVLFRETE: TFMTBCDField;
    sdsQTAPROVADO: TFloatField;
    sdsDTFECHAMENTO: TDateField;
    sdsALICMS: TFloatField;
    sdsVLIPI: TFMTBCDField;
    sdsVLTOTALCIPI: TFMTBCDField;
    sdsPSBRUTO: TFloatField;
    sdsVLICMSSUBTRIB: TFMTBCDField;
    sdsRZSOCIAL: TStringField;
    sdsNMCLIENTE: TStringField;
    cdsCDORCAMENTO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDSTORCAMENTO: TIntegerField;
    cdsCDTPORCAMENTO: TIntegerField;
    cdsCDCONDPAGTO: TIntegerField;
    cdsCDREPRESENTANTE: TIntegerField;
    cdsCDFUNCIONARIOVENDEDOR: TIntegerField;
    cdsCDFUNCIONARIOORCAMENTISTA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsDTEMISSAO: TDateField;
    cdsDTPRVENTREGA: TDateField;
    cdsDTVALIDADE: TDateField;
    cdsDTPRORROGACAO: TDateField;
    cdsNUCOTACAO: TStringField;
    cdsVLTOTAL: TFMTBCDField;
    cdsVLPRODUTO: TFMTBCDField;
    cdsVLICMS: TFMTBCDField;
    cdsCDTPCOBRANCA: TIntegerField;
    cdsPRDESCONTO: TFloatField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsVLTOTALSDESCONTO: TFMTBCDField;
    cdsDSOBSERVACAO: TBlobField;
    cdsDSOBSINTERNA: TBlobField;
    cdsNUDIAS: TIntegerField;
    cdsVLFRETE: TFMTBCDField;
    cdsQTAPROVADO: TFloatField;
    cdsDTFECHAMENTO: TDateField;
    cdsALICMS: TFloatField;
    cdsVLTOTALCIPI: TFMTBCDField;
    cdsPSBRUTO: TFloatField;
    cdsVLICMSSUBTRIB: TFMTBCDField;
    cdsRZSOCIAL: TStringField;
    cdsNMCLIENTE: TStringField;
    cdssdsdetail: TDataSetField;
    sdsdetailCDITORCAMENTO: TIntegerField;
    sdsdetailCDORCAMENTO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailCDTPICMS: TIntegerField;
    sdsdetailCDTPIPI: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailQTAPROVADO: TFloatField;
    sdsdetailVLUNITARIO: TFMTBCDField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailPRLUCRO: TFloatField;
    sdsdetailALICMS: TFloatField;
    sdsdetailVLICMS: TFMTBCDField;
    sdsdetailALIPI: TFloatField;
    sdsdetailVLIPI: TFMTBCDField;
    sdsdetailDSDESENHO: TStringField;
    sdsdetailDSPOSICAODESENHO: TStringField;
    sdsdetailNUREVISAODESENHO: TStringField;
    sdsdetailNUDIASENTREGA: TIntegerField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailCDTPGRADEVALOR: TIntegerField;
    sdsdetailVLTOTALCIPI: TFMTBCDField;
    sdsdetailDTPRVENTREGA: TDateField;
    sdsdetailQTLARGURA1: TFloatField;
    sdsdetailQTALTURA1: TFloatField;
    sdsdetailQTCOMPRIMENTO1: TFloatField;
    sdsdetailDSFORMULA: TStringField;
    sdsdetailALMVA: TFloatField;
    sdsdetailVLICMSSUBTRIB: TFMTBCDField;
    sdsdetailVLFRETE: TFMTBCDField;
    sdsdetailVLDESCONTO: TFMTBCDField;
    sdsdetailALICMSSUBTRIB: TFloatField;
    sdsdetailNUCOTACAO: TStringField;
    sdsdetailNUITEM: TStringField;
    sdsdetailQTPECA: TFloatField;
    sdsdetailNMPRODUTO: TStringField;
    sdsdetailNMUNIDADE: TStringField;
    cdsdetailCDITORCAMENTO: TIntegerField;
    cdsdetailCDORCAMENTO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailCDTPICMS: TIntegerField;
    cdsdetailCDTPIPI: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailQTAPROVADO: TFloatField;
    cdsdetailVLUNITARIO: TFMTBCDField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailPRLUCRO: TFloatField;
    cdsdetailALICMS: TFloatField;
    cdsdetailVLICMS: TFMTBCDField;
    cdsdetailALIPI: TFloatField;
    cdsdetailVLIPI: TFMTBCDField;
    cdsdetailDSDESENHO: TStringField;
    cdsdetailDSPOSICAODESENHO: TStringField;
    cdsdetailNUREVISAODESENHO: TStringField;
    cdsdetailNUDIASENTREGA: TIntegerField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailCDTPGRADEVALOR: TIntegerField;
    cdsdetailVLTOTALCIPI: TFMTBCDField;
    cdsdetailDTPRVENTREGA: TDateField;
    cdsdetailQTLARGURA1: TFloatField;
    cdsdetailQTALTURA1: TFloatField;
    cdsdetailQTCOMPRIMENTO1: TFloatField;
    cdsdetailDSFORMULA: TStringField;
    cdsdetailALMVA: TFloatField;
    cdsdetailVLICMSSUBTRIB: TFMTBCDField;
    cdsdetailVLFRETE: TFMTBCDField;
    cdsdetailVLDESCONTO: TFMTBCDField;
    cdsdetailALICMSSUBTRIB: TFloatField;
    cdsdetailNUCOTACAO: TStringField;
    cdsdetailNUITEM: TStringField;
    cdsdetailQTPECA: TFloatField;
    cdsdetailNMPRODUTO: TStringField;
    cdsdetailNMUNIDADE: TStringField;
    lblfuncioario: TLabel;
    sdsCDFUNCIONARIO: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    actimprimirorcamento: TAction;
    dxBarButton1: TdxBarButton;
    edtdsreferencia: TcxDBTextEdit;
    lbldsreferencia: TLabel;
    sdsDSREFERENCIA: TStringField;
    cdsDSREFERENCIA: TStringField;
    sdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailDSOBSERVACAO: TBlobField;
    tbvDSOBSERVACAO: TcxGridDBBandedColumn;
    actgerarpedido: TAction;
    gbxtotal: TcxGroupBox;
    lbldesconto: TLabel;
    edtprdesconto: TcxDBCalcEdit;
    edtvldesconto: TcxDBCalcEdit;
    Label11: TLabel;
    txtvltotal: TcxDBLabel;
    lbldtvalidade: TLabel;
    edtdtvalidade: TcxDBDateEdit;
    tbsENTREGA: TcxTabSheet;
    Label7: TLabel;
    gbxComercial: TcxGroupBox;
    Label10: TLabel;
    Label9: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    edtnufax: TcxDBMaskEdit;
    edtnufone: TcxDBMaskEdit;
    edtnucxpostal: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    btnfindentrega: TcxButton;
    btn1: TcxButton;
    edtdsreferencia2: TcxDBTextEdit;
    actlocalizarentrega: TAction;
    actlimparentrega: TAction;
    tbsmaterial: TcxTabSheet;
    tbscustos: TcxTabSheet;
    tbsrecursos: TcxTabSheet;
    tbvNMPRODUTO: TcxGridDBBandedColumn;
    sdsDSENDERECO: TStringField;
    sdsDSNUMERO: TStringField;
    sdsDSCOMPLEMENTO: TStringField;
    sdsNMBAIRRO: TStringField;
    sdsNUCXPOSTAL: TStringField;
    sdsNUFONE: TStringField;
    sdsNUFAX: TStringField;
    sdsNUCEP: TStringField;
    cdsDSENDERECO: TStringField;
    cdsDSNUMERO: TStringField;
    cdsDSCOMPLEMENTO: TStringField;
    cdsNMBAIRRO: TStringField;
    cdsNUCXPOSTAL: TStringField;
    cdsNUFONE: TStringField;
    cdsNUFAX: TStringField;
    cdsNUCEP: TStringField;
    tbvCDTPICMS: TcxGridDBBandedColumn;
    tbvCDTPIPI: TcxGridDBBandedColumn;
    sdsdetailDSDESENHOPOSICAO: TStringField;
    sdsdetailDSDESENHOREVISAO: TStringField;
    cdsdetailDSDESENHOPOSICAO: TStringField;
    cdsdetailDSDESENHOREVISAO: TStringField;
    tbvDSDESENHOREVISAO: TcxGridDBBandedColumn;
    tbvDSDESENHOPOSICAO: TcxGridDBBandedColumn;
    sdsitorcamentorecurso: TSQLDataSet;
    cdsitorcamentorecurso: TClientDataSet;
    dtsitorcamentorecurso: TDataSource;
    cdsitorcamentorecursoCDITORCAMENTORECURSO: TIntegerField;
    cdsitorcamentorecursoCDITORCAMENTO: TIntegerField;
    cdsitorcamentorecursoCDUSUARIOI: TIntegerField;
    cdsitorcamentorecursoCDUSUARIOA: TIntegerField;
    cdsitorcamentorecursoCDCOMPUTADORI: TIntegerField;
    cdsitorcamentorecursoCDCOMPUTADORA: TIntegerField;
    cdsitorcamentorecursoCDTPEQUIPAMENTO: TIntegerField;
    cdsitorcamentorecursoTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentorecursoTSALTERACAO: TSQLTimeStampField;
    cdsitorcamentorecursoQTPREPARACAO: TFloatField;
    cdsitorcamentorecursoQTOPERACAO: TFloatField;
    cdsitorcamentorecursoVLPREPARACAO: TFMTBCDField;
    cdsitorcamentorecursoVLOPERACAO: TFMTBCDField;
    cdsitorcamentorecursoVLTOTALOPERACAO: TFMTBCDField;
    grdrecurso: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    tbvrecurso: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    sdsitorcamentomaterial: TSQLDataSet;
    cdsitorcamentomaterial: TClientDataSet;
    dtsitorcamentomaterial: TDataSource;
    cdsitorcamentomaterialCDITORCAMENTOMATERIAL: TIntegerField;
    cdsitorcamentomaterialCDITORCAMENTO: TIntegerField;
    cdsitorcamentomaterialCDUSUARIOI: TIntegerField;
    cdsitorcamentomaterialCDUSUARIOA: TIntegerField;
    cdsitorcamentomaterialCDCOMPUTADORI: TIntegerField;
    cdsitorcamentomaterialCDCOMPUTADORA: TIntegerField;
    cdsitorcamentomaterialCDPRODUTO: TIntegerField;
    cdsitorcamentomaterialTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentomaterialTSALTERACAO: TSQLTimeStampField;
    cdsitorcamentomaterialQTITEM: TFloatField;
    cdsitorcamentomaterialQTPESOUNITARIO: TFloatField;
    cdsitorcamentomaterialVLUNITARIO: TFMTBCDField;
    cdsitorcamentomaterialVLTOTAL: TFMTBCDField;
    cdsitorcamentomaterialCDDIGITADO: TStringField;
    grdmaterial: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    tbvitorcamentomaterial: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    tbvrecursoCDTPEQUIPAMENTO: TcxGridDBBandedColumn;
    tbvrecursoQTPREPARACAO: TcxGridDBBandedColumn;
    tbvrecursoQTOPERACAO: TcxGridDBBandedColumn;
    tbvrecursoVLPREPARACAO: TcxGridDBBandedColumn;
    tbvrecursoVLOPERACAO: TcxGridDBBandedColumn;
    tbvrecursoVLTOTALOPERACAO: TcxGridDBBandedColumn;
    tbvitorcamentomaterialNMPRODUTO: TcxGridDBBandedColumn;
    tbvitorcamentomaterialQTPECA: TcxGridDBBandedColumn;
    tbvitorcamentomaterialQTPESOUNITARIO: TcxGridDBBandedColumn;
    tbvitorcamentomaterialQTITEM: TcxGridDBBandedColumn;
    tbvitorcamentomaterialVLUNITARIO: TcxGridDBBandedColumn;
    tbvitorcamentomaterialVLTOTAL: TcxGridDBBandedColumn;
    tbvitorcamentomaterialCDDIGITADO: TcxGridDBBandedColumn;
    sdsitorcamentocusto: TSQLDataSet;
    cdsitorcamentocusto: TClientDataSet;
    dtsitorcamentocusto: TDataSource;
    sdsitorcamentocustoCDITORCAMENTOCUSTO: TIntegerField;
    sdsitorcamentocustoCDITORCAMENTO: TIntegerField;
    sdsitorcamentocustoCDUSUARIOI: TIntegerField;
    sdsitorcamentocustoCDUSUARIOA: TIntegerField;
    sdsitorcamentocustoCDCOMPUTADORI: TIntegerField;
    sdsitorcamentocustoCDCOMPUTADORA: TIntegerField;
    sdsitorcamentocustoCDPRODUTO: TIntegerField;
    sdsitorcamentocustoTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentocustoTSALTERACAO: TSQLTimeStampField;
    sdsitorcamentocustoVLTOTAL: TFMTBCDField;
    sdsitorcamentocustoCDDIGITADO: TStringField;
    cdsitorcamentocustoCDITORCAMENTOCUSTO: TIntegerField;
    cdsitorcamentocustoCDITORCAMENTO: TIntegerField;
    cdsitorcamentocustoCDUSUARIOI: TIntegerField;
    cdsitorcamentocustoCDUSUARIOA: TIntegerField;
    cdsitorcamentocustoCDCOMPUTADORI: TIntegerField;
    cdsitorcamentocustoCDCOMPUTADORA: TIntegerField;
    cdsitorcamentocustoCDPRODUTO: TIntegerField;
    cdsitorcamentocustoTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentocustoTSALTERACAO: TSQLTimeStampField;
    cdsitorcamentocustoVLTOTAL: TFMTBCDField;
    cdsitorcamentocustoCDDIGITADO: TStringField;
    grdcusto: TcxGrid;
    cxGridLevel3: TcxGridLevel;
    tbvitorcamentocusto: TcxGridDBTableView;
    tbvitorcamentocustoNMPRODUTO: TcxGridDBColumn;
    tbvitorcamentocustoVLTOTAL: TcxGridDBColumn;
    tbvitorcamentocustoCDDIGITADO: TcxGridDBColumn;
    lblNMCLIENTE: TDBText;
    cdsitorcamentorecursoVLTOTALPREPARACAO: TFMTBCDField;
    tbvrecursoVLTOTALPREPARACAO: TcxGridDBBandedColumn;
    sdsitorcamentocustoNMPRODUTO: TStringField;
    cdsitorcamentocustoNMPRODUTO: TStringField;
    cdsitorcamentomaterialCDforma: TIntegerField;
    cdsitorcamentomaterialCDMATERIAL: TIntegerField;
    sdsitorcamentorecursoCDITORCAMENTORECURSO: TIntegerField;
    sdsitorcamentorecursoCDITORCAMENTO: TIntegerField;
    sdsitorcamentorecursoCDUSUARIOI: TIntegerField;
    sdsitorcamentorecursoCDUSUARIOA: TIntegerField;
    sdsitorcamentorecursoCDCOMPUTADORI: TIntegerField;
    sdsitorcamentorecursoCDCOMPUTADORA: TIntegerField;
    sdsitorcamentorecursoTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentorecursoTSALTERACAO: TSQLTimeStampField;
    sdsitorcamentorecursoQTPREPARACAO: TFloatField;
    sdsitorcamentorecursoQTOPERACAO: TFloatField;
    sdsitorcamentorecursoVLPREPARACAO: TFMTBCDField;
    sdsitorcamentorecursoVLOPERACAO: TFMTBCDField;
    sdsitorcamentorecursoVLTOTALOPERACAO: TFMTBCDField;
    sdsitorcamentorecursoCDTPEQUIPAMENTO: TIntegerField;
    sdsitorcamentorecursoVLTOTALPREPARACAO: TFMTBCDField;
    cdsdetailsdsitorcamentorecurso: TDataSetField;
    sdsitorcamentomaterialCDITORCAMENTOMATERIAL: TIntegerField;
    sdsitorcamentomaterialCDITORCAMENTO: TIntegerField;
    sdsitorcamentomaterialCDUSUARIOI: TIntegerField;
    sdsitorcamentomaterialCDUSUARIOA: TIntegerField;
    sdsitorcamentomaterialCDCOMPUTADORI: TIntegerField;
    sdsitorcamentomaterialCDCOMPUTADORA: TIntegerField;
    sdsitorcamentomaterialCDPRODUTO: TIntegerField;
    sdsitorcamentomaterialCDforma: TIntegerField;
    sdsitorcamentomaterialCDMATERIAL: TIntegerField;
    sdsitorcamentomaterialTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentomaterialTSALTERACAO: TSQLTimeStampField;
    sdsitorcamentomaterialQTITEM: TFloatField;
    sdsitorcamentomaterialQTPESOUNITARIO: TFloatField;
    sdsitorcamentomaterialVLUNITARIO: TFMTBCDField;
    sdsitorcamentomaterialVLTOTAL: TFMTBCDField;
    sdsitorcamentomaterialCDDIGITADO: TStringField;
    cdsdetailsdsitorcamentomaterial: TDataSetField;
    cdsdetailsdsitorcamentocusto: TDataSetField;
    sdsitorcamentomaterialNMPRODUTO: TStringField;
    cdsitorcamentomaterialNMPRODUTO: TStringField;
    sdsitorcamentomaterialQTPECA: TFloatField;
    cdsitorcamentomaterialQTPECA: TFloatField;
    sdsitorcamentomaterialDSPOSICAO: TStringField;
    cdsitorcamentomaterialDSPOSICAO: TStringField;
    tbvitorcamentomaterialDSPOSICAO: TcxGridDBBandedColumn;
    sdsitorcamentomaterialNUCLFISCAL: TStringField;
    cdsitorcamentomaterialNUCLFISCAL: TStringField;
    tbvitorcamentomaterialNUCLFISCAL: TcxGridDBBandedColumn;
    sdsdetailALPIS: TFloatField;
    sdsdetailVLPIS: TFMTBCDField;
    sdsdetailALCOFINS: TFloatField;
    sdsdetailVLCOFINS: TFMTBCDField;
    sdsdetailALCSLL: TFloatField;
    sdsdetailVLCSLL: TFMTBCDField;
    sdsdetailALIRPJ: TFloatField;
    sdsdetailVLIRPJ: TFMTBCDField;
    cdsdetailALPIS: TFloatField;
    cdsdetailVLPIS: TFMTBCDField;
    cdsdetailALCOFINS: TFloatField;
    cdsdetailVLCOFINS: TFMTBCDField;
    cdsdetailALCSLL: TFloatField;
    cdsdetailVLCSLL: TFMTBCDField;
    cdsdetailALIRPJ: TFloatField;
    cdsdetailVLIRPJ: TFMTBCDField;
    sdsitorcamentocustoQTITEM: TFloatField;
    sdsitorcamentocustoVLUNITARIO: TFMTBCDField;
    cdsitorcamentocustoQTITEM: TFloatField;
    cdsitorcamentocustoVLUNITARIO: TFMTBCDField;
    tbvitorcamentocustoQTITEM: TcxGridDBColumn;
    tbvitorcamentocustoVLUNITARIO: TcxGridDBColumn;
    sdsdetailVLPRODUCAO: TFMTBCDField;
    cdsdetailVLPRODUCAO: TFMTBCDField;
    sdsdetailVLMATERIAL: TFMTBCDField;
    cdsdetailVLMATERIAL: TFMTBCDField;
    sdsdetailVLCUSTO: TFMTBCDField;
    cdsdetailVLCUSTO: TFMTBCDField;
    sdsdetailVLPREPARACAO: TFMTBCDField;
    sdsdetailVLOPERACAO: TFMTBCDField;
    cdsdetailVLPREPARACAO: TFMTBCDField;
    cdsdetailVLOPERACAO: TFMTBCDField;
    sdsdetailQTOPERACAO: TFloatField;
    sdsdetailQTPREPARACAO: TFloatField;
    cdsdetailQTOPERACAO: TFloatField;
    cdsdetailQTPREPARACAO: TFloatField;
    sdsdetailQTHORA: TFloatField;
    cdsdetailQTHORA: TFloatField;
    sdsdetailVLPRODUCAOP: TFMTBCDField;
    sdsdetailVLMATERIALP: TFMTBCDField;
    sdsdetailVLCUSTOP: TFMTBCDField;
    sdsdetailVLPREPARACAOP: TFMTBCDField;
    sdsdetailVLOPERACAOP: TFMTBCDField;
    sdsdetailQTPREPARACAOP: TFloatField;
    sdsdetailQTOPERACAOP: TFloatField;
    sdsdetailQTHORAP: TFloatField;
    cdsdetailVLPRODUCAOP: TFMTBCDField;
    cdsdetailVLMATERIALP: TFMTBCDField;
    cdsdetailVLCUSTOP: TFMTBCDField;
    cdsdetailVLPREPARACAOP: TFMTBCDField;
    cdsdetailVLOPERACAOP: TFMTBCDField;
    cdsdetailQTPREPARACAOP: TFloatField;
    cdsdetailQTOPERACAOP: TFloatField;
    cdsdetailQTHORAP: TFloatField;
    sdsdetailVLPISP: TFMTBCDField;
    sdsdetailVLCOFINSP: TFMTBCDField;
    sdsdetailVLCSLLP: TFMTBCDField;
    sdsdetailVLIRPJP: TFMTBCDField;
    sdsdetailVLICMSP: TFMTBCDField;
    sdsdetailVLIPIP: TFMTBCDField;
    cdsdetailVLPISP: TFMTBCDField;
    cdsdetailVLCOFINSP: TFMTBCDField;
    cdsdetailVLCSLLP: TFMTBCDField;
    cdsdetailVLIRPJP: TFMTBCDField;
    cdsdetailVLICMSP: TFMTBCDField;
    cdsdetailVLIPIP: TFMTBCDField;
    sdsdetailNUPRAZOENTREGA: TIntegerField;
    cdsdetailNUPRAZOENTREGA: TIntegerField;
    tbvNUPRAZOENTREGA: TcxGridDBBandedColumn;
    sdsdetailDTAPROVACAO: TDateField;
    cdsdetailDTAPROVACAO: TDateField;
    tbvDTAPROVACAO: TcxGridDBBandedColumn;
    sdsdetailNUCLFISCAL: TStringField;
    cdsdetailNUCLFISCAL: TStringField;
    tbvNUCLFISCAL: TcxGridDBBandedColumn;
    sdsitorcamentomaterialALICMS: TFloatField;
    sdsitorcamentomaterialALIPI: TFloatField;
    sdsitorcamentomaterialBORECUPERAICMS: TStringField;
    sdsitorcamentomaterialBORECUPERAIPI: TStringField;
    sdsitorcamentomaterialVLICMS: TFMTBCDField;
    sdsitorcamentomaterialVLIPI: TFMTBCDField;
    sdsitorcamentomaterialVLFRETE: TFMTBCDField;
    cdsitorcamentomaterialALICMS: TFloatField;
    cdsitorcamentomaterialALIPI: TFloatField;
    cdsitorcamentomaterialBORECUPERAICMS: TStringField;
    cdsitorcamentomaterialBORECUPERAIPI: TStringField;
    cdsitorcamentomaterialVLICMS: TFMTBCDField;
    cdsitorcamentomaterialVLIPI: TFMTBCDField;
    cdsitorcamentomaterialVLFRETE: TFMTBCDField;
    tbvitorcamentomaterialALICMS: TcxGridDBBandedColumn;
    tbvitorcamentomaterialALIPI: TcxGridDBBandedColumn;
    tbvitorcamentomaterialBORECUPERAICMS: TcxGridDBBandedColumn;
    tbvitorcamentomaterialBORECUPERAIPI: TcxGridDBBandedColumn;
    tbvitorcamentomaterialVLICMS: TcxGridDBBandedColumn;
    tbvitorcamentomaterialVLIPI: TcxGridDBBandedColumn;
    tbvitorcamentomaterialVLFRETE: TcxGridDBBandedColumn;
    sdsitorcamentomaterialVLFINAL: TFMTBCDField;
    cdsitorcamentomaterialVLFINAL: TFMTBCDField;
    tbvitorcamentomaterialVLFINAL: TcxGridDBBandedColumn;
    sdsitorcamentomaterialALPIS: TFloatField;
    sdsitorcamentomaterialALCOFINS: TFloatField;
    sdsitorcamentomaterialVLPIS: TFMTBCDField;
    sdsitorcamentomaterialVLCOFINS: TFMTBCDField;
    sdsitorcamentomaterialBORECUPERAPIS: TStringField;
    sdsitorcamentomaterialBORECUPERACOFINS: TStringField;
    cdsitorcamentomaterialALPIS: TFloatField;
    cdsitorcamentomaterialALCOFINS: TFloatField;
    cdsitorcamentomaterialVLPIS: TFMTBCDField;
    cdsitorcamentomaterialVLCOFINS: TFMTBCDField;
    cdsitorcamentomaterialBORECUPERAPIS: TStringField;
    cdsitorcamentomaterialBORECUPERACOFINS: TStringField;
    tbvitorcamentomaterialALPIS: TcxGridDBBandedColumn;
    tbvitorcamentomaterialALCOFINS: TcxGridDBBandedColumn;
    tbvitorcamentomaterialVLPIS: TcxGridDBBandedColumn;
    tbvitorcamentomaterialVLCOFINS: TcxGridDBBandedColumn;
    tbvitorcamentomaterialBORECUPERAPIS: TcxGridDBBandedColumn;
    tbvitorcamentomaterialBORECUPERACOFINS: TcxGridDBBandedColumn;
    sdsdetailVLLUCRO: TFMTBCDField;
    cdsdetailVLLUCRO: TFMTBCDField;
    sdsdetailVLLUCROP: TFMTBCDField;
    cdsdetailVLLUCROP: TFMTBCDField;
    sdsdetailALISS: TFloatField;
    sdsdetailVLISSP: TFMTBCDField;
    sdsdetailVLISS: TFMTBCDField;
    cdsdetailALISS: TFloatField;
    cdsdetailVLISSP: TFMTBCDField;
    cdsdetailVLISS: TFMTBCDField;
    sdsdetailVLIMPOSTOP: TFMTBCDField;
    sdsdetailVLIMPOSTO: TFMTBCDField;
    sdsdetailVLVENDALIQUIDAP: TFMTBCDField;
    sdsdetailVLVENDALIQUIDA: TFMTBCDField;
    sdsdetailVLLUCROBRUTOP: TFMTBCDField;
    sdsdetailVLLUCROBRUTO: TFMTBCDField;
    sdsdetailVLDESPESA: TFMTBCDField;
    sdsdetailVLDESPESAP: TFMTBCDField;
    sdsdetailVLDESPESAADMINISTRATIVA: TFMTBCDField;
    sdsdetailVLDESPESAADMINISTRATIVAP: TFMTBCDField;
    sdsdetailVLDESPESAFRETEP: TFMTBCDField;
    sdsdetailVLDESPESAFRETE: TFMTBCDField;
    sdsdetailVLDESPESACOMERCIALP: TFMTBCDField;
    sdsdetailVLDESPESACOMERCIAL: TFMTBCDField;
    sdsdetailVLDESPESAEMBALAGEMP: TFMTBCDField;
    sdsdetailVLDESPESAEMBALAGEM: TFMTBCDField;
    sdsdetailVLDESPESASEGUROP: TFMTBCDField;
    sdsdetailVLDESPESASEGURO: TFMTBCDField;
    sdsdetailVLLUCROIRCSP: TFMTBCDField;
    sdsdetailVLLUCROIRCS: TFMTBCDField;
    cdsdetailVLIMPOSTOP: TFMTBCDField;
    cdsdetailVLIMPOSTO: TFMTBCDField;
    cdsdetailVLVENDALIQUIDAP: TFMTBCDField;
    cdsdetailVLVENDALIQUIDA: TFMTBCDField;
    cdsdetailVLLUCROBRUTOP: TFMTBCDField;
    cdsdetailVLLUCROBRUTO: TFMTBCDField;
    cdsdetailVLDESPESA: TFMTBCDField;
    cdsdetailVLDESPESAP: TFMTBCDField;
    cdsdetailVLDESPESAADMINISTRATIVA: TFMTBCDField;
    cdsdetailVLDESPESAADMINISTRATIVAP: TFMTBCDField;
    cdsdetailVLDESPESAFRETEP: TFMTBCDField;
    cdsdetailVLDESPESAFRETE: TFMTBCDField;
    cdsdetailVLDESPESACOMERCIALP: TFMTBCDField;
    cdsdetailVLDESPESACOMERCIAL: TFMTBCDField;
    cdsdetailVLDESPESAEMBALAGEMP: TFMTBCDField;
    cdsdetailVLDESPESAEMBALAGEM: TFMTBCDField;
    cdsdetailVLDESPESASEGUROP: TFMTBCDField;
    cdsdetailVLDESPESASEGURO: TFMTBCDField;
    cdsdetailVLLUCROIRCSP: TFMTBCDField;
    cdsdetailVLLUCROIRCS: TFMTBCDField;
    sdsdetailPRDESPESAADMINISTRATIVA: TFloatField;
    sdsdetailPRDESPESAFRETE: TFloatField;
    sdsdetailPRDESPESACOMERCIAL: TFloatField;
    sdsdetailPRDESPESAEMBALAGEM: TFloatField;
    sdsdetailPRDESPESASEGURO: TFloatField;
    cdsdetailPRDESPESAADMINISTRATIVA: TFloatField;
    cdsdetailPRDESPESAFRETE: TFloatField;
    cdsdetailPRDESPESACOMERCIAL: TFloatField;
    cdsdetailPRDESPESAEMBALAGEM: TFloatField;
    cdsdetailPRDESPESASEGURO: TFloatField;
    sdsdetailVLIRCSLLP: TFMTBCDField;
    sdsdetailVLIRCSLL: TFMTBCDField;
    cdsdetailVLIRCSLLP: TFMTBCDField;
    cdsdetailVLIRCSLL: TFMTBCDField;
    sptitem: TcxSplitter;
    pgcITEM: TcxPageControl;
    tbs2: TcxTabSheet;
    tbs3: TcxTabSheet;
    cxDBVerticalGrid3: TcxDBVerticalGrid;
    cxDBEditorRow11: TcxDBEditorRow;
    cxDBEditorRow12: TcxDBEditorRow;
    cxDBEditorRow15: TcxDBEditorRow;
    cxDBEditorRow16: TcxDBEditorRow;
    cxDBEditorRow17: TcxDBEditorRow;
    cxDBEditorRow18: TcxDBEditorRow;
    cxDBEditorRow19: TcxDBEditorRow;
    cxDBEditorRow20: TcxDBEditorRow;
    grditem: TcxDBVerticalGrid;
    cxDBEditorRow21: TcxDBEditorRow;
    cxDBEditorRow22: TcxDBEditorRow;
    cxDBEditorRow23: TcxDBEditorRow;
    grditemvlicms: TcxDBEditorRow;
    grditemvlipi: TcxDBEditorRow;
    grditemvliss: TcxDBEditorRow;
    grditemvlcofins: TcxDBEditorRow;
    grditemvlpis: TcxDBEditorRow;
    cxDBEditorRow36: TcxDBEditorRow;
    cxDBEditorRow37: TcxDBEditorRow;
    cxDBEditorRow38: TcxDBEditorRow;
    cxDBEditorRow39: TcxDBEditorRow;
    cxDBEditorRow40: TcxDBEditorRow;
    cxDBEditorRow41: TcxDBEditorRow;
    cxDBEditorRow42: TcxDBEditorRow;
    cxDBEditorRow43: TcxDBEditorRow;
    grditemVLLUCROIRCS: TcxDBEditorRow;
    grditemVLIRCSLL: TcxDBEditorRow;
    cxDBEditorRow46: TcxDBEditorRow;
    cxDBEditorRow48: TcxDBEditorRow;
    cxDBEditorRow50: TcxDBEditorRow;
    pgc3: TcxPageControl;
    tbs7: TcxTabSheet;
    vgritemcusto: TcxDBVerticalGrid;
    cxDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow2: TcxDBEditorRow;
    edtitemqtoperacao: TcxDBEditorRow;
    edtitemprepacao: TcxDBEditorRow;
    cxDBEditorRow7: TcxDBEditorRow;
    cxDBEditorRow8: TcxDBEditorRow;
    cxDBEditorRow9: TcxDBEditorRow;
    cxDBEditorRow10: TcxDBEditorRow;
    grdpeca: TcxDBVerticalGrid;
    grdpecaDBEditorRow1: TcxDBEditorRow;
    grdpecaDBEditorRow2: TcxDBEditorRow;
    grdpecaDBEditorRow3: TcxDBEditorRow;
    grdpecaVLICMSP: TcxDBEditorRow;
    grdpecaDBEditorRow27: TcxDBEditorRow;
    grdpecacdtpicms: TcxDBEditorRow;
    grdpecaVLIPIP: TcxDBEditorRow;
    grdpecaDBEditorRow23: TcxDBEditorRow;
    grdpecacdtpipi: TcxDBEditorRow;
    grdpecaVLISSP: TcxDBEditorRow;
    grdpecaDBEditorRow30: TcxDBEditorRow;
    grdpecaVLCOFINSP: TcxDBEditorRow;
    grdpecaDBEditorRow24: TcxDBEditorRow;
    grdpecaVLPISP: TcxDBEditorRow;
    grdpecaDBEditorRow25: TcxDBEditorRow;
    grdpecaDBEditorRow8: TcxDBEditorRow;
    grdpecaDBEditorRow9: TcxDBEditorRow;
    grdpecaDBEditorRow10: TcxDBEditorRow;
    grdpecaDBEditorRow11: TcxDBEditorRow;
    grdpecaDBEditorRow32: TcxDBEditorRow;
    grdpecaDBEditorRow12: TcxDBEditorRow;
    grdpecaDBEditorRow33: TcxDBEditorRow;
    grdpecaDBEditorRow13: TcxDBEditorRow;
    grdpecaDBEditorRow34: TcxDBEditorRow;
    grdpecaDBEditorRow14: TcxDBEditorRow;
    grdpecaDBEditorRow35: TcxDBEditorRow;
    grdpecaDBEditorRow15: TcxDBEditorRow;
    grdpecaDBEditorRow36: TcxDBEditorRow;
    grdpecaVLLUCROIRCSP: TcxDBEditorRow;
    grdpecaVLIRCSLLP: TcxDBEditorRow;
    grdpecaDBEditorRow18: TcxDBEditorRow;
    grdpecaDBEditorRow28: TcxDBEditorRow;
    grdpecaDBEditorRow17: TcxDBEditorRow;
    grdpecaDBEditorRow29: TcxDBEditorRow;
    grdpecaDBEditorRow20: TcxDBEditorRow;
    grdpecaDBEditorRow21: TcxDBEditorRow;
    tbspecagrafico: TcxTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2: TcxGrid;
    cxGrid3: TcxGrid;
    cxGrid3Level1: TcxGridLevel;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBChartView1: TcxGridDBChartView;
    cxGrid3DBChartView1: TcxGridDBChartView;
    cdspizzapeca: TClientDataSet;
    dtspizzapeca: TDataSource;
    cdspizzapecavalor: TFMTBCDField;
    cdspizzapecanome: TStringField;
    cxGrid3DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid3DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    spl2: TcxSplitter;
    cdspizzaitem: TClientDataSet;
    dtspizzaitem: TDataSource;
    cdspizzaitemnome: TStringField;
    cdspizzaitemvalor: TFMTBCDField;
    cxGrid2DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid2DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    sdsdetailALSIMPLES: TFloatField;
    sdsdetailVLSIMPLESP: TFMTBCDField;
    sdsdetailVLSIMPLES: TFMTBCDField;
    cdsdetailALSIMPLES: TFloatField;
    cdsdetailVLSIMPLESP: TFMTBCDField;
    cdsdetailVLSIMPLES: TFMTBCDField;
    grdpecaVLSIMPLESP: TcxDBEditorRow;
    grdpecaDBEditorRow38: TcxDBEditorRow;
    grdpecaVLCSLLP: TcxDBEditorRow;
    grdpecaDBEditorRow42: TcxDBEditorRow;
    grdpecaVLIRPJP: TcxDBEditorRow;
    grdpecaDBEditorRow44: TcxDBEditorRow;
    sdsdetailBOSERVICO: TStringField;
    cdsdetailBOSERVICO: TStringField;
    grditemvlcsll: TcxDBEditorRow;
    grditemvlirpj: TcxDBEditorRow;
    grditemvlsimples: TcxDBEditorRow;
    lbltotalcipi: TLabel;
    txtvltotalcipi: TcxDBLabel;
    spl3: TcxSplitter;
    spl4: TcxSplitter;
    sdsitorcamentomaterialDSFORMULA: TStringField;
    cdsitorcamentomaterialDSFORMULA: TStringField;
    tbvitorcamentomaterialDSFORMULA: TcxGridDBBandedColumn;
    vgritemcustoDBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow1: TcxDBEditorRow;
    sdsdetailVLRECURSOP: TFMTBCDField;
    sdsdetailVLRECURSO: TFMTBCDField;
    cdsdetailVLRECURSOP: TFMTBCDField;
    cdsdetailVLRECURSO: TFMTBCDField;
    tbvDSOBSERVACAOMADEIRA: TcxGridDBBandedColumn;
    sdsCDCLIENTEENTREGA: TIntegerField;
    cdsCDCLIENTEENTREGA: TIntegerField;
    lblorcamentista: TLabel;
    sdsDTRESPOSTA: TDateField;
    sdsNMFUNCIONARIO: TStringField;
    cdsDTRESPOSTA: TDateField;
    cdsNMFUNCIONARIO: TStringField;
    actimprimiranalitico: TAction;
    dxBarButton2: TdxBarButton;
    sdsitorcamentorecursoVLTOTAL: TFMTBCDField;
    sdsitorcamentorecursoDSOBSERVACAO: TBlobField;
    cdsitorcamentorecursoVLTOTAL: TFMTBCDField;
    cdsitorcamentorecursoDSOBSERVACAO: TBlobField;
    tbvrecursoDSOBSERVACAO: TcxGridDBBandedColumn;
    lblcontato: TLabel;
    cbxcditcontcliente: TcxDBLookupComboBox;
    sdsCDITCONTCLIENTE: TIntegerField;
    cdsCDITCONTCLIENTE: TIntegerField;
    sdsitcontcliente: TSQLDataSet;
    dspitcontcliente: TDataSetProvider;
    cdsitcontcliente: TClientDataSet;
    dtsitcontcliente: TDataSource;
    actcopiar: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    actanalisecritica: TAction;
    sdsdetailPRDESCONTO: TFMTBCDField;
    sdsdetailVLTOTALSDESCONTO: TFMTBCDField;
    cdsdetailPRDESCONTO: TFMTBCDField;
    cdsdetailVLTOTALSDESCONTO: TFMTBCDField;
    grditemDBEditorRow3: TcxDBEditorRow;
    sdsdetailNUSEQUENCIA: TIntegerField;
    cdsdetailNUSEQUENCIA: TIntegerField;
    sdsitorcamentorecursoNUSEQUENCIA: TIntegerField;
    cdsitorcamentorecursoNUSEQUENCIA: TIntegerField;
    tbvNUSEQUENCIA: TcxGridDBBandedColumn;
    tbvrecursoNUSEQUENCIA: TcxGridDBBandedColumn;
    actabrirprodutomp: TAction;
    cbxcdfuncionario: TcxDBLookupComboBox;
    dxBarLargeButton5: TdxBarLargeButton;
    actemail: TAction;
    dxBarButton3: TdxBarButton;
    sdsdetailDSPRODUTO: TStringField;
    cdsdetailDSPRODUTO: TStringField;
    tbvDSPRODUTO: TcxGridDBBandedColumn;
    sdsdetailCDSTITORCAMENTO: TIntegerField;
    cdsdetailCDSTITORCAMENTO: TIntegerField;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    actitdeclinar: TAction;
    dxBarButton4: TdxBarButton;
    tbvCDSTITORCAMENTO: TcxGridDBBandedColumn;
    actitreabrir: TAction;
    dxBarButton5: TdxBarButton;
    actdetalhar: TAction;
    dxBarButton6: TdxBarButton;
    cbxcdfuncionarioorcamentista: TcxDBLookupComboBox;
    btninserircontato: TcxButton;
    actinserircontato: TAction;
    sdshstorcamento: TSQLDataSet;
    cdshstorcamento: TClientDataSet;
    dtshstorcamento: TDataSource;
    sdshstorcamentoNMUSUARIO: TStringField;
    sdshstorcamentoNMCOMPUTADOR: TStringField;
    sdshstorcamentoTSHISTORICO: TSQLTimeStampField;
    sdshstorcamentoDSJUSTIFICATIVA: TBlobField;
    sdshstorcamentoNMSTORCAMENTO: TStringField;
    cdssdshstorcamento: TDataSetField;
    cdshstorcamentoNMUSUARIO: TStringField;
    cdshstorcamentoNMCOMPUTADOR: TStringField;
    cdshstorcamentoTSHISTORICO: TSQLTimeStampField;
    cdshstorcamentoDSJUSTIFICATIVA: TBlobField;
    cdshstorcamentoNMSTORCAMENTO: TStringField;
    tbshistorico: TcxTabSheet;
    grdhstorcamento: TcxGrid;
    grdhstorcamentoDBTableView1: TcxGridDBTableView;
    grdhstorcamentoDBTableView1NMSTORCAMENTO: TcxGridDBColumn;
    grdhstorcamentoDBTableView1NMUSUARIO: TcxGridDBColumn;
    grdhstorcamentoDBTableView1NMCOMPUTADOR: TcxGridDBColumn;
    grdhstorcamentoDBTableView1TSHISTORICO: TcxGridDBColumn;
    grdhstorcamentoDBTableView1DSJUSTIFICATIVA: TcxGridDBColumn;
    grdhstorcamentoLevel1: TcxGridLevel;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    dxBarLargeButton4: TdxBarLargeButton;
    btnimprimir: TdxBarLargeButton;
    pumiimprimir: TdxBarPopupMenu;
    dxBarButton13: TdxBarButton;
    cdsVLIPI: TFMTBCDField;
    tbsComercial: TcxTabSheet;
    sdsVLPIS: TFMTBCDField;
    sdsVLCOFINS: TFMTBCDField;
    sdsVLCSLL: TFMTBCDField;
    sdsVLIRPJ: TFMTBCDField;
    sdsVLPRODUCAO: TFMTBCDField;
    sdsVLMATERIAL: TFMTBCDField;
    sdsVLCUSTO: TFMTBCDField;
    sdsVLPREPARACAO: TFMTBCDField;
    sdsVLOPERACAO: TFMTBCDField;
    sdsQTOPERACAO: TFloatField;
    sdsQTPREPARACAO: TFloatField;
    sdsQTHORA: TFloatField;
    sdsVLLUCRO: TFMTBCDField;
    sdsVLISS: TFMTBCDField;
    sdsVLIMPOSTO: TFMTBCDField;
    sdsVLVENDALIQUIDA: TFMTBCDField;
    sdsVLLUCROBRUTO: TFMTBCDField;
    sdsVLDESPESA: TFMTBCDField;
    sdsVLDESPESAADMINISTRATIVA: TFMTBCDField;
    sdsVLDESPESAFRETE: TFMTBCDField;
    sdsVLDESPESACOMERCIAL: TFMTBCDField;
    sdsVLDESPESAEMBALAGEM: TFMTBCDField;
    sdsVLDESPESASEGURO: TFMTBCDField;
    sdsVLLUCROIR: TFMTBCDField;
    sdsVLIRCSLL: TFMTBCDField;
    sdsVLCPP: TFMTBCDField;
    sdsVLSIMPLES: TFMTBCDField;
    sdsVLRECURSO: TFMTBCDField;
    sdsVLCOMISSAO: TFMTBCDField;
    sdsCDORCAMENTOATRAVESDE: TIntegerField;
    sdsHRRESPOSTA: TTimeField;
    cdsVLPIS: TFMTBCDField;
    cdsVLCOFINS: TFMTBCDField;
    cdsVLCSLL: TFMTBCDField;
    cdsVLIRPJ: TFMTBCDField;
    cdsVLPRODUCAO: TFMTBCDField;
    cdsVLMATERIAL: TFMTBCDField;
    cdsVLCUSTO: TFMTBCDField;
    cdsVLPREPARACAO: TFMTBCDField;
    cdsVLOPERACAO: TFMTBCDField;
    cdsQTOPERACAO: TFloatField;
    cdsQTPREPARACAO: TFloatField;
    cdsQTHORA: TFloatField;
    cdsVLLUCRO: TFMTBCDField;
    cdsVLISS: TFMTBCDField;
    cdsVLIMPOSTO: TFMTBCDField;
    cdsVLVENDALIQUIDA: TFMTBCDField;
    cdsVLLUCROBRUTO: TFMTBCDField;
    cdsVLDESPESA: TFMTBCDField;
    cdsVLDESPESAADMINISTRATIVA: TFMTBCDField;
    cdsVLDESPESAFRETE: TFMTBCDField;
    cdsVLDESPESACOMERCIAL: TFMTBCDField;
    cdsVLDESPESAEMBALAGEM: TFMTBCDField;
    cdsVLDESPESASEGURO: TFMTBCDField;
    cdsVLLUCROIR: TFMTBCDField;
    cdsVLIRCSLL: TFMTBCDField;
    cdsVLCPP: TFMTBCDField;
    cdsVLSIMPLES: TFMTBCDField;
    cdsVLRECURSO: TFMTBCDField;
    cdsVLCOMISSAO: TFMTBCDField;
    cdsCDORCAMENTOATRAVESDE: TIntegerField;
    cdsHRRESPOSTA: TTimeField;
    btnaddorcamentoatravesde: TcxButton;
    edthrresposta: TcxDBTimeEdit;
    lblhrresposta: TLabel;
    sdsHRRESPOSTAFINAL: TTimeField;
    cdsHRRESPOSTAFINAL: TTimeField;
    edthrrespostafinal: TcxDBTimeEdit;
    lblhrrespostafinal: TLabel;
    sdsdetailBOCERTIFICADO: TStringField;
    sdsdetailBOINFTECNICA: TStringField;
    cdsdetailBOCERTIFICADO: TStringField;
    cdsdetailBOINFTECNICA: TStringField;
    sdsitorcamentomaterialNUFATOR: TFloatField;
    cdsitorcamentomaterialNUFATOR: TFloatField;
    sdsitorcamentocustoCDUNIDADE: TIntegerField;
    sdsitorcamentocustoNUFATOR: TFloatField;
    cdsitorcamentocustoCDUNIDADE: TIntegerField;
    cdsitorcamentocustoNUFATOR: TFloatField;
    tbvitorcamentomaterialNUFATOR: TcxGridDBBandedColumn;
    tbvBOCERTIFICADO: TcxGridDBBandedColumn;
    tbvBOINFTECNICA: TcxGridDBBandedColumn;
    tbvitorcamentocustoCDUNIDADE: TcxGridDBColumn;
    tbvitorcamentocustoNUFATOR: TcxGridDBColumn;
    sdsitorcamentocustoVLFINAL: TFMTBCDField;
    cdsitorcamentocustoVLFINAL: TFMTBCDField;
    tbvitorcamentocustoVLFINAL: TcxGridDBColumn;
    cbxcdstorcamento: TcxDBLookupComboBox;
    actabrirtporcamento: TAction;
    actabrircondpagto: TAction;
    sdsdetailCDCONDPAGTO: TIntegerField;
    cdsdetailCDCONDPAGTO: TIntegerField;
    tbvCDCONDPAGTO: TcxGridDBBandedColumn;
    dxBarLargeButton1: TdxBarLargeButton;
    sdsitorcamentocustoDSOBSERVACAO: TBlobField;
    cdsitorcamentocustoDSOBSERVACAO: TBlobField;
    tbvitorcamentocustoDSOBSERVACAO: TcxGridDBColumn;
    sdsdetailVLDESCONTOPRODUCAO: TFMTBCDField;
    cdsdetailVLDESCONTOPRODUCAO: TFMTBCDField;
    sdsCDMUNICIPIO: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsNMCONTATO: TStringField;
    cdsCDMUNICIPIO: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsNMCONTATO: TStringField;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    sdsitorcamentorecursoCDTPDURACAO: TIntegerField;
    cdsitorcamentorecursoCDTPDURACAO: TIntegerField;
    sdsdetailQTITEM: TFMTBCDField;
    cdsdetailQTITEM: TFMTBCDField;
    tbvPRDESCONTO: TcxGridDBBandedColumn;
    lblnucontrato: TLabel;
    edtnucontrato: TcxDBTextEdit;
    sdsNUCONTRATO: TStringField;
    cdsNUCONTRATO: TStringField;
    dxBarButton7: TdxBarButton;
    dxBarButton15: TdxBarButton;
    lbldocumento: TLabel;
    cbxcdorcamentoatravesde: TcxDBLookupComboBox;
    lblperiodicidade: TLabel;
    cbxcdperiodicidade: TcxDBLookupComboBox;
    Label3: TLabel;
    edtnuperiodicidade: TcxDBSpinEdit;
    sdsCDPERIODICIDADE: TIntegerField;
    sdsNUPERIODICIDADE: TIntegerField;
    cdsCDPERIODICIDADE: TIntegerField;
    cdsNUPERIODICIDADE: TIntegerField;
    sdsdetailCDPRODUTOEMBALAGEM: TIntegerField;
    sdsdetailCDDIGITADOEMBALAGEM: TStringField;
    sdsdetailNMPRODUTOEMBALAGEM: TStringField;
    cdsdetailCDPRODUTOEMBALAGEM: TIntegerField;
    cdsdetailCDDIGITADOEMBALAGEM: TStringField;
    cdsdetailNMPRODUTOEMBALAGEM: TStringField;
    tbvCDDIGITADOEMBALAGEM: TcxGridDBBandedColumn;
    tbvNMPRODUTOEMBALAGEM: TcxGridDBBandedColumn;
    tbsconsulta: TcxTabSheet;
    bdcconsulta: TdxBarDockControl;
    bmg1Bar3: TdxBar;
    actconsultapedido: TAction;
    actconsultaordproducao: TAction;
    btnpedido: TdxBarButton;
    btnordproducao: TdxBarButton;
    tbvpedido: TcxGridDBTableView;
    grdconsultaLevel1: TcxGridLevel;
    grdconsulta: TcxGrid;
    tbvordproducao: TcxGridDBTableView;
    dtsconsulta: TDataSource;
    tbvpedidonNUPEDIDO: TcxGridDBColumn;
    tbvpedidoDTEMISSAO: TcxGridDBColumn;
    tbvpedidoCDDIGITADO: TcxGridDBColumn;
    tbvpedidoNMPRODUTO: TcxGridDBColumn;
    tbvpedidoQTITEM: TcxGridDBColumn;
    tbvordproducaoCDORDPRODUCAO: TcxGridDBColumn;
    tbvordproducaoDTEMISSAO: TcxGridDBColumn;
    tbvordproducaoCDDIGITADO: TcxGridDBColumn;
    tbvordproducaoNMPRODUTO: TcxGridDBColumn;
    tbvordproducaoQTITEM: TcxGridDBColumn;
    actgerarrequisicaoproducao: TAction;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    actconsultarequisicaoproducao: TAction;
    tbvrequisicaoproducao: TcxGridDBTableView;
    tbvrequisicaoproducaoCDREQUISICAOPRODUCAO: TcxGridDBColumn;
    tbvrequisicaoproducaoDTEMISSAO: TcxGridDBColumn;
    tbvrequisicaoproducaoDTPRVENTREGA: TcxGridDBColumn;
    tbvrequisicaoproducaoCDDIGITADO: TcxGridDBColumn;
    tbvrequisicaoproducaoNMPRODUTO: TcxGridDBColumn;
    tbvrequisicaoproducaoQTITEM: TcxGridDBColumn;
    tbvrequisicaoproducaoQTPRODUCAO: TcxGridDBColumn;
    tbvVLACRESCIMO: TcxGridDBBandedColumn;
    sdsdetailVLACRESCIMO: TFMTBCDField;
    cdsdetailVLACRESCIMO: TFMTBCDField;
    sdsVLACRESCIMO: TFMTBCDField;
    cdsVLACRESCIMO: TFMTBCDField;
    lblvlacrescimo: TLabel;
    edtvlacrescimo: TcxDBCalcEdit;
    tbvrequisicaoproducaoNMSTREQUISICAOPRODUCAO: TcxGridDBColumn;
    actdetail: TAction;
    dxBarButton22: TdxBarButton;
    sdsCDPRODUTO: TIntegerField;
    cdsCDPRODUTO: TIntegerField;
    cdsCDDIGITADO: TStringField;
    gbxproduto: TcxGroupBox;
    lblcddigitado: TLabel;
    Label8: TLabel;
    edtcddigitado: TcxDBButtonEdit;
    sdsdetailCDTPITORCAMENTO: TIntegerField;
    cdsdetailCDTPITORCAMENTO: TIntegerField;
    tbvCDTPITORCAMENTO: TcxGridDBBandedColumn;
    actarquivo: TAction;
    dxBarButton14: TdxBarButton;
    tbvordproducaoNMSTORDPRODUCAO: TcxGridDBColumn;
    tbvordproducaoDTPRVENTREGA: TcxGridDBColumn;
    lblprmoradiaria: TLabel;
    edtprmoradiaria: TcxDBCalcEdit;
    lblprmulta: TLabel;
    edtprmulta: TcxDBCalcEdit;
    tbsPeriodicidade: TcxTabSheet;
    grditorcamentoperiodicidade: TcxGrid;
    tbvitorcamentoperiodicidade: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cdsitorcamentoperiodicidade: TClientDataSet;
    dtsitorcamentoperiodicidade: TDataSource;
    sdsitorcamentoperiodicidadeCDITORCAMENTOPERIODICIDADE: TIntegerField;
    sdsitorcamentoperiodicidadeCDUSUARIOI: TIntegerField;
    sdsitorcamentoperiodicidadeCDUSUARIOA: TIntegerField;
    sdsitorcamentoperiodicidadeCDCOMPUTADORI: TIntegerField;
    sdsitorcamentoperiodicidadeCDCOMPUTADORA: TIntegerField;
    sdsitorcamentoperiodicidadeCDITORCAMENTO: TIntegerField;
    sdsitorcamentoperiodicidadeCDPERIODICIDADE: TIntegerField;
    sdsitorcamentoperiodicidadeQTITEM: TFloatField;
    sdsitorcamentoperiodicidadeVLUNITARIO: TFMTBCDField;
    sdsitorcamentoperiodicidadeVLTOTAL: TFMTBCDField;
    sdsitorcamentoperiodicidadeTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentoperiodicidadeTSALTERACAO: TSQLTimeStampField;
    sdsPRMULTA: TFloatField;
    sdsPRMORADIARIA: TFloatField;
    sdsCDDIGITADO: TStringField;
    sdsitorcamentoperiodicidade: TSQLDataSet;
    cdsPRMULTA: TFloatField;
    cdsPRMORADIARIA: TFloatField;
    cdsdetailsdsitorcamentoperiodicidade: TDataSetField;
    cdsitorcamentoperiodicidadeCDITORCAMENTOPERIODICIDADE: TIntegerField;
    cdsitorcamentoperiodicidadeCDUSUARIOI: TIntegerField;
    cdsitorcamentoperiodicidadeCDUSUARIOA: TIntegerField;
    cdsitorcamentoperiodicidadeCDCOMPUTADORI: TIntegerField;
    cdsitorcamentoperiodicidadeCDCOMPUTADORA: TIntegerField;
    cdsitorcamentoperiodicidadeCDITORCAMENTO: TIntegerField;
    cdsitorcamentoperiodicidadeCDPERIODICIDADE: TIntegerField;
    cdsitorcamentoperiodicidadeQTITEM: TFloatField;
    cdsitorcamentoperiodicidadeVLUNITARIO: TFMTBCDField;
    cdsitorcamentoperiodicidadeVLTOTAL: TFMTBCDField;
    cdsitorcamentoperiodicidadeTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentoperiodicidadeTSALTERACAO: TSQLTimeStampField;
    tbvitorcamentoperiodicidadeCDPERIODICIDADE: TcxGridDBColumn;
    tbvitorcamentoperiodicidadeQTITEM: TcxGridDBColumn;
    tbvitorcamentoperiodicidadeVLUNITARIO: TcxGridDBColumn;
    tbvitorcamentoperiodicidadeVLTOTAL: TcxGridDBColumn;
    sdsDSTAG: TStringField;
    cdsDSTAG: TStringField;
    lbldstag: TLabel;
    edtdstag: TcxDBTextEdit;
    sdsNUDIASRESCISAO: TIntegerField;
    cdsNUDIASRESCISAO: TIntegerField;
    lblnudiasrescisao: TLabel;
    edtnudiasrescisao: TcxDBSpinEdit;
    sdsdetailCDPERIODICIDADE: TIntegerField;
    cdsdetailCDPERIODICIDADE: TIntegerField;
    tbvCDPERIODICIDADE: TcxGridDBBandedColumn;
    lblnudiasmedicao: TLabel;
    edtnudiasmedicao: TcxDBSpinEdit;
    lbldstag2: TLabel;
    edtdstag2: TcxDBTextEdit;
    lbldstag3: TLabel;
    edtdstag3: TcxDBTextEdit;
    sdsDSTAG2: TStringField;
    sdsDSTAG3: TStringField;
    sdsNUDIASMEDICAO: TIntegerField;
    cdsDSTAG2: TStringField;
    cdsDSTAG3: TStringField;
    cdsNUDIASMEDICAO: TIntegerField;
    sdsDSTAG4: TStringField;
    cdsDSTAG4: TStringField;
    lbldstag4: TLabel;
    edtdstag4: TcxDBTextEdit;
    sdsBOALMOCO: TStringField;
    sdsCDITCONTCLIENTERESPONSAVEL: TIntegerField;
    sdsBOMANUTENCAO: TStringField;
    sdsHRINICIO: TTimeField;
    sdsHRFIM: TTimeField;
    cdsBOALMOCO: TStringField;
    cdsCDITCONTCLIENTERESPONSAVEL: TIntegerField;
    cdsBOMANUTENCAO: TStringField;
    cdsHRINICIO: TTimeField;
    cdsHRFIM: TTimeField;
    lblcditcontclienteresponsavel: TLabel;
    cbxcditcontclienteresponsavel: TcxDBLookupComboBox;
    ckb1: TcxDBCheckBox;
    ckbboalmoco: TcxDBCheckBox;
    lbl1: TLabel;
    edthrinicio: TcxDBTimeEdit;
    lbl2: TLabel;
    edthrfim: TcxDBTimeEdit;
    sdsNUPERIODICIDADEATENDIMENTO: TIntegerField;
    sdsCDPERIODICIDADEATENDIMENTO: TIntegerField;
    cdsNUPERIODICIDADEATENDIMENTO: TIntegerField;
    cdsCDPERIODICIDADEATENDIMENTO: TIntegerField;
    lbl3: TLabel;
    cbxCDPERIODICIDADEATENDIMENTO: TcxDBLookupComboBox;
    lbl4: TLabel;
    edtNUPERIODICIDADEATENDIMENTO: TcxDBSpinEdit;
    sdsDSTAG5: TStringField;
    cdsDSTAG5: TStringField;
    lblDSTAG5: TLabel;
    edtDSTAG5: TcxDBTextEdit;
    actabrirpedido: TAction;
    actabrirordproducao: TAction;
    actabrirrequisicaoproducao: TAction;
    actgerarcotacao: TAction;
    dxBarButton16: TdxBarButton;
    tbvALISS: TcxGridDBBandedColumn;
    tbvVLISS: TcxGridDBBandedColumn;
    sdsdetailNUPERIODICIDADE: TIntegerField;
    cdsdetailNUPERIODICIDADE: TIntegerField;
    tbvNUPERIODICIDADE: TcxGridDBBandedColumn;
    actexibirmotivodeclinarorcamento: TAction;
    dxBarButton17: TdxBarButton;
    bsiStatus: TdxBarSubItem;
    actmudarstatus: TAction;
    txtnmproduto: TDBText;
    sdsNMPRODUTO: TStringField;
    cdsNMPRODUTO: TStringField;
    sdsCDTPFRETE: TStringField;
    cdsCDTPFRETE: TStringField;
    Label4: TLabel;
    edtdtemail: TcxDBDateEdit;
    sdsDTEMAIL: TDateField;
    cdsDTEMAIL: TDateField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsCDCLIENTELIBERADO: TLargeintField;
    sdsCDTRANSPORTADORA: TLargeintField;
    sdsBOITEMDESCONTO: TStringField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsitorcamentorecursoCDEMPRESA: TLargeintField;
    sdsitorcamentomaterialCDEMPRESA: TLargeintField;
    sdsitorcamentomaterialDSOBSERVACAO: TBlobField;
    sdsitorcamentocustoCDEMPRESA: TLargeintField;
    sdsitorcamentoperiodicidadeCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsCDCLIENTELIBERADO: TLargeintField;
    cdsCDTRANSPORTADORA: TLargeintField;
    cdsBOITEMDESCONTO: TStringField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsitorcamentorecursoCDEMPRESA: TLargeintField;
    cdsitorcamentomaterialCDEMPRESA: TLargeintField;
    cdsitorcamentomaterialDSOBSERVACAO: TBlobField;
    cdsitorcamentocustoCDEMPRESA: TLargeintField;
    cdsitorcamentoperiodicidadeCDEMPRESA: TLargeintField;
    actconsultaordcompra: TAction;
    btnordcompra: TdxBarButton;
    tbvordcompra: TcxGridDBTableView;
    tbvordcompraCDORDCOMPRA: TcxGridDBColumn;
    tbvordcompraDTEMISSAO: TcxGridDBColumn;
    tbvordcompraCDDIGITADO: TcxGridDBColumn;
    tbvordcompraNMPRODUTO: TcxGridDBColumn;
    tbvordcompraNMSTORDCOMPRA: TcxGridDBColumn;
    tbvordcompraQTITEM: TcxGridDBColumn;
    tbvordcompraVLUNITARIO: TcxGridDBColumn;
    tbvordcompraVLTOTAL: TcxGridDBColumn;
    actabrirordcompra: TAction;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actAbrirClienteExecute(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actabrirfuncionarioExecute(Sender: TObject);
    procedure actabrirtransportadoraExecute(Sender: TObject);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dtsStateChange(Sender: TObject);
    procedure edtdtprventregaExit(Sender: TObject);
    procedure edtnudiasExit(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure grddetail1DBBandedTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsdetailAfterDelete(DataSet: TDataSet);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure txtnmtransportadoraClick(Sender: TObject);
    procedure txtnmclienteClick(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsdetailAfterPost(DataSet: TDataSet);
    procedure actimprimirorcamentoExecute(Sender: TObject);
    procedure actlocalizarentregaExecute(Sender: TObject);
    procedure actlimparentregaExecute(Sender: TObject);
    procedure cdsitorcamentocustoNewRecord(DataSet: TDataSet);
    procedure cdsitorcamentomaterialNewRecord(DataSet: TDataSet);
    procedure cdsitorcamentorecursoNewRecord(DataSet: TDataSet);
    procedure cxGridDBBandedTableView2CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grdcustoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitorcamentocustoBeforePost(DataSet: TDataSet);
    procedure cdsitorcamentomaterialAfterPost(DataSet: TDataSet);
    procedure cdsitorcamentorecursoAfterPost(DataSet: TDataSet);
    procedure cdsitorcamentocustoAfterPost(DataSet: TDataSet);
    procedure setvlproducao(Sender: TField);
    procedure cxGridDBBandedTableView2QTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitorcamentorecursoBeforePost(DataSet: TDataSet);
    procedure cdsitorcamentomaterialBeforePost(DataSet: TDataSet);
    procedure setvalorfinal(Sender: TField);
    procedure setvalormaterial(Sender: TField);
    procedure pgc3Change(Sender: TObject);
    procedure actgerarpedidoExecute(Sender: TObject);
    procedure actimprimiranaliticoExecute(Sender: TObject);
    procedure cdsitorcamentocustoAfterDelete(DataSet: TDataSet);
    procedure cdsitorcamentomaterialAfterDelete(DataSet: TDataSet);
    procedure cdsitorcamentorecursoAfterDelete(DataSet: TDataSet);
    procedure lblNMCLIENTEDblClick(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure actanalisecriticaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvitorcamentomaterialCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirprodutompExecute(Sender: TObject);
    procedure cbxcdtporcamentoEnter(Sender: TObject);
    procedure cbxcdcondpagtoEnter(Sender: TObject);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure cbxcdtransportadoraEnter(Sender: TObject);
    procedure cbxcdrepresentanteEnter(Sender: TObject);
    procedure actemailExecute(Sender: TObject);
    procedure edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
    procedure actitdeclinarExecute(Sender: TObject);
    procedure tbvFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cdsdetailAfterScroll(DataSet: TDataSet);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actitreabrirExecute(Sender: TObject);
    procedure actdetalharExecute(Sender: TObject);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure cbxcdfuncionarioorcamentistaEnter(Sender: TObject);
    procedure actinserircontatoExecute(Sender: TObject);
    procedure cdsCDREPRESENTANTEValidate(Sender: TField);
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailCDTPGRADEVALORValidate(Sender: TField);
    procedure cdsdetailQTITEMValidate(Sender: TField);
    procedure cdsdetailVLUNITARIOValidate(Sender: TField);
    procedure cdsdetailALIPIValidate(Sender: TField);
    procedure cdsdetailQTLARGURA1Validate(Sender: TField);
    procedure cdsdetailQTALTURA1Validate(Sender: TField);
    procedure cdsdetailQTCOMPRIMENTO1Validate(Sender: TField);
    procedure cdsCDCONDPAGTOValidate(Sender: TField);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure cdsdetailCDformaValidate(Sender: TField);
    procedure cdsdetailALICMSValidate(Sender: TField);
    procedure cdsdetailQTPECAValidate(Sender: TField);
    procedure cdsVLDESCONTOValidate(Sender: TField);
    procedure cdsPRDESCONTOValidate(Sender: TField);
    procedure cdsDTPRVENTREGAValidate(Sender: TField);
    procedure cdsNUDIASValidate(Sender: TField);
    procedure cdsVLFRETEValidate(Sender: TField);
    procedure cdsitorcamentocustoCDDIGITADOValidate(Sender: TField);
    procedure cdsitorcamentorecursoCDTPEQUIPAMENTOValidate(Sender: TField);
    procedure cdsitorcamentorecursoQTPREPARACAOValidate(Sender: TField);
    procedure cdsitorcamentorecursoQTOPERACAOValidate(Sender: TField);
    procedure cdsitorcamentorecursoVLPREPARACAOValidate(Sender: TField);
    procedure cdsitorcamentorecursoVLOPERACAOValidate(Sender: TField);
    procedure cdsitorcamentomaterialCDDIGITADOValidate(Sender: TField);
    procedure cdsitorcamentomaterialQTITEMValidate(Sender: TField);
    procedure cdsitorcamentocustoQTITEMValidate(Sender: TField);
    procedure cdsDTEMISSAOValidate(Sender: TField);
    procedure cdsdetailVLPRODUCAOPValidate(Sender: TField);
    procedure cdsitorcamentomaterialQTPECAValidate(Sender: TField);
    procedure cdsCDTPORCAMENTOValidate(Sender: TField);
    procedure cdsCDFUNCIONARIOValidate(Sender: TField);
    procedure cdsCDFUNCIONARIOORCAMENTISTAValidate(Sender: TField);
    procedure cdsdetailDSDESENHOValidate(Sender: TField);
    procedure cdsNUCOTACAOValidate(Sender: TField);
    procedure cdsitorcamentomaterialVLUNITARIOValidate(Sender: TField);
    procedure cdsitorcamentocustoNUFATORValidate(Sender: TField);
    procedure cdsdetailVLDESCONTOValidate(Sender: TField);
    procedure cdsdetailVLDESCONTOPRODUCAOValidate(Sender: TField);
    procedure cdsCDCLIENTEENTREGAValidate(Sender: TField);
    procedure cdsdetailPRDESCONTOValidate(Sender: TField);
    procedure cdsdetailCDDIGITADOEMBALAGEMValidate(Sender: TField);
    procedure cdsVLACRESCIMOValidate(Sender: TField);
    procedure cdsCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailALISSValidate(Sender: TField);
    procedure cdsCDTPCOBRANCAValidate(Sender: TField);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actopcoesExecute(Sender: TObject);
    procedure btnaddorcamentoatravesdeClick(Sender: TObject);
    procedure cdsPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure lbltporcamentoDblClick(Sender: TObject);
    procedure lblcondpagtoDblClick(Sender: TObject);
    procedure actabrircondpagtoExecute(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvCDDIGITADOEMBALAGEMPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvQTATENDIDACustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actconsultapedidoExecute(Sender: TObject);
    procedure actconsultaordproducaoExecute(Sender: TObject);
    procedure actgerarrequisicaoproducaoExecute(Sender: TObject);
    procedure actconsultarequisicaoproducaoExecute(Sender: TObject);
    procedure actdetailExecute(Sender: TObject);
    procedure edtcddigitadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcddigitadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actarquivoExecute(Sender: TObject);
    procedure cdsitorcamentoperiodicidadeNewRecord(DataSet: TDataSet);
    procedure cdsitorcamentoperiodicidadeBeforePost(DataSet: TDataSet);
    procedure actabrirpedidoExecute(Sender: TObject);
    procedure tbvpedidoCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure tbvordproducaoCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvrequisicaoproducaoCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirrequisicaoproducaoExecute(Sender: TObject);
    procedure actgerarcotacaoExecute(Sender: TObject);
    procedure actexibirmotivodeclinarorcamentoExecute(Sender: TObject);
    procedure actmudarstatusExecute(Sender: TObject);
    procedure actabrirtporcamentoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure cdsCDTPFRETEValidate(Sender: TField);
    procedure actconsultaordcompraExecute(Sender: TObject);
    procedure actabrirordcompraExecute(Sender: TObject);
    procedure tbvordcompraCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private      { Private declarations }
    tbl, exibe : string;
    equipamento : TEquipamento;
    cliente : TCliente;
    funcionario : TFuncionario;
    produto : TProduto;
    orcamento  : Torcamento;
    representante : TRepresentante;
    qryconsulta : TClasseQuery;
    procedure travarOrcamentoAprovado;
    procedure AlterarVlUnitarioTpCobranca;
    procedure AtualizarPizzaPeca;
    procedure AtualizarPizzaItem;
    function  getemail: string;
    procedure Gravartotais;
    procedure setCalculo;
    procedure setAbrirTabela;
    procedure setEmpresa;
    procedure setrecord(cdtp:integer);
    procedure setvalor;
    procedure settotalmaterial;
    procedure setpreparacao;
    procedure setoperacao;
    procedure setvalorcusto;
    procedure showFields;
    procedure atualizarContatocliente;
    function naoEhServicoTipoRegimeNaoEhSimples:Boolean;
    function naoEhServicoTipoRegimeNaoEhLucroReal:Boolean;
    procedure setQuery(tabela:string);
    procedure setQueryPedido;
    procedure setQueryRequisicaoproducao;
    procedure setQueryOrdproducao;
    procedure SetOpcoesStatus;
    procedure adicionarValorPizzaPeca(nome: string; valor: currency);
    procedure adicionarValorPizzaItem(nome: string; valor: currency);
    function exibirDesenhoAnterior(Sender: TField): Boolean;
    function makesqlSetQueryOrdproducao: string;
    function makesqlSetQueryPedido: string;
    function makesqlSetQueryRequisicaoproducao: string;
    procedure DesativarOnValidate;
    procedure AtivarOnValidateFields;
    procedure PreencherEnderecoEntrega;
    procedure setQueryOrdCompra;
    function makesqlSetQueryOrdcompra: string;
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmOrcamento: TfrmOrcamento;

implementation

uses UMain,
  uDtmMain,
  uimprimirrelatoriopadrao,
  udlgselecionar,
  udlgcalculopeso,
  Math,
  ugerarpedido,
  ulocalizarFuncionario,
  rptestoquecompleto,
  udeclinarorcamento,
  uanalisecritica,
  udlgdesenhoorcamento,
  udlgDetalheOrcamento,
  uNovoTabela,
  uMenuRelatorio,
  uDBMemo,
  classearquivo,
  udlgarquivo, classeregrast;

{$R *.DFM}

const
  artigoI  = 'o';

procedure TfrmOrcamento.setEmpresa;
begin
  lblrepresentante.Visible   := Empresa.comercial.representante.bo;
  cbxCDREPRESENTANTE.Visible := Empresa.comercial.representante.bo;
end;

procedure TfrmOrcamento.SetOpcoesStatus;
var
  b1 : array of TdxBarButton;
  storcamentoList : tstorcamentolist;
  i: Integer;
begin
  storcamentolist := tstorcamentolist.create;
  try
    storcamentolist.ler(_cdempresa+'='+empresa.cdempresa.tostring);
    SetLength(b1, storcamentolist.Count);
    for i := 0 to storcamentolist.count - 1 do
    begin
      B1[i] := TdxBarButton.Create(Self);
      with B1[i] do
      begin
        Caption := storcamentolist.Items[i].nmstorcamento;
        Description := inttostr(storcamentolist.Items[i].cdstorcamento);
        OnClick := actmudarstatusExecute;
      end;
      bsiStatus.ItemLinks.Add.Item := B1[i];
    end;
  finally
    freeandnil(storcamentolist);
  end;
end;

function get_index(nome:string; tbv: TcxGridDBBandedTableView):Integer;
var
  i : Integer;
begin
  result := -1;
  for i := 0 to tbv.ItemCount - 1 do
  begin
    if tbv.Bands[i].Caption = nome then
    begin
      result := i;
      Break;
    end;
  end;
end;

procedure TfrmOrcamento.setrecord(cdtp:integer);
begin
  if cdtp = 0 then
  begin
    exit;
  end;
  orcamento.tporcamento.Select(cdtp);

  actgerarcotacao.Visible := orcamento.tporcamento.cdtppedidomaterial > 0;
  actgerarcotacao.Enabled := actgerarcotacao.Visible;

  tbvCDTPITORCAMENTO.Visible := orcamento.tporcamento.boitemtp = _s;

  gbxproduto.Visible := orcamento.tporcamento.boproduto = _s;
  actgerarrequisicaoproducao.Visible    := orcamento.tporcamento.bogerarrequisicaoproducao = _s;
  actconsultarequisicaoproducao.Visible := orcamento.tporcamento.bogerarrequisicaoproducao = _s;

  tbvVLACRESCIMO.Visible := orcamento.tporcamento.boitemacrescimo = _s;
  edtvlacrescimo.Visible := orcamento.tporcamento.boacrescimo = _s;
  lblvlacrescimo.Visible := orcamento.tporcamento.boacrescimo = _s;

  tbvVLACRESCIMO.Options.Focusing := orcamento.tporcamento.boitemanalisecritica <> _s;
  edtvlacrescimo.Enabled          := orcamento.tporcamento.boitemanalisecritica <> _s;

  actarquivo.Visible := orcamento.tporcamento.boarquivo = _s;

  lblprmulta.Visible := orcamento.tporcamento.boprmulta = _s;
  edtprmulta.Visible := orcamento.tporcamento.boprmulta = _s;

  lblnudiasrescisao.Visible := orcamento.tporcamento.bonudiasrescisao = _s;
  edtnudiasrescisao.Visible := orcamento.tporcamento.bonudiasrescisao = _s;

  lblprmoradiaria.Visible := orcamento.tporcamento.boprmoradiaria = _s;
  edtprmoradiaria.Visible := orcamento.tporcamento.boprmoradiaria = _s;

  lbldstag.Visible := orcamento.tporcamento.bodstag = _s;
  edtdstag.Visible := orcamento.tporcamento.bodstag = _s;

  lbldstag2.Visible := orcamento.tporcamento.bodstag2 = _s;
  edtdstag2.Visible := orcamento.tporcamento.bodstag2 = _s;

  lbldstag3.Visible := orcamento.tporcamento.bodstag3 = _s;
  edtdstag3.Visible := orcamento.tporcamento.bodstag3 = _s;

  lbldstag4.Visible := orcamento.tporcamento.bodstag4 = _s;
  edtdstag4.Visible := orcamento.tporcamento.bodstag4 = _s;

  lbldstag5.Visible := orcamento.tporcamento.bodstag5 = _s;
  edtdstag5.Visible := orcamento.tporcamento.bodstag5 = _s;

  lbldstag.caption  := orcamento.tporcamento.nmdstag;
  lbldstag2.caption := orcamento.tporcamento.nmdstag2;
  lbldstag3.caption := orcamento.tporcamento.nmdstag3;
  lbldstag4.caption := orcamento.tporcamento.nmdstag4;
  lbldstag5.caption := orcamento.tporcamento.nmdstag5;

  lblnudiasmedicao.Visible := orcamento.tporcamento.bonudiasmedicao = _s;
  edtnudiasmedicao.Visible := orcamento.tporcamento.bonudiasmedicao = _s;

  if orcamento.tporcamento.tpdata = _r then
  begin
    lblentrega.Caption                    := 'Resposta';
    edtdtprventrega.DataBinding.DataField := _dtresposta;
  end
  else if orcamento.tporcamento.tpdata = _e then
  begin
    lblentrega.Caption                    := 'Entrega';
    edtdtprventrega.DataBinding.DataField := _dtprventrega;
  end;

  tbvCDCONDPAGTO.Visible := orcamento.tporcamento.boitemcondpagto = _s;

  actimprimirorcamento.Visible := orcamento.tporcamento.boreportorcamento = _s;
  actimprimiranalitico.Visible := orcamento.tporcamento.boreportanalitico = _s;

  tbvCDPERIODICIDADE.Visible := orcamento.tporcamento.boitemcdperiodicidade = _s;
  tbvNUPERIODICIDADE.Visible := orcamento.tporcamento.boitemcdperiodicidade = _s;

  tbvDSPRODUTO.Visible  := orcamento.tporcamento.boitemdsproduto = _s;
  if orcamento.tporcamento.boitemdescricao = _s then
  begin
    tbvNMPRODUTO.DataBinding.FieldName := _dsproduto;
    tbvNMPRODUTO.Options.Focusing      := True;
  end
  else
  begin
    tbvNMPRODUTO.DataBinding.FieldName := _nmproduto;
    tbvNMPRODUTO.Options.Focusing      := false;
  end;
  tbscomercial.TabVisible := orcamento.tporcamento.bocomercial = _s;
  if orcamento.tporcamento.nmperiodicidade <> '' then
  begin
    lblperiodicidade.Caption := orcamento.tporcamento.nmperiodicidade;
  end;
  if orcamento.tporcamento.dsnudias <> '' then
  begin
    lblnudias.Caption := orcamento.tporcamento.dsnudias;
  end;
  if orcamento.tporcamento.dsreferencia <> '' then
  begin
    lbldsreferencia.Caption := orcamento.tporcamento.dsreferencia;
  end;
  if orcamento.tporcamento.dsorcamentista <> '' then
  begin
    lblorcamentista.Caption := orcamento.tporcamento.dsorcamentista;
  end;
  if orcamento.tporcamento.dsrepresentante <> '' then
  begin
    lblrepresentante.Caption := orcamento.tporcamento.dsrepresentante;
  end;
  if orcamento.tporcamento.dsresponsavel <> '' then
  begin
    lblcditcontclienteresponsavel.Caption := orcamento.tporcamento.dsresponsavel;
  end;

  actanalisecritica.Visible := orcamento.tporcamento.boanalisecritica = _s;
  actanalisecritica.Enabled := orcamento.tporcamento.boanalisecritica = _s;

  lblcontato.Visible         := orcamento.tporcamento.boitcontcliente = _s;
  cbxcditcontcliente.Visible := orcamento.tporcamento.boitcontcliente = _s;
  actinserircontato.Visible  := orcamento.tporcamento.boitcontcliente = _s;
  actinserircontato.enabled  := ((dts.State = dsedit) or (dts.State = dsinsert)) and (orcamento.tporcamento.boitcontcliente = _s);

  lblfuncioario.Visible      := orcamento.tporcamento.bofuncionario = _s;
  cbxcdfuncionario.Visible   := orcamento.tporcamento.bofuncionario = _s;
  cbxCDFUNCIONARIO.Enabled   := orcamento.tporcamento.bofuncionariousuario <> _s;

  lblorcamentista.Visible              := orcamento.tporcamento.bofuncionarioorcamentista = _s;
  cbxcdfuncionarioorcamentista.Visible := orcamento.tporcamento.bofuncionarioorcamentista = _s;
  cbxcdfuncionarioorcamentista.Enabled := orcamento.tporcamento.bofuncionarioorcamentista = _s;

  lblrepresentante.Visible   := orcamento.tporcamento.borepresentante = _s;
  cbxcdrepresentante.Visible := orcamento.tporcamento.borepresentante = _s;
  gbxoutras.Visible := (orcamento.tporcamento.borepresentante = _s) or (orcamento.tporcamento.bofuncionario = _s) or (orcamento.tporcamento.bocotacao = _s);

  edtnucotacao.Visible := orcamento.tporcamento.bocotacao = _s;
  lblcotacao.Visible   := orcamento.tporcamento.bocotacao = _s;

  edtnucontrato.Visible := orcamento.tporcamento.bocontrato = _s;
  lblnucontrato.Visible := orcamento.tporcamento.bocontrato = _s;

  lblnudias.Visible := orcamento.tporcamento.bonudias = _s;
  edtnudias.Visible := orcamento.tporcamento.bonudias = _s;

  lbldsreferencia.Visible := orcamento.tporcamento.boclientereferencia = _s;
  edtdsreferencia.Visible := orcamento.tporcamento.boclientereferencia = _s;
  //
  lbltransportadora.Visible   := orcamento.tporcamento.botransportadora = _s;
  cbxcdtransportadora.Visible := orcamento.tporcamento.botransportadora = _s;

  tbsobservacao.TabVisible := orcamento.tporcamento.boobservacao = _s;
  tbsobsinterna.TabVisible := orcamento.tporcamento.boobservacaointerna = _s;

  tbsENTREGA.TabVisible := orcamento.tporcamento.boclienteentrega = _s;
  //
  gbxfrete.Visible := orcamento.tporcamento.bofrete = _s;
  //
  tbvBOCERTIFICADO.Visible := orcamento.tporcamento.bocertificado = _s;
  tbvBOINFTECNICA.Visible  := orcamento.tporcamento.boinftecnica = _s;
  tbvDSOBSERVACAO.Visible  := orcamento.tporcamento.bodsobservacaoitem = _s;
  tbvNUSEQUENCIA.Visible   := orcamento.tporcamento.bonusequencia = _s;
  //
  tbv.Bands[2].Caption := orcamento.tporcamento.dstitulodimensional;
  tbv.Bands[get_index(Maiuscula(orcamento.tporcamento.dstitulodimensional), tbv)].Visible := orcamento.tporcamento.bomadeira = _s;
  //
  tbvNUITEM.visible    := orcamento.tporcamento.bonuitem = _s;
  tbvNUCOTACAO.Visible := orcamento.tporcamento.bocotacaoitem = _s;
  tbv.Bands[get_index('Cotação', tbv)].Visible := (orcamento.tporcamento.bonuitem = _s) or (orcamento.tporcamento.bocotacaoitem = _s);

  tbvCDTPGRADEVALOR.Visible := orcamento.tporcamento.botpgrade = _s;

  tbvDSDESENHO.Visible        := orcamento.tporcamento.bodsdesenho = _s;
  tbvDSDESENHOREVISAO.Visible := orcamento.tporcamento.boitemdesenhorevisao = _s;
  tbvDSDESENHOPOSICAO.Visible := orcamento.tporcamento.boitemdesenhoposicao = _s;
  tbv.Bands[get_index(Maiuscula(_Desenho), tbv)].Visible := orcamento.tporcamento.bodsdesenho = _s;

  tbvDSFORMULA.Visible                  := orcamento.tporcamento.boitemformula = _s;
  tbvitorcamentomaterialNUFATOR.Visible := orcamento.tporcamento.bocaldeiraria = _s;
  tbvitorcamentocustoNUFATOR.Visible    := orcamento.tporcamento.bocaldeiraria = _s;
  tbvitorcamentocustoVLFINAL.Visible    := orcamento.tporcamento.bocaldeiraria = _s;

  pnl2.Visible           := (orcamento.tporcamento.bocalculo = _s) or (orcamento.tporcamento.bocaldeiraria = _s) or (orcamento.tporcamento.boitemrecurso = _s) or (orcamento.tporcamento.boitemperiodicidade = _s);
  splcalculo.Visible     := (orcamento.tporcamento.bocalculo = _s) or (orcamento.tporcamento.bocaldeiraria = _s) or (orcamento.tporcamento.boitemrecurso = _s) or (orcamento.tporcamento.boitemperiodicidade = _s);
  tbsPeriodicidade.TabVisible := orcamento.tporcamento.boitemperiodicidade = _s;
  tbsmaterial.TabVisible := orcamento.tporcamento.boitemmaterial = _s;
  sptitem.Visible        := (orcamento.tporcamento.boitemmaterial = _s) and (orcamento.tporcamento.bocaldeiraria <> _s) and (orcamento.tporcamento.bocalculo = _s);
  pgcITEM.Visible        := (orcamento.tporcamento.boitemmaterial = _s) and (orcamento.tporcamento.bocaldeiraria <> _s) and (orcamento.tporcamento.bocalculo = _s);
  tbscustos.TabVisible   := orcamento.tporcamento.boitemcusto = _s;
  tbsrecursos.TabVisible := orcamento.tporcamento.boitemRecurso = _s;
  tbvrecursoVLPREPARACAO.Options.Editing := orcamento.tporcamento.boitemrecursoalteravalor = _s;
  tbvrecursoVLOPERACAO.Options.Editing   := orcamento.tporcamento.boitemRecursoalteravalor = _s;
  tbvrecurso.Bands[get_index('Operação'  , tbvrecurso)].Visible := orcamento.tporcamento.boitemrecursooperacao = _s;
  tbvrecurso.Bands[get_index('Preparação', tbvrecurso)].Visible := orcamento.tporcamento.boitemrecursopreparacao = _s;
  tbv.Bands[TQForm.ObterIndiceTableView('Embalagem', tbv)].Visible := orcamento.tporcamento.boprodutoembalagem = _s;
  edtitemqtoperacao.Visible := orcamento.tporcamento.boitemrecursooperacao = _s;
  edtitemprepacao.Visible   := orcamento.tporcamento.boitemrecursopreparacao = _s;


  tbv.Bands[get_index('ISS', tbv)].Visible := orcamento.tporcamento.boiss = _s;

  tbvVLICMSSUBTRIB.Visible := orcamento.tporcamento.boicmssubtrib = _s;
  tbvALICMSSUBTRIB.Visible := orcamento.tporcamento.boicmssubtrib = _s;
  tbvALMVA.Visible         := orcamento.tporcamento.boicmssubtrib = _s;
  tbvALICMS.Visible        := orcamento.tporcamento.boicmssubtrib = _s;
  tbv.Bands[get_index('ICMS Sub Trib', tbv)].Visible := orcamento.tporcamento.boicmssubtrib = _s;

  tbvVLFRETE.Visible    := orcamento.tporcamento.boexibirfrete = _s;

  tbvALIPI.Visible       := orcamento.tporcamento.boipi = _s;
  tbvVLIPI.Visible       := orcamento.tporcamento.boipi = _s;
  tbvVLTOTALCIPI.Visible := orcamento.tporcamento.boipi = _s;
  lbltotalcipi.Visible := orcamento.tporcamento.boipi = _s;
  txtvltotalcipi.Visible := orcamento.tporcamento.boipi = _s;
  tbv.Bands[get_index(UpperCase(_IPI), tbv)].Visible := orcamento.tporcamento.boipi = _s;

  tbvDTPRVENTREGA.Visible           := orcamento.tporcamento.bodtprventregaitem = _s;
  tbvVLUNITARIO.Properties.ReadOnly := orcamento.tporcamento.boitemalterarvalor <> _s;
  //
  cbxcdtpcobranca.Visible   := orcamento.tporcamento.botpcobranca = _s;
  lbltpcobranca.visible     := orcamento.tporcamento.botpcobranca = _s;

  lbldesconto.visible      := orcamento.tporcamento.bodesconto = _s;
  edtvldesconto.Visible    := orcamento.tporcamento.bodesconto = _s;
  edtprdesconto.Visible    := orcamento.tporcamento.bodesconto = _s;

  edtvldesconto.Enabled := orcamento.tporcamento.boitemdesconto <> _s;
  edtprdesconto.Enabled := orcamento.tporcamento.boitemdesconto <> _s;
  tbvVLDESCONTO.Visible := orcamento.tporcamento.boitemdesconto = _s;
  tbvPRDESCONTO.Visible := orcamento.tporcamento.boitemdesconto = _s;

  //
  tbvCDTPICMS.Visible := orcamento.tporcamento.boitemtpicms = _s;
  tbvALICMS.Visible   := orcamento.tporcamento.boicms = _s;
  tbvVLICMS.Visible   := orcamento.tporcamento.boicms = _s;
  tbv.Bands[get_index(UpperCase(_ICMS), tbv)].Visible := orcamento.tporcamento.boicms = _s;

  tbvNUPRAZOENTREGA.Visible := orcamento.tporcamento.boitemnuprazoentrega = _s;
  tbvDTAPROVACAO.Visible    := orcamento.tporcamento.boitemdtaprovacao = _s;
  tbv.Bands[get_index('Datas', tbv)].Visible := (orcamento.tporcamento.boitemnuprazoentrega = _s) or (orcamento.tporcamento.boitemdtaprovacao = _s);
  tbvNUCLFISCAL.Visible     := orcamento.tporcamento.boitemnuclfiscal = _s;
end;

function TfrmOrcamento.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmOrcamento.AtivarOnValidateFields;
begin
  cdsVLDESCONTO.OnValidate := cdsVLDESCONTOValidate;
  cdsVLACRESCIMO.OnValidate := cdsVLACRESCIMOValidate;
  cdsCDREPRESENTANTE.OnValidate := cdsCDREPRESENTANTEValidate;
  cdsCDCONDPAGTO.OnValidate := cdsCDCONDPAGTOValidate;
  cds.fieldbyname(_CDCLIENTE).OnValidate := cdsCDCLIENTEValidate;
  cdsPRDESCONTO.OnValidate := cdsPRDESCONTOValidate;
  cdsDTPRVENTREGA.OnValidate := cdsDTPRVENTREGAValidate;
  cdsNUDIAS.OnValidate := cdsNUDIASValidate;
  cdsVLFRETE.OnValidate := cdsVLFRETEValidate;
  cdsDTEMISSAO.OnValidate := cdsDTEMISSAOValidate;
  cdsCDTPORCAMENTO.OnValidate := cdsCDTPORCAMENTOValidate;
  cdsCDFUNCIONARIO.OnValidate := cdsCDFUNCIONARIOValidate;
  cdsCDFUNCIONARIOORCAMENTISTA.OnValidate := cdsCDFUNCIONARIOORCAMENTISTAValidate;
  cdsNUCOTACAO.OnValidate := cdsNUCOTACAOValidate;
  cdsCDCLIENTEENTREGA.OnValidate := cdsCDCLIENTEENTREGAValidate;
  cdsCDDIGITADO.OnValidate := cdsCDDIGITADOValidate;
  cdsCDTPCOBRANCA.OnValidate := cdsCDTPCOBRANCAValidate;
  cdsdetailcdtpgradevalor.onvalidate := cdsdetailCDTPGRADEVALORValidate;
  cdsdetailCDDIGITADO.onvalidate := cdsdetailCDDIGITADOValidate;
  cdsdetailQTITEM.onvalidate := cdsdetailQTITEMValidate;
  cdsdetailVLUNITARIO.onvalidate := cdsdetailVLUNITARIOValidate;
  cdsdetailALIPI.onvalidate := cdsdetailALIPIValidate;
  cdsdetailQTLARGURA1.onvalidate := cdsdetailQTLARGURA1Validate;
  cdsdetailQTALTURA1.onvalidate := cdsdetailQTALTURA1Validate;
  cdsdetailQTCOMPRIMENTO1.onvalidate := cdsdetailQTCOMPRIMENTO1Validate;
  cdsdetailALICMS.onvalidate := cdsdetailALICMSValidate;
  cdsdetailQTPECA.onvalidate := cdsdetailQTPECAValidate;
  cdsdetailVLDESCONTO.onvalidate := cdsdetailVLDESCONTOValidate;
  cdsdetailVLDESCONTOPRODUCAO.onvalidate := cdsdetailVLDESCONTOPRODUCAOValidate;
  cdsdetailPRDESCONTO.onvalidate := cdsdetailPRDESCONTOValidate;
  cdsdetailCDDIGITADOEMBALAGEM.onvalidate := cdsdetailCDDIGITADOEMBALAGEMValidate;
  cdsdetailALISS.onvalidate := cdsdetailALISSValidate;
  cdsdetailVLPRODUCAOP.onvalidate := cdsdetailVLPRODUCAOPValidate;
  cdsdetailDSDESENHO.onvalidate := cdsdetailDSDESENHOValidate;
end;

procedure TfrmOrcamento.DesativarOnValidate;
begin
  cdsVLDESCONTO.OnValidate := nil;
  cdsVLACRESCIMO.OnValidate := nil;
  cdsCDREPRESENTANTE.OnValidate := nil;
  cdsCDCONDPAGTO.OnValidate := nil;
  cds.fieldbyname(_CDCLIENTE).OnValidate := nil;
  cdsPRDESCONTO.OnValidate := nil;
  cdsDTPRVENTREGA.OnValidate := nil;
  cdsNUDIAS.OnValidate := nil;
  cdsVLFRETE.OnValidate := nil;
  cdsDTEMISSAO.OnValidate := nil;
  cdsCDTPORCAMENTO.OnValidate := nil;
  cdsCDFUNCIONARIO.OnValidate := nil;
  cdsCDFUNCIONARIOORCAMENTISTA.OnValidate := nil;
  cdsNUCOTACAO.OnValidate := nil;
  cdsCDCLIENTEENTREGA.OnValidate := nil;
  cdsCDDIGITADO.OnValidate := nil;
  cdsCDTPCOBRANCA.OnValidate := nil;
  cdsdetailcdtpgradevalor.onvalidate := nil;
  cdsdetailCDDIGITADO.onvalidate := nil;
  cdsdetailQTITEM.onvalidate := nil;
  cdsdetailVLUNITARIO.onvalidate := nil;
  cdsdetailALIPI.onvalidate := nil;
  cdsdetailQTLARGURA1.onvalidate := nil;
  cdsdetailQTALTURA1.onvalidate := nil;
  cdsdetailQTCOMPRIMENTO1.onvalidate := nil;
  cdsdetailALICMS.onvalidate := nil;
  cdsdetailQTPECA.onvalidate := nil;
  cdsdetailVLDESCONTO.onvalidate := nil;
  cdsdetailVLDESCONTOPRODUCAO.onvalidate := nil;
  cdsdetailPRDESCONTO.onvalidate := nil;
  cdsdetailCDDIGITADOEMBALAGEM.onvalidate := nil;
  cdsdetailALISS.onvalidate := nil;
  cdsdetailVLPRODUCAOP.onvalidate := nil;
  cdsdetailDSDESENHO.onvalidate := nil;
end;

procedure TfrmOrcamento.actAbrirExecute(Sender: TObject);
begin
  cdsdetail.AfterScroll := nil;
  registro.abrir;
  cdsdetail.AfterScroll := cdsdetailAfterScroll;
end;

procedure TfrmOrcamento.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmOrcamento.actSalvarExecute(Sender: TObject);
begin
  Self.Perform(WM_NEXTDLGCTL,0,0);
  cdsCDTPFRETEValidate(cdsCDTPFRETE);
  cdsitorcamentomaterial.AfterScroll := nil;
  cdsdetail.AfterScroll := nil;
  if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
  begin
    cdsdetail.Post;
  end;
  if (orcamento.tporcamento.boproduto <> _s) and (cdsdetail.RecordCount = 0) then
  begin
    messagedlg(Format('Preenchimento dos produtos do %s obrigatório!', [exibe]), mterror, [mbok], 0);
    abort;
  end;
  Gravartotais;
  Gravartotais;
  registro.salvar;
  cdsdetail.AfterScroll := cdsdetailAfterScroll;
  cdsdetailAfterScroll(cdsdetail);
  registro.set_readonly_dados(self, true);
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmOrcamento.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmOrcamento.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmOrcamento.actexibirmotivodeclinarorcamentoExecute(
  Sender: TObject);
begin
  if DeclinarOrcamento(cdscdorcamento.AsString, qregistro.CodigodoNome(_storcamento, UpperCase(_CANCELADO)), false) then
  begin
    Abrir(cdscdorcamento.asInteger);
  end;
end;

procedure TfrmOrcamento.actCancelarExecute(Sender: TObject);
begin
  cdsitorcamentomaterial.AfterScroll := nil;
  cdsdetail.AfterScroll              := nil;
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
  cdsdetail.AfterScroll := cdsdetailAfterScroll;
  cdsdetailAfterScroll(cdsdetail);
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmOrcamento.actEditarExecute(Sender: TObject);
begin
  cdsitorcamentomaterial.AfterScroll := nil;
  cdsdetail.AfterScroll := nil;
  registro.editar;
  cdsdetail.AfterScroll := cdsdetailAfterScroll;
  cdsdetailAfterScroll(cdsdetail);
end;

procedure TfrmOrcamento.FormShow(Sender: TObject);
begin
  cliente       := TCliente.create;
  funcionario   := TFuncionario.create;
  produto       := TProduto.create;
  equipamento   := tequipamento.create;
  orcamento     := Torcamento.create ;
  Representante := TRepresentante.create;

  sptitem.CloseSplitter;
  splcalculo.CloseSplitter;
  pgc.ActivePage := tbsobservacao;
  pgc.ActivePage := tbsproduto;
  splcalculo.visible := false;

  pnl.Caption := exibe;
  edtCodigo.SetFocus;
  setempresa;
  tbvitorcamentomaterial.Bands[get_index(UpperCase(_pis)   , tbvitorcamentomaterial)].Visible := Empresa.tpregime = _R;
  tbvitorcamentomaterial.Bands[get_index(UpperCase(_COFINS), tbvitorcamentomaterial)].Visible := Empresa.tpregime = _R;
  tbvitorcamentomaterialBORECUPERAIPI.Visible  := not (Empresa.tpregime = _s);
  tbvitorcamentomaterialBORECUPERAICMS.Visible := not (Empresa.tpregime = _s);
end;

procedure TfrmOrcamento.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmOrcamento.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmOrcamento.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmOrcamento.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmOrcamento.AlterarVlUnitarioTpCobranca;
begin
  cdsdetail.DisableControls;
  try
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      produto.Select(cdsdetail.FieldByName(_cdproduto).AsInteger);
      if (orcamento.tporcamento.boitemvlunitariotpcobranca = _s) and (not cds.FieldByName(_cdtpcobranca).IsNull) then
      begin
        cdsdetail.edit;
        if orcamento.tpcobranca.boavista = _s then
        begin
          cdsdetail.FieldByName(_vlunitario).AsCurrency := produto.vlvenda;
        end
        else
        begin
          cdsdetail.FieldByName(_vlunitario).AsCurrency := produto.vlprazo;
        end;
        cdsdetail.post;
      end;
      cdsdetail.Next;
    end;
  finally
    cdsdetail.EnableControls;
  end;
end;

procedure TfrmOrcamento.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmOrcamento.actAbrirClienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrcamento.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmOrcamento.FormDestroy(Sender: TObject);
begin
  freeandnil(qryconsulta);
  freeandnil(funcionario);
  freeandnil(cliente);
  freeandnil(produto);
  freeandnil(representante);
  freeandnil(orcamento);
  freeandnil(registro);
  FreeAndNil(equipamento);
end;

procedure TfrmOrcamento.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmOrcamento.Gravartotais;
var
  recatual, I: Integer;
begin
  cdsdetail.DisableControls;
  cdsdetail.AfterPost := nil;
  DesativarOnValidate;
  try
    recatual := cdsdetail.RecNo;
    orcamento.select(cds);
    orcamento.itorcamento.Ler(cdsdetail);
    orcamento.Totalizar;
    cdsdetail.first;
    for I := 0 to orcamento.itorcamento.count - 1 do
    begin
      cdsdetail.Edit;
      orcamento.itorcamento.items[i].Atribuir(cdsdetail);
      cdsdetail.post;
      cdsdetail.next;
    end;
    cdsdetail.RecNo := recatual;
    orcamento.Atribuir(cds);
  finally
    cdsdetail.EnableControls;
    cdsdetail.AfterPost := cdsdetailAfterPost;
    AtivarOnValidateFields;
  end;
end;

procedure TfrmOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmOrcamento.actabrirfuncionarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrcamento.actabrirtporcamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmOrcamento.actabrirtransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrcamento.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdclientePropertiesButtonClick(self, cds);
end;

procedure TfrmOrcamento.edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
  nextcontrol(Sender, Key, shift);
end;

procedure TfrmOrcamento.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  if (dts.State = dsedit) or (dts.State = dsinsert) then
  begin
    actgerarpedido.Enabled := false;
  end;
  actinserircontato.enabled := ((dts.State = dsedit) or (dts.State = dsinsert)) and (orcamento.tporcamento.boitcontcliente = _s);
  actdetalhar.Visible := (dts.State <> dsedit) and (dts.State <> dsinsert);
  btnaddorcamentoatravesde.Enabled := not acteditar.Enabled;
  actlimparentrega.Enabled := actSalvar.Enabled;
  actlocalizarentrega.Enabled := actsalvar.Enabled;
end;

procedure TfrmOrcamento.edtdtprventregaExit(Sender: TObject);
begin
  colorexit(sender);
end;

procedure TfrmOrcamento.edtnudiasExit(Sender: TObject);
begin
  colorexit(sender);
end;

procedure TfrmOrcamento.cdsAfterScroll(DataSet: TDataSet);
begin
  if btnpedido.Down then
  begin
    setQuery(_pedido)
  end
  else if btnordproducao.Down then
  begin
    setQuery(_ordproducao);
  end;
  orcamento.Select(cds);
  orcamento.itorcamento.Ler(cdsdetail);
  //registro.setStatus(tbl, dataset);
  setrecord(cdsCDTPORCAMENTO.asinteger);
  actdetalhar.Enabled := (orcamento.tporcamento.bocalculo = _s) and (cdsdetail.RecordCount > 0) and (dts.State <> dsedit) and (dts.State <> dsinsert);
  actdetalhar.Visible := (orcamento.tporcamento.bocalculo = _s) and (cdsdetail.RecordCount > 0) and (dts.State <> dsedit) and (dts.State <> dsinsert);
  actgerarpedido.Enabled := NomedoCodigo(_storcamento, cdsCDSTorcamento.asstring, _bogerarinfo) = _s;
  if (dts.State = dsedit) or (dts.State = dsinsert) then
  begin
    actgerarpedido.Enabled := false;
  end;
  atualizarcontatocliente;
  travarOrcamentoAprovado;
  orcamento.condpagto.select(cdsCDCONDPAGTO.Asinteger);
  orcamento.tpcobranca.Select(cds.fieldbyname(_cdtpcobranca).asinteger);
  lblnmcliente.Hint := qregistro.get_Hint(_cliente, cds.fieldbyname(_CDCLIENTE).asstring);
end;

procedure TfrmOrcamento.cdsBeforePost(DataSet: TDataSet);
var
  linha : string;
begin
  if cds.fieldbyname(_CDCLIENTE).isnull then // Obrigatoriedade do Cliente
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Cliente]), mtinformation, [mbok], 0);
    cds.fieldbyname(_CDCLIENTE).FocusControl;
    abort;
  end;
  if (orcamento.tporcamento.bodsobservacaocliente = _s) and (dataset.State = dsinsert) and (not cds.fieldbyname(_CDCLIENTE).IsNull) and (not (Pos('Observação do Cliente: ', cdsDSOBSERVACAO.asstring) > 0)) then
  begin
    linha := MemodoCodigo(_cliente, cds.fieldbyname(_CDCLIENTE).AsString, _dsobservacao);
    if not (linha = '') then
    begin
      cdsDSOBSERVACAO.AsString := cdsDSOBSERVACAO.AsString + 'Observação do Cliente: ('+linha+')'#13;
    end;
  end;
  registro.set_update(cds);
end;

procedure TfrmOrcamento.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if (orcamento.tporcamento.boitemdescricao <> _s) and (DataSet.FieldByName(_cddigitado).AsString = '') then
  begin
    pgc.ActivePage := tbsproduto;
    cdsdetailCDDIGITADO.FocusControl;
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_do+' '+_produto]), mtinformation, [mbok], 0);
    Abort;
  end;
  if DataSet.FieldByName(_qtitem).AsFloat = 0 then
  begin
    pgc.ActivePage := tbsproduto;
    cdsdetailQTITEM.FocusControl;
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Quantidade]), mtinformation, [mbok], 0);
    Abort;
  end;
  if DataSet.FieldByName(_qtitem).AsFloat < 0 then
  begin
    pgc.ActivePage := tbsproduto;
    cdsdetailQTITEM.FocusControl;
    MessageDlg('A quantidade do item não poder ser um valor negativo.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (orcamento.tporcamento.bodtprventregaitem = _s) and cdsdetailDTPRVENTREGA.IsNull then
  begin
    cdsdetailDTPRVENTREGA.AsDateTime := cdsDTPRVENTREGA.AsDateTime;
  end;
  if dataset.State = dsinsert then
  begin
    cdsdetailCDSTITORCAMENTO.AsInteger := qregistro.Codigo_status_novo(_itorcamento);
  end;
  cdsdetailVLIPI.AsCurrency       := RoundTo(cdsdetailVLTOTAL.AsCurrency * cdsdetailALIPI.AsCurrency / 100, -2);
  if cdsdetailCDTPIPI.AsString = _1 then
  begin
    cdsdetailVLTOTALCIPI.AsCurrency := cdsdetailVLTOTAL.ascurrency + cdsdetailVLIPI.ascurrency
  end
  else
  begin
    cdsdetailVLTOTALCIPI.AsCurrency := cdsdetailVLTOTAL.ascurrency;
  end;
  if orcamento.tporcamento.boiss = _s then
  begin
    DataSet.FieldByName(_vliss).AsCurrency := DataSet.fieldbyname(_aliss).asfloat * DataSet.fieldbyname(_vltotal).AsCurrency / 100;
  end;
  registro.set_update(cdsdetail);
end;

procedure TfrmOrcamento.edtcodigoEnter(Sender: TObject);
begin
  TcxTextEdit(sender).selectall;
end;

procedure TfrmOrcamento.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmOrcamento.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  cdsdetail.AfterScroll := nil;
  registro.CodigoKeyPress(Sender, Key, actnovo.enabled);
  cdsdetail.AfterScroll := cdsdetailAfterScroll;
end;

procedure TfrmOrcamento.grddetail1DBBandedTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_orcamento, cdsdetail, true);
end;

procedure TfrmOrcamento.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPORCAMENTO.asinteger := registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  pnl.Caption := exibe+' '+edtcodigo.text;
  // inicializa campos
  cdsVLTOTAL.AsCurrency      := 0;
  cdsVLPRODUTO.AsCurrency    := 0;
  cdsDTEMISSAO.AsDateTime    := DtBanco;
  cdsCDSTORCAMENTO.AsInteger  := qregistro.Codigo_status_novo(tbl);
  cdsNUDIAS.AsInteger        := orcamento.tporcamento.nudiasentrega;
  cdsDTPRVENTREGA.AsDateTime := DtBanco + cdsNUDIAS.AsInteger;
  if orcamento.tporcamento.cdtpfrete <> '' then
  begin
    cdsCDTPFRETE.AsString := orcamento.tporcamento.cdtpfrete;
  end;
  cdsCDFUNCIONARIO.AsString := CodigodoCampo(_funcionario, inttostr(usuario.cdusuario), _cdusuario);
  setrecord(cdsCDTPORCAMENTO.asinteger);
  cdsDTEMISSAO.FocusControl;
end;

procedure TfrmOrcamento.cdsdetailAfterDelete(DataSet: TDataSet);
begin
  Gravartotais;
end;

procedure TfrmOrcamento.cdsCDREPRESENTANTEValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  representante.Select(Sender.AsInteger);
  representante.strepresentante.Select(representante.cdstrepresentante);
  if representante.strepresentante.bogerarpedido <> _s then
  begin
    messagedlg('Representante está no status '+representante.strepresentante.nmstrepresentante+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
  end;
end;

procedure TfrmOrcamento.cdsdetailCDDIGITADOValidate(Sender: TField);
var
  regrast : tregrast;
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _boorcamento);
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  produto.tpproduto.select(produto.cdtpproduto);
  produto.CheckDados;
  if not ((orcamento.tporcamento.boiss = _s) and (orcamento.tporcamento.boicms = _s)) then
  begin
    if (orcamento.tporcamento.boiss = _s) and (produto.tpproduto.boservico <> _s) then
    begin
      MessageDlg('Para este tipo de orçamento só é permitido lançar "SERVIÇO".', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      abort;
    end;
    if (orcamento.tporcamento.boiss <> _s) and (produto.tpproduto.boservico = _s) then
    begin
      MessageDlg('Para este tipo de orçamento não é permitido lançar "SERVIÇO".', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      abort;
    end;
  end;
  if (produto.cdproduto <> 0) and (cdsdetailCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    if produto.qtmultiplo > 0 then
    begin
      cdsdetailQTITEM.AsFloat := produto.qtmultiplo;
    end;
    produto.vlvenda             := produto.GetValorGrade(cdsdetailCDTPGRADEVALOR.AsInteger, cds.fieldbyname(_CDCLIENTE).AsString, cdsdetailQTITEM.AsFloat);
    cdsdetailCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  if produto.qtespessura > 0 then
  begin
    cdsdetailQTALTURA1.AsFloat  := produto.qtespessura;
    cdsdetailQTLARGURA1.AsFloat := produto.qtlargura;
  end;
  cdsdetailNMPRODUTO.asstring    := produto.nmproduto;
  cdsdetailDSPRODUTO.AsString    := produto.DSproduto;
  cdsdetailNMUNIDADE.AsString    := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  produto.vlvenda := produto.GetValorGrade(cdsdetailCDTPGRADEVALOR.AsInteger, cds.fieldbyname(_CDCLIENTE).AsString, cdsdetailqtitem.AsFloat);
  if produto.vlvenda + (produto.vlvenda * orcamento.condpagto.pracrescimo / 100) > 0 then
  begin
    cdsdetailVLUNITARIO.AsCurrency := produto.vlvenda + (produto.vlvenda * orcamento.condpagto.pracrescimo / 100);
  end;
  if (orcamento.tporcamento.boitemvlunitariotpcobranca = _s) and (not cds.FieldByName(_cdtpcobranca).IsNull) then
  begin
    if orcamento.tpcobranca.boavista = _s then
    begin
      cdsdetail.FieldByName(_vlunitario).AsCurrency := produto.vlvenda;
    end
    else
    begin
      cdsdetail.FieldByName(_vlunitario).AsCurrency := produto.vlprazo;
    end;
  end;
  cdsdetailBOSERVICO.AsString    := produto.tpproduto.boservico;
  if produto.cdmodbcsticms = 5 then
  begin
    cdsdetailALMVA.AsCurrency := produto.almva;
  end;
  showFields;
  cdsdetailPRLUCRO.AsFloat     := orcamento.tporcamento.prmarkuplucro;
  cdsdetailNUCLFISCAL.AsString := produto.nuclfiscal;
  cdsdetailDSDESENHO.AsString  := produto.dsdesenho;
  cdsdetailPRDESPESAADMINISTRATIVA.AsFloat := orcamento.tporcamento.prmarkupdespesaadministrativa;
  cdsdetailPRDESPESAFRETE.AsFloat := orcamento.tporcamento.prmarkupfrete;
  cdsdetailPRDESPESACOMERCIAL.AsFloat := orcamento.tporcamento.prmarkupdespesacomercial;
  cdsdetailPRDESPESAEMBALAGEM.AsFloat := orcamento.tporcamento.prmarkupembalagem;
  cdsdetailPRDESPESASEGURO.AsFloat := orcamento.tporcamento.prmarkupseguro;
  if produto.tpproduto.boservico = _s then
  begin
    cdsdetailALISS.AsFloat    := orcamento.tporcamento.aliss;
    if empresa.tpregime <> _s then
    begin
      cdsdetailALPIS.AsFloat    := orcamento.tporcamento.alpisservico;
      cdsdetailALCOFINS.AsFloat := orcamento.tporcamento.alcofinsservico;
      cdsdetailALIRPJ.AsFloat   := orcamento.tporcamento.alirpjservico;
      cdsdetailALCSLL.AsFloat   := orcamento.tporcamento.alcsllservico;
    end;
  end
  else
  begin
    if empresa.tpregime = _s then
    begin
      cdsdetailALSIMPLES.AsFloat := orcamento.tporcamento.alsimples;
    end
    else
    begin
      cdsdetailALICMS.AsFloat     := empresa.get_aliquota_destino(qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_CDCLIENTE).AsString, _cduf));
      cdsdetailCDTPICMS.AsInteger := 2;
      cdsdetailcdtpipi.Asinteger  := orcamento.tporcamento.cdtpipi;
      cdsdetailalipi.AsFloat      := orcamento.tporcamento.alipi;
      cdsdetailALPIS.AsFloat      := orcamento.tporcamento.alpis;
      cdsdetailALCOFINS.AsFloat   := orcamento.tporcamento.alcofins;
      cdsdetailALIRPJ.AsFloat     := orcamento.tporcamento.alirpj;
      cdsdetailALCSLL.AsFloat     := orcamento.tporcamento.alcsll;
    end;
  end;
  if orcamento.tporcamento.boicms = _s then
  begin
    cdsdetailALICMS.AsFloat := empresa.get_aliquota_destino(qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_CDCLIENTE).AsString, _cduf));
  end;
  regrast := tregrast.create;
  try
    regrast.GetRegraSTPedidoOrcamento(cdsdetail, cliente.cduf, cliente.get_tpregime);
  finally
    FreeAndNil(regrast);
  end;
end;

procedure TfrmOrcamento.cdsdetailCDformaValidate(Sender: TField);
begin
  if not CodigoExiste(_forma, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_forma)]), mterror, [mbok], 0);
    abort;
  end;
end;

procedure TfrmOrcamento.cdsdetailNewRecord(DataSet: TDataSet);
begin                                                        
  cdsdetailCDITORCAMENTO.AsString := GerarCodigo(_it+tbl);
  cdsdetailQTITEM.AsCurrency      := 1;
  cdsdetailQTAPROVADO.AsCurrency  := 0;
  cdsdetailPRLUCRO.AsCurrency     := 0;
  cdsdetailNUSEQUENCIA.AsInteger  := cdsdetail.RecordCount + 1;
  cdsdetailVLUNITARIO.AsCurrency  := 0;
end;

procedure TfrmOrcamento.cdsdetailCDTPGRADEVALORValidate(Sender: TField);
begin
  if not CodigoExiste(_tpgradevalor, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_tipo+' '+_grade+' '+_valor)]), mterror, [mbok], 0);
    abort;
  end;
  if produto.cdproduto <> cdsdetailCDPRODUTO.AsInteger then
  begin
    produto.select(cdsdetailcdproduto.asinteger);
  end;
  cdsdetailVLUNITARIO.AsCurrency   := produto.getvalorgrade(sender.AsInteger, cds.fieldbyname(_CDCLIENTE).AsString, cdsdetailQTITEM.AsFloat);
end;

procedure TfrmOrcamento.setvalor;
begin
  //cdsdetailVLTOTAL.AsCurrency := RoundTo(cdsdetailQTITEM.AsFloat * cdsdetailVLUNITARIO.ascurrency, -2);
  cdsdetailVLTOTAL.AsCurrency := QRotinas.Roundqp(cdsdetailQTITEM.Asfloat * cdsdetailVLUNITARIO.AsFloat, true);
  if cdsdetailCDTPIPI.AsString = _1 then
  begin
    cdsdetailVLTOTALCIPI.AsCurrency := cdsdetailVLTOTAL.AsCurrency + (cdsdetailVLTOTAL.AsCurrency * cdsdetailALIPI.AsFloat / 100)
  end
  else
  begin
    cdsdetailVLTOTALCIPI.AsCurrency := cdsdetailVLTOTAL.AsCurrency;
  end;
end;

procedure TfrmOrcamento.cdsdetailQTITEMValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Quantidade]), mtinformation, [mbok], 0);
    sender.FocusControl;
    Abort;
  end;
  produto.Select(cdsdetailCDPRODUTO.AsInteger);
  if not cdsdetailCDPRODUTO.IsNull then
  begin
    if (produto.qtmultiplo > 0) and (Trunc((sender.AsFloat / produto.qtmultiplo)) * produto.qtmultiplo <> sender.asfloat) then
    begin
      MessageDlg('Prencher produto com quantidade de múltiplo de '+floattostr(produto.qtmultiplo)+'.', mtInformation, [mbOK], 0);
      sender.FocusControl;
      abort;
    end;
  end;
  if orcamento.tporcamento.bocalculo <> _s then
  begin
    produto.vlvenda := produto.getvalorgrade(cdsdetailCDTPGRADEVALOR.AsInteger, cds.fieldbyname(_CDCLIENTE).AsString, sender.AsFloat);
    if produto.vlvenda + (produto.vlvenda * orcamento.condpagto.pracrescimo / 100) > 0 then
    begin
      cdsdetailVLUNITARIO.AsCurrency := produto.vlvenda + (produto.vlvenda * orcamento.condpagto.pracrescimo / 100);
    end;
  end;
  setvalor;
end;

procedure TfrmOrcamento.cdsdetailVLUNITARIOValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Valor+' '+__unitario]), mtinformation, [mbok], 0);
    sender.FocusControl;
    Abort;
  end;
  if orcamento.tporcamento.boitemvlminimo = _s then
  begin
    produto.Select(cdsdetailCDPRODUTO.AsInteger);
    if (produto.vlminimo > 0) and (sender.AsCurrency < produto.vlminimo) then
    begin
      MessageDlg('Valor unitário não pode ser menor que o valor mínimo de venda do produto.', mtInformation, [mbOK], 0);
      sender.FocusControl;
      Abort;
    end;
  end;
  if (Sender.AsCurrency > 0) and (orcamento.tporcamento.boitemanalisecritica = _s) then
  begin
    if not orcamento.AnaliseCriticaItemFoiFeito(cdsdetailCDITORCAMENTO.AsString) then
    begin
      MessageDlg('Análise crítica do item não foi feita.', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      Abort;
    end;
    if orcamento.AnaliseCriticaItemRestrita(cdsdetailCDITORCAMENTO.AsString) then
    begin
      MessageDlg('Análise crítica do item foi reprovada.', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      Abort;
    end;
  end;
  setvalor;
end;

procedure TfrmOrcamento.cdsdetailALIPIValidate(Sender: TField);
begin
  setvalor;
  cdsdetailVLPRODUCAOPValidate(Sender);
end;

procedure TfrmOrcamento.cdsdetailQTLARGURA1Validate(Sender: TField);
begin
  setCalculo;
end;

procedure TfrmOrcamento.cdsdetailQTALTURA1Validate(Sender: TField);
begin
  setCalculo;
end;

procedure TfrmOrcamento.cdsdetailQTCOMPRIMENTO1Validate(Sender: TField);
begin
  setCalculo;
end;

procedure TfrmOrcamento.setCalculo;
begin
  if orcamento.tporcamento.bomadeira <> _s then
  begin
    Exit;
  end;
  if cdsdetailNMUNIDADE.AsString = 'M3' then
  begin
    cdsdetailQTITEM.AsFloat     := cdsdetailQTLARGURA1.AsFloat * cdsdetailQTCOMPRIMENTO1.AsFloat * cdsdetailQTALTURA1.AsFloat * cdsdetailQTPECA.AsFloat;
    cdsdetailDSFORMULA.AsString := cdsdetailQTLARGURA1.asstring+'x'+cdsdetailqtcomprimento1.AsString+'x'+cdsdetailQTALTURA1.AsString;
  end
  else if cdsdetailNMUNIDADE.AsString = 'ML' then
  begin
    cdsdetailQTITEM.AsFloat     := cdsdetailQTCOMPRIMENTO1.AsFloat * cdsdetailQTPECA.AsFloat;
    cdsdetailDSFORMULA.AsString := cdsdetailQTCOMPRIMENTO1.AsString+'x'+cdsdetailQTPECA.AsString;
  end
  else if cdsdetailNMUNIDADE.AsString = 'M2' then
  begin
    cdsdetailQTITEM.AsFloat     := cdsdetailQTLARGURA1.AsFloat * cdsdetailQTCOMPRIMENTO1.AsFloat * cdsdetailQTPECA.AsFloat;
    cdsdetailDSFORMULA.AsString := cdsdetailQTLARGURA1.asstring+'x'+cdsdetailQTCOMPRIMENTO1.AsString;
  end;
end;

procedure TfrmOrcamento.cdsCDCONDPAGTOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    Exit;
  end;
  orcamento.condpagto.Select(Sender.Asinteger);
  orcamento.condpagto.stcondpagto.Select(orcamento.condpagto.cdstcondpagto);
  if orcamento.condpagto.stcondpagto.bogerarpedido = _n then
  begin
    messagedlg('Condição de Pagamento está no status '+orcamento.condpagto.stcondpagto.nmstcondpagto+#13'que não permite ser inserido no '+exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
  end;
end;

procedure TfrmOrcamento.txtnmtransportadoraClick(Sender: TObject);
begin
  actAbrirtransportadora.onExecute(actAbrirtransportadora);
end;

procedure TfrmOrcamento.cdsCDCLIENTEValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMCLIENTE.Clear;
    cdsRZSOCIAL.Clear;
    cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
    cbxcdcondpagto.Properties.ListSource  := abrir_tabela(_condpagto+_s);
    Exit;
  end;
  if not cliente.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cliente.stcliente.Select(cliente.cdstcliente);
  if (cliente.stcliente.bogerarpedido <> _s) or (cliente.stcliente.bogerarinfo <> _s) then
  begin
    messagedlg('Cliente está no status '+cliente.stcliente.nmstcliente+#13+'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  if cliente.setrestricao(_condpagto) then
  begin
    cbxcdcondpagto.Properties.ListSource := abrir_tabela(_clientecondpagto, cliente.cdcliente.ToString);
  end
  else
  begin
    cbxcdcondpagto.Properties.ListSource := abrir_tabela(_condpagto+_s);
  end;
  if cliente.setrestricao(_tpcobranca) then
  begin
    cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_clientetpcobranca, cliente.cdcliente.ToString);
  end
  else
  begin
    cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
  end;
  cdsNMCLIENTE.AsString := cliente.nmcliente;
  cdsRZSOCIAL.AsString  := cliente.rzsocial;
  if (cliente.boconsumidorfinal = _s) and (cliente.cduf <> empresa.endereco.cduf ) then
  begin
    cdsALICMS.ascurrency := 18
  end
  else
  begin
    cdsALICMS.ascurrency := qregistro.Doubledocodigo(_uf, cliente.cduf, _alicms);
  end;
  if cliente.cdrepresentante = 0 then
  begin
    cdsCDREPRESENTANTE.Clear
  end
  else
  begin
    cdsCDREPRESENTANTE.asInteger := cliente.cdrepresentante;
  end;
  atualizarContatocliente;
  PreencherEnderecoEntrega;
end;

procedure TfrmOrcamento.txtnmclienteClick(Sender: TObject);
begin
  actAbrircliente.onExecute(actAbrircliente);
end;

function TfrmOrcamento.naoEhServicoTipoRegimeNaoEhSimples:Boolean;
begin
  result := (not (cdsdetailBOSERVICO.AsString = _S)) and (empresa.tpregime<>_S);
end;

function TfrmOrcamento.naoEhServicoTipoRegimeNaoEhLucroReal:Boolean;
begin
  result := (not (cdsdetailBOSERVICO.AsString = _S)) and (empresa.tpregime=_r);
end;

procedure TfrmOrcamento.showFields;
begin
  grdpecaVLISSP.Visible         := cdsdetailboservico.asstring = _S;
  grditemvliss.Visible          := cdsdetailBOSERVICO.AsString = _S;

  grdpecaVLICMSP.Visible        := naoEhServicoTipoRegimeNaoEhSimples;
  grditemvlicms.Visible         := naoEhServicoTipoRegimeNaoEhSimples;

  grdpecaVLpisP.Visible         := naoEhServicoTipoRegimeNaoEhSimples;
  grditemvlpis.Visible          := naoEhServicoTipoRegimeNaoEhSimples;

  grdpecaVLcofinsP.Visible      := naoEhServicoTipoRegimeNaoEhSimples;
  grditemvlcofins.Visible       := naoEhServicoTipoRegimeNaoEhSimples;

  grdpecaVLirpjP.Visible        := naoEhServicoTipoRegimeNaoEhSimples;
  grditemvlirpj.Visible         := naoEhServicoTipoRegimeNaoEhSimples;

  grdpecaVLcsllP.Visible        := naoEhServicoTipoRegimeNaoEhSimples;
  grditemvlcsll.Visible         := naoEhServicoTipoRegimeNaoEhSimples;

  grdpecaVLIPIP.Visible         := naoEhServicoTipoRegimeNaoEhSimples;
  grditemvlipi.visible          := naoEhServicoTipoRegimeNaoEhSimples;

  grdpecaVLLUCROIRCSP.Visible   := naoEhServicoTipoRegimeNaoEhLucroReal;
  grditemVLLUCROIRCS.Visible    := naoEhServicoTipoRegimeNaoEhLucroReal;
  grdpecaVLIRCSLLP.Visible      := naoEhServicoTipoRegimeNaoEhLucroReal;
  grditemvlircsll.visible       := naoEhServicoTipoRegimeNaoEhLucroReal;
end;

procedure TfrmOrcamento.cdsdetailALICMSValidate(Sender: TField);
begin
  cdsdetailVLICMS.AsCurrency := cdsdetailVLTOTAL.AsCurrency * cdsdetailALICMS.AsCurrency / 100;
  cdsdetailVLPRODUCAOPValidate(Sender);
end;

procedure TfrmOrcamento.cdsdetailQTPECAValidate(Sender: TField);
begin
  setCalculo;
end;

procedure TfrmOrcamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmOrcamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmOrcamento.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmOrcamento.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmOrcamento.cdsdetailAfterPost(DataSet: TDataSet);
begin
  Gravartotais;
end;

procedure TfrmOrcamento.actimprimirorcamentoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(333, cdsCDORCAMENTO.AsString);
end;

procedure TfrmOrcamento.cdsVLDESCONTOValidate(Sender: TField);
begin
  if cdsVLPRODUTO.ascurrency = 0 then
  begin
    cdsPRDESCONTO.AsCurrency := 0
  end
  else
  begin
    cdsPRDESCONTO.OnValidate := nil;
    try
      if cdsPRDESCONTO.AsCurrency <> cdsVLDESCONTO.AsCurrency * 100 / cdsVLPRODUTO.ascurrency then
      begin
        cdsPRDESCONTO.AsCurrency := cdsVLDESCONTO.AsCurrency * 100 / cdsVLPRODUTO.ascurrency;
      end;
    finally
      cdsPRDESCONTO.OnValidate := cdsPRDESCONTOValidate;
    end;
  end;
  gravartotais;
end;

procedure TfrmOrcamento.cdsPRDESCONTOValidate(Sender: TField);
begin
  cdsVLDESCONTO.AsCurrency := cdsVLPRODUTO.AsCurrency * cdsPRDESCONTO.ascurrency / 100;
end;

procedure TfrmOrcamento.cdsDTPRVENTREGAValidate(Sender: TField);
begin
  if cdsNUDIAS.AsInteger<> StrToInt(formatfloat(__integer, (cdsDTPRVENTREGA.AsDateTime - cdsDTEMISSAO.AsDateTime))) then
  begin
    cdsnudias.OnValidate := nil;
    cdsNUDIAS.AsInteger := StrToInt(formatfloat(__integer, (cdsDTPRVENTREGA.AsDateTime - cdsDTEMISSAO.AsDateTime)));
    cdsnudias.OnValidate := cdsNUDIASValidate;
  end;
end;

procedure TfrmOrcamento.cdsNUDIASValidate(Sender: TField);
begin
  if cdsDTPRVENTREGA.AsDateTime <> cdsDTEMISSAO.AsDateTime + edtnudias.Value then
  begin
    cdsDTPRVENTREGA.onvalidate := nil;
    if edtnudias.Value = 0 then
    begin
      cdsDTPRVENTREGA.AsDateTime := cdsDTEMISSAO.AsDateTime
    end
    else
    begin
      cdsDTPRVENTREGA.AsDateTime := cdsDTEMISSAO.AsDateTime + edtnudias.Value;
    end;
    cdsDTPRVENTREGA.onvalidate := cdsDTPRVENTREGAValidate;
  end;
end;

procedure TfrmOrcamento.cdsVLFRETEValidate(Sender: TField);
begin
  gravartotais;
end;

procedure TfrmOrcamento.actlocalizarentregaExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := SelecionarClienteEndereco(cds.fieldbyname(_CDCLIENTE).AsString);
  if codigo <> '' then
  begin
    cdsCDCLIENTEENTREGA.AsString := codigo;
  end;
end;

procedure TfrmOrcamento.actmudarstatusExecute(Sender: TObject);
begin
  if TdxBarButton(sender).caption = uppercase(_cancelado) then
  begin
    if DeclinarOrcamento(cdscdorcamento.AsString, qregistro.CodigodoNome(_storcamento, UpperCase(_CANCELADO)), true) then
    begin
      Abrir(cdscdorcamento.asInteger);
    end;
  end
  else if orcamento.SetStatus(TdxBarButton(sender).Description) then
  begin
    Abrir(orcamento.cdorcamento);
  end;
end;

procedure TfrmOrcamento.actlimparentregaExecute(Sender: TObject);
begin
  cdsCDCLIENTEENTREGA.Clear;
end;

procedure TfrmOrcamento.cdsitorcamentocustoNewRecord(DataSet: TDataSet);
begin
  cdsitorcamentocustoCDITORCAMENTOCUSTO.AsString := GerarCodigo(_it+tbl+_custo);
  cdsitorcamentocustoVLUNITARIO.AsCurrency       := 0;
  cdsitorcamentocustoNUFATOR.AsFloat             := 1;
end;

procedure TfrmOrcamento.cdsitorcamentomaterialNewRecord(DataSet: TDataSet);
begin
  cdsitorcamentomaterialCDITORCAMENTOMATERIAL.AsString := GerarCodigo(_it+tbl+_material);
  cdsitorcamentomaterialQTITEM.AsFloat     := 0;
  cdsitorcamentomaterialVLUNITARIO.AsFloat := 0;
  cdsitorcamentomaterialNUFATOR.AsFloat    := 1;
end;

procedure TfrmOrcamento.cdsitorcamentorecursoNewRecord(DataSet: TDataSet);
begin
  cdsitorcamentorecursoCDITORCAMENTORECURSO.AsString := GerarCodigo(_it+tbl+_recurso);
  cdsitorcamentorecursoQTPREPARACAO.AsFloat          := 0;
  cdsitorcamentorecursoQTOPERACAO.AsFloat            := 0;
  cdsitorcamentorecursoNUSEQUENCIA.AsInteger         := cdsitorcamentorecurso.RecordCount + 1;
  cdsitorcamentorecursoCDTPDURACAO.AsString          := _1;
end;

procedure TfrmOrcamento.cdsitorcamentocustoCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _boorcamento);
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados;
  if (produto.cdproduto <> 0) and (cdsitorcamentocustoCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsitorcamentocustoCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  if cdsitorcamentocustoQTITEM.IsNull then
  begin
    cdsitorcamentocustoQTITEM.AsFloat := 1;
  end;
  cdsitorcamentocustoNMPRODUTO.asstring  := produto.nmproduto;
  cdsitorcamentocustoCDUNIDADE.AsInteger := produto.cdunidade;
  cdsitorcamentocustoVLTOTAL.AsCurrency  := produto.vlvenda;
end;

procedure TfrmOrcamento.cdsitorcamentorecursoCDTPEQUIPAMENTOValidate(Sender: TField);
begin
  equipamento.tpequipamento.Select(sender.Asinteger);
  cdsitorcamentorecursoVLPREPARACAO.AsCurrency := equipamento.tpequipamento.vlpreparacao;
  cdsitorcamentorecursoVLOPERACAO.AsCurrency   := equipamento.tpequipamento.vloperacao;
end;

procedure TfrmOrcamento.cdsitorcamentorecursoQTPREPARACAOValidate(Sender: TField);
begin
  setpreparacao;
end;

procedure TfrmOrcamento.cdsitorcamentorecursoQTOPERACAOValidate(Sender: TField);
begin
  setoperacao;
end;

procedure TfrmOrcamento.cdsitorcamentorecursoVLPREPARACAOValidate(Sender: TField);
begin
  setpreparacao;
end;

procedure TfrmOrcamento.cdsitorcamentorecursoVLOPERACAOValidate(Sender: TField);
begin
  setoperacao;
end;

procedure TfrmOrcamento.setoperacao;
begin
  cdsdetailVLPRODUCAOP.AsCurrency                 := cdsdetailVLPRODUCAOP.AsCurrency - cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency                  := cdsdetailVLPRODUCAO.AsCurrency - (cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency * cdsdetailQTITEM.AsFloat);
  cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency := cdsitorcamentorecursoQTOPERACAO.AsCurrency * cdsitorcamentorecursoVLOPERACAO.ascurrency;
  cdsdetailVLPRODUCAOP.AsCurrency                 := cdsdetailVLPRODUCAOP.AsCurrency + cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency                  := cdsdetailVLPRODUCAO.AsCurrency + (cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency * cdsdetailQTITEM.AsFloat);
end;

procedure TfrmOrcamento.setpreparacao;
begin
  cdsdetailVLPRODUCAOp.AsCurrency                   := cdsdetailVLPRODUCAOp.AsCurrency             - cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency                    := cdsdetailVLPRODUCAO.AsCurrency  - (cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency * cdsdetailqtitem.AsFloat);
  cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency := cdsitorcamentorecursoQTPREPARACAO.AsCurrency * cdsitorcamentorecursoVLPREPARACAO.ascurrency;
  cdsdetailVLPRODUCAOp.AsCurrency                   := cdsdetailVLPRODUCAOp.AsCurrency             + cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency                    := cdsdetailVLPRODUCAO.AsCurrency              + (cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency * cdsdetailQTITEM.AsFloat);
end;

procedure TfrmOrcamento.cxGridDBBandedTableView2CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_orcamento, cdsitorcamentomaterial, true);
end;

procedure TfrmOrcamento.cdsitorcamentomaterialCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _boorcamento);
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados;
  if (produto.cdproduto <> 0) and (cdsitorcamentomaterialCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsitorcamentomaterialCDPRODUTO.AsInteger    := produto.cdproduto;
  end;
  cdsitorcamentomaterialNMPRODUTO.asstring        := produto.nmproduto;
  cdsitorcamentomaterialVLUNITARIO.AsCurrency     := produto.vlcusto;
  cdsitorcamentomaterialNUCLFISCAL.AsString       := PRODUTO.nuclfiscal;
  cdsitorcamentomaterialBORECUPERAICMS.AsString   := produto.borecuperaicms;
  cdsitorcamentomaterialBORECUPERACOFINS.AsString := produto.borecuperacofins;
  cdsitorcamentomaterialBORECUPERAPIS.AsString    := produto.borecuperapis;
  cdsitorcamentomaterialBORECUPERAIPI.AsString    := produto.borecuperaipi;
  cdsitorcamentomaterialALICMS.AsFloat            := produto.alicms;
  cdsitorcamentomaterialALIPI.AsFloat             := produto.alipi;
  cdsitorcamentomaterialALPIS.AsFloat             := produto.alpis;
  cdsitorcamentomaterialALCOFINS.AsFloat          := produto.alcofins;
end;

procedure TfrmOrcamento.cdsitorcamentomaterialQTITEMValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Quantidade]), mtinformation, [mbok], 0);
    sender.FocusControl;
    Abort;
  end;
  settotalmaterial;
end;

procedure TfrmOrcamento.settotalmaterial;
begin
  //cdsitorcamentomaterialVLTOTAL.AsCurrency := cdsitorcamentomaterialQTITEM.AsCurrency * cdsitorcamentomaterialVLUNITARIO.ascurrency;
  cdsitorcamentomaterialVLTOTAL.AsCurrency := QRotinas.Roundqp(cdsitorcamentomaterialQTITEM.Asfloat * cdsitorcamentomaterialVLUNITARIO.AsFloat, true);
end;

procedure TfrmOrcamento.grdcustoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_orcamento, cdsitorcamentocusto, true);
end;

procedure TfrmOrcamento.cdsitorcamentocustoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitorcamentocusto);
end;

procedure TfrmOrcamento.cdsitorcamentocustoQTITEMValidate(Sender: TField);
begin
  setvalorcusto;
end;

procedure TfrmOrcamento.setvalorcusto;
begin
  cdsdetailVLPRODUCAOp.AsCurrency       := cdsdetailVLPRODUCAOp.AsCurrency - cdsitorcamentocustoVLfinal.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency        := cdsdetailVLPRODUCAO.AsCurrency  - (cdsitorcamentocustoVLfinal.AsCurrency * cdsdetailQTITEM.AsFloat);

  //cdsitorcamentocustoVLTOTAL.AsCurrency := cdsitorcamentocustoQTITEM.AsFloat * cdsitorcamentocustoVLUNITARIO.AsCurrency;
  cdsitorcamentocustoVLTOTAL.AsCurrency := QRotinas.Roundqp(cdsitorcamentocustoQTITEM.Asfloat * cdsitorcamentocustoVLUNITARIO.AsFloat, true);
  cdsitorcamentocustoVLfinal.AsCurrency := cdsitorcamentocustoVLTOTAL.AsCurrency * cdsitorcamentocustoNUFATOR.AsFloat;

  cdsdetailVLPRODUCAOp.AsCurrency       := cdsdetailVLPRODUCAOp.AsCurrency + cdsitorcamentocustoVLfinal.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency        := cdsdetailVLPRODUCAO.AsCurrency  + (cdsitorcamentocustoVLfinal.AsCurrency * cdsdetailQTITEM.AsFloat);
end;

procedure TfrmOrcamento.cdsitorcamentomaterialAfterPost(DataSet: TDataSet);
var
  vltotalfinal : Currency;
  c : TClientDataSet;
begin
  vltotalfinal := 0;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsitorcamentomaterial, false);
    c.First;
    while not c.Eof do
    begin
      vltotalfinal := vltotalfinal + c.fieldbyname(_vlfinal).AsCurrency;
      c.Next;
    end;
    if cdsdetail.State = dsbrowse then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailVLMATERIALp.AsCurrency := vltotalfinal;
    cdsdetailVLMATERIAL.AsCurrency  := vltotalfinal * cdsdetailQTITEM.AsFloat;
  finally
    FreeAndNil(c);
  end;
end;

procedure TfrmOrcamento.cdsitorcamentorecursoAfterPost(DataSet: TDataSet);
var
  vloperacao, vlpreparacao : Currency;
  qtoperacao, qtpreparacao : real;
  c : TClientDataSet;
begin
  vloperacao   := 0;
  vlpreparacao := 0;
  qtoperacao   := 0;
  qtpreparacao := 0;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsitorcamentorecurso, false);
    c.First;
    while not c.Eof do
    begin
      vloperacao   := vloperacao   + c.fieldbyname(_VLTOTALOPERACAO).AsCurrency;
      vlpreparacao := vlpreparacao + c.fieldbyname(_VLTOTALPREPARACAO).AsCurrency;
      qtoperacao   := qtoperacao   + c.fieldbyname(_qtoperacao).asfloat;
      qtpreparacao := qtpreparacao + c.fieldbyname(_qtpreparacao).asfloat;
      c.Next;
    end;
    IF cdsdetail.State = dsbrowse then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailVLOPERACAOp.AsCurrency   := vloperacao;
    cdsdetailVLPREPARACAOp.AsCurrency := vlpreparacao;
    cdsdetailVLRECURSOP.AsCurrency    := vloperacao + vlpreparacao;
    cdsdetailqtoperacaop.asfloat      := qtoperacao;
    cdsdetailqtpreparacaop.asfloat    := qtpreparacao;
    cdsdetailqthorap.asfloat          := cdsdetailqtoperacaop.asfloat + cdsdetailqtpreparacaop.asfloat;

    cdsdetailVLOPERACAO.AsCurrency   := vloperacao * cdsdetailQTITEM.AsFloat;
    cdsdetailVLPREPARACAO.AsCurrency := vlpreparacao * cdsdetailQTITEM.AsFloat;
    cdsdetailVLRECURSO.AsCurrency    := cdsdetailVLOPERACAO.AsCurrency + cdsdetailVLPREPARACAO.AsCurrency;
    cdsdetailqtoperacao.asfloat      := qtoperacao * cdsdetailqtitem.asfloat;
    cdsdetailqtpreparacao.asfloat    := qtpreparacao * cdsdetailqtitem.asfloat;
    cdsdetailqthora.asfloat          := cdsdetailqtoperacao.asfloat + cdsdetailqtpreparacao.asfloat;
  finally
    FreeAndNil(c);
  end;
end;

procedure TfrmOrcamento.cdsitorcamentocustoAfterPost(DataSet: TDataSet);
var
  vltotal : Currency;
  c : TClientDataSet;
begin
  vltotal := 0;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsitorcamentocusto, false);
    c.First;
    while not c.Eof do
    begin
      vltotal := vltotal + c.fieldbyname(_VLfinal).AsCurrency;
      c.Next;
    end;
    if cdsdetail.State = dsbrowse then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailVLCUSTOp.AsCurrency := vltotal;
    cdsdetailVLCUSTO.AsCurrency  := vltotal * cdsdetailQTITEM.AsFloat;
  finally
    FreeAndNil(c);
  end;
end;

procedure TfrmOrcamento.setvlproducao(Sender: TField);
begin
  cdsdetailVLPRODUCAOp.AsCurrency := cdsdetailVLMATERIALp.AsCurrency + cdsdetailVLCUSTOp.AsCurrency + cdsdetailVLPREPARACAOp.AsCurrency + cdsdetailVLOPERACAOp.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency  := cdsdetailVLMATERIAL.AsCurrency + cdsdetailVLCUSTO.AsCurrency + cdsdetailVLPREPARACAO.AsCurrency + cdsdetailVLOPERACAO.AsCurrency;
end;

procedure TfrmOrcamento.setAbrirTabela;
begin
  cbxcduf.Properties.ListSource            := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource     := abrir_tabela(_municipio);
  cbxcdtransportadora.Properties.ListSource                                                              := abrir_tabela(_transportadora);
  cbxcdstorcamento.Properties.ListSource                                                                 := abrir_tabela(_storcamento);
  cbxcdperiodicidade.Properties.ListSource                                                               := abrir_tabela(_periodicidade);
  cbxCDPERIODICIDADEATENDIMENTO.Properties.ListSource                                                    := abrir_tabela(_periodicidade);
  cbxcdtporcamento.Properties.ListSource                                                                 := abrir_tabela(_tporcamento);
  cbxcdorcamentoatravesde.Properties.ListSource                                                          := abrir_tabela(_orcamento+_atraves+_de);
  cbxcdtpcobranca.Properties.ListSource                                                                  := abrir_tabela(_tpcobranca);
  cbxcdcondpagto.Properties.ListSource                                                                   := abrir_tabela(_condpagto+_s);
  cbxcdtpfrete.Properties.ListSource                                                                     := abrir_tabela(_tpfrete);
  cbxcdrepresentante.Properties.ListSource                                                               := abrir_tabela(_representante);
  cbxcdfuncionario.Properties.ListSource                                                                 := abrir_tabela(_funcionario);
  cbxcdfuncionarioorcamentista.Properties.ListSource                                                     := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvrecursoCDTPEQUIPAMENTO.Properties).ListSource                           := abrir_tabela(_tpequipamento);
  TcxLookupComboBoxProperties(tbvCDTPIPI.Properties).ListSource                                          := abrir_tabela(_tpipi);
  TcxLookupComboBoxProperties(tbvCDTPITORCAMENTO.Properties).ListSource                                  := abrir_tabela(_tpitorcamento);
  TcxLookupComboBoxProperties(grdpecacdtpipi.Properties.EditProperties).ListSource                       := abrir_tabela(_tpipi);
  TcxLookupComboBoxProperties(grdpecacdtpicms.Properties.EditProperties).ListSource                      := abrir_tabela(_tpicms);
  TcxLookupComboBoxProperties(tbvCDTPICMS.Properties).ListSource                  := abrir_tabela(_tpicms);
  TcxLookupComboBoxProperties(tbvCDCONDPAGTO.Properties).ListSource               := abrir_tabela(_CONDPAGTO);
  TcxLookupComboBoxProperties(tbvCDSTITORCAMENTO.Properties).ListSource           := abrir_tabela(_st+_itorcamento);
  TcxLookupComboBoxProperties(tbvCDTPGRADEVALOR.Properties).ListSource            := abrir_tabela(_tpgradevalor);
  TcxLookupComboBoxProperties(tbvitorcamentocustoCDUNIDADE.Properties).ListSource := abrir_tabela(_unidade);
  TcxLookupComboBoxProperties(tbvitorcamentoperiodicidadeCDPERIODICIDADE.Properties).ListSource := abrir_tabela(_periodicidade);
  TcxLookupComboBoxProperties(tbvCDPERIODICIDADE.Properties).ListSource := abrir_tabela(_periodicidade);
end;

procedure TfrmOrcamento.cxGridDBBandedTableView2QTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  qtpeso : real;
  dsformula : string;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  qtpeso := cdsitorcamentomaterialQTPESOUNITARIO.AsFloat;
  if CalcularPeso(cdsitorcamentomaterialQTPESOUNITARIO.ReadOnly, cdsitorcamentomaterialCDPRODUTO.AsString, dsformula, qtpeso) and (not cdsitorcamentomaterial.ReadOnly) then
  begin
    if cdsitorcamentomaterial.State <> dsedit then
    begin
     cdsitorcamentomaterial.Edit;
    end;
    cdsitorcamentomaterialQTPESOUNITARIO.AsFloat := qtpeso;
    cdsitorcamentomaterialDSFORMULA.AsString     := dsformula;
  end;
end;

procedure TfrmOrcamento.cdsDTEMISSAOValidate(Sender: TField);
begin
  cdsDTVALIDADE.AsDateTime := cdsDTEMISSAO.AsDateTime + orcamento.tporcamento.nudiasvalidade;
end;

procedure TfrmOrcamento.cdsitorcamentorecursoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitorcamentorecurso);
end;

procedure TfrmOrcamento.cdsitorcamentomaterialBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitorcamentomaterial);
  if (orcamento.tporcamento.boitemmaterialformula = _s) and (cdsitorcamentomaterial.RecNo = 1) and (cdsitorcamentomaterialDSFORMULA.AsString <> cdsdetailDSFORMULA.AsString) then
  begin
    cdsdetailDSFORMULA.AsString := cdsitorcamentomaterialDSFORMULA.AsString;
  end;
end;

procedure TfrmOrcamento.cdsdetailVLPRODUCAOPValidate(Sender: TField);
var
  precovenda : Currency;
  markupmultiplicador, vlpr : Real;
begin
  if orcamento.tporcamento.boitemCUSTO <> _s then
  begin
    Exit;
  end;
  cdsVLTOTAL.AsCurrency     := cdsVLTOTAL.AsCurrency - cdsdetailVLTOTAL.AsCurrency - cdsdetailVLIPI.AsCurrency;
  cdsVLTOTALCIPI.AsCurrency := cdsvltotalcipi.AsCurrency - cdsdetailVLTOTALCIPI.AsCurrency;
  if empresa.tpregime = _S then
  begin
    if cdsdetailALICMS.AsFloat   > 0 then
    begin
      cdsdetailALICMS.AsFloat   := 0;
    end;
    if cdsdetailALipi.AsFloat    > 0 then
    begin
      cdsdetailALipi.AsFloat    := 0;
    end;
    if cdsdetailALpis.AsFloat    > 0 then
    begin
      cdsdetailALpis.AsFloat    := 0;
    end;
    if cdsdetailALcofins.AsFloat > 0 then
    begin
      cdsdetailALcofins.AsFloat := 0;
    end;
    if cdsdetailALirpj.AsFloat   > 0 then
    begin
      cdsdetailALirpj.AsFloat   := 0;
    end;
    if cdsdetailALcsll.AsFloat   > 0 then
    begin
      cdsdetailALcsll.AsFloat   := 0;
    end;
    vlpr := cdsdetailALSIMPLES.AsFloat+cdsdetailPRLUCRO.AsFloat
  end
  else if empresa.tpregime = _P then
  begin
    if cdsdetailALSIMPLES.AsFloat > 0 then
    begin
      cdsdetailALSIMPLES.AsFloat := 0;
    end;
    vlpr := cdsdetailALPIS.AsFloat + cdsdetailALCOFINS.AsFloat + cdsdetailALCSLL.AsFloat + cdsdetailALIRPJ.AsFloat + cdsdetailPRLUCRO.AsFloat;
    if cdsdetailCDTPICMS.AsInteger = 2 then
    begin
      vlpr := vlpr + cdsdetailALICMS.AsFloat;
    end;
    if cdsdetailCDTPIPI.AsInteger  = 1 then
    begin
      vlpr := vlpr + cdsdetailALIPI.AsFloat;
    end;
  end
  else
  begin
    if cdsdetailALSIMPLES.AsFloat > 0 then
    begin
      cdsdetailALSIMPLES.AsFloat := 0;
    end;
    vlpr := cdsdetailALPIS.AsFloat + cdsdetailALCOFINS.AsFloat + cdsdetailALCSLL.AsFloat + cdsdetailALIRPJ.AsFloat + cdsdetailPRLUCRO.AsFloat;
    if cdsdetailCDTPICMS.AsInteger = 2 then
    begin
      vlpr := vlpr + cdsdetailALICMS.AsFloat;
    end;
    if cdsdetailCDTPIPI.AsInteger  = 1 then
    begin
      vlpr := vlpr + cdsdetailALIPI.AsFloat;
    end;
  end;

  vlpr := vlpr + cdsdetailPRDESPESAADMINISTRATIVA.AsFloat + cdsdetailPRDESPESAFRETE.AsFloat + cdsdetailPRDESPESACOMERCIAL.AsFloat + cdsdetailPRDESPESAEMBALAGEM.AsFloat + cdsdetailPRDESPESASEGURO.AsFloat;

  markupmultiplicador := 100 / (100 - vlpr);
  precovenda          := (cdsdetailVLPRODUCAOp.AsCurrency * markupmultiplicador) - (cdsdetailVLDESCONTOPRODUCAO.AsCurrency / cdsdetailqtitem.AsFloat);

  if cdsdetailCDTPICMS.AsInteger = 2 then
  begin
    cdsdetailVLICMSP.AsCurrency := precovenda * cdsdetailALICMS.AsFloat / 100;
  end;
  if cdsdetailCDTPIPI.AsInteger  = 1 then
  begin
    cdsdetailVLIPIp.AsCurrency  := precovenda * cdsdetailALIPI.AsFloat / 100;
  end;

  cdsdetailVLPISp.AsCurrency     := precovenda * cdsdetailALPIS.AsFloat / 100;
  cdsdetailVLCOFINSp.AsCurrency  := precovenda * cdsdetailALCOFINS.AsFloat / 100;
  cdsdetailVLISSP.AsCurrency     := precovenda * cdsdetailALISS.AsFloat / 100;
  cdsdetailVLSIMPLESP.AsCurrency := precovenda * cdsdetailALSIMPLES.AsFloat / 100;

  cdsdetailVLIMPOSTOP.AsCurrency := cdsdetailVLPISp.AsCurrency + cdsdetailVLCOFINSP.AsCurrency + cdsdetailVLISSP.AsCurrency + cdsdetailVLSIMPLESP.AsCurrency;
  if cdsdetailCDTPICMS.AsInteger = 2 then
  begin
    cdsdetailVLIMPOSTOP.AsCurrency := cdsdetailVLIMPOSTOP.AsCurrency + cdsdetailVLICMSp.AsCurrency;
  end;
  if cdsdetailCDTPIPI.AsInteger  = 1 then
  begin
    cdsdetailVLIMPOSTOP.AsCurrency := cdsdetailVLIMPOSTOp.AsCurrency + cdsdetailVLIPIP.AsCurrency;
  end;
  cdsdetailVLCSLLp.AsCurrency   := precovenda * cdsdetailALCSLL.AsFloat / 100;
  cdsdetailVLIRPJp.AsCurrency   := precovenda * cdsdetailALIRPJ.AsFloat / 100;

  if (empresa.tpregime = _S) or (empresa.tpregime = _P) then
  begin
    cdsdetailVLIMPOSTOP.AsCurrency := cdsdetailVLIMPOSTOP.AsCurrency + cdsdetailVLCSLLP.AsCurrency + cdsdetailVLIRPJP.AsCurrency;
  end;

  cdsdetailVLLUCROP.AsCurrency                 := precovenda - cdsdetailVLPRODUCAOp.AsCurrency - cdsdetailVLIMPOSTOP.AsCurrency;
  cdsdetailVLUNITARIO.AsCurrency               := RoundTo(precovenda, -2);
  cdsdetailVLVENDALIQUIDAP.AsCurrency          := cdsdetailVLUNITARIO.AsCurrency - cdsdetailVLIMPOSTOP.AsCurrency;
  cdsdetailVLLUCROBRUTOP.AsCurrency            := cdsdetailVLVENDALIQUIDAP.AsCurrency - cdsdetailVLPRODUCAOP.AsCurrency;
  cdsdetailVLDESPESAADMINISTRATIVAP.AsCurrency := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESAADMINISTRATIVA.AsFloat / 100;
  cdsdetailVLDESPESAFRETEP.AsCurrency          := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESAFRETE.AsFloat / 100;
  cdsdetailVLDESPESACOMERCIALP.AsCurrency      := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESACOMERCIAL.AsFloat / 100;
  cdsdetailVLDESPESAEMBALAGEMP.AsCurrency      := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESAEMBALAGEM.AsFloat / 100;
  cdsdetailVLDESPESASEGUROP.AsCurrency         := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESASEGURO.AsFloat / 100;
  cdsdetailVLDESPESAP.AsCurrency               := cdsdetailVLDESPESAADMINISTRATIVAP.AsCurrency + cdsdetailVLDESPESAFRETEP.AsCurrency +
                                                  cdsdetailVLDESPESACOMERCIALP.AsCurrency      + cdsdetailVLDESPESAEMBALAGEMP.AsCurrency +
                                                  cdsdetailVLDESPESASEGUROP.AsCurrency;
  cdsdetailVLLUCROIRCSP.AsCurrency := cdsdetailVLLUCROBRUTOP.AsCurrency - cdsdetailVLDESPESAP.AsCurrency;
  cdsdetailVLLUCROP.AsCurrency     := cdsdetailVLLUCROIRCSP.AsCurrency;
  if empresa.tpregime = _R then
  begin
    cdsdetailVLIRCSLLP.AsCurrency := cdsdetailVLIRPJP.AsCurrency      + cdsdetailVLCSLLP.AsCurrency;
    cdsdetailVLLUCROP.AsCurrency  := cdsdetailVLLUCROIRCSP.AsCurrency - cdsdetailVLIRCSLLP.AsCurrency;
  end;
  //
  cdsdetailVLIMPOSTO.AsCurrency      := cdsdetailVLIMPOSTOP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLICMS.AsCurrency         := cdsdetailVLICMSP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLSIMPLES.AsCurrency      := cdsdetailVLSIMPLESP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLIPI.AsCurrency          := cdsdetailVLIPIP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLISS.AsCurrency          := cdsdetailVLISSP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLSIMPLES.AsCurrency      := cdsdetailVLSIMPLESP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLIRPJ.AsCurrency         := cdsdetailVLIRPJP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLCSLL.AsCurrency         := cdsdetailVLCSLLP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLPIS.AsCurrency          := cdsdetailVLPISP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLCOFINS.AsCurrency       := cdsdetailVLCOFINSP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLVENDALIQUIDA.AsCurrency := cdsdetailVLVENDALIQUIDAP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLLUCROBRUTO.AsCurrency   := cdsdetailVLLUCROBRUTOP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESA.AsCurrency      := cdsdetailVLDESPESAP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESAADMINISTRATIVA.AsCurrency := cdsdetailVLDESPESAADMINISTRATIVAP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESAFRETE.AsCurrency := cdsdetailVLDESPESAFRETEP.AsCurrency * cdsdetailQTITEM.AsCurrency;
  cdsdetailVLDESPESACOMERCIAL.AsCurrency := cdsdetailVLDESPESACOMERCIALP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESAEMBALAGEM.AsCurrency := cdsdetailVLDESPESAEMBALAGEMP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESASEGURO.AsCurrency    := cdsdetailVLDESPESASEGUROP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLLUCRO.AsCurrency            := cdsdetailVLLUCROP.AsCurrency * cdsdetailQTITEM.AsFloat;
  //
  cdsVLTOTALCIPI.AsCurrency := cdsVLTOTALCIPI.AsCurrency + cdsdetailVLTOTALCIPI.AsCurrency;
  cdsVLTOTAL.AsCurrency     := cdsVLTOTAL.AsCurrency + cdsdetailVLTOTAL.AsCurrency + cdsdetailVLIPI.AsCurrency;
end;

procedure TfrmOrcamento.cdsitorcamentomaterialQTPECAValidate(Sender: TField);
begin
  cdsitorcamentomaterialQTITEM.AsFloat := cdsitorcamentomaterialQTPECA.AsFloat * cdsitorcamentomaterialQTPESOUNITARIO.AsFloat;
end;

procedure TfrmOrcamento.setvalorfinal(Sender: TField);
var
  valor : Currency;
begin
  cdsitorcamentomaterialVLPIS.AsCurrency             := cdsitorcamentomaterialVLTOTAL.AsCurrency * cdsitorcamentomaterialALPIS.AsFloat / 100;
  cdsitorcamentomaterialVLCOFINS.AsCurrency          := cdsitorcamentomaterialVLTOTAL.AsCurrency * cdsitorcamentomaterialALCOFINS.AsFloat / 100;
  cdsitorcamentomaterialVLICMS.AsCurrency            := cdsitorcamentomaterialVLTOTAL.AsCurrency * cdsitorcamentomaterialALICMS.AsFloat / 100;
  cdsitorcamentomaterialVLIPI.AsCurrency             := cdsitorcamentomaterialVLTOTAL.AsCurrency * cdsitorcamentomaterialALIPI.AsFloat / 100;
  valor := cdsitorcamentomaterialVLTOTAL.AsCurrency + cdsitorcamentomaterialVLFRETE.AsCurrency + cdsitorcamentomaterialVLIPI.AsCurrency;
  if cdsitorcamentomaterialBORECUPERAICMS.AsString = _S then
  begin
    valor := valor - cdsitorcamentomaterialVLICMS.AsCurrency;
  end;
  if cdsitorcamentomaterialBORECUPERAIPI.AsString  = _S then
  begin
    valor := valor - cdsitorcamentomaterialVLIPI.AsCurrency;
  end;
  if cdsitorcamentomaterialBORECUPERAPIS.AsString  = _S then
  begin
    valor := valor - cdsitorcamentomaterialVLPIS.AsCurrency;
  end;
  if cdsitorcamentomaterialBORECUPERACOFINS.AsString = _S then
  begin
    valor := valor - cdsitorcamentomaterialVLCOFINS.AsCurrency;
  end;
  cdsitorcamentomaterialVLFINAL.AsCurrency := valor * cdsitorcamentomaterialNUFATOR.AsFloat;
end;

procedure TfrmOrcamento.setvalormaterial(Sender: TField);
begin
  cdsdetailVLPRODUCAOp.AsCurrency := cdsdetailVLPRODUCAOp.AsCurrency - cdsitorcamentomaterialVLFINAL.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency  := cdsdetailVLPRODUCAO.AsCurrency  - (cdsitorcamentomaterialVLFINAL.AsCurrency * cdsdetailQTITEM.AsFloat);
  cdsdetailVLPRODUCAOp.AsCurrency := cdsdetailVLPRODUCAOp.AsCurrency + cdsitorcamentomaterialVLFINAL.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency  := cdsdetailVLPRODUCAO.AsCurrency + (cdsitorcamentomaterialVLFINAL.AsCurrency * cdsdetailQTITEM.AsFloat);
end;

procedure TfrmOrcamento.cdsCDTPCOBRANCAValidate(Sender: TField);
var
  boavista : boolean;
begin
  if orcamento.tporcamento.boitemvlunitariotpcobranca <> _s then
  begin
    exit;
  end;
  boavista := orcamento.tpcobranca.boavista = _s;
  orcamento.tpcobranca.Select(sender.AsInteger);
  if boavista <> (orcamento.tpcobranca.boavista = _s) then
  begin
    AlterarVlUnitarioTpCobranca;
  end;
end;

procedure TfrmOrcamento.cdsCDTPFRETEValidate(Sender: TField);
begin
  if (sender.AsString = _9) or (sender.AsString = '') then
  begin
    exit;
    sender.DataSet.FieldByName(_vlfrete).clear;
    sender.DataSet.FieldByName(_cdtransportadora).clear;
    //sender.DataSet.FieldByName(_nmtransportadora).clear;
  end;
end;

procedure TfrmOrcamento.cdsCDTPORCAMENTOValidate(Sender: TField);
begin
  setrecord(sender.Asinteger);
  if orcamento.tporcamento.boobservacaocopiar = _s then
  begin
    cdsDSOBSERVACAO.AsString := orcamento.tporcamento.dsobservacao;
  end;
  cdsprmulta.AsFloat := empresa.financeiro.duplicata.prmulta;
  cdsPRMORADIARIA.AsFloat := empresa.financeiro.duplicata.prmoradiaria;
end;

procedure TfrmOrcamento.adicionarValorPizzaPeca(nome:string; valor:currency);
begin
  if valor < 10 then
  begin
    Exit;
  end;
  cdspizzapeca.Append;
  cdspizzapecanome.AsString    := nome;
  cdspizzapecavalor.AsCurrency := valor;
  cdspizzapeca.Post;
end;

procedure TfrmOrcamento.AtualizarPizzaPeca;
begin
  if not cdspizzapeca.Active then
  begin
    cdspizzapeca.CreateDataSet;
    cdspizzapeca.Open;
  end;
  if cdspizzapeca.RecordCount > 0 then
  begin
    cdspizzapeca.EmptyDataSet;
  end;
  cdspizzapeca.ReadOnly := False;
  adicionarValorPizzaPeca('Recurso'         , cdsdetailVLRECURSOP.AsCurrency);
  adicionarValorPizzaPeca('Material'        , cdsdetailVLMATERIALP.AsCurrency);
  adicionarValorPizzaPeca('Serviço Terceiro', cdsdetailVLCUSTOP.AsCurrency);
end;

procedure TfrmOrcamento.adicionarValorPizzaItem(nome:string; valor:currency);
begin
  if valor < 10 then
  begin
    Exit;
  end;
  cdspizzaitem.Append;
  cdspizzaitemnome.AsString    := nome;
  cdspizzaitemvalor.AsCurrency := valor;
  cdspizzaitem.Post;
end;

procedure TfrmOrcamento.AtualizarPizzaItem;
begin
  if not cdspizzaitem.Active then
  begin
    cdspizzaitem.CreateDataSet;
    cdspizzaitem.Open;
  end;
  if cdspizzaitem.RecordCount > 0 then
  begin
    cdspizzaitem.EmptyDataSet;
  end;
  cdspizzaitem.ReadOnly := False;
  adicionarValorPizzaItem('Recurso' , cdsdetailVLOPERACAOP.AsCurrency + cdsdetailVLPREPARACAOP.AsCurrency);
  adicionarValorPizzaItem('Material', cdsdetailVLMATERIALP.AsCurrency);
  adicionarValorPizzaItem('Serviço Terceiro', cdsdetailVLCUSTOP.AsCurrency);
  if empresa.tpregime = _R then
  begin
    adicionarValorPizzaItem('Imposto', cdsdetailVLIMPOSTOP.AsCurrency + cdsdetailVLIRCSLLP.AsCurrency)
  end
  else
  begin
    adicionarValorPizzaItem('Imposto', cdsdetailVLIMPOSTOP.AsCurrency);
  end;
  adicionarValorPizzaItem('Despesa', cdsdetailVLDESPESAP.AsCurrency);
  adicionarValorPizzaItem('Lucro'  , cdsdetailVLLUCROP.AsCurrency);
end;

procedure TfrmOrcamento.pgc3Change(Sender: TObject);
begin
  if pgc3.ActivePage = tbspecagrafico then
  begin
    AtualizarPizzaPeca;
    AtualizarPizzaItem;
  end;
end;

procedure TfrmOrcamento.PreencherEnderecoEntrega;
begin
  edtnucep.Text         := cliente.nucep;
  edtDsEndereco.Text    := cliente.dsendereco;
  edtdsnumero.Text      := cliente.dsnumero;
  edtdscomplemento.Text := cliente.dscomplemento;
  edtNmbairro.Text      := cliente.nmbairro;
  edtnucxpostal.Text    := cliente.nucxpostal;
  cbxcduf.EditValue     := cliente.cduf;
  cbxcdmunicipio.EditValue  := cliente.cdmunicipio;
  edtnufone.Text        := cliente.nufone1;
  edtnufax.Text         := cliente.nufax;
end;

procedure TfrmOrcamento.actgerarpedidoExecute(Sender: TObject);
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if cdsCDCONDPAGTO.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_condicao_de_pagamento]), mtinformation, [mbok], 0);
    abort;
  end;
  if cdsCDorcamento.asstring <> '' then
  begin
    GerarPedido(_pedido, orcamento);
  end;
end;

procedure TfrmOrcamento.cdsCDFUNCIONARIOValidate(Sender: TField);
begin
  IF Sender.AsString = '' then
  begin
    cdsNMfuncionario.Clear;
    Exit;
  end;
  if not funcionario.Select(Sender.AsInteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__funcionario)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not BooleandoCodigo(_stfuncionario, inttostr(funcionario.cdstfuncionario), _bogerarinfo) then
  begin
    messagedlg('Funcionario está no status '+NomedoCodigo(_stfuncionario, inttostr(funcionario.cdstfuncionario))+#13+'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMfuncionario.AsString := funcionario.nmfuncionario;
end;

procedure TfrmOrcamento.cdsCDFUNCIONARIOORCAMENTISTAValidate(Sender: TField);
begin
  if not funcionario.Select(Sender.AsInteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__funcionario)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not BooleandoCodigo(_stfuncionario, inttostr(funcionario.cdstfuncionario), _bogerarinfo) then
  begin
    messagedlg('Funcionario está no status '+NomedoCodigo(_stfuncionario, inttostr(funcionario.cdstfuncionario))+#13+'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
end;

procedure TfrmOrcamento.actimprimiranaliticoExecute(Sender: TObject);
begin
  imprimirocamento(cdsCDORCAMENTO.AsString);
end;

procedure TfrmOrcamento.cdsitorcamentocustoAfterDelete(DataSet: TDataSet);
begin
  cdsitorcamentocustoAfterPost(DataSet);
end;

procedure TfrmOrcamento.cdsitorcamentomaterialAfterDelete(DataSet: TDataSet);
begin
  cdsitorcamentomaterialAfterPost(DataSet);
end;

procedure TfrmOrcamento.cdsitorcamentorecursoAfterDelete(DataSet: TDataSet);
begin
  cdsitorcamentorecursoAfterPost(DataSet);
end;

procedure TfrmOrcamento.atualizarContatocliente;
begin
  cdsitcontcliente.Close;
  sdsitcontcliente.Close;
  if cds.fieldbyname(_CDCLIENTE).AsString = '' then
  begin
    Exit;
  end;
  sdsitcontcliente.ParamByName(_cdempresa).ASlargeInt := empresa.cdempresa;
  sdsitcontcliente.ParamByName(_cdcliente).ASlargeInt := cds.fieldbyname(_CDCLIENTE).ASlargeInt;
  cdsitcontcliente.Open;
end;

procedure TfrmOrcamento.lblNMCLIENTEDblClick(Sender: TObject);
begin
  actAbrirClienteExecute(actAbrirCliente);
end;

procedure TfrmOrcamento.actcopiarExecute(Sender: TObject);
var
  codigo: integer;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  orcamento.cdorcamento := cdscdorcamento.AsInteger;
  codigo := orcamento.copiar;
  if codigo <> 0 then
  begin
    Abrir(codigo);
  end;
end;

procedure TfrmOrcamento.actanalisecriticaExecute(Sender: TObject);
begin
  if orcamento.tporcamento.boitemanalisecritica = _s then
  begin
    if Analise_Critica(cdscdorcamento.AsString, cdsdetailCDITORCAMENTO.AsString) then
    begin
      Abrir(cdscdorcamento.asinteger);
    end;
  end
  else if Analise_Critica(cdscdorcamento.AsString) then
  begin
    Abrir(cdscdorcamento.asinteger);
  end;
end;

function TfrmOrcamento.exibirDesenhoAnterior(Sender: TField):Boolean;
begin
  result := (orcamento.tporcamento.boitemdesenhoanterior = _s) and (sender.AsString <> '') and
           (RetornaSQLInteger('select count(*) from itorcamento where cdempresa='+empresa.cdempresa.tostring+' and cditorcamento<>'+cdsdetailCDITORCAMENTO.AsString+' and dsdesenho='+quotedstr(sender.AsString))>0) and
           (MessageDlg('Existem orçamentos com este desenho.'#13'Deseja visualizá-los?', mtconfirmation, [mbyes,mbno], 0) = mryes);
end;

procedure TfrmOrcamento.cdsdetailDSDESENHOValidate(Sender: TField);
//var
  //cditorcamento : string;
begin
  // verificar se existe o desenho em outros orçamentos
  if exibirDesenhoAnterior(sender) then
  begin
    dlgdesenhoorcamento(cdsdetailCDITORCAMENTO.AsString, sender.asstring);
    {
    cditorcamento := dlgdesenhoorcamento(cdsdetailCDITORCAMENTO.AsString, sender.asstring);
    if cditorcamento <> '' then
    begin

    end;}
  end;
end;

procedure TfrmOrcamento.FormCreate(Sender: TObject);
begin
  qryconsulta         := tclassequery.create;
  dtsconsulta.dataset := qryconsulta.q;
  actconsultaordcompra.Visible := empresa.aquisicao.ordcompra.bo and RegistroExiste(_tpordcompra, 'boitemorcamento=''S''');
  setOpcoesStatus;
  setAbrirTabela;
  tbl      := _orcamento;
  exibe    := 'Orçamento';
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 22, cds, _orcamento);
end;

procedure TfrmOrcamento.tbvitorcamentomaterialCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutompExecute(actabrirprodutomp);
  end;
end;

procedure TfrmOrcamento.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoExecute(actabrirproduto);
  end;
end;

procedure TfrmOrcamento.actabrirprodutompExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitorcamentomaterial);
end;

procedure TfrmOrcamento.cbxcdtporcamentoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tporcamento);
end;

procedure TfrmOrcamento.cbxcdcondpagtoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_condpagto+_s);
end;

procedure TfrmOrcamento.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpcobranca);
end;

procedure TfrmOrcamento.cbxcdtransportadoraEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_transportadora);
end;

procedure TfrmOrcamento.cbxcdrepresentanteEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_representante);
end;

function TfrmOrcamento.getemail: string;
begin
  if not cdsCDITCONTCLIENTE.IsNull then
  begin
    result := NomedoCodigo(_itcontcliente, cdsCDITCONTCLIENTE.AsString, _email);
  end;
  if result = '' then
  begin
    result := NomedoCodigo(_cliente, cds.fieldbyname(_CDCLIENTE).AsString, _email);
  end;
end;

procedure TfrmOrcamento.actemailExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(333, cdsCDORCAMENTO.AsString, '', _email, getemail, orcamento.tporcamento.emailcopia, orcamento.tporcamento.dstituloemail, orcamento.tporcamento.dsassuntoemail);
end;

procedure TfrmOrcamento.edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblnmcliente.Hint :=cliente.hint_rzsocial;
  end;
end;

procedure TfrmOrcamento.actitdeclinarExecute(Sender: TObject);
var
  recno : Integer;
begin
  recno := tbv.DataController.RecNo;
  cds.DisableControls;
  cdsdetail.DisableControls;
  try
    cdsdetail.ReadOnly := False;
    cds.ReadOnly       := False;
    cdsdetail.Edit;
    cdsdetailCDSTITORCAMENTO.AsString := _4;
    cdsdetail.Post;
    actSalvarExecute(actsalvar);
  finally
    cds.EnableControls;
    cdsdetail.EnableControls;
    tbv.DataController.RecNo := recno;
  end;
end;

procedure TfrmOrcamento.tbvFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
  function pode_declinar:boolean;
  begin
    result := (cdsdetailCDSTITORCAMENTO.AsString <> _2) and
              (cdsdetailCDSTITORCAMENTO.AsString <> _4) and
              (cdsdetailQTAPROVADO.AsFloat = 0) and
              (cds.State <> dsEdit) and
              (cds.State <> dsinsert);
  end;
  function pode_reabrir:boolean;
  begin
    result := (cdsdetailCDSTITORCAMENTO.AsString = _4) and
              (cds.State <> dsEdit) and
              (cds.State <> dsinsert);
  end;
begin
  showFields;
  actitdeclinar.Enabled := pode_declinar;
  actitdeclinar.Visible := actitdeclinar.Enabled;
  actitreabrir.Enabled  := pode_reabrir;
  actitreabrir.Visible  := actitreabrir.Enabled;
end;

procedure TfrmOrcamento.cdsdetailAfterScroll(DataSet: TDataSet);
begin
  actdetalhar.Enabled := (orcamento.tporcamento.bocalculo = _s) and (dts.State <> dsedit) and (dts.State <> dsinsert);
  actdetalhar.Visible := (orcamento.tporcamento.bocalculo = _s) and (dts.State <> dsedit) and (dts.State <> dsinsert);
  if (sptitem.State = ssclosed) or (pgc3.ActivePage <> tbspecagrafico) then
  begin
    Exit;
  end;
  AtualizarPizzaPeca;
  AtualizarPizzaItem;
end;

procedure TfrmOrcamento.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  s : string;
  Column : TcxGridDBBandedColumn;
begin
  Column := tbvCDSTITORCAMENTO;
  s      := upperCase(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if s = 'CANCELADO' then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end;
end;

procedure TfrmOrcamento.actitreabrirExecute(Sender: TObject);
var
  recno : Integer;
begin
  recno := tbv.DataController.RecNo;
  cds.DisableControls;
  cdsdetail.DisableControls;
  try
    cdsdetail.ReadOnly := False;
    cds.ReadOnly       := False;
    cdsdetail.Edit;
    cdsdetailCDSTITORCAMENTO.AsString := _1;
    cdsdetail.Post;
    actSalvarExecute(actsalvar);
  finally
    cds.EnableControls;
    cdsdetail.EnableControls;
    tbv.DataController.RecNo := recno;
  end;
end;

procedure TfrmOrcamento.actdetalharExecute(Sender: TObject);
var
  recno : Integer;
begin
  if not dlgDetalharorcamento(actEditar.Enabled, cdsCDSTORCAMENTO.AsString, cdsdetailCDITORCAMENTO.AsString, orcamento, registro, produto, equipamento) then
  begin
    exit;
  end;
  cds.DisableControls;
  cdsdetail.DisableControls;
  recno   := cdsdetail.RecNo;
  try
    actEditarExecute(acteditar);
    actSalvarExecute(actsalvar);
  finally
    cds.EnableControls;
    cdsdetail.EnableControls;
  end;
  cdsdetail.RecNo := recno;
end;

procedure TfrmOrcamento.cbxcdfuncionarioEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmOrcamento.cbxcdfuncionarioorcamentistaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmOrcamento.actinserircontatoExecute(Sender: TObject);
var
  cditcontcliente : string;
begin
  if edtCDCLIENTE.Text = '' then
  begin
    messagedlg('Preencha o cliente antes de inserir um contato.', mtinformation, [mbok], 0);
    exit;
  end;
  cditcontcliente := InserirRegistroTabela(_itcontcliente, 'Contato Cliente', cds.fieldbyname(_CDCLIENTE).AsString);
  if cditcontcliente <> '' then
  begin
    atualizarContatocliente;
    cdsCDITCONTCLIENTE.AsString := cditcontcliente;
  end;
end;

procedure TfrmOrcamento.cdsNUCOTACAOValidate(Sender: TField);
var
  recno : Integer;
begin
  cdsdetail.DisableControls;
  try
    cdsdetail.AfterPost := nil;
    recno := cdsdetail.RecNo;
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      cdsdetail.Edit;
      if Sender.AsString = '' then
      begin
        cdsdetailNUCOTACAO.Clear
      end
      else
      begin
        cdsdetailNUCOTACAO.AsString := Sender.AsString;
      end;
      cdsdetail.Next;
    end;
    cdsdetail.RecNo := recno;
  finally
    cdsdetail.EnableControls;
    cdsdetail.AfterPost := cdsdetailAfterPost;
  end;
end;

procedure TfrmOrcamento.cdsitorcamentomaterialVLUNITARIOValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Valor+' '+__unitario]), mtinformation, [mbok], 0);
    sender.FocusControl;
    Abort;
  end;
  settotalmaterial;
end;

procedure TfrmOrcamento.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmOrcamento.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmOrcamento.btnaddorcamentoatravesdeClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_orcamento+_atraves+_de, 'Orçamento Através de');
  if codigo <> '' then
  begin
    abrir_tabela(_orcamento+_atraves+_de);
    cdsCDORCAMENTOATRAVESDE.AsString := codigo;
  end;
end;

procedure TfrmOrcamento.cdsitorcamentocustoNUFATORValidate(Sender: TField);
begin
  setvalorcusto;
end;

procedure TfrmOrcamento.cdsPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  MessageDlg(e.Message, mtInformation, [mbOK], 0);
  Action := daAbort;
end;

procedure TfrmOrcamento.lbltporcamentoDblClick(Sender: TObject);
begin
  actAbrirtporcamento.onExecute(actAbrirtporcamento);
end;

procedure TfrmOrcamento.lblcondpagtoDblClick(Sender: TObject);
begin
  actAbrircondpagto.onExecute(actAbrircondpagto);
end;

procedure TfrmOrcamento.actabrircondpagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmOrcamento.cdsdetailVLDESCONTOValidate(Sender: TField);
var
  prdesconto : double;
begin
  if (sender.AsCurrency > cdsdetailVLTOTAL.AsCurrency) then
  begin
    if cdsdetailVLTOTAL.AsCurrency < 0 then
    begin
      Exit;
    end;
    MessageDlg('Valor do desconto não pode ser maior do que o valor total do item.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  if cdsdetailVLTOTAL.ascurrency = 0 then
  begin
    cdsdetailPRDESCONTO.OnValidate := nil;
    try
      cdsdetailPRDESCONTO.AsCurrency := 0;
    finally
      cdsdetailPRDESCONTO.OnValidate := cdsdetailPRDESCONTOValidate;
    end;
  end
  else
  begin  //calcular_pr_desconto_item;
    prdesconto := cdsdetailVLDESCONTO.AsCurrency * 100 / cdsdetailVLTOTAL.ascurrency;
    if orcamento.tporcamento.boitemdescontomaximo = _s then
    begin
      produto.Select(cdsdetailCDPRODUTO.AsInteger);
      if (produto.prdescontomaximo > 0) and (prdesconto > produto.prdescontomaximo) then
      begin
        MessageDlg('Valor do desconto não pode ser maior que a porcentagem de desconto permitido para o produto ('+FormatarDecimal(produto.prdescontomaximo, 0)+' %).', mtInformation, [mbOK], 0);
        cdsdetailvlDESCONTO.FocusControl;
        Abort;
      end;
    end;
    cdsdetailPRDESCONTO.OnValidate := nil;
    try
      if cdsdetailPRDESCONTO.AsCurrency <> cdsdetailVLDESCONTO.AsCurrency * 100 / cdsdetailVLTOTAL.ascurrency then
      begin
        cdsdetailPRDESCONTO.AsCurrency := cdsdetailVLDESCONTO.AsCurrency * 100 / cdsdetailVLTOTAL.ascurrency;
      end;
    finally
      cdsdetailPRDESCONTO.OnValidate := cdsdetailPRDESCONTOValidate;
    end;
  end;
  cdsdetailVLPRODUCAOPValidate(sender);
end;

procedure TfrmOrcamento.cdsdetailVLDESCONTOPRODUCAOValidate(Sender: TField);
begin
  cdsdetailVLPRODUCAOPValidate(sender);
end;

procedure TfrmOrcamento.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet));
  end;
end;

procedure TfrmOrcamento.cdsCDCLIENTEENTREGAValidate(Sender: TField);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(QRetornaSQL.get_select_from(_cliente+_entrega, cdscdclienteentrega.AsString));
  try
    cdsDSNUMERO.AsString      := q.q.fieldbyname(_dsnumero).AsString;
    cdsDSENDERECO.AsString    := q.q.fieldbyname(_dsendereco).AsString;
    cdsNMBAIRRO.AsString      := q.q.fieldbyname(_nmbairro).AsString;
    cdsCDUF.AsString          := q.q.fieldbyname(_cduf).AsString;
    cdsCDMUNICIPIO.AsString   := q.q.fieldbyname(_cdmunicipio).AsString;
    cdsNUFONE.AsString        := q.q.fieldbyname(_nufone).AsString;
    cdsNUCEP.AsString         := q.q.fieldbyname(_nucep).AsString;
    cdsDSCOMPLEMENTO.AsString := q.q.fieldbyname(_dscomplemento).AsString;
    cdsNUCXPOSTAL.AsString    := q.q.fieldbyname(_nucxpostal).AsString;
    cdsNUFAX.AsString         := q.q.fieldbyname(_nufax).AsString;
  finally
    freeandnil(q);
  end;
end;

procedure TfrmOrcamento.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmOrcamento.cdsdetailPRDESCONTOValidate(Sender: TField);
begin
  if orcamento.tporcamento.boitemdescontomaximo = _s then
  begin
    produto.Select(cdsdetailCDPRODUTO.AsInteger);
    if (produto.prdescontomaximo > 0) and (cdsdetailPRDESCONTO.AsFloat > produto.prdescontomaximo) then
    begin
      MessageDlg('Valor do desconto não pode ser maior que a porcentagem de desconto permitido para o produto ('+FormatarDecimal(produto.prdescontomaximo, 0)+' %).', mtInformation, [mbOK], 0);
      cdsdetailPRDESCONTO.FocusControl;
      Abort;
    end;
  end;
  cdsDETAILVLDESCONTO.AsCurrency := cdsdetailVLTOTAL.AsCurrency * cdsdetailPRDESCONTO.ascurrency / 100;
end;

procedure TfrmOrcamento.tbvCDDIGITADOEMBALAGEMPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_orcamento, cdsdetail, true, _embalagem);
end;

procedure TfrmOrcamento.cdsdetailCDDIGITADOEMBALAGEMValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsdetailCDPRODUTOEMBALAGEM.Clear;
    cdsdetailNMPRODUTOEMBALAGEM.Clear;
    Exit;
  end;
  if cdsdetailCDPRODUTO.IsNull then
  begin
    MessageDlg('Favor preencher o produto antes de informar a embalagem.', mtInformation, [mbok], 0);
    Abort;
  end;
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _bopedido);
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  produto.tpproduto.select(produto.cdtpproduto);
  if produto.tpproduto.boservico = _s then
  begin
    MessageDlg('Serviço não pode ser lançado como embalagem.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  //produto.CheckDados(orcamento.tporcamento.boitemchecknuclfiscal);
  if not produto.embalagemFazParteProduto(cdsdetailCDPRODUTO.AsInteger, produto.cdproduto) then
  begin
    MessageDlg('Embalagem não faz parte do produto no método processo.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  if (produto.cdproduto <> 0) and (cdsdetailCDPRODUTOEMBALAGEM.AsInteger <> produto.cdproduto) then
  begin
    cdsdetailCDPRODUTOEMBALAGEM.AsInteger := produto.cdproduto;
  end;
  cdsdetailNMPRODUTOEMBALAGEM.asstring  := produto.nmproduto;
end;

procedure TfrmOrcamento.tbvQTATENDIDACustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  cqtaprovado, cqtitem : TcxGridDBBandedColumn;
  qtaprovado, qtitem : Double;
begin
  cqtaprovado := tbvQTATENDIDA;
  cqtitem     := tbvQTitem;
  qtaprovado  := StrToFloat(AViewInfo.GridRecord.DisplayTexts[cqtaprovado.Index]);
  qtitem      := StrToFloat(AViewInfo.GridRecord.DisplayTexts[cqtitem.Index]);
  if qtaprovado >= qtitem then
  begin
    ACanvas.Font.Color := clblue;
    ACanvas.Font.Style := [fsBold];
  end
  else if qtaprovado > 0 then
  begin
    ACanvas.Font.Color := clgreen;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmOrcamento.actconsultapedidoExecute(Sender: TObject);
begin
  setQuery(_pedido);
end;

procedure TfrmOrcamento.actconsultaordcompraExecute(Sender: TObject);
begin
  setQuery(_ordcompra);
end;

procedure TfrmOrcamento.actconsultaordproducaoExecute(Sender: TObject);
begin
  setQuery(_ordproducao);
end;

procedure TfrmOrcamento.setQuery(tabela: string);
begin
  if tabela = _pedido then
  begin
    setQueryPedido
  end
  else if tabela = _requisicaoproducao then
  begin
    setQueryRequisicaoproducao
  end
  else if tabela = _ordproducao then
  begin
    setQueryOrdproducao;
  end
  else if tabela = _ordcompra then
  begin
    setQueryOrdCompra;
  end;
end;

function TfrmOrcamento.makesqlSetQueryOrdproducao:string;
begin
  result := 'SELECT ORDPRODUCAO.CDORDPRODUCAO'+
                  ',ORDPRODUCAO.DTEMISSAO'+
                  ',ORDPRODUCAO.CDDIGITADO'+
                  ',ORDPRODUCAO.DTPRVENTREGA'+
                  ',STORDPRODUCAO.NMSTORDPRODUCAO'+
                  ',PRODUTO.NMPRODUTO'+
                  ',ORDPRODUCAO.QTITEM '+
            'FROM ORDPRODUCAO '+
            'LEFT JOIN STORDPRODUCAO ON STORDPRODUCAO.CDEMPRESA=ORDPRODUCAO.CDEMPRESA AND STORDPRODUCAO.CDSTORDPRODUCAO=ORDPRODUCAO.CDSTORDPRODUCAO '+
            'INNER JOIN ITPEDIDO ON ITPEDIDO.CDEMPRESA=ORDPRODUCAO.CDEMPRESA AND ITPEDIDO.CDITPEDIDO=ORDPRODUCAO.CDITPEDIDO '+
            'INNER JOIN ITORCAMENTO ON ITORCAMENTO.CDEMPRESA=ITPEDIDO.CDEMPRESA AND ITORCAMENTO.CDITORCAMENTO=ITPEDIDO.CDITORCAMENTO '+
            'INNER JOIN PEDIDO ON PEDIDO.CDEMPRESA=ITPEDIDO.CDEMPRESA AND PEDIDO.CDPEDIDO=ITPEDIDO.CDPEDIDO '+
            'INNER JOIN PRODUTO ON PRODUTO.CDEMPRESA=ORDPRODUCAO.CDEMPRESA AND PRODUTO.cdproduto=ORDPRODUCAO.CDPRODUTO '+
            'WHERE ITORCAMENTO.CDEMPRESA='+cds.fieldbyname(_cdempresa).AsString+' and ITORCAMENTO.cdorcamento='+cdsCDORCAMENTO.AsString;
end;

function TfrmOrcamento.makesqlSetQueryOrdcompra:string;
begin
  result := 'SELECT ordcompra.CDordcompra'+
                  ',ordcompra.DTEMISSAO'+
                  ',itordcompra.CDDIGITADO'+
                  ',ITordcompra.VLUNITARIO'+
                  ',ITORDCOMPRA.VLTOTAL'+
                  ',STordcompra.NMSTordcompra'+
                  ',PRODUTO.NMPRODUTO'+
                  ',itordcompra.QTITEM '+
            'FROM ordcompra '+
            'LEFT JOIN STordcompra ON STordcompra.CDSTordcompra=ordcompra.CDSTordcompra '+
            'INNER JOIN itordcompra ON itordcompra.CDEMPRESA=ordcompra.CDEMPRESA AND itordcompra.cdordcompra=ordcompra.cdordcompra '+
            'INNER JOIN PRODUTO ON PRODUTO.CDEMPRESA=itordcompra.CDEMPRESA AND PRODUTO.cdproduto=itordcompra.CDPRODUTO '+
            'WHERE ordcompra.CDEMPRESA='+cds.fieldbyname(_cdempresa).AsString+' and itordcompra.cdorcamento='+cdsCDORCAMENTO.AsString;
end;

procedure TfrmOrcamento.setQueryOrdproducao;
begin
  qryconsulta.q.Close;
  qryconsulta.q.SQL.Text := makesqlSetQueryOrdproducao;
  qryconsulta.q.Open;
  grdconsultaLevel1.GridView := tbvordproducao;
end;

procedure TfrmOrcamento.setQueryOrdCompra;
begin
  qryconsulta.q.Close;
  qryconsulta.q.SQL.Text := makesqlSetQueryOrdCompra;
  qryconsulta.q.Open;
  grdconsultaLevel1.GridView := tbvordcompra;
end;

function TfrmOrcamento.makesqlSetQueryPedido:string;
begin
  result := 'SELECT PEDIDO.NUPEDIDO'+
                  ',PEDIDO.DTEMISSAO'+
                  ',PEDIDO.CDPEDIDO'+
                  ',ITPEDIDO.CDDIGITADO'+
                  ',PRODUTO.NMPRODUTO'+
                  ',ITPEDIDO.QTITEM '+
            'FROM PEDIDO '+
            'INNER JOIN ITPEDIDO ON ITPEDIDO.CDEMPRESA=PEDIDO.CDEMPRESA AND ITPEDIDO.CDPEDIDO=PEDIDO.CDPEDIDO '+
            'INNER JOIN PRODUTO ON PRODUTO.CDEMPRESA=ITPEDIDO.CDEMPRESA AND PRODUTO.cdproduto=ITPEDIDO.CDPRODUTO '+
            'INNER JOIN ITORCAMENTO ON ITORCAMENTO.CDEMPRESA=ITPEDIDO.CDEMPRESA AND ITORCAMENTO.CDITORCAMENTO=ITPEDIDO.CDITORCAMENTO '+
            'WHERE ITORCAMENTO.CDEMPRESA='+cds.fieldbyname(_cdempresa).AsString+' and ITORCAMENTO.cdorcamento='+cdsCDORCAMENTO.AsString;
end;

procedure TfrmOrcamento.setQueryPedido;
begin
  qryconsulta.q.Close;
  qryconsulta.q.SQL.Text := makesqlSetQueryPedido;
  qryconsulta.q.Open;
  grdconsultaLevel1.GridView := tbvpedido;
end;

procedure TfrmOrcamento.actgerarrequisicaoproducaoExecute(Sender: TObject);
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if cdsCDorcamento.asstring <> '' then
  begin
    GerarPedido(_requisicaoproducao, orcamento);
  end;
end;

procedure TfrmOrcamento.actconsultarequisicaoproducaoExecute(Sender: TObject);
begin
  setQuery(_requisicaoproducao);
end;

function TfrmOrcamento.makesqlSetQueryRequisicaoproducao:string;
begin
  result := 'SELECT requisicaoproducao.cdrequisicaoproducao'+
                  ',requisicaoproducao.DTEMISSAO'+
                  ',itrequisicaoproducao.dtprventrega'+
                  ',itrequisicaoproducao.CDDIGITADO'+
                  ',produto.NMPRODUTO'+
                  ',itrequisicaoproducao.qtproducao'+
                  ',STREQUISICAOPRODUCAO.NMSTREQUISICAOPRODUCAO'+
                  ',itrequisicaoproducao.QTITEM '+
            'FROM requisicaoproducao '+
            'INNER JOIN ITrequisicaoproducao ON ITrequisicaoproducao.CDEMPRESA=requisicaoproducao.CDEMPRESA AND ITrequisicaoproducao.CDrequisicaoproducao=requisicaoproducao.CDrequisicaoproducao '+
            'INNER JOIN STREQUISICAOPRODUCAO ON STREQUISICAOPRODUCAO.CDEMPRESA=REQUISICAOPRODUCAO.CDEMPRESA AND STREQUISICAOPRODUCAO.CDSTREQUISICAOPRODUCAO=REQUISICAOPRODUCAO.CDSTREQUISICAOPRODUCAO '+
            'INNER JOIN PRODUTO ON PRODUTO.CDEMPRESA=ITrequisicaoproducao.CDEMPRESA AND PRODUTO.cdproduto=ITrequisicaoproducao.CDPRODUTO '+
            'INNER JOIN ITORCAMENTO ON ITORCAMENTO.CDEMPRESA=ITrequisicaoproducao.CDEMPRESA AND ITORCAMENTO.CDITORCAMENTO=ITrequisicaoproducao.CDITORCAMENTO '+
            'WHERE ITORCAMENTO.CDEMPRESA='+cds.fieldbyname(_cdempresa).AsString+' and ITORCAMENTO.cdorcamento='+cdsCDORCAMENTO.AsString;
end;

procedure TfrmOrcamento.setQueryRequisicaoproducao;
begin
  qryconsulta.q.Close;
  qryconsulta.q.SQL.Text := makesqlSetQueryRequisicaoproducao;
  qryconsulta.q.Open;
  grdconsultaLevel1.GridView := tbvrequisicaoproducao;
end;

procedure TfrmOrcamento.cdsVLACRESCIMOValidate(Sender: TField);
begin
  gravartotais;
end;

procedure TfrmOrcamento.travarOrcamentoAprovado;
var
  botravar : Boolean;
begin
  botravar := False;
  cdsdetail.DisableControls;
  try
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      botravar := cdsdetailQTAPROVADO.AsFloat >= cdsdetailQTITEM.AsFloat;
      if not botravar then
      begin
        Break;
      end;
      cdsdetail.Next;
    end;
    cdsdetail.First;
    if botravar then
    begin
      actEditar.Enabled := False;
      actExcluir.Enabled := False;
    end;
  finally
    cdsdetail.EnableControls;
  end;
end;

procedure TfrmOrcamento.actdetailExecute(Sender: TObject);
begin
  grd.SetFocus;
end;

procedure TfrmOrcamento.edtcddigitadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcddigitadoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrcamento.edtcddigitadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cdalternativo: string;
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizarproduto;
  if cd <> 0 then
  begin
    cdalternativo := qregistro.StringdoCodigo(_produto, cd, _cdalternativo);
    if cdalternativo <> '' then
    begin
      cdsCDDIGITADO.AsString := cdalternativo;
    end
    else
    begin
      cdsCDDIGITADO.AsString := cd.ToString;
    end;
  end
end;

procedure TfrmOrcamento.cdsCDDIGITADOValidate(Sender: TField);
var
  cdproduto : integer;
begin
  if Sender.AsString = '' then
  begin
    cdsCDPRODUTO.clear;
    Exit;
  end;
  cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if cdproduto = 0 then
  begin
    sender.FocusControl;
    abort;
  end;
  cdsCDPRODUTO.AsInteger  := cdproduto;
  cdsnmproduto.AsString := qregistro.nomedocodigo(_produto, cdproduto);
end;

procedure TfrmOrcamento.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(tbl, cds.fieldbyname(_cdorcamento).AsString);
end;

procedure TfrmOrcamento.cdsitorcamentoperiodicidadeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName(_qtitem).AsFloat        := 1;
  DataSet.FieldByName(_vlunitario).AsCurrency := 0;
  DataSet.FieldByName(_vltotal).AsCurrency    := 0;
end;

procedure TfrmOrcamento.cdsitorcamentoperiodicidadeBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName(_cditorcamentoperiodicidade).AsInteger < 1 then
  begin
    DataSet.FieldByName(_cditorcamentoperiodicidade).AsInteger := QGerar.GerarCodigo(_itorcamentoperiodicidade);
  end;
  registro.set_update(DataSet);
end;

procedure TfrmOrcamento.actabrirpedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,qryconsulta.q);
end;

procedure TfrmOrcamento.tbvpedidoCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nupedido then
  begin
    actabrirpedido.onExecute(actabrirpedido)
  end;
end;

procedure TfrmOrcamento.actabrirordcompraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,qryconsulta.q);
end;

procedure TfrmOrcamento.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,qryconsulta.q);
end;

procedure TfrmOrcamento.tbvordcompraCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordcompra then
  begin
    actabrirordcompra.onExecute(actabrirordcompra);
  end;
end;

procedure TfrmOrcamento.tbvordproducaoCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducao.onExecute(actabrirordproducao);
  end;
end;

procedure TfrmOrcamento.tbvrequisicaoproducaoCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdrequisicaoproducao then
  begin
    actabrirrequisicaoproducao.onExecute(actabrirrequisicaoproducao);
  end;
end;

procedure TfrmOrcamento.actabrirrequisicaoproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,qryconsulta.q);
end;

procedure TfrmOrcamento.actgerarcotacaoExecute(Sender: TObject);
begin
  if orcamento.GerarCotacao then
  begin
    ShowMessage('Cotação gerada.');
  end;
end;

procedure TfrmOrcamento.cdsdetailALISSValidate(Sender: TField);
begin
  setvlproducao(Sender);
  if orcamento.tporcamento.boiss = _s then
  begin
    Sender.DataSet.FieldByName(_vliss).AsCurrency := sender.AsFloat * sender.DataSet.fieldbyname(_vltotal).AsCurrency /100;
  end;
end;

end.

