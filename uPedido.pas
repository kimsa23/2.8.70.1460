unit uPedido;

interface

uses
  System.Actions, System.UITypes, Winapi.Messages,
  forms, Menus, Classes, ActnList, ComCtrls, ExtCtrls, StdCtrls, Grids, ToolWin,
  ShellAPI, Mask, Controls, Buttons, windows, types, sysutils, dialogs, graphics, Math,
  FMTBcd, DBClient, Provider, sqlexpr, DBCtrls, DB,
  uconstantes, ustrings, uregistro, ulocalizar, urotinas,
  uexportarexcel, udatahora, unumero, uNovoTabela, ulocalizarcliente,
  ulocalizarfornecedor, ulocalizarproduto, ulocalizarFuncionario, uloteserie,
  classeform, classepedido, classeretornasql, classegerar, classeconsiste,
  classeregistrainformacao, classeaplicacao, classeRegistro, classeexecutasql, classeorcamento,
  classeusuario, classeempresa, classeproduto, classecliente, classefornecedor,
  classecondpagto, classeequipamento, classerepresentante, classequery, classerim,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxCurrencyEdit,
  cxContainer, dxBar, cxClasses, cxLabel, cxCheckBox, cxDBEdit, cxCalendar, cxSpinEdit,
  cxTextEdit, cxGroupBox, cxMemo, cxSplitter, cxDBLabel, cxMaskEdit, cxDropDownEdit,
  cxCalc, cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtons, cxBlobEdit, cxRichEdit,
  cxPCdxBarPopupMenu, dxBevel, cxNavigator, cxListView, dxBarBuiltInMenu,
  cxRadioGroup, cxTimeEdit;

type
  TfrmPedido = class(TForm)
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
    actImprimirModoTexto: TAction;
    actAbrirCliente: TAction;
    actAbrirCondpagto: TAction;
    actAbrirRepresentante: TAction;
    actAbrirSaida: TAction;
    actabrirproduto: TAction;
    actconsultasaida: TAction;
    actconsultaTransporte: TAction;
    actAbrirTransporte: TAction;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    dxbrlrgbtnNovo: TdxBarLargeButton;
    dxbrlrgbtnEditar: TdxBarLargeButton;
    dxbrlrgbtnAbrir: TdxBarLargeButton;
    btnsalvar: TdxBarLargeButton;
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
    dxBarButton3: TdxBarButton;
    actGerarSaida: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    actimprimirorcamento: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    actabrirfuncionario: TAction;
    actabrirtransportadora: TAction;
    actimprimirpedidovenda: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    actimprimirVendasimples: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    tbsconsulta: TcxTabSheet;
    tbsobsinterna: TcxTabSheet;
    bmg1Bar1: TdxBar;
    dxBarDockControl2: TdxBarDockControl;
    grdconsulta: TcxGrid;
    grlsaida: TcxGridLevel;
    grltransporte: TcxGridLevel;
    grlitsaida: TcxGridLevel;
    tbvsaida: TcxGridDBBandedTableView;
    tbvitsaida: TcxGridDBBandedTableView;
    tbvtransporte: TcxGridDBBandedTableView;
    colNUSAIDA: TcxGridDBBandedColumn;
    colDTEMISSAO: TcxGridDBBandedColumn;
    colVLTOTAL: TcxGridDBBandedColumn;
    btnsaida: TdxBarButton;
    btntransporte: TdxBarButton;
    colcddigitado: TcxGridDBBandedColumn;
    colnmproduto: TcxGridDBBandedColumn;
    colqtitem: TcxGridDBBandedColumn;
    colvlunitario: TcxGridDBBandedColumn;
    colvltotali: TcxGridDBBandedColumn;
    memdsobservacao: TcxDBMemo;
    memDSOBSINTERNA: TcxDBMemo;
    grd: TcxGrid;
    grlgrddetail1Level1: TcxGridLevel;
    tbv: TcxGridDBBandedTableView;
    tbvCDTPGRADEVALOR: TcxGridDBBandedColumn;
    tbvCDSTITPEDIDO: TcxGridDBBandedColumn;
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
    tbvNMPRODUTO: TcxGridDBBandedColumn;
    tbvNUITEM: TcxGridDBBandedColumn;
    tbvVLICMS: TcxGridDBBandedColumn;
    tbvQTLARGURA1: TcxGridDBBandedColumn;
    tbvQTCOMPRIMENTO1: TcxGridDBBandedColumn;
    tbvQTALTURA1: TcxGridDBBandedColumn;
    tbvQTPECA: TcxGridDBBandedColumn;
    gbxvalores2: TcxGroupBox;
    lbldesconto: TLabel;
    edtprdesconto: TcxDBCalcEdit;
    edtvldesconto: TcxDBCalcEdit;
    tbsentrega: TcxTabSheet;
    gbxComercial: TcxGroupBox;
    Label10: TLabel;
    Label7: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
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
    actlocalizarentrega: TAction;
    actlimparentrega: TAction;
    btn1: TcxButton;
    tbvDSOBSERVACAO: TcxGridDBBandedColumn;
    lbldsreferencia: TLabel;
    edtdsreferencia: TcxDBTextEdit;
    Panel1: TPanel;
    pnl: TcxLabel;
    actimprimirmodotexto2: TAction;
    dxBarButton2: TdxBarButton;
    actimprimirordemproducao: TAction;
    tbvBOIPIBCICMS: TcxGridDBBandedColumn;
    tbvDSOBSERVACAO1: TcxGridDBBandedColumn;
    tbvtransporteColumn1: TcxGridDBBandedColumn;
    tbvtransporteColumn2: TcxGridDBBandedColumn;
    tbsduplicata: TcxTabSheet;
    grdpedidoduplicata: TcxGrid;
    btvpedidoduplicata: TcxGridDBBandedTableView;
    btvpedidoduplicataVLORDCOMPRAAUTPAGTO: TcxGridDBBandedColumn;
    btvpedidoduplicataDTPRORROGACAO: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    dxBarSubItem2: TdxBarSubItem;
    actemail: TAction;
    dxBarButton7: TdxBarButton;
    actemailorcamento: TAction;
    dxBarButton8: TdxBarButton;
    actemailpedidovenda: TAction;
    actemailvendasimples: TAction;
    dxBarButton9: TdxBarButton;
    sds: TSQLDataSet;
    sdsCDPEDIDO: TIntegerField;
    sdsCDSTPEDIDO: TIntegerField;
    sdsCDCONDPAGTO: TIntegerField;
    sdsCDREPRESENTANTE: TIntegerField;
    sdsCDTPPEDIDO: TIntegerField;
    sdsCDTPCOBRANCA: TIntegerField;
    sdsCDFUNCIONARIO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsNUPEDIDO: TStringField;
    sdsDTEMISSAO: TDateField;
    sdsPRCOMISSAO: TFloatField;
    sdsDTFECHAMENTO: TDateField;
    sdsDTPRVENTREGA: TDateField;
    sdsVLTOTAL: TFMTBCDField;
    sdsVLIPI: TFMTBCDField;
    sdsVLTOTALCIPI: TFMTBCDField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsPRDESCONTO: TFloatField;
    sdsPSBRUTO: TFloatField;
    sdsVLPRODUTO: TFMTBCDField;
    sdsDSOBSERVACAO: TBlobField;
    sdsDSOBSINTERNA: TBlobField;
    sdsNUCOTACAO: TStringField;
    sdsBOCERTIFICADO: TStringField;
    sdsNUDIAS: TIntegerField;
    sdsVLFRETE: TFMTBCDField;
    sdsVLICMSSUBTRIB: TFMTBCDField;
    sdsQTPEDIDO: TFloatField;
    sdsQTATENDIDO: TFloatField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsVLCOMISSAO: TFMTBCDField;
    sdsNMTRANSPORTADORA: TStringField;
    sdsCDUSUARIOL: TIntegerField;
    sdsCDCOMPUTADORL: TIntegerField;
    sdsTSLIBERADO: TSQLTimeStampField;
    sdsCDCLIENTEENTREGA: TIntegerField;
    sdsDSENDERECO: TStringField;
    sdsDSNUMERO: TStringField;
    sdsDSCOMPLEMENTO: TStringField;
    sdsNMBAIRRO: TStringField;
    sdsNUCXPOSTAL: TStringField;
    sdsNUFONE: TStringField;
    sdsNUFAX: TStringField;
    sdsNUCEP: TStringField;
    sdsDSREFERENCIA: TStringField;
    sdsVLICMS: TFMTBCDField;
    sdsNMFUNCIONARIO: TStringField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsCDPEDIDO: TIntegerField;
    cdsCDSTPEDIDO: TIntegerField;
    cdsCDCONDPAGTO: TIntegerField;
    cdsCDREPRESENTANTE: TIntegerField;
    cdsCDTPPEDIDO: TIntegerField;
    cdsCDTPCOBRANCA: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsNUPEDIDO: TStringField;
    cdsDTEMISSAO: TDateField;
    cdsPRCOMISSAO: TFloatField;
    cdsDTFECHAMENTO: TDateField;
    cdsDTPRVENTREGA: TDateField;
    cdsVLTOTAL: TFMTBCDField;
    cdsVLIPI: TFMTBCDField;
    cdsVLTOTALCIPI: TFMTBCDField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsPRDESCONTO: TFloatField;
    cdsPSBRUTO: TFloatField;
    cdsVLPRODUTO: TFMTBCDField;
    cdsDSOBSERVACAO: TBlobField;
    cdsDSOBSINTERNA: TBlobField;
    cdsNUCOTACAO: TStringField;
    cdsBOCERTIFICADO: TStringField;
    cdsNUDIAS: TIntegerField;
    cdsVLFRETE: TFMTBCDField;
    cdsVLICMSSUBTRIB: TFMTBCDField;
    cdsQTPEDIDO: TFloatField;
    cdsQTATENDIDO: TFloatField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsVLCOMISSAO: TFMTBCDField;
    cdsNMTRANSPORTADORA: TStringField;
    cdsCDUSUARIOL: TIntegerField;
    cdsCDCOMPUTADORL: TIntegerField;
    cdsTSLIBERADO: TSQLTimeStampField;
    cdsCDCLIENTEENTREGA: TIntegerField;
    cdsDSENDERECO: TStringField;
    cdsDSNUMERO: TStringField;
    cdsDSCOMPLEMENTO: TStringField;
    cdsNMBAIRRO: TStringField;
    cdsNUCXPOSTAL: TStringField;
    cdsNUFONE: TStringField;
    cdsNUFAX: TStringField;
    cdsNUCEP: TStringField;
    cdsDSREFERENCIA: TStringField;
    cdsVLICMS: TFMTBCDField;
    cdsNMFUNCIONARIO: TStringField;
    dts: TDataSource;
    dts1: TDataSource;
    dts2: TDataSource;
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    cdsdetailCDITPEDIDO: TIntegerField;
    cdsdetailCDPEDIDO: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailCDTPGRADEVALOR: TIntegerField;
    cdsdetailCDSTITPEDIDO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailQTATENDIDA: TFloatField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailVLIPI: TFMTBCDField;
    cdsdetailALIPI: TFloatField;
    cdsdetailVLTOTALCIPI: TFMTBCDField;
    cdsdetailDTPRVENTREGA: TDateField;
    cdsdetailQTLARGURA1: TFloatField;
    cdsdetailQTLARGURA2: TFloatField;
    cdsdetailQTALTURA1: TFloatField;
    cdsdetailQTALTURA2: TFloatField;
    cdsdetailQTCOMPRIMENTO1: TFloatField;
    cdsdetailQTCOMPRIMENTO2: TFloatField;
    cdsdetailQTDIAMETROEXTERNO: TFloatField;
    cdsdetailQTDIAMETROEXTERNO2: TFloatField;
    cdsdetailQTDIAMETROFURO: TFloatField;
    cdsdetailQTCOMPRIMENTO3: TFloatField;
    cdsdetailQTDIAMETROCORPO: TFloatField;
    cdsdetailDSFORMULA: TStringField;
    cdsdetailQTPESO: TFloatField;
    cdsdetailVLQUILO: TFMTBCDField;
    cdsdetailDSDESENHO: TStringField;
    cdsdetailVLMAQUINA: TFMTBCDField;
    cdsdetailVLPECA: TFMTBCDField;
    cdsdetailALMVA: TFloatField;
    cdsdetailVLICMSSUBTRIB: TFMTBCDField;
    cdsdetailVLFRETE: TFMTBCDField;
    cdsdetailVLDESCONTO: TFMTBCDField;
    cdsdetailALICMS: TFloatField;
    cdsdetailALICMSSUBTRIB: TFloatField;
    cdsdetailNUCOTACAO: TStringField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailNMPRODUTO: TStringField;
    cdsdetailNMTPGRADEVALOR: TStringField;
    cdsdetailVLICMS: TFMTBCDField;
    cdsdetailQTPECA: TFloatField;
    cdsdetailNMUNIDADE: TStringField;
    cdsdetailDSOBSERVACAO: TMemoField;
    cdsdetailCDITORCAMENTO: TIntegerField;
    cdsdetailDSDESENHOREVISAO: TStringField;
    cdsdetailDSDESENHOPOSICAO: TStringField;
    cdsdetailCDTPICMS: TIntegerField;
    cdsdetailCDTPIPI: TIntegerField;
    cdsdetailPRLUCRO: TFloatField;
    cdsdetailDSPOSICAODESENHO: TStringField;
    cdsdetailNUREVISAODESENHO: TStringField;
    cdsdetailNUDIASENTREGA: TIntegerField;
    cdsdetailALPIS: TFloatField;
    cdsdetailVLPIS: TFMTBCDField;
    cdsdetailALCOFINS: TFloatField;
    cdsdetailVLCOFINS: TFMTBCDField;
    cdsdetailALCSLL: TFloatField;
    cdsdetailVLCSLL: TFMTBCDField;
    cdsdetailALIRPJ: TFloatField;
    cdsdetailVLIRPJ: TFMTBCDField;
    cdsdetailVLPRODUCAO: TFMTBCDField;
    cdsdetailVLMATERIAL: TFMTBCDField;
    cdsdetailVLCUSTO: TFMTBCDField;
    cdsdetailVLPREPARACAO: TFMTBCDField;
    cdsdetailVLOPERACAO: TFMTBCDField;
    cdsdetailQTOPERACAO: TFloatField;
    cdsdetailQTPREPARACAO: TFloatField;
    cdsdetailQTHORA: TFloatField;
    cdsdetailVLPRODUCAOP: TFMTBCDField;
    cdsdetailVLMATERIALP: TFMTBCDField;
    cdsdetailVLCUSTOP: TFMTBCDField;
    cdsdetailVLPREPARACAOP: TFMTBCDField;
    cdsdetailVLOPERACAOP: TFMTBCDField;
    cdsdetailQTPREPARACAOP: TFloatField;
    cdsdetailQTOPERACAOP: TFloatField;
    cdsdetailQTHORAP: TFloatField;
    cdsdetailVLPISP: TFMTBCDField;
    cdsdetailVLCOFINSP: TFMTBCDField;
    cdsdetailVLCSLLP: TFMTBCDField;
    cdsdetailVLIRPJP: TFMTBCDField;
    cdsdetailVLICMSP: TFMTBCDField;
    cdsdetailVLIPIP: TFMTBCDField;
    cdsdetailNUPRAZOENTREGA: TIntegerField;
    cdsdetailDTAPROVACAO: TDateField;
    cdsdetailVLLUCRO: TFMTBCDField;
    cdsdetailVLLUCROP: TFMTBCDField;
    cdsdetailALISS: TFloatField;
    cdsdetailVLISSP: TFMTBCDField;
    cdsdetailVLISS: TFMTBCDField;
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
    cdsdetailPRDESPESAADMINISTRATIVA: TFloatField;
    cdsdetailPRDESPESAFRETE: TFloatField;
    cdsdetailPRDESPESACOMERCIAL: TFloatField;
    cdsdetailPRDESPESAEMBALAGEM: TFloatField;
    cdsdetailPRDESPESASEGURO: TFloatField;
    cdsdetailVLIRCSLLP: TFMTBCDField;
    cdsdetailVLIRCSLL: TFMTBCDField;
    cdsdetailALCPP: TFloatField;
    cdsdetailVLCPPP: TFMTBCDField;
    cdsdetailVLCPP: TFMTBCDField;
    cdsdetailALSIMPLES: TFloatField;
    cdsdetailVLSIMPLESP: TFMTBCDField;
    cdsdetailVLSIMPLES: TFMTBCDField;
    cdsdetailVLSIMPLESSP: TFMTBCDField;
    cdsdetailVLRECURSOP: TFMTBCDField;
    cdsdetailVLRECURSO: TFMTBCDField;
    cdsdetailBOIPIBCICMS: TStringField;
    sdsdetail: TSQLDataSet;
    sdsdetailCDITPEDIDO: TIntegerField;
    sdsdetailCDPEDIDO: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailCDTPGRADEVALOR: TIntegerField;
    sdsdetailCDSTITPEDIDO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailQTATENDIDA: TFloatField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailVLIPI: TFMTBCDField;
    sdsdetailALIPI: TFloatField;
    sdsdetailVLTOTALCIPI: TFMTBCDField;
    sdsdetailDTPRVENTREGA: TDateField;
    sdsdetailQTLARGURA1: TFloatField;
    sdsdetailQTLARGURA2: TFloatField;
    sdsdetailQTALTURA1: TFloatField;
    sdsdetailQTALTURA2: TFloatField;
    sdsdetailQTCOMPRIMENTO1: TFloatField;
    sdsdetailQTCOMPRIMENTO2: TFloatField;
    sdsdetailQTDIAMETROEXTERNO: TFloatField;
    sdsdetailQTDIAMETROEXTERNO2: TFloatField;
    sdsdetailQTDIAMETROFURO: TFloatField;
    sdsdetailQTCOMPRIMENTO3: TFloatField;
    sdsdetailQTDIAMETROCORPO: TFloatField;
    sdsdetailDSFORMULA: TStringField;
    sdsdetailQTPESO: TFloatField;
    sdsdetailVLQUILO: TFMTBCDField;
    sdsdetailDSDESENHO: TStringField;
    sdsdetailVLMAQUINA: TFMTBCDField;
    sdsdetailVLPECA: TFMTBCDField;
    sdsdetailALMVA: TFloatField;
    sdsdetailVLICMSSUBTRIB: TFMTBCDField;
    sdsdetailVLFRETE: TFMTBCDField;
    sdsdetailVLDESCONTO: TFMTBCDField;
    sdsdetailALICMS: TFloatField;
    sdsdetailALICMSSUBTRIB: TFloatField;
    sdsdetailNUCOTACAO: TStringField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailNMPRODUTO: TStringField;
    sdsdetailNMTPGRADEVALOR: TStringField;
    sdsdetailVLICMS: TFMTBCDField;
    sdsdetailQTPECA: TFloatField;
    sdsdetailNMUNIDADE: TStringField;
    sdsdetailDSOBSERVACAO: TMemoField;
    sdsdetailCDITORCAMENTO: TIntegerField;
    sdsdetailDSDESENHOPOSICAO: TStringField;
    sdsdetailDSDESENHOREVISAO: TStringField;
    sdsdetailCDTPICMS: TIntegerField;
    sdsdetailCDTPIPI: TIntegerField;
    sdsdetailPRLUCRO: TFloatField;
    sdsdetailDSPOSICAODESENHO: TStringField;
    sdsdetailNUREVISAODESENHO: TStringField;
    sdsdetailNUDIASENTREGA: TIntegerField;
    sdsdetailALPIS: TFloatField;
    sdsdetailVLPIS: TFMTBCDField;
    sdsdetailALCOFINS: TFloatField;
    sdsdetailVLCOFINS: TFMTBCDField;
    sdsdetailALCSLL: TFloatField;
    sdsdetailVLCSLL: TFMTBCDField;
    sdsdetailALIRPJ: TFloatField;
    sdsdetailVLIRPJ: TFMTBCDField;
    sdsdetailVLPRODUCAO: TFMTBCDField;
    sdsdetailVLMATERIAL: TFMTBCDField;
    sdsdetailVLCUSTO: TFMTBCDField;
    sdsdetailVLPREPARACAO: TFMTBCDField;
    sdsdetailVLOPERACAO: TFMTBCDField;
    sdsdetailQTOPERACAO: TFloatField;
    sdsdetailQTPREPARACAO: TFloatField;
    sdsdetailQTHORA: TFloatField;
    sdsdetailVLPRODUCAOP: TFMTBCDField;
    sdsdetailVLMATERIALP: TFMTBCDField;
    sdsdetailVLCUSTOP: TFMTBCDField;
    sdsdetailVLPREPARACAOP: TFMTBCDField;
    sdsdetailVLOPERACAOP: TFMTBCDField;
    sdsdetailQTPREPARACAOP: TFloatField;
    sdsdetailQTOPERACAOP: TFloatField;
    sdsdetailQTHORAP: TFloatField;
    sdsdetailVLPISP: TFMTBCDField;
    sdsdetailVLCOFINSP: TFMTBCDField;
    sdsdetailVLCSLLP: TFMTBCDField;
    sdsdetailVLIRPJP: TFMTBCDField;
    sdsdetailVLICMSP: TFMTBCDField;
    sdsdetailVLIPIP: TFMTBCDField;
    sdsdetailNUPRAZOENTREGA: TIntegerField;
    sdsdetailDTAPROVACAO: TDateField;
    sdsdetailVLLUCRO: TFMTBCDField;
    sdsdetailVLLUCROP: TFMTBCDField;
    sdsdetailALISS: TFloatField;
    sdsdetailVLISSP: TFMTBCDField;
    sdsdetailVLISS: TFMTBCDField;
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
    sdsdetailPRDESPESAADMINISTRATIVA: TFloatField;
    sdsdetailPRDESPESAFRETE: TFloatField;
    sdsdetailPRDESPESACOMERCIAL: TFloatField;
    sdsdetailPRDESPESAEMBALAGEM: TFloatField;
    sdsdetailPRDESPESASEGURO: TFloatField;
    sdsdetailVLIRCSLLP: TFMTBCDField;
    sdsdetailVLIRCSLL: TFMTBCDField;
    sdsdetailALCPP: TFloatField;
    sdsdetailVLCPPP: TFMTBCDField;
    sdsdetailVLCPP: TFMTBCDField;
    sdsdetailALSIMPLES: TFloatField;
    sdsdetailVLSIMPLESP: TFMTBCDField;
    sdsdetailVLSIMPLES: TFMTBCDField;
    sdsdetailVLSIMPLESSP: TFMTBCDField;
    sdsdetailVLRECURSOP: TFMTBCDField;
    sdsdetailVLRECURSO: TFMTBCDField;
    sdsdetailBOIPIBCICMS: TStringField;
    sdsitconsulta: TSQLDataSet;
    dspitconsulta: TDataSetProvider;
    cdsitconsulta: TClientDataSet;
    dtsitconsulta: TDataSource;
    dtsconsulta: TDataSource;
    cdsconsulta: TClientDataSet;
    dspconsulta: TDataSetProvider;
    sdsconsulta: TSQLDataSet;
    sdspedidoduplicata: TSQLDataSet;
    sdspedidoduplicataCDPEDIDODUPLICATA: TIntegerField;
    sdspedidoduplicataCDPEDIDO: TIntegerField;
    sdspedidoduplicataVLPEDIDODUPLICATA: TFMTBCDField;
    sdspedidoduplicataDTPRORROGACAO: TDateField;
    sdspedidoduplicataCDUSUARIOI: TIntegerField;
    sdspedidoduplicataCDUSUARIOA: TIntegerField;
    sdspedidoduplicataCDCOMPUTADORI: TIntegerField;
    sdspedidoduplicataCDCOMPUTADORA: TIntegerField;
    sdspedidoduplicataTSINCLUSAO: TSQLTimeStampField;
    sdspedidoduplicataTSALTERACAO: TSQLTimeStampField;
    sdspedidoduplicataDTEMISSAO: TDateField;
    sdspedidoduplicataVLSALDO: TFMTBCDField;
    cdspedidoduplicata: TClientDataSet;
    cdspedidoduplicataCDPEDIDODUPLICATA: TIntegerField;
    cdspedidoduplicataCDPEDIDO: TIntegerField;
    cdspedidoduplicataVLPEDIDODUPLICATA: TFMTBCDField;
    cdspedidoduplicataDTPRORROGACAO: TDateField;
    cdspedidoduplicataCDUSUARIOI: TIntegerField;
    cdspedidoduplicataCDUSUARIOA: TIntegerField;
    cdspedidoduplicataCDCOMPUTADORI: TIntegerField;
    cdspedidoduplicataCDCOMPUTADORA: TIntegerField;
    cdspedidoduplicataTSINCLUSAO: TSQLTimeStampField;
    cdspedidoduplicataTSALTERACAO: TSQLTimeStampField;
    cdspedidoduplicataDTEMISSAO: TDateField;
    cdspedidoduplicataVLSALDO: TFMTBCDField;
    dtspedidoduplicata: TDataSource;
    actcopiar: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    actabrirordproducao: TAction;
    sdsdetailCDORCAMENTO: TIntegerField;
    cdsdetailCDORCAMENTO: TIntegerField;
    tbvCDORCAMENTO: TcxGridDBBandedColumn;
    actabrirorcamento: TAction;
    sdsdetailVLUNITARIO: TFloatField;
    cdsdetailVLUNITARIO: TFloatField;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    btnemail: TdxBarLargeButton;
    pumemail: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    sdsNMREDESPACHO: TStringField;
    cdsNMREDESPACHO: TStringField;
    actabrirtppedido: TAction;
    tbvNMUNIDADE: TcxGridDBBandedColumn;
    sdsCDITCONTCLIENTE: TIntegerField;
    cdsCDITCONTCLIENTE: TIntegerField;
    dxBevel1: TdxBevel;
    lblvlcredidotutilizado: TLabel;
    Label41: TLabel;
    Label55: TLabel;
    lblvlatrasado: TLabel;
    actinserircontato: TAction;
    sdsitcontcliente: TSQLDataSet;
    dspitcontcliente: TDataSetProvider;
    cdsitcontcliente: TClientDataSet;
    dtsitcontcliente: TDataSource;
    sdsCDMUNICIPIO: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsNMCONTATO: TStringField;
    cdsCDMUNICIPIO: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsNMCONTATO: TStringField;
    cbxcdmunicipio: TcxDBLookupComboBox;
    cbxcduf: TcxDBLookupComboBox;
    actordproducao: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actordproducaogerar: TAction;
    actordproducaogerartodas: TAction;
    dxBarButton6: TdxBarButton;
    dxBarButton10: TdxBarButton;
    cdssdspedidoduplicata: TDataSetField;
    sdsdetailNUITPEDIDO: TIntegerField;
    sdsdetailPRDESCONTO: TFloatField;
    cdssdsdetail: TDataSetField;
    cdsdetailNUITPEDIDO: TIntegerField;
    cdsdetailPRDESCONTO: TFloatField;
    sdsordproducao: TSQLDataSet;
    cdsordproducao: TClientDataSet;
    dtsordproducao: TDataSource;
    sdsordproducaoCDORDPRODUCAO: TIntegerField;
    sdsordproducaoCDUSUARIOI: TIntegerField;
    sdsordproducaoCDUSUARIOA: TIntegerField;
    sdsordproducaoCDCOMPUTADORI: TIntegerField;
    sdsordproducaoCDCOMPUTADORA: TIntegerField;
    sdsordproducaoCDITPEDIDO: TIntegerField;
    sdsordproducaoCDSTORDPRODUCAO: TIntegerField;
    sdsordproducaoCDTPORDPRODUCAO: TIntegerField;
    sdsordproducaoCDFUNCIONARIO: TIntegerField;
    sdsordproducaoCDMUNICIPIO: TIntegerField;
    sdsordproducaoCDPRODUTO: TIntegerField;
    sdsordproducaoDTEMISSAO: TDateField;
    sdsordproducaoDTENTREGA: TDateField;
    sdsordproducaoTSINCLUSAO: TSQLTimeStampField;
    sdsordproducaoTSALTERACAO: TSQLTimeStampField;
    sdsordproducaoDTPRVENTREGA: TDateField;
    sdsordproducaoDSOBSERVACAO: TBlobField;
    sdsordproducaoQTHORAORCADA: TFloatField;
    sdsordproducaoQTHORAPRODUCAO: TFloatField;
    sdsordproducaoVLOPERACAO: TFMTBCDField;
    sdsordproducaoVLOPERACAOP: TFMTBCDField;
    sdsordproducaoVLPREPARACAO: TFMTBCDField;
    sdsordproducaoVLPREPARACAOP: TFMTBCDField;
    sdsordproducaoVLRECURSO: TFMTBCDField;
    sdsordproducaoVLRECURSOP: TFMTBCDField;
    sdsordproducaoQTOPERACAO: TFloatField;
    sdsordproducaoQTOPERACAOP: TFMTBCDField;
    sdsordproducaoQTPREPARACAO: TFloatField;
    sdsordproducaoQTPREPARACAOP: TFMTBCDField;
    sdsordproducaoQTHORA: TFloatField;
    sdsordproducaoQTHORAP: TFloatField;
    sdsordproducaoVLMATERIAL: TFMTBCDField;
    sdsordproducaoVLMATERIALP: TFMTBCDField;
    sdsordproducaoVLPRODUCAO: TFMTBCDField;
    sdsordproducaoVLPRODUCAOP: TFMTBCDField;
    sdsordproducaoVLCUSTO: TFMTBCDField;
    sdsordproducaoVLCUSTOP: TFMTBCDField;
    sdsordproducaoDSDESENHO: TStringField;
    sdsordproducaoDSDESENHOPOSICAO: TStringField;
    sdsordproducaoDSDESENHOREVISAO: TStringField;
    sdsordproducaoNUDIASCUSTO: TIntegerField;
    sdsordproducaoDTPRVINSTALACAO: TDateField;
    sdsordproducaoQTITEM: TFloatField;
    sdsordproducaoCDDIGITADO: TStringField;
    cdsdetailsdsordproducao: TDataSetField;
    cdsordproducaoCDORDPRODUCAO: TIntegerField;
    cdsordproducaoCDUSUARIOI: TIntegerField;
    cdsordproducaoCDUSUARIOA: TIntegerField;
    cdsordproducaoCDCOMPUTADORI: TIntegerField;
    cdsordproducaoCDCOMPUTADORA: TIntegerField;
    cdsordproducaoCDITPEDIDO: TIntegerField;
    cdsordproducaoCDSTORDPRODUCAO: TIntegerField;
    cdsordproducaoCDTPORDPRODUCAO: TIntegerField;
    cdsordproducaoCDFUNCIONARIO: TIntegerField;
    cdsordproducaoCDMUNICIPIO: TIntegerField;
    cdsordproducaoCDPRODUTO: TIntegerField;
    cdsordproducaoDTEMISSAO: TDateField;
    cdsordproducaoDTENTREGA: TDateField;
    cdsordproducaoTSINCLUSAO: TSQLTimeStampField;
    cdsordproducaoTSALTERACAO: TSQLTimeStampField;
    cdsordproducaoDTPRVENTREGA: TDateField;
    cdsordproducaoDSOBSERVACAO: TBlobField;
    cdsordproducaoQTHORAORCADA: TFloatField;
    cdsordproducaoQTHORAPRODUCAO: TFloatField;
    cdsordproducaoVLOPERACAO: TFMTBCDField;
    cdsordproducaoVLOPERACAOP: TFMTBCDField;
    cdsordproducaoVLPREPARACAO: TFMTBCDField;
    cdsordproducaoVLPREPARACAOP: TFMTBCDField;
    cdsordproducaoVLRECURSO: TFMTBCDField;
    cdsordproducaoVLRECURSOP: TFMTBCDField;
    cdsordproducaoQTOPERACAO: TFloatField;
    cdsordproducaoQTOPERACAOP: TFMTBCDField;
    cdsordproducaoQTPREPARACAO: TFloatField;
    cdsordproducaoQTPREPARACAOP: TFMTBCDField;
    cdsordproducaoQTHORA: TFloatField;
    cdsordproducaoQTHORAP: TFloatField;
    cdsordproducaoVLMATERIAL: TFMTBCDField;
    cdsordproducaoVLMATERIALP: TFMTBCDField;
    cdsordproducaoVLPRODUCAO: TFMTBCDField;
    cdsordproducaoVLPRODUCAOP: TFMTBCDField;
    cdsordproducaoVLCUSTO: TFMTBCDField;
    cdsordproducaoVLCUSTOP: TFMTBCDField;
    cdsordproducaoDSDESENHO: TStringField;
    cdsordproducaoDSDESENHOPOSICAO: TStringField;
    cdsordproducaoDSDESENHOREVISAO: TStringField;
    cdsordproducaoNUDIASCUSTO: TIntegerField;
    cdsordproducaoDTPRVINSTALACAO: TDateField;
    cdsordproducaoQTITEM: TFloatField;
    cdsordproducaoCDDIGITADO: TStringField;
    bmg1Bar2: TdxBar;
    dxBarButton5: TdxBarButton;
    sdsdetailQTITEM: TFMTBCDField;
    cdsdetailQTITEM: TFMTBCDField;
    tbvPRDESCONTO: TcxGridDBBandedColumn;
    sdsdetailQTCONFERENCIA: TFloatField;
    cdsdetailQTCONFERENCIA: TFloatField;
    tbvQTCONFERENCIA: TcxGridDBBandedColumn;
    tbvDSTAG2: TcxGridDBBandedColumn;
    sdsdetailDSTAG2: TStringField;
    cdsdetailDSTAG2: TStringField;
    sdsdetailDSPRODUTO: TStringField;
    cdsdetailDSPRODUTO: TStringField;
    tbvDSPRODUTO: TcxGridDBBandedColumn;
    actabrirfornecedor: TAction;
    sdsNMFORNECEDOR: TStringField;
    cdsNMFORNECEDOR: TStringField;
    sdsitpedidolote: TSQLDataSet;
    sdsitpedidoloteCDITPEDIDOLOTE: TIntegerField;
    sdsitpedidoloteCDITPEDIDO: TIntegerField;
    sdsitpedidoloteCDUSUARIOI: TIntegerField;
    sdsitpedidoloteCDUSUARIOA: TIntegerField;
    sdsitpedidoloteCDCOMPUTADORI: TIntegerField;
    sdsitpedidoloteCDCOMPUTADORA: TIntegerField;
    sdsitpedidoloteCDITLOTE: TIntegerField;
    sdsitpedidoloteTSINCLUSAO: TSQLTimeStampField;
    sdsitpedidoloteTSALTERACAO: TSQLTimeStampField;
    sdsitpedidoloteNUIMEI: TStringField;
    dtsitpedidolote: TDataSource;
    cdsitpedidolote: TClientDataSet;
    cdsitpedidoloteCDITPEDIDOLOTE: TIntegerField;
    cdsitpedidoloteCDITPEDIDO: TIntegerField;
    cdsitpedidoloteCDUSUARIOI: TIntegerField;
    cdsitpedidoloteCDUSUARIOA: TIntegerField;
    cdsitpedidoloteCDCOMPUTADORI: TIntegerField;
    cdsitpedidoloteCDCOMPUTADORA: TIntegerField;
    cdsitpedidoloteCDITLOTE: TIntegerField;
    cdsitpedidoloteTSINCLUSAO: TSQLTimeStampField;
    cdsitpedidoloteTSALTERACAO: TSQLTimeStampField;
    cdsitpedidoloteNUIMEI: TStringField;
    cdsdetailsdsitpedidolote: TDataSetField;
    sdsdetailBOLOTEIMEI: TStringField;
    cdsdetailBOLOTEIMEI: TStringField;
    sdsdetailCDPRODUTOEMBALAGEM: TIntegerField;
    cdsdetailCDPRODUTOEMBALAGEM: TIntegerField;
    tbvCDDIGITADOEMBALAGEM: TcxGridDBBandedColumn;
    tbvNMPRODUTOEMBALAGEM: TcxGridDBBandedColumn;
    sdsdetailNMPRODUTOEMBALAGEM: TStringField;
    cdsdetailNMPRODUTOEMBALAGEM: TStringField;
    sdsdetailCDDIGITADOEMBALAGEM: TStringField;
    cdsdetailCDDIGITADOEMBALAGEM: TStringField;
    actexibirordproducao: TAction;
    btnexibirordproducao: TdxBarButton;
    sdsCDPACIENTE: TIntegerField;
    cdsCDPACIENTE: TIntegerField;
    sdsNMPACIENTE: TStringField;
    cdsNMPACIENTE: TStringField;
    pnltop: TPanel;
    lblcodigo: TLabel;
    edtcodigo: TcxTextEdit;
    Label2: TLabel;
    edtdtemissao: TcxDBDateEdit;
    Label3: TLabel;
    edtdtprventrega: TcxDBDateEdit;
    lblnudias: TLabel;
    edtnudias: TcxDBSpinEdit;
    Label6: TLabel;
    lblDTFECHAMENTO: TcxDBLabel;
    lbltppedido: TcxLabel;
    cbxcdtppedido: TcxDBLookupComboBox;
    lblcondpagto: TLabel;
    cbxcdcondpagto: TcxDBLookupComboBox;
    lbltpcobranca: TLabel;
    cbxcdtpcobranca: TcxDBLookupComboBox;
    Label14: TLabel;
    cbxcdstpedido: TcxDBLookupComboBox;
    gbxcliente: TcxGroupBox;
    lblcdcliente: TLabel;
    lblcontato: TLabel;
    lblcdpaciente: TLabel;
    txtnmpaciente: TDBText;
    edtCDCLIENTE: TcxDBButtonEdit;
    cbxcditcontcliente: TcxDBLookupComboBox;
    btninserircontato: TcxButton;
    edtcdpaciente: TcxDBButtonEdit;
    gbxfrete: TcxGroupBox;
    lbltransportadora: TLabel;
    lblvlfrete: TLabel;
    lbltpfrete: TLabel;
    lblnmtransportadora: TDBText;
    lblnmredespacho: TLabel;
    cbxcdtpfrete: TcxDBLookupComboBox;
    edtcdtransportadora: TcxDBButtonEdit;
    edtvlfrete: TcxDBCalcEdit;
    edtnmredespacho: TcxDBTextEdit;
    gbxoutras: TcxGroupBox;
    lblrepresentante: TLabel;
    lblcomissao: TLabel;
    lblcotacao: TLabel;
    lblfuncioario: TLabel;
    cbxcdrepresentante: TcxDBLookupComboBox;
    chkbocertificado: TcxDBCheckBox;
    edtnucotacao: TcxDBTextEdit;
    edtprcomissao: TcxDBCalcEdit;
    txtvlcomissao: TcxDBLabel;
    gbxfornecedor: TcxGroupBox;
    lblcdfornecedor: TLabel;
    edtcdfornecedor: TcxDBButtonEdit;
    txtnmfornecedor: TDBText;
    sdsCDPROFISSIONAL: TIntegerField;
    cdsCDPROFISSIONAL: TIntegerField;
    sdsdetailCDPROFISSIONAL: TIntegerField;
    cdsdetailCDPROFISSIONAL: TIntegerField;
    txtnmprofissional: TDBText;
    edtcdprofissional: TcxDBButtonEdit;
    lblcdprofissional: TLabel;
    sdsNMPROFISSIONAL: TStringField;
    cdsNMPROFISSIONAL: TStringField;
    actabrirprofissional: TAction;
    actabrirpaciente: TAction;
    tbvCDFORNECEDOR: TcxGridDBBandedColumn;
    lblcdprofissionalcoordenador: TLabel;
    edtcdprofissionalcoordenador: TcxDBButtonEdit;
    txtnmprofissionalcoordenador: TDBText;
    sdsCDPROFISSIONALCOORDENADOR: TIntegerField;
    cdsCDPROFISSIONALCOORDENADOR: TIntegerField;
    sdsNMPROFISSIONALCOORDENADOR: TStringField;
    cdsNMPROFISSIONALCOORDENADOR: TStringField;
    actabrirprofissionalcoordenador: TAction;
    sdsBOAPTO: TStringField;
    cdsBOAPTO: TStringField;
    rdgboapto: TcxDBRadioGroup;
    sdsdetailDTREVISAO: TDateField;
    sdsdetailCDSTEMBARQUE: TIntegerField;
    sdsdetailNUREVISAO: TIntegerField;
    sdsdetailCDTPREVISAOCOMERCIAL: TIntegerField;
    sdsdetailDTEMBARQUE: TDateField;
    sdsdetailHREMBARQUE: TTimeField;
    sdsdetailDTDESEMBARQUE: TDateField;
    cdsdetailDTREVISAO: TDateField;
    cdsdetailCDSTEMBARQUE: TIntegerField;
    cdsdetailNUREVISAO: TIntegerField;
    cdsdetailCDTPREVISAOCOMERCIAL: TIntegerField;
    cdsdetailDTEMBARQUE: TDateField;
    cdsdetailHREMBARQUE: TTimeField;
    cdsdetailDTDESEMBARQUE: TDateField;
    tbvDTREVISAO: TcxGridDBBandedColumn;
    tbvCDSTEMBARQUE: TcxGridDBBandedColumn;
    tbvNUREVISAO: TcxGridDBBandedColumn;
    tbvCDITPEDIDO: TcxGridDBBandedColumn;
    tbvCDTPREVISAOCOMERCIAL: TcxGridDBBandedColumn;
    tbvDTEMBARQUE: TcxGridDBBandedColumn;
    tbvHREMBARQUE: TcxGridDBBandedColumn;
    tbvDTDESEMBARQUE: TcxGridDBBandedColumn;
    sdsCDTPCREDITO: TIntegerField;
    sdsCDTPCOMERCIAL: TIntegerField;
    cdsCDTPCREDITO: TIntegerField;
    cdsCDTPCOMERCIAL: TIntegerField;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    sdsdetailCDTPVOLUME: TIntegerField;
    sdsdetailQTVOLUME: TIntegerField;
    cdsdetailCDTPVOLUME: TIntegerField;
    cdsdetailQTVOLUME: TIntegerField;
    tbvCDTPVOLUME: TcxGridDBBandedColumn;
    tbvQTVOLUME: TcxGridDBBandedColumn;
    acthistorico: TAction;
    dxBarButton17: TdxBarButton;
    tbvCDTRANSPORTADORA: TcxGridDBBandedColumn;
    cbxCDFUNCIONARIO: TcxDBLookupComboBox;
    sdsdetailDTEMISSAO: TDateField;
    cdsdetailDTEMISSAO: TDateField;
    tbvDTEMISSAO: TcxGridDBBandedColumn;
    actdetail: TAction;
    dxBarButton18: TdxBarButton;
    Label1: TLabel;
    tbvsaidaNMTPSAIDA: TcxGridDBBandedColumn;
    tbvsaidaNMSERIE: TcxGridDBBandedColumn;
    sdsdetailQTPECAATENDIDA: TFloatField;
    cdsdetailQTPECAATENDIDA: TFloatField;
    tbvQTPECAATENDIDA: TcxGridDBBandedColumn;
    tbvCDTPITPEDIDO: TcxGridDBBandedColumn;
    sdsdetailCDTPITPEDIDO: TIntegerField;
    cdsdetailCDTPITPEDIDO: TIntegerField;
    actarquivo: TAction;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    actgerarrim: TAction;
    dxBarButton12: TdxBarButton;
    sdsdetailDSOBSERVACAOINTERNA: TMemoField;
    cdsdetailDSOBSERVACAOINTERNA: TMemoField;
    tbvdsobservacaointerna: TcxGridDBBandedColumn;
    cdsitpedidoestrutura: TClientDataSet;
    dtsitpedidoestrutura: TDataSource;
    sdsitpedidoestrutura: TSQLDataSet;
    bmgitpedido: TdxBar;
    bdcitpedido: TdxBarDockControl;
    actloteserie: TAction;
    dxBarButton4: TdxBarButton;
    sdspedidoduplicataNUDUPLICATA: TStringField;
    sdspedidoduplicataDSOBSERVACAO: TBlobField;
    sdsordproducaoCDTPMOTIVOREVISAO: TIntegerField;
    sdsordproducaoCDTPEQUIPAMENTO: TIntegerField;
    sdsordproducaoCDFORMULACAO: TIntegerField;
    sdsordproducaoCDEQUIPAMENTO: TIntegerField;
    sdsordproducaoCDITREQUISICAOPRODUCAO: TIntegerField;
    sdsordproducaoCDFUNCIONARIOSOLICITANTE: TIntegerField;
    sdsordproducaoCDENTRADA: TIntegerField;
    sdsordproducaoCDEQUIPAMENTO2: TIntegerField;
    sdsordproducaoCDORCAMENTO: TIntegerField;
    sdsordproducaoQTPRODUCAO: TFloatField;
    sdsordproducaoQTQUOCIENTE: TIntegerField;
    sdsordproducaoNUESTRUTURAL: TStringField;
    sdsordproducaoNUMISTURA: TIntegerField;
    sdsordproducaoCDPESAGEM: TStringField;
    sdsordproducaoQTPESOMISTURA: TFloatField;
    sdsordproducaoDTPREVISAOPRODUCAO: TDateField;
    sdsordproducaoDTPRODUCAO: TDateField;
    sdsordproducaoNUENTRADA: TIntegerField;
    sdsordproducaoDSTAG: TStringField;
    sdsordproducaoQTPECA: TFloatField;
    sdsordproducaoQTPECAPRODUCAO: TFloatField;
    cdspedidoduplicataNUDUPLICATA: TStringField;
    cdspedidoduplicataDSOBSERVACAO: TBlobField;
    cdsordproducaoCDTPMOTIVOREVISAO: TIntegerField;
    cdsordproducaoCDTPEQUIPAMENTO: TIntegerField;
    cdsordproducaoCDFORMULACAO: TIntegerField;
    cdsordproducaoCDEQUIPAMENTO: TIntegerField;
    cdsordproducaoCDITREQUISICAOPRODUCAO: TIntegerField;
    cdsordproducaoCDFUNCIONARIOSOLICITANTE: TIntegerField;
    cdsordproducaoCDENTRADA: TIntegerField;
    cdsordproducaoCDEQUIPAMENTO2: TIntegerField;
    cdsordproducaoCDORCAMENTO: TIntegerField;
    cdsordproducaoQTPRODUCAO: TFloatField;
    cdsordproducaoQTQUOCIENTE: TIntegerField;
    cdsordproducaoNUESTRUTURAL: TStringField;
    cdsordproducaoNUMISTURA: TIntegerField;
    cdsordproducaoCDPESAGEM: TStringField;
    cdsordproducaoQTPESOMISTURA: TFloatField;
    cdsordproducaoDTPREVISAOPRODUCAO: TDateField;
    cdsordproducaoDTPRODUCAO: TDateField;
    cdsordproducaoNUENTRADA: TIntegerField;
    cdsordproducaoDSTAG: TStringField;
    cdsordproducaoQTPECA: TFloatField;
    cdsordproducaoQTPECAPRODUCAO: TFloatField;
    sdsitpedidoestruturaCDITPEDIDOESTRUTURA: TIntegerField;
    sdsitpedidoestruturaCDITPEDIDO: TIntegerField;
    sdsitpedidoestruturaCDUSUARIOI: TIntegerField;
    sdsitpedidoestruturaCDUSUARIOA: TIntegerField;
    sdsitpedidoestruturaCDCOMPUTADORI: TIntegerField;
    sdsitpedidoestruturaCDCOMPUTADORA: TIntegerField;
    sdsitpedidoestruturaTSINCLUSAO: TSQLTimeStampField;
    sdsitpedidoestruturaTSALTERACAO: TSQLTimeStampField;
    sdsitpedidoestruturaNUESTRUTURAL: TStringField;
    cdsitpedidoestruturaCDITPEDIDOESTRUTURA: TIntegerField;
    cdsitpedidoestruturaCDITPEDIDO: TIntegerField;
    cdsitpedidoestruturaCDUSUARIOI: TIntegerField;
    cdsitpedidoestruturaCDUSUARIOA: TIntegerField;
    cdsitpedidoestruturaCDCOMPUTADORI: TIntegerField;
    cdsitpedidoestruturaCDCOMPUTADORA: TIntegerField;
    cdsitpedidoestruturaTSINCLUSAO: TSQLTimeStampField;
    cdsitpedidoestruturaTSALTERACAO: TSQLTimeStampField;
    cdsitpedidoestruturaNUESTRUTURAL: TStringField;
    cdsdetailsdsitpedidoestrutura: TDataSetField;
    cdsitpedidoestruturaBOFATURADO: TStringField;
    sdsitpedidoestruturaBOFATURADO: TStringField;
    actexibirestrutura: TAction;
    btnexibirestrutura: TdxBarButton;
    sdsdetailDSESTRUTURA: TMemoField;
    cdsdetailDSESTRUTURA: TMemoField;
    tbvDSESTRUTURA: TcxGridDBBandedColumn;
    tbsdsestrutura: TcxTabSheet;
    memdsestrutura: TcxDBMemo;
    sdsDSESTRUTURA: TStringField;
    cdsDSESTRUTURA: TStringField;
    sdsdetailNUCORDTEMBARQUE: TIntegerField;
    tbvnucordtembarque: TcxGridDBBandedColumn;
    dlgColor1: TColorDialog;
    cdsdetailNUCORDTEMBARQUE: TIntegerField;
    sdsdetailNUCORSTEMBARQUE: TIntegerField;
    cdsdetailNUCORSTEMBARQUE: TIntegerField;
    tbvNUCORSTEMBARQUE: TcxGridDBBandedColumn;
    splordproducao: TcxSplitter;
    pgcsub: TcxPageControl;
    tbsordproducao: TcxTabSheet;
    grdordproducao: TcxGrid;
    tbvordproducao: TcxGridDBTableView;
    tbvordproducaoCDORDPRODUCAO: TcxGridDBColumn;
    tbvordproducaoCDSTORDPRODUCAO: TcxGridDBColumn;
    tbvordproducaoCDTPORDPRODUCAO: TcxGridDBColumn;
    tbvordproducaoDTEMISSAO: TcxGridDBColumn;
    tbvordproducaoDTENTREGA: TcxGridDBColumn;
    tbvordproducaoDTPRVENTREGA: TcxGridDBColumn;
    tbvordproducaoDSOBSERVACAO: TcxGridDBColumn;
    tbvordproducaoQTITEM: TcxGridDBColumn;
    grdordproducaoLevel1: TcxGridLevel;
    tbsestrutura: TcxTabSheet;
    grdestrutura: TcxGrid;
    tbvestrutura: TcxGridDBTableView;
    tbvestruturaNUESTRUTURAL: TcxGridDBColumn;
    tbvestruturaBOFATURADO: TcxGridDBColumn;
    lvlestrutura: TcxGridLevel;
    sdsCDFATURISTA: TIntegerField;
    cdsCDFATURISTA: TIntegerField;
    lblcdfaturista: TLabel;
    cbxcdfaturista: TcxDBLookupComboBox;
    acthitpedido: TAction;
    dxBarButton13: TdxBarButton;
    sdsdetailDSJUSTIFICATIVA: TMemoField;
    cdsdetailDSJUSTIFICATIVA: TMemoField;
    txtVLTOTAL: TcxDBLabel;
    tbvALISS: TcxGridDBBandedColumn;
    tbvVLISS: TcxGridDBBandedColumn;
    dxBarButton14: TdxBarButton;
    sdsNMCLIENTE: TStringField;
    cdsNMCLIENTE: TStringField;
    txtNMCLIENTE: TDBText;
    tbvnmfornecedor: TcxGridDBBandedColumn;
    sdsCDTPFRETE: TStringField;
    cdsCDTPFRETE: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsCDTRANSPORTADORA: TLargeintField;
    sdsCDFORNECEDOR: TLargeintField;
    sdsCDORCAMENTO: TIntegerField;
    sdsVLACRESCIMO: TFMTBCDField;
    sdsVLISS: TFMTBCDField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsdetailCDFORNECEDOR: TLargeintField;
    sdsdetailCDTRANSPORTADORA: TLargeintField;
    sdsdetailVLACRESCIMO: TFMTBCDField;
    sdspedidoduplicataCDEMPRESA: TLargeintField;
    sdsordproducaoCDEMPRESA: TLargeintField;
    sdsordproducaoCDCLIENTE: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsCDTRANSPORTADORA: TLargeintField;
    cdsCDFORNECEDOR: TLargeintField;
    cdsCDORCAMENTO: TIntegerField;
    cdsVLACRESCIMO: TFMTBCDField;
    cdsVLISS: TFMTBCDField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDFORNECEDOR: TLargeintField;
    cdsdetailCDTRANSPORTADORA: TLargeintField;
    cdsdetailVLACRESCIMO: TFMTBCDField;
    cdspedidoduplicataCDEMPRESA: TLargeintField;
    cdsordproducaoCDEMPRESA: TLargeintField;
    cdsordproducaoCDCLIENTE: TLargeintField;
    cdsitpedidoestruturaCDEMPRESA: TLargeintField;
    sdsitpedidoestruturaCDEMPRESA: TLargeintField;
    sdsdetailNMFORNECEDOR: TStringField;
    cdsdetailNMFORNECEDOR: TStringField;
    sdsdetailNUITEM: TStringField;
    cdsdetailNUITEM: TStringField;
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
    procedure actAbrirCondpagtoExecute(Sender: TObject);
    procedure actAbrirRepresentanteExecute(Sender: TObject);
    procedure actAbrirSaidaExecute(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure actconsultasaidaExecute(Sender: TObject);
    procedure actconsultaTransporteExecute(Sender: TObject);
    procedure actAbrirTransporteExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actGerarSaidaExecute(Sender: TObject);
    procedure actimprimirorcamentoExecute(Sender: TObject);
    procedure actabrirfuncionarioExecute(Sender: TObject);
    procedure actabrirtransportadoraExecute(Sender: TObject);
    procedure actimprimirpedidovendaExecute(Sender: TObject);
    procedure actimprimirVendasimplesExecute(Sender: TObject);
    procedure actlocalizarentregaExecute(Sender: TObject);
    procedure actlimparentregaExecute(Sender: TObject);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtdtprventregaExit(Sender: TObject);
    procedure edtnudiasExit(Sender: TObject);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure grdconsultaDblClick(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblnmfuncionarioDblClick(Sender: TObject);
    procedure lblnmtransportadoraDblClick(Sender: TObject);
    procedure txtnmcondpagtoClick(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actimprimirmodotexto2Execute(Sender: TObject);
    procedure tbvsaidaDblClick(Sender: TObject);
    procedure actimprimirordemproducaoExecute(Sender: TObject);
    procedure tbvtransporteDblClick(Sender: TObject);
    procedure actemailorcamentoExecute(Sender: TObject);
    procedure actemailpedidovendaExecute(Sender: TObject);
    procedure actemailvendasimplesExecute(Sender: TObject);
    procedure actemailExecute(Sender: TObject);
    procedure cdsdetailAfterPost(DataSet: TDataSet);
    procedure cdsPRDESCONTOValidate(Sender: TField);
    procedure cdsVLDESCONTOValidate(Sender: TField);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure dspUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdspedidoduplicataBeforePost(DataSet: TDataSet);
    procedure cdspedidoduplicataNewRecord(DataSet: TDataSet);
    procedure cdsCDCONDPAGTOValidate(Sender: TField);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure cdsCDREPRESENTANTEValidate(Sender: TField);
    procedure cdsCDTRANSPORTADORAValidate(Sender: TField);
    procedure cdsDTPRVENTREGAChange(Sender: TField);
    procedure cdsVLFRETEValidate(Sender: TField);
    procedure cdsCDCLIENTEENTREGAValidate(Sender: TField);
    procedure cdsdetailCDTPGRADEVALORValidate(Sender: TField);
    procedure cdsdetailQTITEMValidate(Sender: TField);
    procedure cdsdetailVLUNITARIOValidate(Sender: TField);
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailALIPIValidate(Sender: TField);
    procedure cdsdetailQTLARGURA1Validate(Sender: TField);
    procedure cdsdetailQTLARGURA2Validate(Sender: TField);
    procedure cdsdetailQTALTURA1Validate(Sender: TField);
    procedure cdsdetailQTALTURA2Validate(Sender: TField);
    procedure cdsdetailQTCOMPRIMENTO1Validate(Sender: TField);
    procedure cdsdetailQTCOMPRIMENTO2Validate(Sender: TField);
    procedure cdsdetailQTDIAMETROEXTERNOValidate(Sender: TField);
    procedure cdsdetailQTDIAMETROEXTERNO2Validate(Sender: TField);
    procedure cdsdetailQTDIAMETROFUROValidate(Sender: TField);
    procedure cdsdetailQTCOMPRIMENTO3Validate(Sender: TField);
    procedure cdsdetailQTDIAMETROCORPOValidate(Sender: TField);
    procedure cdsdetailVLQUILOValidate(Sender: TField);
    procedure cdsdetailVLMAQUINAValidate(Sender: TField);
    procedure cdsdetailALICMSValidate(Sender: TField);
    procedure cdsdetailQTPECAValidate(Sender: TField);
    procedure cdsdetailAfterDelete(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actcopiarExecute(Sender: TObject);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView;ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure actabrirorcamentoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtppedidoEnter(Sender: TObject);
    procedure cbxcdcondpagtoEnter(Sender: TObject);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure cbxcdstpedidoEnter(Sender: TObject);
    procedure cbxcdrepresentanteEnter(Sender: TObject);
    procedure grddetail1DBBandedTableView1VLUNITARIOPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsNUCOTACAOChange(Sender: TField);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure lblrepresentanteDblClick(Sender: TObject);
    procedure lbltppedidoDblClick(Sender: TObject);
    procedure actabrirtppedidoExecute(Sender: TObject);
    procedure lblcondpagtoDblClick(Sender: TObject);
    procedure cdsdetailVLDESCONTOValidate(Sender: TField);
    procedure actinserircontatoExecute(Sender: TObject);
    procedure cdsdetailAfterScroll(DataSet: TDataSet);
    procedure cbxcdufExit(Sender: TObject);
    procedure actordproducaoExecute(Sender: TObject);
    procedure actordproducaogerarExecute(Sender: TObject);
    procedure actordproducaogerartodasExecute(Sender: TObject);
    procedure cdsordproducaoAfterScroll(DataSet: TDataSet);
    procedure tbvordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cdsdetailPRDESCONTOValidate(Sender: TField);
    procedure grddetail1DBBandedTableView1CDORCAMENTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorPropertiesEditValueChanged(Sender: TObject);
    procedure txtnmfornecedorDblClick(Sender: TObject);
    procedure cdsCDFORNECEDORValidate(Sender: TField);
    procedure actabrirfornecedorExecute(Sender: TObject);
    procedure cdsitpedidoloteBeforePost(DataSet: TDataSet);
    procedure cdsitpedidoloteNewRecord(DataSet: TDataSet);
    procedure cdsitpedidoloteNUIMEIValidate(Sender: TField);
    procedure tbvCDDIGITADOEMBALAGEMPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDDIGITADOEMBALAGEMValidate(Sender: TField);
    procedure actImprimirModoTextoExecute(Sender: TObject);
    procedure actexibirordproducaoExecute(Sender: TObject);
    procedure cdsCDPACIENTEValidate(Sender: TField);
    procedure edtcdpacienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdpacientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprofissionalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprofissionalPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure txtnmpacienteDblClick(Sender: TObject);
    procedure txtnmprofissionalDblClick(Sender: TObject);
    procedure actabrirprofissionalExecute(Sender: TObject);
    procedure actabrirpacienteExecute(Sender: TObject);
    procedure cdsCDPROFISSIONALValidate(Sender: TField);
    procedure edtcdprofissionalcoordenadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprofissionalcoordenadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure txtnmprofissionalcoordenadorDblClick(Sender: TObject);
    procedure actabrirprofissionalcoordenadorExecute(Sender: TObject);
    procedure cdsCDPROFISSIONALCOORDENADORValidate(Sender: TField);
    procedure actopcoesExecute(Sender: TObject);
    procedure acthistoricoExecute(Sender: TObject);
    procedure tbvQTATENDIDACustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actdetailExecute(Sender: TObject);
    procedure lblcdclienteDblClick(Sender: TObject);
    procedure edtCDCLIENTEEnter(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actarquivoExecute(Sender: TObject);
    procedure actgerarrimExecute(Sender: TObject);
    procedure cdsdetailCDORCAMENTOValidate(Sender: TField);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure actloteserieExecute(Sender: TObject);
    procedure actexibirestruturaExecute(Sender: TObject);
    procedure cdsitpedidoestruturaAfterPost(DataSet: TDataSet);
    procedure cdsitpedidoestruturaBeforePost(DataSet: TDataSet);
    procedure cdsitpedidoestruturaAfterDelete(DataSet: TDataSet);
    procedure tbvDTEMBARQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvDTEMBARQUEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvCDSTEMBARQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cdsitpedidoestruturaNewRecord(DataSet: TDataSet);
    procedure acthitpedidoExecute(Sender: TObject);
    procedure cdsdetailCDSTEMBARQUEValidate(Sender: TField);
    procedure cdsdetailALISSValidate(Sender: TField);
    procedure cdsCDTPCOBRANCAValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure txtNMCLIENTEDblClick(Sender: TObject);
    procedure tbvCDFORNECEDORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDTPPEDIDOValidate(Sender: TField);
    procedure cdsCDTPFRETEValidate(Sender: TField);
  private      { Private declarations }
    Exibe, tbl_consulta : string;
    pedido    : tpedido;
    fornecedor : Tfornecedor;
    representante : TRepresentante;
    produto : TProduto;
    equipamento : TEquipamento;
    procedure TravarPedidoAtendido;
    procedure atualizarContatocliente;
    procedure AlterarVlUnitarioTpCobranca;
    procedure setEmpresa;
    function  setclientevalor(codigo:LargeInt):boolean;
    procedure setrecord(cdtp:integer);
    function  getemail: string;
    procedure Gravartotais(Sender: TField);
    procedure SetConsulta(tbl:string);
    procedure setprfrete;
    procedure setvalor(sender:TField);
    procedure setCalculo(sender:TField);
    procedure CheckDescontoMaximo;
    procedure LimparCampoEntrega;
    procedure PreencherEnderecoEntrega;
    procedure AbrirTabela;
    function  CheckDuplicidadeNumeroPedido:Boolean;
    procedure AtualizarDsestruturaItpedido;
    procedure AtualizarDsestruturaPedido;
    procedure Check_cliente;
    procedure AtualizarPedidoDuplicata;
  public  { Public declarations }
    registro  : TRegistro;
    function  Abrir(codigo:integer):boolean;
    procedure NovoOrcamento(cdorcamento:integer; dtprevisao: TDate; itorcamento: Titorcamentolist; cdtppedido: integer; nucotacao: string);
  end;

var
  frmPedido: TfrmPedido;

implementation

uses UMain,
  uLocalizarPedido,
  uDtmMain,
  udlgGerarSaida,
  uimprimirrelatoriopadrao,
  udlgselecionar,
  classeordproducao,
  uAssinaturaDigital,
  ulocalizarTransportadora,
  classetarefa,
  udlgtabela,
  UMenuRelatorio,
  ulocalizarorcamento,
  classearquivo,
  uDBMemo,
  uProtector,
  ulocalizarpaciente,
  udlggerardevolucaosaida,
  uprogressbar, udlgarquivo, uSelecionarEntrada, udlgjustificativa, classeregrast;

{$R *.DFM}

const
  artigoI  = 'o';

function TFrmPedido.getemail: string;
begin
  result := NomedoCodigo(_cliente, cds.FieldByName(_cdcliente).AsString, _email);
end;

procedure TFrmPedido.setEmpresa;
begin
  actconsultatransporte.Visible := empresa.logistica.transporte.bo;
end;

procedure TfrmPedido.setrecord(cdtp:integer);
  procedure set_paciente;
  begin
    lblcdpaciente.Visible := pedido.tppedido.bopaciente = _s;
    edtcdpaciente.Visible := pedido.tppedido.bopaciente = _s;
    txtnmpaciente.Visible := pedido.tppedido.bopaciente = _s;
    rdgboapto.Visible     := pedido.tppedido.bopaciente = _s;
  end;
  procedure set_profissional;
  begin
    lblcdprofissional.Visible := pedido.tppedido.boprofissional = _s;
    edtcdprofissional.Visible := pedido.tppedido.boprofissional = _s;
    txtnmprofissional.Visible := pedido.tppedido.boprofissional = _s;

    lblcdprofissionalcoordenador.Visible := pedido.tppedido.boprofissional = _s;
    edtcdprofissionalcoordenador.Visible := pedido.tppedido.boprofissional = _s;
    txtnmprofissionalcoordenador.Visible := pedido.tppedido.boprofissional = _s;

    if pedido.tppedido.boprofissional = _s then
    begin
      gbxcliente.Height := 65
    end
    else
    begin
      gbxcliente.Height := 40;
    end;
  end;
begin
  if cdtp = 0 then
  begin
    exit;
  end;
  pedido.tppedido.Select(cdtp);

  lblcdfaturista.Visible := pedido.tppedido.cdfaturista > 0;
  cbxcdfaturista.Visible := pedido.tppedido.cdfaturista > 0;

  gbxoutras.Visible := (pedido.tppedido.bocertificado = _s) or (pedido.tppedido.borepresentante = _s) or (pedido.tppedido.bofuncionario = _s) or (pedido.tppedido.bocotacao = _s);
  tbvCDTPITPEDIDO.Visible := pedido.tppedido.boitemtp = _s;

  pgcsub.Visible := ((pedido.tppedido.boordproducao = _s) and btnexibirordproducao.Down) or ((pedido.tppedido.bonuestrutural = _s) and btnexibirestrutura.Down);
  splordproducao.Visible := pgcsub.Visible;

  actordproducao.Visible       := pedido.tppedido.boordproducao = _s;
  tbsordproducao.TabVisible    := (pedido.tppedido.boordproducao = _s) and btnexibirordproducao.down;
  actexibirordproducao.visible := pedido.tppedido.boordproducao = _s;
  if tbsordproducao.TabVisible then
  begin
    pgcsub.activepage := tbsordproducao;
  end;

  tbsestrutura.tabVisible    := (pedido.tppedido.bonuestrutural = _s) and btnexibirestrutura.down;
  if tbsestrutura.TabVisible then
  begin
    pgcsub.activepage := tbsestrutura;
  end;
  actexibirestrutura.Visible := pedido.tppedido.bonuestrutural = _s;
  tbvDSESTRUTURA.Visible     := pedido.tppedido.bonuestrutural = _s;
  tbsDSESTRUTURA.tabVisible  := pedido.tppedido.bonuestrutural = _s;

  tbvDTEMISSAO.Visible    := pedido.tppedido.boitemdtemissao = _s;

  set_paciente;
  set_profissional;

  tbsduplicata.TabVisible := pedido.tppedido.boduplicata = _s;
  actarquivo.Visible := pedido.tppedido.boarquivo = _s;
  gbxfornecedor.Visible := pedido.tppedido.bofornecedor = _s;

  tbvCDORCAMENTO.Visible                             := Empresa.comercial.orcamento.bo and (pedido.tppedido.boorcamento = _s);
  tbv.Bands[TQForm.ObterIndiceTableView('Orçamento', tbv)].Visible := Empresa.comercial.orcamento.bo and (pedido.tppedido.boorcamento = _s);

  tbv.Bands[TQForm.ObterIndiceTableView('ISS', tbv)].Visible := pedido.tppedido.boiss = _s;

  tbvDSTAG2.Visible    := pedido.tppedido.boitemexibirtag2 = _s;
  tbvDSPRODUTO.Visible := pedido.tppedido.boitemdsproduto = _s;

  lblnmredespacho.Visible := pedido.tppedido.boredespacho = _s;
  edtnmredespacho.Visible := pedido.tppedido.boredespacho = _s;

  //
  tbvDSOBSERVACAOinterna.Visible   := pedido.tppedido.boitemobservacaointerna = _s;
  tbvDSOBSERVACAO1.Visible   := pedido.tppedido.boitemobservacao = _s;
  lblrepresentante.Visible   := Empresa.comercial.representante.bo and (pedido.tppedido.borepresentante = _s);
  cbxcdrepresentante.Visible := Empresa.comercial.representante.bo and (pedido.tppedido.borepresentante = _s);
  cbxcdrepresentante.Enabled := not (pedido.tppedido.borepresentanteusuario = _s);
  edtPRCOMISSAO.Visible      := Empresa.comercial.representante.bo and (pedido.tppedido.borepresentante = _s) and (pedido.tppedido.bocomissao = _s);
  edtPRCOMISSAO.Enabled      := Empresa.comercial.representante.bo and (pedido.tppedido.borepresentante = _s) and (pedido.tppedido.bocomissao = _s);
  lblcomissao.Visible        := Empresa.comercial.representante.bo and (pedido.tppedido.borepresentante = _s) and (pedido.tppedido.bocomissao = _s);
  txtvlcomissao.Visible      := Empresa.comercial.representante.bo and (pedido.tppedido.borepresentante = _s) and (pedido.tppedido.bocomissao = _s);

  actimprimirmodotexto2.Visible    := pedido.tppedido.boreportmodotexto2 = _s;
  actImprimirModoTexto.Visible     := pedido.tppedido.boreportmodotexto = _s;
  actimprimirpedidovenda.Visible   := pedido.tppedido.boreportvenda = _s;
  actemailpedidovenda.Visible      := pedido.tppedido.boreportvenda = _s;
  actimprimirVendasimples.Visible  := pedido.tppedido.boreportvendasimples = _s;
  actemailvendasimples.Visible     := pedido.tppedido.boreportvendasimples = _s;
  actimprimirorcamento.Visible     := pedido.tppedido.boreportorcamento = _s;
  actemailorcamento.Visible        := pedido.tppedido.boreportorcamento = _s;
  tbvQTCONFERENCIA.Visible := pedido.tppedido.boitemconferencia = _s;
  tbsentrega.TabVisible    := pedido.tppedido.boclienteentrega = _s;
  edtnucotacao.Visible     := pedido.tppedido.bocotacao = _s;
  lblcotacao.Visible       := pedido.tppedido.bocotacao = _s;
  chkbocertificado.Visible := pedido.tppedido.bocertificado = _s;

  lblfuncioario.Visible      := pedido.tppedido.bofuncionario = _s;
  cbxCDFUNCIONARIO.Visible   := pedido.tppedido.bofuncionario = _s;
  cbxCDFUNCIONARIO.Enabled   := not (pedido.tppedido.bofuncionariousuario = _s);

  lblnudias.Visible := pedido.tppedido.bonudias = _s;
  edtnudias.Visible := pedido.tppedido.bonudias = _s;

  gbxfrete.Visible := (pedido.tppedido.bofrete = _s) or (pedido.tppedido.botransportadora = _s) or (pedido.tppedido.boredespacho = _s);
  //
  lbltransportadora.Visible     := pedido.tppedido.botransportadora = _s;
  edtcdtransportadora.Visible   := pedido.tppedido.botransportadora = _s;
  lblnmtransportadora.Visible   := pedido.tppedido.botransportadora = _s;
  //
  lblvlfrete.Visible := pedido.tppedido.bofrete = _s;
  edtvlfrete.Visible := pedido.tppedido.bofrete = _s;
  tbv.Bands[TQForm.ObterIndiceTableView('Madeira', tbv)].Visible := pedido.tppedido.bomadeira = _s;
  //
  tbvNUITEM.visible    :=pedido.tppedido.bonuitem = _s;
  tbvNUCOTACAO.Visible :=pedido.tppedido.bocotacaoitem = _s;
  tbv.Bands[TQForm.ObterIndiceTableView('Ordem Compra', tbv)].Visible := (pedido.tppedido.bonuitem = _s) or (pedido.tppedido.bocotacaoitem = _s);

  tbvCDTPGRADEVALOR.Visible   := pedido.tppedido.botpgrade = _s;

  tbvVLUNITARIO.Properties.ReadOnly := not (pedido.tppedido.boalterarvaloritem = _s);

  lblcontato.Visible         := pedido.tppedido.boitcontcliente = _s;
  cbxcditcontcliente.Visible := pedido.tppedido.boitcontcliente = _s;
  actinserircontato.Visible  := pedido.tppedido.boitcontcliente = _s;
  actinserircontato.enabled  := ((dts.State = dsedit) or (dts.State = dsinsert)) and (pedido.tppedido.boitcontcliente = _s);

  tbvDSDESENHO.Visible := pedido.tppedido.bodsdesenho = _s;
  tbvDSFORMULA.Visible := pedido.tppedido.boitemformula = _s;

  tbvVLICMSSUBTRIB.Visible := pedido.tppedido.boicmssubtrib = _s;
  tbvALICMSSUBTRIB.Visible := pedido.tppedido.boicmssubtrib = _s;
  tbvALMVA.Visible         := pedido.tppedido.boicmssubtrib = _s;
  tbvALICMS.Visible        := (pedido.tppedido.boicmssubtrib = _s) or (pedido.tppedido.boicms = _s);
  tbv.Bands[TQForm.ObterIndiceTableView('ICMS Sub Trib', tbv)].Visible := pedido.tppedido.boicmssubtrib = _s;
  tbv.Bands[TQForm.ObterIndiceTableView(Maiuscula(_Fornecedor), tbv)].Visible    := pedido.tppedido.boitemfornecedor = _s;
  tbv.Bands[TQForm.ObterIndiceTableView(Maiuscula(_Embalagem), tbv)].Visible     := pedido.tppedido.boprodutoembalagem = _s;
  tbv.Bands[TQForm.ObterIndiceTableView(Maiuscula(_Embarque), tbv)].Visible      := pedido.tppedido.boitemembarque = _s;
  tbv.Bands[TQForm.ObterIndiceTableView(maiuscula(__Revisao), tbv)].Visible       := pedido.tppedido.boitemrevisao = _s;
  acthitpedido.Visible := pedido.tppedido.boitemembarque = _s;

  tbvVLFRETE.Visible     := pedido.tppedido.boitemfrete = _s;
  tbvALIPI.Visible       := pedido.tppedido.boipi = _s;
  tbvVLIPI.Visible       := pedido.tppedido.boipi = _s;
  tbvVLTOTALCIPI.Visible := pedido.tppedido.boipi = _s;
  tbvBOIPIBCICMS.Visible := pedido.tppedido.boipi = _s;
  tbv.Bands[TQForm.ObterIndiceTableView(uppercase(_IPI), tbv)].Visible := pedido.tppedido.boipi = _s;

  tbvDTPRVENTREGA.Visible   := pedido.tppedido.bodtprventregaitem = _s;
  //
  cbxcdtpcobranca.Visible := pedido.tppedido.botpcobranca = _s;
  lbltpcobranca.visible   := pedido.tppedido.botpcobranca = _s;
  //
  lbldesconto.visible      := pedido.tppedido.bodesconto = _s;
  edtvldesconto.Visible    := pedido.tppedido.bodesconto = _s;
  edtprdesconto.Visible    := pedido.tppedido.bodesconto = _s;

  edtvldesconto.Enabled := not (pedido.tppedido.boitemdesconto = _s);
  edtprdesconto.Enabled := not (pedido.tppedido.boitemdesconto = _s);
  tbvVLDESCONTO.Visible := (pedido.tppedido.boitemdesconto = _s);
  tbvPRDESCONTO.Visible := (pedido.tppedido.boitemdesconto = _s);

  tbv.Bands[TQForm.ObterIndiceTableView(uppercase(_ICMS), tbv)].Visible := pedido.tppedido.boicms = _s;
end;

function TFrmPedido.setclientevalor(codigo:LargeInt):boolean;
var
  vlatrasado : Currency;
begin
  result     := true;
  pedido.cliente.cdcliente := codigo;
  vlatrasado := pedido.cliente.vlatrasado;
  if vlatrasado > 0 then
  begin
    lblvlatrasado.Font.Color := clred
  end
  else
  begin
    lblvlatrasado.Font.Color := clblue;
  end;
  lblvlatrasado.Caption          := formatfloat(__moeda, vlatrasado);
  lblvlcredidotutilizado.Caption := formatfloat(__moeda, pedido.cliente.VlCreditoUtilizado);
end;

function TfrmPedido.Abrir(codigo:integer):boolean;
begin
  result :=registro.RegistroAbrir(codigo);
end;

procedure TfrmPedido.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmPedido.actNovoExecute(Sender: TObject);
var
  nupedido : string;
begin
  if not registro.novo(sender) then
  begin
    Exit;
  end;

  if Empresa.comercial.pedido.bonupedido then
  begin
    nupedido := InputBox(maiuscula(_Pedido), 'Novo Número do Pedido', '');
    if nupedido = '' then
    begin
      actCancelarExecute(actCancelar);
      Exit;
    end;
    if RegistroExiste(_pedido, _nupedido+'='+quotedstr(nupedido)) then
    begin
      MessageDlg('Número do pedido já existe.', mtInformation, [mbOK], 0);
      actCancelarExecute(actCancelar);
      Exit;
    end;
    edtcodigo.Text := nupedido;
  end;
  lblvlatrasado.Caption          := '';
  lblvlcredidotutilizado.Caption := '';
  setrecord(cdsCDTPPEDIDO.asInteger);
  edtdtemissao.SetFocus;
  if pedido.tppedido.borepresentanteusuario = _s then
  begin
    cdsCDREPRESENTANTE.AsString := qregistro.StringdoCodigo(_representante, usuario.cdusuario  , _cdusuario);
  end;
end;

procedure TfrmPedido.actSalvarExecute(Sender: TObject);
var
  bodemitirpaciente: Boolean;
  cdprofissao, cdsetor: string;
  procedure check_nupedido; // Verifica se numero de pedido duplicado
    procedure check_numero_pedido_obrigatorio;
    begin
      if (edtcodigo.Text = '') and ((cdsNUPEDIDO.asstring = '') or cdsNUPEDIDO.IsNull) then
      begin
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_do+' '+exibe]), mtinformation, [mbok], 0);
        edtcodigo.SetFocus;
        abort;
      end;
    end;
    procedure check_numero_pedido_duplicado;
    begin
      if RegistroExiste(_pedido, _nupedido+'='+quotedstr(cdsNUPEDIDO.asstring)+' and '+_cdpedido+'<>'+cdsCDPEDIDO.AsString) then
      begin
        messagedlg('Número do Pedido duplicado!', mtinformation, [mbok], 0);
        edtcodigo.SetFocus;
        abort;
      end;
    end;
  begin
    Exit;
    check_numero_pedido_obrigatorio;
    check_numero_pedido_duplicado;
  end;
  procedure check_iten;
    procedure check_preenchimento_produtos;
    begin
      if cdsdetail.RecordCount = 0 then
      begin
        messagedlg('Preenchimento dos produtos do '+exibe+' obrigatório!', mterror, [mbok], 0);
        abort;
      end;
    end;
  begin
    if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
    begin
     cdsdetail.Post;
    end;
    check_preenchimento_produtos;
  end;
  procedure check_transportadora_obrigatorio;
  begin
    if (pedido.tppedido.botransportadoraobrigatorio = _s) and cds.FieldByName(_cdtransportadora).IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Transportadora]), mtinformation, [mbok], 0);
      cds.FieldByName(_CDTRANSPORTADORA).FocusControl;
      abort;
    end;
  end;
  procedure check_numero_ordem_compra_obrigatorio;
  begin
    if (pedido.tppedido.bocotacao = _s) and (pedido.tppedido.bocotacaoobrigatorio = _s) and (edtnucotacao.Text = '') then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_da+' '+_Ordem_de_Compra]), mtinformation, [mbok], 0);
      cdsNUCOTACAO.FocusControl;
      Abort;
    end;
  end;
  procedure check_valor_desconto;
  begin
    if cdsVLDESCONTO.AsCurrency > cdsVLTOTAL.AsCurrency then
    begin
      if not edtvldesconto.Visible then
      begin
        edtvldesconto.Value := 0;
        Exit;
      end;
      MessageDlg('Valor do Desconto não pode ser maior do que o valor total.', mtInformation, [mbOK], 0);
      edtvldesconto.SetFocus;
      Abort;
    end;
  end;
  procedure check_qtd_imei;
  begin
    cdsdetail.DisableControls;
    try
      cdsdetail.first;
      while not cdsdetail.eof do
      begin
        if (cdsdetail.FieldByName(_bo+_Lote+_imei).AsString = _s) and (cdsdetail.fieldbyname(_qtitem).Asfloat > cdsitpedidolote.recordcount) then
        begin
          messagedlg('Quantidade de IMEI menor do que a quantidade do item'#13'no produto '+cdsdetail.fieldbyname(_nmproduto).asstring+'.', mtinformation, [mbok], 0);
          abort;
        end;
        cdsdetail.next;
      end;
    finally
      cdsdetail.EnableControls;
    end;
  end;
  procedure perguntar_demitir_paciente;
  begin
    if pedido.tppedido.bopacientedtdemissao = _s then
    begin
      bodemitirpaciente := MessageDlg('Preencher a data de demissão do paciente com a data de emissão do Pedido?', mtConfirmation, [mbYes, mbno], 0) = mrYes;
    end;
  end;
  procedure demitir_paciente;
  begin
    if not bodemitirpaciente then
    begin
      Exit;
    end;
    ExecutaSQL('update paciente set dtdemissao='+GetDtBanco(cdsDTEMISSAO.AsDateTime)+',cdstpaciente='+inttostr(pedido.tppedido.cdstpaciente)+' where cdempresa='+cds.fieldbyname(_CDEMPRESA).AsString+' and cdpaciente='+cdsCDPACIENTE.AsString);
  end;
  procedure perguntar_mudar_profissao_paciente;
  begin
    if pedido.tppedido.bopacientealterarprofissao = _s then
    begin
      escolher_profissao_setor(cdprofissao, cdsetor);
    end;
  end;
  procedure mudar_profissao_paciente;
    function makesql:string;
    begin
      result := 'update paciente set ';
      if cdprofissao <> '' then
      begin
        result := result + 'cdprofissao='+cdprofissao;
      end;
      if cdsetor <> '' then
      begin
        if cdprofissao <> '' then
        begin
          result := result + ',';
        end;
        result := result +'cdsetor='+cdsetor;
      end;
      result := result + ' where cdempresa='+cds.fieldbyname(_CDEMPRESA).AsString+' and cdpaciente='+cdsCDPACIENTE.AsString;
    end;
  begin
    if (cdprofissao = '') and (cdsetor = '') then
    begin
      Exit;
    end;
    ExecutaSQL(makesql);
  end;
begin
  Self.Perform(WM_NEXTDLGCTL,0,0);
  cdsCDTPFRETEValidate(cdsCDTPFRETE);
  if edtvldesconto.Focused then
  begin
    edtprdesconto.SetFocus
  end
  else if edtprdesconto.Focused then
  begin
    edtvldesconto.SetFocus;
  end;
  if (pedido.tppedido.bodtentregavazio = _s) and (edtdtprventrega.Text = '') then
  begin
    messagedlg('Data de previsão de entrega é um campo obrigatório.', mtinformation, [mbok], 0);
    edtdtprventrega.SetFocus;
    abort;
  end;
  check_valor_desconto;
  check_transportadora_obrigatorio;
  check_numero_ordem_compra_obrigatorio;
  check_nupedido;
  if (pedido.tppedido.botpfreteobrigatorio = _s) and (pedido.tppedido.bofrete = _s) and (cbxcdtpfrete.Text = '') then
  begin
    MessageDlg('Tipo de frete é um campo obrigatório.', mtInformation, [mbOK], 0);
    cbxcdtpfrete.SetFocus;
    abort;
  end;
  if (pedido.tppedido.botpcobrancaobrigatorio = _s) and (pedido.tppedido.botpcobranca = _s) and (cbxcdtpcobranca.Text = '') then
  begin
    MessageDlg('Tipo de Cobrança é um campo obrigatório.', mtInformation, [mbOK], 0);
    cbxcdtpcobranca.SetFocus;
    abort;
  end;
  if (pedido.tppedido.borepresentanteobrigatorio = _s) and (pedido.tppedido.borepresentante = _s) and (cbxcdrepresentante.Text = '') then
  begin
    MessageDlg('Representante é um campo obrigatório.', mtInformation, [mbOK], 0);
    cbxcdrepresentante.SetFocus;
    abort;
  end;
  if (pedido.tppedido.bocondpagtoobrigatorio = _s) and (cbxcdcondpagto.Text = '') then
  begin
    MessageDlg('Condição de Pagamento é um campo obrigatório.', mtInformation, [mbOK], 0);
    cbxcdcondpagto.SetFocus;
    abort;
  end;
  check_iten;
  check_qtd_imei;
  if (pedido.tppedido.bodsreferenciaobrigatorio = _s) and (edtdsreferencia.Text = '') then
  begin
    MessageDlg('Referência do endereço de entrega é um campo obrigatório.', mtInformation, [mbOK], 0);
    if tbsentrega.TabVisible then
    begin
      pgc.ActivePage := tbsentrega;
      edtdsreferencia.SetFocus;
      Abort;
    end;
  end;
  perguntar_demitir_paciente;
  perguntar_mudar_profissao_paciente;
  Gravartotais(nil);
  Gravartotais(nil);
  if (pedido.tppedido.boduplicata = _s) and (cdsVLTOTAL.AsCurrency <> cdspedidoduplicata.Aggregates[0].Value) then
  begin
    pedido.Select(cds);
    pedido.gerarparcelas;
    AtualizarPedidoDuplicata;
  end;
  CheckDescontoMaximo;
  if cdsNUPEDIDO.AsString = _0 then
  begin
    cdsNUPEDIDO.Asstring := GerarCodigo(_nupedido);
    edtcodigo.Text       := cdsNUPEDIDO.Asstring;
  end;
  pedido.cdpedido   := cdsCDPEDIDO.AsInteger;
  pedido.cdstpedido := cdsCDSTPEDIDO.OldValue;
  registro.salvar;
  registro.set_readonly_dados(self, true);
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
  demitir_paciente;
  mudar_profissao_paciente;
  if pedido.excluir_ordem_producao then
  begin
    abrir(pedido.cdpedido);
  end;
end;

procedure TfrmPedido.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmPedido.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmPedido.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmPedido.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmPedido.FormShow(Sender: TObject);
begin
  fornecedor    := Tfornecedor.create   ;
  produto       := TProduto.create      ;
  equipamento   := tequipamento.create  ;
  pedido        := Tpedido.create       ;
  Representante := TRepresentante.create;
  pnl.Caption   :=exibe;
  edtCodigo.SetFocus;
  splordproducao.CloseSplitter;
  pgc.ActivePage := tbsobservacao;
  pgc.ActivePage := tbsproduto;
  splordproducao.Visible := false;
  //splordproducao.visible;
  setempresa;
end;

procedure TfrmPedido.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmPedido.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmPedido.actProximoExecute(Sender: TObject);
begin
 registro.proximo;
end;

procedure TfrmPedido.actUltimoExecute(Sender: TObject);
begin
 registro.ultimo;
end;

procedure TfrmPedido.AlterarVlUnitarioTpCobranca;
begin
  cdsdetail.DisableControls;
  try
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      produto.Select(cdsdetail.FieldByName(_cdproduto).AsInteger);
      if (pedido.tppedido.boitemvlunitariotpcobranca = _s) and (not cds.FieldByName(_cdtpcobranca).IsNull) then
      begin
        cdsdetail.edit;
        if pedido.tpcobranca.boavista = _s then
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

procedure TfrmPedido.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmPedido.actAbrirClienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmPedido.actAbrirCondpagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmPedido.actAbrirRepresentanteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmPedido.actAbrirSaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cdsconsulta);
end;

procedure TfrmPedido.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cdsdetail);
end;

procedure TfrmPedido.actconsultasaidaExecute(Sender: TObject);
begin
  SetConsulta(_saida);
  grlsaida.Active := True;
end;

procedure TfrmPedido.actconsultaTransporteExecute(Sender: TObject);
begin
  SetConsulta(_transporte);
  grltransporte.Active := True;
end;

procedure TfrmPedido.grdconsultaDblClick(Sender: TObject);
begin
  if btnsaida.Down then
  begin
    actAbrirSaida.onExecute     (actAbrirSaida)
  end
  else if btntransporte.Down then
  begin
    actAbrirtransporte.onExecute(actAbrirtransporte);
  end;
end;

procedure TfrmPedido.actAbrirTransporteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cdsconsulta);
end;

procedure TfrmPedido.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(_pedido, frmmain.tlbnew);
end;

procedure TfrmPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPedido.actGerarSaidaExecute(Sender: TObject);
begin
  if empresa.get_bloqueado or (cdsCDPEDIDO.asstring = '') then
  begin
    exit;
  end;
  pedido.cliente.select(cds.FieldByName(_cdcliente).AsLargeInt);
  pedido.cliente.stcliente.Select(pedido.cliente.cdstcliente);
  if (pedido.cliente.stcliente.bogerarinfo <> _s) or (pedido.cliente.stcliente.bogerarsaida <> _s) then
  begin
    messagedlg('Cliente está no status '+pedido.cliente.stcliente.nmstcliente+#13'que não permite gerar nota fiscal.'#13'Altere o status do cliente para prosseguir.', mtinformation, [mbok], 0);
    abort;
  end;
  if pedido.tppedido.boduplicata = _s then
  begin
    if cbxcdcondpagto.text = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_condicao_de_pagamento]), mtinformation, [mbok], 0);
      abort;
    end;
  end;
  if GerarSaida_Pedido(cdsCDPEDIDO.asInteger, cds.FieldByName(_cdcliente).AsString, cdscdcondpagto.AsInteger, pedido.tppedido.boduplicata = _s) then
  begin
    abrir(cdsCDPEDIDO.AsInteger);
  end;
end;

procedure TfrmPedido.actimprimirorcamentoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(303, cdsCDPEDIDO.AsString);
end;

procedure TfrmPedido.lblnmfuncionarioDblClick(Sender: TObject);
begin
  actAbrirfuncionario.onExecute(actAbrirfuncionario);
end;

procedure TfrmPedido.actabrirfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmPedido.actabrirfuncionarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmPedido.actabrirtransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmPedido.actimprimirpedidovendaExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(309, cdsCDPEDIDO.AsString);
end;

procedure TfrmPedido.actimprimirVendasimplesExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(312, cdsCDPEDIDO.AsString);
end;

procedure TfrmPedido.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdclientePropertiesButtonClick(self, cds);
end;

procedure TfrmPedido.edtCDCLIENTEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmPedido.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdtransportadoraPropertiesButtonClick(self, cds);
end;

procedure TfrmPedido.edtcdtransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtransportadoraPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmPedido.edtdtprventregaExit(Sender: TObject);
begin
  if (dts.state = dsinsert) or (dts.State = dsedit) then
  begin
   cdsNUDIAS.AsInteger := StrToInt(formatfloat(__integer, (edtDTPRVENTREGA.Date -cdsDTEMISSAO.AsDateTime)));
  end;
  colorexit(sender);
end;

procedure TfrmPedido.edtnudiasExit(Sender: TObject);
begin
  if (dts.state = dsinsert) or (dts.State = dsedit) then
  begin
   cdsDTPRVENTREGA.AsDateTime :=cdsDTEMISSAO.AsDateTime + edtnudias.Value;
  end;
  colorexit(sender);
end;

procedure TfrmPedido.edtcodigoEnter(Sender: TObject);
begin
  TcxTextEdit(sender).selectall;
  colorenter(sender);
end;

procedure TfrmPedido.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key, _pedido);
end;

procedure TfrmPedido.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.CodigoKeyPress(Sender, Key, actnovo.enabled, not empresa.comercial.pedido.bonupedido);
end;

procedure TfrmPedido.txtnmcondpagtoClick(Sender: TObject);
begin
  actAbrirCondpagto.onExecute(actAbrirCondpagto);
end;

procedure TfrmPedido.txtnmfornecedorDblClick(Sender: TObject);
begin
  actAbrirfornecedor.onExecute(actAbrirfornecedor);
end;

procedure TfrmPedido.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmPedido.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmPedido.actlocalizarentregaExecute(Sender: TObject);
var
  codigo: string;
begin
  codigo := SelecionarClienteEndereco(cds.FieldByName(_cdcliente).AsString);
  if codigo <> '' then
  begin
    cdsCDCLIENTEENTREGA.AsString := codigo;
  end;
end;

procedure TfrmPedido.actlimparentregaExecute(Sender: TObject);
begin
 cdsCDCLIENTEENTREGA.Clear;
end;

procedure TfrmPedido.lblnmtransportadoraDblClick(Sender: TObject);
begin
  actAbrirtransportadora.onExecute(actAbrirtransportadora);
end;

procedure TfrmPedido.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmPedido.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmPedido.NovoOrcamento(cdorcamento:integer; dtprevisao: TDate; itorcamento: Titorcamentolist; cdtppedido: integer; nucotacao: string);
var
  vldesconto : Currency;
  procedure inserir_cabecalho;
  var
    orcamento : torcamento;
  begin
    orcamento := torcamento.create;
    try
      orcamento.select(cdorcamento);
      cdsCDTPPEDIDO.Asinteger := cdtppedido;
      setrecord(cdtppedido);
      cdsCDCONDPAGTO.AsInteger := orcamento.cdcondpagto;
      if orcamento.cdtpfrete <> '' then
      begin
        cdsCDTPFRETE.AsString := orcamento.cdtpfrete;
      end;
      cds.FieldByName(_cdcliente).AsLargeInt := orcamento.cdcliente;
      if orcamento.cdrepresentante > 0 then
      begin
        cdsCDREPRESENTANTE.asInteger := orcamento.cdrepresentante;
      end;
      if orcamento.cditcontcliente > 0then
      begin
        cdsCDITCONTCLIENTE.AsInteger := orcamento.cditcontcliente;
      end;
      if nucotacao <> '' then
      begin
        cdsNUCOTACAO.OnChange := nil;
        cdsNUCOTACAO.AsString := nucotacao;
        edtnucotacao.Text     := nucotacao;
        cdsNUCOTACAO.OnChange := cdsNUCOTACAOChange;
      end;
      if orcamento.cdtpcobranca > 0 then
      begin
        cdsCDTPCOBRANCA.AsInteger := orcamento.cdtpcobranca;
      end;
      cdsDTEMISSAO.AsDateTime      := DtBanco;
      if orcamento.cdclienteentrega > 0 then
      begin
        cdsCDCLIENTEENTREGA.AsInteger := orcamento.cdclienteentrega;
      end;
      if orcamento.cdfuncionario > 0 then
      begin
        cdsCDFUNCIONARIO.AsInteger := orcamento.cdfuncionario;
      end;
      if dtprevisao <> -700000 then
      begin
        cdsDTPRVENTREGA.AsDateTime   := dtprevisao;
        edtdtprventrega.Date := dtprevisao;
      end;
      cdsVLTOTAL.AsCurrency        := orcamento.vltotal;
      cdsVLIPI.AsCurrency          := orcamento.vlipi;
      cdsDSREFERENCIA.AsString     := orcamento.dsreferencia;
      cdsVLPRODUTO.AsCurrency      := orcamento.vlproduto;
      cdsPRDESCONTO.OnValidate     := nil;
      cdsVLDESCONTO.OnValidate     := nil;
      cdsVLDESCONTO.AsCurrency     := orcamento.vldesconto;
      cdsPRDESCONTO.AsFloat        := orcamento.prdesconto;
      vldesconto                   := orcamento.vldesconto;
      cdsVLDESCONTO.OnValidate     := cdsVLDESCONTOValidate;
      cdsprDESCONTO.OnValidate     := cdsprDESCONTOValidate;
      cdsVLICMS.AsCurrency         := orcamento.vlicms;
      cdsDSOBSERVACAO.AsString := orcamento.dsobservacao;
      cdsDSOBSINTERNA.AsVariant    := orcamento.dsobsinterna;
      cdsVLFRETE.AsCurrency        := orcamento.vlfrete;
      cdsNUDIAS.AsInteger          := orcamento.nudias;
      cdsQTPEDIDO.AsFloat          := orcamento.qtitem;
      cdsVLTOTALCIPI.AsCurrency    := orcamento.vltotalcipi;
      if orcamento.cdtransportadora <> 0 then
      begin
        cds.FieldByName(_CDTRANSPORTADORA).AsLargeInt := orcamento.cdtransportadora;
      end;
      cdsVLICMSSUBTRIB.AsCurrency  := orcamento.vlicmssubtrib;
      cdsPSBRUTO.AsFloat           := orcamento.psbruto;
      cdsDSENDERECO.AsString    := orcamento.dsendereco;
      cdsDSNUMERO.AsString      := orcamento.dsnumero;
      cdsDSCOMPLEMENTO.AsString := orcamento.dscomplemento;
      cdsNMBAIRRO.AsString      := orcamento.nmbairro;
      if orcamento.cduf > 0 then
      begin
        cdsCDUF.AsInteger          := orcamento.cduf;
      end;
      if orcamento.cdmunicipio > 0 then
      begin
        cdsCDMUNICIPIO.AsInteger := orcamento.cdmunicipio;
      end;
      cdsNUFONE.AsString        := orcamento.nufone;
      cdsNUFAX.AsString         := orcamento.nufax;
      cdsNUCXPOSTAL.AsString    := orcamento.nucxpostal;
    finally
      freeandnil(orcamento);
    end;
  end;
  procedure inserir_item;
  var
    i : Integer;
  begin
    frmprogressbar := Tfrmprogressbar.Create(nil);
    try
      frmprogressbar.gau.MaxValue := itorcamento.count - 1;
      frmprogressbar.Show;
      for I := 0 to itorcamento.count - 1 do
      begin
        frmprogressbar.pnl.Caption := 'Inserindo item '+inttostr(i)+' de '+inttostr(itorcamento.count);
        frmprogressbar.gau.Progress := i;
        Application.ProcessMessages;
        cdsdetail.Insert;
        cdsdetailcditorcamento.asinteger := itorcamento.items[i].cditorcamento;
        cdsdetailCDPRODUTO.AsInteger     := itorcamento.items[i].cdproduto;
        cdsdetailQTITEM.AsFloat          := itorcamento.items[i].qtitem;
        cdsdetailVLTOTAL.AsCurrency      := itorcamento.items[i].vltotal;
        cdsdetailVLUNITARIO.AsCurrency   := itorcamento.items[i].vlunitario;
        cdsdetailDSFORMULA.AsString      := itorcamento.items[i].dsformula;
        cdsdetailCDDIGITADO.AsString     := itorcamento.items[i].cddigitado;
        if itorcamento.items[i].cdprodutoembalagem <> 0 then
        begin
          cdsdetailCDDIGITADO.AsString := itorcamento.items[i].cddigitadoembalagem;
        end;
        if itorcamento.items[i].cdtpgradevalor <> 0 then
        begin
          cdsdetailCDTPGRADEVALOR.AsInteger := itorcamento.items[i].cdtpgradevalor;
        end;
        cdsdetailVLIPI.AsCurrency           := itorcamento.items[i].vlipi;
        cdsdetailALIPI.AsFloat              := itorcamento.items[i].alipi;
        cdsdetailALICMS.AsFloat             := itorcamento.items[i].alicms;
        cdsdetailDSOBSERVACAO.AsVariant     := itorcamento.items[i].dsobservacao;
        cdsdetailQTPECA.AsFloat             := itorcamento.items[i].qtpeca;
        cdsdetailALICMSSUBTRIB.AsFloat      := itorcamento.items[i].alicmssubtrib;
        cdsdetailVLDESCONTO.AsCurrency      := itorcamento.items[i].vldesconto;
        cdsdetailVLICMSSUBTRIB.AsCurrency   := itorcamento.items[i].vlicmssubtrib;
        cdsdetailVLFRETE.AsCurrency         := itorcamento.items[i].vlfrete;
        cdsdetailDSDESENHO.AsString         := itorcamento.items[i].dsdesenho;
        cdsdetailDSFORMULA.AsString         := itorcamento.items[i].dsformula;
        cdsdetailALMVA.AsFloat              := itorcamento.items[i].almva;
        cdsdetailVLTOTALCIPI.AsCurrency     := itorcamento.items[i].vltotalcipi;
        if itorcamento.items[i].dtprventrega > 0 then
        begin
          cdsdetailDTPRVENTREGA.AsdateTime    := itorcamento.items[i].dtprventrega;
        end;
        cdsdetailVLICMS.AsCurrency          := itorcamento.items[i].vlicms;
        cdsdetailQTLARGURA1.AsFloat         := itorcamento.items[i].qtlargura1;
        cdsdetailQTALTURA1.AsFloat          := itorcamento.items[i].qtaltura1;
        cdsdetailQTCOMPRIMENTO1.AsFloat     := itorcamento.items[i].qtcomprimento1;
        if itorcamento.items[i].cdtpitorcamento > 0 then
        begin
          cdsdetailCDTPITPEDIDO.AsInteger     := itorcamento.items[i].cdtpitorcamento;
        end;
        cdsdetailALISS.AsFloat              := itorcamento.items[i].aliss;
        if nucotacao <> '' then
        begin
          cdsdetailNUITEM.AsString    := itorcamento.items[i].nuitem;
          cdsdetailNUCOTACAO.AsString := nucotacao;
        end;
        cdsdetailVLDESCONTO.AsCurrency := itorcamento.items[i].vldesconto;
        cdsdetail.Post;
      end;
    finally
      freeandnil(frmprogressbar);
    end;
  end;
begin
  registro.codigoinsercao := '';
  edtcodigo.clear;
  actNovoExecute(nil);
  cds.DisableControls;
  cdsDetail.DisableControls;
  try
    inserir_cabecalho;
    inserir_item;
    cdsVLDESCONTO.OnValidate := nil;
    cdsVLDESCONTO.AsCurrency := vldesconto;
    cdsVLDESCONTO.OnValidate := cdsVLDESCONTOValidate;
    Gravartotais(nil);
    if pedido.tppedido.boduplicata = _s then
    begin
      pedido.Select(cds);
      pedido.gerarparcelas;
      AtualizarPedidoDuplicata;
    end;
    actSalvarExecute(actSalvar);
    Abrir(cdsCDPEDIDO.AsInteger);
    if pedido.tppedido.boordproducaogerarautomatico = _s then
    begin
      actordproducaogerartodasExecute(actordproducaogerartodas);
    end;
  finally
    cds.EnableControls;
    cdsdetail.EnableControls;
  end;
end;

procedure TfrmPedido.PreencherEnderecoEntrega;
begin
  edtnucep.Text            := pedido.cliente.nucep;
  edtDsEndereco.Text       := pedido.cliente.dsendereco;
  edtdsnumero.Text         := pedido.cliente.dsnumero;
  edtdscomplemento.Text    := pedido.cliente.dscomplemento;
  edtNmbairro.Text         := pedido.cliente.nmbairro;
  edtnucxpostal.Text       := pedido.cliente.nucxpostal;
  cbxcduf.EditValue        := pedido.cliente.cduf;
  cbxcdmunicipio.EditValue := pedido.cliente.cdmunicipio;
  edtnufone.Text           := pedido.cliente.nufone1;
  edtnufax.Text            := pedido.cliente.nufax;
end;

procedure TfrmPedido.edtCDCLIENTEPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblcdcliente.Hint := pedido.cliente.hint_rzsocial;
    txtnmcliente.hint := lblcdcliente.Hint;
  end;
end;

procedure TfrmPedido.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmPedido.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, cds);
end;

procedure TfrmPedido.edtcdfornecedorPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    txtnmfornecedor.Hint :=fornecedor.hint_rzsocial;
  end;
end;

procedure TfrmPedido.FormDestroy(Sender: TObject);
begin
  freeandnil(fornecedor);
  freeandnil(produto);
  freeandnil(representante);
  freeandnil(equipamento);
  freeandnil(pedido);
  freeandnil(registro);
end;

procedure TfrmPedido.actimprimirmodotexto2Execute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(550, 'where pedido.cdempresa='+empresa.cdempresa.tostring+' and pedido.cdpedido='+cdsCDpedido.AsString);
end;

procedure TfrmPedido.tbvsaidaDblClick(Sender: TObject);
begin
  if cdsconsulta.active and (cdsconsulta.recordcount > 0) then
  begin
    actAbrirSaidaExecute(actAbrirSaida);
  end;
end;

procedure TfrmPedido.actimprimirordemproducaoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(503, cdsordproducaoCDORDPRODUCAO.AsString);
end;

procedure TfrmPedido.tbvtransporteDblClick(Sender: TObject);
begin
  actAbrirtransporteExecute(actAbrirtransporte);
end;

procedure TfrmPedido.actemailorcamentoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(303, cdsCDPEDIDO.AsString, '', _email, getemail, pedido.tppedido.emailcopia, pedido.tppedido.dstitulo, pedido.tppedido.dsassunto);
end;

procedure TfrmPedido.actemailpedidovendaExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(309, cdsCDPEDIDO.AsString, '', _email, getemail, pedido.tppedido.emailcopia, pedido.tppedido.dstitulo, pedido.tppedido.dsassunto);
end;

procedure TfrmPedido.actemailvendasimplesExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(312, cdsCDPEDIDO.AsString, '', _email, getemail, pedido.tppedido.emailcopia, pedido.tppedido.dstitulo, pedido.tppedido.dsassunto);
end;

procedure TfrmPedido.actemailExecute(Sender: TObject);
begin
  btnemail.DropDown(false);
end;

procedure TfrmPedido.cdsdetailAfterPost(DataSet: TDataSet);
begin
  Gravartotais(nil);
  AtualizarDsestruturaPedido;
end;

procedure TfrmPedido.cdsPRDESCONTOValidate(Sender: TField);
begin
  cdsVLDESCONTO.AsCurrency := cdsVLPRODUTO.AsCurrency * cdsPRDESCONTO.AsFloat / 100;
end;

procedure TfrmPedido.cdsVLDESCONTOValidate(Sender: TField);
begin
  if cdsVLPRODUTO.ascurrency = 0 then
  begin
    cdsPRDESCONTO.AsFloat := 0;
  end
  else
  begin
    cdsPRDESCONTO.OnValidate := nil;
    try
      if cdsPRDESCONTO.AsFloat <> cdsVLDESCONTO.AsCurrency * 100 / cdsVLPRODUTO.ascurrency then
      begin
        cdsPRDESCONTO.AsFloat := cdsVLDESCONTO.AsCurrency * 100 / cdsVLPRODUTO.ascurrency;
      end;
      cdsVLDESCONTO.OnValidate := nil;
      cdsVLDESCONTO.OnValidate := cdsVLDESCONTOValidate;
    finally
      cdsPRDESCONTO.OnValidate := cdsPRDESCONTOValidate;
    end;
  end;
  gravartotais(nil);
end;

procedure TfrmPedido.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPPEDIDO.asinteger   := registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  cdsVLTOTAL.AsCurrency     := 0;
  cdsVLIPI.AsCurrency       := 0;
  cdsVLTOTALCIPI.AsCurrency := 0;
  cdsVLDESCONTO.OnValidate  := nil;
  try
    cdsVLDESCONTO.AsCurrency := 0;
    cdsPRDESCONTO.AsCurrency := 0;
  finally
    cdsVLDESCONTO.OnValidate := cdsVLDESCONTOValidate;
  end;
  cdsVLPRODUTO.AsCurrency     := 0;
  cdsVLFRETE.AsCurrency       := 0;
  cdsVLICMSSUBTRIB.AsCurrency := 0;
  cdsVLCOMISSAO.AsCurrency    := 0;
  cdsPRCOMISSAO.AsCurrency    := 0;
  cdscdTPCOMERCIAL.AsString   := _1;
  cdscdTPCREDITO.AsString     := _1;
  // Gerar codigo da tabela automaticamente
  pedido.cdpedido             := cdsCDPEDIDO.asInteger;
  cdsNUPEDIDO.AsString        := _0;
  registro.set_panel;
  // inicializa campos
  cdsDTEMISSAO.AsDateTime   := DtBanco;
  cdsCDSTPEDIDO.AsInteger    := qregistro.Codigo_status_novo(_pedido);
  cdsNUDIAS.AsInteger       := pedido.nudias;
  if pedido.tppedido.bodtentregavazio <> _s then
  begin
    cdsDTPRVENTREGA.OnChange  := nil;
    cdsDTPRVENTREGA.AsDateTime:= DtBanco + cdsNUDIAS.AsInteger;
    cdsDTPRVENTREGA.OnChange  := cdsDTPRVENTREGAChange;
  end;
  if pedido.tppedido.cdtpfrete <> '' then
  begin
    cdsCDTPFRETE.AsString := pedido.tppedido.cdtpfrete;
  end;
  cdsCDFUNCIONARIO.AsString := CodigodoCampo(_funcionario, inttostr(usuario.cdusuario), _cdusuario);
  cdsnmfuncionario.AsString := NomedoCodigo(_funcionario, cdsCDFUNCIONARIO.AsString);
  cdsBOAPTO.AsString := _i;
end;

procedure TfrmPedido.cdsdetailNewRecord(DataSet: TDataSet);
begin
  if cdsNUCOTACAO.AsString <> '' then
  begin
    cdsdetailNUCOTACAO.AsString;
  end;
  cdsdetailQTATENDIDA.AsCurrency := 0;
  cdsdetailQTITEM.AsFloat        := 1;
  cdsdetailPRLUCRO.AsFloat       := 0;
  cdsdetailDTEMISSAO.AsDateTime  := cdsDTEMISSAO.AsDateTime;
end;

procedure TfrmPedido.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actinserircontato.enabled          := ((dts.State = dsedit) or (dts.State = dsinsert)) and (pedido.tppedido.boitcontcliente = _s);
  tbvDSOBSERVACAO1.Options.Editing   := True;
  tbvDSDESENHO.Options.Editing       := True;
  tbvDSESTRUTURA.Properties.ReadOnly := True;
  memdsestrutura.Properties.ReadOnly := True;
  actGerarSaida.Enabled            := actEditar.Enabled;
  actlimparentrega.Enabled         := actSalvar.Enabled;
  actlocalizarentrega.Enabled      := actSalvar.Enabled;
  actinserircontato.Enabled        := actsalvar.Enabled;
  if actordproducao.Visible then
  begin
    actordproducao.Visible := not actSalvar.Enabled;
  end;
  if not empresa.comercial.pedido.bonupedido then
  begin
    edtcodigo.enabled := not actsalvar.enabled;
  end;
end;

procedure TfrmPedido.dspUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  registro.exibirmensagemerro(e.ErrorCode, e.Message);
end;

procedure TfrmPedido.cdspedidoduplicataBeforePost(DataSet: TDataSet);
begin
  if dataset.State = dsinsert then
  begin
    dataset.FieldByName(_CDPEDIDODUPLICATA).AsString := GerarCodigo(_pedidoduplicata);
  end;
  registro.set_update(dataset);
end;

procedure TfrmPedido.cdspedidoduplicataNewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName(_dtemissao).AsDateTime         := cds.FieldByName(_dtemissao).AsDateTime;
  dataset.FieldByName(_vlsaldo).AsCurrency           := 0;
  dataset.FieldByName(_vlpedidoduplicata).AsCurrency := 0;
end;

procedure TfrmPedido.cdsCDCONDPAGTOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    Exit;
  end;
  pedido.condpagto.select(Sender.asinteger);
  pedido.condpagto.itcondpagto.Ler(sender.AsInteger);
  pedido.condpagto.stcondpagto.Select(pedido.condpagto.cdstcondpagto);
  if pedido.condpagto.stcondpagto.bogerarpedido = _n then
  begin
    messagedlg('Condição de Pagamento está no status '+pedido.condpagto.stcondpagto.nmstcondpagto+#13'que não permite ser inserido no Pedido.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
  end;
  pedido.gerarparcelas;
  AtualizarPedidoDuplicata;
end;

procedure TfrmPedido.cdsCDFORNECEDORValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMfornecedor.Clear;
    Exit;
  end;
  if not fornecedor.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, _fornecedor]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  fornecedor.stfornecedor.select(fornecedor.cdstfornecedor);
  if fornecedor.stfornecedor.bogerarinfo <> _s then
  begin
    messagedlg('fornecedor está no status '+fornecedor.stfornecedor.nmstfornecedor+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMfornecedor.AsString := fornecedor.nmfornecedor;
end;

procedure TfrmPedido.cdsCDCLIENTEValidate(Sender: TField);
var
  cdusuariol, texto : String;
begin
  if Sender.AsString = '' then
  begin
    cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
    cbxcdcondpagto.Properties.ListSource  := abrir_tabela(_condpagto+_s);
    sender.DataSet.FieldByName(_nmcliente).Clear;
    Exit;
  end;
  if not pedido.cliente.Select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, _cliente]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  pedido.cliente.stcliente.Select(pedido.cliente.cdstcliente);
  if (pedido.cliente.stcliente.bogerarpedido <> _s) or (pedido.cliente.stcliente.bogerarinfo <> _s) then
  begin
    messagedlg('Cliente está no status '+pedido.cliente.stcliente.nmstcliente+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  if pedido.tppedido.boclienteatraso = _s then
  begin
    if cdsCDUSUARIOL.IsNull then
    begin
      if pedido.cliente.vlatrasado > 0 then
      begin
        if messagedlg('Cliente possui '+FormatFloat(__moeda, pedido.cliente.vlatrasado)+' em atraso!'#13'Liberar '+exibe+' através de assinatura digital?', mtinformation, [mbyes, mbno], 0) = mryes then
        begin
          texto := 'Liberar o '+exibe+' '  +cds.FieldByName(_cdcliente).AsString+#13+
                   'Para o cliente '       +pedido.cliente.cdcliente.tostring+' - '+pedido.cliente.nmcliente+#13+
                   'com o valor em atraso '+formatfloat(__moeda, pedido.cliente.vlAtrasado)+'.';
          if assinaturadigital(texto, cdusuariol) then
          begin
            cdsCDUSUARIOL.AsString    := cdusuariol;
            cdsCDCOMPUTADORL.asstring := vgcdcomputador;
            cdsTSLIBERADO.AsDateTime  := tsBanco;
          end
          else
          begin
            cds.FieldByName(_cdcliente).focuscontrol;
            abort;
          end;
        end
        else
        begin
          cds.FieldByName(_cdcliente).focuscontrol;
          abort;
        end;
      end;
    end;
  end;
  if pedido.tppedido.boclienteconsistir = _s then
  begin
    pedido.cliente.Consistir_dados_nfe;
  end;
  if pedido.tppedido.boavisotarefa = _s then
  begin
    Exibir_tarefa(_pedido, dts);
  end;
  if pedido.cliente.setrestricao(_condpagto) then
  begin
    cbxcdcondpagto.Properties.ListSource := abrir_tabela(_clientecondpagto, pedido.cliente.cdcliente.tostring);
  end
  else
  begin
    cbxcdcondpagto.Properties.ListSource := abrir_tabela(_condpagto+_s);
  end;
  if pedido.cliente.setrestricao(_tpcobranca) then
  begin
    cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_cliente+_tpcobranca, pedido.cliente.cdcliente.tostring);
  end
  else
  begin
    cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
  end;
  if pedido.cliente.cdrepresentante <> 0 then
  begin
    cdsCDREPRESENTANTE.asinteger := pedido.cliente.cdrepresentante;
    cdsPRCOMISSAO.AsFloat        := qregistro.DoubledoCodigo(_representante, pedido.cliente.cdrepresentante, _prcomissao);
  end;
  cdsCDCLIENTEENTREGA.Clear;
  if pedido.tppedido.boprfretecidade = _s then
  begin
    setprfrete;
  end;
  atualizarContatocliente;
  PreencherEnderecoEntrega;
  sender.DataSet.FieldByName(_nmcliente).AsString := pedido.cliente.nmcliente;
end;

procedure TfrmPedido.cdsCDREPRESENTANTEValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsPRCOMISSAO.AsFloat := 0;
    cdsVLCOMISSAO.AsFloat := 0;
    Exit;
  end;
  if not representante.Select(Sender.AsInteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, _representante]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  representante.strepresentante.select(representante.cdstrepresentante);
  if representante.strepresentante.bogerarpedido <> _s then
  begin
    messagedlg('Representante está no status '+representante.strepresentante.nmstrepresentante+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
  end;
  cdsPRCOMISSAO.AsCurrency := representante.prcomissao;
end;

procedure TfrmPedido.cdsCDTPCOBRANCAValidate(Sender: TField);
var
  boavista : boolean;
begin
  if not (pedido.tppedido.boitemvlunitariotpcobranca = _s) then
  begin
    exit;
  end;
  boavista := pedido.tpcobranca.boavista = _s;
  pedido.tpcobranca.Select(sender.AsInteger);
  if boavista <> (pedido.tpcobranca.boavista = _s) then
  begin
    AlterarVlUnitarioTpCobranca;
  end;
end;

procedure TfrmPedido.cdsCDTPFRETEValidate(Sender: TField);
begin
  exit;
  if (sender.AsString = _9) or (sender.AsString = '') then
  begin
    sender.DataSet.FieldByName(_vlfrete).clear;
    sender.DataSet.FieldByName(_cdtransportadora).clear;
    sender.DataSet.FieldByName(_nmtransportadora).clear;
    sender.DataSet.FieldByName(_nmredespacho).clear;
  end;
end;

procedure TfrmPedido.cdsCDTPPEDIDOValidate(Sender: TField);
begin
  setrecord(sender.AsInteger);
  if pedido.tppedido.cdtpfrete <> '' then
  begin
    cds.FieldByName(_cdtpfrete).AsString := pedido.tppedido.cdtpfrete;
  end;
end;

procedure TfrmPedido.cdsCDTRANSPORTADORAValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMTRANSPORTADORA.Clear;
    Exit;
  end;
  if not CodigoExiste(_transportadora, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, _transportadora]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if pedido.tppedido.boprfretecidade = _s then
  begin
    setprfrete;
  end;
  cdsNMTRANSPORTADORA.AsString := NomedoCodigo(_transportadora, sender.AsString);
end;

procedure TfrmPedido.cdsDTPRVENTREGAChange(Sender: TField);
begin
  pedido.Select(cds);
  pedido.gerarparcelas;
  AtualizarPedidoDuplicata;
end;

procedure TfrmPedido.cdsitpedidoloteBeforePost(DataSet: TDataSet);
begin
  if (Dataset.State = dsinsert) and cdsitpedidoloteCDITPEDIDOLOTE.isnull then
  begin
    cdsitpedidoloteCDITPEDIDOLOTE.AsString := GerarCodigo(_itpedido+_lote);
  end;
  if cdsitpedidolotenuimei.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__numero+' '+_imei]), mtinformation, [mbok], 0);
    abort;
  end;
  if length(cdsitpedidolotenuimei.asstring) <> 15 then
  begin
    messagedlg('Número IMEI é um campo de 15 caracteres.', mtinformation, [mbok], 0);
    abort;
  end;
  RegistraInformacao_(dataset);
end;

procedure TfrmPedido.cdsitpedidoloteNewRecord(DataSet: TDataSet);
begin
  if cdsitpedidolote.recordcount > cdsdetailQTITEM.asfloat then
  begin
    messagedlg('Quantidade de itens já preenchidos com IMEI.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmPedido.cdsitpedidoloteNUIMEIValidate(Sender: TField);
  function IMEI_repetido_na_tela:Boolean;
  var
    c : TClientDataSet;
  begin
    result := false;
    if cdsitpedidolote.RecordCount = 0 then
    begin
      Exit;
    end;
    c := TClientDataSet.Create(nil);
    try
      c.CloneCursor(cdsitpedidolote, false);
      c.First;
      while not c.Eof do
      begin
        if (c.FieldByName(_nuimei).AsString = cdsitpedidoloteNUIMEI.AsString) and (c.FieldByName(_cditsaidalote).AsString <> cdsitpedidoloteCDITPEDIDOLOTE.AsString) then
        begin
          result := True;
          Break;
        end;
        c.Next;
      end;
    finally
      c.Free;
    end;
  end;
var
  cditlote : string;
begin
  cditlote := CodigodoCampo(_itlote, sender.AsString, _nuimei);
  if cditlote = '' then
  begin
    cditlote := RetornaSQLString('select cditlote from itlote where qtestoque>0 and cdempresa='+empresa.cdempresa.tostring+' and nuimei='+quotedstr(sender.AsString));
  end;
  if cditlote = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, _IMEI]), mterror, [mbok], 0);
    abort;
  end;
  if IMEI_repetido_na_tela then
  begin
    MessageDlg('Nº IMEI repetido.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
  if nomedocodigo(_itlote, cditlote, _cdproduto) <> cdsdetailcdproduto.AsString then
  begin
    messagedlg('Imei não pertence ao produto '+cdsdetailnmproduto.AsString+'.', mtinformation, [mbok], 0);
    abort;
  end;
  cdsitpedidoloteCDITLOTE.AsString := cditlote;
end;

procedure TfrmPedido.cdsVLFRETEValidate(Sender: TField);
begin
  gravartotais(Sender);
end;

procedure TfrmPedido.CheckDescontoMaximo;
var
  cdusuariol, texto : string;
begin
  if not ((pedido.tppedido.bodesconto = _s) and (pedido.tppedido.prdescontomaximo > 0) and (pedido.tppedido.prdescontomaximo < cdsPRDESCONTO.AsFloat)) then
  begin
    Exit;
  end;
  texto := edtprdesconto.Text;
  if not (pedido.tppedido.bodescontoassinatura = _s) then
  begin
    messagedlg('Desconto acima do permitido ('+floattostr(pedido.tppedido.prdescontomaximo)+'%).', mtInformation, [mbOK], 0);
    Abort;
  end;
  texto := 'Liberar o desconto de '+cdsPRDESCONTO.AsString+'%'#13'Para o cliente '+cds.FieldByName(_cdcliente).AsString+' - '+cds.FieldByName(_nmcliente).AsString+'.';
  if not assinaturadigital(texto, cdusuariol, true, _desconto+_pedido) then
  begin
    abort;
  end;
  cdsCDUSUARIOL.AsString    := cdusuariol;
  cdsCDCOMPUTADORL.asstring := vgcdcomputador;
  cdsTSLIBERADO.AsDateTime  := tsBanco;
end;

procedure TfrmPedido.cdsCDCLIENTEENTREGAValidate(Sender: TField);
var
  q : TClasseQuery;
begin
  if sender.AsString = '' then
  begin
    LimparCampoEntrega;
    Exit;
  end;
  q := TClasseQuery.Create;
  try
    q.q.Open('select cduf'+
                   ',cdmunicipio'+
                   ',dsendereco'+
                   ',dsnumero'+
                   ',dscomplemento'+
                   ',nmbairro'+
                   ',cdmunicipio'+
                   ',nucep'+
                   ',nucxpostal'+
                   ',nufone'+
                   ',nufax '+
             'from clienteentrega '+
             'where cdempresa='+empresa.cdempresa.tostring+' and cdclienteentrega='+sender.AsString);
    cdsdsendereco.asstring    := q.q.fieldbyname(_dsendereco).asstring;
    cdsdsnumero.asstring      := q.q.fieldbyname(_dsnumero).asstring;
    cdsdscomplemento.asstring := q.q.fieldbyname(_dscomplemento).asstring;
    cdsnmbairro.asstring      := q.q.fieldbyname(_nmbairro).asstring;
    cdscdmunicipio.asstring   := q.q.fieldbyname(_cdmunicipio).asstring;
    cdscduf.asstring          := q.q.fieldbyname(_cduf).asstring;
    cdsnucep.asstring         := q.q.fieldbyname(_nucep).asstring;
    cdsnucxpostal.asstring    := q.q.fieldbyname(_nucxpostal).asstring;
    cdsnufone.asstring        := q.q.fieldbyname(_nufone).asstring;
    cdsnufax.asstring         := q.q.fieldbyname(_nufax).asstring;
  finally
    q.free;
  end;
end;

procedure TfrmPedido.cdsdetailCDTPGRADEVALORValidate(Sender: TField);
var
  vlunitario : currency;
begin
  if not CodigoExiste(_tpgradevalor, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, 'Tipo Grade Valor']), mterror, [mbok], 0);
    abort;
  end;
  cdsdetailNMTPGRADEVALOR.asstring := NomedoCodigo(_tpgradevalor, sender.AsString);
  if produto.cdproduto <> cdsdetailCDPRODUTO.AsInteger then
  begin
    produto.select(cdsdetailCDPRODUTO.AsInteger);
  end;
  vlunitario := produto.getvalorgrade(sender.AsInteger, cds.FieldByName(_cdcliente).AsString, cdsdetailQTITEM.AsFloat);
  if vlunitario > 0 then
  begin
    cdsdetailVLUNITARIO.AsCurrency   := vlunitario;
  end;
end;

procedure TfrmPedido.cdsdetailQTITEMValidate(Sender: TField);
begin
  if sender.AsFloat < 0 then
  begin
    MessageDlg('Quantidade não pode ser NEGATIVO.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    Sender.FocusControl;
    Abort;
  end;
  if (sender.AsFloat = 0) and (not (pedido.tppedido.bomadeira = _s)) then
  begin
    MessageDlg('Quantidade não pode ser ZERO.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    Sender.FocusControl;
    Abort;
  end;
  if not cdsdetailCDPRODUTO.IsNull then
  begin
    produto.Select(cdsdetailCDPRODUTO.AsInteger);
    if (produto.qtmultiplo > 0) and (Trunc((sender.AsFloat / produto.qtmultiplo)) * produto.qtmultiplo <> sender.asfloat) then
    begin
      MessageDlg('Prencher produto com quantidade de múltiplo de '+floattostr(produto.qtmultiplo)+'.', mtInformation, [mbOK], 0);
      sender.FocusControl;
      abort;
    end;
    if (pedido.tppedido.boestoque = _s) and (produto.qtdisponivel < sender.AsFloat) then
    begin
      messagedlg('Produto '+cdsdetailCDPRODUTO.AsString+' tem disponível '+FormatFloat(__decimal3, produto.qtdisponivel)+'.'#13'Digite um produto que tenha o disponível acima do pedido para continuar', mtinformation, [mbok], 0);
      sender.FocusControl;
      Abort;
    end;
  end;
  if not (pedido.tppedido.boalterarvaloritem = _s) then
  begin
    produto.cdproduto := produto.CodigoProdutoDigitado(cdsdetailCDDIGITADO.AsString, _bopedido);
    if produto.cdproduto <> 0 then
    begin
      produto.Select(produto.cdproduto);
      produto.CheckDados(pedido.tppedido.boitemchecknuclfiscal = _s);
      if (produto.cdproduto <> 0) and (cdsdetailCDPRODUTO.AsInteger <> produto.cdproduto) then
      begin
        if (pedido.tppedido.boitemprecoprazo = _s) and (cbxcdcondpagto.Text <> '') and pedido.condpagto.isaprazo then
        begin
          cdsdetailVLQUILO.AsCurrency    := produto.vlprazo;
          cdsdetailVLUNITARIO.AsCurrency := produto.vlprazo + (produto.vlprazo * pedido.getprfrete(cds.FieldByName(_CDTRANSPORTADORA).AsString, cds.FieldByName(_cdcliente).AsString) /100);
        end
        else
        begin
          produto.vlvenda                := produto.GetValorGrade(cdsdetailCDTPGRADEVALOR.AsInteger, cds.FieldByName(_cdcliente).AsString, sender.AsFloat);
          { TODO -oTeste -cCondpagto :
Verificar se ao mudar a condição do pagamento na tela está
buscando as informações dos campos pracrescimo }
          cdsdetailVLQUILO.AsCurrency    := produto.vlvenda + (produto.vlvenda * pedido.condpagto.pracrescimo / 100);
          cdsdetailVLUNITARIO.AsCurrency := produto.vlvenda +
                                           (produto.vlvenda * pedido.getprfrete(cds.FieldByName(_CDTRANSPORTADORA).AsString,
                                            cds.FieldByName(_cdcliente).AsString) /100) + (produto.vlvenda * pedido.condpagto.pracrescimo / 100);
        end;
      end;
    end;
  end;
  setvalor(Sender);
end;

procedure TfrmPedido.cdsdetailVLUNITARIOValidate(Sender: TField);
begin
  if (sender.AsCurrency < 0) and (not (pedido.tppedido.boitemvlunitarionegativo = _s)) then
  begin
    MessageDlg('Valor unitário não pode ser negativo.'#13'Favor alterar o valor para poder continuar.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    Sender.FocusControl;
    Abort;
  end;
  if pedido.tppedido.boitemvlminimo = _s then
  begin
    produto.Select(cdsdetailCDPRODUTO.AsInteger);
    if (produto.vlminimo > 0) and (sender.AsCurrency < produto.vlminimo) then
    begin
      MessageDlg('Valor unitário não pode ser menor que o valor mínimo de venda do produto.', mtInformation, [mbOK], 0);
      sender.FocusControl;
      Abort;
    end;
  end;
  if (pedido.tppedido.boalterarvaloritem = _s) and (pedido.tppedido.boitemvlunitariomaiorvenda = _s) and (cdsdetailCDPRODUTO.AsInteger > 0) then
  begin
    produto.Select(cdsdetailCDPRODUTO.AsInteger);
    if sender.AsCurrency < produto.vlvenda then
    begin
      MessageDlg('Valor unitário não pode ser menor que o valor de venda do produto.', mtInformation, [mbOK], 0);
      sender.FocusControl;
      Abort;
    end;
  end;
  setvalor(sender);
end;

procedure TfrmPedido.cdsdetailCDDIGITADOEMBALAGEMValidate(Sender: TField);
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
  produto.CheckDados(pedido.tppedido.boitemchecknuclfiscal = _s);
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

procedure TfrmPedido.cdsdetailCDDIGITADOValidate(Sender: TField);
var
  regrast : tregrast;
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _bopedido);
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  produto.tpproduto.select(produto.cdtpproduto);
  if not ((pedido.tppedido.boiss = _s) and (pedido.tppedido.boicms = _s)) then
  begin
    if (produto.tpproduto.boservico = _s) and ((pedido.tppedido.boicms = _s) or (pedido.tppedido.boipi = _s)) then
    begin
      MessageDlg('Serviço não pode ser lançado em um Pedido que tem ICMS ou IPI.'#13'Selecione outro produto para continuar.', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      Abort;
    end;
    if (pedido.tppedido.boiss = _s) and (produto.tpproduto.boservico <> _s) then
    begin
      MessageDlg('Para este tipo de pedido só é permitido lançar "SERVIÇO".', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      abort;
    end;
    if (not (pedido.tppedido.boiss = _s)) and (produto.tpproduto.boservico = _s) then
    begin
      MessageDlg('Para este tipo de pedido não é permitido lançar "SERVIÇO".', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      abort;
    end;
  end;
  produto.CheckDados(pedido.tppedido.boitemchecknuclfiscal = _s);
  if (produto.cdproduto <> 0) and (cdsdetailCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    if produto.qtmultiplo > 0 then
    begin
      cdsdetailQTITEM.AsFloat := produto.qtmultiplo;
    end;
    if (pedido.tppedido.boitemprecoprazo = _s) and (cbxcdcondpagto.Text <> '') and pedido.condpagto.isaprazo then
    begin
      cdsdetailVLQUILO.AsCurrency    := produto.vlprazo;
      cdsdetailVLUNITARIO.AsCurrency := produto.vlprazo + (produto.vlprazo * pedido.getprfrete(cds.FieldByName(_CDTRANSPORTADORA).AsString, cds.FieldByName(_cdcliente).AsString) /100);
    end
    else
    begin
      produto.vlvenda := produto.GetValorGrade(cdsdetailCDTPGRADEVALOR.AsInteger, cds.FieldByName(_cdcliente).AsString, cdsdetailQTITEM.AsFloat);
      { TODO -oTeste -cCondpagto :
Verificar se ao mudar a condição do pagamento na tela está
buscando as informações dos campos pracrescimo }
      cdsdetailVLQUILO.AsCurrency    := produto.vlvenda + (produto.vlvenda * pedido.condpagto.pracrescimo / 100);
      cdsdetailVLUNITARIO.AsCurrency := produto.vlvenda +
                                       (produto.vlvenda * pedido.getprfrete(cds.FieldByName(_CDTRANSPORTADORA).AsString,
                                       cds.FieldByName(_cdcliente).AsString) /100) + (produto.vlvenda * pedido.condpagto.pracrescimo / 100);
    end;
    if (pedido.tppedido.boitemvlunitariotpcobranca = _s) and (not cds.FieldByName(_cdtpcobranca).IsNull) then
    begin
      if pedido.tpcobranca.boavista = _s then
      begin
        cdsdetail.FieldByName(_vlunitario).AsCurrency := produto.vlvenda;
      end
      else
      begin
        cdsdetail.FieldByName(_vlunitario).AsCurrency := produto.vlprazo;
      end;
    end;
    cdsdetailCDPRODUTO.AsInteger    := produto.cdproduto;
    if produto.cdmodbcsticms = 5 then
    begin
      cdsdetailALMVA.AsCurrency := produto.almva;
    end;
  end;
  if produto.qtespessura > 0 then
  begin
    cdsdetailQTALTURA1.AsFloat  := produto.qtespessura;
    cdsdetailQTLARGURA1.AsFloat := produto.qtlargura;
  end;
  cdsdetailNMPRODUTO.asstring  := produto.nmproduto;
  cdsdetailDSPRODUTO.asstring  := produto.dsproduto;
  cdsdetailDSTAG2.AsString     := produto.dstag2;
  cdsdetailNMUNIDADE.AsString  := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  cdsdetailboloteimei.AsString := produto.tpproduto.boloteimei;
  if pedido.tppedido.boicms = _s then
  begin
    cdsdetailALICMS.AsFloat := empresa.get_aliquota_destino(qregistro.inteirodocodigo(_cliente, cds.FieldByName(_cdcliente).AsString, _cduf));
  end;
  regrast := tregrast.create;
  try
    regrast.GetRegraSTPedidoOrcamento(cdsdetail, pedido.cliente.cduf, pedido.cliente.get_tpregime);
  finally
    FreeAndNil(regrast);
  end;
  if pedido.tppedido.boitemfornecedor = _s then
  begin
    cdsdetail.FieldByName(_CDFORNECEDOR).AsString := RetornaSQLString('select first 1 cdfornecedor from itprodutofornecedor where cdempresa='+cds.fieldbyname(_CDEMPRESA).asstring+' and cdproduto='+inttostr(produto.cdproduto));
  end;
end;

procedure TfrmPedido.cdsdetailALIPIValidate(Sender: TField);
begin
  setvalor(Sender);
end;

procedure TfrmPedido.cdsdetailQTLARGURA1Validate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTLARGURA2Validate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTALTURA1Validate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTALTURA2Validate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTCOMPRIMENTO1Validate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTCOMPRIMENTO2Validate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTDIAMETROEXTERNOValidate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTDIAMETROEXTERNO2Validate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTDIAMETROFUROValidate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTCOMPRIMENTO3Validate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailQTDIAMETROCORPOValidate(Sender: TField);
begin
  setCalculo(sender);
end;

procedure TfrmPedido.cdsdetailVLQUILOValidate(Sender: TField);
begin
  setCalculo(SENDER);
end;

procedure TfrmPedido.cdsdetailVLMAQUINAValidate(Sender: TField);
begin
  setCalculo(Sender);
end;

procedure TfrmPedido.cdsdetailALICMSValidate(Sender: TField);
begin
  if cdsdetailBOIPIBCICMS.AsString = _S then
  begin
    cdsdetailVLICMS.AsCurrency := cdsdetailVLTOTALCIPI.AsCurrency * cdsdetailALICMS.AsCurrency / 100
  end
  else
  begin
    cdsdetailVLICMS.AsCurrency := cdsdetailVLTOTAL.AsCurrency     * cdsdetailALICMS.AsCurrency / 100;
  end;
end;

procedure TfrmPedido.cdsdetailQTPECAValidate(Sender: TField);
begin
  setCalculo(Sender);
end;

procedure TfrmPedido.cdsdetailAfterDelete(DataSet: TDataSet);
begin
  Gravartotais(nil);
  AtualizarDsestruturaPedido;
end;

procedure TfrmPedido.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if (pedido.tppedido.bocotacaoitem = _s) and (pedido.tppedido.bocotacaoitemobrigatorio = _s) and (cdsdetailNUCOTACAO.AsString = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__numero+' '+_da+' '+_ordem+' '+_de+' '+_Compra]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsproduto;
    cdsdetailNUCOTACAO.FocusControl;
    Abort;
  end;
  if cdsdetailCDDIGITADO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_do+' '+_produto]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsproduto;
    cdsdetailCDDIGITADO.FocusControl;
    abort;
  end;
  if (cdsdetailVLUNITARIO.AsCurrency = 0) and (not (pedido.tppedido.boitemvlunitariozerado = _s)) then
  begin
    MessageDlg('Valor unitário não pode ser zero.'#13'Altere o valor para poder continuar.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    cdsdetailVLUNITARIO.FocusControl;
    Abort;
  end;
  if (pedido.tppedido.bodtprventregaitem = _s) and cdsdetailDTPRVENTREGA.IsNull then
  begin
    cdsdetailDTPRVENTREGA.AsDateTime := cdsDTPRVENTREGA.AsDateTime;
  end;
  cdsdetailVLIPI.AsCurrency       := RoundTo(cdsdetailVLTOTAL.AsCurrency * cdsdetailALIPI.AsCurrency / 100, -2);
  cdsdetailVLTOTALCIPI.AsCurrency := cdsdetailVLTOTAL.ascurrency + cdsdetailVLIPI.ascurrency;
  if dataset.State = dsinsert   then
  begin
    cdsdetailCDSTITPEDIDO.AsInteger := qregistro.Codigo_status_novo(_itpedido);
  end;
  if cdsdetailPRLUCRO.IsNull    then
  begin
    cdsdetailPRLUCRO.AsFloat       := 0;
  end;
  if cdsdetailCDITPEDIDO.isnull then
  begin
    cdsdetailCDITPEDIDO.AsString   := GerarCodigo(_itpedido);
  end;
  if pedido.tppedido.boiss = _s then
  begin
    DataSet.FieldByName(_vliss).AsCurrency := DataSet.fieldbyname(_aliss).asfloat * DataSet.fieldbyname(_vltotal).AsCurrency / 100;
  end;
  registro.set_update(cdsdetail);
end;

procedure TfrmPedido.Check_cliente;
begin
  if cds.FieldByName(_cdcliente).isnull then // Obrigatoriedade do Cliente
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Cliente]), mtinformation, [mbok], 0);
    cds.FieldByName(_cdcliente).FocusControl;
    abort;
  end;
end;

procedure TfrmPedido.cdsBeforePost(DataSet: TDataSet);
var
  linha : string;
begin
  if (pedido.tppedido.boitemprecoprazo = _s) and (cbxcdcondpagto.Text = '') then
  begin
    MessageDlg('Condição de pagamento é um campo obrigatório.', mtInformation, [mbOK], 0);
    cbxcdcondpagto.SetFocus;
    abort;
  end;
  Check_cliente;
  // Atribui o número do documento
  if registro.edtcodigo.text <> '' then
  begin
    cdsNUPEDIDO.asstring := registro.edtcodigo.text;
  end;
  if (pedido.tppedido.bodsobservacaocliente = _s) and (dataset.State = dsinsert) and (not cds.FieldByName(_cdcliente).IsNull) and (not (Pos('Observação do Cliente: ', cdsDSOBSERVACAO.asstring) > 0)) then // verificar se a observacao do pedido ja foi inserido
  begin
    linha := MemodoCodigo(_cliente, cds.FieldByName(_cdcliente).AsString, _dsobservacao);
    if not (linha = '') then
    begin
      cdsDSOBSERVACAO.AsString := cdsDSOBSERVACAO.AsString + 'Observação do Cliente: ('+linha+')'#13;
    end;
  end;
  if pedido.tppedido.bocomissao <> _s then
  begin
    cdsPRCOMISSAO.AsFloat    := 0;
    cdsVLCOMISSAO.AsCurrency := 0;
  end;
  if CheckDuplicidadeNumeroPedido then
  begin
    MessageDlg('Número do pedido repetido.', mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cds);
end;

procedure TfrmPedido.cdsAfterScroll(DataSet: TDataSet);
begin
  pedido.Select(cds);
  pedido.itpedido.Ler(cdsdetail);
  pedido.stpedido.Select(pedido.cdstpedido);
  pedido.pedidoduplicata.ler(cdspedidoduplicata);
  if tbl_consulta <> '' then
  begin
    SetConsulta(tbl_consulta);
  end;
  atualizarcontatocliente;
  actordproducaogerar.Enabled      := pedido.stpedido.bogerarordproducao = _s;
  actordproducaogerartodas.Enabled := actordproducaogerar.Enabled;
  actordproducaogerar.Visible      := actordproducaogerar.Enabled;
  actordproducaogerartodas.Visible := actordproducaogerar.Enabled;
  TravarPedidoAtendido;
  pedido.condpagto.Select(cdsCDCONDPAGTO.Asinteger);
  pedido.condpagto.itcondpagto.Ler(pedido.cdcondpagto);

  //registro.setStatus(_pedido, cds);
  actGerarSaida.Enabled := NomedoCodigo(_stpedido,cdsCDSTPEDIDO.asstring, _bogerarsaida) = _s;
  actGerarSaida.Visible := actGerarSaida.Enabled;
  setrecord(cdsCDTPPEDIDO.AsInteger);
  if not cds.fieldbyname(_cdcliente).IsNull then
  begin
    pedido.cliente.select(pedido.cdcliente);
    lblcdcliente.Hint := pedido.cliente.hint_rzsocial;
  end;
  setclientevalor(cds.FieldByName(_cdcliente).AsLargeInt);
end;

procedure TfrmPedido.Gravartotais(Sender: TField);
var
  vlfrete, vlfrete2, vldesconto, vlbase, vlicms, vlipi, psbruto, vltotal, vltotalcipi, vldescontoitem : currency;
  recatual, recno : integer;
begin
  vlfrete     := 0;
  vltotal     := 0;
  vlipi       := 0;
  vltotalcipi := 0;
  psbruto     := 0;
  vldesconto  := 0;
  vlfrete2    := cdsVLFRETE.AsCurrency;
  if cdsdetail.RecordCount > 0 then
  begin
    cdsVLICMSSUBTRIB.ascurrency := 0;
    cdsdetail.DisableControls;
    cdsdetail.AfterPost := nil;
    try
      recatual := cdsdetail.RecNo;
      cdsdetail.First;
      recno := 0;
      repeat
        recno       := recno       + 1;
        vltotal     := vltotal     + cdsdetailVLTOTAL.AsCurrency;
        psbruto     := psbruto     + cdsdetailQTITEM.AsFloat;
        vlipi       := vlipi       + cdsdetailVLIPI.ascurrency;
        vlfrete     := vlfrete     + cdsdetailVLFRETE.AsCurrency;
        vltotalcipi := vltotalcipi + cdsdetailVLTOTALCIPI.ascurrency;
        if RecNo < cdsdetail.RecordCount then
        begin
          cdsdetail.Next;
        end;
      until RecNo = cdsdetail.RecordCount;
      // RATEAR FRETE, DESCONTO e icms subtrib
      cdsdetail.First;
      recno := 0;
      vldescontoitem := 0;
      repeat
        recno := recno + 1;
        cdsdetail.Edit;
        if (not (pedido.tppedido.boitemfrete = _s)) or ((not (Sender = nil)) and (sender.FieldName = UpperCase(_vlfrete))) then
        begin
          if psbruto * cdsdetailQTITEM.AsFloat = 0 then
          begin
            cdsdetailVLFRETE.ascurrency := 0
          end
          else
          begin
            cdsdetailVLFRETE.ascurrency := cdsVLFRETE.AsCurrency / psbruto * cdsdetailQTITEM.AsFloat;
          end;
          vlfrete2 := vlfrete2 - cdsdetailVLFRETE.AsCurrency;
        end;

        if vltotal <> 0 then
        begin
          if pedido.tppedido.boitemdesconto = _s then
          begin
            vldesconto := vldesconto + cdsdetailvldesconto.ascurrency;
          end
          else
          begin
            cdsdetailVLDESCONTO.Ascurrency := RoundTo(((cdsdetailQTITEM.AsFloat * cdsdetailVLUNITARIO.asfloat) / vltotal) * cdsVLDESCONTO.Asfloat, -2);
            vldescontoitem := vldescontoitem + cdsdetailVLDESCONTO.Ascurrency;
            if vldescontoitem > cdsvldesconto.Asfloat then
            begin
              cdsdetailVLDESCONTO.Ascurrency := cdsdetailVLDESCONTO.Ascurrency - (vldescontoitem - cdsvldesconto.Asfloat);
            end;
          end;
        end;
        if (pedido.tppedido.boicmssubtrib = _s) and (cdsdetailALMVA.AsCurrency>0) then
        begin
          vlbase                            := cdsdetailVLTOTAL.AsCurrency + cdsdetailVLFRETE.ascurrency; //- cdsdetailVLDESCONTO.ascurrency;
          vlicms                            := vlbase * cdsdetailALICMS.AsCurrency / 100;
          vlbase                            := (vlbase + cdsdetailVLIPI.ascurrency) * ((cdsdetailALMVA.AsFloat / 100)+1);
          cdsdetailVLICMSSUBTRIB.ascurrency := RoundTo((vlbase * cdsdetailALICMSSUBTRIB.AsCurrency / 100) - vlicms, -2);
          cdsVLICMSSUBTRIB.ascurrency       := cdsVLICMSSUBTRIB.ascurrency + cdsdetailVLICMSSUBTRIB.ascurrency;
        end;
        if (not (pedido.tppedido.boitemfrete = _s)) or ((not (Sender = nil)) and (sender.FieldName = UpperCase(_vlfrete))) then
        begin
          if (recno = cdsdetail.RecordCount) and (vlfrete2 > 0) then
          begin
            cdsdetailVLFRETE.AsCurrency := cdsdetailVLFRETE.AsCurrency + vlfrete2;
          end;
        end;
        cdsdetail.Post;
        if RecNo < cdsdetail.RecordCount then
        begin
          cdsdetail.Next;
        end;
      until RecNo = cdsdetail.RecordCount;
      cdsdetail.RecNo := recatual;
      // RATEAR FRETE E DESCONTO
    finally
      cdsdetail.EnableControls;
      cdsdetail.AfterPost := cdsdetailAfterPost;
    end;
  end;
  // valor total da nota
  cdsVLPRODUTO.AsCurrency  := vltotal;
  if pedido.tppedido.boitemdesconto = _s then
  begin
    cdsVLDESCONTO.OnValidate := nil;
    cdsVLDESCONTO.AsCurrency := vldesconto;
    cdsVLDESCONTO.OnValidate := cdsVLDESCONTOValidate;
  end;
  cdsVLTOTAL.AsCurrency    := vltotal - cdsVLDESCONTO.ascurrency + cdsVLICMSSUBTRIB.ascurrency + vlipi;
  if not (pedido.tppedido.bofretentotal = _s) then
  begin
    cdsVLTOTAL.AsCurrency := cdsVLTOTAL.ascurrency + cdsVLFRETE.ascurrency;
  end;
  cdsPRDESCONTO.OnValidate := nil;
  if cdsVLPRODUTO.ascurrency = 0 then
  begin
    cdsPRDESCONTO.AsCurrency := 0
  end
  else
  begin
    cdsPRDESCONTO.AsCurrency := cdsVLDESCONTO.AsCurrency * 100 / cdsVLPRODUTO.ascurrency;
  end;
  cdsPRDESCONTO.onvalidate  := cdsPRDESCONTOValidate;
  cdsPSBRUTO.ascurrency     := psbruto;
  if pedido.tppedido.boitemfrete = _s then
  begin
    cdsVLFRETE.OnValidate := nil;
    cdsVLFRETE.AsCurrency := vlfrete;
    cdsVLFRETE.OnValidate := cdsVLFRETEValidate;
  end;
  cdsVLIPI.ascurrency       := vlipi;
  cdsVLTOTALCIPI.ascurrency := vltotalcipi;
  if pedido.tppedido.bodescontocomissao = _s then
  begin
    cdsVLCOMISSAO.ascurrency := (cdsVLTOTAL.AsCurrency - cdsVLDESCONTO.ascurrency) * cdsPRCOMISSAO.ascurrency / 100
  end
  else
  begin
    cdsVLCOMISSAO.ascurrency := cdsVLTOTAL.AsCurrency * cdsPRCOMISSAO.ascurrency / 100;
  end;
end;

procedure TfrmPedido.SetConsulta(tbl:string);
var
  sql : string;
begin
  cdsitconsulta.close;
  cdsconsulta.Close;
  if cds.fieldbyname(_cdpedido).asstring = '' then
  begin
    Exit;
  end;
  //
  tbl := lowercase(tbl);
  if tbl = _saida then
  begin
    sql := 'SELECT NUSAIDA'+
               ',S.DTEMISSAO'+
               ',s.vltotal'+
               ',iP.CDPEDIDO'+
               ',T.NMTPSAIDA'+
               ',SE.NMSERIE'+
               ',S.CDSAIDA '+
         'FROM saida s '+
         'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
         'LEFT JOIN TPSAIDA T ON T.CDEMPRESA=S.CDEMPRESA AND T.CDTPSAIDA=S.CDTPSAIDA '+
         'LEFT JOIN SERIE SE ON SE.CDEMPRESA=S.CDEMPRESA AND SE.CDSERIE=S.CDSERIE '+
         'INNER JOIN ITPEDIDO IP ON IP.CDITPEDIDO=I.CDITPEDIDO and i.cdempresa=ip.cdempresa '+
         'WHERE s.cdempresa='+empresa.cdempresa.tostring+' and iP.cdpedido='+cds.fieldbyname(_cdpedido).asstring+' '+
         'GROUP BY S.NUSAIDA,S.DTEMISSAO,s.VLTOTAL,iP.CDPEDIDO,T.NMTPSAIDA,SE.NMSERIE,S.CDSAIDA';
    sdsitconsulta.CommandText := 'SELECT I.CDDIGITADO'+
                                       ',P.NMPRODUTO'+
                                       ',I.QTITEM'+
                                       ',I.VLUNITARIO'+
                                       ',I.VLTOTAL'+
                                       ',I.CDSAIDA'+
                                       ',I.CDITSAIDA'+
                                       ',I.CDPEDIDO '+
                                 'FROM ITSAIDA i '+
                                 'INNER JOIN PRODUTO p ON P.CDPRODUTO=I.CDPRODUTO and i.cdempresa=p.cdempresa '+
                                 'INNER JOIN ITPEDIDO IP ON IP.CDITPEDIDO=I.CDITPEDIDO and ip.cdempresa=i.cdempresa '+
                                 'where i.cdempresa='+empresa.cdempresa.tostring+' and IP.CDPEDIDO='+cds.fieldbyname(_CDPEDIDO).asstring+' '+
                                 'ORDER BY I.CDITSAIDA';
    cdsitconsulta.Open;
  end
  else if tbl = _transporte then
  begin
    sql := 'SELECT t.cdtransporte'+
                 ',t.DTEMISSAO'+
                 ',i.cdPEDIDO '+
           'from transporte t '+
           'inner join ittransporte i on i.cdtransporte=t.cdtransporte and t.cdempresa=i.cdempresa '+
           'WHERE t.cdempresa='+empresa.cdempresa.tostring+' and I.cdpedido='+cds.fieldbyname(_cdpedido).asstring;
  end;
  sdsconsulta.CommandText := sql;
  cdsconsulta.Open;
  tbl_consulta := tbl;
end;

procedure TfrmPedido.setprfrete;
begin
  if cds.State = dsinsert then
  begin
    Exit;
  end;
  cdsdetail.DisableControls;
  try
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      produto.Select(cdsdetailCDPRODUTO.AsInteger);
      produto.CheckDados;
      cdsdetail.Edit;
      cdsdetailVLUNITARIO.AsCurrency := produto.vlvenda + (produto.vlvenda * pedido.getprfrete(cds.FieldByName(_CDTRANSPORTADORA).AsString, cds.FieldByName(_cdcliente).AsString) / 100);
      cdsdetail.Post;
      cdsdetail.Next;
    end;
  finally
    cdsdetail.EnableControls;
  end;
end;

procedure TfrmPedido.setvalor(sender:TField);
begin
  //cdsdetailVLTOTAL.AsCurrency := RoundTo(cdsdetailQTITEM.AsFloat * cdsdetailVLUNITARIO.AsFloat, -2);
  cdsdetailVLTOTAL.AsCurrency := QRotinas.Roundqp(cdsdetailQTITEM.Asfloat * cdsdetailVLUNITARIO.AsFloat, true);
end;

procedure TfrmPedido.setCalculo(sender:TField);
begin
  if not (pedido.tppedido.bomadeira = _s) then
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

procedure TfrmPedido.actcopiarExecute(Sender: TObject);
var
  nupedido: string;
  codigo : integer;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if Empresa.comercial.pedido.bonupedido then
  begin
    nupedido := InputBox('Copiar Pedido', 'Novo Número do Pedido', '');
    if nupedido = '' then
    begin
      Exit;
    end;
    if RegistroExiste(_pedido, _nupedido+'='+quotedstr(nupedido)) then
    begin
      MessageDlg('Número do pedido já existe.', mtInformation, [mbOK], 0);
      Exit;
    end;
  end;
  pedido.cdpedido := cdsCDPEDIDO.AsInteger;
  codigo := pedido.copiar(nupedido);
  if codigo <> 0 then
  begin
    Abrir(codigo);
  end;
end;

procedure TfrmPedido.tbvCDDIGITADOEMBALAGEMPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_pedido, cdsdetail, true, _embalagem);
end;

procedure TfrmPedido.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado  then
  begin
    actabrirprodutoExecute(actabrirproduto)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdorcamento then
  begin
    actabrirorcamentoExecute(actabrirorcamento);
  end;
end;

procedure TfrmPedido.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds, cdsordproducao);
end;

procedure TfrmPedido.actabrirorcamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cdsdetail);
end;

procedure TfrmPedido.FormCreate(Sender: TObject);
begin
  AbrirTabela;
  Exibe    := 'Pedido Venda';
  registro := tregistro.create(self, _pedido,exibe, artigoI, cds, dts, edtcodigo, true);
  GeraMenuRelatorio ('', btnimprimir, 29, self, _pedido);
  GeraMenuRelatorio (_email  , btnemail   , 29, self, _pedido);
  //tbsestrutura.TabVisible := False;
  //tbsordproducao.TabVisible := False;
end;

procedure TfrmPedido.cbxcdtppedidoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tppedido);
end;

procedure TfrmPedido.cbxcdcondpagtoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_condpagto+_s);
end;

procedure TfrmPedido.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpcobranca);
end;

procedure TfrmPedido.cbxcdstpedidoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_stpedido);
end;

procedure TfrmPedido.cbxcdrepresentanteEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_representante);
end;

procedure TfrmPedido.grddetail1DBBandedTableView1VLUNITARIOPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (cdsdetail.State = dsinsert) or (cds.State = dsinsert) then
  begin
    DisplayValue := cdsdetailVLUNITARIO.OldValue;
    Exit;
  end;
end;

procedure TfrmPedido.cdsNUCOTACAOChange(Sender: TField);
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

procedure TfrmPedido.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmPedido.lblrepresentanteDblClick(Sender: TObject);
begin
  actAbrirrepresentante.onExecute(actAbrirrepresentante);
end;

procedure TfrmPedido.lbltppedidoDblClick(Sender: TObject);
begin
  actAbrirtppedido.onExecute(actAbrirtppedido);
end;

procedure TfrmPedido.LimparCampoEntrega;
begin
  cdsdsendereco.clear;
  cdsdsnumero.clear;
  cdsdscomplemento.clear;
  cdsnmbairro.clear;
  cdscdmunicipio.clear;
  cdscduf.clear;
  cdsnucep.clear;
  cdsnucxpostal.clear;
  cdsnufone.clear;
  cdsnufax.clear;
end;

procedure TfrmPedido.actabrirtppedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmPedido.lblcondpagtoDblClick(Sender: TObject);
begin
  actAbrircondpagto.onExecute(actAbrircondpagto);
end;

procedure TfrmPedido.txtNMCLIENTEDblClick(Sender: TObject);
begin
  actAbrirClienteExecute(actAbrirCliente);
end;

procedure TfrmPedido.actinserircontatoExecute(Sender: TObject);
var
  cditcontcliente : string;
begin
  if edtCDCLIENTE.Text = '' then
  begin
    messagedlg('Preencha o cliente antes de inserir um contato.', mtinformation, [mbok], 0);
    exit;
  end;
  cditcontcliente := InserirRegistroTabela(_itcontcliente, 'Contato Cliente', cds.FieldByName(_cdcliente).AsString);
  if cditcontcliente <> '' then
  begin
    atualizarContatocliente;
    cdsCDITCONTCLIENTE.AsString := cditcontcliente;
  end;
end;

procedure TfrmPedido.atualizarContatocliente;
begin
  cdsitcontcliente.Close;
  sdsitcontcliente.Close;
  if cds.FieldByName(_cdcliente).AsString = '' then
  begin
    Exit;
  end;
  sdsitcontcliente.ParamByName(_cdempresa).ASLargeInt := empresa.cdempresa;
  sdsitcontcliente.ParamByName(_cdcliente).asstring := cds.FieldByName(_cdcliente).AsString;
  cdsitcontcliente.Open;
end;

procedure TfrmPedido.cdsdetailAfterScroll(DataSet: TDataSet);
var
  visivel : Boolean;
begin
  actloteserie.Visible       := cdsdetailboloteimei.AsString = _s;
  bmgitpedido.Visible        := cdsdetailboloteimei.AsString = _s;
  visivel := (cdsordproducao.RecordCount = 0) or ((pedido.cdpedido > 0) and (pedido.tppedido.boordproducaoqtitem = _s) and (pedido.tppedido.boordproducao = _s));
  tbvQTITEM.Options.Focusing := visivel;
end;

procedure TfrmPedido.cbxcdufExit(Sender: TObject);
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

procedure TfrmPedido.actordproducaoExecute(Sender: TObject);
begin
//
end;

procedure TfrmPedido.actordproducaogerarExecute(Sender: TObject);
var
  i : Integer;
begin
  if pedido.tppedido.cdtpordproducao = 0 then
  begin
    messagedlg('Não está configurado o tipo de ordem de produção no tipo de pedido.', mtinformation, [mbok], 0);
    exit;
  end;
  for i := 0 to pedido.itpedido.Count - 1 do
  begin
    if cdsdetail.FieldByName(_cditpedido).AsInteger = pedido.itpedido.Items[i].cditpedido then
    begin
      pedido.itpedido.Items[i].Gerar_Ordem_Producao(pedido.tppedido.cdtpordproducao);
      Abrir(cdsCDPEDIDO.AsInteger);
      Break;
    end;
  end;
end;

procedure TfrmPedido.actordproducaogerartodasExecute(Sender: TObject);
var
  i : Integer;
begin
  if pedido.tppedido.cdtpordproducao = 0 then
  begin
    messagedlg('Não está configurado o tipo de ordem de produção no tipo de pedido.', mtinformation, [mbok], 0);
    exit;
  end;
  cds.DisableControls;
  try
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      for i := 0 to pedido.itpedido.Count - 1 do
      begin
        if cdsdetail.FieldByName(_cditpedido).AsInteger = pedido.itpedido.Items[i].cditpedido then
        begin
          pedido.itpedido.Items[i].Gerar_Ordem_Producao(pedido.tppedido.cdtpordproducao);
          Break;
        end;
      end;
      cdsdetail.Next;
    end;
    Abrir(cdsCDPEDIDO.AsInteger);
  finally
    cds.EnableControls;
  end;
end;

procedure TfrmPedido.cdsordproducaoAfterScroll(DataSet: TDataSet);
begin
  actimprimirordemproducao.Enabled := cdsordproducao.RecordCount > 0;
  if actSalvar.Enabled then
  begin
    tbvordproducaoDTEMISSAO.Options.Focusing       := cdsordproducaoCDSTORDPRODUCAO.AsString = _1;
    tbvordproducaoCDTPORDPRODUCAO.Options.Focusing := tbvordproducaoDTEMISSAO.Options.Focusing;
    tbvordproducaoDTPRVENTREGA.Options.Focusing    := tbvordproducaoDTEMISSAO.Options.Focusing;
    tbvordproducaoDSOBSERVACAO.Options.Focusing    := tbvordproducaoDTEMISSAO.Options.Focusing;
  end;
end;

procedure TfrmPedido.tbvordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao)
  end;
end;

procedure TfrmPedido.cdsdetailPRDESCONTOValidate(Sender: TField);
begin
  if pedido.tppedido.boitemdescontomaximo = _s then
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

procedure TfrmPedido.cdsdetailVLDESCONTOValidate(Sender: TField);
var
  prdesconto : double;
begin
  if tbvVLDESCONTO.Visible and (sender.AsCurrency > cdsdetailVLTOTAL.AsCurrency) then
  begin
    if (cdsdetailVLTOTAL.AsCurrency < 0) and (pedido.tppedido.boitemvlunitarionegativo = _s) then
    begin
      Exit;
    end;
    MessageDlg('Valor do desconto não pode ser maior do que o valor total do item.'#13'Altere o valor para poder continuar.', mtInformation, [mbOK], 0);
    if tbvVLDESCONTO.Visible then
    begin
      Sender.FocusControl;
    end;
    Abort;
  end;
  if (cdsdetailVLTOTAL.ascurrency = 0) and (cdsdetailPRDESCONTO.AsCurrency = 0) then
  begin
    Exit;
  end;
  if cdsdetailVLTOTAL.AsCurrency = 0 then
  begin
    cdsdetailPRDESCONTO.AsCurrency := 0;
  end
  else if tbvVLDESCONTO.Visible then
  begin
    prdesconto := cdsdetailVLDESCONTO.AsCurrency * 100 / cdsdetailVLTOTAL.ascurrency;
    if pedido.tppedido.boitemdescontomaximo = _s then
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
end;

procedure TfrmPedido.grddetail1DBBandedTableView1CDORCAMENTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cditorcamento : TStrings;
  itorcamento : titorcamento;
  codigo : string;
  i : integer;
begin
  if cds.FieldByName(_cdcliente).asstring = '' then
  begin
    messagedlg('Selecione um cliente antes de selecionar um orcamento.', mtError, [mbok], 0);
    cds.FieldByName(_cdcliente).FocusControl;
    exit;
  end;
  cditorcamento := TStringList.Create;
  itorcamento   := titorcamento.create;
  try
    codigo := Localizarorcamento(cds.FieldByName(_cdcliente).asstring, cditorcamento);
    if cditorcamento.count = 0 then
    begin
      Exit;
    end;
    for i := 0 to cditorcamento.count - 1 do
    begin
      if cdsdetail.State <> dsinsert then
      begin
        cdsdetail.Insert;
      end;
      itorcamento.Select(StrToInt(cditorcamento[i]));
      cdsdetailcditorcamento.asinteger  := itorcamento.cditorcamento;
      cdsdetailcdorcamento.OnValidate   := nil;
      cdsdetailcdorcamento.asinteger    := itorcamento.cdorcamento;
      cdsdetailcdorcamento.onvalidate   := cdsdetailCDORCAMENTOValidate;
      cdsdetailcdproduto.AsInteger       := itorcamento.cdproduto;
      cdsdetailcddigitado.asstring      := itorcamento.cddigitado;
      cdsdetailqtitem.AsCurrency        := itorcamento.qtitem - itorcamento.qtaprovado;
      cdsdetailvlunitario.AsCurrency    := itorcamento.vlunitario;
      cdsdetailALIPI.AsCurrency         := itorcamento.alipi;
      cdsdetailALICMS.AsCurrency        := itorcamento.alicms;
      cdsdetailALICMSSUBTRIB.AsCurrency := itorcamento.alicmssubtrib;
      cdsdetailALMVA.AsCurrency         := itorcamento.almva;
      cdsdetailVLFRETE.AsCurrency       := itorcamento.vlfrete;
      cdsdetailVLDESCONTO.AsCurrency    := itorcamento.vldesconto;
      cdsdetailDSDESENHO.AsString       := itorcamento.dsdesenho;
      cdsdetailDSOBSERVACAO.AsString    := itorcamento.dsobservacao;
      cdsdetail.Post;
    end;
  finally
    cditorcamento.Free;
    itorcamento.free;
  end;
end;

procedure TfrmPedido.actImprimirModoTextoExecute(Sender: TObject);
//var
  //linha : TStrings;
begin
  //linha := TStringList.create;
  //try
    //imprimirpedido(cdsCDPEDIDO.asinteger, linha);
    //ImprimirModoCaracter(linha, PortaImpressora(__ChaveAplicacao), false);
  //finally
    //freeandnil(linha);
  //end;
end;

procedure TfrmPedido.actexibirordproducaoExecute(Sender: TObject);
begin
  pgcsub.Visible := btnexibirordproducao.down;
  tbsordproducao.tabvisible := btnexibirordproducao.down;
  splordproducao.Visible := btnexibirordproducao.down;
  actimprimirordemproducao.Visible := btnexibirordproducao.down and (pedido.tppedido.boreportordemproducao = _s);
  if tbsordproducao.tabvisible then
  begin
    pgcsub.ActivePage := tbsordproducao;
  end;
end;

procedure TfrmPedido.cdsCDPACIENTEValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMPACIENTE.Clear;
    Exit;
  end;
  cdsNMPACIENTE.AsString := NomedoCodigo(_paciente, Sender.asstring);
  if cdsNMPACIENTE.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, _cliente]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if cds.FieldByName(_cdcliente).AsString = '' then
  begin
    MessageDlg('Favor preencher o cliente antes de informar o paciente.', mtinformation, [mbOK], 0);
    Sender.Clear;
    cdsNMPACIENTE.Clear;
    cds.FieldByName(_cdcliente).FocusControl;
    Abort;
  end;
  if (cds.FieldByName(_cdcliente).AsString <> NomedoCodigo(_paciente, sender.AsString, _cdcliente)) and
     (cds.FieldByName(_cdcliente).AsString <> NomedoCodigo(_paciente, sender.AsString, _cdclientefilial)) then
  begin
    MessageDlg('Paciente não pertence ao cliente.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmPedido.edtcdpacienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdpacientePropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmPedido.edtcdpacientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  if cds.FieldByName(_cdcliente).AsString = '' then
  begin
    MessageDlg('Favor preencher o cliente antes de pesquisar o paciente.', mtinformation, [mbOK], 0);
    cdscdpaciente.FocusControl;
    Abort;
  end;
  cd := LocalizarPaciente(cds.FieldByName(_cdcliente).AsString);
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDPACIENTE.asInteger := cd;
  end
end;

procedure TfrmPedido.edtcdprofissionalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprofissionalPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmPedido.edtcdprofissionalPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar(_profissional);
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDPROFISSIONAL.asinteger := cd;
  end
end;

procedure TfrmPedido.txtnmpacienteDblClick(Sender: TObject);
begin
  actAbrirpaciente.onExecute(actAbrirpaciente);
end;

procedure TfrmPedido.txtnmprofissionalDblClick(Sender: TObject);
begin
  actAbrirprofissional.onExecute(actAbrirprofissional);
end;

procedure TfrmPedido.actabrirprofissionalExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmPedido.actabrirpacienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmPedido.cdsCDPROFISSIONALValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMprofissional.Clear;
    Exit;
  end;
  cdsNMprofissional.AsString := NomedoCodigo(_profissional, Sender.asstring);
  if cdsNMprofissional.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, _profissional]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmPedido.edtcdprofissionalcoordenadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprofissionalcoordenadorPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmPedido.edtcdprofissionalcoordenadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar(_profissional);
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDPROFISSIONALCOORDENADOR.AsInteger := cd;
  end
end;

procedure TfrmPedido.txtnmprofissionalcoordenadorDblClick(Sender: TObject);
begin
  actAbrirprofissionalcoordenador.onExecute(actAbrirprofissionalcoordenador);
end;

procedure TfrmPedido.actabrirprofissionalcoordenadorExecute(Sender: TObject);
begin
  frmmain.AbrirDireto('cdprofissionalcoordenador', TAction(Sender), cds, cds);
end;

procedure TfrmPedido.cdsCDPROFISSIONALCOORDENADORValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMPROFISSIONALCOORDENADOR.Clear;
    Exit;
  end;
  cdsNMprofissionalCOORDENADOR.AsString := NomedoCodigo(_profissional, Sender.asstring);
  if cdsNMprofissionalCOORDENADOR.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, _profissional]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmPedido.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmPedido.acthistoricoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, _hpedido)), cdsCDpedido.AsInteger, _cdpedido);
end;

procedure TfrmPedido.AbrirTabela;
begin
  cbxcdfaturista.Properties.ListSource     := abrir_tabela(_funcionario);
  cbxcduf.Properties.ListSource            := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource     := abrir_tabela(_municipio);
  cbxcdtppedido.Properties.ListSource      := abrir_tabela(_tppedido);
  cbxcdtpcobranca.Properties.ListSource    := abrir_tabela(_tpcobranca);
  cbxcdstpedido.Properties.ListSource      := abrir_tabela(_stpedido);
  cbxcdtpfrete.Properties.ListSource       := abrir_tabela(_tpfrete);
  cbxcdFUNCIONARIO.Properties.ListSource   := abrir_tabela(_FUNCIONARIO);
  cbxcdrepresentante.Properties.ListSource := abrir_tabela(_representante);
  cbxcdcondpagto.Properties.ListSource     := abrir_tabela(_condpagto+_s);
  TcxLookupComboBoxProperties(tbvCDTPGRADEVALOR.Properties).ListSource             := abrir_tabela(_tpgradevalor);
  TcxLookupComboBoxProperties(tbvCDSTEMBARQUE.Properties).ListSource               := abrir_tabela(_stembarque);
  TcxLookupComboBoxProperties(tbvCDTPREVISAOCOMERCIAL.Properties).ListSource       := abrir_tabela(_tprevisaocomercial);
  TcxLookupComboBoxProperties(tbvordproducaoCDSTORDPRODUCAO.Properties).ListSource := abrir_tabela(_stordproducao);
  TcxLookupComboBoxProperties(tbvordproducaoCDTPORDPRODUCAO.Properties).ListSource := abrir_tabela(_tpordproducao);
  TcxLookupComboBoxProperties(tbvCDtransportadora.Properties).ListSource           := abrir_tabela(_transportadora);
  TcxLookupComboBoxProperties(tbvCDTPVOLUME.Properties).ListSource                 := abrir_tabela(_tpvolume);
  TcxLookupComboBoxProperties(tbvCDtpitpedido.Properties).ListSource               := abrir_tabela(_tpitpedido);
end;

procedure TfrmPedido.tbvQTATENDIDACustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  cqtatendida, cqtitem : TcxGridDBBandedColumn;
  qtatendida, qtitem : Double;
begin
  cqtatendida := tbvQTATENDIDA;
  cqtitem     := tbvQTitem;
  qtatendida  := StrToFloat(AViewInfo.GridRecord.DisplayTexts[cqtatendida.Index]);
  qtitem      := StrToFloat(AViewInfo.GridRecord.DisplayTexts[cqtitem.Index]);
  if qtatendida >= qtitem then
  begin
    ACanvas.Font.Color := clblue;
    ACanvas.Font.Style := [fsBold];
  end
  else if qtatendida > 0 then
  begin
    ACanvas.Font.Color := clgreen;
    ACanvas.Font.Style := [fsBold];
  end;
end;

function TfrmPedido.CheckDuplicidadeNumeroPedido: Boolean;
begin
  //result := cdsNUPEDIDO.AsString <> _0;
  //if not result then
  //begin
    //exit;
  //end;
  result := RetornaSQLInteger('select count(*) from pedido where cdempresa='+cds.fieldbyname(_CDEMPRESA).AsString+' and cdpedido<>'+cdscdpedido.asstring+' and nupedido='+quotedstr(cdsNUPEDIDO.AsString))>0;
end;

procedure TfrmPedido.TravarPedidoAtendido;
var
  botravar : Boolean;
begin
  botravar := False;
  cdsdetail.DisableControls;
  try
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      botravar := cdsdetailQTATENDIDA.AsFloat >= cdsdetailQTITEM.AsFloat;
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

procedure TfrmPedido.actdetailExecute(Sender: TObject);
begin
  grd.SetFocus;
end;

procedure TfrmPedido.lblcdclienteDblClick(Sender: TObject);
begin
  actAbrircliente.onExecute(actAbrircliente);
end;

procedure TfrmPedido.edtCDCLIENTEEnter(Sender: TObject);
begin
  colorenter(sender);
end;

procedure TfrmPedido.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsdetail, key);
  if (key = __KeySearch) and (LowerCase(tbv.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cddigitado) then
  begin
    tbvCDDIGITADOPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmPedido.tbvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_pedido, cdsdetail, true);
end;

procedure TfrmPedido.tbvCDFORNECEDORPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
//
end;

procedure TfrmPedido.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(_pedido, cds.fieldbyname(_cdpedido).AsString);
end;

procedure TfrmPedido.actgerarrimExecute(Sender: TObject);
var
  rim : TRim;
  cdretorno : Integer;
begin
  rim := trim.create;
  try
    cdretorno := rim.gerar_rim(_pedido, cds.fieldbyname(_cdpedido).AsInteger);
    if cdretorno > 0 then
    begin
      MessageDlg('Requisição '+inttostr(rim.cdrim)+' gerada.', mtInformation, [mbOK], 0);
      abrir(cds.fieldbyname(_cdpedido).AsInteger);
    end
    else if cdretorno = -1 then
    begin
      MessageDlg('Requisição já foi gerada.', mtInformation, [mbOK], 0);
    end
    else if cdretorno = -2 then
    begin
      MessageDlg('Não existe matéria-prima para gerar Requisição.', mtInformation, [mbOK], 0);
    end;
  finally
    FreeAndNil(rim);
  end;
end;

procedure TfrmPedido.cdsdetailCDORCAMENTOValidate(Sender: TField);
var
  q : tclassequery;
begin
  if sender.isnull then
  begin
    sender.DataSet.fieldbyname(_cditorcamento).clear;
    exit;
  end;
  if not CodigoExiste(_orcamento, sender.asstring) then
  begin
    messagedlg('Código '+sender.asstring+'do orçamento inexistente.', mtinformation, [mbok], 0);
    abort;
  end;
  if sender.dataset.fieldbyname(_cdproduto).isnull then // se não existe o produto inserido na grade dá erro
  begin
    messagedlg('Favor informar o produto antes de informar o orçamento.', mtinformation, [mbok], 0);
    abort;
  end;
  q := tclassequery.create('select cditorcamento,qtitem,DTPRVENTREGA from itorcamento where cdempresa='+empresa.cdempresa.tostring+' and cdorcamento='+sender.asstring+' and cdproduto='+sender.dataset.fieldbyname(_cdproduto).asstring);
  try
    if q.q.recordcount = 0 then
    begin
      messagedlg('Produto '+sender.dataset.fieldbyname(_cddigitado).asstring+' não existe no orçamento '+sender.asstring+'.', mtinformation, [mbok], 0);
      abort;
    end;
    if q.q.recordcount = 1 then
    begin
      sender.dataset.fieldbyname(_cditorcamento).asstring := q.q.fieldbyname(_cditorcamento).asstring;
      exit;
    end;
    sender.dataset.fieldbyname(_cditorcamento).AsInteger := selecionar_Entrada(_itorcamento, sender.asstring, sender.dataset.fieldbyname(_cdproduto).asinteger);
  finally
    freeandnil(q);
  end;
end;

procedure TfrmPedido.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmPedido.actloteserieExecute(Sender: TObject);
begin
  Loteserie(_pedido, '', cdsdetailCDPRODUTO.AsString, cdsitpedidolote);
end;

procedure TfrmPedido.actexibirestruturaExecute(Sender: TObject);
begin
  pgcsub.Visible := btnexibirestrutura.down;
  tbsestrutura.tabvisible := btnexibirestrutura.down;
  splordproducao.Visible := btnexibirestrutura.down;
  if tbsestrutura.tabvisible then
  begin
    pgcsub.ActivePage := tbsestrutura;
  end;
end;

procedure TfrmPedido.cdsitpedidoestruturaAfterPost(DataSet: TDataSet);
begin
  AtualizarDsestruturaItpedido;
end;

procedure TfrmPedido.cdsitpedidoestruturaBeforePost(DataSet: TDataSet);
begin
  if (Dataset.State = dsinsert) and cdsitpedidoestruturaCDITPEDIDOESTRUTURA.isnull then
  begin
    cdsitpedidoestruturaCDITPEDIDOESTRUTURA.AsString := GerarCodigo(_itpedidoestrutura);
  end;
  if cdsitpedidoestruturaNUESTRUTURAL.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__numero+' '+_estrutura]), mtinformation, [mbok], 0);
    abort;
  end;
  RegistraInformacao_(dataset);
end;

procedure TfrmPedido.AtualizarDsestruturaItpedido;
var
  c : TClientDataSet;
  texto : string;
  recno : Integer;
begin
  texto := '';
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsitpedidoestrutura, false);
    recno := cdsitpedidoestrutura.RecNo;
    c.First;
    while not c.Eof do
    begin
      if texto <> '' then
      begin
        texto := texto + ', ';
      end;
      texto := texto + c.fieldbyname(_nuestrutural).AsString;
      c.Next;
    end;
    if (cdsdetail.State <> dsedit) and (cdsdetail.State <> dsinsert) then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailDSESTRUTURA.AsString := texto;
    //cdsdetail.Post;
    cdsitpedidoestrutura.RecNo := recno;
  finally
    c.Free;
  end;
end;

procedure TfrmPedido.cdsitpedidoestruturaAfterDelete(DataSet: TDataSet);
begin
  AtualizarDsestruturaItpedido;
end;

procedure TfrmPedido.AtualizarDsestruturaPedido;
var
  c : TClientDataSet;
  texto : string;
  recno : Integer;
begin
  texto := '';
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsdetail, false);
    recno := cdsdetail.RecNo;
    c.First;
    while not c.Eof do
    begin
      if texto <> '' then
      begin
        texto := texto + #13;
      end;
      texto := texto + c.fieldbyname(_nmproduto).asstring+'==>> '+c.fieldbyname(_dsestrutura).AsString;
      c.Next;
    end;
    cdsDSESTRUTURA.AsString := texto;
    cdsdetail.RecNo := recno;
  finally
    c.Free;
  end;
end;

procedure TfrmPedido.AtualizarPedidoDuplicata;
var
  i : Integer;
begin
  if cdspedidoduplicata.RecordCount > 0 then
  begin
    cdspedidoduplicata.First;
    while not cdspedidoduplicata.Eof do
    begin
      cdspedidoduplicata.Delete;
    end;
  end;
  for i := 0 to pedido.condpagto.parcela.Count - 1 do
  begin
    cdspedidoduplicata.Insert;
    cdspedidoduplicata.FieldByName(_cdpedidoduplicata).AsString   := GerarCodigo(_pedidoduplicata);
    cdspedidoduplicata.FieldByName(_cdpedido).AsInteger           := pedido.pedidoduplicata.Items[i].cdpedido;
    cdspedidoduplicata.FieldByName(_dtprorrogacao).AsDateTime     := pedido.PedidoDuplicata.Items[i].dtprorrogacao;
    cdspedidoduplicata.FieldByName(_dtemissao).AsDateTime         := pedido.PedidoDuplicata.Items[i].dtemissao;
    cdspedidoduplicata.FieldByName(_vlsaldo).AsCurrency           := pedido.PedidoDuplicata.Items[i].vlsaldo;
    cdspedidoduplicata.FieldByName(_vlpedidoduplicata).AsCurrency := pedido.PedidoDuplicata.Items[i].vlpedidoduplicata;
    cdspedidoduplicata.Post;
  end;
end;

procedure TfrmPedido.tbvDTEMBARQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBANDEDColumn;
begin
  Column := tbvNUCORDTEMBARQUE;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
    ACanvas.Font.Style := [fsBold]
  end;
end;

procedure TfrmPedido.tbvCDSTEMBARQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBANDEDColumn;
begin
  Column := tbvNUCORSTEMBARQUE;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmPedido.tbvDTEMBARQUEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  if dlgColor1.Execute then
  begin
    if (cdsdetail.State <> dsedit) and (cdsdetail.State <> dsinsert) then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailnucordtembarque.asinteger := dlgColor1.Color;
  end;
end;

procedure TfrmPedido.cdsitpedidoestruturaNewRecord(DataSet: TDataSet);
begin
  cdsitpedidoestruturaBOFATURADO.AsString := _n;
end;

procedure TfrmPedido.acthitpedidoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, _hitpedido)), cdsdetailCDITPEDIDO.AsInteger, _cditpedido);
end;

procedure TfrmPedido.cdsdetailCDSTEMBARQUEValidate(Sender: TField);
var
  dsjustificativa: string;
begin
  if (Sender.AsString = '') or (not BooleandoCodigo(_stembarque, sender.AsString, _BOJUSTIFICATIVASTATUS)) then
  begin
    Exit;
  end;
  dsjustificativa := '';
  if not DialogoJustificativa('Justificativa de Alteração de Status', dsjustificativa) then
  begin
    MessageDlg('Justificativa de alteração de status é obrigatório.', mtInformation, [mbOK], 0);
    abort;
  end;
  cdsdetailDSJUSTIFICATIVA.AsString := dsjustificativa;
end;

procedure TfrmPedido.cdsdetailALISSValidate(Sender: TField);
begin
  if pedido.tppedido.boiss = _s then
  begin
    Sender.DataSet.FieldByName(_vliss).AsCurrency := sender.AsFloat * sender.DataSet.fieldbyname(_vltotal).AsCurrency / 100;
  end;
end;

end.
