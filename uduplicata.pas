unit uduplicata;

interface

uses
  System.Actions, System.UITypes,
  windows, graphics, sysutils, dialogs, Controls, ExtCtrls, Classes, ActnList, StdCtrls,
  forms, Math, Menus,
  DB, DBCtrls, DBClient, FMTBcd, Provider, sqlexpr,
  uBaixa, uLocalizar, ustrings, uDlgEscolhePedido, uAssinaturaDigital,
  uexportarexcel, ulocalizarCliente, udatahora, uregistro, uconstantes,
  udlgRichEdit,
  classeInstrucaoSQL,classeempresa, classegerar, classeexecutasql, classeform,
  classeduplicata, classeaplicacao, classecliente, classeRegistro, classeadntcliente,
  classeretornasql, classemovbancario, classeeventoemail, classeusuario,
  cxGroupBox, cxPC,  dxBar, cxLabel, cxTextEdit, cxDBEdit, cxDBLookupComboBox,
  cxDBLabel, cxStyles, cxGridCustomTableView, cxGridDBBandedTableView, cxGridLevel,
  cxGrid, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxPCdxBarPopupMenu, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxCurrencyEdit, cxClasses, cxMemo, cxButtonEdit, cxCalc, cxGridDBTableView,
  cxGridTableView, cxGridBandedTableView, cxGridCustomView, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxMaskEdit, cxCalendar, cxNavigator, dxBarBuiltInMenu,
  classeconta, cxCheckBox;

type
  TfrmDuplicata = class(TForm)
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
    actAbrirSaida: TAction;
    actAbrirMovBancario: TAction;
    pumbaixa: TPopupMenu;
    actexcluirbaixa: TAction;
    Excluir2: TMenuItem;
    actencontrocontas: TAction;
    actbaixa: TAction;
    actAbrirCobranca: TAction;
    actabrirbanco: TAction;
    actAbrirFornecedor: TAction;
    actAbrirAutPagto: TAction;
    pumEncontroContas: TPopupMenu;
    Imprimir1: TMenuItem;
    actfechar: TAction;
    actparcelamento: TAction;
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
    dxBarButton2: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    Panel1: TPanel;
    bvl2: TBevel;
    bvl1: TBevel;
    lblcodigo: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    pgc: TcxPageControl;
    tbsbaixa: TcxTabSheet;
    tbscobrancabancaria: TcxTabSheet;
    tbsencontrocontas: TcxTabSheet;
    tbscobranca: TcxTabSheet;
    tbsboleto: TcxTabSheet;
    gbxvalores: TcxGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    gbxdados: TcxGroupBox;
    lblfaturamento: TLabel;
    lblcdcliente: TLabel;
    Label24: TLabel;
    lblplconta: TLabel;
    pnl: TcxLabel;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    btn2: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    actimprimirduplicata: TAction;
    dxBarButton3: TdxBarButton;
    actajustarbaixa: TAction;
    dxBarButton15: TdxBarButton;
    actabriradntcliente: TAction;
    actabrircte: TAction;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    sdsCDDUPLICATA: TIntegerField;
    sdsCDSTDUPLICATA: TIntegerField;
    sdsCDTPPAGAMENTO: TIntegerField;
    sdsCDREPRESENTANTE: TIntegerField;
    sdsCDSAIDA: TIntegerField;
    sdsCDSTREGCOBRANCA: TIntegerField;
    sdsNUAGENCIA: TStringField;
    sdsDTEMISSAO: TDateField;
    sdsDTVENCIMENTO: TDateField;
    sdsDTENTRADA: TDateField;
    sdsDTPRORROGACAO: TDateField;
    sdsVLDUPLICATA: TFMTBCDField;
    sdsDSHISTORICO: TStringField;
    sdsDTBAIXA: TDateField;
    sdsVLBAIXA: TFMTBCDField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsVLDEVOLUCAO: TFMTBCDField;
    sdsVLABATIMENTO: TFMTBCDField;
    sdsPRMORADIARIA: TFloatField;
    sdsVLSALDO: TFMTBCDField;
    sdsVLDEDUCAO: TFMTBCDField;
    sdsVLACRESCIMO: TFMTBCDField;
    sdsVLRECEBIDO: TFMTBCDField;
    sdsPRMULTA: TFloatField;
    sdsVLMULTA: TFMTBCDField;
    sdsVLJUROS: TFMTBCDField;
    sdsVLCOMISSAO: TFMTBCDField;
    sdsNUBOLETA: TStringField;
    sdsBOENVIADO: TStringField;
    sdsBOIMPRESSA: TStringField;
    sdsNUCAIXA: TIntegerField;
    sdsDSOBSERVACAO: TBlobField;
    sdsNUNOSSONUMERO: TStringField;
    sdsCDPLCONTA: TIntegerField;
    sdsNUPLCONTA: TStringField;
    sdsCDCONTA: TIntegerField;
    sdsVLJUROSNRECEBIDO: TFMTBCDField;
    sdsDSPARCELA: TStringField;
    sdsCDCTE: TIntegerField;
    sdsCDUSUARIOBAIXA: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsTSLIBERADO: TSQLTimeStampField;
    sdsCDUSUARIOL: TIntegerField;
    sdsCDCOMPUTADORL: TIntegerField;
    sdsCDTPDUPLICATA: TIntegerField;
    sdsNUCPFCNPJ: TStringField;
    sdsNUCPFCNPJ2: TStringField;
    sdsNMEMITENTE: TStringField;
    sdsNMEMITENTE2: TStringField;
    sdsNUCONTACORRENTE: TStringField;
    sdsTPPESSOA: TStringField;
    sdsCDBANCODEVOLUCAO: TIntegerField;
    cdsCDDUPLICATA: TIntegerField;
    cdsCDSTDUPLICATA: TIntegerField;
    cdsCDTPPAGAMENTO: TIntegerField;
    cdsCDREPRESENTANTE: TIntegerField;
    cdsCDSAIDA: TIntegerField;
    cdsCDSTREGCOBRANCA: TIntegerField;
    cdsNUAGENCIA: TStringField;
    cdsDTEMISSAO: TDateField;
    cdsDTVENCIMENTO: TDateField;
    cdsDTENTRADA: TDateField;
    cdsDTPRORROGACAO: TDateField;
    cdsVLDUPLICATA: TFMTBCDField;
    cdsDSHISTORICO: TStringField;
    cdsDTBAIXA: TDateField;
    cdsVLBAIXA: TFMTBCDField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsVLDEVOLUCAO: TFMTBCDField;
    cdsVLABATIMENTO: TFMTBCDField;
    cdsPRMORADIARIA: TFloatField;
    cdsVLSALDO: TFMTBCDField;
    cdsVLDEDUCAO: TFMTBCDField;
    cdsVLACRESCIMO: TFMTBCDField;
    cdsVLRECEBIDO: TFMTBCDField;
    cdsPRMULTA: TFloatField;
    cdsVLMULTA: TFMTBCDField;
    cdsVLJUROS: TFMTBCDField;
    cdsVLCOMISSAO: TFMTBCDField;
    cdsNUBOLETA: TStringField;
    cdsBOENVIADO: TStringField;
    cdsBOIMPRESSA: TStringField;
    cdsNUCAIXA: TIntegerField;
    cdsDSOBSERVACAO: TBlobField;
    cdsNUNOSSONUMERO: TStringField;
    cdsCDPLCONTA: TIntegerField;
    cdsNUPLCONTA: TStringField;
    cdsCDCONTA: TIntegerField;
    cdsVLJUROSNRECEBIDO: TFMTBCDField;
    cdsDSPARCELA: TStringField;
    cdsCDCTE: TIntegerField;
    cdsCDUSUARIOBAIXA: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsTSLIBERADO: TSQLTimeStampField;
    cdsCDUSUARIOL: TIntegerField;
    cdsCDCOMPUTADORL: TIntegerField;
    cdsCDTPDUPLICATA: TIntegerField;
    cdsNUCPFCNPJ: TStringField;
    cdsNUCPFCNPJ2: TStringField;
    cdsNMEMITENTE: TStringField;
    cdsNMEMITENTE2: TStringField;
    cdsNUCONTACORRENTE: TStringField;
    cdsTPPESSOA: TStringField;
    cdsCDBANCODEVOLUCAO: TIntegerField;
    cdsitcobranca: TClientDataSet;
    cdsencontrocontas: TClientDataSet;
    cdsbaixa: TClientDataSet;
    cdscobranca: TClientDataSet;
    dtsitcobranca: TDataSource;
    dtsencontrocontas: TDataSource;
    dtsbaixa: TDataSource;
    dtscobranca: TDataSource;
    sdsitcobranca: TSQLDataSet;
    sdsencontrocontas: TSQLDataSet;
    sdsbaixa: TSQLDataSet;
    sdscobranca: TSQLDataSet;
    sdsitcobrancaCDCOBRANCA: TIntegerField;
    sdsitcobrancaDTEMISSAO: TDateField;
    sdsitcobrancaNMCONTA: TStringField;
    sdsitcobrancaNMBANCO: TStringField;
    cdssdsitcobranca: TDataSetField;
    cdsitcobrancaCDCOBRANCA: TIntegerField;
    cdsitcobrancaDTEMISSAO: TDateField;
    cdsitcobrancaNMCONTA: TStringField;
    cdsitcobrancaNMBANCO: TStringField;
    sdsencontrocontasNUENCONTROCONTAS: TIntegerField;
    sdsencontrocontasCDDUPLICATA: TIntegerField;
    sdsencontrocontasCDAUTPAGTO: TIntegerField;
    sdsencontrocontasNUAUTPAGTO: TStringField;
    sdsencontrocontasNMCLIENTE: TStringField;
    sdsencontrocontasNMFORNECEDOR: TStringField;
    sdsencontrocontasDTVENCIMENTO: TDateField;
    sdsencontrocontasVLAUTPAGTO: TFMTBCDField;
    sdsencontrocontasVLSALDOAUTPAGTO: TFMTBCDField;
    sdsencontrocontasVLBAIXA: TFMTBCDField;
    sdsencontrocontasVLMULTA: TFMTBCDField;
    sdsencontrocontasVLJURO: TFMTBCDField;
    sdsencontrocontasVLDESCONTO: TFMTBCDField;
    sdsencontrocontasVLABATIMENTO: TFMTBCDField;
    sdsencontrocontasVLDEVOLUCAO: TFMTBCDField;
    sdsencontrocontasNMSTAPROVACAO: TStringField;
    cdssdsencontrocontas: TDataSetField;
    cdsencontrocontasNUENCONTROCONTAS: TIntegerField;
    cdsencontrocontasCDDUPLICATA: TIntegerField;
    cdsencontrocontasCDAUTPAGTO: TIntegerField;
    cdsencontrocontasNUAUTPAGTO: TStringField;
    cdsencontrocontasNMCLIENTE: TStringField;
    cdsencontrocontasNMFORNECEDOR: TStringField;
    cdsencontrocontasDTVENCIMENTO: TDateField;
    cdsencontrocontasVLAUTPAGTO: TFMTBCDField;
    cdsencontrocontasVLSALDOAUTPAGTO: TFMTBCDField;
    cdsencontrocontasVLBAIXA: TFMTBCDField;
    cdsencontrocontasVLMULTA: TFMTBCDField;
    cdsencontrocontasVLJURO: TFMTBCDField;
    cdsencontrocontasVLDESCONTO: TFMTBCDField;
    cdsencontrocontasVLABATIMENTO: TFMTBCDField;
    cdsencontrocontasVLDEVOLUCAO: TFMTBCDField;
    cdsencontrocontasNMSTAPROVACAO: TStringField;
    sdsbaixaCDBAIXA: TIntegerField;
    sdsbaixaCDMOVBANCARIO: TIntegerField;
    sdsbaixaCDTPBAIXA: TIntegerField;
    sdsbaixaCDADNTCLIENTE: TIntegerField;
    sdsbaixaCDAUTPAGTO: TIntegerField;
    sdsbaixaCDDUPLICATA: TIntegerField;
    sdsbaixaCDADNTFORNECEDOR: TIntegerField;
    sdsbaixaCDCHEQUE: TIntegerField;
    sdsbaixaNUBAIXA: TStringField;
    sdsbaixaDTBAIXA: TDateField;
    sdsbaixaVLMULTA: TFMTBCDField;
    sdsbaixaVLJURO: TFMTBCDField;
    sdsbaixaVLBAIXA: TFMTBCDField;
    sdsbaixaVLDESCONTO: TFMTBCDField;
    sdsbaixaVLABATIMENTO: TFMTBCDField;
    sdsbaixaVLDEVOLUCAO: TFMTBCDField;
    sdsbaixaVLLIQUIDO: TFMTBCDField;
    sdsbaixaVLJURONRECEBIDO: TFMTBCDField;
    sdsbaixaCDUSUARIOI: TIntegerField;
    sdsbaixaCDUSUARIOA: TIntegerField;
    sdsbaixaCDCOMPUTADORI: TIntegerField;
    sdsbaixaCDCOMPUTADORA: TIntegerField;
    sdsbaixaTSINCLUSAO: TSQLTimeStampField;
    sdsbaixaTSALTERACAO: TSQLTimeStampField;
    sdsbaixaDSHISTORICO: TStringField;
    sdsbaixaNMCONTA: TStringField;
    sdsbaixaDTEMISSAO: TDateField;
    cdssdsbaixa: TDataSetField;
    cdsbaixaCDBAIXA: TIntegerField;
    cdsbaixaCDMOVBANCARIO: TIntegerField;
    cdsbaixaCDTPBAIXA: TIntegerField;
    cdsbaixaCDADNTCLIENTE: TIntegerField;
    cdsbaixaCDAUTPAGTO: TIntegerField;
    cdsbaixaCDDUPLICATA: TIntegerField;
    cdsbaixaCDADNTFORNECEDOR: TIntegerField;
    cdsbaixaCDCHEQUE: TIntegerField;
    cdsbaixaNUBAIXA: TStringField;
    cdsbaixaDTBAIXA: TDateField;
    cdsbaixaVLMULTA: TFMTBCDField;
    cdsbaixaVLJURO: TFMTBCDField;
    cdsbaixaVLBAIXA: TFMTBCDField;
    cdsbaixaVLDESCONTO: TFMTBCDField;
    cdsbaixaVLABATIMENTO: TFMTBCDField;
    cdsbaixaVLDEVOLUCAO: TFMTBCDField;
    cdsbaixaVLLIQUIDO: TFMTBCDField;
    cdsbaixaVLJURONRECEBIDO: TFMTBCDField;
    cdsbaixaCDUSUARIOI: TIntegerField;
    cdsbaixaCDUSUARIOA: TIntegerField;
    cdsbaixaCDCOMPUTADORI: TIntegerField;
    cdsbaixaCDCOMPUTADORA: TIntegerField;
    cdsbaixaTSINCLUSAO: TSQLTimeStampField;
    cdsbaixaTSALTERACAO: TSQLTimeStampField;
    cdsbaixaDSHISTORICO: TStringField;
    cdsbaixaNMCONTA: TStringField;
    cdsbaixaDTEMISSAO: TDateField;
    sdscobrancaDTCONTATO: TDateField;
    sdscobrancaDTAGENDAMENTO: TDateField;
    sdscobrancaDSCONTATO: TStringField;
    sdscobrancaVLSALDO: TFMTBCDField;
    sdscobrancaNMSTREGCOBRANCA: TStringField;
    sdscobrancaCDDUPLICATA: TIntegerField;
    sdscobrancaTSINCLUSAO: TSQLTimeStampField;
    sdscobrancaCDUSUARIOI: TIntegerField;
    sdscobrancaCDCOMPUTADORI: TIntegerField;
    sdscobrancaTSALTERACAO: TSQLTimeStampField;
    sdscobrancaCDUSUARIOA: TIntegerField;
    sdscobrancaCDCOMPUTADORA: TIntegerField;
    cdssdscobranca: TDataSetField;
    cdscobrancaDTCONTATO: TDateField;
    cdscobrancaDTAGENDAMENTO: TDateField;
    cdscobrancaDSCONTATO: TStringField;
    cdscobrancaVLSALDO: TFMTBCDField;
    cdscobrancaNMSTREGCOBRANCA: TStringField;
    cdscobrancaCDDUPLICATA: TIntegerField;
    cdscobrancaTSINCLUSAO: TSQLTimeStampField;
    cdscobrancaCDUSUARIOI: TIntegerField;
    cdscobrancaCDCOMPUTADORI: TIntegerField;
    cdscobrancaTSALTERACAO: TSQLTimeStampField;
    cdscobrancaCDUSUARIOA: TIntegerField;
    cdscobrancaCDCOMPUTADORA: TIntegerField;
    edtdtentrada: TcxDBDateEdit;
    edtdtemissao: TcxDBDateEdit;
    edtdtvencimento: TcxDBDateEdit;
    edtdtprorrogacao: TcxDBDateEdit;
    cbxcdtpcobranca: TcxDBLookupComboBox;
    edtdshistorico: TcxDBTextEdit;
    edtvlduplicata: TcxDBCalcEdit;
    edtprmoradiaria: TcxDBCalcEdit;
    lblvlsaldo: TcxDBLabel;
    edtcdcliente: TcxDBButtonEdit;
    edtnuplconta: TcxDBButtonEdit;
    lblnusaida: TDBText;
    lblnmplconta: TDBText;
    edtcodigo: TcxTextEdit;
    grdbaixaLevel1: TcxGridLevel;
    grdbaixa: TcxGrid;
    tbvbaixa: TcxGridDBBandedTableView;
    sdsbaixaNMTPBAIXA: TStringField;
    sdsNMPLCONTA: TStringField;
    tbvbaixaCDMOVBANCARIO: TcxGridDBBandedColumn;
    tbvbaixaCDADNTCLIENTE: TcxGridDBBandedColumn;
    tbvbaixaDTBAIXA: TcxGridDBBandedColumn;
    tbvbaixaVLMULTA: TcxGridDBBandedColumn;
    tbvbaixaVLJURO: TcxGridDBBandedColumn;
    tbvbaixaVLBAIXA: TcxGridDBBandedColumn;
    tbvbaixaVLDESCONTO: TcxGridDBBandedColumn;
    tbvbaixaVLABATIMENTO: TcxGridDBBandedColumn;
    tbvbaixaVLDEVOLUCAO: TcxGridDBBandedColumn;
    tbvbaixaVLLIQUIDO: TcxGridDBBandedColumn;
    tbvbaixaDSHISTORICO: TcxGridDBBandedColumn;
    tbvbaixaNMCONTA: TcxGridDBBandedColumn;
    tbvbaixaDTEMISSAO: TcxGridDBBandedColumn;
    cdsNMPLCONTA: TStringField;
    sdsNUSAIDA: TIntegerField;
    cdsNUSAIDA: TIntegerField;
    cdsbaixaNMTPBAIXA: TStringField;
    tbvitcobranca: TcxGridDBTableView;
    grditcobrancaLevel1: TcxGridLevel;
    grditcobranca: TcxGrid;
    grdencontrocontasLevel1: TcxGridLevel;
    grdencontrocontas: TcxGrid;
    tbvencontrocontas: TcxGridDBBandedTableView;
    tbvencontrocontasNUENCONTROCONTAS: TcxGridDBBandedColumn;
    tbvencontrocontasCDAUTPAGTO: TcxGridDBBandedColumn;
    tbvencontrocontasCDFORNECEDOR: TcxGridDBBandedColumn;
    tbvencontrocontasNMFORNECEDOR: TcxGridDBBandedColumn;
    tbvencontrocontasDTVENCIMENTO: TcxGridDBBandedColumn;
    tbvencontrocontasVLAUTPAGTO: TcxGridDBBandedColumn;
    tbvencontrocontasVLSALDOAUTPAGTO: TcxGridDBBandedColumn;
    tbvencontrocontasVLBAIXA: TcxGridDBBandedColumn;
    tbvencontrocontasVLMULTA: TcxGridDBBandedColumn;
    tbvencontrocontasVLJURO: TcxGridDBBandedColumn;
    tbvencontrocontasVLDESCONTO: TcxGridDBBandedColumn;
    tbvencontrocontasVLABATIMENTO: TcxGridDBBandedColumn;
    tbvencontrocontasVLDEVOLUCAO: TcxGridDBBandedColumn;
    tbvencontrocontasNMSTAPROVACAO: TcxGridDBBandedColumn;
    tbvitcobrancaCDCOBRANCA: TcxGridDBColumn;
    tbvitcobrancaDTEMISSAO: TcxGridDBColumn;
    tbvitcobrancaNMCONTA: TcxGridDBColumn;
    tbvitcobrancaNMBANCO: TcxGridDBColumn;
    tbvcobranca: TcxGridDBTableView;
    grdcobrancaLevel1: TcxGridLevel;
    grdcobranca: TcxGrid;
    tbvcobrancaDTCONTATO: TcxGridDBColumn;
    tbvcobrancaDTAGENDAMENTO: TcxGridDBColumn;
    tbvcobrancaDSCONTATO: TcxGridDBColumn;
    tbvcobrancaVLSALDO: TcxGridDBColumn;
    tbvcobrancaNMSTREGCOBRANCA: TcxGridDBColumn;
    barbaixa: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton4: TdxBarButton;
    sdsNMUSUARIO: TStringField;
    cdsNMUSUARIO: TStringField;
    gbxdsobservacao: TcxGroupBox;
    memdsobservacao: TcxDBMemo;
    gbxtotal: TcxGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    txtvlbaixa: TcxDBLabel;
    txtvlrecebido: TcxDBLabel;
    gbxacrescimos: TcxGroupBox;
    Label1: TLabel;
    Label27: TLabel;
    Label10: TLabel;
    txtvljuros: TcxDBLabel;
    txtvlmulta: TcxDBLabel;
    gbxdeducoes: TcxGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    txtvldesconto: TcxDBLabel;
    txtvlabatimento: TcxDBLabel;
    txtvldevolucao: TcxDBLabel;
    gbxbaixa: TcxGroupBox;
    Label14: TLabel;
    Label9: TLabel;
    txt1: TcxDBLabel;
    txtusuariobaixa: TcxDBLabel;
    edtnunossonumero: TcxDBTextEdit;
    lbl1: TLabel;
    actimprimirboleto: TAction;
    dxBarButton7: TdxBarButton;
    sdsCDSETBOLETO: TIntegerField;
    cdsCDSETBOLETO: TIntegerField;
    edtprmulta: TcxDBCalcEdit;
    Label7: TLabel;
    cxDBLabel1: TcxDBLabel;
    sdsDSOBSERVACAOBOLETO: TBlobField;
    cdsDSOBSERVACAOBOLETO: TBlobField;
    cxGroupBox1: TcxGroupBox;
    memdsobservacaoboleto: TcxDBMemo;
    tbvbaixaNMMOVIMENTACAO: TcxGridDBBandedColumn;
    sdsbaixaNMMOVIMENTACAO: TStringField;
    cdsbaixaNMMOVIMENTACAO: TStringField;
    sdsbaixaVLCOMISSAO: TFMTBCDField;
    cdsbaixaVLCOMISSAO: TFMTBCDField;
    tbvbaixaVLCOMISSAO: TcxGridDBBandedColumn;
    sdsCDTPCOBRANCA: TIntegerField;
    cdsCDTPCOBRANCA: TIntegerField;
    sdsCDNEGOCIACAOSAIDA: TIntegerField;
    sdsCDCNTCUSTO: TIntegerField;
    sdsNUDUPLICATA: TStringField;
    cdsCDNEGOCIACAOSAIDA: TIntegerField;
    cdsCDCNTCUSTO: TIntegerField;
    cdsNUDUPLICATA: TStringField;
    btnemail: TdxBarLargeButton;
    actemail: TAction;
    pumemail: TdxBarPopupMenu;
    actemailduplicata: TAction;
    actemailboleto: TAction;
    dxBarButton6: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    lblrepresentante: TLabel;
    txtnmrepresentante: TDBText;
    sdsNMREPRESENTANTE: TStringField;
    cdsNMREPRESENTANTE: TStringField;
    actabrirrepresentante: TAction;
    cdsVLJUROSDIA: TCurrencyField;
    lbl2: TLabel;
    lbl3: TLabel;
    txtvlmultadia: TcxDBLabel;
    txtvljurosdia: TcxDBLabel;
    cdsVLMULTADIA: TCurrencyField;
    sdsCDNEGOCIACAO: TIntegerField;
    cdsCDNEGOCIACAO: TIntegerField;
    actabrirnegociacao: TAction;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    actabrircontrato: TAction;
    sdsCDITCONTRATOPARCELA: TIntegerField;
    cdsCDITCONTRATOPARCELA: TIntegerField;
    sdsCDCONTRATO: TIntegerField;
    cdsCDCONTRATO: TIntegerField;
    cxDBLabel2: TcxDBLabel;
    Label8: TLabel;
    lblnmcntcusto: TDBText;
    edtnucntcusto: TcxDBButtonEdit;
    lblcntcusto: TLabel;
    sdsNMCNTCUSTO: TStringField;
    sdsNUCNTCUSTO: TStringField;
    cdsNUCNTCUSTO: TStringField;
    cdsNMCNTCUSTO: TStringField;
    sdsNMCLIENTE: TStringField;
    cdsNMCLIENTE: TStringField;
    lblNMCLIENTE: TDBText;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsVLCOMISSAOABERTA: TFMTBCDField;
    sdsencontrocontasCDCLIENTE: TLargeintField;
    sdsencontrocontasCDFORNECEDOR: TLargeintField;
    sdsbaixaCDEMPRESA: TLargeintField;
    sdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
    sdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    sdsbaixaPRCOMISSAO: TFloatField;
    sdsbaixaVLJUROSNRECEBIDO: TFMTBCDField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsVLCOMISSAOABERTA: TFMTBCDField;
    cdsencontrocontasCDCLIENTE: TLargeintField;
    cdsencontrocontasCDFORNECEDOR: TLargeintField;
    cdsbaixaCDEMPRESA: TLargeintField;
    cdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
    cdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    cdsbaixaPRCOMISSAO: TFloatField;
    cdsbaixaVLJUROSNRECEBIDO: TFMTBCDField;
    Bevel1: TBevel;
    sdsBORATEIOCNTCUSTO: TStringField;
    sdsBORATEIOPLCONTA: TStringField;
    cdsBORATEIOCNTCUSTO: TStringField;
    cdsBORATEIOPLCONTA: TStringField;
    ckbborateiocntcusto: TcxDBCheckBox;
    ckbBORATEIOPLCONTA: TcxDBCheckBox;
    Label12: TLabel;
    lblnunossonumero: TcxDBLabel;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCODIGOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actAbrirClienteExecute(Sender: TObject);
    procedure actAbrirSaidaExecute(Sender: TObject);
    procedure actAbrirMovBancarioExecute(Sender: TObject);
    procedure actencontrocontasExecute(Sender: TObject);
    procedure actbaixaExecute(Sender: TObject);
    procedure actAbrirCobrancaExecute(Sender: TObject);
    procedure grditcobrancaDblClick(Sender: TObject);
    procedure actabrirbancoExecute(Sender: TObject);
    procedure actAbrirFornecedorExecute(Sender: TObject);
    procedure actAbrirAutPagtoExecute(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actparcelamentoExecute(Sender: TObject);
    procedure actimprimirduplicataExecute(Sender: TObject);
    procedure actajustarbaixaExecute(Sender: TObject);
    procedure actabriradntclienteExecute(Sender: TObject);
    procedure actabrircteExecute(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure lblnusaidaDblClick(Sender: TObject);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure edtcodigoPropertiesEditValueChanged(Sender: TObject);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsVLDUPLICATAValidate(Sender: TField);
    procedure cdsDTVENCIMENTOValidate(Sender: TField);
    procedure cdsNUPLCONTAValidate(Sender: TField);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvbaixaCellDblClick(Sender: TcxCustomGridTableView;ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actexcluirbaixaExecute(Sender: TObject);
    procedure cdsbaixaAfterScroll(DataSet: TDataSet);
    procedure eventoKeyPress(Sender: TObject; var Key: Char);
    procedure actimprimirboletoExecute(Sender: TObject);
    procedure exportagradeexcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitcobrancaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actemailExecute(Sender: TObject);
    procedure actemailduplicataExecute(Sender: TObject);
    procedure actemailboletoExecute(Sender: TObject);
    procedure actabrirrepresentanteExecute(Sender: TObject);
    procedure txtnmrepresentanteDblClick(Sender: TObject);
    procedure cdsCalcFields(DataSet: TDataSet);
    procedure actabrirnegociacaoExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actabrircontratoExecute(Sender: TObject);
    procedure Label17DblClick(Sender: TObject);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNUCNTCUSTOValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure lblNMCLIENTEDblClick(Sender: TObject);
    procedure tbvbaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private      { Private declarations }
    tipo, cdold : string;
    duplicata   : TDuplicata;
    adntcliente : TAdntcliente;
    cliente     : TCliente;
    procedure ativar_datas;
    procedure set_campo_nota;
    procedure set_exibir_representante;
    function se_ativar_documento:Boolean;
    function check_adnt_cliente: boolean;
  public  { Public declarations }
    registro    : TRegistro;
    function Abrir          (codigo     :integer):boolean;
  end;

const
  tbl      = _duplicata;
  exibe    = 'Contas a Receber';
  artigoI  = 'a';
var
  frmDuplicata: TfrmDuplicata;

implementation

uses umain,
  uduplicataparcelamento,
  uimprimirrelatoriopadrao,
  uDtmMain, Variants, classeboletoACBR, uMenuRelatorio, uProtector;

{$R *.DFM}

function TfrmDuplicata.Abrir(codigo:integer):boolean;
begin
  result :=registro.RegistroAbrir(codigo);
  if not result then
  begin
    exit;
  end;
  cdold := cdsCDDUPLICATA.asstring;
end;

procedure TfrmDuplicata.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure TfrmDuplicata.actNovoExecute(Sender: TObject);
begin
  registro.Novo(sender);
end;

procedure TfrmDuplicata.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmDuplicata.actSalvarExecute(Sender: TObject);
begin
  if empresa.financeiro.boplconta and (edtnuplconta.Text = '') and cdsCDsaida.IsNull and cdsCDCTE.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Plano+' '+_de+' '+_contas]), mtinformation, [mbok], 0);
    edtnuplconta.SetFocus;
    Abort;
  end;
  registro.Salvar;
end;

procedure TfrmDuplicata.actExcluirExecute(Sender: TObject);
begin
  registro.Excluir;
end;

procedure TfrmDuplicata.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmDuplicata.actCancelarExecute(Sender: TObject);
begin
  registro.Cancelar;
end;

procedure TfrmDuplicata.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
  ativar_datas;
end;

procedure TfrmDuplicata.edtCODIGOKeyPress(Sender: TObject; var Key: Char);
var
  codigo : string;
begin
  codigo := edtcodigo.text;
  if tipo = 'Nosso Número' then
  begin
    if (key <> #13) or (TEdit(sender).text = '') then
    begin
      exit;
    end;
    codigo := CodigodoCampo(tbl, codigo, _nunossonumero);
    if codigo = '' then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [codigo, maiuscula(exibe)]), mterror, [mbok], 0);
      edtcodigo.text := cdsNUDUPLICATA.AsString;
      edtcodigo.selectall;
      exit;
    end;
    codigo            := NomedoCodigo(tbl, codigo, _nuduplicata);
    tipo              := 'Código';
    lblcodigo.Caption := tipo;
    edtcodigo.Text    := codigo;
  end;
  if registro.CodigoKeyPress(Sender, Key, actnovo.enabled) then
  begin
    edtcodigoPropertiesEditValueChanged(Sender);
  end;
end;

procedure TfrmDuplicata.edtCodigoEnter(Sender: TObject);
begin
  TcxTextEdit(sender).selectall;
end;

procedure TfrmDuplicata.FormShow(Sender: TObject);
begin
  pnl.caption := exibe;
  duplicata                      := TDuplicata.create;
  cliente                        := TCliente.create;
  tbscobrancabancaria.TabVisible := empresa.financeiro.bocobrancabancaria;
  tbsCobranca.TabVisible         := empresa.financeiro.duplicata.bocobranca;

  lblplconta.visible   := empresa.financeiro.boplconta;
  edtnuplconta.Visible := lblplconta.visible;
  lblnmplconta.Visible := lblplconta.visible;
  ckbBORATEIOPLCONTA.Visible := lblplconta.Visible;

  lblcntcusto.visible   := empresa.financeiro.bocntcusto;
  edtnucntcusto.Visible := lblcntcusto.visible;
  lblnmcntcusto.Visible := lblcntcusto.visible;
  ckbborateiocntcusto.Visible := lblcntcusto.Visible;

  tipo                 := 'Código';
  pgc.ActivePageIndex  := 1;
  pgc.ActivePageIndex  := 0;
  adntcliente          := tadntcliente.create;
  edtCodigo.SetFocus;
end;

procedure TfrmDuplicata.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure TfrmDuplicata.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure TfrmDuplicata.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure TfrmDuplicata.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure TfrmDuplicata.ativar_datas;
begin
  edtdtemissao.Properties.ReadOnly    := not se_ativar_documento;
  edtDTVENCIMENTO.Properties.ReadOnly := not se_ativar_documento;
  edtcdcliente.Properties.ReadOnly    := not se_ativar_documento;
  edtvlduplicata.Properties.ReadOnly  := not se_ativar_documento;
  {
  if edtcdcliente.Enabled then
  begin
    edtcdcliente.Style.Font.Style := [];
  end
  else
  begin
    edtcdcliente.Style.Font.Style := [fsBold];
  end;
  }
end;

procedure TfrmDuplicata.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmDuplicata.set_campo_nota;
begin
  if not cdsCDCTE.IsNull then
  begin
    lblfaturamento.Caption := 'CT-e';
    lblnusaida.DataField   := _CDCTE;
  end
  else if not cdscdsaida.IsNull then
  begin
    lblfaturamento.Caption := 'Nota Fiscal';
    lblnusaida.DataField   := _NUSAIDA;
  end
  else if not cdsCDNEGOCIACAO.IsNull then
  begin
    lblfaturamento.Caption := 'Negociação';
    lblnusaida.DataField   := _cdnegociacao;
  end
  else if not cdsCDCONTRATO.IsNull then
  begin
    lblfaturamento.Caption := 'Contrato';
    lblnusaida.DataField   := _cdcontrato;
  end;
end;

procedure TfrmDuplicata.set_exibir_representante;
begin
  lblrepresentante.visible   := not cdscdrepresentante.isnull;
  txtnmrepresentante.Visible := not cdscdrepresentante.IsNull;
end;

function TfrmDuplicata.se_ativar_documento: Boolean;
begin
  result := not((not cdsNUSAIDA.IsNull) or (not cdsCDCTE.IsNull) or (not cdsCDnegociacao.IsNull))
end;

procedure TfrmDuplicata.edtCODIGOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
  if Key = 119 then
  begin
    if tipo = 'Código' then
    begin
      tipo := 'Nosso Número'
    end
    else if tipo = 'Nosso Número' then
    begin
      tipo := 'Código';
    end;
    lblcodigo.Caption := tipo;
  end;
end;

procedure TfrmDuplicata.actAbrirClienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmDuplicata.txtnmrepresentanteDblClick(Sender: TObject);
begin
  actAbrirrepresentante.onExecute(actAbrirrepresentante);
end;

procedure TfrmDuplicata.actAbrirSaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmDuplicata.actAbrirMovBancarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsbaixa);
end;

procedure TfrmDuplicata.actabrirnegociacaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmDuplicata.actabrirrepresentanteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmDuplicata.actemailboletoExecute(Sender: TObject);
var
  nome_arquivo : TStrings;
  lstemail : string;
  eventoemail : TEventoEmail;
begin
  if adntcliente.ClientePossuiAdiantamento(cds.FieldByName(_CDCLIENTE).asstring) and (messagedlg('Cliente possui adiantamento.'#13'Deseja realmente enviar email do boleto?', mtinformation, [mbyes, mbno], 0) = mrno) then
  begin
    exit;
  end;
  if not duplicata.verificarSeNota55JaFoiEnviada(cdscdduplicata.asinteger) then
  begin
    messagedlg('Não é possível enviar email de boleto de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota para depois enviar email do boleto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  nome_arquivo := TStringList.Create;
  eventoemail := TEventoEmail.create;
  try
    nome_arquivo.Text := duplicata.gerarPDFBoletoACBR;
    if nome_arquivo.Text = '' then
    begin
      Exit;
    end;
    cliente.select(cds.FieldByName(_cdcliente).AsLargeInt);
    lstemail := cliente.getListaEmailBoleto;
    if lstemail = '' then
    begin
      lstemail := cliente.email;
    end;
    if empresa.financeiro.duplicata.cdeventoemailduplicataboleto <> 0 then
    begin
      eventoemail.Select(empresa.financeiro.duplicata.cdeventoemailduplicataboleto);
      Formatar_Email(False, eventoemail.TratarTitulo(cds), eventoemail.TratarAssunto(cds), nome_arquivo.Text, lstemail, eventoemail.emailcopia, usuario.email_.SmtpUser, usuario.email_.SmtpPass, '');
    end
    else
    begin
      Formatar_Email(False, '', '', nome_arquivo.Text, lstemail, '');
    end;
    Abrir(cdsCDDUPLICATA.asinteger);
  finally
    freeandnil(nome_arquivo);
    freeandnil(eventoemail);
  end;
end;

procedure TfrmDuplicata.actemailduplicataExecute(Sender: TObject);
begin
  cliente.select(cds.FieldByName(_cdcliente).AsLargeInt);
  ImpimirRelatorioPadrao1(331, cdsCDDUPLICATA.AsString, '', _email, cliente.email, '', '', '');
end;

procedure TfrmDuplicata.actemailExecute(Sender: TObject);
begin
  btnemail.DropDown(false);
end;

procedure TfrmDuplicata.actencontrocontasExecute(Sender: TObject);
begin
  if not duplicata.verificarSeNota55JaFoiEnviada(cdscdduplicata.asinteger) then
  begin
    messagedlg('Não é possível baixar contas a receber de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota antes de baixar o contas a receber.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if BaixarEncontroContas(tbl, cdsCDDUPLICATA.asInteger) then
  begin
    abrir(cdsCDDUPLICATA.asinteger);
  end;
end;

function Tfrmduplicata.check_adnt_cliente:boolean;
var
  cdadntcliente, valor : TStrings;
  cdadiantamento : string;
begin
  result        := False;
  cdadntcliente := TStringlist.create;
  valor         := TStringList.create;
  try
    if (cdsCDSTduplicata.AsInteger = 1) and
       Tadntcliente.clientePossuiAdiantamento(cds.fieldbyname(_cdcliente).asstring, cdadntcliente, valor) and
       (cdadntcliente.count > 0 ) and
       (messagedlg('Cliente '+cds.fieldbyname(_nmcliente).AsString+' possui adiantamento.'#13+
                   'Deseja baixar contas a receber '+cdsnuduplicata.asstring+' com adiantamento?', mtinformation, [mbyes, mbno], 0) = mryes) then
    begin
      cdadiantamento := cdadntcliente[0];
      if cdadntcliente.Count > 1 then
      begin
        cdadiantamento := dlgescolheadiantamento(cdadntcliente, valor);
      end;
      if cdadiantamento <> '' then
      begin
        result := BaixarAdiantamento(cdscdduplicata.AsInteger, _duplicata, strtoint(cdadiantamento));
      end;
    end;
  finally
    freeandnil(cdadntcliente);
    freeandnil(valor);
  end;
end;

procedure TfrmDuplicata.actbaixaExecute(Sender: TObject);
begin
  if not duplicata.verificarSeNota55JaFoiEnviada(cdscdduplicata.asinteger) then
  begin
    messagedlg('Não é possível baixar contas a receber de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota antes de baixar o contas a receber.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if check_adnt_cliente then
  begin
    registro.RegistroAbrir(cds.fieldbyname(_cdduplicata).AsInteger);
    Exit;
  end;
  if BaixarDocumento(tbl, cdsCDDUPLICATA.AsInteger) then
  begin
    abrir(cdsCDDUPLICATA.asinteger);
  end;
end;

procedure TfrmDuplicata.actAbrirCobrancaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitcobranca);
end;

procedure TfrmDuplicata.grditcobrancaDblClick(Sender: TObject);
begin
  actAbrirCobranca.onExecute(actAbrirCobranca);
end;

procedure TfrmDuplicata.actabrirbancoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmDuplicata.actAbrirFornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsEncontroContas);
end;

procedure TfrmDuplicata.actAbrirAutPagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsEncontroContas);
end;

procedure TfrmDuplicata.Imprimir1Click(Sender: TObject);
var
  Bloco: TInstrucaoSQL;
begin
  if cdsencontrocontasCDAUTPAGTO.AsString = '' then
  begin
    messagedlg(_msg_Nao_existem_registros_para_este_relatorio, mtinformation, [mbok], 0);
    exit;
  end;
  if cdsencontrocontasNMSTAPROVACAO.AsString = 'REPROVADO' then
  begin
    messagedlg('Não é possível imprimir um registro reprovado!', mtinformation, [mbok], 0);
    exit;
  end;
  Bloco := TInstrucaoSQL.create(frmDuplicata);
  try
    Bloco.addRule(_cdautpagto, cdsencontrocontasCDAUTPAGTO.asstring);
    Bloco.addRule(_cdduplicata, cdsencontrocontasCDDUPLICATA.asstring);
    ImpimirRelatorioPadrao1(251, '', Bloco, 'Encontro de Contas');
  finally
    Bloco.Free;
  end;
end;

procedure TfrmDuplicata.Label17DblClick(Sender: TObject);
begin
  showmessage('Valor do Juros Diário '+formatfloat(__moeda, duplicata.getValorMoraJuros));
end;

procedure TfrmDuplicata.FormDestroy(Sender: TObject);
begin
  freeandnil(duplicata);
  freeandnil(adntcliente);
  cliente.free;
  registro.Destroy;
end;

procedure TfrmDuplicata.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmDuplicata.actparcelamentoExecute(Sender: TObject);
var
  codigo : integer;
begin
  codigo := GerarParcelamentoDuplicata;
  if codigo <> 0 then
  begin
    messagedlg('Parcelamento de contas a receber gerado!', mtinformation, [mbok], 0);
    Abrir(codigo);
  end;
end;

procedure TfrmDuplicata.actimprimirduplicataExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(331, cdsCDDUPLICATA.AsString);
end;

procedure TfrmDuplicata.actajustarbaixaExecute(Sender: TObject);
begin
  if duplicata.ajustarbaixa then
  begin
    MessageDlg('Contas a Receber ajustada.', mtInformation, [mbOK], 0);
    Abrir(cdsCDDUPLICATA.AsInteger);
  end;
end;

procedure TfrmDuplicata.actabriradntclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsbaixa);
end;

procedure TfrmDuplicata.actabrircteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmDuplicata.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmDuplicata.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdclientePropertiesButtonClick(self, cds);
end;

procedure TfrmDuplicata.lblNMCLIENTEDblClick(Sender: TObject);
begin
  actAbrirCliente.onExecute(actAbrirCliente);
end;

procedure TfrmDuplicata.lblnusaidaDblClick(Sender: TObject);
begin
  if lblnusaida.DataField = _NUSAIDA then
  begin
    actAbrirSaida.onExecute(actAbrirSaida)
  end
  else if lblnusaida.DataField = _cdcte      then
  begin
    actAbrircte.onExecute(actAbrircte)
  end
  else if lblnusaida.DataField = _cdcontrato then
  begin
    actabrircontrato.onexecute(actabrircontrato)
  end
  else
  begin
    actAbrirnegociacao.onExecute(actAbrirnegociacao)
  end;
end;

procedure TfrmDuplicata.edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmDuplicata.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar(_cntcusto, _nunivel, _nmcntcusto, 'Centro Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  cdsNUcntcusto.AsString := cd;
end;

procedure TfrmDuplicata.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmDuplicata.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar(_plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  cdsNUPLCONTA.AsString := cd;
end;

procedure TfrmDuplicata.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsCDTPDUPLICATA.AsString  := _1;
  cdsDTEMISSAO.AsDateTime    := dtbanco;
  cdsdtentrada.AsDateTime    := cdsDTEMISSAO.AsDateTime;
  cdsDTVENCIMENTO.AsDateTime := cdsdtemissao.AsDateTime;
  cdsDTPRORROGACAO.AsDateTime:= cdsdtemissao.AsDateTime;
  cdsCDSTDUPLICATA.AsInteger  := qregistro.Codigo_status_novo(tbl);
  cdsPRMORADIARIA.AsFloat    := Empresa.financeiro.duplicata.prmoradiaria;
  cdsPRMulta.AsFloat         := Empresa.financeiro.duplicata.prmulta;
  cdsVLDUPLICATA.AsCurrency  := 0;
  cdsVLBAIXA.AsCurrency      := 0;
  cdsVLDESCONTO.AsCurrency   := 0;
  cdsVLMULTA.AsCurrency      := 0;
  cdsVLDEVOLUCAO.AsCurrency  := 0;
  cdsVLABATIMENTO.AsCurrency := 0;
  cdsVLSALDO.AsCurrency      := 0;
  cdsVLDEDUCAO.AsCurrency    := 0;
  cdsVLACRESCIMO.AsCurrency  := 0;
  cdsVLJUROS.AsCurrency      := 0;
  cdsVLRECEBIDO.AsCurrency   := 0;
  if Empresa.financeiro.duplicata.nudiasvencimento > 0 then
  begin
    cdsDTVENCIMENTO.AsDateTime := cdsDTENTRADA.AsDateTime + Empresa.financeiro.duplicata.nudiasvencimento;
  end;
  ativar_datas;
end;

procedure TfrmDuplicata.cdsAfterScroll(DataSet: TDataSet);
begin
  duplicata.Select(DataSet);
  set_campo_nota;
  set_exibir_representante;
  //registro.setStatus(tbl, cds);
  if (not cdsCDSAIDA.IsNull) or (not cdsCDCTE.IsNull) or (not cdsCDnegociacaosaida.IsNull) then
  begin
    actExcluir.Enabled := False;
  end;
  if cdsbaixa.RecordCount = 0 then
  begin
    barbaixa.Visible := False;
  end;
  if cdsCDSTDUPLICATA.asString = _2 then
  begin
    actencontrocontas.Enabled := false;
    actbaixa.Enabled          := false;
  end;
  ativar_datas;
end;

procedure TfrmDuplicata.edtcodigoPropertiesEditValueChanged(Sender: TObject);
begin
  //registro.setStatus(tbl, cds);
  lblcdcliente.Hint := qregistro.get_Hint(_cliente, cds.FieldByName(_cdcliente).asstring);
end;

procedure TfrmDuplicata.cdsCalcFields(DataSet: TDataSet);
var
  movbancario : TMovbancario;
begin
  movbancario := tmovbancario.create;
  try
    cdsVLJUROSDIA.AsCurrency := movbancario.JuroDocumento(DtBanco, cds.fieldbyname(_dtprorrogacao).asdatetime, cds.fieldbyname(_prmoradiaria).ascurrency, cds.fieldbyname(_vlsaldo).ascurrency);
    if DtBanco > cds.fieldbyname(_dtprorrogacao).asdatetime then
    begin
      cdsVLMULTADIA.AsCurrency := roundto(cds.fieldbyname(_vlsaldo).ascurrency * cds.FieldByName(_prmulta).AsFloat  / 100, -2)
    end
    else
    begin
      cdsVLMULTADIA.AsCurrency := 0;
    end;
  finally
    movbancario.Free;
  end;
end;

procedure TfrmDuplicata.cdsCDCLIENTEValidate(Sender: TField);
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
end;

procedure TfrmDuplicata.cdsBeforePost(DataSet: TDataSet);
  function consistirlimitecredito:boolean;
  var
    vlsaldo, vllimitecredito : currency;
    texto, vlsaldos, vllimitecreditos, vlduplicatas, cdusuariol : string;
    cliente : TCliente;
  begin
    result := true;
    cliente := TCliente.create;
    try
      cliente.cdcliente := cds.FieldByName(_cdcliente).asLargeInt;
      vllimitecredito   := cliente.vllimitecredito;
      vllimitecreditos  := formatfloat(__moeda, vllimitecredito);
      vlsaldo           := cliente.VlCreditoUtilizado;
      vlsaldos          := formatfloat(__moeda, vlsaldo);
      vlduplicatas      := formatfloat(__moeda, cdsVLSALDO.AsCurrency);
      if vlsaldo + cdsVLSALDO.AsCurrency > vllimitecredito then
      begin
        case Empresa.financeiro.duplicata.cdlimitecredito of
          1: messagedlg('O valor do Contas a Receber ('+vlduplicatas+')'#13'mais o saldo em aberto ('+vlsaldos+')'#13'excede o valor de limite de crédito ('+vllimitecreditos+').', mtinformation, [mbok], 0);
          2:
          begin
            messagedlg('O valor do contas a receber ('+vlduplicatas+')'#13'mais o saldo em aberto ('+vlsaldos+')'#13'excede o valor de limite de crédito ('+vllimitecreditos+').'#13'Diminua o valor do Contas a Receber para continuar.', mtwarning, [mbok], 0);
            result := false;
          end;
          3:
          begin
            messagedlg('O valor do Contas a Receber ('+vlduplicatas+')'#13'mais o saldo em aberto ('+vlsaldos+')'#13'excede o valor de limite de crédito ('+vllimitecreditos+').'#13'Informe a sua senha para continuar.', mtinformation, [mbok], 0);
            texto := 'Liberar o valor '+vlduplicatas+#13'Para o cliente '+cds.FieldByName(_cdcliente).asstring+' - '+cds.FieldByName(_nmcliente).asstring+#13'com o valor em aberto de '+vlsaldos+'.';
            if assinaturadigital(texto, cdusuariol) then
            begin
              cdsCDUSUARIOI.AsString    := cdusuariol;
              cdsCDCOMPUTADORI.asstring := vgcdcomputador;
              cdsTSLIBERADO.AsDatetime  := tsbanco;
            end
            else
            begin
              result := false;
            end;
          end;
        end;
      end;
    finally
      cliente.free;
    end;
  end;
  procedure AtribuirNumeroDocumento;
  begin
    if edtcodigo.text <> '' then
    begin
      cdsNUDUPLICATA.asstring := edtcodigo.text;
    end;
    if cdsNUDUPLICATA.AsString <> '' then
    begin
      exit;
    end;
    cdsNUDUPLICATA.AsString := cdsCDDUPLICATA.asstring;
    if (cds.State <> dsinsert) or (not codigoexiste(tbl, _nuduplicata, _string, cdsNUDUPLICATA.asstring)) then
    begin
      exit;
    end;
    repeat
      cdsCDDUPLICATA.asstring := GerarCodigo(tbl);
      cdsNUDUPLICATA.AsString := cdsCDDUPLICATA.asstring;
    until not codigoexiste(tbl, _nuduplicata, _string, cdsNUDUPLICATA.asstring);
  end;
begin
  if cdsDTVENCIMENTO.AsDateTime < cdsDTEMISSAO.AsDateTime then
  begin
    messagedlg('Data de vencimento deve ser maior ou igual a data de emissão.', mtinformation, [mbok], 0);
    cdsDTVENCIMENTO.FocusControl;
    abort;
  end;
  if cdsDTPRORROGACAO.AsDateTime < cdsDTEMISSAO.AsDateTime then
  begin
    messagedlg('Data de prorrogação deve ser maior ou igual a data de emissão.', mtinformation, [mbok], 0);
    cdsDTPRORROGACAO.FocusControl;
    abort;
  end;
  if cdsDTPRORROGACAO.AsDateTime < cdsDTVENCIMENTO.AsDateTime then
  begin
    messagedlg('Data de prorrogacao deve ser maior ou igual a data de vencimento.', mtinformation, [mbok], 0);
    cdsDTPRORROGACAO.FocusControl;
    abort;
  end;
  if cdsVLDUPLICATA.AsCurrency = 0 then
  begin
    messagedlg('Valor Original deve ser maior zero.', mtinformation, [mbok], 0);
    cdsVLDUPLICATA.FocusControl;
    abort;
  end;
  if cds.FieldByName(_cdcliente).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Cliente]), mtinformation, [mbok], 0);
    cds.FieldByName(_cdcliente).FocusControl;
    abort;
  end;
  if Empresa.financeiro.duplicata.bolimitecredito and (Dataset.State = dsinsert) and (not consistirlimitecredito) then
  begin
    abort;
  end;
  Atribuirnumerodocumento;
  if Dataset.State = dsinsert then
  begin
    cdsVLSALDO.AsCurrency := cdsVLDUPLICATA.AsCurrency;
  end;
  registro.set_update(cds);
end;

procedure TfrmDuplicata.cdsVLDUPLICATAValidate(Sender: TField);
begin
  cdsVLSALDO.ascurrency := sender.AsCurrency;
end;

procedure TfrmDuplicata.cdsDTVENCIMENTOValidate(Sender: TField);
begin
  cdsDTPRORROGACAO.AsDateTime := sender.AsDateTime;
end;

procedure TfrmDuplicata.cdsNUCNTCUSTOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMcntcusto.Clear;
    cdsCDcntcusto.clear;
    Exit;
  end;
  if not CodigoExiste(_cntcusto, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_Centro+' '+_Custo)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsCDcntcusto.asstring := CodigodoCampo(_cntcusto, sender.Asstring, _nunivel);
  cdsNMcntcusto.AsString := NomedoCodigo(_cntcusto, cdsCDcntcusto.asstring);
end;

procedure TfrmDuplicata.cdsNUPLCONTAValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMPLCONTA.Clear;
    cdsCDPLCONTA.clear;
    Exit;
  end;
  if not CodigoExiste(_plconta, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsCDPLCONTA.asstring := CodigodoCampo(_plconta, sender.Asstring, _nunivel);
  cdsNMPLCONTA.AsString := NomedoCodigo(_plconta, cdsCDPLCONTA.asstring);
end;

procedure TfrmDuplicata.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmDuplicata.FormCreate(Sender: TObject);
begin
  barbaixa.Visible                      := False;
  cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
  registro                              := tregistro.create(self, tbl, exibe, artigoI,cds,dts, edtcodigo, true);
  GeraMenuRelatorio ('', btnimprimir, 2, cds, tbl);
  ConfigurarPermissoes(self);
end;

procedure TfrmDuplicata.tbvbaixaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdmovbancario then
  begin
    actabrirmovbancarioExecute(actAbrirMovBancario)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdadntcliente then
  begin
    actabriradntclienteExecute(actabriradntcliente);
  end;
end;

procedure TfrmDuplicata.tbvbaixaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsbaixa, key);
end;

procedure TfrmDuplicata.actexcluirbaixaExecute(Sender: TObject);
begin
  if (cdsbaixa.RecordCount <= 0) or (messagedlg('Tem certeza que deseja excluir a baixa?', mtconfirmation, [mbyes, mbno], 0) = mrno) then
  begin
    exit;
  end;
  if not cdsbaixaCDMOVBANCARIO.IsNull then
  begin
    ExecutaSQL('delete from movbancario where cdempresa='+empresa.cdempresa.tostring+' and cdmovbancario='+cdsbaixaCDMOVBANCARIO.AsString)
  end
  else
  begin
    ExecutaSQL('delete from baixa where cdempresa='      +empresa.cdempresa.tostring+' and cdbaixa='      +cdsbaixaCDBAIXA.AsString);
  end;
  abrir(cdsCDDUPLICATA.AsInteger);
end;

procedure TfrmDuplicata.cdsbaixaAfterScroll(DataSet: TDataSet);
begin
  if (cdsbaixaCDMOVBANCARIO.AsString <> '') and (retornasqlinteger('select count(*) from baixa where cdempresa='+empresa.cdempresa.tostring+' and cdmovbancario='+cdsbaixacdmovbancario.AsString) = 1) then
  begin
    barbaixa.Visible := true;
  end
  else
  begin
    barbaixa.Visible  := cdsbaixaCDMOVBANCARIO.IsNull and (cdsbaixa.RecordCount > 0);
  end;
end;

procedure TfrmDuplicata.eventoKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmDuplicata.actimprimirboletoExecute(Sender: TObject);
begin
  if adntcliente.ClientePossuiAdiantamento(cds.FieldByName(_cdcliente).asstring) and
     (messagedlg('Cliente possui adiantamento.'#13'Deseja realmente imprimir a boleta?', mtinformation, [mbyes, mbno], 0) = mrno) then
  begin
    exit;
  end;
  if not duplicata.verificarSeNota55JaFoiEnviada(cdsCDDUPLICATA.asinteger) then
  begin
    messagedlg('Não é possível emitir boleto de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota para depois imprimir o boleto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if duplicata.ImprimirBoletoAcbr then
  begin
    Abrir(cdsCDDUPLICATA.AsInteger);
  end;
end;

procedure TfrmDuplicata.exportagradeexcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmDuplicata.tbvitcobrancaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cd+_cobranca then
  begin
    actabrircobrancaExecute(actAbrircobranca);
  end;
end;

procedure TfrmDuplicata.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmDuplicata.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmDuplicata.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmDuplicata.actabrircontratoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

end.
