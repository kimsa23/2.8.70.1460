unit uPedidoMaterial;

interface

uses
  System.Actions, System.UITypes,
  Math, forms, windows, ExtCtrls, ToolWin, Mask, Controls, StdCtrls, Classes, ActnList,
  Variants, ComCtrls, Buttons, dialogs, sysutils, Menus, Messages, Graphics,
  Grids, FMTBcd, Provider, DBGrids, sqlexpr, DB, DBClient,
  ulocalizarproduto, ulocalizar, ulocalizarFornecedor, ustrings,
  uconstantes, udatahora, uregistro, uExportarExcel, urotinas,
  unovoproduto,
  classegerar, classeconsiste, classeregistrainformacao, classeform,
  classeempresa, classeretornasql, classeproduto, classepedidomaterial, classefornecedor,
  classeexecutasql, classeaplicacao, classeRegistro, classeusuario,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxImageComboBox, cxDBLookupComboBox,
  cxCalendar, cxLookAndFeels, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCurrencyEdit, cxPC, cxButtonEdit, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxMemo, cxCheckBox, cxLookAndFeelPainters, cxGroupBox,
  cxLabel, cxSplitter, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, dxBar,
  cxDBLabel, dxNavBar, dxNavBarCollns, dxNavBarBase, dxdbtrel, cxTreeView, cxCalc,
  cxDBEditRepository, cxPCdxBarPopupMenu, cxNavigator, dxCore, dxBarBuiltInMenu,
  cxBlobEdit;

type
  TfrmPedidoMaterial = class(TForm)
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
    actabrirtppedidomaterial: TAction;
    actabrirstpedidomaterial: TAction;
    actAbrirFornecedor: TAction;
    actAbrirProduto: TAction;
    actAbrirOrdCompra: TAction;
    actAbrirFornecedor2: TAction;
    actAbrirProduto2: TAction;
    actAbrirFornecedor3: TAction;
    actfechar: TAction;
    sds: TSQLDataSet;
    sdsdetail: TSQLDataSet;
    sdspedidomaterialfornecedor: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsdetail: TClientDataSet;
    cdspedidomaterialfornecedor: TClientDataSet;
    dts: TDataSource;
    dtspedidomaterialfornecedor: TDataSource;
    dtsdetail: TDataSource;
    sdsCDPEDIDOMATERIAL: TIntegerField;
    sdsCDTPPEDIDOMATERIAL: TIntegerField;
    sdsCDSTPEDIDOMATERIAL: TIntegerField;
    sdsCDFUNCIONARIOSOLICITANTE: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDTEMPREGO: TDateField;
    sdsVLTOTAL: TFMTBCDField;
    sdsDSOBSERVACAO: TBlobField;
    cdsCDPEDIDOMATERIAL: TIntegerField;
    cdsCDTPPEDIDOMATERIAL: TIntegerField;
    cdsCDSTPEDIDOMATERIAL: TIntegerField;
    cdsCDFUNCIONARIOSOLICITANTE: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDTEMPREGO: TDateField;
    cdsVLTOTAL: TFMTBCDField;
    cdsDSOBSERVACAO: TBlobField;
    dts1: TDataSource;
    cdssdsdetail: TDataSetField;
    sdsdetailCDPEDIDOMATERIAL: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailQTSOLICITADA: TFloatField;
    sdsdetailQTESTOQUE: TFloatField;
    sdsdetailQTATENDIDA: TFloatField;
    sdsdetailNMPRODUTO: TStringField;
    sdsdetailNMUNIDADE: TStringField;
    cdsdetailCDPEDIDOMATERIAL: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailQTSOLICITADA: TFloatField;
    cdsdetailQTESTOQUE: TFloatField;
    cdsdetailQTATENDIDA: TFloatField;
    cdsdetailNMPRODUTO: TStringField;
    cdsdetailNMUNIDADE: TStringField;
    sdspedidomaterialfornecedorCDPEDIDOMATERIAL: TIntegerField;
    sdspedidomaterialfornecedorNUCOTACAO: TIntegerField;
    sdspedidomaterialfornecedorDTCOTACAO: TDateField;
    sdspedidomaterialfornecedorNMFORNECEDOR: TStringField;
    cdspedidomaterialfornecedorCDPEDIDOMATERIAL: TIntegerField;
    cdspedidomaterialfornecedorNUCOTACAO: TIntegerField;
    cdspedidomaterialfornecedorDTCOTACAO: TDateField;
    cdspedidomaterialfornecedorNMFORNECEDOR: TStringField;
    actordcompra: TAction;
    actentrada: TAction;
    pgc: TcxPageControl;
    tbsProduto: TcxTabSheet;
    tbsObservacao: TcxTabSheet;
    memdsobservacao: TcxDBMemo;
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
    btnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    cdssdspedidomaterialfornecedor: TDataSetField;
    Panel1: TPanel;
    bvl1: TBevel;
    cxGroupBox2: TcxGroupBox;
    Label11: TLabel;
    cbxcdfuncionariosolicitante: TcxDBLookupComboBox;
    cxLabel1: TcxLabel;
    edtcodigo: TcxTextEdit;
    cxLabel2: TcxLabel;
    edtdtemissao: TcxDBDateEdit;
    cxLabel3: TcxLabel;
    edtDTEMPREGO: TcxDBDateEdit;
    lblcdtppedidomaterial: TcxLabel;
    cbxcdtppedidomaterial: TcxDBLookupComboBox;
    pnl: TcxLabel;
    Label15: TLabel;
    edtcdtpaplicacao: TcxDBButtonEdit;
    txtnmtpaplicacao: TcxDBLabel;
    sdsCDTPAPLICACAO: TIntegerField;
    cdsCDTPAPLICACAO: TIntegerField;
    sdsNMTPAPLICACAO: TStringField;
    cdsNMTPAPLICACAO: TStringField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    edtdsaplicacao: TcxDBTextEdit;
    sdsDSAPLICACAO: TStringField;
    cdsDSAPLICACAO: TStringField;
    cbxcdfinalidadeordcompra: TcxDBLookupComboBox;
    lblfinalidadeordcompra: TcxLabel;
    sdsCDFINALIDADEORDCOMPRA: TIntegerField;
    cdsCDFINALIDADEORDCOMPRA: TIntegerField;
    lbltpfornecedor: TcxLabel;
    cbxcdtpfornecedor: TcxDBLookupComboBox;
    sdsCDTPFORNECEDOR: TIntegerField;
    cdsCDTPFORNECEDOR: TIntegerField;
    lblstpedidomaterial: TcxLabel;
    sdsNMSTPEDIDOMATERIAL: TStringField;
    cdsNMSTPEDIDOMATERIAL: TStringField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdspedidomaterialfornecedorCDUSUARIOI: TIntegerField;
    sdspedidomaterialfornecedorCDUSUARIOA: TIntegerField;
    sdspedidomaterialfornecedorCDCOMPUTADORI: TIntegerField;
    sdspedidomaterialfornecedorCDCOMPUTADORA: TIntegerField;
    sdspedidomaterialfornecedorTSINCLUSAO: TSQLTimeStampField;
    sdspedidomaterialfornecedorTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdspedidomaterialfornecedorCDUSUARIOI: TIntegerField;
    cdspedidomaterialfornecedorCDUSUARIOA: TIntegerField;
    cdspedidomaterialfornecedorCDCOMPUTADORI: TIntegerField;
    cdspedidomaterialfornecedorCDCOMPUTADORA: TIntegerField;
    cdspedidomaterialfornecedorTSINCLUSAO: TSQLTimeStampField;
    cdspedidomaterialfornecedorTSALTERACAO: TSQLTimeStampField;
    sdsdetailCDITPEDIDOMATERIAL: TIntegerField;
    cdsdetailCDITPEDIDOMATERIAL: TIntegerField;
    pgccotacao: TcxPageControl;
    tbsfornecedor: TcxTabSheet;
    splcotacao: TcxSplitter;
    tbsfornecedor1: TcxTabSheet;
    grdpedidomaterialfornecedor: TcxGrid;
    btvfornecedor: TcxGridDBBandedTableView;
    btvfornecedorCDPEDIDOMATERIAL: TcxGridDBBandedColumn;
    btvfornecedorNMFORNECEDOR: TcxGridDBBandedColumn;
    btvfornecedorNUCOTACAO: TcxGridDBBandedColumn;
    btvfornecedorDTCOTACAO: TcxGridDBBandedColumn;
    btvfornecedorBOVENCEDOR: TcxGridDBBandedColumn;
    btvfornecedorBOEXCLUSIVO: TcxGridDBBandedColumn;
    btvfornecedorCdfornecedor: TcxGridDBBandedColumn;
    cxGridLevel3: TcxGridLevel;
    sdsITPEDIDOMATERIALFORNECEDOR: TSQLDataSet;
    cdsITPEDIDOMATERIALFORNECEDOR: TClientDataSet;
    dtsITPEDIDOMATERIALFORNECEDOR: TDataSource;
    dts2: TDataSource;
    grditpedidomaterialfornecedor: TcxGrid;
    sdsITPEDIDOMATERIALFORNECEDORCDITPEDIDOMATERIAL: TIntegerField;
    sdsITPEDIDOMATERIALFORNECEDORCDUSUARIOI: TIntegerField;
    sdsITPEDIDOMATERIALFORNECEDORCDUSUARIOA: TIntegerField;
    sdsITPEDIDOMATERIALFORNECEDORCDCOMPUTADORI: TIntegerField;
    sdsITPEDIDOMATERIALFORNECEDORCDCOMPUTADORA: TIntegerField;
    sdsITPEDIDOMATERIALFORNECEDORVLUNITARIO: TFMTBCDField;
    sdsITPEDIDOMATERIALFORNECEDORVLTOTAL: TFMTBCDField;
    sdsITPEDIDOMATERIALFORNECEDORBOVENCEDOR: TStringField;
    sdsITPEDIDOMATERIALFORNECEDORTSINCLUSAO: TSQLTimeStampField;
    sdsITPEDIDOMATERIALFORNECEDORTSALTERACAO: TSQLTimeStampField;
    sdsITPEDIDOMATERIALFORNECEDORQTITEM: TFloatField;
    sdsITPEDIDOMATERIALFORNECEDORDTPREVENTREGA: TDateField;
    sdsITPEDIDOMATERIALFORNECEDORALICMS: TFloatField;
    sdsITPEDIDOMATERIALFORNECEDORALIPI: TFloatField;
    sdsITPEDIDOMATERIALFORNECEDORVLFRETE: TFMTBCDField;
    sdsITPEDIDOMATERIALFORNECEDORVLICMSDIFALIQUOTA: TFMTBCDField;
    sdsITPEDIDOMATERIALFORNECEDORVLDESCONTO: TFMTBCDField;
    sdsITPEDIDOMATERIALFORNECEDORVLFINAL: TFMTBCDField;
    sdsITPEDIDOMATERIALFORNECEDORBORECUPERAICMS: TStringField;
    sdsITPEDIDOMATERIALFORNECEDORBORECUPERAIPI: TStringField;
    sdsITPEDIDOMATERIALFORNECEDORALICMSDIFALIQUOTA: TFloatField;
    sdsITPEDIDOMATERIALFORNECEDORVLREAL: TFMTBCDField;
    cdsdetailsdsITPEDIDOMATERIALFORNECEDOR: TDataSetField;
    cdsITPEDIDOMATERIALFORNECEDORCDITPEDIDOMATERIAL: TIntegerField;
    cdsITPEDIDOMATERIALFORNECEDORCDUSUARIOI: TIntegerField;
    cdsITPEDIDOMATERIALFORNECEDORCDUSUARIOA: TIntegerField;
    cdsITPEDIDOMATERIALFORNECEDORCDCOMPUTADORI: TIntegerField;
    cdsITPEDIDOMATERIALFORNECEDORCDCOMPUTADORA: TIntegerField;
    cdsITPEDIDOMATERIALFORNECEDORVLUNITARIO: TFMTBCDField;
    cdsITPEDIDOMATERIALFORNECEDORVLTOTAL: TFMTBCDField;
    cdsITPEDIDOMATERIALFORNECEDORBOVENCEDOR: TStringField;
    cdsITPEDIDOMATERIALFORNECEDORTSINCLUSAO: TSQLTimeStampField;
    cdsITPEDIDOMATERIALFORNECEDORTSALTERACAO: TSQLTimeStampField;
    cdsITPEDIDOMATERIALFORNECEDORQTITEM: TFloatField;
    cdsITPEDIDOMATERIALFORNECEDORDTPREVENTREGA: TDateField;
    cdsITPEDIDOMATERIALFORNECEDORALICMS: TFloatField;
    cdsITPEDIDOMATERIALFORNECEDORALIPI: TFloatField;
    cdsITPEDIDOMATERIALFORNECEDORVLFRETE: TFMTBCDField;
    cdsITPEDIDOMATERIALFORNECEDORVLICMSDIFALIQUOTA: TFMTBCDField;
    cdsITPEDIDOMATERIALFORNECEDORVLDESCONTO: TFMTBCDField;
    cdsITPEDIDOMATERIALFORNECEDORVLFINAL: TFMTBCDField;
    cdsITPEDIDOMATERIALFORNECEDORBORECUPERAICMS: TStringField;
    cdsITPEDIDOMATERIALFORNECEDORBORECUPERAIPI: TStringField;
    cdsITPEDIDOMATERIALFORNECEDORALICMSDIFALIQUOTA: TFloatField;
    cdsITPEDIDOMATERIALFORNECEDORVLREAL: TFMTBCDField;
    sdsITPEDIDOMATERIALFORNECEDORNMFORNECEDOR: TStringField;
    cdsITPEDIDOMATERIALFORNECEDORNMFORNECEDOR: TStringField;
    grddetail: TcxGrid;
    btvItems: TcxGridDBBandedTableView;
    btvItemsCDPRODUTO: TcxGridDBBandedColumn;
    btvItemsCDDIGITADO: TcxGridDBBandedColumn;
    btvItemsQTSOLICITADA: TcxGridDBBandedColumn;
    btvItemsQTESTOQUE: TcxGridDBBandedColumn;
    btvItemsQTATENDIDA: TcxGridDBBandedColumn;
    btvItemsNMPRODUTO: TcxGridDBBandedColumn;
    btvItemsNMUNIDADE: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    sdsITPEDIDOMATERIALFORNECEDORVLICMS: TFMTBCDField;
    sdsITPEDIDOMATERIALFORNECEDORVLIPI: TFMTBCDField;
    cdsITPEDIDOMATERIALFORNECEDORVLICMS: TFMTBCDField;
    cdsITPEDIDOMATERIALFORNECEDORVLIPI: TFMTBCDField;
    grlLevel2: TcxGridLevel;
    btvcotacao: TcxGridDBBandedTableView;
    btvcotacaoVLUNITARIO: TcxGridDBBandedColumn;
    btvcotacaoVLTOTAL: TcxGridDBBandedColumn;
    btvcotacaoBOVENCEDOR: TcxGridDBBandedColumn;
    btvcotacaoQTITEM: TcxGridDBBandedColumn;
    btvcotacaoDTPREVENTREGA: TcxGridDBBandedColumn;
    btvcotacaoALICMS: TcxGridDBBandedColumn;
    btvcotacaoALIPI: TcxGridDBBandedColumn;
    btvcotacaoVLFRETE: TcxGridDBBandedColumn;
    btvcotacaoVLICMSDIFALIQUOTA: TcxGridDBBandedColumn;
    btvcotacaoVLDESCONTO: TcxGridDBBandedColumn;
    btvcotacaoVLFINAL: TcxGridDBBandedColumn;
    btvcotacaoBORECUPERAICMS: TcxGridDBBandedColumn;
    btvcotacaoBORECUPERAIPI: TcxGridDBBandedColumn;
    btvcotacaoALICMSDIFALIQUOTA: TcxGridDBBandedColumn;
    btvcotacaoVLREAL: TcxGridDBBandedColumn;
    btvcotacaoNMFORNECEDOR: TcxGridDBBandedColumn;
    btvcotacaoVLICMS: TcxGridDBBandedColumn;
    btvcotacaoVLIPI: TcxGridDBBandedColumn;
    sdsdetailBORECUPERAICMS: TStringField;
    sdsdetailBORECUPERAIPI: TStringField;
    cdsdetailBORECUPERAICMS: TStringField;
    cdsdetailBORECUPERAIPI: TStringField;
    sdsvencedor: TSQLDataSet;
    cdsvencedor: TClientDataSet;
    dtsvencedor: TDataSource;
    dts3: TDataSource;
    sdsvencedorCDITPEDIDOMATERIAL: TIntegerField;
    sdsvencedorCDUSUARIOI: TIntegerField;
    sdsvencedorCDUSUARIOA: TIntegerField;
    sdsvencedorCDCOMPUTADORI: TIntegerField;
    sdsvencedorCDCOMPUTADORA: TIntegerField;
    sdsvencedorVLUNITARIO: TFMTBCDField;
    sdsvencedorVLTOTAL: TFMTBCDField;
    sdsvencedorBOVENCEDOR: TStringField;
    sdsvencedorTSINCLUSAO: TSQLTimeStampField;
    sdsvencedorTSALTERACAO: TSQLTimeStampField;
    sdsvencedorQTITEM: TFloatField;
    sdsvencedorDTPREVENTREGA: TDateField;
    sdsvencedorALICMS: TFloatField;
    sdsvencedorALIPI: TFloatField;
    sdsvencedorVLFRETE: TFMTBCDField;
    sdsvencedorVLICMSDIFALIQUOTA: TFMTBCDField;
    sdsvencedorVLDESCONTO: TFMTBCDField;
    sdsvencedorVLFINAL: TFMTBCDField;
    sdsvencedorBORECUPERAICMS: TStringField;
    sdsvencedorBORECUPERAIPI: TStringField;
    sdsvencedorALICMSDIFALIQUOTA: TFloatField;
    sdsvencedorVLREAL: TFMTBCDField;
    sdsvencedorVLICMS: TFMTBCDField;
    sdsvencedorVLIPI: TFMTBCDField;
    sdsvencedorNMPRODUTO: TStringField;
    cdsvencedorCDITPEDIDOMATERIAL: TIntegerField;
    cdsvencedorCDUSUARIOI: TIntegerField;
    cdsvencedorCDUSUARIOA: TIntegerField;
    cdsvencedorCDCOMPUTADORI: TIntegerField;
    cdsvencedorCDCOMPUTADORA: TIntegerField;
    cdsvencedorVLUNITARIO: TFMTBCDField;
    cdsvencedorVLTOTAL: TFMTBCDField;
    cdsvencedorBOVENCEDOR: TStringField;
    cdsvencedorTSINCLUSAO: TSQLTimeStampField;
    cdsvencedorTSALTERACAO: TSQLTimeStampField;
    cdsvencedorQTITEM: TFloatField;
    cdsvencedorDTPREVENTREGA: TDateField;
    cdsvencedorALICMS: TFloatField;
    cdsvencedorALIPI: TFloatField;
    cdsvencedorVLFRETE: TFMTBCDField;
    cdsvencedorVLICMSDIFALIQUOTA: TFMTBCDField;
    cdsvencedorVLDESCONTO: TFMTBCDField;
    cdsvencedorVLFINAL: TFMTBCDField;
    cdsvencedorBORECUPERAICMS: TStringField;
    cdsvencedorBORECUPERAIPI: TStringField;
    cdsvencedorALICMSDIFALIQUOTA: TFloatField;
    cdsvencedorVLREAL: TFMTBCDField;
    cdsvencedorVLICMS: TFMTBCDField;
    cdsvencedorVLIPI: TFMTBCDField;
    cdsvencedorNMPRODUTO: TStringField;
    splvencedor: TcxSplitter;
    pgcvencedor: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    btvvencedor: TcxGridDBBandedTableView;
    cxGridDBBandedVLUNITARIO: TcxGridDBBandedColumn;
    cxGridDBBandedVLTOTAL: TcxGridDBBandedColumn;
    cxGridDBBandedQTITEM: TcxGridDBBandedColumn;
    cxGridDBBandedDTPREVENTREGA: TcxGridDBBandedColumn;
    cxGridDBBandedALICMS: TcxGridDBBandedColumn;
    cxGridDBBandedALIPI: TcxGridDBBandedColumn;
    cxGridDBBandedVLFRETE: TcxGridDBBandedColumn;
    cxGridDBBandedVLICMSDIFALIQUOTA: TcxGridDBBandedColumn;
    cxGridDBBandedVLDESCONTO: TcxGridDBBandedColumn;
    cxGridDBBandedVLFINAL: TcxGridDBBandedColumn;
    cxGridDBBandedBORECUPERAICMS: TcxGridDBBandedColumn;
    cxGridDBBandedBORECUPERAIPI: TcxGridDBBandedColumn;
    cxGridDBBandedALICMSDIFALIQUOTA: TcxGridDBBandedColumn;
    cxGridDBBandedVLREAL: TcxGridDBBandedColumn;
    cxGridDBBandedNMPRODUTO: TcxGridDBBandedColumn;
    cxGridDBBandedVLICMS: TcxGridDBBandedColumn;
    cxGridDBBandedVLIPI: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    bmgfornecedor: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    actgerarordcomprafornecedor: TAction;
    dxBarButton1: TdxBarButton;
    sdspedidomaterialfornecedorCDORDCOMPRA: TIntegerField;
    cdspedidomaterialfornecedorCDORDCOMPRA: TIntegerField;
    btvfornecedorCDORDCOMPRA: TcxGridDBBandedColumn;
    sdsBOEXCLUSIVO: TStringField;
    sdsBOSEMCOTACAO: TStringField;
    cdsBOEXCLUSIVO: TStringField;
    cdsBOSEMCOTACAO: TStringField;
    ckbboexclusivo: TcxDBCheckBox;
    chkbosemcotacao: TcxDBCheckBox;
    sdspedidomaterialfornecedorCDCONDPAGTO: TIntegerField;
    btvfornecedorCDCONDPAGTO: TcxGridDBBandedColumn;
    sdspedidomaterialfornecedorDTPRVENTREGA: TDateField;
    cdspedidomaterialfornecedorCDCONDPAGTO: TIntegerField;
    cdspedidomaterialfornecedorDTPRVENTREGA: TDateField;
    btvfornecedorDTPRVENTREGA: TcxGridDBBandedColumn;
    btvvencedorBOVENCEDOR: TcxGridDBBandedColumn;
    sdsdetailCDCNTCUSTO: TIntegerField;
    cdsdetailCDCNTCUSTO: TIntegerField;
    btvItemsCDCNTCUSTO: TcxGridDBBandedColumn;
    sdspedidomaterialfornecedorCDPEDIDOMATERIALFORNECEDOR: TIntegerField;
    cdspedidomaterialfornecedorCDPEDIDOMATERIALFORNECEDOR: TIntegerField;
    lblcomprador: TLabel;
    cbxcdfuncionariocomprador: TcxDBLookupComboBox;
    sdsCDFUNCIONARIOCOMPRADOR: TIntegerField;
    cdsCDFUNCIONARIOCOMPRADOR: TIntegerField;
    sdspedidomaterialfornecedorCDITCONTFORNECEDOR: TIntegerField;
    cdspedidomaterialfornecedorCDITCONTFORNECEDOR: TIntegerField;
    btvfornecedorNMITCONTFORNECEDOR: TcxGridDBBandedColumn;
    sdspedidomaterialfornecedorNMITCONTFORNECEDOR: TStringField;
    cdspedidomaterialfornecedorNMITCONTFORNECEDOR: TStringField;
    dxBarButton2: TdxBarButton;
    actvencedor: TAction;
    sdsITPEDIDOMATERIALFORNECEDORVLICMSSUBTRIB: TFMTBCDField;
    cdsITPEDIDOMATERIALFORNECEDORVLICMSSUBTRIB: TFMTBCDField;
    btvcotacaoVLICMSSUBTRIB: TcxGridDBBandedColumn;
    sdsdetailQTPECA: TFloatField;
    sdsdetailQTPESOUNITARIO: TFloatField;
    cdsdetailQTPECA: TFloatField;
    cdsdetailQTPESOUNITARIO: TFloatField;
    sdsdetailDSFORMULA: TStringField;
    cdsdetailDSFORMULA: TStringField;
    btvItemsQTPECA: TcxGridDBBandedColumn;
    btvItemsQTPESOUNITARIO: TcxGridDBBandedColumn;
    btvItemsDSFORMULA: TcxGridDBBandedColumn;
    actimprimirvazio: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    sdsdetailCDORDPRODUCAO: TIntegerField;
    cdsdetailCDORDPRODUCAO: TIntegerField;
    btvItemsCDORDPRODUCAO: TcxGridDBBandedColumn;
    actabrirordproducao: TAction;
    sdsITPEDIDOMATERIALFORNECEDORCDTPAPROVACAOCOTACAO: TIntegerField;
    cdsITPEDIDOMATERIALFORNECEDORCDTPAPROVACAOCOTACAO: TIntegerField;
    btvcotacaoCDTPAPROVACAOCOTACAO: TcxGridDBBandedColumn;
    sdsvencedorCDTPAPROVACAOCOTACAO: TIntegerField;
    cdsvencedorCDTPAPROVACAOCOTACAO: TIntegerField;
    btvvencedorCDTPAPROVACAOCOTACAO: TcxGridDBBandedColumn;
    sdsdetailBOCERTIFICADO: TStringField;
    cdsdetailBOCERTIFICADO: TStringField;
    btvItemsBOCERTIFICADO: TcxGridDBBandedColumn;
    sdsdetailCDRIM: TIntegerField;
    cdsdetailCDRIM: TIntegerField;
    btvItemsCDRIM: TcxGridDBBandedColumn;
    cdspedidomaterialfornecedorCDCLFORNECEDOR: TIntegerField;
    sdspedidomaterialfornecedorCDCLFORNECEDOR: TIntegerField;
    btvfornecedorCDCLFORNECEDOR: TcxGridDBBandedColumn;
    actimprimiraprovacao: TAction;
    pumimprimir: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    cdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField;
    sdsdetailCDITORDPRODUCAOMATERIAL: TIntegerField;
    dxBarButton4: TdxBarButton;
    actenviaremail: TAction;
    cdspedidomaterialfornecedorsdsvencedor: TDataSetField;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    actstatus: TAction;
    bsiStatus: TdxBarSubItem;
    actmudarstatus: TAction;
    dtshstpedidomaterial: TDataSource;
    cdshstpedidomaterial: TClientDataSet;
    cdshstpedidomaterialNMUSUARIO: TStringField;
    cdshstpedidomaterialNMCOMPUTADOR: TStringField;
    cdshstpedidomaterialTSHISTORICO: TSQLTimeStampField;
    cdshstpedidomaterialDSJUSTIFICATIVA: TBlobField;
    cdshstpedidomaterialNMSTPEDIDOMATERIAL: TStringField;
    sdshstpedidomaterial: TSQLDataSet;
    sdshstpedidomaterialNMUSUARIO: TStringField;
    sdshstpedidomaterialNMCOMPUTADOR: TStringField;
    sdshstpedidomaterialTSHISTORICO: TSQLTimeStampField;
    sdshstpedidomaterialDSJUSTIFICATIVA: TBlobField;
    sdshstpedidomaterialNMSTPEDIDOMATERIAL: TStringField;
    tbshstpedidomaterial: TcxTabSheet;
    grdhstpedidomaterial: TcxGrid;
    tbvhstpedidomaterial: TcxGridDBTableView;
    tbvhstpedidomaterialNMSTPEDIDOMATERIAL: TcxGridDBColumn;
    tbvhstpedidomaterialNMUSUARIO: TcxGridDBColumn;
    tbvhstpedidomaterialNMCOMPUTADOR: TcxGridDBColumn;
    tbvhstpedidomaterialTSHISTORICO: TcxGridDBColumn;
    tbvhstpedidomaterialDSJUSTIFICATIVA: TcxGridDBColumn;
    grdhstpedidomaterialLevel1: TcxGridLevel;
    cdssdshstpedidomaterial: TDataSetField;
    sdsCDUSUARIOAPROVADOR: TIntegerField;
    cdsCDUSUARIOAPROVADOR: TIntegerField;
    txtnmstpedidomaterial: TcxDBLabel;
    sdsCDEMPRESA: TLargeintField;
    sdsDSOBSERVACAOINTERNA: TBlobField;
    cdsCDEMPRESA: TLargeintField;
    cdsDSOBSERVACAOINTERNA: TBlobField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsdetailCDITRIM: TIntegerField;
    sdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDITRIM: TIntegerField;
    cdsdetailDSOBSERVACAO: TBlobField;
    sdspedidomaterialfornecedorCDEMPRESA: TLargeintField;
    sdspedidomaterialfornecedorCDFORNECEDOR: TLargeintField;
    cdspedidomaterialfornecedorCDEMPRESA: TLargeintField;
    cdspedidomaterialfornecedorCDFORNECEDOR: TLargeintField;
    sdsITPEDIDOMATERIALFORNECEDORCDEMPRESA: TLargeintField;
    sdsITPEDIDOMATERIALFORNECEDORCDFORNECEDOR: TLargeintField;
    cdsITPEDIDOMATERIALFORNECEDORCDEMPRESA: TLargeintField;
    cdsITPEDIDOMATERIALFORNECEDORCDFORNECEDOR: TLargeintField;
    sdsvencedorCDEMPRESA: TLargeintField;
    sdsvencedorCDFORNECEDOR: TLargeintField;
    sdsvencedorVLICMSSUBTRIB: TFMTBCDField;
    cdsvencedorCDEMPRESA: TLargeintField;
    cdsvencedorCDFORNECEDOR: TLargeintField;
    cdsvencedorVLICMSSUBTRIB: TFMTBCDField;
    procedure actNovoExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actPrimeiroexecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actabrirtppedidomaterialExecute(Sender: TObject);
    procedure actabrirstpedidomaterialExecute(Sender: TObject);
    procedure grdFornecedorDblClick(Sender: TObject);
    procedure actAbrirProdutoExecute(Sender: TObject);
    procedure grdDetailDblClick(Sender: TObject);
    procedure grdConsultaProdutoFornecedorDblClick(Sender: TObject);
    procedure grdConsultaFornecedorDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdspedidomaterialfornecedorBeforePost(DataSet: TDataSet);
    procedure cxGridDBBandedTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsCDTPPEDIDOMATERIALValidate(Sender: TField);
    procedure cdspedidomaterialfornecedorNewRecord(DataSet: TDataSet);
    procedure cxGridDBBandedTableView3CDFORNECEDORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdspedidomaterialfornecedorCDFORNECEDORValidate(Sender: TField);
    procedure cdsCDTPAPLICACAOValidate(Sender: TField);
    procedure edtcdtpaplicacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtpaplicacaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsITPEDIDOMATERIALFORNECEDORBeforePost(DataSet: TDataSet);
    procedure cdsITPEDIDOMATERIALFORNECEDORNewRecord(DataSet: TDataSet);
    procedure cdspedidomaterialfornecedorBeforeDelete(DataSet: TDataSet);
    procedure cdsdetailBeforeDelete(DataSet: TDataSet);
    procedure cdsdetailAfterPost(DataSet: TDataSet);
    procedure cdsITPEDIDOMATERIALFORNECEDORVLUNITARIOValidate(Sender: TField);
    procedure cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate(Sender: TField);
    procedure cdspedidomaterialfornecedorAfterScroll(DataSet: TDataSet);
    procedure actgerarordcomprafornecedorExecute(Sender: TObject);
    procedure cdspedidomaterialfornecedorDTPRVENTREGAValidate(Sender: TField);
    procedure cdsBOEXCLUSIVOValidate(Sender: TField);
    procedure btvcotacaoBOVENCEDORPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsvencedorVLUNITARIOValidate(Sender: TField);
    procedure cdsvencedorVLTOTALValidate(Sender: TField);
    procedure btvfornecedorNMITCONTFORNECEDORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdspedidomaterialfornecedorNMITCONTFORNECEDORValidate(Sender: TField);
    procedure cdspedidomaterialfornecedorBeforeInsert(DataSet: TDataSet);
    procedure actvencedorExecute(Sender: TObject);
    procedure btvItemsQTPESOUNITARIOPropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
    procedure cdsdetailQTPECAValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdtppedidomaterialEnter(Sender: TObject);
    procedure cbxcdfinalidadeordcompraEnter(Sender: TObject);
    procedure cbxcdtpfornecedorEnter(Sender: TObject);
    procedure cbxcdfuncionariosolicitanteEnter(Sender: TObject);
    procedure cbxcdfuncionariocompradorEnter(Sender: TObject);
    procedure actimprimirvazioExecute(Sender: TObject);
    procedure btvItemsCDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDORDPRODUCAOValidate(Sender: TField);
    procedure cdsvencedorBeforePost(DataSet: TDataSet);
    procedure btvItemsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actimprimiraprovacaoExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actAbrirFornecedorExecute(Sender: TObject);
    procedure btvfornecedorCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure lblcdtppedidomaterialDblClick(Sender: TObject);
    procedure actenviaremailExecute(Sender: TObject);
    procedure actmudarstatusExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actstatusExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    boinsert : Boolean;
    fornecedor     : TFornecedor;
    tbl, codigoinsercao : string;
    produto        : TProduto;
    pedidomaterial : TPedidoMaterial;
    procedure SetRecord(codigo:string);
    procedure SetOpcoesStatus;
    procedure AbrirTabelas;
    function Existe_vencedor: Boolean;
    function existe_ordcompra: Boolean;
  public  { Public declarations }
    registro       : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmPedidoMaterial: TfrmPedidoMaterial;

implementation

uses UMain,
  uDtmMain,
  utipo,
  uGerarOrdCompra,
  udlgcalculopeso,
  uimprimirrelatoriopadrao,
  ulocalizarordproducao,
  uMenuRelatorio;

{$R *.DFM}

const
  exibe    = 'Cotação';
  artigoI  = 'o';

procedure TfrmPedidoMaterial.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmPedidoMaterial.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmPedidoMaterial.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmPedidoMaterial.actAbrirFornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdspedidomaterialfornecedor);
end;

function TfrmPedidoMaterial.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmPedidoMaterial.AbrirTabelas;
begin
  cbxcdtppedidomaterial.Properties.ListSource := abrir_tabela(_tppedidomaterial);
  cbxcdfinalidadeordcompra.Properties.ListSource := abrir_tabela(_finalidade + _ordcompra);
  TcxLookupComboBoxProperties(btvItemsCDCNTCUSTO.Properties).ListSource := abrir_tabela(_cntcusto);
  cbxcdfuncionariocomprador.Properties.ListSource := abrir_tabela(_funcionario);
  cbxcdfuncionariosolicitante.Properties.ListSource := abrir_tabela(_funcionario);
  cbxcdtpfornecedor.Properties.ListSource := abrir_tabela(_tp + _fornecedor);
  TcxLookupComboBoxProperties(btvfornecedorCDCLFORNECEDOR.Properties).ListSource := abrir_tabela(_clfornecedor);
  TcxLookupComboBoxProperties(btvfornecedorCDCONDPAGTO.Properties).ListSource := abrir_tabela(_condpagto + _e);
  TcxLookupComboBoxProperties(btvcotacaoCDTPAPROVACAOCOTACAO.Properties).ListSource := abrir_tabela(_tp + _aprovacao + _cotacao);
  TcxLookupComboBoxProperties(btvvencedorCDTPAPROVACAOCOTACAO.Properties).ListSource := abrir_tabela(_tp + _aprovacao + _cotacao);
end;

procedure TfrmPedidoMaterial.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmPedidoMaterial.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmPedidoMaterial.actPrimeiroexecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmPedidoMaterial.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmPedidoMaterial.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmPedidoMaterial.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmPedidoMaterial.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmPedidoMaterial.actSalvarExecute(Sender: TObject);
begin
  if (cdsdetail.State = dsinsert) and (cdspedidomaterialfornecedor.State = dsinsert) then
  begin
    cdsdetail.AfterPost := nil;
    cdsdetail.Post;
    cdsdetail.AfterPost := cdsdetailAfterPost;
    cdspedidomaterialfornecedor.post;
  end;

  if cdsdetail.State = dsinsert then
  begin
    cdsdetail.Post;
  end;
  if cdspedidomaterialfornecedor.State = dsinsert then
  begin
    cdspedidomaterialfornecedor.post;
  end;
  registro.Salvar;
end;

procedure TfrmPedidoMaterial.actstatusExecute(Sender: TObject);
begin
//
end;

procedure TfrmPedidoMaterial.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure TfrmPedidoMaterial.FormShow(Sender: TObject);
begin
  fornecedor          := TFornecedor.create;
  produto             := Tproduto.create;
  pedidomaterial      := TPedidoMaterial.create;
  pgc.ActivePageIndex := 1;
  pgc.ActivePageIndex := 0;
  edtCodigo.SetFocus;
  pnl.Caption := exibe;
  btvfornecedorCDCLFORNECEDOR.Visible := Empresa.fornecedor.IQF.bo;
end;

procedure TfrmPedidoMaterial.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmPedidoMaterial.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmPedidoMaterial.actabrirtppedidomaterialExecute(Sender: TObject);
begin
  frmmain.AbrirDireto(taction(sender), cds, cds);
end;

procedure TfrmPedidoMaterial.actabrirstpedidomaterialExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmPedidoMaterial.grdFornecedorDblClick(Sender: TObject);
begin
  actAbrirFornecedor3.onExecute(actAbrirFornecedor3);
end;

procedure TfrmPedidoMaterial.actAbrirProdutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmPedidoMaterial.grdDetailDblClick(Sender: TObject);
begin
  actAbrirProduto.onExecute(actAbrirProduto);
end;

procedure TfrmPedidoMaterial.grdConsultaProdutoFornecedorDblClick(Sender: TObject);
begin
  actAbrirFornecedor2.onExecute(actAbrirFornecedor2);
end;

procedure TfrmPedidoMaterial.grdConsultaFornecedorDblClick(Sender: TObject);
begin
  actAbrirProduto2.onExecute(actAbrirProduto2);
end;

procedure TfrmPedidoMaterial.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
  fornecedor.free;
  produto.free;
  pedidomaterial.Destroy;
end;

procedure TfrmPedidoMaterial.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmPedidoMaterial.SetOpcoesStatus;
var
  b1 : array of TdxBarButton;
  stpedidomateriallist : tstpedidomateriallist;
  i: Integer;
begin
  stpedidomateriallist := tstpedidomateriallist.create;
  try
    stpedidomateriallist.ler(_cdstpedidomaterial+'<>'+_2+' ORDER BY NUSEQUENCIA');
    SetLength(b1, stpedidomateriallist.Count);
    for i := 0 to stpedidomateriallist.count - 1 do
    begin
      B1[i] := TdxBarButton.Create(Self);
      with B1[i] do
      begin
        Caption := stpedidomateriallist.Items[i].nmstpedidomaterial;
        Description := inttostr(stpedidomateriallist.Items[i].cdstpedidomaterial);
        OnClick := actmudarstatusExecute;
      end;
      bsiStatus.ItemLinks.Add.Item := B1[i];
    end;
  finally
    freeandnil(stpedidomateriallist);
  end;
end;

procedure TfrmPedidoMaterial.SetRecord(codigo: string);
begin
  if codigo = '' then
  begin
    exit;
  end;
  pedidomaterial.tppedidomaterial.Select(StrToInt(codigo));
  btvfornecedorNMITCONTFORNECEDOR.Visible := pedidomaterial.tppedidomaterial.bovendedor = _s;
  btvItemsQTPECA.Visible            := pedidomaterial.tppedidomaterial.boitemqtpeca = _s;
  btvItemsQTPESOUNITARIO.Visible    := pedidomaterial.tppedidomaterial.boitemqtpeca = _s;
  btvItemsDSFORMULA.Visible         := pedidomaterial.tppedidomaterial.boitemqtpeca = _s;
  lblcomprador.Visible              := pedidomaterial.tppedidomaterial.bocomprador = _s;
  cbxcdfuncionariocomprador.Visible := pedidomaterial.tppedidomaterial.bocomprador = _s;
  btvItemsCDCNTCUSTO.Visible        := empresa.financeiro.bocntcusto;
  btvItemsCDORDPRODUCAO.Visible     := pedidomaterial.tppedidomaterial.boordproducao = _s;
  lbltpfornecedor.Visible           := pedidomaterial.tppedidomaterial.botpfornecedor = _s;
  cbxcdtpfornecedor.Visible         := pedidomaterial.tppedidomaterial.botpfornecedor = _s;
  lblfinalidadeordcompra.Visible    := pedidomaterial.tppedidomaterial.bofinalidade = _s;
  cbxcdfinalidadeordcompra.Visible  := pedidomaterial.tppedidomaterial.bofinalidade = _s;
  edtdsaplicacao.Visible            := pedidomaterial.tppedidomaterial.boaplicacaodigitar = _s;
  edtcdtpaplicacao.Visible          := pedidomaterial.tppedidomaterial.boaplicacaodigitar <> _s;
end;

procedure TfrmPedidoMaterial.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPPEDIDOMATERIAL.asinteger:= registro.get_tipo_tabela_minumo;
  cdsCDPEDIDOMATERIAL.asstring := GerarCodigo(tbl);
  if codigoinsercao <> '' then
  begin
    cdsCDPEDIDOMATERIAL.Asstring := codigoinsercao;
  end;
  edtcodigo.text := cdsCDPEDIDOMATERIAL.Asstring;
  cdsDTEMISSAO.FocusControl;
  edtdtemissao.SelectAll;
  pnl.Caption                    := exibe+' ' + cdsCDPEDIDOMATERIAL.asstring;
  cdsDTEMISSAO.AsDateTime        := DtBanco;
  cdsDTEMPREGO.AsDateTime        := cdsDTEMISSAO.AsDateTime;
  cdsCDSTPEDIDOMATERIAL.AsInteger := qregistro.Codigo_status_novo(tbl);
  cdsBOEXCLUSIVO.AsString        := _N;
  cdsBOSEMCOTACAO.AsString       := _N;
  SetRecord(cdsCDTPPEDIDOMATERIAL.AsString);
end;

procedure TfrmPedidoMaterial.cdsAfterScroll(DataSet: TDataSet);
begin
  pedidomaterial.Select(cds);
  pedidomaterial.tppedidomaterial.Select(pedidomaterial.cdtppedidomaterial);
  pedidomaterial.ItPedidoMaterial.Ler(cdsdetail);
  pedidomaterial.PedidoMaterialFornecedor.Ler(cdspedidomaterialfornecedor);
  setrecord(cdsCDTPPEDIDOMATERIAL.asstring);
  pnl.Caption := exibe+' ' + cdsCDPEDIDOMATERIAL.asstring;
  actstatus.visible := pedidomaterial.cdstpedidomaterial <> 2;
end;

procedure TfrmPedidoMaterial.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsDTEMISSAO.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__emissao]), mtinformation, [mbok], 0);
    cdsDTEMISSAO.FocusControl;
    abort;
  end;
  if cdsDTEMPREGO.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+_emprego]), mtinformation, [mbok], 0);
    cdsDTEMPREGO.FocusControl;
    abort;
  end;
  if cdsDTEMPREGO.AsDateTime < cdsDTEMISSAO.AsDateTime then
  begin
    messagedlg('A data de Emprego deve ser maior ou igual a data de Emissão.', mterror, [mbok], 0);
    cdsDTEMPREGO.FocusControl;
    abort;
  end;
  if cdsCDTPPEDIDOMATERIAL.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cdsCDTPPEDIDOMATERIAL.FocusControl;
    abort;
  end;
  if cdsCDSTPEDIDOMATERIAL.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Status]), mtinformation, [mbok], 0);
    cdsCDSTPEDIDOMATERIAL.FocusControl;
    abort;
  end;
  if edtcodigo.text <> '' then
  begin
    cdsCDPEDIDOMATERIAL.asstring := edtcodigo.text;
  end;
  // consiste o número de digitos do Pedido de Material
  if length(cdsCDPEDIDOMATERIAL.AsString) > 6 then
  begin
    messagedlg('Número de dígitos do Pedido de Material superior a 6 casas!', mtinformation, [mbok], 0);
    edtcodigo.SetFocus;
    abort;
  end;
  if cdsVLTOTAL.IsNull then
  begin
    cdsVLTOTAL.asstring := _0;
  end;
  if codigoinsercao <> '' then
  begin
    cdsCDPEDIDOMATERIAL.Asstring := codigoinsercao;
    edtcodigo.text               := codigoinsercao;
  end;
  registro.set_update(cds);
end;

procedure TfrmPedidoMaterial.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if (Dataset.State <> dsedit) and (Dataset.state <> dsinsert) then
  begin
    exit;
  end;
  if dataset.FieldByName(_qtsolicitada).AsFloat <= 0 then
  begin
    messagedlg('A quantidade do produto deve ser maior que 0.', mtInformation, [mbok], 0);
    pgc.ActivePage := tbsProduto;
    dataset.FieldByName(_qtsolicitada).FocusControl;
    abort;
  end;
  if (pedidomaterial.tppedidomaterial.bocntcustoobrigatorio = _s) and (dataset.FieldByName(_cdcntcusto).AsString = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Centro_de_Custo]), mtinformation, [mbok], 0);
    dataset.FieldByName(_cdcntcusto).FocusControl;
    Abort;
  end;
  registro.set_update(cdsdetail);
  boinsert := dataset.state = dsinsert;
end;

procedure TfrmPedidoMaterial.cdsdetailCDDIGITADOValidate(Sender: TField);
var
  cdproduto:integer;
begin
  cdproduto := produto.CodigoProdutoDigitado(cdsdetailCDDIGITADO.AsString, _bopedidomaterial);
  if cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(cdproduto);
  produto.CheckDados;
  if cdsdetail.State = dsbrowse then
  begin
    cdsdetail.Edit;
  end;
  cdsdetailNMPRODUTO.asstring      := produto.nmproduto;
  cdsdetailCDPRODUTO.AsInteger     := cdproduto;
  cdsdetailQTESTOQUE.AsCurrency    := produto.qtestoque;
  cdsdetailNMUNIDADE.asstring      := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  cdsdetailBORECUPERAICMS.AsString := produto.borecuperaicms;
  cdsdetailBORECUPERAIPI.AsString  := produto.borecuperaipi;
end;

procedure TfrmPedidoMaterial.cdspedidomaterialfornecedorBeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsinsert then
  begin
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      cdsITPEDIDOMATERIALFORNECEDOR.Insert;
      cdsITPEDIDOMATERIALFORNECEDOR.fieldbyname(_CDFORNECEDOR).AsString := cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsString;
      if not cdspedidomaterialfornecedorDTPRVENTREGA.IsNull then
      begin
        cdsITPEDIDOMATERIALFORNECEDORDTPREVENTREGA.AsDateTime     := cdspedidomaterialfornecedorDTPRVENTREGA.AsDateTime;
      end;
      cdsITPEDIDOMATERIALFORNECEDORCDITPEDIDOMATERIAL.AsInteger := cdsdetailCDITPEDIDOMATERIAL.AsInteger;
      cdsITPEDIDOMATERIALFORNECEDORQTITEM.AsFloat               := cdsdetailQTSOLICITADA.AsFloat;
      cdsITPEDIDOMATERIALFORNECEDORBORECUPERAICMS.AsString      := cdsdetailBORECUPERAICMS.AsString;
      cdsITPEDIDOMATERIALFORNECEDORBORECUPERAIPI.AsString       := cdsdetailBORECUPERAIPI.AsString;
      cdsITPEDIDOMATERIALFORNECEDORNMFORNECEDOR.AsString        := cdspedidomaterialfornecedorNMFORNECEDOR.AsString;
      cdsITPEDIDOMATERIALFORNECEDOR.Post;
      cdsdetail.Next;
    end;
  end;
  registro.set_update(cdspedidomaterialfornecedor);
end;

procedure TfrmPedidoMaterial.cxGridDBBandedTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdsdetail, true);
end;

procedure TfrmPedidoMaterial.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITPEDIDOMATERIAL.AsString := GerarCodigo(_ITPEDIDOMATERIAL);
  cdsdetailCDPEDIDOMATERIAL.AsInteger  := cdsCDPEDIDOMATERIAL.asinteger;
  cdsdetailQTATENDIDA.AsCurrency       := 0;
  cdsdetailQTSOLICITADA.AsCurrency     := 1;
end;

procedure TfrmPedidoMaterial.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.CodigoKeyPress(Sender, Key, True);
end;

procedure TfrmPedidoMaterial.cdsCDTPPEDIDOMATERIALValidate(Sender: TField);
begin
  setrecord(sender.AsString);
end;

procedure TfrmPedidoMaterial.cdspedidomaterialfornecedorNewRecord(DataSet: TDataSet);
begin
  if ckbboexclusivo.Checked and (DataSet.RecordCount = 1) then
  begin
    messagedlg('É permitido apenas um fornecedor para compra de fornecedor exclusivo.', mtinformation, [mbok], 0);
    abort;
  end;
  if dataset.RecordCount = pedidomaterial.tppedidomaterial.qtfornecedor then
  begin
    messagedlg('É permitido o máximo de '+inttostr(pedidomaterial.tppedidomaterial.qtfornecedor)+' fornecedores por cotação.', mtinformation, [mbok], 0);
    abort;
  end;
  cdspedidomaterialfornecedorCDPEDIDOMATERIALFORNECEDOR.AsString := GerarCodigo(_pedidomaterialfornecedor);
end;

procedure TfrmPedidoMaterial.cxGridDBBandedTableView3CDFORNECEDORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : LargeInt;
begin
  codigo := LocalizarFornecedor(true);
  if codigo <> 0 then
  begin
    cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsLargeInt := codigo;
  end;
end;

procedure TfrmPedidoMaterial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPedidoMaterial.cdspedidomaterialfornecedorCDFORNECEDORValidate(Sender: TField);
begin
  if not ((sender.asstring <> '') and (sender.asstring <> _0)) then
  begin
    exit;
  end;
  if not CodigoExiste(_fornecedor, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    abort;
  end;
  cdspedidomaterialfornecedorNMFORNECEDOR.asstring   := NomedoCodigo(_fornecedor, sender.AsString);
  cdspedidomaterialfornecedorCDCLFORNECEDOR.AsString := NomedoCodigo(_fornecedor, sender.AsString, _cd+_clfornecedor);
end;

procedure TfrmPedidoMaterial.cdsCDTPAPLICACAOValidate(Sender: TField);
begin
  if not CodigoExiste(_tpaplicacao, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_tipo+' '+__aplicacao)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsNMTPAPLICACAO.AsString := NomedoCodigo(_tpaplicacao, sender.AsString);
end;

procedure TfrmPedidoMaterial.edtcdtpaplicacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtpaplicacaoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmPedidoMaterial.edtcdtpaplicacaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  cd := localizar(_tpaplicacao);
  if cd <> 0 then
  begin
    cdsCDTPAPLICACAO.AsInteger := cd;
  end;
end;

procedure TfrmPedidoMaterial.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actimprimirvazio.Enabled := actImprimir.Enabled;
end;

procedure TfrmPedidoMaterial.cdsITPEDIDOMATERIALFORNECEDORBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsITPEDIDOMATERIALFORNECEDOR);
end;

procedure TfrmPedidoMaterial.cdsITPEDIDOMATERIALFORNECEDORNewRecord(DataSet: TDataSet);
begin
  cdsITPEDIDOMATERIALFORNECEDORBOVENCEDOR.AsString   := _N;
  cdsITPEDIDOMATERIALFORNECEDORVLUNITARIO.AsCurrency := 0;
end;

procedure TfrmPedidoMaterial.cdspedidomaterialfornecedorBeforeDelete(DataSet: TDataSet);
begin
  cdsdetail.First;
  while not cdsdetail.Eof do
  begin
    cdsITPEDIDOMATERIALFORNECEDOR.First;
    while not cdsITPEDIDOMATERIALFORNECEDOR.Eof do
    begin
      if cdsITPEDIDOMATERIALFORNECEDOR.fieldbyname(_CDFORNECEDOR).AsString = cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsString  then
      begin
        cdsITPEDIDOMATERIALFORNECEDOR.Delete;
      end;
      if not cdsITPEDIDOMATERIALFORNECEDOR.Eof then
      begin
        cdsITPEDIDOMATERIALFORNECEDOR.Next;
      end;
    end;
    cdsdetail.Next;
  end;
end;

procedure TfrmPedidoMaterial.cdsdetailBeforeDelete(DataSet: TDataSet);
begin
  cdspedidomaterialfornecedor.First;
  while not cdspedidomaterialfornecedor.Eof do
  begin
    cdsvencedor.First;
    while not cdsvencedor.Eof do
    begin
      if cdsvencedorCDITPEDIDOMATERIAL.AsString = cdsdetailCDITPEDIDOMATERIAL.AsString  then
      begin
        cdsvencedor.Delete;
      end;
      if not cdsvencedor.Eof then
      begin
        cdsvencedor.Next;
      end;
    end;
    cdspedidomaterialfornecedor.Next;
  end;
  {
  cdsITPEDIDOMATERIALFORNECEDOR.First;
  while not cdsITPEDIDOMATERIALFORNECEDOR.Eof do
  begin
    cdsITPEDIDOMATERIALFORNECEDOR.Delete;
    if not cdsITPEDIDOMATERIALFORNECEDOR.Eof then
    begin
      cdsITPEDIDOMATERIALFORNECEDOR.Next;
    end;
  end;
  }
end;

procedure TfrmPedidoMaterial.cdsdetailAfterPost(DataSet: TDataSet);
begin
  if boinsert then
  begin
    cdspedidomaterialfornecedor.First;
    while not cdspedidomaterialfornecedor.Eof do
    begin
      cdsITPEDIDOMATERIALFORNECEDOR.Insert;
      cdsITPEDIDOMATERIALFORNECEDOR.fieldbyname(_CDFORNECEDOR).AsString := cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsString;
      cdsITPEDIDOMATERIALFORNECEDORCDITPEDIDOMATERIAL.AsInteger := cdsdetailCDITPEDIDOMATERIAL.AsInteger;
      cdsITPEDIDOMATERIALFORNECEDORQTITEM.AsFloat               := cdsdetailQTSOLICITADA.AsFloat;
      cdsITPEDIDOMATERIALFORNECEDORBORECUPERAICMS.AsString      := cdsdetailBORECUPERAICMS.AsString;
      cdsITPEDIDOMATERIALFORNECEDORBORECUPERAIPI.AsString       := cdsdetailBORECUPERAIPI.AsString;
      cdsITPEDIDOMATERIALFORNECEDORNMFORNECEDOR.AsString        := cdspedidomaterialfornecedorNMFORNECEDOR.AsString;
      cdsITPEDIDOMATERIALFORNECEDOR.Post;
      cdspedidomaterialfornecedor.Next;
    end;
    boinsert := False;
  end;
end;

procedure TfrmPedidoMaterial.cdsITPEDIDOMATERIALFORNECEDORVLUNITARIOValidate(Sender: TField);
begin
  cdsITPEDIDOMATERIALFORNECEDORVLTOTAL.AsCurrency := cdsITPEDIDOMATERIALFORNECEDORVLUNITARIO.AsCurrency * cdsITPEDIDOMATERIALFORNECEDORQTITEM.AsFloat;
end;

procedure TfrmPedidoMaterial.cdsITPEDIDOMATERIALFORNECEDORVLTOTALValidate(Sender: TField);
begin
  cdsITPEDIDOMATERIALFORNECEDORVLICMS.AsCurrency := (cdsITPEDIDOMATERIALFORNECEDORVLTOTAL.AsCurrency +
                                                     cdsITPEDIDOMATERIALFORNECEDORVLFRETE.AsCurrency -
                                                     cdsITPEDIDOMATERIALFORNECEDORVLDESCONTO.AsCurrency) *
                                                     cdsITPEDIDOMATERIALFORNECEDORALICMS.AsFloat / 100;
  cdsITPEDIDOMATERIALFORNECEDORVLICMSDIFALIQUOTA.AsCurrency := (cdsITPEDIDOMATERIALFORNECEDORVLTOTAL.AsCurrency +
                                                                cdsITPEDIDOMATERIALFORNECEDORVLFRETE.AsCurrency -
                                                                cdsITPEDIDOMATERIALFORNECEDORVLDESCONTO.AsCurrency) *
                                                                cdsITPEDIDOMATERIALFORNECEDORALICMSDIFALIQUOTA.AsFloat / 100;
  cdsITPEDIDOMATERIALFORNECEDORVLIPI.AsCurrency := (cdsITPEDIDOMATERIALFORNECEDORVLTOTAL.AsCurrency +
                                                    cdsITPEDIDOMATERIALFORNECEDORVLFRETE.AsCurrency) *
                                                    cdsITPEDIDOMATERIALFORNECEDORALIPI.AsFloat / 100;
  cdsITPEDIDOMATERIALFORNECEDORVLFINAL.AsCurrency := cdsITPEDIDOMATERIALFORNECEDORVLTOTAL.AsCurrency +
                                                     cdsITPEDIDOMATERIALFORNECEDORVLIPI.AsCurrency +
                                                     cdsITPEDIDOMATERIALFORNECEDORVLICMSSUBTRIB.AsCurrency + 
                                                     cdsITPEDIDOMATERIALFORNECEDORVLFRETE.AsCurrency
                                                     //+
                                                     //cdsITPEDIDOMATERIALFORNECEDORVLICMSDIFALIQUOTA.AsCurrency
                                                     -
                                                     cdsITPEDIDOMATERIALFORNECEDORVLDESCONTO.AsCurrency;
  cdsITPEDIDOMATERIALFORNECEDORVLREAL.AsCurrency := cdsITPEDIDOMATERIALFORNECEDORVLFINAL.AsCurrency;
  if cdsITPEDIDOMATERIALFORNECEDORBORECUPERAICMS.AsString = _S then
  begin
    cdsITPEDIDOMATERIALFORNECEDORVLREAL.AsCurrency := cdsITPEDIDOMATERIALFORNECEDORVLREAL.AsCurrency - cdsITPEDIDOMATERIALFORNECEDORVLICMS.AsCurrency;
  end;
  if cdsITPEDIDOMATERIALFORNECEDORBORECUPERAIPI.AsString = _S then
  begin
    cdsITPEDIDOMATERIALFORNECEDORVLREAL.AsCurrency := cdsITPEDIDOMATERIALFORNECEDORVLREAL.AsCurrency - cdsITPEDIDOMATERIALFORNECEDORVLIPI.AsCurrency;
  end;
  cdsITPEDIDOMATERIALFORNECEDORVLREAL.AsCurrency := cdsITPEDIDOMATERIALFORNECEDORVLREAL.AsCurrency +
                                                    cdsITPEDIDOMATERIALFORNECEDORVLICMSDIFALIQUOTA.AsCurrency;
end;

function TfrmPedidoMaterial.Existe_vencedor:Boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsvencedor, true);
    c.First;
    while not c.Eof do
    begin
      if c.FieldByName(_bovencedor).AsString = _s then
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

function TfrmPedidoMaterial.existe_ordcompra:Boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdspedidomaterialfornecedor, true);
    c.First;
    while not c.Eof do
    begin
      if not c.FieldByName(_cdordcompra).IsNull then
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

procedure TfrmPedidoMaterial.cdspedidomaterialfornecedorAfterScroll(DataSet: TDataSet);
begin
  actgerarordcomprafornecedor.Enabled := ((cds.State = dsBrowse) or (cds.State = dsInactive))
                                         and cdspedidomaterialfornecedorCDORDCOMPRA.IsNull
                                         and existe_vencedor
                                         and (not cdspedidomaterialfornecedorCDCONDPAGTO.IsNull)
                                         and (not cdspedidomaterialfornecedorDTPRVENTREGA.IsNull)
                                         and (pedidomaterial.cdstpedidomaterial = 7);
                                         ;
  actvencedor.Enabled := not existe_ordcompra;
end;

procedure TfrmPedidoMaterial.actgerarordcomprafornecedorExecute(Sender: TObject);
var
  cdclfornecedor : string;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if cdspedidomaterialfornecedorDTPRVENTREGA.AsDateTime < DtBanco then
  begin
    MessageDlg('Data de Entrega não pode ser menor do que a data atual.'#13'Favor alterar a data para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  cdclfornecedor := NomedoCodigo(_fornecedor, cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsString, _cd+_clfornecedor);
  if (cdclfornecedor <> '') and (not BooleandoCodigo(_clfornecedor, cdclfornecedor, _bo+_credenciado)) then
  begin
    messagedlg('A classificação de IQF do fornecedor não permite gerar ordem de compra.'#13'Altere a classificação para poder continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  if GerarOrdCompra(cdsCDPEDIDOMATERIAL.AsInteger, cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsLargeInt) then
  begin
    abrir(cdsCDPEDIDOMATERIAL.AsInteger);
  end;
end;

procedure TfrmPedidoMaterial.cdspedidomaterialfornecedorDTPRVENTREGAValidate(Sender: TField);
begin
  cdsvencedor.First;
  while not cdsvencedor.Eof do
  begin
    if cdsvencedor.fieldbyname(_CDFORNECEDOR).AsString = cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsString then
    begin
      cdsvencedor.Edit;
      if cdspedidomaterialfornecedorDTPRVENTREGA.IsNull then
      begin
        cdsvencedorDTPREVENTREGA.Clear
      end
      else
      begin
        cdsvencedorDTPREVENTREGA.AsDateTime := cdspedidomaterialfornecedorDTPRVENTREGA.AsDateTime;
      end;
      cdsvencedor.Post;
    end;
    cdsvencedor.Next;
  end;
end;

procedure TfrmPedidoMaterial.cdsBOEXCLUSIVOValidate(Sender: TField);
begin
  if (sender.AsString = _S) and (cdspedidomaterialfornecedor.RecordCount > 1) then
  begin
    messagedlg('Para marcar fornecedor como exclusivo'#13'tem que haver apenas um fornecedor.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
end;

procedure TfrmPedidoMaterial.btvcotacaoBOVENCEDORPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  function ja_existe_vencedor:Boolean;
  var
    c : TClientDataSet;
  begin
    result := False;
    c := TClientDataSet.Create(nil);
    try
      c.CloneCursor(cdsITPEDIDOMATERIALFORNECEDOR, true);
      c.First;
      while not c.Eof do
      begin
        if (c.FieldByName(_bovencedor).AsString = _s) and (c.FieldByName(_cdfornecedor).AsString <> cdsITPEDIDOMATERIALFORNECEDOR.fieldbyname(_CDFORNECEDOR).AsString) then
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
begin
  if TcxDBCheckBox(sender).Checked and  ja_existe_vencedor then
  begin
    MessageDlg('Somente um fornecedor pode ser vencedor.', mtInformation, [mbOK], 0);
    cdsITPEDIDOMATERIALFORNECEDORBOVENCEDOR.FocusControl;
    Abort;
  end;
end;

procedure TfrmPedidoMaterial.cdsvencedorVLUNITARIOValidate(Sender: TField);
begin
  cdsvencedorVLTOTAL.AsCurrency := cdsvencedorVLUNITARIO.AsCurrency * cdsvencedorQTITEM.AsFloat;
end;

procedure TfrmPedidoMaterial.cdsvencedorVLTOTALValidate(Sender: TField);
begin
  cdsvencedorVLICMS.AsCurrency := (cdsvencedorVLTOTAL.AsCurrency + cdsvencedorVLFRETE.AsCurrency - cdsvencedorVLDESCONTO.AsCurrency) *
                                   cdsvencedorALICMS.AsFloat / 100;
  cdsvencedorVLICMSDIFALIQUOTA.AsCurrency := (cdsvencedorVLTOTAL.AsCurrency + cdsvencedorVLFRETE.AsCurrency - cdsvencedorVLDESCONTO.AsCurrency) *
                                              cdsvencedorALICMSDIFALIQUOTA.AsFloat / 100;
  cdsvencedorVLIPI.AsCurrency := (cdsvencedorVLTOTAL.AsCurrency + cdsvencedorVLFRETE.AsCurrency) * cdsvencedorALIPI.AsFloat / 100;
  cdsvencedorVLFINAL.AsCurrency := cdsvencedorVLTOTAL.AsCurrency + cdsvencedorVLIPI.AsCurrency + cdsvencedorVLFRETE.AsCurrency +
                                   cdsvencedorVLICMSDIFALIQUOTA.AsCurrency - cdsvencedorVLDESCONTO.AsCurrency;
  cdsvencedorVLREAL.AsCurrency := cdsvencedorVLFINAL.AsCurrency;
  if cdsvencedorBORECUPERAICMS.AsString = _S then
  begin
    cdsvencedorVLREAL.AsCurrency := cdsvencedorVLREAL.AsCurrency - cdsvencedorVLICMS.AsCurrency;
  end;
  if cdsvencedorBORECUPERAIPI.AsString  = _S then
  begin
    cdsvencedorVLREAL.AsCurrency := cdsvencedorVLREAL.AsCurrency - cdsvencedorVLIPI.AsCurrency;
  end;
  cdsvencedorVLREAL.AsCurrency := cdsvencedorVLREAL.AsCurrency + cdsvencedorVLICMSDIFALIQUOTA.AsCurrency;
end;

procedure TfrmPedidoMaterial.btvfornecedorCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdfornecedor then
  begin
    actAbrirFornecedorExecute(actAbrirFornecedor)
  end;
end;

procedure TfrmPedidoMaterial.btvfornecedorNMITCONTFORNECEDORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  function makesql:string;
  begin
    result := 'select cditcontfornecedor,nmitcontfornecedor from itcontfornecedor where cdfornecedor='+cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsString;
  end;
var
  codigo : string;
begin
  codigo := Localizar(_itcontfornecedor, 'Contato Fornecedor', makesql, 'Código', 'Nome');
  if codigo <> '' then
  begin
    if cdspedidomaterialfornecedor.State = dsbrowse then
    begin
      cdspedidomaterialfornecedor.Edit;
    end;
    cdspedidomaterialfornecedorCDITCONTFORNECEDOR.AsString := codigo;
    cdspedidomaterialfornecedorNMITCONTFORNECEDOR.AsString := NomedoCodigo(_itcontfornecedor, codigo);
  end;
end;

procedure TfrmPedidoMaterial.cdspedidomaterialfornecedorNMITCONTFORNECEDORValidate(Sender: TField);
begin
  if NomedoCodigo(_itcontfornecedor, cdspedidomaterialfornecedorCDITCONTFORNECEDOR.AsString, _nmitcontfornecedor) <> cdspedidomaterialfornecedorNMITCONTFORNECEDOR.AsString then
  begin
    cdspedidomaterialfornecedorCDITCONTFORNECEDOR.Clear;
  end;
end;

procedure TfrmPedidoMaterial.cdspedidomaterialfornecedorBeforeInsert(DataSet: TDataSet);
begin
  if (cdsdetail.State = dsedit) or (cdsdetail.State = dsinsert) then
  begin
    cdsdetail.Post;
  end;
end;

procedure TfrmPedidoMaterial.actvencedorExecute(Sender: TObject);
begin
  ExecutaSQL('update itpedidomaterialfornecedor set bovencedor=''S'' where cdfornecedor='+cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsString+' '+
                     'and cditpedidomaterial in (select cditpedidomaterial from itpedidomaterial where cdpedidomaterial='+cdsCDPEDIDOMATERIAL.AsString+')');
  ExecutaSQL('update itpedidomaterialfornecedor set bovencedor=''N'' where cdfornecedor<>'+cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsString+' '+
                     'and cditpedidomaterial in (select cditpedidomaterial from itpedidomaterial where cdpedidomaterial='+cdsCDPEDIDOMATERIAL.AsString+')');
  registro.RegistroAbrir(cdsCDPEDIDOMATERIAL.AsInteger);
end;

procedure TfrmPedidoMaterial.btvItemsQTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  qtpeso : real;
  dsformula : string;
begin
  qtpeso    := cdsdetailQTPESOUNITARIO.AsFloat;
  dsformula := cdsdetailDSFORMULA.AsString;
  if CalcularPeso(cdsdetail.ReadOnly, cdsdetailCDPRODUTO.AsString, dsformula, qtpeso) and (not cdsdetail.ReadOnly) then
  begin
    if cdsdetail.State = dsbrowse then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailQTPESOUNITARIO.AsFloat := qtpeso;
    cdsdetailDSFORMULA.AsString     := dsformula;
  end;
end;

procedure TfrmPedidoMaterial.cdsdetailQTPECAValidate(Sender: TField);
begin
  cdsdetailQTSOLICITADA.AsFloat := cdsdetailQTPESOUNITARIO.AsFloat * cdsdetailQTPECA.AsFloat;
end;

procedure TfrmPedidoMaterial.FormCreate(Sender: TObject);
begin
  setOpcoesStatus;
  AbrirTabelas;
  tbl      := _pedidomaterial;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  //GeraMenuRelatorio (_printer, btnimprimir, 46, cds, tbl);
  GeraMenuRelatorio ('', btnimprimir, 46, cds, tbl);
end;

procedure TfrmPedidoMaterial.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmPedidoMaterial.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmPedidoMaterial.cbxcdtppedidomaterialEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tppedidomaterial);
end;

procedure TfrmPedidoMaterial.cbxcdfinalidadeordcompraEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_finalidade+_ordcompra);
end;

procedure TfrmPedidoMaterial.cbxcdtpfornecedorEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tp+_fornecedor);
end;

procedure TfrmPedidoMaterial.cbxcdfuncionariosolicitanteEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmPedidoMaterial.cbxcdfuncionariocompradorEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmPedidoMaterial.actimprimirvazioExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(444, cdsCDPEDIDOMATERIAL.AsString);
end;

procedure TfrmPedidoMaterial.actmudarstatusExecute(Sender: TObject);
begin
  if pedidomaterial.setstatus(strtoint(TdxBarButton(sender).Description)) then
  begin
    Abrir(pedidomaterial.cdpedidomaterial);
  end;
end;

procedure TfrmPedidoMaterial.btvItemsCDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  cd := Localizarordproducao;
  if cd <> 0 then
  begin
    if (cdsdetail.State <> dsedit) and (cdsdetail.State = dsbrowse) then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailCDORDPRODUCAO.AsInteger := cd;
  end;
end;

procedure TfrmPedidoMaterial.cdsdetailCDORDPRODUCAOValidate(Sender: TField);
begin
  if sender.asstring = '' then
  begin
    exit;
  end;
  if not CodigoExiste(_ordproducao, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_ordem+' '+__producao)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmPedidoMaterial.cdsvencedorBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsvencedor);
end;

procedure TfrmPedidoMaterial.btvItemsCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoExecute(actabrirproduto)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cd+_ordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao)
  end;
end;

procedure TfrmPedidoMaterial.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmPedidoMaterial.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmPedidoMaterial.actimprimiraprovacaoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(447, cdsCDPEDIDOMATERIAL.AsString);
end;

procedure TfrmPedidoMaterial.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmPedidoMaterial.lblcdtppedidomaterialDblClick(Sender: TObject);
begin
  actAbrirtppedidomaterial.onExecute(actAbrirtppedidomaterial);
end;

procedure TfrmPedidoMaterial.actenviaremailExecute(Sender: TObject);
begin
  if cdspedidomaterialfornecedor.recordcount> 0 then
  begin
    pedidomaterial.Enviar_Email_Cotacao(cdspedidomaterialfornecedor.fieldbyname(_CDFORNECEDOR).AsString);
  end;
end;

End.
