unit uentrada;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, Classes, ActnList, StdCtrls, Controls, ComCtrls, ToolWin, Math,
  IniFiles, Mask, ExtCtrls, Buttons, sysutils, windows, dialogs, graphics,
  Grids, SqlExpr, DB, Provider, DBClient,
  pcnConversao, ACBrCTe, ACBrNFe, ACBrValidador,
  uExportarExcel, urotinas, unumero, uregistro, uregistroib, ustrings, uconstantes,
  uexibircampos, udatahora, uvalidadocumento, uprogressbar, uMenuRelatorio,
  ubaixa, unovoproduto, uProtector,
  classetransportadora, classeempresa, classeRegistro,
  classegerar, classeregistrainformacao, classeconsiste, classeusuario, classeordcompra,
  classeretornasql, classeform, classeproduto, classeentrada, classenfe, classeEndereco,
  classeexecutasql, classeaplicacao, classecondpagto, classeACBR, classecliente,
  classesaida, classelivrofiscal, classeautpagto, classefornecedor, classeordproducao,
  classeregrast, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxBar, cxClasses,cxGroupBox, cxButtons, cxPC, cxPCdxBarPopupMenu,
  cxLabel, cxSplitter, dxBarBuiltInMenu, ACBrBase, ACBrDFe, cxDBLookupComboBox,cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBEdit, cxCalendar,
  cxCheckBox, cxCurrencyEdit, cxCalc, cxMemo, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxButtonEdit, FMTBcd, cxDBLabel, cxBlobEdit,
  Vcl.DBCtrls;

type
  Tfrmentrada = class(TForm)
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
    actGerarAutPagto: TAction;
    actAbrirCliente: TAction;
    actAbrirFornecedor: TAction;
    actAbrirCondpagto: TAction;
    actAbrirTransportadora: TAction;
    actAbrirAutPagto: TAction;
    actimprimirautpagto: TAction;
    pum: TPopupMenu;
    AutorizaodePagamento1: TMenuItem;
    pumfields: TPopupMenu;
    actExibirCampos: TAction;
    ExibirCampos1: TMenuItem;
    actabrirproduto: TAction;
    actabrirtpentrada: TAction;
    actimprimirentrada: TAction;
    Compra1: TMenuItem;
    actabrirentrada: TAction;
    actinsercaocdbarra: TAction;
    actfechar: TAction;
    actImportarNFE: TAction;
    actimprimirnfe: TAction;
    pgc: TcxPageControl;
    tbstributacao: TcxTabSheet;
    tbsobservacao: TcxTabSheet;
    tbsxml: TcxTabSheet;
    tbsproduto: TcxTabSheet;
    pnlconfigtributa: TPanel;
    lblicmssubst: TLabel;
    lblaliquota: TLabel;
    lblvalor: TLabel;
    lblbasecalculo: TLabel;
    lbliss: TLabel;
    lblpis: TLabel;
    lblcofins: TLabel;
    Bevel4: TBevel;
    pnloutros: TPanel;
    lblpsliquido: TLabel;
    lblpsbruto: TLabel;
    lblqtvolume: TLabel;
    lblnmespecievolume: TLabel;
    lblvalorpercente: TLabel;
    lblpercente: TLabel;
    lbldesconto: TLabel;
    tbsinfoadic: TcxTabSheet;
    Label18: TLabel;
    lblnusubserie: TLabel;
    lblinss: TLabel;
    lblcontribsocial: TLabel;
    lblirrf: TLabel;
    tbsinfcomplementar: TcxTabSheet;
    Splitter2: TSplitter;
    lblfretesub: TLabel;
    actexportarxml: TAction;
    pnl1: TPanel;
    Label20: TLabel;
    lblcfop: TLabel;
    lbltpentrada: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
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
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton5: TdxBarButton;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton7: TdxBarButton;
    dxBarPopupMenu1: TdxBarPopupMenu;
    bmg1Bar2: TdxBar;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarDockControl2: TdxBarDockControl;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    actparcelamento: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    lbl1: TLabel;
    actbaixarautpagto: TAction;
    lblgrupotensaoc500: TLabel;
    lbltpligacaoc500: TLabel;
    lblclconsumoagua: TLabel;
    lblclconsumoenergia: TLabel;
    actmarkup: TAction;
    dxBarButton2: TdxBarButton;
    dxBarButton4: TdxBarButton;
    actimportarxml: TAction;
    gbxcte: TcxGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lblnuchavenfe: TLabel;
    actabrirordcompra: TAction;
    actdevolucao: TAction;
    dxBarButton12: TdxBarButton;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    actimprimirautorizacaopagto: TAction;
    dxBarButton6: TdxBarButton;
    dxBarButton13: TdxBarButton;
    actmanifestodestinatario: TAction;
    nfe: TACBrNFe;
    actaprovacao: TAction;
    dxBarButton14: TdxBarButton;
    actdesaprovacao: TAction;
    dxBarButton15: TdxBarButton;
    cds: TClientDataSet;
    cdsitentrada: TClientDataSet;
    cdsautpagto: TClientDataSet;
    cdsitentradalote: TClientDataSet;
    cdsentradaefd0450: TClientDataSet;
    cdsentradac111: TClientDataSet;
    dts: TDataSource;
    dtsitentrada: TDataSource;
    dtsAutpagto: TDataSource;
    dtsitentradalote: TDataSource;
    dtsentradaefd0450: TDataSource;
    dtsentradac111: TDataSource;
    dts1: TDataSource;
    sds: TSQLDataSet;
    sdsitentrada: TSQLDataSet;
    sdsautpagto: TSQLDataSet;
    sdsitentradalote: TSQLDataSet;
    sdsentradaefd0450: TSQLDataSet;
    sdsentradac111: TSQLDataSet;
    dsp: TDataSetProvider;
    dts2: TDataSource;
    dts3: TDataSource;
    sdsCDENTRADA: TIntegerField;
    sdsCDTPENTRADA: TIntegerField;
    sdsCDCFOP: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsCDCNTCUSTO: TIntegerField;
    sdsCDCONDPAGTO: TIntegerField;
    sdsCDTPCOBRANCA: TIntegerField;
    sdsCDPLCONTA: TIntegerField;
    sdsCDSAIDA: TIntegerField;
    sdsNUSTDOCUMENTO: TStringField;
    sdsNUDOCFISCALICMS: TStringField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDTPLIGACAOC500: TIntegerField;
    sdsCDGRUPOTENSAOC500: TStringField;
    sdsCDCLCONSUMOAGUA: TStringField;
    sdsCDCLCONSUMOENERGIA: TStringField;
    sdsNUENTRADA: TIntegerField;
    sdsDTSAIDA: TDateField;
    sdsDTEMISSAO: TDateField;
    sdsVLTOTAL: TFMTBCDField;
    sdsVLLIQUIDO: TFMTBCDField;
    sdsVLLIQSDESC: TFMTBCDField;
    sdsPRDESCONTO: TFloatField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsVLSEGURO: TFMTBCDField;
    sdsVLOUTDESPESA: TFMTBCDField;
    sdsVLFRETE: TFMTBCDField;
    sdsVLBASEIPI: TFMTBCDField;
    sdsVLIPI: TFMTBCDField;
    sdsVLICMSSUBTRIB: TFMTBCDField;
    sdsVLBASEICMSSUBTRIB: TFMTBCDField;
    sdsVLBASEICMS: TFMTBCDField;
    sdsVLICMS: TFMTBCDField;
    sdsVLISS: TFMTBCDField;
    sdsVLISSSDESC: TFMTBCDField;
    sdsVLBASEPIS: TFMTBCDField;
    sdsVLPIS: TFMTBCDField;
    sdsVLBASECOFINS: TFMTBCDField;
    sdsVLCOFINS: TFMTBCDField;
    sdsVLIRRF: TFMTBCDField;
    sdsPSLIQUIDO: TFloatField;
    sdsPSBRUTO: TFloatField;
    sdsHRENTRADA: TTimeField;
    sdsDTENTRADA: TDateField;
    sdsNUPLACA: TStringField;
    sdsVLPRODUTO: TFMTBCDField;
    sdsVLSERVICO: TFMTBCDField;
    sdsQTVOLUME: TFloatField;
    sdsNMESPECIEVOLUME: TStringField;
    sdsBOEXPORTADO: TStringField;
    sdsDSOBSERVACAO: TBlobField;
    sdsNMESPECIE: TStringField;
    sdsVLICMSSFRETENCONTRIB: TFMTBCDField;
    sdsDSHISTORICO: TStringField;
    sdsNUSUBSERIE: TStringField;
    sdsCDPROTOCOLO: TIntegerField;
    sdsPRLUCRO: TFloatField;
    sdsBOOPTANTESIMPLES: TStringField;
    sdsNUPLCONTA: TStringField;
    sdsDSXML: TBlobField;
    sdsBOPAGTOVISTA: TStringField;
    sdsVLPISSUBTRIB: TFMTBCDField;
    sdsVLBASEPISSUBTRIB: TFMTBCDField;
    sdsALPISSUBTRIB: TFloatField;
    sdsVLCOFINSSUBTRIB: TFMTBCDField;
    sdsVLBASECOFINSSUBTRIB: TFMTBCDField;
    sdsALCOFINSSUBTRIB: TFloatField;
    sdsNUCHAVENFE: TStringField;
    sdsBORETENCAOPIS: TStringField;
    sdsBORETENCAOCOFINS: TStringField;
    sdsVLINSS: TFMTBCDField;
    sdsVLCONTRIBSOCIAL: TFMTBCDField;
    sdsBOIPIBCICMS: TStringField;
    sdsVLBASEFRETESUB: TFMTBCDField;
    sdsALFRETESUB: TFloatField;
    sdsVLFRETESUB: TFMTBCDField;
    sdsBOCREDITOSTTRANSPORTE: TStringField;
    sdsBOICMSSUBTRIBNTOTAL: TStringField;
    sdsNUSERIE: TStringField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNUCHAVENFSE: TStringField;
    sdsVLCOFINSRET: TFMTBCDField;
    sdsVLPISRET: TFMTBCDField;
    sdsCDENTRADACT: TIntegerField;
    sdsNUENTRADACT: TIntegerField;
    sdsBOFRETEITEM: TStringField;
    sdsNSEQEVENTO: TIntegerField;
    sdsBOICMSSTITEM: TStringField;
    sdsBOARREDONDAR: TStringField;
    sdsBODESCONTOITEM: TStringField;
    sdsBONARREDONDARCOFINS: TStringField;
    sdsBONARREDONDARPIS: TStringField;
    sdsDTEMISSAOCT: TDateField;
    sdsDTENTRADACT: TDateField;
    sdsVLTOTALCT: TFMTBCDField;
    sdsNMFORNECEDORCT: TStringField;
    cdsCDENTRADA: TIntegerField;
    cdsCDTPENTRADA: TIntegerField;
    cdsCDCFOP: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsCDCNTCUSTO: TIntegerField;
    cdsCDCONDPAGTO: TIntegerField;
    cdsCDTPCOBRANCA: TIntegerField;
    cdsCDPLCONTA: TIntegerField;
    cdsCDSAIDA: TIntegerField;
    cdsNUSTDOCUMENTO: TStringField;
    cdsNUDOCFISCALICMS: TStringField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDTPLIGACAOC500: TIntegerField;
    cdsCDGRUPOTENSAOC500: TStringField;
    cdsCDCLCONSUMOAGUA: TStringField;
    cdsCDCLCONSUMOENERGIA: TStringField;
    cdsNUENTRADA: TIntegerField;
    cdsDTSAIDA: TDateField;
    cdsDTEMISSAO: TDateField;
    cdsVLTOTAL: TFMTBCDField;
    cdsVLLIQUIDO: TFMTBCDField;
    cdsVLLIQSDESC: TFMTBCDField;
    cdsPRDESCONTO: TFloatField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsVLSEGURO: TFMTBCDField;
    cdsVLOUTDESPESA: TFMTBCDField;
    cdsVLFRETE: TFMTBCDField;
    cdsVLBASEIPI: TFMTBCDField;
    cdsVLIPI: TFMTBCDField;
    cdsVLICMSSUBTRIB: TFMTBCDField;
    cdsVLBASEICMSSUBTRIB: TFMTBCDField;
    cdsVLBASEICMS: TFMTBCDField;
    cdsVLICMS: TFMTBCDField;
    cdsVLISS: TFMTBCDField;
    cdsVLISSSDESC: TFMTBCDField;
    cdsVLBASEPIS: TFMTBCDField;
    cdsVLPIS: TFMTBCDField;
    cdsVLBASECOFINS: TFMTBCDField;
    cdsVLCOFINS: TFMTBCDField;
    cdsVLIRRF: TFMTBCDField;
    cdsPSLIQUIDO: TFloatField;
    cdsPSBRUTO: TFloatField;
    cdsHRENTRADA: TTimeField;
    cdsDTENTRADA: TDateField;
    cdsNUPLACA: TStringField;
    cdsVLPRODUTO: TFMTBCDField;
    cdsVLSERVICO: TFMTBCDField;
    cdsQTVOLUME: TFloatField;
    cdsNMESPECIEVOLUME: TStringField;
    cdsBOEXPORTADO: TStringField;
    cdsDSOBSERVACAO: TBlobField;
    cdsNMESPECIE: TStringField;
    cdsVLICMSSFRETENCONTRIB: TFMTBCDField;
    cdsDSHISTORICO: TStringField;
    cdsNUSUBSERIE: TStringField;
    cdsCDPROTOCOLO: TIntegerField;
    cdsPRLUCRO: TFloatField;
    cdsBOOPTANTESIMPLES: TStringField;
    cdsNUPLCONTA: TStringField;
    cdsDSXML: TBlobField;
    cdsBOPAGTOVISTA: TStringField;
    cdsVLPISSUBTRIB: TFMTBCDField;
    cdsVLBASEPISSUBTRIB: TFMTBCDField;
    cdsALPISSUBTRIB: TFloatField;
    cdsVLCOFINSSUBTRIB: TFMTBCDField;
    cdsVLBASECOFINSSUBTRIB: TFMTBCDField;
    cdsALCOFINSSUBTRIB: TFloatField;
    cdsNUCHAVENFE: TStringField;
    cdsBORETENCAOPIS: TStringField;
    cdsBORETENCAOCOFINS: TStringField;
    cdsVLINSS: TFMTBCDField;
    cdsVLCONTRIBSOCIAL: TFMTBCDField;
    cdsBOIPIBCICMS: TStringField;
    cdsVLBASEFRETESUB: TFMTBCDField;
    cdsALFRETESUB: TFloatField;
    cdsVLFRETESUB: TFMTBCDField;
    cdsBOCREDITOSTTRANSPORTE: TStringField;
    cdsBOICMSSUBTRIBNTOTAL: TStringField;
    cdsNUSERIE: TStringField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNUCHAVENFSE: TStringField;
    cdsVLCOFINSRET: TFMTBCDField;
    cdsVLPISRET: TFMTBCDField;
    cdsCDENTRADACT: TIntegerField;
    cdsNUENTRADACT: TIntegerField;
    cdsBOFRETEITEM: TStringField;
    cdsNSEQEVENTO: TIntegerField;
    cdsBOICMSSTITEM: TStringField;
    cdsBOARREDONDAR: TStringField;
    cdsBODESCONTOITEM: TStringField;
    cdsBONARREDONDARCOFINS: TStringField;
    cdsBONARREDONDARPIS: TStringField;
    cdsDTEMISSAOCT: TDateField;
    cdsDTENTRADACT: TDateField;
    cdsVLTOTALCT: TFMTBCDField;
    cdsNMFORNECEDORCT: TStringField;
    sdsitentradaCDENTRADA: TIntegerField;
    sdsitentradaCDPRODUTO: TIntegerField;
    sdsitentradaCDCNTCUSTO: TIntegerField;
    sdsitentradaCDCFOP: TIntegerField;
    sdsitentradaCDDIGITADO: TStringField;
    sdsitentradaDSITENTRADA: TStringField;
    sdsitentradaBOALTERACUSTOMEDIO: TStringField;
    sdsitentradaQTITEM: TFloatField;
    sdsitentradaVLUNITARIO: TFMTBCDField;
    sdsitentradaVLTOTAL: TFMTBCDField;
    sdsitentradaPRDESCONTO: TFloatField;
    sdsitentradaVLDESCONTO: TFMTBCDField;
    sdsitentradaVLBASEICMS: TFMTBCDField;
    sdsitentradaALICMS: TFloatField;
    sdsitentradaVLICMS: TFMTBCDField;
    sdsitentradaALICMSRED: TFloatField;
    sdsitentradaVLBASEICMSRED: TFMTBCDField;
    sdsitentradaVLBASEIPI: TFMTBCDField;
    sdsitentradaALIPI: TFloatField;
    sdsitentradaVLIPI: TFMTBCDField;
    sdsitentradaVLFRETE: TFMTBCDField;
    sdsitentradaVLSEGURO: TFMTBCDField;
    sdsitentradaPSLIQUIDO: TFloatField;
    sdsitentradaPSBRUTO: TFloatField;
    sdsitentradaBORECUPERAICMS: TStringField;
    sdsitentradaBORECUPERAIPI: TStringField;
    sdsitentradaBORECUPERAPIS: TStringField;
    sdsitentradaVLBASEPIS: TFMTBCDField;
    sdsitentradaALPIS: TFloatField;
    sdsitentradaVLPIS: TFMTBCDField;
    sdsitentradaVLBASECOFINS: TFMTBCDField;
    sdsitentradaALCOFINS: TFloatField;
    sdsitentradaVLCOFINS: TFMTBCDField;
    sdsitentradaPRCUSTO: TFMTBCDField;
    sdsitentradaPRVIGOR: TFMTBCDField;
    sdsitentradaVLOUTDESPESA: TFMTBCDField;
    sdsitentradaVLCUSTOMEDIO: TFMTBCDField;
    sdsitentradaVLCUSTO: TFMTBCDField;
    sdsitentradaBORECUPERACOFINS: TStringField;
    sdsitentradaDTFABRICACAO: TDateField;
    sdsitentradaDTVALIDADE: TDateField;
    sdsitentradaVLSALDOVALOR: TFMTBCDField;
    sdsitentradaPRLUCRO: TFloatField;
    sdsitentradaVLICMSRED: TFMTBCDField;
    sdsitentradaALICMSSUBTRIB: TFloatField;
    sdsitentradaVLICMSSUBTRIB: TFMTBCDField;
    sdsitentradaVLBASEICMSSUBTRIB: TFMTBCDField;
    sdsitentradaVLVENDA: TFMTBCDField;
    sdsitentradaPRLUCROATACADO: TFloatField;
    sdsitentradaPRLUCROESPECIAL: TFloatField;
    sdsitentradaVLATACADO: TFMTBCDField;
    sdsitentradaVLESPECIAL: TFMTBCDField;
    sdsitentradaCDMODBCICMS: TIntegerField;
    sdsitentradaCDMODBCSTICMS: TIntegerField;
    sdsitentradaPRMRGVLADICIONADOICMSSUBTRIB: TFloatField;
    sdsitentradaPRREDBCICMS: TFloatField;
    sdsitentradaNUSTICMS: TStringField;
    sdsitentradaNUSTIPI: TStringField;
    sdsitentradaNUSTCOFINS: TStringField;
    sdsitentradaNUSTPIS: TStringField;
    sdsitentradaBORECUPERAAJUSTEICMS: TStringField;
    sdsitentradaBOICMSAJUSTE: TStringField;
    sdsitentradaBOBASEIPIAJUSTE: TStringField;
    sdsitentradaBOAJUSTETOTAL: TStringField;
    sdsitentradaBOBASEICMSAJUSTE: TStringField;
    sdsitentradaBONDIFERENCIALALIQUOTA: TStringField;
    sdsitentradaVLICMSDIFALIQUOTA: TFMTBCDField;
    sdsitentradaBODIFERENCIALALIQUOTA: TStringField;
    sdsitentradaCDITENTRADA: TIntegerField;
    sdsitentradaCDUSUARIOI: TIntegerField;
    sdsitentradaCDUSUARIOA: TIntegerField;
    sdsitentradaCDCOMPUTADORI: TIntegerField;
    sdsitentradaCDCOMPUTADORA: TIntegerField;
    sdsitentradaTSINCLUSAO: TSQLTimeStampField;
    sdsitentradaTSALTERACAO: TSQLTimeStampField;
    sdsitentradaBORECUPERAIPIESPECIAL: TStringField;
    sdsitentradaCDITORDCOMPRA: TIntegerField;
    sdsitentradaCDORDCOMPRA: TIntegerField;
    sdsitentradaBOBASEPISAJUSTE: TStringField;
    sdsitentradaBOBASECOFINSAJUSTE: TStringField;
    sdsitentradaVLCUSTOBRUTO: TFMTBCDField;
    sdsitentradaVLCUSTOLIQUIDO: TFMTBCDField;
    sdsitentradaPRCOMISSAO: TFloatField;
    sdsitentradaALSUPERSIMPLES: TFloatField;
    sdsitentradaVLSUPERSIMPLES: TFMTBCDField;
    sdsitentradaVLCOMISSAO: TFMTBCDField;
    sdsitentradaVLCUSTOTOTAL: TFMTBCDField;
    sdsitentradaVLPRECOVENDA: TFMTBCDField;
    sdsitentradaVLPRECOANTERIOR: TFMTBCDField;
    sdsitentradaPRFRETE: TFloatField;
    sdsitentradaVLIPIITEM: TFMTBCDField;
    sdsitentradaVLFRETEITEM: TFMTBCDField;
    sdsitentradaVLICMSSUBTRIBITEM: TFMTBCDField;
    sdsitentradaVLDESCONTOITEM: TFMTBCDField;
    sdsitentradaVLOUTDESPESAITEM: TFMTBCDField;
    sdsitentradaVLICMSDIFALIQUOTAITEM: TFMTBCDField;
    sdsitentradaCDBCCALCULOCREDITO: TStringField;
    sdsitentradaPRDESPESAITEM: TFloatField;
    sdsitentradaVLDESPESAITEM: TFMTBCDField;
    sdsitentradaVLLUCRO: TFMTBCDField;
    sdsitentradaDSINFADICIONAL: TBlobField;
    sdsitentradaCDPLCONTA: TIntegerField;
    sdsitentradaNUPLCONTA: TStringField;
    sdsitentradaVLPRECOPRAZO: TFMTBCDField;
    sdsitentradaPRLUCROPRAZO: TFloatField;
    sdsitentradaVLPRECOPRAZOANTERIOR: TFMTBCDField;
    sdsitentradaVLLUCROPRAZO: TFMTBCDField;
    sdsitentradaBOAJUSTEIPI: TStringField;
    sdsitentradaNMPLCONTA: TStringField;
    sdsitentradaNMPRODUTO: TStringField;
    sdsitentradaNUCLFISCAL: TStringField;
    sdsitentradaNMUNIDADE: TStringField;
    sdsitentradaBOSERVICO: TStringField;
    sdsitentradaBOLOTEIMEI: TStringField;
    sdsautpagtoCDAUTPAGTO: TIntegerField;
    sdsautpagtoCDSTAUTPAGTO: TIntegerField;
    sdsautpagtoCDTPPAGAMENTO: TIntegerField;
    sdsautpagtoCDENTRADA: TIntegerField;
    sdsautpagtoCDCNTCUSTO: TIntegerField;
    sdsautpagtoCDTPCOBRANCA: TIntegerField;
    sdsautpagtoCDPLCONTA: TIntegerField;
    sdsautpagtoCDUSUARIOI: TIntegerField;
    sdsautpagtoCDUSUARIOA: TIntegerField;
    sdsautpagtoCDCOMPUTADORI: TIntegerField;
    sdsautpagtoCDCOMPUTADORA: TIntegerField;
    sdsautpagtoCDUSUARIOBAIXA: TIntegerField;
    sdsautpagtoCDCONTA: TIntegerField;
    sdsautpagtoNUAUTPAGTO: TStringField;
    sdsautpagtoDTEMISSAO: TDateField;
    sdsautpagtoDTVENCIMENTO: TDateField;
    sdsautpagtoDTPRORROGACAO: TDateField;
    sdsautpagtoVLAUTPAGTO: TFMTBCDField;
    sdsautpagtoPRMORADIARIA: TFloatField;
    sdsautpagtoDSHISTORICO: TStringField;
    sdsautpagtoDTBAIXA: TDateField;
    sdsautpagtoVLBAIXA: TFMTBCDField;
    sdsautpagtoVLPREVISTO: TFMTBCDField;
    sdsautpagtoVLDESCONTO: TFMTBCDField;
    sdsautpagtoPRMULTA: TFloatField;
    sdsautpagtoVLMULTA: TFMTBCDField;
    sdsautpagtoDSOBSERVACAO: TBlobField;
    sdsautpagtoVLDEVOLUCAO: TFMTBCDField;
    sdsautpagtoVLABATIMENTO: TFMTBCDField;
    sdsautpagtoVLSALDO: TFMTBCDField;
    sdsautpagtoVLDEDUCAO: TFMTBCDField;
    sdsautpagtoVLACRESCIMO: TFMTBCDField;
    sdsautpagtoVLJUROS: TFMTBCDField;
    sdsautpagtoVLRECEBIDO: TFMTBCDField;
    sdsautpagtoBOENVIADO: TStringField;
    sdsautpagtoBOIMPRESSA: TStringField;
    sdsautpagtoNUPLCONTA: TStringField;
    sdsautpagtoDSPARCELA: TStringField;
    sdsautpagtoDTENTRADA: TDateField;
    sdsautpagtoTSINCLUSAO: TSQLTimeStampField;
    sdsautpagtoTSALTERACAO: TSQLTimeStampField;
    sdsautpagtoCDUSUARIOAPROVACAO: TIntegerField;
    sdsautpagtoTSAPROVACAO: TSQLTimeStampField;
    sdsautpagtoCDCOMPUTADORAPROVACAO: TIntegerField;
    sdsautpagtoNMUSUARIO: TStringField;
    sdsentradaefd0450CDENTRADAEFD0450: TIntegerField;
    sdsentradaefd0450CDENTRADA: TIntegerField;
    sdsentradaefd0450CDEFD0450: TIntegerField;
    sdsentradaefd0450CDUSUARIOI: TIntegerField;
    sdsentradaefd0450CDUSUARIOA: TIntegerField;
    sdsentradaefd0450CDCOMPUTADORI: TIntegerField;
    sdsentradaefd0450CDCOMPUTADORA: TIntegerField;
    sdsentradaefd0450DSCOMPLEMENTO: TStringField;
    sdsentradaefd0450TSINCLUSAO: TSQLTimeStampField;
    sdsentradaefd0450TSALTERACAO: TSQLTimeStampField;
    cbxcdtpentrada: TcxDBLookupComboBox;
    cbxnudocfiscalicms: TcxDBLookupComboBox;
    cdssdsentradaefd0450: TDataSetField;
    cdssdsautpagto: TDataSetField;
    cdssdsitentrada: TDataSetField;
    cdsitentradaCDENTRADA: TIntegerField;
    cdsitentradaCDPRODUTO: TIntegerField;
    cdsitentradaCDCNTCUSTO: TIntegerField;
    cdsitentradaCDCFOP: TIntegerField;
    cdsitentradaCDDIGITADO: TStringField;
    cdsitentradaDSITENTRADA: TStringField;
    cdsitentradaBOALTERACUSTOMEDIO: TStringField;
    cdsitentradaQTITEM: TFloatField;
    cdsitentradaVLUNITARIO: TFMTBCDField;
    cdsitentradaVLTOTAL: TFMTBCDField;
    cdsitentradaPRDESCONTO: TFloatField;
    cdsitentradaVLDESCONTO: TFMTBCDField;
    cdsitentradaVLBASEICMS: TFMTBCDField;
    cdsitentradaALICMS: TFloatField;
    cdsitentradaVLICMS: TFMTBCDField;
    cdsitentradaALICMSRED: TFloatField;
    cdsitentradaVLBASEICMSRED: TFMTBCDField;
    cdsitentradaVLBASEIPI: TFMTBCDField;
    cdsitentradaALIPI: TFloatField;
    cdsitentradaVLIPI: TFMTBCDField;
    cdsitentradaVLFRETE: TFMTBCDField;
    cdsitentradaVLSEGURO: TFMTBCDField;
    cdsitentradaPSLIQUIDO: TFloatField;
    cdsitentradaPSBRUTO: TFloatField;
    cdsitentradaBORECUPERAICMS: TStringField;
    cdsitentradaBORECUPERAIPI: TStringField;
    cdsitentradaBORECUPERAPIS: TStringField;
    cdsitentradaVLBASEPIS: TFMTBCDField;
    cdsitentradaALPIS: TFloatField;
    cdsitentradaVLPIS: TFMTBCDField;
    cdsitentradaVLBASECOFINS: TFMTBCDField;
    cdsitentradaALCOFINS: TFloatField;
    cdsitentradaVLCOFINS: TFMTBCDField;
    cdsitentradaPRCUSTO: TFMTBCDField;
    cdsitentradaPRVIGOR: TFMTBCDField;
    cdsitentradaVLOUTDESPESA: TFMTBCDField;
    cdsitentradaVLCUSTOMEDIO: TFMTBCDField;
    cdsitentradaVLCUSTO: TFMTBCDField;
    cdsitentradaBORECUPERACOFINS: TStringField;
    cdsitentradaDTFABRICACAO: TDateField;
    cdsitentradaDTVALIDADE: TDateField;
    cdsitentradaVLSALDOVALOR: TFMTBCDField;
    cdsitentradaPRLUCRO: TFloatField;
    cdsitentradaVLICMSRED: TFMTBCDField;
    cdsitentradaALICMSSUBTRIB: TFloatField;
    cdsitentradaVLICMSSUBTRIB: TFMTBCDField;
    cdsitentradaVLBASEICMSSUBTRIB: TFMTBCDField;
    cdsitentradaVLVENDA: TFMTBCDField;
    cdsitentradaPRLUCROATACADO: TFloatField;
    cdsitentradaPRLUCROESPECIAL: TFloatField;
    cdsitentradaVLATACADO: TFMTBCDField;
    cdsitentradaVLESPECIAL: TFMTBCDField;
    cdsitentradaCDMODBCICMS: TIntegerField;
    cdsitentradaCDMODBCSTICMS: TIntegerField;
    cdsitentradaPRMRGVLADICIONADOICMSSUBTRIB: TFloatField;
    cdsitentradaPRREDBCICMS: TFloatField;
    cdsitentradaNUSTICMS: TStringField;
    cdsitentradaNUSTIPI: TStringField;
    cdsitentradaNUSTCOFINS: TStringField;
    cdsitentradaNUSTPIS: TStringField;
    cdsitentradaBORECUPERAAJUSTEICMS: TStringField;
    cdsitentradaBOICMSAJUSTE: TStringField;
    cdsitentradaBOBASEIPIAJUSTE: TStringField;
    cdsitentradaBOAJUSTETOTAL: TStringField;
    cdsitentradaBOBASEICMSAJUSTE: TStringField;
    cdsitentradaBONDIFERENCIALALIQUOTA: TStringField;
    cdsitentradaVLICMSDIFALIQUOTA: TFMTBCDField;
    cdsitentradaBODIFERENCIALALIQUOTA: TStringField;
    cdsitentradaCDITENTRADA: TIntegerField;
    cdsitentradaCDUSUARIOI: TIntegerField;
    cdsitentradaCDUSUARIOA: TIntegerField;
    cdsitentradaCDCOMPUTADORI: TIntegerField;
    cdsitentradaCDCOMPUTADORA: TIntegerField;
    cdsitentradaTSINCLUSAO: TSQLTimeStampField;
    cdsitentradaTSALTERACAO: TSQLTimeStampField;
    cdsitentradaBORECUPERAIPIESPECIAL: TStringField;
    cdsitentradaCDITORDCOMPRA: TIntegerField;
    cdsitentradaCDORDCOMPRA: TIntegerField;
    cdsitentradaBOBASEPISAJUSTE: TStringField;
    cdsitentradaBOBASECOFINSAJUSTE: TStringField;
    cdsitentradaVLCUSTOBRUTO: TFMTBCDField;
    cdsitentradaVLCUSTOLIQUIDO: TFMTBCDField;
    cdsitentradaPRCOMISSAO: TFloatField;
    cdsitentradaALSUPERSIMPLES: TFloatField;
    cdsitentradaVLSUPERSIMPLES: TFMTBCDField;
    cdsitentradaVLCOMISSAO: TFMTBCDField;
    cdsitentradaVLCUSTOTOTAL: TFMTBCDField;
    cdsitentradaVLPRECOVENDA: TFMTBCDField;
    cdsitentradaVLPRECOANTERIOR: TFMTBCDField;
    cdsitentradaPRFRETE: TFloatField;
    cdsitentradaVLIPIITEM: TFMTBCDField;
    cdsitentradaVLFRETEITEM: TFMTBCDField;
    cdsitentradaVLICMSSUBTRIBITEM: TFMTBCDField;
    cdsitentradaVLDESCONTOITEM: TFMTBCDField;
    cdsitentradaVLOUTDESPESAITEM: TFMTBCDField;
    cdsitentradaVLICMSDIFALIQUOTAITEM: TFMTBCDField;
    cdsitentradaCDBCCALCULOCREDITO: TStringField;
    cdsitentradaPRDESPESAITEM: TFloatField;
    cdsitentradaVLDESPESAITEM: TFMTBCDField;
    cdsitentradaVLLUCRO: TFMTBCDField;
    cdsitentradaDSINFADICIONAL: TBlobField;
    cdsitentradaCDPLCONTA: TIntegerField;
    cdsitentradaNUPLCONTA: TStringField;
    cdsitentradaVLPRECOPRAZO: TFMTBCDField;
    cdsitentradaPRLUCROPRAZO: TFloatField;
    cdsitentradaVLPRECOPRAZOANTERIOR: TFMTBCDField;
    cdsitentradaVLLUCROPRAZO: TFMTBCDField;
    cdsitentradaBOAJUSTEIPI: TStringField;
    cdsitentradaNMPLCONTA: TStringField;
    cdsitentradaNMPRODUTO: TStringField;
    cdsitentradaNUCLFISCAL: TStringField;
    cdsitentradaNMUNIDADE: TStringField;
    cdsitentradaBOSERVICO: TStringField;
    cdsitentradaBOLOTEIMEI: TStringField;
    cdsitentradasdsitentradalote: TDataSetField;
    cdsautpagtoCDAUTPAGTO: TIntegerField;
    cdsautpagtoCDSTAUTPAGTO: TIntegerField;
    cdsautpagtoCDTPPAGAMENTO: TIntegerField;
    cdsautpagtoCDENTRADA: TIntegerField;
    cdsautpagtoCDCNTCUSTO: TIntegerField;
    cdsautpagtoCDTPCOBRANCA: TIntegerField;
    cdsautpagtoCDPLCONTA: TIntegerField;
    cdsautpagtoCDUSUARIOI: TIntegerField;
    cdsautpagtoCDUSUARIOA: TIntegerField;
    cdsautpagtoCDCOMPUTADORI: TIntegerField;
    cdsautpagtoCDCOMPUTADORA: TIntegerField;
    cdsautpagtoCDUSUARIOBAIXA: TIntegerField;
    cdsautpagtoCDCONTA: TIntegerField;
    cdsautpagtoNUAUTPAGTO: TStringField;
    cdsautpagtoDTEMISSAO: TDateField;
    cdsautpagtoDTVENCIMENTO: TDateField;
    cdsautpagtoDTPRORROGACAO: TDateField;
    cdsautpagtoVLAUTPAGTO: TFMTBCDField;
    cdsautpagtoPRMORADIARIA: TFloatField;
    cdsautpagtoDSHISTORICO: TStringField;
    cdsautpagtoDTBAIXA: TDateField;
    cdsautpagtoVLBAIXA: TFMTBCDField;
    cdsautpagtoVLPREVISTO: TFMTBCDField;
    cdsautpagtoVLDESCONTO: TFMTBCDField;
    cdsautpagtoPRMULTA: TFloatField;
    cdsautpagtoVLMULTA: TFMTBCDField;
    cdsautpagtoDSOBSERVACAO: TBlobField;
    cdsautpagtoVLDEVOLUCAO: TFMTBCDField;
    cdsautpagtoVLABATIMENTO: TFMTBCDField;
    cdsautpagtoVLSALDO: TFMTBCDField;
    cdsautpagtoVLDEDUCAO: TFMTBCDField;
    cdsautpagtoVLACRESCIMO: TFMTBCDField;
    cdsautpagtoVLJUROS: TFMTBCDField;
    cdsautpagtoVLRECEBIDO: TFMTBCDField;
    cdsautpagtoBOENVIADO: TStringField;
    cdsautpagtoBOIMPRESSA: TStringField;
    cdsautpagtoNUPLCONTA: TStringField;
    cdsautpagtoDSPARCELA: TStringField;
    cdsautpagtoDTENTRADA: TDateField;
    cdsautpagtoTSINCLUSAO: TSQLTimeStampField;
    cdsautpagtoTSALTERACAO: TSQLTimeStampField;
    cdsautpagtoCDUSUARIOAPROVACAO: TIntegerField;
    cdsautpagtoTSAPROVACAO: TSQLTimeStampField;
    cdsautpagtoCDCOMPUTADORAPROVACAO: TIntegerField;
    cdsautpagtoNMUSUARIO: TStringField;
    cdsitentradaloteCDITENTRADALOTE: TIntegerField;
    cdsitentradaloteCDITENTRADA: TIntegerField;
    cdsitentradaloteCDITLOTE: TIntegerField;
    cdsitentradaloteCDUSUARIOI: TIntegerField;
    cdsitentradaloteCDUSUARIOA: TIntegerField;
    cdsitentradaloteCDCOMPUTADORI: TIntegerField;
    cdsitentradaloteCDCOMPUTADORA: TIntegerField;
    cdsitentradaloteTSINCLUSAO: TSQLTimeStampField;
    cdsitentradaloteTSALTERACAO: TSQLTimeStampField;
    cdsitentradaloteNUIMEI: TStringField;
    sdsitentradaloteCDITENTRADALOTE: TIntegerField;
    sdsitentradaloteCDITENTRADA: TIntegerField;
    sdsitentradaloteCDITLOTE: TIntegerField;
    sdsitentradaloteCDUSUARIOI: TIntegerField;
    sdsitentradaloteCDUSUARIOA: TIntegerField;
    sdsitentradaloteCDCOMPUTADORI: TIntegerField;
    sdsitentradaloteCDCOMPUTADORA: TIntegerField;
    sdsitentradaloteTSINCLUSAO: TSQLTimeStampField;
    sdsitentradaloteTSALTERACAO: TSQLTimeStampField;
    sdsitentradaloteNUIMEI: TStringField;
    cdsentradaefd0450CDENTRADAEFD0450: TIntegerField;
    cdsentradaefd0450CDENTRADA: TIntegerField;
    cdsentradaefd0450CDEFD0450: TIntegerField;
    cdsentradaefd0450CDUSUARIOI: TIntegerField;
    cdsentradaefd0450CDUSUARIOA: TIntegerField;
    cdsentradaefd0450CDCOMPUTADORI: TIntegerField;
    cdsentradaefd0450CDCOMPUTADORA: TIntegerField;
    cdsentradaefd0450DSCOMPLEMENTO: TStringField;
    cdsentradaefd0450TSINCLUSAO: TSQLTimeStampField;
    cdsentradaefd0450TSALTERACAO: TSQLTimeStampField;
    cdsentradaefd0450sdsentradac111: TDataSetField;
    cdsentradac111CDENTRADAC111: TIntegerField;
    cdsentradac111CDTPC111: TIntegerField;
    cdsentradac111CDENTRADAEFD0450: TIntegerField;
    cdsentradac111CDUSUARIOI: TIntegerField;
    cdsentradac111CDUSUARIOA: TIntegerField;
    cdsentradac111CDCOMPUTADORI: TIntegerField;
    cdsentradac111CDCOMPUTADORA: TIntegerField;
    cdsentradac111NUPROCESSO: TStringField;
    cdsentradac111TSINCLUSAO: TSQLTimeStampField;
    cdsentradac111TSALTERACAO: TSQLTimeStampField;
    sdsentradac111CDENTRADAC111: TIntegerField;
    sdsentradac111CDTPC111: TIntegerField;
    sdsentradac111CDENTRADAEFD0450: TIntegerField;
    sdsentradac111CDUSUARIOI: TIntegerField;
    sdsentradac111CDUSUARIOA: TIntegerField;
    sdsentradac111CDCOMPUTADORI: TIntegerField;
    sdsentradac111CDCOMPUTADORA: TIntegerField;
    sdsentradac111NUPROCESSO: TStringField;
    sdsentradac111TSINCLUSAO: TSQLTimeStampField;
    sdsentradac111TSALTERACAO: TSQLTimeStampField;
    edtdtemissao: TcxDBDateEdit;
    edtdtsaida: TcxDBDateEdit;
    edtnuserie: TcxDBTextEdit;
    edtnuchavenfe: TcxDBTextEdit;
    ckbBOICMSSUBTRIBNTOTAL: TcxDBCheckBox;
    ckbBOICMSSTITEM: TcxDBCheckBox;
    ckbboretencaopis: TcxDBCheckBox;
    ckbboretencaocofins: TcxDBCheckBox;
    ckbBOCREDITOSTTRANSPORTE: TcxDBCheckBox;
    ckbBODESCONTOITEM: TcxDBCheckBox;
    ckbBOIPIBCICMS: TcxDBCheckBox;
    ckbBOARREDONDAR: TcxDBCheckBox;
    ckbBONARREDONDARCOFINS: TcxDBCheckBox;
    ckbBONARREDONDARPIS: TcxDBCheckBox;
    edtVLBaSeICMSSUBTRIB: TcxDBCalcEdit;
    edtVLICMSSUBTRIB: TcxDBCalcEdit;
    edtVLINSS: TcxDBCalcEdit;
    edtVLIRRF: TcxDBCalcEdit;
    edtALFRETESUB: TcxDBCalcEdit;
    edtVLFRETESUB: TcxDBCalcEdit;
    edtVLISS: TcxDBCalcEdit;
    edtVLCONTRIBSOCIAL: TcxDBCalcEdit;
    edtVLBASEFRETESUB: TcxDBCalcEdit;
    edtPSLIQUIDO: TcxDBCalcEdit;
    edtPSBRUTO: TcxDBCalcEdit;
    edtQTVOLUME: TcxDBCalcEdit;
    edtPRDESCONTO: TcxDBCalcEdit;
    edtVLDESCONTO: TcxDBCurrencyEdit;
    memDSOBSERVACAO: TcxDBMemo;
    memDSXML: TcxDBMemo;
    grditentrada: TcxGrid;
    tbv: TcxGridDBTableView;
    lvlitentrada: TcxGridLevel;
    tbvCDCFOP: TcxGridDBColumn;
    tbvCDDIGITADO: TcxGridDBColumn;
    tbvBOALTERACUSTOMEDIO: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    tbvVLUNITARIO: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvPRDESCONTO: TcxGridDBColumn;
    tbvVLDESCONTO: TcxGridDBColumn;
    tbvVLBASEICMS: TcxGridDBColumn;
    tbvALICMS: TcxGridDBColumn;
    tbvVLICMS: TcxGridDBColumn;
    tbvALICMSRED: TcxGridDBColumn;
    tbvVLBASEICMSRED: TcxGridDBColumn;
    tbvVLBASEIPI: TcxGridDBColumn;
    tbvALIPI: TcxGridDBColumn;
    tbvVLIPI: TcxGridDBColumn;
    tbvVLFRETE: TcxGridDBColumn;
    tbvVLSEGURO: TcxGridDBColumn;
    tbvPSLIQUIDO: TcxGridDBColumn;
    tbvPSBRUTO: TcxGridDBColumn;
    tbvBORECUPERAICMS: TcxGridDBColumn;
    tbvBORECUPERAIPI: TcxGridDBColumn;
    tbvBORECUPERAPIS: TcxGridDBColumn;
    tbvVLBASEPIS: TcxGridDBColumn;
    tbvALPIS: TcxGridDBColumn;
    tbvVLPIS: TcxGridDBColumn;
    tbvVLBASECOFINS: TcxGridDBColumn;
    tbvALCOFINS: TcxGridDBColumn;
    tbvVLCOFINS: TcxGridDBColumn;
    tbvPRCUSTO: TcxGridDBColumn;
    tbvPRVIGOR: TcxGridDBColumn;
    tbvVLOUTDESPESA: TcxGridDBColumn;
    tbvVLCUSTOMEDIO: TcxGridDBColumn;
    tbvVLCUSTO: TcxGridDBColumn;
    tbvBORECUPERACOFINS: TcxGridDBColumn;
    tbvDTFABRICACAO: TcxGridDBColumn;
    tbvDTVALIDADE: TcxGridDBColumn;
    tbvNUCNTCUSTO: TcxGridDBColumn;
    tbvPRLUCRO: TcxGridDBColumn;
    tbvALICMSSUBTRIB: TcxGridDBColumn;
    tbvVLICMSSUBTRIB: TcxGridDBColumn;
    tbvVLBASEICMSSUBTRIB: TcxGridDBColumn;
    tbvVLVENDA: TcxGridDBColumn;
    tbvPRLUCROATACADO: TcxGridDBColumn;
    tbvPRLUCROESPECIAL: TcxGridDBColumn;
    tbvVLATACADO: TcxGridDBColumn;
    tbvVLESPECIAL: TcxGridDBColumn;
    tbvCDMODBCICMS: TcxGridDBColumn;
    tbvCDMODBCSTICMS: TcxGridDBColumn;
    tbvPRMRGVLADICIONADOICMSSUBTRIB: TcxGridDBColumn;
    tbvNUSTICMS: TcxGridDBColumn;
    tbvNUSTIPI: TcxGridDBColumn;
    tbvNUSTCOFINS: TcxGridDBColumn;
    tbvNUSTPIS: TcxGridDBColumn;
    tbvBORECUPERAAJUSTEICMS: TcxGridDBColumn;
    tbvBOICMSAJUSTE: TcxGridDBColumn;
    tbvBOBASEIPIAJUSTE: TcxGridDBColumn;
    tbvBOAJUSTETOTAL: TcxGridDBColumn;
    tbvBOBASEICMSAJUSTE: TcxGridDBColumn;
    tbvBONDIFERENCIALALIQUOTA: TcxGridDBColumn;
    tbvVLICMSDIFALIQUOTA: TcxGridDBColumn;
    tbvBODIFERENCIALALIQUOTA: TcxGridDBColumn;
    tbvBORECUPERAIPIESPECIAL: TcxGridDBColumn;
    tbvCDORDCOMPRA: TcxGridDBColumn;
    tbvBOBASEPISAJUSTE: TcxGridDBColumn;
    tbvBOBASECOFINSAJUSTE: TcxGridDBColumn;
    tbvVLCUSTOBRUTO: TcxGridDBColumn;
    tbvVLCUSTOLIQUIDO: TcxGridDBColumn;
    tbvPRCOMISSAO: TcxGridDBColumn;
    tbvALSUPERSIMPLES: TcxGridDBColumn;
    tbvVLSUPERSIMPLES: TcxGridDBColumn;
    tbvVLCOMISSAO: TcxGridDBColumn;
    tbvVLCUSTOTOTAL: TcxGridDBColumn;
    tbvVLPRECOVENDA: TcxGridDBColumn;
    tbvVLPRECOANTERIOR: TcxGridDBColumn;
    tbvPRFRETE: TcxGridDBColumn;
    tbvVLIPIITEM: TcxGridDBColumn;
    tbvVLFRETEITEM: TcxGridDBColumn;
    tbvVLICMSSUBTRIBITEM: TcxGridDBColumn;
    tbvVLDESCONTOITEM: TcxGridDBColumn;
    tbvVLOUTDESPESAITEM: TcxGridDBColumn;
    tbvVLICMSDIFALIQUOTAITEM: TcxGridDBColumn;
    tbvCDBCCALCULOCREDITO: TcxGridDBColumn;
    tbvPRDESPESAITEM: TcxGridDBColumn;
    tbvVLDESPESAITEM: TcxGridDBColumn;
    tbvVLLUCRO: TcxGridDBColumn;
    tbvDSINFADICIONAL: TcxGridDBColumn;
    tbvNUPLCONTA: TcxGridDBColumn;
    tbvVLPRECOPRAZO: TcxGridDBColumn;
    tbvPRLUCROPRAZO: TcxGridDBColumn;
    tbvVLPRECOPRAZOANTERIOR: TcxGridDBColumn;
    tbvVLLUCROPRAZO: TcxGridDBColumn;
    tbvBOAJUSTEIPI: TcxGridDBColumn;
    tbvNMPLCONTA: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvNUCLFISCAL: TcxGridDBColumn;
    tbvNMUNIDADE: TcxGridDBColumn;
    cbxNUSTDOCUMENTO: TcxDBLookupComboBox;
    cbxCDGRUPOTENSAOC500: TcxDBLookupComboBox;
    cbxCDTPLIGACAOC500: TcxDBLookupComboBox;
    cbxCDCLCONSUMOENERGIA: TcxDBLookupComboBox;
    cbxCDCLCONSUMOAGUA: TcxDBLookupComboBox;
    edtNUSUBSERIE: TcxDBTextEdit;
    edtNUENTRADACT: TcxDBButtonEdit;
    txtDTEMISSAOCT: TcxDBLabel;
    txtDTENTRADACT: TcxDBLabel;
    txtNMFORNECEDORCT: TcxDBLabel;
    grdentradaefd0450: TcxGrid;
    tbventradaefd0450: TcxGridDBTableView;
    lvlentradaefd0450Level1: TcxGridLevel;
    grdentradac111: TcxGrid;
    tbventradac111: TcxGridDBTableView;
    lvlentradac111: TcxGridLevel;
    tbventradaefd0450CDEFD0450: TcxGridDBColumn;
    tbventradaefd0450DSCOMPLEMENTO: TcxGridDBColumn;
    tbventradac111CDTPC111: TcxGridDBColumn;
    tbventradac111NUPROCESSO: TcxGridDBColumn;
    txtVLBASEPIS: TcxDBLabel;
    txtVLBASECOFINS: TcxDBLabel;
    txtVLPIS: TcxDBLabel;
    txtVLCOFINS: TcxDBLabel;
    edtNMESPECIEVOLUME: TcxDBTextEdit;
    txtVLTOTALCT: TcxDBLabel;
    edtcodigo: TcxTextEdit;
    actloteserie: TAction;
    dxBarButton16: TdxBarButton;
    gbxautpagto: TcxGroupBox;
    Bevel1: TBevel;
    lblcdcondpagto: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblplconta: TLabel;
    edtdshistorico: TcxDBTextEdit;
    cbxcdtpcobranca: TcxDBLookupComboBox;
    bdcduplicata: TdxBarDockControl;
    txtnmplconta: TcxDBLabel;
    edtnuplconta: TcxDBButtonEdit;
    grdautpagto: TcxGrid;
    tbvautpagto: TcxGridDBTableView;
    tbvautpagtoCDAUTPAGTO: TcxGridDBColumn;
    tbvautpagtoDTVENCIMENTO: TcxGridDBColumn;
    tbvautpagtoVLAUTPAGTO: TcxGridDBColumn;
    tbvautpagtoVLSALDO: TcxGridDBColumn;
    tbvautpagtoCDSTAUTPAGTO: TcxGridDBColumn;
    tbvautpagtoCDTPCOBRANCA: TcxGridDBColumn;
    tbvautpagtoNUPLCONTA: TcxGridDBColumn;
    tbvautpagtoNMPLCONTA: TcxGridDBColumn;
    tbvautpagtoNUCOR: TcxGridDBColumn;
    tbvautpagtoNUCORCONTA: TcxGridDBColumn;
    lvlautpagto: TcxGridLevel;
    lblcntcusto: TLabel;
    gbxfrete: TcxGroupBox;
    lblcdtransportadora: TLabel;
    lblnuplaca: TLabel;
    lblvlfrete: TLabel;
    edtCDTRANSPORTADORA: TcxDBButtonEdit;
    edtNUPLACA: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    ckbBOFRETEITEM: TcxDBCheckBox;
    cbxcdtpfrete: TcxDBLookupComboBox;
    edtVLFRETE: TcxDBCalcEdit;
    gbxemitente: TcxGroupBox;
    lblcodigo: TLabel;
    edtcdcliente: TcxDBButtonEdit;
    edtcdfornecedor: TcxDBButtonEdit;
    pnl: TPanel;
    lblcdtpfrete: TLabel;
    sdsNMPLCONTA: TStringField;
    cdsNMPLCONTA: TStringField;
    bmg1Bar3: TdxBar;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    splautpagto: TcxSplitter;
    Panel2: TPanel;
    Bevel18: TBevel;
    Bevel17: TBevel;
    Bevel16: TBevel;
    Bevel9: TBevel;
    Bevel8: TBevel;
    Bevel19: TBevel;
    Bevel26: TBevel;
    Bevel25: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel22: TBevel;
    Bevel21: TBevel;
    lblvlbaseicms: TLabel;
    lblvlipi: TLabel;
    lblresumoprodutos: TLabel;
    Label7: TLabel;
    lblresumoservico: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    lblvlicms: TLabel;
    Label21: TLabel;
    txtVLICMS: TcxDBLabel;
    txtVLBASEICMS: TcxDBLabel;
    edtVLOUTDESPESA: TcxDBCalcEdit;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxDBCalcEdit3: TcxDBCalcEdit;
    edtVLSEGURO: TcxDBCalcEdit;
    txtVLBASEICMSSUBTRIB: TcxDBLabel;
    txtVLICMSSUBTRIB: TcxDBLabel;
    txtVLPRODUTO: TcxDBLabel;
    txtVLSERVICO: TcxDBLabel;
    txtVLIPI: TcxDBLabel;
    cxDBLabel6: TcxDBLabel;
    lblvlbaseipi: TLabel;
    txtvlbaseipi: TcxDBLabel;
    sdsautpagtoNMPLCONTA: TStringField;
    cdsautpagtoNMPLCONTA: TStringField;
    tbvautpagtoNMUSUARIO: TcxGridDBColumn;
    tbvautpagtoTSAPROVACAO: TcxGridDBColumn;
    sdsitentradaCDORDPRODUCAO: TIntegerField;
    cdsitentradaCDORDPRODUCAO: TIntegerField;
    tbvCDORDPRODUCAO: TcxGridDBColumn;
    sdsRZSOCIALC: TStringField;
    sdsRZSOCIALF: TStringField;
    txtRZSOCIALC: TDBText;
    txtRZSOCIALF: TDBText;
    cdsRZSOCIALF: TStringField;
    cdsRZSOCIALC: TStringField;
    edtcdcfop: TcxDBButtonEdit;
    txtnmcfop: TDBText;
    sdsNMCFOP: TStringField;
    cdsNMCFOP: TStringField;
    txtnmtransportadora: TDBText;
    sdsNMTRANSPORTADORA: TStringField;
    cdsNMTRANSPORTADORA: TStringField;
    edtcdcondpagto: TcxDBButtonEdit;
    txtnmcondpagto: TDBText;
    sdsNMCONDPAGTO: TStringField;
    cdsNMCONDPAGTO: TStringField;
    sdsNUCNTCUSTO: TStringField;
    cdsNUCNTCUSTO: TStringField;
    sdsitentradaNUCNTCUSTO: TStringField;
    cdsitentradaNUCNTCUSTO: TStringField;
    edtnucntcusto: TcxDBButtonEdit;
    txtnmcntcusto: TcxDBLabel;
    sdsNMCNTCUSTO: TStringField;
    cdsNMCNTCUSTO: TStringField;
    sdsitentradaNMCNTCUSTO: TStringField;
    cdsitentradaNMCNTCUSTO: TStringField;
    tbvNMCNTCUSTO: TcxGridDBColumn;
    tbvautpagtoNUCNTCUSTO: TcxGridDBColumn;
    tbvautpagtoNMCNTCUSTO: TcxGridDBColumn;
    sdsautpagtoNUCNTCUSTO: TStringField;
    sdsautpagtoNMCNTCUSTO: TStringField;
    cdsautpagtoNUCNTCUSTO: TStringField;
    cdsautpagtoNMCNTCUSTO: TStringField;
    sdsCDTPFRETE: TStringField;
    cdsCDTPFRETE: TStringField;
    cdsitentradaVLRETENCAO: TFMTBCDField;
    sdsitentradaVLRETENCAO: TFMTBCDField;
    cdsVLRETENCAO: TFMTBCDField;
    sdsVLRETENCAO: TFMTBCDField;
    sdsitentradaVLBASEICMSNTRIBUTAVEL: TFMTBCDField;
    sdsitentradaVLBASEICMSORIGINAL: TFMTBCDField;
    sdsitentradaVLTOTALCOMPLETO: TFMTBCDField;
    txtnmfornecedor: TDBText;
    Label6: TLabel;
    txtnmcliente: TDBText;
    sdsNMCLIENTE: TStringField;
    sdsNMFORNECEDOR: TStringField;
    cdsNMCLIENTE: TStringField;
    cdsNMFORNECEDOR: TStringField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDFORNECEDOR: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsCDTRANSPORTADORA: TLargeintField;
    sdsitentradaCDEMPRESA: TLargeintField;
    sdsautpagtoCDEMPRESA: TLargeintField;
    sdsautpagtoCDFORNECEDOR: TLargeintField;
    sdsitentradaloteCDEMPRESA: TLargeintField;
    sdsentradaefd0450CDEMPRESA: TLargeintField;
    sdsentradac111CDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDFORNECEDOR: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsCDTRANSPORTADORA: TLargeintField;
    cdsitentradaVLBASEICMSNTRIBUTAVEL: TFMTBCDField;
    cdsitentradaVLBASEICMSORIGINAL: TFMTBCDField;
    cdsitentradaVLTOTALCOMPLETO: TFMTBCDField;
    cdsitentradaCDEMPRESA: TLargeintField;
    cdsautpagtoCDEMPRESA: TLargeintField;
    cdsautpagtoCDFORNECEDOR: TLargeintField;
    cdsitentradaloteCDEMPRESA: TLargeintField;
    cdsentradaefd0450CDEMPRESA: TLargeintField;
    cdsentradac111CDEMPRESA: TLargeintField;
    sdsautpagtoNUCOR: TIntegerField;
    cdsautpagtoNUCOR: TIntegerField;
    sdsBORATEIOCNTCUSTO: TStringField;
    sdsBORATEIOPLCONTA: TStringField;
    cdsBORATEIOCNTCUSTO: TStringField;
    cdsBORATEIOPLCONTA: TStringField;
    ckbBORATEIOPLCONTA: TcxDBCheckBox;
    ckbborateiocntcusto: TcxDBCheckBox;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actGerarAutPagtoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAbrirFornecedorExecute(Sender: TObject);
    procedure actAbrirClienteExecute(Sender: TObject);
    procedure actAbrirCondpagtoExecute(Sender: TObject);
    procedure actAbrirTransportadoraExecute(Sender: TObject);
    procedure actAbrirAutPagtoExecute(Sender: TObject);
    procedure actimprimirautpagtoExecute(Sender: TObject);
    procedure actExibirCamposExecute(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure actabrirtpentradaExecute(Sender: TObject);
    procedure actimprimirentradaExecute(Sender: TObject);
    procedure edtnuserieKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure actinsercaocdbarraExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actImportarNFEExecute(Sender: TObject);
    procedure actimprimirnfeExecute(Sender: TObject);
    procedure actexportarxmlExecute(Sender: TObject);
    procedure actparcelamentoExecute(Sender: TObject);
    procedure actbaixarautpagtoExecute(Sender: TObject);
    procedure actmarkupExecute(Sender: TObject);
    procedure actimportarxmlExecute(Sender: TObject);
    procedure actabrirordcompraExecute(Sender: TObject);
    procedure actdevolucaoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actimprimirautorizacaopagtoExecute(Sender: TObject);
    procedure actmanifestodestinatarioExecute(Sender: TObject);
    procedure chkboicmsstitemClick(Sender: TObject);
    procedure actaprovacaoExecute(Sender: TObject);
    procedure actdesaprovacaoExecute(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure dtsAutpagtoStateChange(Sender: TObject);
    procedure cdsentradac111BeforePost(DataSet: TDataSet);
    procedure cdsentradaefd0450BeforePost(DataSet: TDataSet);
    procedure cdsitentradaloteBeforePost(DataSet: TDataSet);
    procedure cdsitentradaloteNewRecord(DataSet: TDataSet);
    procedure cdsautpagtoAfterOpen(DataSet: TDataSet);
    procedure cdsautpagtoAfterScroll(DataSet: TDataSet);
    procedure cdsautpagtoBeforePost(DataSet: TDataSet);
    procedure cdsautpagtoNewRecord(DataSet: TDataSet);
    procedure cdsitentradaAfterPost(DataSet: TDataSet);
    procedure cdsitentradaBeforePost(DataSet: TDataSet);
    procedure cdsitentradaNewRecord(DataSet: TDataSet);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure lbltpentradaDblClick(Sender: TObject);
    procedure cbx3PropertiesChange(Sender: TObject);
    procedure edtnuchavenfeKeyPress(Sender: TObject; var Key: Char);
    procedure lbltpcobrancaDblClick(Sender: TObject);
    procedure cdsDSHISTORICOValidate(Sender: TField);
    procedure cdsCDCONDPAGTOValidate(Sender: TField);
    procedure cdsCDTPCOBRANCAValidate(Sender: TField);
    procedure cdsBODESCONTOITEMValidate(Sender: TField);
    procedure cdsALFRETESUBValidate(Sender: TField);
    procedure grditentradaCDORDCOMPRAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtNUENTRADACTPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNUENTRADACTValidate(Sender: TField);
    procedure cdsVLFRETEValidate(Sender: TField);
    procedure cdsCDTPFRETEValidate(Sender: TField);
    procedure lblcdtransportadoraDblClick(Sender: TObject);
    procedure cdsBOFRETEITEMValidate(Sender: TField);
    procedure cdsNUPLACAValidate(Sender: TField);
    procedure edtCDTRANSPORTADORAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure lblcodigoDblClick(Sender: TObject);
    procedure edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsBOCREDITOSTTRANSPORTEValidate(Sender: TField);
    procedure cdsDTEMISSAOValidate(Sender: TField);
    procedure cdsautpagtoDTVENCIMENTOValidate(Sender: TField);
    procedure cdsautpagtoVLAUTPAGTOValidate(Sender: TField);
    procedure cdsitentradaCDDIGITADOValidate(Sender: TField);
    procedure cdsitentradaQTITEMValidate(Sender: TField);
    procedure cdsitentradaNUPLCONTAValidate(Sender: TField);
    procedure cdsitentradaCDCFOPValidate(Sender: TField);
    procedure cdsitentradaPRLUCROValidate(Sender: TField);
    procedure cdsitentradaVLVENDAValidate(Sender: TField);
    procedure cdsitentradaPRLUCROATACADOValidate(Sender: TField);
    procedure cdsitentradaVLATACADOValidate(Sender: TField);
    procedure cdsitentradaPRLUCROESPECIALValidate(Sender: TField);
    procedure cdsitentradaVLESPECIALValidate(Sender: TField);
    procedure cdsitentradaBORECUPERAAJUSTEICMSValidate(Sender: TField);
    procedure cdsitentradaNUSTICMSValidate(Sender: TField);
    procedure cdsitentradaNUSTIPIValidate(Sender: TField);
    procedure cdsCDFORNECEDORValidate(Sender: TField);
    procedure cdsNUDOCFISCALICMSValidate(Sender: TField);
    procedure cdsNUENTRADAValidate(Sender: TField);
    procedure cdsCDTPENTRADAValidate(Sender: TField);
    procedure cdsCDCFOPValidate(Sender: TField);
    procedure cdsCDTRANSPORTADORAValidate(Sender: TField);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actloteserieExecute(Sender: TObject);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsNUPLCONTAValidate(Sender: TField);
    procedure tbvNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtCDTRANSPORTADORAKeyPress(Sender: TObject; var Key: Char);
    procedure cdsVLDESCONTOValidate(Sender: TField);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvautpagtoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure cdsitentradaloteAfterDelete(DataSet: TDataSet);
    procedure cdsitentradaloteAfterInsert(DataSet: TDataSet);
    procedure cdsitentradaAfterScroll(DataSet: TDataSet);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvautpagtoKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure tbvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsentradaefd0450NewRecord(DataSet: TDataSet);
    procedure cdsentradac111NewRecord(DataSet: TDataSet);
    procedure tbvautpagtoNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsautpagtoNUPLCONTAValidate(Sender: TField);
    procedure cdsVLICMSSUBTRIBValidate(Sender: TField);
    procedure cdsVLSEGUROValidate(Sender: TField);
    procedure cdsVLOUTDESPESAValidate(Sender: TField);
    procedure tbvCDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitentradaCDORDPRODUCAOValidate(Sender: TField);
    procedure cdsitentradaALICMSValidate(Sender: TField);
    procedure TornarNuloAliquotaZerada(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure txtRZSOCIALCDblClick(Sender: TObject);
    procedure txtRZSOCIALFDblClick(Sender: TObject);
    procedure cbxcdtpentradaEnter(Sender: TObject);
    procedure edtcdcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdcfopPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdcondpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdcondpagtoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvCDCFOPPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNUCNTCUSTOValidate(Sender: TField);
    procedure tbvNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitentradaNUCNTCUSTOValidate(Sender: TField);
    procedure tbvautpagtoNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsautpagtoNUCNTCUSTOValidate(Sender: TField);
    procedure cdsitentradaBOAJUSTETOTALValidate(Sender: TField);
    procedure cdsitentradaBOBASEICMSAJUSTEValidate(Sender: TField);
    procedure cdsitentradaBOBASEIPIAJUSTEValidate(Sender: TField);
    procedure cdsitentradaBOICMSAJUSTEValidate(Sender: TField);
    procedure tbvautpagtoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private      { Private declarations }
    exibe : string;
    tela : TTelaEntrada;
    livrofiscal : TLivroFiscal;
    produto     : TProduto;
    autpagto    : TAutPagto;
    transportadora : TTransportadora;
    codigoinsercao : string;
    reg : TRegraSTRecord;
    procedure Ajustar;
    procedure LerConfiguracao;
    procedure setVisibleFreteSub;
    procedure clearFreteSub;
    procedure Gravartotais(sender:TObject);
    procedure Gravartotais2(sender:TObject);
    procedure AtribuirImposto(q: tclientdataset; bo, imposto:string; vl:currency=0; vlbase:currency=0);overload;
    procedure CalcularImpostoItem(imposto:string; ajuste_base:Boolean=false);
    procedure AtribuirImpostoNF(bo, imposto:string; vl:currency=0; vlbase:currency=0);
    procedure CalcularImpostoIcmsItem;
    procedure CalcularImpostoIpiItem;
    procedure RatearValoresItens(bo, nmcampo:string);
    procedure AtualizarPlanoContasItEntrada;
    procedure AtualizarPlanoContasAutpagto;
    procedure AtualizarTpCobrancaAutpagto;
    procedure GerarAutpagto_;
    procedure setVlfreteItem;
    procedure setVlicmssubtribItem;
    procedure checkapsquitadas; // verificar se as ap's foram quitadas para travar o documento
    procedure exibirChaveNFE(nudocfiscalicms:string);
    function  AchouBaixa:boolean;
    procedure setAutpagtoEnabled(boativar:Boolean);
    procedure AbrirTabelas;
    procedure setrecord(codigo:Integer);
    procedure setVisibleTransportadora;
    procedure setst;
    procedure setRegistroRegraST;
    procedure checkcfop;
    procedure checkQtdImei;
    procedure ConsistirNotaFiscal;
    procedure ConsistirLivroFiscal;
    procedure ConsistirCondpagto;
    procedure AtualizarAutPagto;
    procedure consistirserieu;
    procedure checknuchavenfe;
    function ItemVazio(nmcampo: string): boolean;
    procedure consistiricmssubtrib;
    procedure checkFreteItem;
    procedure checkDescontoItem;
    procedure checkIcmsstItem;
    procedure checkCntcusto;
    procedure checkInsercaoItens;
    procedure checkPlconta;
    procedure checkRateioSubTribItem;
    procedure check_dtvalidade_fabricacao(DataSet: TDataSet);
    procedure check_qtitem;
    procedure AtualizarCentroCustoAutpagto(Sender: TField);
    procedure AtualizarCentroCustoItEntrada(Sender: TField);
    function  check_adnt_fornecedor: boolean;
  public  { Public declarations }
    registro    : TRegistro;
    function  Abrir(codigo:integer):boolean;
    procedure Novo(nuentrada: string; cdordcompra: Integer; cditordcompra, cdtpentrada, cdcfop, nudocfiscalicms, nuchave, nuserie:string; dtemissao: TDate);
  end;

const
  artigoI  = 'a';
var
  frmentrada: Tfrmentrada;

implementation

uses uDtmMain,
  uMain,
  uloteserie,
  uLocalizar,
  uLocalizarProduto,
  ulocalizarCliente,
  ulocalizarTransportadora,
  ulocalizarentrada,
  ulocalizarFornecedor,
  uLocalizarPedidoMaterial,
  uLocalizarSaida,
  uprodutoinsercaocdbarras,
  uentradaimportarxml,
  pcnNFe,
  uLocalizarOrdCompra,
  uautpagtoparcelamento,
  uimprimirrelatoriopadrao,
  pcnProcNFe,
  ACBrCTeConhecimentos,
  pcteCTe,
  umarkupentrada,
  uctereport,
  udlggerardevolucaosaida,
  classegerarautpagto,
  Variants,
  udlgxmltotreeview,
  uAssinaturaDigital, classeadntfornecedor, uDlgEscolhePedido;

{$R *.DFM}

procedure Tfrmentrada.Ajustar;
var
  vlduplicata : currency;
begin // verificar se o valor total da nota é igual ao valor total das duplicatas
  if cdsautpagto.RecordCount <= 0 then
  begin
    exit;
  end;
  vlduplicata := 0;
  cdsautpagto.First;
  cdsautpagto.DisableControls;
  try
    while not cdsautpagto.Eof do
    begin
      vlduplicata := vlduplicata + cdsautpagto.fieldbyname(_vlautpagto).ascurrency;
      cdsautpagto.Next;
    end;
  finally
    cdsautpagto.EnableControls;
  end;
  if vlduplicata = cds.fieldbyname(_vltotal).ascurrency then
  begin
    Exit;
  end;
  if tela.dados.Existebaixaautpagto(cds.fieldbyname(_cdentrada).asstring) then
  begin
    MessageDlg('O valor da compra não pode ser alterado quando há quitação de algum contas a pagar.'#13'Volte a compra para o valor original para continuar.', mtInformation, [mbOK], 0);
    abort;
  end;
  if messagedlg('O valor total da compra ('+formatfloat(__moeda, cds.fieldbyname(_vltotal).ascurrency)+
                ') difere do valor total do Contas a Pagar ('+formatfloat(__moeda, vlduplicata)+')'#13+
                'O sistema vai ajustar o valor do Contas a Pagar de acordo com o valor da compra.'#13'Ajustar?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    actGerarAutPagtoExecute(actGerarAutPagto);
  end;
end;

procedure Tfrmentrada.setrecord(codigo:Integer);
var
  nutop : integer;
  procedure setdescricaoitens;
  begin
    lblcntcusto.Visible   := tela.dados.tpentrada.bocntcusto = _s;
    edtnucntcusto.Visible := tela.dados.tpentrada.bocntcusto = _s;
    tbvNUCNTCUSTO.Visible := tela.dados.tpentrada.bocntcusto = _s;
    tbvNMCNTCUSTO.Visible := tela.dados.tpentrada.bocntcusto = _s;
    lblplconta.Visible   := tela.dados.tpentrada.boplconta = _s;
    edtnuplconta.Visible := tela.dados.tpentrada.boplconta = _s;
    txtnmplconta.Visible := tela.dados.tpentrada.boplconta = _s;
    tbvNUPLCONTA.Visible := tela.dados.tpentrada.boplconta = _s;
    tbvNMPLCONTA.Visible := tela.dados.tpentrada.boplconta = _s;
    tbvDTFABRICACAO.Visible := tela.dados.tpentrada.bodtfabricacao = _s;
    tbvDTVALIDADE.Visible   := tela.dados.tpentrada.bodtvalidade = _s;
  end;
  procedure setlucro;
  begin
    tbvVLESPECIAL.Visible      := tela.dados.tpentrada.bolucro = _s;
    tbvPRLUCROESPECIAL.Visible := tela.dados.tpentrada.bolucro = _s;
    tbvVLATACADO.Visible       := tela.dados.tpentrada.bolucro = _s;
    tbvPRLUCROATACADO.Visible  := tela.dados.tpentrada.bolucro = _s;
    tbvVLVENDA.Visible         := tela.dados.tpentrada.bolucro = _s;
    tbvPRLUCRO.Visible         := tela.dados.tpentrada.bolucro = _s;
  end;
  procedure seticms;
  begin
    tbvALICMS.Visible     := tela.dados.tpentrada.boicms = _s;
    tbvVLICMS.Visible     := tela.dados.tpentrada.boicms = _s;
    txtvlbaseicms.Visible := tela.dados.tpentrada.boicms = _s;
    txtvlicms.Visible     := tela.dados.tpentrada.boicms = _s;
    lblvlbaseicms.Visible := tela.dados.tpentrada.boicms = _s;
    lblvlicms.Visible     := tela.dados.tpentrada.boicms = _s;
  end;
  procedure setipi;
  begin
    tbvALIPI.Visible       := tela.dados.tpentrada.boipi = _s;
    tbvVLIPI.Visible       := tela.dados.tpentrada.boipi = _s;
    ckbBOIPIBCICMS.Visible := (tela.dados.tpentrada.boipi = _s) and (tela.dados.tpentrada.boipibcicms = _s);
    lblvlipi.visible       := tela.dados.tpentrada.boipi = _s;
    txtvlipi.Visible       := tela.dados.tpentrada.boipi = _s;
  end;
  procedure seticmssubstituicao;
  begin
    if (not (tela.dados.tpentrada.boipi = _s)) and (not (tela.dados.tpentrada.boicms = _s)) and (tela.dados.tpentrada.boicmssubst = _s) then
    begin
      lblaliquota.Visible := false;
    end;
    lblicmssubst.Visible           := tela.dados.tpentrada.boicmssubst = _s;
    edtVLBaSeICMSSUBTRIB.Visible   := tela.dados.tpentrada.boicmssubst = _s;
    edtVLICMSSUBTRIB.Visible       := tela.dados.tpentrada.boicmssubst = _s;
    ckbBOICMSSUBTRIBNTOTAL.Visible := tela.dados.tpentrada.boicmssubst = _s;
    ckbboicmsstitem.Visible        := tela.dados.tpentrada.boicmssubst = _s;
  end;
  procedure setiss;
  begin
    lbliss.Visible   := tela.dados.tpentrada.boretencaoiss = _s;
    edtvliss.Visible := tela.dados.tpentrada.boretencaoiss = _s;
  end;
  procedure setirrf;
  begin
    lblirrf.Visible   := tela.dados.tpentrada.boretencaoirrf = _s;
    edtvlirrf.Visible := tela.dados.tpentrada.boretencaoirrf = _s;
  end;
  procedure setinss;
  begin
    lblinss.Visible   := tela.dados.tpentrada.boretencaoinss = _s;
    edtvlinss.Visible := tela.dados.tpentrada.boretencaoinss = _s;
  end;
  procedure setcontribsocial;
  begin
    lblcontribsocial.Visible   := tela.dados.tpentrada.boretencaocontribsocial = _s;
    edtvlcontribsocial.Visible := tela.dados.tpentrada.boretencaocontribsocial = _s;
  end;
  procedure setpis;
  begin
    lblpis.Visible           := tela.dados.tpentrada.bopis = _s;
    txtvlbasepis.Visible     := tela.dados.tpentrada.bopis = _s;
    txtvlpis.Visible         := tela.dados.tpentrada.bopis = _s;
    ckbboretencaopis.Visible := (tela.dados.tpentrada.boretencaopis = _s) and (tela.dados.tpentrada.bopis = _s);
  end;
  procedure setcofins;
  begin
    if (tela.dados.tpentrada.boipi <> _s) and (tela.dados.tpentrada.boicms <> _s) and (tela.dados.tpentrada.boicmssubst <> _s) and
       (tela.dados.tpentrada.boretencaoiss <> _s) and (tela.dados.tpentrada.bopis <> _s) and (tela.dados.tpentrada.bocofins <> _s) then
    begin
      nutop := txtvlbasepis.Top + 8;
    end;
    lblcofins.Visible           := tela.dados.tpentrada.bocofins = _s;
    txtvlbasecofins.Visible     := tela.dados.tpentrada.bocofins = _s;
    txtvlcofins.Visible         := tela.dados.tpentrada.bocofins = _s;
    ckbboretencaocofins.Visible := (tela.dados.tpentrada.boretencaocofins = _s) and (tela.dados.tpentrada.bocofins = _s);
  end;
  procedure setlabeltributacao;
  begin
    if (tela.dados.tpentrada.boipi <> _s) and
       (tela.dados.tpentrada.boicms <> _s) and
       (tela.dados.tpentrada.boicmssubst <> _s) and
       (tela.dados.tpentrada.boretencaoiss <> _s) and
       (tela.dados.tpentrada.bopis <> _s) and
       (tela.dados.tpentrada.bocofins <> _s) then
    begin
      lblbasecalculo.visible   := false;
      lblaliquota.visible      := false;
      lblvalor.visible         := false;
    end;
    lblbasecalculo.Top   := nutop;
    lblaliquota.Top      := nutop;
    lblvalor.Top         := nutop;
  end;
  procedure setfornecedorcliente;
  begin
    if tela.dados.tpentrada.tpforncliente = _F then
    begin
      lblcodigo.Caption := Maiuscula(_Fornecedor)
    end
    else
    begin
      lblcodigo.Caption := Maiuscula(_Cliente);
    end;
    edtcdcliente.Visible := tela.dados.tpentrada.tpforncliente = _c;
    edtcdfornecedor.Visible := tela.dados.tpentrada.tpforncliente = _f;
  end;
  procedure setfrete;
  begin
    gbxfrete.Visible := tela.dados.tpentrada.bofrete = _s;    // Configura Freete - Valor Frete, Transportadora, placa, UF da Placa]
    if tela.dados.tpentrada.bofrete = _s then
    begin
      tbvVLFRETE.Visible := cds.FieldByName(_bofreteitem).AsString = _s;
    end;
    lblpsliquido.Visible := tela.dados.tpentrada.bofrete = _s;
    edtpsliquido.Visible := tela.dados.tpentrada.bofrete = _s;
    lblpsbruto.Visible   := tela.dados.tpentrada.bofrete = _s;
    edtpsbruto.Visible   := tela.dados.tpentrada.bofrete = _s;
    lblqtvolume.Visible  := tela.dados.tpentrada.bofrete = _s;
    edtqtvolume.Visible  := tela.dados.tpentrada.bofrete = _s;
    lblnmespecievolume.Visible := tela.dados.tpentrada.bofrete = _s;
    edtnmespecievolume.Visible := tela.dados.tpentrada.bofrete = _s;
  end;
begin
  nutop                    := 2;
  lblbasecalculo.visible   := true;
  lblaliquota.visible      := true;
  lblvalor.visible         := true;
  lblpercente.Visible      := false;
  lblvalorpercente.Visible := false;
  lblpercente.Top          := 120;
  lblvalorpercente.Top     := 120;
  tela.dados.tpentrada.Select(codigo);
  if (dts.State = dsEdit) or (dts.State = dsInsert) then
  begin
    actinsercaocdbarra.Enabled := tela.dados.tpentrada.boinsercaocdbarra = _s;
    actinsercaocdbarra.Visible := tela.dados.tpentrada.boinsercaocdbarra = _s;
    if tela.dados.tpentrada.nudocfiscalicms <> '' then
    begin
      cbxnudocfiscalicms.Text := tela.dados.tpentrada.nudocfiscalicms;
    end;
  end;
  tbvDSINFADICIONAL.Visible := tela.dados.tpentrada.boinfadicional = _s;
  gbxautpagto.Visible := tela.dados.tpentrada.boautpagto = _s;
  splautpagto.Visible := tela.dados.tpentrada.boautpagto = _s;
  setdescricaoitens;
  tbvCDORDCOMPRA.Visible := tela.dados.tpentrada.boordcompra = _s;
  tbvCDORDproducao.Visible := tela.dados.tpentrada.boordproducao = _s;
  actmarkup.Visible := tela.dados.tpentrada.bomarkup = _s;
  setfrete;
  tbvVLDESCONTO.Visible := cds.FieldByName(_bodescontoitem).AsString = _s;;
  setlucro;
  seticms;
  setipi;
  seticmssubstituicao;
  setiss;
  setirrf;
  setinss;
  setcontribsocial;
  setpis;
  setcofins;
  setlabeltributacao;
  setfornecedorcliente;
  ckbBOCREDITOSTTRANSPORTE.Visible := (tela.dados.tpentrada.bofrete = _s) and (tela.dados.tpentrada.boicms = _s);
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and (tela.dados.tpentrada.boautpagto <> _s) and (not cds.FieldByName(_cdcondpagto).IsNull) then
  begin
    cds.FieldByName(_cdcondpagto).Clear;
  end;
  if (cds.State = dsinsert) and (tela.dados.tpentrada.boipibcicms = _s) then
  begin
    cds.fieldbyname(_boipibcicms).asstring := _S;
  end;
end;

procedure Tfrmentrada.checkapsquitadas; // verificar se as ap's foram quitadas para travar o documento
var
  ativar : boolean;
begin
  if cdsautpagto.RecordCount = 0 then
  begin
    actaprovacao.Visible := False;
    actaprovacao.Enabled := False;
    Exit;
  end;
  cdsAutPagto.First;
  ativar := true;
  while not cdsautpagto.Eof do
  begin
    if cdsautpagto.fieldbyname(_cdstautpagto).Asinteger <> 1 then
    begin
      ativar := false;
      break;
    end;
    cdsautpagto.Next;
  end;
  cdsAutPagto.First;
  actExcluir.Enabled       := ativar;
  actGerarAutPagto.Enabled := ativar;
  actaprovacao.Visible     := ativar and cdsAutPagto.FieldByName(_cdusuarioaprovacao).IsNull;
  actaprovacao.Enabled     := ativar and cdsAutPagto.FieldByName(_cdusuarioaprovacao).IsNull;
  actdesaprovacao.Visible  := ativar and (not cdsAutPagto.FieldByName(_cdusuarioaprovacao).IsNull);
  actdesaprovacao.Enabled  := ativar and (not cdsAutPagto.FieldByName(_cdusuarioaprovacao).IsNull);
end;

function Tfrmentrada.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmentrada.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure Tfrmentrada.actNovoExecute(Sender: TObject);
begin
  registro.Novo(sender);
  edtcodigo.SetFocus;
end;

procedure Tfrmentrada.checkQtdImei;
begin
  cdsitentrada.DisableControls;
  try
    cdsitentrada.first;
    while not cdsitentrada.eof do
    begin
      if (cdsitentrada.FieldByName(_boLoteimei).AsString = _s) and (cdsitentrada.fieldbyname(_qtitem).Asfloat > cdsitentradalote.recordcount) then
      begin
        messagedlg('Quantidade de IMEI menor do que a quantidade do item'#13'no produto '+cdsitentrada.fieldbyname(_nmproduto).asstring+'.', mtinformation, [mbok], 0);
        abort;
      end;
      cdsitentrada.next;
    end;
  finally
    cdsitentrada.EnableControls;
  end;
end;

procedure Tfrmentrada.ConsistirNotaFiscal;
begin
  edtCodigo.setfocus;
  if edtCodigo.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nota+' '+_Fiscal]), mtinformation, [mbok], 0);
    edtCodigo.setfocus;
    abort;
  end;
  if strtoint(edtCodigo.Text) = 0 then
  begin
    messagedlg('Nota Fiscal não pode ser valor 0.', mterror, [mbok], 0);
    edtCodigo.setfocus;
    abort;
  end;
end;

procedure Tfrmentrada.ConsistirLivroFiscal;
begin
  if cds.FieldByName(_dtemissao).AsDateTime <= strtodate(_30_12_1899) then
  begin
    messagedlg('Data inválida.', mtinformation, [mbok], 0);
    cds.fieldbyname(_dtemissao).FocusControl;
    abort;
  end;
  if (not empresa.livro.bolivrofiscal) or (not ((cds.State = dsinsert) or (cds.State = dsedit))) or livrofiscal.permitealterarnota(cds.fieldbyname(_dtsaida).asdateTime) then
  begin
    exit;
  end;
  messagedlg('Não é permitida a inserção ou alteração de uma nota fiscal '#13'quando já existe um livro fiscal na data de emissão do documento.'#13'Altere a data de entrada para o mês posterior ou exclua o livro fiscal para continuar.', mtInformation, [mbok], 0);
  cds.fieldbyname(_dtsaida).FocusControl;
  abort;
end;

procedure Tfrmentrada.ConsistirCondpagto;
begin
  if not cds.fieldbyname(_cdcondpagto).IsNull then
  begin
    exit;
  end;
  edtCDCONDPAGTO.SetFocus;
  messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Condicao+' '+_de+' '+_Pagamento]), mtinformation, [mbok], 0);
  abort;
end;

procedure Tfrmentrada.AtualizarAutPagto;
begin
  if (tela.dados.tpentrada.boautpagto <> _s) or (not ((cds.state = dsinsert) or (cds.State = dsedit))) then
  begin
    exit;
  end;
  ConsistirCondpagto;
  if cds.State <> dsedit then
  begin
    exit;
  end;
  cdsautpagto.First;
  while not cdsautpagto.Eof do
  begin
    cdsautpagto.Edit;
    cdsautpagto.FieldByName(_dtemissao).asdateTime := cds.fieldbyname(_dtemissao).AsDateTime;
    cdsautpagto.FieldByName(_dtentrada).asdateTime := cds.fieldbyname(_DTSAIDA).AsDateTime;
    if empresa.entrada.tpsequencianuautpagto = _1 then
    begin
      cdsautpagto.fieldbyname(_dsparcela).asstring := inttostr(cdsautpagto.RecNo)+'/'+inttostr(cdsautpagto.RecordCount);
      if cdsautpagto.RecordCount > 1 then
      begin
        cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring+'/'+char(cdsautpagto.RecNo+64)
      end
      else
      begin
        cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring;
      end;
    end
    else if empresa.entrada.tpsequencianuautpagto = _2 then
    begin
      cdsautpagto.fieldbyname(_dsparcela).asstring := inttostr(cdsautpagto.RecNo)+'/'+inttostr(cdsautpagto.RecordCount);
      if cdsautpagto.RecordCount > 1 then
      begin
        cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring+'/'+inttostr(cdsautpagto.RecNo)
      end
      else
      begin
        cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring;
      end;
    end
    else if empresa.entrada.tpsequencianuautpagto = _3 then
    begin
      cdsautpagto.fieldbyname(_dsparcela).asstring := inttostr(cdsautpagto.RecNo)+'/'+inttostr(cdsautpagto.RecordCount);
      if cdsautpagto.RecordCount > 1 then
      begin
        cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring+'/'+char(cdsautpagto.RecNo+64)+'-'+char(cdsautpagto.RecNo+64+cdsautpagto.RecordCount)
      end
      else
      begin
        cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring;
      end;
    end
    else if empresa.entrada.tpsequencianuautpagto = _4 then
    begin
      cdsautpagto.fieldbyname(_dsparcela).asstring := inttostr(cdsautpagto.RecNo)+'/'+inttostr(cdsautpagto.RecordCount);
      if cdsautpagto.RecordCount > 1 then
      begin
        cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring+'/'+inttostr(cdsautpagto.RecNo)+'-'+inttostr(cdsautpagto.RecordCount)
      end
      else
      begin
        cdsautpagto.fieldbyname(_nuautpagto).asstring := cds.fieldbyname(_nuentrada).asstring;
      end;
    end;
    cdsautpagto.next;
  end;
end;

procedure Tfrmentrada.consistirserieu;
begin
  if edtnuserie.Text = _a then
  begin
    MessageDlg('Série A é inválida.'#13'Altere a série para poder continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (edtnuserie.Text = _U) and ((cbxnudocfiscalicms.Text <> _08) and (cbxnudocfiscalicms.Text <> _07)) then
  begin
    MessageDlg('Série U só deverá ser usado para Doc Fiscal ICMS 08 ou 07.'#13'Altere o Doc Fiscal ICMS para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (edtnuserie.Text = _b) and ((cbxnudocfiscalicms.Text <> _08) and (cbxnudocfiscalicms.Text <> _07)) then
  begin
    MessageDlg('Série B só deverá ser usado para Doc Fiscal ICMS 08 ou 07.'#13'Altere o Doc Fiscal ICMS para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (edtnuserie.Text <> _U) and (edtnuserie.Text <> _B) and (cbxnudocfiscalicms.Text = _08) then
  begin
    MessageDlg('Doc Fiscal ICMS 08 (Conhecimento de Transporte) só deverá ser usado para Série U ou B.'#13'Altere a Série para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (edtnuserie.Text <> _U) and (edtnuserie.Text <> _B) and (cbxnudocfiscalicms.Text = _07) then
  begin
    MessageDlg('Doc Fiscal ICMS 07 só deverá ser usado para Série U ou B.'#13'Altere a Série para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (edtnuserie.Text = '') and (cbxnudocfiscalicms.Text <> _06) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Serie]), mtinformation, [mbok], 0);
    edtnuserie.SetFocus;
    Abort;
  end;
end;

procedure Tfrmentrada.checknuchavenfe;
var
  nucnpj, cduf : string;
begin
  if (cds.FieldByName(_nudocfiscalicms).AsString <> _55) and (cds.FieldByName(_nudocfiscalicms).AsString <> _57) and (cds.fieldbyname(_nuchavenfe).AsString <> '') then // nao é documento nfe e tem chave preenchida, limpar a chave
  begin
    cds.FieldByName(_nuchavenfe).Clear;
  end;
  if (cds.FieldByName(_nudocfiscalicms).AsString = _55) or (cds.FieldByName(_nudocfiscalicms).AsString = _57)  then
  begin
    if (cds.fieldbyname(_nuchavenfe).AsString = '') and (cds.fieldbyname(_dtsaida).asdateTime >= strtodate('01/04/2012')) then // é documento nfe e nao tem chave preenchida
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__numero+' '+_da+' '+_Chave+' '+__eletronica]), mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
    cds.FieldByName(_nuchavenfe).AsString := removercaracteres(cds.FieldByName(_nuchavenfe).AsString);
    if (cds.FieldByName(_nuchavenfe).AsString<> '') and (length(cds.fieldbyname(_nuchavenfe).AsString) < 44) then // é documento nfe e tem chave preenchida com tamanho menor ou maior que 44 digitos
    begin
      messagedlg('Tamanho do Número da Chave Eletrônica está menor que 44 dígitos.', mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
    if (cds.FieldByName(_nuchavenfe).AsString<> '') and (length(cds.fieldbyname(_nuchavenfe).AsString) > 44) then
    begin
      messagedlg('Tamanho do Número da Chave Eletrônica está maior que 44 dígitos.', mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
    if tela.dados.tpentrada.tpforncliente = _f then
    begin
      cduf   := IntToStr(tela.tela.fornecedor.cduf);
      nucnpj := tela.tela.fornecedor.nucnpj;
    end
    else
    begin
      cduf   := IntToStr(tela.tela.cliente.cduf);
      nucnpj := tela.tela.cliente.nucnpj;
    end;
    if cduf <> copy(cds.fieldbyname(_nuchavenfe).asstring, 1, 2) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'O código da unidade federativa do emitente ('+cduf+') não confere com a posição 1 e 2 ('+Copy(cds.fieldbyname(_nuchavenfe).AsString, 1, 2)+').', mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
    if formatdatetime(_yymm, cds.fieldbyname(_dtemissao).asdateTime) <> copy(cds.fieldbyname(_nuchavenfe).asstring, 3, 4) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'O ano e mês da data de emissão ('+formatdatetime(_yymm, cds.fieldbyname(_dtemissao).asdateTime)+') da nota não confere com a posição 3 até a 6 ('+copy(cds.fieldbyname(_nuchavenfe).asstring, 3, 4)+').', mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
    if (cds.FieldByName(_nustdocumento).AsString <> _08) and (removercaracteres(nucnpj) <> copy(cds.fieldbyname(_nuchavenfe).asstring, 7, 14)) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'O CNPJ ('+removercaracteres(nucnpj)+') do emitente da nota não confere com a posição 7 até a 20 ('+copy(cds.fieldbyname(_nuchavenfe).asstring, 7, 14)+').', mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
    if cds.fieldbyname(_nudocfiscalicms).asstring <> copy(cds.fieldbyname(_nuchavenfe).asstring, 21, 2) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'O modelo ('+cds.fieldbyname(_nudocfiscalicms).asstring+') da nota não confere com a posição 21 e 22 ('+copy(cds.fieldbyname(_nuchavenfe).asstring, 21, 2)+').', mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
    if FormatarTextoEsquerda(cds.fieldbyname(_nuserie).asstring, 3, _0) <> copy(cds.fieldbyname(_nuchavenfe).asstring, 23, 3) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'A série ('+FormatarTextoEsquerda(cds.fieldbyname(_nuserie).asstring, 3, _0)+') da nota não confere com a posição 23 até a 25 ('+copy(cds.fieldbyname(_nuchavenfe).asstring, 23, 3)+').', mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
    if FormatarTextoEsquerda(edtCodigo.Text, 9,_0) <> copy(cds.fieldbyname(_nuchavenfe).asstring, 26, 9) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13'O número ('+FormatarTextoEsquerda(edtCodigo.Text, 9,_0)+') da nota não confere com a posição 26 até a 34 ('+copy(cds.fieldbyname(_nuchavenfe).asstring, 26, 9)+').', mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
    if Modulo11(Copy(cds.fieldbyname(_nuchavenfe).asstring, 1, 43)) <> Copy(cds.fieldbyname(_nuchavenfe).asstring, 44, 1) then
    begin
      messagedlg('Dígito verificador da da Chave Eletrônica inválido.'#13+
                 'O dígito ('+Modulo11(Copy(cds.fieldbyname(_nuchavenfe).asstring, 1, 43))+') da nota não confere com a posição 44 ('+Copy(cds.fieldbyname(_nuchavenfe).asstring, 44, 1)+').', mtinformation, [mbok], 0);
      cds.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
  end;
end;

function Tfrmentrada.ItemVazio(nmcampo:string):boolean;
begin
  result := false;
  cdsItEntrada.First;
  while not cdsItEntrada.Eof do
  begin
    if cdsItEntrada.FieldByName(nmcampo).AsString = '' then
    begin
      pgc.activepage := tbsproduto;
      cdsItEntrada.FieldByName(nmcampo).FocusControl;
      result := true;
      break;
    end;
    cdsItEntrada.Next;
  end;
end;

procedure Tfrmentrada.consistiricmssubtrib;
begin
  if (cds.FieldByName(_vlicmssubtrib).AsCurrency > 0) and (cds.FieldByName(_vlbaseicmssubtrib).AsCurrency = 0) then
  begin
    MessageDlg('Valor da Base do ICMS de Substituição Tributária obrigatório'#13'quando o valor do ICMS Substituição Tributária estiver preenchido.', mtInformation, [mbok], 0 );
    pgc.Properties.ActivePage := tbstributacao;
    cds.FieldByName(_vlbaseicmssubtrib).FocusControl;
    abort;
  end;
  if (cds.FieldByName(_vlicmssubtrib).AsCurrency = 0) and (cds.FieldByName(_vlbaseicmssubtrib).AsCurrency > 0) then
  begin
    MessageDlg('Valor do ICMS de Substituição Tributária obrigatório'#13'quando o valor da Base do ICMS Substituição Tributária estiver preenchido.', mtInformation, [mbok], 0 );
    pgc.Properties.ActivePage := tbstributacao;
    cds.FieldByName(_vlicmssubtrib).FocusControl;
    abort;
  end;
end;

procedure Tfrmentrada.checkFreteItem;
var
  vlfrete : Currency;
begin
  if cds.FieldByName(_bofreteitem).AsString <> _s then
  begin
    exit;
  end;
  vlfrete := 0;
  cdsItEntrada.DisableControls;
  try
    cdsItEntrada.First;
    while not cdsItEntrada.Eof do
    begin
      vlfrete := vlfrete + cdsItEntrada.fieldbyname(_vlfrete).AsCurrency;
      cdsItEntrada.Next;
    end;
    cds.FieldByName(_vlfrete).AsCurrency := vlfrete;
  finally
    cdsItEntrada.EnableControls;
  end;
end;

procedure Tfrmentrada.checkDescontoItem;
var
  vldesconto : Currency;
begin
  if cds.FieldByName(_bodescontoitem).AsString <> _s then
  begin
    exit;
  end;
  vldesconto := 0;
  cdsItEntrada.DisableControls;
  try
    cdsItEntrada.First;
    while not cdsItEntrada.Eof do
    begin
      vldesconto := vldesconto + cdsItEntrada.fieldbyname(_vldesconto).AsCurrency;
      cdsItEntrada.Next;
    end;
    cds.FieldByName(_vldesconto).AsCurrency := vldesconto;
  finally
    cdsItEntrada.EnableControls;
  end;
end;

procedure Tfrmentrada.checkIcmsstItem;
var
  vlicmsst : Currency;
begin
  vlicmsst := 0;
  cdsItEntrada.DisableControls;
  try
    cdsItEntrada.First;
    while not cdsItEntrada.Eof do
    begin
      vlicmsst := vlicmsst + cdsItEntrada.fieldbyname(_vlicmssubtrib).AsCurrency;
      cdsItEntrada.Next;
    end;
    cds.FieldByName(_vlicmssubtrib).AsCurrency := vlicmsst;
  finally
    cdsItEntrada.EnableControls;
  end;
end;

procedure Tfrmentrada.checkRateioSubTribItem;
var
  vlicmssubtrib : Currency;
begin
  if cds.FieldByName(_boicmsstitem).AsString = _s then
  begin
    checkIcmsstItem;
    exit;
  end;
  if cds.FieldByName(_vlicmssubtrib).AsCurrency = 0 then
  begin
    Exit;
  end;
  cdsItEntrada.DisableControls;
  try
    vlicmssubtrib := 0;
    cdsItEntrada.First;
    while not cdsItEntrada.Eof do
    begin
      vlicmssubtrib := vlicmssubtrib + cdsItEntrada.fieldbyname(_vlicmssubtrib).AsCurrency;
      cdsItEntrada.Next;
    end;
    if vlicmssubtrib = 0 then
    begin
      MessageDlg('Valor ICMS Substituição Tributária não foi rateado nos itens da nota.'#13'Verifique se o cfop dos itens é de substituiçao tributária.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if vlicmssubtrib < cds.FieldByName(_vlicmssubtrib).AsCurrency then
    begin
      MessageDlg('Soma dos valores do ICMS Substituição Tributária dos itens ('+FormatFloat(__moeda, vlicmssubtrib)+')'#13'não confere com o valor da nota ('+FormatFloat(__moeda, cds.FieldByName(_vlicmssubtrib).AsCurrency)+').'#13'Verifique se o cfop dos itens é de substituiçao tributária e os valores de cada item.', mtInformation, [mbOK], 0);
      Abort;
    end;
  finally
    cdsItEntrada.EnableControls;
  end;
end;

procedure Tfrmentrada.checkInsercaoItens;
begin
  if cdsItEntrada.RecordCount = 0 then
  begin
    MessageDlg('É obrigatório a inserção de ítens na compra.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure Tfrmentrada.checkCntcusto;
begin
  if (tela.dados.tpentrada.bocntcusto = _s) and ItemVazio(_nucntcusto) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Centro_de_Custo]), mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure Tfrmentrada.checkPlconta;
begin
  if (tela.dados.tpentrada.boplconta = _s) and (edtnuplconta.Text = '') and ItemVazio(_nuplconta) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Plano_de_Contas]), mtinformation, [mbok], 0);
    if edtnuplconta.Enabled then
    begin
      edtnuplconta.SetFocus;
    end;
    abort;
  end;
end;

procedure Tfrmentrada.actSalvarExecute(Sender: TObject);
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  tela.tela.select(cds);
  tela.tela.itentrada.Ler(cdsitentrada);
  tela.tela.itentrada.VerificarRecuperaoImposto(cdsitentrada);
  checkQtdImei;
  consistirnotafiscal;
  consistirserieU;
  consistirLivroFiscal;
  consistiricmssubtrib;
  checknuchavenfe;
  checkInsercaoItens;
  checkCntcusto;
  checkPlconta;
  checkDescontoItem;
  AtualizarAutpagto;
  gravartotais(sender);
  ajustar;
  checkFreteItem;
  checkRateioSubTribItem;
  checkapsquitadas;
  registro.salvar;
end;

procedure Tfrmentrada.actExcluirExecute(Sender: TObject);
  procedure check_livro_fiscal;
  begin
    if (not empresa.livro.bolivrofiscal) or livrofiscal.permitealterarnota(cds.fieldbyname(_dtsaida).asdateTime) then
    begin
      exit;
    end;
    messagedlg('Não é permitida a exclusão de uma nota fiscal '#13'com a data de entrada na faixa do livro fiscal gerado.', mtInformation, [mbok], 0);
    abort;
  end;
  procedure check_manifesto;
    function makesql:string;
    begin
      result := 'select count(*) from entradamanifesto where cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+cds.fieldbyname(_cdentrada).asstring;
    end;
  begin
    if RetornaSQLInteger(makesql)>0 then
    begin
      messagedlg('Não é permitida a exclusão de uma nota fiscal '#13'que já foi realizado o manifesto.', mtInformation, [mbok], 0);
      abort;
    end;
  end;
var
  codigo : integer;
  resposta : integer;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if cds.fieldbyname(_nuentrada).asstring <> edtcodigo.text then
  begin
    resposta := messagedlg('No momento está aberto o registro '+cds.fieldbyname(_nuentrada).asstring+#13'você gostaria de abrir registro '+edtcodigo.text+' para exclusão?', mtConfirmation, [mbyes, mbno], 0);
    if resposta = mryes then
    begin
      codigo := tela.dados.CodigoNotaFiscal(edtcodigo.text);
      if codigo <> -1 then
      begin
        if not abrir(codigo) then
        begin
          if messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mrno then
          begin
            edtcodigo.text := cds.fieldbyname(_nuentrada).asstring;
            exit;
          end;
          actNovoExecute(sender)
        end;
        edtcodigo.selectall;
      end
      else
      begin
        edtcodigo.text := cds.fieldbyname(_nuentrada).asstring;
        exit;
      end;
    end
    else if resposta = mrno then
    begin
      edtcodigo.Text := cds.fieldbyname(_nuentrada).asstring;
      exit;
    end;
  end; // verifica o status da autorização de pagamento para verificar se pode excluir
  cdsautpagto.DisableControls;
  try
    cdsautpagto.First;
    while not cdsautpagto.Eof do
    begin
      if not BooleandoCodigo(_stautpagto, cdsautpagto.fieldbyname(_cdstautpagto).asstring, _boexcluir) then
      begin
        messagedlg('Nota Fiscal não pode ser excluída.'#13'O status do contas a pagar '+cdsautpagto.fieldbyname(_cdautpagto).asstring+' não permite a sua exclusão.', mtinformation, [mbok], 0);
        exit;
      end;
      cdsautpagto.Next;
    end;
  finally
    cdsautpagto.EnableControls;
  end; // verifica a existência de baixa no movimento bancario
  cdsautpagto.DisableControls;
  try
    cdsautpagto.First;
    while not cdsautpagto.Eof do
    begin
      if CodigodoCampo(_baixa, cdsautpagto.fieldbyname(_cdautpagto).asstring, _cdautpagto) <> '' then
      begin
        messagedlg('Nota Fiscal não pode ser excluída.'#13'O contas a pagar '+cdsautpagto.fieldbyname(_cdautpagto).asstring+' possui baixa no movimento bancário.', mtinformation, [mbok], 0);
        exit;
      end;
      cdsautpagto.Next;
    end;
  finally
    cdsautpagto.EnableControls;
  end;
  check_Livro_fiscal;
  check_manifesto;
  registro.Excluir;
end;

procedure Tfrmentrada.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmentrada.actCancelarExecute(Sender: TObject);
begin
  if cdsItEntrada.state in [dsedit, dsinsert] then
  begin
    cdsItEntrada.Cancel;
  end;
  if (cdsautpagto.State = dsinsert) or (cdsautpagto.State = dsedit) then
  begin
    cdsautpagto.Cancel;
  end;
  registro.cancelar;
  setAutpagtoEnabled(True);
end;

procedure Tfrmentrada.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
end;

procedure Tfrmentrada.FormShow(Sender: TObject);
begin
  edtCodigo.SetFocus;
end;

procedure Tfrmentrada.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmentrada.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure Tfrmentrada.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure Tfrmentrada.actaprovacaoExecute(Sender: TObject);
var
  cdusuario :string;
begin
  if not assinaturadigital('Aprovar o pagamento da compra '+cds.FieldByName(_nuentrada).AsString+#13+
                           'para o fornecedor '+cds.FieldByName(_cdfornecedor).AsString+' - '+cds.FieldByName(_rzsocial+_f).asstring+#13+
                           'com o valor de '+formatfloat(__moeda, cds.FieldByName(_vltotal).AsCurrency)+'.', cdusuario) then
  begin
    exit;
  end;
  cds.DisableControls;
  try
    ExecutaSQL('update autpagto set cdusuarioaprovacao='+cdusuario+',cdcomputadoraprovacao='+vgcdcomputador+',tsaprovacao='+GettsBanco(tsBanco)+' where cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and cdentrada='+cds.fieldbyname(_cdentrada).AsString);
    cdsautpagto.First;
    while not cdsautpagto.Eof do
    begin
      autpagto.RegistrarHistoricoAprovacao(cdsautpagto.FieldByName(_cdautpagto).AsString, _a);
      cdsautpagto.Next;
    end;
    abrir(cds.fieldbyname(_cdentrada).asinteger);
  finally
    cds.EnableControls;
  end;
end;

procedure Tfrmentrada.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure Tfrmentrada.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure Tfrmentrada.actGerarAutPagtoExecute(Sender: TObject);
begin
  GerarAutpagto_;
  if lowercase(TComponent(sender).Name) = _actgerar+_autpagto then
  begin
    showmessage('Contas a Pagar gerada!');
  end;
  cdsautpagto.Close;
  cdsautpagto.Open;
end;

procedure Tfrmentrada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmentrada.actAbrirFornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmentrada.actAbrirClienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmentrada.actAbrirCondpagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmentrada.actAbrirTransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmentrada.actAbrirAutPagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsautpagto);
end;

procedure Tfrmentrada.actimprimirautpagtoExecute(Sender: TObject);
begin
  if cdsautpagto.RecordCount > 0 then
  begin
    ImpimirRelatorioPadrao1(567, 'where a.cdempresa='+empresa.cdempresa.tostring+' and a.cdautpagto='+cdsautpagto.fieldbyname(_CDAUTPAGTO).AsString);
  end;
end;

procedure Tfrmentrada.actExibirCamposExecute(Sender: TObject);
var
  nmfield, nmexibe, nmmarcado : TStrings;
  i, x : integer;
  boachou : Boolean;
begin
  nmfield   := TStringList.create;
  nmexibe   := TStringList.create;
  nmmarcado := TStringList.create;
  try // pega a lista dos compos com label
    for i := 0 to tbv.ColumnCount - 1 do
    begin
      nmfield.add(tbv.Columns[i].DataBinding.FieldName);
      nmexibe.add(tbv.Columns[i].Caption);
    end;
    for i := 0 to tbv.ColumnCount -1 do // identifica os itens marcados
    begin
      if tbv.Columns[i].Visible then
      begin
        nmmarcado.add(tbv.Columns[i].DataBinding.FieldName);
      end;
    end;
    if ExibirCampos(nmfield, nmexibe, nmmarcado) then // exibe os campos
    begin
      for i := 0 to tbv.ColumnCount - 1 do
      begin
        boachou := false;
        for x := 0 to nmmarcado.count - 1 do
        begin
          if tbv.Columns[i].DataBinding.FieldName = nmmarcado[x] then
          begin
            boachou := True;
            Break;
          end;
        end;
        tbv.Columns[i].Visible := boachou;
      end;
    end;
  finally
    freeandnil(nmexibe);
    freeandnil(nmmarcado);
    freeandnil(nmfield);
  end;
end;

procedure Tfrmentrada.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsItEntrada);
end;

procedure Tfrmentrada.actabrirtpentradaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmentrada.actimprimirentradaExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(324, 'where e.cdempresa='+empresa.cdempresa.tostring+' and e.cdentrada='+cds.fieldbyname(_cdentrada).asstring);
end;

procedure Tfrmentrada.edtnuserieKeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #13 then
  begin
    exit;
  end;
  SelectNext(sender as twincontrol, true, true);
  key := #0;
end;

procedure Tfrmentrada.FormDestroy(Sender: TObject);
begin
  FreeAndNil(livrofiscal);
  freeandnil(tela);
  FreeAndNil(produto);
  freeandnil(autpagto);
  freeandnil(transportadora);
  freeandnil(registro);
end;

procedure Tfrmentrada.actinsercaocdbarraExecute(Sender: TObject);
begin
  Insercaocdbarras(cdsItEntrada);
end;

procedure Tfrmentrada.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(_entrada, frmmain.tlbnew);
end;

procedure Tfrmentrada.actImportarNFEExecute(Sender: TObject);
var
  nfea: TACBrNFe;
  ctea : TACBrCTe;
  texto : TStringStream;
  nmfile : string;
  arquivo : TStrings;
  Entradaxml : TEntrada;
  function fornecedor_cadastrado:boolean;
  begin
    result := RegistroExiste(_fornecedor, _nucnpj+'='+quotedstr(Formatacnpj(nfea.NotasFiscais.Items[0].NFe.Emit.CNPJCPF)));
  end;
  procedure inserir_dados_nota;
    function ipi_faz_parte_base_calculo_icms:boolean;
    begin
      result := (nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI > 0) and ((nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC - nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd) = nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI)
    end;
  begin
    if ipi_faz_parte_base_calculo_icms then
    begin
      cds.fieldbyname(_BOIPIBCICMS).AsString := _S;
    end;
    edtCodigo.Text := inttostr(nfea.NotasFiscais.Items[0].NFe.Ide.nNF);
    cds.FieldByName(_cdtpentrada).AsInteger := entradaxml.cdtpentrada;
    cds.fieldbyname(_nuserie).AsString     := IntToStr(nfea.NotasFiscais.Items[0].NFe.Ide.serie);
    cds.fieldbyname(_dtemissao).asdateTime := nfea.NotasFiscais.Items[0].NFe.Ide.dEmi;
    cds.fieldbyname(_dtsaida).asdateTime := entradaxml.dtentrada;
    if qregistro.stringdocodigo(_tpentrada, entradaxml.cdtpentrada, _TPFORNCLIENTE) = _F then
    begin
      cds.fieldbyname(_cdfornecedor).AsString := CodigodoCampo(_fornecedor,Formatacnpj(nfea.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) ,_nucnpj);
    end
    else if qregistro.stringdocodigo(_tpentrada, entradaxml.cdtpentrada, _TPFORNCLIENTE) = _C then
    begin
      cds.fieldbyname(_cdcliente).AsString := CodigodoCampo(_cliente, Formatacnpj(nfea.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) ,_nucnpj);
    end;
    if nfea.NotasFiscais.Items[0].NFe.transp.modfrete = mfContaEmitente then
    begin
      cds.fieldbyname(_cdtpfrete).asstring := _0
    end
    else if nfea.NotasFiscais.Items[0].NFe.transp.modfrete = mfContaDestinatario then
    begin
      cds.fieldbyname(_cdtpfrete).asstring := _1
    end
    else if nfea.NotasFiscais.Items[0].NFe.transp.modfrete = mfContaTerceiros then
    begin
      cds.fieldbyname(_cdtpfrete).asstring := _2
    end
    else if nfea.NotasFiscais.Items[0].NFe.transp.modfrete = mfSemFrete then
    begin
      cds.fieldbyname(_cdtpfrete).asstring := _9;
    end;
    if entradaxml.cdtransportadora <> 0 then
    begin
      cds.fieldbyname(_cdtransportadora).AsLargeInt := entradaxml.cdtransportadora;
    end;
    if entradaxml.nuplconta <> '' then
    begin
      edtnuplconta.Text := entradaxml.nuplconta;
    end;
    if entradaxml.nucntcusto <> '' then
    begin
      edtnucntcusto.Text := entradaxml.nucntcusto;
    end;
    cds.fieldbyname(_nuplaca).asstring              := nfea.NotasFiscais.Items[0].NFe.transp.veicTransp.placa;
    cds.fieldbyname(_nudocfiscalicms).asstring      := _55;
    cds.fieldbyname(_nustdocumento).asstring        := _00;
    cds.fieldbyname(_cduf).AsString                 := codigodocampo(_uf, nfea.NotasFiscais.Items[0].NFe.transp.veicTransp.UF, _sguf);
    cds.fieldbyname(_vlicms).Ascurrency             := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
    cds.fieldbyname(_vlbaseicms).Ascurrency         := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
    cds.fieldbyname(_vlicmssubtrib).Ascurrency      := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
    if cds.fieldbyname(_vlicmssubtrib).Ascurrency > 0 then
    begin
      cds.FieldByName(_boicmsstitem).AsString := _S;
    end;
    cds.fieldbyname(_vlbaseicmssubtrib).Ascurrency  := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
    cds.fieldbyname(_vlfrete).AsCurrency            := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
    cds.fieldbyname(_vlseguro).AsCurrency           := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
    cds.fieldbyname(_vldesconto).AsCurrency         := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
    cds.fieldbyname(_vlipi).AsCurrency              := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;
    cds.fieldbyname(_vloutdespesa).AsCurrency       := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
    cds.fieldbyname(_vltotal).AsCurrency            := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
    cds.fieldbyname(_vlproduto).Ascurrency          := nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
    cds.fieldbyname(_nuchavenfe).AsString           := nfea.NotasFiscais.Items[0].NFe.procNFe.chNFe;
    if cds.fieldbyname(_nuchavenfe).AsString = '' then
    begin
      cds.fieldbyname(_nuchavenfe).AsString := copy(nfea.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
    end;
    if entradaxml.itentrada.items[0].cdcfop = 0 then
    begin
      if copy(nfea.NotasFiscais.Items[0].NFe.Det.Items[0].Prod.CFOP, 1, 1) = _5 then
      begin
        if nfea.NotasFiscais.Items[0].NFe.Det.Items[0].Prod.CFOP = _5656 then
        begin
          cds.FieldByName(_cdcfop).AsString := _1653
        end
        else
        begin
          cds.FieldByName(_cdcfop).AsString := _1+copy(nfea.NotasFiscais.Items[0].NFe.Det.Items[0].Prod.CFOP, 2, 3);
        end;
      end
      else if copy(nfea.NotasFiscais.Items[0].NFe.Det.Items[0].Prod.CFOP, 1, 1) = _6 then
      begin
        cds.FieldByName(_cdcfop).AsString := _2+copy(nfea.NotasFiscais.Items[0].NFe.Det.Items[0].Prod.CFOP, 2, 3);
      end;
    end
    else
    begin
      cds.FieldByName(_cdcfop).AsString := inttostr(entradaxml.itentrada.items[0].cdcfop);
    end;
  end;
  procedure inserir_dados_cte;
  begin
    edtCodigo.Text := inttostr(ctea.Conhecimentos.Items[0].CTe.Ide.nCT);
    cds.fieldbyname(_nuserie).AsString := IntToStr(ctea.Conhecimentos.Items[0].CTe.Ide.serie);
    cds.fieldbyname(_dtemissao).asdateTime := ctea.Conhecimentos.Items[0].CTe.Ide.dhEmi;
    cds.fieldbyname(_dtsaida).asdateTime := entradaxml.dtentrada;
    cds.fieldbyname(_cdtpentrada).Asinteger := entradaxml.cdtpentrada;
    cds.fieldbyname(_cdcfop).Asinteger := entradaxml.itentrada.items[0].cdcfop;
    cds.fieldbyname(_cdfornecedor).AsString := CodigodoCampo(_fornecedor,Formatacnpj(ctea.Conhecimentos.Items[0].CTe.Emit.CNPJ) ,_nucnpj);
    cds.fieldbyname(_nudocfiscalicms).asstring := _57;
    cds.fieldbyname(_nustdocumento).asstring := _00;
    cds.fieldbyname(_vlproduto).Ascurrency := cteA.Conhecimentos.Items[0].cte.vPrest.vRec;
    cds.fieldbyname(_vltotal).AsCurrency := cteA.Conhecimentos.Items[0].cte.vPrest.vRec;
    cds.fieldbyname(_nuchavenfe).AsString := ctea.Conhecimentos.Items[0].CTe.procCTe.chCTe;
  end;
  procedure inserir_itens_nota;
  var
    i : integer;
  begin
    for i := 0 to nfea.NotasFiscais.Items[0].NFe.Det.Count - 1 do
    begin
      cdsItEntrada.append;
      if entradaxml.itentrada.items[0].cdcfop = 0 then
      begin
        if copy(nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP, 1, 1) = _5 then
        begin
          if nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP = _5656 then
          begin
            cdsItEntrada.fieldbyname(_cdcfop).Asstring := _1653
          end
          else
          begin
            cdsItEntrada.fieldbyname(_cdcfop).Asstring := _1+copy(nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP, 2, 3)
          end;
        end
        else if copy(nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP, 1, 1) = _6 then
        begin
          cdsItEntrada.fieldbyname(_cdcfop).Asstring := _2+copy(nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP, 2, 3);
        end;
      end
      else
      begin
        cdsItEntrada.fieldbyname(_cdcfop).Asinteger := entradaxml.itentrada.items[i].cdcfop;
      end;
      if entradaxml.itentrada.items[0].cdproduto = 0 then
      begin
        cdsItEntrada.fieldbyname(_cdproduto).asstring  := RetornaSQLString('select cdproduto '+
                                                                           'from produtofornecedor '+
                                                                           'where cdempresa='+empresa.cdempresa.tostring+' '+
                                                                           'and cdfornecedor='+CodigodoCampo(_fornecedor,Formatacnpj(nfea.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) ,_nucnpj)+' '+
                                                                           'and cdprodutofornecedor='+quotedstr(nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd));
      end
      else
      begin
        cdsItEntrada.fieldbyname(_cdproduto).asinteger := entradaxml.itentrada.items[i].cdproduto;
      end;
      cdsItEntrada.fieldbyname(_cddigitado).asstring   := entradaxml.itentrada.items[i].cddigitado;
      if entradaxml.itentrada.items[i].nucntcusto <> '' then
      begin
        cdsItEntrada.fieldbyname(_nucntcusto).asstring := entradaxml.itentrada.items[i].nucntcusto;
      end;
      cdsItEntrada.fieldbyname(_nuplconta).asstring := entradaxml.itentrada.items[i].nuplconta;
      edtdshistorico.Text                              := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.xProd;
      cdsItEntrada.fieldbyname(_qtitem).AsFloat        := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qCom;
      cdsItEntrada.fieldbyname(_vlunitario).AsCurrency := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom;
      cdsItEntrada.fieldbyname(_vlfrete).AsCurrency    := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vFrete;
      if cdsItEntrada.fieldbyname(_vlfrete).AsCurrency > 0 then
      begin
        cds.FieldByName(_bofreteitem).AsString := _S;
      end;
      cdsItEntrada.fieldbyname(_vlbaseicms).AsCurrency        := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBC;
      cdsItEntrada.fieldbyname(_alicms).AsFloat              := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMS;
      cdsItEntrada.fieldbyname(_vlicms).AsCurrency            := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS;
      cdsItEntrada.fieldbyname(_vlbaseicmssubtrib).AsCurrency := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBCST;
      cdsItEntrada.fieldbyname(_vlicmssubtrib).AsCurrency     := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST;
      cdsItEntrada.fieldbyname(_vlbaseipi).AsCurrency         := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vBC;
      cdsItEntrada.fieldbyname(_alipi).AsFloat               := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.pIPI;
      cdsItEntrada.fieldbyname(_vlipi).AsCurrency             := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI;
      cdsItEntrada.fieldbyname(_vlbasepis).AsCurrency         := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vBC;
      cdsItEntrada.fieldbyname(_alpis).AsCurrency             := ValordoCodigo(_produto, cdsItEntrada.fieldbyname(_cdproduto).asstring, _alpis);
      cdsItEntrada.fieldbyname(_vlbasecofins).AsCurrency      := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vBC;
      cdsItEntrada.fieldbyname(_alcofins).AsCurrency := ValordoCodigo(_produto, cdsItEntrada.fieldbyname(_cdproduto).asstring, _alcofins);
      cdsItEntrada.Post;
    end;
  end;
  procedure inserir_item_cte;
  begin
    cdsItEntrada.append;
    cdsItEntrada.fieldbyname(_nuplconta).asstring    := entradaxml.itentrada.items[0].nuplconta;
    cdsItEntrada.fieldbyname(_cdproduto).asinteger   := entradaxml.itentrada.items[0].cdproduto;
    cdsItEntrada.fieldbyname(_cddigitado).asstring   := entradaxml.itentrada.items[0].cddigitado;
    cdsItEntrada.fieldbyname(_cdcfop).Asinteger      := entradaxml.itentrada.items[0].cdcfop;
    cdsItEntrada.fieldbyname(_qtitem).AsFloat        := 1;
    cdsItEntrada.fieldbyname(_vlunitario).AsCurrency := cteA.Conhecimentos.Items[0].cte.vPrest.vRec;
    if entradaxml.itentrada.items[0].nucntcusto <> '' then
    begin
      cdsItEntrada.fieldbyname(_nucntcusto).asstring := entradaxml.itentrada.items[0].nucntcusto;
    end;
    if entradaxml.itentrada.items[0].nuplconta <> '' then
    begin
      cdsItEntrada.fieldbyname(_nuplconta).asstring := entradaxml.itentrada.items[0].nuplconta;
    end;
    cdsItEntrada.Post;
  end;
begin
  entradaxml    := tentrada.create;
  nfea          := TACBrNFe.Create(nil);
  ctea          := TACBrCTe.Create(nil);
  arquivo       := TStringList.Create;
  texto         := TStringStream.Create('');
  try
    if not importarxml(nmfile, entradaxml) then
    begin
      exit;
    end;
    nfea.NotasFiscais.Clear;
    arquivo.LoadFromFile(nmfile);
    texto.WriteString(UTF8Encode(arquivo.text));
    nfea.NotasFiscais.LoadFromStream(texto);
    if nfeA.NotasFiscais.count > 0 then
    begin
      actNovoExecute(sender);
      inserir_dados_nota;
      inserir_itens_nota;
      cds.fieldbyname(_DSXML).ASstring := arquivo.text;
      if entradaxml.cdtpcobranca > 0 then
      begin
        cds.fieldbyname(_cdtpcobranca).Asinteger := entradaxml.cdtpcobranca;
      end;
      if entradaxml.cdcondpagto > 0 then
      begin
        cds.fieldbyname(_cdcondpagto).Asinteger := entradaxml.cdcondpagto;
      end;
      actSalvarExecute(actsalvar);
    end
    else
    begin
      ctea.Conhecimentos.LoadFromFile(nmfile);
      if ctea.Conhecimentos.Count = 0 then
      begin
        MessageDlg('Arquivo xml inválido.', mtInformation, [mbOK], 0);
        Abort;
      end;
      actNovoExecute(sender);
      inserir_dados_cte;
      inserir_item_cte;
      cds.fieldbyname(_DSXML).asstring := arquivo.Text;
      if entradaxml.cdtpcobranca > 0 then
      begin
        cds.fieldbyname(_cdtpcobranca).Asinteger := entradaxml.cdtpcobranca;
      end;
      if entradaxml.cdcondpagto > 0 then
      begin
        cds.fieldbyname(_cdcondpagto).Asinteger := entradaxml.cdcondpagto;
      end;
      actSalvarExecute(actsalvar);
    end;
  finally
    freeandnil(entradaxml);
    freeandnil(nfea);
    freeandnil(ctea);
    freeandnil(arquivo);
  end;
end;

procedure Tfrmentrada.actimprimirnfeExecute(Sender: TObject);
var
  ACBR: TAcbr;
  ACBrCTe: TACBrCTe;
begin
  if cds.fieldbyname(_nudocfiscalicms).asstring = _55 then
  begin
    ACBR := TAcbr.Create;
    try
      ACBr.imprimirBanco(_entrada, cds.fieldbyname(_cdentrada).AsString);
    finally
      FreeAndNil(ACBR);
    end;
  end
  else if cds.fieldbyname(_nudocfiscalicms).asstring = _57 then
  begin
    ACBrCTe   := TACBrCTe.Create(nil);
    try
      CTEImprimir(ACBrCTe, cds.fieldbyname(_dsxml).AsString);
    finally
      freeandnil(ACBrCTe);
    end;
  end;
end;

procedure Tfrmentrada.setVisibleFreteSub;
begin
  edtVLBASEFRETESUB.Visible := ckbBOCREDITOSTTRANSPORTE.Checked;
  edtvlfretesub.Visible     := ckbBOCREDITOSTTRANSPORTE.Checked;
  edtalfretesub.Visible     := ckbBOCREDITOSTTRANSPORTE.Checked;
  lblfretesub.Visible       := ckbBOCREDITOSTTRANSPORTE.Checked;
end;

procedure Tfrmentrada.clearFreteSub;
begin
  edtVLBASEFRETESUB.Clear;
  edtvlfretesub.Clear;
  edtalfretesub.Clear;
end;

procedure Tfrmentrada.actexportarxmlExecute(Sender: TObject);
var
  diretorio : string;
  arquivo : tstrings;
begin
  if cds.fieldbyname(_dsxml).IsNull then
  begin
    messagedlg('Não há nota fiscal para ser exportada.', mtInformation, [mbok], 0);
    exit;
  end;
  arquivo := tstringlist.create;
  try
    diretorio := QRotinas.getdiretorio;
    if diretorio = '' then
    begin
      exit;
    end;
    arquivo.Text := cds.fieldbyname(_dsxml).asstring;
    if cds.fieldbyname(_nuchavenfe).AsString <> '' then
    begin
      arquivo.SaveToFile(Diretorio+'\'+cds.fieldbyname(_nuchavenfe).AsString+'.'+_xml);
    end
    else
    begin
      arquivo.SaveToFile(Diretorio+'\'+cds.fieldbyname(_nuentrada).AsString+'.'+_xml);
    end;
    messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
  finally
    freeandnil(arquivo);
  end;
end;

procedure TFrmEntrada.Gravartotais(sender:TObject);
  procedure ZerarValores(var vlproduto, toticmssubtrib, toticms, totipi, totcofins, totiss, totpis, psbruto, psliquido, vlbaseicmssubtrib, vlbaseicms, vlbaseipi, vlservico, vlbasecofins, vlbasepis: currency);
  begin
    vlproduto         := 0;
    toticms           := 0;
    totipi            := 0;
    totcofins         := 0;
    totiss            := 0;
    totpis            := 0;
    psbruto           := 0;
    psliquido         := 0;
    vlbaseicms        := 0;
    vlbaseicmssubtrib := 0;
    vlbaseipi         := 0;
    vlservico         := 0;
    toticmssubtrib    := 0;
    vlbasecofins      := 0;
    vlbasepis         := 0;
  end;
  procedure Calcularpeso(var psbruto: currency; var psliquido : currency);
  var
    recno, posicao : integer;
  begin
    posicao := cdsitentrada.RecNo;
    cdsItEntrada.First;
    recno := 0;
    repeat
      if not (cdsItEntrada.fieldbyname(_boservico).AsString = _S) then
      begin
        psbruto   := psbruto   + cdsItEntrada.fieldbyname(_psbruto).asfloat;
        psliquido := psliquido + cdsItEntrada.fieldbyname(_psliquido).AsFloat;
      end;
      inc(recno);
      if RecNo < cdsItEntrada.RecordCount then
      begin
        cdsItEntrada.Next;
      end;
    until RecNo = cdsItEntrada.RecordCount;
    cdsitentrada.RecNo := posicao;
  end;
var
  totcofins, totpis, totiss, toticmssubtrib, toticms, totipi, psbruto, psliquido, vlproduto: currency;
  vlservico, vlbaseicmssubtrib, vlbaseicms, vlbaseipi, vlicmssubtrib, vlretencao : currency;
  vl2403_1403, valor, vlbasecofins, vlbasepis, vlseguro, vldesconto, vlfrete, vloutdespesa : currency;
  qt2403_1403 : double;
  recno, posicao : integer;
  procedure calcula_outra_despesa;
  begin
    if (cds.fieldbyname(_vloutdespesa).AsCurrency > 0) and (cds.fieldbyname(_vlproduto).ascurrency + cds.fieldbyname(_vlservico).ascurrency > 0) then
    begin
      if RecNo = cdsItEntrada.RecordCount then
      begin
        valor := vloutdespesa
      end
      else
      begin
        valor        := QRotinas.Roundqp(((cdsItEntrada.fieldbyname(_QTITEM).AsFloat * cdsItEntrada.fieldbyname(_VLUNITARIO).ascurrency) /
                                 (cds.fieldbyname(_vlproduto).ascurrency + cds.fieldbyname(_vlservico).ascurrency) * cds.fieldbyname(_vloutdespesa).Ascurrency), cds.FieldByName(_boarredondar).asstring=_S);
        vloutdespesa := vloutdespesa - valor;
        if vloutdespesa < 0 then
        begin
          vloutdespesa := vloutdespesa + valor;
          valor        := vloutdespesa;
        end;
      end;
      if cdsItEntrada.fieldbyname(_vloutdespesa).Ascurrency <> valor then
      begin
        cdsItEntrada.fieldbyname(_vloutdespesa).Ascurrency := valor;
      end;
    end
    else if not cdsItEntrada.fieldbyname(_vloutdespesa).isnull then
    begin
      cdsItEntrada.fieldbyname(_vloutdespesa).Clear;
    end;
  end;
  procedure calcula_seguro;
  begin
    if (cds.fieldbyname(_vlseguro).AsCurrency > 0) and (cds.fieldbyname(_vlproduto).ascurrency + cds.fieldbyname(_vlservico).ascurrency > 0) then
    begin
      if RecNo = cdsItEntrada.RecordCount then
      begin
        valor := vlseguro
      end
      else
      begin
        valor := QRotinas.Roundqp(((cdsItEntrada.fieldbyname(_QTITEM).AsFloat * cdsItEntrada.fieldbyname(_VLUNITARIO).asfloat) /
                          (cds.fieldbyname(_vlproduto).ascurrency + cds.fieldbyname(_vlservico).ascurrency) * cds.fieldbyname(_vlseguro).Ascurrency), cds.FieldByName(_boarredondar).asstring=_S);
        vlseguro := vlseguro - valor;
        if vlseguro < 0 then
        begin
          vlseguro := vlseguro + valor;
          valor    := vlseguro;
        end;
      end;
      if cdsItEntrada.fieldbyname(_vlseguro).Ascurrency <> valor then
      begin
        cdsItEntrada.fieldbyname(_vlseguro).Ascurrency := valor;
      end;
    end
    else if not cdsItEntrada.fieldbyname(_vlseguro).IsNull then
    begin
      cdsItEntrada.fieldbyname(_vlseguro).clear;
    end;
  end;
  procedure calcula_retencao;
  begin
    if (cds.fieldbyname(_vlretencao).AsCurrency > 0) and (cds.fieldbyname(_vlproduto).ascurrency + cds.fieldbyname(_vlservico).ascurrency > 0) then
    begin
      if RecNo = cdsItEntrada.RecordCount then
      begin
        valor := vlretencao
      end
      else
      begin
        valor := QRotinas.Roundqp(((cdsItEntrada.fieldbyname(_QTITEM).AsFloat * cdsItEntrada.fieldbyname(_VLUNITARIO).asfloat) /
                          (cds.fieldbyname(_vlproduto).ascurrency + cds.fieldbyname(_vlservico).ascurrency) * cds.fieldbyname(_vlretencao).Ascurrency), cds.FieldByName(_boarredondar).asstring=_S);
        vlretencao := vlretencao - valor;
        if vlretencao < 0 then
        begin
          vlretencao := vlretencao + valor;
          valor    := vlretencao;
        end;
      end;
      if cdsItEntrada.fieldbyname(_vlretencao).Ascurrency <> valor then
      begin
        cdsItEntrada.fieldbyname(_vlretencao).Ascurrency := valor;
      end;
    end
    else if not cdsItEntrada.fieldbyname(_vlretencao).IsNull then
    begin
      cdsItEntrada.fieldbyname(_vlretencao).clear;
    end;
  end;
  procedure calcula_desconto;
  begin
    if cds.FieldByName(_bodescontoitem).AsString <> _s then
    begin
      if (cds.fieldbyname(_vldesconto).AsCurrency > 0) and (cds.fieldbyname(_vlproduto).ascurrency + cds.fieldbyname(_vlservico).ascurrency > 0) then
      begin
        if RecNo = cdsItEntrada.RecordCount then
        begin
          valor := vldesconto
        end
        else
        begin
          valor := QRotinas.Roundqp(((cdsItEntrada.fieldbyname(_QTITEM).asfloat * cdsItEntrada.fieldbyname(_VLUNITARIO).asfloat) /
                             (cds.fieldbyname(_vlproduto).ascurrency + cds.fieldbyname(_vlservico).ascurrency) * cds.fieldbyname(_vldesconto).Ascurrency), cds.FieldByName(_boarredondar).asstring=_S);
          vldesconto := vldesconto - valor;
          if vldesconto < 0 then
          begin
            vldesconto := vldesconto + valor;
            valor      := vldesconto;
          end;
        end;
        if cdsItEntrada.fieldbyname(_vldesconto).Ascurrency <> valor then
        begin
          cdsItEntrada.fieldbyname(_vldesconto).Ascurrency := valor;
          cdsItEntrada.fieldbyname(_prdesconto).AsCurrency := valor / cds.fieldbyname(_vldesconto).Asfloat * 100;
        end;
      end
      else
      begin
        if not cdsItEntrada.fieldbyname(_vldesconto).IsNull then
        begin
          cdsItEntrada.fieldbyname(_vldesconto).clear;
        end;
        if not cdsItEntrada.fieldbyname(_prdesconto).isnull then
        begin
          cdsItEntrada.fieldbyname(_prdesconto).clear;
        end;
      end;
    end;
  end;
  procedure calcula_ipi;
  begin
    CalcularImpostoIpiItem;
    if cdsItEntrada.FieldByName(_borecuperaipiespecial).AsString <> _S then
    begin
      totipi    := totipi    + cdsItEntrada.fieldbyname(_vlipi).ascurrency;
      vlbaseipi := vlbaseipi + cdsItEntrada.fieldbyname(_vlbaseipi).ascurrency;
    end;
  end;
  procedure calcula_icms;
  begin
    CalcularImpostoIcmsItem;
    toticms        := toticms    + cdsItEntrada.fieldbyname(_vlicms).ascurrency;
    vlbaseicms     := vlbaseicms + cdsItEntrada.fieldbyname(_vlbaseicms).ascurrency;
  end;
  procedure calcula_pis;
  begin
    CalcularImpostoItem(_pis, cdsItEntrada.fieldbyname(_bobasepisajuste).AsString = _s);
    totpis    := totpis    + cdsItEntrada.fieldbyname(_vlpis).ascurrency;
    vlbasepis := vlbasepis + cdsItEntrada.fieldbyname(_vlbasepis).ascurrency;
  end;
  procedure calcula_cofins;
  begin
    CalcularImpostoItem(_cofins, cdsItEntrada.fieldbyname(_bobasecofinsajuste).AsString = _s);
    totcofins    := totcofins + cdsItEntrada.fieldbyname(_vlcofins).ascurrency;
    vlbasecofins := vlbasecofins + cdsItEntrada.fieldbyname(_vlbasecofins).ascurrency;
  end;
  function get_vl2403_1403:Currency;
  var
    posicao : Integer;
  begin
    result := 0;
    if not (cdsItEntrada.RecordCount > 0) then
    begin
      exit;
    end;
    posicao := cdsitentrada.RecNo;
    cdsItEntrada.DisableControls;
    cdsItEntrada.AfterPost  := nil;
    cdsItEntrada.BeforePost := nil;
    try
      cdsItEntrada.First;
      recno := 0;
      repeat
        inc(recno);
        if BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boicmssubtrib) or BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boaceitaicmssubtrib) then
        begin
          result := result + cdsItEntrada.fieldbyname(_vltotal).AsCurrency;
        end;
        if RecNo < cdsItEntrada.RecordCount then
        begin
          cdsItEntrada.Next;
        end;
      until RecNo = cdsItEntrada.RecordCount;
      if cdsItEntrada.State = dsedit then
      begin
        cdsItEntrada.Post;
      end;
    finally
      cdsItEntrada.EnableControls;
      cdsItEntrada.AfterPost  := cdsItEntradaAfterPost;
      cdsItEntrada.BeforePost := cdsItEntradabeforepost;
      cdsitentrada.RecNo := posicao;
    end;
  end;
  function get_qt2403_1403:double;
  var
    posicao : Integer;
  begin
    result := 0;
    if not (cdsItEntrada.RecordCount > 0) then
    begin
      exit;
    end;
    posicao := cdsitentrada.RecNo;
    cdsItEntrada.DisableControls;
    cdsItEntrada.AfterPost  := nil;
    cdsItEntrada.BeforePost := nil;
    try
      cdsItEntrada.First;
      recno := 0;
      repeat
        inc(recno);
        if BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boicmssubtrib) or BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boaceitaicmssubtrib) then
        begin
          result := result + cdsItEntrada.fieldbyname(_qtitem).AsFloat;
        end;
        if RecNo < cdsItEntrada.RecordCount then
        begin
          cdsItEntrada.Next;
        end;
      until RecNo = cdsItEntrada.RecordCount;
      if cdsItEntrada.State = dsedit then
      begin
        cdsItEntrada.Post;
      end;
    finally
      cdsItEntrada.EnableControls;
      cdsItEntrada.AfterPost  := cdsItEntradaAfterPost;
      cdsItEntrada.BeforePost := cdsItEntradabeforepost;
      cdsitentrada.RecNo := posicao;
    end;
  end;
begin
  zerarvalores(vlproduto, toticmssubtrib, toticms, totipi, totcofins, totiss, totpis, psbruto, psliquido, vlbaseicmssubtrib, vlbaseicms, vlbaseipi, vlservico, vlbasecofins, vlbasepis);
  vl2403_1403 := get_vl2403_1403;
  qt2403_1403 := get_qt2403_1403;
  if cdsItEntrada.RecordCount > 0 then
  begin
    cdsItEntrada.DisableControls;
    cdsItEntrada.AfterPost  := nil;
    cdsItEntrada.BeforePost := nil;
    posicao := cdsitentrada.RecNo;
    cds.fieldbyname(_vlretencao).ascurrency := cds.fieldbyname(_vlirrf).ascurrency +
                                               cds.fieldbyname(_vlinss).ascurrency +
                                               cds.fieldbyname(_vlcontribsocial).ascurrency +
                                               cds.fieldbyname(_vliss).ascurrency;
    try
      CalcularPeso(psbruto, psliquido);
      cdsItEntrada.First;
      recno             := 0;
      vloutdespesa      := cds.fieldbyname(_vloutdespesa).ascurrency;
      vlseguro          := cds.fieldbyname(_vlseguro).ascurrency;
      vldesconto        := cds.fieldbyname(_vldesconto).ascurrency;
      vlfrete           := cds.fieldbyname(_vlfrete).ascurrency;
      vlicmssubtrib     := cds.fieldbyname(_vlicmssubtrib).ascurrency;
      vlbaseicmssubtrib := cds.fieldbyname(_vlbaseicmssubtrib).ascurrency;
      vlretencao        := cds.fieldbyname(_vlretencao).ascurrency;
      repeat
        inc(recno);
        if (cdsitentrada.State <> dsedit) or (cdsitentrada.State <> dsinsert) then
        begin
          cdsitentrada.Edit;
        end;
        calcula_outra_despesa;
        calcula_seguro;
        calcula_retencao;
        calcula_desconto;
        if cdsItEntrada.fieldbyname(_boservico).AsString = _S then
        begin
          vlservico := vlservico + cdsItEntrada.fieldbyname(_vltotal).ascurrency;
        end
        else
        begin
          vlproduto  := vlproduto  + cdsItEntrada.fieldbyname(_vltotal).AsCurrency;
          if cds.fieldbyname(_vlfrete).AsCurrency > 0 then
          begin
            if cds.FieldByName(_bofreteitem).AsString <> _s then
            begin
              if RecNo = cdsItEntrada.RecordCount then
              begin
                valor := vlfrete;
              end
              else
              begin
                if cdsItEntrada.fieldbyname(_psbruto).asfloat = 0 then
                begin
                  MessageDlg('Para ratear o frete entre os produtos o sistema precisa que o pesso bruto esteja preenchido.'#13'Preencha o peso bruto para continuar.', mtInformation, [mbOK], 0);
                  Abort;
                end;
                valor   := QRotinas.Roundqp(cds.fieldbyname(_vlfrete).AsCurrency / cds.fieldbyname(_psbruto).AsFloat * cdsItEntrada.fieldbyname(_psbruto).asfloat, cds.FieldByName(_boarredondar).asstring=_S);
                vlfrete := vlfrete - valor;
                if vlfrete < 0 then
                begin
                  vlfrete := vlfrete + valor;
                  valor   := vlfrete;
                end;
              end;
              if cdsItEntrada.fieldbyname(_vlfrete).Ascurrency <> valor then
              begin
                cdsItEntrada.fieldbyname(_vlfrete).Ascurrency := valor;
              end;
            end;
          end
          else if not cdsItEntrada.fieldbyname(_vlfrete).isnull and (cds.FieldByName(_bofreteitem).AsString <> _s) then
          begin
            cdsItEntrada.fieldbyname(_vlfrete).clear;
          end;
          if cds.FieldByName(_boicmsstitem).AsString <> _s then
          begin
            if (cds.fieldbyname(_vlicmssubtrib).AsCurrency > 0) and (BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boicmssubtrib) OR BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boaceitaicmssubtrib))then
            begin
              if RecNo = cdsItEntrada.RecordCount then
              begin
                valor := vlicmssubtrib
              end
              else
              begin
                if cdsItEntrada.fieldbyname(_VLUNITARIO).ascurrency = 0 then
                begin
                  valor := QRotinas.Roundqp((cdsItEntrada.fieldbyname(_QTITEM).AsFloat / qt2403_1403) * cds.fieldbyname(_vlicmssubtrib).Ascurrency, cds.FieldByName(_boarredondar).asstring=_S);
                end
                else
                begin
                  valor := QRotinas.Roundqp(((cdsItEntrada.fieldbyname(_QTITEM).AsFloat *
                                              cdsItEntrada.fieldbyname(_VLUNITARIO).ascurrency) / vl2403_1403) *
                                              cds.fieldbyname(_vlicmssubtrib).Ascurrency,
                                              cds.FieldByName(_boarredondar).asstring=_S);
                end;
                vlicmssubtrib := vlicmssubtrib - valor;
                if vlicmssubtrib < 0 then
                begin
                  vlicmssubtrib := vlicmssubtrib + valor;
                  valor         := vlicmssubtrib;
                end;
              end;
              if cdsItEntrada.fieldbyname(_vlicmssubtrib).Ascurrency <> valor then
              begin
                cdsItEntrada.fieldbyname(_vlicmssubtrib).Ascurrency := valor;
              end;
            end
            else
            begin
              cdsItEntrada.fieldbyname(_vlicmssubtrib).AsCurrency := 0;
            end;
          end;
          if (cds.fieldbyname(_vlbaseicmssubtrib).AsCurrency > 0) and
             (BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boicmssubtrib) or BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boaceitaicmssubtrib)) then
          begin
            if RecNo = cdsItEntrada.RecordCount then
            begin
              valor := vlbaseicmssubtrib
            end
            else
            begin
              if cdsItEntrada.fieldbyname(_VLUNITARIO).ascurrency = 0 then
              begin
                valor := QRotinas.Roundqp((cdsItEntrada.fieldbyname(_QTITEM).AsFloat / qt2403_1403) * cds.fieldbyname(_vlbaseicmssubtrib).Ascurrency, cds.FieldByName(_boarredondar).asstring=_S);
              end
              else
              begin
                valor := QRotinas.Roundqp(((cdsItEntrada.fieldbyname(_QTITEM).AsFloat *
                                            cdsItEntrada.fieldbyname(_VLUNITARIO).ascurrency) / vl2403_1403) *
                                            cds.fieldbyname(_vlbaseicmssubtrib).Ascurrency,
                                            cds.FieldByName(_boarredondar).asstring=_S);
              end;
              vlbaseicmssubtrib := vlbaseicmssubtrib - valor;
              if vlbaseicmssubtrib < 0 then
              begin
                vlbaseicmssubtrib := vlbaseicmssubtrib + valor;
                valor             := vlbaseicmssubtrib;
              end;
            end;
            if cdsItEntrada.fieldbyname(_vlbaseicmssubtrib).Ascurrency <> valor then
            begin
              cdsItEntrada.fieldbyname(_vlbaseicmssubtrib).Ascurrency := valor;
            end;
          end
          else
          begin
            cdsItEntrada.fieldbyname(_vlbaseicmssubtrib).AsCurrency := 0;
          end;
        end;
        calcula_ipi;
        calcula_icms;
        calcula_pis;
        calcula_cofins;
        if RecNo < cdsItEntrada.RecordCount then
        begin
          cdsItEntrada.Next;
        end;
      until RecNo = cdsItEntrada.RecordCount;
      if cdsItEntrada.State = dsedit then
      begin
        cdsItEntrada.Post;
      end;
    finally
      cdsItEntrada.EnableControls;
      cdsItEntrada.AfterPost  := cdsItEntradaAfterPost;
      cdsItEntrada.BeforePost := cdsItEntradabeforepost;
      cdsitentrada.RecNo := posicao;
    end;
  end;
  toticmssubtrib    := cds.fieldbyname(_vlicmssubtrib).ascurrency;
  vlbaseicmssubtrib := cds.fieldbyname(_vlbaseicmssubtrib).ascurrency;
  // valor total da nota
  cds.fieldbyname(_vltotal).AsCurrency := vlproduto +
                                          vlservico +
                                          cds.fieldbyname(_vlfrete).ascurrency +
                                          totipi -
                                          cds.fieldbyname(_vldesconto).AsCurrency +
                                          cds.fieldbyname(_vlseguro).AsCurrency +
                                          cds.fieldbyname(_vloutdespesa).ascurrency -
                                          cds.fieldbyname(_vlretencao).ascurrency;
  if ckbboretencaocofins.Checked then
  begin
    cds.fieldbyname(_vltotal).ascurrency := cds.fieldbyname(_vltotal).ascurrency - cds.fieldbyname(_vlcofins).ascurrency;
  end;
  if ckbboretencaopis.Checked           then
  begin
    cds.fieldbyname(_vltotal).ascurrency := cds.fieldbyname(_vltotal).ascurrency - cds.fieldbyname(_vlpis).ascurrency;
  end;
  if cds.fieldbyname(_BOICMSSUBTRIBNTOTAL).asstring <> _S then
  begin
    cds.fieldbyname(_vltotal).AsCurrency := cds.fieldbyname(_vltotal).AsCurrency + toticmssubtrib;
  end;
  // Atribuicao Valor Imposto
  AtribuirImpostoNF(tela.dados.tpentrada.bopis      , _pis        , totpis        , vlbasepis);
  AtribuirImpostoNF(tela.dados.tpentrada.bocofins   , _cofins     , totcofins     , vlbasecofins);
  AtribuirImpostoNF(tela.dados.tpentrada.boicms     , _icms       , toticms       , vlbaseicms);
  AtribuirImpostoNF(tela.dados.tpentrada.boipi      , _ipi        , totipi        , vlbaseipi);
  if tela.dados.tpentrada.bofrete <> _s then
  begin
    cds.fieldbyname(_vlfrete).Clear;
  end;
  cds.fieldbyname(_psliquido).ascurrency := psliquido;
  cds.fieldbyname(_psbruto).ascurrency   := psbruto;
  cds.fieldbyname(_vlproduto).ascurrency := vlproduto;
  cds.fieldbyname(_vlservico).AsCurrency := vlservico;
end;

procedure TFrmEntrada.Gravartotais2(sender:TObject);
  procedure zerarvalores(var vlproduto, toticms, totipi, totcofins, totiss, totpis, psbruto, psliquido, vlbaseicms, vlbaseipi, vlservico, vlbasecofins, vlbasepis: currency);
  begin
    vlproduto    := 0;
    toticms      := 0;
    totipi       := 0;
    totcofins    := 0;
    totiss       := 0;
    totpis       := 0;
    psbruto      := 0;
    psliquido    := 0;
    vlbaseicms   := 0;
    vlbaseipi    := 0;
    vlservico    := 0;
    vlbasecofins := 0;
    vlbasepis    := 0;
  end;
  procedure AcumularTotaisItem(var vlservico, totiss, vlproduto, psbruto, psliquido, totipi, toticms, vlbaseicms, vlbaseipi, totcofins, totpis, vlbasecofins, vlbasepis: currency);
  var
    recno, posicao : integer;
  begin
    if cdsItEntrada.RecordCount > 0 then
    begin
      posicao := cdsitentrada.RecNo;
      cdsItEntrada.DisableControls;
      cdsItEntrada.AfterPost := nil;
      try
        cdsItEntrada.First;
        recno := 0;
        repeat
          recno := recno + 1;
          if cdsItEntrada.fieldbyname(_boservico).AsString = _S then
          begin
            vlservico := vlservico + cdsItEntrada.fieldbyname(_vltotal).ascurrency;
          end
          else
          begin
            vlproduto  := vlproduto  + cdsItEntrada.fieldbyname(_vltotal).AsCurrency;
            psbruto    := psbruto    + cdsItEntrada.fieldbyname(_psbruto).asfloat;
            psliquido  := psliquido  + cdsItEntrada.fieldbyname(_psliquido).asfloat;
            toticms    := toticms    + cdsItEntrada.fieldbyname(_vlicms).ascurrency;
            vlbaseicms := vlbaseicms + cdsItEntrada.fieldbyname(_vlbaseicms).ascurrency;
            if cdsItEntrada.FieldByName(_borecuperaipiespecial).asstring <> _S then
            begin
              vlbaseipi  := vlbaseipi  + cdsItEntrada.fieldbyname(_vlbaseipi).ascurrency;
              totipi     := totipi     + cdsItEntrada.fieldbyname(_vlipi).AsFloat;
            end;
          end;
          vlbasepis    := vlbasepis    + cdsItEntrada.fieldbyname(_vlbasepis   ).ascurrency;
          vlbasecofins := vlbasecofins + cdsItEntrada.fieldbyname(_vlbasecofins).ascurrency;
          totcofins    := totcofins    + cdsItEntrada.fieldbyname(_vlcofins    ).ascurrency;
          totpis       := totpis       + cdsItEntrada.fieldbyname(_vlpis       ).ascurrency;
          if RecNo < cdsItEntrada.RecordCount then
          begin
            cdsItEntrada.Next;
          end;
        until RecNo = cdsItEntrada.RecordCount;
      finally
        cdsItEntrada.EnableControls;
        cdsItEntrada.AfterPost := cdsItEntradaAfterPost;
        cdsitentrada.RecNo := posicao;
      end;
    end;
  end;
  procedure DistribuirFreteItem(var totcofins, totpis:currency);
  var
    recno, posicao : integer;
  begin
    if (not (sender is TClientDataSet)) and (cdsItEntrada.RecordCount > 0) then
    begin
      posicao := cdsitentrada.RecNo;
      cdsItEntrada.DisableControls;
      try
        cdsItEntrada.AfterPost := nil;
        cdsItEntrada.First;
        //
        recno := 0;
        repeat
          Inc(recno);
          totcofins := totcofins + cdsItEntrada.fieldbyname(_vlcofins).ascurrency;
          totpis    := totpis    + cdsItEntrada.fieldbyname(_vlpis).ascurrency;
          if (cds.fieldbyname(_psbruto).AsFloat > 0) and (cds.FieldByName(_bofreteitem).AsString <> _s) then
          begin
            cdsItEntrada.fieldbyname(_vlfrete).ascurrency := cds.fieldbyname(_vlfrete).AsCurrency / cds.fieldbyname(_psbruto).AsFloat * cdsItEntrada.fieldbyname(_psbruto).AsFloat;
          end;
          if RecNo < cdsItEntrada.RecordCount then
          begin
            cdsItEntrada.Next;
          end;
        until RecNo = cdsItEntrada.RecordCount;
      finally
        cdsItEntrada.AfterPost := cdsItEntradaAfterPost;
        cdsItEntrada.EnableControls;
        cdsitentrada.RecNo := posicao;
      end;
    end;
  end;
var
  totcofins, totpis, totiss, toticms, totipi, psbruto, psliquido, vlproduto, totalipi : currency;
  vlbasecofins, vlbasepis, vlservico, vlbaseicms, vlbaseipi, totalicms : currency;
begin
  zerarvalores      (vlproduto, toticms, totipi, totcofins, totiss, totpis, psbruto, psliquido, vlbaseicms, vlbaseipi, vlservico, vlbasecofins, vlbasepis);
  AcumularTotaisItem(vlservico, totiss, vlproduto, psbruto, psliquido, totipi, toticms, vlbaseicms, vlbaseipi, totcofins, totpis, vlbasecofins, vlbasepis);

  totalipi  := totipi;
  totalicms := QRotinas.Roundqp(toticms, cds.FieldByName(_boarredondar).asstring=_S); // icms do frete + icms dos produtos
  // valor total da nota
  cds.fieldbyname(_vltotal).AsCurrency := vlproduto + vlservico + cds.fieldbyname(_vlfrete).ascurrency + totalipi - cds.fieldbyname(_vldesconto).AsCurrency + cds.fieldbyname(_vlseguro).AsCurrency + cds.fieldbyname(_vloutdespesa).ascurrency;
  if cds.fieldbyname(_BOICMSSUBTRIBNTOTAL).asstring <> _S then
  begin
    cds.fieldbyname(_vltotal).AsCurrency := cds.fieldbyname(_vltotal).AsCurrency + cds.fieldbyname(_vlicmssubtrib).AsCurrency;
  end;
  cds.fieldbyname(_vltotal).ascurrency := cds.fieldbyname(_vltotal).ascurrency -
                                          cds.fieldbyname(_vlirrf).ascurrency -
                                          cds.fieldbyname(_vlinss).ascurrency -
                                          cds.fieldbyname(_vlcontribsocial).ascurrency -
                                          cds.fieldbyname(_vliss).ascurrency;
  if ckbboretencaocofins.Checked then
  begin
    cds.fieldbyname(_vltotal).ascurrency := cds.fieldbyname(_vltotal).ascurrency - cds.fieldbyname(_vlcofins).ascurrency;
  end;
  if ckbboretencaopis.Checked then
  begin
    cds.fieldbyname(_vltotal).ascurrency := cds.fieldbyname(_vltotal).ascurrency - cds.fieldbyname(_vlpis).ascurrency;
  end;

  AtribuirImpostoNF(tela.dados.tpentrada.boicms     , _icms       , totalicms, vlbaseicms);
  AtribuirImpostoNF(tela.dados.tpentrada.bopis      , _pis        , totpis   , vlbasepis);
  AtribuirImpostoNF(tela.dados.tpentrada.bocofins   , _cofins     , totcofins, vlbasecofins);
  AtribuirImpostoNF(tela.dados.tpentrada.boipi      , _ipi        , totalipi , vlbaseipi);
  if tela.dados.tpentrada.bofrete <> _s then
  begin
    cds.fieldbyname(_vlfrete).Clear;
  end;
  cds.fieldbyname(_psliquido).ascurrency := psliquido;
  cds.fieldbyname(_psbruto).ascurrency   := psbruto;
  cds.fieldbyname(_vlproduto).ascurrency := vlproduto;
  cds.fieldbyname(_vlservico).AsCurrency := vlservico;
  distribuirfreteitem(totcofins, totpis);
end;

procedure TFrmEntrada.AtribuirImposto(q: tclientdataset; bo, imposto:string; vl:currency=0; vlbase:currency=0);
begin
  if bo <> _s then
  begin
    q.fieldbyname(_vl+imposto).clear;
    q.fieldbyname(_vlbase+imposto).clear;
    exit;
  end;
  q.fieldbyname(_vlbase+imposto).ascurrency := vlbase;
  q.fieldbyname(_vl+imposto).ascurrency     := vl;
end;

procedure TFrmEntrada.CalcularImpostoItem(imposto:string; ajuste_base:Boolean=false);
var
  valor : Currency;
begin
  with cdsItEntrada do
  begin
    if not ((not fieldbyname(_al+imposto).IsNull) and (fieldbyname(_al+imposto).AsCurrency > 0)) then
    begin
      fieldbyname(_al+imposto).Clear;
      fieldbyname(_vl+imposto).Clear;
      fieldbyname(_vlbase+imposto).Clear;
      exit;
    end;
    if not ajuste_base then
    begin
      fieldbyname(_vlbase+imposto).AsCurrency := fieldbyname(_vltotal).Asfloat -
                                                 fieldbyname(_vldesconto).AsCurrency +
                                                 fieldbyname(_vloutdespesa).ascurrency +
                                                 fieldbyname(_vlseguro).ascurrency +
                                                 fieldbyname(_vlipi).ascurrency +
                                                 fieldbyname(_vlfrete).ascurrency;
      if (imposto = _pis) or (imposto = _cofins) then
      begin
        fieldbyname(_vlbase+imposto).AsCurrency := fieldbyname(_vlbase+imposto).AsCurrency - fieldbyname(_vlipi).ascurrency;
      end;
    end;
    if cds.fieldbyname(_BOICMSSUBTRIBNTOTAL).AsString <> _S then
    begin
      fieldbyname(_vlbase+imposto).AsCurrency := fieldbyname(_vlbase+imposto).AsCurrency + fieldbyname(_vlicmssubtrib).ascurrency;
    end;
    valor := qrotinas.roundqp(fieldbyname(_vlbase+imposto).ascurrency * fieldbyname(_al+imposto).AsCurrency / 100, true);
    if ((imposto = _pis) and (cds.FieldByName(_bonarredondarpis).asstring=_S)) or ((imposto = _cofins) and (cds.FieldByName(_bonarredondarcofins).asstring=_S)) then
    begin
      valor := int(valor * 100) / 100;
    end
    else if cds.FieldByName(_boarredondar).asstring=_S then
    begin
      valor := QRotinas.Roundqp(valor, cds.FieldByName(_boarredondar).asstring=_S);
    end;
    fieldbyname(_vl+imposto).ascurrency := valor;
  end;
end;

procedure TFrmEntrada.AtribuirImpostoNF(bo, imposto:string; vl:currency=0; vlbase:currency=0);
begin
  AtribuirImposto(cds, bo, imposto, vl, vlbase);
end;

procedure TFrmEntrada.CalcularImpostoIcmsItem;
var
  vlbaseicms : real;
begin
  if (tela.dados.tpentrada.boicms <> _s) or (cdsItEntrada.fieldbyname(_alicms).IsNull) or (cdsItEntrada.fieldbyname(_alicms).AsCurrency <= 0) then
  begin
    cdsItEntrada.fieldbyname(_alicms).AsCurrency     := 0;
    cdsItEntrada.fieldbyname(_vlicms).AsCurrency     := 0;
    cdsItEntrada.fieldbyname(_vlbaseicms).AsCurrency := 0;
    cdsItEntrada.fieldbyname(_vlbaseicmsntributavel).AsCurrency := 0;
    cdsItEntrada.fieldbyname(_vlbaseicmsoriginal).AsCurrency := 0;
    exit;
  end;
  vlbaseicms := cdsItEntrada.fieldbyname(_vltotal).asfloat -
                cdsItEntrada.fieldbyname(_vldesconto).ascurrency +
                cdsItEntrada.fieldbyname(_vloutdespesa).ascurrency +
                cdsItEntrada.fieldbyname(_vlseguro).ascurrency +
                cdsItEntrada.fieldbyname(_vlfrete).ascurrency;
  if cds.fieldbyname(_boipibcicms).asstring = _S then
  begin
    vlbaseicms := vlbaseicms + cdsItEntrada.fieldbyname(_vlipi).ascurrency;
  end;
  if cdsItEntrada.fieldbyname(_bobaseicmsajuste).asstring <> _S then
  begin
    vlbaseicms := QRotinas.Roundqp(vlbaseicms, cds.FieldByName(_boarredondar).asstring=_S)
  end
  else
  begin
    vlbaseicms := cdsItEntrada.fieldbyname(_vlbaseicms).AsCurrency;
  end;
  if cdsItEntrada.fieldbyname(_boicmsajuste).asstring <> _S then
  begin
    cdsItEntrada.fieldbyname(_vlbaseicmsoriginal).AsCurrency := vlbaseicms;
    if cdsItEntrada.fieldbyname(_ALICMSRED).AsCurrency > 0 then
    begin
      cdsItEntrada.FieldByName(_nusticms).AsString := _20;
      cdsItEntrada.fieldbyname(_VLBASEICMSRED).AsCurrency := vlbaseicms - QRotinas.Roundqp((100 - cdsItEntrada.fieldbyname(_ALICMSRED).AsCurrency) * vlbaseicms / 100, cds.FieldByName(_boarredondar).asstring=_S);
      vlbaseicms := QRotinas.Roundqp((100 - cdsItEntrada.fieldbyname(_ALICMSRED).AsCurrency) * vlbaseicms / 100, cds.FieldByName(_boarredondar).asstring=_S);
    end;
    cdsItEntrada.fieldbyname(_vlbaseicms).AsCurrency := vlbaseicms;
    cdsItEntrada.fieldbyname(_vlicms).ascurrency     := QRotinas.Roundqp(vlbaseicms * cdsItEntrada.fieldbyname(_alicms).AsFloat / 100, cds.FieldByName(_boarredondar).asstring=_S);
  end
  else
  begin
    cdsItEntrada.fieldbyname(_vlbaseicmsoriginal).AsCurrency := cdsItEntrada.fieldbyname(_vlbaseicms).AsCurrency;
  end;
  cdsItEntrada.fieldbyname(_vlbaseicmsntributavel).AsCurrency := cdsItEntrada.fieldbyname(_vlbaseicmsoriginal).AsCurrency - cdsItEntrada.fieldbyname(_vlbaseicms).AsCurrency;
  if cdsItEntrada.FieldByName(_bodiferencialaliquota).AsString = _S then
  begin
    cdsItEntrada.FieldByName(_vlicmsdifaliquota).AsCurrency := (cdsItEntrada.fieldbyname(_vlbaseicms).AsCurrency * qregistro.ValordoCodigo(_uf, empresa.endereco.cduf, _alicms)/100) - cdsItEntrada.fieldbyname(_vlicms).ascurrency;
  end;
end;

procedure TFrmEntrada.CalcularImpostoIpiItem;
begin
  if (tela.dados.tpentrada.boipi <> _s) or (not ((not cdsItEntrada.fieldbyname(_alipi).IsNull) and (cdsItEntrada.fieldbyname(_alipi).ascurrency > 0))) then
  begin
    cdsItEntrada.fieldbyname(_alipi).Clear;
    cdsItEntrada.fieldbyname(_vlipi).Clear;
    cdsItEntrada.fieldbyname(_vlbaseipi).Clear;
    exit;
  end;
  if cdsItEntrada.fieldbyname(_bobaseipiajuste).asstring <> _S then
  begin
    if cdsItEntrada.FieldByName(_borecuperaipiespecial).AsString = _S then
    begin
      cdsItEntrada.fieldbyname(_vlbaseipi).AsCurrency := cdsItEntrada.fieldbyname(_vltotal).asfloat / 2;
      cdsItEntrada.fieldbyname(_vlipi).ascurrency     := QRotinas.Roundqp((cdsItEntrada.fieldbyname(_vltotal).asfloat / 2) * cdsItEntrada.fieldbyname(_alipi).AsFloat / 100, cds.FieldByName(_boarredondar).asstring=_S);
      Exit;
    end;
    cdsItEntrada.fieldbyname(_vlbaseipi).AsCurrency := QRotinas.Roundqp((cdsItEntrada.fieldbyname(_vltotal).asfloat + cdsItEntrada.fieldbyname(_vloutdespesa).ascurrency + cdsItEntrada.fieldbyname(_vlseguro).ascurrency + cdsItEntrada.fieldbyname(_vlfrete).ascurrency), cds.FieldByName(_boarredondar).asstring=_S);
  end;
  if cdsItEntrada.FieldByName(_boajusteipi).AsString <> _s then
  begin
    cdsItEntrada.fieldbyname(_vlipi).ascurrency := QRotinas.Roundqp(cdsItEntrada.fieldbyname(_vlbaseipi).AsCurrency * cdsItEntrada.fieldbyname(_alipi).AsFloat / 100, cds.FieldByName(_boarredondar).asstring=_S);
  end;
end;

procedure TFrmEntrada.RatearValoresItens(bo, nmcampo:string);
begin
  if not ((bo = _s) and (cds.fieldbyname(nmcampo).AsCurrency > 0)) then
  begin
    cdsItEntrada.fieldbyname(nmcampo).Clear;
    exit;
  end;
  if lowercase(nmcampo) = _vlfrete then
  begin
    if (cds.fieldbyname(_psbruto).AsFloat > 0) and (cdsItEntrada.fieldbyname(_psbruto).AsFloat > 0) then
    begin
      cdsItEntrada.fieldbyname(_vlfrete).ascurrency := cds.fieldbyname(_vlfrete).AsCurrency / cds.fieldbyname(_psbruto).AsFloat * cdsItEntrada.fieldbyname(_psbruto).AsFloat;
    end;
  end
  else if lowercase(nmcampo) = _vldesconto then
  begin
    cdsItEntrada.fieldbyname(_vldesconto).ascurrency := cds.fieldbyname(_vldesconto).AsCurrency / cds.fieldbyname(_vltotal).AsFloat * cdsItEntrada.fieldbyname(_vltotal).AsFloat;
  end
  else if cds.fieldbyname(_vlproduto).AsCurrency * cds.fieldbyname(nmcampo).AsCurrency > 0 then
  begin
    if (nmcampo = _vlicmssubtrib) then
    begin
      if (not BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boicmssubtrib)) and (not BooleandoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).AsString, _boaceitaicmssubtrib)) then
      begin
        cdsItEntrada.fieldbyname(nmcampo).Clear
      end
      else if cds.FieldByName(_boicmsstitem).AsString <> _s then
      begin
        cdsItEntrada.fieldbyname(nmcampo).Ascurrency := QRotinas.Roundqp(((cdsItEntrada.fieldbyname(_QTITEM).AsFloat * cdsItEntrada.fieldbyname(_VLUNITARIO).asfloat) /
                                                               cds.fieldbyname(_vlproduto).Asfloat) * cds.fieldbyname(nmcampo).Asfloat, cds.FieldByName(_boarredondar).asstring=_S);
      end;
    end
    else
    begin
      cdsItEntrada.fieldbyname(nmcampo).Ascurrency := QRotinas.Roundqp(((cdsItEntrada.fieldbyname(_QTITEM).AsFloat * cdsItEntrada.fieldbyname(_VLUNITARIO).asfloat) / cds.fieldbyname(_vlproduto).Asfloat) * cds.fieldbyname(nmcampo).Asfloat, cds.FieldByName(_boarredondar).asstring=_S);
    end;
  end
  else
  begin
    cdsItEntrada.fieldbyname(nmcampo).Clear;
  end;
end;

procedure Tfrmentrada.AtualizarPlanoContasAutpagto;
var
  recno : integer;
  cdplconta, nuplconta : string;
begin
  cdsAutpagto.DisableControls;
  cdsAutpagto.AfterScroll := nil;
  cdsAutpagto.BeforePost := nil;
  try
    recno := cdsAutpagto.recno;
    cdsAutpagto.First;
    while not cdsAutpagto.Eof do
    begin
      IF cdsAutpagto.fieldbyname(_nuplconta).asstring <> '' then
      begin
        if cdsAutpagto.RecNo = cdsAutpagto.RecordCount then
        begin
          Break;
        end;
        cdsAutpagto.Next;
        Continue;
      end;
      if (cds.fieldbyname(_cdplconta).AsString = '') and (edtnuplconta.Text <> '') then
      begin
        nuplconta := edtnuplconta.Text
      end
      else
      begin
        nuplconta := nomedocodigo(_plconta, cds.fieldbyname(_cdplconta).AsString, _nunivel);
      end;
      if nuplconta <> cdsAutpagto.fieldbyname(_nuplconta).asstring then
      begin
        cdplconta := CodigodoCampo(_plconta, nuplconta, _nunivel);
        cdsAutpagto.Edit;
        cdsAutpagto.fieldbyname(_nuplconta).asstring := nuplconta;
        cdsAutpagto.fieldbyname(_cdplconta).AsString := cdplconta;
        cdsAutpagto.fieldbyname(_nmplconta).AsString := txtnmplconta.Caption;
        cdsAutpagto.Post;
      end;
      cdsAutpagto.Next;
    end;
    cdsAutpagto.RecNo := recno;
  finally
    cdsAutpagto.AfterScroll := cdsAutpagtoAfterScroll;
    cdsAutpagto.BeforePost := cdsAutpagtoBeforePost;
    cdsAutpagto.EnableControls;
  end;
end;

procedure TFrmEntrada.AtualizarPlanoContasItEntrada;
var
  recno : integer;
  cdplconta, nuplconta : string;
begin
  cdsItEntrada.DisableControls;
  cdsItEntrada.AfterScroll := nil;
  cdsItEntrada.BeforePost := nil;
  cdsItEntrada.AfterPost := nil;
  try
    recno := cdsItEntrada.recno;
    cdsItEntrada.First;
    while not cdsItEntrada.Eof do
    begin
      IF cdsItEntrada.fieldbyname(_nuplconta).asstring <> '' then
      begin
        if cdsItEntrada.RecNo = cdsItEntrada.RecordCount then
        begin
          Break;
        end;
        cdsItEntrada.Next;
        Continue;
      end;
      if (cds.fieldbyname(_cdplconta).AsString = '') and (edtnuplconta.Text <> '') then
      begin
        nuplconta := edtnuplconta.Text
      end
      else
      begin
        nuplconta := nomedocodigo(_plconta, cds.fieldbyname(_cdplconta).AsString, _nunivel);
      end;
      if nuplconta <> cdsItEntrada.fieldbyname(_nuplconta).asstring then
      begin
        cdplconta := CodigodoCampo(_plconta, nuplconta, _nunivel);
        cdsItEntrada.Edit;
        cdsItEntrada.fieldbyname(_nuplconta).asstring := nuplconta;
        cdsItEntrada.fieldbyname(_cdplconta).AsString := cdplconta;
        cdsItEntrada.fieldbyname(_nmplconta).AsString := txtnmplconta.Caption;
        cdsItEntrada.Post;
      end;
      cdsItEntrada.Next;
    end;
    cdsItEntrada.RecNo := recno;
  finally
    cdsItEntrada.AfterScroll := cdsItEntradaAfterScroll;
    cdsItEntrada.BeforePost := cdsItEntradaBeforePost;
    cdsItEntrada.AfterPost := cdsItEntradaAfterPost;
    cdsItEntrada.EnableControls;
  end;
end;

procedure Tfrmentrada.AtualizarTpCobrancaAutpagto;
var
  recno : integer;
begin
  cdsAutpagto.DisableControls;
  cdsAutpagto.AfterScroll := nil;
  cdsAutpagto.BeforePost := nil;
  try
    recno := cdsAutpagto.recno;
    cdsAutpagto.First;
    while not cdsAutpagto.Eof do
    begin
      cdsAutpagto.Edit;
      if cbxcdtpcobranca.Text = '' then
      begin
        cdsAutpagto.fieldbyname(_cdtpcobranca).clear;
      end
      else
      begin
        cdsAutpagto.fieldbyname(_cdtpcobranca).AsString := cbxcdtpcobranca.EditValue;
      end;
      cdsAutpagto.Post;
      cdsAutpagto.Next;
    end;
    cdsAutpagto.RecNo := recno;
  finally
    cdsAutpagto.AfterScroll := cdsAutpagtoAfterScroll;
    cdsAutpagto.BeforePost := cdsAutpagtoBeforePost;
    cdsAutpagto.EnableControls;
  end;
end;

procedure TFrmEntrada.GerarAutpagto_;
  function CondPagtoPossuiParcela(cdcondpagto:string):boolean;
  begin
    if cdcondpagto = '' then
    begin
      result := false;
      exit;
    end;
    result := RetornaSQLInteger('select count(*) from itcondpagto where cdempresa='+empresa.cdempresa.tostring+' and cdcondpagto='+cdcondpagto) > 0;
  end;
begin
  if (cds.fieldbyname(_vltotal).AsCurrency = 0) and CondPagtoPossuiParcela(cds.fieldbyname(_cdcondpagto).AsString) then
  begin
    messagedlg('Condição de Pagamento possui parcelas mas o valor da nota está zerado.'#13'É necessário valor da nota para gerar o contas a pagar.', mtinformation, [mbok], 0);
    exit;
  end;
  if not tela.dados.Existebaixaautpagto(cds.fieldbyname(_cdentrada).AsString) then
  begin
    tela.tela.Select(cds);
    Gerarautpagto(tela.tela, cds, cdsautpagto);
  end;
end;

procedure Tfrmentrada.actparcelamentoExecute(Sender: TObject);
begin
  if GerarParcelamentoautpagto(cds.fieldbyname(_cdentrada).asinteger) <> 0 then
  begin
    messagedlg('Parcelamento de contas a pagar gerado!', mtinformation, [mbok], 0);
    Abrir(cds.fieldbyname(_cdentrada).asinteger);
  end;
end;

function Tfrmentrada.check_adnt_fornecedor:boolean;
var
  cdadntfornecedor, valor : TStrings;
  cdadiantamento : string;
begin
  result        := False;
  cdadntfornecedor := TStringlist.create;
  valor         := TStringList.create;
  try
    if (cdsautpagtoCDSTAUTPAGTO.AsInteger = 1) and
       Tadntfornecedor.fornecedorPossuiAdiantamento(cdsautpagto.fieldbyname(_cdfornecedor).asstring, cdadntfornecedor, valor) and
       (cdadntfornecedor.count > 0 ) and
       (messagedlg('Fornecedor '+cds.fieldbyname(_rzsocial+_c).AsString+' possui adiantamento.'#13+
                   'Deseja baixar contas a pagar '+cdsautpagtonuautpagto.asstring+' com adiantamento?', mtinformation, [mbyes, mbno], 0) = mryes) then
    begin
      cdadiantamento := cdadntfornecedor[0];
      if cdadntfornecedor.Count > 1 then
      begin
        cdadiantamento := dlgescolheadiantamento(cdadntfornecedor, valor);
      end;
      if cdadiantamento <> '' then
      begin
        result := BaixarAdiantamento(cdsautpagtocdautpagto.AsInteger, _autpagto, strtoint(cdadiantamento));
      end;
    end;
  finally
    freeandnil(cdadntfornecedor);
    freeandnil(valor);
  end;
end;

procedure Tfrmentrada.actbaixarautpagtoExecute(Sender: TObject);
begin
  if check_adnt_fornecedor then
  begin
    registro.RegistroAbrir(cds.fieldbyname(_cdentrada).AsInteger);
    Exit;
  end;
  if BaixarDocumento(_autpagto, cdsautpagto.fieldbyname(_cdautpagto).AsInteger) then
  begin
    abrir(cds.fieldbyname(_cdentrada).AsInteger);
  end;
end;

procedure Tfrmentrada.Novo(nuentrada: string; cdordcompra: Integer; cditordcompra, cdtpentrada, cdcfop, nudocfiscalicms, nuchave, nuserie:string; dtemissao: TDate);
var
  ordcompra : TOrdCompra;
  vlicmssubtrib: Currency;
  procedure processar_cabecalho;
  begin
    ordcompra.Select(cdordcompra);
    edtCodigo.Text := nuentrada;
    cds.FieldByName(_nudocfiscalicms).asstring := nudocfiscalicms;
    edtnuchavenfe.Text := nuchave;
    cdsCDTPENTRADA.AsString := cdtpentrada;
    cds.FieldByName(_DTEMISSAO).asdatetime := dtemissao;
    cds.FieldByName(_DTsaida).asdatetime := dtbanco;
    cds.FieldByName(_nuentrada).AsString := nuentrada;
    cds.FieldByName(_cdfornecedor).AsLargeInt := ordcompra.cdfornecedor;
    cds.FieldByName(_cdtpfrete).AsString := ordcompra.cdtpfrete;
    cds.FieldByName(_vlfrete).AsCurrency := ordcompra.vlfrete;
    if ordcompra.cdtpcobranca <> 0 then
    begin
      cds.fieldbyname(_cdtpcobranca).AsInteger := ordcompra.cdtpcobranca;
    end;
    cds.FieldByName(_NUSERIE).AsString := nuserie;
    cds.FieldByName(_cdcfop).AsString := cdcfop;
  end;
  procedure processar_item;
  var
    i : integer;
  begin
    ordcompra.ItOrdCompra.Ler(cditordcompra);
    vlicmssubtrib := 0;
    for i := 0 to ordcompra.ItOrdCompra.Count - 1 do
    begin
      cdsItEntrada.Append;
      if ordcompra.ItOrdCompra.Items[i].cdcntcusto <> 0 then
      begin
        cdsItEntrada.FieldByName(_nucntcusto).asstring   := ordcompra.ItOrdCompra.Items[i].nucntcusto;
        cdsItEntrada.FieldByName(_cdcntcusto).asinteger   := ordcompra.ItOrdCompra.Items[i].cdcntcusto;
      end;
      cdsItEntrada.FieldByName(_CDDIGITADO).AsString      := ordcompra.ItOrdCompra.Items[i].cddigitado;
      cdsItEntrada.FieldByName(_cdordcompra).AsInteger    := ordcompra.cdordcompra;
      cdsItEntrada.FieldByName(_cditordcompra).AsInteger  := ordcompra.ItOrdCompra.Items[i].cditordcompra;
      if ordcompra.ItOrdCompra.Items[i].cdordproducao <> 0 then
      begin
        cdsItEntrada.FieldByName(_cdordproducao).AsInteger  := ordcompra.ItOrdCompra.Items[i].cdordproducao;
      end;
      cdsItEntrada.FieldByName(_QTITEM).asfloat           := ordcompra.ItOrdCompra.Items[i].QTITEM;
      cdsItEntrada.FieldByName(_VLUNITARIO).ascurrency    := ordcompra.ItOrdCompra.Items[i].VLUNITARIO;
      cdsItEntrada.FieldByName(_VLTOTAL).ascurrency       := ordcompra.ItOrdCompra.Items[i].VLTOTAL;
      ordcompra.ItOrdCompra.Items[i].produto.Select(ordcompra.ItOrdCompra.Items[i].cdproduto);
      cdsItEntrada.FieldByName(_alicms).AsFloat           := ordcompra.ItOrdCompra.Items[i].alicms;
      cdsItEntrada.FieldByName(_alipi).AsFloat            := ordcompra.ItOrdCompra.Items[i].alipi;
      cdsItEntrada.FieldByName(_vlicmssubtrib).AsCurrency := ordcompra.ItOrdCompra.Items[i].vlicmssubtrib;
      if ordcompra.ItOrdCompra.Items[i].cdplconta <> 0 then
      begin
        cdsItEntrada.FieldByName(_nuplconta).Asstring       := ordcompra.ItOrdCompra.Items[i].nuplconta;
        cdsItEntrada.FieldByName(_cdplconta).AsInteger      := ordcompra.ItOrdCompra.Items[i].cdplconta;
      end;
      if ordcompra.ItOrdCompra.Items[i].produto.borecuperaicms = _s then
      begin
        cdsItEntrada.FieldByName(_BORECUPERAICMS).asstring := _s;
      end;
      if ordcompra.ItOrdCompra.Items[i].produto.borecuperaipi = _s then
      begin
        cdsItEntrada.FieldByName(_BORECUPERAIPI).asstring  := _s;
      end;
      vlicmssubtrib := vlicmssubtrib + ordcompra.ItOrdCompra.Items[i].vlicmssubtrib;
      cdsItEntrada.Post;
    end;
  end;
begin
  actNovoExecute(nil);
  edtcodigo.clear;
  codigoinsercao := '';
  ordcompra := TOrdCompra.create;
  try
    processar_cabecalho;
    processar_item;
    cds.FieldByName(_vlicmssubtrib).AsCurrency := vlicmssubtrib;
    Gravartotais(nil);
    cds.FieldByName(_cdcondpagto).AsInteger := ordcompra.cdcondpagto;
    GerarAutpagto_;
    actSalvarExecute(actSalvar);
  finally
    FreeAndNil(ordcompra);
  end;
end;

procedure Tfrmentrada.AtualizarCentroCustoItEntrada(Sender: TField);
var
  recno: Integer;
begin
  cdsItEntrada.DisableControls;
  cdsItEntrada.AfterScroll := nil;
  cdsItEntrada.BeforePost := nil;
  cdsItEntrada.AfterPost := nil;
  try
    recno := cdsItEntrada.recno;
    cdsItEntrada.First;
    while not cdsItEntrada.Eof do
    begin
      if cdsItEntrada.fieldbyname(_nucntcusto).AsString = '' then
      begin
        cdsItEntrada.Edit;
        cdsItEntrada.fieldbyname(_nucntcusto).AsString := Sender.AsString;
        cdsItEntrada.Post;
      end;
      cdsItEntrada.Next;
    end;
    cdsItEntrada.RecNo := recno;
  finally
    cdsItEntrada.AfterScroll := cdsItEntradaAfterScroll;
    cdsItEntrada.BeforePost := cdsItEntradaBeforePost;
    cdsItEntrada.AfterPost := cdsItEntradaAfterPost;
    cdsItEntrada.EnableControls;
  end;
end;

procedure Tfrmentrada.AtualizarCentroCustoAutpagto(Sender: TField);
begin
  cdsautpagto.First;
  while not cdsautpagto.Eof do
  begin
    cdsAutPagto.Edit;
    cdsautpagto.fieldbyname(_nucntcusto).asstring := Sender.AsString;
    cdsAutPagto.Post;
    cdsautpagto.next;
  end;
end;

procedure Tfrmentrada.actmarkupExecute(Sender: TObject);
begin
  dlgmarkupentrada(cdsItEntrada.fieldbyname(_cditentrada).AsString);
end;

procedure Tfrmentrada.actimportarxmlExecute(Sender: TObject);
var
  opd : topendialog;
  acbr : TAcbr;
  nfe: TACBrNFe;
  cte: TACBrCTe;
  texto : TStringStream;
  arquivo : TStrings;
  function cte_da_empresa:boolean;
  begin
    result := cte.Conhecimentos.Items[0].CTe.Dest.CNPJCPF = Empresa.nucnpj_;
  end;
begin
  opd     := topendialog.Create(nil);
  acbr    := TAcbr.Create;
  texto   := TStringStream.Create('');
  arquivo := TStringList.Create;
  nfe     := TACBrNFe.Create(nil);
  cte     := TACBrCTe.Create(nil);
  try
    opd.Title      := 'Selecione a NFE ou CTE';
    opd.DefaultExt := '*.XML';
    opd.Filter     := 'Arquivos XML (*.XML)|*.XML|Arquivos NFE (*-nfe.XML)|*-nfe.XML|Todos os Arquivos (*.*)|*.*';
    if not opd.Execute then
    begin
      exit;
    end;
    nfe.NotasFiscais.Clear;
    arquivo.LoadFromFile(opd.FileName);
    texto.WriteString(UTF8Encode(arquivo.text));
    nfe.NotasFiscais.LoadFromStream(texto);
    if nfe.NotasFiscais.Items[0].NFe.Ide.modelo = 55 then
    begin
      if cds.FieldByName(_nuentrada).asinteger <> nfe.NotasFiscais.Items[0].NFe.Ide.nNF then
      begin
        messagedlg('O número da nota do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if not (nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF = Empresa.nucnpj_) then
      begin
        messagedlg('O Destinatário do xml não é o mesmo da empresa.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_dtemissao).asdateTime <> qdatahora.somente_data(nfe.NotasFiscais.Items[0].NFe.Ide.dEmi) then
      begin
        messagedlg('Data de Emissão do xml diferente da data de emissão do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if not cds.FieldByName(_cdfornecedor).IsNull then
      begin
        if removercaracteres(NomedoCodigo(_fornecedor, cds.fieldbyname(_cdfornecedor).AsString, _nucnpj)) <> nfe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF then
        begin
          messagedlg('O fornecedor do xml é diferente do fornecedor do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
          abort;
        end;
      end
      else if (not cds.FieldByName(_cdcliente).IsNull) and (removercaracteres(NomedoCodigo(_cliente, cds.fieldbyname(_cdcliente).AsString, _nucnpj)) <> nfe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) then
      begin
        messagedlg('O cliente do xml é diferente do cliente do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_nuserie).AsInteger <> nfe.NotasFiscais.Items[0].NFe.Ide.serie then
      begin
        messagedlg('O número do sérié do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vlicms).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS then
      begin
        messagedlg('O valor do icms do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vlbaseicms).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC then
      begin
        messagedlg('O valor da base do icms do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vlproduto).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd then
      begin
        messagedlg('O valor do produto do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vlfrete).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete then
      begin
        messagedlg('O valor do frete do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vlseguro).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg then
      begin
        messagedlg('O valor do seguro do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vldesconto).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc then
      begin
        messagedlg('O valor do desconto do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vlipi).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vipi then
      begin
        messagedlg('O valor do ipi do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vltotal).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF then
      begin
        messagedlg('O valor da nota do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vloutdespesa).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro then
      begin
        messagedlg('O valor de outras despeas do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vlbaseicmssubtrib).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST then
      begin
        messagedlg('O valor da base do icms substituição tributária do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_vlicmssubtrib).AsCurrency <> nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST then
      begin
        messagedlg('O valor do icms substituição tributária do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      actEditarExecute(actEditar);
      cds.fieldbyname(_nuchavenfe).AsString := nfe.NotasFiscais.Items[0].NFe.procNFe.chNFe;
      if cds.fieldbyname(_nuchavenfe).AsString = '' then
      begin
        cds.fieldbyname(_nuchavenfe).AsString := copy(nfe.NotasFiscais.Items[0].NFe.infNFe.ID, 4, 44);
      end;
    end
    else
    begin
      cte.Conhecimentos.LoadFromStream(texto);
      if not cte_da_empresa then
      begin
        messagedlg('O Destinatário do Conhecimento não é o mesmo da empresa.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.fieldbyname(_dtsaida).asdateTime < cte.Conhecimentos.Items[0].CTe.Ide.dhEmi then
      begin
        messagedlg('Data de entrada não pode ser menor que a data de emissão do documento.'#13'Altere a data para continuar.', mtinformation, [mbok], 0);
        abort;
      end;
      if not cds.FieldByName(_cdfornecedor).IsNull then
      begin
        if removercaracteres(NomedoCodigo(_fornecedor, cds.fieldbyname(_cdfornecedor).AsString, _nucnpj)) <> cte.Conhecimentos.Items[0].CTe.Emit.CNPJ then
        begin
          messagedlg('O fornecedor do xml é diferente do fornecedor do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
          abort;
        end;
      end;
      if cds.FieldByName(_nuentrada).asinteger <> cte.Conhecimentos.Items[0].CTe.Ide.nCT then
      begin
        messagedlg('O número da nota do xml não é o mesmo do documento.'#13'Importação não concluída.', mtinformation, [mbok], 0);
        abort;
      end;
      actEditarExecute(actEditar);
      cds.fieldbyname(_nuchavenfe).AsString := cte.Conhecimentos.Items[0].CTe.procCTe.chCTe;
    end;
    cds.fieldbyname(_DSXML).asstring := arquivo.Text;
    actSalvarExecute(actSalvar);
  finally
    FreeAndNil(acbr);
    freeandnil(texto);
    FreeAndNil(arquivo);
    freeandnil(nfe);
    freeandnil(cte);
    freeandnil(opd);
  end;
end;

procedure Tfrmentrada.actabrirordcompraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsItEntrada);
end;

procedure Tfrmentrada.actdesaprovacaoExecute(Sender: TObject);
var
  cdusuario, texto :string;
begin
  texto := 'Desaprovar o pagamento da compra '+cds.FieldByName(_nuentrada).AsString+#13+
           'para o fornecedor '+cds.FieldByName(_cdfornecedor).AsString+' - '+cds.FieldByName(_rzsocial+_f).asstring+#13+
           'com o valor de '+formatfloat(__moeda, cds.FieldByName(_vltotal).AsCurrency)+'.';
  if not assinaturadigital(texto, cdusuario) then
  begin
    Exit;
  end;
  cds.DisableControls;
  try
    ExecutaSQL('update autpagto set cdusuarioaprovacao=null,cdcomputadoraprovacao=null,tsaprovacao=null where cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and cdentrada='+cds.fieldbyname(_cdentrada).AsString);
    cdsautpagto.First;
    while not cdsautpagto.Eof do
    begin
      autpagto.RegistrarHistoricoAprovacao(cdsautpagto.FieldByName(_cdautpagto).AsString, _d);
      cdsautpagto.Next;
    end;
    abrir(cds.fieldbyname(_cdentrada).AsInteger);
  finally
    cds.EnableControls;
  end;
end;

procedure Tfrmentrada.actdevolucaoExecute(Sender: TObject);
  function get_cduf:integer;
  begin
    result := 0;
    if not cds.FieldByName(_cdcliente).IsNull then
    begin
      result := qregistro.inteirodocodigo(_cliente, cds.FieldByName(_cdcliente).AsString, _cduf)
    end
    else if not cds.FieldByName(_cdfornecedor).IsNull then
    begin
      result := qregistro.inteirodocodigo(_fornecedor, cds.FieldByName(_cdfornecedor).AsString, _cduf);
    end;
  end;
var
  cduf, cdtpsaida, cdcfop : integer;
  cdsaida:integer;
  saida : TSaida;
begin
  cduf := get_cduf;
  if (cduf = 0) or (not Gerar_devolucao_simples(cduf, cdtpsaida, cdcfop)) then
  begin
    exit;
  end;
  saida := TSaida.create;
  try
    cdsaida := saida.gerar_devolucao_simples(cds.fieldbyname(_cdentrada).asinteger, cdtpsaida, cdcfop);
  finally
    saida.Free;
  end;
  if cdsaida <> 0 then
  begin
    frmmain.Abrirformulario(_saida, cdsaida);
  end;
end;

procedure Tfrmentrada.FormCreate(Sender: TObject);
begin
  exibe       := 'Compra';
  pnl.caption := exibe;
  AbrirTabelas;
  livrofiscal := tlivrofiscal.create;
  autpagto    := TAutPagto.create;
  tela        := TTelaentrada.create;
  produto     := TProduto.create;
  transportadora := ttransportadora.create;
  pgc.activepage := tbsproduto;
  registro := tregistro.create(self, _entrada, exibe, artigoI, cds, dts, edtcodigo, true);
  GeraMenuRelatorio ('', btnimprimir, 8, cds, _entrada);
end;

procedure Tfrmentrada.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure Tfrmentrada.setVlfreteItem;
begin
  edtvlfrete.Enabled := not ckbbofreteitem.Checked;
  //if chkbofreteitem.Checked then InserirCampoGrade(grdItEntrada, uppercase(_vlfrete), uppercase(_vltotal))
end;

procedure Tfrmentrada.setVlicmssubtribItem;
begin
  edtVLICMSSUBTRIB.Enabled := not ckbboicmsstitem.Checked;
  //if chkboicmsstitem.Checked then InserirCampoGrade(grdItEntrada, uppercase(_vlicmssubtrib), uppercase(_vltotal))
end;

procedure Tfrmentrada.actimprimirautorizacaopagtoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(500, 'where entrada.cdempresa='+empresa.cdempresa.tostring+' and entrada.cdentrada='+cds.fieldbyname(_cdentrada).AsString);
end;

procedure Tfrmentrada.actmanifestodestinatarioExecute(Sender: TObject);
var
  errormsg, Chave, idLote: string;
  vCodigo_Status, nSeqEvento : Integer;
  function get_nome_arquivo:string;
    function get_anomes:string;
    begin
      result := '';
      if nfe.Configuracoes.Arquivos.SepararPorMes then
      begin
        Result := FormatDateTime(_yyyymm, nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento)+'\';
      end;
    end;
  begin
    result := nfe.Configuracoes.Arquivos.PathSalvar+get_anomes+
              nfe.EventoNFe.Evento.Items[0].InfEvento.TipoEvento +
              nfe.EventoNFe.Evento.Items[0].InfEvento.chNFe +
              _0+IntToStr(nfe.EventoNFe.Evento.Items[0].InfEvento.nSeqEvento)+
              '-ProcEventoNFe.xml';
  end;
  function inserir_manifesto:boolean;
  var
    c : TClasseQuery;
  begin
    c := TClasseQuery.create(QRetornaSQL.get_select_from(_entradamanifesto, _0), true);
    try
      c.q.Insert;
      c.q.fieldbyname(_cdentradamanifesto).AsString := idlote;
      c.q.fieldbyname(_cdentrada).asstring          := cds.fieldbyname(_cdentrada).AsString;
      c.q.fieldbyname(_nSeqEvento).AsInteger        := nSeqEvento;
      c.q.fieldbyname(_tsemissao).asdateTime        := nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
      c.q.fieldbyname(_nuprotocolo).asstring        := nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
      c.q.fieldbyname(_dsxml).asstring              := NFe.WebServices.EnvEvento.RetWS;
      RegistraInclusao(c.q);
      aplicacao.aplyupdates(c.q);
      ExecutaSQL('update entrada set nSeqEvento='+inttostr(nSeqEvento)+' where cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+cds.fieldbyname(_cdentrada).AsString);
      result := true;
    finally
      freeandnil(c);
    end;
  end;
begin
  if edtnuchavenfe.Text = '' then
  begin
    Exit;
  end;
  Chave      := edtnuchavenfe.Text;
  idLote     := GerarCodigo(_entradamanifesto);
  nSeqEvento := 1;
  LerConfiguracao;
  NFe.EventoNFe.Evento.Clear;
  with NFe.EventoNFe.Evento.Add do
  begin
    InfEvento.cOrgao     := 91;
    infEvento.tpAmb      := taProducao;
    infEvento.CNPJ       := EMPRESA.nucnpj;
    infEvento.chNFe      := Chave;
    infEvento.dhEvento   := tsBanco;
    infEvento.tpEvento   := teManifDestConfirmacao;
    infEvento.nSeqEvento := nSeqEvento;
  end;
  //@NFe.EnviarEventoNFe(StrToInt(IDLote));
  NFe.EnviarEvento(StrToInt(IDLote));
  vCodigo_Status := nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;// nfe.WebServices.EnvEvento.cStat;
  if vCodigo_Status = 135 then
  begin
    MessageBox(Handle, 'Manifesto do Destinatário enviado com sucesso.', 'Atenção', MB_OK+MB_ICONINFORMATION);
    try
      //@Dlg_XML_to_TreeView('ACBrNFe1.WebServices.EnvEvento.RetWS', UTF8Encode(NFe.WebServices.EnvEvento.RetWS), true);
      //@Dlg_XML_to_TreeView('ACBrNFe1.WebServices.EnvEvento.RetornoWS', UTF8Encode(NFe.WebServices.EnvEvento.RetornoWS), true);
      if inserir_manifesto then
      begin
        Abrir(cds.fieldbyname(_cdentrada).AsInteger);
      end;
    except
      on E: Exception do
      begin
        errormsg := 'Manifesto do Destinatário enviado com sucesso, PORÉM OCORREU UM ERRO AO GRAVAR NA BASE DE DADOS. ENTRE EM CONTATO COM A QUIPOS PARA REGULARIZAR A GRAVAÇÃO.'+#13+e.message;
        MessageBox(Handle, PChar(errormsg), 'Atenção', MB_OK+MB_ICONINFORMATION);
      end;
    end;
  end
  else
  begin
    MessageDlg('Erro no envio do Manifesto do Destinatário nº '+FormatFloat(_0,nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + ' - ' + nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo, mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure Tfrmentrada.LerConfiguracao;
Var
  IniFile: String;
  Ini: TIniFile;
  Ok: Boolean;
  msg : tstrings;
  StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.'+_ini);
  Ini     := TIniFile.Create(IniFile);
  msg     := tstringlist.create;
  StreamMemo := TMemoryStream.Create;
  try
    NFe.Configuracoes.Certificados.Senha := Ini.ReadString( 'Certificado','Senha'   ,'');
    //{$IFDEF DFE_SEM_CAPICOM}
      //NFe.Configuracoes.Certificados.ArquivoPFX  := Ini.ReadString( 'Certificado','Caminho' ,'');
    //{$ELSE}
      NFe.Configuracoes.Certificados.NumeroSerie := Ini.ReadString( 'Certificado','NumSerie','');
    //{$ENDIF}
    NFe.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(Ini.ReadInteger( 'Geral','FormaEmissao',0)+1));
    NFe.Configuracoes.Geral.Salvar       := Ini.ReadBool  ('Geral','Salvar'      ,True);
    //NFe.Configuracoes.Geral.PathSalvar   := Ini.ReadString('Geral','PathSalvar'  ,'');
    NFe.Configuracoes.Arquivos.PathSalvar   := Ini.ReadString('Geral','PathSalvar'  ,'');

    NFe.Configuracoes.WebServices.UF         := Ini.ReadString('WebService','UF','MG');
    NFe.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(Ini.ReadInteger( 'WebService','Ambiente'  ,0)+1));
    NFe.Configuracoes.WebServices.Visualizar := Ini.ReadBool('WebService','Visualizar',False);

    NFe.Configuracoes.WebServices.ProxyHost := Ini.ReadString('Proxy','Host','');
    NFe.Configuracoes.WebServices.ProxyPort := Ini.ReadString('Proxy','Porta','');
    NFe.Configuracoes.WebServices.ProxyUser := Ini.ReadString('Proxy','User','');
    NFe.Configuracoes.WebServices.ProxyPass := Ini.ReadString('Proxy','Pass','');

    Ini.ReadBinaryStream('Email','Mensagem',StreamMemo) ;
    msg.LoadFromStream(StreamMemo);
    StreamMemo.Free;
  finally
    freeandnil(Ini);
    freeandnil(msg);
  end;
end;

procedure Tfrmentrada.exibirChaveNFE(nudocfiscalicms: string);
begin
  lblnuchavenfe.Visible := (nudocfiscalicms = _55) or (nudocfiscalicms = _57);
  edtnuchavenfe.Visible := (nudocfiscalicms = _55) or (nudocfiscalicms = _57);
  if ((cds.State = dsedit) or (cds.State = dsinsert)) and (not edtnuchavenfe.Visible) then
  begin
    edtnuchavenfe.Text := '';
    cds.FieldByName(_nuchavenfe).Clear;
  end;
end;

function Tfrmentrada.AchouBaixa:boolean;
begin
  result := false;
  cdsautpagto.first;
  while not cdsautpagto.Eof do
  begin
    if tela.dados.ExisteBaixaConta(cdsautpagto.fieldbyname(_cdautpagto).asstring) then
    begin
      result := true;
      break;
    end;
    cdsautpagto.Next;
  end;
end;

procedure Tfrmentrada.chkboicmsstitemClick(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    setVlicmssubtribItem;
  end;
end;

procedure Tfrmentrada.setAutpagtoEnabled(boativar: Boolean);
begin
  edtCDCONDPAGTO.Enabled  := boativar;
  edtdshistorico.Enabled  := boativar;
  cbxcdtpcobranca.Enabled := boativar;
  edtnuplconta.Enabled    := boativar;
  grdautpagto.Enabled     := boativar;
end;

procedure Tfrmentrada.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  //edtcodigo.Enabled       := not ((dts.State = dsinsert) or (dts.State = dsedit));
  actparcelamento.Enabled := actEditar.Enabled and (not AchouBaixa);
  if actimportarxml.Visible then
  begin
    actimportarxml.Enabled  := acteditar.Enabled;
  end;
  actdevolucao.Enabled    := actEditar.Enabled;
  if cds.Active = false then
  begin
    actImportarNFE.Enabled := true;
  end
  else
  begin
    actImportarNFE.Enabled := not actSalvar.Enabled;
  end;
  actinsercaocdbarra.Enabled := false;
  actinsercaocdbarra.Visible := false;
end;

procedure Tfrmentrada.dtsAutpagtoStateChange(Sender: TObject);
begin
  if cdsautpagto.State = dsinsert then
  begin
    cdsautpagto.fieldbyname(_CDSTAUTPAGTO).AsInteger := qregistro.Codigo_status_novo(_AUTPAGTO);
  end;
end;

procedure Tfrmentrada.cdsentradac111BeforePost(DataSet: TDataSet);
begin
  registrainformacao_(dataset);
end;

procedure Tfrmentrada.cdsentradaefd0450BeforePost(DataSet: TDataSet);
begin
  registrainformacao_(dataset);
end;

procedure Tfrmentrada.cdsitentradaloteBeforePost(DataSet: TDataSet);
  {function verificar_estoque(codigo:string):boolean;
  begin
    codigo := NomedoCodigo(_itentradalote, codigo, _cditlote);
    if codigo <> '' then
    begin
      dataset.fieldbyname(_cditlote).asstring := codigo;
    end;
    result := DoubledoCodigo(_itlote, codigo, _qtestoque) =  0;
  end;
  procedure check_imei_repetido;
  var
    codigo : string;
  begin
    codigo := qregistro.codigo_do_registro_existe(_nuimei, dataset.FieldByName(_nuimei).asstring, _itentradalote, dataset.FieldByName(_cditentradalote).asstring);
    if (codigo <> '') and (not verificar_estoque(codigo)) then
    begin
      messagedlg('Número IMEI repetido.', mtinformation, [mbok], 0);
      abort;
    end;
  end;
  procedure check_imei_duplicado_na_grade;
  begin
    //if ExisteDuplicidadegride(grditentradalote, 1, dataset.FieldByName(_nuimei).asstring) then
    //begin
      //messagedlg('IMEI '+dataset.FieldByName(_nuimei).asstring+' duplicado!', mtinformation, [mbok], 0);
      //abort;
    //end;
  end;}
begin
  if (Dataset.State = dsinsert) and cdsitentradaloteCDITentradaLOTE.isnull then
  begin
    cdsitentradaloteCDITentradaLOTE.AsString := GerarCodigo(_itentradalote);
  end;
  RegistraInformacao_(dataset);
  {if (dataset.State = dsinsert) and dataset.FieldByName(_cditentradalote).isnull then
  begin
    dataset.FieldByName(_cditentradalote).AsString := GerarCodigo(_itentradalote);
  end;
  if dataset.FieldByName(_nuimei).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__numero+' '+_imei]), mtinformation, [mbok], 0);
    abort;
  end;
  if length(dataset.FieldByName(_nuimei).asstring) <> 15 then
  begin
    messagedlg('Número IMEI é um campo de 15 caracteres.', mtinformation, [mbok], 0);
    abort;
  end;
  dataset.FieldByName(_nuimei).asstring := UpperCase(dataset.FieldByName(_nuimei).asstring);
  check_imei_repetido;
  check_imei_duplicado_na_grade;
  registrainformacao_(dataset);}
end;

procedure Tfrmentrada.cdsitentradaloteNewRecord(DataSet: TDataSet);
begin
  if dataset.recordcount > cdsItEntrada.FieldByName(_qtitem).AsFloat then
  begin
    messagedlg('Quantidade de itens já preenchidos com IMEI.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure Tfrmentrada.cdsautpagtoAfterOpen(DataSet: TDataSet);
begin
  checkapsquitadas;
end;

procedure Tfrmentrada.cdsautpagtoAfterScroll(DataSet: TDataSet);
begin
  actbaixarautpagto.Enabled := cdsautpagto.FieldByName(_cdstautpagto).AsInteger = 1;
end;

procedure Tfrmentrada.cdsautpagtoBeforePost(DataSet: TDataSet);
begin
  if dataset.State = dsinsert then
  begin
    dataset.fieldbyname(_cdautpagto).Asstring := GerarCodigo(_AUTPAGTO);
    dataset.fieldbyname(_dtemissao).asdateTime := cds.fieldbyname(_dtsaida).asdateTime;
  end;
  if dataset.FieldByName(_dtvencimento).asdateTime < cdsDTEMISSAO.AsDateTime then
  begin
    MessageDlg('Data de vencimento não pode ser maior do que a data de emissão da nota fiscal.'#13'Altere a data de vencimento para continuar.', mtInformation, [mbOK], 0);
    dataset.FieldByName(_dtvencimento).FocusControl;
    Abort;
  end;
  registrainformacao_(dataset);
end;

procedure Tfrmentrada.cdsautpagtoNewRecord(DataSet: TDataSet);
begin
  cdsautpagto.FieldByName(_cdfornecedor).AsString := cds.FieldByName(_cdfornecedor).AsString;
  cdsautpagto.FieldByName(_cdtpcobranca).AsString := cds.FieldByName(_cdtpcobranca).AsString;
  cdsautpagto.FieldByName(_nuautpagto).AsString   := cds.FieldByName(_nuentrada).AsString;
  cdsautpagtoVLAUTPAGTO.AsCurrency := 0;
  cdsautpagtoVLBAIXA.AsCurrency := 0;
  cdsautpagtoVLPREVISTO.AsCurrency := 0;
  cdsautpagtoVLDESCONTO.AsCurrency := 0;
  cdsautpagtoVLMULTA.AsCurrency := 0;
  cdsautpagtoVLDEVOLUCAO.AsCurrency := 0;
  cdsautpagtoVLABATIMENTO.AsCurrency := 0;
  cdsautpagtoVLSALDO.AsCurrency := 0;
  cdsautpagtoVLDEDUCAO.AsCurrency := 0;
  cdsautpagtoVLACRESCIMO.AsCurrency := 0;
  cdsautpagtoVLJUROS.AsCurrency := 0;
  cdsautpagtoVLRECEBIDO.AsCurrency := 0;
  cdsautpagtoPRMORADIARIA.AsFloat := 0;
  cdsautpagtoPRMULTA.AsFloat := 0;
  set_bo_value(dataset);
end;

procedure Tfrmentrada.cdsitentradaAfterPost(DataSet: TDataSet);
begin
  GravarTotais2(dataset);
end;

procedure Tfrmentrada.check_dtvalidade_fabricacao(DataSet: TDataSet);
begin
  if not ((tela.dados.tpentrada.bodtfabricacao = _s) and (tela.dados.tpentrada.bodtvalidade = _s))then
  begin
    Exit;
  end;
  if BooleandoCodigo(_tpproduto, nomedocodigo(_produto, dataset.fieldbyname(_cdproduto).asstring, _cdtpproduto), _bolote) then
  begin
    if dataset.fieldbyname(_dtfabricacao).isnull then
    begin
      dataset.fieldbyname(_dtfabricacao).FocusControl;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_data+' '+_da+' '+__fabricacao]), mtinformation, [mbok], 0);
      abort;
    end;
    if dataset.fieldbyname(_dtvalidade).isnull then
    begin
      dataset.fieldbyname(_dtvalidade).FocusControl;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_data+' '+_de+' '+_validade]), mtinformation, [mbok], 0);
      Abort;
    end;
  end
  else
  begin
    dataset.fieldbyname(_dtfabricacao).clear;
    dataset.fieldbyname(_dtvalidade).clear;
  end;
end;

procedure Tfrmentrada.check_qtitem;
begin
  if (cdsitentradaQTITEM.AsFloat <> 0) or (cdsitentradaBOLOTEIMEI.AsString = _s) then
  begin
    Exit;
  end;
  MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Quantidade]), mtInformation, [mbOK], 0);
  if pgc.ActivePage <> tbsproduto then
  begin
    pgc.ActivePage := tbsproduto;
  end;
  cdsitentradaQTITEM.FocusControl;
  abort;
end;

procedure Tfrmentrada.cdsitentradaBeforePost(DataSet: TDataSet);
var
  valor : double;
begin
  valor := cdsitentradaQTITEM.AsFloat * 100000;
  valor := int(valor);
  valor := valor / 100000;
  if cdsitentradaQTITEM.AsFloat > valor then
  begin
    cdsitentradaqtitem.OnValidate := nil;
    cdsitentradaQTITEM.AsFloat := valor;
    cdsitentradaqtitem.OnValidate := cdsitentradaQTITEMValidate;
  end;
  check_qtitem;
  if dataset.fieldbyname(_nusticms).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__situacao+' '+__Tributaria+' '+_icms+' '+_do+' '+__item]), mtinformation, [mbok], 0);
    Abort;
  end;
  if dataset.FieldByName(_cdcfop).IsNull or (dataset.FieldByName(_cdcfop).AsString = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CFOP]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsproduto;
    dataset.FieldByName(_cdcfop).FocusControl;
    Abort;
  end;
  if dataset.FieldByName(_cddigitado).IsNull or (dataset.FieldByName(_cddigitado).AsString = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_Produto]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsproduto;
    dataset.FieldByName(_cddigitado).FocusControl;
    Abort;
  end;
  if ((cbxnudocfiscalicms.Text = _08) or (cbxnudocfiscalicms.Text = _57)or (cbxnudocfiscalicms.Text = _07)) and not BooleandoCodigo(_cfop, dataset.FieldByName(_cdcfop).AsString, _bocte) then
  begin
    MessageDlg('CFOP inválido para o Documento Fiscal '+cbxnudocfiscalicms.Text+'.'#13'Altere o CFOP para poder continuar.', mtInformation, [mbOK], 0);
    dataset.FieldByName(_cdcfop).FocusControl;
    abort;
  end;
  check_dtvalidade_fabricacao(dataset);
  // Calcula do Valor Total do Item
  if dataset.fieldbyname(_boajustetotal).AsString <> _S then
  begin
    dataset.fieldbyname(_vltotal).AsCurrency := QRotinas.Roundqp(dataset.fieldbyname(_QTITEM).asfloat * dataset.fieldbyname(_VLUNITARIO).asfloat, cds.FieldByName(_boarredondar).asstring=_S);
  end;
  if cds.FieldByName(_bofreteitem).AsString <> _s then
  begin
    RatearValoresItens(tela.dados.tpentrada.bofrete, _vlfrete);
  end;
  if cds.FieldByName(_bodescontoitem).AsString <> _s then
  begin
    RatearValoresItens(_s, _vldesconto);
  end;
  RatearValoresItens(_s, _vloutdespesa);
  RatearValoresItens(_s, _vlseguro);
  RatearValoresItens(tela.dados.tpentrada.boicmssubst, _vlicmssubtrib);
  calcularimpostoipiitem;
  calcularimpostoicmsitem;
  CalcularImpostoItem(_pis   , cdsItEntrada.fieldbyname(_bobasepisajuste).AsString    = _s);
  CalcularImpostoItem(_cofins, cdsItEntrada.fieldbyname(_bobasecofinsajuste).AsString = _s);
  if dataset.State = dsinsert then
  begin
    dataset.FieldByName(_cditentrada).AsString := GerarCodigo(_itentrada);
  end;
  if not dataset.FieldByName(_nustipi).IsNull and (dataset.FieldByName(_nustipi).AsString = '') then
  begin
    dataset.FieldByName(_nustipi).Clear;
  end;
  if dataset.fieldbyname(_nusticms).AsString = _90 then
  begin
    dataset.fieldbyname(_borecuperaicms).AsString := _n;
  end;
  if (dataset.FieldByName(_borecuperaicms).AsString = _s) and (dataset.FieldByName(_vlicms).AsCurrency = 0) then
  begin
    dataset.FieldByName(_borecuperaicms).AsString := _N;
  end;
  if (dataset.FieldByName(_borecuperaipi).AsString = _s) and (dataset.FieldByName(_vlipi).AsCurrency = 0) then
  begin
    dataset.FieldByName(_borecuperaipi).AsString  := _N;
  end;
  if ((dataset.State = dsinsert) or (dataset.State = dsedit)) and
     (not ((dataset.FieldByName(_qtitem).AsFloat = 0) and
     (dataset.FieldByName(_vlunitario).AsCurrency = 0) and (cds.FieldByName(_nustdocumento).AsString = _06))) then
  begin
    if dataset.FieldByName(_qtitem).IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Quantidade]), mtinformation, [mbok], 0);
      dataset.FieldByName(_qtitem).FocusControl;
      Abort;
    end;
    if dataset.FieldByName(_vlunitario).IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Valor+' '+__unitario]), mtinformation, [mbok], 0);
      dataset.FieldByName(_vlunitario).FocusControl;
      Abort;
    end;
    {if (dataset.FieldByName(_vlunitario).AsCurrency = 0) and (cds.FieldByName(_nustdocumento).AsString <> _06) then
    begin
      MessageDlg('Valor unitário não pode ser igual a zero.', mtInformation, [mbOK], 0);
      dataset.FieldByName(_vlunitario).FocusControl;
      Abort;
    end;}
    if dataset.FieldByName(_vlunitario).AsCurrency < 0 then
    begin
      MessageDlg('Valor unitário não pode ser NEGATIVO.', mtInformation, [mbOK], 0);
      dataset.FieldByName(_vlunitario).FocusControl;
      Abort;
    end;
    if (dataset.FieldByName(_qtitem).AsFloat = 0) and (cdsitentradaboloteimei.AsString <> _s) then
    begin
      MessageDlg('Quantidade não pode ser igual a zero.'#13'Altere o valor para continuar.', mtInformation, [mbOK], 0);
      dataset.FieldByName(_qtitem).FocusControl;
      Abort;
    end;
    if dataset.FieldByName(_qtitem).AsFloat < 0 then
    begin
      MessageDlg('Quantidade não pode ser NEGATIVO.'#13'Altere o valor para continuar.', mtInformation, [mbOK], 0);
      dataset.FieldByName(_qtitem).FocusControl;
      Abort;
    end;
  end;
  if (dataset.FieldByName(_nusticms).AsString = _00) and (dataset.FieldByName(_alicms).AsFloat = 0) then
  begin
    dataset.FieldByName(_nusticms).AsString := _90;
    dataset.FieldByName(_borecuperaicms).AsString := _N;
  end;
  if (dataset.FieldByName(_nusticms).AsString = _00) and (dataset.FieldByName(_alicms).AsFloat > 0) then //and (dataset.FieldByName(_borecuperaicms).AsString = _N) then
  begin
    dataset.FieldByName(_borecuperaicms).AsString := _s;
  end;
  registrainformacao_(dataset);
end;

procedure Tfrmentrada.cdsitentradaNewRecord(DataSet: TDataSet);
begin
  if cbxcdtpentrada.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtpentrada.SetFocus;
    abort;
  end;
  if (tela.dados.tpentrada.tpforncliente = _c) and (edtCDCLIENTE.text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [lblcodigo.caption]), mtinformation, [mbok], 0);
    edtCDCLIENTE.SetFocus;
    abort;
  end;
  if (tela.dados.tpentrada.tpforncliente = _f) and (edtCDfornecedor.text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [lblcodigo.caption]), mtinformation, [mbok], 0);
    edtCDfornecedor.SetFocus;
    abort;
  end;
  dataset.FieldByName(_qtitem).AsFloat       := 1;
  dataset.FieldByName(_vlunitario).AsCurrency := 0;
  dataset.FieldByName(_vltotal).AsCurrency    := 0;
  set_bo_value(dataset);
end;

procedure Tfrmentrada.cdsAfterScroll(DataSet: TDataSet);
  procedure set_manifesto;
  begin
    tbsxml.TabVisible                := (cds.FieldByName(_nudocfiscalicms).AsString = _55) or (cds.FieldByName(_nudocfiscalicms).AsString = _57);
    actmanifestodestinatario.Visible := cds.FieldByName(_nudocfiscalicms).AsString = _55;
    actimprimirnfe.Visible           := cds.FieldByName(_dsxml).AsString <> '';
    actexportarxml.Visible           := cds.FieldByName(_dsxml).AsString <> '';
    lblnuchavenfe.Visible            := (cds.FieldByName(_nudocfiscalicms).AsString = _55) or (cds.FieldByName(_nudocfiscalicms).AsString = _57);
    edtnuchavenfe.Visible            := (cds.FieldByName(_nudocfiscalicms).AsString = _55) or (cds.FieldByName(_nudocfiscalicms).AsString = _57);
    if (cds.fieldbyname(_cdentrada).AsString <> '') and RegistroExiste(_entradamanifesto, 'cdentrada='+cds.fieldbyname(_cdentrada).AsString) then
    begin
      actmanifestodestinatario.Caption := 'Manifesto Realizado';
      actmanifestodestinatario.Enabled := False;
    end
    else
    begin
      actmanifestodestinatario.Caption := 'Manifesto Destinatário';
      actmanifestodestinatario.Enabled := true;
    end;
  end;
begin
  tela.tela.Select(cds);
  tela.tela.autpagto.Ler(cdsautpagto);
  tela.tela.condpagto.Select(tela.tela.cdcondpagto);
  tela.tela.condpagto.itcondpagto.Ler(tela.tela.cdcondpagto);
  setrecord(cdsCDTPENTRADA.AsInteger);
  setVisibleFreteSub;
  setVlfreteItem;
  if actEditar.Visible and (cds.RecordCount > 0) and empresa.livro.bolivrofiscal then
  begin
    actEditar.Enabled := livrofiscal.permitealterarnota(cds.fieldbyname(_dtsaida).asdateTime);
  end;
  if actexcluir.Visible and (cds.RecordCount > 0) and empresa.livro.bolivrofiscal then
  begin
    actexcluir.Enabled := livrofiscal.permitealterarnota(cds.fieldbyname(_dtsaida).asdateTime);
  end;
  checkapsquitadas;
  set_manifesto;
  tbsxml.caption := 'XML';
  if cds.fieldbyname(_dsxml).asstring <> '' then
  begin
    tbsxml.caption := tbsxml.caption + ' (*)';
  end;
  if not cds.fieldbyname(_cdcliente).IsNull then
  begin
    tela.tela.cliente.select(cds.fieldbyname(_cdcliente).AsLargeInt);
    lblcodigo.Hint := tela.tela.cliente.hint_rzsocial;
    tela.dados.cduf := tela.tela.cliente.cduf;
  end;
  if not cds.fieldbyname(_cdfornecedor).IsNull then
  begin
    tela.tela.fornecedor.select(cds.fieldbyname(_cdfornecedor).AsLargeInt);
    lblcodigo.Hint := tela.tela.fornecedor.hint_rzsocial;
    tela.dados.cduf := tela.tela.fornecedor.cduf;
  end;
  setVisibleTransportadora;
end;

procedure Tfrmentrada.checkcfop;
begin
  if edtCDCFOP.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CFOP]), mtinformation, [mbok], 0);
    edtCDCFOP.SetFocus;
    abort;
  end;
end;

procedure Tfrmentrada.cdsBeforePost(DataSet: TDataSet);
var
  cduf : integer;
  procedure checkdtemissao;
  begin
    if dataset.fieldbyname(_dtemissao).IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__emissao]), mtinformation, [mbok], 0);
      dataset.fieldbyname(_dtemissao).FocusControl;
      abort;
    end;
  end;
  procedure checkdtsaida;
  begin
    if dataset.fieldbyname(_dtsaida).IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+_Entrada]), mtinformation, [mbok], 0);
      dataset.fieldbyname(_dtsaida).FocusControl;
      abort;
    end;
    if dataset.fieldbyname(_dtsaida).asdateTime < dataset.fieldbyname(_dtemissao).asdateTime then
    begin
      messagedlg('Data de Saída inválida!'#13'Data de Saída não pode ser menor do que a Data de Emissão!', mtinformation, [mbok], 0);
      dataset.fieldbyname(_dtsaida).FocusControl;
      abort;
    end;
    if Empresa.livro.bolivrofiscal and (dataset.fieldbyname(_dtsaida).asdateTime <= livrofiscal.UltimoDia) and (not LivroFiscal.PermiteAlterarNota(livrofiscal.UltimoDia)) then
    begin
      messagedlg('Data de Entrada inválida!'#13'Digite uma data acima da data da última'#13'apuração do livro fiscal ('+formatdatetime(_dd_mm_yyyy, livrofiscal.UltimoDia)+')', mtinformation, [mbok], 0);
      dataset.fieldbyname(_dtsaida).FocusControl;
      abort;
    end;
    if dataset.fieldbyname(_dtsaida).asdateTime > Ultimo_Dia_Mes(dtbanco) then
    begin
      messagedlg('Data de Entrada inválida!'#13'Digite uma nota dentro do mês corrente para continuar!', mtinformation, [mbok], 0);
      dataset.fieldbyname(_dtsaida).FocusControl;
      abort;
    end;
  end;
  procedure checktpfrete;
  begin
    if ((dataset.State = dsinsert) or (dataset.State = dsedit)) and (dataset.fieldbyname(_cdtpfrete).AsString = '') and (nomedocodigo(_tpentrada, dataset.fieldbyname(_cdtpentrada).asstring, _bofrete) = _S) then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo_de_Frete]), mtinformation, [mbok], 0);
      dataset.fieldbyname(_cdtpfrete).FocusControl;
      abort;
    end;
  end;
  procedure checktpentrada;
  begin
    if cbxcdtpentrada.text = '' then
    begin
      cbxcdtpentrada.SetFocus;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
      abort;
    end;
  end;
  procedure checkduplicidadenotafiscal;
  begin
    if tela.dados.existeNotaFiscal(dataset.fieldbyname(_cdentrada).asstring,
                                     dataset.fieldbyname(_nuentrada).asstring,
                                     dataset.fieldbyname(_nuserie).asstring,
                                     dataset.fieldbyname(_nudocfiscalicms).asstring,
                                     dataset.fieldbyname(_cdfornecedor).asstring,
                                     dataset.fieldbyname(_cdcliente).asstring) then
    begin
      edtCodigo.SetFocus;
      MessageDlg('Número de Nota Fiscal duplicado!'#13'Digite outro número para continuar.', mtInformation, [mbok], 0);
      abort;
    end;
  end;
  procedure checkclientefornecedor;
    procedure checkcliente;
    var
      cliente : tcliente;
    begin
      if not dataset.fieldbyname(_cdcliente).IsNull then
      begin
        cliente := tcliente.create;
        try
          cliente.select(dataset.fieldbyname(_cdcliente).AsLargeInt);
          cduf := cliente.cduf;
          if cliente.tppessoa = _F then
          begin
            if empresa.cliente.bocpfobrigatorio then
            begin // consistir o número do cpf
              if removercaracteres(cliente.nucpf) = '' then
              begin
                dataset.fieldbyname(_cdcliente).FocusControl;
                messagedlg('CPF não preenchido!'#13'Digite o CPF no Cadastro do Cliente.', mtInformation, [mbOK], 0);
                abort;
              end;
              if ValidarCPF(cliente.nucpf)<>'' then
              begin
                dataset.fieldbyname(_cdcliente).FocusControl;
                messagedlg('CPF inválido!'#13'Corrija o CPF no Cadastro do Cliente.', mtInformation, [mbOK], 0);
                abort;
              end;
            end;
          end
          else if (cliente.tppessoa = _J) and Empresa.cliente.bocnpjobrigatorio then
          begin
            if removercaracteres(cliente.nuCNPJ) = '' then
            begin
              dataset.fieldbyname(_cdcliente).FocusControl;
              messagedlg('CNPJ não preenchido!'#13'Digite o CNPJ no Cadastro do Cliente.', mtInformation, [mbOK], 0);
              abort;
            end;
            if ValidarCNPJ(cliente.nuCNPJ) <> '' then
            begin
              dataset.fieldbyname(_cdcliente).FocusControl;
              messagedlg('CNPJ inválido!'#13'Corrija o CNPJ no Cadastro do Cliente.', mtInformation, [mbOK], 0);
              abort;
            end;
            if (cliente.nuinscest = '') and (cliente.cdindiedest = 1) then // consiste nuinscest
            begin
              dataset.fieldbyname(_cdcliente).FocusControl;
              messagedlg('Número Inscrição não preenchido!'#13'Digite o Número Inscrição no cadastro do Cliente.', mtInformation, [mbOK], 0);
              abort;
            end;
            if cliente.cduf = 0 then
            begin
              dataset.fieldbyname(_cdcliente).FocusControl;
              messagedlg('Unidade Federativa não preenchido!'#13'Digite a Unidade Federativa no cadastro do Cliente.', mtInformation, [mbOK], 0);
              Abort;
            end;
          end;
        finally
          freeandnil(cliente);
        end;
      end;
    end;
    procedure checkfornecedor;
    var
      fornecedor : tfornecedor;
    begin
      if not dataset.fieldbyname(_cdfornecedor).IsNull then
      begin
        fornecedor := tfornecedor.create;
        try
          fornecedor.select(dataset.fieldbyname(_cdfornecedor).AsLargeInt);
          cduf := fornecedor.cduf;
          if fornecedor.tppessoa = _F then
          begin
            if Empresa.fornecedor.bocpfobrigatorio then
            begin
              if removercaracteres(fornecedor.nucpf) = '' then
              begin
                dataset.fieldbyname(_cdFornecedor).FocusControl;
                messagedlg('CPF não preenchido!'#13'Digite o CPF no Cadastro do Fornecedor.', mtInformation, [mbOK], 0);
                Abort;
              end;
              if ValidarCPF(fornecedor.nucpf) <> '' then
              begin
                dataset.fieldbyname(_cdFornecedor).FocusControl;
                messagedlg('CPF inválido!'#13'Corrija o CPF no Cadastro do Fornecedor.', mtInformation, [mbOK], 0);
                Abort;
              end;
            end;
          end
          else if (fornecedor.tppessoa = _J) and Empresa.fornecedor.bocnpjobrigatorio then
          begin
            if removercaracteres(fornecedor.nuCNPJ) = '' then
            begin
              dataset.fieldbyname(_cdFornecedor).FocusControl;
              messagedlg('CNPJ não preenchido!'#13'Digite o CNPJ no Cadastro do Fornecedor.', mtInformation, [mbOK], 0);
              Abort;
            end;
            if ValidarCNPJ(fornecedor.nuCNPJ) <> '' then
            begin
              dataset.fieldbyname(_cdFornecedor).FocusControl;
              messagedlg('CNPJ inválido!'#13'Corrija o CNPJ no Cadastro do Fornecedor.', mtInformation, [mbOK], 0);
              Abort;
            end;
            if (fornecedor.nuinscest = '') and (fornecedor.cdindiedest = 1) then // consiste nuinscest
            begin
              dataset.fieldbyname(_cdFornecedor).FocusControl;
              MessageDlg('Número Inscrição não preenchido!'#13'Digite o Número Inscrição no cadastro do Fornecedor.', mtInformation, [mbOK], 0);
              abort;
            end;
            if fornecedor.cduf = 0 then
            begin
              dataset.fieldbyname(_cdFornecedor).FocusControl;
              MessageDlg('Unidade Federativa não preenchido!'#13'Digite a Unidade Federativa no cadastro do Fornecedor.', mtInformation, [mbOK], 0);
              Abort;
            end;
          end;
        finally
          freeandnil(fornecedor);
        end;
      end;
    end;
    procedure checkcfop;
    begin
      if BooleandoCodigo(_cfop, dataset.fieldbyname(_cdcfop).AsString, _BOUFDIFERENTE) then
      begin
        Exit;
      end;
      if cduf = Empresa.endereco.cduf then
      begin
        if (copy(dataset.fieldbyname(_cdcfop).AsString, 1, 1) <> _1) and (copy(dataset.fieldbyname(_cdcfop).AsString, 1, 1) <> _3) then
        begin
          if not dataset.fieldbyname(_cdcliente).IsNull then
          begin
            messagedlg('Número de CFOP inválido!'#13'Cliente é da mesma unidade federativa da Empresa.'#13'Digite um número que comece com 1 ou com 3 para continuar.', mtinformation, [mbok], 0)
          end
          else if not dataset.fieldbyname(_cdfornecedor).IsNull then
          begin
            messagedlg('Número de CFOP inválido!'#13'Fornecedor é da mesma unidade federativa da Empresa.'#13'Digite um número que comece com 1 ou 3 para continuar.', mtinformation, [mbok], 0);
          end;
          dataset.fieldbyname(_cdcfop).FocusControl;
          abort;
        end;
      end
      else
      begin
        if (copy(dataset.fieldbyname(_cdcfop).AsString, 1, 1) <> _2) and (copy(dataset.fieldbyname(_cdcfop).AsString, 1, 1) <> _3) then
        begin
          if not dataset.fieldbyname(_cdcliente).IsNull then
          begin
            messagedlg('Número de CFOP inválido!'#13'Cliente é de uma unidade federativa diferente da Empresa.'#13'Digite um número que comece com 2 ou 3 para continuar.', mtinformation, [mbok], 0)
          end
          else if not dataset.fieldbyname(_cdfornecedor).IsNull then
          begin
            messagedlg('Número de CFOP inválido!'#13'Fornecedor é de uma unidade federativa diferente da Empresa.'#13'Digite um número que comece com 2 ou 3 para continuar.', mtinformation, [mbok], 0);
          end;
          dataset.fieldbyname(_cdcfop).FocusControl;
          abort;
        end;
      end;
    end;
  begin
    if (not dataset.fieldbyname(_cdcliente).IsNull) or (not dataset.fieldbyname(_cdfornecedor).isnull) then
    begin
      checkcliente;
      checkfornecedor;
      checkcfop;
    end;
  end;
  procedure setnuplconta;
  begin
    if not dataset.fieldbyname(_nuplconta).IsNull then
    begin
      dataset.fieldbyname(_cdplconta).asstring := CodigodoCampo(_plconta, dataset.fieldbyname(_nuplconta).asstring, _nunivel)
    end
    else
    begin
      dataset.fieldbyname(_cdplconta).clear;
    end;
  end;
  procedure check_nuentrada_obrigatorio;
  begin
    if dataset.fieldbyname(_nuentrada).AsString = '' then // consiste o campo duplicata
    begin
      edtcodigo.SetFocus;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__numero+' '+_da+' '+_nota+' '+_fiscal]), mtinformation, [mbok], 0);
      abort;
    end;
  end;
  procedure check_nuentrada_maior_que_9_digitos;
  begin
    if length(dataset.fieldbyname(_nuentrada).AsString) > 9 then // consiste o número de digitos da duplicata
    begin
      edtcodigo.SetFocus;
      MessageDlg('Número de dígitos da nota fiscal superior a 9 casas!', mtinformation, [mbok], 0);
      Abort;
    end;
  end;
  procedure check_nustdocumento_obrigatorio;
  begin
    if cds.FieldByName(_nustdocumento).AsString = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__situacao+' '+_do+' '+_documento]), mtinformation, [mbok], 0);
      pgc.ActivePage := tbsinfoadic;
      cbxnustdocumento.SetFocus;
      abort;
    end;
  end;
  procedure check_nuserie_obrigatorio;
  begin
    if (dataset.fieldbyname(_nuserie).AsString = '') and (dataset.fieldbyname(_nudocfiscalicms).AsString <> _06) then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Serie]), mtinformation, [mbok], 0);
      dataset.fieldbyname(_nuserie).FocusControl;
      Abort;
    end;
  end;
  procedure check_nudocfiscalicms_obrigatorio;
  begin
    if cbxnudocfiscalicms.Text = '' then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_documento+' '+_fiscal]), mtinformation, [mbok], 0);
      cbxnudocfiscalicms.SetFocus;
      abort;
    end;
    if (cds.FieldByName(_nudocfiscalicms).AsString = _2d) or (cds.FieldByName(_nudocfiscalicms).AsString = _02) then
    begin
      MessageDlg('Documento Fiscal inválido.', mtInformation, [mbOK], 0);
      cbxnudocfiscalicms.SetFocus;
      abort;
    end;
  end;
  procedure check_cfop_nudocfiscalicms;
  begin
    if ((cbxnudocfiscalicms.Text = _08) or (cbxnudocfiscalicms.Text = _57)) and not BooleandoCodigo(_cfop, edtcdcfop.text, _bocte) then
    begin
      MessageDlg('CFOP inválido para o Documento Fiscal '+cbxnudocfiscalicms.Text+'.'#13'Altere o CFOP para poder continuar.', mtInformation, [mbOK], 0);
      edtcdcfop.SetFocus;
      abort;
    end;
  end;
  procedure check_tpentrada_nudocfiscalicms;
  begin
    if (tela.dados.tpentrada.boretencaoiss = _s) and ((cbxnudocfiscalicms.Text = _08) or (cbxnudocfiscalicms.Text = _57) or (cbxnudocfiscalicms.Text = _07) or (cbxnudocfiscalicms.Text = _06) or (cbxnudocfiscalicms.Text = _22) or (cbxnudocfiscalicms.Text = _29)) then
    begin
      MessageDlg('O tipo de compra '+cbxcdtpentrada.Text+' não pode ser usado com o documento fiscal '+cbxnudocfiscalicms.Text+' por estar marcado o ISS.'#13'Altere o tipo de compra para continuar.', mtInformation, [mbOK], 0);
      cbxcdtpentrada.SetFocus;
      abort;
    end;
  end;
  procedure limpar_dados_nota_conhecimento_transporte_relacionada;
  begin
    if dataset.FieldByName(_nuentrada+_ct).AsString = '' then
    begin
      dataset.FieldByName(_cdentrada+_ct).Clear;
      dataset.fieldbyname(_dtemissao+_ct).Clear;
      dataset.fieldbyname(_dtentrada+_ct).Clear;
      dataset.FieldByName(_vltotal+_ct).Clear;
      dataset.fieldbyname(_nmfornecedor+_ct).Clear;
    end;
  end;
  procedure check_cemig_copasa;
  begin
    if tela.dados.tpentrada.tpforncliente <> _fornecedor then
    begin
      exit;
    end;
    if (cbxnudocfiscalicms.Text <> _06) and (NomedoCodigo(_fornecedor, edtCDCLIENTE.Text, _nucnpj) = '06.981.180/0001-16') then
    begin
      MessageDlg('Para o fornecedor '+cds.FieldByName(_rzsocial+_f).asstring+' o documento fiscal deve ser 06.', mtInformation, [mbOK], 0);
      cbxnudocfiscalicms.SetFocus;
      Abort;
    end;
    if (cbxnudocfiscalicms.Text <> _29) and (NomedoCodigo(_fornecedor, edtCDCLIENTE.Text, _nucnpj) = '17.281.106/0001-03') then
    begin
      MessageDlg('Para o fornecedor '+cds.FieldByName(_rzsocial+_f).asstring+' o documento fiscal deve ser 29.', mtInformation, [mbOK], 0);
      cbxnudocfiscalicms.SetFocus;
      Abort;
    end;
  end;
begin
  if not ((dataset.State = dsinsert) or (dataset.State = dsedit)) then
  begin
    Exit;
  end;
  if tela.dados.tpentrada.bocntcusto <> _s then
  begin
    dataset.fieldbyname(_nucntcusto).Clear;
  end;
  if length(edtcodigo.text) > 9 then
  begin
    messagedlg('Número da Nota Fiscal está acima de 9 posições.', mtinformation, [mbok], 0);
    abort;
  end;

  check_nuserie_obrigatorio;
  checkdtemissao;
  checkdtsaida;
  check_nudocfiscalicms_obrigatorio;
  checkcfop;
  check_cfop_nudocfiscalicms;
  check_nustdocumento_obrigatorio;
  checktpfrete;
  checktpentrada;
  check_tpentrada_nudocfiscalicms;
  if edtcodigo.text <> '' then
  begin
    dataset.fieldbyname(_nuentrada).asstring := edtcodigo.text;
  end;
  check_nuentrada_maior_que_9_digitos;
  check_nuentrada_obrigatorio;
  checkclientefornecedor;
  checkduplicidadenotafiscal;
  setnuplconta;
  limpar_dados_nota_conhecimento_transporte_relacionada;
  check_cemig_copasa;
  registrainformacao_(dataset);
end;

procedure Tfrmentrada.cdsNewRecord(DataSet: TDataSet);
var
  cdtpentrada : integer;
begin
  set_bo_value(dataset);
  cdsNUSTDOCUMENTO.AsString := _00;
  cdsCDTPFRETE.AsString := _9;
  cdscdentrada.asinteger := qgerar.gerarcodigo(_entrada);
  cdsdtemissao.asdatetime := dtbanco;
  cdsDTSAIDA.AsDateTime := cdsdtemissao.asdatetime;
  cdtpentrada := RetornaSQLInteger('select min(cdtpentrada) from tpentrada');
  if cdtpentrada <> 0 then
  begin
    cdscdtpentrada.asinteger := cdtpentrada;
  end;
end;

procedure Tfrmentrada.lbltpentradaDblClick(Sender: TObject);
begin
  actabrirtpentrada.onexecute(actabrirtpentrada);
end;

procedure Tfrmentrada.cbx3PropertiesChange(Sender: TObject);
begin
  exibirChaveNFE(cbxnudocfiscalicms.Text);
end;

procedure Tfrmentrada.edtnuchavenfeKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmentrada.edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmentrada.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar(_cntcusto, _nunivel, _nmcntcusto, 'Centro de Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  cdsNUcntcusto.AsString := cd;
end;

procedure Tfrmentrada.lbltpcobrancaDblClick(Sender: TObject);
begin
  actAbrirCondpagto.onExecute(actAbrirCondpagto);
end;

procedure Tfrmentrada.cdsDSHISTORICOValidate(Sender: TField);
begin
  if AchouBaixa then
  begin
    exit;
  end;
  cdsAutPagto.First;
  while not cdsAutPagto.Eof do
  begin
    cdsAutPagto.Edit;
    cdsautpagto.fieldbyname(_dshistorico).asstring := edtdshistorico.Text;
    cdsAutPagto.Post;
    cdsAutPagto.Next;
  end;
end;

procedure Tfrmentrada.cdsCDCONDPAGTOValidate(Sender: TField);
begin
  if Sender.AsString <> '' then
  begin
    tela.tela.condpagto.Select(Sender.asinteger);
    tela.tela.condpagto.stcondpagto.Select(tela.tela.condpagto.cdstcondpagto);
    if tela.tela.condpagto.stcondpagto.bogerarentrada = _n then
    begin
      messagedlg('Condição de Pagamento está no status '+tela.tela.condpagto.stcondpagto.nmstcondpagto+#13'que não permite ser inserido no '+exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    if tela.tela.condpagto.boentrada = _n then
    begin
      messagedlg('Condição de Pagamento näo está liberada para compras.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    tela.tela.condpagto.itcondpagto.Ler(sender.AsInteger);
    if tela.tela.condpagto.itcondpagto.count = 0 then
    begin
      messagedlg('Condição de Pagamento não possui definição de dias de parcelamento.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    sender.DataSet.fieldbyname(_nmcondpagto).asstring := tela.tela.condpagto.nmcondpagto;
  end
  else
  begin
    sender.DataSet.fieldbyname(_nmcondpagto).clear;
  end;
  GerarAutpagto_;
end;

procedure Tfrmentrada.cdsCDTPCOBRANCAValidate(Sender: TField);
begin
  AtualizarTpCobrancaAutpagto;
end;

procedure Tfrmentrada.cdsBODESCONTOITEMValidate(Sender: TField);
begin
  edtvldesconto.Enabled := not ckbbodescontoitem.Checked;
  edtprdesconto.Enabled := not ckbbodescontoitem.Checked;
end;

procedure Tfrmentrada.cdsALFRETESUBValidate(Sender: TField);
begin
  sender.dataset.fieldbyname(_vlfretesub).AsCurrency := sender.dataset.fieldbyname(_VLBASEFRETESUB).AsCurrency * sender.dataset.fieldbyname(_alfretesub).AsCurrency / 100;
end;

procedure Tfrmentrada.grditentradaCDORDCOMPRAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : string;
  i : integer;
  cditordcompra : TStrings;
  itordcompra : titordcompra;
begin
  if cds.fieldbyname(_cdfornecedor).asstring = '' then
  begin
    messagedlg('Selecione um fornecedor antes de selecionar uma ordem de compra.', mtError, [mbok], 0);
    cds.FieldByName(_cdfornecedor).FocusControl;
    exit;
  end;
  cditordcompra := TStringList.Create;
  itordcompra   := titordcompra.create;
  try
    codigo := LocalizarOrdcompra(cds.fieldbyname(_cdfornecedor).asstring, cditordcompra);
    if codigo <> '' then
    begin
      cdsItEntrada.fieldbyname(_cdordcompra).asstring := codigo;
    end;
    if cditordcompra.count > 0 then
    begin
      for i := 0 to cditordcompra.count - 1 do
      begin
        if cdsItEntrada.State <> dsinsert then
        begin
          cdsItEntrada.Insert;
        end;
        itordcompra.Select(strtoint(cditordcompra[i]));
        cdsItEntrada.FieldByName(_cditordcompra).AsString := cditordcompra[i];
        cdsItEntrada.FieldByName(_cdordcompra).AsInteger  := itordcompra.cdordcompra;
        cdsItEntrada.FieldByName(_cdproduto).AsInteger    := itordcompra.cdproduto;
        cdsItEntrada.FieldByName(_cddigitado).AsString    := itordcompra.cddigitado;
        if itordcompra.nucntcusto <> '' then
        begin
          cdsItEntrada.FieldByName(_nucntcusto).AsString   := itordcompra.nucntcusto;
        end;
        cdsItEntrada.FieldByName(_qtitem).AsCurrency      := itordcompra.qtitem - itordcompra.qtatendida;
        cdsItEntrada.FieldByName(_vlunitario).AsCurrency  := itordcompra.vlunitario;
        if itordcompra.cdplconta <> 0 then
        begin
          cdsItEntrada.FieldByName(_nuplconta).Asstring     := itordcompra.nuplconta;
        end;
        cdsItEntrada.Post;
      end;
    end;
  finally
    FreeAndNil(cditordcompra);
    FreeAndNil(itordcompra);
  end;
end;

procedure Tfrmentrada.edtNUENTRADACTPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := LocalizarEntrada;
  if cd = 0 then
  begin
    exit;
  end;
  cds.FieldByName(_nuentradact).AsString := qregistro.StringdoCodigo(_entrada, cd, _nuentrada);
end;

procedure Tfrmentrada.cdsNUENTRADACTValidate(Sender: TField);
var
  codigo : integer;
  entradact : TEntrada;
begin
  if sender.asstring = '' then
  begin
    exit;
  end;
  codigo := tela.dados.codigonotaFiscal(sender.asstring);
  if codigo <> -1 then
  begin
    entradact := tentrada.create;
    try
      if not entradact.Select(codigo) then
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtNUENTRADACT.text, maiuscula(exibe)]), mterror, [mbok], 0);
        edtnuentradact.SetFocus;
        abort;
      end;
      if (entradact.nudocfiscalicms <> _08) and (entradact.nudocfiscalicms <> _57)and (entradact.nudocfiscalicms <> _07) then
      begin
        messagedlg('Documento Fiscal da nota '+edtNUENTRADACT.text+' deve ser 07, 08 ou 57.'#13+'Digite outro número para continuar.', mtConfirmation, [mbok], 0);
        edtnuentradact.SetFocus;
        abort;
      end;
      cds.FieldByName(_cdentrada+_ct).AsInteger   := entradact.cdentrada;
      cds.fieldbyname(_dtemissao+_ct).asdateTime  := entradact.dtemissao;
      cds.fieldbyname(_dtentrada+_ct).asdateTime  := entradact.dtsaida;
      cds.FieldByName(_vltotal+_ct).AsCurrency    := entradact.vltotal;
      cds.fieldbyname(_nmfornecedor+_ct).AsString := qregistro.NomedoCodigo(_fornecedor, entradact.cdfornecedor);
    finally
      freeandnil(entradact);
    end;
  end
  else
  begin
    edtNUENTRADACT.clear;
  end;
end;

procedure Tfrmentrada.cdsVLFRETEValidate(Sender: TField);
begin
  cdsVLFRETE.OnValidate := nil;
  gravartotais(sender);
  cdsVLFRETE.OnValidate := cdsVLFRETEValidate;
end;

procedure Tfrmentrada.cdsCDTPFRETEValidate(Sender: TField);
begin
  setVisibleTransportadora;
  if sender.asstring = _9 then
  begin
    cds.fieldbyname(_VLFRETE).Clear;
    cds.fieldbyname(_nuplaca).Clear;
    cds.fieldbyname(_cduf).Clear;
    cds.fieldbyname(_CDTRANSPORTADORA).Clear;
  end;
end;

procedure Tfrmentrada.lblcdtransportadoraDblClick(Sender: TObject);
begin
  actAbrirTransportadora.onExecute(actAbrirTransportadora);
end;

procedure Tfrmentrada.cdsBOFRETEITEMValidate(Sender: TField);
begin
  setVlfreteItem;
end;

procedure Tfrmentrada.cdsNUPLACAValidate(Sender: TField);
begin
  {if (sender.asstring <> '') and (Length(sender.asstring) <> 7) then
  begin
    MessageDlg('Preenchimento inválido da Placa.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;}
end;

procedure Tfrmentrada.edtCDTRANSPORTADORAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdtransportadoraPropertiesButtonClick(self, cds);
end;

procedure Tfrmentrada.lblcodigoDblClick(Sender: TObject);
begin
  actAbrirCliente.onExecute(actAbrirCliente);
  actAbrirFornecedor.onExecute(actAbrirFornecedor);
end;

procedure Tfrmentrada.edtCDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.edtCDCLIENTEPropertiesButtonClick(self, cds);
end;

procedure Tfrmentrada.edtNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure Tfrmentrada.cdsBOCREDITOSTTRANSPORTEValidate(Sender: TField);
begin
  setVisibleFreteSub;
  if not ckbBOCREDITOSTTRANSPORTE.Checked then
  begin
    clearFreteSub;
  end;
end;

procedure Tfrmentrada.cdsDTEMISSAOValidate(Sender: TField);
//var
  //nudias : integer;
begin
{  if achou_baixa then
  begin
    exit;
  end;
  nudias := nudiasdiferenca(dtcomparar);
  cdsAutPagto.First;
  while not cdsAutPagto.Eof do
  begin
    cdsautpagto.FieldByName(_dtvencimento).asdateTime := cdsautpagto.fieldbyname(dtalterar).asdateTime + nudias;
    cdsautpagto.FieldByName(_dtprorrogacao).asdateTime := cdsautpagto.fieldbyname(dtalterar).asdateTime + nudias;
    cdsAutPagto.Next;
  end;}
end;

procedure Tfrmentrada.cdsautpagtoDTVENCIMENTOValidate(Sender: TField);
begin
  Sender.DataSet.fieldbyname(_dtprorrogacao).asdateTime := sender.asdateTime;
end;

procedure Tfrmentrada.cdsautpagtoVLAUTPAGTOValidate(Sender: TField);
begin
  Sender.DataSet.fieldbyname(_vlsaldo).ascurrency := sender.ascurrency;
end;

procedure Tfrmentrada.cdsitentradaCDDIGITADOValidate(Sender: TField);
var
  tbldestinatario: string;
  cdproduto: integer;
begin
  if sender.asstring = '' then
  begin
    exit;
  end;
  cdproduto := produto.CodigoProdutoDigitado(sender.AsString, _boentrada);
  if cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(cdproduto);
  produto.tpproduto.select(produto.cdtpproduto);
  produto.CheckDados;
  if ((cds.FieldByName(_nudocfiscalicms).AsString = _08) or
      (cds.FieldByName(_nudocfiscalicms).AsString = _07) or
      (cds.FieldByName(_nudocfiscalicms).AsString = _57) or
      (cds.FieldByName(_nudocfiscalicms).AsString = _55) or
      (cds.FieldByName(_nudocfiscalicms).AsString = _06) or
      (cds.FieldByName(_nudocfiscalicms).AsString = _21) or
      (cds.FieldByName(_nudocfiscalicms).AsString = _22) or
      (cds.FieldByName(_nudocfiscalicms).AsString = _29))
     and (produto.tpproduto.boservico = _s) then
  begin
    MessageDlg('Não pode lançar serviço em documento '+cds.FieldByName(_nudocfiscalicms).AsString+' - '+NomedoCodigoNu(_docfiscalicms,  cds.FieldByName(_nudocfiscalicms).AsString)+'.', mtInformation, [mbOK], 0);
    abort;
  end;
  if (tela.dados.tpentrada.boicms = _s) and (produto.tpproduto.boservico = _s) then
  begin
    MessageDlg('Não pode lançar serviço em documento que está marcado com ICMS.', mtinformation, [mbok], 0);
    Abort;
  end;
  if (tela.dados.tpentrada.boipi = _s) and (produto.tpproduto.boservico = _s) then
  begin
    MessageDlg('Não pode lançar serviço em documento que está marcado com IPI.', mtinformation, [mbok], 0);
    Abort;
  end;
  if (tela.dados.tpentrada.boretencaoiss = _s) and (produto.tpproduto.boservico <> _s) then
  begin
    MessageDlg('Não pode lançar produto que não seja serviço em documento que está marcado com ISS.', mtinformation, [mbok], 0);
    Abort;
  end;
  if sender.dataset.fieldbyname(_prlucro).AsFloat = 0 then
  begin
    sender.dataset.fieldbyname(_prlucro).AsFloat := produto.prlucro;
  end;
  sender.dataset.fieldbyname(_nmunidade).AsString  := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  sender.dataset.fieldbyname(_nmproduto).asstring  := produto.nmproduto;
  sender.dataset.fieldbyname(_cdproduto).AsInteger := cdproduto;
  sender.dataset.fieldbyname(_nuclfiscal).asstring := produto.nuclfiscal;
  if produto.psbruto = 0 then
  begin
    sender.dataset.fieldbyname(_psbruto).AsFloat := sender.dataset.fieldbyname(_qtitem).AsFloat * 1
  end
  else
  begin
    sender.dataset.fieldbyname(_psbruto).AsFloat   := sender.dataset.fieldbyname(_qtitem).AsFloat * produto.psbruto;
  end;
  if produto.psliquido = 0 then
  begin
    sender.dataset.fieldbyname(_psliquido).AsFloat := sender.dataset.fieldbyname(_qtitem).AsFloat * 1
  end
  else
  begin
    sender.dataset.fieldbyname(_psliquido).AsFloat := sender.dataset.fieldbyname(_qtitem).AsFloat * produto.psliquido;
  end;
  if (produto.nustpis = _50) and (produto.borecuperapis <> _s) then
  begin
    messagedlg('O produto '+inttostr(produto.cdproduto)+' - '+produto.nmproduto+#13'está configurado com a situação tributária do PIS 50 e não está marcada a recuperação do imposto.'#13'Altere o cadastro do produto para poder continuar.', mtInformation, [mbok], 0);
    abort;
  end;
  if (produto.nustcofins = _50) and (produto.borecuperacofins <> _s) then
  begin
    messagedlg('O produto '+inttostr(produto.cdproduto)+' - '+produto.nmproduto+#13'está configurado com a situação tributária do cofins 50 e não está marcada a recuperação do imposto.'#13'Altere o cadastro do produto para poder continuar.', mtInformation, [mbok], 0);
    abort;
  end;
  if (produto.nustpis <> '') and (sender.dataset.fieldbyname(_cdcfop).asstring <> _2910) and (sender.dataset.fieldbyname(_cdcfop).asstring <> _1910) then
  begin
    sender.dataset.fieldbyname(_nustpis).AsString       := produto.nustpis;
    sender.dataset.fieldbyname(_borecuperapis).asstring := produto.borecuperapis;
    sender.dataset.fieldbyname(_alpis).asfloat          := produto.alpis;
  end
  else
  begin
    sender.dataset.fieldbyname(_nustpis).Clear;
    sender.dataset.fieldbyname(_borecuperapis).clear;
    if tela.dados.tpentrada.boretencaopis <> _s then
    begin
      sender.dataset.fieldbyname(_alpis).clear;
    end;
  end;
  if (produto.nustcofins <> '') and (sender.dataset.fieldbyname(_cdcfop).asstring <> _2910) and (sender.dataset.fieldbyname(_cdcfop).asstring <> _1910) then
  begin
    sender.dataset.fieldbyname(_nustcofins).AsString       := produto.nustcofins;
    sender.dataset.fieldbyname(_borecuperacofins).asstring := produto.borecuperacofins;
    sender.dataset.fieldbyname(_alcofins).asfloat          := produto.alcofins;
  end
  else
  begin
    sender.dataset.fieldbyname(_nustcofins).Clear;
    sender.dataset.fieldbyname(_borecuperacofins).clear;
    if tela.dados.tpentrada.boretencaocofins <> _s then
    begin
      sender.dataset.fieldbyname(_alcofins).clear;
    end;
  end;
  if produto.cdbccalculocredito <> '' then
  begin
    sender.dataset.fieldbyname(_cdbccalculocredito).AsString := produto.cdbccalculocredito
  end
  else
  begin
    sender.dataset.fieldbyname(_cdbccalculocredito).Clear;
  end;
  if (produto.nusticms = _500) or (produto.nusticms = _60) then
  begin
    if (sender.dataset.fieldbyname(_nusticms).AsString <> _10) or (sender.dataset.fieldbyname(_nusticms).AsString <> _20) or (sender.dataset.fieldbyname(_nusticms).AsString <> _70) then
    begin
      sender.dataset.fieldbyname(_nusticms).AsString := _60;
    end;
  end
  else if Length(produto.nusticms) = 3 then
  begin
    sender.dataset.fieldbyname(_nusticms).AsString := _90
  end
  else if sender.dataset.fieldbyname(_alicmsred).AsFloat > 0 then
  begin
    sender.dataset.fieldbyname(_nusticms).AsString := _20
  end
  else
  begin
    sender.dataset.fieldbyname(_nusticms).AsString := produto.nusticms;
  end;
  sender.dataset.fieldbyname(_borecuperaicms).asstring := produto.borecuperaicms;
  if produto.borecuperaicms = _s then
  begin
    if (sender.dataset.fieldbyname(_nusticms).asstring <> _20) and (sender.dataset.fieldbyname(_nusticms).asstring <> _60) then
    begin
      sender.dataset.fieldbyname(_nusticms).asstring := _00;
    end;
  end
  else if sender.dataset.fieldbyname(_nusticms).asstring = '' then
  begin
    sender.dataset.fieldbyname(_nusticms).asstring := _90;
  end;
  sender.dataset.fieldbyname(_borecuperaipi).asstring    := produto.borecuperaipi;
  if lowercase(empresa.tpregime) = _r then
  begin
    if (produto.borecuperapis= _s) and (produto.nustpis = '') then
    begin
      MessageDlg('Produto '+inttostr(produto.cdproduto)+' - '+produto.nmproduto+#13'está configurado como recupera o pis mas não tem a situação tributária definida.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (produto.borecuperacofins = _s) and (produto.nustcofins = '') then
    begin
      MessageDlg('Produto '+inttostr(produto.cdproduto)+' - '+produto.nmproduto+#13'está configurado como recupera o cofins mas não tem a situação tributária definida.', mtInformation, [mbOK], 0);
      Abort;
    end;
    sender.dataset.fieldbyname(_borecuperapis).asstring    := produto.borecuperapis;
    sender.dataset.fieldbyname(_borecuperacofins).asstring := produto.borecuperacofins;
    sender.dataset.fieldbyname(_alpis).AsFloat             := produto.alpis;
    sender.dataset.fieldbyname(_alcofins).AsFloat          := produto.alcofins;
  end;
  if Empresa.tpregime = _s then
  begin
    sender.dataset.fieldbyname(_borecuperaicms).asstring   := _n;
    if sender.dataset.fieldbyname(_nusticms).asstring = _00 then
    begin
      sender.dataset.fieldbyname(_nusticms).asstring         := _90;
    end;
    sender.dataset.fieldbyname(_borecuperaipi).asstring    := _n;
    sender.dataset.fieldbyname(_borecuperapis).asstring    := _n;
    sender.dataset.fieldbyname(_borecuperacofins).asstring := _n;

    if not ((tela.dados.tpentrada.bopis = _s) and (tela.dados.tpentrada.boretencaopis = _s)) then
    begin
      sender.dataset.fieldbyname(_alpis).AsFloat              := 0;
      sender.dataset.fieldbyname(_vlpis).AsFloat              := 0;
      sender.dataset.fieldbyname(_vlbasepis).AsFloat          := 0;
    end;

    if not ((tela.dados.tpentrada.bocofins = _s) and (tela.dados.tpentrada.boretencaocofins = _s)) then
    begin
      sender.dataset.fieldbyname(_alcofins).AsFloat           := 0;
      sender.dataset.fieldbyname(_vlcofins).AsFloat           := 0;
      sender.dataset.fieldbyname(_vlbasecofins).AsFloat       := 0;
    end;
  end;
  sender.dataset.fieldbyname(_boservico).asstring  := produto.tpproduto.boservico;
  sender.dataset.fieldbyname(_boloteimei).AsString := produto.tpproduto.boloteimei;

  actloteserie.Visible := produto.tpproduto.boloteimei = _s;
  actloteserie.Enabled := produto.tpproduto.boloteimei = _s;
  tbvQTITEM.Options.Focusing := produto.tpproduto.boloteimei <> _s;
  if produto.tpproduto.boloteimei = _s then
  begin
    cdsitentradaQTITEM.AsFloat := 0;
  end;

  {
  if (sender.dataset.fieldbyname(_nucntcusto).IsNull) and (tela.dados.tpentrada.bocntcusto = _s) and (edtnucntcusto.text <> '') then
  begin
    sender.dataset.fieldbyname(_nucntcusto).asstring := cdsnucntcusto.asstring;
  end;

  if (sender.dataset.fieldbyname(_cdplconta).IsNull) and (tela.dados.tpentrada.boplconta = _s) and (edtnuplconta.text <> '') then
  begin
    sender.dataset.fieldbyname(_nuplconta).asstring := edtnuplconta.text;
  end;
  }

  if empresa.financeiro.boplconta and (tela.dados.tpentrada.boplconta = _s) then
  begin
    if produto.cdplconta = 0 then
    begin
      sender.dataset.fieldbyname(_cdplconta).asstring := cds.fieldbyname(_cdplconta).asstring;
      sender.dataset.fieldbyname(_nuplconta).asstring := cds.fieldbyname(_nuplconta).asstring;
    end
    else
    begin
      sender.dataset.fieldbyname(_cdplconta).asinteger := produto.cdplconta;
      sender.dataset.fieldbyname(_nuplconta).asstring  := produto.nuplconta;
    end;
  end;

  if empresa.financeiro.bocntcusto and (tela.dados.tpentrada.bocntcusto = _s) then
  begin
    if produto.cdcntcusto = 0 then
    begin
      sender.dataset.fieldbyname(_cdcntcusto).asstring := cds.fieldbyname(_cdcntcusto).asstring;
      sender.dataset.fieldbyname(_nucntcusto).asstring := cds.fieldbyname(_nucntcusto).asstring;
    end
    else
    begin
      sender.dataset.fieldbyname(_cdcntcusto).asinteger := produto.cdcntcusto;
      sender.dataset.fieldbyname(_nucntcusto).asstring  := produto.nucntcusto;
    end;
  end;

  if not cds.fieldbyname(_cdcliente).IsNull then
  begin
    tbldestinatario := _cliente
  end
  else if not cds.fieldbyname(_cdfornecedor).isnull then
  begin
    tbldestinatario := _fornecedor;
  end;
  if BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, True) then
  begin
    if (empresa.endereco.cduf <> qregistro.inteirodocodigo(tbldestinatario, cds.fieldbyname(_cd+tbldestinatario).asstring, _cduf)) then
    begin
      if tela.dados.tpentrada.cdcfopfufsubtrib <> 0 then
      begin
        sender.dataset.fieldbyname(_cdCFOP).AsInteger := tela.dados.tpentrada.cdcfopfufsubtrib
      end;
    end
    else if tela.dados.tpentrada.cdcfopdufsubtrib <> 0 then
    begin
      sender.dataset.fieldbyname(_cdCFOP).Asinteger := tela.dados.tpentrada.cdcfopdufsubtrib;
    end;
  end
  else
  begin
    if (empresa.endereco.cduf <> qregistro.inteirodocodigo(tbldestinatario, cds.fieldbyname(_cd+tbldestinatario).asstring, _cduf)) then
    begin
      if tela.dados.tpentrada.cdcfopfuf <> 0 then
      begin
        sender.dataset.fieldbyname(_cdCFOP).AsInteger := tela.dados.tpentrada.cdcfopfuf;
      end;
    end
    else if tela.dados.tpentrada.cdcfopduf <> 0 then
    begin
      sender.dataset.fieldbyname(_cdCFOP).AsInteger := tela.dados.tpentrada.cdcfopduf;
    end;
  end;
  if (sender.dataset.fieldbyname(_cdCFOP).AsString = '') and (edtcdcfop.text <> '') then
  begin
    sender.dataset.fieldbyname(_cdCFOP).AsString := edtcdcfop.text;
    if BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, True) and
      (not BooleandoCodigo(_cfop  , sender.dataset.fieldbyname(_cdcfop).AsString, _BOICMSSUBTRIB, _cd, True)) and
      (not BooleandoCodigo(_cfop  , sender.dataset.fieldbyname(_cdcfop).AsString, _BOaceitaICMSSUBTRIB, _cd, True)) then
    begin
      MessageDlg('Produto está configurado como Substituição Tributária mas está sendo lançado em um CFOP que não é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (not BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, True)) and (BooleandoCodigo(_cfop  , sender.dataset.fieldbyname(_cdcfop).AsString, _BOICMSSUBTRIB, _cd, True)) then
    begin
      MessageDlg('Produto não está configurado como Substituição Tributária mas está sendo lançado em um CFOP que é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
end;

procedure Tfrmentrada.cdsitentradaQTITEMValidate(Sender: TField);
begin
  if cdsitentradaQTITEM.AsFloat < 0 then
  begin
    MessageDlg('Quantidade de item não pode ser negativo.', mtInformation, [mbOK], 0);
    if pgc.ActivePage <> tbsproduto then
    begin
      pgc.ActivePage := tbsproduto;
    end;
    cdsitentradaQTITEM.FocusControl;
    abort;
  end;
  if (cdsitentradaQTITEM.AsFloat = 0) and (cdsitentradaBOLOTEIMEI.asstring <> _s) then
  begin
    MessageDlg('Quantidade de item não pode ser zero.', mtInformation, [mbOK], 0);
    if pgc.ActivePage <> tbsproduto then
    begin
      pgc.ActivePage := tbsproduto;
    end;
    cdsitentradaQTITEM.FocusControl;
    abort;
  end;
  if cdsitentradaboservico.asstring = _S then
  begin
    cdsitentradapsbruto  .Asfloat := 0;
    cdsitentradapsliquido.Asfloat := 0;
  end
  else if cdsitentradacdproduto.asstring <> '' then
  begin
    cdsitentradapsbruto  .Asfloat := Sender.AsFloat * DoubledoCodigo(_produto, cdsitentradacdproduto.asstring, _PSBRUTO);
    cdsitentradapsliquido.Asfloat := Sender.AsFloat * DoubledoCodigo(_produto, cdsitentradacdproduto.asstring, _psliquido);
  end;
end;

procedure Tfrmentrada.cdsitentradaNUCNTCUSTOValidate(Sender: TField);
begin
  if Sender.asstring = '' then
  begin
    sender.dataset.fieldbyname(_cdcntcusto).clear;
    sender.dataset.fieldbyname(_nmcntcusto).clear;
    Exit;
  end;
  if not CodigoExiste(_cntcusto, _NUNIVEL, _STRING, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula('Centro de Custo')]), mterror, [mbok], 0);
    abort;
  end;
  sender.dataset.fieldbyname(_cdcntcusto).asstring := codigodocampo(_cntcusto, Sender.asstring, _nunivel);
  sender.dataset.fieldbyname(_nmcntcusto).asstring := NomedoCodigo (_cntcusto, sender.dataset.fieldbyname(_cdcntcusto).asstring);
end;

procedure Tfrmentrada.cdsitentradaNUPLCONTAValidate(Sender: TField);
begin
  if Sender.asstring = '' then
  begin
    sender.dataset.fieldbyname(_cdplconta).clear;
    sender.dataset.fieldbyname(_nmplconta).clear;
    Exit;
  end;
  if not CodigoExiste(_plconta, _NUNIVEL, _STRING, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    abort;
  end;
  sender.dataset.fieldbyname(_cdplconta).asstring := codigodocampo(_plconta, Sender.asstring, _nunivel);
  sender.dataset.fieldbyname(_nmplconta).asstring := NomedoCodigo (_plconta, sender.dataset.fieldbyname(_cdplconta).asstring);
end;

procedure Tfrmentrada.cdsitentradaCDCFOPValidate(Sender: TField);
var
  sguf : string;
  regrast : TRegraST;
begin
  if Sender.AsString = '' then
  begin
    exit;
  end;
  if not BooleandoCodigo(_cfop, Sender.AsString, _boativar) then
  begin
    messagedlg('CFOP está desativado.'#13'Selecione outro para poder continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  if not BooleandoCodigo(_cfop, Sender.asstring, _boufdiferente) then
  begin
    if cds.fieldbyname(_cdfornecedor).AsString <> '' then
    begin
      tela.tela.fornecedor.uf.Select(tela.tela.fornecedor.cduf);
      sguf := tela.tela.fornecedor.uf.sguf;
    end
    else if cds.fieldbyname(_cdcliente).AsString <> '' then
    begin
      sguf := qregistro.stringdocodigo(_uf, tela.tela.cliente.cduf, _sguf);
    end;
    if sguf = Empresa.endereco.sguf then
    begin
      if (copy(Sender.asstring, 1, 1) <> _1) and (copy(Sender.asstring, 1, 1) <> _3) then
      begin
        if not cds.fieldbyname(_cdcliente).IsNull then
        begin
          messagedlg('Número de CFOP inválido!'#13'Cliente é da mesma unidade federativa da Empresa.'#13'Digite um número que comece com 1 ou 3 para continuar.', mtinformation, [mbok], 0)
        end
        else if not cds.fieldbyname(_cdfornecedor).IsNull then
        begin
          messagedlg('Número de CFOP inválido!'#13'Fornecedor é da mesma unidade federativa da Empresa.'#13'Digite um número que comece com 1 ou 3 para continuar.', mtinformation, [mbok], 0);
        end;
        Sender.FocusControl;
        abort;
      end;
    end
    else
    begin
      if (copy(Sender.asstring, 1, 1) <> _2) and (copy(Sender.asstring, 1, 1) <> _3) then
      begin
        if not cds.fieldbyname(_cdcliente).IsNull then
        begin
          messagedlg('Número de CFOP inválido!'#13'Cliente é de uma unidade federativa diferente da Empresa.'#13'Digite um número que comece com 2 ou 3 para continuar.', mtinformation, [mbok], 0)
        end
        else if not cds.fieldbyname(_cdfornecedor).IsNull then
        begin
          messagedlg('Número de CFOP inválido!'#13'Fornecedor é de uma unidade federativa diferente da Empresa.'#13'Digite um número que comece com 2 ou 3 para continuar.', mtinformation, [mbok], 0);
        end;
        Sender.FocusControl;
        abort;
      end;
    end;
  end;
  if Sender.DataSet.fieldbyname(_cdproduto).AsString <> '' then
  begin
    if BooleandoCodigo(_sticms, NomedoCodigo(_produto, Sender.DataSet.fieldbyname(_cdproduto).AsString, _nusticms), _boicmssubtrib, _nu, True)
    and (not BooleandoCodigo(_cfop  , Sender.DataSet.fieldbyname(_cdcfop).AsString, _BOICMSSUBTRIB, _cd, True))
    and (not BooleandoCodigo(_cfop  , Sender.DataSet.fieldbyname(_cdcfop).AsString, _BOaceitaICMSSUBTRIB, _cd, True))
    then
    begin
      MessageDlg('Produto está configurado como Substituição Tributária mas está sendo lançado em um CFOP que não é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (not BooleandoCodigo(_sticms, NomedoCodigo(_produto, Sender.DataSet.fieldbyname(_cdproduto).AsString, _nusticms), _boicmssubtrib, _nu, True)) and (BooleandoCodigo(_cfop  , Sender.DataSet.fieldbyname(_cdcfop).AsString, _BOICMSSUBTRIB, _cd, True)) then
    begin
      MessageDlg('Produto não está configurado como Substituição Tributária mas está sendo lançado em um CFOP que é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  cdsItEntrada.FieldByName(_bodiferencialaliquota).AsString := NomedoCodigo(_cfop, cdsItEntrada.fieldbyname(_cdcfop).asstring, _bodiferencialaliquota);
  cdsitentrada.FieldByName(_cdcfop).OnValidate := nil;
  setRegistroRegraST;
  regrast := TRegraST.Create;
  try
    if not regrast.GetRegraST(cdsitentrada, reg) then
    begin
      setst;
    end;
  finally
    FreeAndNil(regrast);
  end;
  cdsitentrada.FieldByName(_cdcfop).OnValidate := cdsitentradaCDCFOPValidate;
  if (Sender.DataSet.fieldbyname(_cdcfop).asstring = _2910) or (Sender.DataSet.fieldbyname(_cdcfop).asstring = _1910) then
  begin
    Sender.DataSet.fieldbyname(_nustpis).Clear;
    Sender.DataSet.fieldbyname(_borecuperapis).clear;
    Sender.DataSet.fieldbyname(_alpis).clear;
    Sender.DataSet.fieldbyname(_nustcofins).Clear;
    Sender.DataSet.fieldbyname(_borecuperacofins).clear;
    Sender.DataSet.fieldbyname(_alcofins).clear;
  end;
  if (sender.asinteger = 2126) or (sender.asinteger = 1126) then
  begin
    Sender.DataSet.fieldbyname(_borecuperaipi).asstring := _n;
    Sender.DataSet.fieldbyname(_borecuperaicms).asstring := _n;
    if Sender.DataSet.fieldbyname(_nusticms).asstring = _00 then
    begin
      Sender.DataSet.fieldbyname(_nusticms).asstring := _90;
    end;
  end;
  if cds.fieldbyname(_cdcfop).asstring = '' then
  begin
    cds.fieldbyname(_cdcfop).asstring := Sender.DataSet.fieldbyname(_cdcfop).asstring;
  end;
end;

procedure Tfrmentrada.cdsitentradaPRLUCROValidate(Sender: TField);
begin
  if (Sender.FieldName = UpperCase(_PRLUCRO)) and (not Sender.IsNull) and (Sender.AsFloat <> 0) then
  begin
    if Sender.AsFloat < 0 then
    begin
      messagedlg('Porcentagem de lucro não pode ser menor do que zero!'#13'Digite um valor acima de zero para continuar.', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    Sender.DataSet.fieldbyname(_vlvenda).OnValidate := nil;
    Sender.DataSet.fieldbyname(_vlvenda).AsCurrency := Sender.DataSet.fieldbyname(_vlunitario).AsCurrency * ((Sender.AsFloat / 100) + 1);
    Sender.DataSet.fieldbyname(_vlvenda).OnValidate := cdsitentradaVLVENDAValidate;
  end;
end;

procedure Tfrmentrada.cdsitentradaVLVENDAValidate(Sender: TField);
begin
  if (Sender.FieldName = UpperCase(_VLVENDA)) and (not Sender.IsNull) and (Sender.AsCurrency <> 0) then
  begin
    if Sender.AsCurrency < 0 then
    begin
      messagedlg('Valor de Venda não pode ser menor do que zero!'#13'Digite um valor acima de zero para continuar.', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    Sender.DataSet.fieldbyname(_prlucro).OnValidate := nil;
    Sender.DataSet.fieldbyname(_prlucro).AsCurrency := ((Sender.AsCurrency / Sender.DataSet.fieldbyname(_vlunitario).AsCurrency) - 1) * 100;
    Sender.DataSet.fieldbyname(_prlucro).OnValidate := cdsitentradaPRLUCROValidate;
  end;
end;

procedure Tfrmentrada.cdsitentradaPRLUCROATACADOValidate(Sender: TField);
begin
  if (Sender.FieldName = UpperCase(_PRLUCROATACADO)) and (not Sender.IsNull) and (Sender.AsFloat <> 0) then
  begin
    if Sender.AsFloat < 0 then
    begin
      messagedlg('Porcentagem de lucro não pode ser menor do que zero!'#13'Digite um valor acima de zero para continuar.', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    Sender.DataSet.fieldbyname(_vlatacado).OnValidate := nil;
    Sender.DataSet.fieldbyname(_vlatacado).AsCurrency := Sender.DataSet.fieldbyname(_vlunitario).AsCurrency * ((Sender.AsFloat / 100) + 1);
    Sender.DataSet.fieldbyname(_vlatacado).OnValidate := cdsitentradaVLATACADOValidate;
  end;
end;

procedure Tfrmentrada.cdsitentradaVLATACADOValidate(Sender: TField);
begin
  if (Sender.FieldName = UpperCase(_VLATACADO)) and (not Sender.IsNull) and (Sender.AsCurrency <> 0) then
  begin
    if Sender.AsCurrency < 0 then
    begin
      messagedlg('Valor de Atacado não pode ser menor do que zero!'#13'Digite um valor acima de zero para continuar.', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    Sender.DataSet.fieldbyname(_prlucroatacado).OnValidate := nil;
    Sender.DataSet.fieldbyname(_prlucroatacado).AsCurrency := ((Sender.AsCurrency / Sender.DataSet.fieldbyname(_vlunitario).AsCurrency) - 1) * 100;
    Sender.DataSet.fieldbyname(_prlucroatacado).OnValidate := cdsitentradaPRLUCROATACADOValidate;
  end;
end;

procedure Tfrmentrada.cdsitentradaPRLUCROESPECIALValidate(Sender: TField);
begin
  if (Sender.FieldName = UpperCase(_PRLUCROESPECIAL)) and (not Sender.IsNull) and (Sender.AsFloat <> 0) then
  begin
    if Sender.AsFloat < 0 then
    begin
      messagedlg('Porcentagem de lucro não pode ser menor do que zero!'#13'Digite um valor acima de zero para continuar.', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    Sender.DataSet.fieldbyname(_vlespecial).OnValidate := nil;
    Sender.DataSet.fieldbyname(_vlespecial).AsCurrency := Sender.DataSet.fieldbyname(_vlunitario).AsCurrency * ((Sender.AsFloat / 100) + 1);
    Sender.DataSet.fieldbyname(_vlespecial).OnValidate := cdsitentradaVLESPECIALValidate;
  end;
end;

procedure Tfrmentrada.cdsitentradaVLESPECIALValidate(Sender: TField);
begin
  if (Sender.FieldName = UpperCase(_VLESPECIAL)) and (not Sender.IsNull) and (Sender.AsCurrency <> 0) then
  begin
    if Sender.AsCurrency < 0 then
    begin
      messagedlg('Valor Especial não pode ser menor do que zero!'#13'Digite um valor acima de zero para continuar.', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    Sender.DataSet.fieldbyname(_prlucroespecial).OnValidate := nil;
    Sender.DataSet.fieldbyname(_prlucroespecial).AsCurrency := ((Sender.AsCurrency / Sender.DataSet.fieldbyname(_vlunitario).AsCurrency) - 1) * 100;
    Sender.DataSet.fieldbyname(_prlucroespecial).OnValidate := cdsitentradaPRLUCROESPECIALValidate;
  end;
end;

procedure Tfrmentrada.cdsitentradaBOAJUSTETOTALValidate(Sender: TField);
begin
  tbvVLTOTAL.options.focusing := cdsitentradaBOAJUSTETOTAL.asstring = _s;
end;

procedure Tfrmentrada.cdsitentradaBOBASEICMSAJUSTEValidate(Sender: TField);
begin
  tbvVLBASEICMS.options.focusing := cdsitentradaBOBASEICMSAJUSTE.asstring = _s;
end;

procedure Tfrmentrada.cdsitentradaBOBASEIPIAJUSTEValidate(Sender: TField);
begin
  tbvVLBASEIPI.options.focusing := cdsitentradaBOBASEIPIAJUSTE.asstring = _s;
end;

procedure Tfrmentrada.cdsitentradaBOICMSAJUSTEValidate(Sender: TField);
begin
  tbvVLICMS.options.focusing := cdsitentradaBOICMSAJUSTE.asstring = _s;
end;

procedure Tfrmentrada.cdsitentradaBORECUPERAAJUSTEICMSValidate(Sender: TField);
var
  produto : TProduto;
begin
  if (Sender.FieldName = UpperCase(_BORECUPERAAJUSTEICMS)) and (not Sender.IsNull) and (Sender.AsString = _s) then
  begin
    if Sender.DataSet.fieldbyname(_cdproduto).IsNull then
    begin
      messagedlg('Preencha o produto antes de continuar.', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      Abort;
    end;
    produto := tproduto.create;
    try
      produto.Select(sender.DataSet.FieldByName(_cdproduto).AsInteger);
      if produto.cdtpitem <> _08 then
      begin
        messagedlg('O produto não está identificado como Ativo Imobilizado.'#13'Favor alterar o cadastro do produto antes de continuar.', mtInformation, [mbOK], 0);
        Sender.FocusControl;
        Abort;
      end;
      produto.checkContaAtivo;
    finally
      freeandnil(produto);
    end;
  end;
end;

procedure Tfrmentrada.cdsitentradaNUSTICMSValidate(Sender: TField);
begin
  if (empresa.tpregime <> _S) and (qregistro.CampodoCampo(_sticms, _nusticms, Sender.asstring, _boentrada, true) = _n) then
  begin
    MessageDlg('Situação Tributária do ICMS '+Sender.AsString+' não pode ser usado em nota de entrada de compra.'#13'Altere o código para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure Tfrmentrada.cdsitentradaNUSTIPIValidate(Sender: TField);
begin
  if qregistro.CampodoCampo(_stipi, _nustipi, Sender.asstring, _tpentsai) = _S then
  begin
    MessageDlg('Situação Tributária do IPI '+Sender.AsString+' não pode ser usado em nota de entrada de compra.'#13'Altere o código para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure Tfrmentrada.cdsCDFORNECEDORValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  if not tela.tela.fornecedor.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_Fornecedor)]), mterror, [mbok], 0);
    cdsCDCFOP.clear;
    edtcdcliente.Clear;
    sender.FocusControl;
    Abort;
  end;
  if (cdsnudocfiscalicms.asstring = _55) or (cdsnudocfiscalicms.asstring = _01) then
  begin
    if (removercaracteres(tela.tela.fornecedor.nucpf) = '') and (tela.tela.fornecedor.tppessoa = _f) then
    begin
      MessageDlg('Fornecedor não possui CPF preenchido.'#13'Altere o cadastro do fornecedor para continuar.'#13'CPF é um campo obrigatório para nota fiscal eletrônica.', mtInformation, [mbOK], 0);
      cds.fieldbyname(_cdfornecedor).focuscontrol;
      abort;
    end;
    if (removercaracteres(tela.tela.fornecedor.nucnpj) = '') and (tela.tela.fornecedor.tppessoa = _j) then
    begin
      MessageDlg('Fornecedor não possui CNPJ preenchido.'#13'Altere o cadastro do fornecedor para continuar.'#13'CNPJ é um campo obrigatório para nota fiscal eletrônica.', mtInformation, [mbOK], 0);
      cds.fieldbyname(_cdfornecedor).focuscontrol;
      abort;
    end;
  end;
  if (cdsnudocfiscalicms.asstring = _55) or (cdsnudocfiscalicms.asstring = _01) then
  begin
    if not qendereco.ConsistirMunicipio(_fornecedor, sender.AsString) then
    begin
      cds.fieldbyname(_cdfornecedor).focuscontrol;
      abort;
    end;
    if not qendereco.ConsistirNumero(_fornecedor, sender.AsString) then
    begin
      cds.fieldbyname(_cdfornecedor).focuscontrol;
      abort;
    end;
  end;
  lblcodigo.Hint := tela.tela.fornecedor.hint_rzsocial;
  tela.tela.fornecedor.uf.Select(tela.tela.fornecedor.cduf);
  if tela.tela.fornecedor.uf.sguf = empresa.endereco.sguf then
  begin
    if tela.dados.tpentrada.cdcfopduf <> 0 then
    begin
      cds.FieldByName(_cdcfop).asinteger := tela.dados.tpentrada.cdcfopduf;
    end
    else if tela.dados.tpentrada.cdcfopdufsubtrib <> 0 then
    begin
      cds.FieldByName(_cdcfop).asinteger := tela.dados.tpentrada.cdcfopdufsubtrib;
    end;
  end
  else if tela.dados.tpentrada.cdcfopfuf <> 0 then
  begin
    cds.FieldByName(_cdcfop).asinteger := tela.dados.tpentrada.cdcfopfuf
  end
  else if tela.dados.tpentrada.cdcfopfufsubtrib <> 0 then
  begin
    cds.FieldByName(_cdcfop).asinteger := tela.dados.tpentrada.cdcfopfufsubtrib;
  end;
  cds.fieldbyname(_cdcliente).Clear;
  if (tela.dados.tpentrada.bodshistoriconf = _s) and (Sender.FieldName = UpperCase(_CDFORNECEDOR)) then
  begin
    Sender.DataSet.fieldbyname(_dshistorico).asstring := 'NF '+Sender.DataSet.fieldbyname(_nuentrada).asstring + ' - '+tela.tela.fornecedor.nmfornecedor;
  end;
  if (tela.tela.fornecedor.nuplconta <> '') and (tela.dados.tpentrada.boautpagto = _s) then
  begin
    cdsnuplconta.AsString := tela.tela.fornecedor.nuplconta;
  end;
  if (tela.tela.fornecedor.nucntcusto <> '') and (tela.dados.tpentrada.boautpagto = _s) then
  begin
    cdsnuCNTCUSTO.Asstring := tela.tela.fornecedor.nucntcusto;
  end;
  tela.dados.cduf := tela.tela.fornecedor.cduf;
  cds.fieldbyname(_rzsocial+_f).AsString := tela.tela.fornecedor.rzsocial;
  cdsautpagto.First;
  while not cdsautpagto.Eof do
  begin
    cdsautpagto.Edit;
    cdsautpagto.fieldbyname(_cdfornecedor).asstring := sender.AsString;
    cdsautpagto.Post;
    cdsautpagto.next;
  end;
end;

procedure Tfrmentrada.cdsNUCNTCUSTOValidate(Sender: TField);
begin
  if Sender.AsString <> '' then
  begin
    if not CodigoExiste(_cntcusto, _nunivel, _string, Sender.AsString) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_centro+' '+_Custo)]), mterror, [mbok], 0);
      sender.FocusControl;
      abort;
    end;
    cdscdcntcusto.asstring := CodigodoCampo(_cntcusto, sender.AsString, _nunivel);
    cdsnmcntcusto.asstring := NomedoCodigo(_cntcusto, cdscdcntcusto.asstring);
  end
  else
  begin
    cdscdcntcusto.clear;
    cdsnmcntcusto.clear;
  end;
  AtualizarCentroCustoAutpagto(Sender);
  AtualizarCentroCustoItEntrada(Sender);
end;

procedure Tfrmentrada.cdsNUDOCFISCALICMSValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  if not RetornaSQLBoolean('select boativar from docfiscalicms where nudocfiscalicms='+quotedstr(sender.asstring)) then
  begin
    messagedlg('Código '+sender.asstring+' está desativado na tabela Documento Fiscal.', mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  exibirChaveNFE(Sender.AsString);
end;

procedure Tfrmentrada.cdsNUENTRADAValidate(Sender: TField);
begin
  if (tela.dados.tpentrada.bodshistoriconf = _s) and (Sender.FieldName = uppercase(_NU)+uppercase(_entrada)) then
  begin
    Sender.DataSet.fieldbyname(_dshistorico).asstring := 'NF '+Sender.DataSet.fieldbyname(_nuentrada).asstring + ' - '+nomedocodigo(_fornecedor, Sender.DataSet.fieldbyname(_cdfornecedor).asstring);
  end;
end;

procedure Tfrmentrada.cdsCDTPENTRADAValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    exit;
  end;
  setrecord(Sender.asinteger);
  if tela.dados.tpentrada.bofrete <> _s then
  begin
    edtcdTransportadora.Clear;
    edtnuplaca.Clear;
    cds.FieldByName(_cduf).Clear;
    edtpsbruto.Clear;
    edtpsliquido.Clear;
  end;
  if tela.dados.tpentrada.boautpagto <> _s then
  begin
    cds.fieldbyname(_dshistorico).Clear;
    cds.fieldbyname(_cdtpcobranca).Clear;
    cds.fieldbyname(_NUPLCONTA).Clear;
    cds.fieldbyname(_cdPLCONTA).Clear;
    cds.fieldbyname(_cdcondpagto).Clear;
    cdsautpagto.First;
    while not cdsautpagto.Eof do
    begin
      cdsautpagto.Delete;
    end;
  end;
end;

procedure Tfrmentrada.cdsCDCFOPValidate(Sender: TField);
var
  recno : integer;
begin
  if Sender.asstring = '' then
  begin
    sender.DataSet.FieldByName(_nmcfop).clear;
    Exit;
  end;
  if not BooleandoCodigo(_cfop, Sender.asstring, _boativar) then
  begin
    messagedlg('CFOP está desativado.'#13'Selecione outro para poder continuar.', mtinformation, [mbok], 0);
    Sender.FocusControl;
    abort;
  end;
  if (BooleandoCodigo(_cfop, Sender.asstring, _bocte)) and (cds.FieldByName(_nudocfiscalicms).AsString <> '') and (cds.FieldByName(_nudocfiscalicms).AsString <> _08) and (cds.FieldByName(_nudocfiscalicms).AsString <> _57) and (cds.FieldByName(_nudocfiscalicms).AsString <> _07) then
  begin
    messagedlg('CFOP de conhecimento de transporte só pode ser usado com documento fiscal icms 07, 08 ou 57.', mtinformation, [mbok], 0);
    Sender.FocusControl;
    abort;
  end;
  sender.DataSet.FieldByName(_nmcfop).AsString := qregistro.NomedoCodigo(_cfop, sender.asinteger);
  cdsItEntrada.DisableControls;
  try
    recno := cdsItEntrada.recno;
    if cdsItEntrada.State = dsinsert then
    begin
      cdsItEntrada.Cancel;
    end;
    cdsItEntrada.First;
    while not cdsItEntrada.Eof do
    begin
      if sender.AsString <> cdsItEntrada.fieldbyname(_cdCFOP).asstring then
      begin
        cdsItEntrada.Edit;
        cdsItEntrada.fieldbyname(_cdCFOP).AsString := sender.AsString;
        cdsItEntrada.Post;
      end;
      cdsItEntrada.Next;
    end;
    cdsItEntrada.RecNo := recno;
  finally
    cdsItEntrada.EnableControls;
  end;
end;

procedure Tfrmentrada.cdsCDTRANSPORTADORAValidate(Sender: TField);
var
  transportadora : TTransportadora;
  veiculo : TVeiculo;
begin
  if sender.AsString = '' then
  begin
    cdsNUPLACA.Clear;
    cdsCDUF.Clear;
    sender.DataSet.FieldByName(_nmtransportadora).clear;
    exit;
  end;
  Transportadora := TTransportadora.create;
  veiculo := TVeiculo.Create;
  try
    if not transportadora.Select(Sender.AsLargeInt) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_Transportadora)]), mterror, [mbok], 0);
      Sender.FocusControl;
      cdsnuplaca.clear;
      cdsCDUF.Clear;
    end;
    if not qendereco.ConsistirMunicipio(_Transportadora, Sender.AsString) then
    begin
      cds.fieldbyname(_cdtransportadora).focuscontrol;
      abort;
    end;
    if not qendereco.ConsistirNumero(_Transportadora, Sender.AsString) then
    begin
      cds.fieldbyname(_cdtransportadora).focuscontrol;
      abort;
    end;
    if not qregistro.BooleandoCodigo(_sttransportadora, transportadora.cdsttransportadora, _bogerarentrada) then
    begin
      messagedlg('Transportadora está no status '+qregistro.NomedoCodigo(_sttransportadora, transportadora.cdsttransportadora)+#13+
                  'que não permite ser inserido no '+exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    end;
    sender.DataSet.FieldByName(_nmtransportadora).AsString := transportadora.nmtransportadora;
    if veiculo.Select(transportadora.cdveiculo) then
    begin
      cdsnuplaca.asstring := veiculo.nuplaca;
      cdscduf.asInteger   := veiculo.cduf;
      if veiculo.cduf = 0 then
      begin
        cdscduf.Clear;
      end;
    end;
  finally
    freeandnil(transportadora);
    freeandnil(veiculo);
  end;
end;

procedure Tfrmentrada.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
  colorenter(sender);
end;

procedure Tfrmentrada.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmentrada.edtcodigoKeyPress(Sender: TObject; var Key: Char);
var
  codigo : integer;
  nuentrada : string;
begin
  TQForm.KeyPressControl(key);
  if not ((key = #13) and (TEdit(sender).text <> '')) then
  begin
    exit;
  end;
  if (cds.state = dsinsert) or (cds.state = dsedit) then
  begin
    cds.fieldbyname(_nuserie).FocusControl;
    Exit;
  end;
  codigo := tela.dados.codigonotaFiscal(edtcodigo.text);
  if codigo = -1 then
  begin
    edtcodigo.clear;
    Exit;
  end;
  if not abrir(codigo) then
  begin
    if actnovo.Enabled then
    begin
      if messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        nuentrada := edtcodigo.text;
        actNovoExecute(sender);
        if edtcodigo.text = '' then
        begin
          edtcodigo.text := nuentrada;
        end;
      end
      else
      begin
        edtcodigo.text := cds.fieldbyname(_nuentrada).asstring;
      end;
    end
    else
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcodigo.text, maiuscula(exibe)]), mterror, [mbok], 0);
      edtcodigo.text := cds.fieldbyname(_nuentrada).asstring;
    end;
  end;
  edtcodigo.selectall;
end;

procedure Tfrmentrada.edtcdcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcfopPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmentrada.edtcdcfopPropertiesButtonClick(Sender: TObject;AButtonIndex: Integer);
var
  codigo : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  codigo := Localizar(_cfop);
  if codigo = 0 then
  begin
    Exit;
  end;
  if (cds.State <> dsinsert) and (cds.State <> dsedit) then
  begin
    cds.Edit;
  end;
  cds.fieldbyname(_cdcfop).AsInteger := codigo;
end;

procedure Tfrmentrada.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrmentrada.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmentrada.edtcdcondpagtoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdcondpagtoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmentrada.edtcdcondpagtoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  codigo := Localizar(_condpagto);
  if codigo = 0 then
  begin
    Exit;
  end;
  if (cds.State <> dsinsert) and (cds.State <> dsedit) then
  begin
    cds.Edit;
  end;
  cds.fieldbyname(_cdcondpagto).AsInteger := codigo;
end;

procedure Tfrmentrada.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrmentrada.edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmentrada.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, cds);
end;

procedure Tfrmentrada.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmentrada.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmentrada.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmentrada.actloteserieExecute(Sender: TObject);
begin
  Loteserie(_entrada, _e, cdsitentradacdproduto.AsString, cdsitentradalote);
end;

procedure Tfrmentrada.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmentrada.cdsNUPLCONTAValidate(Sender: TField);
begin
  if Sender.AsString <> '' then
  begin
    if not CodigoExiste(_plconta, _nunivel, _string, Sender.AsString) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_Plano+' '+_Contas)]), mterror, [mbok], 0);
      sender.FocusControl;
      abort;
    end;
    cdscdplconta.asstring := CodigodoCampo(_plconta, sender.AsString, _nunivel);
    cdsnmplconta.asstring := NomedoCodigo(_plconta, cdscdplconta.asstring);
  end
  else
  begin
    cdscdplconta.clear;
    cdsnmplconta.clear;
  end;
  AtualizarPlanoContasItEntrada;
  AtualizarPlanoContasAutpagto;
end;

procedure Tfrmentrada.tbvNUCNTCUSTOPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  cd : string;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar(_cntcusto, _nunivel, _nmcntcusto, 'Centro de Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  if (cdsitentrada.State <> dsedit) and (cdsitentrada.State <> dsinsert) then
  begin
    cdsitentrada.Edit;
  end;
  cdsitentradaNUcntcusto.AsString := cd;
end;

procedure Tfrmentrada.tbvNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  if (cdsitentrada.State <> dsedit) and (cdsitentrada.State <> dsinsert) then
  begin
    cdsitentrada.Edit;
  end;
  cdsitentradaNUPLCONTA.AsString := cd;
end;

procedure Tfrmentrada.AbrirTabelas;
begin
  cbxCDCLCONSUMOAGUA.Properties.ListSource := abrir_tabela(_clconsumoagua);
  cbxCDCLCONSUMOENERGIA.Properties.ListSource := abrir_tabela(_CLCONSUMOENERGIA);
  cbxCDTPLIGACAOC500.Properties.ListSource    := abrir_tabela(_TPLIGACAOC500);
  cbxCDGRUPOTENSAOC500.Properties.ListSource  := abrir_tabela(_GRUPOTENSAOC500);
  cbxNUSTDOCUMENTO.Properties.ListSource      := abrir_tabela(_STDOCUMENTO);
  cbxcdtpentrada.Properties.ListSource        := abrir_tabela(_tpentrada);
  cbxnudocfiscalicms.Properties.ListSource    := abrir_tabela(_docfiscalicms);
  cbxcdtpcobranca.Properties.ListSource       := abrir_tabela(_tpcobranca);
  cbxcduf.Properties.ListSource               := abrir_tabela(_uf);
  cbxcdtpfrete.Properties.ListSource          := abrir_tabela(_tpfrete);
  TcxLookupComboBoxProperties(tbvautpagtoCDSTautpagto.Properties).ListSource := abrir_tabela(_stautpagto);
  TcxLookupComboBoxProperties(tbvautpagtoCDTPCOBRANCA.Properties).ListSource  := abrir_tabela(_tpcobranca);
  TcxLookupComboBoxProperties(tbvCDMODBCICMS.Properties).ListSource   := abrir_tabela(_MODBCICMS);
  TcxLookupComboBoxProperties(tbvCDMODBCSTICMS.Properties).ListSource := abrir_tabela(_MODBCSTICMS);
  TcxLookupComboBoxProperties(tbvNUSTICMS.Properties).ListSource      := abrir_tabela(_STICMS);
  TcxLookupComboBoxProperties(tbvNUSTIPI.Properties).ListSource       := abrir_tabela(_STIPI);
  TcxLookupComboBoxProperties(tbvNUSTPIS.Properties).ListSource       := abrir_tabela(_STPIS);
  TcxLookupComboBoxProperties(tbvNUSTCOFINS.Properties).ListSource    := abrir_tabela(_STCOFINS);
  TcxLookupComboBoxProperties(tbvCDBCCALCULOCREDITO.Properties).ListSource  := abrir_tabela(_BCCALCULOCREDITO);
  TcxLookupComboBoxProperties(tbventradaefd0450CDEFD0450.Properties).ListSource := abrir_tabela(_EFD0450);
  TcxLookupComboBoxProperties(tbventradac111CDTPC111.Properties).ListSource := abrir_tabela(_TPC111);
end;

procedure Tfrmentrada.edtCDTRANSPORTADORAKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmentrada.cbxcdtpentradaEnter(Sender: TObject);
begin
  abrir_tabela(_tpentrada);
  colorenter(sender);
end;

procedure Tfrmentrada.cdsVLDESCONTOValidate(Sender: TField);
begin
  gravartotais(sender);
end;

procedure Tfrmentrada.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
       if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _CDDIGITADO  then actabrirproduto.onExecute(actabrirproduto)
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordcompra then actabrirordcompra.onExecute(actabrirordcompra);
end;

procedure Tfrmentrada.tbvautpagtoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdautpagto  then actAbrirAutPagto.onExecute(actAbrirAutPagto);
end;

procedure Tfrmentrada.tbvautpagtoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvAUTPAGTONUCORCONTA;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  end
  else
  begin
    Column := tbvAUTPAGTONUCOR;
    if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
    begin
      ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
      if ACanvas.Font.Color = clred  then
      begin
        ACanvas.Font.Style := [fsStrikeOut, fsBold]
      end
      else if ACanvas.Font.Color = clblue then
      begin
        ACanvas.Font.Style := [fsBold];
      end;
    end;
  end;
end;

procedure Tfrmentrada.cdsCDCLIENTEValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    Exit;
  end;
  if not tela.tela.cliente.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_Cliente)]), mterror, [mbok], 0);
    cdsCDCFOP.clear;
    edtcdcliente.Clear;
    sender.FocusControl;
    Abort;
  end;
  tela.tela.cliente.stcliente.Select(tela.tela.cliente.cdstcliente);
  if (tela.tela.cliente.stcliente.bogerarentrada <> _s) or (tela.tela.cliente.stcliente.bogerarinfo <> _s) then
  begin
    messagedlg('Cliente está no status '+tela.tela.cliente.stcliente.nmstcliente+#13'que não permite ser inserido na '+exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    cds.FieldByName(_rzsocial+_c).Clear;
    sender.clear;
    abort;
  end;
  if (cdsnudocfiscalicms.asstring = _55) or (cdsnudocfiscalicms.asstring = _01) then
  begin
    if (removercaracteres(tela.tela.cliente.nucpf) = '') and (tela.tela.cliente.tppessoa = _f) then
    begin
      MessageDlg('Cliente não possui CPF preenchido.'#13'Altere o cadastro do cliente para continuar.'#13'CPF é um campo obrigatório para nota fiscal eletrônica.', mtInformation, [mbOK], 0);
      cds.fieldbyname(_cdcliente).focuscontrol;
      abort;
    end;
    if (removercaracteres(tela.tela.cliente.nucnpj) = '') and (tela.tela.cliente.tppessoa = _j) then
    begin
      MessageDlg('Cliente não possui CNPJ preenchido.'#13'Altere o cadastro do cliente para continuar.'#13'CNPJ é um campo obrigatório para nota fiscal eletrônica.', mtInformation, [mbOK], 0);
      cds.fieldbyname(_cdcliente).focuscontrol;
      abort;
    end;
  end;
  if (cdsnudocfiscalicms.asstring = _55) or (cdsnudocfiscalicms.asstring = _01) then
  begin
    if not tela.tela.cliente.ConsistirMunicipio(cds.fieldbyname(_cdcliente).asstring) then
    begin
      cds.fieldbyname(_cdcliente).focuscontrol;
      abort;
    end;
    if not tela.tela.cliente.ConsistirNumero(cds.fieldbyname(_cdcliente).asstring) then
    begin
      cds.fieldbyname(_cdcliente).focuscontrol;
      abort;
    end;
  end;
  lblcodigo.Hint := tela.tela.cliente.hint_rzsocial;
  cds.fieldbyname(_cdfornecedor).Clear;
  cds.fieldbyname(_rzsocial+_c).AsString := tela.tela.cliente.rzsocial;
  tela.dados.cduf := tela.tela.cliente.cduf;
end;

procedure Tfrmentrada.setVisibleTransportadora;
begin
  edtCDTRANSPORTADORA.Visible := cdsCDTPFRETE.AsString <> _9;
  edtNUPLACA.Visible          := cdsCDTPFRETE.AsString <> _9;
  cbxcduf.Visible             := cdsCDTPFRETE.AsString <> _9;
  edtVLFRETE.Visible          := cdsCDTPFRETE.AsString <> _9;
  ckbBOFRETEITEM.Visible      := cdsCDTPFRETE.AsString <> _9;
  lblvlfrete.Visible          := cdsCDTPFRETE.AsString <> _9;
  lblnuplaca.Visible          := cdsCDTPFRETE.AsString <> _9;
  lblcdtransportadora.Visible := cdsCDTPFRETE.AsString <> _9;
  {if rdgcdtpfrete.ItemIndex = 1 then
  begin
    edtvlfrete.Enabled := false;
    cds.fieldbyname(_vlfrete).Clear;
  end
  else
  begin
    edtvlfrete.Enabled := true;
  end;
  cbxCdUf.Enabled               := rdgcdtpfrete.ItemIndex = 1;
  edtnuplaca.Enabled            := rdgcdtpfrete.ItemIndex = 1;
  edtcdTransportadora.Enabled   := rdgcdtpfrete.ItemIndex = 1;
  btnfindtransportadora.Enabled := rdgcdtpfrete.ItemIndex = 1;
  edtvlfrete.Enabled            := rdgcdtpfrete.ItemIndex = 0;
  if rdgcdtpfrete.ItemIndex = 0 then
  begin
    cds.fieldbyname(_cdtransportadora).Clear;
    lblnmtransportadora.Caption := '';
  end
  else if rdgcdtpfrete.ItemIndex = 1 then
  begin
    cds.fieldbyname(_vlfrete).Clear;
  end;}
end;

procedure Tfrmentrada.cdsitentradaloteAfterDelete(DataSet: TDataSet);
begin
  if (cdsitentrada.State <> dsedit) or (cdsitentrada.State <> dsinsert) then
  begin
    cdsitentrada.Edit;
  end;
  cdsitentradaQTITEM.AsFloat := cdsitentradaQTITEM.AsFloat -1;
end;

procedure Tfrmentrada.cdsitentradaloteAfterInsert(DataSet: TDataSet);
begin
  if (cdsitentrada.State <> dsedit) or (cdsitentrada.State <> dsinsert) then
  begin
    cdsitentrada.Edit;
  end;
  cdsitentradaQTITEM.AsFloat := cdsitentradaQTITEM.AsFloat +1;
end;

procedure Tfrmentrada.cdsitentradaAfterScroll(DataSet: TDataSet);
begin
  actloteserie.Visible := cdsitentradaboloteimei.AsString = _s;
  actloteserie.Enabled := cdsitentradaboloteimei.AsString = _s;
  tbvQTITEM.Options.Focusing := not (cdsitentradaboloteimei.AsString = _s);
  cdsitentradaBOAJUSTETOTALValidate(cdsitentradaBOAJUSTETOTAL);
  cdsitentradaBOICMSAJUSTEValidate(cdsitentradaBOICMSAJUSTE);
  cdsitentradaBOBASEICMSAJUSTEValidate(cdsitentradaBOBASEICMSAJUSTE);
  cdsitentradaBOBASEIPIAJUSTEValidate(cdsitentradaBOBASEIPIAJUSTE);
end;

procedure Tfrmentrada.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitentrada, key);
  if key = __KeySearch then
  begin
    if LowerCase(tbv.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cddigitado then
    begin
      tbvCDDIGITADOPropertiesButtonClick(sender, 0);
    end
    else if LowerCase(tbv.Controller.FocusedColumn.DataBinding.FilterFieldName) = _nuplconta then
    begin
      tbvNUPLCONTAPropertiesButtonClick(sender, 0);
    end
    else if LowerCase(tbv.Controller.FocusedColumn.DataBinding.FilterFieldName) = _nucntcusto then
    begin
      tbvNUCNTCUSTOPropertiesButtonClick(sender, 0);
    end;
  end;
end;

procedure Tfrmentrada.tbvautpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsautpagto, key);
end;

procedure Tfrmentrada.tbvCDCFOPPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsitentrada, _cfop, _cdcfop, false);
end;

procedure Tfrmentrada.tbvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_entrada, cdsitentrada, true);
end;

procedure Tfrmentrada.setst;
  procedure set_st(nmst:string);
  var
    cdst : string;
    regrast : TRegraST;
  begin
    if (cdsitentradacdproduto.AsString = '') or (cdsitentradacdproduto.AsString = cdsitentradacdproduto.OldValue) then
    begin
      exit;
    end;
    regrast := TRegraST.Create;
    try
      cdst := regrast.GetST(_entrada, cdsitentradacdproduto.AsInteger, cdsitentradacdcfop.AsInteger, nmst);
    finally
      FreeAndNil(regrast);
    end;
    if cdst <> '' then
    begin
      cdsitentrada.FieldByName(_nust+nmst).asstring := cdst;
    end;
  end;
begin
  set_st(_icms);
  set_st(_ipi);
  set_st(_pis);
  set_st(_cofins);
end;

procedure Tfrmentrada.cdsentradaefd0450NewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname(_cdentradaefd0450).asstring := GerarCodigo(_entradaefd0450);
end;

procedure Tfrmentrada.cdsentradac111NewRecord(DataSet: TDataSet);
begin
  DataSet.fieldbyname(_cdentradac111).asstring := GerarCodigo(_entradac111);
end;

procedure Tfrmentrada.tbvautpagtoNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  if (cdsAUTPAGTO.State <> dsedit) and (cdsAUTPAGTO.State <> dsinsert) then
  begin
    cdsAUTPAGTO.Edit;
  end;
  cdsAUTPAGTONUcntcusto.AsString := cd;
end;

procedure Tfrmentrada.tbvautpagtoNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  if (cdsAUTPAGTO.State <> dsedit) and (cdsAUTPAGTO.State <> dsinsert) then
  begin
    cdsAUTPAGTO.Edit;
  end;
  cdsAUTPAGTONUPLCONTA.AsString := cd;
end;

procedure Tfrmentrada.cdsautpagtoNUCNTCUSTOValidate(Sender: TField);
begin
  if Sender.asstring = '' then
  begin
    sender.dataset.fieldbyname(_cdcntcusto).clear;
    sender.dataset.fieldbyname(_nmcntcusto).clear;
    Exit;
  end;
  if not CodigoExiste(_cntcusto, _NUNIVEL, _STRING, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    abort;
  end;
  sender.dataset.fieldbyname(_cdcntcusto).asstring := codigodocampo(_cntcusto, Sender.asstring, _nunivel);
  sender.dataset.fieldbyname(_nmcntcusto).asstring := NomedoCodigo (_cntcusto, sender.dataset.fieldbyname(_cdcntcusto).asstring);
end;

procedure Tfrmentrada.cdsautpagtoNUPLCONTAValidate(Sender: TField);
begin
  if Sender.asstring = '' then
  begin
    sender.dataset.fieldbyname(_cdplconta).clear;
    sender.dataset.fieldbyname(_nmplconta).clear;
    Exit;
  end;
  if not CodigoExiste(_plconta, _NUNIVEL, _STRING, Sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    abort;
  end;
  sender.dataset.fieldbyname(_cdplconta).asstring := codigodocampo(_plconta, Sender.asstring, _nunivel);
  sender.dataset.fieldbyname(_nmplconta).asstring := NomedoCodigo (_plconta, sender.dataset.fieldbyname(_cdplconta).asstring);
end;

procedure Tfrmentrada.cdsVLICMSSUBTRIBValidate(Sender: TField);
begin
  gravartotais(sender);
end;

procedure Tfrmentrada.cdsVLSEGUROValidate(Sender: TField);
begin
  gravartotais(sender);
end;

procedure Tfrmentrada.cdsVLOUTDESPESAValidate(Sender: TField);
begin
  gravartotais(sender);
end;

procedure Tfrmentrada.tbvCDORDPRODUCAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsitentrada, _ordproducao, _cdordproducao, false);
end;

procedure Tfrmentrada.cdsitentradaCDORDPRODUCAOValidate(Sender: TField);
var
  ordproducao : TOrdProducao;
begin
  if not CodigoExiste( _ordproducao, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_ordem+' '+__producao)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  ordproducao := tordproducao.create;
  try
    ordproducao.select(sender.AsInteger);
    ordproducao.cdstordproducao := 5;
    ordproducao.Update;
    ordproducao.RegistrarMudancaStatus;
  finally
    ordproducao.Destroy;
  end;
end;

procedure Tfrmentrada.cdsitentradaALICMSValidate(Sender: TField);
var
  produto : TProduto;
begin
  TornarNuloAliquotaZerada(sender);
  if (sender.AsFloat <= 0) or Sender.DataSet.FieldByName(_cdproduto).IsNull or (Sender.DataSet.FieldByName(_borecuperaicms).asstring = _s) then
  begin
    Exit;
  end;
  produto := TProduto.create;
  try
    produto.Select(Sender.DataSet.FieldByName(_cdproduto).AsInteger);
    if produto.borecuperaicms = _s then
    begin
      Sender.DataSet.FieldByName(_borecuperaicms).asstring := _s;
      Sender.DataSet.FieldByName(_nusticms).AsString       := _00;
    end;
  finally
    FreeAndNil(produto);
  end;
end;

procedure Tfrmentrada.TornarNuloAliquotaZerada(Sender: TField);
begin
  if (not sender.IsNull) and (sender.AsFloat = 0) then
  begin
    sender.Clear;
  end;
end;

procedure Tfrmentrada.txtRZSOCIALCDblClick(Sender: TObject);
begin
  actAbrirClienteExecute(actAbrirCliente);
end;

procedure Tfrmentrada.txtRZSOCIALFDblClick(Sender: TObject);
begin
  actAbrirfornecedorExecute(actAbrirfornecedor);
end;

procedure TfrmEntrada.setRegistroRegraST;
begin
  reg.cdcfopduf := tela.dados.tpentrada.cdcfopduf;
  reg.cdcfopfuf := tela.dados.tpentrada.cdcfopfuf;
  reg.cdcfopdufsubtrib := tela.dados.tpentrada.cdcfopdufsubtrib;
  reg.cdcfopfufsubtrib := tela.dados.tpentrada.cdcfopfufsubtrib;
  if tela.tela.cliente.cduf <> 0 then
  begin
    reg.cduf := tela.tela.cliente.cduf;
    reg.tpregime := tela.tela.cliente.get_tpregime;
  end
  else
  begin
    reg.cduf := tela.tela.fornecedor.cduf;
    reg.tpregime := tela.tela.fornecedor.get_tpregime;
  end;
  reg.tpentsai := _e;
end;

end.
