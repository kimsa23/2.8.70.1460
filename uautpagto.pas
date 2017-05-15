unit uautpagto;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Classes, windows, ActnList, StdCtrls, ComCtrls, ToolWin, sysutils,
  Buttons, dialogs, graphics, Controls, ExtCtrls, Mask, Grids,
  DBCtrls, DB, DBClient, Provider, sqlexpr,
  urotinas, udatahora, uregistro, uregistroib, ustrings, unumero,
  uconstantes, ulocalizarFornecedor, ulocalizarTransportadora,
  uAssinaturaDigital, uDlgEscolhePedido, uLocalizarAutPagto, ulocalizarentrada,
  uBaixa, uLocalizar, uExportarExcel, uautpagtoparcelamento,
  classeInstrucaoSQL, classeRegistro, classeretornasql, classeusuario,
  classeconsiste, classeaplicacao, classeexecutasql, classefornecedor, classeregistrainformacao,
  classegerar, classeform, classeadntfornecedor, classeempresa, classeautpagto,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls, dxBar,
  cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMemo, cxButtonEdit, cxDBLabel, cxCalc, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCurrencyEdit, cxPCdxBarPopupMenu, cxNavigator, dxBarBuiltInMenu, FMTBcd,
  cxCheckBox;

type
  TfrmAutPagto = class(TForm)
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
    actAbrirFornecedor: TAction;
    actAbrirEntrada: TAction;
    actAbrirMovBancario: TAction;
    actimprimirmatricial: TAction;
    pumbaixa: TPopupMenu;
    actexcluirbaixa: TAction;
    Abrir2: TMenuItem;
    Excluir2: TMenuItem;
    actencontrocontas: TAction;
    actbaixa: TAction;
    actimprimirrecibo: TAction;
    actAbrirCliente: TAction;
    actAbrirDuplicata: TAction;
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
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    Panel1: TPanel;
    bvl2: TBevel;
    bvl1: TBevel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    pgc: TcxPageControl;
    tbsbaixa: TcxTabSheet;
    tlbbaixa: TToolBar;
    ToolButton13: TToolButton;
    tbsencontrocontas: TcxTabSheet;
    pnl: TcxLabel;
    gbxvalores: TcxGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    gbxdeducoes: TcxGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    gbxacrescimos: TcxGroupBox;
    Label5: TLabel;
    Label27: TLabel;
    Label10: TLabel;
    gbxtotal: TcxGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    gbxbaixa: TcxGroupBox;
    Label14: TLabel;
    Label9: TLabel;
    gbxdados: TcxGroupBox;
    Label24: TLabel;
    lblcntcusto: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    lblplconta: TLabel;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    sdsbaixa: TSQLDataSet;
    cdsbaixa: TClientDataSet;
    dtsbaixa: TDataSource;
    sdsencontrocontas: TSQLDataSet;
    cdsencontrocontas: TClientDataSet;
    dtsencontrocontas: TDataSource;
    edtDTEMISSAO: TcxDBDateEdit;
    edtDTVENCIMENTO: TcxDBDateEdit;
    edtDTPRORROGACAO: TcxDBDateEdit;
    cbxcdtpcobranca: TcxDBLookupComboBox;
    txtDTBAIXA: TcxDBLabel;
    txtusuariobaixa: TcxDBLabel;
    txtvlbaixa: TcxDBLabel;
    txtvlrecebido: TcxDBLabel;
    txtvljuros: TcxDBLabel;
    txtprmulta: TcxDBLabel;
    txtvlmulta: TcxDBLabel;
    txtvldesconto: TcxDBLabel;
    txtvlabatimento: TcxDBLabel;
    txtvldevolucao: TcxDBLabel;
    txt11: TcxDBLabel;
    edtcdfornecedor: TcxDBButtonEdit;
    edtnuplconta: TcxDBButtonEdit;
    edtdshistorico: TcxDBTextEdit;
    edtvlautpagto: TcxDBCalcEdit;
    edtprmoradiaria: TcxDBCalcEdit;
    txtnmplconta: TcxDBLabel;
    edtcodigo: TcxTextEdit;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1NUENCONTROCONTAS: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NUDUPLICATA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CDCLIENTE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NMCLIENTE: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1CDFORNECEDOR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NMFORNECEDOR: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DTVENCIMENTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLDUPLICATA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLSALDODUPLICATA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLBAIXA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLMULTA: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLJURO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLDESCONTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLABATIMENTO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1VLDEVOLUCAO: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1NMSTAPROVACAO: TcxGridDBBandedColumn;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    tbvbaixa: TcxGridDBBandedTableView;
    tbvbaixaCDMOVBANCARIO: TcxGridDBBandedColumn;
    tbvbaixaCDADNTFORNECEDOR: TcxGridDBBandedColumn;
    tbvbaixaDTBAIXA: TcxGridDBBandedColumn;
    tbvbaixaVLMULTA: TcxGridDBBandedColumn;
    tbvbaixaVLJURO: TcxGridDBBandedColumn;
    tbvbaixaVLBAIXA: TcxGridDBBandedColumn;
    tbvbaixaVLDESCONTO: TcxGridDBBandedColumn;
    tbvbaixaVLABATIMENTO: TcxGridDBBandedColumn;
    tbvbaixaVLDEVOLUCAO: TcxGridDBBandedColumn;
    tbvbaixaVLLIQUIDO: TcxGridDBBandedColumn;
    tbvbaixaNMMOVIMENTACAO: TcxGridDBBandedColumn;
    gbxdsobservacao: TcxGroupBox;
    memdsobservacao: TcxDBMemo;
    lbldtentrada: TLabel;
    edtdtentrada: TcxDBDateEdit;
    sdsCDAUTPAGTO: TIntegerField;
    sdsCDSTAUTPAGTO: TIntegerField;
    sdsCDTPPAGAMENTO: TIntegerField;
    sdsCDENTRADA: TIntegerField;
    sdsCDCNTCUSTO: TIntegerField;
    sdsCDTPCOBRANCA: TIntegerField;
    sdsNUAUTPAGTO: TStringField;
    sdsDTEMISSAO: TDateField;
    sdsDTVENCIMENTO: TDateField;
    sdsDTPRORROGACAO: TDateField;
    sdsVLAUTPAGTO: TFMTBCDField;
    sdsPRMORADIARIA: TFloatField;
    sdsDSHISTORICO: TStringField;
    sdsDTBAIXA: TDateField;
    sdsVLBAIXA: TFMTBCDField;
    sdsVLPREVISTO: TFMTBCDField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsPRMULTA: TFloatField;
    sdsVLMULTA: TFMTBCDField;
    sdsDSOBSERVACAO: TBlobField;
    sdsVLDEVOLUCAO: TFMTBCDField;
    sdsVLABATIMENTO: TFMTBCDField;
    sdsVLSALDO: TFMTBCDField;
    sdsVLDEDUCAO: TFMTBCDField;
    sdsVLACRESCIMO: TFMTBCDField;
    sdsVLJUROS: TFMTBCDField;
    sdsVLRECEBIDO: TFMTBCDField;
    sdsBOENVIADO: TStringField;
    sdsBOIMPRESSA: TStringField;
    sdsCDPLCONTA: TIntegerField;
    sdsNUPLCONTA: TStringField;
    sdsDSPARCELA: TStringField;
    sdsDTENTRADA: TDateField;
    sdsNMPLCONTA: TStringField;
    sdsNUENTRADA: TIntegerField;
    cdsCDAUTPAGTO: TIntegerField;
    cdsCDSTAUTPAGTO: TIntegerField;
    cdsCDTPPAGAMENTO: TIntegerField;
    cdsCDENTRADA: TIntegerField;
    cdsCDCNTCUSTO: TIntegerField;
    cdsCDTPCOBRANCA: TIntegerField;
    cdsNUAUTPAGTO: TStringField;
    cdsDTEMISSAO: TDateField;
    cdsDTVENCIMENTO: TDateField;
    cdsDTPRORROGACAO: TDateField;
    cdsVLAUTPAGTO: TFMTBCDField;
    cdsPRMORADIARIA: TFloatField;
    cdsDSHISTORICO: TStringField;
    cdsDTBAIXA: TDateField;
    cdsVLBAIXA: TFMTBCDField;
    cdsVLPREVISTO: TFMTBCDField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsPRMULTA: TFloatField;
    cdsVLMULTA: TFMTBCDField;
    cdsDSOBSERVACAO: TBlobField;
    cdsVLDEVOLUCAO: TFMTBCDField;
    cdsVLABATIMENTO: TFMTBCDField;
    cdsVLSALDO: TFMTBCDField;
    cdsVLDEDUCAO: TFMTBCDField;
    cdsVLACRESCIMO: TFMTBCDField;
    cdsVLJUROS: TFMTBCDField;
    cdsVLRECEBIDO: TFMTBCDField;
    cdsBOENVIADO: TStringField;
    cdsBOIMPRESSA: TStringField;
    cdsCDPLCONTA: TIntegerField;
    cdsNUPLCONTA: TStringField;
    cdsDSPARCELA: TStringField;
    cdsDTENTRADA: TDateField;
    cdsNMPLCONTA: TStringField;
    cdsNUENTRADA: TIntegerField;
    cdssdsencontrocontas: TDataSetField;
    cdssdsbaixa: TDataSetField;
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
    sdsbaixaNMTPBAIXA: TStringField;
    sdsencontrocontasNUENCONTROCONTAS: TIntegerField;
    sdsencontrocontasCDDUPLICATA: TIntegerField;
    sdsencontrocontasCDAUTPAGTO: TIntegerField;
    sdsencontrocontasNUDUPLICATA: TStringField;
    sdsencontrocontasNMCLIENTE: TStringField;
    sdsencontrocontasNMFORNECEDOR: TStringField;
    sdsencontrocontasDTVENCIMENTO: TDateField;
    sdsencontrocontasVLDUPLICATA: TFMTBCDField;
    sdsencontrocontasVLSALDODUPLICATA: TFMTBCDField;
    sdsencontrocontasVLBAIXA: TFMTBCDField;
    sdsencontrocontasVLMULTA: TFMTBCDField;
    sdsencontrocontasVLJURO: TFMTBCDField;
    sdsencontrocontasVLDESCONTO: TFMTBCDField;
    sdsencontrocontasVLABATIMENTO: TFMTBCDField;
    sdsencontrocontasVLDEVOLUCAO: TFMTBCDField;
    sdsencontrocontasNMSTAPROVACAO: TStringField;
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
    cdsencontrocontasNUENCONTROCONTAS: TIntegerField;
    cdsencontrocontasCDDUPLICATA: TIntegerField;
    cdsencontrocontasCDAUTPAGTO: TIntegerField;
    cdsencontrocontasNUDUPLICATA: TStringField;
    cdsencontrocontasNMCLIENTE: TStringField;
    cdsencontrocontasNMFORNECEDOR: TStringField;
    cdsencontrocontasDTVENCIMENTO: TDateField;
    cdsencontrocontasVLDUPLICATA: TFMTBCDField;
    cdsencontrocontasVLSALDODUPLICATA: TFMTBCDField;
    cdsencontrocontasVLBAIXA: TFMTBCDField;
    cdsencontrocontasVLMULTA: TFMTBCDField;
    cdsencontrocontasVLJURO: TFMTBCDField;
    cdsencontrocontasVLDESCONTO: TFMTBCDField;
    cdsencontrocontasVLABATIMENTO: TFMTBCDField;
    cdsencontrocontasVLDEVOLUCAO: TFMTBCDField;
    cdsencontrocontasNMSTAPROVACAO: TStringField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsCDUSUARIOBAIXA: TIntegerField;
    sdsbaixaCDUSUARIOI: TIntegerField;
    sdsbaixaCDUSUARIOA: TIntegerField;
    sdsbaixaCDCOMPUTADORI: TIntegerField;
    sdsbaixaCDCOMPUTADORA: TIntegerField;
    sdsbaixaTSINCLUSAO: TSQLTimeStampField;
    sdsbaixaTSALTERACAO: TSQLTimeStampField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsCDUSUARIOBAIXA: TIntegerField;
    cdsbaixaNMTPBAIXA: TStringField;
    cdsbaixaCDUSUARIOI: TIntegerField;
    cdsbaixaCDUSUARIOA: TIntegerField;
    cdsbaixaCDCOMPUTADORI: TIntegerField;
    cdsbaixaCDCOMPUTADORA: TIntegerField;
    cdsbaixaTSINCLUSAO: TSQLTimeStampField;
    cdsbaixaTSALTERACAO: TSQLTimeStampField;
    sdsNMUSUARIO: TStringField;
    cdsNMUSUARIO: TStringField;
    txtnmfornecedor: TDBText;
    sdsNMFORNECEDOR: TStringField;
    cdsNMFORNECEDOR: TStringField;
    actajustarbaixa: TAction;
    dxBarButton8: TdxBarButton;
    txtnuentrada: TDBText;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    actimprimirautpagto: TAction;
    dxBarButton9: TdxBarButton;
    actabriradntfornecedor: TAction;
    tbvbaixaDSHISTORICO: TcxGridDBBandedColumn;
    tbvbaixaNMCONTA: TcxGridDBBandedColumn;
    tbvbaixaDTEMISSAO: TcxGridDBBandedColumn;
    sdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
    sdsbaixaVLCOMISSAO: TFMTBCDField;
    sdsbaixaDTEMISSAO: TDateField;
    sdsbaixaNMMOVIMENTACAO: TStringField;
    sdsbaixaNMCONTA: TStringField;
    sdsbaixaDSHISTORICO: TStringField;
    cdsbaixaCDNEGOCIACAOENTRADA: TIntegerField;
    cdsbaixaVLCOMISSAO: TFMTBCDField;
    cdsbaixaDTEMISSAO: TDateField;
    cdsbaixaNMMOVIMENTACAO: TStringField;
    cdsbaixaNMCONTA: TStringField;
    cdsbaixaDSHISTORICO: TStringField;
    dxBarButton6: TdxBarButton;
    gbxaprovacao: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    txtTSAPROVACAO: TcxDBLabel;
    txtNMUSUARIOAPROVACAO: TcxDBLabel;
    sdsCDUSUARIOAPROVACAO: TIntegerField;
    sdsTSAPROVACAO: TSQLTimeStampField;
    cdsCDUSUARIOAPROVACAO: TIntegerField;
    cdsTSAPROVACAO: TSQLTimeStampField;
    sdsNMUSUARIOAPROVACAO: TStringField;
    cdsNMUSUARIOAPROVACAO: TStringField;
    actaprovar: TAction;
    dxBarButton10: TdxBarButton;
    sdsCDCOMPUTADORAPROVACAO: TIntegerField;
    cdsCDCOMPUTADORAPROVACAO: TIntegerField;
    actdesaprovar: TAction;
    dxBarButton11: TdxBarButton;
    actvisualizarhaprovacaoautpagto: TAction;
    dxBarButton12: TdxBarButton;
    edtnucntcusto: TcxDBButtonEdit;
    txtnmcntcusto: TcxDBLabel;
    sdsNUCNTCUSTO: TStringField;
    sdsNMCNTCUSTO: TStringField;
    cdsNUCNTCUSTO: TStringField;
    cdsNMCNTCUSTO: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDFORNECEDOR: TLargeintField;
    sdsCDCONTA: TIntegerField;
    sdsbaixaCDEMPRESA: TLargeintField;
    sdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    sdsbaixaPRCOMISSAO: TFloatField;
    sdsbaixaVLJUROSNRECEBIDO: TFMTBCDField;
    sdsencontrocontasCDCLIENTE: TLargeintField;
    sdsencontrocontasCDFORNECEDOR: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDFORNECEDOR: TLargeintField;
    cdsCDCONTA: TIntegerField;
    cdsbaixaCDEMPRESA: TLargeintField;
    cdsbaixaCDADNTCLIENTEDESTINO: TIntegerField;
    cdsbaixaPRCOMISSAO: TFloatField;
    cdsbaixaVLJUROSNRECEBIDO: TFMTBCDField;
    cdsencontrocontasCDCLIENTE: TLargeintField;
    cdsencontrocontasCDFORNECEDOR: TLargeintField;
    ckbBORATEIOPLCONTA: TcxDBCheckBox;
    ckbborateiocntcusto: TcxDBCheckBox;
    sdsBORATEIOCNTCUSTO: TStringField;
    sdsBORATEIOPLCONTA: TStringField;
    cdsBORATEIOCNTCUSTO: TStringField;
    cdsBORATEIOPLCONTA: TStringField;
    txtnuautpagto: TDBText;
    lblnuautpagto: TLabel;
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
    procedure actAbrirFornecedorExecute(Sender: TObject);
    procedure actAbrirMovBancarioExecute(Sender: TObject);
    procedure actimprimirmatricialExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actexcluirbaixaExecute(Sender: TObject);
    procedure actencontrocontasExecute(Sender: TObject);
    procedure actbaixaExecute(Sender: TObject);
    procedure actimprimirreciboExecute(Sender: TObject);
    procedure actAbrirClienteExecute(Sender: TObject);
    procedure actAbrirDuplicataExecute(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actparcelamentoExecute(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsDTVENCIMENTOValidate(Sender: TField);
    procedure cdsVLAUTPAGTOValidate(Sender: TField);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsCDFORNECEDORValidate(Sender: TField);
    procedure cdsNUPLCONTAValidate(Sender: TField);
    procedure actajustarbaixaExecute(Sender: TObject);
    procedure txtnmfornecedorDblClick(Sender: TObject);
    procedure txtnuentradaDblClick(Sender: TObject);
    procedure actAbrirEntradaExecute(Sender: TObject);
    procedure cdsbaixaAfterScroll(DataSet: TDataSet);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actopcoesExecute(Sender: TObject);
    procedure actimprimirautpagtoExecute(Sender: TObject);
    procedure actabriradntfornecedorExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actaprovarExecute(Sender: TObject);
    procedure actdesaprovarExecute(Sender: TObject);
    procedure actvisualizarhaprovacaoautpagtoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure cdsNUCNTCUSTOValidate(Sender: TField);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvbaixaCellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tbvbaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private      { Private declarations }
    cdold : string;
    tbl : string;
    exibe : string;
    adntfornecedor: TAdntFornecedor;
    fornecedor : TFornecedor;
    autpagto : TAutPagto;
    procedure check_cntcusto;
    procedure check_dtprorrogacao;
    procedure check_dtvencimento;
    procedure check_fornecedor;
    procedure check_vloriginal;
    function check_adnt_fornecedor: boolean;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmAutPagto: TfrmAutPagto;

implementation

uses uMain,
  uimprimirrelatoriopadrao,
  uDtmMain,
  uMenuRelatorio,
  udlgtabela;

const
  artigoI  = 'a';

{$R *.DFM}

function TfrmAutPagto.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmAutPagto.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmAutPagto.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
  edtdtemissao.Enabled    := true;
  edtDTVENCIMENTO.Enabled := true;
  edtcdfornecedor.Enabled := true;
  edtvlautpagto.Enabled   := true;
end;

procedure TfrmAutPagto.actSalvarExecute(Sender: TObject);
begin
  if empresa.financeiro.boplconta and (edtnuplconta.Text = '') and (cdsCDENTRADA.IsNull) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Plano_de_contas]), mtinformation, [mbok], 0);
    edtnuplconta.SetFocus;
    Abort;
  end;
  if empresa.financeiro.bocntcusto and (edtnucntcusto.Text = '') and (cdsCDENTRADA.IsNull) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Centro+' '+_de+' '+_Custo]), mtinformation, [mbok], 0);
    edtnucntcusto.SetFocus;
    Abort;
  end;
  if edtcdfornecedor.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Fornecedor]), mtinformation, [mbok], 0);
    edtcdfornecedor.SetFocus;
    abort;
  end;
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
end;

procedure TfrmAutPagto.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmAutPagto.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmAutPagto.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
end;

procedure TfrmAutPagto.actdesaprovarExecute(Sender: TObject);
var
  cdusuario, texto :string;
begin
  texto := 'Desaprovar o pagamento do Contas a Pagar '+cdscdautpagto.AsString+#13+
           'para o fornecedor '+cds.fieldbyname(_CDFORNECEDOR).AsString+' - '+cdsNMFORNECEDOR.AsString+#13+
           'com o valor de '+formatfloat(__moeda, cdsVLAUTPAGTO.AsCurrency)+'.';
  if assinaturadigital(texto, cdusuario) then
  begin
    actEditarExecute(actEditar);
    cdsCDUSUARIOAPROVACAO.clear;
    cdsCDCOMPUTADORAPROVACAO.Clear;
    cdsTSAPROVACAO.Clear;
    actSalvarExecute(actsalvar);
    autpagto.RegistrarHistoricoAprovacao(cdsCDAUTPAGTO.AsString, _d);
  end;
end;

procedure TfrmAutPagto.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  if not cdsNUENTRADA.IsNull then
  begin
    edtdtemissao.Enabled    := false;
    edtDTVENCIMENTO.Enabled := false;
    edtcdfornecedor.Enabled := False;
    edtvlautpagto.Enabled   := False;
  end;
end;

procedure TfrmAutPagto.edtCODIGOKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmAutPagto.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmAutPagto.FormShow(Sender: TObject);
begin
  fornecedor            := tfornecedor.create;
  autpagto              := TAutPagto.create;
  pnl.caption           := exibe;
  adntfornecedor        := tadntfornecedor.create;
  lblplconta.visible    := empresa.financeiro.boplconta;
  edtnuplconta.Visible  := lblplconta.visible;
  txtnmplconta.Visible  := lblplconta.visible;
  ckbBORATEIOPLCONTA.Visible := lblplconta.Visible;

  lblcntcusto.visible   := empresa.financeiro.bocntcusto;
  edtnucntcusto.Visible := lblcntcusto.visible;
  ckbborateiocntcusto.Visible := lblcntcusto.Visible;
  edtCodigo.SetFocus;
end;

procedure TfrmAutPagto.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmAutPagto.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmAutPagto.actaprovarExecute(Sender: TObject);
var
  cdusuario, texto :string;
begin
  texto := 'Aprovar o pagamento do Contas a Pagar '+cdscdautpagto.AsString+#13+
           'para o fornecedor '+cds.fieldbyname(_CDFORNECEDOR).AsString+' - '+cdsNMFORNECEDOR.AsString+#13+
           'com o valor de '+formatfloat(__moeda, cdsVLAUTPAGTO.AsCurrency)+'.';
  if assinaturadigital(texto, cdusuario) then
  begin
    actEditarExecute(actEditar);
    cdsCDUSUARIOAPROVACAO.AsString    := cdusuario;
    cdsCDCOMPUTADORAPROVACAO.asstring := vgcdcomputador;
    cdsTSAPROVACAO.AsDateTime         := tsBanco;
    actSalvarExecute(actsalvar);
    autpagto.RegistrarHistoricoAprovacao(cdsCDAUTPAGTO.AsString, _a);
  end
end;

procedure TfrmAutPagto.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmAutPagto.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmAutPagto.actvisualizarhaprovacaoautpagtoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_h+_aprovacao+_autpagto))), cdsCDAUTPAGTO.AsInteger, _cdautpagto);
end;

procedure TfrmAutPagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmAutPagto.edtCODIGOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmAutPagto.actAbrirFornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmAutPagto.actAbrirMovBancarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsbaixa);
end;

procedure TfrmAutPagto.actimprimirmatricialExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(567, 'where a.cdempresa='+empresa.cdempresa.tostring+' and a.cdautpagto='+cdsCDAUTPAGTO.AsString);
end;

procedure TfrmAutPagto.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmAutPagto.actexcluirbaixaExecute(Sender: TObject);
begin
  if (cdsbaixa.RecordCount <= 0) or (not cdsbaixaCDMOVBANCARIO.IsNull) then
  begin
    exit;
  end;
  if messagedlg('Tem certeza que deseja excluir a baixa?', mtconfirmation, [mbyes, mbno], 0) = mrno then
  begin
    exit;
  end;
  ExecutaSQL('delete from baixa where cdempresa='+empresa.cdempresa.tostring+' and cdbaixa='+cdsbaixaCDBAIXA.AsString);
  Abrir(cdsCDAUTPAGTO.AsInteger);
end;

procedure TfrmAutPagto.actencontrocontasExecute(Sender: TObject);
begin
  if BaixarEncontroContas(tbl, cdsCDAUTPAGTO.AsInteger) then
  begin
    abrir(cdsCDAUTPAGTO.AsInteger);
  end;
end;

function TfrmAutPagto.check_adnt_fornecedor:boolean;
var
  cdadntfornecedor, valor : TStrings;
  cdadiantamento : string;
begin
  result        := False;
  cdadntfornecedor := TStringlist.create;
  valor         := TStringList.create;
  try
    if (cdsCDSTAUTPAGTO.AsInteger = 1) and
       Tadntfornecedor.fornecedorPossuiAdiantamento(cds.fieldbyname(_cdfornecedor).asstring, cdadntfornecedor, valor) and
       (cdadntfornecedor.count > 0 ) and
       (messagedlg('Fornecedor '+cds.fieldbyname(_nmfornecedor).AsString+' possui adiantamento.'#13+
                   'Deseja baixar contas a pagar '+cdsnuautpagto.asstring+' com adiantamento?', mtinformation, [mbyes, mbno], 0) = mryes) then
    begin
      cdadiantamento := cdadntfornecedor[0];
      if cdadntfornecedor.Count > 1 then
      begin
        cdadiantamento := dlgescolheadiantamento(cdadntfornecedor, valor);
      end;
      if cdadiantamento <> '' then
      begin
        result := BaixarAdiantamento(cdscdautpagto.AsInteger, _autpagto, strtoint(cdadiantamento));
      end;
    end;
  finally
    freeandnil(cdadntfornecedor);
    freeandnil(valor);
  end;
end;

procedure TfrmAutPagto.actbaixaExecute(Sender: TObject);
begin
  if check_adnt_fornecedor then
  begin
    registro.RegistroAbrir(cds.fieldbyname(_cdautpagto).AsInteger);
    Exit;
  end;
  if BaixarDocumento(tbl, cdsCDAUTPAGTO.AsInteger) then
  begin
    abrir(cdsCDAUTPAGTO.AsInteger);
  end;
end;

procedure TfrmAutPagto.actimprimirreciboExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(542, 'where autpagto.cdempresa='+empresa.cdempresa.tostring+' and autpagto.cdautpagto='+cdsCDAUTPAGTO.AsString);
end;

procedure TfrmAutPagto.actAbrirClienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsencontrocontas);
end;

procedure TfrmAutPagto.actAbrirDuplicataExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsencontrocontas);
end;

procedure TfrmAutPagto.Imprimir1Click(Sender: TObject);
var
  Bloco: TInstrucaoSQL;
begin
  if cdsencontrocontasCDAUTPAGTO.AsString = '' then
  begin
    messagedlg(_msg_Nao_existem_registros_para_este_relatorio, mtinformation, [mbok], 0);
    exit;
  end;
  if cdsencontrocontasNMSTAPROVACAO.AsString = UpperCase(_REPROVADO) then
  begin
    messagedlg('Não é possível imprimir um registro reprovado!', mtinformation, [mbok], 0);
    exit;
  end;
  Bloco := TInstrucaoSQL.create(frmAutPagto);
  try
    Bloco.addRule(_cdautpagto, cdsencontrocontasCDAUTPAGTO.asstring);
    Bloco.addRule(_cdduplicata, cdsencontrocontasCDDUPLICATA.asstring);
    ImpimirRelatorioPadrao1(251, '', Bloco, 'Encontro de Contas');
  finally
    Bloco.Free;
  end;
end;

procedure TfrmAutPagto.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmAutPagto.FormDestroy(Sender: TObject);
begin
  freeandnil(registro);
  freeandnil(fornecedor);
  freeandnil(autpagto);
  freeandnil(adntfornecedor);
end;

procedure TfrmAutPagto.actparcelamentoExecute(Sender: TObject);
var
  codigo : integer;
begin
  codigo := GerarParcelamentoautpagto;
  if codigo <> 0 then
  begin
    messagedlg('Parcelamento de contas a pagar gerado!', mtinformation, [mbok], 0);
    Abrir(codigo);
  end;
end;

procedure TfrmAutPagto.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(sender, key, shift);  
end;

procedure TfrmAutPagto.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, cds);
end;

procedure TfrmAutPagto.edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(sender, key, shift);
end;

procedure TfrmAutPagto.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar( _cntcusto, _nunivel, _nmcntcusto, 'Centro Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  cdsNUcntcusto.AsString := cd;
end;

procedure TfrmAutPagto.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(sender, key, shift);
end;

procedure TfrmAutPagto.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar( _plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  cdsNUPLCONTA.AsString := cd;
end;

procedure TfrmAutPagto.cdsAfterScroll(DataSet: TDataSet);
begin
  //registro.setStatus( tbl, DataSet);
  if (not cdsCDENTRADA.IsNull) or (cdsbaixa.RecordCount > 0) then
  begin
    actexcluir.Enabled := False;
  end;
  txtnmfornecedor.Hint  := qregistro.get_hint( _fornecedor, cds.fieldbyname(_CDFORNECEDOR).asstring);
  actaprovar.Visible    := cdsCDUSUARIOAPROVACAO.IsNull AND (cdsCDSTAUTPAGTO.AsString = _1);
  actaprovar.Enabled    := cdsCDUSUARIOAPROVACAO.IsNull AND (cdsCDSTAUTPAGTO.AsString = _1);
  actdesaprovar.Visible := (not cdsCDUSUARIOAPROVACAO.IsNull) AND (cdsCDSTAUTPAGTO.AsString = _1);
  actdesaprovar.Enabled := (not cdsCDUSUARIOAPROVACAO.IsNull) AND (cdsCDSTAUTPAGTO.AsString = _1);
end;

procedure TfrmAutPagto.check_dtvencimento;
begin
  if cds.fieldbyname(_dtvencimento).AsDateTime >= cds.fieldbyname(_dtemissao).AsDateTime then
  begin
    exit;
  end;
  messagedlg('Data de vencimento deve ser maior ou igual a data de emissão.', mtinformation, [mbok], 0);
  cds.FieldByName(_dtvencimento).FocusControl;
  abort;
end;

procedure TfrmAutPagto.check_dtprorrogacao;
begin
  if cds.fieldbyname(_dtprorrogacao).AsDateTime >= cds.fieldbyname(_dtemissao).AsDateTime then
  begin
    exit;
  end;
  messagedlg('Data de prorrogação deve ser maior ou igual a data de emissão.', mtinformation, [mbok], 0);
  cds.FieldByName(_dtprorrogacao).FocusControl;
  abort;
end;

procedure TfrmAutPagto.check_vloriginal;
begin
  if cds.fieldbyname(_vl+tbl).AsCurrency > 0 then
  begin
    exit;
  end;
  messagedlg('Valor Original deve ser maior zero.', mtinformation, [mbok], 0);
  cds.Fieldbyname(_vl+tbl).FocusControl;
  abort;
end;

procedure TfrmAutPagto.check_fornecedor;
begin
  if cds.fieldbyname(_cdFornecedor).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Fornecedor]), mtinformation, [mbok], 0);
    cds.Fieldbyname(_cdFornecedor).FocusControl;
    abort;
  end;
end;

procedure TfrmAutPagto.check_cntcusto;
begin
  if empresa.financeiro.bocntcusto and (cds.fieldbyname(_cdcntcusto).IsNull) and (cds.fieldbyname(_cdentrada).IsNull) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Centro_de_Custo]), mtinformation, [mbok], 0);
    cds.Fieldbyname(_cdcntcusto).FocusControl;
    abort;
  end;
end;

procedure TfrmAutPagto.cdsBeforePost(DataSet: TDataSet);
begin
  check_dtvencimento;
  check_dtprorrogacao;
  check_vloriginal;
  check_fornecedor;
  check_cntcusto;
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_vlsaldo).AsCurrency := Dataset.fieldbyname(_vlautpagto).AsCurrency;
    cdsNUAUTPAGTO.AsString                    := cdsCDAUTPAGTO.AsString;
  end;
  if (Dataset.State = dsinsert) and (dataset.fieldbyname(_dtprorrogacao).IsNull) then
  begin
    dataset.fieldbyname(_dtprorrogacao).AsDateTime := dataset.fieldbyname(_dtvencimento).AsDateTime;
  end;
  registro.set_update(cds);
end;

procedure TfrmAutPagto.cdsDTVENCIMENTOValidate(Sender: TField);
begin
//  if sender.OldValue <> cdsDTPRORROGACAO.AsVariant then
//  begin
    cdsDTPRORROGACAO.AsDateTime := sender.AsDateTime;
//  end;
end;

procedure TfrmAutPagto.cdsVLAUTPAGTOValidate(Sender: TField);
begin
  if Sender.ascurrency > 0 then
  begin
    cdsVLSALDO.ascurrency := sender.AsCurrency;
  end;
end;

procedure TfrmAutPagto.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  cdsDTEMISSAO.AsDateTime    := dtbanco;
  cdsdtentrada.AsDateTime    := cdsDTEMISSAO.AsDateTime;
  cdsDTVENCIMENTO.AsDateTime := cdsdtemissao.AsDateTime;
  cdsDTPRORROGACAO.AsDateTime:= cdsdtemissao.AsDateTime;
  cdsCDSTAUTPAGTO.AsInteger   := qregistro.Codigo_status_novo( tbl);
  cdsPRMORADIARIA.AsCurrency := 0;
  cdsVLAUTPAGTO.AsCurrency   := 0;
  cdsVLBAIXA.AsCurrency      := 0;
  cdsVLPREVISTO.AsCurrency   := 0;
  cdsVLDESCONTO.AsCurrency   := 0;
  cdsVLMULTA.AsCurrency      := 0;
  cdsVLDEVOLUCAO.AsCurrency  := 0;
  cdsVLABATIMENTO.AsCurrency := 0;
  cdsVLSALDO.AsCurrency      := 0;
  cdsVLDEDUCAO.AsCurrency    := 0;
  cdsVLACRESCIMO.AsCurrency  := 0;
  cdsVLJUROS.AsCurrency      := 0;
  cdsVLRECEBIDO.AsCurrency   := 0;
end;

procedure TfrmAutPagto.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  if (dts.State = dsedit) or (dts.State = dsinsert) then
  begin
    actbaixa.Enabled          := False;
    actbaixa.Visible          := False;
    actencontrocontas.Enabled := False;
    actencontrocontas.Visible := False;
    actajustarbaixa.Enabled   := False;
    actajustarbaixa.Visible   := False;
  end
  else if dts.State = dsbrowse then
  begin
    actbaixa.enabled          := (cdsCDSTAUTPAGTO.AsInteger = 1) and (not cdsCDAUTPAGTO.IsNull);
    actbaixa.Visible          := (cdsCDSTAUTPAGTO.AsInteger = 1) and (not cdsCDAUTPAGTO.IsNull);
    actencontrocontas.Enabled := (cdsCDSTAUTPAGTO.AsInteger = 1) and (not cdsCDAUTPAGTO.IsNull);
    actencontrocontas.Visible := (cdsCDSTAUTPAGTO.AsInteger = 1) and (not cdsCDAUTPAGTO.IsNull);
    if cds.Active then
    begin
      actajustarbaixa.Enabled   := cds.RecordCount > 0;
      actajustarbaixa.Visible   := cds.RecordCount > 0;
    end
    else
    begin
      actajustarbaixa.Enabled := false;
      actajustarbaixa.Visible := false;
      actbaixa.enabled        := false;
      actbaixa.Visible        := false;
    end;
  end;
  actparcelamento.Enabled   := actNovo.Enabled;
  actparcelamento.Visible   := actNovo.Visible;
end;

procedure TfrmAutPagto.cdsCDFORNECEDORValidate(Sender: TField);
begin
  if not fornecedor.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  fornecedor.stfornecedor.select(fornecedor.cdstfornecedor);
  if fornecedor.stfornecedor.bogerarinfo <> _S then
  begin
    messagedlg('Fornecedor está no status '+fornecedor.stfornecedor.nmstfornecedor+#13+
                'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMFORNECEDOR.AsString := fornecedor.nmfornecedor;
  txtnmfornecedor.Hint     := fornecedor.hint_rzsocial;
  if fornecedor.nuplconta <> '' then
  begin
    cdsNUPLCONTA.AsString := fornecedor.nuplconta;
  end;
  if fornecedor.cdcntcusto <> 0 then
  begin
    cdscdcntcusto.AsInteger := fornecedor.cdcntcusto;
  end;
end;

procedure TfrmAutPagto.cdsNUCNTCUSTOValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsCDcntcusto.Clear;
    cdsNMcntcusto.Clear;
    exit;
  end;
  if not codigoexiste( _cntcusto, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsCDcntcusto.AsString := CodigodoCampo(_cntcusto, sender.AsString, _nunivel);
  cdsNMcntcusto.AsString := Nomedocodigo(_cntcusto, cdsCDcntcusto.AsString);
end;

procedure TfrmAutPagto.cdsNUPLCONTAValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsCDPLCONTA.Clear;
    cdsNMPLCONTA.Clear;
    exit;
  end;
  if not codigoexiste( _plconta, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsCDPLCONTA.AsString := CodigodoCampo( _plconta, sender.AsString, _nunivel);
  cdsNMPLCONTA.AsString := Nomedocodigo( _plconta, cdsCDPLCONTA.AsString);
end;

procedure TfrmAutPagto.actajustarbaixaExecute(Sender: TObject);
begin
  if cdsCDAUTPAGTO.asstring <> '' then
  begin
    ExecutaSQL( 'update autpagto '+
                     'set vlsaldo=vlautpagto-coalesce((select sum(baixa.vlbaixa) '+
                                                      'from baixa '+
                                                      'where autpagto.cdempresa=baixa.cdempresa and baixa.cdautpagto=autpagto.cdautpagto),0)'+
                     ',autpagto.cdusuariobaixa=(select first 1 cdusuarioi '+
                                               'from baixa '+
                                               'where autpagto.cdempresa=baixa.cdempresa and baixa.cdautpagto=autpagto.cdautpagto '+
                                               'order by baixa.cdbaixa desc)'+
                     ',autpagto.dtbaixa=(select first 1 baixa.dtbaixa '+
                                        'from baixa '+
                                        'where autpagto.cdempresa=baixa.cdempresa and baixa.cdautpagto=autpagto.cdautpagto '+
                                        'order by baixa.cdbaixa desc)'+
                     ',autpagto.vlbaixa=coalesce((select sum(baixa.vlbaixa) '+
                                                 'from baixa '+
                                                 'where autpagto.cdempresa=baixa.cdempresa and baixa.cdautpagto=autpagto.cdautpagto),0)'+
                     ',autpagto.vlrecebido=coalesce((select sum(baixa.vlliquido) '+
                                                    'from baixa '+
                                                    'where autpagto.cdempresa=baixa.cdempresa and baixa.cdautpagto=autpagto.cdautpagto),0) '+
                     'where cdempresa='+empresa.cdempresa.tostring+' and cdautpagto='+cdsCDAUTPAGTO.asstring);
    Abrir(cdsCDAUTPAGTO.AsInteger);
    MessageDlg('Contas a Pagar ajustada.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmAutPagto.txtnmfornecedorDblClick(Sender: TObject);
begin
  actAbrirFornecedor.onExecute(actAbrirFornecedor);
end;

procedure TfrmAutPagto.txtnuentradaDblClick(Sender: TObject);
begin
  actAbrirEntrada.onExecute(actAbrirEntrada);
end;

procedure TfrmAutPagto.actAbrirEntradaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmAutPagto.cdsbaixaAfterScroll(DataSet: TDataSet);
begin
  tlbbaixa.Visible := cdsbaixaCDMOVBANCARIO.IsNull and (cdsbaixa.RecordCount > 0);
end;

procedure TfrmAutPagto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmAutPagto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmAutPagto.tbvbaixaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdmovbancario then
  begin
    actAbrirMovBancario.onExecute(actAbrirMovBancario)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdadntfornecedor then
  begin
    actabriradntfornecedorExecute(actabriradntfornecedor);
  end;
end;

procedure TfrmAutPagto.tbvbaixaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsbaixa, key);
end;

procedure TfrmAutPagto.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmAutPagto.FormCreate(Sender: TObject);
begin
  tbl      := _autpagto;
  exibe    := Maiuscula(_Contas+' '+_a+' '+_Pagar);
  cbxcdtpcobranca.Properties.ListSource := abrir_tabela(_tpcobranca);
  registro := tregistro.create(self,  tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 40, cds, tbl);
end;

procedure TfrmAutPagto.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpcobranca);
end;

procedure TfrmAutPagto.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmAutPagto.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmAutPagto.actimprimirautpagtoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(500, 'where autpagto.cdempresa='+empresa.cdempresa.tostring+' and autpagto.cdautpagto='+cdsCDAUTPAGTO.AsString);
end;

procedure TfrmAutPagto.actabriradntfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsbaixa);
end;

procedure TfrmAutPagto.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel( Key, sender);
end;

end.
