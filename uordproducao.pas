unit uordproducao;

interface

uses
  System.Actions, System.UITypes,
  forms, Variants, dateutils, Menus, Classes, ActnList, ComCtrls, ExtCtrls, StdCtrls,
  Grids, ToolWin, Mask, Controls, Buttons, windows, types, ShellAPI, sysutils, dialogs,
  Math, graphics,
  SqlExpr, FMTBcd, DBClient, Provider, DBCtrls, DB,
  uconstantes, ustrings, uregistro, ulocalizar, urotinas,
  uexportarexcel, ulocalizarcliente, unumero, ulocalizarproduto, udlgdatabalanco,
  uAssinaturaDigital, udatahora,
  classeRegistro, classeretornasql, classegerar, classepedido,
  classeconsiste, classeregistrainformacao, classeform, classeexecutasql, classeusuario,
  classeordproducao, classeproduto, classeequipamento, classeempresa, classequery,
  classearquivo, classeorcamento, classeentrada, classerim,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxButtonEdit,
  cxCurrencyEdit, cxContainer, dxBar, cxClasses, cxLabel, cxCheckBox, cxDBEdit,
  cxCalendar, cxSpinEdit, cxTextEdit, cxGroupBox, cxMemo, cxSplitter, cxDBLabel,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxGridLevel, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGrid, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxButtons, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxGridChartView, cxGridDBChartView, cxBlobEdit, cxPCdxBarPopupMenu, cxTimeEdit,
  cxNavigator, cxListView, dxBarBuiltInMenu, dxDateTimeWheelPicker;

type
  Tfrmordproducao = class(TForm)
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
    pgc: TcxPageControl;
    tbsmaterial: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    pnl1: TPanel;
    lbldtentrega: TLabel;
    lbldtprventrega: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    pnl: TcxLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    edtdtemissao: TcxDBDateEdit;
    edtdtprventrega: TcxDBDateEdit;
    edtcodigo: TcxTextEdit;
    memdsobservacao: TcxDBMemo;
    Label14: TLabel;
    dts1: TDataSource;
    dxBarButton1: TdxBarButton;
    sdsitordproducaorecurso: TSQLDataSet;
    cdsitordproducaorecurso: TClientDataSet;
    dtsitordproducaorecurso: TDataSource;
    sdsitordproducaomaterial: TSQLDataSet;
    cdsitordproducaomaterial: TClientDataSet;
    dtsitordproducaomaterial: TDataSource;
    sdsitordproducaocusto: TSQLDataSet;
    cdsitordproducaocusto: TClientDataSet;
    dtsitordproducaocusto: TDataSource;
    grdmaterial: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    tbvmaterial: TcxGridDBBandedTableView;
    tbvmaterialCDDIGITADO: TcxGridDBBandedColumn;
    tbvmaterialNMPRODUTO: TcxGridDBBandedColumn;
    tbvmaterialQTPECA: TcxGridDBBandedColumn;
    tbvmaterialQTPESOUNITARIO: TcxGridDBBandedColumn;
    tbvmaterialQTITEM: TcxGridDBBandedColumn;
    tbvmaterialVLUNITARIO: TcxGridDBBandedColumn;
    tbvmaterialVLTOTAL: TcxGridDBBandedColumn;
    tbvmaterialDSPOSICAO: TcxGridDBBandedColumn;
    tbvmaterialNUCLFISCAL: TcxGridDBBandedColumn;
    tbvmaterialALICMS: TcxGridDBBandedColumn;
    tbvmaterialALIPI: TcxGridDBBandedColumn;
    tbvmaterialBORECUPERAICMS: TcxGridDBBandedColumn;
    tbvmaterialBORECUPERAIPI: TcxGridDBBandedColumn;
    tbvmaterialVLICMS: TcxGridDBBandedColumn;
    tbvmaterialVLIPI: TcxGridDBBandedColumn;
    tbvmaterialVLFRETE: TcxGridDBBandedColumn;
    tbvmaterialVLFINAL: TcxGridDBBandedColumn;
    tbvmaterialALPIS: TcxGridDBBandedColumn;
    tbvmaterialALCOFINS: TcxGridDBBandedColumn;
    tbvmaterialVLPIS: TcxGridDBBandedColumn;
    tbvmaterialVLCOFINS: TcxGridDBBandedColumn;
    tbvmaterialBORECUPERAPIS: TcxGridDBBandedColumn;
    tbvmaterialBORECUPERACOFINS: TcxGridDBBandedColumn;
    tbvmaterialDSFORMULA: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    tbscusto: TcxTabSheet;
    tbsrecurso: TcxTabSheet;
    grdcusto: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    tbvcusto: TcxGridDBTableView;
    tbvcustoCDDIGITADO: TcxGridDBColumn;
    tbvcustoNMPRODUTO: TcxGridDBColumn;
    tbvcustoQTITEM: TcxGridDBColumn;
    tbvcustoVLUNITARIO: TcxGridDBColumn;
    tbvcustoVLTOTAL: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    grdrecurso: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    tbvrecurso: TcxGridDBBandedTableView;
    tbvrecursoCDTPEQUIPAMENTO: TcxGridDBBandedColumn;
    tbvrecursoQTPREPARACAO: TcxGridDBBandedColumn;
    tbvrecursoVLPREPARACAO: TcxGridDBBandedColumn;
    tbvrecursoQTOPERACAO: TcxGridDBBandedColumn;
    tbvrecursoVLOPERACAO: TcxGridDBBandedColumn;
    tbvrecursoVLTOTALOPERACAO: TcxGridDBBandedColumn;
    tbvrecursoVLTOTALPREPARACAO: TcxGridDBBandedColumn;
    tbvrecursoDSOBSERVACAO: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    sdsCDORDPRODUCAO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDITPEDIDO: TIntegerField;
    sdsCDSTORDPRODUCAO: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDTENTREGA: TDateField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsDSOBSERVACAO: TBlobField;
    sdsNMSTORDPRODUCAO: TStringField;
    cdsCDORDPRODUCAO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDITPEDIDO: TIntegerField;
    cdsCDSTORDPRODUCAO: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDTENTREGA: TDateField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsDSOBSERVACAO: TBlobField;
    cdsNMSTORDPRODUCAO: TStringField;
    sdsDTPRVENTREGA: TDateField;
    cdsDTPRVENTREGA: TDateField;
    sdsitordproducaorecursoCDITORDPRODUCAORECURSO: TIntegerField;
    sdsitordproducaorecursoCDORDPRODUCAO: TIntegerField;
    sdsitordproducaorecursoCDUSUARIOI: TIntegerField;
    sdsitordproducaorecursoCDUSUARIOA: TIntegerField;
    sdsitordproducaorecursoCDCOMPUTADORI: TIntegerField;
    sdsitordproducaorecursoCDCOMPUTADORA: TIntegerField;
    sdsitordproducaorecursoTSINCLUSAO: TSQLTimeStampField;
    sdsitordproducaorecursoTSALTERACAO: TSQLTimeStampField;
    sdsitordproducaorecursoQTPREPARACAO: TFloatField;
    sdsitordproducaorecursoQTOPERACAO: TFloatField;
    sdsitordproducaorecursoVLPREPARACAO: TFMTBCDField;
    sdsitordproducaorecursoVLOPERACAO: TFMTBCDField;
    sdsitordproducaorecursoVLTOTALOPERACAO: TFMTBCDField;
    sdsitordproducaorecursoCDTPEQUIPAMENTO: TIntegerField;
    sdsitordproducaorecursoVLTOTALPREPARACAO: TFMTBCDField;
    sdsitordproducaorecursoVLTOTAL: TFMTBCDField;
    sdsitordproducaomaterialCDITORDPRODUCAOMATERIAL: TIntegerField;
    sdsitordproducaomaterialCDORDPRODUCAO: TIntegerField;
    sdsitordproducaomaterialCDUSUARIOI: TIntegerField;
    sdsitordproducaomaterialCDUSUARIOA: TIntegerField;
    sdsitordproducaomaterialCDCOMPUTADORI: TIntegerField;
    sdsitordproducaomaterialCDCOMPUTADORA: TIntegerField;
    sdsitordproducaomaterialCDPRODUTO: TIntegerField;
    sdsitordproducaomaterialCDforma: TIntegerField;
    sdsitordproducaomaterialCDMATERIAL: TIntegerField;
    sdsitordproducaomaterialTSINCLUSAO: TSQLTimeStampField;
    sdsitordproducaomaterialTSALTERACAO: TSQLTimeStampField;
    sdsitordproducaomaterialQTITEM: TFloatField;
    sdsitordproducaomaterialQTPESOUNITARIO: TFloatField;
    sdsitordproducaomaterialQTPECA: TFloatField;
    sdsitordproducaomaterialVLUNITARIO: TFMTBCDField;
    sdsitordproducaomaterialVLTOTAL: TFMTBCDField;
    sdsitordproducaomaterialCDDIGITADO: TStringField;
    sdsitordproducaomaterialDSPOSICAO: TStringField;
    sdsitordproducaomaterialALICMS: TFloatField;
    sdsitordproducaomaterialALIPI: TFloatField;
    sdsitordproducaomaterialBORECUPERAICMS: TStringField;
    sdsitordproducaomaterialBORECUPERAIPI: TStringField;
    sdsitordproducaomaterialVLICMS: TFMTBCDField;
    sdsitordproducaomaterialVLIPI: TFMTBCDField;
    sdsitordproducaomaterialVLFRETE: TFMTBCDField;
    sdsitordproducaomaterialVLFINAL: TFMTBCDField;
    sdsitordproducaomaterialALPIS: TFloatField;
    sdsitordproducaomaterialALCOFINS: TFloatField;
    sdsitordproducaomaterialVLPIS: TFMTBCDField;
    sdsitordproducaomaterialVLCOFINS: TFMTBCDField;
    sdsitordproducaomaterialBORECUPERAPIS: TStringField;
    sdsitordproducaomaterialBORECUPERACOFINS: TStringField;
    sdsitordproducaomaterialDSFORMULA: TStringField;
    sdsitordproducaomaterialNMPRODUTO: TStringField;
    sdsitordproducaomaterialNUCLFISCAL: TStringField;
    sdsitordproducaocustoCDITORDPRODUCAOCUSTO: TIntegerField;
    sdsitordproducaocustoCDORDPRODUCAO: TIntegerField;
    sdsitordproducaocustoCDUSUARIOI: TIntegerField;
    sdsitordproducaocustoCDUSUARIOA: TIntegerField;
    sdsitordproducaocustoCDCOMPUTADORI: TIntegerField;
    sdsitordproducaocustoCDCOMPUTADORA: TIntegerField;
    sdsitordproducaocustoCDPRODUTO: TIntegerField;
    sdsitordproducaocustoTSINCLUSAO: TSQLTimeStampField;
    sdsitordproducaocustoTSALTERACAO: TSQLTimeStampField;
    sdsitordproducaocustoVLTOTAL: TFMTBCDField;
    sdsitordproducaocustoCDDIGITADO: TStringField;
    sdsitordproducaocustoQTITEM: TFloatField;
    sdsitordproducaocustoVLUNITARIO: TFMTBCDField;
    sdsitordproducaocustoNMPRODUTO: TStringField;
    cdssdsitordproducaocusto: TDataSetField;
    cdssdsitordproducaomaterial: TDataSetField;
    cdssdsitordproducaorecurso: TDataSetField;
    cdsitordproducaorecursoCDITORDPRODUCAORECURSO: TIntegerField;
    cdsitordproducaorecursoCDORDPRODUCAO: TIntegerField;
    cdsitordproducaorecursoCDUSUARIOI: TIntegerField;
    cdsitordproducaorecursoCDUSUARIOA: TIntegerField;
    cdsitordproducaorecursoCDCOMPUTADORI: TIntegerField;
    cdsitordproducaorecursoCDCOMPUTADORA: TIntegerField;
    cdsitordproducaorecursoTSINCLUSAO: TSQLTimeStampField;
    cdsitordproducaorecursoTSALTERACAO: TSQLTimeStampField;
    cdsitordproducaorecursoQTPREPARACAO: TFloatField;
    cdsitordproducaorecursoQTOPERACAO: TFloatField;
    cdsitordproducaorecursoVLPREPARACAO: TFMTBCDField;
    cdsitordproducaorecursoVLOPERACAO: TFMTBCDField;
    cdsitordproducaorecursoVLTOTALOPERACAO: TFMTBCDField;
    cdsitordproducaorecursoCDTPEQUIPAMENTO: TIntegerField;
    cdsitordproducaorecursoVLTOTALPREPARACAO: TFMTBCDField;
    cdsitordproducaorecursoVLTOTAL: TFMTBCDField;
    cdsitordproducaomaterialCDITORDPRODUCAOMATERIAL: TIntegerField;
    cdsitordproducaomaterialCDORDPRODUCAO: TIntegerField;
    cdsitordproducaomaterialCDUSUARIOI: TIntegerField;
    cdsitordproducaomaterialCDUSUARIOA: TIntegerField;
    cdsitordproducaomaterialCDCOMPUTADORI: TIntegerField;
    cdsitordproducaomaterialCDCOMPUTADORA: TIntegerField;
    cdsitordproducaomaterialCDPRODUTO: TIntegerField;
    cdsitordproducaomaterialCDforma: TIntegerField;
    cdsitordproducaomaterialCDMATERIAL: TIntegerField;
    cdsitordproducaomaterialTSINCLUSAO: TSQLTimeStampField;
    cdsitordproducaomaterialTSALTERACAO: TSQLTimeStampField;
    cdsitordproducaomaterialQTITEM: TFloatField;
    cdsitordproducaomaterialQTPESOUNITARIO: TFloatField;
    cdsitordproducaomaterialQTPECA: TFloatField;
    cdsitordproducaomaterialVLUNITARIO: TFMTBCDField;
    cdsitordproducaomaterialVLTOTAL: TFMTBCDField;
    cdsitordproducaomaterialCDDIGITADO: TStringField;
    cdsitordproducaomaterialDSPOSICAO: TStringField;
    cdsitordproducaomaterialALICMS: TFloatField;
    cdsitordproducaomaterialALIPI: TFloatField;
    cdsitordproducaomaterialBORECUPERAICMS: TStringField;
    cdsitordproducaomaterialBORECUPERAIPI: TStringField;
    cdsitordproducaomaterialVLICMS: TFMTBCDField;
    cdsitordproducaomaterialVLIPI: TFMTBCDField;
    cdsitordproducaomaterialVLFRETE: TFMTBCDField;
    cdsitordproducaomaterialVLFINAL: TFMTBCDField;
    cdsitordproducaomaterialALPIS: TFloatField;
    cdsitordproducaomaterialALCOFINS: TFloatField;
    cdsitordproducaomaterialVLPIS: TFMTBCDField;
    cdsitordproducaomaterialVLCOFINS: TFMTBCDField;
    cdsitordproducaomaterialBORECUPERAPIS: TStringField;
    cdsitordproducaomaterialBORECUPERACOFINS: TStringField;
    cdsitordproducaomaterialDSFORMULA: TStringField;
    cdsitordproducaomaterialNMPRODUTO: TStringField;
    cdsitordproducaomaterialNUCLFISCAL: TStringField;
    cdsitordproducaocustoCDITORDPRODUCAOCUSTO: TIntegerField;
    cdsitordproducaocustoCDORDPRODUCAO: TIntegerField;
    cdsitordproducaocustoCDUSUARIOI: TIntegerField;
    cdsitordproducaocustoCDUSUARIOA: TIntegerField;
    cdsitordproducaocustoCDCOMPUTADORI: TIntegerField;
    cdsitordproducaocustoCDCOMPUTADORA: TIntegerField;
    cdsitordproducaocustoCDPRODUTO: TIntegerField;
    cdsitordproducaocustoTSINCLUSAO: TSQLTimeStampField;
    cdsitordproducaocustoTSALTERACAO: TSQLTimeStampField;
    cdsitordproducaocustoVLTOTAL: TFMTBCDField;
    cdsitordproducaocustoCDDIGITADO: TStringField;
    cdsitordproducaocustoQTITEM: TFloatField;
    cdsitordproducaocustoVLUNITARIO: TFMTBCDField;
    cdsitordproducaocustoNMPRODUTO: TStringField;
    tbsapontamento: TcxTabSheet;
    actopcoes: TAction;
    actajustardados: TAction;
    dxBarButton3: TdxBarButton;
    sdsapontamento: TSQLDataSet;
    cdsapontamento: TClientDataSet;
    dtsapontamento: TDataSource;
    sdsapontamentoCDORDPRODUCAO: TIntegerField;
    sdsapontamentoCDFUNCIONARIO: TIntegerField;
    sdsapontamentoCDEQUIPAMENTO: TIntegerField;
    sdsapontamentoHRINICIO: TTimeField;
    sdsapontamentoHRFIM: TTimeField;
    sdsapontamentoHRDURACAO: TTimeField;
    sdsapontamentoQTDURACAO: TFloatField;
    cdssdsapontamento: TDataSetField;
    cdsapontamentoCDORDPRODUCAO: TIntegerField;
    cdsapontamentoCDFUNCIONARIO: TIntegerField;
    cdsapontamentoCDEQUIPAMENTO: TIntegerField;
    cdsapontamentoHRINICIO: TTimeField;
    cdsapontamentoHRFIM: TTimeField;
    cdsapontamentoHRDURACAO: TTimeField;
    cdsapontamentoQTDURACAO: TFloatField;
    grdapontamentoLevel1: TcxGridLevel;
    grdapontamento: TcxGrid;
    tbvapontamento: TcxGridDBBandedTableView;
    tbvapontamentoCDFUNCIONARIO: TcxGridDBBandedColumn;
    tbvapontamentoCDEQUIPAMENTO: TcxGridDBBandedColumn;
    tbvapontamentoHRINICIO: TcxGridDBBandedColumn;
    tbvapontamentoHRFIM: TcxGridDBBandedColumn;
    tbvapontamentoHRDURACAO: TcxGridDBBandedColumn;
    tbvapontamentoQTDURACAO: TcxGridDBBandedColumn;
    sdsapontamentoTSINICIO: TSQLTimeStampField;
    cdsapontamentoTSINICIO: TSQLTimeStampField;
    tbvapontamentoDTEMISSAO: TcxGridDBBandedColumn;
    sdsQTHORAORCADA: TFloatField;
    sdsQTHORAPRODUCAO: TFloatField;
    sdsNUPEDIDO: TStringField;
    cdsQTHORAORCADA: TFloatField;
    cdsQTHORAPRODUCAO: TFloatField;
    cdsNUPEDIDO: TStringField;
    sdsCDPEDIDO: TIntegerField;
    cdsCDPEDIDO: TIntegerField;
    actabrirpedido: TAction;
    actabrirorcamento: TAction;
    sdsNMCLIENTE: TStringField;
    sdsNMPRODUTO: TStringField;
    sdsQTITEM: TFloatField;
    cdsNMCLIENTE: TStringField;
    cdsNMPRODUTO: TStringField;
    cdsQTITEM: TFloatField;
    sdsCDDIGITADO: TStringField;
    sdsCDPRODUTO: TIntegerField;
    cdsCDDIGITADO: TStringField;
    cdsCDPRODUTO: TIntegerField;
    actabrircliente: TAction;
    actabrirsaida: TAction;
    sdsapontamentoCDAPONTAMENTO: TIntegerField;
    sdsapontamentoTSFIM: TSQLTimeStampField;
    sdsapontamentoCDITORDPRODUCAORECURSO: TIntegerField;
    sdsapontamentoCDSTAPONTAMENTO: TIntegerField;
    cdsapontamentoCDAPONTAMENTO: TIntegerField;
    cdsapontamentoTSFIM: TSQLTimeStampField;
    cdsapontamentoCDITORDPRODUCAORECURSO: TIntegerField;
    cdsapontamentoCDSTAPONTAMENTO: TIntegerField;
    tbvapontamentoCDSTAPONTAMENTO: TcxGridDBBandedColumn;
    sdsapontamentoTSINCLUSAO: TSQLTimeStampField;
    sdsapontamentoTSALTERACAO: TSQLTimeStampField;
    sdsapontamentoCDCOMPUTADORI: TIntegerField;
    sdsapontamentoCDCOMPUTADORA: TIntegerField;
    sdsapontamentoCDUSUARIOI: TIntegerField;
    sdsapontamentoCDUSUARIOA: TIntegerField;
    cdsapontamentoTSINCLUSAO: TSQLTimeStampField;
    cdsapontamentoTSALTERACAO: TSQLTimeStampField;
    cdsapontamentoCDCOMPUTADORI: TIntegerField;
    cdsapontamentoCDCOMPUTADORA: TIntegerField;
    cdsapontamentoCDUSUARIOI: TIntegerField;
    cdsapontamentoCDUSUARIOA: TIntegerField;
    sdsapontamentoDTEMISSAO: TDateField;
    cdsapontamentoDTEMISSAO: TDateField;
    sdsVLOPERACAO: TFMTBCDField;
    cdsVLOPERACAO: TFMTBCDField;
    sdsVLOPERACAOP: TFMTBCDField;
    sdsVLPREPARACAO: TFMTBCDField;
    sdsVLPREPARACAOP: TFMTBCDField;
    sdsVLRECURSO: TFMTBCDField;
    sdsVLRECURSOP: TFMTBCDField;
    sdsQTOPERACAO: TFloatField;
    sdsQTOPERACAOP: TFMTBCDField;
    sdsQTPREPARACAO: TFloatField;
    sdsQTPREPARACAOP: TFMTBCDField;
    sdsQTHORA: TFloatField;
    sdsQTHORAP: TFloatField;
    sdsVLMATERIAL: TFMTBCDField;
    sdsVLMATERIALP: TFMTBCDField;
    cdsVLOPERACAOP: TFMTBCDField;
    cdsVLPREPARACAO: TFMTBCDField;
    cdsVLPREPARACAOP: TFMTBCDField;
    cdsVLRECURSO: TFMTBCDField;
    cdsVLRECURSOP: TFMTBCDField;
    cdsQTOPERACAO: TFloatField;
    cdsQTOPERACAOP: TFMTBCDField;
    cdsQTPREPARACAO: TFloatField;
    cdsQTPREPARACAOP: TFMTBCDField;
    cdsQTHORA: TFloatField;
    cdsQTHORAP: TFloatField;
    cdsVLMATERIAL: TFMTBCDField;
    cdsVLMATERIALP: TFMTBCDField;
    sdsVLPRODUCAO: TFMTBCDField;
    sdsVLPRODUCAOP: TFMTBCDField;
    cdsVLPRODUCAO: TFMTBCDField;
    cdsVLPRODUCAOP: TFMTBCDField;
    sdsVLCUSTO: TFMTBCDField;
    sdsVLCUSTOP: TFMTBCDField;
    cdsVLCUSTO: TFMTBCDField;
    cdsVLCUSTOP: TFMTBCDField;
    sdsitordproducaorecursoDSOBSERVACAO: TBlobField;
    cdsitordproducaorecursoDSOBSERVACAO: TBlobField;
    actimprimirordproducao: TAction;
    dxBarButton4: TdxBarButton;
    sdsitordproducaorecursoNUSEQUENCIA: TIntegerField;
    cdsitordproducaorecursoNUSEQUENCIA: TIntegerField;
    tbvrecursoNUSEQUENCIA: TcxGridDBBandedColumn;
    sdsDSDESENHO: TStringField;
    sdsDSDESENHOPOSICAO: TStringField;
    sdsDSDESENHOREVISAO: TStringField;
    sdsNUCOTACAO: TStringField;
    cdsDSDESENHO: TStringField;
    cdsDSDESENHOPOSICAO: TStringField;
    cdsDSDESENHOREVISAO: TStringField;
    cdsNUCOTACAO: TStringField;
    actabrircntcusto: TAction;
    actabrirrim: TAction;
    actabrirfuncionario: TAction;
    actabrirprodutoitrim: TAction;
    actabrirordcompra: TAction;
    actabrirprodutomateriaprima: TAction;
    sdsapontamentoDSOBSERVACAO: TBlobField;
    sdsapontamentoVLUNITARIO: TFMTBCDField;
    sdsapontamentoVLTOTAL: TFMTBCDField;
    sdsapontamentoCDTPHORAEXTRA: TIntegerField;
    cdsapontamentoDSOBSERVACAO: TBlobField;
    cdsapontamentoVLUNITARIO: TFMTBCDField;
    cdsapontamentoVLTOTAL: TFMTBCDField;
    cdsapontamentoCDTPHORAEXTRA: TIntegerField;
    tbvapontamentoQTPRODUCAO: TcxGridDBBandedColumn;
    tbvapontamentoQTREFUGO: TcxGridDBBandedColumn;
    tbvapontamentoDSOBSERVACAO: TcxGridDBBandedColumn;
    tbvapontamentoVLUNITARIO: TcxGridDBBandedColumn;
    tbvapontamentoVLTOTAL: TcxGridDBBandedColumn;
    tbvapontamentoCDTPHORAEXTRA: TcxGridDBBandedColumn;
    actabrirfuncionarioapontamento: TAction;
    actabrirequipamento: TAction;
    sdsitordproducaomaterialNMUNIDADE: TStringField;
    cdsitordproducaomaterialNMUNIDADE: TStringField;
    tbvmaterialNMUNIDADE: TcxGridDBBandedColumn;
    sdsitordproducaocustoQTDIAS: TIntegerField;
    cdsitordproducaocustoQTDIAS: TIntegerField;
    tbvcustoQTDIAS: TcxGridDBColumn;
    sdsitordproducaomaterialDTPREVENTREGA: TDateField;
    cdsitordproducaomaterialDTPREVENTREGA: TDateField;
    tbvmaterialDTPREVENTREGA: TcxGridDBBandedColumn;
    sdsitordproducaocustoNUSEQUENCIA: TIntegerField;
    cdsitordproducaocustoNUSEQUENCIA: TIntegerField;
    tbvcustoNUSEQUENCIA: TcxGridDBColumn;
    btnopcoes: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    sdshstordproducao: TSQLDataSet;
    cdshstordproducao: TClientDataSet;
    dtshstordproducao: TDataSource;
    sdshstordproducaoNMCOMPUTADOR: TStringField;
    sdshstordproducaoDSJUSTIFICATIVA: TBlobField;
    cdssdshstordproducao: TDataSetField;
    cdshstordproducaoNMCOMPUTADOR: TStringField;
    cdshstordproducaoDSJUSTIFICATIVA: TBlobField;
    tbshstordproducao: TcxTabSheet;
    tbvhstordproducao: TcxGridDBTableView;
    grdhstordproducaoLevel1: TcxGridLevel;
    grdhstordproducao: TcxGrid;
    tbvhstordproducaoCDUSUARIOI: TcxGridDBColumn;
    tbvhstordproducaoNMCOMPUTADOR: TcxGridDBColumn;
    tbvhstordproducaoTSHISTORICO: TcxGridDBColumn;
    tbvhstordproducaoDSJUSTIFICATIVA: TcxGridDBColumn;
    tbvhstordproducaoCDSTORDPRODUCAO: TcxGridDBColumn;
    tbvrecursoCDSTITORDPRODUCAORECURSO: TcxGridDBBandedColumn;
    sdsapontamentoCDTPPARADA: TIntegerField;
    cdsapontamentoCDTPPARADA: TIntegerField;
    tbvapontamentoCDTPPARADA: TcxGridDBBandedColumn;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    tbvapontamentoQTRETRABALHO: TcxGridDBBandedColumn;
    actgerarrim: TAction;
    dxBarButton2: TdxBarButton;
    actcopiarde: TAction;
    dxBarButton12: TdxBarButton;
    cbxcdstordproducao: TcxDBLookupComboBox;
    lbltpordproducao: TLabel;
    cbxcdtpordproducao: TcxDBLookupComboBox;
    sdsCDTPORDPRODUCAO: TIntegerField;
    cdsCDTPORDPRODUCAO: TIntegerField;
    actabrirtpordproducao: TAction;
    sdsitordproducaocustodsobservacao: TBlobField;
    cdsitordproducaocustoDSOBSERVACAO: TBlobField;
    tbvcustoDSOBSERVACAO: TcxGridDBColumn;
    edtdtentrega: TcxDBDateEdit;
    tbsoutros: TcxTabSheet;
    lblcdfuncionario: TLabel;
    cbxcdfuncionario: TcxDBLookupComboBox;
    lblcdmunicipio: TLabel;
    cbxcdmunicipio: TcxDBLookupComboBox;
    sdsCDFUNCIONARIO: TIntegerField;
    sdsCDMUNICIPIO: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    cdsCDMUNICIPIO: TIntegerField;
    sdsDTPRVINSTALACAO: TDateField;
    cdsDTPRVINSTALACAO: TDateField;
    lbldtprvinstalacao: TLabel;
    edtdtprvinstalacao: TcxDBDateEdit;
    sdshstordproducaoCDHSTORDPRODUCAO: TIntegerField;
    sdshstordproducaoCDORDPRODUCAO: TIntegerField;
    sdshstordproducaoCDSTORDPRODUCAO: TIntegerField;
    cdshstordproducaoCDHSTORDPRODUCAO: TIntegerField;
    cdshstordproducaoCDORDPRODUCAO: TIntegerField;
    cdshstordproducaoCDSTORDPRODUCAO: TIntegerField;
    sdshstordproducaoCDUSUARIOI: TIntegerField;
    sdshstordproducaoCDUSUARIOA: TIntegerField;
    sdshstordproducaoCDCOMPUTADORI: TIntegerField;
    sdshstordproducaoCDCOMPUTADORA: TIntegerField;
    sdshstordproducaoTSINCLUSAO: TSQLTimeStampField;
    sdshstordproducaoTSALTERACAO: TSQLTimeStampField;
    cdshstordproducaoCDUSUARIOI: TIntegerField;
    cdshstordproducaoCDUSUARIOA: TIntegerField;
    cdshstordproducaoCDCOMPUTADORI: TIntegerField;
    cdshstordproducaoCDCOMPUTADORA: TIntegerField;
    cdshstordproducaoTSINCLUSAO: TSQLTimeStampField;
    cdshstordproducaoTSALTERACAO: TSQLTimeStampField;
    tbspedido: TcxTabSheet;
    sdsNUDIASCUSTO: TIntegerField;
    cdsNUDIASCUSTO: TIntegerField;
    tbsconsulta: TcxTabSheet;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    actconsultaordcompra: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    actconsultarim: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    grdconsulta: TcxGrid;
    actconsultasaida: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    grdconsultaLevel1: TcxGridLevel;
    dtsconsulta: TDataSource;
    tbvordcompra: TcxGridDBBandedTableView;
    tbvordcompraCDORDCOMPRA: TcxGridDBBandedColumn;
    tbvordcompraDTEMISSAO: TcxGridDBBandedColumn;
    tbvordcompraCDFORNECEDOR: TcxGridDBBandedColumn;
    tbvordcompraNMFORNECEDOR: TcxGridDBBandedColumn;
    tbvordcompraCDDIGITADO: TcxGridDBBandedColumn;
    tbvordcompraNMPRODUTO: TcxGridDBBandedColumn;
    tbvordcompraNUCLFISCAL: TcxGridDBBandedColumn;
    tbvordcompraQTITEM: TcxGridDBBandedColumn;
    tbvordcompraqtatendida: TcxGridDBBandedColumn;
    tbvordcompraqtpeca: TcxGridDBBandedColumn;
    tbvordcompraqtpesounitario: TcxGridDBBandedColumn;
    tbvordcompraVLPECA: TcxGridDBBandedColumn;
    tbvordcompraVLUNITARIO: TcxGridDBBandedColumn;
    tbvordcompraVLTOTAL: TcxGridDBBandedColumn;
    tbvrim: TcxGridDBBandedTableView;
    tbvrimcdrim: TcxGridDBBandedColumn;
    tbvrimdtemissao: TcxGridDBBandedColumn;
    tbvrimdtbaixa: TcxGridDBBandedColumn;
    tbvrimnunivel: TcxGridDBBandedColumn;
    tbvrimnmcntcusto: TcxGridDBBandedColumn;
    tbvrimcdfuncionario: TcxGridDBBandedColumn;
    tbvrimnmfuncionario: TcxGridDBBandedColumn;
    tbvrimcddigitado: TcxGridDBBandedColumn;
    tbvrimnmproduto: TcxGridDBBandedColumn;
    tbvrimnuclfiscal: TcxGridDBBandedColumn;
    tbvrimqtitem: TcxGridDBBandedColumn;
    tbvrimvlunitario: TcxGridDBBandedColumn;
    tbvrimvltotal: TcxGridDBBandedColumn;
    tbvsaida: TcxGridDBTableView;
    tbvsaidaNUSAIDA: TcxGridDBColumn;
    tbvsaidaDTEMISSAO: TcxGridDBColumn;
    sdsitordproducaomaterialCDFORMULACAO: TIntegerField;
    cdsitordproducaomaterialCDFORMULACAO: TIntegerField;
    tbvmaterialCDFORMULACAO: TcxGridDBBandedColumn;
    sdsitordproducaomaterialCDTPEQUIPAMENTO: TIntegerField;
    cdsitordproducaomaterialCDTPEQUIPAMENTO: TIntegerField;
    tbvmaterialCDTPEQUIPAMENTO: TcxGridDBBandedColumn;
    sdsitordproducaorecursoHRINICIOPREVISTA: TTimeField;
    sdsitordproducaorecursoHRTERMINOPREVISTA: TTimeField;
    sdsitordproducaorecursoDTINICIOPREVISTA: TDateField;
    sdsitordproducaorecursoDTTERMINOPREVISTA: TDateField;
    sdsitordproducaorecursoDTTERMINO: TDateField;
    cdsitordproducaorecursoHRINICIOPREVISTA: TTimeField;
    cdsitordproducaorecursoHRTERMINOPREVISTA: TTimeField;
    cdsitordproducaorecursoDTINICIOPREVISTA: TDateField;
    cdsitordproducaorecursoDTTERMINOPREVISTA: TDateField;
    cdsitordproducaorecursoDTTERMINO: TDateField;
    sdsitordproducaorecursoHRTERMINO: TTimeField;
    cdsitordproducaorecursoHRTERMINO: TTimeField;
    tbvrecursoVLTOTAL: TcxGridDBBandedColumn;
    tbvrecursoHRINICIOPREVISTA: TcxGridDBBandedColumn;
    tbvrecursoHRTERMINOPREVISTA: TcxGridDBBandedColumn;
    tbvrecursoDTINICIOPREVISTA: TcxGridDBBandedColumn;
    tbvrecursoDTTERMINOPREVISTA: TcxGridDBBandedColumn;
    tbvrecursoDTTERMINO: TcxGridDBBandedColumn;
    tbvrecursoHRTERMINO: TcxGridDBBandedColumn;
    sdsitordproducaorecursoDTINICIO: TDateField;
    sdsitordproducaorecursoHRINICIO: TTimeField;
    cdsitordproducaorecursoDTINICIO: TDateField;
    cdsitordproducaorecursoHRINICIO: TTimeField;
    tbvrecursoDTINICIO: TcxGridDBBandedColumn;
    tbvrecursoHRINICIO: TcxGridDBBandedColumn;
    sdsitordproducaorecursoCDTPDURACAO: TIntegerField;
    cdsitordproducaorecursoCDTPDURACAO: TIntegerField;
    tbvrecursoCDTPDURACAO: TcxGridDBBandedColumn;
    lblnupedido: TLabel;
    lblcdorcamento: TLabel;
    lblnmcliente: TLabel;
    lblnucotacao: TLabel;
    lblnuitem: TLabel;
    txtNMCLIENTE: TDBText;
    txtNUCOTACAO: TDBText;
    txtNUITEM: TDBText;
    edtnupedido: TcxDBButtonEdit;
    cbxcdtpmotivorevisao: TcxDBLookupComboBox;
    lbltpmotivorevisao: TLabel;
    sdsCDTPMOTIVOREVISAO: TIntegerField;
    cdsCDTPMOTIVOREVISAO: TIntegerField;
    sdsitordproducaorecursoCDSTITORDPRODUCAORECURSO: TIntegerField;
    cdsitordproducaorecursoCDSTITORDPRODUCAORECURSO: TIntegerField;
    sdsitordproducaorecursoNUCOR: TIntegerField;
    cdsitordproducaorecursoNUCOR: TIntegerField;
    tbvrecursoNUCOR: TcxGridDBBandedColumn;
    sdsNMUNIDADE: TStringField;
    cdsNMUNIDADE: TStringField;
    tbvmaterialDSOBSERVACAO: TcxGridDBBandedColumn;
    sdsitordproducaomaterialDSOBSERVACAO: TBlobField;
    cdsitordproducaomaterialDSOBSERVACAO: TBlobField;
    tbvmaterialQTFAIXAI: TcxGridDBBandedColumn;
    tbvmaterialQTFAIXAF: TcxGridDBBandedColumn;
    tbvrecursoCDFORMULACAO: TcxGridDBBandedColumn;
    sdsitordproducaorecursoCDFORMULACAO: TIntegerField;
    cdsitordproducaorecursoCDFORMULACAO: TIntegerField;
    sdsitordproducaomaterialQTCONSUMO: TFloatField;
    cdsitordproducaomaterialQTCONSUMO: TFloatField;
    tbvmaterialQTCONSUMO: TcxGridDBBandedColumn;
    sdsQTPRODUCAO: TFloatField;
    cdsQTPRODUCAO: TFloatField;
    sdsapontamentoQTPRODUCAO: TFloatField;
    sdsapontamentoQTREFUGO: TFloatField;
    sdsapontamentoQTRETRABALHO: TFloatField;
    cdsapontamentoQTPRODUCAO: TFloatField;
    cdsapontamentoQTREFUGO: TFloatField;
    cdsapontamentoQTRETRABALHO: TFloatField;
    sdsQTQUOCIENTE: TIntegerField;
    cdsQTQUOCIENTE: TIntegerField;
    sdsitordproducaorecursoNUQUOCIENTE: TIntegerField;
    cdsitordproducaorecursoNUQUOCIENTE: TIntegerField;
    actabrirtpequipamento: TAction;
    sdsNUESTRUTURAL: TStringField;
    cdsNUESTRUTURAL: TStringField;
    tbvapontamentoNUESTRUTURAL: TcxGridDBBandedColumn;
    sdsapontamentoNUESTRUTURAL: TStringField;
    cdsapontamentoNUESTRUTURAL: TStringField;
    sdsCDTPEQUIPAMENTO: TIntegerField;
    cdsCDTPEQUIPAMENTO: TIntegerField;
    lblcdtprequipamento: TLabel;
    cbxcdtpequipamento: TcxDBLookupComboBox;
    sdsitordproducaorecursoCDTPDURACAOLIBERACAO: TIntegerField;
    sdsitordproducaorecursoQTLIBERACAO: TFloatField;
    cdsitordproducaorecursoCDTPDURACAOLIBERACAO: TIntegerField;
    cdsitordproducaorecursoQTLIBERACAO: TFloatField;
    tbvrecursoQTLIBERACAO: TcxGridDBBandedColumn;
    tbvrecursoCDTPDURACAOLIBERACAO: TcxGridDBBandedColumn;
    actcalcularprevisao: TAction;
    dxBarButton19: TdxBarButton;
    tbsitproducao: TcxTabSheet;
    sdsitordproducao: TSQLDataSet;
    cdsitordproducao: TClientDataSet;
    dtsitordproducao: TDataSource;
    sdsitordproducaoCDITORDPRODUCAO: TIntegerField;
    sdsitordproducaoCDORDPRODUCAO: TIntegerField;
    sdsitordproducaoCDSTITORDPRODUCAO: TIntegerField;
    sdsitordproducaoCDPRODUTO: TIntegerField;
    sdsitordproducaoCDUSUARIOI: TIntegerField;
    sdsitordproducaoCDUSUARIOA: TIntegerField;
    sdsitordproducaoCDCOMPUTADORI: TIntegerField;
    sdsitordproducaoCDCOMPUTADORA: TIntegerField;
    sdsitordproducaoTSINCLUSAO: TSQLTimeStampField;
    sdsitordproducaoTSALTERACAO: TSQLTimeStampField;
    sdsitordproducaoQTITEM: TFloatField;
    sdsitordproducaoQTPRODUCAO: TFloatField;
    sdsitordproducaoCDDIGITADO: TStringField;
    sdsitordproducaoNMUNIDADE: TStringField;
    sdsitordproducaoNMPRODUTO: TStringField;
    sdsitordproducaoNUCLFISCAL: TStringField;
    cdssdsitordproducao: TDataSetField;
    cdsitordproducaoCDITORDPRODUCAO: TIntegerField;
    cdsitordproducaoCDORDPRODUCAO: TIntegerField;
    cdsitordproducaoCDSTITORDPRODUCAO: TIntegerField;
    cdsitordproducaoCDPRODUTO: TIntegerField;
    cdsitordproducaoCDUSUARIOI: TIntegerField;
    cdsitordproducaoCDUSUARIOA: TIntegerField;
    cdsitordproducaoCDCOMPUTADORI: TIntegerField;
    cdsitordproducaoCDCOMPUTADORA: TIntegerField;
    cdsitordproducaoTSINCLUSAO: TSQLTimeStampField;
    cdsitordproducaoTSALTERACAO: TSQLTimeStampField;
    cdsitordproducaoQTITEM: TFloatField;
    cdsitordproducaoQTPRODUCAO: TFloatField;
    cdsitordproducaoCDDIGITADO: TStringField;
    cdsitordproducaoNMUNIDADE: TStringField;
    cdsitordproducaoNMPRODUTO: TStringField;
    cdsitordproducaoNUCLFISCAL: TStringField;
    tbvitordproducao: TcxGridDBTableView;
    grditordproducaoLevel1: TcxGridLevel;
    grditordproducao: TcxGrid;
    tbvitordproducaoCDSTITORDPRODUCAO: TcxGridDBColumn;
    tbvitordproducaoQTITEM: TcxGridDBColumn;
    tbvitordproducaoQTPRODUCAO: TcxGridDBColumn;
    tbvitordproducaoCDDIGITADO: TcxGridDBColumn;
    tbvitordproducaoNMUNIDADE: TcxGridDBColumn;
    tbvitordproducaoNMPRODUTO: TcxGridDBColumn;
    tbvitordproducaoNUCLFISCAL: TcxGridDBColumn;
    sdsitordproducaoNUBAG: TStringField;
    cdsitordproducaoNUBAG: TStringField;
    sdsitordproducaomaterialNUBAG: TStringField;
    sdsitordproducaomaterialNULOTE: TStringField;
    cdsitordproducaomaterialNUBAG: TStringField;
    cdsitordproducaomaterialNULOTE: TStringField;
    tbvitordproducaoNUBAG: TcxGridDBColumn;
    tbvmaterialNUBAG: TcxGridDBBandedColumn;
    tbvmaterialNULOTE: TcxGridDBBandedColumn;
    gbxproduto: TcxGroupBox;
    lblcddigitado: TLabel;
    edtcddigitado: TcxDBButtonEdit;
    Label8: TLabel;
    Label3: TLabel;
    txtnmunidade: TDBText;
    Label9: TLabel;
    edtqtitem: TcxDBCalcEdit;
    lblqtproducao: TLabel;
    edtqtproducao: TcxDBCalcEdit;
    lbldsdesenho: TLabel;
    edtdsdesenho: TcxDBTextEdit;
    lblnuestrutural: TLabel;
    edtnuestrutural: TcxDBTextEdit;
    sdsapontamentoNUHORIMETROINICIAL: TIntegerField;
    cdsapontamentoNUHORIMETROINICIAL: TIntegerField;
    sdsapontamentoNUHORIMETROFINAL: TIntegerField;
    cdsapontamentoNUHORIMETROFINAL: TIntegerField;
    tbvapontamentoNUHORIMETROINICIAL: TcxGridDBBandedColumn;
    tbvapontamentoNUHORIMETROFINAL: TcxGridDBBandedColumn;
    dxBarButton20: TdxBarButton;
    sdsitordproducaoNULOTE: TStringField;
    sdsitordproducaoHRINICIO: TTimeField;
    sdsitordproducaoHRFIM: TTimeField;
    sdsitordproducaoDSOBSERVACAO: TBlobField;
    cdsitordproducaoNULOTE: TStringField;
    cdsitordproducaoHRINICIO: TTimeField;
    cdsitordproducaoHRFIM: TTimeField;
    cdsitordproducaoDSOBSERVACAO: TBlobField;
    tbvitordproducaoNULOTE: TcxGridDBColumn;
    tbvitordproducaoHRINICIO: TcxGridDBColumn;
    tbvitordproducaoHRFIM: TcxGridDBColumn;
    tbvitordproducaoDSOBSERVACAO: TcxGridDBColumn;
    actabrirprodutoacabado: TAction;
    sdsapontamentoHRINICIALHORIMETRO: TSQLTimeStampField;
    sdsapontamentoHRFINALHORIMETRO: TSQLTimeStampField;
    sdsapontamentoHRDURACAOHORIMETRO: TTimeField;
    sdsapontamentoQTDURACAOHORIMETRO: TFloatField;
    sdsapontamentoHROCIOSA: TTimeField;
    sdsapontamentoQTOCIOSA: TFloatField;
    cdsapontamentoHRINICIALHORIMETRO: TSQLTimeStampField;
    cdsapontamentoHRFINALHORIMETRO: TSQLTimeStampField;
    cdsapontamentoHRDURACAOHORIMETRO: TTimeField;
    cdsapontamentoQTDURACAOHORIMETRO: TFloatField;
    cdsapontamentoHROCIOSA: TTimeField;
    cdsapontamentoQTOCIOSA: TFloatField;
    tbvapontamentoHRINICIALHORIMETRO: TcxGridDBBandedColumn;
    tbvapontamentoHRFINALHORIMETRO: TcxGridDBBandedColumn;
    tbvapontamentoHRDURACAOHORIMETRO: TcxGridDBBandedColumn;
    tbvapontamentoHROCIOSA: TcxGridDBBandedColumn;
    gbxformulacao: TcxGroupBox;
    lblcdformulacao: TLabel;
    cbxcdformulacao: TcxDBLookupComboBox;
    sdsCDFORMULACAO: TIntegerField;
    cdsCDFORMULACAO: TIntegerField;
    sdsNUMISTURA: TIntegerField;
    cdsNUMISTURA: TIntegerField;
    edtnumistura: TcxDBSpinEdit;
    lbl1: TLabel;
    edtcdpesagem: TcxDBTextEdit;
    sdsCDPESAGEM: TStringField;
    cdsCDPESAGEM: TStringField;
    lblCDPESAGEM: TLabel;
    sdsQTPESOMISTURA: TFloatField;
    cdsQTPESOMISTURA: TFloatField;
    edtqtpesomistura: TcxDBCalcEdit;
    lblqtpesomistura: TLabel;
    sdsitordproducaomaterialQTESTOQUE: TFloatField;
    cdsitordproducaomaterialQTESTOQUE: TFloatField;
    tbvmaterialQTESTOQUE: TcxGridDBBandedColumn;
    lblCDEQUIPAMENTO: TLabel;
    cbxcdequipamento: TcxDBLookupComboBox;
    sdsCDEQUIPAMENTO: TIntegerField;
    cdsCDEQUIPAMENTO: TIntegerField;
    actabrirequipamento1: TAction;
    actabrirfuncionario1: TAction;
    sdsitordproducaoCDPRODUTOMATERIAPRIMA: TIntegerField;
    sdsitordproducaoCDDIGITADOMATERIAPRIMA: TStringField;
    cdsitordproducaoCDPRODUTOMATERIAPRIMA: TIntegerField;
    cdsitordproducaoCDDIGITADOMATERIAPRIMA: TStringField;
    tbvitordproducaoCDDIGITADOMATERIAPRIMA: TcxGridDBColumn;
    sdsitordproducaoNMPRODUTOMATERIAPRIMA: TStringField;
    cdsitordproducaoNMPRODUTOMATERIAPRIMA: TStringField;
    tbvitordproducaoNMPRODUTOMATERIAPRIMA: TcxGridDBColumn;
    lblCDREQUISICAOPRODUCAO: TLabel;
    txtCDREQUISICAOPRODUCAO: TDBText;
    sdsCDREQUISICAOPRODUCAO: TIntegerField;
    cdsCDREQUISICAOPRODUCAO: TIntegerField;
    actabrirrequisicaoproducao: TAction;
    sdsCDFUNCIONARIOSOLICITANTE: TIntegerField;
    cdsCDFUNCIONARIOSOLICITANTE: TIntegerField;
    lblcdfuncionariosolicitante: TLabel;
    cbxcdfuncionariosolicitante: TcxDBLookupComboBox;
    sdsCDENTRADA: TIntegerField;
    sdsNUENTRADA: TIntegerField;
    cdsCDENTRADA: TIntegerField;
    cdsNUENTRADA: TIntegerField;
    lblnuentrada: TLabel;
    edtnuentrada: TcxDBButtonEdit;
    actabrirentrada: TAction;
    sdsitordproducaoQTLARGURA: TFloatField;
    sdsitordproducaoQTCOMPRIMENTO: TFloatField;
    sdsitordproducaoQTESPESSURA: TFloatField;
    cdsitordproducaoQTLARGURA: TFloatField;
    cdsitordproducaoQTCOMPRIMENTO: TFloatField;
    cdsitordproducaoQTESPESSURA: TFloatField;
    tbvitordproducaoQTLARGURA: TcxGridDBColumn;
    tbvitordproducaoQTCOMPRIMENTO: TcxGridDBColumn;
    tbvitordproducaoQTESPESSURA: TcxGridDBColumn;
    actabrirprodutomateriaprimaacabado: TAction;
    lblDSTAG: TLabel;
    edtDSTAG: TcxDBTextEdit;
    sdsDSTAG: TStringField;
    cdsDSTAG: TStringField;
    actpesagem: TAction;
    dxBarButton21: TdxBarButton;
    sdsapontamentoCDFORMULACAO: TIntegerField;
    cdsapontamentoCDFORMULACAO: TIntegerField;
    sdsapontamentoQTPESO: TFloatField;
    cdsapontamentoQTPESO: TFloatField;
    sdsapontamentoQTAGUA: TFloatField;
    cdsapontamentoQTAGUA: TFloatField;
    sdsapontamentoQTSOBRA: TFloatField;
    cdsapontamentoQTSOBRA: TFloatField;
    sdsapontamentoQTTEMPERATURA: TFloatField;
    cdsapontamentoQTTEMPERATURA: TFloatField;
    sdsapontamentoCDPESAGEM: TStringField;
    cdsapontamentoCDPESAGEM: TStringField;
    sdsapontamentoNUFORMA: TStringField;
    sdsapontamentoCDFORMULACAO1: TIntegerField;
    sdsapontamentoCDFORMULACAO2: TIntegerField;
    sdsapontamentoCDPESAGEM1: TStringField;
    sdsapontamentoCDPESAGEM2: TStringField;
    sdsapontamentoQTPESO1: TFloatField;
    sdsapontamentoQTPESO2: TFloatField;
    sdsapontamentoQTAGUA1: TFloatField;
    sdsapontamentoQTAGUA2: TFloatField;
    sdsapontamentoQTSOBRA1: TFloatField;
    sdsapontamentoQTSOBRA2: TFloatField;
    cdsapontamentoNUFORMA: TStringField;
    cdsapontamentoCDFORMULACAO1: TIntegerField;
    cdsapontamentoCDFORMULACAO2: TIntegerField;
    cdsapontamentoCDPESAGEM1: TStringField;
    cdsapontamentoCDPESAGEM2: TStringField;
    cdsapontamentoQTPESO1: TFloatField;
    cdsapontamentoQTPESO2: TFloatField;
    cdsapontamentoQTAGUA1: TFloatField;
    cdsapontamentoQTAGUA2: TFloatField;
    cdsapontamentoQTSOBRA1: TFloatField;
    cdsapontamentoQTSOBRA2: TFloatField;
    sdsapontamentoQTAPROVEITAMENTO: TFloatField;
    cdsapontamentoQTAPROVEITAMENTO: TFloatField;
    actabrirformulacao: TAction;
    sdsCDEQUIPAMENTO2: TIntegerField;
    cdsCDEQUIPAMENTO2: TIntegerField;
    lblcdequipamento2: TLabel;
    cbxcdequipamento2: TcxDBLookupComboBox;
    actapontamento: TAction;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    sdsitordproducaomaterialNUMISTURA: TIntegerField;
    cdsitordproducaomaterialNUMISTURA: TIntegerField;
    tbvmaterialNUMISTURA: TcxGridDBBandedColumn;
    sdsitordproducaomaterialQTITEM2: TFloatField;
    sdsitordproducaomaterialNMUNIDADE2: TStringField;
    sdsitordproducaomaterialPRUNIDADE: TFloatField;
    cdsitordproducaomaterialQTITEM2: TFloatField;
    cdsitordproducaomaterialNMUNIDADE2: TStringField;
    cdsitordproducaomaterialPRUNIDADE: TFloatField;
    tbvmaterialNMUNIDADE2: TcxGridDBBandedColumn;
    tbvmaterialQTITEM2: TcxGridDBBandedColumn;
    tbvapontamentoNMTPEQUIPAMENTO: TcxGridDBBandedColumn;
    sdsapontamentoNMTPEQUIPAMENTO: TStringField;
    cdsapontamentoNMTPEQUIPAMENTO: TStringField;
    sdsQTPECA: TFloatField;
    cdsQTPECA: TFloatField;
    lblqtpeca: TLabel;
    edtqtpeca: TcxDBCalcEdit;
    sdsQTPECAPRODUCAO: TFloatField;
    cdsQTPECAPRODUCAO: TFloatField;
    lblqtpecaproducao: TLabel;
    edtqtpecaproducao: TcxDBCalcEdit;
    tbvapontamentoQTPECA: TcxGridDBBandedColumn;
    sdsapontamentoQTPECA: TFloatField;
    cdsapontamentoQTPECA: TFloatField;
    actgerarcorte: TAction;
    dxBarButton7: TdxBarButton;
    sdsCDORCAMENTO: TIntegerField;
    cdsCDORCAMENTO: TIntegerField;
    edtcdorcamento: TcxDBButtonEdit;
    actarquivo: TAction;
    dxBarButton8: TdxBarButton;
    actGerarCotacao: TAction;
    dxBarButton9: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    actconsultamovto: TAction;
    tbvmovto: TcxGridDBTableView;
    tbvmovtoCDMOVTO: TcxGridDBColumn;
    tbvmovtoDTEMISSAO: TcxGridDBColumn;
    tbvmovtoNMTPMOVTO: TcxGridDBColumn;
    tbvmovtoCDDIGITADO: TcxGridDBColumn;
    tbvmovtoNMPRODUTO: TcxGridDBColumn;
    tbvmovtoQTITEM: TcxGridDBColumn;
    tbvmovtoVLUNITARIO: TcxGridDBColumn;
    tbvmovtoVLTOTAL: TcxGridDBColumn;
    actabrirmovto: TAction;
    actabrirprodutoitmovto: TAction;
    lbl2: TLabel;
    dbtxtNMPRODUTOPRINCIPAL: TDBText;
    sdsNMPRODUTOPRINCIPAL: TStringField;
    cdsNMPRODUTOPRINCIPAL: TStringField;
    sdsitordproducaomaterialNUESTRUTURAL: TStringField;
    cdsitordproducaomaterialNUESTRUTURAL: TStringField;
    tbvmaterialNUESTRUTURAL: TcxGridDBBandedColumn;
    actGerarEntradaProdutoAcabado: TAction;
    dxBarButton10: TdxBarButton;
    actgerarbaixaMateriaPrima: TAction;
    dxBarButton11: TdxBarButton;
    sdsapontamentoCDAPONTAMENTOMANUAL: TIntegerField;
    cdsapontamentoCDAPONTAMENTOMANUAL: TIntegerField;
    tbvapontamentoCDAPONTAMENTOMANUAL: TcxGridDBBandedColumn;
    actgerarmaterialmetodoprocesso: TAction;
    dxBarButton13: TdxBarButton;
    txtDSPRODUTO: TDBText;
    lbldsproduto: TLabel;
    sdsDSPRODUTO: TStringField;
    cdsDSPRODUTO: TStringField;
    actabrirapontamentomanual: TAction;
    actgerarestoqueprodutoacabado: TAction;
    dxBarButton14: TdxBarButton;
    txtnmproduto: TDBText;
    actajustarduracao: TAction;
    dxBarButton15: TdxBarButton;
    actacabamentoconcluido: TAction;
    dxBarButton16: TdxBarButton;
    tbvapontamentoTSINICIO: TcxGridDBBandedColumn;
    tbvapontamentoTSFIM: TcxGridDBBandedColumn;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    sdsapontamentoCDEMPRESA: TLargeintField;
    cdsapontamentoCDEMPRESA: TLargeintField;
    sdsitordproducaoCDEMPRESA: TLargeintField;
    cdsitordproducaoCDEMPRESA: TLargeintField;
    sdshstordproducaoCDEMPRESA: TLargeintField;
    cdshstordproducaoCDEMPRESA: TLargeintField;
    sdsitordproducaorecursoCDEMPRESA: TLargeintField;
    cdsitordproducaorecursoCDEMPRESA: TLargeintField;
    sdsitordproducaomaterialCDEMPRESA: TLargeintField;
    cdsitordproducaomaterialCDEMPRESA: TLargeintField;
    sdsitordproducaocustoCDEMPRESA: TLargeintField;
    cdsitordproducaocustoCDEMPRESA: TLargeintField;
    sdsNUREVISAO: TStringField;
    cdsNUREVISAO: TStringField;
    lblnurevisao: TLabel;
    edtnurevisao: TcxDBTextEdit;
    sdsNUITEM: TStringField;
    cdsNUITEM: TStringField;
    sdsBOIMPRESSO: TStringField;
    cdsBOIMPRESSO: TStringField;
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
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actajustardadosExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvapontamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actabrirpedidoExecute(Sender: TObject);
    procedure actabrirorcamentoExecute(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure actabrirsaidaExecute(Sender: TObject);
    procedure cdsapontamentoNewRecord(DataSet: TDataSet);
    procedure cdsapontamentoCDEQUIPAMENTOValidate(Sender: TField);
    procedure cdsapontamentoCDFUNCIONARIOValidate(Sender: TField);
    procedure cdsapontamentoBeforePost(DataSet: TDataSet);
    procedure cdsitordproducaorecursoAfterDelete(DataSet: TDataSet);
    procedure cdsitordproducaorecursoAfterPost(DataSet: TDataSet);
    procedure cdsitordproducaorecursoBeforePost(DataSet: TDataSet);
    procedure cdsitordproducaorecursoNewRecord(DataSet: TDataSet);
    procedure cdsitordproducaorecursoCDTPEQUIPAMENTOValidate(Sender: TField);
    procedure cdsitordproducaorecursoQTPREPARACAOValidate(Sender: TField);
    procedure cdsitordproducaorecursoQTOPERACAOValidate(Sender: TField);
    procedure cdsitordproducaorecursoVLOPERACAOValidate(Sender: TField);
    procedure cdsitordproducaorecursoVLPREPARACAOValidate(Sender: TField);
    procedure cdsitordproducaomaterialAfterDelete(DataSet: TDataSet);
    procedure cdsitordproducaomaterialAfterPost(DataSet: TDataSet);
    procedure cdsitordproducaomaterialBeforePost(DataSet: TDataSet);
    procedure cdsitordproducaomaterialNewRecord(DataSet: TDataSet);
    procedure cdsitordproducaomaterialQTITEMValidate(Sender: TField);
    procedure cdsitordproducaomaterialQTPESOUNITARIOValidate(Sender: TField);
    procedure setvalorfinal(Sender: TField);
    procedure cdsitordproducaomaterialCDDIGITADOValidate(Sender: TField);
    procedure cdsitordproducaomaterialQTPECAValidate(Sender: TField);
    procedure setvalormaterial(Sender: TField);
    procedure cdsitordproducaocustoAfterDelete(DataSet: TDataSet);
    procedure cdsitordproducaocustoAfterPost(DataSet: TDataSet);
    procedure cdsitordproducaocustoBeforePost(DataSet: TDataSet);
    procedure cdsitordproducaocustoNewRecord(DataSet: TDataSet);
    procedure cdsitordproducaocustoCDDIGITADOValidate(Sender: TField);
    procedure cdsitordproducaocustoQTITEMValidate(Sender: TField);
    procedure tbvmaterialCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvmaterialQTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grdcustoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actimprimirordproducaoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actabrirprodutoitrimExecute(Sender: TObject);
    procedure actabrircntcustoExecute(Sender: TObject);
    procedure actabrirrimExecute(Sender: TObject);
    procedure actabrirfuncionarioExecute(Sender: TObject);
    procedure actabrirordcompraExecute(Sender: TObject);
    procedure grditordcompratbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirprodutomateriaprimaExecute(Sender: TObject);
    procedure tbvmaterialCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvapontamentoCellDblClick(Sender: TcxCustomGridTableView;ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirfuncionarioapontamentoExecute(Sender: TObject);
    procedure actabrirequipamentoExecute(Sender: TObject);
    procedure cdsapontamentoCDTPHORAEXTRAValidate(Sender: TField);
    procedure actgerarrimExecute(Sender: TObject);
    procedure actcopiardeExecute(Sender: TObject);
    procedure cdsCDTPORDPRODUCAOValidate(Sender: TField);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure actabrirtpordproducaoExecute(Sender: TObject);
    procedure lbltpordproducaoDblClick(Sender: TObject);
    procedure tbvapontamentoCDTPHORAEXTRAPropertiesInitPopup(Sender: TObject);
    procedure cdshstordproducaoBeforePost(DataSet: TDataSet);
    procedure cdshstordproducaoNewRecord(DataSet: TDataSet);
    procedure cdsQTITEMValidate(Sender: TField);
    procedure edtcddigitadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcddigitadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsCDDIGITADOValidate(Sender: TField);
    procedure lblcddigitadoDblClick(Sender: TObject);
    procedure actconsultaordcompraExecute(Sender: TObject);
    procedure actconsultarimExecute(Sender: TObject);
    procedure actconsultasaidaExecute(Sender: TObject);
    procedure tbvordcompraCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvrimCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure lblnupedidoDblClick(Sender: TObject);
    procedure txtNMCLIENTEDblClick(Sender: TObject);
    procedure cdsapontamentoHRDURACAOValidate(Sender: TField);
    procedure tbvrecursoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvrecursoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirtpequipamentoExecute(Sender: TObject);
    procedure actcalcularprevisaoExecute(Sender: TObject);
    procedure tbvitordproducaoCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitordproducaoBeforePost(DataSet: TDataSet);
    procedure cdsitordproducaoNewRecord(DataSet: TDataSet);
    procedure cdsitordproducaoCDDIGITADOValidate(Sender: TField);
    procedure cbxcdtpordproducaoEnter(Sender: TObject);
    procedure cdsDTEMISSAOValidate(Sender: TField);
    procedure tbvitordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirprodutoacabadoExecute(Sender: TObject);
    procedure cdsitordproducaoAfterScroll(DataSet: TDataSet);
    procedure cdsitordproducaoAfterPost(DataSet: TDataSet);
    procedure calcular_horimetro(Sender: TField);
    procedure calcular_duracao(Sender: TField);
    procedure exibir_total_horas_rodape(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: String);
    procedure cbxcdformulacaoEnter(Sender: TObject);
    procedure cdsCDFORMULACAOValidate(Sender: TField);
    procedure cdsNUMISTURAValidate(Sender: TField);
    procedure tbvmaterialCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actabrirequipamento1Execute(Sender: TObject);
    procedure lblCDEQUIPAMENTODblClick(Sender: TObject);
    procedure lblcdfuncionarioDblClick(Sender: TObject);
    procedure actabrirfuncionario1Execute(Sender: TObject);
    procedure tbvitordproducaoCDDIGITADOMATERIAPRIMAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitordproducaoCDDIGITADOMATERIAPRIMAValidate(Sender: TField);
    procedure actabrirrequisicaoproducaoExecute(Sender: TObject);
    procedure txtCDREQUISICAOPRODUCAODblClick(Sender: TObject);
    procedure edtnuentradaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuentradaKeyPress(Sender: TObject; var Key: Char);
    procedure actabrirentradaExecute(Sender: TObject);
    procedure lblnuentradaDblClick(Sender: TObject);
    procedure actabrirprodutomateriaprimaacabadoExecute(Sender: TObject);
    procedure actpesagemExecute(Sender: TObject);
    procedure lblcdformulacaoDblClick(Sender: TObject);
    procedure actabrirformulacaoExecute(Sender: TObject);
    procedure actapontamentoExecute(Sender: TObject);
    procedure cdsitordproducaomaterialQTITEM2Validate(Sender: TField);
    procedure cdsitordproducaomaterialAfterScroll(DataSet: TDataSet);
    procedure cdsitordproducaoQTLARGURAValidate(Sender: TField);
    procedure actgerarcorteExecute(Sender: TObject);
    procedure lblcdorcamentoDblClick(Sender: TObject);
    procedure edtcdorcamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDORCAMENTOValidate(Sender: TField);
    procedure actarquivoExecute(Sender: TObject);
    procedure actGerarCotacaoExecute(Sender: TObject);
    procedure actconsultamovtoExecute(Sender: TObject);
    procedure tbvmovtoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirmovtoExecute(Sender: TObject);
    procedure actabrirprodutoitmovtoExecute(Sender: TObject);
    procedure tbvrecursoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvmaterialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actGerarEntradaProdutoAcabadoExecute(Sender: TObject);
    procedure actgerarbaixaMateriaPrimaExecute(Sender: TObject);
    procedure actgerarmaterialmetodoprocessoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actabrirapontamentomanualExecute(Sender: TObject);
    procedure actgerarestoqueprodutoacabadoExecute(Sender: TObject);
    procedure actajustarduracaoExecute(Sender: TObject);
    procedure actacabamentoconcluidoExecute(Sender: TObject);
  private      { Private declarations }
    tbl, exibe : string;
    nuloteanterior : string;
    cddigitadoanterior : string;
    ordproducao : tordproducao;
    equipamento : tequipamento;
    qconsulta : TClasseQuery;
    procedure setpreparacao;
    procedure setoperacao;
    procedure settotalmaterial;
    procedure setvalorcusto;
    procedure setrecord(cdtp:integer);
    procedure setRecordRecurso;
    procedure setRecordMateriaPrima;
    procedure setRecordHistoricoStatus;
    procedure setRecordApontamento;
    procedure setRecordProdutoAcabado;
    procedure setRecordProdutoBuscarEstoque;
    procedure SetRecordPedido;
    procedure setRecordOutros;
    procedure setQuery(nmtabela:string);
    procedure setRequisicaoProducao;
    procedure setAbrirTabela;
    procedure setTabsheetQtRegistro;
    procedure setSqldataset;
    function makesqlitordproducao:string;
    function makesqlordproducao:string;
    function makesqlapontamento:string;
    procedure atualizarApontamentoProdutoacabado;
    function horaPreenchida:boolean;
    procedure atualizarApontamento;
    procedure setUnidade2;
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmordproducao: Tfrmordproducao;

implementation

uses UMain,
  uDtmMain,
  udlgcalculopeso,
  ulocalizarordproducao,
  uimprimirrelatoriopadrao,
  uLocalizarPedido,
  uMenuRelatorio,
  uDBMemo,
  ulocalizarentrada,
  udlgordproducaopesagem,
  ulocalizarorcamento, udlgarquivo, classeapontamento;

{$R *.DFM}

const
  artigoI  = 'o';

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

function Tfrmordproducao.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmordproducao.SetRecordPedido;
begin
  lblnupedido.Visible := ordproducao.tpordproducao.bopedido = _s;
  edtnupedido.Visible := ordproducao.tpordproducao.bopedido = _s;
  lblcdorcamento.Visible := ordproducao.tpordproducao.bopedido = _s;
  lblnmcliente.Visible := ordproducao.tpordproducao.bopedido = _s;
  txtNMCLIENTE.Visible := ordproducao.tpordproducao.bopedido = _s;
  lblnucotacao.Visible := ordproducao.tpordproducao.bopedido = _s;
  txtNUCOTACAO.Visible := ordproducao.tpordproducao.bopedido = _s;
  lblnuitem.Visible := ordproducao.tpordproducao.bopedido = _s;
  txtNUITEM.Visible := ordproducao.tpordproducao.bopedido = _s;
  actconsultasaida.Visible := ordproducao.tpordproducao.bopedido = _s;
end;

procedure Tfrmordproducao.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmordproducao.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
  setRecordProdutoBuscarEstoque;
end;

procedure Tfrmordproducao.actSalvarExecute(Sender: TObject);
var
  boedit : Boolean;
  cdstordproducao : string;
begin
  boedit := cds.State = dsedit;
  cdstordproducao := cdsCDSTORDPRODUCAO.OldValue;
  atualizarApontamentoProdutoacabado;
  registro.salvar;
  if boedit and (cdstordproducao <> cdsCDSTORDPRODUCAO.AsString) then
  begin
    ordproducao.RegistrarMudancaStatus;
  end;
  Abrir(cdsCDORDPRODUCAO.asinteger);
end;

procedure Tfrmordproducao.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmordproducao.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmordproducao.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmordproducao.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  setRecordProdutoBuscarEstoque;
end;

procedure Tfrmordproducao.FormShow(Sender: TObject);
begin
  equipamento := tequipamento.create;
  ordproducao := tordproducao.create;
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
  pgc.ActivePageIndex := 0;
  tbvmaterial.Bands[get_index('PIS', tbvmaterial)].Visible := Empresa.tpregime = _R;
  tbvmaterial.Bands[get_index('COFINS', tbvmaterial)].Visible := Empresa.tpregime = _R;
  tbvmaterialBORECUPERAIPI.Visible := not (Empresa.tpregime = _s);
  tbvmaterialBORECUPERAICMS.Visible := not (Empresa.tpregime = _s);
end;

procedure Tfrmordproducao.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmordproducao.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmordproducao.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmordproducao.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmordproducao.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmordproducao.FormDestroy(Sender: TObject);
begin
  freeandnil(qconsulta);
  freeandnil(registro);
  freeandnil(equipamento);
  freeandnil(ordproducao);
end;

procedure Tfrmordproducao.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmordproducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmordproducao.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actcalcularprevisao.Enabled := not actcancelar.Enabled;
end;

procedure Tfrmordproducao.cdsAfterScroll(DataSet: TDataSet);
begin
  //registro.setStatus(tbl, dataset);
  setrecord(cdsCDTPORDPRODUCAO.asinteger);

  ordproducao.Select(cdsCDORDPRODUCAO.asinteger);
  ordproducao.ItOrdProducao.Ler(ordproducao.cdordproducao);
  ordproducao.ItOrdProducaoMaterial.Ler(ordproducao.cdordproducao);
  ordproducao.ItOrdProducaoCusto.Ler(ordproducao.cdordproducao);
  ordproducao.ItOrdProducaoRecurso.Ler(_cdordproducao, ordproducao.cdordproducao);

  actGerarEntradaProdutoAcabado.Enabled := ordproducao.qtitem > ordproducao.qtproducao;
  edtcddigitado.Enabled := cdsCDITPEDIDO.IsNull;
  edtqtitem.Enabled := cdsCDITPEDIDO.IsNull;
  edtqtpeca.Enabled := cdsCDITPEDIDO.IsNull;
  edtqtproducao.Enabled := False;
  edtqtpecaproducao.Enabled := False;
  if actconsultarim.Checked then
  begin
    setQuery(_rim)
  end
  else if actconsultaordcompra.Checked then
  begin
    setQuery(_ordcompra)
  end
  else if actconsultasaida.Checked then
  begin
    setQuery(_saida)
  end
  else if actconsultamovto.checked then
  begin
    setQuery(_movto);
  end;
  if cdsCDORDPRODUCAO.AsString <> '' then
  begin
    actgerarrim.Visible := (ordproducao.tpordproducao.bogerarrim = _s) and (not ordproducao.existeRequisicao(cdsCDORDPRODUCAO.AsInteger));
  end;
  setTabsheetQtRegistro;
  ordproducao.produto.Select(cdsCDPRODUTO.AsInteger);
  actgerarbaixaMateriaPrima.enabled := ordproducao.ItOrdProducaoMaterial.existeMateriaPrimaParaBaixarEstoque;
end;

procedure Tfrmordproducao.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure Tfrmordproducao.edtcodigoEnter(Sender: TObject);
begin
  TcxTextEdit(sender).selectall;
end;

procedure Tfrmordproducao.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmordproducao.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.CodigoKeyPress(Sender, Key, actnovo.enabled);
end;

procedure Tfrmordproducao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmordproducao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmordproducao.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmordproducao.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmordproducao.actajustardadosExecute(Sender: TObject);
var
  ordproducao : TOrdProducao;
begin
  ordproducao := TOrdProducao.create;
  try
    if ordproducao.AjustarDadosApontamento then
    begin
      MessageDlg('Dados ajustados!', mtInformation, [mbOK], 0);
    end;
  finally
    FreeAndNil(ordproducao);
  end;
end;

procedure Tfrmordproducao.actajustarduracaoExecute(Sender: TObject);
begin
  if tapontamento.AjustarDuracao then
  begin
    MessageDlg('Dados ajustados!', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmordproducao.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure Tfrmordproducao.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmordproducao.tbvapontamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsapontamento, key);
end;

procedure Tfrmordproducao.actabrirpedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.actabrirorcamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.actabrirapontamentomanualExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsapontamento);
end;

procedure Tfrmordproducao.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.actabrirsaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.cdsapontamentoNewRecord(DataSet: TDataSet);
begin
  cdsapontamentoCDAPONTAMENTO.AsString    := GerarCodigo(_APONTAMENTO);
  cdsapontamentoHRFIM.AsDateTime          := HrBanco;
  cdsapontamentoTSFIM.AsDateTime          := tsBanco;
  cdsapontamentoTSINICIO.AsDateTime       := tsBanco;
  cdsapontamentoHRINICIO.AsDateTime       := HrBanco;
  cdsapontamentoHRDURACAO.AsDateTime      := cdsapontamentoHRFIM.AsDateTime - cdsapontamentoHRINICIO.AsDateTime;
  cdsapontamentoCDSTAPONTAMENTO.Asinteger := 2;
  cdsapontamentoCDTPHORAEXTRA.AsString    := _1;
  cdsapontamentoQTPRODUCAO.AsFloat        := 0;
  cdsapontamentoQTREFUGO.AsFloat          := 0;
  cdsapontamentoQTDURACAO.AsFloat         := 0;
  cdsapontamentoDTEMISSAO.AsDateTime      := DtBanco;
  if ordproducao.tpordproducao.boapontamentodtemissao = _s  then
  begin
    cdsapontamentoDTEMISSAO.AsDateTime    := cdsDTEMISSAO.AsDateTime;
  end;
  if ordproducao.tpordproducao.cdfuncionario <> 0 then
  begin
    cdsapontamentoCDFUNCIONARIO.AsInteger := ordproducao.tpordproducao.cdfuncionario;
  end;
  if ordproducao.tpordproducao.cdequipamento <> 0 then
  begin
    cdsapontamentoCDequipamento.AsInteger := ordproducao.tpordproducao.cdequipamento;
  end;
end;

procedure Tfrmordproducao.cdsapontamentoCDEQUIPAMENTOValidate(Sender: TField);
begin
  if not CodigoExiste(_equipamento, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_equipamento)]), mterror, [mbok], 0);
    abort;
  end;
  equipamento.Select(sender.AsInteger);
  equipamento.tpequipamento.Select(equipamento.cdtpequipamento);
  cdsapontamentoVLUNITARIO.AsCurrency  := equipamento.tpequipamento.vloperacao;
end;

procedure Tfrmordproducao.cdsapontamentoCDFUNCIONARIOValidate(Sender: TField);
begin
  if not CodigoExiste(_funcionario, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(__funcionario)]), mterror, [mbok], 0);
    abort;
  end;
  if not BooleandoCodigo(_funcao, NomedoCodigo(_funcionario, sender.AsString, _cdfuncao), _boapontamento) then
  begin
    MessageDlg('Função do funcionário não permite apontar.', mtInformation, [mbOK], 0);
    abort;
  end;
end;

procedure Tfrmordproducao.cdsapontamentoBeforePost(DataSet: TDataSet);
begin
  if ordproducao.tpordproducao.boapontamentodatahora <> _s then
  begin
    if dataset.FieldByName(_hrinicio).AsDateTime > dataset.FieldByName(_hrfim).AsDateTime then
    begin
      messagedlg('Hora de início não pode ser maior do que a hora fim.', mtinformation, [mbok], 0);
      abort;
    end;
    cdsapontamentoTSINICIO.AsDateTime  := StrToDateTime(formatdatetime(_dd_mm_yyyy, cdsapontamentoDTEMISSAO.AsDateTime)+' '+FormatDateTime(_hh_mm_ss,cdsapontamentoHRINICIO.AsDateTime));
    cdsapontamentoTSFIM.AsDateTime     := StrToDateTime(formatdatetime(_dd_mm_yyyy, cdsapontamentoTSINICIO.AsDateTime)+' '+FormatDateTime(_hh_mm_ss,cdsapontamentoHRFIM.AsDateTime));
  end
  else
  begin
    if dataset.FieldByName(_tsinicio).AsDateTime > dataset.FieldByName(_tsfim).AsDateTime then
    begin
      messagedlg('Início não pode ser maior do que Fim.', mtinformation, [mbok], 0);
      abort;
    end;
    dataset.FieldByName(_dtemissao).AsDateTime := dataset.FieldByName(_tsinicio).AsDateTime;
    dataset.FieldByName(_hrinicio).AsDateTime  := dataset.FieldByName(_tsinicio).AsDateTime;
    dataset.FieldByName(_hrfim).AsDateTime     := dataset.FieldByName(_tsfim).AsDateTime;
    dataset.FieldByName(_HRDURACAO).AsDateTime := dataset.FieldByName(_tsfim).AsDateTime - dataset.FieldByName(_tsinicio).AsDateTime;
    dataset.FieldByName(_QTDURACAO).AsFloat    := HourOf(dataset.FieldByName(_HRDURACAO).AsDateTime) + MinuteOf(dataset.FieldByName(_HRDURACAO).AsDateTime) / 60;
  end;
  cdsapontamentoVLTOTAL.AsCurrency   := cdsapontamentoQTDURACAO.AsFloat * cdsapontamentoVLUNITARIO.AsCurrency;
  registro.set_update(cdsapontamento);
end;

procedure Tfrmordproducao.cdsitordproducaorecursoAfterDelete(DataSet: TDataSet);
begin
  cdsitordproducaorecursoAfterPost(DataSet);
end;

procedure Tfrmordproducao.cdsitordproducaorecursoAfterPost(DataSet: TDataSet);
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
    c.CloneCursor(cdsitordproducaorecurso, false);
    c.First;
    while not c.Eof do
    begin
      vloperacao   := vloperacao   + c.fieldbyname(_VLTOTALOPERACAO).AsCurrency;
      vlpreparacao := vlpreparacao + c.fieldbyname(_VLTOTALPREPARACAO).AsCurrency;
      qtoperacao   := qtoperacao   + c.fieldbyname(_qtoperacao).asfloat;
      qtpreparacao := qtpreparacao + c.fieldbyname(_qtpreparacao).asfloat;
      c.Next;
    end;
    IF cds.State = dsbrowse then
    begin
      cds.Edit;
    end;
    cdsVLOPERACAOp.AsCurrency   := vloperacao;
    cdsVLPREPARACAOp.AsCurrency := vlpreparacao;
    cdsVLRECURSOP.AsCurrency    := vloperacao + vlpreparacao;
    cdsqtoperacaop.asfloat      := qtoperacao;
    cdsqtpreparacaop.asfloat    := qtpreparacao;
    cdsqthorap.asfloat          := cdsqtoperacaop.asfloat + cdsqtpreparacaop.asfloat;

    cdsVLOPERACAO.AsCurrency   := vloperacao * cdsQTITEM.AsFloat;
    cdsVLPREPARACAO.AsCurrency := vlpreparacao * cdsQTITEM.AsFloat;
    cdsVLRECURSO.AsCurrency    := cdsVLOPERACAO.AsCurrency + cdsVLPREPARACAO.AsCurrency;
    cdsqtoperacao.asfloat      := qtoperacao * cdsqtitem.asfloat;
    cdsqtpreparacao.asfloat    := qtpreparacao * cdsqtitem.asfloat;
    cdsqthora.asfloat          := cdsqtoperacao.asfloat + cdsqtpreparacao.asfloat;
  finally
    FreeAndNil(c);
  end;
end;

procedure Tfrmordproducao.cdsitordproducaorecursoBeforePost(DataSet: TDataSet);
begin
  if cdsitordproducaorecursoCDTPEQUIPAMENTO.asstring = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Recurso]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsrecurso;
    abort;
  end;
  registro.set_update(cdsitordproducaorecurso);
end;

procedure Tfrmordproducao.cdsitordproducaorecursoNewRecord(DataSet: TDataSet);
begin
  cdsitordproducaorecursoCDITORDPRODUCAORECURSO.AsString   := GerarCodigo(_it+tbl+_recurso);
  cdsitordproducaorecursoQTPREPARACAO.AsFloat              := 0;
  cdsitordproducaorecursoQTOPERACAO.AsFloat                := 0;
  cdsitordproducaorecursoVLOPERACAO.AsCurrency             := 0;
  cdsitordproducaorecursoVLPREPARACAO.AsCurrency           := 0;
  cdsitordproducaorecursoNUSEQUENCIA.AsInteger             := cdsitordproducaorecurso.RecordCount + 1;
  cdsitordproducaorecursoCDSTITORDPRODUCAORECURSO.AsString := _1;
  cdsitordproducaorecursoCDTPDURACAO.AsString              := _1;
  cdsitordproducaorecursoNUQUOCIENTE.AsInteger             := 0;
end;

procedure Tfrmordproducao.cdsitordproducaorecursoCDTPEQUIPAMENTOValidate(Sender: TField);
begin
  equipamento.tpequipamento.Select(sender.Asinteger);
  cdsitordproducaorecursoVLPREPARACAO.AsCurrency := equipamento.tpequipamento.vlpreparacao;
  cdsitordproducaorecursoVLOPERACAO.AsCurrency   := equipamento.tpequipamento.vloperacao;
end;

procedure Tfrmordproducao.cdsitordproducaorecursoQTPREPARACAOValidate(Sender: TField);
begin
  setpreparacao;
end;

procedure Tfrmordproducao.cdsitordproducaorecursoQTOPERACAOValidate(Sender: TField);
begin
  setoperacao;
end;

procedure Tfrmordproducao.cdsitordproducaorecursoVLOPERACAOValidate(Sender: TField);
begin
  setoperacao;
end;

procedure Tfrmordproducao.cdsitordproducaorecursoVLPREPARACAOValidate(Sender: TField);
begin
  setpreparacao;
end;

procedure Tfrmordproducao.cdsitordproducaomaterialAfterDelete(DataSet: TDataSet);
begin
  cdsitordproducaomaterialAfterPost(DataSet);
end;

procedure Tfrmordproducao.cdsitordproducaomaterialAfterPost(DataSet: TDataSet);
var
  vltotalfinal : Currency;
  c : TClientDataSet;
begin
  vltotalfinal := 0;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsitordproducaomaterial, false);
    c.First;
    while not c.Eof do
    begin
      vltotalfinal := vltotalfinal + c.fieldbyname(_vlfinal).AsCurrency;
      c.Next;
    end;
    if cds.State = dsbrowse then
    begin
      cds.Edit;
    end;
    cdsVLMATERIALp.AsCurrency := vltotalfinal;
    cdsVLMATERIAL.AsCurrency  := vltotalfinal * cdsQTITEM.AsFloat;
  finally
    FreeAndNil(c);
  end;
end;

procedure Tfrmordproducao.cdsitordproducaomaterialBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitordproducaomaterial);
end;

procedure Tfrmordproducao.cdsitordproducaomaterialNewRecord(DataSet: TDataSet);
begin
  cdsitordproducaomaterialCDitordproducaoMATERIAL.AsString := GerarCodigo(_itordproducaomaterial);
  cdsitordproducaomaterialQTITEM.AsFloat    := 1;
  cdsitordproducaomaterialQTCONSUMO.AsFloat := 0;
end;

procedure Tfrmordproducao.cdsitordproducaomaterialQTITEMValidate(Sender: TField);
var
  produto : TProduto;
begin
  settotalmaterial;
  if cdsitordproducaomaterialPRUNIDADE.AsFloat <= 0 then
  begin
    Exit;
  end;
  cdsitordproducaomaterialQTITEM2.OnValidate := nil;
  produto := tproduto.create;
  try
    produto.Select(cdsitordproducaomaterialCDPRODUTO.AsInteger);
    cdsitordproducaomaterialQTITEM2.AsFloat    := produto.calcularQTItem2(cdsitordproducaomaterialQTITEM.AsFloat, cdsitordproducaomaterialPRUNIDADE.AsFloat);
    cdsitordproducaomaterialQTITEM2.OnValidate := cdsitordproducaomaterialQTITEM2Validate;
  finally
    FreeAndNil(produto);
  end;
end;

procedure Tfrmordproducao.cdsitordproducaomaterialQTPESOUNITARIOValidate(Sender: TField);
begin
  cdsitordproducaomaterialQTITEM.AsFloat := cdsitordproducaomaterialQTPECA.AsFloat * cdsitordproducaomaterialQTPESOUNITARIO.AsFloat;
end;

procedure Tfrmordproducao.setvalorfinal(Sender: TField);
var
  valor : Currency;
begin
  cdsitordproducaomaterialVLPIS.AsCurrency := cdsitordproducaomaterialVLTOTAL.AsCurrency * cdsitordproducaomaterialALPIS.AsFloat / 100;
  cdsitordproducaomaterialVLCOFINS.AsCurrency := cdsitordproducaomaterialVLTOTAL.AsCurrency * cdsitordproducaomaterialALCOFINS.AsFloat / 100;
  cdsitordproducaomaterialVLICMS.AsCurrency := cdsitordproducaomaterialVLTOTAL.AsCurrency * cdsitordproducaomaterialALICMS.AsFloat / 100;
  cdsitordproducaomaterialVLIPI.AsCurrency := cdsitordproducaomaterialVLTOTAL.AsCurrency * cdsitordproducaomaterialALIPI.AsFloat / 100;
  valor := cdsitordproducaomaterialVLTOTAL.AsCurrency + cdsitordproducaomaterialVLFRETE.AsCurrency + cdsitordproducaomaterialVLIPI.AsCurrency;
  if cdsitordproducaomaterialBORECUPERAICMS.AsString = _S then
  begin
    valor := valor - cdsitordproducaomaterialVLICMS.AsCurrency;
  end;
  if cdsitordproducaomaterialBORECUPERAIPI.AsString = _S then
  begin
    valor := valor - cdsitordproducaomaterialVLIPI.AsCurrency;
  end;
  if cdsitordproducaomaterialBORECUPERAPIS.AsString = _S then
  begin
    valor := valor - cdsitordproducaomaterialVLPIS.AsCurrency;
  end;
  if cdsitordproducaomaterialBORECUPERACOFINS.AsString = _S then
  begin
    valor := valor - cdsitordproducaomaterialVLCOFINS.AsCurrency;
  end;
  cdsitordproducaomaterialVLFINAL.AsCurrency := valor;
end;

procedure Tfrmordproducao.cdsitordproducaomaterialCDDIGITADOValidate(Sender: TField);
  procedure clear_fields;
  begin
    cdsitordproducaomaterialCDPRODUTO.clear;
    cdsitordproducaomaterialNMPRODUTO.clear;
    cdsitordproducaomaterialVLUNITARIO.clear;
    cdsitordproducaomaterialNUCLFISCAL.clear;
    cdsitordproducaomaterialBORECUPERAICMS.clear;
    cdsitordproducaomaterialBORECUPERACOFINS.clear;
    cdsitordproducaomaterialBORECUPERAPIS.clear;
    cdsitordproducaomaterialBORECUPERAIPI.clear;
    cdsitordproducaomaterialALICMS.clear;
    cdsitordproducaomaterialALIPI.clear;
    cdsitordproducaomaterialALPIS.clear;
    cdsitordproducaomaterialALCOFINS.clear;
    cdsitordproducaomaterialNMUNIDADE.clear;
    cdsitordproducaomaterialNMUNIDADE2.Clear;
    cdsitordproducaomaterialPRUNIDADE.Clear;
    cdsitordproducaomaterialQTESTOQUE.clear;
  end;
var
  produto : TProduto;
begin
  if Sender.AsString = '' then
  begin
    clear_fields;
    Exit;
  end;
  produto := tproduto.create;
  try
    produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
    if produto.cdproduto = 0 then
    begin
      abort;
    end;
    produto.Select(produto.cdproduto);
    produto.CheckDados;
    if (produto.cdproduto <> 0) and (cdsitordproducaomaterialCDPRODUTO.AsInteger <> produto.cdproduto) then
    begin
      cdsitordproducaomaterialCDPRODUTO.AsInteger    := produto.cdproduto;
    end;
    cdsitordproducaomaterialNMPRODUTO.asstring        := produto.nmproduto;
    cdsitordproducaomaterialVLUNITARIO.AsCurrency     := produto.vlcusto;
    cdsitordproducaomaterialNUCLFISCAL.AsString       := PRODUTO.nuclfiscal;
    cdsitordproducaomaterialBORECUPERAICMS.AsString   := produto.borecuperaicms;
    cdsitordproducaomaterialBORECUPERACOFINS.AsString := produto.borecuperacofins;
    cdsitordproducaomaterialBORECUPERAPIS.AsString    := produto.borecuperapis;
    cdsitordproducaomaterialBORECUPERAIPI.AsString    := produto.borecuperaipi;
    cdsitordproducaomaterialALICMS.AsFloat            := produto.alicms;
    cdsitordproducaomaterialALIPI.AsFloat             := produto.alipi;
    cdsitordproducaomaterialALPIS.AsFloat             := produto.alpis;
    cdsitordproducaomaterialALCOFINS.AsFloat          := produto.alcofins;
    cdsitordproducaomaterialNMUNIDADE.AsString        := qregistro.nomedocodigo(_unidade, produto.cdunidade);
    cdsitordproducaomaterialNMUNIDADE2.AsString       := qregistro.nomedocodigo(_unidade, produto.cdunidade2);
    cdsitordproducaomaterialPRUNIDADE.AsFloat         := produto.prunidade;
    cdsitordproducaomaterialQTESTOQUE.AsFloat         := produto.qtestoque;
  finally
    FreeAndNil(produto);
  end;
  cdsitordproducaomaterialQTITEMValidate(cdsitordproducaomaterialQTITEM);
  setUnidade2;
end;

procedure Tfrmordproducao.cdsitordproducaomaterialQTPECAValidate(Sender: TField);
begin
  cdsitordproducaomaterialQTITEM.AsFloat := cdsitordproducaomaterialQTPECA.AsFloat * cdsitordproducaomaterialQTPESOUNITARIO.AsFloat;
end;

procedure Tfrmordproducao.setvalormaterial(Sender: TField);
begin
  cdsVLPRODUCAOp.AsCurrency := cdsVLPRODUCAOp.AsCurrency - cdsitordproducaomaterialVLFINAL.AsCurrency;
  cdsVLPRODUCAO.AsCurrency  := cdsVLPRODUCAO.AsCurrency  - (cdsitordproducaomaterialVLFINAL.AsCurrency * cdsQTITEM.AsFloat);
  cdsVLPRODUCAOp.AsCurrency := cdsVLPRODUCAOp.AsCurrency + cdsitordproducaomaterialVLFINAL.AsCurrency;
  cdsVLPRODUCAO.AsCurrency  := cdsVLPRODUCAO.AsCurrency + (cdsitordproducaomaterialVLFINAL.AsCurrency * cdsQTITEM.AsFloat);
end;

procedure Tfrmordproducao.cdsitordproducaocustoAfterDelete(DataSet: TDataSet);
begin
  cdsitordproducaocustoAfterPost(DataSet);
end;

procedure Tfrmordproducao.cdsitordproducaocustoAfterPost(DataSet: TDataSet);
var
  vltotal : Currency;
  c : TClientDataSet;
begin
  vltotal := 0;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsitordproducaocusto, false);
    c.First;
    while not c.Eof do
    begin
      vltotal := vltotal + c.fieldbyname(_VLTOTAL).AsCurrency;
      c.Next;
    end;
    cdsVLCUSTOp.AsCurrency := vltotal;
    cdsVLCUSTO.AsCurrency  := vltotal * cdsQTITEM.AsFloat;
  finally
    FreeAndNil(c);
  end;
end;

procedure Tfrmordproducao.cdsitordproducaocustoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitordproducaocusto);
end;

procedure Tfrmordproducao.cdsitordproducaocustoNewRecord(DataSet: TDataSet);
begin
  cdsitordproducaocustoCDitordproducaoCUSTO.AsString := GerarCodigo(_it+tbl+_custo);
  cdsitordproducaocustoVLUNITARIO.AsCurrency := 0;
  cdsitordproducaocustoQTDIAS.AsInteger := 1;
end;

procedure Tfrmordproducao.cdsitordproducaocustoCDDIGITADOValidate(Sender: TField);
  procedure clear_fields;
  begin
    cdsitordproducaocustoCDPRODUTO.clear;
    cdsitordproducaocustoNMPRODUTO.clear;
    cdsitordproducaocustoVLTOTAL.clear;
  end;
var
  produto : TProduto;
begin
  if Sender.AsString = '' then
  begin
    clear_fields;
    Exit;
  end;
  produto := TProduto.create;
  try
    produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
    if produto.cdproduto = 0 then
    begin
      Abort;
    end;
    produto.Select(produto.cdproduto);
    produto.CheckDados;
    if (produto.cdproduto <> 0) and (cdsitordproducaocustoCDPRODUTO.AsInteger <> produto.cdproduto) then
    begin
      cdsitordproducaocustoCDPRODUTO.AsInteger := produto.cdproduto;
    end;
    if cdsitordproducaocustoQTITEM.IsNull then
    begin
      cdsitordproducaocustoQTITEM.AsFloat := 1;
    end;
    cdsitordproducaocustoNMPRODUTO.asstring := produto.nmproduto;
    cdsitordproducaocustoVLTOTAL.AsCurrency := produto.vlvenda;
  finally
    FreeAndNil(produto);
  end;
end;

procedure Tfrmordproducao.cdsitordproducaocustoQTITEMValidate(Sender: TField);
begin
  setvalorcusto;
end;

procedure Tfrmordproducao.tbvmaterialCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_ordproducao, cdsitordproducaomaterial, false);
end;

procedure Tfrmordproducao.tbvmaterialQTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  qtpeso : real;
  dsformula : string;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  qtpeso := cdsitordproducaomaterialQTPESOUNITARIO.AsFloat;
  if CalcularPeso(cdsitordproducaomaterialQTPESOUNITARIO.ReadOnly, cdsitordproducaomaterialCDPRODUTO.AsString, dsformula, qtpeso) and
     (not cdsitordproducaomaterial.ReadOnly) then
  begin
    if cdsitordproducaomaterial.State <> dsedit then
    begin
      cdsitordproducaomaterial.Edit;
    end;
    cdsitordproducaomaterialQTPESOUNITARIO.AsFloat := qtpeso;
    cdsitordproducaomaterialDSFORMULA.AsString     := dsformula;
  end;
end;

procedure Tfrmordproducao.grdcustoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_ordproducao, cdsitordproducaocusto, false);
end;

procedure Tfrmordproducao.setpreparacao;
begin
  cdsVLPRODUCAOp.AsCurrency := cdsVLPRODUCAOp.AsCurrency - cdsitordproducaorecursoVLTOTALPREPARACAO.AsCurrency;
  cdsVLPRODUCAO.AsCurrency := cdsVLPRODUCAO.AsCurrency - (cdsitordproducaorecursoVLTOTALPREPARACAO.AsCurrency * cdsqtitem.AsFloat);
  cdsitordproducaorecursoVLTOTALPREPARACAO.AsCurrency := cdsitordproducaorecursoQTPREPARACAO.AsCurrency * cdsitordproducaorecursoVLPREPARACAO.ascurrency;
  cdsVLPRODUCAOp.AsCurrency := cdsVLPRODUCAOp.AsCurrency + cdsitordproducaorecursoVLTOTALPREPARACAO.AsCurrency;
  cdsVLPRODUCAO.AsCurrency := cdsVLPRODUCAO.AsCurrency + (cdsitordproducaorecursoVLTOTALPREPARACAO.AsCurrency * cdsQTITEM.AsFloat);
end;

procedure Tfrmordproducao.setoperacao;
begin
  cdsVLPRODUCAOP.AsCurrency := cdsVLPRODUCAOP.AsCurrency - cdsitordproducaorecursoVLTOTALOPERACAO.AsCurrency;
  cdsVLPRODUCAO.AsCurrency := cdsVLPRODUCAO.AsCurrency - (cdsitordproducaorecursoVLTOTALOPERACAO.AsCurrency * cdsQTITEM.AsFloat);
  cdsitordproducaorecursoVLTOTALOPERACAO.AsCurrency := cdsitordproducaorecursoQTOPERACAO.AsCurrency * cdsitordproducaorecursoVLOPERACAO.ascurrency;
  cdsVLPRODUCAOP.AsCurrency := cdsVLPRODUCAOP.AsCurrency + cdsitordproducaorecursoVLTOTALOPERACAO.AsCurrency;
  cdsVLPRODUCAO.AsCurrency := cdsVLPRODUCAO.AsCurrency + (cdsitordproducaorecursoVLTOTALOPERACAO.AsCurrency * cdsQTITEM.AsFloat);
end;

procedure Tfrmordproducao.settotalmaterial;
begin
  cdsitordproducaomaterialVLTOTAL.AsCurrency := cdsitordproducaomaterialQTITEM.AsFloat * cdsitordproducaomaterialVLUNITARIO.ascurrency;
end;

procedure Tfrmordproducao.setvalorcusto;
begin
  cdsVLPRODUCAOp.AsCurrency := cdsVLPRODUCAOp.AsCurrency - cdsitordproducaocustoVLTOTAL.AsCurrency;
  cdsVLPRODUCAO.AsCurrency := cdsVLPRODUCAO.AsCurrency - (cdsitordproducaocustoVLTOTAL.AsCurrency * cdsQTITEM.AsFloat);
  cdsitordproducaocustoVLTOTAL.AsCurrency := cdsitordproducaocustoQTITEM.AsFloat * cdsitordproducaocustoVLUNITARIO.AsCurrency;
  cdsVLPRODUCAOp.AsCurrency := cdsVLPRODUCAOp.AsCurrency + cdsitordproducaocustoVLTOTAL.AsCurrency;
  cdsVLPRODUCAO.AsCurrency := cdsVLPRODUCAO.AsCurrency + (cdsitordproducaocustoVLTOTAL.AsCurrency * cdsQTITEM.AsFloat);
end;

procedure Tfrmordproducao.actimprimirordproducaoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(503, cdscdordproducao.AsString+' and op.cdempresa='+empresa.cdempresa.tostring);
end;

procedure Tfrmordproducao.FormCreate(Sender: TObject);
begin
  actacabamentoconcluido.Visible := empresa.nucnpj = '11.167.292/0001-78';
  qconsulta := TClasseQuery.create;
  dtsconsulta.dataset := qconsulta.q;
  tbl := _ordproducao;
  exibe := maiuscula(_Ordem)+' '+maiuscula(__producao);
  tbvmaterialQTITEM2.Visible := empresa.material.produto.boqtestoque2;
  tbvmaterialNMUNIDADE2.Visible := empresa.material.produto.boqtestoque2;
  setAbrirTabela;
  setRequisicaoProducao;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio('', btnimprimir, 47, cds, tbl);
  setSqldataset;
end;

procedure Tfrmordproducao.actabrirprodutoitrimExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, qconsulta.q);
end;

procedure Tfrmordproducao.actabrircntcustoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, qconsulta.q);
end;

procedure Tfrmordproducao.actabrirrimExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, qconsulta.q);
end;

procedure Tfrmordproducao.actabrirfuncionarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, qconsulta.q);
end;

procedure Tfrmordproducao.actabrirordcompraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, qconsulta.q);
end;

procedure Tfrmordproducao.grditordcompratbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordcompra then
  begin
    actabrirordcompraExecute(actabrirordcompra)
  end;
end;

procedure Tfrmordproducao.actabrirprodutomateriaprimaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitordproducaomaterial);
end;

procedure Tfrmordproducao.tbvmaterialCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutomateriaprimaExecute(actabrirprodutomateriaprima);
  end;
end;

procedure Tfrmordproducao.tbvapontamentoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdfuncionario then
  begin
    actabrirfuncionarioapontamentoExecute(actabrirfuncionarioapontamento)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdapontamentomanual then
  begin
    actabrirapontamentomanualExecute(actabrirapontamentomanual)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdequipamento then
  begin
    actabrirequipamentoExecute(actabrirequipamento)
  end;
end;

procedure Tfrmordproducao.actabrirfuncionarioapontamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsapontamento);
end;

procedure Tfrmordproducao.actabrirequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsapontamento);
end;

procedure Tfrmordproducao.cdsapontamentoCDTPHORAEXTRAValidate(Sender: TField);
begin
  if cdsapontamentoCDEQUIPAMENTO.asstring = '' then
  begin
    exit;
  end;
  equipamento.Select(cdsapontamentoCDEQUIPAMENTO.asinteger);
  equipamento.tpequipamento.Select(equipamento.cdtpequipamento);
  cdsapontamentoVLUNITARIO.AsCurrency := equipamento.tpequipamento.vloperacao * ((ValordoCodigo(_tp+_APONTAMENTO, sender.AsString, _pr+_hora+_extra) / 100)+1);
end;

procedure Tfrmordproducao.actgerarrimExecute(Sender: TObject);
var
  cdrim : Integer;
begin
  cdrim := ordproducao.GerarRequisicao(ordproducao.cdordproducao);
  if cdrim > 0 then
  begin
    MessageDlg('Requisição '+inttostr(cdrim)+' gerada.', mtInformation, [mbOK], 0);
  end
  else if cdrim = 0 then
  begin
    MessageDlg('Requisição já foi gerada.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmordproducao.actcopiardeExecute(Sender: TObject);
var
  cdordproducao : integer;
begin
  cdordproducao := Localizarordproducao;
  if (cdordproducao <> cdsCDORDPRODUCAO.AsInteger) and (cdordproducao <> 0) and ordproducao.copiarde(cdordproducao) then
  begin
    MessageDlg('Cópia concluída!', mtInformation, [mbOK], 0);
    Abrir(cdsCDORDPRODUCAO.asinteger);
  end;
end;

procedure Tfrmordproducao.cdsCDTPORDPRODUCAOValidate(Sender: TField);
begin
  setrecord(sender.AsInteger);
end;

procedure Tfrmordproducao.setRecordProdutoAcabado;
begin
  tbsitproducao.TabVisible := ordproducao.tpordproducao.boprodutoacabado = _s;

  tbvitordproducaoNUBAG.Visible := ordproducao.tpordproducao.boprodutobag = _s;
  tbvitordproducaoQTLARGURA.Visible := ordproducao.tpordproducao.boprodutodimensao = _s;
  tbvitordproducaoQTCOMPRIMENTO.Visible := ordproducao.tpordproducao.boprodutodimensao = _s;
  tbvitordproducaoQTESPESSURA.Visible := ordproducao.tpordproducao.boprodutodimensao = _s;
  tbvitordproducaoHRINICIO.Visible := ordproducao.tpordproducao.boprodutohora = _s;
  tbvitordproducaoHRFIM.Visible := ordproducao.tpordproducao.boprodutohora = _s;
  tbvitordproducaoNULOTE.Visible := ordproducao.tpordproducao.boprodutolote = _s;
  tbvitordproducaoCDDIGITADOMATERIAPRIMA.Visible := ordproducao.tpordproducao.boprodutomateriaprima = _s;
  tbvitordproducaoNMPRODUTOMATERIAPRIMA.Visible := ordproducao.tpordproducao.boprodutomateriaprima = _s;
  tbvitordproducaoNUCLFISCAL.Visible := ordproducao.tpordproducao.boprodutoncm = _s;
  tbvitordproducaoQTITEM.visible := ordproducao.tpordproducao.boprodutoqtitem = _s;
  tbvitordproducaoQTPRODUCAO.visible := ordproducao.tpordproducao.boprodutoqtproducao = _s;
  tbvitordproducaoDSOBSERVACAO.Visible := ordproducao.tpordproducao.boprodutoobservacao = _s;
  tbvitordproducaoCDSTITORDPRODUCAO.Visible := ordproducao.tpordproducao.boprodutostatus = _s;

  tbvitordproducaoNMUNIDADE.Visible := ordproducao.tpordproducao.boprodutocdunidade = _s;
end;

procedure Tfrmordproducao.setRecordApontamento;
begin
  tbvapontamento.Bands[TQForm.ObterIndiceTableView('Produção', tbvapontamento)].Visible := ordproducao.tpordproducao.boapontamentoproducao = _s;
  tbvapontamento.Bands[TQForm.ObterIndiceTableView('Outros', tbvapontamento)].Visible := (ordproducao.tpordproducao.boapontamentonuestrutural = _s) or (ordproducao.tpordproducao.boapontamentoobservacao = _s);
  tbvapontamento.Bands[TQForm.ObterIndiceTableView('Horímetro', tbvapontamento)].Visible := ordproducao.tpordproducao.boapontamentohorimetro = _s;
  tbvapontamento.Bands[TQForm.ObterIndiceTableView('Funcionário', tbvapontamento)].Visible := ordproducao.tpordproducao.boapontamentofuncionario = _s;
  tbsapontamento.TabVisible := ordproducao.tpordproducao.boapontamento = _s;
  tbvapontamentoCDTPHORAEXTRA.Visible := ordproducao.tpordproducao.boapontamentotphoraextra = _s;
  tbvapontamentoVLUNITARIO.Visible := ordproducao.tpordproducao.boapontamentovlunitario = _s;
  tbvapontamentoVLTOTAL.Visible := ordproducao.tpordproducao.boapontamentovltotal = _s;
  tbvapontamentoNUESTRUTURAL.Visible := ordproducao.tpordproducao.boapontamentonuestrutural = _s;
  tbvapontamentoDSOBSERVACAO.Visible := ordproducao.tpordproducao.boapontamentoobservacao = _s;
  tbvapontamentoNUHORIMETROFINAL.Visible := ordproducao.tpordproducao.boapontamentohorimetro = _s;
  tbvapontamentoVLUNITARIO.Options.Focusing := ordproducao.tpordproducao.boapontamentoalterarvlunitario = _s;
  tbvapontamentoTSINICIO.Visible := ordproducao.tpordproducao.boapontamentodatahora = _s;
  tbvapontamentoTSFIM.Visible := ordproducao.tpordproducao.boapontamentodatahora = _s;
  tbvapontamentoDTEMISSAO.Visible := ordproducao.tpordproducao.boapontamentodatahora <> _s;
  tbvapontamentoHRINICIO.Visible  := ordproducao.tpordproducao.boapontamentodatahora <> _s;
  tbvapontamentoHRFIM.Visible     := ordproducao.tpordproducao.boapontamentodatahora <> _s;
end;

procedure Tfrmordproducao.setRecordHistoricoStatus;
begin
  tbvhstordproducao.Navigator.Buttons.Insert.Visible := ordproducao.tpordproducao.bohistoricostatusmanual = _s;
  tbvhstordproducao.Navigator.Buttons.Delete.Visible := ordproducao.tpordproducao.bohistoricostatusmanual = _s;
  tbvhstordproducao.Navigator.Buttons.Insert.Enabled := ordproducao.tpordproducao.bohistoricostatusmanual = _s;
  tbvhstordproducao.Navigator.Buttons.Delete.Enabled := ordproducao.tpordproducao.bohistoricostatusmanual = _s;
  tbvhstordproducaoCDSTORDPRODUCAO.Options.Focusing  := ordproducao.tpordproducao.bohistoricostatusmanual = _s;
  tbvhstordproducaoCDUSUARIOi.Options.Focusing := ordproducao.tpordproducao.bohistoricostatusmanual = _s;
  tbvhstordproducaoTSHISTORICO.Options.Focusing := ordproducao.tpordproducao.bohistoricostatusmanual = _s;
end;

procedure Tfrmordproducao.setRecordMateriaPrima;
begin
  tbsmaterial.TabVisible := ordproducao.tpordproducao.Bomaterial = _s;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('Faixa', tbvmaterial)].Visible := ordproducao.tpordproducao.bomaterialfaixa = _s;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('Valor', tbvmaterial)].Visible := ordproducao.tpordproducao.bomaterialvalor = _s;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('ICMS', tbvmaterial)].Visible := ordproducao.tpordproducao.bomaterialicms = _s;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('IPI', tbvmaterial)].Visible := ordproducao.tpordproducao.bomaterialipi = _s;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('PIS', tbvmaterial)].Visible := ordproducao.tpordproducao.bomaterialpis = _s;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('COFINS', tbvmaterial)].Visible := ordproducao.tpordproducao.bomaterialcofins = _s;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('Valor Final', tbvmaterial)].Visible := ordproducao.tpordproducao.bomaterialvlfinal = _s;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('Outros', tbvmaterial)].Visible := (ordproducao.tpordproducao.bomaterialformulacao = _s) or (ordproducao.tpordproducao.boTPEQUIPAMENTO = _s);
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('Identificação', tbvmaterial)].Visible := (ordproducao.tpordproducao.bomaterialbag = _s) or (ordproducao.tpordproducao.bomaterialnuestrutural = _s);
  tbvmaterialNUESTRUTURAL.Visible := ordproducao.tpordproducao.bomaterialnuestrutural = _s;
  if ordproducao.tpordproducao.bomaterialnuestrutural  = _s then
  begin
    tbvmaterialNUBAG.Visible := False;
    tbvmaterialNULOTE.Visible := False;
  end;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('Observação' , tbvmaterial)].Visible := ordproducao.tpordproducao.bomaterialobservacao = _s;
  tbvmaterial.Bands[TQForm.ObterIndiceTableView('Quantidade' , tbvmaterial)].Visible := (ordproducao.tpordproducao.bomaterialqtpeca = _s) or
                                                                          (ordproducao.tpordproducao.bomaterialpsunitario = _s) or
                                                                          (ordproducao.tpordproducao.bomaterialqtitem = _s) or
                                                                          (ordproducao.tpordproducao.bomaterialqtestoque = _s) or
                                                                          (ordproducao.tpordproducao.bomaterialqtconsumo = _s);
  tbvmaterialCDTPEQUIPAMENTO.Visible    := ordproducao.tpordproducao.boTPEQUIPAMENTO = _s;
  tbvmaterialCDFORMULACAO.Visible       := ordproducao.tpordproducao.bomaterialformulacao = _s;
  tbvmaterialDTPREVENTREGA.Visible      := ordproducao.tpordproducao.bomaterialprevisao = _s;
  tbvmaterialVLFRETE.visible            := ordproducao.tpordproducao.bomaterialfrete = _s;
  tbvmaterialDSFORMULA.visible          := ordproducao.tpordproducao.bomaterialmedida = _s;
  tbvmaterialDSPOSICAO.visible          := ordproducao.tpordproducao.bomaterialposicao = _s;
  tbvmaterialNUCLFISCAL.visible         := ordproducao.tpordproducao.bomaterialnuclfiscal = _s;
  tbvmaterialQTPECA.visible             := ordproducao.tpordproducao.bomaterialqtpeca = _s;
  tbvmaterialQTPESOUNITARIO.visible     := ordproducao.tpordproducao.bomaterialpsunitario = _s;
  tbvmaterialqtitem.visible             := ordproducao.tpordproducao.bomaterialqtitem = _s;
  tbvmaterialQTESTOQUE.visible          := ordproducao.tpordproducao.bomaterialqtestoque = _s;
  tbvmaterialQTCONSUMO.visible          := ordproducao.tpordproducao.bomaterialqtconsumo = _s;
  tbvmaterialQTCONSUMO.Options.Focusing := ordproducao.tpordproducao.bomaterialqtconsumodigitar = _s;
  tbvmaterialNULOTE.visible             := ordproducao.tpordproducao.bomateriallote = _s;
  tbvmaterialNUMISTURA.Visible          := ordproducao.tpordproducao.bomaterialnumistura = _s;
end;

procedure Tfrmordproducao.setRecordRecurso;
begin
  tbsrecurso.TabVisible                                                      := ordproducao.tpordproducao.borecurso = _s;
  tbvrecurso.Bands[TQForm.ObterIndiceTableView('Preparação'         , tbvrecurso)].Visible := ordproducao.tpordproducao.bopreparacao = _s;
  tbvrecurso.Bands[TQForm.ObterIndiceTableView('Previsão de Término', tbvrecurso)].Visible := ordproducao.tpordproducao.borecursoterminoprevista = _s;
  tbvrecurso.Bands[TQForm.ObterIndiceTableView('Início'             , tbvrecurso)].Visible := ordproducao.tpordproducao.borecursoinicio = _s;
  tbvrecurso.Bands[TQForm.ObterIndiceTableView('Tempo Liberação'    , tbvrecurso)].Visible := ordproducao.tpordproducao.borecursoliberacao = _s;
  tbvrecursoCDTPDURACAO.Visible                                              := ordproducao.tpordproducao.botpduracao = _s;
  lblcdtprequipamento.Visible                                                := ordproducao.tpordproducao.borecurso = _s;
  cbxcdtpequipamento.Visible                                                 := ordproducao.tpordproducao.borecurso = _s;
  actcalcularprevisao.Visible                                                := ordproducao.tpordproducao.borecurso = _s;
end;

procedure Tfrmordproducao.setrecord(cdtp:integer);
begin
  if cdtp = 0 then
  begin
    exit;
  end;
  ordproducao.tpordproducao.Select(cdtp);
  if (cbxcdfuncionario.Text = '') and (ordproducao.tpordproducao.cdfuncionarioresponsavel <> 0) then
  begin
    cbxcdfuncionario.EditValue := ordproducao.tpordproducao.cdfuncionarioresponsavel;
  end;
  actgerarestoqueprodutoacabado.Visible := ordproducao.tpordproducao.boitordproducaogerarmovto = _s;
  actGerarEntradaProdutoAcabado.Visible := ordproducao.tpordproducao.boentradaestoque = _s;
  actgerarbaixaMateriaPrima.Visible := ordproducao.tpordproducao.bomaterialbaixarestoque = _s;
  edtDSTAG.Visible := ordproducao.tpordproducao.botag = _s;
  lblDSTAG.Visible := ordproducao.tpordproducao.botag = _s;
  lblqtpeca.Visible := ordproducao.tpordproducao.boqtpeca = _s;
  edtqtpeca.Visible := ordproducao.tpordproducao.boqtpeca = _s;
  lblqtpecaproducao.Visible := ordproducao.tpordproducao.boqtpeca = _s;
  edtqtpecaproducao.Visible := ordproducao.tpordproducao.boqtpeca = _s;
  actgerarrim.Visible := ordproducao.tpordproducao.bogerarrim = _s;
  gbxformulacao.Visible := ordproducao.tpordproducao.boformulacao = _s;
  lbldtentrega.Visible := ordproducao.tpordproducao.bodtentrega = _s;
  edtdtentrega.Visible := ordproducao.tpordproducao.bodtentrega = _s;
  lbldtprventrega.Visible := ordproducao.tpordproducao.bodtprevisao = _s;
  edtdtprventrega.Visible := ordproducao.tpordproducao.bodtprevisao = _s;
  lblnuestrutural.Visible := ordproducao.tpordproducao.bonuestrutural = _s;
  edtnuestrutural.Visible := ordproducao.tpordproducao.bonuestrutural = _s;
  lbldsdesenho.visible := ordproducao.tpordproducao.bodsdesenho = _s;
  edtdsdesenho.Visible := ordproducao.tpordproducao.bodsdesenho = _s;
  actarquivo.Visible := ordproducao.tpordproducao.boarquivo = _s;
  tbsconsulta.TabVisible := ordproducao.tpordproducao.boconsulta = _s;
  tbspedido.TabVisible := (ordproducao.tpordproducao.bopedido = _s) or (ordproducao.tpordproducao.boentrada = _s);
  tbscusto.TabVisible := ordproducao.tpordproducao.bocusto = _s;
  lblnuentrada.Visible := ordproducao.tpordproducao.boentrada = _s;
  edtnuentrada.Visible := ordproducao.tpordproducao.boentrada = _s;
  actgerarcorte.Visible := ordproducao.tpordproducao.bogerarcorte = _s;
  gbxproduto.Visible := ordproducao.tpordproducao.boproduto = _s;
  SetRecordPedido;
  setRecordOutros;
  setRecordProdutoAcabado;
  setRecordApontamento;
  setRecordHistoricoStatus;
  setRecordMateriaPrima;
  setRecordRecurso;
  setRecordProdutoBuscarEstoque;
end;

procedure Tfrmordproducao.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPORDPRODUCAO.asinteger := registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  pnl.Caption := exibe+' '+edtcodigo.text;
  // inicializa campos
  cdsDTEMISSAO.AsDateTime     := DtBanco;
  cdsDTPRVENTREGA.AsDateTime  := DtBanco;
  cdsCDSTORDPRODUCAO.AsInteger := qregistro.Codigo_status_novo(tbl);
  setrecord(cdsCDTPORDPRODUCAO.asInteger);
  cdsCDTPORDPRODUCAO.FocusControl;
  cdsQTHORAORCADA.AsFloat   := 0;
  cdsQTHORAPRODUCAO.AsFloat := 0;
  cdsQTITEM.AsFloat         := 1;
  cdsQTQUOCIENTE.AsInteger  := 1;
  cdsQTPRODUCAO.AsFloat     := 0;
  {
  if usuario.funcionario.cdfuncionario <> 0 then
  begin
    cdsCDFUNCIONARIOSOLICITANTE.AsInteger := usuario.funcionario.cdfuncionario;
  end;
  }
end;

procedure Tfrmordproducao.actabrirtpequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitordproducaorecurso);
end;

procedure Tfrmordproducao.actabrirtpordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure Tfrmordproducao.actacabamentoconcluidoExecute(Sender: TObject);
begin
  if TOrdProducao.AcabamentoConcluido then
  begin
    MessageDlg('Dados ajustados!', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmordproducao.lbltpordproducaoDblClick(Sender: TObject);
begin
  actabrirtpordproducao.onExecute(actabrirtpordproducao);
end;

procedure Tfrmordproducao.tbvapontamentoCDTPHORAEXTRAPropertiesInitPopup(Sender: TObject);
begin
  abrir_tabela(_tp+_hora+_extra);
end;

procedure Tfrmordproducao.cdshstordproducaoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdshstordproducao);
end;

procedure Tfrmordproducao.cdshstordproducaoNewRecord(DataSet: TDataSet);
begin
  cdshstordproducaoCDHSTORDPRODUCAO.AsString := GerarCodigo(_hstordproducao);
  cdshstordproducaoCDUSUARIOI.AsInteger := usuario.cdusuario;
  cdshstordproducaoCDCOMPUTADORI.AsString    := vgcdcomputador;
  cdshstordproducaoTSINCLUSAO.AsDateTime     := tsBanco;
end;

procedure Tfrmordproducao.cdsQTITEMValidate(Sender: TField);
begin
  if sender.AsFloat = 0 then
  begin
    MessageDlg('Quantidade não pode ser zero.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  if sender.AsFloat < 0 then
  begin
    MessageDlg('Quantidade não pode ser negativa.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure Tfrmordproducao.edtcddigitadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure Tfrmordproducao.edtcddigitadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrmordproducao.cdsCDDIGITADOValidate(Sender: TField);
var
  cdproduto : Integer;
begin
  if Sender.AsString = '' then
  begin
    cdsCDPRODUTO.clear;
    Exit;
  end;
  cdproduto := ordproducao.produto.CodigoProdutoDigitado(Sender.AsString, '');
  if cdproduto = 0 then
  begin
    sender.FocusControl;
    abort;
  end;
  cdsCDPRODUTO.AsInteger  := cdproduto;
  ordproducao.produto.Select(cdproduto);
  if ordproducao.tpordproducao.boprodutobuscarestoque  = _s then
  begin
    edtqtitem.Value := ordproducao.produto.qtestoque;
  end;
  cdsnmproduto.AsString := ordproducao.produto.nmproduto;
end;

procedure Tfrmordproducao.lblcddigitadoDblClick(Sender: TObject);
begin
  actabrirprodutoExecute(actabrirproduto);
end;

procedure Tfrmordproducao.actconsultaordcompraExecute(Sender: TObject);
begin
  setQuery(_ordcompra);
end;

procedure Tfrmordproducao.actconsultarimExecute(Sender: TObject);
begin
  setQuery(_rim);
end;

procedure Tfrmordproducao.actconsultasaidaExecute(Sender: TObject);
begin
  setQuery(_saida);
end;

procedure Tfrmordproducao.setQuery(nmtabela: string);
  function makesql:string;
  begin
    if nmtabela = _ordcompra then
    begin
      result := 'SELECT O.CDORDCOMPRA'+
                      ',F.NMFORNECEDOR'+
                      ',O.DTEMISSAO'+
                      ',O.CDFORNECEDOR'+
                      ',I.CDDIGITADO'+
                      ',P.NMPRODUTO'+
                      ',P.NUCLFISCAL'+
                      ',I.QTITEM'+
                      ',I.QTATENDIDA'+
                      ',I.VLPECA'+
                      ',I.QTPECA'+
                      ',I.QTPESOUNITARIO'+
                      ',I.VLUNITARIO'+
                      ',I.VLTOTAL '+
                'FROM ORDCOMPRA O '+
                'LEFT JOIN ITORDCOMPRA I ON I.CDORDCOMPRA=O.CDORDCOMPRA AND O.CDEMPRESA=I.CDEMPRESA '+
                'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND P.CDEMPRESA=I.CDEMPRESA '+
                'LEFT JOIN FORNECEDOR F ON F.CDFORNECEDOR=O.CDFORNECEDOR AND F.CDEMPRESA=O.CDEMPRESA '+
                'WHERE I.CDEMPRESA='+empresa.cdempresa.tostring+' AND I.CDORDPRODUCAO='+cdscdordproducao.AsString;
    end
    else if nmtabela = _rim then
    begin
      result := 'SELECT R.CDRIM'+
                      ',F.NMFUNCIONARIO'+
                      ',F.CDFUNCIONARIO'+
                      ',C.NUNIVEL'+
                      ',C.NMCNTCUSTO'+
                      ',R.DTEMISSAO'+
                      ',M.DTEMISSAO DTBAIXA'+
                      ',I.CDDIGITADO'+
                      ',I.CDPRODUTO'+
                      ',P.NMPRODUTO'+
                      ',P.NUCLFISCAL'+
                      ',IM.QTITEM'+
                      ',IM.VLUNITARIO'+
                      ',IM.VLTOTAL '+
                'FROM RIM R '+
                'INNER JOIN ITRIM I ON I.CDRIM=R.CDRIM AND R.CDEMPRESA=I.CDEMPRESA '+
                'INNER JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND P.CDEMPRESA=I.CDEMPRESA '+
                'LEFT JOIN MOVTO M ON M.CDITRIM=I.CDITRIM AND M.CDEMPRESA=I.CDEMPRESA '+
                'LEFT JOIN CNTCUSTO C ON C.CDCNTCUSTO=R.CDCNTCUSTO AND C.CDEMPRESA=R.CDEMPRESA '+
                'LEFT JOIN ITMOVTO IM ON IM.CDMOVTO=M.CDMOVTO AND IM.CDEMPRESA=M.CDEMPRESA '+
                'LEFT JOIN FUNCIONARIO F ON F.CDFUNCIONARIO=R.CDFUNCIONARIO AND F.CDEMPRESA=R.CDEMPRESA '+
                'WHERE I.CDEMPRESA='+empresa.cdempresa.tostring+' AND I.CDORDPRODUCAO='+cdscdordproducao.AsString;
    end
    else if nmtabela = _movto  then
    begin
      result := 'SELECT MOVTO.CDMOVTO'+
                      ',movto.dtemissao'+
                      ',tpmovto.nmtpmovto'+
                      ',ITMOVTO.CDDIGITADO'+
                      ',ITMOVTO.CDPRODUTO'+
                      ',PRODUTO.NMPRODUTO'+
                      ',ITMOVTO.QTITEM'+
                      ',ITMOVTO.VLUNITARIO'+
                      ',ITMOVTO.VLTOTAL '+
                'FROM MOVTO '+
                'LEFT JOIN TPMOVTO ON TPMOVTO.CDEMPRESA=MOVTO.CDEMPRESA AND TPMOVTO.CDTPMOVTO=MOVTO.CDTPMOVTO '+
                'INNER JOIN ITMOVTO ON ITMOVTO.CDEMPRESA=MOVTO.CDEMPRESA AND ITMOVTO.CDMOVTO=MOVTO.CDMOVTO '+
                'INNER JOIN PRODUTO ON PRODUTO.CDPRODUTO=ITMOVTO.CDPRODUTO AND PRODUTO.CDEMPRESA=ITMOVTO.CDEMPRESA '+
                'WHERE MOVTO.CDEMPRESA='+cds.fieldbyname(_cdempresa).asstring+' and movto.cdordproducao='+cds.fieldbyname(_cdordproducao).asstring;
    end
    else if nmtabela = _saida then
    begin
      result := 'SELECT SA.CDSAIDA'+
                       ',SA.NUSAIDA'+
                       ',SA.DTEMISSAO '+
                'FROM ORDPRODUCAO O '+
                'LEFT JOIN ITPEDIDO I ON I.CDITPEDIDO=O.CDITPEDIDO AND I.CDEMPRESA=O.CDEMPRESA '+
                'LEFT JOIN ITSAIDA I3 ON I3.CDITPEDIDO=I.CDITPEDIDO AND I3.CDEMPRESA=O.CDEMPRESA '+
                'LEFT JOIN SAIDA SA ON SA.CDSAIDA=I3.CDSAIDA AND SA.CDEMPRESA=I3.CDEMPRESA '+
                'WHERE O.CDEMPRESA='+empresa.cdempresa.tostring+' AND O.CDORDPRODUCAO='+cdscdordproducao.AsString;
    end;
  end;
begin
  qconsulta.q.Close;
  if cdsCDORDPRODUCAO.asstring = '' then
  begin
    exit;
  end;
  if nmtabela = _ordcompra then
  begin
    grdconsultaLevel1.GridView := tbvordcompra
  end
  else if nmtabela = _rim then
  begin
    grdconsultaLevel1.GridView := tbvrim
  end
  else if nmtabela = _saida then
  begin
    grdconsultaLevel1.GridView := tbvsaida
  end
  else if nmtabela = _movto then
  begin
    grdconsultaLevel1.GridView := tbvmovto;
  end;
  qconsulta.q.SQL.Text := makesql;
  qconsulta.q.Open;
end;

procedure Tfrmordproducao.tbvordcompraCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordcompra then actabrirordcompraExecute(actabrirordcompra);
end;

procedure Tfrmordproducao.tbvrimCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdrim then
  begin
    actabrirrimExecute(actabrirrim)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcntcusto then
  begin
    actabrircntcustoExecute(actabrircntcusto)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoitrimExecute(actabrirprodutoitrim)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdfuncionario then
  begin
    actabrirfuncionarioExecute(actabrirfuncionario);
  end;
end;

procedure Tfrmordproducao.edtnupedidoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  itpedidolist : titpedidolist;
  codigo : string;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  itpedidolist := titpedidolist.create;
  try
    codigo := LocalizarPedido('', itpedidolist);
    if itpedidolist.count = 0 then
    begin
      Exit;
    end;
    cdscditpedido.asinteger  := itpedidolist.Items[0].cditpedido;
    cdscdpedido.asinteger    := itpedidolist.Items[0].cdpedido;
    cdsnupedido.asstring     := qregistro.StringdoCodigo(_pedido, itpedidolist.Items[0].cdpedido, _nupedido);
    cdscdproduto.AsInteger   := itpedidolist.Items[0].cdproduto;
    cdscddigitado.asstring   := itpedidolist.Items[0].cddigitado;
    cdsqtitem.AsCurrency     := itpedidolist.Items[0].qtitem - itpedidolist.Items[0].qtatendida;
    cdsnucotacao.asstring    := itpedidolist.Items[0].nucotacao;
    cdsnuitem.AsString      := itpedidolist.Items[0].nuitem;
    cdsNMCLIENTE.AsString    := NomedoCodigo(_cliente, qregistro.StringdoCodigo(_pedido, itpedidolist.Items[0].cdpedido, _cdcliente));
  finally
    FreeAndNil(itpedidolist);
  end;
end;

procedure Tfrmordproducao.lblnupedidoDblClick(Sender: TObject);
begin
  actabrirpedidoExecute(actabrirpedido);
end;

procedure Tfrmordproducao.tbvrecursoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdtpequipamento then
  begin
    actabrirtpequipamentoExecute(actabrirtpequipamento);
  end;
end;

procedure Tfrmordproducao.tbvrecursoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBandedColumn;
begin
  Column := tbvrecursoNUCOR;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] = '' then
  begin
    Exit;
  end;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if ACanvas.Font.Color <> 0 then
  begin
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure Tfrmordproducao.txtNMCLIENTEDblClick(Sender: TObject);
begin
  actabrirclienteExecute(actabrircliente);
end;

procedure Tfrmordproducao.cdsapontamentoHRDURACAOValidate(Sender: TField);
begin
  cdsapontamentoQTDURACAO.AsFloat := RoundTo(((StrToInt(FormatDateTime('hh', cdsapontamentoHRDURACAO.AsDateTime))*60)+StrToInt(FormatDateTime('nn', cdsapontamentoHRDURACAO.AsDateTime))) * 0.01666666666666667, -2);
end;

procedure Tfrmordproducao.actcalcularprevisaoExecute(Sender: TObject);
begin
  ordproducao.cdordproducao := cdsCDORDPRODUCAO.AsInteger;
  ordproducao.dtemissao     := cdsDTEMISSAO.AsDateTime;
  ordproducao.CalcularTempoPrevisto;
  Abrir(cdsCDORDPRODUCAO.asinteger);
end;

procedure Tfrmordproducao.tbvitordproducaoCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_ordproducao, cdsitordproducao, false);
end;

procedure Tfrmordproducao.cdsitordproducaoBeforePost(DataSet: TDataSet);
begin
  if (ordproducao.tpordproducao.boprodutomateriaprima = _s) and cdsitordproducaoCDDIGITADOMATERIAPRIMA.IsNull then
  begin
    MessageDlg('Matéria-prima é um campo obrigatório.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (ordproducao.tpordproducao.boprodutoobrigatorio = _s) and cdsitordproducaoCDPRODUTO.isnull then
  begin
    MessageDlg('Produto é um campo obrigatório.', mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cdsitordproducao);
end;

procedure Tfrmordproducao.cdsitordproducaoNewRecord(DataSet: TDataSet);
begin
  cdsitordproducaoCDitordproducao.AsString   := GerarCodigo(_itordproducao);
  cdsitordproducaoQTITEM.AsFloat             := 0;
  cdsitordproducaoQTPRODUCAO.AsFloat         := 0;
  cdsitordproducaoCDSTITORDPRODUCAO.AsInteger := qregistro.Codigo_status_novo(_itordproducao);
  if ordproducao.tpordproducao.boprodutocopiarlote = _s  then
  begin
    cdsitordproducaoNULOTE.AsString := nuloteanterior;
  end;
  if (ordproducao.tpordproducao.boprodutocopiarcddigitado = _s) and (cddigitadoanterior <> '') then
  begin
    cdsitordproducaoCDDIGITADO.AsString := cddigitadoanterior;
  end;
end;

procedure Tfrmordproducao.cdsitordproducaoCDDIGITADOValidate(Sender: TField);
  procedure set_produtosimilar;
  var
    q : TClasseQuery;
  begin
    if ordproducao.tpordproducao.boprodutosimilarmateria <> _s  then
    begin
      Exit;
    end;
    q := TClasseQuery.create;
    try
      q.q.open('select p.cdproduto,p.cdalternativo '+
               'from produtosimilar s '+
               'inner join produto p on p.cdempresa=s.cdempresa and p.cdproduto=s.cdproduto '+
               'where s.cdempresa='+cdsitordproducao.FieldByName(_cdempresa).AsString+' '+
               'and cdprodutoorigem='+cdsitordproducaocdproduto.AsString);
      if q.q.RecordCount > 0 then
      begin
        if q.q.FieldByName(_cdalternativo).AsString <> '' then
        begin
          cdsitordproducaoCDDIGITADOMATERIAPRIMA.AsString := q.q.FieldByName(_cdalternativo).AsString
        end
        else
        begin
          cdsitordproducaoCDDIGITADOMATERIAPRIMA.AsString := q.q.FieldByName(_cdproduto).AsString;
        end;
      end;
    finally
      freeandnil(q);
    end;
  end;
  procedure clear_fields;
  begin
    cdsitordproducaoCDPRODUTO.Clear;
    cdsitordproducaoNMPRODUTO.clear;
    cdsitordproducaoNUCLFISCAL.clear;
    cdsitordproducaoNMUNIDADE.clear;
  end;
var
  produto : TProduto;
begin
  if Sender.AsString = '' then
  begin
    clear_fields;
    Exit;
  end;
  produto := TProduto.create;
  try
    produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
    if produto.cdproduto = 0 then
    begin
      Abort;
    end;
    produto.Select(produto.cdproduto);
    produto.CheckDados;
    if (produto.cdproduto <> 0) and (cdsitordproducaoCDPRODUTO.AsInteger <> produto.cdproduto) then
    begin
      cdsitordproducaoCDPRODUTO.AsInteger := produto.cdproduto;
    end;
    cdsitordproducaoNMPRODUTO.asstring  := produto.nmproduto;
    cdsitordproducaoNUCLFISCAL.AsString := PRODUTO.nuclfiscal;
    cdsitordproducaoNMUNIDADE.AsString  := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  finally
    FreeAndNil(produto);
  end;
  set_produtosimilar;
end;

procedure Tfrmordproducao.cbxcdtpordproducaoEnter(Sender: TObject);
begin
  abrir_tabela(_tpordproducao);
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmordproducao.cdsDTEMISSAOValidate(Sender: TField);
begin
  if ordproducao.tpordproducao.bodtentrega <> _s then
  begin
    cdsDTENTREGA.AsDateTime := Sender.AsDateTime;
  end;
  if ordproducao.tpordproducao.bodtprevisao <> _s then
  begin
    cdsDTPRVENTREGA.AsDateTime := Sender.AsDateTime;
  end;
end;

procedure Tfrmordproducao.tbvitordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoacabadoExecute(actabrirprodutoacabado)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitadomateriaprima then
  begin
    actabrirprodutomateriaprimaacabadoExecute(actabrirprodutomateriaprimaacabado);
  end;
end;

procedure Tfrmordproducao.actabrirprodutoacabadoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitordproducao);
end;

procedure Tfrmordproducao.cdsitordproducaoAfterScroll(DataSet: TDataSet);
begin
  nuloteanterior     := cdsitordproducaoNULOTE.AsString;
  cddigitadoanterior := cdsitordproducaoCDDIGITADO.AsString;
end;

procedure Tfrmordproducao.cdsitordproducaoAfterPost(DataSet: TDataSet);
begin
  if (ordproducao.tpordproducao.boprodutoaddqtproducaoqtconsumo = _s) and (cdsitordproducaomaterial.RecordCount = 1) then
  begin
    if (cdsitordproducaomaterial.State <> dsedit) and (cdsitordproducaomaterial.State <> dsinsert) then
    begin
      cdsitordproducaomaterial.Edit;
    end;
    cdsitordproducaomaterialQTCONSUMO.AsFloat := cdsitordproducao.Aggregates.Items[0].Value;
  end;
end;

procedure Tfrmordproducao.calcular_horimetro(Sender: TField);
var
  mninicial, mnfinal, hrinicial, hrfinal: Integer;
begin
  if (cdsapontamentoNUHORIMETROINICIAL.AsString = '') or (cdsapontamentoNUHORIMETROFINAL.AsString = '') then
  begin
    cdsapontamentoHRINICIALHORIMETRO.Clear;
    cdsapontamentoHRFINALHORIMETRO.Clear;
    cdsapontamentoHRDURACAOHORIMETRO.Clear;
    cdsapontamentoQTDURACAOHORIMETRO.Clear;
    cdsapontamentoHROCIOSA.Clear;
    cdsapontamentoQTOCIOSA.Clear;
    Exit;
  end;
  if cdsapontamentoNUHORIMETROFINAL.AsInteger < cdsapontamentoNUHORIMETROINICIAL.AsInteger then
  begin
    MessageDlg('Horímetro Final não pode ser menor do que horímetro inicial', mtInformation, [mbOK], 0);
    Abort;
  end;
  hrinicial := cdsapontamentoNUHORIMETROINICIAL.AsInteger div 100;
  hrfinal   := cdsapontamentoNUHORIMETROFINAL.AsInteger div 100;
  mninicial := Trunc((cdsapontamentoNUHORIMETROINICIAL.AsInteger - (hrinicial * 100)) / 100 * 60);
  mnfinal   := Trunc((cdsapontamentoNUHORIMETROFINAL.AsInteger - (hrfinal * 100)) /100 * 60);
  cdsapontamentoHRINICIALHORIMETRO.AsDateTime := StrToDateTime('30/12/1899 00:01:00') * ((hrinicial * 60) + mninicial);
  cdsapontamentoHRFINALHORIMETRO.AsDateTime   := StrToDateTime('30/12/1899 00:01:00') * ((hrfinal * 60) + mnfinal);
  cdsapontamentoHRDURACAOHORIMETRO.AsDateTime := cdsapontamentoHRFINALHORIMETRO.AsDateTime - cdsapontamentoHRINICIALHORIMETRO.AsDateTime;
  cdsapontamentoQTDURACAOHORIMETRO.AsFloat    := HourOf(cdsapontamentoHRDURACAOHORIMETRO.AsDateTime) + MinuteOf(cdsapontamentoHRDURACAOHORIMETRO.AsDateTime) / 60;
  cdsapontamentoHROCIOSA.AsDateTime := cdsapontamentoHRDURACAO.AsDateTime - cdsapontamentoHRDURACAOHORIMETRO.AsDateTime;
  cdsapontamentoQTOCIOSA.AsFloat    := HourOf(cdsapontamentoHROCIOSA.AsDateTime) + MinuteOf(cdsapontamentoHROCIOSA.AsDateTime) / 60;
end;

procedure Tfrmordproducao.calcular_duracao(Sender: TField);
begin
  cdsapontamentoHRDURACAO.AsDateTime := cdsapontamentoHRFIM.AsDateTime - cdsapontamentoHRINICIO.AsDateTime;
  cdsapontamentoQTDURACAO.AsFloat    := HourOf(cdsapontamentoHRDURACAO.AsDateTime) + MinuteOf(cdsapontamentoHRDURACAO.AsDateTime) / 60;
  calcular_horimetro(Sender);
end;

procedure Tfrmordproducao.exibir_total_horas_rodape(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: String);
begin
  if VarIsNull(avalue) then
  begin
    AText := '';
    Exit;
  end;
  atext := get_total_hora_minuto(AValue);
  if Atext = '0:0' then
  begin
    atext := '';
  end;
end;

procedure Tfrmordproducao.cbxcdformulacaoEnter(Sender: TObject);
begin
  abrir_tabela(_formulacao);
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmordproducao.cdsCDFORMULACAOValidate(Sender: TField);
var
  q : TClasseQuery;
begin
  cdsitordproducaomaterial.DisableControls;
  q := TClasseQuery.create;
  cdsCDFORMULACAO.OnValidate := nil;
  try
    if sender.AsString <> '' then
    begin
      sender.DataSet.FieldByName(_nurevisao).AsString := QRegistro.StringdoCodigo(_formulacao, sender.asinteger, _nurevisao);
    end;
    cdsitordproducaomaterial.First;
    while not cdsitordproducaomaterial.Eof do
    begin
      cdsitordproducaomaterial.Delete;
    end;
    q.q.SQL.Text := QRetornaSQL.get_select_from(_itformulacao, Sender.AsString, _cdformulacao)+' order by nusequencia';
    q.q.Open;
    while not q.q.Eof do
    begin
      cdsitordproducaomaterial.Append;
      cdsitordproducaomaterial.FieldByName(_cddigitado).AsString := q.q.fieldbyname(_cddigitado).AsString;
      cdsitordproducaomaterial.FieldByName(_qtitem).AsFloat      := q.q.fieldbyname(_qtitem).AsFloat;
      cdsitordproducaomaterial.Post;
      q.q.Next;
    end;
  finally
    q.Free;
    cdsCDFORMULACAO.OnValidate := cdsCDFORMULACAOValidate;
    cdsitordproducaomaterial.EnableControls;
  end;
end;

procedure Tfrmordproducao.cdsNUMISTURAValidate(Sender: TField);
begin
  cdsitordproducaomaterial.DisableControls;
  try
    cdsitordproducaomaterial.First;
    while not cdsitordproducaomaterial.Eof do
    begin
      cdsitordproducaomaterial.Edit;
      cdsitordproducaomaterialQTCONSUMO.AsFloat := cdsitordproducaomaterialQTITEM.AsFloat * cdsNUMISTURA.AsInteger;
      cdsitordproducaomaterial.Post;
      cdsitordproducaomaterial.Next;
    end;
  finally
    cdsitordproducaomaterial.EnableControls;
  end;
end;

procedure Tfrmordproducao.tbvmaterialCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  qtitem, qtestoque : Double;
  Column, Column2 : TcxGridDBBandedColumn;
begin
  if ordproducao.tpordproducao.bomaterialqtestoque <> _s then
  begin
    Exit;
  end;
  Column  := tbvmaterialQTESTOQUE;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] = '' then
  begin
    Exit;
  end;
  Column2 := tbvmaterialQTITEM;
  if AViewInfo.GridRecord.DisplayTexts[Column2.Index] = '' then
  begin
    Exit;
  end;
  qtestoque := StrToFloat(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  qtitem    := StrToFloat(AViewInfo.GridRecord.DisplayTexts[Column2.Index]);
  if qtitem > qtestoque then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure Tfrmordproducao.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmordproducao.setRequisicaoProducao;
begin
  lblcdrequisicaoproducao.Visible := empresa.producao.requisicaoproducao.bo;
  txtcdrequisicaoproducao.Visible := empresa.producao.requisicaoproducao.bo;
end;

procedure Tfrmordproducao.setAbrirTabela;
begin
  cbxcdformulacao.Properties.ListSource                                                  := abrir_tabela(_formulacao);
  cbxcdtpequipamento.Properties.ListSource                                               := abrir_tabela(_tpequipamento);
  cbxcdequipamento.Properties.ListSource                                                 := abrir_tabela(_equipamento);
  cbxcdequipamento2.Properties.ListSource                                                := abrir_tabela(_equipamento);
  cbxcdstordproducao.Properties.ListSource                                               := abrir_tabela(_stordproducao);
  cbxcdtpordproducao.Properties.ListSource                                               := abrir_tabela(_tpordproducao);
  cbxcdtpmotivorevisao.Properties.ListSource                                             := abrir_tabela(_tpmotivorevisao);
  cbxcdfuncionario.Properties.ListSource                                                 := abrir_tabela(_funcionario);
  cbxcdfuncionariosolicitante.Properties.ListSource                                      := abrir_tabela(_funcionario);
  cbxcdmunicipio.Properties.ListSource                                                   := abrir_tabela(_municipio);
  TcxLookupComboBoxProperties(tbvapontamentoCDFUNCIONARIO.Properties).ListSource         := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvrecursoCDTPEQUIPAMENTO.Properties).ListSource           := abrir_tabela(_tpequipamento);
  TcxLookupComboBoxProperties(tbvrecursoCDSTITORDPRODUCAORECURSO.Properties).ListSource  := abrir_tabela(_stitordproducaorecurso);
  TcxLookupComboBoxProperties(tbvapontamentoCDTPHORAEXTRA.Properties).ListSource         := abrir_tabela(_tphoraextra);
  TcxLookupComboBoxProperties(tbvapontamentoCDSTAPONTAMENTO.Properties).ListSource       := abrir_tabela(_stAPONTAMENTO);
  TcxLookupComboBoxProperties(tbvapontamentoCDTPPARADA.Properties).ListSource            := abrir_tabela(_tpparada);
  TcxLookupComboBoxProperties(tbvhstordproducaoCDSTORDPRODUCAO.Properties).ListSource    := abrir_tabela(_stordproducao);
  TcxLookupComboBoxProperties(tbvhstordproducaoCDusuarioi.Properties).ListSource         := abrir_tabela(_usuario);
  TcxLookupComboBoxProperties(tbvmaterialCDFORMULACAO.Properties).ListSource             := abrir_tabela(_formulacao);
  TcxLookupComboBoxProperties(tbvrecursoCDFORMULACAO.Properties).ListSource              := abrir_tabela(_formulacao);
  TcxLookupComboBoxProperties(tbvmaterialCDTPEQUIPAMENTO.Properties).ListSource          := abrir_tabela(_TPEQUIPAMENTO);
  TcxLookupComboBoxProperties(tbvrecursoCDTPDURACAO.Properties).ListSource               := abrir_tabela(_tpduracao);
  TcxLookupComboBoxProperties(tbvrecursoCDTPDURACAOLIBERACAO.Properties).ListSource      := abrir_tabela(_tpduracao);
  TcxLookupComboBoxProperties(tbvapontamentoCDEQUIPAMENTO.Properties).ListSource         := abrir_tabela(_equipamento);
  TcxLookupComboBoxProperties(tbvitordproducaoCDSTITORDPRODUCAO.Properties).ListSource   := abrir_tabela(_stitordproducao);
end;

procedure Tfrmordproducao.setTabsheetQtRegistro;
begin
  tbsmaterial.Caption := '&Matéria-Prima';
  if cdsitordproducaomaterial.RecordCount > 0 then
  begin
    tbsmaterial.Caption := tbsmaterial.Caption + ' ('+inttostr(cdsitordproducaomaterial.RecordCount)+')';
  end;

  tbsrecurso.Caption := 'R&ecurso';
  if cdsitordproducaorecurso.RecordCount > 0 then
  begin
    tbsrecurso.Caption := tbsrecurso.Caption + ' ('+inttostr(cdsitordproducaorecurso.RecordCount)+')';
  end;

  tbscusto.Caption := '&Serviço Terceirizado';
  if cdsitordproducaocusto.RecordCount > 0 then
  begin
    tbscusto.Caption := tbscusto.Caption + ' ('+inttostr(cdsitordproducaocusto.RecordCount)+')';
  end;

  tbsapontamento.Caption := '&Apontamento';
  if cdsapontamento.RecordCount > 0 then
  begin
    tbsapontamento.Caption := tbsapontamento.Caption + ' ('+inttostr(cdsapontamento.RecordCount)+')';
  end;

  tbshstordproducao.Caption := '&Histórico Status';
  if cdshstordproducao.RecordCount > 0 then
  begin
    tbshstordproducao.Caption := tbshstordproducao.Caption + ' ('+inttostr(cdshstordproducao.RecordCount)+')';
  end;
end;

procedure Tfrmordproducao.setRecordOutros;
begin
  tbsoutros.TabVisible         := ordproducao.tpordproducao.booutros = _s;
  lbltpmotivorevisao.Visible   := ordproducao.tpordproducao.botpmotivorevisao = _s;
  cbxcdtpmotivorevisao.Visible := ordproducao.tpordproducao.botpmotivorevisao = _s;
  lblCDEQUIPAMENTO.Visible     := ordproducao.tpordproducao.boequipamento = _s;
  cbxcdequipamento.Visible     := ordproducao.tpordproducao.boequipamento = _s;
  lblcdmunicipio.Visible       := ordproducao.tpordproducao.bomunicipio = _s;
  cbxcdmunicipio.Visible       := ordproducao.tpordproducao.bomunicipio = _s;
  lbldtprvinstalacao.Visible   := ordproducao.tpordproducao.boprvinstalacao = _s;
  edtdtprvinstalacao.Visible   := ordproducao.tpordproducao.boprvinstalacao = _s;
end;

procedure Tfrmordproducao.actabrirequipamento1Execute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.lblCDEQUIPAMENTODblClick(Sender: TObject);
begin
  actabrirequipamento1Execute(actabrirequipamento1);
end;

procedure Tfrmordproducao.lblcdfuncionarioDblClick(Sender: TObject);
begin
  actabrirfuncionario1Execute(actabrirfuncionario1);
end;

procedure Tfrmordproducao.actabrirfuncionario1Execute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.tbvitordproducaoCDDIGITADOMATERIAPRIMAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_ordproducao, cdsitordproducao, False, _materia+_prima);
end;

procedure Tfrmordproducao.setSqldataset;
begin
  sds.CommandText := makesqlordproducao;
  sds.Params[0].DataType  := ftFMTBcd;
  sds.Params[0].Name      := UpperCase(_cdempresa);
  sds.Params[0].ParamType := ptInput;
  sds.Params[0].Size      := 34;
  sds.Params[1].DataType  := ftInteger;
  sds.Params[1].Name      := UpperCase(_cdordproducao);
  sds.Params[1].ParamType := ptInput;
  sds.Params[1].Size      := 4;

  sdsitordproducao.CommandText := makesqlitordproducao;
  sdsitordproducao.Params[0].DataType  := ftFMTBcd;
  sdsitordproducao.Params[0].Name      := UpperCase(_cdempresa);
  sdsitordproducao.Params[0].ParamType := ptInput;
  sdsitordproducao.Params[0].Size      := 34;
  sdsitordproducao.Params[1].DataType  := ftInteger;
  sdsitordproducao.Params[1].Name      := UpperCase(_cdordproducao);
  sdsitordproducao.Params[1].ParamType := ptInput;
  sdsitordproducao.Params[1].Size      := 4;

  sdsapontamento.CommandText := makesqlapontamento;
  sdsapontamento.Params[0].DataType  := ftFMTBcd;
  sdsapontamento.Params[0].Name      := UpperCase(_cdempresa);
  sdsapontamento.Params[0].ParamType := ptInput;
  sdsapontamento.Params[0].Size      := 34;
  sdsapontamento.Params[1].DataType  := ftInteger;
  sdsapontamento.Params[1].Name      := UpperCase(_cdordproducao);
  sdsapontamento.Params[1].ParamType := ptInput;
  sdsapontamento.Params[1].Size      := 4;
end;

function Tfrmordproducao.makesqlitordproducao: string;
begin
  result := 'SELECT I.*'+
                  ',U.NMUNIDADE'+
                  ',M.NMPRODUTO NMPRODUTOMATERIAPRIMA'+
                  ',P.NMPRODUTO'+
                  ',P.NUCLFISCAL '+
            'FROM ITORDPRODUCAO I '+
            'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND I.CDEMPRESA=P.CDEMPRESA '+
            'LEFT JOIN PRODUTO M ON M.CDPRODUTO=I.CDPRODUTOMATERIAPRIMA AND M.CDEMPRESA=I.CDEMPRESA '+
            'LEFT JOIN UNIDADE U ON U.CDUNIDADE=P.CDUNIDADE AND U.CDEMPRESA=P.CDEMPRESA '+
            'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDORDPRODUCAO=:CDORDPRODUCAO';
end;

procedure Tfrmordproducao.cdsitordproducaoCDDIGITADOMATERIAPRIMAValidate(Sender: TField);
  procedure clear_fields;
  begin
    cdsitordproducaoCDPRODUTOMATERIAPRIMA.clear;
    cdsitordproducaoNMPRODUTOMATERIAPRIMA.clear;
  end;
var
  produto : TProduto;
begin
  if Sender.AsString = '' then
  begin
    clear_fields;
    Exit;
  end;
  produto := tproduto.create;
  try
    produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
    if produto.cdproduto = 0 then
    begin
      Abort;
    end;
    produto.Select(produto.cdproduto);
    produto.CheckDados;
    if (produto.cdproduto <> 0) and (cdsitordproducaoCDPRODUTOMATERIAPRIMA.AsInteger <> produto.cdproduto) then
    begin
      cdsitordproducaoCDPRODUTOMATERIAPRIMA.AsInteger := produto.cdproduto;
    end;
    cdsitordproducaoNMPRODUTOMATERIAPRIMA.asstring  := produto.nmproduto;
    if ordproducao.tpordproducao.boprodutocopiarmateriaprima = _s then
    begin
      cdsitordproducaoCDDIGITADO.AsString := Sender.AsString;
    end;
  finally
    FreeAndNil(produto);
  end;
end;

procedure Tfrmordproducao.atualizarApontamentoProdutoacabado;
begin
  if ordproducao.tpordproducao.boapontamentoprodutoacabado <> _s then
  begin
    Exit;
  end;
  if ordproducao.tpordproducao.booutros <> _s then
  begin
    MessageDlg('Para gerar apontamento do produto acabado a propriedade "Outros" deve estar ativada no tipo de ordem de produção.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if cbxcdfuncionario.Text = '' then
  begin
    MessageDlg('Funcionário é um campo obrigatório.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsoutros;
    cbxcdfuncionario.SetFocus;
    Abort;
  end;
  if not horaPreenchida then
  begin
    MessageDlg('Horário é um campo obrigatório no produto acabado.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsitproducao;
    Abort;
  end;
  atualizarApontamento;
end;

function Tfrmordproducao.horaPreenchida: boolean;
begin
  result := True;
  cdsitordproducao.First;
  while not cdsitordproducao.Eof do
  begin
    if cdsitordproducaoHRINICIO.IsNull or cdsitordproducaoHRFIM.IsNull then
    begin
      result := False;
      Break;
    end;
    cdsitordproducao.Next;
  end;
  cdsitordproducao.First;
end;

procedure Tfrmordproducao.atualizarApontamento;
begin
  while not cdsapontamento.Eof do
  begin
    cdsapontamento.Delete;
  end;
  while not cdsitordproducao.Eof do
  begin
    cdsapontamento.Insert;
    cdsapontamentoCDFUNCIONARIO.AsString := cbxcdfuncionario.EditValue;
    if not VarIsNull(cbxcdequipamento.EditValue) then
    begin
      cdsapontamentoCDEQUIPAMENTO.AsString := cbxcdequipamento.EditValue;
    end;
    cdsapontamentoHRINICIO.AsDateTime  := cdsitordproducaoHRINICIO.AsDateTime;
    cdsapontamentoHRFIM.AsDateTime     := cdsitordproducaoHRFIM.AsDateTime;
    cdsapontamentoDTEMISSAO.AsDateTime := cdsDTEMISSAO.AsDateTime;
    cdsapontamento.Post;
    cdsitordproducao.Next;
  end;
end;

function Tfrmordproducao.makesqlordproducao: string;
begin
  result := 'SELECT O.*'+
                  ',S.NMSTORDPRODUCAO'+
                  ',P.NUPEDIDO'+
                  ',P.CDPEDIDO'+
                  ',C.NMCLIENTE'+
                  ',C.CDCLIENTE'+
                  ',I.NUCOTACAO'+
                  ',I.NUITEM'+
                  ',IR.CDREQUISICAOPRODUCAO'+
                  ',PR.NMPRODUTO'+
                  ',pr.dsproduto'+
                  ',PRODUTO.NMPRODUTO NMPRODUTOPRINCIPAL'+
                  ',U.NMUNIDADE '+
            'FROM ORDPRODUCAO O '+
            'LEFT JOIN STORDPRODUCAO S ON S.CDSTORDPRODUCAO=O.CDSTORDPRODUCAO '+
            'LEFT JOIN ITREQUISICAOPRODUCAO IR ON IR.CDEMPRESA=O.CDEMPRESA AND IR.CDITREQUISICAOPRODUCAO=O.CDITREQUISICAOPRODUCAO '+
            'LEFT JOIN ITPEDIDO I ON I.CDITPEDIDO=O.CDITPEDIDO AND I.CDEMPRESA=O.CDEMPRESA '+
            'LEFT JOIN PEDIDO P ON P.CDPEDIDO=I.CDPEDIDO AND P.CDEMPRESA=I.CDEMPRESA '+
            'LEFT JOIN CLIENTE C ON C.CDCLIENTE=P.CDCLIENTE AND C.CDEMPRESA=P.CDEMPRESA '+
            'LEFT JOIN PRODUTO PR ON PR.CDPRODUTO=O.CDPRODUTO AND PR.CDEMPRESA=O.CDEMPRESA '+
            'LEFT JOIN UNIDADE U ON U.CDUNIDADE=PR.CDUNIDADE AND U.CDEMPRESA=PR.CDEMPRESA '+
            'LEFT JOIN ORCAMENTO ON ORCAMENTO.CDEMPRESA=O.CDEMPRESA AND ORCAMENTO.CDORCAMENTO=O.CDORCAMENTO '+
            'LEFT JOIN PRODUTO ON PRODUTO.CDEMPRESA=ORCAMENTO.CDEMPRESA AND PRODUTO.CDPRODUTO=ORCAMENTO.CDPRODUTO '+
            'WHERE O.CDEMPRESA=:CDEMPRESA AND O.CDORDPRODUCAO=:CDORDPRODUCAO';
end;

procedure Tfrmordproducao.actabrirrequisicaoproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.txtCDREQUISICAOPRODUCAODblClick(Sender: TObject);
begin
  actabrirrequisicaoproducaoExecute(actabrirrequisicaoproducao);
end;

procedure Tfrmordproducao.edtnuentradaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  codigo := Localizarentrada;
  if codigo <> 0 then
  begin
    cdsCDENTRADA.AsInteger := codigo;
    cdsNUENTRADA.AsString := qregistro.StringdoCodigo(_entrada, codigo, _nuentrada);
  end;
end;

procedure Tfrmordproducao.edtnuentradaKeyPress(Sender: TObject; var Key: Char);
var
  codigo : integer;
  entrada : TEntrada;
begin
  TQForm.KeyPressControl(key);
  if not ((key = #13) and (edtnuentrada.text <> '')) then
  begin
    exit;
  end;
  entrada := TEntrada.create;
  try
    codigo := entrada.codigonotaFiscal(edtnuentrada.text);
    if codigo = -1 then
    begin
      edtcodigo.clear;
      Exit;
    end;
    if not qregistro.CodigoExiste(_entrada, codigo) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnuentrada.text, maiuscula(exibe)]), mterror, [mbok], 0);
      edtnuentrada.selectall;
      edtnuentrada.SetFocus;
      Abort;
    end;
    cdsCDENTRADA.asinteger := codigo;
  finally
    freeandnil(entrada);
  end;
end;

procedure Tfrmordproducao.actabrirentradaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.lblnuentradaDblClick(Sender: TObject);
begin
  actabrirentradaExecute(actabrirentrada);
end;

function Tfrmordproducao.makesqlapontamento: string;
begin
  result := 'SELECT A.*,T.NMTPEQUIPAMENTO '+
            'FROM APONTAMENTO A '+
            'LEFT JOIN EQUIPAMENTO E ON E.CDEMPRESA=A.CDEMPRESA AND E.CDEQUIPAMENTO=A.CDEQUIPAMENTO '+
            'LEFT JOIN ITORDPRODUCAORECURSO R ON R.CDEMPRESA=A.CDEMPRESA AND R.CDITORDPRODUCAORECURSO=A.CDITORDPRODUCAORECURSO '+
            'LEFT JOIN TPEQUIPAMENTO T ON T.CDEMPRESA=R.CDEMPRESA AND T.CDTPEQUIPAMENTO=R.CDTPEQUIPAMENTO '+
            'WHERE A.CDEMPRESA=:CDEMPRESA AND A.CDORDPRODUCAO=:CDORDPRODUCAO '+
            'ORDER BY A.CDAPONTAMENTO';
end;

procedure Tfrmordproducao.actabrirprodutomateriaprimaacabadoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitordproducao, _cdprodutomateriaprima, true);
end;

procedure Tfrmordproducao.actpesagemExecute(Sender: TObject);
begin
  if dlgordproducaopesagem then
  begin
    dlgordproducaopesagem;
  end;
end;

procedure Tfrmordproducao.lblcdformulacaoDblClick(Sender: TObject);
begin
  actabrirformulacaoExecute(actabrirformulacao);
end;

procedure Tfrmordproducao.actabrirformulacaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmordproducao.actapontamentoExecute(Sender: TObject);
begin
  //dlgordproducaoapontamento;
end;

procedure Tfrmordproducao.cdsitordproducaomaterialQTITEM2Validate(Sender: TField);
var
  produto : TProduto;
begin
  if cdsitordproducaomaterialPRUNIDADE.AsFloat <= 0 then
  begin
    Exit;
  end;
  cdsitordproducaomaterialQTITEM.OnValidate := nil;
  produto := tproduto.create;
  try
    produto.Select(cdsitordproducaomaterialCDPRODUTO.AsInteger);
    cdsitordproducaomaterialQTITEM.AsFloat := produto.calcularqtitem(cdsitordproducaomaterialQTITEM2.AsFloat, cdsitordproducaomaterialPRUNIDADE.AsFloat);
  finally
    FreeAndNil(produto);
  end;
  cdsitordproducaomaterialQTITEM.OnValidate := cdsitordproducaomaterialQTITEMValidate;
end;

procedure Tfrmordproducao.setUnidade2;
begin
  tbvmaterialQTITEM2.Options.Focusing := cdsitordproducaomaterialPRUNIDADE.AsFloat > 0;
end;

procedure Tfrmordproducao.cdsitordproducaomaterialAfterScroll(DataSet: TDataSet);
begin
  setUnidade2;
end;

procedure Tfrmordproducao.setRecordProdutoBuscarEstoque;
begin
  if ordproducao.tpordproducao.boprodutobuscarestoque <> _s then
  begin
    Exit;
  end;
  edtqtitem.Enabled         := False;
  edtqtproducao.Enabled     := False;
  edtqtpeca.Enabled         := False;
  edtqtpecaproducao.Enabled := False;
end;

procedure Tfrmordproducao.cdsitordproducaoQTLARGURAValidate(Sender: TField);
var
  produto : TProduto;
begin
  if sender.AsFloat < 0 then
  begin
    MessageDlg('Campo não pode ser negativo.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    abort;
  end;
  if ordproducao.tpordproducao.boprodutocopiardimensional <> _s then
  begin
    Exit;
  end;
  produto := TProduto.create;
  try
    produto.qtlargura     := sender.DataSet.fieldbyname(_qtlargura).AsFloat;
    produto.qtespessura   := sender.DataSet.fieldbyname(_qtespessura).AsFloat;
    produto.qtcomprimento := sender.DataSet.fieldbyname(_qtcomprimento).AsFloat;
    produto.cdmaterial    := ordproducao.produto.cdmaterial;
    produto.cdforma       := ordproducao.produto.cdforma;
    produto.forma.Select(produto.cdforma);
    Sender.DataSet.FieldByName(_qtitem).AsFloat := produto.PesoTeorico;
  finally
    FreeAndNil(produto);
  end;
end;

procedure Tfrmordproducao.actgerarcorteExecute(Sender: TObject);
begin
  if not ((cds.State = dsbrowse) and (cds.recordcount = 1)) then
  begin
    Exit;
  end;
  if ordproducao.GerarCorte then
  begin
    MessageDlg('Corte realizado.', mtInformation, [mbOK], 0);
    Abrir(cdsCDORDPRODUCAO.asinteger);
  end;
end;

procedure Tfrmordproducao.lblcdorcamentoDblClick(Sender: TObject);
begin
  actabrirorcamentoExecute(actabrirorcamento);
end;

procedure Tfrmordproducao.edtcdorcamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  codigo := LocalizarOrcamento;
  if codigo = 0 then
  begin
    Exit;
  end;
  cds.FieldByName(_cdorcamento).AsInteger := codigo;
end;

procedure Tfrmordproducao.cdsCDORCAMENTOValidate(Sender: TField);
var
  orcamento : TOrcamento;
begin
  orcamento := torcamento.create;
  try
    orcamento.Select(Sender.AsInteger);
    cdscdproduto.AsInteger := orcamento.cdproduto;
    cdscddigitado.asstring := orcamento.cddigitado;
    cdsNMCLIENTE.AsString  := qregistro.nomedocodigo(_cliente, orcamento.cdcliente);
  finally
    FreeAndNil(orcamento);
  end;
end;

procedure Tfrmordproducao.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(tbl, cds.fieldbyname(_cdordproducao).AsString);
end;

procedure Tfrmordproducao.actGerarCotacaoExecute(Sender: TObject);
var
  cdpedidomaterial : Integer;
begin
  cdpedidomaterial := ordproducao.GerarCotacao(cds.FieldByName(_cdordproducao).AsInteger);
  if cdpedidomaterial > 0 then
  begin
    MessageDlg('Cotação '+inttostr(cdpedidomaterial)+' gerada.', mtInformation, [mbOK], 0);
  end
  else if cdpedidomaterial = 0 then
  begin
    MessageDlg('Cotação já foi gerada.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmordproducao.actconsultamovtoExecute(Sender: TObject);
begin
  setQuery(_movto);
end;

procedure Tfrmordproducao.tbvmovtoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdmovto then
  begin
    actabrirmovtoExecute(actabrirmovto)
  end
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado then
  begin
    actabrirprodutoitmovtoExecute(actabrirprodutoitmovto);
  end;
end;

procedure Tfrmordproducao.actabrirmovtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, qconsulta.q);
end;

procedure Tfrmordproducao.actabrirprodutoitmovtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, qconsulta.q);
end;

procedure Tfrmordproducao.tbvrecursoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitordproducaorecurso, key);
end;

procedure Tfrmordproducao.tbvitordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitordproducao, key);
end;

procedure Tfrmordproducao.tbvmaterialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitordproducaomaterial, key);
end;

procedure Tfrmordproducao.tbvcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitordproducaocusto, key);
end;

procedure Tfrmordproducao.actGerarEntradaProdutoAcabadoExecute(Sender: TObject);
var
  data : TDate;
begin
  if dlgDataBalanco(data) and ordproducao.GerarEntradaEstoqueProdutoOP(data) then
  begin
    MessageDlg('Entrada de Estoque de Produto realizado.', mtInformation, [mbOK], 0);
    Abrir(cdsCDORDPRODUCAO.asinteger);
  end;
end;

procedure Tfrmordproducao.actgerarbaixaMateriaPrimaExecute(Sender: TObject);
begin
  if ordproducao.GerarMovtoItordproducaoMaterial then
  begin
    MessageDlg('Baixa de estoque de matéria-prima realizada.', mtInformation, [mbOK], 0);
    Abrir(cdsCDORDPRODUCAO.asinteger);
  end;
end;

procedure Tfrmordproducao.actgerarestoqueprodutoacabadoExecute(Sender: TObject);
begin
  if ordproducao.GerarMovtoItordproducao then
  begin
    messagedlg('Movimentação de estoque processada.', mtinformation, [mbok], 0);
    abrir(cds.FieldByName(_cdordproducao).asinteger);
  end;
end;

procedure Tfrmordproducao.actgerarmaterialmetodoprocessoExecute(Sender: TObject);
begin
  ordproducao.ItOrdProducaoMaterial.excluir;
  ordproducao.GerarMaterialdoProduto;
  Abrir(cdsCDORDPRODUCAO.asinteger);
end;

end.
