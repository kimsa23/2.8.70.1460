unit uordserv;

interface

uses
  System.Actions, System.UITypes,
  forms, windows, sysutils, types, dialogs, graphics, StdCtrls, Grids, Classes,
  ActnList, ComCtrls, OleServer, Spin, Mask, Buttons, Controls, ToolWin, ExtCtrls,
  Menus,
  DBClient, Provider, FMTBcd, DB, sqlexpr,
  unumero, udbmemo, udatahora, uconstantes, uAssinaturaDigital,
  uanotacao, ustrings, urotinas, uregistroib, uregistro, unovoproduto,
  classeempresa, classeretornasql, classeconsiste, classeexecutasql,
  classegerar, classeusuario, classeregistrainformacao, classeform, classeaplicacao,
  classeordserv, classeproduto, classearquivo, classeequipamento, classecliente,
  classeRegistro, classequery,
  cxLookAndFeelPainters, cxTextEdit, cxMemo,
  cxRichEdit, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls,
  dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData,
  cxCalendar, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxPCdxBarPopupMenu, cxNavigator, dxBarBuiltInMenu,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit, cxTimeEdit, cxDBEdit, cxDBLabel,
  cxButtonEdit, cxButtons, cxCalc, cxCurrencyEdit, cxBlobEdit, cxDBRichEdit,
  cxRadioGroup, cxGridBandedTableView, cxGridDBBandedTableView, Vcl.DBCtrls;

type
  TfrmOrdServ = class(TForm)
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
    actAberturaOs: TAction;
    actEntregaOs: TAction;
    actAcompanhamentoOs: TAction;
    actMudarEtapa: TAction;
    actNovoObsInterna: TAction;
    actNovoSolInterna: TAction;
    actorcamentocontrato: TAction;
    actorcamentoavulso: TAction;
    actGerarNotafiscal: TAction;
    actabrircliente: TAction;
    actabrirtpordserv: TAction;
    actabrirequipamento: TAction;
    actfechar: TAction;
    actimprimirorcamento: TAction;
    actrevisao: TAction;
    actentregasemcomprovante: TAction;
    actaberturaosa5: TAction;
    actabrirproduto: TAction;
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
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    sdsosanterior: TSQLDataSet;
    dsposanterior: TDataSetProvider;
    cdsosanterior: TClientDataSet;
    dtsosanterior: TDataSource;
    Panel1: TPanel;
    bvl1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    lbltpordserv: TLabel;
    Label3: TLabel;
    lblstordserv: TLabel;
    lblprioridade: TLabel;
    bvl2: TBevel;
    pgc: TcxPageControl;
    tbsequipamento: TcxTabSheet;
    tbsproduto: TcxTabSheet;
    tbsitordservexterno: TcxTabSheet;
    tbsacessorio: TcxTabSheet;
    tbsdefapr: TcxTabSheet;
    tbsdefenc: TcxTabSheet;
    tbsgeral: TcxTabSheet;
    pgcgeral: TcxPageControl;
    tbsdatas: TcxTabSheet;
    cxGroupBox4: TcxGroupBox;
    Label82: TLabel;
    Label83: TLabel;
    gbxprevorcamento: TcxGroupBox;
    Label4: TLabel;
    Label15: TLabel;
    tbsentrega: TcxTabSheet;
    Label16: TLabel;
    Label18: TLabel;
    Label29: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    tbsorcamento: TcxTabSheet;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label32: TLabel;
    Label52: TLabel;
    Label46: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label56: TLabel;
    Label57: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    tbsconserto: TcxTabSheet;
    Label35: TLabel;
    Label40: TLabel;
    Label47: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label39: TLabel;
    cxGroupBox5: TcxGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    cxGroupBox3: TcxGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    tbsdevolucaosemconserto: TcxTabSheet;
    Bevel1: TBevel;
    Label31: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label48: TLabel;
    tbsoutras: TcxTabSheet;
    Label62: TLabel;
    lblnubateria: TLabel;
    gbxcomissao: TcxGroupBox;
    Label44: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    tbscomercial: TcxTabSheet;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    tbscomissao: TcxTabSheet;
    Bevel10: TBevel;
    Bevel9: TBevel;
    lblcomissaoatendente: TLabel;
    lblcomissaotecnico: TLabel;
    lblcomissaovendedor: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    lblcomissaoorcado: TLabel;
    tbsetapa: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    tbssolucao: TcxTabSheet;
    tbsobsinterna: TcxTabSheet;
    ToolBar1: TToolBar;
    ToolButton17: TToolButton;
    tbssolinterna: TcxTabSheet;
    ToolBar2: TToolBar;
    ToolButton16: TToolButton;
    tbsOSanterior: TcxTabSheet;
    grdosanterior: TcxGrid;
    grdosanteriorDBTableView1: TcxGridDBTableView;
    grdosanteriorDBTableView1NUORDSERV: TcxGridDBColumn;
    grdosanteriorDBTableView1DTENTRADA: TcxGridDBColumn;
    grdosanteriorDBTableView1DTSAIDA: TcxGridDBColumn;
    grdosanteriorDBTableView1CDEQUIPAMENTO: TcxGridDBColumn;
    grdosanteriorLevel1: TcxGridLevel;
    pnldesconto: TcxGroupBox;
    Label17: TLabel;
    Label20: TLabel;
    Label28: TLabel;
    lblresumoprodutos: TLabel;
    lblresumoservico: TLabel;
    Label42: TLabel;
    pnl: TcxLabel;
    gbxcliente: TcxGroupBox;
    lblcdcliente: TLabel;
    gbxoutras: TcxGroupBox;
    lblatendente: TLabel;
    lbltecnico: TLabel;
    lblvendedor: TLabel;
    gbxequipamento: TcxGroupBox;
    lblequipamento: TLabel;
    lblqtdequipamento: TLabel;
    lbllocal: TLabel;
    rceequipamento: TcxRichEdit;
    tbsdefeito: TcxTabSheet;
    tbsavaliacaotecnica: TcxTabSheet;
    lblcdcondpagto: TLabel;
    lbltpcobranca: TLabel;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    actabrirtpequipamento: TAction;
    actordserventrada: TAction;
    actordservsaida: TAction;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton5: TdxBarButton;
    sds: TSQLDataSet;
    sdsdetail: TSQLDataSet;
    sdsitacessorio: TSQLDataSet;
    sdsitdefapr: TSQLDataSet;
    sdsitdefenc: TSQLDataSet;
    sdsitetapa: TSQLDataSet;
    sdsitequipamento: TSQLDataSet;
    sdsitordservexterno: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    cdsdetail: TClientDataSet;
    cdsitacessorio: TClientDataSet;
    cdsitdefapr: TClientDataSet;
    cdsitdefenc: TClientDataSet;
    cdsitetapa: TClientDataSet;
    cdsitequipamento: TClientDataSet;
    cdsitordservexterno: TClientDataSet;
    dts: TDataSource;
    dtsdetai: TDataSource;
    dtsitacessorio: TDataSource;
    dtsitdefapr: TDataSource;
    dtsitdefenc: TDataSource;
    dtsitetapa: TDataSource;
    dtsitequipamento: TDataSource;
    dtsitordservexterno: TDataSource;
    sdsCDORDSERV: TIntegerField;
    sdsCDATUADOR: TIntegerField;
    sdsCDCONDENTREGA: TIntegerField;
    sdsCDCONDPAGTO: TIntegerField;
    sdsCDEQUIPAMENTO: TIntegerField;
    sdsCDETAPA: TIntegerField;
    sdsCDORDSERVANTERIOR: TIntegerField;
    sdsCDPOSICIONADOR: TIntegerField;
    sdsCDPRIORIDADE: TIntegerField;
    sdsCDSTORDSERV: TIntegerField;
    sdsCDTPORDSERV: TIntegerField;
    sdsCDVALVULA: TIntegerField;
    sdsCDFUNCIONARIOATENDENTE: TIntegerField;
    sdsCDFUNCIONARIOTECNICO: TIntegerField;
    sdsCDSAIDA: TIntegerField;
    sdsCDGARANTIA: TIntegerField;
    sdsCDFUNCIONARIOVENDEDOR: TIntegerField;
    sdsCDREPRESENTANTE: TIntegerField;
    sdsCDITENTRADA: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDUSUARIOL: TIntegerField;
    sdsCDCOMPUTADORL: TIntegerField;
    sdsCDTPEQUIPAMENTO: TIntegerField;
    sdsCDMODELO: TIntegerField;
    sdsCDMARCA: TIntegerField;
    sdsCDTPCOBRANCA: TIntegerField;
    sdsCDITORDPRODUCAO: TIntegerField;
    sdsCDTPVOLTAGEM: TIntegerField;
    sdsNUORDSERV: TIntegerField;
    sdsDTENTRADA: TDateField;
    sdsHRENTRADA: TTimeField;
    sdsDTSAIDA: TDateField;
    sdsHRSAIDA: TTimeField;
    sdsDTENVIO: TDateField;
    sdsDTCOMUNICACAO: TDateField;
    sdsNUCOLETA: TStringField;
    sdsNUPROPOSTA: TStringField;
    sdsNUPEDIDO: TStringField;
    sdsNUOSCLIENTE: TStringField;
    sdsVLSERVICO: TFMTBCDField;
    sdsVLPECA: TFMTBCDField;
    sdsVLTOTAL: TFMTBCDField;
    sdsNUNF: TIntegerField;
    sdsDTNF: TDateField;
    sdsDTPEDIDO: TDateField;
    sdsDTFATURA: TDateField;
    sdsDTDEVOLUCAO: TDateField;
    sdsDTPREVENTREGA: TDateField;
    sdsNUNFDEVOLUCAO: TStringField;
    sdsNUNFFATURA: TStringField;
    sdsDSOBSERVACAO: TBlobField;
    sdsDSSOLUCAO: TBlobField;
    sdsDSDEFENC: TBlobField;
    sdsDSDEFREC: TBlobField;
    sdsPRACRESCSERVICO: TFloatField;
    sdsVLACRESCSERVICO: TFMTBCDField;
    sdsDSTESTE: TBlobField;
    sdsBOMEDICAO: TStringField;
    sdsNMCONTATO: TStringField;
    sdsNUFONE: TStringField;
    sdsHRATENDIMENTO: TTimeField;
    sdsHRRESOLUCAO: TTimeField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsVLLIQUIDO: TFMTBCDField;
    sdsDSJUSTIFICATIVA: TBlobField;
    sdsDSOBSINTERNA: TBlobField;
    sdsDSSOLINTERNA: TBlobField;
    sdsNUIMPFECHAMENTO: TIntegerField;
    sdsBOCONTRATO: TStringField;
    sdsNUKM: TIntegerField;
    sdsNUBATERIA: TStringField;
    sdsVLFABRICAR: TFMTBCDField;
    sdsHRPREVENTREGA: TTimeField;
    sdsDTPRONTA: TDateField;
    sdsHRPRONTA: TTimeField;
    sdsDTAPROVACAO: TDateField;
    sdsHRAPROVACAO: TTimeField;
    sdsDTPREVORCAMENTO: TDateField;
    sdsHRPREVORCAMENTO: TTimeField;
    sdsNUSEQEQUIPAMENTO: TStringField;
    sdsDSLOCALIZACAO: TStringField;
    sdsVLPRODUTO: TFMTBCDField;
    sdsVLSERVICOTERCEIRO: TFMTBCDField;
    sdsNUCONTROLEINTERNO: TStringField;
    sdsTPPRECOPRODUTO: TStringField;
    sdsNUDIASVALIDADEORCAMENTO: TIntegerField;
    sdsNUDIASPREVENTREGA: TIntegerField;
    sdsDTGARANTIA: TDateField;
    sdsBOSERVICOENTREGUE: TStringField;
    sdsBOSERVICOINTERNO: TStringField;
    sdsNUDIASEXECUCAO: TIntegerField;
    sdsDTPREVENTREGAORCAMENTO: TDateField;
    sdsPRCUSTOREPARO: TFloatField;
    sdsDTRETORNOORCAMENTO: TDateField;
    sdsTPPRECO: TStringField;
    sdsHRENVIO: TTimeField;
    sdsVLFITA: TFMTBCDField;
    sdsVLMAOOBRA: TFMTBCDField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSLIBERADO: TSQLTimeStampField;
    sdsDSDEFEITO: TMemoField;
    sdsDSAVALIACAOTECNICA: TMemoField;
    sdsNUSERIE: TStringField;
    sdsNUCOMPRIMENTO: TFloatField;
    sdsNUESTRUTURA: TIntegerField;
    sdsNUPATRIMONIO: TStringField;
    sdsBOENTRADA: TStringField;
    sdsBOSAIDA: TStringField;
    cdsCDORDSERV: TIntegerField;
    cdsCDATUADOR: TIntegerField;
    cdsCDCONDENTREGA: TIntegerField;
    cdsCDCONDPAGTO: TIntegerField;
    cdsCDEQUIPAMENTO: TIntegerField;
    cdsCDETAPA: TIntegerField;
    cdsCDORDSERVANTERIOR: TIntegerField;
    cdsCDPOSICIONADOR: TIntegerField;
    cdsCDPRIORIDADE: TIntegerField;
    cdsCDSTORDSERV: TIntegerField;
    cdsCDTPORDSERV: TIntegerField;
    cdsCDVALVULA: TIntegerField;
    cdsCDFUNCIONARIOATENDENTE: TIntegerField;
    cdsCDFUNCIONARIOTECNICO: TIntegerField;
    cdsCDSAIDA: TIntegerField;
    cdsCDGARANTIA: TIntegerField;
    cdsCDFUNCIONARIOVENDEDOR: TIntegerField;
    cdsCDREPRESENTANTE: TIntegerField;
    cdsCDITENTRADA: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDUSUARIOL: TIntegerField;
    cdsCDCOMPUTADORL: TIntegerField;
    cdsCDTPEQUIPAMENTO: TIntegerField;
    cdsCDMODELO: TIntegerField;
    cdsCDMARCA: TIntegerField;
    cdsCDTPCOBRANCA: TIntegerField;
    cdsCDITORDPRODUCAO: TIntegerField;
    cdsCDTPVOLTAGEM: TIntegerField;
    cdsNUORDSERV: TIntegerField;
    cdsDTENTRADA: TDateField;
    cdsHRENTRADA: TTimeField;
    cdsDTSAIDA: TDateField;
    cdsHRSAIDA: TTimeField;
    cdsDTENVIO: TDateField;
    cdsDTCOMUNICACAO: TDateField;
    cdsNUCOLETA: TStringField;
    cdsNUPROPOSTA: TStringField;
    cdsNUPEDIDO: TStringField;
    cdsNUOSCLIENTE: TStringField;
    cdsVLSERVICO: TFMTBCDField;
    cdsVLPECA: TFMTBCDField;
    cdsVLTOTAL: TFMTBCDField;
    cdsNUNF: TIntegerField;
    cdsDTNF: TDateField;
    cdsDTPEDIDO: TDateField;
    cdsDTFATURA: TDateField;
    cdsDTDEVOLUCAO: TDateField;
    cdsDTPREVENTREGA: TDateField;
    cdsNUNFDEVOLUCAO: TStringField;
    cdsNUNFFATURA: TStringField;
    cdsDSOBSERVACAO: TBlobField;
    cdsDSSOLUCAO: TBlobField;
    cdsDSDEFENC: TBlobField;
    cdsDSDEFREC: TBlobField;
    cdsPRACRESCSERVICO: TFloatField;
    cdsVLACRESCSERVICO: TFMTBCDField;
    cdsDSTESTE: TBlobField;
    cdsBOMEDICAO: TStringField;
    cdsNMCONTATO: TStringField;
    cdsNUFONE: TStringField;
    cdsHRATENDIMENTO: TTimeField;
    cdsHRRESOLUCAO: TTimeField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsVLLIQUIDO: TFMTBCDField;
    cdsDSJUSTIFICATIVA: TBlobField;
    cdsDSOBSINTERNA: TBlobField;
    cdsDSSOLINTERNA: TBlobField;
    cdsNUIMPFECHAMENTO: TIntegerField;
    cdsBOCONTRATO: TStringField;
    cdsNUKM: TIntegerField;
    cdsNUBATERIA: TStringField;
    cdsVLFABRICAR: TFMTBCDField;
    cdsHRPREVENTREGA: TTimeField;
    cdsDTPRONTA: TDateField;
    cdsHRPRONTA: TTimeField;
    cdsDTAPROVACAO: TDateField;
    cdsHRAPROVACAO: TTimeField;
    cdsDTPREVORCAMENTO: TDateField;
    cdsHRPREVORCAMENTO: TTimeField;
    cdsNUSEQEQUIPAMENTO: TStringField;
    cdsDSLOCALIZACAO: TStringField;
    cdsVLPRODUTO: TFMTBCDField;
    cdsVLSERVICOTERCEIRO: TFMTBCDField;
    cdsNUCONTROLEINTERNO: TStringField;
    cdsTPPRECOPRODUTO: TStringField;
    cdsNUDIASVALIDADEORCAMENTO: TIntegerField;
    cdsNUDIASPREVENTREGA: TIntegerField;
    cdsDTGARANTIA: TDateField;
    cdsBOSERVICOENTREGUE: TStringField;
    cdsBOSERVICOINTERNO: TStringField;
    cdsNUDIASEXECUCAO: TIntegerField;
    cdsDTPREVENTREGAORCAMENTO: TDateField;
    cdsPRCUSTOREPARO: TFloatField;
    cdsDTRETORNOORCAMENTO: TDateField;
    cdsTPPRECO: TStringField;
    cdsHRENVIO: TTimeField;
    cdsVLFITA: TFMTBCDField;
    cdsVLMAOOBRA: TFMTBCDField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSLIBERADO: TSQLTimeStampField;
    cdsDSDEFEITO: TMemoField;
    cdsDSAVALIACAOTECNICA: TMemoField;
    cdsNUSERIE: TStringField;
    cdsNUCOMPRIMENTO: TFloatField;
    cdsNUESTRUTURA: TIntegerField;
    cdsNUPATRIMONIO: TStringField;
    cdsBOENTRADA: TStringField;
    cdsBOSAIDA: TStringField;
    dts1: TDataSource;
    sdsdetailCDITORDSERV: TIntegerField;
    sdsdetailCDORDSERV: TIntegerField;
    sdsdetailCDEQUIPAMENTO: TIntegerField;
    sdsdetailCDSTITORDSERV: TIntegerField;
    sdsdetailCDGARANTIA: TIntegerField;
    sdsdetailCDUNIDADE: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailCDSERVPLAN: TIntegerField;
    sdsdetailCDITETAPA: TIntegerField;
    sdsdetailCDTPGRADEVALOR: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailVLUNITARIO: TFMTBCDField;
    sdsdetailQTITEM: TFloatField;
    sdsdetailPRDESCONTO: TFloatField;
    sdsdetailVLDESCONTO: TFMTBCDField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailNMITORDSERV: TStringField;
    sdsdetailDSOBSERVACAO: TBlobField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailNUPESAGEM: TStringField;
    sdsdetailQTAGUA: TFloatField;
    sdsdetailNUTEMPERATURA: TFloatField;
    sdsdetailNUVIBRACAO: TFloatField;
    sdsdetailCDFORMULACAO: TIntegerField;
    sdsdetailTSINICIO: TSQLTimeStampField;
    sdsdetailTSFIM: TSQLTimeStampField;
    sdsitacessorioCDORDSERV: TIntegerField;
    sdsitacessorioCDACESSORIO: TIntegerField;
    sdsitacessorioQTITEM: TIntegerField;
    sdsitacessorioCDUSUARIOI: TIntegerField;
    sdsitacessorioCDUSUARIOA: TIntegerField;
    sdsitacessorioCDCOMPUTADORI: TIntegerField;
    sdsitacessorioCDCOMPUTADORA: TIntegerField;
    sdsitacessorioTSINCLUSAO: TSQLTimeStampField;
    sdsitacessorioTSALTERACAO: TSQLTimeStampField;
    sdsitacessorioCDITACESSORIO: TIntegerField;
    sdsitacessorioNMACESSORIO: TStringField;
    sdsitdefaprCDORDSERV: TIntegerField;
    sdsitdefaprCDDEFEITO: TIntegerField;
    sdsitdefaprDSOBSERVACAO: TBlobField;
    sdsitdefaprCDUSUARIOI: TIntegerField;
    sdsitdefaprCDUSUARIOA: TIntegerField;
    sdsitdefaprCDCOMPUTADORI: TIntegerField;
    sdsitdefaprCDCOMPUTADORA: TIntegerField;
    sdsitdefaprTSINCLUSAO: TSQLTimeStampField;
    sdsitdefaprTSALTERACAO: TSQLTimeStampField;
    sdsitdefaprCDITDEFAPR: TIntegerField;
    sdsitdefaprNMDEFEITO: TStringField;
    sdsitdefencCDORDSERV: TIntegerField;
    sdsitdefencCDDEFEITO: TIntegerField;
    sdsitdefencDSOBSERVACAO: TBlobField;
    sdsitdefencCDUSUARIOI: TIntegerField;
    sdsitdefencCDUSUARIOA: TIntegerField;
    sdsitdefencCDCOMPUTADORI: TIntegerField;
    sdsitdefencCDCOMPUTADORA: TIntegerField;
    sdsitdefencTSINCLUSAO: TSQLTimeStampField;
    sdsitdefencTSALTERACAO: TSQLTimeStampField;
    sdsitdefencCDITDEFENC: TIntegerField;
    sdsitdefencNMDEFEITO: TStringField;
    sdsitetapaNMETAPA: TStringField;
    sdsitetapaCDORDSERV: TIntegerField;
    sdsitetapaCDFUNCIONARIO: TIntegerField;
    sdsitetapaCDSTITETAPA: TIntegerField;
    sdsitetapaCDETAPA: TIntegerField;
    sdsitetapaDTINICIO: TDateField;
    sdsitetapaHRINICIO: TTimeField;
    sdsitetapaDTFINAL: TDateField;
    sdsitetapaHRFINAL: TTimeField;
    sdsitetapaDTINICIOFUNC: TDateField;
    sdsitetapaHRINICIOFUNC: TTimeField;
    sdsitetapaDTFINALFUNC: TDateField;
    sdsitetapaHRFINALFUNC: TTimeField;
    sdsitetapaDSOBSERVACAO: TBlobField;
    sdsitetapaDSSOLUCAO: TBlobField;
    sdsitetapaCDUSUARIOI: TIntegerField;
    sdsitetapaCDUSUARIOA: TIntegerField;
    sdsitetapaCDCOMPUTADORI: TIntegerField;
    sdsitetapaCDCOMPUTADORA: TIntegerField;
    sdsitetapaTSINCLUSAO: TSQLTimeStampField;
    sdsitetapaTSALTERACAO: TSQLTimeStampField;
    sdsitetapaCDITETAPA: TIntegerField;
    sdsitequipamentoCDITEQUIPAMENTO: TIntegerField;
    sdsitequipamentoCDORDSERV: TIntegerField;
    sdsitequipamentoCDEQUIPAMENTO: TIntegerField;
    sdsitequipamentoCDUSUARIOI: TIntegerField;
    sdsitequipamentoCDUSUARIOA: TIntegerField;
    sdsitequipamentoCDCOMPUTADORI: TIntegerField;
    sdsitequipamentoCDCOMPUTADORA: TIntegerField;
    sdsitequipamentoTSINCLUSAO: TSQLTimeStampField;
    sdsitequipamentoTSALTERACAO: TSQLTimeStampField;
    sdsitordservexternoCDORDSERV: TIntegerField;
    sdsitordservexternoCDUNIDADE: TIntegerField;
    sdsitordservexternoCDPRODUTO: TIntegerField;
    sdsitordservexternoCDDIGITADO: TStringField;
    sdsitordservexternoVLUNITARIO: TFMTBCDField;
    sdsitordservexternoQTITEM: TFloatField;
    sdsitordservexternoVLTOTAL: TFMTBCDField;
    sdsitordservexternoCDUSUARIOI: TIntegerField;
    sdsitordservexternoCDUSUARIOA: TIntegerField;
    sdsitordservexternoCDCOMPUTADORI: TIntegerField;
    sdsitordservexternoCDCOMPUTADORA: TIntegerField;
    sdsitordservexternoTSINCLUSAO: TSQLTimeStampField;
    sdsitordservexternoTSALTERACAO: TSQLTimeStampField;
    sdsitordservexternoCDITORDSERVEXTERNO: TIntegerField;
    cdssdsitordservexterno: TDataSetField;
    cdssdsitequipamento: TDataSetField;
    cdssdsitetapa: TDataSetField;
    cdssdsitdefenc: TDataSetField;
    cdssdsitdefapr: TDataSetField;
    cdssdsitacessorio: TDataSetField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDITORDSERV: TIntegerField;
    cdsdetailCDORDSERV: TIntegerField;
    cdsdetailCDEQUIPAMENTO: TIntegerField;
    cdsdetailCDSTITORDSERV: TIntegerField;
    cdsdetailCDGARANTIA: TIntegerField;
    cdsdetailCDUNIDADE: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailCDSERVPLAN: TIntegerField;
    cdsdetailCDITETAPA: TIntegerField;
    cdsdetailCDTPGRADEVALOR: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailVLUNITARIO: TFMTBCDField;
    cdsdetailQTITEM: TFloatField;
    cdsdetailPRDESCONTO: TFloatField;
    cdsdetailVLDESCONTO: TFMTBCDField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailNMITORDSERV: TStringField;
    cdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailNUPESAGEM: TStringField;
    cdsdetailQTAGUA: TFloatField;
    cdsdetailNUTEMPERATURA: TFloatField;
    cdsdetailNUVIBRACAO: TFloatField;
    cdsdetailCDFORMULACAO: TIntegerField;
    cdsdetailTSINICIO: TSQLTimeStampField;
    cdsdetailTSFIM: TSQLTimeStampField;
    cdsitacessorioCDORDSERV: TIntegerField;
    cdsitacessorioCDACESSORIO: TIntegerField;
    cdsitacessorioQTITEM: TIntegerField;
    cdsitacessorioCDUSUARIOI: TIntegerField;
    cdsitacessorioCDUSUARIOA: TIntegerField;
    cdsitacessorioCDCOMPUTADORI: TIntegerField;
    cdsitacessorioCDCOMPUTADORA: TIntegerField;
    cdsitacessorioTSINCLUSAO: TSQLTimeStampField;
    cdsitacessorioTSALTERACAO: TSQLTimeStampField;
    cdsitacessorioCDITACESSORIO: TIntegerField;
    cdsitacessorioNMACESSORIO: TStringField;
    cdsitdefaprCDORDSERV: TIntegerField;
    cdsitdefaprCDDEFEITO: TIntegerField;
    cdsitdefaprDSOBSERVACAO: TBlobField;
    cdsitdefaprCDUSUARIOI: TIntegerField;
    cdsitdefaprCDUSUARIOA: TIntegerField;
    cdsitdefaprCDCOMPUTADORI: TIntegerField;
    cdsitdefaprCDCOMPUTADORA: TIntegerField;
    cdsitdefaprTSINCLUSAO: TSQLTimeStampField;
    cdsitdefaprTSALTERACAO: TSQLTimeStampField;
    cdsitdefaprCDITDEFAPR: TIntegerField;
    cdsitdefaprNMDEFEITO: TStringField;
    cdsitdefencCDORDSERV: TIntegerField;
    cdsitdefencCDDEFEITO: TIntegerField;
    cdsitdefencDSOBSERVACAO: TBlobField;
    cdsitdefencCDUSUARIOI: TIntegerField;
    cdsitdefencCDUSUARIOA: TIntegerField;
    cdsitdefencCDCOMPUTADORI: TIntegerField;
    cdsitdefencCDCOMPUTADORA: TIntegerField;
    cdsitdefencTSINCLUSAO: TSQLTimeStampField;
    cdsitdefencTSALTERACAO: TSQLTimeStampField;
    cdsitdefencCDITDEFENC: TIntegerField;
    cdsitdefencNMDEFEITO: TStringField;
    cdsitetapaNMETAPA: TStringField;
    cdsitetapaCDORDSERV: TIntegerField;
    cdsitetapaCDFUNCIONARIO: TIntegerField;
    cdsitetapaCDSTITETAPA: TIntegerField;
    cdsitetapaCDETAPA: TIntegerField;
    cdsitetapaDTINICIO: TDateField;
    cdsitetapaHRINICIO: TTimeField;
    cdsitetapaDTFINAL: TDateField;
    cdsitetapaHRFINAL: TTimeField;
    cdsitetapaDTINICIOFUNC: TDateField;
    cdsitetapaHRINICIOFUNC: TTimeField;
    cdsitetapaDTFINALFUNC: TDateField;
    cdsitetapaHRFINALFUNC: TTimeField;
    cdsitetapaDSOBSERVACAO: TBlobField;
    cdsitetapaDSSOLUCAO: TBlobField;
    cdsitetapaCDUSUARIOI: TIntegerField;
    cdsitetapaCDUSUARIOA: TIntegerField;
    cdsitetapaCDCOMPUTADORI: TIntegerField;
    cdsitetapaCDCOMPUTADORA: TIntegerField;
    cdsitetapaTSINCLUSAO: TSQLTimeStampField;
    cdsitetapaTSALTERACAO: TSQLTimeStampField;
    cdsitetapaCDITETAPA: TIntegerField;
    cdsitequipamentoCDITEQUIPAMENTO: TIntegerField;
    cdsitequipamentoCDORDSERV: TIntegerField;
    cdsitequipamentoCDEQUIPAMENTO: TIntegerField;
    cdsitequipamentoCDUSUARIOI: TIntegerField;
    cdsitequipamentoCDUSUARIOA: TIntegerField;
    cdsitequipamentoCDCOMPUTADORI: TIntegerField;
    cdsitequipamentoCDCOMPUTADORA: TIntegerField;
    cdsitequipamentoTSINCLUSAO: TSQLTimeStampField;
    cdsitequipamentoTSALTERACAO: TSQLTimeStampField;
    cdsitordservexternoCDORDSERV: TIntegerField;
    cdsitordservexternoCDUNIDADE: TIntegerField;
    cdsitordservexternoCDPRODUTO: TIntegerField;
    cdsitordservexternoCDDIGITADO: TStringField;
    cdsitordservexternoVLUNITARIO: TFMTBCDField;
    cdsitordservexternoQTITEM: TFloatField;
    cdsitordservexternoVLTOTAL: TFMTBCDField;
    cdsitordservexternoCDUSUARIOI: TIntegerField;
    cdsitordservexternoCDUSUARIOA: TIntegerField;
    cdsitordservexternoCDCOMPUTADORI: TIntegerField;
    cdsitordservexternoCDCOMPUTADORA: TIntegerField;
    cdsitordservexternoTSINCLUSAO: TSQLTimeStampField;
    cdsitordservexternoTSALTERACAO: TSQLTimeStampField;
    cdsitordservexternoCDITORDSERVEXTERNO: TIntegerField;
    cbxcdtpordserv: TcxDBLookupComboBox;
    cbxcdstordserv: TcxDBLookupComboBox;
    cbxcdprioridade: TcxDBLookupComboBox;
    edtDTENTRADA: TcxDBDateEdit;
    edtDTSAIDA: TcxDBDateEdit;
    txtDTENTRADA: TcxDBLabel;
    txtHRENTRADA: TcxDBLabel;
    txtDTSAIDA: TcxDBLabel;
    edthrentrada: TcxDBTimeEdit;
    cbxcdcondpagto: TcxDBLookupComboBox;
    cbxcdtpcobranca: TcxDBLookupComboBox;
    cbxcdgarantia: TcxDBLookupComboBox;
    edtcdcliente: TcxDBButtonEdit;
    gbxequipamentoordserv: TcxGroupBox;
    lblcdtpvoltagem: TLabel;
    lblmodelo: TLabel;
    lblmarca: TLabel;
    Label5: TLabel;
    lblnuserie: TLabel;
    lblnupatrimonio: TLabel;
    cbxCDTPEQUIPAMENTO: TcxDBLookupComboBox;
    cbxCDMARCA: TcxDBLookupComboBox;
    cbxCDMODELO: TcxDBLookupComboBox;
    cbxCDTPVOLTAGEM: TcxDBLookupComboBox;
    edtNUPATRIMONIO: TcxDBTextEdit;
    edtNUSERIE: TcxDBTextEdit;
    btntpequipamento: TcxButton;
    btnmarca: TcxButton;
    btnmodelo: TcxButton;
    lblpreventrega: TLabel;
    edtDTPREVENTREGA: TcxDBDateEdit;
    edtHRPREVENTREGA: TcxDBTimeEdit;
    lblaprovacao: TLabel;
    edtDTAPROVACAO: TcxDBDateEdit;
    edtHRAPROVACAO: TcxDBTimeEdit;
    lblnukm: TLabel;
    edtNUKM: TcxDBTextEdit;
    edtnuseqequipamento: TcxDBTextEdit;
    edtDSLOCALIZACAO: TcxDBTextEdit;
    edtcdequipamento: TcxDBButtonEdit;
    edtvldesconto: TcxDBCalcEdit;
    txt4: TcxDBLabel;
    txt5: TcxDBLabel;
    txt7: TcxDBLabel;
    txt1: TcxDBLabel;
    txt2: TcxDBLabel;
    tbvitequipamento: TcxGridDBTableView;
    glvGrid1Level1: TcxGridLevel;
    grditequipamento: TcxGrid;
    tbvitequipamentoCDEQUIPAMENTO: TcxGridDBColumn;
    tbv: TcxGridDBTableView;
    glvGrid1Level11: TcxGridLevel;
    grd: TcxGrid;
    tbvCDDIGITADO: TcxGridDBColumn;
    tbvVLUNITARIO: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    sdsdetailNMPRODUTO: TStringField;
    cdsdetailNMPRODUTO: TStringField;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvitordservexterno: TcxGridDBTableView;
    glvGrid1Level12: TcxGridLevel;
    grditordservexterno: TcxGrid;
    tbvitordservexternoCDDIGITADO: TcxGridDBColumn;
    tbvitordservexternoVLUNITARIO: TcxGridDBColumn;
    tbvitordservexternoQTITEM: TcxGridDBColumn;
    tbvitordservexternoVLTOTAL: TcxGridDBColumn;
    sdsitordservexternoNMPRODUTO: TStringField;
    cdsitordservexternoNMPRODUTO: TStringField;
    tbvitordservexternoNMPRODUTO: TcxGridDBColumn;
    tbvitacessorio: TcxGridDBTableView;
    glvGrid1Level13: TcxGridLevel;
    grditacessorio: TcxGrid;
    tbvitacessorioCDACESSORIO: TcxGridDBColumn;
    tbvitacessorioQTITEM: TcxGridDBColumn;
    tbvitacessorioNMACESSORIO: TcxGridDBColumn;
    tbvitdefapr: TcxGridDBTableView;
    glvGrid1Level14: TcxGridLevel;
    grditdefapr: TcxGrid;
    tbvitdefenc: TcxGridDBTableView;
    glvGrid1Level15: TcxGridLevel;
    grditdefenc: TcxGrid;
    tbvitdefencCDDEFEITO: TcxGridDBColumn;
    tbvitdefencDSOBSERVACAO: TcxGridDBColumn;
    tbvitdefencNMDEFEITO: TcxGridDBColumn;
    tbvitetapa: TcxGridDBTableView;
    glvGrid1Level16: TcxGridLevel;
    grditetapa: TcxGrid;
    tbvitetapaNMETAPA: TcxGridDBColumn;
    tbvitetapaCDETAPA: TcxGridDBColumn;
    tbvitetapaDTINICIO: TcxGridDBColumn;
    tbvitetapaHRINICIO: TcxGridDBColumn;
    tbvitetapaDTFINAL: TcxGridDBColumn;
    tbvitetapaHRFINAL: TcxGridDBColumn;
    memdsdefeito: TcxDBMemo;
    memDSAVALIACAOTECNICA: TcxDBMemo;
    memDSOBSERVACAO: TcxDBMemo;
    memDSSOLUCAO: TcxDBMemo;
    rceDSOBSINTERNA: TcxDBRichEdit;
    rceDSSOLINTERNA: TcxDBRichEdit;
    sdsdetailDSLOCALIZACAO: TStringField;
    cdsdetailDSLOCALIZACAO: TStringField;
    tbvDSLOCALIZACAO: TcxGridDBColumn;
    tbvCDTPGRADEVALOR: TcxGridDBColumn;
    tbvCDSTITORDSERV: TcxGridDBColumn;
    sdsdetailCDALTERNATIVO: TStringField;
    cdsdetailCDALTERNATIVO: TStringField;
    tbvCDALTERNATIVO: TcxGridDBColumn;
    tbvNMITORDSERV: TcxGridDBColumn;
    edtcodigo: TcxTextEdit;
    tbvitdefaprCDDEFEITO: TcxGridDBColumn;
    tbvitdefaprDSOBSERVACAO: TcxGridDBColumn;
    tbvitdefaprNMDEFEITO: TcxGridDBColumn;
    actabrircondpagto: TAction;
    sdsdetailBOSERVICO: TStringField;
    cdsdetailBOSERVICO: TStringField;
    sdsQTITEM: TFloatField;
    cdsQTITEM: TFloatField;
    actabrirprodutoexterno: TAction;
    actabrirvendedor: TAction;
    actabrirtecnico: TAction;
    actabriratendente: TAction;
    actabriritequipamento: TAction;
    sdsVLPRODUTOCOMISSAO: TFMTBCDField;
    sdsVLSERVICOCOMISSAO: TFMTBCDField;
    sdsVLCOMISSAOVENDEDORPRODUTO: TFMTBCDField;
    sdsVLCOMISSAOTECNICOPRODUTO: TFMTBCDField;
    sdsVLCOMISSAOATENDENTEPRODUTO: TFMTBCDField;
    sdsPRCOMISSAOVENDEDORPRODUTO: TFloatField;
    sdsPRCOMISSAOTECNICOPRODUTO: TFloatField;
    sdsPRCOMISSAOATENDENTEPRODUTO: TFloatField;
    sdsPRCOMISSAOVENDEDORSERVICO: TFloatField;
    sdsPRCOMISSAOTECNICOSERVICO: TFloatField;
    sdsPRCOMISSAOATENDENTESERVICO: TFloatField;
    sdsVLCOMISSAOVENDEDORSERVICO: TFMTBCDField;
    sdsVLCOMISSAOTECNICOSERVICO: TFMTBCDField;
    sdsVLCOMISSAOATENDENTESERVICO: TFMTBCDField;
    sdsVLCOMISSAOATENDENTE: TFMTBCDField;
    sdsVLCOMISSAOTECNICO: TFMTBCDField;
    sdsVLCOMISSAOVENDEDOR: TFMTBCDField;
    sdsPRCOMISSAOATENDENTE: TFloatField;
    sdsPRCOMISSAOTECNICO: TFloatField;
    sdsPRCOMISSAOVENDEDOR: TFloatField;
    sdsVLCOMISSAOSERVICO: TFMTBCDField;
    sdsVLCOMISSAOPRODUTO: TFMTBCDField;
    sdsVLCOMISSAO: TFMTBCDField;
    sdsVLCOMISSAOORCADOPRODUTO: TFMTBCDField;
    sdsPRCOMISSAOORCADOPRODUTO: TFloatField;
    sdsPRCOMISSAOORCADOSERVICO: TFloatField;
    sdsVLCOMISSAOORCADOSERVICO: TFMTBCDField;
    sdsVLCOMISSAOORCADO: TFMTBCDField;
    sdsPRCOMISSAOORCADO: TFloatField;
    sdsCDFUNCIONARIOCONSERTO: TIntegerField;
    sdsDTCONSERTO: TDateField;
    sdsHRCONSERTO: TTimeField;
    sdsHRCONSERTOF: TTimeField;
    sdsHRCONSERTOHORA: TTimeField;
    sdsDSLOCALIZACAOCONSERTO: TStringField;
    sdsPRCOMISSAOPRODUTOCONSERTO: TFloatField;
    sdsVLCOMISSAOPRODUTOCONSERTO: TFMTBCDField;
    sdsPRCOMISSAOSERVICOCONSERTO: TFloatField;
    sdsVLCOMISSAOSERVICOCONSERTO: TFMTBCDField;
    sdsCDFUNCIONARIODEVOLVIDOCONSERTO: TIntegerField;
    sdsDTDEVOLUCAOSEMCONSERTO: TDateField;
    sdsHRDEVOLUCAOSEMCONSERTO: TTimeField;
    sdsHRDEVOLUCAOSEMCONSERTOF: TTimeField;
    sdsHRDEVOLUCAOSEMCONSERTOHORA: TTimeField;
    sdsDSLOCALIZACAODEVOLVIDOCONSERTO: TStringField;
    sdsDSDEVOLUCAOSEMCONSERTO: TBlobField;
    sdsCDFUNCIONARIOORCADO: TIntegerField;
    sdsDTORCADO: TDateField;
    sdsHRORCADO: TTimeField;
    sdsHRORCADOF: TTimeField;
    sdsHRORCADOHORA: TTimeField;
    sdsDSLOCALIZACAOORCADO: TStringField;
    sdsPRCOMISSAOPRODUTOORCADO: TFloatField;
    sdsVLCOMISSAOPRODUTOORCADO: TFMTBCDField;
    sdsPRCOMISSAOSERVICOORCADO: TFloatField;
    sdsVLCOMISSAOSERVICOORCADO: TFMTBCDField;
    cdsVLPRODUTOCOMISSAO: TFMTBCDField;
    cdsVLSERVICOCOMISSAO: TFMTBCDField;
    cdsVLCOMISSAOVENDEDORPRODUTO: TFMTBCDField;
    cdsVLCOMISSAOTECNICOPRODUTO: TFMTBCDField;
    cdsVLCOMISSAOATENDENTEPRODUTO: TFMTBCDField;
    cdsPRCOMISSAOVENDEDORPRODUTO: TFloatField;
    cdsPRCOMISSAOTECNICOPRODUTO: TFloatField;
    cdsPRCOMISSAOATENDENTEPRODUTO: TFloatField;
    cdsPRCOMISSAOVENDEDORSERVICO: TFloatField;
    cdsPRCOMISSAOTECNICOSERVICO: TFloatField;
    cdsPRCOMISSAOATENDENTESERVICO: TFloatField;
    cdsVLCOMISSAOVENDEDORSERVICO: TFMTBCDField;
    cdsVLCOMISSAOTECNICOSERVICO: TFMTBCDField;
    cdsVLCOMISSAOATENDENTESERVICO: TFMTBCDField;
    cdsVLCOMISSAOATENDENTE: TFMTBCDField;
    cdsVLCOMISSAOTECNICO: TFMTBCDField;
    cdsVLCOMISSAOVENDEDOR: TFMTBCDField;
    cdsPRCOMISSAOATENDENTE: TFloatField;
    cdsPRCOMISSAOTECNICO: TFloatField;
    cdsPRCOMISSAOVENDEDOR: TFloatField;
    cdsVLCOMISSAOSERVICO: TFMTBCDField;
    cdsVLCOMISSAOPRODUTO: TFMTBCDField;
    cdsVLCOMISSAO: TFMTBCDField;
    cdsVLCOMISSAOORCADOPRODUTO: TFMTBCDField;
    cdsPRCOMISSAOORCADOPRODUTO: TFloatField;
    cdsPRCOMISSAOORCADOSERVICO: TFloatField;
    cdsVLCOMISSAOORCADOSERVICO: TFMTBCDField;
    cdsVLCOMISSAOORCADO: TFMTBCDField;
    cdsPRCOMISSAOORCADO: TFloatField;
    cdsCDFUNCIONARIOCONSERTO: TIntegerField;
    cdsDTCONSERTO: TDateField;
    cdsHRCONSERTO: TTimeField;
    cdsHRCONSERTOF: TTimeField;
    cdsHRCONSERTOHORA: TTimeField;
    cdsDSLOCALIZACAOCONSERTO: TStringField;
    cdsPRCOMISSAOPRODUTOCONSERTO: TFloatField;
    cdsVLCOMISSAOPRODUTOCONSERTO: TFMTBCDField;
    cdsPRCOMISSAOSERVICOCONSERTO: TFloatField;
    cdsVLCOMISSAOSERVICOCONSERTO: TFMTBCDField;
    cdsCDFUNCIONARIODEVOLVIDOCONSERTO: TIntegerField;
    cdsDTDEVOLUCAOSEMCONSERTO: TDateField;
    cdsHRDEVOLUCAOSEMCONSERTO: TTimeField;
    cdsHRDEVOLUCAOSEMCONSERTOF: TTimeField;
    cdsHRDEVOLUCAOSEMCONSERTOHORA: TTimeField;
    cdsDSLOCALIZACAODEVOLVIDOCONSERTO: TStringField;
    cdsDSDEVOLUCAOSEMCONSERTO: TBlobField;
    cdsCDFUNCIONARIOORCADO: TIntegerField;
    cdsDTORCADO: TDateField;
    cdsHRORCADO: TTimeField;
    cdsHRORCADOF: TTimeField;
    cdsHRORCADOHORA: TTimeField;
    cdsDSLOCALIZACAOORCADO: TStringField;
    cdsPRCOMISSAOPRODUTOORCADO: TFloatField;
    cdsVLCOMISSAOPRODUTOORCADO: TFMTBCDField;
    cdsPRCOMISSAOSERVICOORCADO: TFloatField;
    cdsVLCOMISSAOSERVICOORCADO: TFMTBCDField;
    sdsdetailBOCOMISSAO: TStringField;
    cdsdetailBOCOMISSAO: TStringField;
    edtDTPREVORCAMENTO: TcxDBDateEdit;
    edthrprevorcamento: TcxDBTimeEdit;
    edtDTENVIO: TcxDBDateEdit;
    edtHRENVIO: TcxDBTimeEdit;
    edtDTENTREGUE: TcxDBDateEdit;
    edtnmentreguepara: TcxDBTextEdit;
    edtnuentreguedocumento: TcxDBTextEdit;
    edthrentregue: TcxDBTimeEdit;
    edtDTORCADO: TcxDBDateEdit;
    edtHRORCADO: TcxDBTimeEdit;
    edtHRORCADOF: TcxDBTimeEdit;
    edtHRORCADOHORA: TcxDBTimeEdit;
    edtDSLOCALIZACAOORCADO: TcxDBTextEdit;
    edtprcomissaoprodutoorcado: TcxDBCalcEdit;
    edtvlcomissaoprodutoorcado: TcxDBCalcEdit;
    edtprcomissaoservicoorcado: TcxDBCalcEdit;
    edtvlcomissaoservicoorcado: TcxDBCalcEdit;
    edtDTCONSERTO: TcxDBDateEdit;
    edthrconserto: TcxDBTimeEdit;
    edthrconsertof: TcxDBTimeEdit;
    edthrconsertohora: TcxDBTimeEdit;
    edtDSLOCALIZACAOCONSERTO: TcxDBTextEdit;
    edtprcomissaoprodutoconserto: TcxDBCalcEdit;
    edtvlcomissaoprodutoconserto: TcxDBCalcEdit;
    edtprcomissaoservicoconserto: TcxDBCalcEdit;
    edtvlcomissaoservicoconserto: TcxDBCalcEdit;
    edtDtDEVOLUCAOSEMCONSERTO: TcxDBDateEdit;
    edthrdevolucaoSEMCONSERTO: TcxDBTimeEdit;
    edtHRDEVOLUCAOSEMCONSERTOF: TcxDBTimeEdit;
    edtHRDEVOLUCAOSEMCONSERTOHORA: TcxDBTimeEdit;
    edtDSLOCALIZACAODEVOLVIDOCONSERTO: TcxDBTextEdit;
    memDSDEVOLUCAOSEMCONSERTO: TcxDBMemo;
    edtvlcomissao: TcxDBCalcEdit;
    edtvlcomissaoproduto: TcxDBCalcEdit;
    edtvlcomissaoservico: TcxDBCalcEdit;
    edtnucontroleinterno: TcxDBTextEdit;
    edtNUBATERIA: TcxDBTextEdit;
    rdgTPPRECOPRODUTO: TcxDBRadioGroup;
    edtnudiasvalidadeorcamento: TcxDBSpinEdit;
    edtnudiaspreventrega: TcxDBSpinEdit;
    edtDTGARANTIA: TcxDBDateEdit;
    edtPRCOMISSAOATENDENTEPRODUTO: TcxDBTimeEdit;
    edtPRCOMISSAOORCADOPRODUTO: TcxDBTimeEdit;
    edtPRCOMISSAOTECNICOPRODUTO: TcxDBTimeEdit;
    edtPRCOMISSAOVENDEDORPRODUTO: TcxDBTimeEdit;
    edtPRCOMISSAOATENDENTESERVICO: TcxDBTimeEdit;
    edtPRCOMISSAOORCADOSERVICO: TcxDBTimeEdit;
    edtPRCOMISSAOTECNICOSERVICO: TcxDBTimeEdit;
    edtPRCOMISSAOVENDEDORSERVICO: TcxDBTimeEdit;
    edtPRCOMISSAOATENDENTE: TcxDBTimeEdit;
    edtPRCOMISSAOORCADO: TcxDBTimeEdit;
    edtPRCOMISSAOTECNICO: TcxDBTimeEdit;
    edtPRCOMISSAOVENDEDOR: TcxDBTimeEdit;
    txtvlprodutocomissao: TcxDBLabel;
    txtvlservicocomissao: TcxDBLabel;
    txtVLCOMISSAOatendentePRODUTO: TcxDBLabel;
    txtVLCOMISSAOORCADOPRODUTO: TcxDBLabel;
    txtVLCOMISSAOTECNICOPRODUTO: TcxDBLabel;
    txtvlcomissaovendedorPRODUTO: TcxDBLabel;
    txtVLCOMISSAOatendenteservico: TcxDBLabel;
    txtvlcomissaoproduto: TcxDBLabel;
    txtVLCOMISSAOORCADOSERVICO: TcxDBLabel;
    txtVLCOMISSAOTECNICOSERVICO: TcxDBLabel;
    txtvlcomissaovendedorservico: TcxDBLabel;
    txtvlcomissaoservico: TcxDBLabel;
    txtVLCOMISSAOatendente: TcxDBLabel;
    txtVLCOMISSAOORCADO: TcxDBLabel;
    txtVLCOMISSAOTECNICO: TcxDBLabel;
    txtvlcomissaovendedor: TcxDBLabel;
    txtvlcomissao: TcxDBLabel;
    cdsNUSAIDA: TIntegerField;
    lblNUANO: TLabel;
    edtnuano: TcxDBTextEdit;
    sdsNUANO: TIntegerField;
    cdsNUANO: TIntegerField;
    sdsCDCOR: TIntegerField;
    cdsCDCOR: TIntegerField;
    lblcdcor: TLabel;
    cbxcdcor: TcxDBLookupComboBox;
    btncdcor: TcxButton;
    sdsCDFUNCIONARIOENTREGUE: TIntegerField;
    cdsCDFUNCIONARIOENTREGUE: TIntegerField;
    sdsDTENTREGUE: TDateField;
    cdsDTENTREGUE: TDateField;
    sdsHRENTREGUE: TTimeField;
    cdsHRENTREGUE: TTimeField;
    sdsNMENTREGUEPARA: TStringField;
    cdsNMENTREGUEPARA: TStringField;
    sdsNUENTREGUEDOCUMENTO: TStringField;
    cdsNUENTREGUEDOCUMENTO: TStringField;
    actarquivo: TAction;
    tbsconsulta: TcxTabSheet;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    btnsaida: TdxBarButton;
    actconsultasaida: TAction;
    grdconsulta: TcxGrid;
    tbvsaida: TcxGridDBBandedTableView;
    colNUSAIDA: TcxGridDBBandedColumn;
    colDTEMISSAO: TcxGridDBBandedColumn;
    colVLTOTAL: TcxGridDBBandedColumn;
    tbvsaidaNMTPSAIDA: TcxGridDBBandedColumn;
    tbvsaidaNMSERIE: TcxGridDBBandedColumn;
    tbvitsaida: TcxGridDBBandedTableView;
    colcddigitado: TcxGridDBBandedColumn;
    colnmproduto: TcxGridDBBandedColumn;
    colqtitem: TcxGridDBBandedColumn;
    colvlunitario: TcxGridDBBandedColumn;
    colvltotali: TcxGridDBBandedColumn;
    grlsaida: TcxGridLevel;
    grlitsaida: TcxGridLevel;
    sdsconsulta: TSQLDataSet;
    dspconsulta: TDataSetProvider;
    cdsconsulta: TClientDataSet;
    dtsconsulta: TDataSource;
    dtsitconsulta: TDataSource;
    cdsitconsulta: TClientDataSet;
    dspitconsulta: TDataSetProvider;
    sdsitconsulta: TSQLDataSet;
    cbxcdlocalservico: TcxDBLookupComboBox;
    lblcdlocalservico: TLabel;
    sdsCDLOCALSERVICO: TIntegerField;
    cdsCDLOCALSERVICO: TIntegerField;
    actitlacrebalanca: TAction;
    actitlacrebalancaretirado: TAction;
    actitselobalanca: TAction;
    actitselobalancaretirado: TAction;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton10: TdxBarButton;
    txtNMCLIENTE: TDBText;
    sdsNMCLIENTE: TStringField;
    cdsNMCLIENTE: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsCDCLIENTECOBRANCA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsCDCLIENTECOBRANCA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    sdsitacessorioCDEMPRESA: TLargeintField;
    cdsitacessorioCDEMPRESA: TLargeintField;
    sdsitdefaprCDEMPRESA: TLargeintField;
    sdsitdefencCDEMPRESA: TLargeintField;
    sdsitetapaCDEMPRESA: TLargeintField;
    sdsitequipamentoCDEMPRESA: TLargeintField;
    sdsitordservexternoCDEMPRESA: TLargeintField;
    cdsitdefaprCDEMPRESA: TLargeintField;
    cdsitetapaCDEMPRESA: TLargeintField;
    cdsitequipamentoCDEMPRESA: TLargeintField;
    cdsitordservexternoCDEMPRESA: TLargeintField;
    edtcdfuncionarioatendente: TcxDBButtonEdit;
    txtnmfuncionarioatendente: TDBText;
    sdsNMFUNCIONARIOATENDENTE: TStringField;
    cdsNMFUNCIONARIOATENDENTE: TStringField;
    txtnmfuncionariotecnico: TDBText;
    edtcdfuncionariotecnico: TcxDBButtonEdit;
    sdsNMFUNCIONARIOTECNICO: TStringField;
    cdsNMFUNCIONARIOTECNICO: TStringField;
    edtcdfuncionariovendedor: TcxDBButtonEdit;
    txtnmfuncionariovendedor: TDBText;
    sdsNMFUNCIONARIOVENDEDOR: TStringField;
    cdsNMFUNCIONARIOVENDEDOR: TStringField;
    edtcdfuncionarioentregue: TcxDBButtonEdit;
    txtnmfuncionarioentregue: TDBText;
    sdsNMFUNCIONARIOENTREGUE: TStringField;
    cdsNMFUNCIONARIOENTREGUE: TStringField;
    edtcdfuncionarioorcado: TcxDBButtonEdit;
    txtnmfuncionarioorcado: TDBText;
    sdsNMFUNCIONARIOORCADO: TStringField;
    cdsNMFUNCIONARIOORCADO: TStringField;
    edtcdfuncionarioconserto: TcxDBButtonEdit;
    txtnmfuncionarioconserto: TDBText;
    sdsNMFUNCIONARIOCONSERTO: TStringField;
    cdsNMFUNCIONARIOCONSERTO: TStringField;
    edtcdfuncionariodevolvidoconserto: TcxDBButtonEdit;
    txtNMFUNCIONARIODEVOLVIDOCONSERTO: TDBText;
    sdsNMFUNCIONARIODEVOLVIDOCONSERTO: TStringField;
    cdsNMFUNCIONARIODEVOLVIDOCONSERTO: TStringField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actAberturaOsExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure pgcChange(Sender: TObject);
    procedure actEntregaOsExecute(Sender: TObject);
    procedure actAcompanhamentoOsExecute(Sender: TObject);
    procedure actMudarEtapaExecute(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actNovoObsInternaExecute(Sender: TObject);
    procedure actNovoSolInternaExecute(Sender: TObject);
    procedure actorcamentocontratoExecute(Sender: TObject);
    procedure actorcamentoavulsoExecute(Sender: TObject);
    procedure actGerarNotafiscalExecute(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actabrirtpordservExecute(Sender: TObject);
    procedure actabrirequipamentoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure lblequipamentoDblClick(Sender: TObject);
    procedure edtHRDEVOLUCAOSEMCONSERTOFExit(Sender: TObject);
    procedure actimprimirorcamentoExecute(Sender: TObject);
    procedure actrevisaoExecute(Sender: TObject);
    procedure actentregasemcomprovanteExecute(Sender: TObject);
    procedure actaberturaosa5Execute(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblcdclienteDblClick(Sender: TObject);
    procedure actabrirtpequipamentoExecute(Sender: TObject);
    procedure actordserventradaExecute(Sender: TObject);
    procedure actordservsaidaExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure lbltpordservDblClick(Sender: TObject);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsitacessorioBeforePost(DataSet: TDataSet);
    procedure cdsitdefaprBeforePost(DataSet: TDataSet);
    procedure cdsitdefencBeforePost(DataSet: TDataSet);
    procedure cdsitequipamentoBeforePost(DataSet: TDataSet);
    procedure cdsitordservexternoBeforePost(DataSet: TDataSet);
    procedure cdsitacessorioCDACESSORIOValidate(Sender: TField);
    procedure cdsitdefaprCDDEFEITOValidate(Sender: TField);
    procedure cdsitdefencCDDEFEITOValidate(Sender: TField);
    procedure cdsitordservexternoCDDIGITADOValidate(Sender: TField);
    procedure cdsCDTPORDSERVValidate(Sender: TField);
    procedure Label5DblClick(Sender: TObject);
    procedure btntpequipamentoClick(Sender: TObject);
    procedure btnmarcaClick(Sender: TObject);
    procedure btnmodeloClick(Sender: TObject);
    procedure edtcdequipamentoExit(Sender: TObject);
    procedure edtcdequipamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure actabrircondpagtoExecute(Sender: TObject);
    procedure lblcdcondpagtoDblClick(Sender: TObject);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirprodutoexternoExecute(Sender: TObject);
    procedure tbvitordservexternoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvitordservexternoCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actabrirvendedorExecute(Sender: TObject);
    procedure lblvendedorDblClick(Sender: TObject);
    procedure actabrirtecnicoExecute(Sender: TObject);
    procedure actabriratendenteExecute(Sender: TObject);
    procedure lbltecnicoDblClick(Sender: TObject);
    procedure lblatendenteDblClick(Sender: TObject);
    procedure dspUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitordservexternoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitacessorioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitdefaprKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitdefencKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitetapaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvitequipamentoCDEQUIPAMENTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvitacessorioCDACESSORIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvitdefaprCDDEFEITOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvitdefencCDDEFEITOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitacessorioNewRecord(DataSet: TDataSet);
    procedure cdsitordservexternoNewRecord(DataSet: TDataSet);
    procedure tbvitequipamentoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabriritequipamentoExecute(Sender: TObject);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure btncdcorClick(Sender: TObject);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure actarquivoExecute(Sender: TObject);
    procedure actconsultasaidaExecute(Sender: TObject);
    procedure cdsHRCONSERTOFValidate(Sender: TField);
    procedure cdsHRORCADOFValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actitlacrebalancaExecute(Sender: TObject);
    procedure actitlacrebalancaretiradoExecute(Sender: TObject);
    procedure actitselobalancaExecute(Sender: TObject);
    procedure actitselobalancaretiradoExecute(Sender: TObject);
    procedure txtNMCLIENTEDblClick(Sender: TObject);
    procedure cdsCDPRIORIDADEValidate(Sender: TField);
    procedure edtcdfuncionarioatendenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioatendentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDFUNCIONARIOATENDENTEValidate(Sender: TField);
    procedure edtcdfuncionariotecnicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionariotecnicoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfuncionariovendedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionariovendedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDFUNCIONARIOTECNICOValidate(Sender: TField);
    procedure cdsCDFUNCIONARIOVENDEDORValidate(Sender: TField);
    procedure edtcdfuncionarioentregueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioentreguePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDFUNCIONARIOENTREGUEValidate(Sender: TField);
    procedure edtcdfuncionarioorcadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioorcadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDFUNCIONARIOORCADOValidate(Sender: TField);
    procedure edtcdfuncionarioconsertoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioconsertoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDFUNCIONARIOCONSERTOValidate(Sender: TField);
    procedure edtcdfuncionariodevolvidoconsertoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionariodevolvidoconsertoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDFUNCIONARIODEVOLVIDOCONSERTOValidate(Sender: TField);
    procedure cdsdetailQTITEMValidate(Sender: TField);
  private      { Private declarations }
    ordserv : TOrdserv;
    produto : TProduto;
    cliente : TCliente;
    equipamento : TEquipamento;
    codigoinsercao : string;
    tbl_consulta : string;
    function  CarregarInformacoes(cod:integer):boolean;
    procedure SetRecord(cdtipo:string);
    procedure gravarTotais;
    function  InserirEtapa:string;
    procedure set_osanterior;
    procedure set_abrirtabela;
    procedure SetConsulta(tbl:string);
    procedure SetEmpresa;
    procedure SetAction;
    procedure setaprovacao;
    procedure setatendente;
    procedure setchecklist;
    procedure SetComissao;
    procedure setdatas;
    procedure setequipamento;
    procedure setgrade;
    procedure setguias;
    procedure setpreventrega;
    procedure setproduto;
    procedure setreport;
    procedure settecnico;
    procedure setvendedor;
    procedure ConfigurarCorPrioridade(codigo:integer);
    procedure AtribuirValorUnitario;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
  end;

const
  tbl      = _ordserv;
  exibe    = 'Ordem de Serviço';
  artigoI  = 'a';
var
  frmOrdServ: TfrmOrdServ;

implementation

uses
  uDtmMain,
  umudaretapa,
  uLocalizarOrdServ,
  uLocalizarEquipamento,
  uMain,
  UdlgInfNumIntervencao,
  ulocalizarCliente,
  uLocalizar,
  uLocalizarProduto,
  udlgGerarSaida,
  uordserv1orcamentoavulso,
  uordserv1orcamentocontrato,
  uordserv1wordentregasemcomprovante,
  ulocalizarFuncionario,
  classeEndereco,
  uimprimirrelatoriopadrao,
  //untordserv1ImprimirAcompanhamentoOs,
  Math,
  uMenuRelatorio,
  udlgtabela, uNovoTabela, uRichEdit, uexportarexcel, udlgarquivo;

{$R *.DFM}

function TfrmOrdServ.InserirEtapa:string;
var
  cdetapa : string;
begin
  if cdsitetapa.RecordCount > 0 then
  begin
    exit;
  end;
  cdetapa   := NomedoCodigo(_tpordserv, cdsCDTPORDSERV.AsString, _cdetapa);
  if cdetapa = '' then
  begin
    cdetapa := _1;
  end;
  result := gerarcodigo(_itetapa);
  cdsitetapa.Insert;
  cdsitetapaCDITETAPA.AsString   := result;
  cdsitetapaCDETAPA.AsString     := cdetapa;
  cdsitetapaCDSTITETAPA.AsString := _1;
  cdsitetapaDTINICIO.AsDateTime  := dtbanco;
  cdsitetapaHRINICIO.AsDateTime  := HrBanco;
  registro.set_update(cdsitetapa);
  cdsitetapa.Post;
end;

procedure TfrmOrdServ.setatendente;
begin
  lblatendente.visible                := ordserv.tpordserv.boatendente = _s;
  EDTcdfuncionarioatendente.visible   := ordserv.tpordserv.boatendente = _s;
  edtPRCOMISSAOATENDENTE.Visible      := ordserv.tpordserv.bocomissaoatendente = _s;
  txtvlcomissaoatendente.Visible      := ordserv.tpordserv.bocomissaoatendente = _s;
end;

procedure TfrmOrdServ.settecnico;
begin
  lbltecnico.visible                := ordserv.tpordserv.botecnico = _s;
  edtcdfuncionariotecnico.visible   := ordserv.tpordserv.botecnico = _s;
  edtprcomissaotecnico.Visible      := ordserv.tpordserv.bocomissaotecnico = _s;
  txtvlcomissaotecnico.Visible      := ordserv.tpordserv.bocomissaotecnico = _s;
end;

procedure TfrmOrdServ.setvendedor;
begin
  lblvendedor.visible                := ordserv.tpordserv.bovendedor = _s;
  edtcdfuncionariovendedor.visible   := ordserv.tpordserv.bovendedor = _s;
  edtprcomissaovendedor.Visible      := ordserv.tpordserv.bocomissaovendedor = _s;
  txtvlcomissaovendedor.Visible      := ordserv.tpordserv.bocomissaovendedor = _s;
end;

procedure TfrmOrdServ.setguias;
begin
  tbsgeral.TabVisible            := ordserv.tpordserv.bogeral = _s;
  if ordserv.tpordserv.bogeral = _s then
  begin
    tbsdevolucaosemconserto.tabvisible := ordserv.tpordserv.bodevolucaosemconserto = _s;
  end;
  tbsitordservexterno.TabVisible := ordserv.tpordserv.boservicoexterno = _s;
  tbsacessorio.TabVisible        := ordserv.tpordserv.boacessorio = _s;
  tbsdefapr.TabVisible           := ordserv.tpordserv.bodefapr = _s;
  tbsDefEnc.TabVisible           := ordserv.tpordserv.BODEFENC = _s;
  tbsobservacao.TabVisible       := ordserv.tpordserv.boobservacao = _s;
  tbssolucao.TabVisible          := ordserv.tpordserv.bosolucao = _s;
  tbsdefeito.TabVisible          := ordserv.tpordserv.bodefeito = _s;
  tbsavaliacaotecnica.tabvisible := ordserv.tpordserv.boavaliacaotecnica = _s;
  tbsObsInterna.TabVisible       := ordserv.tpordserv.boobsinterna = _s;
  tbsSolInterna.TabVisible       := ordserv.tpordserv.bosolinterna = _s;
  tbsOSAnterior.TabVisible       := ordserv.tpordserv.boosanterior = _s;
  tbsproduto.TabVisible          := ordserv.tpordserv.boproduto = _s;
  tbsequipamento.TabVisible      := ordserv.tpordserv.boequipamentoguia = _s;
  tbsdevolucaosemconserto.TabVisible := ordserv.tpordserv.bodevolucaosemconserto = _s;
  pgc.Visible := (ordserv.tpordserv.boequipamentoguia = _s) or
                 (ordserv.tpordserv.boproduto = _s) or
                 (ordserv.tpordserv.boacessorio = _s) or
                 (ordserv.tpordserv.bodefapr = _s) or
                 (ordserv.tpordserv.boDEFENC = _s) or
                 (ordserv.tpordserv.boobservacao = _s) or
                 (ordserv.tpordserv.bosolucao = _s) or
                 (ordserv.tpordserv.boobsinterna = _s) or
                 (ordserv.tpordserv.bosolinterna = _s) or
                 (ordserv.tpordserv.boosanterior = _s);
end;

procedure TfrmOrdServ.setequipamento;
begin
  gbxEquipamento.Visible        := (ordserv.tpordserv.boequipamento = _s) and (not empresa.ordserv.boequipamento);
  gbxequipamentoordserv.Visible := (ordserv.tpordserv.boequipamento = _s) and Empresa.ordserv.boequipamento;
  lblqtdequipamento.visible     := ordserv.tpordserv.boqtdequipamento = _s;
  edtnuseqequipamento.Visible   := ordserv.tpordserv.boqtdequipamento = _s;
  lbllocal.visible              := ordserv.tpordserv.boequipamentolocal = _s;
  edtdslocalizacao.Visible      := ordserv.tpordserv.boequipamentolocal = _s;
  edtnupatrimonio.Visible       := ordserv.tpordserv.bonupatrimonio = _s;
  lblnupatrimonio.Visible       := ordserv.tpordserv.bonupatrimonio = _s;
  lblnukm.Visible               := ordserv.tpordserv.bonukm = _s;
  edtnukm.Visible               := ordserv.tpordserv.bonukm = _s;
  lblnuano.Visible              := ordserv.tpordserv.bonuano = _s;
  edtnuano.Visible              := ordserv.tpordserv.bonuano = _s;
  lblcdtpvoltagem.Visible       := ordserv.tpordserv.botpvoltagem = _s;
  cbxcdtpvoltagem.Visible       := ordserv.tpordserv.botpvoltagem = _s;
  lblcdcor.Visible              := ordserv.tpordserv.bocor = _s;
  cbxcdcor.Visible              := ordserv.tpordserv.bocor = _s;
  btncdcor.visible              := ordserv.tpordserv.bocor = _s;
end;

procedure TfrmOrdServ.setdatas;
begin
  edtdtentrada.Visible := ordserv.tpordserv.bodtentradadigitar = _s;
  edthrentrada.visible := ordserv.tpordserv.bohrentradadigitar = _s;
  edtdtsaida.Visible   := ordserv.tpordserv.bodtsaidadigitar = _s;
end;

procedure TfrmOrdServ.setgrade;
begin
  tbvDSLOCALIZACAO.Visible  := ordserv.tpordserv.bogradeprodutolocalizacao = _s;
  tbvCDTPGRADEVALOR.Visible := ordserv.tpordserv.botpgrade = _s;
end;

procedure TfrmOrdServ.setreport;
begin
  actaberturaosa5.visible              := ordserv.tpordserv.boreportabertura = _s;
  actAberturaOsa5.Enabled              := ordserv.tpordserv.boreportabertura = _s;
  actAberturaOs.Visible                := ordserv.tpordserv.boreportabertura = _s;
  actAberturaOs.Enabled                := ordserv.tpordserv.boreportabertura = _s;
  actEntregaOs.Visible                 := ordserv.tpordserv.boreportentrega = _s;
  actentregaos.Enabled                 := ordserv.tpordserv.boreportentrega = _s;
  if (ordserv.tpordserv.boreportentrega = _s) and (ordserv.tpordserv.cdstordserventrega <> 0) then
  begin
    actEntregaOs.Visible := cds.fieldbyname(_cdstordserv).asinteger = ordserv.tpordserv.cdstordserventrega;
    actentregaos.Enabled := cds.fieldbyname(_cdstordserv).asinteger = ordserv.tpordserv.cdstordserventrega;
  end;
  actAcompanhamentoOs.Visible          := ordserv.tpordserv.BOREPORTACOMPANHAMENTO = _s;
  actAcompanhamentoOs.Enabled          := ordserv.tpordserv.BOREPORTACOMPANHAMENTO = _s;
  actorcamentocontrato.Visible         := ordserv.tpordserv.BOREPORTORCAMENTOCONTRATO = _s;
  actorcamentocontrato.Enabled         := ordserv.tpordserv.BOREPORTORCAMENTOCONTRATO = _s;
  actorcamentoavulso.Visible           := ordserv.tpordserv.BOREPORTORCAMENTOAVULSO = _s;
  actorcamentoavulso.Enabled           := ordserv.tpordserv.BOREPORTORCAMENTOAVULSO = _s;
  actimprimirorcamento.Visible         := ordserv.tpordserv.boreportorcamento = _s;
  actimprimirorcamento.Enabled         := ordserv.tpordserv.boreportorcamento = _s;
  actentregasemcomprovante.Enabled     := ordserv.tpordserv.boreportentregasemcomprovante = _s;
  actentregasemcomprovante.Visible     := ordserv.tpordserv.boreportentregasemcomprovante = _s;
end;

procedure TfrmOrdServ.setproduto;
begin
  tbvVLUNITARIO.Options.Focusing := ordserv.tpordserv.boalterarvalor = _s;
  if ordserv.tpordserv.boproduto  = _s then
  begin
    tbsproduto.TabVisible := ordserv.tpordserv.boproduto = _s;
    tbsproduto.TabVisible := not ((cds.State = dsinsert) and (ordserv.tpordserv.boproduto = _s) and (ordserv.tpordserv.boprodutoinsercao <> _s));
  end;
  tbvCDALTERNATIVO.Visible := ordserv.tpordserv.boprodutoexibircdalternativo = _s;
  tbvNMITORDSERV.Visible   := ordserv.tpordserv.bodigitarproduto = _s;
  tbvCDDIGITADO.Visible    := ordserv.tpordserv.bodigitarproduto <> _s;
  tbvNMPRODUTO.Visible     := ordserv.tpordserv.bodigitarproduto <> _s;
end;

procedure TfrmOrdServ.SetAction;
begin
  actrevisao.Visible := ordserv.tpordserv.borevisao = _s;
  actrevisao.Enabled := ordserv.tpordserv.borevisao = _s;
end;

procedure TfrmOrdServ.SetComissao;
begin
  lblcomissaoatendente.Visible          := ordserv.tpordserv.bocomissaoatendente = _s;
  edtPRCOMISSAOATENDENTE.Visible        := ordserv.tpordserv.bocomissaoatendente = _s;
  txtVLCOMISSAOatendente.Visible        := ordserv.tpordserv.bocomissaoatendente = _s;
  edtPRCOMISSAOATENDENTEPRODUTO.Visible := ordserv.tpordserv.bocomissaoatendenteproduto = _s;
  txtvlcomissaoatendentePRODUTO.Visible := ordserv.tpordserv.bocomissaoatendenteproduto = _s;
  edtPRCOMISSAOATENDENTESERVICO.Visible := ordserv.tpordserv.bocomissaoatendenteservico = _s;
  txtVLCOMISSAOatendenteservico.Visible := ordserv.tpordserv.bocomissaoatendenteservico = _s;

  lblcomissaoorcado.Visible          := ordserv.tpordserv.bocomissaoorcado = _s;
  edtPRCOMISSAOorcado.Visible        := ordserv.tpordserv.bocomissaoorcado = _s;
  txtVLCOMISSAOorcado.Visible        := ordserv.tpordserv.bocomissaoorcado = _s;
  edtPRCOMISSAOorcadoPRODUTO.Visible := ordserv.tpordserv.bocomissaoorcadoproduto = _s;
  txtvlcomissaoorcadoPRODUTO.Visible := ordserv.tpordserv.bocomissaoorcadoproduto = _s;
  edtPRCOMISSAOorcadoSERVICO.Visible := ordserv.tpordserv.bocomissaoorcadoservico = _s;
  txtVLCOMISSAOorcadoservico.Visible := ordserv.tpordserv.bocomissaoorcadoservico = _s;
  //
  lblcomissaotecnico.Visible          := ordserv.tpordserv.bocomissaotecnico = _s;
  edtPRCOMISSAOTECNICO.Visible        := ordserv.tpordserv.bocomissaotecnico = _s;
  txtVLCOMISSAOTECNICO.Visible        := ordserv.tpordserv.bocomissaotecnico = _s;
  edtprcomissaotecnicoPRODUTO.Visible := ordserv.tpordserv.bocomissaotecnicoproduto = _s;
  txtvlcomissaotecnicoPRODUTO.Visible := ordserv.tpordserv.bocomissaotecnicoproduto = _s;
  edtPRCOMISSAOTECNICOSERVICO.Visible := ordserv.tpordserv.bocomissaotecnicoservico = _s;
  txtVLCOMISSAOTECNICOServico.Visible := ordserv.tpordserv.bocomissaotecnicoservico = _s;
  //
  lblcomissaovendedor.Visible          := ordserv.tpordserv.bocomissaovendedor = _s;
  edtPRCOMISSAOVENDEDOR.Visible        := ordserv.tpordserv.bocomissaovendedor = _s;
  txtvlcomissaovendedor.Visible        := ordserv.tpordserv.bocomissaovendedor = _s;
  edtprcomissaovendedorPRODUTO.Visible := ordserv.tpordserv.bocomissaovendedorproduto = _s;
  txtvlcomissaovendedorPRODUTO.Visible := ordserv.tpordserv.bocomissaovendedorproduto = _s;
  edtPRCOMISSAOVENDEDORSERVICO.Visible := ordserv.tpordserv.bocomissaovendedorservico = _s;
  txtvlcomissaovendedorservico.Visible := ordserv.tpordserv.bocomissaovendedorservico = _s;
end;

procedure TfrmOrdServ.setpreventrega;
begin
  lblpreventrega.Visible   := ordserv.tpordserv.bodtpreventrega = _s;
  edtDTPREVENTREGA.Visible := ordserv.tpordserv.bodtpreventrega = _s;
  edthrPREVENTREGA.Visible := ordserv.tpordserv.bohrpreventrega = _s;
end;

procedure TfrmOrdServ.setaprovacao;
begin
  lblaprovacao.Visible   := ordserv.tpordserv.bodtaprovacao = _s;
  edtDTaprovacao.Visible := ordserv.tpordserv.bodtaprovacao = _s;
  edthraprovacao.Visible := ordserv.tpordserv.bohraprovacao = _s;
end;

procedure TfrmOrdServ.setchecklist;
begin
  actordserventrada.Visible := ordserv.tpordserv.boentrada = _s;
  actordservsaida.Visible   := ordserv.tpordserv.bosaida = _s;
end;

procedure TfrmOrdServ.SetRecord(cdtipo:string);
begin
  if cdtipo = '' then
  begin
    exit;
  end;
  ordserv.tpordserv.Select(StrToInt(cdtipo));
  actitlacrebalanca.Visible := ordserv.tpordserv.bolacrebalanca = _s;
  actitlacrebalancaretirado.Visible := ordserv.tpordserv.bolacrebalanca = _s;
  actitselobalanca.Visible := ordserv.tpordserv.boselobalanca = _s;
  actitselobalancaretirado.Visible := ordserv.tpordserv.boselobalanca = _s;
  lblcdlocalservico.visible := ordserv.tpordserv.bolocalservico = _s;
  cbxcdlocalservico.visible := ordserv.tpordserv.bolocalservico = _s;
  setchecklist;
  setdatas;
  setaprovacao;
  setequipamento;
  setguias;
  setvendedor;
  settecnico;
  setatendente;
  setaction;
  setreport;
  setproduto;
  setgrade;
  tbvCDSTITORDSERV.Visible := ordserv.tpordserv.bobaixaestoque = _s;
  gbxCliente.Visible := ordserv.tpordserv.bocliente = _s;
  setcomissao;
  setpreventrega;
  gbxprevorcamento.Visible  := ordserv.tpordserv.bohrprevorcamento = _s;
//  gbxoutras.Visible := (ordserv.bonukm or ordserv.bonubateria or ordserv.boatendente or ordserv.botecnico);
  gbxCliente.Visible := ordserv.tpordserv.bocliente = _s;
  if not cds.FieldByName(_cdcliente).IsNull then
  begin
    cliente.select(cds.FieldByName(_cdcliente).AsLargeInt);
    lblcdcliente.Hint := cliente.hint_rzsocial;
    txtnmcliente.Hint := lblcdcliente.Hint;
  end;
end;

procedure TfrmOrdServ.gravarTotais;
  procedure processarcomissao(tipo:string; bocomissao, bocomissaoproduto, bocomissaoservico:boolean);
  var
    cdtipo : string;
    procedure set_orcado;
    begin
      cdtipo := tipo;
      if (not cdsCDFUNCIONARIOORCADO.IsNull) and bocomissao then
      begin
        cdsVLCOMISSAOORCADO.AsCurrency := (cdsVLPRODUTOCOMISSAO.asCurrency + cdsVLSERVICOCOMISSAO.ascurrency) * cdsPRCOMISSAOORCADO.AsFloat / 100;
        if bocomissaoproduto then
        begin
          cdsVLCOMISSAOORCADOPRODUTO.asCurrency := cdsVLPRODUTOCOMISSAO.asCurrency * cdsPRCOMISSAOORCADOPRODUTO.AsFloat / 100;
          cdsVLCOMISSAOORCADO.AsCurrency        := cdsVLCOMISSAOORCADOPRODUTO.ascurrency;
        end
        else
        begin
          cdsVLCOMISSAOORCADOPRODUTO.clear;
          cdsPRCOMISSAOORCADOPRODUTO.clear;
        end;
        if bocomissaoservico then
        begin
          cdsVLCOMISSAOORCADOSERVICO.asCurrency := cdsVLSERVICOCOMISSAO.asCurrency * cdsPRCOMISSAOORCADOSERVICO.AsFloat / 100;
          cdsVLCOMISSAOSERVICO.AsCurrency       := cdsVLCOMISSAOORCADOSERVICO.ascurrency + cdsVLCOMISSAOORCADOPRODUTO.ascurrency;
        end
        else
        begin
          cdsVLCOMISSAOORCADOSERVICO.clear;
          cdsPRCOMISSAOORCADOSERVICO.clear;
        end;
      end
      else
      begin
        cdsPRCOMISSAOORCADO.clear;
        cdsPRCOMISSAOORCADOPRODUTO.clear;
        cdsPRCOMISSAOORCADOSERVICO.clear;
        cdsVLCOMISSAOORCADO.Clear;
        cdsVLCOMISSAOORCADOPRODUTO.clear;
        cdsVLCOMISSAOORCADOSERVICO.clear;
      end;
    end;
    procedure set_tecnico;
    begin
      cdtipo := _conserto;
      if (not cdsCDFUNCIONARIOCONSERTO.IsNull) and bocomissao then
      begin
        cdsVLCOMISSAOTECNICO.AsCurrency := (cdsVLPRODUTOCOMISSAO.asCurrency + cdsVLSERVICOCOMISSAO.ascurrency) * cdsPRCOMISSAOTECNICO.AsFloat / 100;
        if bocomissaoproduto then
        begin
          cdsVLCOMISSAOTECNICOPRODUTO.asCurrency := cdsVLPRODUTOCOMISSAO.asCurrency * cdsPRCOMISSAOTECNICOPRODUTO.AsFloat / 100;
          cdsVLCOMISSAOTECNICO.AsCurrency        := cdsVLCOMISSAOTECNICOPRODUTO.ascurrency;
        end
        else
        begin
          cdsVLCOMISSAOTECNICOPRODUTO.clear;
          cdsPRCOMISSAOTECNICOPRODUTO.clear;
        end;
        if bocomissaoservico then
        begin
          cdsVLCOMISSAOTECNICOSERVICO.asCurrency := cdsVLSERVICOCOMISSAO.asCurrency * cdsPRCOMISSAOTECNICOSERVICO.AsFloat / 100;
          cdsVLCOMISSAOTECNICO.AsCurrency        := cdsVLCOMISSAOTECNICOSERVICO.ascurrency + cdsVLCOMISSAOTECNICOPRODUTO.ascurrency;
        end
        else
        begin
          cdsVLCOMISSAOTECNICOSERVICO.clear;
          cdsPRCOMISSAOTECNICOSERVICO.clear;
        end;
      end
      else
      begin
        cdsPRCOMISSAOTECNICO.clear;
        cdsPRCOMISSAOTECNICOPRODUTO.clear;
        cdsPRCOMISSAOTECNICOSERVICO.clear;
        cdsVLCOMISSAOTECNICO.Clear;
        cdsVLCOMISSAOTECNICOPRODUTO.clear;
        cdsVLCOMISSAOTECNICOSERVICO.clear;
      end;
    end;
    procedure set_outro;
    begin
      if (not cds.fieldbyname(_cdfuncionario+tipo).IsNull) and bocomissao then
      begin
        cds.fieldbyname(_vlcomissao+tipo).AsCurrency := (cdsVLPRODUTOCOMISSAO.asCurrency + cdsVLSERVICOCOMISSAO.ascurrency) * cds.fieldbyname(_prcomissao+tipo).AsFloat / 100;
        if bocomissaoproduto then
        begin
          cds.fieldbyname(_vlcomissao+tipo+_produto).asCurrency := cdsVLPRODUTOCOMISSAO.asCurrency * cds.fieldbyname(_prcomissao+tipo+_produto).AsFloat / 100;
          cds.fieldbyname(_vlcomissao+tipo).AsCurrency          := cds.fieldbyname(_vlcomissao+tipo+_produto).ascurrency;
        end
        else
        begin
          cds.fieldbyname(_vlcomissao+tipo+_produto).clear;
          cds.fieldbyname(_prcomissao+tipo+_produto).clear;
        end;
        if bocomissaoservico then
        begin
          cds.fieldbyname(_vlcomissao+tipo+_servico).asCurrency := cdsVLSERVICOCOMISSAO.asCurrency * cds.fieldbyname(_prcomissao+tipo+_servico).AsFloat / 100;
          cds.fieldbyname(_vlcomissao+tipo).AsCurrency          := cds.fieldbyname(_vlcomissao+tipo+_servico).ascurrency + cds.fieldbyname(_vlcomissao+tipo+_produto).ascurrency;
        end
        else
        begin
          cds.fieldbyname(_vlcomissao+tipo+_servico).clear;
          cds.fieldbyname(_prcomissao+tipo+_servico).clear;
        end;
      end
      else
      begin
        cds.fieldbyname(_prcomissao+tipo).clear;
        cds.fieldbyname(_prcomissao+tipo+_produto).clear;
        cds.Fieldbyname(_prcomissao+tipo+_servico).clear;
        cds.fieldbyname(_vlcomissao+tipo).Clear;
        cds.fieldbyname(_vlcomissao+tipo+_produto).clear;
        cds.fieldbyname(_vlcomissao+tipo+_servico).clear;
      end;
    end;
  begin
    if tipo = _orcado  then
    begin
      set_orcado
    end
    else if tipo = _tecnico then
    begin
      set_tecnico
    end
    else
    begin
      set_outro;
    end;
  end;
  procedure calcularproduto;
  begin
    cdsdetail.DisableControls;
    try
      cdsdetail.First;
      cdsVLPRODUTO.ascurrency := 0;
      cdsQTITEM.AsFloat := 0;
      while not cdsdetail.Eof do
      begin
        if cdsdetail.fieldbyname(_boservico).asString <> _S then
        begin
          cdsVLPRODUTO.ascurrency := cdsVLPRODUTO.ascurrency + cdsdetailVLTOTAL.asCurrency;
          cdsQTITEM.AsFloat       := cdsQTITEM.AsFloat + cdsdetailQTITEM.AsFloat;
        end;
        cdsdetail.Next;
      end;
    finally
      cdsdetail.EnableControls;
    end;
  end;
  procedure calcularservico;
  begin
    cdsdetail.DisableControls;
    try
      cdsdetail.First;
      cds.fieldbyname(_vlservico).ascurrency := 0;
      while not cdsdetail.Eof do
      begin
        if cdsdetail.fieldbyname(_boservico).asString = _S then
        begin
          cds.fieldbyname(_vlservico).ascurrency := cds.fieldbyname(_vlservico).ascurrency + cdsdetail.fieldbyname(_vltotal).asCurrency;
        end;
        cdsdetail.Next;
      end;
    finally
      cdsdetail.EnableControls;
    end;
  end;
  procedure Calcularcomissaoproduto;
  begin
    if ordserv.tpordserv.boidentificadorcomissaoproduto = _s then
    begin
      cdsdetail.DisableControls;
      try
        cdsdetail.First;
        cdsVLPRODUTOCOMISSAO.ascurrency := 0;
        while not cdsdetail.Eof do
        begin
          if (cdsdetailBOSERVICO.asString <> _S) and (cdsdetailbocomissao.asString = _S) then
          begin
            cdsVLPRODUTOCOMISSAO.ascurrency := cdsvlprodutocomissao.ascurrency + cdsdetailvltotal.asCurrency;
          end;
          cdsdetail.Next;
        end;
      finally
        cdsdetail.EnableControls;
      end;
    end
    else
    begin
      cdsvlprodutocomissao.ascurrency := cdsvlproduto.ascurrency;
    end;
  end;
  procedure calcularcomissaoservico;
  begin
    if ordserv.tpordserv.boidentificadorcomissaoproduto = _s then
    begin
      cdsdetail.DisableControls;
      try
        cdsdetail.First;
        cdsvlservicocomissao.ascurrency := 0;
        while not cdsdetail.Eof do
        begin
          if (cdsdetailboservico.asString = _S) and (cdsdetailbocomissao.asString = _S) then
          begin
            cdsvlservicocomissao.ascurrency := cdsvlservicocomissao.ascurrency + cdsdetailvltotal.asCurrency;
          end;
          cdsdetail.Next;
        end;
      finally
        cdsdetail.EnableControls;
      end;
    end
    else
    begin
      cdsvlservicocomissao.ascurrency := cdsvlservico.ascurrency;
    end;
  end;
  procedure calcularservicoterceiro;
  begin
    cdsitordservexterno.DisableControls;
    try
      cdsitordservexterno.First;
      cds.fieldbyname(_vlservico+_terceiro).ascurrency := 0;
      while not cdsitordservexterno.Eof do
      begin
        cds.fieldbyname(_vlservico+_terceiro).ascurrency := cds.fieldbyname(_vlservico+_terceiro).ascurrency + cdsitordservexterno.fieldbyname(_vltotal).asCurrency;
        cdsitordservexterno.Next;
      end;
    finally
      cdsitordservexterno.EnableControls;
    end;
  end;
  procedure calcularvalortotal;
  begin
    if ordserv.tpordserv.bodigitarproduto = _s then
    begin
      cdsdetail.DisableControls;
      try
        cdsdetail.First;
        cds.fieldbyname(_vltotal).ascurrency := 0;
        while not cdsdetail.Eof do
        begin
          cds.fieldbyname(_vltotal).ascurrency := cds.fieldbyname(_vltotal).ascurrency + cdsdetail.fieldbyname(_vltotal).asCurrency;
          cdsdetail.Next;
        end;
        cds.fieldbyname(_vltotal).ascurrency :=  cds.fieldbyname(_vltotal).ascurrency+ cds.fieldbyname(_vlservico+_terceiro).asCurrency - edtvldesconto.Value;
      finally
        cdsdetail.EnableControls;
      end;
    end
    else
    begin
      cds.fieldbyname(_vltotal).ascurrency := cds.fieldbyname(_vlproduto).asCurrency + cds.fieldbyname(_vlservico).asCurrency +
                                               cds.fieldbyname(_vlservico+_terceiro).asCurrency - edtvldesconto.value;
    end;
  end;
  procedure calcularcomissao;
  begin
    Exit;
    calcularcomissaoproduto;
    calcularcomissaoservico;
    processarcomissao(_atendente, ordserv.tpordserv.bocomissaoatendente = _s, ordserv.tpordserv.bocomissaoatendenteproduto = _s, ordserv.tpordserv.bocomissaoatendenteservico = _s);
    processarcomissao(_orcado   , ordserv.tpordserv.bocomissaoorcado = _s, ordserv.tpordserv.bocomissaoorcadoproduto = _s, ordserv.tpordserv.bocomissaoorcadoservico = _s);
    processarcomissao(_tecnico  , ordserv.tpordserv.bocomissaotecnico   = _s, ordserv.tpordserv.bocomissaotecnicoproduto   = _s, ordserv.tpordserv.bocomissaotecnicoservico = _s);
    processarcomissao(_vendedor , ordserv.tpordserv.bocomissaovendedor  = _s, ordserv.tpordserv.bocomissaovendedorproduto  = _s, ordserv.tpordserv.bocomissaovendedorservico = _s);
    cdsVLCOMISSAOPRODUTO.ascurrency := cdsvlcomissaoatendenteproduto.ascurrency + cdsvlcomissaotecnicoproduto.ascurrency + cdsvlcomissaoorcadoproduto.ascurrency + cdsvlcomissaovendedorproduto.ascurrency;
    cdsvlcomissaoservico.ascurrency := cdsvlcomissaoatendenteservico.ascurrency + cdsvlcomissaotecnicoservico.ascurrency + cdsvlcomissaoorcadoservico.ascurrency + cdsvlcomissaovendedorservico.ascurrency;
    cdsvlcomissao.ascurrency        := cdsvlcomissaoproduto.ascurrency + cdsvlcomissaoservico.ascurrency;
  end;
  procedure RatearDesconto;
  var
    recno : integer;
    valor : currency;
  begin
    valor := cds.fieldbyname(_vldesconto).asCurrency;
    if cdsdetail.RecordCount > 0 then
    begin
      cdsdetail.DisableControls;
      try
        cdsdetail.First;
        recno := 0;
        repeat
          inc(recno);

          if cdsdetail.State = dsbrowse then
          begin
            cdsdetail.Edit;
          end;
          if cds.fieldbyname(_vlproduto).asCurrency + cds.fieldbyname(_vlservico).asCurrency = 0 then
          begin
            cdsdetail.fieldbyname(_vldesconto).ascurrency := 0;
            cdsdetail.fieldbyname(_prdesconto).asCurrency := 0;
          end
          else
          begin
            cdsdetail.fieldbyname(_vldesconto).ascurrency := RoundTo((cdsdetail.fieldbyname(_vltotal).ascurrency / (cds.fieldbyname(_vlproduto).asCurrency + cds.fieldbyname(_vlservico).asCurrency)) *
                                                                        cds.fieldbyname(_vldesconto).asCurrency, -2);
            cdsdetail.fieldbyname(_prdesconto).asCurrency := (cdsdetail.fieldbyname(_vltotal).ascurrency / (cds.fieldbyname(_vlproduto).asCurrency + cds.fieldbyname(_vlservico).asCurrency)) * 100;
          end;
          valor := valor + cdsdetail.Fieldbyname(_vldesconto).asCurrency;
          if RecNo = cdsdetail.RecordCount then
          begin
            if valor < cds.fieldbyname(_vldesconto).ascurrency then
            begin
              cdsdetail.Fieldbyname(_vldesconto).asCurrency := cdsdetail.Fieldbyname(_vldesconto).asCurrency + (cds.fieldbyname(_vldesconto).ascurrency - valor);
            end;
          end;
          if RecNo < cdsdetail.RecordCount then
          begin
            cdsdetail.Next;
          end;
        until RecNo = cdsdetail.RecordCount;
      finally
        cdsdetail.EnableControls;
      end;
    end;
  end;
begin
  calcularproduto;
  calcularservico;
  calcularservicoterceiro;
  calcularvalortotal;
  rateardesconto;
  calcularcomissao;
end;

function TfrmOrdServ.CarregarInformacoes(cod :integer):boolean;
begin
  result := false;
  if cod = 0 then
  begin
    exit;
  end;
  equipamento.cdequipamento := cod;
  result := equipamento.setrce(tbl, cds.fieldbyname(_cdtp+tbl).asinteger, rceequipamento);
  if not result then
  begin
    Exit;
  end;
  if (cds.state = dsinsert) or (cds.State = dsedit) then
  begin
    cds.fieldbyname(_cdequipamento).asinteger := cod;
  end;
end;

function TfrmOrdServ.Abrir(codigo:integer):boolean;
begin
  result :=registro.RegistroAbrir(codigo);
end;

procedure TfrmOrdServ.AtribuirValorUnitario;
begin
  if produto.tpproduto.bogradevalor <> _s then
  begin
    if (cds.fieldbyname(_tpprecoproduto).asString = '') or (cds.fieldbyname(_tpprecoproduto).asString = _V) or (produto.vlatacado = 0) or (produto.vlespecial = 0) then
    begin
      cdsdetailVLUNITARIO.ascurrency := produto.getvalorgrade(cdsdetailCDTPGRADEVALOR.AsInteger, cds.FieldByName(_cdcliente).asString, cdsdetailQTITEM.AsFloat);
    end
    else if cdsTPPRECOPRODUTO.asString = _A then
    begin
      cdsdetailVLUNITARIO.asCurrency := produto.vlatacado;
    end
    else if cdsTPPRECOPRODUTO.asString = _E then
    begin
      cdsdetailVLUNITARIO.asCurrency := produto.vlespecial;
    end;
  end
  else
  begin
    cdsdetailVLUNITARIO.asCurrency := produto.getvalorgrade(cdsdetailCDTPGRADEVALOR.AsInteger, cds.FieldByName(_cdcliente).asString, cdsdetailQTITEM.AsFloat);
  end;
end;

procedure TfrmOrdServ.SetEmpresa;
begin
  lblnuserie.Caption := empresa.equipamento.dsnuserie;
  lblnupatrimonio.Caption := empresa.equipamento.dsnupatrimonio;
end;

procedure TfrmOrdServ.actAbrirExecute(Sender: TObject);
var
  cd : integer;
begin
  if (dts.State = dsinsert) or (dts.state = dsedit) then
  begin
    exit;
  end;
  cd := LocalizarOrdServ;
  if (cd <> 0) and (not abrir(Cd)) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(exibe)]), mterror, [mbok], 0);
    edtcodigo.Text := cds.fieldbyname(_nu+tbl).Asstring;
    edtcodigo.selectall;
  end;
end;

procedure TfrmOrdServ.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmOrdServ.actSalvarExecute(Sender: TObject);
var
  boinserir : Boolean;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if cbxcdstordserv.text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_status+' '+_da+' '+_Ordem+' '+__servico]), mtinformation, [mbok], 0);
    cds.fieldbyname(_cdstordserv).FocusControl;
    exit;
  end;
  boinserir := cds.State = dsInsert;
  if ordserv.tpordserv.bocliente = _s then
  begin
    if edtCDCLIENTE.Text = '' then // obrigatoriedade de cliente
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_cliente]), mtinformation, [mbok], 0);
      cds.fieldbyname(_cdcliente).FocusControl;
      exit;
    end;
    if not CodigoExiste(_cliente, edtCDCLIENTE.Text) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdcliente.text, maiuscula(_cliente)]), mterror, [mbok], 0);
      edtcdcliente.setfocus;
      abort;
    end;
  end;
  if ordserv.tpordserv.boequipamento = _s then
  begin
    if (ordserv.tpordserv.boequipamentoobrigatorio = _s) and (edtCDequipamento.Text = '') then // obrigatoriedade de equipamento
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_equipamento]), mtinformation, [mbok], 0);
      cds.fieldbyname(_cdequipamento).FocusControl;
      exit;
    end;
    if (edtCDequipamento.Text <> '') and (not CodigoExiste(_equipamento, edtCDequipamento.Text)) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdequipamento.text, maiuscula(_equipamento)]), mterror, [mbok], 0);
      edtcdequipamento.setfocus;
      abort;
    end;
  end;
  if (ordserv.tpordserv.boprodutoinsercaoobrigatorio = _s) and (cdsdetail.recordcount = 0) then
  begin
    messagedlg('Inserção de produto obrigatório na Ordem de Serviço.'#13'Insira um item antes de continuar.', mtinformation, [mbok], 0);
    pgc.ActivePage := tbsproduto;
    grd.SetFocus;
    exit;
  end;
  if (ordserv.tpordserv.bopreventregaobrigatorio = _s) and cds.fieldbyname(_dtpreventrega).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+__Previsao+' '+_de+' '+_entrega]), mtinformation, [mbok], 0);
    cds.fieldbyname(_dtpreventrega).FocusControl;
    exit;
  end;
  if (ordserv.tpordserv.boprevorcamentoobrigatorio = _s) and cds.fieldbyname(_dtprevorcamento).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+__Previsao+' '+_de+' '+__orcamento]), mtinformation, [mbok], 0);
    cds.fieldbyname(_dtprevorcamento).FocusControl;
    exit;
  end;

  if (ordserv.tpordserv.bopreventregaobrigatorio = _s) and cds.fieldbyname(_hrpreventrega).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Hora+' '+__Previsao+' '+_de+' '+_entrega]), mtinformation, [mbok], 0);
    cds.fieldbyname(_hrpreventrega).FocusControl;
    exit;
  end;

  if (ordserv.tpordserv.boprevorcamentoobrigatorio = _s) and cds.fieldbyname(_hrprevorcamento).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Hora+' '+__Previsao+' '+_de+' '+__orcamento]), mtinformation, [mbok], 0);
    cds.fieldbyname(_hrprevorcamento).FocusControl;
    exit;
  end;
  if (ordserv.tpordserv.botecnicoobrigatorio = _s) and cds.fieldbyname(_cdfuncionario+_tecnico).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_do+' '+__tecnico]), mtinformation, [mbok], 0);
    cds.fieldbyname(_cdfuncionario+_tecnico).FocusControl;
    exit;
  end;
  if (ordserv.tpordserv.boatendenteobrigatorio = _s) and cds.fieldbyname(_cdfuncionario+_atendente).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_do+' '+_atendente]), mtinformation, [mbok], 0);
    cds.fieldbyname(_cdfuncionario+_atendente).FocusControl;
    exit;
  end;
  if (ordserv.tpordserv.boVendedorobrigatorio = _s) and cds.fieldbyname(_cdfuncionario+_Vendedor).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_do+' '+_vendedor]), mtinformation, [mbok], 0);
    cds.fieldbyname(_cdfuncionario+_vendedor).FocusControl;
    exit;
  end;
  // obrigatoriedade de equipamento
  if (ordserv.tpordserv.boequipamento = _s) and (ordserv.tpordserv.boequipamentoobrigatorio = _s) and cds.Fieldbyname(_cdequipamento).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_do+' '+_equipamento]), mtinformation, [mbok], 0);
    cds.fieldbyname(_cdequipamento).FocusControl;
    exit;
  end;
  
  if (ordserv.tpordserv.botpvoltagemobrigatorio = _s) and cds.FieldByName(_cdtpvoltagem).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [maiuscula(_Tipo+' '+_voltagem)]), mtinformation, [mbok], 0);
    cds.fieldbyname(_cdtpvoltagem).FocusControl;
    exit;
  end;

  if (ordserv.tpordserv.boqtdequipamentoobrigatorio = _s) and (ordserv.tpordserv.boequipamento = _s) and cds.Fieldbyname(_nuseqequipamento).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__numero+' '+__sequencia+' '+_do+' '+_equipamento]), mtinformation, [mbok], 0);
    cds.fieldbyname(_nuseqequipamento).FocusControl;
    exit;
  end;
  if (not cds.fieldbyname(_dtaprovacao).isNull) and edtdtaprovacao.Visible then
  begin
    if cds.fieldbyname(_DTPREVENTREGA).isNull then
    begin
      messagedlg('Para preenchimento da data de aprovação'#13'é obrigatório o preenchimento da Data de Previsão de Entrega.'#13+
                 'Favor preencher a Data de Previsão de Entrega para continuar.', mtinformation, [mbok], 0);
      cds.fieldbyname(_DTPREVENTREGA).FocusControl;
      abort;
    end;
    if edtdtaprovacao.Date > edtDTPREVENTREGA.Date then
    begin
      messagedlg('Data aprovação não pode ser maior do que a data de Previsão de Entrega.'#13'Altere a data de aprovação para continuar.', mtinformation, [mbok], 0);
      cds.fieldbyname(_dtaprovacao).FocusControl;
      abort;
    end;
  end;
  //
  if cdsNUORDSERV.AsString = '' then
  begin
    cds.fieldbyname(_nuordserv).AsInteger := QGerar.GerarCodigo(_nuordserv, '', ordserv.tpordserv.nugerarcodigo);
    edtcodigo.Text       := cdsNUORDSERV.Asstring;
    if cdsitetapa.RecordCount = 0 then
    begin
      InserirEtapa;
    end;
  end;
  //
  if edtvldesconto.Focused then
  begin
    SelectNext(edtvldesconto, true, true);
  end;
  GravarTotais;
  registro.Salvar;
  //
  if (ordserv.cdtpequipamento <> 0) and (ordserv.cdtpequipamento <> cds.FieldByName(_cdtpequipamento).asinteger) then
  begin
    ordserv.limparCheckList(cds.FieldByName(_cdordserv).asstring);
  end;
  if (ordserv.tpordserv.boreportaberturasalvar = _s) and boinserir and (MessageDlg('Imprimir a Abertura?', mtConfirmation, [mbYes, mbNo], 0)= mryes) then
  begin
    actAberturaOsExecute(actAberturaOs);
    Exit;
  end;
  ordserv.checkList(cds.fieldbyname(_cdordserv).AsInteger, _entrada);
end;

procedure TfrmOrdServ.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmOrdServ.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmOrdServ.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmOrdServ.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
  ordserv.cdtpequipamento := cds.fieldbyname(_cdtpequipamento).asinteger;
  cdsitetapa.ReadOnly := True;
end;

procedure TfrmOrdServ.edtCodigoKeyPress(Sender: TObject; var Key: Char);
var
  cdordserv : integer;
begin
  if not (key in [_0, _1, _2, _3, _4, _5, _6, _7, _8, _9, char(8), char(13)]) then
  begin
    key := #0;
  end;
  if (key = #13) and(TEdit(sender).text <> '') then
  begin
    codigoinsercao := edtcodigo.text;
    cdordserv      := qregistro.CodigodoString(tbl, codigoinsercao, _nu+tbl);
    if not abrir(cdordserv) then
    begin
      if actnovo.Enabled then
      begin
        if messagedlg('Código '+codigoinsercao+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
        begin
          actNovoExecute(sender)
        end
        else
        begin
          edtcodigo.text := cds.fieldbyname(_nu+tbl).Asstring;
        end;
      end
      else
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [codigoinsercao, maiuscula(exibe)]), mterror, [mbok], 0);
        edtcodigo.text := cds.fieldbyname(_nu+tbl).Asstring;
      end;
    end;
    edtcodigo.selectall;
  end;
end;

procedure TfrmOrdServ.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmOrdServ.FormShow(Sender: TObject);
begin
  pnl.caption    := exibe;
  equipamento    := tequipamento.create;
  produto        := TProduto.create;
  ordserv        := TOrdserv.create;
  pgc.ActivePage := tbsobservacao;
  pgc.ActivePage := tbsProduto;
  edtCodigo.SetFocus;
end;

procedure TfrmOrdServ.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmOrdServ.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmOrdServ.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmOrdServ.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure TfrmOrdServ.actAberturaOsExecute(Sender: TObject);
begin
  ordserv.checkList(cds.fieldbyname(_cdordserv).AsInteger, _entrada);
  ImpimirRelatorioPadrao1(315, cds.fieldbyname(_cd+tbl).Asstring, '');
end;

procedure TfrmOrdServ.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmOrdServ.pgcChange(Sender: TObject);
begin
  if pgc.ActivePage = tbsOSAnterior then
  begin
    set_osanterior;
  end;
end;

procedure TfrmOrdServ.actEntregaOsExecute(Sender: TObject);
begin
  ordserv.checkList(cds.fieldbyname(_cdordserv).AsInteger, _saida);
  ImpimirRelatorioPadrao1(317, cds.fieldbyname(_cd+tbl).Asstring, '');
end;

procedure TfrmOrdServ.actAcompanhamentoOsExecute(Sender: TObject);
begin
  //imprimiracompanhamentoos(cds.fieldbyname(_cd+tbl).Asstring);
end;

procedure TfrmOrdServ.actMudarEtapaExecute(Sender: TObject);
var
  cdordserv, cdetapaproximo: Integer;
begin
  ordserv.checkList(cds.fieldbyname(_cdordserv).AsInteger, _entrada);
  cdetapaproximo := DlgMudardePara(_etapa, cds.fieldbyname(_cdetapa).AsInteger);
  if cdetapaproximo = 0 then // se clicar em ok no form
  begin
    exit;
  end;
  cdordserv := cds.fieldbyname(_cd+tbl).AsInteger;
  if not ordserv.AlterarEtapa(cds.fieldbyname(_cd+tbl).AsInteger, cds.fieldbyname(_cdetapa).asInteger, cdetapaproximo) then
  begin
    exit;
  end;
  Abrir(cdordserv);
end;

procedure TfrmOrdServ.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmOrdServ.actNovoObsInternaExecute(Sender: TObject);
var
  rce : TRichEdit;
  b : TBlobField;
  filename : string;
begin
  rce := TRichEdit.Create(self);
  try
    rce.Parent    := self;
    rce.Visible   := false;
    rce.PlainText := false;
    filename := NomeTabelaTemporaria;
    b := TBlobField(cdsDSOBSINTERNA);
    b.SaveToFile(filename);
    rce.Lines.LoadFromFile(filename);
    if Anotacao(rce, cds.fieldbyname(_cd+tbl).Asstring, tbl) then
    begin
      rce.Lines.SaveToFile(filename);
      b.LoadFromFile(filename);
    end;
  finally
    sysutils.DeleteFile(filename);
    FreeAndNil(rce);
  end;
end;

procedure TfrmOrdServ.actNovoSolInternaExecute(Sender: TObject);
var
  rce : TRichEdit;
  b : TBlobField;
  filename : string;
begin
  rce := TRichEdit.Create(self);
  try
    rce.Parent    := self;
    rce.Visible   := false;
    rce.PlainText := false;
    filename := NomeTabelaTemporaria;
    b := TBlobField(cdsdssolinterna);
    b.SaveToFile(filename);
    rce.Lines.LoadFromFile(filename);
    if Anotacao(rce, cds.fieldbyname(_cd+tbl).Asstring, tbl) then
    begin
      rce.Lines.SaveToFile(filename);
      b.LoadFromFile(filename);
    end;
  finally
    sysutils.DeleteFile(filename);
    FreeAndNil(rce);
  end;
end;

procedure TfrmOrdServ.actorcamentocontratoExecute(Sender: TObject);
begin
  orcamentocontrato(cds.FieldByName(_nmcliente).asstring, cds.fieldbyname(_cdequipamento).asinteger, memdssolucao, cds, cdsdetail, cdsitdefapr);
end;

procedure TfrmOrdServ.actorcamentoavulsoExecute(Sender: TObject);
begin
  OrcamentoAvulso(cds.FieldByName(_nmcliente).asstring, cds.fieldbyname(_cdequipamento).asinteger, memdssolucao, cds, cdsdetail, cdsitdefapr);
end;

procedure TfrmOrdServ.actGerarNotafiscalExecute(Sender: TObject);
begin
  ordserv.checkList(cds.fieldbyname(_cdordserv).AsInteger, _entrada);
  if cdsDetail.RecordCount = 0 then
  begin
    MessageDlg('Para gerar nota fiscal é necessário o preenchimento do Produto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  GerarSaida(cdsDetail.fieldbyname(_cd+tbl).Asinteger);
end;

procedure TfrmOrdServ.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrdServ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOrdServ.actabrirtpordservExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrdServ.actabrirequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrdServ.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
  freeandnil(ordserv);
  produto.free;
  freeandnil(equipamento);
  cliente.Free;
end;

procedure TfrmOrdServ.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmOrdServ.lblequipamentoDblClick(Sender: TObject);
begin
  actAbrirequipamento.onExecute(actAbrirequipamento);
end;

procedure TfrmOrdServ.edtHRDEVOLUCAOSEMCONSERTOFExit(Sender: TObject);
begin
  cdsHRDEVOLUCAOSEMCONSERTOHORA.asDateTime := cdsHRDEVOLUCAOSEMCONSERTOF.asDateTime - cdshrdevolucaoSEMCONSERTO.asDateTime;
  colorexit(sender);
end;

procedure TfrmOrdServ.actimprimirorcamentoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(670, cds.fieldbyname(_cd+tbl).Asstring);
end;

procedure TfrmOrdServ.actitlacrebalancaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itlacrebalanca))), cds.FieldByName(_cdordserv).AsInteger, _cdordserv, false);
end;

procedure TfrmOrdServ.actitlacrebalancaretiradoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itlacrebalancaretirado))), cds.FieldByName(_cdordserv).AsInteger, _cdordserv, false);
end;

procedure TfrmOrdServ.actitselobalancaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itselobalanca))), cds.FieldByName(_cdordserv).AsInteger, _cdordserv, false);
end;

procedure TfrmOrdServ.actitselobalancaretiradoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itselobalancaretirado))), cds.FieldByName(_cdordserv).AsInteger, _cdordserv, false);
end;

procedure TfrmOrdServ.actrevisaoExecute(Sender: TObject);
var
  nuordserv, cdordserv : string;
  q : TClasseQuery;
  function GerarNumeroOSRevisao:integer;
  begin
    result := RetornaSQLInteger('select max(nuordserv) '+
                                'from ordserv '+
                                'where cdempresa='+empresa.cdempresa.tostring+' '+
                                'and cdordservanterior='+q.q.fieldbyname(_cd+tbl).AsString);
    if result = 0 then
    begin
      result := q.q.fieldbyname(_nu+tbl).Asinteger + 1;
    end
    else
    begin
      inc(result);
    end;
  end;
begin
  nuordserv := cds.fieldbyname(_nu+tbl).Asstring;
  if nuordserv[length(nuordserv)] <> _0 then
  begin
    exit;
  end;
  cdordserv := cds.fieldbyname(_cd+tbl).Asstring;
  actNovoExecute(sender);
  q := TClasseQuery.create('select nuordserv,cdcliente,cdequipamento,cdordserv from ordserv where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+cdordserv);
  try
    cds.fieldbyname(_cdordserv+_anterior).asstring := cdordserv;
    cds.fieldbyname(_cdcliente).asString         := q.q.fieldbyname(_cdcliente).asstring;
    cds.Fieldbyname(_cdequipamento).asstring     := q.q.fieldbyname(_cdequipamento).asstring;
    cds.fieldbyname(_nu+tbl).AsInteger           := GerarNumeroOSRevisao;
    edtCodigo.Text                               := cds.fieldbyname(_nu+tbl).AsString;
    codigoinsercao                               := cds.fieldbyname(_nu+tbl).AsString;
    CarregarInformacoes(q.q.fieldbyname(_cdequipamento).asinteger);
  finally
    freeandnil(q);
  end;
end;

procedure TfrmOrdServ.actentregasemcomprovanteExecute(Sender: TObject);
begin
  Entregasemcomprovante(cds.fieldbyname(_nuordserv).asstring, cds.fieldbyname(_cdequipamento).asinteger);
end;

procedure TfrmOrdServ.actaberturaosa5Execute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(316, cds.fieldbyname(_cd+tbl).Asstring, '' );
end;

procedure TfrmOrdServ.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmOrdServ.set_osanterior;
begin
  cdsosanterior.Close;
  if cds.fieldbyname(_cdequipamento).asString = '' then
  begin
    Exit;
  end;
  sdsosanterior.CommandText := 'SELECT O.NUORDSERV'+
                                     ',O.DTENTRADA'+
                                     ',O.DTSAIDA'+
                                     ',O.CDORDSERV'+
                                     ',o.cdequipamento '+
                               'FROM ORDSERV O '+
                               'left join equipamento e on e.cdequipamento=o.cdequipamento and o.cdempresa=e.cdempresa '+
                               'WHERE o.cdempresa='+empresa.cdempresa.tostring+' and o.CDORDSERV<>'+cds.fieldbyname(_cd+tbl).Asstring+' AND e.nuserie='+quotedstr(NomedoCodigo(_equipamento, cds.fieldbyname(_cdequipamento).AsString, _nuserie));
  cdsosanterior.open;
end;

procedure TfrmOrdServ.FormCreate(Sender: TObject);
begin
  registro := tregistro.create(self, _ordserv, exibe, artigoI, cds, dts, edtcodigo, true);
  set_abrirtabela;
  GeraMenuRelatorio ('', btnimprimir, 6, self, _ordserv);
  SetEmpresa;
  cliente := tcliente.create;
end;

procedure TfrmOrdServ.lblcdclienteDblClick(Sender: TObject);
begin
  actAbrirCliente.onExecute(actAbrirCliente);
end;

procedure TfrmOrdServ.actabrirtpequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrdServ.actordserventradaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_ordserventrada))), cds.FieldByName(_cdordserv).AsInteger, _cdordserv, false, false, cds.FieldByName(_dtsaida).IsNull, false);
end;

procedure TfrmOrdServ.actordservsaidaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_ordservsaida))), cds.FieldByName(_cdordserv).AsInteger, _cdordserv, false, false, cds.FieldByName(_dtsaida).IsNull, false);
end;

procedure TfrmOrdServ.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmOrdServ.cdsAfterScroll(DataSet: TDataSet);
begin
  ordserv.Select(cds);
  ConfigurarCorPrioridade(ordserv.cdprioridade);
  //registro.setStatus(_ordserv, cds);
  setrecord(cdsCDTPORDSERV.AsString);
  equipamento.cdequipamento := cds.fieldbyname(_cdequipamento).asinteger;
  equipamento.setrce(tbl, cds.fieldbyname(_cdtp+tbl).Asinteger, rceequipamento);
  cliente.select(cds.FieldByName(_cdcliente).AsLargeInt);
  lblcdcliente.Hint := qregistro.get_Hint(_cliente, cds.FieldByName(_cdcliente).asstring);
  cliente.stcliente.Select(cliente.cdstcliente);
  if (cliente.stcliente.nucor <> 0) and (cliente.stcliente.nucor <> 1) then
  begin
    gbxcliente.Style.Font.Color := cliente.stcliente.nucor;
    gbxcliente.Style.Font.Style := [fsBold];
  end
  else
  begin
    gbxcliente.Style.Font.Color := clWindowText;
    gbxcliente.Style.Font.Style := [];
  end;
  if pgc.ActivePage = tbsOSanterior then
  begin
    set_osanterior;
  end;
  if tbl_consulta <> '' then
  begin
    SetConsulta(tbl_consulta);
  end;
  actGerarNotafiscal.enabled := cds.recordcount = 1;
end;

procedure TfrmOrdServ.cdsBeforePost(DataSet: TDataSet);
var
  cdetapa, cdequipamento : string;
begin
  if Dataset.State = dsinsert then
  begin
    cdetapa := NomedoCodigo(_tp+tbl, dataset.fieldbyname(_cdtp+tbl).Asstring, _cdetapa);
    if cdetapa = '' then
    begin
      cdetapa := _1;
    end;
    Dataset.Fieldbyname(_cdetapa).asstring := cdetapa;
  end;
  Dataset.fieldbyname(_bocontrato).asstring := _N;
  cdequipamento := cds.fieldbyname(_cdequipamento).asstring;
  if (cdequipamento <> '') and (NomedoCodigo(_equipamento, cdequipamento, _cdcontrato) <> '') then
  begin
    Dataset.fieldbyname(_bocontrato).asstring := _S;
  end;
  if (ordserv.tpordserv.bonukmobrigatorio = _s) then
  begin
    if dataset.fieldbyname(_nukm).isNull then
    begin
      Dataset.Fieldbyname(_nukm).FocusControl;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Quilometragem]), mtinformation, [mbok], 0);
      Abort;
    end;
    if dataset.fieldbyname(_nukm).AsFloat = 0 then
    begin
      Dataset.Fieldbyname(_nukm).FocusControl;
      messagedlg('Quilometragem deve ser mairo que zero!', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  registro.set_update(cds);
end;

procedure TfrmOrdServ.dtsStateChange(Sender: TObject);
begin
  pnl.Caption := pnl.Caption +' - '+NomedoCodigo(_etapa, cds.fieldbyname(_cdetapa).asstring);
  if cds.fieldbyname(_bocontrato).asstring = _S then
  begin
    pnl.style.font.Color := 255
  end
  else
  begin
    pnl.style.Font.Color := clWindowText;
  end;
  btntpequipamento.Visible := actsalvar.Enabled;
  btnmarca.Visible         := actsalvar.Enabled;
  btnmodelo.Visible        := actsalvar.Enabled;
end;

procedure TfrmOrdServ.lbltpordservDblClick(Sender: TObject);
begin
  actAbrirtpordserv.onExecute(actAbrirtpordserv);
end;

procedure TfrmOrdServ.cdsdetailBeforePost(DataSet: TDataSet);
begin
  dataset.fieldbyname(_vltotal).ascurrency := dataset.fieldbyname(_vlunitario).ascurrency * dataset.fieldbyname(_qtitem).AsFloat;
  if Dataset.State = dsinsert then
  begin
    if cds.State = dsinsert then
    begin
      Dataset.FieldByName(_cditetapa).AsString := InserirEtapa;
    end;
    if dataset.fieldbyname(_cdstitordserv).IsNull then
    begin
      dataset.Fieldbyname(_cdstitordserv).AsInteger := qregistro.Codigo_status_novo(_itordserv);
    end;
  end;
  if (ordserv.tpordserv.boprodutoobrigatorio = _s) and dataset.fieldbyname(_cdproduto).isNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Produto]), mtinformation, [mbok], 0);
    dataset.fieldbyname(_cddigitado).FocusControl;
    abort;
  end;
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_cditordserv).asString := GerarCodigo(_itordserv);
  end;
  registro.set_update(cdsdetail);
end;

procedure TfrmOrdServ.cdsitacessorioBeforePost(DataSet: TDataSet);
begin
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_cditacessorio).asString := GerarCodigo(_itacessorio);
  end;
  registro.set_update(cdsitacessorio);
end;

procedure TfrmOrdServ.cdsitdefaprBeforePost(DataSet: TDataSet);
begin
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_cditdefapr).asString := GerarCodigo(_itdefapr);
  end;
  registro.set_update(cdsitdefapr);
end;

procedure TfrmOrdServ.cdsitdefencBeforePost(DataSet: TDataSet);
begin
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_cditdefenc).asString := GerarCodigo(_itdefenc);
  end;
  registro.set_update(cdsitdefenc);
end;

procedure TfrmOrdServ.cdsitequipamentoBeforePost(DataSet: TDataSet);
begin
  if Dataset.Fieldbyname(_CDITEQUIPAMENTO).asString = '' then
  begin
    Dataset.Fieldbyname(_CDITEQUIPAMENTO).asString := GerarCodigo(_ITEQUIPAMENTO);
  end;
  registro.set_update(cdsitequipamento);
end;

procedure TfrmOrdServ.cdsitordservexternoBeforePost(DataSet: TDataSet);
begin
  dataset.fieldbyname(_vltotal).ascurrency := dataset.fieldbyname(_vlunitario).ascurrency * dataset.fieldbyname(_qtitem).AsFloat;
  if Dataset.State = dsinsert then
  begin
    Dataset.Fieldbyname(_cditordserv+_externo).asString := GerarCodigo(_itordservexterno);
  end;
  registro.set_update(cdsitordservexterno);
end;

procedure TfrmOrdServ.cdsitacessorioCDACESSORIOValidate(Sender: TField);
begin
  if not codigoexiste(_acessorio, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(__acessorio)]), mterror, [mbok], 0);
    abort;
  end;
  cdsitacessorionmacessorio.asstring := NomedoCodigo(_acessorio, sender.asstring);
end;

procedure TfrmOrdServ.cdsitdefaprCDDEFEITOValidate(Sender: TField);
begin
  if not codigoexiste(_defeito, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_defeito)]), mterror, [mbok], 0);
    abort;
  end;
  cdsitdefaprNMDEFEITO.asstring := NomedoCodigo(_defeito, Sender.asstring);
end;

procedure TfrmOrdServ.cdsitdefencCDDEFEITOValidate(Sender: TField);
begin
  if not codigoexiste(_defeito, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_defeito)]), mterror, [mbok], 0);
    abort;
  end;
  cdsitdefencNMDEFEITO.asstring := NomedoCodigo(_defeito, Sender.asstring);
end;

procedure TfrmOrdServ.cdsitordservexternoCDDIGITADOValidate(Sender: TField);
var
  cdproduto : integer;
begin
  cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _boordserv);
  if cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(cdproduto);
  cdsitordservexternoCDPRODUTO.AsInteger   := produto.cdproduto;
  cdsitordservexternoNMPRODUTO.AsString    := produto.nmproduto;
  cdsitordservexternocdunidade.AsInteger   := produto.cdunidade;
  cdsitordservexternovlunitario.asCurrency := produto.vlvenda;
end;

procedure TfrmOrdServ.cdsCDTPORDSERVValidate(Sender: TField);
begin
  if sender.isnull then
  begin
    Exit;
  end;
  if not BooleandoCodigo(_tpordserv, sender.asString, _boativar) then
  begin
    messagedlg('Código do tipo de ordem de serviço está inativo.'#13'Escolha outro tipo de ordem de serviço para continuar!', mterror, [mbok], 0);
    cds.fieldbyname(_cdtpordserv).FocusControl;
    exit;
  end;
  setrecord(cds.fieldbyname(_cdtp+tbl).Asstring);
  if ordserv.tpordserv.dsobservacao <> '' then
  begin
    cdsDSOBSERVACAO.Text := ordserv.tpordserv.dsobservacao;;
    //memDSOBSERVACAO.Lines.Text := ordserv.tpordserv.dsobservacao;
  end;
end;

procedure TfrmOrdServ.Label5DblClick(Sender: TObject);
begin
  actabrirtpequipamentoExecute(actabrirtpequipamento);
end;

procedure TfrmOrdServ.btntpequipamentoClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_tpequipamento, 'Tipo Equipamento');
  if codigo <> '' then
  begin
    abrir_tabela(_tpequipamento);
    cds.FieldByName(_cdtpequipamento).AsString := codigo;
  end;
end;

procedure TfrmOrdServ.btnmarcaClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_marca, 'Marca');
  if codigo <> '' then
  begin
    abrir_tabela(_marca);
    cds.FieldByName(_cdmarca).AsString := codigo;
  end;
end;

procedure TfrmOrdServ.btnmodeloClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_modelo, 'Modelo');
  if codigo <> '' then
  begin
    abrir_tabela(_modelo);
    cds.FieldByName(_cdmodelo).AsString := codigo;
  end;
end;

procedure TfrmOrdServ.edtcdequipamentoExit(Sender: TObject);
begin
  if (cds.state <> dsinsert) and (cds.State <> dsedit) then
  begin
    colorexit(sender);
    exit;
  end;
  if (edtcdequipamento.Text <> '') and (not CarregarInformacoes(strtoint(edtcdequipamento.text))) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdequipamento.text, maiuscula(_equipamento)]), mterror, [mbok], 0);
    edtcdequipamento.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmOrdServ.edtcdequipamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cod :integer;
begin
  cod := LocalizarEquipamento(cds.fieldbyname(_cdcliente).AsString, true);
  if cod <> 0 then
  begin
    CarregarInformacoes(cod);
  end;
end;

procedure TfrmOrdServ.edtcdfuncionarioatendenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioatendentePropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrdServ.edtcdfuncionarioatendentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarFuncionario;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDfuncionarioatendente.asinteger := cd;
  end
end;

procedure TfrmOrdServ.edtcdfuncionarioconsertoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioconsertoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrdServ.edtcdfuncionarioconsertoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarFuncionario;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDfuncionarioconserto.asinteger := cd;
  end
end;

procedure TfrmOrdServ.edtcdfuncionariodevolvidoconsertoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionariodevolvidoconsertoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrdServ.edtcdfuncionariodevolvidoconsertoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarFuncionario;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDfuncionariodevolvidoconserto.asinteger := cd;
  end
end;

procedure TfrmOrdServ.edtcdfuncionarioentregueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioentreguePropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrdServ.edtcdfuncionarioentreguePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarFuncionario;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDfuncionarioentregue.asinteger := cd;
  end
end;

procedure TfrmOrdServ.edtcdfuncionariotecnicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionariotecnicoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrdServ.edtcdfuncionariotecnicoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarFuncionario;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDfuncionariotecnico.asinteger := cd;
  end
end;

procedure TfrmOrdServ.edtcdfuncionariovendedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionariovendedorPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrdServ.edtcdfuncionariovendedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarFuncionario;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDfuncionariovendedor.asinteger := cd;
  end
end;

procedure TfrmOrdServ.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDordserv.asstring              := GerarCodigo(_ordserv);
  cdsCDFUNCIONARIOATENDENTE.AsString := CodigodoCampo(_funcionario, inttostr(usuario.cdusuario), _cdusuario);
  cdsDTENTRADA.AsDateTime            := dtbanco;
  cdsHRENTRADA.asdatetime            := HrBanco;
  cdsCDSTORDSERV.AsInteger            := qregistro.Codigo_status_novo(tbl);
  cdsCDTPORDSERV.AsInteger           := registro.get_tipo_tabela_minumo;
  if edtDTENTRADA.Visible then
  begin
    edtdtentrada.SetFocus
  end
  else if edtDTSAIDA.Visible   then
  begin
    edtDTSAIDA.SetFocus
  end
  else if cbxcdtpordserv.Visible then
  begin
    cbxcdtpordserv.SetFocus;
  end;
  cdsCDPRIORIDADE.asinteger          := 1;
{
      adataset.Fieldbyname(_cd+tbl).Asstring := GerarCodigo(tbl);
      if empresa.ordserv.bopreenchertipo then
      begin
        ADataset.fieldbyname(_cdtp+tbl).Asinteger   := RetornaSQLInteger('select min(cdtpordserv) from tpordserv where cdempresa='+empresa.cdempresa.tostring);
      end;
      setrecord(_1);
      if (ordserv.bopreencheratendenteusuario) and (qregistro.CodigodoNome(_funcionario, usuario.nmusuario) <> '') then
      begin
        adataset.fieldbyname(_CDFUNCIONARIO+_ATENDENTE).asString := qregistro.CodigodoNome(_funcionario, usuario.nmusuario);
        lbldsfuncionarioatendente.Caption                       := nomedocodigo(_funcionario, adataset.fieldbyname(_CDFUNCIONARIO+_ATENDENTE).asString);
      end;
      if codigoinsercao <> '' then
      begin
        ADataset.Fieldbyname(_nu+tbl).Asstring := codigoinsercao;
      end;
      edtcodigo.text := cds.fieldbyname(_nu+tbl).Asstring;
      pnl.Caption    := Exibe+' '+adataset.fieldbyname(_nu+tbl).Asstring;
      if ADataset.fieldbyname(_bocontrato).asstring = _S then pnl.Style.Font.Color := 255
                                                         else pnl.Style.Font.Color := clWindowText;
}
end;

procedure TfrmOrdServ.actabrircondpagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmOrdServ.lblcdcondpagtoDblClick(Sender: TObject);
begin
  actabrircondpagtoExecute(actabrircondpagto);
end;

procedure TfrmOrdServ.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado  then actabrirprodutoExecute(actabrirproduto)
end;

procedure TfrmOrdServ.actabrirprodutoexternoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitordservexterno);
end;

procedure TfrmOrdServ.tbvitordservexternoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cddigitado  then
  begin
    actabrirprodutoexternoExecute(actabrirprodutoexterno);
  end;
end;

procedure TfrmOrdServ.tbvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdsdetail, false);
end;

procedure TfrmOrdServ.tbvitordservexternoCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(tbl, cdsitordservexterno, false);
end;

procedure TfrmOrdServ.actabrirvendedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds, _cdfuncionariovendedor, true);
end;

procedure TfrmOrdServ.lblvendedorDblClick(Sender: TObject);
begin
  actabrirvendedorExecute(actabrirvendedor);
end;

procedure TfrmOrdServ.actabrirtecnicoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds, _cdfuncionariotecnico, true);
end;

procedure TfrmOrdServ.actabriratendenteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds, _cdfuncionarioatendente, true);
end;

procedure TfrmOrdServ.lbltecnicoDblClick(Sender: TObject);
begin
  actabrirtecnicoExecute(actabrirtecnico);
end;

procedure TfrmOrdServ.lblatendenteDblClick(Sender: TObject);
begin
  actabriratendenteExecute(actabriratendente);
end;

procedure TfrmOrdServ.dspUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  registro.exibirmensagemerro(e.ErrorCode, e.Message);
end;

procedure TfrmOrdServ.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.edtcdclientePropertiesButtonClick(self, cds);
end;

procedure TfrmOrdServ.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmOrdServ.edtcdequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdequipamentoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrdServ.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmOrdServ.cdsdetailCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _boordserv);
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  if produto.boativar <> _s then
  begin
    MessageDlg('Produto '+Sender.asstring+' - '+produto.nmproduto+#13'está desativado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  produto.tpproduto.select(produto.cdtpproduto);
  if (ordserv.tpordserv.bobaixaestoque = _s) and
     (produto.tpproduto.boestoque = _s) and
     (not empresa.material.produto.boordservestoquezerado) and
     (produto.qtestoque <= 0) then
  begin
    messagedlg('Produto '+Sender.asstring+' com estoque '+FormatFloat(__moedadec3, produto.qtestoque)+'.'#13+
               'Digite um produto que tenha o estoque acima de zero para continuar', mtinformation, [mbok], 0);
    abort;
  end;
  cdsdetailcdalternativo.asString := produto.cdalternativo;
  cdsdetailnmproduto.asstring     := produto.nmproduto;
  cdsdetaildslocalizacao.asstring := produto.dslocalizacao;
  cdsdetailcdproduto.AsInteger    := produto.cdproduto;
  cdsdetailcdunidade.asInteger    := produto.cdunidade;
  cdsdetailboservico.asstring     := produto.tpproduto.boservico;
  AtribuirValorUnitario;
end;

procedure TfrmOrdServ.cdsdetailNewRecord(DataSet: TDataSet);
begin
  cdsdetailqtitem.OnValidate := nil;
  cdsdetailQTITEM.AsFloat    := 1;
  cdsdetailqtitem.OnValidate := cdsdetailQTITEMValidate;
  cdsdetailVLUNITARIO.AsCurrency := 0;
  cdsdetailVLTOTAL.AsCurrency    := 0;
end;

procedure TfrmOrdServ.cdsdetailQTITEMValidate(Sender: TField);
begin
  if Sender.DataSet.FieldByName(_cdproduto).asinteger = 0 then
  begin
    Abort;
  end;
  if produto.cdproduto <> Sender.DataSet.FieldByName(_cdproduto).asinteger then
  begin
    produto.Select(Sender.DataSet.FieldByName(_cdproduto).asinteger);
  end;
  produto.tpproduto.select(produto.cdtpproduto);
  if (ordserv.tpordserv.bobaixaestoque = _s) and
     (produto.tpproduto.boestoque = _s) and
     (not empresa.material.produto.boordservestoquezerado) and
     (produto.qtestoque <= 0) then
  begin
    messagedlg('Produto '+Sender.asstring+' com estoque '+FormatFloat(__moedadec3, produto.qtestoque)+'.'#13+
               'Digite um produto que tenha o estoque acima de zero para continuar', mtinformation, [mbok], 0);
    abort;
  end;
  AtribuirValorUnitario;
end;

procedure TfrmOrdServ.cdsHRCONSERTOFValidate(Sender: TField);
begin
  cdshrconsertohora.asDateTime := cdshrconsertof.asDateTime - cdshrconserto.asDateTime;
end;

procedure TfrmOrdServ.cdsHRORCADOFValidate(Sender: TField);
begin
  cdshrorcadohora.asDateTime := cdshrorcadof.asDateTime - cdshrorcado.asDateTime;
end;

procedure TfrmOrdServ.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsdetail, key);
  if (key = __KeySearch) and (LowerCase(tbv.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cddigitado) then
  begin
    tbvCDDIGITADOPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmOrdServ.txtNMCLIENTEDblClick(Sender: TObject);
begin
  actAbrirClienteExecute(actAbrirCliente);
end;

procedure TfrmOrdServ.tbvitordservexternoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitordservexterno, key);
  if (key = __KeySearch) and (LowerCase(tbvitordservexterno.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cddigitado) then
  begin
    tbvitordservexternoCDDIGITADOPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmOrdServ.tbvitequipamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitequipamento, key);
  if (key = __KeySearch) and (LowerCase(tbvitequipamento.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cdequipamento) then
  begin
    tbvitequipamentoCDEQUIPAMENTOPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmOrdServ.tbvitacessorioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitacessorio, key);
  if (key = __KeySearch) and (LowerCase(tbvitacessorio.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cdacessorio) then
  begin
    tbvitacessorioCDACESSORIOPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmOrdServ.tbvitdefaprKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitdefapr, key);
  if (key = __KeySearch) and (LowerCase(tbvitdefapr.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cddefeito) then
  begin
    tbvitdefaprCDDEFEITOPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmOrdServ.tbvitdefencKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitdefenc, key);
  if (key = __KeySearch) and (LowerCase(tbvitdefenc.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cddefeito) then
  begin
    tbvitdefencCDDEFEITOPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmOrdServ.tbvitetapaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitetapa, key);
end;

procedure TfrmOrdServ.tbvitequipamentoCDEQUIPAMENTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsitequipamento, _equipamento, _cdequipamento, false);
end;

procedure TfrmOrdServ.tbvitacessorioCDACESSORIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsitacessorio, _acessorio, _cdacessorio, true);
end;

procedure TfrmOrdServ.tbvitdefaprCDDEFEITOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsitdefapr, _defeito, _cddefeito, true);
end;

procedure TfrmOrdServ.tbvitdefencCDDEFEITOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsitdefenc, _defeito, _cddefeito, true);
end;

procedure TfrmOrdServ.cdsitacessorioNewRecord(DataSet: TDataSet);
begin
  cdsitacessorioQTITEM.AsFloat := 1;
end;

procedure TfrmOrdServ.cdsitordservexternoNewRecord(DataSet: TDataSet);
begin
  cdsitordservexternoQTITEM.AsFloat        := 1;
  cdsitordservexternoVLUNITARIO.AsCurrency := 0;
  cdsitordservexternoVLTOTAL.AsCurrency    := 0;
end;

procedure TfrmOrdServ.tbvitequipamentoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdequipamento then
  begin
    actabriritequipamentoExecute(actabriritequipamento);
  end;
end;

procedure TfrmOrdServ.actabriritequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitequipamento, _cdequipamento, true);
end;

procedure TfrmOrdServ.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmOrdServ.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmOrdServ.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmOrdServ.ConfigurarCorPrioridade(codigo: integer);
begin
  ordserv.prioridade.Select(codigo);
  if ordserv.prioridade.nucor <> 0 then
  begin
    cbxcdprioridade.Style.Font.Color := ordserv.prioridade.nucor;
    cbxcdprioridade.Style.Font.Style := [fsbold];
  end
  else
  begin
    cbxcdprioridade.Style.Font.Color := clWindowText;
    cbxcdprioridade.Style.Font.Style := [];
  end;
end;

procedure TfrmOrdServ.set_abrirtabela;
begin
  cbxcdlocalservico.Properties.ListSource         := abrir_tabela(_localservico);
  cbxcdtpordserv.Properties.ListSource            := abrir_tabela(_tpordserv);
  cbxcdstordserv.Properties.ListSource            := abrir_tabela(_stordserv);
  cbxcdprioridade.Properties.ListSource           := abrir_tabela(_prioridade);
  cbxcdcondpagto.Properties.ListSource            := abrir_tabela(_condpagto);
  cbxcdtpcobranca.Properties.ListSource           := abrir_tabela(_tpcobranca);
  cbxcdgarantia.Properties.ListSource             := abrir_tabela(_garantia);
  cbxCDTPEQUIPAMENTO.Properties.ListSource        := abrir_tabela(_tpequipamento);
  cbxCDMARCA.Properties.ListSource                := abrir_tabela(_marca);
  cbxCDMODELO.Properties.ListSource               := abrir_tabela(_modelo);
  cbxCDTPVOLTAGEM.Properties.ListSource           := abrir_tabela(_tpvoltagem);
  cbxCDCOR.Properties.ListSource                  := abrir_tabela(_COR);
end;

procedure TfrmOrdServ.btncdcorClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_cor, 'Cor');
  if codigo <> '' then
  begin
    abrir_tabela(_cor);
    cds.FieldByName(_cdcor).AsString := codigo;
  end;
end;

procedure TfrmOrdServ.cdsCDCLIENTEValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    Exit;
  end;
  if not cliente.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_Cliente)]), mterror, [mbok], 0);
    edtcdcliente.Clear;
    sender.FocusControl;
    Abort;
  end;
  cliente.stcliente.Select(cliente.cdstcliente);
  if cliente.stcliente.bogerarinfo <> _s then
  begin
    messagedlg('Cliente está no status '+cliente.stcliente.nmstcliente+#13'que não permite ser inserido na '+exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    edtcdcliente.clear;
    sender.clear;
    abort;
  end;
  lblcdcliente.Hint := cliente.hint_rzsocial;
end;

procedure TfrmOrdServ.cdsCDFUNCIONARIOATENDENTEValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMfuncionarioatendente.Clear;
    Exit;
  end;
  cdsNMfuncionarioatendente.AsString := NomedoCodigo(_funcionario, Sender.asstring);
  if cdsNMfuncionarioatendente.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, __funcionario]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmOrdServ.cdsCDFUNCIONARIOCONSERTOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMfuncionarioconserto.Clear;
    Exit;
  end;
  cdsNMfuncionarioconserto.AsString := NomedoCodigo(_funcionario, Sender.asstring);
  if cdsNMfuncionarioconserto.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, __funcionario]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmOrdServ.cdsCDFUNCIONARIODEVOLVIDOCONSERTOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMfuncionariodevolvidoconserto.Clear;
    Exit;
  end;
  cdsNMfuncionariodevolvidoconserto.AsString := NomedoCodigo(_funcionario, Sender.asstring);
  if cdsNMfuncionariodevolvidoconserto.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, __funcionario]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmOrdServ.cdsCDFUNCIONARIOENTREGUEValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMfuncionarioentregue.Clear;
    Exit;
  end;
  cdsNMfuncionarioentregue.AsString := NomedoCodigo(_funcionario, Sender.asstring);
  if cdsNMfuncionarioentregue.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, __funcionario]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmOrdServ.cdsCDFUNCIONARIOORCADOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMfuncionarioorcado.Clear;
    Exit;
  end;
  cdsNMfuncionarioorcado.AsString := NomedoCodigo(_funcionario, Sender.asstring);
  if cdsNMfuncionarioorcado.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, __funcionario]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmOrdServ.cdsCDFUNCIONARIOTECNICOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMfuncionariotecnico.Clear;
    Exit;
  end;
  cdsNMfuncionariotecnico.AsString := NomedoCodigo(_funcionario, Sender.asstring);
  if cdsNMfuncionariotecnico.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, __funcionario]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmOrdServ.cdsCDFUNCIONARIOVENDEDORValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMfuncionariovendedor.Clear;
    Exit;
  end;
  cdsNMfuncionariovendedor.AsString := NomedoCodigo(_funcionario, Sender.asstring);
  if cdsNMfuncionariovendedor.AsString = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, __funcionario]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmOrdServ.cdsCDPRIORIDADEValidate(Sender: TField);
begin
  ConfigurarCorPrioridade(sender.AsInteger);
end;

procedure TfrmOrdServ.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(tbl, cds.fieldbyname(_cdordserv).AsString);
end;

procedure TfrmOrdServ.actconsultasaidaExecute(Sender: TObject);
begin
  SetConsulta(_saida);
  grlsaida.Active := True;
end;

procedure TfrmOrdServ.SetConsulta(tbl: string);
var
  sql : string;
begin
  cdsitconsulta.close;
  cdsconsulta.Close;
  if cds.fieldbyname(_cdordserv).asstring = '' then
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
               ',io.CDORDSERV'+
               ',T.NMTPSAIDA'+
               ',SE.NMSERIE'+
               ',S.CDSAIDA '+
         'FROM saida s '+
         'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
         'LEFT JOIN TPSAIDA T ON T.CDEMPRESA=S.CDEMPRESA AND T.CDTPSAIDA=S.CDTPSAIDA '+
         'LEFT JOIN SERIE SE ON SE.CDEMPRESA=S.CDEMPRESA AND SE.CDSERIE=S.CDSERIE '+
         'INNER JOIN ITORDSERV IO ON IO.CDITORDSERV=I.CDITORDSERV and i.cdempresa=io.cdempresa '+
         'WHERE s.cdempresa='+empresa.cdempresa.tostring+' and io.cdordserv='+cds.fieldbyname(_cdordserv).asstring+' '+
         'GROUP BY S.NUSAIDA,S.DTEMISSAO,s.VLTOTAL,io.CDORDSERV,T.NMTPSAIDA,SE.NMSERIE,S.CDSAIDA';
    sdsitconsulta.CommandText := 'SELECT I.CDDIGITADO'+
                                       ',P.NMPRODUTO'+
                                       ',I.QTITEM'+
                                       ',I.VLUNITARIO'+
                                       ',I.VLTOTAL'+
                                       ',I.CDSAIDA'+
                                       ',I.CDITSAIDA'+
                                       ',I.CDORDSERV '+
                                 'FROM ITSAIDA i '+
                                 'INNER JOIN PRODUTO p ON P.CDPRODUTO=I.CDPRODUTO and i.cdempresa=p.cdempresa '+
                                 'INNER JOIN ITORDSERV IO ON IO.CDITORDSERV=I.CDITORDSERV and io.cdempresa=i.cdempresa '+
                                 'where i.cdempresa='+empresa.cdempresa.tostring+' and IO.CDORDSERV='+cds.fieldbyname(_CDORDSERV).asstring+' '+
                                 'ORDER BY I.CDITSAIDA';
    cdsitconsulta.Open;
  end;
  sdsconsulta.CommandText := sql;
  cdsconsulta.Open;
  tbl_consulta := tbl;
end;

procedure TfrmOrdServ.edtcdfuncionarioorcadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioorcadoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure TfrmOrdServ.edtcdfuncionarioorcadoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarFuncionario;
  if cd <> 0 then
  begin
    if (cds.State <> dsinsert) and (cds.State <> dsedit) then
    begin
     cds.Edit;
    end;
    cdsCDfuncionarioorcado.asinteger := cd;
  end
end;

end.

