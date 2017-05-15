unit ucaixafinanceiro;

interface

uses
  System.Actions, System.UITypes,Firedac.Stan.Param,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Mask, StdCtrls, Menus, ComCtrls, ToolWin,
  DBClient, Provider, DB, Grids, DBGrids, FMTBcd, DBCtrls, SqlExpr, FireDAC.Comp.Client, comobj,
  YMOFXReader,
  classeempresa, classeregistrainformacao, classeexecutasql, classeretornasql,
  classegerar, classemovbancario, classequery, classeRegistro, classeaplicacao, classecaixafinanceiro, classeconta,
  uRotinas, uexportarexcel, uprogressbar, ustrings, uconstantes,
  uregistro, udatahora, uXLConst,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxTextEdit, cxDBEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxButtons, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxMemo,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxCalendar, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCurrencyEdit, cxPC, cxCheckBox, dxBar, cxLabel, cxBarEditItem,
  ActnList, dxBarExtItems, cxSplitter, dxStatusBar, cxColorComboBox, cxImageComboBox,
  cxPCdxBarPopupMenu, cxNavigator, cxDBLabel, dxBarBuiltInMenu;

type
  Tfrmcaixafinanceiro = class(TForm)
    dts: TDataSource;
    dtsdetail: TDataSource;
    dtsmovbancario: TDataSource;
    sdsmovbancario: TSQLDataSet;
    dspmovbancario: TDataSetProvider;
    cdsmovbancario: TClientDataSet;
    dts1: TDataSource;
    cdsdetail: TClientDataSet;
    sdsdetail: TSQLDataSet;
    sdsmovbancarioCDMOVBANCARIO: TIntegerField;
    sdsmovbancarioCDEXTRATO: TIntegerField;
    sdsmovbancarioCDCONTA: TIntegerField;
    sdsmovbancarioCDMOVIMENTACAO: TIntegerField;
    sdsmovbancarioNUMOVBANCARIO: TStringField;
    sdsmovbancarioDTEMISSAO: TDateField;
    sdsmovbancarioCDNATUREZA: TStringField;
    sdsmovbancarioDSHISTORICO: TStringField;
    sdsmovbancarioDSNOMINAL: TStringField;
    sdsmovbancarioBOCONCILIADO: TStringField;
    sdsmovbancarioDSOBSERVACAO: TBlobField;
    sdsmovbancarioVLDEPOSITO: TFMTBCDField;
    sdsmovbancarioVLSALDO: TFMTBCDField;
    sdsmovbancarioVLPAGAMENTO: TFMTBCDField;
    cdsmovbancarioCDMOVBANCARIO: TIntegerField;
    cdsmovbancarioCDEXTRATO: TIntegerField;
    cdsmovbancarioCDCONTA: TIntegerField;
    cdsmovbancarioCDMOVIMENTACAO: TIntegerField;
    cdsmovbancarioNUMOVBANCARIO: TStringField;
    cdsmovbancarioDTEMISSAO: TDateField;
    cdsmovbancarioVLLANCAMENTO: TFMTBCDField;
    cdsmovbancarioCDNATUREZA: TStringField;
    cdsmovbancarioDSHISTORICO: TStringField;
    cdsmovbancarioDSNOMINAL: TStringField;
    cdsmovbancarioBOCONCILIADO: TStringField;
    cdsmovbancarioDSOBSERVACAO: TBlobField;
    cdsmovbancarioVLDEPOSITO: TFMTBCDField;
    cdsmovbancarioVLSALDO: TFMTBCDField;
    cdsmovbancarioVLPAGAMENTO: TFMTBCDField;
    sdsdetailCDBAIXA: TIntegerField;
    sdsdetailCDMOVBANCARIO: TIntegerField;
    sdsdetailCDTPBAIXA: TIntegerField;
    sdsdetailCDADNTCLIENTE: TIntegerField;
    sdsdetailCDAUTPAGTO: TIntegerField;
    sdsdetailCDDUPLICATA: TIntegerField;
    sdsdetailCDADNTFORNECEDOR: TIntegerField;
    sdsdetailCDCHEQUE: TIntegerField;
    sdsdetailNUBAIXA: TStringField;
    sdsdetailDTBAIXA: TDateField;
    sdsdetailVLMULTA: TFMTBCDField;
    sdsdetailVLJURO: TFMTBCDField;
    sdsdetailVLBAIXA: TFMTBCDField;
    sdsdetailVLDESCONTO: TFMTBCDField;
    sdsdetailVLABATIMENTO: TFMTBCDField;
    sdsdetailVLDEVOLUCAO: TFMTBCDField;
    sdsdetailVLLIQUIDO: TFMTBCDField;
    cdsdetailCDBAIXA: TIntegerField;
    cdsdetailCDMOVBANCARIO: TIntegerField;
    cdsdetailCDTPBAIXA: TIntegerField;
    cdsdetailCDADNTCLIENTE: TIntegerField;
    cdsdetailCDAUTPAGTO: TIntegerField;
    cdsdetailCDDUPLICATA: TIntegerField;
    cdsdetailCDADNTFORNECEDOR: TIntegerField;
    cdsdetailCDCHEQUE: TIntegerField;
    cdsdetailNUBAIXA: TStringField;
    cdsdetailDTBAIXA: TDateField;
    cdsdetailVLMULTA: TFMTBCDField;
    cdsdetailVLJURO: TFMTBCDField;
    cdsdetailVLBAIXA: TFMTBCDField;
    cdsdetailVLDESCONTO: TFMTBCDField;
    cdsdetailVLABATIMENTO: TFMTBCDField;
    cdsdetailVLDEVOLUCAO: TFMTBCDField;
    cdsdetailVLLIQUIDO: TFMTBCDField;
    cdsmovbancariosdsdetail: TDataSetField;
    sdsdetailRZSOCIALC: TStringField;
    sdsdetailRZSOCIALF: TStringField;
    cdsdetailRZSOCIALC: TStringField;
    cdsdetailRZSOCIALF: TStringField;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvNUMOVBANCARIO: TcxGridDBColumn;
    tbvBOCONCILIADO: TcxGridDBColumn;
    tbvNMMOVIMENTACAO: TcxGridDBColumn;
    tbvDSHISTORICO: TcxGridDBColumn;
    tbvVLPAGAMENTO: TcxGridDBColumn;
    tbvVLDEPOSITO: TcxGridDBColumn;
    tbvVLSALDO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    bmg1: TdxBarManager;
    dxbrManager1Bar1: TdxBar;
    dxbrsbtmRegistro: TdxBarSubItem;
    act: TActionList;
    actmovbancario: TAction;
    actAbrir: TAction;
    actEditar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actfechar: TAction;
    bmg1Bar1: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    cxBarEditItem2: TcxBarEditItem;
    dxBarLargeButton6: TdxBarLargeButton;
    cbx1: TcxBarEditItem;
    cbxcdconta: TdxBarCombo;
    spl1: TcxSplitter;
    dxBarButton2: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton11: TdxBarButton;
    actVisualizar: TAction;
    actcaixa: TAction;
    actconciliacao: TAction;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    ntb: TNotebook;
    pgc: TcxPageControl;
    tbspagamento: TcxTabSheet;
    Label1: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label13: TLabel;
    edtcdmovimentacaopagamento: TcxDBLookupComboBox;
    edtdtemissaopagamento: TcxDBDateEdit;
    edtvllancamentopagamento: TcxDBCalcEdit;
    edtdsobservacaopagamento: TcxDBMemo;
    edtdshistoricopagamento: TcxDBTextEdit;
    edtdsnominalpagamento: TcxDBTextEdit;
    tbsdeposito: TcxTabSheet;
    Label11: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    edtcdmovimentacaodeposito: TcxDBLookupComboBox;
    edtdtemissaodeposito: TcxDBDateEdit;
    edtvllancamentodeposito: TcxDBCalcEdit;
    edtdsobservacaodeposito: TcxDBMemo;
    edtdshistoricodeposito: TcxDBTextEdit;
    edtdsnominaldeposito: TcxDBTextEdit;
    tbsduplicata: TcxTabSheet;
    Label21: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Bevel1: TBevel;
    edtvllancamentoduplicata: TcxDBCalcEdit;
    edtcdmovimentacaoduplicata: TcxDBLookupComboBox;
    edtdtemissaoduplicata: TcxDBDateEdit;
    edtdshistoricoduplicata: TcxDBTextEdit;
    grdduplicata: TcxGrid;
    tbvduplicata: TcxGridDBTableView;
    tbvduplicataNUBAIXA: TcxGridDBColumn;
    tbvduplicataRZSOCIALC: TcxGridDBColumn;
    tbvduplicataVLBAIXA: TcxGridDBColumn;
    tbvduplicataVLMULTA: TcxGridDBColumn;
    tbvduplicataVLJURO: TcxGridDBColumn;
    tbvduplicataVLDESCONTO: TcxGridDBColumn;
    tbvduplicataVLABATIMENTO: TcxGridDBColumn;
    tbvduplicataVLDEVOLUCAO: TcxGridDBColumn;
    tbvduplicataVLLIQUIDO: TcxGridDBColumn;
    grdduplicataLevel1: TcxGridLevel;
    tbsautpagto: TcxTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label20: TLabel;
    Bevel2: TBevel;
    edtcdmovimentacaoautpagto: TcxDBLookupComboBox;
    edtdtemissaoautpagto: TcxDBDateEdit;
    edtvllancamentoautpagto: TcxDBCalcEdit;
    edtdshistoricoautpagto: TcxDBTextEdit;
    grdautpagto: TcxGrid;
    tbvautpagto: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    tbvautpagtoRZSOCIALF: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    tbsadntcliente: TcxTabSheet;
    Label27: TLabel;
    Label26: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    edtdtemissaoadntcliente: TcxDBDateEdit;
    edtvllancamentoadntcliente: TcxDBCalcEdit;
    edtdsobservacaoadntcliente: TcxDBMemo;
    edtdshistoricoadntcliente: TcxDBTextEdit;
    edtdsnominaladntcliente: TcxDBTextEdit;
    tbsadntfornecedor: TcxTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    edtdtemissaoadntfornecedor: TcxDBDateEdit;
    edtvllancamentoadntfornecedor: TcxDBCalcEdit;
    edtdsobservacaoadntfornecedor: TcxDBMemo;
    edtdshistoricoadntfornecedor: TcxDBTextEdit;
    edtdsnominaladntfornecedor: TcxDBTextEdit;
    tbstranferencia: TcxTabSheet;
    Label37: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    edtcdmovimentacaotransferencia: TcxDBLookupComboBox;
    edtdtemissaotransferencia: TcxDBDateEdit;
    edtvllancamentotransferencia: TcxDBCalcEdit;
    edtdsobservacaotransferencia: TcxDBMemo;
    edtdshistoricotransferencia: TcxDBTextEdit;
    edtdsnominaltransferencia: TcxDBTextEdit;
    dxBarDockControl2: TdxBarDockControl;
    tbvextrato: TcxGridDBTableView;
    grdextratoLevel1: TcxGridLevel;
    grdextrato: TcxGrid;
    bmg1Bar3: TdxBar;
    actimportar: TAction;
    dxBarButton4: TdxBarButton;
    dtsextrato: TDataSource;
    tbvextratoDTEMISSAO: TcxGridDBColumn;
    tbvextratoNMTPEXTRATO: TcxGridDBColumn;
    tbvextratoNMCATEXTRATO: TcxGridDBColumn;
    tbvextratoVLPAGAMENTO: TcxGridDBColumn;
    tbvextratoVLDEPOSITO: TcxGridDBColumn;
    tbvextratoVLSALDO: TcxGridDBColumn;
    tbvextratoBOCONCILIADO: TcxGridDBColumn;
    tbvextratoNUEXTRATO: TcxGridDBColumn;
    dxBarButton12: TdxBarButton;
    actGerarMovimento: TAction;
    opd: TOpenDialog;
    dxBarSubItem3: TdxBarSubItem;
    actvisualizarc: TAction;
    actconciliado: TAction;
    actnconciliado: TAction;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    acttodos: TAction;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    actconciliar: TAction;
    actpreconciliar: TAction;
    dxBarButton18: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    actChequePagamento: TAction;
    actdatavalor: TAction;
    dxBarButton19: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    actPagamento: TAction;
    actDeposito: TAction;
    actTodosvalor: TAction;
    dxBarButton5: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    lblbconciliar: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    tbvCDMOVBANCARIO: TcxGridDBColumn;
    actlink: TAction;
    dxBarButton22: TdxBarButton;
    pnl: TcxLabel;
    lbl1: TcxLabel;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    actexcluirextrato: TAction;
    dxBarButton17: TdxBarButton;
    actDesconciliar: TAction;
    dxBarButton23: TdxBarButton;
    actsincronizar: TAction;
    btsincronizar: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    actrecalcular: TAction;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    actsaldoconta: TAction;
    actsaldoextrato: TAction;
    actextratomovanalitico: TAction;
    sdsmovbancarioCDUSUARIOI: TIntegerField;
    sdsmovbancarioCDUSUARIOA: TIntegerField;
    sdsmovbancarioCDCOMPUTADORI: TIntegerField;
    sdsmovbancarioCDCOMPUTADORA: TIntegerField;
    sdsmovbancarioTSINCLUSAO: TSQLTimeStampField;
    sdsmovbancarioTSALTERACAO: TSQLTimeStampField;
    sdsdetailVLJURONRECEBIDO: TFMTBCDField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailVLJURONRECEBIDO: TFMTBCDField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    tbvduplicataDSHISTORICO: TcxGridDBColumn;
    tbvautpagtoColumn1: TcxGridDBColumn;
    sdsdetailDSHISTORICOD: TStringField;
    sdsdetailDSHISTORICOA: TStringField;
    cdsdetailDSHISTORICOD: TStringField;
    cdsdetailDSHISTORICOA: TStringField;
    edtdti2: TcxBarEditItem;
    edtdtf2: TcxBarEditItem;
    tbvextratoCDEXTRATO: TcxGridDBColumn;
    actextratocaixa: TAction;
    actretorno: TAction;
    dxBarButton29: TdxBarButton;
    cdsmovbancarioCDUSUARIOI: TIntegerField;
    cdsmovbancarioCDUSUARIOA: TIntegerField;
    cdsmovbancarioCDCOMPUTADORI: TIntegerField;
    cdsmovbancarioCDCOMPUTADORA: TIntegerField;
    cdsmovbancarioTSINCLUSAO: TSQLTimeStampField;
    cdsmovbancarioTSALTERACAO: TSQLTimeStampField;
    dtsextratoview: TDataSource;
    grdLevel2: TcxGridLevel;
    grdDBTableView2: TcxGridDBTableView;
    grdDBTableView2DTEMISSAO: TcxGridDBColumn;
    grdDBTableView2NUEXTRATO: TcxGridDBColumn;
    grdDBTableView2NMTPEXTRATO: TcxGridDBColumn;
    grdDBTableView2NMCATEXTRATO: TcxGridDBColumn;
    grdDBTableView2VLPAGAMENTO: TcxGridDBColumn;
    grdDBTableView2VLDEPOSITO: TcxGridDBColumn;
    grdDBTableView2VLSALDO: TcxGridDBColumn;
    actextratoview: TAction;
    dxBarButton30: TdxBarButton;
    actopcoes: TAction;
    dxBarSubItem7: TdxBarSubItem;
    actfecharcaixa: TAction;
    actabrircaixa: TAction;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    actcaixamenu: TAction;
    tbvextratoBOATIVAR: TcxGridDBColumn;
    sdsmovbancarioCDPLCONTA: TIntegerField;
    sdsmovbancarioCDCNTCUSTO: TIntegerField;
    sdsmovbancarioCDMOVBANCARIODESTINO: TIntegerField;
    sdsmovbancarioVLLANCAMENTO: TFMTBCDField;
    sdsmovbancarioNUPLCONTA: TStringField;
    cdsmovbancarioCDPLCONTA: TIntegerField;
    cdsmovbancarioCDCNTCUSTO: TIntegerField;
    cdsmovbancarioCDMOVBANCARIODESTINO: TIntegerField;
    cdsmovbancarioNUPLCONTA: TStringField;
    actabrirautpagto: TAction;
    actabrirduplicata: TAction;
    Label2: TLabel;
    Label4: TLabel;
    txtnubaixaadntfornecedor: TDBText;
    txtnubaixaadntcliente: TDBText;
    actabriradntcliente: TAction;
    actabriradntfornecedor: TAction;
    acttransferencia: TAction;
    dxBarButton33: TdxBarButton;
    actdespesa: TAction;
    dxBarButton34: TdxBarButton;
    actmovimentacao: TAction;
    actadntcliente: TAction;
    dxBarButton35: TdxBarButton;
    actreceita: TAction;
    actadntfornecedor: TAction;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    actnovo: TAction;
    actimprimirmovbancario: TAction;
    actimprimirmovbancario2: TAction;
    actdepositoidentificado: TAction;
    pumbaixa: TPopupMenu;
    DepsitoIdentificador1: TMenuItem;
    tbvCAIXA: TcxGridDBColumn;
    dxBarButton8: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton40: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton46: TdxBarButton;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarSubItem11: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    actdetail: TAction;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    pumimprimir: TdxBarPopupMenu;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    btnimprimir: TdxBarButton;
    sdsmovbancarioCDEMPRESA: TLargeintField;
    sdsmovbancarioCDFORNECEDOR: TLargeintField;
    sdsmovbancarioCDCLIENTE: TLargeintField;
    sdsmovbancarioCDCONTADESTINO: TIntegerField;
    sdsmovbancarioARQUIVORETORNO: TBlobField;
    sdsmovbancarioNUCNTCUSTO: TStringField;
    cdsmovbancarioCDEMPRESA: TLargeintField;
    cdsmovbancarioCDFORNECEDOR: TLargeintField;
    cdsmovbancarioCDCLIENTE: TLargeintField;
    cdsmovbancarioCDCONTADESTINO: TIntegerField;
    cdsmovbancarioARQUIVORETORNO: TBlobField;
    cdsmovbancarioNUCNTCUSTO: TStringField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsdetailCDNEGOCIACAOENTRADA: TIntegerField;
    sdsdetailCDADNTCLIENTEDESTINO: TIntegerField;
    sdsdetailVLCOMISSAO: TFMTBCDField;
    sdsdetailPRCOMISSAO: TFloatField;
    sdsdetailVLJUROSNRECEBIDO: TFMTBCDField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDNEGOCIACAOENTRADA: TIntegerField;
    cdsdetailCDADNTCLIENTEDESTINO: TIntegerField;
    cdsdetailVLCOMISSAO: TFMTBCDField;
    cdsdetailPRCOMISSAO: TFloatField;
    cdsdetailVLJUROSNRECEBIDO: TFMTBCDField;
    procedure btninserirduplicataClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure cbxcdcontaChange(Sender: TObject);
    procedure edtdti2Change(Sender: TObject);
    procedure grdDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: String);
    procedure actEditarExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actVisualizarExecute(Sender: TObject);
    procedure actcaixaExecute(Sender: TObject);
    procedure actconciliacaoExecute(Sender: TObject);
    procedure actimportarExecute(Sender: TObject);
    procedure On_set_filtro(Sender: TObject);
    procedure actconciliarExecute(Sender: TObject);
    procedure actpreconciliarExecute(Sender: TObject);
    procedure actChequePagamentoExecute(Sender: TObject);
    procedure actdatavalorExecute(Sender: TObject);
    procedure tbvSelectionChanged(Sender: TcxCustomGridTableView);
    procedure actGerarMovimentoExecute(Sender: TObject);
    procedure actlinkExecute(Sender: TObject);
    procedure actDesconciliarExecute(Sender: TObject);
    procedure actexcluirextratoExecute(Sender: TObject);
    procedure actsincronizarExecute(Sender: TObject);
    procedure actrecalcularExecute(Sender: TObject);
    procedure actsaldocontaExecute(Sender: TObject);
    procedure actsaldoextratoExecute(Sender: TObject);
    procedure actextratomovanaliticoExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvextratoSelectionChanged(Sender: TcxCustomGridTableView);
    procedure tbvDblClick(Sender: TObject);
    procedure actextratocaixaExecute(Sender: TObject);
    procedure actretornoExecute(Sender: TObject);
    procedure actextratoviewExecute(Sender: TObject);
    procedure actfecharcaixaExecute(Sender: TObject);
    procedure actabrircaixaExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actcaixamenuExecute(Sender: TObject);
    procedure tbvextratoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actabrirautpagtoExecute(Sender: TObject);
    procedure tbvautpagtoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirduplicataExecute(Sender: TObject);
    procedure tbvduplicataCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabriradntfornecedorExecute(Sender: TObject);
    procedure actabriradntclienteExecute(Sender: TObject);
    procedure txtnubaixaadntfornecedorDblClick(Sender: TObject);
    procedure txtnubaixaadntclienteDblClick(Sender: TObject);
    procedure acttransferenciaExecute(Sender: TObject);
    procedure actdespesaExecute(Sender: TObject);
    procedure actmovimentacaoExecute(Sender: TObject);
    procedure actadntclienteExecute(Sender: TObject);
    procedure actadntfornecedorExecute(Sender: TObject);
    procedure actreceitaExecute(Sender: TObject);
    procedure actmovbancarioExecute(Sender: TObject);
    procedure actnovoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actimprimirmovbancarioExecute(Sender: TObject);
    procedure actimprimirmovbancario2Execute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actdepositoidentificadoExecute(Sender: TObject);
    procedure actAbrirExecute(Sender: TObject);
    procedure actdetailExecute(Sender: TObject);
    procedure tbvextratoTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: String);
    procedure tbvFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure qryAfterRefresh(DataSet: TDataSet);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforeRefresh(DataSet: TDataSet);
    procedure qryextratoAfterScroll(DataSet: TDataSet);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private { Private declarations }
    tbl : string;
    conta : Tconta;
    movbancario : TMovbancario;
    caixafinanceiro : tcaixafinanceiro;
    extratofinal, saldofinal, filtro, filtro2 : string;
    qryextratoview : TClasseQuery;
    qryextrato : TClasseQuery;
    qry : TFDQuery;
    procedure AtivarControles(ativar:boolean);
    procedure loadbanco;
    procedure set_filtro(sender:TObject);
    procedure setform;
    procedure setrecord;
    procedure Check_conta_e_data_caixa;
    procedure SetSaldo;
    procedure MudarGuia(nmmovimentacao, cdmovbancario:string);
    procedure LoadRecord(cdmovbancario:string);
    procedure selecionar_registro;
    procedure SetQry;
    procedure SetQryExtrato;
    procedure ImportarSicoob;
    function getcodigo(tabela, texto: string): string;
    procedure ImportarOFX;
    function ExtratoRepetido(YMOFXReader1: TYMOFXReader; i: integer): boolean;
    function ImportarExtratoRepetido(YMOFXReader1: TYMOFXReader; i: integer): boolean;
    procedure RefreshDados;
    function PermiteEditarExcluir:boolean;
    procedure ExportarDepositoIdentificado(cdbaixa, cdautpagto: string);
  public { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmcaixafinanceiro: Tfrmcaixafinanceiro;

implementation

uses uMain,
  uDtmMain,
  udlgaprovarconciliado,
  umovbancario,
  classearquivo,
  uimprimirrelatoriopadrao,
  classeboletoACBR,
  uDlgEscolhePedido,
  udlgtransferenciabancaria,
  udlggerarmovimentacao,
  udlggeraradiantamento,
  uLocalizarDuplicata,
  uLocalizarAutPagto,
  {$IFDEF VER210}umovbancarioimprimirlaser2,{$ENDIF}
  ulocalizarmovbancario, uMenuRelatorio;

{$R *.dfm}

const
  cor = $00F0E8D9;

procedure Tfrmcaixafinanceiro.setform;
begin
  edtdti2.EditValue := DtBanco;
  edtdtf2.EditValue := edtdti2.EditValue;
end;

procedure TFrmCaixaFinanceiro.SetSaldo;
var
  cdconta : integer;
begin
  cdconta := qregistro.CodigodoNomeInteiro(_conta, cbxcdconta.Text);
  if cdconta = 0 then
  begin
    exit;
  end;
  if conta.cdconta <> cdconta then
  begin
    conta.select(cdconta);
    conta.tpconta.Select(conta.cdtpconta);
    conta.setboleto.ler(conta.cdconta);
  end;
  tbvBOCONCILIADO.Visible  := conta.nuagencia <> '';
  actconciliacao.Visible   := conta.nuagencia <> '';
  actextratoview.Visible   := conta.nuagencia <> '';
  actretorno.Visible       := conta.nuagencia <> '';
  actsaldoextrato.Visible  := conta.nuagencia <> '';
  tbvNUMOVBANCARIO.visible := conta.nuagencia <> '';
  if conta.dtsaldo >= edtdti2.EditValue then
  begin
    MessageDlg('O saldo inicial da conta está definida para o dia '+formatdatetime(_dd_mm_yyyy, conta.dtsaldo)+'.'#13'Valores de saldo até esta data podem apresentar com erros.', mtInformation, [mbOK], 0);
  end;
  tbvVLSALDO.Caption := 'Saldo Anterior R$ '+formatfloat(__moeda, conta.ValorSaldoData(edtdti2.EditValue, conta.cdconta));
  saldofinal    := 'R$ '+formatfloat(__moeda, conta.ValorSaldoData(edtdtf2.EditValue+1, conta.cdconta));
  extratofinal  := 'R$ '+formatfloat(__moeda, conta.ValorExtratoData(edtdtf2.EditValue));
end;

procedure Tfrmcaixafinanceiro.setrecord;
var
  cdconta : string;
begin
  tbvextrato.OnSelectionChanged := nil;
  qry.close;
  qryextrato.q.Close;
  qry.AfterScroll        := nil;
  qryextrato.q.AfterScroll := nil;
  if cbxcdconta.Text = '' then
  begin
    exit;
  end;
  cdconta := qregistro.CodigodoNome(_conta, cbxcdconta.Text);
  if cdconta = '' then
  begin
    exit;
  end;
  setsaldo;
  actretorno.Visible := conta.setboleto.Count > 0;
  qry.ParamByName(_CDEMPRESA).AsLargeint  := empresa.cdempresa;
  qry.ParamByName(_CDCONTA).AsString    := cdconta;
  qry.ParamByName(_DTEMISSAO+_I).AsDate := edtdti2.EditValue;
  qry.ParamByName(_DTEMISSAO+_F).AsDate := edtdtf2.EditValue;
  qry.open;
  qryextrato.q.ParamByName(_CDCONTA).AsString  := cdconta;
  qryextrato.q.ParamByName(_CDEMPRESA).AsLargeint  := empresa.cdempresa;
  qryextrato.q.ParamByName(_DTEMISSAO+_I).AsDate := edtdti2.EditValue;
  qryextrato.q.ParamByName(_DTEMISSAO+_F).AsDate := edtdtf2.EditValue;
  qryextrato.q.open;
  qryextrato.q.AfterScroll := qryextratoAfterScroll;
  qryextratoAfterScroll(qryextrato.q);
  qry.AfterScroll := qryAfterScroll;
  qryAfterScroll(qry);
  actrecalcular.Enabled := True;
  actrecalcular.Visible := True;
  tbvextrato.OnSelectionChanged := tbvextratoSelectionChanged;
end;

procedure Tfrmcaixafinanceiro.LoadRecord(cdmovbancario:string);
begin
  cdsmovbancario.close;
  if cdmovbancario <> '' then
  begin
    sdsmovbancario.ParamByName(_cdempresa).AsLargeint     := empresa.cdempresa;
    sdsmovbancario.ParamByName(_cdmovbancario).AsString := cdmovbancario;
    cdsmovbancario.open;
  end;
end;

procedure Tfrmcaixafinanceiro.MudarGuia(nmmovimentacao, cdmovbancario: string);
var
  cdtpmodulo, nmtpmodulo, cdmovimentacao : string;
begin
  if nmmovimentacao = '' then
  begin
    Exit;
  end;
  cdmovimentacao := qregistro.codigodonome(_movimentacao, nmmovimentacao);
  cdtpmodulo     := nomedocodigo(_movimentacao, cdmovimentacao, _cdtpmodulo);
  if cdtpmodulo = '' then
  begin
    Exit;
  end;
  nmtpmodulo := nomedocodigo(_tpmodulo, cdtpmodulo);
  tbsdeposito.TabVisible       := nmtpmodulo = 'DEPOSITO';
  tbspagamento.TabVisible      := nmtpmodulo = 'PAGAMENTO';
  tbsduplicata.TabVisible      := nmtpmodulo = 'CONTAS A RECEBER';
  tbsautpagto.TabVisible       := nmtpmodulo = 'CONTAS A PAGAR';
  tbsadntcliente.TabVisible    := nmtpmodulo = 'ADIANTAMENTO CLIENTE';
  tbsadntfornecedor.TabVisible := nmtpmodulo = 'ADIANTAMENTO FORNECEDOR';
  tbstranferencia.TabVisible   := nmtpmodulo = 'TRANSFERENCIA';
  if nmtpmodulo = 'DEPOSITO' then
  begin
    pgc.ActivePage := tbsdeposito
  end
  else if nmtpmodulo = 'PAGAMENTO' then
  begin
    pgc.ActivePage := tbspagamento
  end
  else if nmtpmodulo = 'CONTAS A RECEBER' then
  begin
    pgc.ActivePage := tbsduplicata
  end
  else if nmtpmodulo = 'CONTAS A PAGAR' then
  begin
    pgc.ActivePage := tbsautpagto
  end
  else if nmtpmodulo = 'ADIANTAMENTO CLIENTE' then
  begin
    pgc.ActivePage := tbsadntcliente
  end
  else if nmtpmodulo = 'ADIANTAMENTO FORNECEDOR' then
  begin
    pgc.ActivePage := tbsadntfornecedor
  end
  else if nmtpmodulo = 'TRANSFERENCIA' then
  begin
    pgc.ActivePage := tbstranferencia;
  end;
end;

procedure TFrmCaixaFinanceiro.AtivarControles(ativar:boolean);
begin
  actNovo.Enabled := not ativar;
  acteditar.Enabled := not ativar;
  actexcluir.Enabled := not ativar;
  cdsmovbancario.ReadOnly := not ativar;
end;

procedure Tfrmcaixafinanceiro.btninserirduplicataClick(Sender: TObject);
begin
  //BaixarDocumento(_duplicata)
end;

procedure Tfrmcaixafinanceiro.loadbanco;
var
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('select nmconta from conta where cdempresa='+empresa.cdempresa.tostring+' order by nmconta');
    cbxcdconta.Items.Clear;
    while not q.q.eof do
    begin
      cbxcdconta.Items.Add(q.q.fields[0].asstring);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure Tfrmcaixafinanceiro.FormDestroy(Sender: TObject);
begin
  freeandnil(qryextratoview);
  freeandnil(qryextrato);
  freeandnil(registro);
  freeandnil(movbancario);
  freeandnil(conta);
  freeandnil(caixafinanceiro);
end;

procedure Tfrmcaixafinanceiro.btnsalvarClick(Sender: TObject);
begin
  cdsmovbancario.ApplyUpdates(0);
  ativarcontroles(false);
  setrecord;
end;

procedure Tfrmcaixafinanceiro.FormShow(Sender: TObject);
begin
  filtro  := '';
  filtro2 := '';
  setform;
  caixafinanceiro := tcaixafinanceiro.create(qry);
  conta := TConta.create;
  edtdti2.EditValue := DtBanco;
  edtdtf2.EditValue := edtdti2.EditValue;
  loadbanco;
  cbxcdconta.SetFocus;
end;

procedure Tfrmcaixafinanceiro.dxBarLargeButton6Click(Sender: TObject);
begin
  ativarcontroles(true);
  cdsmovbancario.Insert;
end;

procedure Tfrmcaixafinanceiro.cbxcdcontaChange(Sender: TObject);
begin
  setrecord;
end;

procedure Tfrmcaixafinanceiro.edtdti2Change(Sender: TObject);
begin
  if VarIsNull(TcxBarEditItem(Sender).EditValue) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data]), mtinformation, [mbok], 0);
    TcxBarEditItem(Sender).EditValue := DtBanco;
    TcxBarEditItem(Sender).SetFocus;
    abort;
  end;
  setrecord;
end;

procedure Tfrmcaixafinanceiro.grdDBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: String);
begin
  ATEXT := saldofinal;
end;

procedure Tfrmcaixafinanceiro.tbvduplicataCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nubaixa then
  begin
    actAbrirduplicataExecute(actAbrirduplicata);
  end;
end;

procedure Tfrmcaixafinanceiro.actEditarExecute(Sender: TObject);
begin
  if qry.FieldByName(_CDMOVIMENTACAO).AsString = _13 then
  begin
    if GerarAdiantamento(_adntcliente, conta.cdconta, qry.FieldByName(_CDMOVBANCARIO).asinteger, qry.FieldByName(_caixa).asstring = UpperCase(_fechado)) and qry.Active then
    begin
      RefreshDados;
    end;
  end
  else if qry.FieldByName(_CDMOVIMENTACAO).AsString = _14 then
  begin
    if GerarAdiantamento(_adntfornecedor, conta.cdconta, qry.FieldByName(_CDMOVBANCARIO).asinteger, qry.FieldByName(_caixa).asstring = UpperCase(_fechado)) and  qry.Active then
    begin
      RefreshDados;
    end;
  end
  else if Gerar_movimento(_editar, inttostr(conta.cdconta), qry.FieldByName(_CDMOVBANCARIO).AsString, qry.FieldByName(_caixa).asstring) and qry.Active then
  begin
    RefreshDados;
  end;
end;

procedure Tfrmcaixafinanceiro.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(_caixa+_financeiro, frmmain.tlbnew);
end;

procedure Tfrmcaixafinanceiro.actVisualizarExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcaixafinanceiro.actcaixaExecute(Sender: TObject);
begin
  grdLevel2.Visible := False;
  ntb.ActivePage    := 'Caixa';
  ntb.Visible       := True;
  spl1.Visible      := true;
end;

procedure Tfrmcaixafinanceiro.actconciliacaoExecute(Sender: TObject);
begin
  grdLevel2.Visible := false;
  ntb.ActivePage    := 'Conciliação';
  ntb.Visible       := True;
  spl1.Visible      := true;
end;

function Tfrmcaixafinanceiro.getcodigo(tabela, texto:string):string;
begin
  Result := qregistro.CodigodoNome(tabela, texto);
  if result = '' then
  begin
    result := InserirRegistro(tabela, texto);
  end;
end;

procedure Tfrmcaixafinanceiro.ImportarSicoob;
var
  i : Integer;
  dtemissao, dtextrato : TDate;
  linha : TStrings;
begin
  linha := TStringList.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    linha.LoadFromFile(opd.FileName);
    if removercaracteres(conta.nuconta) <> Copy(linha[0], 66, 6) then
    begin
      MessageDlg('Arquivo pertence a conta '+Copy(linha[0], 66, 6)+'.'#13'Importação não concluída.', mtinformation, [mbok], 0);
      Abort;
    end;
    frmprogressbar.gau.MaxValue := linha.Count - 3;
    frmprogressbar.Show;
    qryextrato.q.UpdateOptions.ReadOnly := False;
    dtextrato           := StrToDate(copy(linha[2], 135, 2)+'/'+copy(linha[2], 137, 2)+'/'+copy(linha[2], 139,4));
    for i := 2 to linha.Count - 3 do
    begin
      frmprogressbar.gau.Progress := i;
      frmprogressbar.pnl.Caption  := 'Processando registro '+inttostr(i)+' de '+inttostr(linha.count-1);
      Application.ProcessMessages;
      dtemissao := StrToDate(copy(linha[i], 135, 2)+'/'+copy(linha[i], 137, 2)+'/'+copy(linha[i], 139,4));
      if dtemissao < conta.dtextrato then
      begin
        MessageDlg('Arquivo é de data anterior ('+formatdatetime(_dd_mm_yyyy, dtemissao)+') a data inicial do extrato ('+formatdatetime(_dd_mm_yyyy, conta.dtextrato)+') da conta.'#13+
                   'Altere a data do extrato no cadastro da conta'#13+
                   'para poder continuar.', mtInformation, [mbOK], 0);
        Abort;
      end;
      // verificar se já foi inserido
      if (RetornaSQLInteger('select count(*) '+
             'from extrato '+
             'where cdempresa='+empresa.cdempresa.tostring+' '+
             'and cdtpextrato='+getcodigo(_tpextrato, RemoverEspacosVazios(copy(linha[i], 177, 25)))+' '+
             'and cdcatextrato='+getcodigo(_catextrato, RemoverEspacosVazios(copy(linha[i], 177, 25)))+' '+
             'and vlextrato='+RemoverCaracterInicio(copy(linha[i], 151, 16)+'.'+copy(linha[i], 167, 2),_0)+' '+
             'and cdconta='+inttostr(conta.cdconta)+' '+
             'and dtemissao='+quotedstr(copy(linha[i], 137, 2)+'/'+copy(linha[i], 135, 2)+'/'+copy(linha[i], 139,4))+' '+
             'and nuextrato='+quotedstr(RemoverChar(RemoverEspacosVazios(RemoverCaracterInicio(copy(linha[i], 202, 40), _0)),'.'))) > 0) or
         (copy(linha[i], 135, 2)+'/'+copy(linha[i], 137, 2)+'/'+copy(linha[i], 139,4) = _00_00_0000) then
      begin
        Continue;
      end;
      qryextrato.q.Append;
      qryextrato.q.FieldByName(_CDEXTRATO).AsString := GerarCodigo(_extrato);
      qryextrato.q.FieldByName(_CDCONTA).AsInteger := conta.cdconta;
      qryextrato.q.FieldByName(_DTEMISSAO).AsDateTime := dtemissao;
      qryextrato.q.FieldByName(_CDNATUREZA).AsString := copy(linha[i], 169, 1);
      if qryextrato.q.FieldByName(_CDNATUREZA).AsString = _D then
      begin
        qryextrato.q.FieldByName(_VLPAGAMENTO).AsString := RemoverCaracterInicio(copy(linha[i], 151, 16)+','+copy(linha[i], 167, 2), _0)
      end
      else
      begin
        qryextrato.q.FieldByName(_VLDEPOSITO).AsString := RemoverCaracterInicio(copy(linha[i], 151, 16)+','+copy(linha[i], 167, 2), _0);
      end;
      qryextrato.q.FieldByName(_BOCONCILIADO).AsString := _N;
      qryextrato.q.FieldByName(_VLEXTRATO).AsString := RemoverCaracterInicio(copy(linha[i], 151, 16)+','+copy(linha[i], 167, 2),_0);
      qryextrato.q.FieldByName(_NUEXTRATO).AsString := RemoverChar(RemoverEspacosVazios(RemoverCaracterInicio(copy(linha[i], 202, 40), _0)),'.');
      if qryextrato.q.FieldByName(_NUEXTRATO).AsString = '' then
      begin
        qryextrato.q.FieldByName(_NUEXTRATO).AsString := ' ';
      end;
      qryextrato.q.FieldByName(_VLSALDO).AsString := RemoverCaracterInicio(copy(linha[i], 151, 16)+','+copy(linha[i], 167, 2),_0);
      qryextrato.q.FieldByName(_CDTPEXTRATO).AsString := getcodigo(_tpextrato, RemoverEspacosVazios(copy(linha[i], 177, 25)));
      qryextrato.q.FieldByName(_CDCATEXTRATO).AsString := getcodigo(_CATEXTRATO, RemoverEspacosVazios(copy(linha[i], 177, 25)));
      RegistraInformacao_(qryextrato.q);
      qryextrato.q.Post;
    end;
    conta.RecalcularExtrato(dtextrato);
    qryextrato.q.UpdateOptions.ReadOnly := true;
    qryextrato.q.Refresh;
    Adicionar_Arquivo_Extrato(opd.FileName);
  finally
    FreeAndNil(linha);
    FreeAndNil(frmprogressbar);
  end;
end;

function Tfrmcaixafinanceiro.ExtratoRepetido(YMOFXReader1: TYMOFXReader; i: integer):boolean;
var
  sql : string;
begin
  sql := 'select count(*) '+
         'from extrato '+
         'where cdempresa='+empresa.cdempresa.tostring+' '+
         'and cdtpextrato='+getcodigo(_tpextrato, YMOFXReader1.Get(i).MovType)+' '+
         'and cdcatextrato='+getcodigo(_CATEXTRATO, YMOFXReader1.Get(i).Desc)+' '+
         'and vlextrato='+getcurrencys(YMOFXReader1.Get(i).Value)+' '+
         'and cdconta='+inttostr(conta.cdconta)+' '+
         'and dtemissao='+getdtbanco(YMOFXReader1.Get(i).MovDate)+' ';
  if conta.boignorardocumentorepetido <> _s then
  begin
    sql := sql + 'and nuextrato='+quotedstr(RemoverCaracterInicio(YMOFXReader1.Get(i).Document, _0));
  end;
  result := RetornaSQLInteger(sql) > 0;
end;

function Tfrmcaixafinanceiro.ImportarExtratoRepetido(YMOFXReader1: TYMOFXReader; i : integer):boolean;
begin
  result := messagedlg('Já existe um extrato com as seguintes informações:'#13+
                      'Data: '+formatdatetime(_dd_mm_yyyy, YMOFXReader1.Get(i).MovDate)+#13+
                      'Documento: '+quotedstr(RemoverCaracterInicio(YMOFXReader1.Get(i).Document, _0))+#13+
                      'Tipo: '+YMOFXReader1.Get(i).MovType+#13+
                      'Categoria: '+YMOFXReader1.Get(i).Desc+#13+
                      'Valor: '+getcurrencys(YMOFXReader1.Get(i).Value)+#13+
                      'Deseja importar assim mesmo?', mtconfirmation, [mbyes, mbno], 0) = mryes;
end;

procedure Tfrmcaixafinanceiro.ImportarOFX;
var
  YMOFXReader1: TYMOFXReader;
  i : integer;
begin
  YMOFXReader1   := TYMOFXReader.create(self);
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    YMOFXReader1.OFXFile := opd.FileName;
    YMOFXReader1.Process;
    if conta.cdbanco <> YMOFXReader1.BankID then // verificar banco
    begin
      MessageDlg('Arquivo de conciliação pertence a um banco ('+IntToStr(YMOFXReader1.BankID)+')'#13'diferente do banco ('+inttostr(conta.cdbanco)+') da conta utilizada.', mtInformation, [mbOK], 0);
      Exit;
    end;
    if conta.IDCOBRANCA <> YMOFXReader1.AccountID then // verificar a conta
    begin
      MessageDlg('Arquivo de conciliação pertence a uma conta ('+YMOFXReader1.AccountID+')'#13'diferente da conta ('+conta.IDCOBRANCA+') utilizada.', mtInformation, [mbOK], 0);
      Exit;
    end;
    if YMOFXReader1.Count = 0 then
    begin
      MessageDlg('Arquivo de conciliação não possue movimentação.', mtInformation, [mbOK], 0);
      Exit;
    end;
    Adicionar_Arquivo_Extrato(opd.FileName);
    frmprogressbar.gau.MaxValue := YMOFXReader1.Count - 1;
    frmprogressbar.Show;
    for i := 0 to YMOFXReader1.Count-1 do
    begin
      frmprogressbar.gau.Progress := i;
      Application.ProcessMessages;
      if extratoRepetido(YMOFXReader1, i) then
      begin
        if empresa.financeiro.caixafinanceiro.boignorar then
        begin
          Continue;
        end;
        if not ImportarExtratoRepetido(YMOFXReader1, i) then
        begin
          Continue;
        end;
      end;
      qryextrato.q.Append;
      qryextrato.q.FieldByName(_CDEXTRATO).AsString := GerarCodigo(_extrato);
      qryextrato.q.FieldByName(_CDCONTA).AsInteger := conta.cdconta;
      qryextrato.q.FieldByName(_DTEMISSAO).AsDateTime := YMOFXReader1.Get(i).MovDate;
      if YMOFXReader1.Get(i).Value < 0 then
      begin
        qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency := YMOFXReader1.Get(i).Value * -1;
        qryextrato.q.FieldByName(_CDNATUREZA).AsString := _D;
      end
      else
      begin
        qryextrato.q.FieldByName(_CDNATUREZA).AsString := _C;
        qryextrato.q.FieldByName(_VLDEPOSITO).AsCurrency := YMOFXReader1.Get(i).Value;
      end;
      qryextrato.q.FieldByName(_BOCONCILIADO).AsString := _N;
      qryextrato.q.FieldByName(_VLEXTRATO).AsCurrency := YMOFXReader1.Get(i).Value;
      qryextrato.q.FieldByName(_NUEXTRATO).AsString := RemoverCaracterInicio(YMOFXReader1.Get(i).Document, _0);
      qryextrato.q.FieldByName(_VLSALDO).AsCurrency := YMOFXReader1.Get(i).Value;
      qryextrato.q.FieldByName(_CDTPEXTRATO).AsString := getcodigo(_tpextrato, YMOFXReader1.Get(i).MovType);
      qryextrato.q.FieldByName(_CDCATEXTRATO).AsString := getcodigo(_CATEXTRATO, YMOFXReader1.Get(i).Desc);
      RegistraInformacao_(qryextrato.q);
      qryextrato.q.Post;
    end;
    conta.RecalcularExtrato(YMOFXReader1.Get(0).MovDate);
    qryextrato.q.close;
    qryextrato.q.open;
  finally
    FreeAndNil(frmprogressbar);
    FreeAndNil(YMOFXReader1);
  end;
end;

procedure Tfrmcaixafinanceiro.actimportarExecute(Sender: TObject);
begin
  if btsincronizar.Down = true then
  begin
    btsincronizar.Down := false;
  end;
  if not opd.Execute then
  begin
    Exit;
  end;
  if LowerCase(Copy(opd.FileName, Length(opd.FileName)-2, 3)) = _ofx then
  begin
    importarOFX;
  end
  else
  begin
    ImportarSicoob;
  end;
end;

procedure Tfrmcaixafinanceiro.On_set_filtro(Sender: TObject);
begin
  set_filtro(Sender);
end;

function Tfrmcaixafinanceiro.PermiteEditarExcluir: boolean;
begin
  result := false;
  if qry.FieldByName(_CDMOVBANCARIO).AsString <> '' then
  begin
    if qry.FieldByName(_BOCONCILIADO).AsString <> _S then
    begin
      result := true;
    end
    else if conta.tpconta.bobanco <> _s then
    begin
      result := true;
    end;
  end;
end;

procedure Tfrmcaixafinanceiro.qryAfterRefresh(DataSet: TDataSet);
begin
  qry.AfterScroll := qryAfterScroll;
end;

procedure Tfrmcaixafinanceiro.qryAfterScroll(DataSet: TDataSet);
begin
  if ntb.ActivePage = 'Caixa' then
  begin
    loadrecord(qry.FieldByName(_CDMOVBANCARIO).AsString);
    actEditar.enabled  := PermiteEditarExcluir;
    actexcluir.Enabled := PermiteEditarExcluir;
    MudarGuia(qry.FieldByName(_NMMOVIMENTACAO).AsString, qry.FieldByName(_CDMOVBANCARIO).AsString);
  end
  else if ntb.ActivePage = 'Conciliação' then
  begin
    actEditar.enabled := (qry.FieldByName(_CDMOVBANCARIO).AsString <> '') and (qry.FieldByName(_BOCONCILIADO).AsString <> _S);
    actexcluir.Enabled := (qry.FieldByName(_CDMOVBANCARIO).AsString <> '') and (qry.FieldByName(_BOCONCILIADO).AsString <> _S);
    actGerarMovimento.Enabled := qryextrato.q.FieldByName(_BOCONCILIADO).AsString = _N;
    actconciliar.Enabled := (qry.FieldByName(_BOCONCILIADO).AsString = _N) and (qryextrato.q.FieldByName(_BOCONCILIADO).AsString = _N) and
                            (((qry.FieldByName(_VLPAGAMENTO).AsCurrency = qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency) and (qry.FieldByName(_VLPAGAMENTO).AsCurrency <> 0) and
                            (qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency <> 0)) or ((qry.FieldByName(_VLDEPOSITO).AsCurrency = qryextrato.q.FieldByName(_VLDEPOSITO).AsCurrency) and
                            (qry.FieldByName(_VLDEPOSITO).AsCurrency <> 0) and (qryextrato.q.FieldByName(_VLDEPOSITO).AsCurrency <> 0)));
  end;
end;

procedure Tfrmcaixafinanceiro.qryBeforeRefresh(DataSet: TDataSet);
begin
  qry.AfterScroll := nil;
end;

procedure Tfrmcaixafinanceiro.qryextratoAfterScroll(DataSet: TDataSet);
var
  dti : TDate;
begin
  if btsincronizar.Down and qry.Active then
  begin
    if qry.Locate(_cdextrato, qryextrato.q.FieldByName(_CDEXTRATO).AsString, []) then
    begin
      selecionar_registro;
      Exit;
    end;
    dti := RetornaSQLData('select min(dtemissao) from movbancario where cdempresa='+qry.FieldByName(_cdempresa).AsString+' and cdextrato='+qryextrato.q.FieldByName(_cdextrato).AsString); // obter a data mais antiga
    if dti > 0 then
    begin //mudar a data
      btsincronizar.Down := False;
      edtdti2.EditValue  := dti;
      edtdti2Change(edtdti2);
      btsincronizar.Down := true;
      qryextrato.q.Locate(_cdextrato, qryextrato.q.FieldByName(_CDEXTRATO).AsString, []);
      if qry.Locate(_cdextrato, qryextrato.q.FieldByName(_CDEXTRATO).AsString, []) then
      begin
        selecionar_registro;
        Exit;
      end;
    end;
  end;
  qryAfterScroll(dataset);
end;

procedure Tfrmcaixafinanceiro.actconciliarExecute(Sender: TObject);
var
  sql : tstrings;
  x, i : Integer;
  cdextrato, cdmovbancario : string;
begin
  sql := tstringlist.create;
  try
    if tbvextrato.Controller.SelectedRecordCount = 1 then
    begin
      sql.add('update extrato set boconciliado=''S'' where cdempresa='+empresa.cdempresa.tostring+' and cdextrato='+qryextrato.q.FieldByName(_CDEXTRATO).AsString+';');
      for i := 0 to tbv.Controller.SelectedRecordCount - 1 do
      begin
        for x := 0 to tbv.ItemCount - 1 do
        begin
          if tbv.Items[x].Caption = 'Código' then
          begin
            cdmovbancario := tbv.Controller.SelectedRecords[i].Values[x];
            sql.add('update movbancario set boconciliado=''S'',cdextrato='+qryextrato.q.FieldByName(_CDEXTRATO).AsString+' where cdempresa='+empresa.cdempresa.tostring+' and cdmovbancario='+cdmovbancario+';');
          end;
        end;
      end;
    end
    else if tbvextrato.Controller.SelectedRecordCount > 1 then
    begin
      sql.add('update movbancario set boconciliado=''S'' where cdempresa='+empresa.cdempresa.tostring+' and cdmovbancario='+qry.FieldByName(_CDMOVBANCARIO).AsString+';');
      for i := 0 to tbvextrato.Controller.SelectedRecordCount - 1 do
      begin
        for x := 0 to tbvextrato.ItemCount - 1 do
        begin
          if tbvextrato.Items[x].Caption = 'Código' then
          begin
            cdextrato := tbvextrato.Controller.SelectedRecords[i].Values[x];
            sql.add('update extrato set boconciliado=''S'',cdmovbancario='+qry.FieldByName(_CDMOVBANCARIO).AsString+' where cdempresa='+empresa.cdempresa.tostring+' and cdextrato='+cdextrato+';');
          end;
        end;
      end;
    end;
    if sql.Count > 0 then
    begin
      ExecutaScript(Sql);
      RefreshDados;
      qryextrato.q.Refresh;
    end;
  finally
    freeandnil(sql);
  end;
end;

procedure Tfrmcaixafinanceiro.actpreconciliarExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcaixafinanceiro.actChequePagamentoExecute(Sender: TObject);
begin
  if Aprovar_Pre_Conciliar(qry, qryextrato.q,'cp') then
  begin
    RefreshDados;
    qryextrato.q.Refresh;
  end;
end;

procedure Tfrmcaixafinanceiro.actdatavalorExecute(Sender: TObject);
begin
  if Aprovar_Pre_Conciliar(qry,qryextrato.q,'dv') then
  begin
    RefreshDados;
    qryextrato.q.Refresh;
  end;
end;

procedure Tfrmcaixafinanceiro.set_filtro(sender:TObject);
var
  texto : string;
begin
  if TAction(sender).Caption = 'Pré-Conciliado' then
  begin
    filtro  := 'BOCONCILIADO=''P'''
  end
  else if TAction(sender).Caption = 'Conciliado' then
  begin
    filtro  := 'BOCONCILIADO=''S'''
  end
  else if TAction(sender).Caption = 'Não Conciliado' then
  begin
    filtro  := 'BOCONCILIADO=''N'''
  end
  else if TAction(sender).Caption = 'Todos' then
  begin
    filtro  := ''
  end
  else if TAction(sender).Caption = 'Pagamento' then
  begin
    filtro2 := 'VLPAGAMENTO>0'
  end
  else if TAction(sender).Caption = 'Depósito' then
  begin
    filtro2 := 'VLDEPOSITO>0'
  end
  else if TAction(sender).Caption = 'Todos' then
  begin
    filtro2 := '';
  end;
  if (filtro = '') and (filtro2 = '') then
  begin
    qry.Filtered := False;
    qryextrato.q.Filtered := False;
    Exit;
  end;
  texto := filtro;
  if texto <> '' then
  begin
    if filtro2 <> '' then
    begin
      texto := texto + ' and '+filtro2;
    end;
  end
  else
  begin
    texto := filtro2;
  end;
  qry.Filtered := True;
  qry.Filter := texto;
  qryextrato.q.Filtered := True;
  qryextrato.q.Filter := texto;
end;

procedure Tfrmcaixafinanceiro.tbvautpagtoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nubaixa then
  begin
    actAbrirAutpagtoExecute(actAbrirAutPagto);
  end;
end;

procedure Tfrmcaixafinanceiro.txtnubaixaadntclienteDblClick(Sender: TObject);
begin
  actabriradntclienteExecute(actabriradntcliente);
end;

procedure Tfrmcaixafinanceiro.txtnubaixaadntfornecedorDblClick(Sender: TObject);
begin
   actabriradntfornecedorexecute(actabriradntfornecedor);
end;

procedure Tfrmcaixafinanceiro.tbvSelectionChanged(Sender: TcxCustomGridTableView);
  function get_sinal(valor1, valor2:Currency):string;
  begin
    if valor1 > valor2 then
    begin
      result := '>'
    end
    else if valor1 < valor2 then
    begin
      result := '<'
    end
    else if valor1 = valor2 then
    begin
      result := '=';
    end;
  end;
  function get_color(valor1, valor2:Currency):TColor;
  begin
    result := clBlue;
    if valor1 > valor2 then
    begin
      result := clGreen
    end
    else if valor1 < valor2 then
    begin
      result := clRed;
    end;
  end;
var
  valor : Currency;
  x, i : Integer;
begin
  valor := 0;
  if (qryextrato.q.FieldByName(_BOCONCILIADO).AsString = _S) or (qry.FieldByName(_BOCONCILIADO).AsString = _S) then
  begin
    lblbconciliar.Caption := '';
    Exit;
  end;
  for i := 0 to Sender.Controller.SelectedRecordCount - 1 do
  begin
    if qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency > 0 then
    begin
      for x := 0 to Sender.ItemCount - 1 do
      begin
        if Sender.Items[x].Caption = 'Débito' then
        begin
          if Sender.Controller.SelectedRecords[i].Values[x] = null then
          begin
            lblbconciliar.Caption := 'Não é possível conciliar.';
            Exit;
          end;
          valor := valor + Sender.Controller.SelectedRecords[i].Values[x];
        end;
      end;
    end
    else if qryextrato.q.FieldByName(_VLDEPOSITO).AsCurrency > 0 then
    begin
      for x := 0 to Sender.ItemCount - 1 do
      begin
        if Sender.Items[x].Caption = 'Crédito' then
        begin
          if Sender.Controller.SelectedRecords[i].Values[x] = null then
          begin
            lblbconciliar.Caption := 'Não é possível conciliar.';
            Exit;
          end;
          valor := valor + Sender.Controller.SelectedRecords[i].Values[x];
        end;
      end;
    end;
  end;
  if qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency > 0 then
  begin
    lblbconciliar.Caption := 'Pagamento: R$ '+FormatarMoeda(qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency, 0)+' (Extrato) '+ get_sinal(qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency, valor)+' R$ '+FormatarMoeda(valor, 0)+' (Sistema)';
    lblbconciliar.Style.TextColor := get_color(qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency, valor);
    actconciliar.Enabled := get_sinal(qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency, valor) = '=';
  end
  else if qryextrato.q.FieldByName(_VLDEPOSITO).AsCurrency > 0 then
  begin
    lblbconciliar.Caption := 'Depósito: R$ '+FormatarMoeda(qryextrato.q.FieldByName(_VLDEPOSITO).AsCurrency, 0)+' (Extrato) '+ get_sinal(qryextrato.q.FieldByName(_VLDEPOSITO).AsCurrency, valor)+' R$ '+FormatarMoeda(valor, 0)+' (Sistema)';
    lblbconciliar.Style.TextColor := get_color(qryextrato.q.FieldByName(_VLPAGAMENTO).AsCurrency, valor);
    actconciliar.Enabled := get_sinal(qryextrato.q.FieldByName(_VLDEPOSITO).AsCurrency, valor) = '=';
  end;
end;

procedure Tfrmcaixafinanceiro.actGerarMovimentoExecute(Sender: TObject);
begin
  if Gerar_movimento(_extrato, inttostr(conta.cdconta), qryextrato.q.FieldByName(_CDEXTRATO).AsString) then
  begin
    RefreshDados;
    qryextrato.q.Refresh;
  end;
end;

procedure Tfrmcaixafinanceiro.actlinkExecute(Sender: TObject);
begin
  if not Aprovar_Pre_Conciliar(qry,qryextrato.q,'lk') then
  begin
    Exit;
  end;
  RefreshDados;
  qryextrato.q.Refresh;
end;

procedure Tfrmcaixafinanceiro.actmovimentacaoExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcaixafinanceiro.actnovoExecute(Sender: TObject);
begin
  //
end;

procedure Tfrmcaixafinanceiro.actmovbancarioExecute(Sender: TObject);
begin
  if Gerar_movimento(_novo, inttostr(conta.cdconta)) and qry.Active then
  begin
    RefreshDados;
  end;
end;

procedure Tfrmcaixafinanceiro.actDesconciliarExecute(Sender: TObject);
var
  sql : tstrings;
  cdmovbancario, cdextrato : string;
  i : integer;
begin
  if (tbvextrato.ViewData.RowCount = 0) or (MessageDlg('Tem certeza que deseja desconciliar?', mtConfirmation, [mbYes, mbno], 0) = mrno) then
  begin
    Exit;
  end;
  sql := tstringlist.create;
  try
    for i := 0 to tbvextrato.ViewData.RecordCount -1 do
    begin
      if tbvextrato.ViewData.Records[i].Selected then
      begin
        cdextrato := tbvextrato.ViewData.Records[i].Values[tbvextrato.GetColumnByFieldName(_cdextrato).Index];
        cdmovbancario := NomedoCodigo(_extrato, cdextrato, _cdmovbancario);
        if cdmovbancario <> '' then
        begin
          sql.add('update extrato set boconciliado=''N'',cdmovbancario=null where cdempresa='+empresa.cdempresa.tostring+' and cdmovbancario='+cdmovbancario+';');
          sql.add('update movbancario set boconciliado=''N'',cdextrato=null where cdempresa='+empresa.cdempresa.tostring+' and cdmovbancario='+cdmovbancario+';');
        end
        else
        begin
          sql.add('update extrato set boconciliado=''N'',cdmovbancario=null where cdempresa='+empresa.cdempresa.tostring+' and cdextrato='+cdextrato+';');
          sql.add('update movbancario set boconciliado=''N'',cdextrato=null where cdempresa='+empresa.cdempresa.tostring+' and cdextrato='+cdextrato+';');
        end;
      end;
    end;
    if sql.Count > 0 then
    begin
      ExecutaScript(Sql);
      RefreshDados;
      qryextrato.q.Refresh;
    end;
  finally
    FreeAndNil(sql);
  end;
end;

procedure Tfrmcaixafinanceiro.actdespesaExecute(Sender: TObject);
begin
  if Gerar_Movimentacao(_autpagto, inttostr(conta.cdconta)) then
  begin
    messagedlg('Despesa lançada.', mtinformation, [mbok], 0);
    RefreshDados;
  end;
end;

procedure Tfrmcaixafinanceiro.actexcluirextratoExecute(Sender: TObject);
var
  sql : tstrings;
begin
  if not (qryextrato.q.Active and (qryextrato.q.RecordCount > 0)) then
  begin
    Exit;
  end;
  sql := tstringlist.create;
  try
    sql.add('update extrato set boconciliado=''N'' where cdempresa='+empresa.cdempresa.tostring+' and cdextrato='+qryextrato.q.FieldByName(_CDEXTRATO).AsString+';');
    sql.add('update movbancario set boconciliado=''N'',cdextrato=null where cdempresa='+empresa.cdempresa.tostring+' and cdextrato='+qryextrato.q.FieldByName(_CDEXTRATO).AsString+';');
    sql.add('delete from extrato where cdempresa='+empresa.cdempresa.tostring+' and cdextrato='+qryextrato.q.FieldByName(_CDEXTRATO).AsString+';');
    ExecutaScript(Sql);
    RefreshDados;
    qryextrato.q.Refresh;
  finally
    FreeAndNil(sql);
  end;
end;

procedure Tfrmcaixafinanceiro.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmcaixafinanceiro.actsincronizarExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcaixafinanceiro.acttransferenciaExecute(Sender: TObject);
begin
  if TransferirBancaria(inttostr(conta.cdconta)) then
  begin
    messagedlg('Transferência realizada.', mtinformation, [mbok], 0);
    RefreshDados;
  end;
end;

procedure Tfrmcaixafinanceiro.actrecalcularExecute(Sender: TObject);
begin
//
end;

procedure Tfrmcaixafinanceiro.actreceitaExecute(Sender: TObject);
begin
  if Gerar_Movimentacao(_duplicata, inttostr(conta.cdconta)) then
  begin
    messagedlg('Receita lançada.', mtinformation, [mbok], 0);
    RefreshDados;
  end;
end;

procedure Tfrmcaixafinanceiro.actsaldocontaExecute(Sender: TObject);
begin
  if empresa.cdtpempresa = _2 then
  begin
    exit;
  end;
  if conta.RecalcularSaldo(conta.dtsaldo) then
  begin
    setrecord;
    MessageDlg('Saldo da conta recalculado!', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmcaixafinanceiro.actsaldoextratoExecute(Sender: TObject);
begin
  if empresa.cdtpempresa = _2 then
  begin
    exit;
  end;
  if conta.RecalcularExtrato(conta.dtextrato) then
  begin
    setrecord;
    MessageDlg('Saldo do extrato da conta recalculado!', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmcaixafinanceiro.actextratomovanaliticoExecute(Sender: TObject);
begin
  if cbxcdconta.Text <> '' then
  begin
    ImpimirRelatorioPadrao1(334, 'm.dtemissao between '+getdtbanco(edtdti2.EditValue)+' and '+getdtbanco(edtdtf2.EditValue)+' and m.cdempresa='+empresa.cdempresa.tostring+' and m.cdconta='+qregistro.CodigodoNome(_conta, cbxcdconta.Text), qregistro.CodigodoNome(_conta, cbxcdconta.Text));
  end;
end;

procedure Tfrmcaixafinanceiro.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmcaixafinanceiro.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
  if key = __keyexportarexcel then
  begin
    qry.AfterScroll := nil;
    exportarexcel(grd);
    qry.AfterScroll := qryAfterScroll;
  end;
end;

procedure Tfrmcaixafinanceiro.ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(qryextrato.q, key);
end;

procedure Tfrmcaixafinanceiro.tbvextratoSelectionChanged(Sender: TcxCustomGridTableView);
  function get_sinal(valor1, valor2:Currency):string;
  begin
    if valor1 > valor2 then
    begin
      result := '>'
    end
    else if valor1 < valor2 then
    begin
      result := '<'
    end
    else if valor1 = valor2 then
    begin
      result := '=';
    end;
  end;
  function get_color(valor1, valor2:Currency):TColor;
  begin
    result := clBlue;
    if valor1 > valor2 then
    begin
      result := clGreen
    end
    else if valor1 < valor2 then
    begin
      result := clRed;
    end;
  end;
var
  valor : Currency;
  x, i : Integer;
begin
  valor := 0;
  if (qryextrato.q.FieldByName(_BOCONCILIADO).AsString = _S) or (qry.FieldByName(_BOCONCILIADO).AsString = _S) then
  begin
    lblbconciliar.Caption := '';
    Exit;
  end;
  for i := 0 to Sender.Controller.SelectedRecordCount - 1 do
  begin
    if qry.FieldByName(_VLPAGAMENTO).AsCurrency > 0 then
    begin
      for x := 0 to Sender.ItemCount - 1 do
      begin
        if Sender.Items[x].Caption = 'Pagamento' then
        begin
          if Sender.Controller.SelectedRecords[i].Values[x] = null then
          begin
            lblbconciliar.Caption := 'Não é possível conciliar.';
            Exit;
          end;
          valor := valor + Sender.Controller.SelectedRecords[i].Values[x];
        end;
      end;
    end
    else if qry.FieldByName(_VLDEPOSITO).AsCurrency > 0 then
    begin
      for x := 0 to Sender.ItemCount - 1 do
      begin
        if Sender.Items[x].Caption = 'Depósito' then
        begin
          if Sender.Controller.SelectedRecords[i].Values[x] = null then
          begin
            lblbconciliar.Caption := 'Não é possível conciliar.';
            Exit;
          end;
          valor := valor + Sender.Controller.SelectedRecords[i].Values[x];
        end;
      end;
    end;
  end;
  if qry.FieldByName(_VLPAGAMENTO).AsCurrency > 0 then
  begin
    lblbconciliar.Caption := 'Pagamento: R$ '+FormatarMoeda(qry.FieldByName(_VLPAGAMENTO).AsCurrency, 0)+' (Extrato) '+ get_sinal(qry.FieldByName(_VLPAGAMENTO).AsCurrency, valor)+' R$ '+FormatarMoeda(valor, 0)+' (Sistema)';
    lblbconciliar.Style.TextColor := get_color(qry.FieldByName(_VLPAGAMENTO).AsCurrency, valor);
    actconciliar.Enabled := get_sinal(qry.FieldByName(_VLPAGAMENTO).AsCurrency, valor) = '=';
  end
  else if qry.FieldByName(_VLDEPOSITO).AsCurrency > 0 then
  begin
    lblbconciliar.Caption := 'Depósito: R$ '+FormatarMoeda(qry.FieldByName(_VLDEPOSITO).AsCurrency, 0)+' (Extrato) '+get_sinal(qry.FieldByName(_VLDEPOSITO).AsCurrency, valor)+' R$ '+FormatarMoeda(valor, 0)+' (Sistema)';
    lblbconciliar.Style.TextColor := get_color(qry.FieldByName(_VLDEPOSITO).AsCurrency, valor);
    actconciliar.Enabled := get_sinal(qry.FieldByName(_VLDEPOSITO).AsCurrency, valor) = '=';
  end;
end;

procedure Tfrmcaixafinanceiro.tbvDblClick(Sender: TObject);
begin
  actEditarExecute(acteditar);
end;

procedure Tfrmcaixafinanceiro.actadntclienteExecute(Sender: TObject);
begin
  if GerarAdiantamento(_adntcliente, conta.cdconta) then
  begin
    messagedlg('Operação realizada.', mtinformation, [mbok], 0);
    RefreshDados;
  end;
end;

procedure Tfrmcaixafinanceiro.actadntfornecedorExecute(Sender: TObject);
begin
  if GerarAdiantamento(_adntfornecedor, conta.cdconta) then
  begin
    messagedlg('Operação realizada.', mtinformation, [mbok], 0);
    RefreshDados;
  end;
end;

procedure Tfrmcaixafinanceiro.actextratocaixaExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(487, 'm.dtemissao between '+getdtbanco(edtdti2.EditValue)+' and '+getdtbanco(edtdtf2.EditValue)+' and m.cdempresa='+empresa.cdempresa.tostring, conta.ListaContasAtiva);
end;

procedure Tfrmcaixafinanceiro.actretornoExecute(Sender: TObject);
var
  filename : string;
  cdmovbancario, cdsetboleto : integer;
begin
  cdsetboleto := conta.setboleto.items[0].cdsetboleto;
  if conta.setboleto.Count > 1 then
  begin
    cdsetboleto := dlgescolhesetboleto(inttostr(conta.cdconta));
  end;
  if (cdsetboleto = 0) or (not QRotinas.getfilename(filename)) then // Abre a tela de diálogo
  begin
    exit;
  end;
  cdmovbancario := TBoletoAcbr.ReceberArquivoRetorno(cdsetboleto, filename);
  if cdmovbancario > 0 then
  begin
    Abrir(cdmovbancario);
  end;
end;

procedure Tfrmcaixafinanceiro.actextratoviewExecute(Sender: TObject);
begin
  grdLevel2.Visible := True;
  qryextratoview.q.Close;
  qryextratoview.q.SQL.Text := 'SELECT E.*'+
                                     ',m.cdmovbancario,T.NMTPEXTRATO'+
                                     ',C.NMCATEXTRATO '+
                               'FROM EXTRATO E '+
                               'inner join movbancario m on m.cdempresa=e.cdempresa and m.cdextrato=e.cdextrato '+
                               'LEFT JOIN TPEXTRATO T ON T.CDTPEXTRATO=E.CDTPEXTRATO AND E.CDEMPRESA=T.CDEMPRESA '+
                               'LEFT JOIN CATEXTRATO C ON C.CDCATEXTRATO=E.CDCATEXTRATO AND C.CDEMPRESA=E.CDEMPRESA '+
                               'WHERE E.CDEMPRESA='+empresa.cdempresa.tostring+' AND E.CDCONTA='+inttostr(conta.cdconta)+' AND E.DTEMISSAO BETWEEN '+GetDtBanco(edtdti2.EditValue)+' AND '+GetDtBanco(edtdtf2.EditValue);
  qryextratoview.q.Open;
  ntb.Visible := False;
  spl1.Visible := False;
end;

procedure TFrmCaixaFinanceiro.Check_conta_e_data_caixa;
begin
  if conta.cdconta = 0 then
  begin
    MessageDlg('Selecione uma conta antes de alterar o caixa.', mtInformation, [mbOK], 0);
    cbxcdconta.SetFocus;
    Abort;
  end;
  if edtdti2.EditValue > edtdtf2.EditValue then
  begin
    MessageDlg('Data de início não pode ser maior do que a data final.', mtInformation, [mbOK], 0);
    edtdti2.SetFocus;
    Abort;
  end;
end;

procedure Tfrmcaixafinanceiro.actfecharcaixaExecute(Sender: TObject);
begin
  Check_conta_e_data_caixa;
  if conta.fecharCaixa(edtdti2.EditValue, edtdtf2.EditValue) then
  begin
    RefreshDados;
    MessageDlg('Fechamento de caixa realizado nas datas '+formatdatetime(_dd_mm_yyyy, edtdti2.EditValue)+' e '+formatdatetime(_dd_mm_yyyy, edtdtf2.EditValue)+'.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmcaixafinanceiro.actabriradntclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cdsdetail, cdsdetail);
end;

procedure Tfrmcaixafinanceiro.actabriradntfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cdsdetail, cdsdetail);
end;

procedure Tfrmcaixafinanceiro.actabrirautpagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cdsdetail, cdsdetail);
end;

procedure Tfrmcaixafinanceiro.actabrircaixaExecute(Sender: TObject);
begin
  Check_conta_e_data_caixa;
  if conta.AbrirCaixa(edtdti2.EditValue, edtdtf2.EditValue) then
  begin
    RefreshDados;
    MessageDlg('Caixa aberto nas datas '+formatdatetime(_dd_mm_yyyy, edtdti2.EditValue)+' e '+formatdatetime(_dd_mm_yyyy, edtdtf2.EditValue)+'.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmcaixafinanceiro.actabrirduplicataExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cdsdetail, cdsdetail);
end;

procedure Tfrmcaixafinanceiro.actopcoesExecute(Sender: TObject);
begin
  //
end;

procedure Tfrmcaixafinanceiro.actcaixamenuExecute(Sender: TObject);
begin
  //
end;

procedure Tfrmcaixafinanceiro.tbvextratoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  s : string;
  Column : TcxGridDBColumn;
begin
  Column := tbvextratoBOATIVAR;
  s := upperCase(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if s <> UpperCase(_VERDADEIRO) then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end;
end;

procedure Tfrmcaixafinanceiro.FormCreate(Sender: TObject);
begin
  SetQry;
  SetQryExtrato;
  tbl := _movbancario;
  registro := tregistro.create(self, '', '', '', qry, dts, nil, true);
  movbancario := TMovBancario.create;
  GeraMenuRelatorio('', btnimprimir, 60, qry, tbl);
  actcaixa.Execute;
end;

procedure Tfrmcaixafinanceiro.actimprimirmovbancarioExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(64, 'where movbancario.cdempresa='+qry.FieldByName(_cdempresa).AsString+' and movbancario.cdmovbancario='+qry.FieldByName(_CDMOVBANCARIO).asstring);
end;

procedure Tfrmcaixafinanceiro.actimprimirmovbancario2Execute(Sender: TObject);
begin
  {$IFDEF VER210}imprimirmovbancariolaser2(qry.FieldByName(_CDMOVBANCARIO).asstring);{$ENDIF}
end;

procedure Tfrmcaixafinanceiro.actExcluirExecute(Sender: TObject);
begin
  if not movbancario.CaixaAberto(inttostr(conta.cdconta), qry.FieldByName(_DTEMISSAO).AsDateTime) then
  begin
    MessageDlg('Caixa encontra-se fechado na data '+formatdatetime(_dd_mm_yyyy, qry.FieldByName(_DTEMISSAO).AsDateTime)+'.'#13'Não é possível excluir o registro.', mtInformation, [mbOK], 0);
    Abort;
  end;
  movbancario.cdmovbancario := qry.FieldByName(_CDMOVBANCARIO).asinteger;
  movbancario.cdempresa := qry.FieldByName(_cdempresa).asLargeInt;
  if messagedlg('Deseja realmente excluir?', mtinformation, [mbYes, mbno], 0) = mrno then
  begin
    exit;
  end;
  movbancario.Select(qry.FieldByName(_CDMOVBANCARIO).asinteger);
  movbancario.Delete;
  RefreshDados;
end;

procedure Tfrmcaixafinanceiro.ExportarDepositoIdentificado(cdbaixa, cdautpagto: string);
var
  q : TClasseQuery;
  XLApp, Sheet: Variant;
begin
  if (cdautpagto = '') or (not CodigoExiste(_autpagto, cdautpagto)) then
  begin
    exit;
  end;
  q     := TClasseQuery.create;
  XLApp := CreateOleObject('Excel.Application');
  try
    q.q.open('select f.rzsocial'+
                   ',f.nucnpj'+
                   ',e.nuentrada'+
                   ',e.dtemissao'+
                   ',b.nmbanco'+
                   ',f.NUAGENCIA'+
                   ',f.NUCNTCORRENTE'+
                   ',x.vlliquido '+
             'from autpagto a '+
             'left join fornecedor f on f.cdfornecedor=a.cdfornecedor and a.cdempresa=f.cdempresa '+
             'left join entrada e on e.cdentrada=a.cdentrada and a.cdempresa=e.cdempresa '+
             'left join banco b on b.cdbanco=f.cdbanco and b.cdempresa=f.cdempresa '+
             'left join baixa x on x.cdautpagto=a.cdautpagto and a.cdempresa=x.cdempresa ' +
             'where a.cdempresa='+empresa.cdempresa.ToString+' and a.cdautpagto='+cdautpagto+' and x.cdbaixa='+cdbaixa);
    XLApp.Visible := True;
    XLApp.Workbooks.Add(xlWBatWorkSheet);
    XLApp.Workbooks[1].WorkSheets[1].Name := _deposito;
    Sheet                                 := XLApp.Workbooks[1].WorkSheets[_deposito];  // montar colunas
    Sheet.Cells[1, 1] := 'DEPOSITO IDENTIFICADO EM CONTA CORRENTE';
    Sheet.Cells[2, 1] := q.q.fieldbyname(_rzsocial).AsString;
    Sheet.Cells[3, 1] := 'CNPJ: '+q.q.fieldbyname(_nucnpj).AsString;
    Sheet.Cells[4, 1] := 'REFERENTE A NF Nº '+q.q.fieldbyname(_nuentrada).AsString+', EMITIDA DIA '+formatdatetime(_dd_mm_yyyy, q.q.Fieldbyname(_dtemissao).AsDateTime);
    Sheet.Cells[5, 1] := q.q.fieldbyname(_nm+_banco).AsString;
    Sheet.Cells[6, 1] := 'AGENCIA: '+q.q.fieldbyname(_nuagencia).AsString;
    Sheet.Cells[7, 1] := 'CONTA/C: '+q.q.fieldbyname(_nucntcorrente).AsString;
    Sheet.Cells[8, 1] := 'TOTAL '+FormatFloat(__moeda, q.q.fieldbyname(_vlliquido).AsCurrency);
    Sheet.Cells[9, 1] := 'IDENTIFICADOR: '+empresa.rzsocial;
  finally
    q.free;
  end;
end;

procedure Tfrmcaixafinanceiro.actdepositoidentificadoExecute(Sender: TObject);
begin
  ExportarDepositoIdentificado(cdsdetailCDBAIXA.asstring, cdsdetailCDAUTPAGTO.asstring);
end;

function Tfrmcaixafinanceiro.Abrir(codigo: integer): boolean;
begin
  edtdti2.EditValue := qregistro.DatadoCodigo(_movbancario, codigo, _dtemissao);
  edtdtf2.EditValue := edtdti2.EditValue;
  cbxcdconta.ItemIndex := cbxcdconta.Items.IndexOf(qregistro.NomedoCodigo(_conta, qregistro.InteirodoCodigo(_movbancario, codigo, _cdconta)));
  grd.SetFocus;
  qry.Locate(_cdmovbancario, codigo, []);
  result := True;
end;

procedure Tfrmcaixafinanceiro.RefreshDados;
begin
  if qry.Active then
  begin
    qry.Refresh;
    qryAfterScroll(qry);
  end;
end;

procedure Tfrmcaixafinanceiro.SetQryExtrato;
begin
  qryextratoview := TClasseQuery.create;
  dtsextratoview.dataset := qryextratoview.q;
  qryextrato := TClasseQuery.create;
  dtsextrato.dataset := qryextrato.q;
  qryextrato.q.afterScroll := qryextratoafterscroll;
  qryextrato.q.SQL.Text := 'SELECT E.*'+
                                 ',T.NMTPEXTRATO'+
                                 ',C.BOATIVAR'+
                                 ',C.NMCATEXTRATO '+
                           'FROM EXTRATO E '+
                           'LEFT JOIN TPEXTRATO T ON T.CDTPEXTRATO=E.CDTPEXTRATO AND E.CDEMPRESA=T.CDEMPRESA '+
                           'LEFT JOIN CATEXTRATO C ON C.CDCATEXTRATO=E.CDCATEXTRATO AND C.CDEMPRESA=E.CDEMPRESA '+
                           'WHERE E.CDEMPRESA=:CDEMPRESA AND E.CDCONTA=:CDCONTA AND E.DTEMISSAO BETWEEN :DTEMISSAOI AND :DTEMISSAOF '+
                           'ORDER BY E.DTEMISSAO,E.CDEXTRATO';
end;

procedure Tfrmcaixafinanceiro.SetQry;
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.AfterRefresh := qryAfterRefresh;
  qry.BeforeRefresh := qryBeforeRefresh;
  qry.AfterScroll := qryafterscroll;
  qry.SQL.Text := 'SELECT MOVBANCARIO.CDEXTRATO'+
                        ',MOVBANCARIO.BOCONCILIADO'+
                        ',MOVBANCARIO.DTEMISSAO'+
                        ',MOVBANCARIO.CDEMPRESA'+
                        ',MOVBANCARIO.CDMOVBANCARIO'+
                        ',MOVBANCARIO.CDMOVIMENTACAO'+
                        ',MOVIMENTACAO.NMMOVIMENTACAO'+
                        ',MOVBANCARIO.DSHISTORICO'+
                        ',MOVBANCARIO.VLPAGAMENTO'+
                        ',MOVBANCARIO.VLSALDO'+
                        ',MOVBANCARIO.VLDEPOSITO'+
                        ',MOVBANCARIO.NUMOVBANCARIO'+
                        ',movbancario.tsinclusao'+
                        ',movbancario.tsalteracao'+
                        ',movbancario.cdusuarioi'+
                        ',movbancario.cdusuarioa'+
                        ',movbancario.cdcomputadori'+
                        ',movbancario.cdcomputadora'+
                        ',IIF(contafechada.dtemissao is null,''ABERTO'',''FECHADO'') CAIXA '+
                    'FROM MOVBANCARIO '+
                    'LEFT JOIN MOVIMENTACAO ON MOVIMENTACAO.CDEMPRESA=MOVBANCARIO.CDEMPRESA AND MOVIMENTACAO.CDMOVIMENTACAO=MOVBANCARIO.CDMOVIMENTACAO '+
                    'LEFT JOIN CONTA ON CONTA.CDEMPRESA=MOVBANCARIO.CDEMPRESA AND CONTA.CDCONTA=MOVBANCARIO.CDCONTA '+
                    'left join contafechada on contafechada.cdempresa=movbancario.cdempresa and contafechada.cdconta=movbancario.cdconta and contafechada.dtemissao=movbancario.dtemissao '+
                    'WHERE CONTA.CDEMPRESA=:CDEMPRESA '+
                    'AND CONTA.CDCONTA=:CDCONTA '+
                    'AND MOVBANCARIO.DTEMISSAO BETWEEN :DTEMISSAOI AND :DTEMISSAOF '+
                    'ORDER BY MOVBANCARIO.DTEMISSAO,MOVBANCARIO.CDMOVBANCARIO';
end;

procedure Tfrmcaixafinanceiro.actAbrirExecute(Sender: TObject);
var
  cd : integer;
begin
  cd := LocalizarMovBancario;
  if cd <> 0 then
  begin
    abrir(Cd);
    if qry.FieldByName(_boconciliado).AsString = _n then
    begin
      actEditarExecute(acteditar);
    end;
  end;
end;

procedure Tfrmcaixafinanceiro.actdetailExecute(Sender: TObject);
begin
  grd.SetFocus;
end;

procedure Tfrmcaixafinanceiro.tbvextratoTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;var AText: String);
begin
  ATEXT := Extratofinal;
end;

procedure Tfrmcaixafinanceiro.tbvFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  Exit;
  if btsincronizar.Down and (AFocusedRecord <> nil) then
  begin
    AFocusedRecord.Selected := True;
  end;
end;

procedure Tfrmcaixafinanceiro.selecionar_registro;
begin
  tbv.Controller.ClearSelection;
  if (tbv.Controller.FocusedRowIndex > 0) and tbv.Controller.FocusedRow.Visible then
  begin
    tbv.Controller.FocusedRow.Selected := True;
  end;
end;

end.

