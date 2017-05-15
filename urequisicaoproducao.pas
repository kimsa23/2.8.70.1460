unit urequisicaoproducao;

interface

uses
  System.Actions, System.UITypes,
  forms, ComCtrls, ToolWin, ExtCtrls, Mask, Controls, Buttons, sysutils, windows, Dialogs,
  Graphics, StdCtrls, Classes, ActnList, Menus,
  FMTBcd, DBCtrls, DB, DBClient, Provider, sqlexpr, Grids,
  urotinas, udatahora, ustrings, ulocalizarproduto, uExportarExcel,
  ulocalizarFuncionario, ulocalizarFornecedor, uconstantes, ulocalizar,
  uregistro, unovoproduto,
  classeordproducao, classeRegistro, classegerar, classeconsiste, classeregistrainformacao,
  classeproduto, classeform, classeretornasql, classecondpagto, classeusuario, classequery,
  classefornecedor, classeempresa, classeaplicacao, classerequisicaoproducao,
  classeorcamento,
  cxLookAndFeelPainters, cxTextEdit, cxMemo, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxPC, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxDBEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxButtonEdit, cxCalc, cxCurrencyEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxDBLabel, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSplitter, cxRichEdit, cxCheckBox, cxPCdxBarPopupMenu,
  cxNavigator, dxBarBuiltInMenu, cxBlobEdit;

type
  Tfrmrequisicaoproducao = class(TForm)
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
    actAbrirProduto: TAction;
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
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    dtsdetail: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    edtcodigo: TcxTextEdit;
    cdsdetailCDDIGITADO: TStringField;
    edtdtemissao: TcxDBDateEdit;
    lbltprequisicaoproducao: TLabel;
    cdsCDTPREQUISICAOPRODUCAO: TIntegerField;
    cdssdsdetail: TDataSetField;
    cbxcdtprequisicaoproducao: TcxDBLookupComboBox;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    mem1: TcxDBMemo;
    grd: TcxGrid;
    grlLevel1: TcxGridLevel;
    btnimprimir: TdxBarLargeButton;
    sdsCDREQUISICAOPRODUCAO: TIntegerField;
    sdsCDSTREQUISICAOPRODUCAO: TIntegerField;
    sdsCDTPREQUISICAOPRODUCAO: TIntegerField;
    sdsCDFUNCIONARIO: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsDSOBSERVACAO: TBlobField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNMSTREQUISICAOPRODUCAO: TStringField;
    cdsCDREQUISICAOPRODUCAO: TIntegerField;
    cdsCDSTREQUISICAOPRODUCAO: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsDSOBSERVACAO: TBlobField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNMSTREQUISICAOPRODUCAO: TStringField;
    sdsdetailCDREQUISICAOPRODUCAO: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailQTITEM: TFloatField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailCDITREQUISICAOPRODUCAO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailCDREQUISICAOPRODUCAO: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailQTITEM: TFloatField;
    cdsdetailCDITREQUISICAOPRODUCAO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    tbv: TcxGridDBTableView;
    tbvCDDIGITADO: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    cbxcdfuncionario: TcxDBLookupComboBox;
    Label18: TLabel;
    sdsdetailNMPRODUTO: TStringField;
    cdsdetailNMPRODUTO: TStringField;
    sdsdetailNMUNIDADE: TStringField;
    cdsdetailNMUNIDADE: TStringField;
    tbvNMUNIDADE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pumimprimir: TdxBarPopupMenu;
    sdsDTPRVENTREGA: TDateField;
    cdsDTPRVENTREGA: TDateField;
    edtdtprventrega: TcxDBDateEdit;
    lbldtprevista: TLabel;
    lblstrequisicaoproducao: TLabel;
    cbxcdstrequisicaoproducao: TcxDBLookupComboBox;
    tbvDSOBSERVACAO: TcxGridDBColumn;
    sdsdetailQTPRODUCAO: TFloatField;
    cdsdetailQTPRODUCAO: TFloatField;
    sdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailDSOBSERVACAO: TBlobField;
    dxBarLargeButton1: TdxBarLargeButton;
    actcopiar: TAction;
    sdsQTITEM: TFloatField;
    sdsQTPRODUCAO: TFloatField;
    cdsQTITEM: TFloatField;
    cdsQTPRODUCAO: TFloatField;
    sdsdetailCDITORCAMENTO: TIntegerField;
    cdsdetailCDITORCAMENTO: TIntegerField;
    sdsCDFUNCIONARIOSOLICITANTE: TIntegerField;
    cdsCDFUNCIONARIOSOLICITANTE: TIntegerField;
    lblcdfuncionariosolicitante: TLabel;
    cbxcdfuncionariosolicitante: TcxDBLookupComboBox;
    actgerarordproducao: TAction;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    actgerarordproducaotodas: TAction;
    dxBarButton2: TdxBarButton;
    sdsdetailDTPRVENTREGA: TDateField;
    cdsdetailDTPRVENTREGA: TDateField;
    tbvDTPRVENTREGA: TcxGridDBColumn;
    sdsdetailCDORCAMENTO: TIntegerField;
    cdsdetailCDORCAMENTO: TIntegerField;
    tbvCDORCAMENTO: TcxGridDBColumn;
    actabrirorcamento: TAction;
    sdsDSJUSTIFICATIVA: TBlobField;
    cdsDSJUSTIFICATIVA: TBlobField;
    acthistorico: TAction;
    dxBarButton3: TdxBarButton;
    splordproducao: TcxSplitter;
    bmg1Bar1: TdxBar;
    sdsordproducao: TSQLDataSet;
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
    cdsordproducao: TClientDataSet;
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
    dtsordproducao: TDataSource;
    dts2: TDataSource;
    cdsdetailsdsordproducao: TDataSetField;
    actabrirordproducao: TAction;
    bmg1Bar2: TdxBar;
    bdcdetail: TdxBarDockControl;
    dxBarSubItem1: TdxBarSubItem;
    actordproducao: TAction;
    actimprimirordproducao: TAction;
    btnimprimirordproducao: TdxBarButton;
    pumordproducao: TdxBarPopupMenu;
    actimprimirpesagem: TAction;
    dxBarButton5: TdxBarButton;
    sdsordproducaoCDFORMULACAO: TIntegerField;
    cdsordproducaoCDFORMULACAO: TIntegerField;
    pgcdetail: TcxPageControl;
    tbsordproducao: TcxTabSheet;
    tbsprodutosimilar: TcxTabSheet;
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
    tbvordproducaoCDFORMULACAO: TcxGridDBColumn;
    grdordproducaoLevel1: TcxGridLevel;
    bdcordproducao: TdxBarDockControl;
    grdsimilar: TcxGrid;
    tbvsimilar: TcxGridDBTableView;
    tbvsimilarCDPRODUTO: TcxGridDBColumn;
    tbvsimilarNMPRODUTO: TcxGridDBColumn;
    tbvsimilarDSPRODUTO: TcxGridDBColumn;
    tbvsimilarCDUNIDADE: TcxGridDBColumn;
    tbvsimilarQTESTOQUE: TcxGridDBColumn;
    tbvsimilarQTPEDIDO: TcxGridDBColumn;
    tbvsimilarQTDISPONIVEL: TcxGridDBColumn;
    tbvsimilarVLVENDA: TcxGridDBColumn;
    tbvsimilarNUCLFISCAL: TcxGridDBColumn;
    tbvsimilarBOATIVAR: TcxGridDBColumn;
    tbvsimilarCDTPITEM: TcxGridDBColumn;
    tbvsimilarDSDESENHO: TcxGridDBColumn;
    tbvsimilarDSTAG2: TcxGridDBColumn;
    tbvsimilarDSTAG1: TcxGridDBColumn;
    tbvsimilarCDCODFORNECEDOR: TcxGridDBColumn;
    tbvsimilarCDALTERNATIVO: TcxGridDBColumn;
    tbvsimilarNUNIVEL: TcxGridDBColumn;
    tbvsimilarNMGRUPO: TcxGridDBColumn;
    tbvsimilarVLCUSTO: TcxGridDBColumn;
    tbvsimilarVLATACADO: TcxGridDBColumn;
    tbvsimilarVLESPECIAL: TcxGridDBColumn;
    tbvsimilarCDTPPRODUTO: TcxGridDBColumn;
    tbvsimilarDSLOCALIZACAO: TcxGridDBColumn;
    tbvsimilarCDMATERIAL: TcxGridDBColumn;
    tbvsimilarCDFORMA: TcxGridDBColumn;
    tbvsimilarCDNORMA: TcxGridDBColumn;
    tbvsimilarQTESPESSURA: TcxGridDBColumn;
    tbvsimilarQTLARGURA: TcxGridDBColumn;
    tbvsimilarQTCOMPRIMENTO: TcxGridDBColumn;
    tbvsimilarDSPOLEGADA: TcxGridDBColumn;
    grdlevelsimilar: TcxGridLevel;
    actmapaproducaoproduto: TAction;
    dxBarButton4: TdxBarButton;
    dxBarButton6: TdxBarButton;
    actexcluirordproducao: TAction;
    actexcluirtodasordproducao: TAction;
    dxBarButton7: TdxBarButton;
    sdsordproducaoBOALTERAR: TStringField;
    sdsordproducaoBOEXCLUIR: TStringField;
    cdsordproducaoBOALTERAR: TStringField;
    cdsordproducaoBOEXCLUIR: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    sdsordproducaoBOIMPRESSO: TStringField;
    cdsordproducaoBOIMPRESSO: TStringField;
    tbvordproducaoBOIMPRESSO: TcxGridDBColumn;
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
    procedure actAbrirProdutoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsCDTPREQUISICAOPRODUCAOValidate(Sender: TField);
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure colorEnter(Sender: TObject);
    procedure colorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsdetailCDPRODUTOValidate(Sender: TField);
    procedure cbxcdtprequisicaoproducaoEnter(Sender: TObject);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cdsCalcFields(DataSet: TDataSet);
    procedure actImprimirExecute(Sender: TObject);
    procedure cbxcdstrequisicaoproducaoEnter(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure actgerarordproducaoExecute(Sender: TObject);
    procedure actgerarordproducaotodasExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actabrirorcamentoExecute(Sender: TObject);
    procedure cdsdetailAfterScroll(DataSet: TDataSet);
    procedure acthistoricoExecute(Sender: TObject);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure tbvordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actordproducaoExecute(Sender: TObject);
    procedure actimprimirordproducaoExecute(Sender: TObject);
    procedure actimprimirpesagemExecute(Sender: TObject);
    procedure actmapaproducaoprodutoExecute(Sender: TObject);
    procedure actexcluirordproducaoExecute(Sender: TObject);
    procedure actexcluirtodasordproducaoExecute(Sender: TObject);
    procedure cdsordproducaoAfterScroll(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qsimilar : TClasseQuery;
    dsimilar : TDataSource;
    tbl : string;
    requisicaoproducao : trequisicaoproducao;
    produto  : TProduto;
    procedure setrecord(codigo: integer);
    function  makesqlitrequisicaoproducao:string;
    procedure set_sqldataset;
    function  registrar_justificativa_mudanca_status:boolean;
    procedure set_fields_similar;
    function existeprodutorepetido(cdproduto: string): Boolean;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:Integer):boolean;
    procedure Novo_Orcamento(cdorcamento: integer; dtprevisao: TDate; cdtprequisicaoproducao: Integer; itorcamento: titorcamentolist);
  end;

var
  frmrequisicaoproducao: Tfrmrequisicaoproducao;

implementation

uses UMain,
  uDtmMain,
  uimprimirrelatoriopadrao,
  uMenuRelatorio,
  uprogressbar,
  udlgjustificativa,
  udlgtabela,
  udlgmapaproducaoproduto;

{$R *.DFM}

const
  exibe    = 'Requisição de Produção';
  artigoI  = 'a';

procedure Tfrmrequisicaoproducao.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure Tfrmrequisicaoproducao.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

function Tfrmrequisicaoproducao.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmrequisicaoproducao.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure Tfrmrequisicaoproducao.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmrequisicaoproducao.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmrequisicaoproducao.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmrequisicaoproducao.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmrequisicaoproducao.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  if edtdtemissao.enabled then
  begin
    edtdtemissao.SetFocus;
  end;
  if not cdsCDFUNCIONARIOSOLICITANTE.IsNull then
  begin
    edtdtprventrega.Enabled             := usuario.funcionario.cdfuncionario = cdsCDFUNCIONARIOSOLICITANTE.Asinteger;
    cbxcdfuncionariosolicitante.Enabled := usuario.funcionario.cdfuncionario = cdsCDFUNCIONARIOSOLICITANTE.Asinteger;
    edtdtemissao.Enabled                := usuario.funcionario.cdfuncionario = cdsCDFUNCIONARIOSOLICITANTE.Asinteger;
    cbxcdtprequisicaoproducao.Enabled   := usuario.funcionario.cdfuncionario = cdsCDFUNCIONARIOSOLICITANTE.Asinteger;;
  end;
end;

procedure Tfrmrequisicaoproducao.actSalvarExecute(Sender: TObject);
begin
  if (cdsdetail.State = dsinsert) or (cdsdetail.State = dsedit) then
  begin
    cdsdetail.Post;
  end;
  if cdsdetail.RecordCount = 0 then
  begin
    cdsQTITEM.AsFloat     := 0;
    cdsQTPRODUCAO.AsFloat := 0;
  end
  else
  begin
    cdsQTITEM.AsFloat     := cdsdetail.Aggregates[0].Value;
    cdsQTPRODUCAO.AsFloat := cdsdetail.Aggregates[1].Value;
  end;
  registrar_justificativa_mudanca_status;
  registro.Salvar;                                                                              
  abrir(cdsCDREQUISICAOPRODUCAO.asinteger);
end;

procedure Tfrmrequisicaoproducao.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure Tfrmrequisicaoproducao.FormShow(Sender: TObject);
begin
  requisicaoproducao        := TRequisicaoProducao.create;
  produto    := TProduto.create;
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmrequisicaoproducao.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmrequisicaoproducao.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmrequisicaoproducao.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure Tfrmrequisicaoproducao.actAbrirProdutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure Tfrmrequisicaoproducao.FormDestroy(Sender: TObject);
begin
  freeandnil(qsimilar);
  freeandnil(produto);
  freeandnil(registro);
  freeandnil(requisicaoproducao);
end;

procedure Tfrmrequisicaoproducao.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmrequisicaoproducao.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  actAbrirProduto.OnExecute(actAbrirProduto);
end;

procedure Tfrmrequisicaoproducao.cdsBeforePost(DataSet: TDataSet);
begin
  if cdsDTPRVENTREGA.IsNull then
  begin
    MessageDlg('Data de Previsão de entrega é um campo obrigatório.', mtInformation, [mbOK], 0);
    cdsDTPRVENTREGA.FocusControl;
    Abort;
  end;
  registro.set_update(cds);
end;

procedure Tfrmrequisicaoproducao.cdsdetailBeforePost(DataSet: TDataSet);
begin
  if cdsdetailCDDIGITADO.AsString = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_Produto]), mtinformation, [mbok], 0);
    cdsdetailCDDIGITADO.FocusControl;
    abort;
  end;
  registro.set_update(cdsdetail);
end;

procedure Tfrmrequisicaoproducao.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure Tfrmrequisicaoproducao.cdsNewRecord(DataSet: TDataSet);
begin
  requisicaoproducao.cdrequisicaoproducao := 0;
  requisicaoproducao.cdstrequisicaoproducao := 0;
  cdsCDTPREQUISICAOPRODUCAO.asinteger    := registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  cdsQTITEM.AsFloat       := 0;
  cdsQTPRODUCAO.AsFloat   := 0; 
  cdsDTEMISSAO.AsDateTime := dtbanco;
  cdsCDSTREQUISICAOPRODUCAO.AsInteger := qregistro.Codigo_status_novo(tbl);
  setrecord(cdsCDTPREQUISICAOPRODUCAO.asinteger);
end;

procedure Tfrmrequisicaoproducao.cdsCDTPREQUISICAOPRODUCAOValidate(Sender: TField);
begin
  setrecord(sender.asinteger);
  if requisicaoproducao.tprequisicaoproducao.cdfuncionario <> 0 then
  begin
    cdsCDFUNCIONARIO.AsInteger := requisicaoproducao.tprequisicaoproducao.cdfuncionario;
  end;
end;

procedure Tfrmrequisicaoproducao.cdsdetailCDDIGITADOValidate(Sender: TField);
begin
  if sender.asstring = '' then
  begin
    cdsdetailCDPRODUTO.clear;
    cdsdetailNMPRODUTO.clear;
    cdsdetailNMUNIDADE.clear;
    Exit;
  end;
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _bomovto);
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados(true);
  if (produto.cdproduto <> 0) and (cdsdetailCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsdetailCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  cdsdetailNMPRODUTO.AsString := produto.nmproduto;
  cdsdetailNMUNIDADE.AsString := qregistro.nomedocodigo(_unidade, produto.cdunidade);
end;

procedure Tfrmrequisicaoproducao.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailCDITREQUISICAOPRODUCAO.AsString := GerarCodigo(_itrequisicaoproducao);
  if not cdsDTPRVENTREGA.IsNull then
  begin
    cdsdetailDTPRVENTREGA.AsDateTime := cdsDTPRVENTREGA.AsDateTime;
  end;
  cdsdetailQTITEM.AsFloat     := 1;
  cdsdetailQTPRODUCAO.AsFloat := 0;
end;

procedure Tfrmrequisicaoproducao.cdsAfterScroll(DataSet: TDataSet);
begin
  //registro.setStatus(tbl, dataset);
  setrecord(cdsCDTPREQUISICAOPRODUCAO.asinteger);
  requisicaoproducao.Select(cds);
  requisicaoproducao.Itrequisicaoproducao.Ler(requisicaoproducao.cdrequisicaoproducao);
  requisicaoproducao.strequisicaoproducao.select(requisicaoproducao.cdstrequisicaoproducao);
  requisicaoproducao.tprequisicaoproducao.select(requisicaoproducao.cdtprequisicaoproducao);
  if requisicaoproducao.tprequisicaoproducao.cdtpordproducao <> 0 then
  begin
    actgerarordproducao.Enabled      := requisicaoproducao.strequisicaoproducao.bogerarinfo = _s;
    actgerarordproducao.Visible      := requisicaoproducao.strequisicaoproducao.bogerarinfo = _s;
    actgerarordproducaotodas.Enabled := requisicaoproducao.strequisicaoproducao.bogerarinfo = _s;
    actgerarordproducaotodas.Visible := requisicaoproducao.strequisicaoproducao.bogerarinfo = _s;
  end;
end;

procedure Tfrmrequisicaoproducao.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure Tfrmrequisicaoproducao.colorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmrequisicaoproducao.colorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmrequisicaoproducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmrequisicaoproducao.FormCreate(Sender: TObject);
begin
  qsimilar := TClasseQuery.Create;
  dsimilar := TDataSource.Create(self);
  dsimilar.DataSet := qsimilar.q;
  tbvsimilar.DataController.DataSource := dsimilar;
  set_fields_similar;
  set_sqldataset;
  tbl                                               := _requisicaoproducao;
  cbxcdtprequisicaoproducao.Properties.ListSource   := abrir_tabela(_tprequisicaoproducao);
  cbxcdstrequisicaoproducao.Properties.ListSource   := abrir_tabela(_strequisicaoproducao);
  cbxcdfuncionario.Properties.ListSource            := abrir_tabela(_funcionario);
  cbxcdfuncionariosolicitante.Properties.ListSource := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvordproducaoCDSTORDPRODUCAO.Properties).ListSource := abrir_tabela(_stordproducao);
  TcxLookupComboBoxProperties(tbvordproducaoCDTPORDPRODUCAO.Properties).ListSource := abrir_tabela(_tpordproducao);
  TcxLookupComboBoxProperties(tbvordproducaoCDFORMULACAO.Properties).ListSource    := abrir_tabela(_formulacao);
  registro                                          := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 59, cds, tbl);
end;

procedure Tfrmrequisicaoproducao.setrecord(codigo: integer);
begin
  if codigo = 0 then
  begin
    exit;
  end;
  requisicaoproducao.tprequisicaoproducao.Select(codigo);
  actgerarordproducao.Visible      := requisicaoproducao.tprequisicaoproducao.cdtpordproducao <> 0;
  actgerarordproducaotodas.Visible := requisicaoproducao.tprequisicaoproducao.cdtpordproducao <> 0;
  actordproducao.Visible           := requisicaoproducao.tprequisicaoproducao.cdtpordproducao <> 0;
  pgcdetail.Visible                := requisicaoproducao.tprequisicaoproducao.cdtpordproducao <> 0;
  splordproducao.Visible           := requisicaoproducao.tprequisicaoproducao.cdtpordproducao <> 0;
end;

procedure Tfrmrequisicaoproducao.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmrequisicaoproducao.grdDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdsdetail, false);
end;

function Tfrmrequisicaoproducao.existeprodutorepetido(cdproduto:string):Boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsdetail, false);
    c.First;
    while NOT c.Eof do
    begin
      if (c.FieldByName(_cdproduto).AsString = cdproduto) and (c.FieldByName(_cditrequisicaoproducao).AsString <> cdsdetailCDITREQUISICAOPRODUCAO.AsString) then
      begin
        result := True;
      end;
      c.Next;
    end;
  finally
    FreeAndNil(c);
  end;
end;

procedure Tfrmrequisicaoproducao.cdsdetailCDPRODUTOValidate(Sender: TField);
begin
  if existeprodutorepetido(Sender.AsString) then
  begin
    MessageDlg('Não é permitido produto repetido na Requisição de Materiais.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure Tfrmrequisicaoproducao.cbxcdtprequisicaoproducaoEnter(Sender: TObject);
begin
  colorEnter(Sender);
  abrir_tabela(_tprequisicaoproducao);
end;

procedure Tfrmrequisicaoproducao.cbxcdfuncionarioEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure Tfrmrequisicaoproducao.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado  then
  begin
    actabrirprodutoExecute(actabrirproduto)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdorcamento then
  begin
    actabrirorcamentoExecute(actabrirorcamento)
  end;
end;

procedure Tfrmrequisicaoproducao.cdsCalcFields(DataSet: TDataSet);
begin
  requisicaoproducao.cdrequisicaoproducao := cdsCDREQUISICAOPRODUCAO.asinteger;
end;

procedure Tfrmrequisicaoproducao.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmrequisicaoproducao.cbxcdstrequisicaoproducaoEnter(Sender: TObject);
begin
  colorEnter(Sender);
  abrir_tabela(_strequisicaoproducao);
end;

procedure Tfrmrequisicaoproducao.actcopiarExecute(Sender: TObject);
begin
  registro.copiar;
end;

procedure Tfrmrequisicaoproducao.Novo_Orcamento(cdorcamento: integer; dtprevisao: TDate; cdtprequisicaoproducao: Integer; itorcamento: titorcamentolist);
var
  vldesconto : Currency;
  procedure inserir_cabecalho;
  var
    q : tclassequery;
  begin
    q := TClasseQuery.create;
    try
      q.q.Open(QRetornaSQL.get_select_from(_orcamento, cdorcamento));
      cdsCDTPREQUISICAOPRODUCAO.AsInteger := cdtprequisicaoproducao;
      setrecord(cdtprequisicaoproducao);
      cdsDTEMISSAO.AsDateTime              := DtBanco;
      cdsCDFUNCIONARIOSOLICITANTE.Asinteger := usuario.funcionario.cdfuncionario;
      cdsDTPRVENTREGA.AsDateTime           := dtprevisao;
      vldesconto                           := q.q.fieldbyname(_vldesconto).AsCurrency;
      cdsDSOBSERVACAO.AsVariant            := q.q.fieldbyname(_dsobservacao).AsVariant;
    finally
      q.Free;
    end;
  end;
  procedure inserir_item;
  var
    i : Integer;
  begin
    frmprogressbar := Tfrmprogressbar.Create(nil);
    try
      frmprogressbar.gau.MaxValue := itorcamento.count;
      frmprogressbar.Show;
      for I := 0 to itorcamento.count - 1 do
      begin
        frmprogressbar.pnl.Caption  := 'Inserindo item '+inttostr(i)+' de '+inttostr(itorcamento.count);
        frmprogressbar.gau.Progress := i;
        Application.ProcessMessages;
        cdsdetail.Insert;
        cdsdetailcditorcamento.asinteger := itorcamento.items[i].cditorcamento;
        cdsdetailCDPRODUTO.AsInteger := itorcamento.items[i].cdproduto;
        cdsdetailQTITEM.AsFloat := itorcamento.items[i].qtitem;
        cdsdetailDTPRVENTREGA.AsDateTime := itorcamento.items[i].dtprventrega;
        cdsdetailCDDIGITADO.AsString := itorcamento.items[i].cddigitado;
        if itorcamento.items[i].cdprodutoembalagem <> 0 then
        begin
          cdsdetailCDDIGITADO.AsString := itorcamento.items[i].cddigitadoembalagem;
        end;
        cdsdetailDSOBSERVACAO.AsVariant := itorcamento.items[i].dsobservacao;
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
    actSalvarExecute(actSalvar);
    Abrir(cdsCDREQUISICAOPRODUCAO.asinteger);
  finally
    cds.EnableControls;
    cdsdetail.EnableControls;
  end;
end;

procedure Tfrmrequisicaoproducao.actgerarordproducaoExecute( Sender: TObject);
var
  cdordproducao : Integer;
  i : Integer;
begin
  for i := 0 to requisicaoproducao.Itrequisicaoproducao.Count - 1 do
  begin
    if cdsdetailCDITREQUISICAOPRODUCAO.AsInteger = requisicaoproducao.Itrequisicaoproducao.Items[i].cditrequisicaoproducao then
    begin
      cdordproducao := requisicaoproducao.Itrequisicaoproducao.Items[i].GerarOrdemProducao(requisicaoproducao.tprequisicaoproducao.cdtpordproducao);
      if cdordproducao = 0 then
      begin
        MessageDlg('Ordem de produção já foi gerada.', mtInformation, [mbOK], 0);
        abort;
      end;
      messagedlg('Ordem de Produção '+inttostr(cdordproducao)+' gerada.', mtinformation, [mbok], 0);
      Abrir(cdsCDREQUISICAOPRODUCAO.asinteger);
      Break;
    end;
  end;
end;

procedure Tfrmrequisicaoproducao.actgerarordproducaotodasExecute(Sender: TObject);
var
  i : Integer;
begin
  cds.DisableControls;
  try
    cdsdetail.First;
    while not cdsdetail.Eof do
    begin
      for i := 0 to requisicaoproducao.Itrequisicaoproducao.Count - 1 do
      begin
        if cdsdetailCDITREQUISICAOPRODUCAO.AsInteger = requisicaoproducao.Itrequisicaoproducao.Items[i].cditrequisicaoproducao then
        begin
          requisicaoproducao.Itrequisicaoproducao.Items[i].GerarOrdemProducao(requisicaoproducao.tprequisicaoproducao.cdtpordproducao);
          Break;
        end;
      end;
      cdsdetail.Next;
    end;
    Abrir(cdsCDrequisicaoproducao.asinteger);
  finally
    cds.EnableControls;
  end;
end;

procedure Tfrmrequisicaoproducao.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

function Tfrmrequisicaoproducao.makesqlitrequisicaoproducao: string;
begin
  result := 'SELECT I.*'+
                  ',P.NMPRODUTO'+
                  ',O.CDORCAMENTO'+
                  ',U.NMUNIDADE '+
            'FROM ITREQUISICAOPRODUCAO I '+
            'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND I.CDEMPRESA=P.CDEMPRESA '+
            'LEFT JOIN UNIDADE U ON U.CDUNIDADE=P.CDUNIDADE AND U.CDEMPRESA=P.CDEMPRESA '+
            'LEFT JOIN ITORCAMENTO O ON O.CDEMPRESA=I.CDEMPRESA AND O.CDITORCAMENTO=I.CDITORCAMENTO '+
            'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDREQUISICAOPRODUCAO=:CDREQUISICAOPRODUCAO';
end;

procedure Tfrmrequisicaoproducao.set_sqldataset;
begin
  sdsdetail.CommandText         := makesqlitrequisicaoproducao;
  sdsdetail.Params[0].DataType  := ftFMTBcd;
  sdsdetail.Params[0].Name      := UpperCase(_cdempresa);
  sdsdetail.Params[0].ParamType := ptInput;
  sdsdetail.Params[0].Size      := 34;
  sdsdetail.Params[1].DataType  := ftInteger;
  sdsdetail.Params[1].Name      := UpperCase(_cdrequisicaoproducao);
  sdsdetail.Params[1].ParamType := ptInput;
  sdsdetail.Params[1].Size      := 4;
end;

procedure Tfrmrequisicaoproducao.actabrirorcamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure Tfrmrequisicaoproducao.cdsdetailAfterScroll(DataSet: TDataSet);
  function makesql:string;
    function get_campo_liberado_empresa:string;
    begin
      result := '';
      if empresa.material.produto.bodsproduto     then
      begin
        result := result + ',p.DSPRODUTO';
      end;
      if empresa.material.produto.bonuclfiscal    then
      begin
        result := Result + ',p.nuclfiscal';
      end;
      if empresa.material.produto.boqtdisponivel  then
      begin
        result := Result + ',p.qtpedido,p.QTDISPONIVEL';
      end;
      if empresa.material.produto.bovlvenda       then
      begin
        result := result + ',p.VLVENDA';
      end;
      if empresa.material.produto.bodesenho       then
      begin
        result := result + ',p.dsdesenho';
      end;
      if empresa.material.produto.botag2          then
      begin
        result := result + ',p.dstag2';
      end;
      if empresa.material.produto.botag1          then
      begin
        result := result + ',p.dstag1';
      end;
      if Empresa.material.produto.bocodfornecedor then
      begin
        result := result + ',p.cdcodfornecedor';
      end;
      if Empresa.material.produto.bogrupo         then
      begin
        result := result + ',g.nunivel,g.nmgrupo';
      end;
      if Empresa.material.produto.bovlcusto       then
      begin
        result := result + ',p.vlcusto';
      end;
      if Empresa.material.produto.bovlatacado     then
      begin
        result := result + ',p.vlatacado';
      end;
      if Empresa.material.produto.bovlespecial    then
      begin
        result := result + ',p.vlespecial';
      end;
      if Empresa.material.produto.bocdalternativo then
      begin
        result := result + ',p.cdalternativo';
      end;
      if Empresa.material.produto.bodslocalizacao then
      begin
        result := result + ',p.dslocalizacao';
      end;
      if Empresa.material.produto.bopolegada      then
      begin
        result := result + ',p.dspolegada';
      end;
      if Empresa.material.produto.bocomprimento   then
      begin
        result := result + ',p.qtcomprimento';
      end;
      if Empresa.material.produto.boespessura     then
      begin
        result := result + ',p.qtespessura';
      end;
      if Empresa.material.produto.boforma         then
      begin
        result := result + ',p.cdforma';
      end;
      if Empresa.material.produto.bolargura       then
      begin
        result := result + ',p.qtlargura';
      end;
      if Empresa.material.produto.bomaterial      then
      begin
        result := result + ',p.cdmaterial';
      end;
      if Empresa.material.produto.bonorma         then
      begin
        result := result + ',p.cdnorma';
      end;
      if Empresa.material.produto.botpitem        then
      begin
        result := result + ',p.cdtpitem';
      end;
    end;
  begin
    result := 'SELECT p.CDPRODUTO'+
                    ',p.NMPRODUTO'+
                    ',P.CDUNIDADE'+
                    ',p.cdtpproduto'+
                    ',p.BOSAIDA'+
                    ',p.BOENTRADA'+
                    ',p.BOPEDIDO'+
                    ',p.BOORDCOMPRA'+
                    ',p.BOORCAMENTO'+
                    ',p.BOPEDIDOMATERIAL'+
                    ',p.BOORDSERV'+
                    ',p.BOMOVTO'+
                    ',p.QTESTOQUE'+
                    ',p.BOATIVAR'+
                    get_campo_liberado_empresa+
              ' FROM PRODUTO P '+
              'left join grupo G on g.cdgrupo=p.cdgrupo and g.cdempresa=p.cdempresa :where '+
              'ORDER BY NMPRODUTO'
  end;
  procedure set_optionsdata(boativar:Boolean);
  begin
    tbv.OptionsData.Appending            := boativar;
    tbv.OptionsData.CancelOnExit         := boativar;
    tbv.OptionsData.Deleting             := boativar;
    tbv.OptionsData.DeletingConfirmation := boativar;
    tbv.OptionsData.Editing              := boativar;
    tbv.OptionsData.Inserting            := boativar;
  end;
begin
  tbvCDORCAMENTO.Visible               := not cdsdetailCDORCAMENTO.IsNull;
  tbvDTPRVENTREGA.Visible              := not cdsdetailCDORCAMENTO.IsNull;
  set_optionsdata(cdsdetailCDORCAMENTO.IsNull);
  if cdsordproducao.RecordCount > 0 then
  begin
    set_optionsdata(false);
  end;

  qsimilar.q.Close;
  if cdsdetailCDPRODUTO.AsString <> '' then
  begin
    qsimilar.q.SQL.Text := StringParametro(makesql, 'inner join produtosimilar s on s.cdempresa=p.cdempresa and s.cdproduto=p.cdproduto where p.cdempresa='+empresa.cdempresa.tostring+' and s.cdprodutoorigem='+cdsdetailCDPRODUTO.AsString);
    qsimilar.q.Open;
  end;
end;

function Tfrmrequisicaoproducao.registrar_justificativa_mudanca_status:boolean;
var
  dsjustificativa: string;
  codigo : integer;
begin
  result := False;
  dsjustificativa := '';
  codigo := cbxcdstrequisicaoproducao.EditValue;
  if (codigo <> requisicaoproducao.cdstrequisicaoproducao) and
     (requisicaoproducao.tprequisicaoproducao.bojustificativastatus = _s) and
     (not DialogoJustificativa('Justificativa de Alteração de Status', dsjustificativa)) then
  begin
    MessageDlg('Justificativa de alteração de status é obrigatório.', mtInformation, [mbOK], 0);
    abort;
  end;
  cdsDSJUSTIFICATIVA.AsString := dsjustificativa;
end;

procedure Tfrmrequisicaoproducao.acthistoricoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, _hrequisicaoproducao)), cdsCDREQUISICAOPRODUCAO.AsInteger, _cdrequisicaoproducao);
end;

procedure Tfrmrequisicaoproducao.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds, cdsordproducao);
end;

procedure Tfrmrequisicaoproducao.tbvordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cd+_ordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao)
  end;
end;

procedure Tfrmrequisicaoproducao.actordproducaoExecute(Sender: TObject);
begin
//
end;

procedure Tfrmrequisicaoproducao.actimprimirordproducaoExecute(Sender: TObject);
begin
  btnimprimirordproducao.DropDown(false);
end;

procedure Tfrmrequisicaoproducao.actimprimirpesagemExecute(Sender: TObject);
var
  cdformulacao, cdproduto, lista : string;
  i : integer;
  cdordproducao : TStrings;
  ordproducao : TOrdProducao;
begin
  if tbvordproducao.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  lista := '';
  cdordproducao := TStringList.Create;
  try
    for i := 0 to tbvordproducao.ViewData.RecordCount -1 do
    begin
      cdordproducao.Add(tbvordproducao.ViewData.Records[i].Values[tbvordproducao.GetColumnByFieldName(_cdordproducao).Index]);
      if tbvordproducao.ViewData.Records[i].Selected and TOrdProducao.seMesmoProdutoFormulacao(cdordproducao[cdordproducao.Count-1], cdproduto, cdformulacao) then
      begin
        if lista <> '' then
        begin
          lista := lista + ',';
        end;
        lista := lista + cdordproducao[cdordproducao.Count-1];
      end
      else
      begin
        cdordproducao.Delete(cdordproducao.Count-1);
      end;
    end;
    if cdordproducao.Count > 0 then
    begin
      ImpimirRelatorioPadrao1(22, 'where ordproducao.cdempresa='+empresa.cdempresa.tostring+' and ordproducao.cdordproducao in ('+lista+')');
      for I := 0 to cdordproducao.Count - 1 do
      begin
        ordproducao := tordproducao.create;
        try
          ordproducao.Select(cdordproducao[i].ToInteger);
          ordproducao.boimpresso := _S;
          ordproducao.Update;
        finally
          FreeAndNil(ordproducao);
        end;
      end;
      Abrir(cdsCDREQUISICAOPRODUCAO.AsInteger);
    end;
  finally
    FreeAndNil(cdordproducao);
  end;
end;

procedure Tfrmrequisicaoproducao.set_fields_similar;
begin
  tbvsimilarCDALTERNATIVO.Visible := Empresa.material.produto.bocdalternativo;
  tbvsimilarCDCODFORNECEDOR.Visible := Empresa.material.produto.bocodfornecedor;
  tbvsimilarqtcomprimento.Visible := Empresa.material.produto.bocomprimento;
  tbvsimilarDSDESENHO.Visible := empresa.material.produto.bodesenho;
  tbvsimilarDSLOCALIZACAO.Visible := Empresa.material.produto.bodslocalizacao;
  tbvsimilarDSPRODUTO.Visible := empresa.material.produto.bodsproduto;
  tbvsimilarDStag1.Visible := empresa.material.produto.botag1;
  tbvsimilarDStag2.Visible := empresa.material.produto.botag2;
  tbvsimilarqtespessura.Visible := Empresa.material.produto.boespessura;
  tbvsimilarcdforma.Visible := Empresa.material.produto.boforma;
  tbvsimilarNUNIVEL.Visible := Empresa.material.produto.bogrupo;
  tbvsimilarNMGRUPO.Visible := Empresa.material.produto.bogrupo;
  tbvsimilarqtlargura.Visible := Empresa.material.produto.bolargura;
  tbvsimilarcdmaterial.Visible := Empresa.material.produto.bomaterial;
  tbvsimilarcdnorma.Visible := Empresa.material.produto.bonorma;
  tbvsimilarNUCLFISCAL.Visible := Empresa.material.produto.bonuclfiscal;
  tbvsimilarDSPOLEGADA.Visible := Empresa.material.produto.bopolegada;
  tbvsimilarQTPEDIDO.Visible     := empresa.material.produto.boqtdisponivel;
  tbvsimilarQTDISPONIVEL.Visible := empresa.material.produto.boqtdisponivel;
  tbvsimilarcdtpitem.Visible := Empresa.material.produto.botpitem;
  tbvsimilarVLVENDA.Visible    := Empresa.material.produto.bovlvenda;
  tbvsimilarVLCUSTO.Visible    := Empresa.material.produto.bovlcusto;
  tbvsimilarVLATACADO.Visible  := Empresa.material.produto.bovlatacado;
  tbvsimilarVLESPECIAL.Visible := Empresa.material.produto.bovlespecial;
end;

procedure Tfrmrequisicaoproducao.actmapaproducaoprodutoExecute(Sender: TObject);
begin
  exibir_mapa_producao_produto;
end;

procedure Tfrmrequisicaoproducao.actexcluirordproducaoExecute(Sender: TObject);
begin
  cdsordproducao.delete;
end;

procedure Tfrmrequisicaoproducao.actexcluirtodasordproducaoExecute(Sender: TObject);
begin
  cdsordproducao.disablecontrols;
  try
    repeat
      cdsordproducao.delete;
    until cdsordproducao.recordcount = 0;
  finally
    cdsordproducao.enablecontrols;
  end;
end;

procedure Tfrmrequisicaoproducao.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmrequisicaoproducao.cdsordproducaoAfterScroll(DataSet: TDataSet);
begin
  actexcluirordproducao.enabled       := (cdsordproducao.recordcount > 0) and (not acteditar.enabled) and (cdsordproducao.fieldbyname(_boexcluir).asstring = _s);
  actexcluirtodasordproducao.enabled  := (cdsordproducao.recordcount > 0) and (not acteditar.enabled) and (cdsordproducao.fieldbyname(_boexcluir).asstring = _s);
  tbvordproducao.optionsdata.deleting := (cdsordproducao.recordcount > 0) and (not acteditar.enabled) and (cdsordproducao.fieldbyname(_boexcluir).asstring = _s);
  cdsordproducao.readonly             := cdsordproducao.fieldbyname(_boalterar).asstring <> _s;
  tbvordproducao.optionsdata.editing  := cdsordproducao.fieldbyname(_boalterar).asstring = _s;
end;

end.
