unit uFaturamento;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, Gauges, ActnList, Grids, ComCtrls, Mask, Buttons, dialogs, Math,
  windows, sysutils, StdCtrls, ToolWin, Controls, ExtCtrls, Menus,
  FMTBcd, DB, DBClient, Provider, sqlexpr,
  urotinas, uprogressbar, ustrings, uconstantes, udatahora,
  uexportarexcel, unumero, uregistroib, uregistro, urichedit,
  unovoproduto,
  classeusuario, classeconsiste, classeform, classegerar, classeaplicacao,
  classeRegistro, classeregistrainformacao, classeempresa, classeproduto,
  classeexecutasql, classeretornasql, classefaturamento,
  classecobranca, classecliente, classeconta, classequery,
  cxPC, cxControls, dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxButtonEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxCurrencyEdit,
  cxCalc, cxContainer, cxDropDownEdit, cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxCore, cxNavigator, dxBarBuiltInMenu;

type
  TfrmFaturamento = class(TForm)
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
    actImprimirBoletas: TAction;
    actImprimirSelecaoBoletas: TAction;
    actImportarPedido: TAction;
    actGerarNotaFiscal: TAction;
    actabrirpedido: TAction;
    actabrircliente: TAction;
    actabrirsaida: TAction;
    actabrirduplicata: TAction;
    actabrirproduto: TAction;
    actgerarfaturamento: TAction;
    actabrircliente2: TAction;
    actgerarprodutomensalidade: TAction;
    actfechar: TAction;
    actgerarcobranca: TAction;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    tbscliente: TcxTabSheet;
    tbspedido: TcxTabSheet;
    tbsnotafiscal: TcxTabSheet;
    tbsduplicata: TcxTabSheet;
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
    lbfaturamento: TLabel;
    lbldtfaturamento: TLabel;
    lblsetboleto: TLabel;
    lbldtvencimento: TLabel;
    lblperiodo: TLabel;
    lblate: TLabel;
    lbltpfaturamento: TLabel;
    actgerarproduto: TAction;
    actimportarproduto: TAction;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    dxBarButton17: TdxBarButton;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton7: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    sds: TSQLDataSet;
    sdsCDFATURAMENTO: TIntegerField;
    sdsCDSTFATURAMENTO: TIntegerField;
    sdsDTFATURAMENTO: TDateField;
    sdsDTVENCIMENTO: TDateField;
    sdsDTINICIO: TDateField;
    sdsDTTERMINO: TDateField;
    sdsCDTPFATURAMENTO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    cdsCDFATURAMENTO: TIntegerField;
    cdsCDSTFATURAMENTO: TIntegerField;
    cdsDTFATURAMENTO: TDateField;
    cdsDTVENCIMENTO: TDateField;
    cdsDTINICIO: TDateField;
    cdsDTTERMINO: TDateField;
    cdsCDTPFATURAMENTO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsitfatproduto: TClientDataSet;
    dtsitfatproduto: TDataSource;
    sdsitfatproduto: TSQLDataSet;
    dts1: TDataSource;
    cdssdsitfatproduto: TDataSetField;
    cdsitfatpedido: TClientDataSet;
    dtsitfatpedido: TDataSource;
    sdsitfatpedido: TSQLDataSet;
    cdssdsitfatpedido: TDataSetField;
    sdsitfatcliente: TSQLDataSet;
    cdsitfatcliente: TClientDataSet;
    dtsitfatcliente: TDataSource;
    cdssdsitfatcliente: TDataSetField;
    sdsitfatsaida: TSQLDataSet;
    cdsitfatsaida: TClientDataSet;
    dtsitfatsaida: TDataSource;
    cdssdsitfatsaida: TDataSetField;
    dtsduplicata: TDataSource;
    cdsduplicata: TClientDataSet;
    sdsduplicata: TSQLDataSet;
    sdsitfatclienteCDFATURAMENTO: TIntegerField;
    sdsitfatclienteCDUSUARIOI: TIntegerField;
    sdsitfatclienteCDUSUARIOA: TIntegerField;
    sdsitfatclienteCDCOMPUTADORI: TIntegerField;
    sdsitfatclienteCDCOMPUTADORA: TIntegerField;
    sdsitfatclienteTSINCLUSAO: TSQLTimeStampField;
    sdsitfatclienteTSALTERACAO: TSQLTimeStampField;
    sdsitfatclienteCDITFATCLIENTE: TIntegerField;
    sdsitfatclienteNMCLIENTE: TStringField;
    sdsitfatclienteNMTPCLIENTE: TStringField;
    sdsitfatclienteDSENDERECO: TStringField;
    sdsitfatclienteDSNUMERO: TStringField;
    sdsitfatclienteNMBAIRRO: TStringField;
    sdsitfatclienteNMMUNICIPIO: TStringField;
    sdsduplicataCDFATURAMENTO: TIntegerField;
    sdsduplicataCDSAIDA: TIntegerField;
    sdsduplicataNUDUPLICATA: TStringField;
    sdsduplicataNMCLIENTE: TStringField;
    sdsduplicataNMBAICBRNC: TStringField;
    sdsduplicataDTEMISSAO: TDateField;
    sdsduplicataDTPRORROGACAO: TDateField;
    sdsduplicataVLDUPLICATA: TFMTBCDField;
    sdsduplicataNMSTDUPLICATA: TStringField;
    sdsduplicataCDDUPLICATA: TIntegerField;
    cdssdsduplicata: TDataSetField;
    cdsitfatclienteCDFATURAMENTO: TIntegerField;
    cdsitfatclienteCDUSUARIOI: TIntegerField;
    cdsitfatclienteCDUSUARIOA: TIntegerField;
    cdsitfatclienteCDCOMPUTADORI: TIntegerField;
    cdsitfatclienteCDCOMPUTADORA: TIntegerField;
    cdsitfatclienteTSINCLUSAO: TSQLTimeStampField;
    cdsitfatclienteTSALTERACAO: TSQLTimeStampField;
    cdsitfatclienteCDITFATCLIENTE: TIntegerField;
    cdsitfatclienteNMCLIENTE: TStringField;
    cdsitfatclienteNMTPCLIENTE: TStringField;
    cdsitfatclienteDSENDERECO: TStringField;
    cdsitfatclienteDSNUMERO: TStringField;
    cdsitfatclienteNMBAIRRO: TStringField;
    cdsitfatclienteNMMUNICIPIO: TStringField;
    cdsduplicataCDFATURAMENTO: TIntegerField;
    cdsduplicataCDSAIDA: TIntegerField;
    cdsduplicataNUDUPLICATA: TStringField;
    cdsduplicataNMCLIENTE: TStringField;
    cdsduplicataNMBAICBRNC: TStringField;
    cdsduplicataDTEMISSAO: TDateField;
    cdsduplicataDTPRORROGACAO: TDateField;
    cdsduplicataVLDUPLICATA: TFMTBCDField;
    cdsduplicataNMSTDUPLICATA: TStringField;
    cdsduplicataCDDUPLICATA: TIntegerField;
    sdsitfatsaidaCDFATURAMENTO: TIntegerField;
    sdsitfatsaidaCDSAIDA: TIntegerField;
    sdsitfatsaidaCDUSUARIOI: TIntegerField;
    sdsitfatsaidaCDUSUARIOA: TIntegerField;
    sdsitfatsaidaCDCOMPUTADORI: TIntegerField;
    sdsitfatsaidaCDCOMPUTADORA: TIntegerField;
    sdsitfatsaidaTSINCLUSAO: TSQLTimeStampField;
    sdsitfatsaidaTSALTERACAO: TSQLTimeStampField;
    sdsitfatsaidaNUSAIDA: TIntegerField;
    sdsitfatsaidaNMCLIENTE: TStringField;
    sdsitfatsaidaDTEMISSAO: TDateField;
    sdsitfatsaidaVLTOTAL: TFMTBCDField;
    cdsitfatsaidaCDFATURAMENTO: TIntegerField;
    cdsitfatsaidaCDSAIDA: TIntegerField;
    cdsitfatsaidaCDUSUARIOI: TIntegerField;
    cdsitfatsaidaCDUSUARIOA: TIntegerField;
    cdsitfatsaidaCDCOMPUTADORI: TIntegerField;
    cdsitfatsaidaCDCOMPUTADORA: TIntegerField;
    cdsitfatsaidaTSINCLUSAO: TSQLTimeStampField;
    cdsitfatsaidaTSALTERACAO: TSQLTimeStampField;
    cdsitfatsaidaNUSAIDA: TIntegerField;
    cdsitfatsaidaNMCLIENTE: TStringField;
    cdsitfatsaidaDTEMISSAO: TDateField;
    cdsitfatsaidaVLTOTAL: TFMTBCDField;
    sdsitfatpedidoCDFATURAMENTO: TIntegerField;
    sdsitfatpedidoCDPEDIDO: TIntegerField;
    sdsitfatpedidoNUPEDIDO: TStringField;
    sdsitfatpedidoCDUSUARIOI: TIntegerField;
    sdsitfatpedidoCDUSUARIOA: TIntegerField;
    sdsitfatpedidoCDCOMPUTADORI: TIntegerField;
    sdsitfatpedidoCDCOMPUTADORA: TIntegerField;
    sdsitfatpedidoTSINCLUSAO: TSQLTimeStampField;
    sdsitfatpedidoTSALTERACAO: TSQLTimeStampField;
    sdsitfatpedidoNMCLIENTE: TStringField;
    sdsitfatpedidoDTEMISSAO: TDateField;
    sdsitfatpedidoVLTOTAL: TFMTBCDField;
    cdsitfatpedidoCDFATURAMENTO: TIntegerField;
    cdsitfatpedidoCDPEDIDO: TIntegerField;
    cdsitfatpedidoNUPEDIDO: TStringField;
    cdsitfatpedidoCDUSUARIOI: TIntegerField;
    cdsitfatpedidoCDUSUARIOA: TIntegerField;
    cdsitfatpedidoCDCOMPUTADORI: TIntegerField;
    cdsitfatpedidoCDCOMPUTADORA: TIntegerField;
    cdsitfatpedidoTSINCLUSAO: TSQLTimeStampField;
    cdsitfatpedidoTSALTERACAO: TSQLTimeStampField;
    cdsitfatpedidoNMCLIENTE: TStringField;
    cdsitfatpedidoDTEMISSAO: TDateField;
    cdsitfatpedidoVLTOTAL: TFMTBCDField;
    sdsitfatprodutoCDFATURAMENTO: TIntegerField;
    sdsitfatprodutoCDPRODUTO: TIntegerField;
    sdsitfatprodutoQTITEM: TFloatField;
    sdsitfatprodutoVLUNITARIO: TFMTBCDField;
    sdsitfatprodutoVLTOTAL: TFMTBCDField;
    sdsitfatprodutoCDDIGITADO: TStringField;
    sdsitfatprodutoCDUSUARIOI: TIntegerField;
    sdsitfatprodutoCDUSUARIOA: TIntegerField;
    sdsitfatprodutoCDCOMPUTADORI: TIntegerField;
    sdsitfatprodutoCDCOMPUTADORA: TIntegerField;
    sdsitfatprodutoTSINCLUSAO: TSQLTimeStampField;
    sdsitfatprodutoTSALTERACAO: TSQLTimeStampField;
    sdsitfatprodutoCDITFATPRODUTO: TIntegerField;
    sdsitfatprodutoNMPRODUTO: TStringField;
    cdsitfatprodutoCDFATURAMENTO: TIntegerField;
    cdsitfatprodutoCDPRODUTO: TIntegerField;
    cdsitfatprodutoQTITEM: TFloatField;
    cdsitfatprodutoVLUNITARIO: TFMTBCDField;
    cdsitfatprodutoVLTOTAL: TFMTBCDField;
    cdsitfatprodutoCDDIGITADO: TStringField;
    cdsitfatprodutoCDUSUARIOI: TIntegerField;
    cdsitfatprodutoCDUSUARIOA: TIntegerField;
    cdsitfatprodutoCDCOMPUTADORI: TIntegerField;
    cdsitfatprodutoCDCOMPUTADORA: TIntegerField;
    cdsitfatprodutoTSINCLUSAO: TSQLTimeStampField;
    cdsitfatprodutoTSALTERACAO: TSQLTimeStampField;
    cdsitfatprodutoCDITFATPRODUTO: TIntegerField;
    cdsitfatprodutoNMPRODUTO: TStringField;
    tbvitfatcliente: TcxGridDBTableView;
    grditfatclienteLevel1: TcxGridLevel;
    grditfatcliente: TcxGrid;
    tbvitfatclienteNMCLIENTE: TcxGridDBColumn;
    tbvitfatclienteNMTPCLIENTE: TcxGridDBColumn;
    tbvitfatclienteDSENDERECO: TcxGridDBColumn;
    tbvitfatclienteDSNUMERO: TcxGridDBColumn;
    tbvitfatclienteNMBAIRRO: TcxGridDBColumn;
    tbvitfatclienteNMMUNICIPIO: TcxGridDBColumn;
    tbvitfatpedido: TcxGridDBTableView;
    grditfatpedidoLevel1: TcxGridLevel;
    grditfatpedido: TcxGrid;
    tbvitfatpedidoNUPEDIDO: TcxGridDBColumn;
    tbvitfatpedidoCDCLIENTE: TcxGridDBColumn;
    tbvitfatpedidoNMCLIENTE: TcxGridDBColumn;
    tbvitfatpedidoDTEMISSAO: TcxGridDBColumn;
    tbvitfatpedidoVLTOTAL: TcxGridDBColumn;
    tbvitfatpedidoCDSTPEDIDO: TcxGridDBColumn;
    tbvitfatsaida: TcxGridDBTableView;
    grditfatsaidaLevel1: TcxGridLevel;
    grditfatsaida: TcxGrid;
    tbvitfatsaidaNUSAIDA: TcxGridDBColumn;
    tbvitfatsaidaCDCLIENTE: TcxGridDBColumn;
    tbvitfatsaidaNMCLIENTE: TcxGridDBColumn;
    tbvitfatsaidaDTEMISSAO: TcxGridDBColumn;
    tbvitfatsaidaVLTOTAL: TcxGridDBColumn;
    tbvduplicata: TcxGridDBTableView;
    grdduplicataLevel1: TcxGridLevel;
    grdduplicata: TcxGrid;
    tbvduplicataNUDUPLICATA: TcxGridDBColumn;
    tbvduplicataCDCLIENTE: TcxGridDBColumn;
    tbvduplicataNMCLIENTE: TcxGridDBColumn;
    tbvduplicataNMBAICBRNC: TcxGridDBColumn;
    tbvduplicataDTEMISSAO: TcxGridDBColumn;
    tbvduplicataDTPRORROGACAO: TcxGridDBColumn;
    tbvduplicataVLDUPLICATA: TcxGridDBColumn;
    tbvduplicataNMSTDUPLICATA: TcxGridDBColumn;
    tbvitfatproduto: TcxGridDBTableView;
    grditfatprodutoLevel1: TcxGridLevel;
    grditfatproduto: TcxGrid;
    tbvitfatprodutoQTITEM: TcxGridDBColumn;
    tbvitfatprodutoVLUNITARIO: TcxGridDBColumn;
    tbvitfatprodutoVLTOTAL: TcxGridDBColumn;
    tbvitfatprodutoCDDIGITADO: TcxGridDBColumn;
    tbvitfatprodutoNMPRODUTO: TcxGridDBColumn;
    cbxcdtpfaturamento: TcxDBLookupComboBox;
    edtdtfaturamento: TcxDBDateEdit;
    cbxcdsetboleto: TcxDBLookupComboBox;
    edtdtvencimento: TcxDBDateEdit;
    edtdtinicio: TcxDBDateEdit;
    edtdttermino: TcxDBDateEdit;
    edtcodigo: TcxTextEdit;
    dxBarButton1: TdxBarButton;
    tbvduplicataCDDUPLICATA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    sdsitfatpedidoCDTPPEDIDO: TIntegerField;
    sdsitfatpedidoCDTPCLIENTEMENSALIDADE: TIntegerField;
    sdsitfatpedidoCDCONTRATO: TIntegerField;
    sdsitfatpedidoCDSTPEDIDO: TIntegerField;
    cdsitfatpedidoCDTPPEDIDO: TIntegerField;
    cdsitfatpedidoCDTPCLIENTEMENSALIDADE: TIntegerField;
    cdsitfatpedidoCDCONTRATO: TIntegerField;
    cdsitfatpedidoCDSTPEDIDO: TIntegerField;
    tbvitfatpedidoCDTPPEDIDO: TcxGridDBColumn;
    tbvitfatpedidoCDTPCLIENTEMENSALIDADE: TcxGridDBColumn;
    tbvitfatpedidoCDCONTRATO: TcxGridDBColumn;
    actverificacaocontrato: TAction;
    dxBarButton2: TdxBarButton;
    actabrirtpfaturamento: TAction;
    actimprimirboletorota: TAction;
    dxBarButton3: TdxBarButton;
    actgerarcampanha: TAction;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    actemail: TAction;
    btnemail: TdxBarLargeButton;
    pumemail: TdxBarPopupMenu;
    actemailboleto: TAction;
    dxBarButton6: TdxBarButton;
    actemailboletotodos: TAction;
    dxBarButton14: TdxBarButton;
    sdsduplicataNUNOSSONUMERO: TStringField;
    cdsduplicataNUNOSSONUMERO: TStringField;
    tbvduplicataNUNOSSONUMERO: TcxGridDBColumn;
    actexcluirsaida: TAction;
    dxBarButton15: TdxBarButton;
    actexcluirtppedido: TAction;
    dxBarButton16: TdxBarButton;
    tbvitfatclienteCDCLIENTE: TcxGridDBColumn;
    sdsCDEMPRESA: TLargeintField;
    sdsitfatprodutoCDEMPRESA: TLargeintField;
    sdsitfatpedidoCDEMPRESA: TLargeintField;
    sdsitfatpedidoCDCLIENTE: TLargeintField;
    sdsitfatclienteCDCLIENTE: TLargeintField;
    sdsitfatclienteCDEMPRESA: TLargeintField;
    sdsitfatsaidaCDEMPRESA: TLargeintField;
    sdsitfatsaidaCDCLIENTE: TLargeintField;
    sdsduplicataCDCLIENTE: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsitfatprodutoCDEMPRESA: TLargeintField;
    cdsitfatpedidoCDEMPRESA: TLargeintField;
    cdsitfatpedidoCDCLIENTE: TLargeintField;
    cdsitfatclienteCDCLIENTE: TLargeintField;
    cdsitfatclienteCDEMPRESA: TLargeintField;
    cdsitfatsaidaCDEMPRESA: TLargeintField;
    cdsitfatsaidaCDCLIENTE: TLargeintField;
    cdsduplicataCDCLIENTE: TLargeintField;
    sdsCDSETBOLETO: TIntegerField;
    cdsCDSETBOLETO: TIntegerField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actImprimirBoletasExecute(Sender: TObject);
    procedure actImprimirSelecaoBoletasExecute(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure actImportarPedidoExecute(Sender: TObject);
    procedure actGerarNotaFiscalExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actabrirpedidoExecute(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure actabrirsaidaExecute(Sender: TObject);
    procedure actabrirduplicataExecute(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actgerarfaturamentoExecute(Sender: TObject);
    procedure actabrircliente2Execute(Sender: TObject);
    procedure actgerarprodutomensalidadeExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actgerarcobrancaExecute(Sender: TObject);
    procedure actgerarprodutoExecute(Sender: TObject);
    procedure actimportarprodutoExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure cdsitfatclienteCDCLIENTEValidate(Sender: TField);
    procedure cdsitfatprodutoQTITEMValidate(Sender: TField);
    procedure cdsitfatprodutoCDDIGITADOValidate(Sender: TField);
    procedure grditfatclienteDBTableView1CDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grditfatprodutoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDTPFATURAMENTOValidate(Sender: TField);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsitfatprodutoBeforePost(DataSet: TDataSet);
    procedure cdsitfatclienteBeforePost(DataSet: TDataSet);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitfatprodutoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvitfatclienteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvitfatpedidoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvitfatsaidaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvduplicataCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cbxcdtpfaturamentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsitfatclienteNewRecord(DataSet: TDataSet);
    procedure cdsitfatprodutoNewRecord(DataSet: TDataSet);
    procedure actverificacaocontratoExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actabrirtpfaturamentoExecute(Sender: TObject);
    procedure lbltpfaturamentoDblClick(Sender: TObject);
    procedure actimprimirboletorotaExecute(Sender: TObject);
    procedure actgerarcampanhaExecute(Sender: TObject);
    procedure actemailExecute(Sender: TObject);
    procedure actemailboletoExecute(Sender: TObject);
    procedure actemailboletotodosExecute(Sender: TObject);
    procedure actexcluirsaidaExecute(Sender: TObject);
    procedure actexcluirtppedidoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    produto     : TProduto;
    faturamento : TFaturamento;
    cobranca    : TCobranca;
    conta       : TConta;
    procedure setrecord(cdtp:integer);
    function  ImportarPedidoBanco(bomensalidade:boolean):boolean;
    function  get_ordem_item:integer;
    function  get_ordem:string;
    function  makesqlwhere_boleto(cdfaturamento, cdboleta, orderinglink: string; OrderingItemNo:integer; cdrota:string=''):string;
    procedure setcliente;
    procedure setpedido;
    procedure setperiodo;
    procedure setproduto;
    function ExisteSaldoNegativoPedido: boolean;
    procedure AbrirTabelas;
  public  { Public declarations }
    registro    : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

const
  tbl      = _faturamento;
  exibe    = 'Faturamento';
  artigoI  = 'o';
var
  frmFaturamento: TfrmFaturamento;

implementation

uses UMain,
  uLocalizarFaturamento,
  ulocalizarproduto,
  ulocalizarcliente,
  uDtmMain,
  ulocalizar,
  uFaturamentoTipo,
  ufaturamentogerarprodutomensalidade,
  ufaturamentodlggerarprodutomensalidade,
  udlgfaturamentoproduto,
  uimprimirrelatoriopadrao,
  uMenuRelatorio, classeeventoemail, udlgtipo;

{$R *.DFM}

procedure TfrmFaturamento.setperiodo;
begin
  lblperiodo.Visible   := faturamento.tpfaturamento.boperiodo=_s;
  lblate.Visible       := faturamento.tpfaturamento.boperiodo=_s;
  edtdtinicio.Visible  := faturamento.tpfaturamento.boperiodo=_s;
  edtdttermino.Visible := faturamento.tpfaturamento.boperiodo=_s;
end;

procedure TfrmFaturamento.setpedido;
begin
  tbspedido.TabVisible        := faturamento.tpfaturamento.bopedido=_s;
  actimportarpedido.visible   := faturamento.tpfaturamento.bopedido=_s;
  actimportarproduto.Visible  := faturamento.tpfaturamento.bopedido=_s;
  actGerarNotaFiscal.Visible  := faturamento.tpfaturamento.bopedido=_s;
end;

procedure TfrmFaturamento.setproduto;
begin
  tbsproduto.tabvisible       := faturamento.tpfaturamento.boproduto=_s;
  actgerarfaturamento.Visible := faturamento.tpfaturamento.boproduto=_s;
end;

procedure TfrmFaturamento.setcliente;
begin
  tbscliente.TabVisible       := faturamento.tpfaturamento.bocliente=_s;
end;

procedure TfrmFaturamento.setrecord(cdtp:integer);
begin
  if cdtp = 0 then
  begin
    exit;
  end;
  faturamento.tpfaturamento.Select(cdtp);
  setcliente;
  setpedido;
  setproduto;
  actimprimirboletorota.Visible := faturamento.tpfaturamento.cdrota <> 0;
  setperiodo;
end;

procedure TfrmFaturamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

function TfrmFaturamento.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmFaturamento.AbrirTabelas;
begin
  TcxLookupComboBoxProperties(tbvitfatpedidoCDSTPEDIDO.Properties).ListSource := abrir_tabela(_stpedido);
  TcxLookupComboBoxProperties(tbvitfatpedidoCDTPPEDIDO.Properties).ListSource := abrir_tabela(_tppedido);
  TcxLookupComboBoxProperties(tbvitfatpedidoCDTPCLIENTEMENSALIDADE.Properties).ListSource := abrir_tabela(_tpclientemensalidade);
  TcxLookupComboBoxProperties(tbvitfatpedidoCDCONTRATO.Properties).ListSource := abrir_tabela(_contrato);
  cbxcdtpfaturamento.Properties.ListSource := abrir_tabela(_tp + _faturamento);
  cbxcdsetboleto.Properties.ListSource := abrir_tabela(_setboleto);
end;

procedure TfrmFaturamento.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmFaturamento.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmFaturamento.actSalvarExecute(Sender: TObject);
begin
  if edtdtinicio.Date > Date then
  begin
    messagedlg('A data de início deve ser anterior à data de hoje!', mtError, [mbok], 0 );
    cdsDTINICIO.FocusControl;
    abort;
  end;
  if edtdttermino.Date > Date then
  begin
    messagedlg('A data de término deve ser anterior à data de hoje!', mtError, [mbok], 0 );
    cdsDTTERMINO.FocusControl;
    abort;
  end;
  if edtdttermino.Date < edtdtinicio.Date then
  begin
    messagedlg('A data de término deve ser posterior à data de início!', mtError, [mbok], 0 );
    cdsDTTERMINO.FocusControl;
    abort;
  end;
  if cdsCDsetboleto.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_da+' '+_setboleto]), mtinformation, [mbok], 0);
    cdsCDsetboleto.FocusControl;
    abort;
  end;
  registro.Salvar;
end;

procedure TfrmFaturamento.actExcluirExecute(Sender: TObject);
begin
  registro.Excluir;
end;

procedure TfrmFaturamento.actCancelarExecute(Sender: TObject);
begin
  Registro.Cancelar;
end;

procedure TfrmFaturamento.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmFaturamento.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmFaturamento.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmFaturamento.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmFaturamento.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure TfrmFaturamento.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure TfrmFaturamento.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure TfrmFaturamento.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

function TfrmFaturamento.get_ordem:string;
begin
  if tbvduplicataNUDUPLICATA.SortOrder   <> soNone then
  begin
    result := tbvduplicataNUDUPLICATA.DataBinding.FieldName
  end
  else if tbvduplicataCDCLIENTE.SortOrder     <> soNone then
  begin
    result := tbvduplicataCDCLIENTE.DataBinding.FieldName
  end
  else if tbvduplicataNMCLIENTE.SortOrder     <> soNone then
  begin
    result := tbvduplicataNMCLIENTE.DataBinding.FieldName
  end
  else if tbvduplicataNMBAICBRNC.SortOrder    <> soNone then
  begin
    result := tbvduplicataNMBAICBRNC.DataBinding.FieldName
  end
  else if tbvduplicataDTEMISSAO.SortOrder     <> soNone then
  begin
    result := tbvduplicataDTEMISSAO.DataBinding.FieldName
  end
  else if tbvduplicataDTPRORROGACAO.SortOrder <> soNone then
  begin
    result := tbvduplicataDTPRORROGACAO.DataBinding.FieldName
  end
  else if tbvduplicataVLDUPLICATA.SortOrder   <> soNone then
  begin
    result := tbvduplicataVLDUPLICATA.DataBinding.FieldName
  end
  else if tbvduplicataNMSTDUPLICATA.SortOrder <> soNone then
  begin
    result := tbvduplicataNMSTDUPLICATA.DataBinding.FieldName;
  end;
end;

function TfrmFaturamento.get_ordem_item:integer;
begin
  Result := -1;
  if tbvduplicataNUDUPLICATA.SortOrder   <> soNone then
  begin
    if tbvduplicataNUDUPLICATA.SortOrder = soAscending then
    begin
      Result := 1;
    end;
  end
  else if tbvduplicataCDCLIENTE.SortOrder     <> soNone then
  begin
    if tbvduplicataCDCLIENTE.SortOrder = soAscending then
    begin
      Result := 1;
    end;
  end
  else if tbvduplicataNMCLIENTE.SortOrder     <> soNone then
  begin
    if tbvduplicataNMCLIENTE.SortOrder = soAscending then
    begin
      Result := 1;
    end;
  end
  else if tbvduplicataNMBAICBRNC.SortOrder    <> soNone then
  begin
    if tbvduplicataNMBAICBRNC.SortOrder = soAscending then
    begin
      Result := 1;
    end;
  end
  else if tbvduplicataDTEMISSAO.SortOrder     <> soNone then
  begin
    if tbvduplicataDTEMISSAO.SortOrder = soAscending then
    begin
      Result := 1;
    end;
  end
  else if tbvduplicataDTPRORROGACAO.SortOrder <> soNone then
  begin
    if tbvduplicataDTPRORROGACAO.SortOrder = soAscending then
    begin
      Result := 1;
    end;
  end
  else if tbvduplicataVLDUPLICATA.SortOrder   <> soNone then
  begin
    if tbvduplicataVLDUPLICATA.SortOrder = soAscending then
    begin
      Result := 1;
    end;
  end
  else if tbvduplicataNMSTDUPLICATA.SortOrder <> soNone then
  begin
    if tbvduplicataNMSTDUPLICATA.SortOrder = soAscending then
    begin
      Result := 1;
    end;
  end;
end;

procedure TfrmFaturamento.actImprimirBoletasExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(643, makesqlwhere_boleto(cdsCDFATURAMENTO.AsString, '', get_ordem, get_ordem_item));
end;

procedure TfrmFaturamento.actimprimirboletorotaExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(643, makesqlwhere_boleto(cdsCDFATURAMENTO.AsString, '', get_ordem, get_ordem_item, IntToStr(faturamento.tpfaturamento.cdrota)));
end;

procedure TfrmFaturamento.actImprimirSelecaoBoletasExecute(Sender: TObject);
var
  codigo, scodigos : string;
  cont, z, i: integer;
begin
  if (not cds.Active) or (cdsDuplicata.RecordCount < 1) then
  begin
    exit;
  end;
  try
    cont := tbvduplicata.ViewData.RecordCount;
    for i := 0 to cont -1 do
    begin
      if tbvduplicata.ViewData.Records[i].Selected then
      begin
        if scodigos <> '' then
        begin
          scodigos := scodigos + ', ';
        end;
        for z := 0 to tbvduplicata.ColumnCount - 1 do
        begin
          if LowerCase(tbvduplicata.Columns[Z].DataBinding.FieldName) = _cdduplicata then
          begin
            codigo := tbvduplicata.ViewData.Records[i].Values[Z];// tvw.Columns[x].DataBinding.Field.AsVariant;
          end;
        end;
        scodigos := scodigos + codigo;
      end;
    end;
    if scodigos = '' then
    begin
      Exit;
    end;
    ImpimirRelatorioPadrao1(643, makesqlwhere_boleto(cdsCDFATURAMENTO.AsString, scodigos, get_ordem, get_ordem_item));
  finally
    cdsduplicata.EnableControls;
  end;
end;

procedure TfrmFaturamento.btnnovoClick(Sender: TObject);
begin
  actNovoExecute(sender);
end;

procedure TfrmFaturamento.actImportarPedidoExecute(Sender: TObject);
var
  tpmodelo: string;
  cdfaturamento : integer;
  bomensalidade, boarquivo, bobanco, bocontinua: boolean;
begin
  if (messagedlg('Você deseja importar os pedidos?', mtConfirmation, [mbyes, mbno], 0) <> mryes) or (not VerificarTipo(boarquivo, bobanco, tpmodelo, bomensalidade)) then
  begin
    exit;
  end;
  if bomensalidade and (faturamento.tpfaturamento.cdtppedidomensalidade = 0) then
  begin
    MessageDlg('Tipo de pedido mensalidade não configurado no tipo de faturamento.'#13'Configure antes de continuar.', mtInformation, [mbOK], 0);
    Exit;
  end;
  cdfaturamento := cdsCDFATURAMENTO.asinteger;
  bocontinua    := boarquivo or bobanco;
  if bocontinua and boarquivo then
  begin
    if lowercase(tpmodelo) = _0 then
    begin
      bocontinua := faturamento.ImportarCSVMeioAcesso
    end
    else if lowercase(tpmodelo) = _1 then
    begin
      bocontinua := faturamento.ImportarCSV;
    end;
  end;
  if bocontinua and bobanco then
  begin
    ImportarPedidoBanco(bomensalidade);
  end;
  if bocontinua then
  begin
    faturamento.cdstfaturamento := 2;
    faturamento.update;
  end;
  Abrir(cdfaturamento);
  pgc.ActivePage := tbsPedido;
end;

function TfrmFaturamento.ExisteSaldoNegativoPedido:boolean;
var
  q : TClassequery;
  texto : string;
begin
  result := false;
  q      := TClasseQuery.create;
  try
    q.q.open('select c.cdcliente,c.nmcliente,sum(p.vltotal) vltotal '+
             'from pedido p '+
             'inner join itfatpedido i on i.cdpedido=p.cdpedido and p.cdempresa=i.cdempresa '+
             'inner join cliente c on c.cdcliente=p.cdcliente and p.cdempresa=c.cdempresa '+
             'where p.cdempresa='+empresa.cdempresa.tostring+' and cdfaturamento='+cdsCDFATURAMENTO.asstring+' '+
             'group by c.cdcliente,c.nmcliente '+
             'having sum(p.vltotal)<=0');
    if q.q.fieldbyname(_cdcliente).AsLargeInt = 0 then
    begin
      exit;
    end;
    result := true;
    texto := 'Os seguintes clientes estão com saldo negativo de pedido'#13'Cliente       Nome'+espaco(57)+'Saldo'#13;
    while not q.q.eof do
    begin
      texto := texto +
               FormatarTextoDireita(q.q.fieldbyname(_cdcliente).Asstring, 8)+' - '+
               FormatarTextoDireita(q.q.fieldbyname(_nmcliente).Asstring, 40)+' - '+
               FormatarMoeda(q.q.fieldbyname(_vltotal).AsCurrency, 20)+#13;
      q.q.next;
    end;
    texto := texto + 'Favor corrigir antes de prosseguir.';
    messagedlg(texto, mtinformation, [mbok], 0);
  finally
    freeandnil(q);
  end;
end;

procedure TfrmFaturamento.actGerarNotaFiscalExecute(Sender: TObject);
begin
  if ExisteSaldoNegativoPedido or
     (messagedlg('Você deseja gerar as notas fiscais para os pedidos?', mtConfirmation, [mbyes, mbno], 0) <> mryes) then
  begin
    exit;
  end;
  if not faturamento.GerarFaturamento then
  begin
    messagedlg('Não foi possível gerar as notas fiscais.', mterror, [mbok], 0);
    exit;
  end;
  messagedlg('Notas fiscais geradas com sucesso.', mtConfirmation, [mbok], 0);
  Abrir(cdsCDFATURAMENTO.asinteger);
  pgc.ActivePage := tbsNotaFiscal;
end;

procedure TfrmFaturamento.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmFaturamento.actabrirpedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitfatpedido);
end;

procedure TfrmFaturamento.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitfatpedido);
end;

procedure TfrmFaturamento.actabrirsaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitfatsaida);
end;

procedure TfrmFaturamento.actabrirtpfaturamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmFaturamento.actabrirduplicataExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsduplicata);
end;

procedure TfrmFaturamento.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitfatproduto);
end;

procedure TfrmFaturamento.FormShow(Sender: TObject);
begin
  pnl.caption := exibe;
  produto     := TProduto.create;
  cobranca    := tcobranca.create;
  faturamento := TFaturamento.create;
  registro.set_readonly_dados(self, true);
  edtCodigo.SetFocus;
end;

procedure TfrmFaturamento.FormDestroy(Sender: TObject);
begin
  freeandnil(produto);
  freeandnil(faturamento);
  freeandnil(cobranca);
  freeandnil(registro);
  freeandnil(conta);
end;

procedure TfrmFaturamento.actgerarfaturamentoExecute(Sender: TObject);
begin
  if cdsitfatproduto.RecordCount = 0 then
  begin
    messagedlg('Inserção de Produto obrigatório para gerar faturamento.'#13'Insira algum produto para poder continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  if cdsitfatcliente.RecordCount = 0 then
  begin
    messagedlg('Inserção de Cliente obrigatório para gerar faturamento.'#13'Insira algum Cliente para poder continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  faturamento.GerarFaturamento;
  abrir(cdsCDFATURAMENTO.asinteger);
end;

procedure TfrmFaturamento.actabrircliente2Execute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitfatcliente);
end;

procedure TfrmFaturamento.actgerarprodutomensalidadeExecute(Sender: TObject);
var
  dtcadastrosocio, cdclientei, cdclientef:string;
  cdtpcliente, cdcontrato, cdproduto, cdmensalidade:TStrings;
begin
  cdproduto     := TStringList.create;
  cdmensalidade := TStringList.create;
  cdcontrato    := TStringList.create;
  cdtpcliente   := TStringList.create;
  try
    if (DlgGerarProdutoMensalidade(cdproduto, cdtpcliente, cdmensalidade, cdcontrato, cdclientei, cdclientef, dtcadastrosocio)) and
       (cdproduto.Count > 0) and
       ((cdmensalidade.count > 0) or (cdcontrato.count > 0) or (cdtpcliente.count > 0))  and
       (GerarProdutoMensalidade(cdsCDFATURAMENTO.asinteger, cdproduto, cdtpcliente, cdmensalidade, cdcontrato, cdclientei, cdclientef, dtcadastrosocio)) then
    begin
      Abrir(cdsCDFATURAMENTO.asinteger);
    end;
  finally
    freeandnil(cdproduto);
    freeandnil(cdmensalidade);
    freeandnil(cdcontrato);
    freeandnil(cdtpcliente);
  end;
end;

function TfrmFaturamento.ImportarPedidoBanco(bomensalidade: boolean):boolean;
begin
  result   := false;
  if not faturamento.ImportarBanco(bomensalidade) then
  begin
    messagedlg('Não foram encontrados pedidos cadastrados no banco.', mtWarning, [mbok], 0);
    exit;
  end;
  messagedlg('Pedidos cadastrados no sistema importados com sucesso.', mtConfirmation, [mbok], 0);
  result   := true;
end;

procedure TfrmFaturamento.lbltpfaturamentoDblClick(Sender: TObject);
begin
  actAbrirtpfaturamento.onExecute(actAbrirtpfaturamento);
end;

function TfrmFaturamento.makesqlwhere_boleto(cdfaturamento, cdboleta, orderinglink: string; OrderingItemNo: integer; cdrota: string): string;
var
  direcao : string;
begin
  result := 'where i.cdempresa='+empresa.cdempresa.tostring+' and ';
  if cdfaturamento <> '' then
  begin
    result := result + 'i.cdfaturamento='+cdfaturamento+' ';
  end;
  if cdboleta <> '' then
  begin
    if cdfaturamento <> '' then
    begin
      result := result + 'and ';
    end;
    result := result + 'd.cdduplicata in ('+cdboleta+') ';
  end;
  if orderinglink <> '' then
  begin
    if OrderingItemNo > 0 then
    begin
      direcao := _asc
    end
    else if OrderingItemNo < 0 then
    begin
      direcao := _desc;
    end;
    if lowercase(orderinglink) = _nmbairro then
    begin
      result := result + ' order by c.'+orderinglink+' '+direcao
    end
    else
    begin
      result := result + ' order by '  +orderinglink+' '+direcao;
    end;
  end
  else
  begin
    result := result + 'order by ';
    if cdrota <> '' then
    begin
      result := result + 'ITROTA.nusequencia,';
    end;
    result := result + 'd.cdcliente';
  end;
end;

procedure TfrmFaturamento.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmFaturamento.actgerarcampanhaExecute(Sender: TObject);
begin
  if faturamento.GerarCampanha then
  begin
    abrir(faturamento.cdfaturamento);
    messagedlg('Campanha gerada!', mtinformation, [mbok], 0);
  end
  else
  begin
    messagedlg('Não há campanha para ser gerada.', mtinformation, [mbok], 0);
  end;
end;

procedure TfrmFaturamento.actgerarcobrancaExecute(Sender: TObject);
begin
  if cobranca.gerar_Cobranca_Faturamento(cdsCDFATURAMENTO.asstring) then
  begin
    MessageDlg('Cobrança gerada com sucesso!', mtInformation, [mbok], 0);
  end;
end;

procedure TfrmFaturamento.actgerarprodutoExecute(Sender: TObject);
begin
  if Gerar_faturamento_produto(faturamento) then
  begin
    MessageDlg('Produto gerado!', mtInformation, [mbOK], 0);
    Abrir(cdsCDFATURAMENTO.asinteger);
  end;
end;

procedure TfrmFaturamento.actimportarprodutoExecute(Sender: TObject);
begin
  if faturamento.ImportarProduto then
  begin
    abrir(cdsCDFATURAMENTO.asinteger);
  end;
end;

procedure TfrmFaturamento.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmFaturamento.cdsitfatclienteCDCLIENTEValidate(Sender: TField);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('select c.nmcliente'+
                    ',c.dsendereco'+
                    ',c.dsnumero' +
                    ',c.nmbairro'+
                    ',m.nmmunicipio'+
                    ',t.nmtpcliente'+
                    ',c.cdcliente '+
               'from cliente c '+
               'left join municipio m on m.cdmunicipio=c.cdmunicipio '+
               'left join tpcliente t on t.cdtpcliente=c.cdtpcliente and t.cdempresa=c.cdempresa '+
               'where c.cdempresa='+empresa.cdempresa.tostring+' and c.cdcliente='+sender.AsString);
    if q.q.fieldbyname(_cdcliente).AsLargeInt = 0 then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.asstring, maiuscula(_cliente)]), mterror, [mbok], 0);
      abort;
    end;
    cdsitfatclienteNMCLIENTE.Asstring   := q.q.fieldbyname(_nmcliente).Asstring;
    cdsitfatclientedsendereco.Asstring  := q.q.fieldbyname(_dsendereco).Asstring;
    cdsitfatclientedsnumero.Asstring    := q.q.fieldbyname(_dsnumero).Asstring;
    cdsitfatclientenmbairro.Asstring    := q.q.fieldbyname(_nmbairro).Asstring;
    cdsitfatclientenmmunicipio.Asstring := q.q.fieldbyname(_nmmunicipio).Asstring;
    cdsitfatclientenmtpcliente.Asstring := q.q.fieldbyname(_nm+_tp+_cliente).Asstring;
  finally
    freeandnil(q);
  end;
end;

procedure TfrmFaturamento.cdsitfatprodutoQTITEMValidate(Sender: TField);
begin
  cdsitfatprodutoVLTOTAL.AsCurrency := RoundTo(cdsitfatprodutoQTITEM.AsFloat * cdsitfatprodutoVLUNITARIO.AsCurrency, -2);
end;

procedure TfrmFaturamento.cdsitfatprodutoCDDIGITADOValidate(Sender: TField);
var
  cdproduto:integer;
  q : TClasseQuery;
begin
  cdproduto := produto.CodigoProdutoDigitado(sender.AsString, '');
  if cdproduto = 0 then
  begin
    abort;
  end;
  q := TClasseQuery.create;
  try
    q.q.Open('select cdproduto,nmproduto,vlvenda from produto where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+inttostr(cdproduto));
    if cdsitfatprodutoCDPRODUTO.Asstring <> q.q.fieldbyname(_cdproduto).Asstring then
    begin
      cdsitfatprodutoVLUNITARIO.AsString := q.q.fieldbyname(_vlvenda).AsString;
    end;
    cdsitfatprodutonmproduto.Asstring := q.q.fieldbyname(_nmproduto).Asstring;
    cdsitfatprodutocdproduto.Asstring := q.q.fieldbyname(_cdproduto).Asstring;
  finally
    freeandnil(q);
  end;
end;

procedure TfrmFaturamento.grditfatclienteDBTableView1CDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : LargeInt;
begin
  codigo := LocalIzarcliente;
  if codigo <> 0 then
  begin
    cdsitfatcliente.FieldByName(_CDCLIENTE).AsLargeInt := codigo;
  end;
end;

procedure TfrmFaturamento.grditfatprodutoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cdalternativo: string;
  codigo : integer;
begin
  codigo := LocalIzarproduto;
  if codigo <> 0 then
  begin
    cdalternativo := qregistro.StringdoCodigo(_produto, codigo, _cdalternativo);
    if cdalternativo <> '' then
    begin
      cdsitfatprodutoCDDIGITADO.Asstring := cdalternativo
    end
    else
    begin
      cdsitfatprodutoCDDIGITADO.Asstring := codigo.ToString;
    end;
  end;
end;

procedure TfrmFaturamento.cdsCDTPFATURAMENTOValidate(Sender: TField);
begin
  setrecord(sender.Asinteger);
end;

procedure TfrmFaturamento.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPfaturamento.asinteger:= registro.get_tipo_tabela_minumo;
  cdsCDFATURAMENTO.AsString   := GerarCodigo(_faturamento);
  cdsDTFATURAMENTO.AsDateTime := dtbanco;
  cdsCDSTFATURAMENTO.AsInteger := qregistro.Codigo_status_novo(tbl);
  cdsCDTPfaturamento.FocusControl;
end;

procedure TfrmFaturamento.cdsAfterScroll(DataSet: TDataSet);
begin
  faturamento.select(dataset);
  faturamento.itfatcliente.Ler(cdsitfatcliente);
  faturamento.itfatpedido.ler(cdsitfatpedido);
  faturamento.itfatproduto.Ler(cdsitfatproduto);
  faturamento.itfatsaida.ler(cdsitfatsaida);
  faturamento.stfaturamento.Select(faturamento.cdstfaturamento);

  setrecord(faturamento.CDTPFATURAMENTO);

  tbsnotafiscal.TabVisible := faturamento.CDSTFATURAMENTO = 4;
  tbsduplicata.TabVisible  := faturamento.CDSTFATURAMENTO = 4;

  if faturamento.tpfaturamento.bopedido = _s then // Habilita as ações de acordo com o status
  begin
    actImportarPedido.Enabled  := faturamento.stfaturamento.bogerarpedido = _s;
    actimportarproduto.Enabled := faturamento.stfaturamento.bogerarpedido = _s;
    actImportarPedido.Visible  := faturamento.stfaturamento.bogerarpedido = _s;
    actimportarproduto.Visible := faturamento.stfaturamento.bogerarpedido = _s;
    actGerarNotaFiscal.Enabled := faturamento.stfaturamento.bogerarsaida = _s;
  end;
  if (faturamento.tpfaturamento.boproduto = _s) and (faturamento.CDSTFATURAMENTO <> 1) then
  begin
    actgerarfaturamento.Enabled := faturamento.stfaturamento.bogerarsaida = _s;
  end;
  actImprimirBoletas.Enabled        := not ((faturamento.stfaturamento.bogerarpedido = _s) or (faturamento.stfaturamento.bogerarsaida = _s) or (faturamento.stfaturamento.bogerarcdbarra = _s));
  actImprimirSelecaoBoletas.Enabled := not ((faturamento.stfaturamento.bogerarpedido = _s) or (faturamento.stfaturamento.bogerarsaida = _s) or (faturamento.stfaturamento.bogerarcdbarra = _s));
  actgerarcampanha.visible          := faturamento.tpfaturamento.bocampanha = _s;
end;

procedure TfrmFaturamento.FormCreate(Sender: TObject);
begin
  AbrirTabelas;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  conta := tconta.create;
  GeraMenuRelatorio ('', btnimprimir, 41, cds, _faturamento);
end;

procedure TfrmFaturamento.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  actopcoes.Enabled := actEditar.Enabled;
end;

procedure TfrmFaturamento.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure TfrmFaturamento.cdsitfatprodutoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitfatproduto);
end;

procedure TfrmFaturamento.cdsitfatclienteBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitfatcliente);
end;

procedure TfrmFaturamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmFaturamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmFaturamento.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmFaturamento.tbvitfatprodutoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado  then
  begin
    actabrirprodutoExecute(actabrirproduto);
  end;
end;

procedure TfrmFaturamento.tbvitfatclienteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcliente then
  begin
    actabrirclienteExecute(actabrircliente);
  end;
end;

procedure TfrmFaturamento.tbvitfatpedidoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nupedido then
  begin
    actabrirpedidoExecute(actabrirpedido);
  end;
end;

procedure TfrmFaturamento.tbvitfatsaidaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nusaida then
  begin
    actabrirsaidaExecute(actabrirsaida);
  end;
end;

procedure TfrmFaturamento.tbvduplicataCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuduplicata then
  begin
    actabrirduplicataExecute(actabrirduplicata)
  end;
end;

procedure TfrmFaturamento.cbxcdtpfaturamentoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    setrecord(cbxcdtpfaturamento.EditValue);
  end;
end;

procedure TfrmFaturamento.cdsitfatclienteNewRecord(DataSet: TDataSet);
begin
  cdsitfatclienteCDITFATCLIENTE.AsString := GerarCodigo(_it+_fat+_cliente);
end;

procedure TfrmFaturamento.cdsitfatprodutoNewRecord(DataSet: TDataSet);
begin
  cdsitfatprodutoCDITFATproduto.AsString := GerarCodigo(_it+_fat+_produto);
  cdsitfatprodutoQTITEM.AsFloat          := 0;
end;

procedure TfrmFaturamento.actverificacaocontratoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(516, cdsCDFATURAMENTO.AsString);
end;

procedure TfrmFaturamento.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmFaturamento.actemailExecute(Sender: TObject);
begin
  btnemail.DropDown(false);
end;

procedure TfrmFaturamento.actemailboletoExecute(Sender: TObject);
var
  eventoemail : TEventoEmail;
  cliente     : TCliente;
  lstemail : string;
begin
  eventoemail := TEventoEmail.create;
  cliente     := TCliente.create;
  try
    eventoemail.Select(faturamento.tpfaturamento.cdeventoemail);
    cliente.select(cdsduplicata.FieldByName(_CDCLIENTE).AsLargeInt);
    lstemail := cliente.getListaEmailBoleto;
    ImpimirRelatorioPadrao1(643, makesqlwhere_boleto(cdsCDFATURAMENTO.AsString, cdsduplicataCDDUPLICATA.AsString, get_ordem, get_ordem_item), '',
                            _email,
                            lstemail,
                            eventoemail.emailcopia,
                            eventoemail.TratarTitulo(cdsduplicata),
                            eventoemail.TratarAssunto(cdsduplicata));
  finally
    eventoemail.Free;
    cliente.Free;
  end;
end;

procedure TfrmFaturamento.actemailboletotodosExecute(Sender: TObject);
var
  eventoemail : TEventoEmail;
  cliente : TCliente;
  lstemail : string;
begin
  cliente     := tcliente.create;
  eventoemail := TEventoEmail.create;
  cdsduplicata.DisableControls;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    eventoemail.Select(faturamento.tpfaturamento.cdeventoemail);
    cdsduplicata.First;
    frmprogressbar.gau.MaxValue := cdsduplicata.RecordCount;
    frmprogressbar.Show;
    while not cdsduplicata.Eof do
    begin
      frmprogressbar.gau.Progress := cdsduplicata.RecNo;
      Application.ProcessMessages;
      cliente.select(cdsduplicata.FieldByName(_CDCLIENTE).AsLargeInt);
      lstemail := cliente.getListaEmailBoleto;
      if lstemail  <> '' then
      begin
        ImpimirRelatorioPadrao1(643, makesqlwhere_boleto(cdsCDFATURAMENTO.AsString, cdsduplicataCDDUPLICATA.AsString, get_ordem, get_ordem_item), '',
                                _email+_direto,
                                lstemail,
                                eventoemail.emailcopia,
                                eventoemail.TratarTitulo(cdsduplicata),
                                eventoemail.TratarAssunto(cdsduplicata));
      end;
      cdsduplicata.Next;
    end;
  finally
    frmprogressbar.Free;
    cliente.Free;
    eventoemail.Free;
    cdsduplicata.EnableControls;
  end;
end;

procedure TfrmFaturamento.actexcluirsaidaExecute(Sender: TObject);
begin
  faturamento.Select(cds);
  if faturamento.excluirsaida then
  begin
    abrir(faturamento.cdfaturamento);
  end;
end;

procedure TfrmFaturamento.actexcluirtppedidoExecute(Sender: TObject);
var
  cdtppedido: integer;
begin
  cdtppedido := Selecionar_Tipo(_pedido);
  if cdtppedido <> 0 then
  begin
    faturamento.Select(cds);
    faturamento.excluirpedidopelotipo(cdtppedido);
    abrir(faturamento.cdfaturamento);
  end;
end;

procedure TfrmFaturamento.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

end.


