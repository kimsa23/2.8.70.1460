unit uOrdCompra;

interface

uses
  System.Actions, System.UITypes,
  forms, ComCtrls, ToolWin, ExtCtrls, Mask, Controls, Buttons, sysutils, windows,
  Graphics, dialogs, StdCtrls, Classes, ActnList, Menus,
  FMTBcd, DB, DBClient, Provider, DBCtrls, SqlExpr, Grids,
  urotinas, udatahora, ustrings, ulocalizarproduto, uExportarExcel,
  ulocalizarFuncionario, ulocalizarFornecedor, uconstantes, ulocalizar,
  uregistro, unovoproduto,
  classeordproducao, classeRegistro, classegerar, classeconsiste, classeregistrainformacao,
  classeproduto, classeform, classeemail, classeretornasql, classeordcompra, classecondpagto,
  classeexecutasql, classeusuario, classefornecedor, classeempresa,
  classeaplicacao, classetransportadora, classequery, classepedidomaterial,
  cxLookAndFeelPainters, cxTextEdit, cxMemo, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxPC, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxDBEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxButtonEdit, cxCalc, cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, cxDBLabel, cxSpinEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxSplitter, cxRichEdit,
  cxBlobEdit, cxCheckBox, cxPCdxBarPopupMenu, cxNavigator, dxBarBuiltInMenu;

type
  TfrmOrdCompra = class(TForm)
    pnl: TPanel;
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
    actGerarCompra: TAction;
    actAbrirFornecedor: TAction;
    actAbrirTransportadora: TAction;
    actAbrirProduto: TAction;
    actfechar: TAction;
    actimprimirModelo1: TAction;
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
    dxBarButton1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblcondpagto: TLabel;
    gbxfornecedor: TcxGroupBox;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    sdsdetailCDITORDCOMPRA: TIntegerField;
    sdsdetailCDORDCOMPRA: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDTPAPLICACAO: TIntegerField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailQTITEM: TFloatField;
    sdsdetailQTATENDIDA: TFloatField;
    sdsdetailVLUNITARIO: TFMTBCDField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailALICMS: TFloatField;
    sdsdetailVLICMS: TFMTBCDField;
    sdsdetailALIPI: TFloatField;
    sdsdetailVLIPI: TFMTBCDField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailNMPRODUTO: TStringField;
    sdsdetailNMTPAPLICACAO: TStringField;
    edtcodigo: TcxTextEdit;
    cdsdetailCDITORDCOMPRA: TIntegerField;
    cdsdetailCDORDCOMPRA: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDTPAPLICACAO: TIntegerField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailQTITEM: TFloatField;
    cdsdetailQTATENDIDA: TFloatField;
    cdsdetailVLUNITARIO: TFMTBCDField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailALICMS: TFloatField;
    cdsdetailVLICMS: TFMTBCDField;
    cdsdetailALIPI: TFloatField;
    cdsdetailVLIPI: TFMTBCDField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailNMPRODUTO: TStringField;
    cdsdetailNMTPAPLICACAO: TStringField;
    edtdtemissao: TcxDBDateEdit;
    edtdtentrega: TcxDBDateEdit;
    lbltpordcompra: TLabel;
    edtnudias: TcxDBSpinEdit;
    lblnudias: TLabel;
    Label17: TLabel;
    txtnmstordcompra: TcxDBLabel;
    gbxentrega: TcxGroupBox;
    Label6: TLabel;
    Label9: TLabel;
    gbxcotacao: TcxGroupBox;
    Label15: TLabel;
    Label18: TLabel;
    gbxAprovacao: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    edtdtaprovacao: TcxDBDateEdit;
    Panel1: TPanel;
    lbl1: TLabel;
    lblvltotal: TLabel;
    sdsCDORDCOMPRA: TIntegerField;
    sdsCDSTORDCOMPRA: TIntegerField;
    sdsCDPEDIDOMATERIAL: TIntegerField;
    sdsCDTPORDCOMPRA: TIntegerField;
    sdsCDCONDPAGTO: TIntegerField;
    sdsCDFUNCIONARIOSOLICITANTE: TIntegerField;
    sdsCDFUNCIONARIOAPROVACAO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDFUNCIONARIOCONTATO: TIntegerField;
    sdsCDTPAPLICACAO: TIntegerField;
    sdsCDTPCOBRANCA: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDTENTREGA: TDateField;
    sdsDTAPROVACAO: TDateField;
    sdsNUDIAS: TIntegerField;
    sdsNUSOLICITACAO: TStringField;
    sdsVLTOTAL: TFMTBCDField;
    sdsPRENTREGA: TStringField;
    sdsALIPI: TFloatField;
    sdsALICMS: TFloatField;
    sdsDSOBSERVACAO: TBlobField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsVLFRETE: TFMTBCDField;
    sdsNMSTORDCOMPRA: TStringField;
    sdsNUCOTACAO: TIntegerField;
    cdsCDORDCOMPRA: TIntegerField;
    cdsCDSTORDCOMPRA: TIntegerField;
    cdsCDPEDIDOMATERIAL: TIntegerField;
    cdsCDTPORDCOMPRA: TIntegerField;
    cdsCDCONDPAGTO: TIntegerField;
    cdsCDFUNCIONARIOSOLICITANTE: TIntegerField;
    cdsCDFUNCIONARIOAPROVACAO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDFUNCIONARIOCONTATO: TIntegerField;
    cdsCDTPAPLICACAO: TIntegerField;
    cdsCDTPCOBRANCA: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDTENTREGA: TDateField;
    cdsDTAPROVACAO: TDateField;
    cdsNUDIAS: TIntegerField;
    cdsNUSOLICITACAO: TStringField;
    cdsVLTOTAL: TFMTBCDField;
    cdsPRENTREGA: TStringField;
    cdsALIPI: TFloatField;
    cdsALICMS: TFloatField;
    cdsDSOBSERVACAO: TBlobField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsVLFRETE: TFMTBCDField;
    cdsNMSTORDCOMPRA: TStringField;
    cdsNUCOTACAO: TIntegerField;
    cdssdsdetail: TDataSetField;
    sdsdetailDTPREVENTREGA: TDateField;
    cdsdetailDTPREVENTREGA: TDateField;
    dxBarButton3: TdxBarButton;
    actimprimirmodelo2: TAction;
    actimprimirmodelo3: TAction;
    dxBarButton4: TdxBarButton;
    lblnusolicitacao: TLabel;
    edtnusolicitacao: TcxDBTextEdit;
    sdsDSSOLICITANTE: TStringField;
    cdsDSSOLICITANTE: TStringField;
    edtdssolicitante: TcxDBTextEdit;
    cbxcdtpordcompra: TcxDBLookupComboBox;
    edtcdfornecedor: TcxDBButtonEdit;
    cbxcdcondpagto: TcxDBLookupComboBox;
    cbxCDFUNCIONARIOCONTATO: TcxDBLookupComboBox;
    cbxCDFUNCIONARIOAPROVACAO: TcxDBLookupComboBox;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    mem1: TcxDBMemo;
    grd: TcxGrid;
    tbv: TcxGridDBBandedTableView;
    tbvCDDIGITADO: TcxGridDBBandedColumn;
    tbvNMPRODUTO: TcxGridDBBandedColumn;
    tbvQTITEM: TcxGridDBBandedColumn;
    tbvQTATENDIDA: TcxGridDBBandedColumn;
    tbvVLUNITARIO: TcxGridDBBandedColumn;
    tbvVLTOTAL: TcxGridDBBandedColumn;
    tbvALICMS: TcxGridDBBandedColumn;
    tbvVLICMS: TcxGridDBBandedColumn;
    tbvALIPI: TcxGridDBBandedColumn;
    tbvVLIPI: TcxGridDBBandedColumn;
    tbvCDTPAPLICACAO: TcxGridDBBandedColumn;
    tbvNMTPAPLICACAO: TcxGridDBBandedColumn;
    tbvDTPREVENTREGA: TcxGridDBBandedColumn;
    grlLevel1: TcxGridLevel;
    sdsdetailDSFORMULA: TStringField;
    cdsdetailDSFORMULA: TStringField;
    sdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailDSOBSERVACAO: TBlobField;
    tbvDSFORMULA: TcxGridDBBandedColumn;
    tbvDSOBSERVACAO: TcxGridDBBandedColumn;
    cbxcdcntcustoentrega: TcxDBLookupComboBox;
    cbxcdtpaplicacao: TcxDBLookupComboBox;
    cbxcdtpcobranca: TcxDBLookupComboBox;
    Label23: TLabel;
    cbxcdfuncionariosolicitante: TcxDBLookupComboBox;
    sdsCDFINALIDADEORDCOMPRA: TIntegerField;
    sdsCDTPFORNECEDOR: TIntegerField;
    sdsCDCNTCUSTOENTREGA: TIntegerField;
    sdsDSAPLICACAO: TStringField;
    sdsDSLOCAL: TStringField;
    cdsCDFINALIDADEORDCOMPRA: TIntegerField;
    cdsCDTPFORNECEDOR: TIntegerField;
    cdsCDCNTCUSTOENTREGA: TIntegerField;
    cdsDSAPLICACAO: TStringField;
    cdsDSLOCAL: TStringField;
    edtdsaplicacao: TcxDBTextEdit;
    edtdslocal: TcxDBTextEdit;
    txtnmfornecedor: TDBText;
    sdsNMFORNECEDOR: TStringField;
    cdsNMFORNECEDOR: TStringField;
    sdsNMFORNECEDORTRANSPORTADORA: TStringField;
    cdsNMFORNECEDORTRANSPORTADORA: TStringField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsdetailCDCNTCUSTO: TIntegerField;
    sdsdetailBOCERTIFICADO: TStringField;
    sdsdetailVLDESCONTO: TFMTBCDField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsdetailCDCNTCUSTO: TIntegerField;
    cdsdetailBOCERTIFICADO: TStringField;
    cdsdetailVLDESCONTO: TFMTBCDField;
    lbldesconto: TLabel;
    edtvldesconto: TcxDBCalcEdit;
    actavaliacaoiqf: TAction;
    btn1: TdxBarLargeButton;
    sdsdetailCDITPEDIDO: TIntegerField;
    cdsdetailCDITPEDIDO: TIntegerField;
    tbvCDORDPRODUCAO: TcxGridDBBandedColumn;
    actimprimirmodelo4: TAction;
    dxBarButton2: TdxBarButton;
    tbvNUCNTCUSTO: TcxGridDBBandedColumn;
    lblvendedor: TLabel;
    sdsCDITCONTFORNECEDOR: TIntegerField;
    cdsCDITCONTFORNECEDOR: TIntegerField;
    cbxcditcontfornecedor: TcxDBLookupComboBox;
    lblemail: TDBText;
    sdsitcontfornecedor: TSQLDataSet;
    dspitcontfornecedor: TDataSetProvider;
    cdsitcontfornecedor: TClientDataSet;
    dtsitcontfornecedor: TDataSource;
    sdsEMAIL: TStringField;
    cdsEMAIL: TStringField;
    actemail: TAction;
    dxBarButton6: TdxBarButton;
    actemailmodelo4: TAction;
    actemailmodelo1: TAction;
    actemailmodelo2: TAction;
    actemailmodelo3: TAction;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    sdsVLICMSSUBTRIB: TFMTBCDField;
    sdsdetailVLICMSSUBTRIB: TFMTBCDField;
    cdsVLICMSSUBTRIB: TFMTBCDField;
    cdsdetailVLICMSSUBTRIB: TFMTBCDField;
    tbvVLICMSSUBTRIB: TcxGridDBBandedColumn;
    tbsautpagto: TcxTabSheet;
    sdsordcompraautpagto: TSQLDataSet;
    cdsordcompraautpagto: TClientDataSet;
    dtsordcompraautpagto: TDataSource;
    sdsordcompraautpagtoCDORDCOMPRAAUTPAGTO: TIntegerField;
    sdsordcompraautpagtoCDORDCOMPRA: TIntegerField;
    sdsordcompraautpagtoVLORDCOMPRAAUTPAGTO: TFMTBCDField;
    sdsordcompraautpagtoDTPRORROGACAO: TDateField;
    sdsordcompraautpagtoCDUSUARIOI: TIntegerField;
    sdsordcompraautpagtoCDUSUARIOA: TIntegerField;
    sdsordcompraautpagtoCDCOMPUTADORI: TIntegerField;
    sdsordcompraautpagtoCDCOMPUTADORA: TIntegerField;
    sdsordcompraautpagtoTSINCLUSAO: TSQLTimeStampField;
    sdsordcompraautpagtoTSALTERACAO: TSQLTimeStampField;
    sdsordcompraautpagtoDTEMISSAO: TDateField;
    sdsordcompraautpagtoVLSALDO: TFMTBCDField;
    cdssdsordcompraautpagto: TDataSetField;
    cdsordcompraautpagtoCDORDCOMPRAAUTPAGTO: TIntegerField;
    cdsordcompraautpagtoCDORDCOMPRA: TIntegerField;
    cdsordcompraautpagtoVLORDCOMPRAAUTPAGTO: TFMTBCDField;
    cdsordcompraautpagtoDTPRORROGACAO: TDateField;
    cdsordcompraautpagtoCDUSUARIOI: TIntegerField;
    cdsordcompraautpagtoCDUSUARIOA: TIntegerField;
    cdsordcompraautpagtoCDCOMPUTADORI: TIntegerField;
    cdsordcompraautpagtoCDCOMPUTADORA: TIntegerField;
    cdsordcompraautpagtoTSINCLUSAO: TSQLTimeStampField;
    cdsordcompraautpagtoTSALTERACAO: TSQLTimeStampField;
    cdsordcompraautpagtoDTEMISSAO: TDateField;
    cdsordcompraautpagtoVLSALDO: TFMTBCDField;
    grdordcompraautapgto: TcxGrid;
    btvordcompraautpagto: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    btvordcompraautpagtoVLORDCOMPRAAUTPAGTO: TcxGridDBBandedColumn;
    btvordcompraautpagtoDTPRORROGACAO: TcxGridDBBandedColumn;
    sdsdetailBOIPIBCICMS: TStringField;
    cdsdetailBOIPIBCICMS: TStringField;
    tbvBOIPIBCICMS: TcxGridDBBandedColumn;
    lblPedidoMaterial: TLabel;
    txtcdpedidomaterial: TcxDBLabel;
    Label16: TLabel;
    Label10: TLabel;
    txtNMFORNECEDORTRANSPORTADORA: TDBText;
    lbl2: TLabel;
    cbxcdtpfrete: TcxDBLookupComboBox;
    edtvlfrete: TcxDBCalcEdit;
    edtcdfornecedortransportadora: TcxDBButtonEdit;
    lblclfornecedor: TLabel;
    txtnmclfornecedor: TDBText;
    sdsNMCLFORNECEDOR: TStringField;
    cdsNMCLFORNECEDOR: TStringField;
    sdsdetailQTPECA: TFloatField;
    sdsdetailQTPESOUNITARIO: TFloatField;
    cdsdetailQTPECA: TFloatField;
    cdsdetailQTPESOUNITARIO: TFloatField;
    tbvQTPECA: TcxGridDBBandedColumn;
    tbvQTPESOUNITARIO: TcxGridDBBandedColumn;
    sdsBOCERTIFICADO: TStringField;
    cdsBOCERTIFICADO: TStringField;
    ckbbocertificado: TcxDBCheckBox;
    sdsdetailVLPECA: TFMTBCDField;
    cdsdetailVLPECA: TFMTBCDField;
    tbvVLPECA: TcxGridDBBandedColumn;
    actcopiar: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    actatendido: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    tbsentrada: TcxTabSheet;
    grdconsultaDBTableView1: TcxGridDBTableView;
    grdconsultaLevel1: TcxGridLevel;
    grdconsulta: TcxGrid;
    sdsconsulta: TSQLDataSet;
    cdsconsulta: TClientDataSet;
    dtsconsulta: TDataSource;
    sdsconsultaCDENTRADA: TIntegerField;
    sdsconsultaNUENTRADA: TIntegerField;
    sdsconsultaDTEMISSAO: TDateField;
    sdsconsultaDTENTRADA: TDateField;
    sdsconsultaVLTOTAL: TFMTBCDField;
    sdsconsultaVLICMS: TFMTBCDField;
    sdsconsultaVLIPI: TFMTBCDField;
    cdssdsconsulta: TDataSetField;
    cdsconsultaCDENTRADA: TIntegerField;
    cdsconsultaNUENTRADA: TIntegerField;
    cdsconsultaDTEMISSAO: TDateField;
    cdsconsultaDTENTRADA: TDateField;
    cdsconsultaVLTOTAL: TFMTBCDField;
    cdsconsultaVLICMS: TFMTBCDField;
    cdsconsultaVLIPI: TFMTBCDField;
    grdconsultaDBTableView1NUENTRADA: TcxGridDBColumn;
    grdconsultaDBTableView1DTEMISSAO: TcxGridDBColumn;
    grdconsultaDBTableView1DTENTRADA: TcxGridDBColumn;
    grdconsultaDBTableView1VLTOTAL: TcxGridDBColumn;
    grdconsultaDBTableView1VLICMS: TcxGridDBColumn;
    grdconsultaDBTableView1VLIPI: TcxGridDBColumn;
    actabrirentrada: TAction;
    actreabrir: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    actabrirordproducao: TAction;
    tbvBOCERTIFICADO: TcxGridDBBandedColumn;
    actdeclinar: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    actabrirtpordcompra: TAction;
    actabrircondpagto: TAction;
    sdsdetailNUKMATUAL: TIntegerField;
    cdsdetailNUKMATUAL: TIntegerField;
    sdsdetailNUKMFINAL: TIntegerField;
    cdsdetailNUKMFINAL: TIntegerField;
    tbvNUKMATUAL: TcxGridDBBandedColumn;
    tbvNUKMFINAL: TcxGridDBBandedColumn;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    btnemail: TdxBarLargeButton;
    pumemail: TdxBarPopupMenu;
    sdsdetailCDPLCONTA: TIntegerField;
    sdsdetailNUPLCONTA: TStringField;
    cdsdetailCDPLCONTA: TIntegerField;
    cdsdetailNUPLCONTA: TStringField;
    sdsdetailNMPLCONTA: TStringField;
    cdsdetailNMPLCONTA: TStringField;
    tbvNUPLCONTA: TcxGridDBBandedColumn;
    tbvNMPLCONTA: TcxGridDBBandedColumn;
    sdsNMTRANSPORTADORA: TStringField;
    cdsNMTRANSPORTADORA: TStringField;
    actopcoes: TAction;
    btnopcoes: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    actarquivo: TAction;
    dxBarButton5: TdxBarButton;
    sdsPSFRETE: TFloatField;
    cdsPSFRETE: TFloatField;
    lblPSFRETE: TLabel;
    edtPSFRETE: TcxDBCalcEdit;
    actaprovacao: TAction;
    dxBarButton10: TdxBarButton;
    sdsBOFINANCEIRO: TStringField;
    cdsBOFINANCEIRO: TStringField;
    sdsBOCONTROLERECEBIMENTO: TStringField;
    cdsBOCONTROLERECEBIMENTO: TStringField;
    sdsCDTPFRETE: TStringField;
    cdsCDTPFRETE: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDFORNECEDORTRANSPORTADORA: TLargeintField;
    sdsCDFORNECEDOR: TLargeintField;
    sdsCDTPIPI: TIntegerField;
    sdsCDTRANSPORTADORA: TLargeintField;
    sdsDTFECHAMENTO: TDateField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsdetailNUITORDCOMPRA: TIntegerField;
    sdsdetailNUCNTCUSTO: TStringField;
    sdsordcompraautpagtoCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDFORNECEDORTRANSPORTADORA: TLargeintField;
    cdsCDFORNECEDOR: TLargeintField;
    cdsCDTPIPI: TIntegerField;
    cdsCDTRANSPORTADORA: TLargeintField;
    cdsDTFECHAMENTO: TDateField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsdetailNUITORDCOMPRA: TIntegerField;
    cdsdetailNUCNTCUSTO: TStringField;
    cdsordcompraautpagtoCDEMPRESA: TLargeintField;
    tbvNMCNTCUSTO: TcxGridDBBandedColumn;
    sdsdetailNMCNTCUSTO: TStringField;
    cdsdetailNMCNTCUSTO: TStringField;
    sdsdetailCDORDPRODUCAO: TIntegerField;
    cdsdetailCDORDPRODUCAO: TIntegerField;
    tbvNUCLFISCAL: TcxGridDBBandedColumn;
    tbvnusticms: TcxGridDBBandedColumn;
    cdsdetailNUCLFISCAL: TStringField;
    cdsdetailNUSTICMS: TStringField;
    sdsdetailNUCLFISCAL: TStringField;
    sdsdetailNUSTICMS: TStringField;
    sdsdetailCDORCAMENTO: TIntegerField;
    cdsdetailCDORCAMENTO: TIntegerField;
    tbvCDORCAMENTO: TcxGridDBBandedColumn;
    actabrirorcamento: TAction;
    procedure actNovoExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdfornecedortransportadoraExit(Sender: TObject);
    procedure actGerarCompraExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actAbrirFornecedorExecute(Sender: TObject);
    procedure actAbrirTransportadoraExecute(Sender: TObject);
    procedure edtcdfornecedortransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actAbrirProdutoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actimprimirModelo1Execute(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure edtcdfornecedortransportadoraPropertiesButtonClick( Sender: TObject; AButtonIndex: Integer);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure colDBBandedTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsCDTPORDCOMPRAValidate(Sender: TField);
    procedure cdsCDCONDPAGTOValidate(Sender: TField);
    procedure cdsdetailQTITEMValidate(Sender: TField);
    procedure colDBBandedTableView1CDTPAPLICACAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnudiasExit(Sender: TObject);
    procedure edtdtentregaExit(Sender: TObject);
    procedure cdsCDFORNECEDORValidate(Sender: TField);
    procedure cdsCDFORNECEDORTRANSPORTADORAValidate(Sender: TField);
    procedure cdsdetailALICMSValidate(Sender: TField);
    procedure cdsdetailALIPIValidate(Sender: TField);
    procedure cdsdetailAfterPost(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actimprimirmodelo2Execute(Sender: TObject);
    procedure actimprimirmodelo3Execute(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure colorEnter(Sender: TObject);
    procedure colorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDTPAPLICACAOValidate(Sender: TField);
    procedure cdsVLDESCONTOValidate(Sender: TField);
    procedure cdsVLFRETEValidate(Sender: TField);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoPropertiesChange(Sender: TObject);
    procedure edtcdfornecedorPropertiesChange(Sender: TObject);
    procedure txtnmfornecedorDblClick(Sender: TObject);
    procedure actavaliacaoiqfExecute(Sender: TObject);
    procedure actimprimirmodelo4Execute(Sender: TObject);
    procedure cdsCDITCONTFORNECEDORValidate(Sender: TField);
    procedure actemailmodelo4Execute(Sender: TObject);
    procedure actemailExecute(Sender: TObject);
    procedure actemailmodelo1Execute(Sender: TObject);
    procedure actemailmodelo2Execute(Sender: TObject);
    procedure actemailmodelo3Execute(Sender: TObject);
    procedure cdsordcompraautpagtoNewRecord(DataSet: TDataSet);
    procedure cdsDTENTREGAChange(Sender: TField);
    procedure cdsordcompraautpagtoBeforePost(DataSet: TDataSet);
    procedure tbvQTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailQTPECAValidate(Sender: TField);
    procedure cdsCDTPFRETEValidate(Sender: TField);
    procedure cdsdetailVLPECAValidate(Sender: TField);
    procedure actcopiarExecute(Sender: TObject);
    procedure actatendidoExecute(Sender: TObject);
    procedure cbxcdcondpagtoEnter(Sender: TObject);
    procedure cbxcdtpordcompraEnter(Sender: TObject);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure cbxcdcntcustoentregaEnter(Sender: TObject);
    procedure cbxCDFUNCIONARIOCONTATOEnter(Sender: TObject);
    procedure cbxcdtpaplicacaoEnter(Sender: TObject);
    procedure cbxcdfuncionariosolicitanteEnter(Sender: TObject);
    procedure cbxCDFUNCIONARIOAPROVACAOEnter(Sender: TObject);
    procedure grdconsultaDBTableView1DblClick(Sender: TObject);
    procedure actabrirentradaExecute(Sender: TObject);
    procedure actreabrirExecute(Sender: TObject);
    procedure tbvCDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDORDPRODUCAOValidate(Sender: TField);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actdeclinarExecute(Sender: TObject);
    procedure lbltpordcompraDblClick(Sender: TObject);
    procedure actabrirtpordcompraExecute(Sender: TObject);
    procedure lblcondpagtoDblClick(Sender: TObject);
    procedure actabrircondpagtoExecute(Sender: TObject);
    procedure cdsdetailNUKMATUALValidate(Sender: TField);
    procedure cdsdetailNUKMFINALValidate(Sender: TField);
    procedure tbvNUPLCONTAPropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cdsdetailNUPLCONTAValidate(Sender: TField);
    procedure cdsCDTRANSPORTADORAValidate(Sender: TField);
    procedure actopcoesExecute(Sender: TObject);
    procedure actarquivoExecute(Sender: TObject);
    procedure actaprovacaoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure tbvNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailNUCNTCUSTOValidate(Sender: TField);
    procedure tbvCDORCAMENTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDORCAMENTOValidate(Sender: TField);
    procedure actabrirorcamentoExecute(Sender: TObject);
  private      { Private declarations }
    tbl : string;
    fornecedor : tfornecedor;
    produto    : TProduto;
    ordcompra  : TOrdcompra;
    procedure atualizar_total;
    procedure Exibir_total;
    procedure setrecord(cdtp:integer);
    procedure atualizarContatofornecedor;
    function  getemail:string;
    function  ordcompraNaoAtendidoCompletamente:Boolean;
    function  statusAtendimento:string;
    procedure travarOrdcompraAtendida;
    procedure set_observacao;
    function get_index(nome: string; tbv: TcxGridDBBandedTableView): Integer;
    procedure AbrirTabelas;
    procedure AtualizarOrdCompraAutpagto;
  public  { Public declarations }
    registro   : TRegistro;
    function  Abrir(codigo:integer):boolean;
    procedure Novo(cdpedidomaterial: Integer; cdfornecedor: LargeInt; cdtpordcompra: integer; bonovo:boolean);overload;
  end;

var
  frmOrdCompra: TfrmOrdCompra;

implementation

uses UMain,
  uGerarCompra,
  uDtmMain,
  uimprimirrelatoriopadrao,
  udlgcalculopeso,
  udlgavaliacaoiqf,
  ulocalizarordproducao,
  uMenuRelatorio,
  classeeventoemail,
  ulocalizarTransportadora,
  udlgarquivo,
  udlgordcompraaprovacao, classeorcamento;

{$R *.DFM}

const
  exibe    = 'Ordem de Compra';
  artigoI  = 'a';

procedure TfrmOrdCompra.actNovoExecute(Sender: TObject);
begin
  if registro.novo(sender) then
  begin
    lblvltotal.Caption := '';
  end;
end;

procedure TfrmOrdCompra.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

function TfrmOrdCompra.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmOrdCompra.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmOrdCompra.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmOrdCompra.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmOrdCompra.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmOrdCompra.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmOrdCompra.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmOrdCompra.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  edtdtemissao.SetFocus;
end;

procedure TfrmOrdCompra.actSalvarExecute(Sender: TObject);
begin
  if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
  begin
    cdsdetail.Post;
  end;
  atualizar_total;
  if cdsVLTOTAL.AsCurrency <> cdsordcompraautpagto.Aggregates[0].Value then
  begin
    ordcompra.Select(cds);
    ordcompra.gerarparcelas;
    AtualizarOrdCompraAutpagto;
  end;
  if cbxcdtpfrete.Text = '' then
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [_tipo_de_frete]), mtinformation, [mbok], 0);
    cdsCDTPFRETE.FocusControl;
    abort;
  end;
  //if registro.Salvar then
  //begin
    cds.ApplyUpdates(0);
    registro.set_readonly_dados(self, true);
    if cdsCDPEDIDOMATERIAL.asstring <> '' then
    begin
      { TODO -oRefatoração -cDAO : Mudar para DAO }
      ExecutaSQL('UPDATE PEDIDOMATERIALFORNECEDOR SET CDORDCOMPRA='+cdscdordcompra.asstring+' '+
                 'WHERE cdempresa='+empresa.cdempresa.tostring+' and CDPEDIDOMATERIAL='+cdsCDPEDIDOMATERIAL.asstring+' AND CDFORNECEDOR='+cds.fieldbyname(_CDFORNECEDOR).AsString);
    end;
    registro.set_grade_item(self, false);
    abrir(cdsCDORDCOMPRA.asinteger);
  //end;
end;

procedure TfrmOrdCompra.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure TfrmOrdCompra.FormShow(Sender: TObject);
begin
  lblclfornecedor.Visible   := empresa.fornecedor.iqf.bo;
  txtnmclfornecedor.Visible := empresa.fornecedor.iqf.bo;
  ordcompra  := TOrdCompra.create;
  produto    := TProduto.create;
  fornecedor := tfornecedor.create;
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmOrdCompra.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmOrdCompra.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmOrdCompra.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmOrdCompra.edtcdfornecedortransportadoraExit(Sender: TObject);
var
  codigo: string;
begin
  colorExit(sender);
  if edtcdfornecedortransportadora.Text = '' then
  begin
    exit;
  end;
  codigo := edtcdfornecedortransportadora.Text;
  if ordcompra.tpordcompra.botransportadora = _s then
  begin
    if not codigoexiste( _transportadora, codigo) then
    begin
      MessageDlg('Código da transportadora '+codigo+' inexistente.', mtWarning, [mbOk], 0);
      edtcdfornecedortransportadora.SetFocus;
    end;
  end
  else if not codigoexiste( _fornecedor, codigo) then
  begin
    MessageDlg('Código da transportadora '+codigo+' não encontrado no cadastro de '+_fornecedor+'.', mtWarning, [mbOk], 0);
    edtcdfornecedortransportadora.SetFocus;
  end;
end;

procedure TfrmOrdCompra.actGerarCompraExecute(Sender: TObject);
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if cdsCDORDCOMPRA.asstring <> '' then
  begin
    fornecedor.select(cds.fieldbyname(_CDFORNECEDOR).AsLargeInt);
    fornecedor.stfornecedor.select(fornecedor.cdstfornecedor);
    if (fornecedor.stfornecedor.bogerarinfo <> _s) or (fornecedor.stfornecedor.bogerarentrada <> _s) then
    begin
      messagedlg('Fornecedor está no status '+fornecedor.stfornecedor.nmstfornecedor+#13+
                  'que não permite gerar nota compra.'#13'Altere o status do fornecedor para prosseguir.', mtinformation, [mbok], 0);
      abort;
    end;
    if GerarCompra(cdsCDORDCOMPRA.asinteger) then
    begin
      abrir(cdsCDORDCOMPRA.asinteger);
    end;
  end;
end;

procedure TfrmOrdCompra.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmOrdCompra.Novo(cdpedidomaterial: Integer; cdfornecedor: LargeInt; cdtpordcompra: integer; bonovo:boolean);
  function makesql:string;
  begin
    result := 'SELECT PF.NUCOTACAO'+
                    ',p.cdtpaplicacao'+
                    ',P.DSAPLICACAO'+
                    ',pf.cdcondpagto'+
                    ',pf.DTPRVENTREGA'+
                    ',P.CDFUNCIONARIOCOMPRADOR'+
                    ',pf.cditcontfornecedor'+
                    ',P.CDFUNCIONARIOSOLICITANTE'+
                    ',p.CDPEDIDOMATERIAL '+
              'FROM PEDIDOMATERIAL P '+
              'INNER JOIN PEDIDOMATERIALFORNECEDOR PF ON PF.CDPEDIDOMATERIAL=P.CDPEDIDOMATERIAL '+
              'WHERE PF.CDFORNECEDOR='+cdfornecedor.ToString+' AND P.CDPEDIDOMATERIAL='+cdpedidomaterial.ToString;
  end;
  function makesql2:string;
  begin
    result := 'SELECT i.CDPRODUTO'+
                    ',i2.qtitem'+
                    ',i2.VLUNITARIO'+
                    ',i2.VLTOTAL'+
                    ',i2.DTPREVENTREGA'+
                    ',i2.alicms'+
                    ',i2.alipi'+
                    ',i2.vldesconto'+
                    ',i.cdcntcusto'+
                    ',I2.VLICMSSUBTRIB'+
                    ',i.qtpeca'+
                    ',i.dsformula'+
                    ',i.qtpesounitario'+
                    ',i.bocertificado'+
                    ',i.cddigitado '+
               'FROM ITPEDIDOMATERIAL i '+
               'left join itpedidomaterialfornecedor i2 on i2.cditpedidomaterial=i.cditpedidomaterial '+
               'WHERE I2.BOVENCEDOR=''S'' '+
               'AND QTSOLICITADA>0 '+
               'and CDPEDIDOMATERIAL='+cdpedidomaterial.ToString+' '+
               'and i2.cdfornecedor='+cdfornecedor.ToString
  end;
var
  s, sd : TClasseQuery;
  pedidomaterial : TPedidomaterial;
  procedure processar_cabecalho;
  begin
    s.q.sql.text    := makesql;
    s.q.open;
    if not s.q.FieldByName(_ds+_aplicacao).IsNull then
    begin
      cdsDSAPLICACAO.AsString := s.q.fieldbyname(_ds+_aplicacao).AsString;
    end;
    if not s.q.FieldByName(_cdtpaplicacao).IsNull then
    begin
      cdsCDTPAPLICACAO.AsString := s.q.FieldByName(_cdtpaplicacao).AsString;
    end;
    cds.fieldbyname(_CDFORNECEDOR).AsLargeInt := cdfornecedor;
    cdsCDITCONTFORNECEDOR.AsString            := s.q.fieldbyname(_cditcontfornecedor).AsString;
    cdsCDPEDIDOMATERIAL.AsInteger             := cdpedidomaterial;
    cdsCDCONDPAGTO.AsString                   := s.q.fieldbyname(_cdcondpagto).AsString;
    //if s.q.fieldbyname(_dtprventrega).AsDateTime > 0 then
    //begin
      cdsDTENTREGA.AsDateTime                   := s.q.fieldbyname(_dtprventrega).AsDateTime;
    //end;
    cdscdtpordcompra.AsInteger                := cdtpordcompra;
    cdsCDFUNCIONARIOSOLICITANTE.AsString      := s.q.fieldbyname(_cdfuncionario+_solicitante).AsString;
    cdsCDFUNCIONARIOCONTATO.AsString          := s.q.fieldbyname(_cdfuncionario+_comprador).AsString;
  end;
  procedure processar_item;
  begin
    sd.q.sql.text   := makesql2;
    sd.q.open;
    cdsdetail.DisableControls;
    while not sd.q.eof do
    begin
      cdsDetail.append;
      cdsdetailBOCERTIFICADO.AsString   := sd.q.fieldbyname(_bocertificado).AsString;
      if sd.q.fieldbyname(_DTPREVENTREGA).AsDateTime > 0 then
      begin
        cdsdetailDTPREVENTREGA.AsDateTime := sd.q.fieldbyname(_DTPREVENTREGA).AsDateTime;
      end
      else if s.q.fieldbyname(_dtprventrega).AsDateTime > 0 then
      begin
        cdsdetailDTPREVENTREGA.AsDateTime := s.q.fieldbyname(_dtprventrega).AsDateTime;
      end;
      cdsdetailCDCNTCUSTO.AsString      := sd.q.fieldbyname(_cdcntcusto).AsString;
      cdsdetailCDPRODUTO.asstring       := sd.q.FieldByName(_cdproduto).AsString;
      cdsdetailCDDIGITADO.asstring      := sd.q.FieldByName(_cddigitado).AsString;
      cdsdetailQTPECA.AsFloat           := sd.q.fieldbyname(_qtpeca).AsFloat;
      cdsdetailQTPESOUNITARIO.AsFloat   := sd.q.fieldbyname(_qtpesounitario).AsFloat;
      cdsdetailDSFORMULA.AsString       := sd.q.fieldbyname(_dsformula).AsString;
      cdsdetailQTITEM.asstring          := sd.q.FieldByName(_qtitem).AsString;
      cdsdetailVLUNITARIO.asstring      := sd.q.FieldByName(_vlunitario).AsString;
      cdsdetailVLTOTAL.asstring         := sd.q.FieldByName(_vltotal).AsString;
      cdsdetailALICMS.AsFloat           := sd.q.fieldbyname(_alicms).AsFloat;
      cdsdetailALIPI.AsFloat            := sd.q.fieldbyname(_alipi).AsFloat;
      cdsdetailVLDESCONTO.AsCurrency    := sd.q.fieldbyname(_vldesconto).AsCurrency;
      cdsdetailVLICMSSUBTRIB.AsCurrency := sd.q.fieldbyname(_vlicmssubtrib).AsCurrency;
      cdsDetail.Post;
      sd.q.next;
    end;
  end;
begin
  registro.Novo(nil);
  s  := TClasseQuery.Create;
  sd := TClasseQuery.Create;
  pedidomaterial := tpedidomaterial.create;
  try
    processar_cabecalho;
    processar_item;
    cdsdetail.EnableControls;
    ordcompra.Select(cds);
    ordcompra.gerarparcelas;
    AtualizarOrdCompraAutpagto;
    actSalvarExecute(actsalvar);
    pedidomaterial.Select(cdpedidomaterial);
    pedidomaterial.SetStatus(2);
  finally
    freeandnil(s);
    freeandnil(pedidomaterial);
    freeandnil(sd);
  end;
end;

procedure TfrmOrdCompra.AbrirTabelas;
begin
  cbxcdtpordcompra.Properties.ListSource := abrir_tabela(_tpordcompra);
  cbxcdcondpagto.Properties.ListSource := abrir_tabela(_condpagto + _e);
  cbxcdtpfrete.Properties.ListSource := abrir_tabela(_tpfrete);
  cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
  cbxcdfuncionariocontato.Properties.ListSource := abrir_tabela(_funcionario);
  cbxcdfuncionariosolicitante.Properties.ListSource := abrir_tabela(_funcionario);
  cbxCDFUNCIONARIOAPROVACAO.Properties.ListSource := abrir_tabela(_funcionario);
  cbxcdcntcustoentrega.Properties.ListSource := abrir_tabela(_cntcusto);
  cbxcdtpaplicacao.Properties.ListSource := abrir_tabela(_tpaplicacao);
end;

procedure TfrmOrdCompra.actAbrirFornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrdCompra.actAbrirTransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrdCompra.edtcdfornecedortransportadoraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedortransportadoraPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrdCompra.actAbrirProdutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmOrdCompra.FormDestroy(Sender: TObject);
begin
  produto.free;
  freeandnil(ordcompra);
  fornecedor.free;
  freeandnil(registro);
end;

procedure TfrmOrdCompra.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmOrdCompra.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  actAbrirProduto.OnExecute(actAbrirProduto);
end;

procedure TfrmOrdCompra.edtcdfornecedortransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : LargeInt;
begin
  if ordcompra.tpordcompra.botransportadora = _s then
  begin
    codigo := LocalizarTransportadora(true)
  end
  else
  begin
    codigo := LocalizarFornecedor(true);
  end;
  if codigo = 0 then
  begin
    exit;
  end;
  if ordcompra.tpordcompra.botransportadora = _s then
  begin
    cds.fieldbyname(_CDTRANSPORTADORA).AsLargeInt := codigo
  end
  else
  begin
    cds.fieldbyname(_CDFORNECEDORTRANSPORTADORA).AsLargeInt := codigo;
  end;
end;

procedure TfrmOrdCompra.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsDTENTREGA.AsDateTime < cdsDTEMISSAO.AsDateTime then
  begin
    cdsDTENTREGA.FocusControl;
    MessageDlg('Data de entrega não pode ser anterior a data de emissão!', mtInformation, [mbOK], 0);
    Abort;
  end;
  if cdsCDcondpagto.IsNull then
  begin
    cdsCDcondpagto.FocusControl;
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_condicao_de_pagamento]), mtInformation, [mbOK], 0);
    Abort;
  end;
  if cds.fieldbyname(_CDFORNECEDOR).IsNull then
  begin
    cds.fieldbyname(_CDFORNECEDOR).FocusControl;
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Fornecedor]), mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cds);
end;

procedure TfrmOrdCompra.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if (Dataset.State <> dsedit) and (Dataset.state <> dsinsert) then
  begin
    exit;
  end;
  if (ordcompra.tpordcompra.bocntcustoobrigatorio = _s) and (dataset.FieldByName(_cdcntcusto).AsString = '') then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_centro_de_custo]), mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    dataset.FieldByName(_cdcntcusto).FocusControl;
    Abort;
  end;
  if cdsdetailCDDIGITADO.AsString = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_do+' '+_produto]), mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    cdsdetailCDDIGITADO.FocusControl;
    abort;
  end;
  if (cdsdetailNUKMATUAL.AsInteger > 0) and (cdsdetailNUKMFINAL.AsInteger = 0) then
  begin
    MessageDlg('Km final é um campo obrigatorio quando km atual estiver preenchido.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    cdsdetailNUKMFINAL.FocusControl;
    abort;
  end;
  if (cdsdetailNUKMFINAL.AsInteger > 0) and (cdsdetailNUKMATUAL.AsInteger = 0) then
  begin
    MessageDlg('Km atual é um campo obrigatorio quando km final estiver preenchido.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    cdsdetailNUKMATUAL.FocusControl;
    abort;
  end;
  if (cdsdetailNUKMFINAL.AsInteger > 0) and (cdsdetailNUKMATUAL.AsInteger > 0) and (cdsdetailNUKMATUAL.AsInteger > cdsdetailNUKMFINAL.AsInteger) then
  begin
    MessageDlg('Km atual não pode ser maior do que km final.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    cdsdetailNUKMATUAL.FocusControl;
    abort;
  end;
  if cdsdetailQTITEM.AsFloat = 0 then
  begin
    MessageDlg('Quantidade do item não pode ser igual a zero.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsproduto;
    cdsdetailQTITEM.FocusControl;
    Abort;
  end;
  registro.set_update(cdsdetail);
end;

procedure TfrmOrdCompra.colDBBandedTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdsdetail, true);
end;

procedure TfrmOrdCompra.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPORDCOMPRA.asinteger:= registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  cdsCDTPFRETE.AsString     := _9;
  cdsBOCERTIFICADO.AsString := _N;
  cdsVLFRETE.AsCurrency     := 0;
  cdsVLTOTAL.AsCurrency     := 0;
  cdsDTEMISSAO.AsDateTime   := dtbanco;
  cdsDTENTREGA.OnChange     := nil;
  cdsDTENTREGA.AsDateTime   := dtbanco;
  cdsDTENTREGA.OnChange     := cdsDTENTREGAChange;
  cdsCDSTORDCOMPRA.AsInteger := qregistro.Codigo_status_novo( tbl);
  setrecord(cdsCDTPORDCOMPRA.AsInteger);
end;

procedure TfrmOrdCompra.set_observacao;
begin
  if ordcompra.tpordcompra.boobservacaotpordcompra = _n then
  begin
    Exit;
  end;
  if cdsDSOBSERVACAO.AsString = '' then
  begin
    cdsDSOBSERVACAO.AsString := RetornaSQLString('select dsobservacao from tpordcompra where cdtpordcompra='+cdsCDTPORDCOMPRA.asstring);
  end;
end;

procedure TfrmOrdCompra.cdsCDTPORDCOMPRAValidate(Sender: TField);
begin
  if not CodigoExiste( _tp+tbl, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_tipo+' '+_ordem+' '+_compra)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  setrecord(sender.AsInteger);
  set_observacao;
end;

procedure TfrmOrdCompra.cdsCDCONDPAGTOValidate(Sender: TField);
begin
  if not ordcompra.condpagto.Select(Sender.Asinteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__condicao+' '+_pagamento)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  ordcompra.condpagto.stcondpagto.Select(ordcompra.condpagto.cdstcondpagto);
  if ordcompra.condpagto.stcondpagto.bogerarpedido = _n then
  begin
    messagedlg('Condição de Pagamento está no status '+ordcompra.condpagto.stcondpagto.nmstcondpagto+#13+
                'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
  end;
  ordcompra.condpagto.itcondpagto.Ler(ordcompra.cdcondpagto);
  ordcompra.Select(cds);
  ordcompra.gerarparcelas;
end;

procedure TfrmOrdCompra.cdsdetailQTITEMValidate(Sender: TField);
begin
  if cdsdetailQTITEM.AsFloat < 0 then
  begin
    MessageDlg('Quantidade do item não pode ser negativo.', mtInformation, [mbOK], 0);
    cdsdetailQTITEM.FocusControl;
    Abort;
  end;
  cdsdetailVLTOTAL.AsCurrency := cdsdetailQTITEM.AsCurrency * cdsdetailVLUNITARIO.ascurrency;
  cdsdetailVLPECA.OnValidate  := nil;
  if cdsdetailQTPECA.AsFloat = 0 then
  begin
    cdsdetailVLPECA.AsCurrency := 0
  end
  else
  begin
    cdsdetailVLPECA.AsCurrency := cdsdetailVLTOTAL.AsCurrency / cdsdetailQTPECA.AsFloat;
  end;
  cdsdetailVLPECA.OnValidate := cdsdetailVLPECAValidate;
  cdsdetailALICMSValidate(cdsdetailalicms);
  cdsdetailALIPIValidate(cdsdetailalipi);
end;

procedure TfrmOrdCompra.colDBBandedTableView1CDTPAPLICACAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  cd := localizar( _tpaplicacao, True);
  if cd <> 0 then
  begin
    if (cdsdetail.State <> dsedit) and (cdsdetail.State = dsbrowse) then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailCDTPAPLICACAO.AsInteger := cd;
  end;
end;

procedure TfrmOrdCompra.cdsdetailCDDIGITADOValidate(Sender: TField);
begin
  if sender.asstring = '' then
  begin
    Exit;
  end;
  produto.cdproduto := produto.CodigoProdutoDigitado(sender.AsString, _boordcompra);
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados;
  cdsdetailNMPRODUTO.asstring := produto.nmproduto;
  cdsdetailCDPRODUTO.AsInteger := produto.cdproduto;
end;

procedure TfrmOrdCompra.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITORDCOMPRA.AsString   := GerarCodigo( _it+_ordcompra);
  cdsdetailQTATENDIDA.AsFloat       := 0;
  cdsdetailQTITEM.AsFloat           := 1;
  cdsdetailVLUNITARIO.AsCurrency    := 0;
  cdsdetailVLICMSSUBTRIB.AsCurrency := 0;
  cdsdetailNUKMATUAL.AsInteger      := 0;
  cdsdetailNUKMFINAL.AsInteger      := 0;
  cdsdetailBOIPIBCICMS.AsString     := _N;
  cdsdetailDTPREVENTREGA.AsDateTime := cdsDTENTREGA.AsDateTime;
end;

procedure TfrmOrdCompra.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel( Key, sender);
end;

procedure TfrmOrdCompra.edtnudiasExit(Sender: TObject);
begin
  if (dts.state = dsinsert) or (dts.State = dsedit) then
  begin
    cdsDTENTREGA.AsDateTime := cdsDTEMISSAO.AsDateTime + edtnudias.Value;
  end;
  colorExit(sender);
end;

procedure TfrmOrdCompra.edtdtentregaExit(Sender: TObject);
begin
  if (dts.state = dsinsert) or (dts.State = dsedit) then
  begin
    cdsNUDIAS.AsInteger := StrToInt(formatfloat(__integer, (edtdtentrega.Date - cdsDTEMISSAO.AsDateTime)));
  end;
  colorExit(sender);
end;

procedure TfrmOrdCompra.cdsCDFORNECEDORValidate(Sender: TField);
begin
  if not fornecedor.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  fornecedor.stfornecedor.select(fornecedor.cdstfornecedor);
  if fornecedor.stfornecedor.bogerarinfo <> _s then
  begin
    messagedlg('Fornecedor está no status '+fornecedor.stfornecedor.nmstfornecedor+#13'que não permite ser inserido no '+Exibe+'.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  fornecedor.clfornecedor.Select(fornecedor.cdclfornecedor);
  if (fornecedor.cdclfornecedor <> 0) and (fornecedor.clfornecedor.bocredenciado <> _s) then
  begin
    messagedlg('A classificação de IQF do fornecedor não permite gerar ordem de compra.', mtinformation, [mbok], 0);
    abort;
  end;
  cdsNMFORNECEDOR.AsString := fornecedor.nmfornecedor;
  txtnmfornecedor.Hint := fornecedor.hint_rzsocial;
  atualizarContatofornecedor;
end;

procedure TfrmOrdCompra.cdsCDFORNECEDORTRANSPORTADORAValidate(Sender: TField);
begin
  if not fornecedor.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  fornecedor.stfornecedor.select(fornecedor.cdstfornecedor);
  if fornecedor.stfornecedor.bogerarinfo <> _s then
  begin
    messagedlg('Transportadora está no status '+fornecedor.stfornecedor.nmstfornecedor+#13'que não permite ser inserido no '+Exibe+'.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMFORNECEDORTRANSPORTADORA.AsString := fornecedor.nmfornecedor;
  txtNMFORNECEDORTRANSPORTADORA.Hint := fornecedor.hint_rzsocial;
end;

procedure TfrmOrdCompra.cdsdetailALICMSValidate(Sender: TField);
begin
  if cdsdetailBOIPIBCICMS.AsString = _S then
  begin
    cdsdetailVLICMS.AsCurrency := (cdsdetailVLTOTAL.AsCurrency + cdsdetailVLIPI.AsCurrency) * cdsdetailALICMS.AsCurrency / 100
  end
  else
  begin
    cdsdetailVLICMS.AsCurrency := cdsdetailVLTOTAL.AsCurrency * cdsdetailALICMS.AsCurrency / 100;
  end;
end;

procedure TfrmOrdCompra.cdsdetailALIPIValidate(Sender: TField);
begin
  cdsdetailVLIPI.AsCurrency := cdsdetailVLTOTAL.AsCurrency * cdsdetailALIPI.AsCurrency / 100;
end;

procedure TfrmOrdCompra.cdsdetailAfterPost(DataSet: TDataSet);
begin
  atualizar_total;
end;

procedure TfrmOrdCompra.cdsAfterScroll(DataSet: TDataSet);
begin
  ordcompra.Select(dataset);
  ordcompra.ItOrdCompra.Ler(cdsdetail);
  ordcompra.OrdCompraAutpagto.Ler(cdsordcompraautpagto);
  ordcompra.tpordcompra.Select(ordcompra.cdtpordcompra);
  ordcompra.stordcompra.Select(ordcompra.cdstordcompra);
  ordcompra.condpagto.Select(ordcompra.cdcondpagto);
  ordcompra.condpagto.itcondpagto.Ler(ordcompra.cdcondpagto);
  setrecord(cdsCDTPORDCOMPRA.AsInteger);
  exibir_total;
  actavaliacaoiqf.Visible := (ordcompra.tpordcompra.boiqf = _s) and empresa.fornecedor.IQF.bo and ((cdsCDSTORDCOMPRA.AsInteger = 2) or (cdsCDSTORDCOMPRA.AsInteger = 4));
  actavaliacaoiqf.Enabled := (ordcompra.tpordcompra.boiqf = _s) and empresa.fornecedor.iqf.bo and ((cdsCDSTORDCOMPRA.AsInteger = 2) or (cdsCDSTORDCOMPRA.AsInteger = 4));
  atualizarcontatofornecedor;
  actatendido.Enabled := (cdsCDSTORDCOMPRA.AsString = _1) or (cdsCDSTORDCOMPRA.AsString = _3);
  actatendido.Visible := actatendido.Enabled;
  actdeclinar.Enabled := cdsCDSTORDCOMPRA.AsString = _1;
  actdeclinar.Visible := actdeclinar.Enabled;
  actreabrir.Enabled  := (cdsCDSTORDCOMPRA.AsString = _4) or ((cdsCDSTORDCOMPRA.AsString = _2) and ordcompraNaoAtendidoCompletamente);
  actreabrir.Visible  := actreabrir.Enabled;
  travarOrdcompraAtendida;
  actaprovacao.Enabled := usuario.TpAprovacao.Existe_inteiro(_cdtpprocessointerno, 1) and (cdsCDSTORDCOMPRA.AsInteger in [1, 5]);
  pnl.Font.Color := ordcompra.stordcompra.nucor;
end;

procedure TfrmOrdCompra.atualizar_total;
begin
  cdsVLTOTAL.AsCurrency := 0;
  if cdsdetail.Aggregates[0].Value > 0 then
  begin
    cdsVLTOTAL.AsCurrency := cdsVLTOTAL.AsCurrency + cdsdetail.Aggregates[0].Value;
  end;
  if cdsdetail.Aggregates[2].Value > 0 then
  begin
    cdsVLTOTAL.AsCurrency := cdsVLTOTAL.AsCurrency + cdsdetail.Aggregates[2].Value;
  end;
  if cdsdetail.Aggregates[3].Value > 0 then
  begin
    cdsVLTOTAL.AsCurrency := cdsVLTOTAL.AsCurrency + cdsdetail.Aggregates[3].Value;
  end;
  cdsVLTOTAL.AsCurrency := cdsVLTOTAL.AsCurrency + cdsVLFRETE.AsCurrency - cdsVLDESCONTO.AsCurrency;
  exibir_total;
end;

procedure TfrmOrdCompra.Exibir_total;
begin
  lblvltotal.Caption := FormatarMoedaRs(cdsVLTOTAL.AsCurrency);
end;

procedure TfrmOrdCompra.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmOrdCompra.colorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmOrdCompra.colorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmOrdCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOrdCompra.actimprimirModelo1Execute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(323, cdsCDORDCOMPRA.AsString);
end;

procedure TfrmOrdCompra.actimprimirmodelo2Execute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(313, cdsCDORDCOMPRA.AsString);
end;

procedure TfrmOrdCompra.actimprimirmodelo3Execute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(314, cdsCDORDCOMPRA.AsString);
end;

procedure TfrmOrdCompra.FormCreate(Sender: TObject);
begin
  tbl := _ordcompra;
  AbrirTabelas;
  registro := tregistro.create(self,  tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 26, cds, _ordcompra);
end;

function TfrmOrdCompra.get_index(nome:string; tbv: TcxGridDBBandedTableView):Integer;
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

procedure TfrmOrdCompra.setrecord(cdtp: Integer);
begin
  if cdtp = 0 then
  begin
    exit;
  end;
  ordcompra.tpordcompra.Select(cdtp);
  if ordcompra.tpordcompra.botransportadora = _s then
  begin
    edtcdfornecedortransportadora.DataBinding.DataField := _cdtransportadora;
    txtNMFORNECEDORTRANSPORTADORA.DataField             := _nmtransportadora;
  end
  else
  begin
    edtcdfornecedortransportadora.DataBinding.DataField := _cdfornecedor+_transportadora;
    txtNMFORNECEDORTRANSPORTADORA.DataField             := _nmfornecedor+_transportadora;
  end;

  lblclfornecedor.Visible   := ordcompra.tpordcompra.boiqf = _s;
  txtnmclfornecedor.Visible := ordcompra.tpordcompra.boiqf = _s;

  tbvBOCERTIFICADO.Visible := ordcompra.tpordcompra.boitemcertificado = _s;
  ckbbocertificado.Visible := ordcompra.tpordcompra.bocertificado = _s;
  gbxAprovacao.Visible     := ordcompra.tpordcompra.boaprovacao = _s;
  tbvCDORDPRODUCAO.Visible := ordcompra.tpordcompra.boitpedido = _s;
  tbvCDORCAMENTO.Visible   := ordcompra.tpordcompra.boitemorcamento = _s;

  tbvNUCLFISCAL.Visible := ordcompra.tpordcompra.boitemnuclfiscal = _S;
  tbvnusticms.Visible := ordcompra.tpordcompra.boitemnusticms = _S;
  //
  actimprimirModelo1.Visible := ordcompra.tpordcompra.bomodelo1 = _s;
  actimprimirModelo1.Enabled := ordcompra.tpordcompra.bomodelo1 = _s;
  actemailmodelo1.Visible    := ordcompra.tpordcompra.bomodelo1 = _s;
  actemailmodelo1.Enabled    := ordcompra.tpordcompra.bomodelo1 = _s;

  actimprimirModelo2.Visible := ordcompra.tpordcompra.bomodelo2 = _s;
  actimprimirModelo2.Enabled := ordcompra.tpordcompra.bomodelo2 = _s;
  actemailmodelo2.Visible    := ordcompra.tpordcompra.bomodelo2 = _s;
  actemailmodelo2.Enabled    := ordcompra.tpordcompra.bomodelo2 = _s;

  actimprimirModelo3.Visible := ordcompra.tpordcompra.bomodelo3 = _s;
  actimprimirModelo3.Enabled := ordcompra.tpordcompra.bomodelo3 = _s;
  actemailmodelo3.Visible    := ordcompra.tpordcompra.bomodelo3 = _s;
  actemailmodelo3.Enabled    := ordcompra.tpordcompra.bomodelo3 = _s;

  actimprimirModelo4.Visible := ordcompra.tpordcompra.bomodelo4 = _s;
  actimprimirModelo4.Enabled := ordcompra.tpordcompra.bomodelo4 = _s;
  actemailmodelo4.Visible    := ordcompra.tpordcompra.bomodelo4 = _s;
  actemailmodelo4.Enabled    := ordcompra.tpordcompra.bomodelo4 = _s;

  tbv.Bands[get_index('Centro Custo', tbv)].Visible := Empresa.financeiro.bocntcusto;
  tbv.Bands[get_index('Plano Contas', tbv)].Visible := Empresa.financeiro.boplconta;
  tbv.Bands[get_index('KM'          , tbv)].Visible := ordcompra.tpordcompra.boitemkm = _s;
  tbv.Bands[get_index('Aplicação'   , tbv)].Visible := ordcompra.tpordcompra.botpaplicacaoitens = _s;

  edtdssolicitante.Visible            := ordcompra.tpordcompra.bosolicitantedigitar = _s;
  cbxcdfuncionariosolicitante.Visible := ordcompra.tpordcompra.bosolicitantedigitar = _N;
  edtdslocal.Visible                  := ordcompra.tpordcompra.bolocaldigitar = _S;
  cbxcdcntcustoentrega.Visible        := ordcompra.tpordcompra.bolocaldigitar = _N;
  edtdsaplicacao.Visible              := ordcompra.tpordcompra.boaplicacaodigitar = _s;
  cbxcdtpaplicacao.Visible            := ordcompra.tpordcompra.boaplicacaodigitar <> _s;

  tbvDSFORMULA.Visible                := ordcompra.tpordcompra.boitemdsformula = _s;
  tbvQTPECA.Visible                   := ordcompra.tpordcompra.boitemqtpeca = _s;
  tbvVLPECA.Visible                   := ordcompra.tpordcompra.boitemqtpeca = _s;
  tbvQTPESOUNITARIO.Visible           := ordcompra.tpordcompra.boitemqtpeca = _s;
  tbvDSOBSERVACAO.Visible             := ordcompra.tpordcompra.boitemdsobservacao = _s;

  actaprovacao.Visible := ordcompra.tpordcompra.boaprovacaofinanceiro = _s;
end;

procedure TfrmOrdCompra.edtcdfornecedorExit(Sender: TObject);
var
  codigo: string;
begin
  colorExit(sender);
  if edtcdfornecedor.Text = '' then
  begin
    exit;
  end;
  codigo := edtcdfornecedor.Text;
  if not codigoexiste( _fornecedor, codigo) then
  begin
    MessageDlg('Código da fornecedor '+codigo+' não encontrado no cadastro de '+_fornecedor+'.', mtWarning, [mbOk], 0);
    edtcdfornecedor.SetFocus;
  end;
end;

procedure TfrmOrdCompra.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, Shift)
  end;
end;

procedure TfrmOrdCompra.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, cds);
end;

procedure TfrmOrdCompra.cdsdetailCDTPAPLICACAOValidate(Sender: TField);
begin
  if not CodigoExiste( _tpaplicacao, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_tipo+' '+__aplicacao)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsdetailNMTPAPLICACAO.AsString := NomedoCodigo( _tpaplicacao, sender.AsString);
end;

procedure TfrmOrdCompra.cdsVLDESCONTOValidate(Sender: TField);
begin
  atualizar_total;
end;

procedure TfrmOrdCompra.cdsVLFRETEValidate(Sender: TField);
begin
  atualizar_total;
end;

procedure TfrmOrdCompra.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmOrdCompra.edtcodigoPropertiesChange(Sender: TObject);
begin
  if cdsCDSTORDCOMPRA.asstring <> '' then
  begin
    //registro.setStatus( _ordcompra, cds);
    actGerarCompra.Enabled := (NomedoCodigo( _stordcompra, cdsCDSTORDCOMPRA.asstring, _bogerarinfo) = _S);
    actGerarCompra.Visible := actGerarCompra.Enabled;
    txtnmfornecedor.Hint   := qregistro.get_Hint( _fornecedor, cds.fieldbyname(_CDFORNECEDOR).asstring);
  end;
end;

procedure TfrmOrdCompra.edtcdfornecedorPropertiesChange(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    txtnmfornecedor.Hint := fornecedor.hint_rzsocial;
  end;
end;

procedure TfrmOrdCompra.txtnmfornecedorDblClick(Sender: TObject);
begin
  actabrirfornecedorExecute(actabrirfornecedor);
end;

procedure TfrmOrdCompra.actavaliacaoiqfExecute(Sender: TObject);
begin
  if NomedoCodigo( _fornecedor, cds.fieldbyname(_CDFORNECEDOR).AsString, _cd+_clfornecedor) = '' then
  begin
    MessageDlg('A classificação de IQF é um campo obrigatório para avaliar um fornecedor.', mtInformation, [mbOK], 0);
    Exit;
  end;
  if AvaliarIQF(cdsCDORDCOMPRA.AsInteger) then
  begin
    Abrir(cdsCDORDCOMPRA.asinteger);
  end;
end;

procedure TfrmOrdCompra.actimprimirmodelo4Execute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(337, cdsCDORDCOMPRA.AsString);
end;

procedure TfrmOrdCompra.atualizarContatofornecedor;
begin
  cdsitcontfornecedor.Close;
  sdsitcontfornecedor.Close;
  if cds.fieldbyname(_CDFORNECEDOR).AsString = '' then
  begin
    Exit;
  end;
  sdsitcontfornecedor.ParamByName(_cdempresa).AsLargeint    := empresa.cdempresa;
  sdsitcontfornecedor.ParamByName(_cdfornecedor).AsString := cds.fieldbyname(_CDFORNECEDOR).AsString;
  cdsitcontfornecedor.Open;
end;

procedure TfrmOrdCompra.AtualizarOrdCompraAutpagto;
var
  i : Integer;
begin
  if cdsordcompraautpagto.RecordCount > 0 then
  begin
    cdsordcompraautpagto.First;
    while not cdsordcompraautpagto.Eof do
    begin
      cdsordcompraautpagto.Delete;
    end;
  end;
  for i := 0 to ordcompra.condpagto.parcela.Count - 1 do
  begin
    cdsordcompraautpagto.Insert;
    cdsordcompraautpagto.FieldByName(_cdordcompraautpagto).AsString := GerarCodigo(_ordcompraautpagto);
    cdsordcompraautpagto.FieldByName(_cdordcompra).AsInteger        := ordcompra.ordcompraautpagto.Items[i].cdordcompra;
    cdsordcompraautpagto.FieldByName(_dtprorrogacao).AsDateTime     := ordcompra.ordcompraautpagto.Items[i].dtprorrogacao;
    cdsordcompraautpagto.FieldByName(_dtemissao).AsDateTime         := ordcompra.ordcompraautpagto.Items[i].dtemissao;
    cdsordcompraautpagto.FieldByName(_vlsaldo).AsCurrency           := ordcompra.ordcompraautpagto.Items[i].vlsaldo;
    cdsordcompraautpagto.FieldByName(_vlordcompraautpagto).AsCurrency := ordcompra.ordcompraautpagto.Items[i].vlordcompraautpagto;
    cdsordcompraautpagto.Post;
  end;
end;

procedure TfrmOrdCompra.cdsCDITCONTFORNECEDORValidate(Sender: TField);
begin
  cdsEMAIL.AsString := NomedoCodigo( _itcontfornecedor, cdsCDITCONTFORNECEDOR.AsString, _email);
end;

procedure TfrmOrdCompra.actemailmodelo4Execute(Sender: TObject);
var
  eventoemail : TEventoEmail;
begin
  eventoemail := teventoemail.create;
  try
    eventoemail.dstitulo  := ordcompra.tpordcompra.dstituloemail;
    eventoemail.dsassunto := ordcompra.tpordcompra.dsassuntoemail;
    ImpimirRelatorioPadrao1(337, cdsCDORDCOMPRA.AsString, '', _email, getemail, ordcompra.tpordcompra.emailcopia, eventoemail.TratarTitulo(cds), eventoemail.TratarAssunto(cds));
  finally
    eventoemail.Free;
  end;
end;

procedure TfrmOrdCompra.actemailExecute(Sender: TObject);
begin
  btnemail.DropDown(false);
end;

function TfrmOrdCompra.getemail: string;
begin
  result := cdsEMAIL.Text;
  if result = '' then
  begin
    result := NomedoCodigo( _fornecedor, cds.fieldbyname(_CDFORNECEDOR).AsString, _email);
  end;
end;

procedure TfrmOrdCompra.actemailmodelo1Execute(Sender: TObject);
var
  eventoemail : TEventoEmail;
begin
  eventoemail := teventoemail.create;
  try
    eventoemail.dstitulo  := ordcompra.tpordcompra.dstituloemail;
    eventoemail.dsassunto := ordcompra.tpordcompra.dsassuntoemail;
    ImpimirRelatorioPadrao1(323, cdsCDORDCOMPRA.AsString, '', _email, getemail, ordcompra.tpordcompra.emailcopia, eventoemail.TratarTitulo(cds), eventoemail.TratarAssunto(cds));
  finally
    eventoemail.Free;
  end;
end;

procedure TfrmOrdCompra.actemailmodelo2Execute(Sender: TObject);
var
  eventoemail : TEventoEmail;
begin
  eventoemail := teventoemail.create;
  try
    eventoemail.dstitulo  := ordcompra.tpordcompra.dstituloemail;
    eventoemail.dsassunto := ordcompra.tpordcompra.dsassuntoemail;
    ImpimirRelatorioPadrao1(313, cdsCDORDCOMPRA.AsString, '', _email, getemail, ordcompra.tpordcompra.emailcopia, eventoemail.TratarTitulo(cds), eventoemail.TratarAssunto(cds));
  finally
    eventoemail.Free;
  end;
end;

procedure TfrmOrdCompra.actemailmodelo3Execute(Sender: TObject);
var
  eventoemail : TEventoEmail;
begin
  eventoemail := teventoemail.create;
  try
    eventoemail.dstitulo  := ordcompra.tpordcompra.dstituloemail;
    eventoemail.dsassunto := ordcompra.tpordcompra.dsassuntoemail;
    ImpimirRelatorioPadrao1(314, cdsCDORDCOMPRA.AsString, '', _email, getemail, ordcompra.tpordcompra.emailcopia, eventoemail.TratarTitulo(cds), eventoemail.TratarAssunto(cds));
  finally
    eventoemail.Free;
  end;
end;

procedure TfrmOrdCompra.cdsordcompraautpagtoNewRecord(DataSet: TDataSet);
begin
  cdsordcompraautpagtoCDORDCOMPRAAUTPAGTO.AsString := GerarCodigo( _ordcompra+_autpagto);
end;

procedure TfrmOrdCompra.cdsDTENTREGAChange(Sender: TField);
begin
  ordcompra.Select(cds);
  ordcompra.gerarparcelas;
  AtualizarOrdCompraAutpagto;
end;

procedure TfrmOrdCompra.cdsordcompraautpagtoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsordcompraautpagto);
end;

procedure TfrmOrdCompra.tbvQTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  qtpeso : real;
  dsformula : string;
begin
  qtpeso    := cdsdetailQTPESOUNITARIO.AsFloat;
  dsformula := cdsdetailDSFORMULA.AsString;
  if CalcularPeso( cdsdetail.ReadOnly, cdsdetailCDPRODUTO.AsString, dsformula, qtpeso) and (not cdsdetail.ReadOnly) then
  begin
    if cdsdetail.State = dsbrowse then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailQTPESOUNITARIO.AsFloat := qtpeso;
    cdsdetailDSFORMULA.AsString     := dsformula;
  end;
end;

procedure TfrmOrdCompra.cdsdetailQTPECAValidate(Sender: TField);
begin
  cdsdetailQTITEM.AsFloat := cdsdetailQTPESOUNITARIO.AsFloat * cdsdetailQTPECA.AsFloat;
end;

procedure TfrmOrdCompra.cdsCDTPFRETEValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [_tipo_de_frete]), mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
end;

procedure TfrmOrdCompra.cdsdetailVLPECAValidate(Sender: TField);
begin
  cdsdetailVLTOTAL.AsCurrency := cdsdetailVLPECA.AsCurrency * cdsdetailQTPECA.AsFloat;
  cdsdetailVLUNITARIO.OnValidate := nil;
  if cdsdetailQTITEM.AsFloat = 0 then
  begin
    cdsdetailVLUNITARIO.AsCurrency := 0
  end
  else
  begin
    cdsdetailVLUNITARIO.AsCurrency := cdsdetailVLTOTAL.AsCurrency / cdsdetailQTITEM.AsFloat;
  end;
end;

procedure TfrmOrdCompra.actcopiarExecute(Sender: TObject);
var
  codigo : integer;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  ordcompra.cdordcompra := cdsCDordcompra.AsInteger;
  codigo                := ordcompra.copiar;
  if codigo <> 0 then
  begin
    Abrir(codigo);
  end;
end;

procedure TfrmOrdCompra.actatendidoExecute(Sender: TObject);
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  ExecutaSQL('update ordcompra set cdstordcompra=2 where cdordcompra='+cdsCDORDCOMPRA.AsString+' and cdempresa='+cds.FieldByName(_cdempresa).AsString);
  Abrir(cdsCDORDCOMPRA.asinteger);
end;

procedure TfrmOrdCompra.cbxcdcondpagtoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_condpagto+_e);
end;

procedure TfrmOrdCompra.cbxcdtpordcompraEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpordcompra);
end;

procedure TfrmOrdCompra.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpcobranca);
end;

procedure TfrmOrdCompra.cbxcdcntcustoentregaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_cntcusto);
end;

procedure TfrmOrdCompra.cbxCDFUNCIONARIOCONTATOEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmOrdCompra.cbxcdtpaplicacaoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpaplicacao);
end;

procedure TfrmOrdCompra.cbxcdfuncionariosolicitanteEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmOrdCompra.cbxCDFUNCIONARIOAPROVACAOEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmOrdCompra.grdconsultaDBTableView1DblClick(Sender: TObject);
begin
  actabrirentradaExecute(actabrirentrada);
end;

procedure TfrmOrdCompra.actabrirentradaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

function TfrmOrdCompra.ordcompraNaoAtendidoCompletamente: Boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsdetail, true);
    c.First;
    while not c.Eof do
    begin
      if c.FieldByName(_qtatendida).AsFloat < c.FieldByName(_qtitem).AsFloat then
      begin
        result := True;
        Break;
      end;
      c.Next;
    end;
  finally
    FreeAndNil(c);
  end;
end;

procedure TfrmOrdCompra.actreabrirExecute(Sender: TObject);
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if cds.fieldbyname(_cdordcompra).asstring <> edtcodigo.text then
  begin
    if messagedlg('No momento está aberto o registro '+cds.fieldbyname(_cdordcompra).asstring+#13'você gostaria de abrir registro '+edtcodigo.text+' para edição?', mtConfirmation, [mbyes, mbno], 0) = mryes then
    begin
      if not registro.RegistroAbrir(strtoint(edtcodigo.text)) then
      begin
        registro.set_grade_item(self, false);
        exit;
      end;
    end
    else
    begin
      edtcodigo.Text := cds.fieldbyname(_cdordcompra).asstring;
      registro.set_grade_item(self, false);
      exit;
    end;
  end;
  if not edtcodigo.Visible then
  begin
    cds.Refresh;
  end
  else if not registro.RegistroAbrir(cds.fieldbyname(_cdordcompra).asinteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cds.fieldbyname(_cdordcompra).asstring, maiuscula(_ordem+' '+_compra)]), mterror, [mbok], 0);
    exit;
  end;
  registro.set_readonly_dados(self, false);
  cds.edit;
  registro.set_grade_item(self, True);
  cdsCDSTORDCOMPRA.AsString := statusAtendimento;
  actSalvarExecute(actSalvar);
end;

function TfrmOrdCompra.statusAtendimento: string;
var
  c : TClientDataSet;
  boparcial : Boolean;
begin
  boparcial := False;
  c         := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsdetail, true);
    c.First;
    while not c.Eof do
    begin
      if c.FieldByName(_qtatendida).AsFloat > 0 then
      begin
        boparcial := True;
      end;
      c.Next;
    end;
    if boparcial then
    begin
      result := _3
    end
    else
    begin
      result := _1;
    end;
  finally
    FreeAndNil(c);
  end;
end;

procedure TfrmOrdCompra.tbvCDORCAMENTOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsdetail, _orcamento, _cdorcamento, false);
end;

procedure TfrmOrdCompra.tbvCDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsdetail, _ordproducao, _cdordproducao, false);
end;

procedure TfrmOrdCompra.cdsdetailCDORCAMENTOValidate(Sender: TField);
var
  orcamento : Torcamento;
begin
  if sender.asstring = '' then
  begin
    exit;
  end;
  orcamento := torcamento.create;
  try
    if not orcamento.Select(sender.AsInteger) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__orcamento)]), mterror, [mbok], 0);
      Sender.FocusControl;
      Abort;
    end;
  finally
    FreeAndNil(orcamento);
  end;
end;

procedure TfrmOrdCompra.cdsdetailCDORDPRODUCAOValidate(Sender: TField);
var
  ordproducao : TOrdProducao;
begin
  if sender.asstring = '' then
  begin
    exit;
  end;
  if not CodigoExiste( _ordproducao, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_ordem+' '+__producao)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  ordproducao := tordproducao.create;
  try
    ordproducao.Select(sender.AsInteger);
    if ordproducao.cdstordproducao = 4 then
    begin
      Exit;
    end;
    ordproducao.cdstordproducao := 4;
    aplicacao.con2.ExecuteDirect(ordproducao.Update(True));
    aplicacao.con2.ExecuteDirect(ordproducao.RegistrarMudancaStatus(True));
  finally
    FreeAndNil(ordproducao);
  end;
end;

procedure TfrmOrdCompra.actabrirorcamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmOrdCompra.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmOrdCompra.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoExecute(actabrirproduto)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdorcamento then
  begin
    actabrirorcamentoExecute(actabrirorcamento)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao)
  end;
end;

procedure TfrmOrdCompra.tbvNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsdetail, _cntcusto, _nucntcusto, false);
end;

procedure TfrmOrdCompra.tbvNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsdetail, _plconta, _nuplconta, false);
end;

procedure TfrmOrdCompra.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmOrdCompra.actdeclinarExecute(Sender: TObject);
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  actEditarExecute(acteditar);
  cdsCDSTORDCOMPRA.AsString := _4;
  actSalvarExecute(actSalvar);
end;

procedure TfrmOrdCompra.lbltpordcompraDblClick(Sender: TObject);
begin
  actAbrirtpordcompra.onExecute(actAbrirtpordcompra);
end;

procedure TfrmOrdCompra.actabrirtpordcompraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmOrdCompra.lblcondpagtoDblClick(Sender: TObject);
begin
  actAbrircondpagto.onExecute(actAbrircondpagto);
end;

procedure TfrmOrdCompra.actabrircondpagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmOrdCompra.cdsdetailNUCNTCUSTOValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsdetailCDcntcusto.Clear;
    cdsdetailNMcntcusto.Clear;
    exit;
  end;
  if not codigoexiste( _cntcusto, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsdetailCDcntcusto.AsString := CodigodoCampo(_cntcusto, sender.AsString, _nunivel);
  cdsdetailNMcntcusto.AsString := Nomedocodigo (_cntcusto, cdsdetailCDcntcusto.AsString);
end;

procedure TfrmOrdCompra.cdsdetailNUKMATUALValidate(Sender: TField);
begin
  if Sender.AsInteger < 0 then
  begin
    MessageDlg('Km atual não pode ser negativo.', mtinformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmOrdCompra.cdsdetailNUKMFINALValidate(Sender: TField);
begin
  if sender.AsInteger < 0 then
  begin
    MessageDlg('Km final não pode ser negativo.', mtinformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmOrdCompra.cdsdetailNUPLCONTAValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsdetailCDPLCONTA.Clear;
    cdsdetailNMPLCONTA.Clear;
    exit;
  end;
  if not codigoexiste( _plconta, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsdetailCDPLCONTA.AsString := CodigodoCampo(_plconta, sender.AsString, _nunivel);
  cdsdetailNMPLCONTA.AsString := Nomedocodigo (_plconta, cdsdetailCDPLCONTA.AsString);
end;

procedure TfrmOrdCompra.travarOrdcompraAtendida;
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

procedure TfrmOrdCompra.cdsCDTRANSPORTADORAValidate(Sender: TField);
var
  cdsttransportadora : integer;
begin
  if not RegistroExiste(_transportadora, Sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_transportadora)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsttransportadora := qregistro.InteirodoCodigo(_transportadora, sender.AsString, _cdsttransportadora);
  if not qregistro.BooleandoCodigo(_sttransportadora, cdsttransportadora, _bogerarinfo) then
  begin
    messagedlg('Transportadora está no status '+qregistro.NomedoCodigo(_sttransportadora, cdsttransportadora)+#13'que não permite ser inserido no '+Exibe+'.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMTRANSPORTADORA.AsString := NomedoCodigo(_transportadora, sender.AsString);
end;

procedure TfrmOrdCompra.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmOrdCompra.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(tbl, cds.fieldbyname(_cdordcompra).AsString);
end;

procedure TfrmOrdCompra.actaprovacaoExecute(Sender: TObject);
begin
  if dlgOrdCompraAprovacao(cds.fieldbyname(_cdordcompra).AsInteger, usuario.cdusuario) then
  begin
    abrir(cds.fieldbyname(_cdordcompra).asinteger);
  end;
end;

end.
