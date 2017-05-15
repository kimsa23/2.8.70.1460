unit usaida;

interface

uses
  System.Actions, System.UITypes, Winapi.Messages,
  windows, sysutils, dialogs, graphics, Classes, ActnList, StdCtrls, forms,
  ShellAPI, Menus, IniFiles, ComCtrls, Mask, ToolWin, Controls, ExtCtrls, Buttons,
  Math, Variants, Clipbrd, XMLIntf, msxmldom, XMLDoc, xmldom,
  Grids, FMTBcd, DBCtrls, DB, sqlexpr, Provider, DBClient,
  pcnRetEnvEventoNFe, pcnConversao, pcnConversaoNFe,
  ACBrDFeSSL, ACBrNFe, ACBrBase, ACBrNFeWebServices, ACBrDFe, ACBrMail,
  urotinas, ustrings, uregistro, uregistroib, uconstantes,
  uAssinaturaDigital, udatahora, uexportarexcel, uprogressbar,
  classeRegistro, classelocacao, classeretornasql, classecondpagto,
  classeentrada, classeempresa, classeregistrainformacao, classegerar, classeusuario,
  classeexecutasql, classeform, classeproduto, classeadntcliente, classesaida,
  classeduplicata, classeaplicacao, classeendereco,
  classepedido, classetransportadora, classelivrofiscal,
  ClasseSerie, classenfe, classeregrast, classeemail, classeacbr,
  dxBar, cxPC, cxContainer, cxEdit, cxGroupBox, cxGridDBDataDefinitions, cxSplitter,
  cxLabel, cxTextEdit, cxDBEdit, cxDBLookupComboBox, cxCheckBox, cxDBLabel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGrid, cxGridDBBandedTableView, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxCalendar, cxCalc,
  cxButtonEdit, cxCurrencyEdit, cxBlobEdit, cxClasses, cxMemo,
  cxGridCustomView, cxSpinEdit, cxDropDownEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, dxBarBuiltInMenu, cxRadioGroup, dxBevel, cxDataUtils, ACBrNFSe,
  cxTimeEdit;

type
  Tfrmsaida = class(TForm)
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
    actGerarDuplicata: TAction;
    actAbrirCliente: TAction;
    actAbrirFornecedor: TAction;
    actAbrirRepresentante: TAction;
    actAbrirCondPagto: TAction;
    actAbrirTransportadora: TAction;
    actAbrirDuplicata: TAction;
    actexibircampos: TAction;
    actabrirtpsaida: TAction;
    actabrirproduto: TAction;
    actabrirpedido: TAction;
    actvisualizar: TAction;
    actabrirproduto2: TAction;
    actGerarDevolucaoSaida: TAction;
    actGerarDevolucaoEntrada: TAction;
    actimprimirboleto: TAction;
    actimprimirlaser: TAction;
    actfechar: TAction;
    actnfe: TAction;
    actcancelarNF: TAction;
    actordservimportar: TAction;
    actexportarxml: TAction;
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
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    bmg1Bar1: TdxBar;
    dxBarButton11: TdxBarButton;
    bmg1Bar2: TdxBar;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    btnnfe: TdxBarLargeButton;
    actnfemenu: TAction;
    pumnfe: TdxBarPopupMenu;
    actnfeconfigurar: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    actnfestatus: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    actnfeenviar: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    actnfeemaildestinatario: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    actnfeconsultar: TAction;
    actnfecancelar: TAction;
    actnfeconsultacadastro: TAction;
    dxBarLargeButton8: TdxBarLargeButton;
    actnfeinutilizar: TAction;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    actnfegerarpdf: TAction;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    actnfeValidar: TAction;
    dxBarLargeButton22: TdxBarLargeButton;
    actabrirentrada: TAction;
    actabrirsaida: TAction;
    actnfeemail: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    nfe: TACBrNFe;
    dxBarButton5: TdxBarButton;
    actbaixaduplicata: TAction;
    dxBarSubItem2: TdxBarSubItem;
    actimprimirduplicata: TAction;
    actimprimirduplicataduplicata: TAction;
    dxBarButton19: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    actbaixar: TAction;
    actbaixaduplicatatodas: TAction;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    actredefinir: TAction;
    actgerarduplicataretencao: TAction;
    actcartacorrecao: TAction;
    dxBarButton25: TdxBarButton;
    actenviaremailcartacorrecao: TAction;
    dxBarButton26: TdxBarButton;
    actImportacao: TAction;
    actcopiar: TAction;
    dxBarLargeButton16: TdxBarLargeButton;
    actcancelarnota: TAction;
    dxBarLargeButton20: TdxBarLargeButton;
    bmg1Bar3: TdxBar;
    dxBarButton13: TdxBarButton;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    actimprimirduplicatanota: TAction;
    dxBarButton23: TdxBarButton;
    actimprimirrecibo: TAction;
    dxBarButton17: TdxBarButton;
    cdsduplicata: TClientDataSet;
    cdssaidareferenciada: TClientDataSet;
    cds: TClientDataSet;
    cdsitsaida: TClientDataSet;
    cdscartacorrecao: TClientDataSet;
    cdssaidatpcomissao: TClientDataSet;
    dts: TDataSource;
    dtsitsaida: TDataSource;
    dtsduplicata: TDataSource;
    dtssaidareferenciada: TDataSource;
    dtssaidatpcomissao: TDataSource;
    dtscartacorrecao: TDataSource;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsitsaida: TSQLDataSet;
    sdsduplicata: TSQLDataSet;
    sdssaidareferenciada: TSQLDataSet;
    sdscartacorrecao: TSQLDataSet;
    sdssaidatpcomissao: TSQLDataSet;
    sdsCDSAIDA: TIntegerField;
    sdsCDTPSAIDA: TIntegerField;
    sdsCDREPRESENTANTE: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsCDSERIE: TIntegerField;
    sdsCDCFOP: TIntegerField;
    sdsCDCONDPAGTO: TIntegerField;
    sdsCDTRANSPORTE: TIntegerField;
    sdsCDTPCOBRANCA: TIntegerField;
    sdsCDTPSAIDAECF: TIntegerField;
    sdsCDORDSERV: TIntegerField;
    sdsCDPLCONTA: TIntegerField;
    sdsNUSAIDA: TIntegerField;
    sdsTPENTSAI: TStringField;
    sdsDTEMISSAO: TDateField;
    sdsVLTOTAL: TFMTBCDField;
    sdsVLLIQUIDO: TFMTBCDField;
    sdsVLLIQSDESC: TFMTBCDField;
    sdsPRCOMISSAO: TFloatField;
    sdsVLCOMISSAO: TFMTBCDField;
    sdsPRDESCONTO: TFloatField;
    sdsVLDESCONTO: TFMTBCDField;
    sdsVLSEGURO: TFMTBCDField;
    sdsVLOUTDESPESA: TFMTBCDField;
    sdsVLFRETE: TFMTBCDField;
    sdsVLBASEIPI: TFMTBCDField;
    sdsVLIPI: TFMTBCDField;
    sdsVLISENTAIPI: TFMTBCDField;
    sdsVLOUTIPI: TFMTBCDField;
    sdsVLIPISFRETE: TFMTBCDField;
    sdsVLICMSSUBTRIB: TFMTBCDField;
    sdsVLBASEICMSSUBTRIB: TFMTBCDField;
    sdsVLBASEICMS: TFMTBCDField;
    sdsVLICMS: TFMTBCDField;
    sdsVLISENTAICMS: TFMTBCDField;
    sdsVLOUTICMS: TFMTBCDField;
    sdsVLICMSRED: TFMTBCDField;
    sdsVLBASEICMSRED: TFMTBCDField;
    sdsVLICMSSFRETE: TFMTBCDField;
    sdsVLBASEISS: TFMTBCDField;
    sdsVLISS: TFMTBCDField;
    sdsVLBASEPIS: TFMTBCDField;
    sdsVLPIS: TFMTBCDField;
    sdsVLBASECOFINS: TFMTBCDField;
    sdsVLCOFINS: TFMTBCDField;
    sdsPSLIQUIDO: TFloatField;
    sdsPSBRUTO: TFloatField;
    sdsHRSAIDA: TTimeField;
    sdsDTSAIDA: TDateField;
    sdsNUPLACA: TStringField;
    sdsVLPRODUTO: TFMTBCDField;
    sdsVLSERVICO: TFMTBCDField;
    sdsDSOBSERVACAO: TBlobField;
    sdsBOIMPRESSA: TStringField;
    sdsBOEXPORTADO: TStringField;
    sdsBODESCONTOCOMISSAO: TStringField;
    sdsNUCAIXA: TIntegerField;
    sdsNUCUPOM: TIntegerField;
    sdsDSHISTORICO: TStringField;
    sdsVLFRETESUB: TFMTBCDField;
    sdsVLLUCRO: TFMTBCDField;
    sdsALIRRF: TFloatField;
    sdsVLIRRF: TFMTBCDField;
    sdsNUPLCONTA: TStringField;
    sdsDSXML: TBlobField;
    sdsVLBASEFRETESUB: TFMTBCDField;
    sdsALFRETESUB: TFloatField;
    sdsDSXMLCANCEL: TBlobField;
    sdsNUCHAVENFE: TStringField;
    sdsBOENVIADO: TStringField;
    sdsDSMARCA: TStringField;
    sdsDSESPECIE: TStringField;
    sdsVLPISSUBTRIB: TFMTBCDField;
    sdsVLCOFINSSUBTRIB: TFMTBCDField;
    sdsVLBASEPISSUBTRIB: TFMTBCDField;
    sdsALPISSUBTRIB: TFloatField;
    sdsVLBASECOFINSSUBTRIB: TFMTBCDField;
    sdsALCOFINSSUBTRIB: TFloatField;
    sdsNUSTDOCUMENTO: TStringField;
    sdsBORETENCAOPIS: TStringField;
    sdsBORETENCAOCOFINS: TStringField;
    sdsBORETENCAOINSS: TStringField;
    sdsBORETENCAOCONTRIBSOCIAL: TStringField;
    sdsVLBASEINSS: TFMTBCDField;
    sdsALINSS: TFloatField;
    sdsVLINSS: TFMTBCDField;
    sdsVLBASECONTRIBSOCIAL: TFMTBCDField;
    sdsALCONTRIBSOCIAL: TFloatField;
    sdsVLCONTRIBSOCIAL: TFMTBCDField;
    sdsVLBASEIRRF: TFMTBCDField;
    sdsBORETENCAOIRRF: TStringField;
    sdsBORETENCAOISS: TStringField;
    sdsBOIMPORTACAO: TStringField;
    sdsVLBASECOFINSRET: TFMTBCDField;
    sdsALCOFINSRET: TFloatField;
    sdsVLCOFINSRET: TFMTBCDField;
    sdsVLBASEPISRET: TFMTBCDField;
    sdsALPISRET: TFloatField;
    sdsVLPISRET: TFMTBCDField;
    sdsCNF: TIntegerField;
    sdsINDPAG: TStringField;
    sdsTPIMP: TStringField;
    sdsTPEMIS: TStringField;
    sdsTPAMB: TStringField;
    sdsPROCEMI: TStringField;
    sdsCDV: TStringField;
    sdsFINNFE: TStringField;
    sdsNURECIBONFE: TStringField;
    sdsNUPROTOCOLOAUTORIZACAO: TStringField;
    sdsNUPROTOCOLODENEGACAO: TStringField;
    sdsNUPROTOCOLOCANCELAMENTO: TStringField;
    sdsNUPROTOCOLOINUTILIZACAO: TStringField;
    sdsDSCANCELAMENTO: TBlobField;
    sdsNULOTE: TIntegerField;
    sdsQTVOLUME: TIntegerField;
    sdsNUVOLUME: TStringField;
    sdsCDUFOCORRENCIA: TIntegerField;
    sdsCDTPFORMAEMISSAONFE: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNUDOCFISCALICMS: TStringField;
    sdsNUCHAVENFSE: TStringField;
    sdsNSEQEVENTO: TIntegerField;
    sdsVLII: TFMTBCDField;
    sdsDTREFERENCIA: TDateField;
    sdsVLTOTALTRIBUTO: TFMTBCDField;
    sdsPRTOTALTRIBUTO: TFloatField;
    sdsNMREDESPACHO: TStringField;
    sdsTSPROTOCOLOAUTORIZACAO: TSQLTimeStampField;
    sdsCDNFEFINALIDADE: TIntegerField;
    cdsCDSAIDA: TIntegerField;
    cdsCDTPSAIDA: TIntegerField;
    cdsCDREPRESENTANTE: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsCDSERIE: TIntegerField;
    cdsCDCFOP: TIntegerField;
    cdsCDCONDPAGTO: TIntegerField;
    cdsCDTRANSPORTE: TIntegerField;
    cdsCDTPCOBRANCA: TIntegerField;
    cdsCDTPSAIDAECF: TIntegerField;
    cdsCDORDSERV: TIntegerField;
    cdsCDPLCONTA: TIntegerField;
    cdsNUSAIDA: TIntegerField;
    cdsTPENTSAI: TStringField;
    cdsDTEMISSAO: TDateField;
    cdsVLTOTAL: TFMTBCDField;
    cdsVLLIQUIDO: TFMTBCDField;
    cdsVLLIQSDESC: TFMTBCDField;
    cdsPRCOMISSAO: TFloatField;
    cdsVLCOMISSAO: TFMTBCDField;
    cdsPRDESCONTO: TFloatField;
    cdsVLDESCONTO: TFMTBCDField;
    cdsVLSEGURO: TFMTBCDField;
    cdsVLOUTDESPESA: TFMTBCDField;
    cdsVLFRETE: TFMTBCDField;
    cdsVLBASEIPI: TFMTBCDField;
    cdsVLIPI: TFMTBCDField;
    cdsVLISENTAIPI: TFMTBCDField;
    cdsVLOUTIPI: TFMTBCDField;
    cdsVLIPISFRETE: TFMTBCDField;
    cdsVLICMSSUBTRIB: TFMTBCDField;
    cdsVLBASEICMSSUBTRIB: TFMTBCDField;
    cdsVLBASEICMS: TFMTBCDField;
    cdsVLICMS: TFMTBCDField;
    cdsVLISENTAICMS: TFMTBCDField;
    cdsVLOUTICMS: TFMTBCDField;
    cdsVLICMSRED: TFMTBCDField;
    cdsVLBASEICMSRED: TFMTBCDField;
    cdsVLICMSSFRETE: TFMTBCDField;
    cdsVLBASEISS: TFMTBCDField;
    cdsVLISS: TFMTBCDField;
    cdsVLBASEPIS: TFMTBCDField;
    cdsVLPIS: TFMTBCDField;
    cdsVLBASECOFINS: TFMTBCDField;
    cdsVLCOFINS: TFMTBCDField;
    cdsPSLIQUIDO: TFloatField;
    cdsPSBRUTO: TFloatField;
    cdsHRSAIDA: TTimeField;
    cdsDTSAIDA: TDateField;
    cdsNUPLACA: TStringField;
    cdsVLPRODUTO: TFMTBCDField;
    cdsVLSERVICO: TFMTBCDField;
    cdsDSOBSERVACAO: TBlobField;
    cdsBOIMPRESSA: TStringField;
    cdsBOEXPORTADO: TStringField;
    cdsBODESCONTOCOMISSAO: TStringField;
    cdsNUCAIXA: TIntegerField;
    cdsNUCUPOM: TIntegerField;
    cdsDSHISTORICO: TStringField;
    cdsVLFRETESUB: TFMTBCDField;
    cdsVLLUCRO: TFMTBCDField;
    cdsALIRRF: TFloatField;
    cdsVLIRRF: TFMTBCDField;
    cdsNUPLCONTA: TStringField;
    cdsDSXML: TBlobField;
    cdsVLBASEFRETESUB: TFMTBCDField;
    cdsALFRETESUB: TFloatField;
    cdsDSXMLCANCEL: TBlobField;
    cdsNUCHAVENFE: TStringField;
    cdsBOENVIADO: TStringField;
    cdsDSMARCA: TStringField;
    cdsDSESPECIE: TStringField;
    cdsVLPISSUBTRIB: TFMTBCDField;
    cdsVLCOFINSSUBTRIB: TFMTBCDField;
    cdsVLBASEPISSUBTRIB: TFMTBCDField;
    cdsALPISSUBTRIB: TFloatField;
    cdsVLBASECOFINSSUBTRIB: TFMTBCDField;
    cdsALCOFINSSUBTRIB: TFloatField;
    cdsNUSTDOCUMENTO: TStringField;
    cdsBORETENCAOPIS: TStringField;
    cdsBORETENCAOCOFINS: TStringField;
    cdsBORETENCAOINSS: TStringField;
    cdsBORETENCAOCONTRIBSOCIAL: TStringField;
    cdsVLBASEINSS: TFMTBCDField;
    cdsALINSS: TFloatField;
    cdsVLINSS: TFMTBCDField;
    cdsVLBASECONTRIBSOCIAL: TFMTBCDField;
    cdsALCONTRIBSOCIAL: TFloatField;
    cdsVLCONTRIBSOCIAL: TFMTBCDField;
    cdsVLBASEIRRF: TFMTBCDField;
    cdsBORETENCAOIRRF: TStringField;
    cdsBORETENCAOISS: TStringField;
    cdsBOIMPORTACAO: TStringField;
    cdsVLBASECOFINSRET: TFMTBCDField;
    cdsALCOFINSRET: TFloatField;
    cdsVLCOFINSRET: TFMTBCDField;
    cdsVLBASEPISRET: TFMTBCDField;
    cdsALPISRET: TFloatField;
    cdsVLPISRET: TFMTBCDField;
    cdsCNF: TIntegerField;
    cdsINDPAG: TStringField;
    cdsTPIMP: TStringField;
    cdsTPEMIS: TStringField;
    cdsTPAMB: TStringField;
    cdsPROCEMI: TStringField;
    cdsCDV: TStringField;
    cdsFINNFE: TStringField;
    cdsNURECIBONFE: TStringField;
    cdsNUPROTOCOLOAUTORIZACAO: TStringField;
    cdsNUPROTOCOLODENEGACAO: TStringField;
    cdsNUPROTOCOLOCANCELAMENTO: TStringField;
    cdsNUPROTOCOLOINUTILIZACAO: TStringField;
    cdsDSCANCELAMENTO: TBlobField;
    cdsNULOTE: TIntegerField;
    cdsQTVOLUME: TIntegerField;
    cdsNUVOLUME: TStringField;
    cdsCDUFOCORRENCIA: TIntegerField;
    cdsCDTPFORMAEMISSAONFE: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNUDOCFISCALICMS: TStringField;
    cdsNUCHAVENFSE: TStringField;
    cdsNSEQEVENTO: TIntegerField;
    cdsVLII: TFMTBCDField;
    cdsDTREFERENCIA: TDateField;
    cdsVLTOTALTRIBUTO: TFMTBCDField;
    cdsPRTOTALTRIBUTO: TFloatField;
    cdsNMREDESPACHO: TStringField;
    cdsTSPROTOCOLOAUTORIZACAO: TSQLTimeStampField;
    cdsCDNFEFINALIDADE: TIntegerField;
    dts1: TDataSource;
    sdsitsaidaCDITSAIDA: TIntegerField;
    sdsitsaidaCDSAIDA: TIntegerField;
    sdsitsaidaCDPRODUTO: TIntegerField;
    sdsitsaidaCDCNTCUSTO: TIntegerField;
    sdsitsaidaCDCFOP: TIntegerField;
    sdsitsaidaCDSTITSAIDA: TIntegerField;
    sdsitsaidaCDUSUARIOL: TIntegerField;
    sdsitsaidaCDTPGRADEVALOR: TIntegerField;
    sdsitsaidaCDITPEDIDO: TIntegerField;
    sdsitsaidaCDMODBCICMS: TIntegerField;
    sdsitsaidaCDMODBCSTICMS: TIntegerField;
    sdsitsaidaCDCOMPUTADORA: TIntegerField;
    sdsitsaidaCDPEDIDO: TIntegerField;
    sdsitsaidaCDCOMPUTADORL: TIntegerField;
    sdsitsaidaCDMUNICIPIO: TIntegerField;
    sdsitsaidaNUSTICMS: TStringField;
    sdsitsaidaNUSTIPI: TStringField;
    sdsitsaidaNUSTPIS: TStringField;
    sdsitsaidaNUSTCOFINS: TStringField;
    sdsitsaidaCDBCCALCULOCREDITO: TStringField;
    sdsitsaidaCDTPCOMISSAO: TIntegerField;
    sdsitsaidaCDTPREGIMEICMS: TIntegerField;
    sdsitsaidaCDUSUARIOI: TIntegerField;
    sdsitsaidaCDCOMPUTADORI: TIntegerField;
    sdsitsaidaCDUSUARIOA: TIntegerField;
    sdsitsaidaNUPEDIDO: TStringField;
    sdsitsaidaCDDIGITADO: TStringField;
    sdsitsaidaBOALTERACUSTOMEDIO: TStringField;
    sdsitsaidaVLTOTAL: TFMTBCDField;
    sdsitsaidaPRDESCONTO: TFloatField;
    sdsitsaidaVLDESCONTO: TFMTBCDField;
    sdsitsaidaVLOUTDESPESA: TFMTBCDField;
    sdsitsaidaVLSEGURO: TFMTBCDField;
    sdsitsaidaVLFRETE: TFMTBCDField;
    sdsitsaidaBORECUPERAICMS: TStringField;
    sdsitsaidaBORECUPERAAJUSTEICMS: TStringField;
    sdsitsaidaVLBASEICMS: TFMTBCDField;
    sdsitsaidaALICMS: TFloatField;
    sdsitsaidaVLICMS: TFMTBCDField;
    sdsitsaidaALICMSRED: TFloatField;
    sdsitsaidaVLICMSRED: TFMTBCDField;
    sdsitsaidaVLBASEICMSRED: TFMTBCDField;
    sdsitsaidaPRREDBCICMSSUBTRIB: TFloatField;
    sdsitsaidaALICMSSUBTRIB: TFloatField;
    sdsitsaidaVLICMSSUBTRIB: TFMTBCDField;
    sdsitsaidaVLBASEICMSSUBTRIB: TFMTBCDField;
    sdsitsaidaBORECUPERAIPI: TStringField;
    sdsitsaidaVLBASEIPI: TFMTBCDField;
    sdsitsaidaALIPI: TFloatField;
    sdsitsaidaVLIPI: TFMTBCDField;
    sdsitsaidaVLBASEISS: TFMTBCDField;
    sdsitsaidaALISS: TFloatField;
    sdsitsaidaVLISS: TFMTBCDField;
    sdsitsaidaBORECUPERAPIS: TStringField;
    sdsitsaidaVLBASEPIS: TFMTBCDField;
    sdsitsaidaALPIS: TFloatField;
    sdsitsaidaVLPIS: TFMTBCDField;
    sdsitsaidaVLBASEPISRED: TFMTBCDField;
    sdsitsaidaALPISRED: TFloatField;
    sdsitsaidaVLPISRED: TFMTBCDField;
    sdsitsaidaBORECUPERACOFINS: TStringField;
    sdsitsaidaVLBASECOFINS: TFMTBCDField;
    sdsitsaidaALCOFINS: TFloatField;
    sdsitsaidaVLCOFINS: TFMTBCDField;
    sdsitsaidaVLBASECOFINSRED: TFMTBCDField;
    sdsitsaidaALCOFINSRED: TFloatField;
    sdsitsaidaVLCOFINSRED: TFMTBCDField;
    sdsitsaidaPSLIQUIDO: TFMTBCDField;
    sdsitsaidaPSBRUTO: TFMTBCDField;
    sdsitsaidaVLCUSTOMEDIO: TFMTBCDField;
    sdsitsaidaVLCUSTO: TFMTBCDField;
    sdsitsaidaBOCOMISSAO: TStringField;
    sdsitsaidaPRCOMISSAO: TFloatField;
    sdsitsaidaVLCOMISSAO: TFMTBCDField;
    sdsitsaidaVLSALDOVALOR: TFMTBCDField;
    sdsitsaidaVLIRRF: TFMTBCDField;
    sdsitsaidaVLLUCRO: TFMTBCDField;
    sdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB: TFloatField;
    sdsitsaidaPRREDBCICMS: TFloatField;
    sdsitsaidaDSINFADICIONAL: TBlobField;
    sdsitsaidaBOICMSRED: TStringField;
    sdsitsaidaBOBASEIPIAJUSTE: TStringField;
    sdsitsaidaALICMSCREDITO: TFloatField;
    sdsitsaidaVLICMSCREDITO: TFMTBCDField;
    sdsitsaidaBOIPIBCICMS: TStringField;
    sdsitsaidaBOICMSSUBTRIBAJUSTE: TStringField;
    sdsitsaidaBOAJUSTETOTAL: TStringField;
    sdsitsaidaBOBASEICMSAJUSTE: TStringField;
    sdsitsaidaBOBASEPISAJUSTE: TStringField;
    sdsitsaidaBOBASECOFINSAJUSTE: TStringField;
    sdsitsaidaTSINCLUSAO: TSQLTimeStampField;
    sdsitsaidaTSALTERACAO: TSQLTimeStampField;
    sdsitsaidaTSLIBERADO: TSQLTimeStampField;
    sdsitsaidaNUCOTACAO: TStringField;
    sdsitsaidaVLINSS: TFMTBCDField;
    sdsitsaidaVLBASEINSS: TFMTBCDField;
    sdsitsaidaALINSS: TFloatField;
    sdsitsaidaVLBASEIRRF: TFMTBCDField;
    sdsitsaidaALIRRF: TFMTBCDField;
    sdsitsaidaVLTOTALTRIBUTO: TFMTBCDField;
    sdsitsaidaPRTOTALTRIBUTO: TFloatField;
    cdssdsitsaida: TDataSetField;
    cdsitsaidaCDITSAIDA: TIntegerField;
    cdsitsaidaCDSAIDA: TIntegerField;
    cdsitsaidaCDPRODUTO: TIntegerField;
    cdsitsaidaCDCNTCUSTO: TIntegerField;
    cdsitsaidaCDCFOP: TIntegerField;
    cdsitsaidaCDSTITSAIDA: TIntegerField;
    cdsitsaidaCDUSUARIOL: TIntegerField;
    cdsitsaidaCDTPGRADEVALOR: TIntegerField;
    cdsitsaidaCDITPEDIDO: TIntegerField;
    cdsitsaidaCDMODBCICMS: TIntegerField;
    cdsitsaidaCDMODBCSTICMS: TIntegerField;
    cdsitsaidaCDCOMPUTADORA: TIntegerField;
    cdsitsaidaCDPEDIDO: TIntegerField;
    cdsitsaidaCDCOMPUTADORL: TIntegerField;
    cdsitsaidaCDMUNICIPIO: TIntegerField;
    cdsitsaidaNUSTICMS: TStringField;
    cdsitsaidaNUSTIPI: TStringField;
    cdsitsaidaNUSTPIS: TStringField;
    cdsitsaidaNUSTCOFINS: TStringField;
    cdsitsaidaCDBCCALCULOCREDITO: TStringField;
    cdsitsaidaCDTPCOMISSAO: TIntegerField;
    cdsitsaidaCDTPREGIMEICMS: TIntegerField;
    cdsitsaidaCDUSUARIOI: TIntegerField;
    cdsitsaidaCDCOMPUTADORI: TIntegerField;
    cdsitsaidaCDUSUARIOA: TIntegerField;
    cdsitsaidaNUPEDIDO: TStringField;
    cdsitsaidaCDDIGITADO: TStringField;
    cdsitsaidaBOALTERACUSTOMEDIO: TStringField;
    cdsitsaidaVLTOTAL: TFMTBCDField;
    cdsitsaidaPRDESCONTO: TFloatField;
    cdsitsaidaVLDESCONTO: TFMTBCDField;
    cdsitsaidaVLOUTDESPESA: TFMTBCDField;
    cdsitsaidaVLSEGURO: TFMTBCDField;
    cdsitsaidaVLFRETE: TFMTBCDField;
    cdsitsaidaBORECUPERAICMS: TStringField;
    cdsitsaidaBORECUPERAAJUSTEICMS: TStringField;
    cdsitsaidaVLBASEICMS: TFMTBCDField;
    cdsitsaidaALICMS: TFloatField;
    cdsitsaidaVLICMS: TFMTBCDField;
    cdsitsaidaALICMSRED: TFloatField;
    cdsitsaidaVLICMSRED: TFMTBCDField;
    cdsitsaidaVLBASEICMSRED: TFMTBCDField;
    cdsitsaidaPRREDBCICMSSUBTRIB: TFloatField;
    cdsitsaidaALICMSSUBTRIB: TFloatField;
    cdsitsaidaVLICMSSUBTRIB: TFMTBCDField;
    cdsitsaidaVLBASEICMSSUBTRIB: TFMTBCDField;
    cdsitsaidaBORECUPERAIPI: TStringField;
    cdsitsaidaVLBASEIPI: TFMTBCDField;
    cdsitsaidaALIPI: TFloatField;
    cdsitsaidaVLIPI: TFMTBCDField;
    cdsitsaidaVLBASEISS: TFMTBCDField;
    cdsitsaidaALISS: TFloatField;
    cdsitsaidaVLISS: TFMTBCDField;
    cdsitsaidaBORECUPERAPIS: TStringField;
    cdsitsaidaVLBASEPIS: TFMTBCDField;
    cdsitsaidaALPIS: TFloatField;
    cdsitsaidaVLPIS: TFMTBCDField;
    cdsitsaidaVLBASEPISRED: TFMTBCDField;
    cdsitsaidaALPISRED: TFloatField;
    cdsitsaidaVLPISRED: TFMTBCDField;
    cdsitsaidaBORECUPERACOFINS: TStringField;
    cdsitsaidaVLBASECOFINS: TFMTBCDField;
    cdsitsaidaALCOFINS: TFloatField;
    cdsitsaidaVLCOFINS: TFMTBCDField;
    cdsitsaidaVLBASECOFINSRED: TFMTBCDField;
    cdsitsaidaALCOFINSRED: TFloatField;
    cdsitsaidaVLCOFINSRED: TFMTBCDField;
    cdsitsaidaPSLIQUIDO: TFMTBCDField;
    cdsitsaidaPSBRUTO: TFMTBCDField;
    cdsitsaidaVLCUSTOMEDIO: TFMTBCDField;
    cdsitsaidaVLCUSTO: TFMTBCDField;
    cdsitsaidaBOCOMISSAO: TStringField;
    cdsitsaidaPRCOMISSAO: TFloatField;
    cdsitsaidaVLCOMISSAO: TFMTBCDField;
    cdsitsaidaVLSALDOVALOR: TFMTBCDField;
    cdsitsaidaVLIRRF: TFMTBCDField;
    cdsitsaidaVLLUCRO: TFMTBCDField;
    cdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB: TFloatField;
    cdsitsaidaPRREDBCICMS: TFloatField;
    cdsitsaidaDSINFADICIONAL: TBlobField;
    cdsitsaidaBOICMSRED: TStringField;
    cdsitsaidaBOBASEIPIAJUSTE: TStringField;
    cdsitsaidaALICMSCREDITO: TFloatField;
    cdsitsaidaVLICMSCREDITO: TFMTBCDField;
    cdsitsaidaBOIPIBCICMS: TStringField;
    cdsitsaidaBOICMSSUBTRIBAJUSTE: TStringField;
    cdsitsaidaBOAJUSTETOTAL: TStringField;
    cdsitsaidaBOBASEICMSAJUSTE: TStringField;
    cdsitsaidaBOBASEPISAJUSTE: TStringField;
    cdsitsaidaBOBASECOFINSAJUSTE: TStringField;
    cdsitsaidaTSINCLUSAO: TSQLTimeStampField;
    cdsitsaidaTSALTERACAO: TSQLTimeStampField;
    cdsitsaidaTSLIBERADO: TSQLTimeStampField;
    cdsitsaidaNUCOTACAO: TStringField;
    cdsitsaidaVLINSS: TFMTBCDField;
    cdsitsaidaVLBASEINSS: TFMTBCDField;
    cdsitsaidaALINSS: TFloatField;
    cdsitsaidaVLBASEIRRF: TFMTBCDField;
    cdsitsaidaALIRRF: TFMTBCDField;
    cdsitsaidaVLTOTALTRIBUTO: TFMTBCDField;
    cdsitsaidaPRTOTALTRIBUTO: TFloatField;
    sdsduplicataCDDUPLICATA: TIntegerField;
    sdsduplicataCDSTDUPLICATA: TIntegerField;
    sdsduplicataCDTPPAGAMENTO: TIntegerField;
    sdsduplicataCDREPRESENTANTE: TIntegerField;
    sdsduplicataCDSAIDA: TIntegerField;
    sdsduplicataCDTPCOBRANCA: TIntegerField;
    sdsduplicataCDSTREGCOBRANCA: TIntegerField;
    sdsduplicataNUDUPLICATA: TStringField;
    sdsduplicataNUAGENCIA: TStringField;
    sdsduplicataDTEMISSAO: TDateField;
    sdsduplicataDTVENCIMENTO: TDateField;
    sdsduplicataDTENTRADA: TDateField;
    sdsduplicataDTPRORROGACAO: TDateField;
    sdsduplicataVLDUPLICATA: TFMTBCDField;
    sdsduplicataDSHISTORICO: TStringField;
    sdsduplicataDTBAIXA: TDateField;
    sdsduplicataVLBAIXA: TFMTBCDField;
    sdsduplicataVLDESCONTO: TFMTBCDField;
    sdsduplicataVLDEVOLUCAO: TFMTBCDField;
    sdsduplicataVLABATIMENTO: TFMTBCDField;
    sdsduplicataPRMORADIARIA: TFloatField;
    sdsduplicataVLSALDO: TFMTBCDField;
    sdsduplicataVLDEDUCAO: TFMTBCDField;
    sdsduplicataVLACRESCIMO: TFMTBCDField;
    sdsduplicataVLRECEBIDO: TFMTBCDField;
    sdsduplicataPRMULTA: TFloatField;
    sdsduplicataVLMULTA: TFMTBCDField;
    sdsduplicataVLJUROS: TFMTBCDField;
    sdsduplicataVLCOMISSAO: TFMTBCDField;
    sdsduplicataNUBOLETA: TStringField;
    sdsduplicataBOENVIADO: TStringField;
    sdsduplicataBOIMPRESSA: TStringField;
    sdsduplicataNUCAIXA: TIntegerField;
    sdsduplicataDSOBSERVACAO: TBlobField;
    sdsduplicataNUNOSSONUMERO: TStringField;
    sdsduplicataCDPLCONTA: TIntegerField;
    sdsduplicataNUPLCONTA: TStringField;
    sdsduplicataCDCONTA: TIntegerField;
    sdsduplicataVLJUROSNRECEBIDO: TFMTBCDField;
    sdsduplicataDSPARCELA: TStringField;
    sdsduplicataCDCTE: TIntegerField;
    sdsduplicataCDUSUARIOBAIXA: TIntegerField;
    sdsduplicataCDUSUARIOI: TIntegerField;
    sdsduplicataCDUSUARIOA: TIntegerField;
    sdsduplicataCDCOMPUTADORI: TIntegerField;
    sdsduplicataCDCOMPUTADORA: TIntegerField;
    sdsduplicataTSINCLUSAO: TSQLTimeStampField;
    sdsduplicataTSALTERACAO: TSQLTimeStampField;
    sdsduplicataTSLIBERADO: TSQLTimeStampField;
    sdsduplicataCDUSUARIOL: TIntegerField;
    sdsduplicataCDCOMPUTADORL: TIntegerField;
    sdsduplicataCDTPDUPLICATA: TIntegerField;
    sdsduplicataNUCPFCNPJ: TStringField;
    sdsduplicataNUCPFCNPJ2: TStringField;
    sdsduplicataNMEMITENTE: TStringField;
    sdsduplicataNMEMITENTE2: TStringField;
    sdsduplicataNUCONTACORRENTE: TStringField;
    sdsduplicataTPPESSOA: TStringField;
    sdsduplicataCDBANCODEVOLUCAO: TIntegerField;
    sdsduplicataCDNEGOCIACAOSAIDA: TIntegerField;
    sdsduplicataCDSETBOLETO: TIntegerField;
    sdsduplicataDSOBSERVACAOBOLETO: TBlobField;
    cdssdsduplicata: TDataSetField;
    cdsduplicataCDDUPLICATA: TIntegerField;
    cdsduplicataCDSTDUPLICATA: TIntegerField;
    cdsduplicataCDTPPAGAMENTO: TIntegerField;
    cdsduplicataCDREPRESENTANTE: TIntegerField;
    cdsduplicataCDSAIDA: TIntegerField;
    cdsduplicataCDTPCOBRANCA: TIntegerField;
    cdsduplicataCDSTREGCOBRANCA: TIntegerField;
    cdsduplicataNUDUPLICATA: TStringField;
    cdsduplicataNUAGENCIA: TStringField;
    cdsduplicataDTEMISSAO: TDateField;
    cdsduplicataDTVENCIMENTO: TDateField;
    cdsduplicataDTENTRADA: TDateField;
    cdsduplicataDTPRORROGACAO: TDateField;
    cdsduplicataVLDUPLICATA: TFMTBCDField;
    cdsduplicataDSHISTORICO: TStringField;
    cdsduplicataDTBAIXA: TDateField;
    cdsduplicataVLBAIXA: TFMTBCDField;
    cdsduplicataVLDESCONTO: TFMTBCDField;
    cdsduplicataVLDEVOLUCAO: TFMTBCDField;
    cdsduplicataVLABATIMENTO: TFMTBCDField;
    cdsduplicataPRMORADIARIA: TFloatField;
    cdsduplicataVLSALDO: TFMTBCDField;
    cdsduplicataVLDEDUCAO: TFMTBCDField;
    cdsduplicataVLACRESCIMO: TFMTBCDField;
    cdsduplicataVLRECEBIDO: TFMTBCDField;
    cdsduplicataPRMULTA: TFloatField;
    cdsduplicataVLMULTA: TFMTBCDField;
    cdsduplicataVLJUROS: TFMTBCDField;
    cdsduplicataVLCOMISSAO: TFMTBCDField;
    cdsduplicataNUBOLETA: TStringField;
    cdsduplicataBOENVIADO: TStringField;
    cdsduplicataBOIMPRESSA: TStringField;
    cdsduplicataNUCAIXA: TIntegerField;
    cdsduplicataDSOBSERVACAO: TBlobField;
    cdsduplicataNUNOSSONUMERO: TStringField;
    cdsduplicataCDPLCONTA: TIntegerField;
    cdsduplicataNUPLCONTA: TStringField;
    cdsduplicataCDCONTA: TIntegerField;
    cdsduplicataVLJUROSNRECEBIDO: TFMTBCDField;
    cdsduplicataDSPARCELA: TStringField;
    cdsduplicataCDCTE: TIntegerField;
    cdsduplicataCDUSUARIOBAIXA: TIntegerField;
    cdsduplicataCDUSUARIOI: TIntegerField;
    cdsduplicataCDUSUARIOA: TIntegerField;
    cdsduplicataCDCOMPUTADORI: TIntegerField;
    cdsduplicataCDCOMPUTADORA: TIntegerField;
    cdsduplicataTSINCLUSAO: TSQLTimeStampField;
    cdsduplicataTSALTERACAO: TSQLTimeStampField;
    cdsduplicataTSLIBERADO: TSQLTimeStampField;
    cdsduplicataCDUSUARIOL: TIntegerField;
    cdsduplicataCDCOMPUTADORL: TIntegerField;
    cdsduplicataCDTPDUPLICATA: TIntegerField;
    cdsduplicataNUCPFCNPJ: TStringField;
    cdsduplicataNUCPFCNPJ2: TStringField;
    cdsduplicataNMEMITENTE: TStringField;
    cdsduplicataNMEMITENTE2: TStringField;
    cdsduplicataNUCONTACORRENTE: TStringField;
    cdsduplicataTPPESSOA: TStringField;
    cdsduplicataCDBANCODEVOLUCAO: TIntegerField;
    cdsduplicataCDNEGOCIACAOSAIDA: TIntegerField;
    cdsduplicataCDSETBOLETO: TIntegerField;
    cdsduplicataDSOBSERVACAOBOLETO: TBlobField;
    sdssaidareferenciadaCDSAIDAREFERENCIADA: TIntegerField;
    sdssaidareferenciadaCDSAIDA: TIntegerField;
    sdssaidareferenciadaCDSAIDAORIGEM: TIntegerField;
    sdssaidareferenciadaNUDOCUMENTO: TIntegerField;
    sdssaidareferenciadaCDUSUARIOI: TIntegerField;
    sdssaidareferenciadaCDUSUARIOA: TIntegerField;
    sdssaidareferenciadaCDCOMPUTADORI: TIntegerField;
    sdssaidareferenciadaCDCOMPUTADORA: TIntegerField;
    sdssaidareferenciadaTSINCLUSAO: TSQLTimeStampField;
    sdssaidareferenciadaTSALTERACAO: TSQLTimeStampField;
    cdssdssaidareferenciada: TDataSetField;
    cdssaidareferenciadaCDSAIDAREFERENCIADA: TIntegerField;
    cdssaidareferenciadaCDSAIDA: TIntegerField;
    cdssaidareferenciadaCDSAIDAORIGEM: TIntegerField;
    cdssaidareferenciadaNUDOCUMENTO: TIntegerField;
    cdssaidareferenciadaCDUSUARIOI: TIntegerField;
    cdssaidareferenciadaCDUSUARIOA: TIntegerField;
    cdssaidareferenciadaCDCOMPUTADORI: TIntegerField;
    cdssaidareferenciadaCDCOMPUTADORA: TIntegerField;
    cdssaidareferenciadaTSINCLUSAO: TSQLTimeStampField;
    cdssaidareferenciadaTSALTERACAO: TSQLTimeStampField;
    sdscartacorrecaoCDCARTACORRECAO: TIntegerField;
    sdscartacorrecaoCDSAIDA: TIntegerField;
    sdscartacorrecaoDSCARTACORRECAO: TBlobField;
    sdscartacorrecaoCDUSUARIOI: TIntegerField;
    sdscartacorrecaoCDUSUARIOA: TIntegerField;
    sdscartacorrecaoCDCOMPUTADORI: TIntegerField;
    sdscartacorrecaoCDCOMPUTADORA: TIntegerField;
    sdscartacorrecaoTSINCLUSAO: TSQLTimeStampField;
    sdscartacorrecaoTSALTERACAO: TSQLTimeStampField;
    sdscartacorrecaoDSXML: TBlobField;
    sdscartacorrecaoTSEMISSAO: TSQLTimeStampField;
    sdscartacorrecaoNUPROTOCOLO: TStringField;
    sdscartacorrecaoNSEQEVENTO: TIntegerField;
    cdssdscartacorrecao: TDataSetField;
    cdscartacorrecaoCDCARTACORRECAO: TIntegerField;
    cdscartacorrecaoCDSAIDA: TIntegerField;
    cdscartacorrecaoDSCARTACORRECAO: TBlobField;
    cdscartacorrecaoCDUSUARIOI: TIntegerField;
    cdscartacorrecaoCDUSUARIOA: TIntegerField;
    cdscartacorrecaoCDCOMPUTADORI: TIntegerField;
    cdscartacorrecaoCDCOMPUTADORA: TIntegerField;
    cdscartacorrecaoTSINCLUSAO: TSQLTimeStampField;
    cdscartacorrecaoTSALTERACAO: TSQLTimeStampField;
    cdscartacorrecaoDSXML: TBlobField;
    cdscartacorrecaoTSEMISSAO: TSQLTimeStampField;
    cdscartacorrecaoNUPROTOCOLO: TStringField;
    cdscartacorrecaoNSEQEVENTO: TIntegerField;
    sdssaidatpcomissaoCDSAIDATPCOMISSAO: TIntegerField;
    sdssaidatpcomissaoCDSAIDA: TIntegerField;
    sdssaidatpcomissaoCDTPCOMISSAO: TIntegerField;
    sdssaidatpcomissaoCDUSUARIOI: TIntegerField;
    sdssaidatpcomissaoCDUSUARIOA: TIntegerField;
    sdssaidatpcomissaoCDCOMPUTADORI: TIntegerField;
    sdssaidatpcomissaoCDCOMPUTADORA: TIntegerField;
    sdssaidatpcomissaoTSINCLUSAO: TSQLTimeStampField;
    sdssaidatpcomissaoTSALTERACAO: TSQLTimeStampField;
    sdssaidatpcomissaoPRCOMISSAO: TFloatField;
    cdssdssaidatpcomissao: TDataSetField;
    cdssaidatpcomissaoCDSAIDATPCOMISSAO: TIntegerField;
    cdssaidatpcomissaoCDSAIDA: TIntegerField;
    cdssaidatpcomissaoCDTPCOMISSAO: TIntegerField;
    cdssaidatpcomissaoCDUSUARIOI: TIntegerField;
    cdssaidatpcomissaoCDUSUARIOA: TIntegerField;
    cdssaidatpcomissaoCDCOMPUTADORI: TIntegerField;
    cdssaidatpcomissaoCDCOMPUTADORA: TIntegerField;
    cdssaidatpcomissaoTSINCLUSAO: TSQLTimeStampField;
    cdssaidatpcomissaoTSALTERACAO: TSQLTimeStampField;
    cdssaidatpcomissaoPRCOMISSAO: TFloatField;
    sdsitsaidaNMPRODUTO: TStringField;
    sdsitsaidaBOSERVICO: TStringField;
    cdsitsaidaNMPRODUTO: TStringField;
    cdsitsaidaBOSERVICO: TStringField;
    sdsitsaidaNMUNIDADE: TStringField;
    cdsitsaidaNMUNIDADE: TStringField;
    sdsitsaidaNUCLFISCAL: TStringField;
    cdsitsaidaNUCLFISCAL: TStringField;
    sdsduplicataNMSTDUPLICATA: TStringField;
    cdsduplicataNMSTDUPLICATA: TStringField;
    sdsNMDOCFISCALICMS: TStringField;
    cdsNMDOCFISCALICMS: TStringField;
    sdsitsaidaCDPLCONTA: TIntegerField;
    sdsitsaidaNUPLCONTA: TStringField;
    sdsitsaidaNUCNTCUSTO: TStringField;
    sdsitsaidaNMCNTCUSTO: TStringField;
    sdsitsaidaNMPLCONTA: TStringField;
    cdsitsaidaCDPLCONTA: TIntegerField;
    cdsitsaidaNUPLCONTA: TStringField;
    cdsitsaidaNUCNTCUSTO: TStringField;
    cdsitsaidaNMCNTCUSTO: TStringField;
    cdsitsaidaNMPLCONTA: TStringField;
    sdsduplicataNMPLCONTA: TStringField;
    cdsduplicataNMPLCONTA: TStringField;
    sdsitsaidaBOESTOQUE: TStringField;
    cdsitsaidaBOESTOQUE: TStringField;
    sdsNMPLCONTA: TStringField;
    cdsNMPLCONTA: TStringField;
    dxBarButton12: TdxBarButton;
    actimprimircartacorrecao: TAction;
    dxBarButton18: TdxBarButton;
    actpdfcartacorrecao: TAction;
    sdsNUORDSERV: TIntegerField;
    cdsNUORDSERV: TIntegerField;
    actabrirordserv: TAction;
    actcopiarchave: TAction;
    dxBarButton20: TdxBarButton;
    cdsitsaidaCDLOCACAO: TIntegerField;
    sdsitsaidaCDLOCACAO: TIntegerField;
    actabrirlocacao: TAction;
    sdsitsaidaCDLOCACAODEVOLUCAO: TIntegerField;
    cdsitsaidaCDLOCACAODEVOLUCAO: TIntegerField;
    sdsitsaidaQTITEM: TFMTBCDField;
    cdsitsaidaQTITEM: TFMTBCDField;
    cdsitsaidaBOBASEICMSSUBTRIBAJUSTE: TStringField;
    sdsitsaidaBOBASEICMSSUBTRIBAJUSTE: TStringField;
    pumimprimir: TdxBarPopupMenu;
    btnemail: TdxBarLargeButton;
    actemail: TAction;
    pumemail: TdxBarPopupMenu;
    actemailnotafiscal: TAction;
    dxBarButton28: TdxBarButton;
    actimprimirsaida: TAction;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    actemailduplicata: TAction;
    actemailduplicataduplicata: TAction;
    actemailduplicatanota: TAction;
    actemailrecibo: TAction;
    actemailboleto: TAction;
    dxBarButton6: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton29: TdxBarButton;
    actemailnotafiscalboleto: TAction;
    dxBarButton30: TdxBarButton;
    actemailnfeboleto: TAction;
    dxBarButton31: TdxBarButton;
    cdsitsaidaCDLOCACAOPERIODO: TIntegerField;
    sdsitsaidaCDLOCACAOPERIODO: TIntegerField;
    cdsCDSAIDADEVOLUCAO: TIntegerField;
    cdsCDENTRADA: TIntegerField;
    sdsCDSAIDADEVOLUCAO: TIntegerField;
    sdsCDENTRADA: TIntegerField;
    actimprimircarne: TAction;
    dxBarButton32: TdxBarButton;
    dts2: TDataSource;
    cdsitsaidalote: TClientDataSet;
    dtsitsaidalote: TDataSource;
    sdsitsaidalote: TSQLDataSet;
    sdsitsaidaloteCDITSAIDALOTE: TIntegerField;
    sdsitsaidaloteCDITSAIDA: TIntegerField;
    sdsitsaidaloteCDUSUARIOI: TIntegerField;
    sdsitsaidaloteCDUSUARIOA: TIntegerField;
    sdsitsaidaloteCDCOMPUTADORI: TIntegerField;
    sdsitsaidaloteCDCOMPUTADORA: TIntegerField;
    sdsitsaidaloteCDITLOTE: TIntegerField;
    sdsitsaidaloteTSINCLUSAO: TSQLTimeStampField;
    sdsitsaidaloteTSALTERACAO: TSQLTimeStampField;
    sdsitsaidaloteNUIMEI: TStringField;
    cdsitsaidasdsitsaidalote: TDataSetField;
    cdsitsaidaloteCDITSAIDALOTE: TIntegerField;
    cdsitsaidaloteCDITSAIDA: TIntegerField;
    cdsitsaidaloteCDUSUARIOI: TIntegerField;
    cdsitsaidaloteCDUSUARIOA: TIntegerField;
    cdsitsaidaloteCDCOMPUTADORI: TIntegerField;
    cdsitsaidaloteCDCOMPUTADORA: TIntegerField;
    cdsitsaidaloteCDITLOTE: TIntegerField;
    cdsitsaidaloteTSINCLUSAO: TSQLTimeStampField;
    cdsitsaidaloteTSALTERACAO: TSQLTimeStampField;
    cdsitsaidaloteNUIMEI: TStringField;
    sdsitsaidaBOLOTEIMEI: TStringField;
    cdsitsaidaBOLOTEIMEI: TStringField;
    cdsduplicataNUCOR: TIntegerField;
    cdsduplicataNUCORCONTA: TIntegerField;
    sdsduplicataNUCOR: TIntegerField;
    sdsduplicataNUCORCONTA: TIntegerField;
    cdssaidareferenciadaCDENTRADAORIGEM: TIntegerField;
    sdssaidareferenciadaCDENTRADAORIGEM: TIntegerField;
    sdssaidaefd0450: TSQLDataSet;
    sdssaidac111: TSQLDataSet;
    dtssaidaefd0450: TDataSource;
    dtssaidac111: TDataSource;
    cdssaidaefd0450: TClientDataSet;
    cdssaidac111: TClientDataSet;
    sdssaidaefd0450CDSAIDAEFD0450: TIntegerField;
    sdssaidaefd0450CDSAIDA: TIntegerField;
    sdssaidaefd0450CDEFD0450: TIntegerField;
    sdssaidaefd0450CDUSUARIOI: TIntegerField;
    sdssaidaefd0450CDUSUARIOA: TIntegerField;
    sdssaidaefd0450CDCOMPUTADORI: TIntegerField;
    sdssaidaefd0450CDCOMPUTADORA: TIntegerField;
    sdssaidaefd0450DSCOMPLEMENTO: TStringField;
    sdssaidaefd0450TSINCLUSAO: TSQLTimeStampField;
    sdssaidaefd0450TSALTERACAO: TSQLTimeStampField;
    cdssdssaidaefd0450: TDataSetField;
    cdssaidaefd0450CDSAIDAEFD0450: TIntegerField;
    cdssaidaefd0450CDSAIDA: TIntegerField;
    cdssaidaefd0450CDEFD0450: TIntegerField;
    cdssaidaefd0450CDUSUARIOI: TIntegerField;
    cdssaidaefd0450CDUSUARIOA: TIntegerField;
    cdssaidaefd0450CDCOMPUTADORI: TIntegerField;
    cdssaidaefd0450CDCOMPUTADORA: TIntegerField;
    cdssaidaefd0450DSCOMPLEMENTO: TStringField;
    cdssaidaefd0450TSINCLUSAO: TSQLTimeStampField;
    cdssaidaefd0450TSALTERACAO: TSQLTimeStampField;
    dts3: TDataSource;
    sdssaidac111CDSAIDAC111: TIntegerField;
    sdssaidac111CDTPC111: TIntegerField;
    sdssaidac111CDSAIDAEFD0450: TIntegerField;
    sdssaidac111CDUSUARIOI: TIntegerField;
    sdssaidac111CDUSUARIOA: TIntegerField;
    sdssaidac111CDCOMPUTADORI: TIntegerField;
    sdssaidac111CDCOMPUTADORA: TIntegerField;
    sdssaidac111NUPROCESSO: TStringField;
    sdssaidac111TSINCLUSAO: TSQLTimeStampField;
    sdssaidac111TSALTERACAO: TSQLTimeStampField;
    cdssaidaefd0450sdssaidac111: TDataSetField;
    cdssaidac111CDSAIDAC111: TIntegerField;
    cdssaidac111CDTPC111: TIntegerField;
    cdssaidac111CDSAIDAEFD0450: TIntegerField;
    cdssaidac111CDUSUARIOI: TIntegerField;
    cdssaidac111CDUSUARIOA: TIntegerField;
    cdssaidac111CDCOMPUTADORI: TIntegerField;
    cdssaidac111CDCOMPUTADORA: TIntegerField;
    cdssaidac111NUPROCESSO: TStringField;
    cdssaidac111TSINCLUSAO: TSQLTimeStampField;
    cdssaidac111TSALTERACAO: TSQLTimeStampField;
    sdssaidaefd0450NMEFD0450: TStringField;
    cdssaidaefd0450NMEFD0450: TStringField;
    cdssaidareferenciadaNUCHAVENFE: TStringField;
    sdssaidareferenciadaNUCHAVENFE: TStringField;
    cdsTPDEVOLUCAO: TStringField;
    sdsTPDEVOLUCAO: TStringField;
    dxBarButton33: TdxBarButton;
    actloteserie: TAction;
    actalternar: TAction;
    pnltop: TPanel;
    lbltpsaida: TLabel;
    cbxcdtpsaida: TcxDBLookupComboBox;
    lblcodigo: TLabel;
    edtcodigo: TcxTextEdit;
    lbldtemissao: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lbldtsaida: TLabel;
    edtdtsaida: TcxDBDateEdit;
    lblcfop: TLabel;
    cbxcdcfop: TcxDBLookupComboBox;
    Label5: TLabel;
    txtnudocfiscalicms: TcxDBLabel;
    txtnmstdocfiscalicms: TcxDBLabel;
    pnl: TcxLabel;
    gbxdestinatario: TcxGroupBox;
    lbldestinatario: TLabel;
    edtcdfornecedor: TcxDBButtonEdit;
    edtcdcliente: TcxDBButtonEdit;
    gbxtransportadora: TcxGroupBox;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel6: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel3: TBevel;
    Bevel10: TBevel;
    Bevel2: TBevel;
    lblcdtransportadora: TLabel;
    lblplaca: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    lbl6: TLabel;
    lblnmredespacho: TLabel;
    lbltpfrete: TLabel;
    txtpsliquido: TDBText;
    txtpsbruto: TDBText;
    edtpsliquido: TcxDBCalcEdit;
    edtpsbruto: TcxDBCalcEdit;
    edtnuvolume: TcxDBTextEdit;
    edtqtvolume: TcxDBSpinEdit;
    edtcdtransportadora: TcxDBButtonEdit;
    cbxcdtransportadora: TcxDBLookupComboBox;
    cbxcdtpfrete: TcxDBLookupComboBox;
    edtnmredespacho: TcxDBTextEdit;
    edtnuplaca: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    edtdsmarca: TcxDBTextEdit;
    edtdsespecie: TcxDBTextEdit;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    bdcproduto: TdxBarDockControl;
    grditsaida: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDLOCACAO: TcxGridDBColumn;
    tbvCDPRODUTO: TcxGridDBColumn;
    tbvNUPEDIDO: TcxGridDBColumn;
    tbvCDCFOP: TcxGridDBColumn;
    tbvCDSTITSAIDA: TcxGridDBColumn;
    tbvCDTPGRADEVALOR: TcxGridDBColumn;
    tbvCDMODBCICMS: TcxGridDBColumn;
    tbvCDMODBCSTICMS: TcxGridDBColumn;
    tbvCDDIGITADO: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvNUCLFISCAL: TcxGridDBColumn;
    tbvNMUNIDADE: TcxGridDBColumn;
    tbvCDORIGEM: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    tbvVLUNITARIO: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvNUSTICMS: TcxGridDBColumn;
    tbvNUSTIPI: TcxGridDBColumn;
    tbvNUSTPIS: TcxGridDBColumn;
    tbvNUSTCOFINS: TcxGridDBColumn;
    tbvCDBCCALCULOCREDITO: TcxGridDBColumn;
    tbvCDTPCOMISSAO: TcxGridDBColumn;
    tbvCDTPREGIMEICMS: TcxGridDBColumn;
    tbvBOALTERACUSTOMEDIO: TcxGridDBColumn;
    tbvPRDESCONTO: TcxGridDBColumn;
    tbvVLDESCONTO: TcxGridDBColumn;
    tbvVLOUTDESPESA: TcxGridDBColumn;
    tbvVLSEGURO: TcxGridDBColumn;
    tbvVLFRETE: TcxGridDBColumn;
    tbvBORECUPERAICMS: TcxGridDBColumn;
    tbvVLBASEICMS: TcxGridDBColumn;
    tbvALICMS: TcxGridDBColumn;
    tbvVLICMS: TcxGridDBColumn;
    tbvALICMSRED: TcxGridDBColumn;
    tbvVLBASEICMSSUBTRIB: TcxGridDBColumn;
    tbvALICMSSUBTRIB: TcxGridDBColumn;
    tbvVLICMSSUBTRIB: TcxGridDBColumn;
    tbvBORECUPERAIPI: TcxGridDBColumn;
    tbvVLBASEIPI: TcxGridDBColumn;
    tbvALIPI: TcxGridDBColumn;
    tbvVLIPI: TcxGridDBColumn;
    tbvVLBASEISS: TcxGridDBColumn;
    tbvALISS: TcxGridDBColumn;
    tbvVLISS: TcxGridDBColumn;
    tbvBORECUPERAPIS: TcxGridDBColumn;
    tbvVLBASEPIS: TcxGridDBColumn;
    tbvALPIS: TcxGridDBColumn;
    tbvVLPIS: TcxGridDBColumn;
    tbvBORECUPERACOFINS: TcxGridDBColumn;
    tbvVLBASECOFINS: TcxGridDBColumn;
    tbvALCOFINS: TcxGridDBColumn;
    tbvVLCOFINS: TcxGridDBColumn;
    tbvPSLIQUIDO: TcxGridDBColumn;
    tbvPSBRUTO: TcxGridDBColumn;
    tbvVLCUSTOMEDIO: TcxGridDBColumn;
    tbvVLCUSTO: TcxGridDBColumn;
    tbvBOCOMISSAO: TcxGridDBColumn;
    tbvPRCOMISSAO: TcxGridDBColumn;
    tbvVLCOMISSAO: TcxGridDBColumn;
    tbvVLLUCRO: TcxGridDBColumn;
    tbvPRMRGVLADICIONADOICMSSUBTRIB: TcxGridDBColumn;
    tbvDSINFADICIONAL: TcxGridDBColumn;
    tbvBOBASEIPIAJUSTE: TcxGridDBColumn;
    tbvBOIPIBCICMS: TcxGridDBColumn;
    tbvBOICMSBASESUBTRIBAJUSTE: TcxGridDBColumn;
    tbvBOICMSSUBTRIBAJUSTE: TcxGridDBColumn;
    tbvBOAJUSTETOTAL: TcxGridDBColumn;
    tbvBOBASEICMSAJUSTE: TcxGridDBColumn;
    tbvBOCOFINSAJUSTE: TcxGridDBColumn;
    tbvBOPISAJUSTE: TcxGridDBColumn;
    tbvBOBASEPISAJUSTE: TcxGridDBColumn;
    tbvBOBASECOFINSAJUSTE: TcxGridDBColumn;
    tbvNUCOTACAO: TcxGridDBColumn;
    tbvNUITEM: TcxGridDBColumn;
    tbvVLBASEINSS: TcxGridDBColumn;
    tbvALINSS: TcxGridDBColumn;
    tbvVLINSS: TcxGridDBColumn;
    tbvVLBASEIRRF: TcxGridDBColumn;
    tbvALIRRF: TcxGridDBColumn;
    tbvVLIRRF: TcxGridDBColumn;
    tbvVLTOTALTRIBUTO: TcxGridDBColumn;
    tbvPRTOTALTRIBUTO: TcxGridDBColumn;
    tbvNUCNTCUSTO: TcxGridDBColumn;
    tbvNMCNTCUSTO: TcxGridDBColumn;
    tbvNUPLCONTA: TcxGridDBColumn;
    tbvNMPLCONTA: TcxGridDBColumn;
    grditsaidaLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    pnlconfigtributa: TPanel;
    lblaliquota: TLabel;
    lblvalor: TLabel;
    lblbasecalculo: TLabel;
    lbliss: TLabel;
    lblpisret: TLabel;
    lblcofinsret: TLabel;
    Bevel4: TBevel;
    lblinss: TLabel;
    lblcontribsocial: TLabel;
    lblirrf: TLabel;
    ckbboretencaoiss: TcxDBCheckBox;
    ckbboretencaopis: TcxDBCheckBox;
    ckbboretencaocofins: TcxDBCheckBox;
    ckbboretencaoinss: TcxDBCheckBox;
    ckbboretencaocontribsocial: TcxDBCheckBox;
    ckbboretencaoirrf: TcxDBCheckBox;
    edtalcofinsret: TcxDBCalcEdit;
    edtvlirrf: TcxDBCalcEdit;
    edtvlcontribsocial: TcxDBCalcEdit;
    edtvlinss: TcxDBCalcEdit;
    edtvlcofinsret: TcxDBCalcEdit;
    edtvlpisret: TcxDBCalcEdit;
    edtvliss: TcxDBCalcEdit;
    edtalpisret: TcxDBCalcEdit;
    edtalinss: TcxDBCalcEdit;
    edtalcontribsocial: TcxDBCalcEdit;
    edtalirrf: TcxDBCalcEdit;
    edtvlbaseirrf: TcxDBCalcEdit;
    edtvlbasecontribsocial: TcxDBCalcEdit;
    edtvlbaseinss: TcxDBCalcEdit;
    edtvlbasecofinsret: TcxDBCalcEdit;
    edtvlbasepisret: TcxDBCalcEdit;
    edtvlbaseiss: TcxDBCalcEdit;
    pnloutros: TPanel;
    lblvllucro: TLabel;
    Label1: TLabel;
    lblpis: TLabel;
    lblcofins: TLabel;
    lblicmsred: TLabel;
    lblvlii: TLabel;
    ckbboimportacao: TcxDBCheckBox;
    edtvlii: TcxDBCalcEdit;
    edtvllucro: TcxDBCalcEdit;
    edtvlfretesub: TcxDBCalcEdit;
    edtvlicmsred: TcxDBCalcEdit;
    edtvlcofins: TcxDBCalcEdit;
    edtvlpis: TcxDBCalcEdit;
    edtalicmsred: TcxDBCalcEdit;
    edtalfretesub: TcxDBCalcEdit;
    edtvlbasefretesub: TcxDBCalcEdit;
    edtvlbaseicmsred: TcxDBCalcEdit;
    edtvlbasecofins: TcxDBCalcEdit;
    edtvlbasepis: TcxDBCalcEdit;
    tbsobservacao: TcxTabSheet;
    memdsobservacao: TcxDBMemo;
    tbsinfoadic: TcxTabSheet;
    Label3: TLabel;
    lblnmstdocumento: TLabel;
    Label6: TLabel;
    lblnfefinalidade: TLabel;
    lblnuordserv: TLabel;
    txtNUORDSERV: TDBText;
    lblnucupom: TLabel;
    txtNUCUPOM: TDBText;
    txtnustdocumento: TcxDBLabel;
    edtdtreferencia: TcxDBDateEdit;
    cbxcdnfefinalidade: TcxDBLookupComboBox;
    gbxdevolucao: TcxGroupBox;
    lblsaidadevolucao: TLabel;
    lblentrada: TLabel;
    lblnusaidadevolucao: TLabel;
    lblnuentrada: TLabel;
    tbscartacorrecao: TcxTabSheet;
    bdccarta: TdxBarDockControl;
    grdcartacorrecao: TcxGrid;
    grdcartacorrecaoDBTableView1: TcxGridDBTableView;
    grdcartacorrecaoDBTableView1NSEQEVENTO: TcxGridDBColumn;
    grdcartacorrecaoDBTableView1NUPROTOCOLO: TcxGridDBColumn;
    grdcartacorrecaoDBTableView1TSEMISSAO: TcxGridDBColumn;
    grdcartacorrecaoDBTableView1DSCARTACORRECAO: TcxGridDBColumn;
    grdcartacorrecaoLevel1: TcxGridLevel;
    tbstpcomissao: TcxTabSheet;
    grdsaidatpcomissao: TcxGrid;
    grdsaidatpcomissaoDBTableView1: TcxGridDBTableView;
    grdsaidatpcomissaoDBTableView1CDTPCOMISSAO: TcxGridDBColumn;
    grdsaidatpcomissaoDBTableView1PRCOMISSAO: TcxGridDBColumn;
    grdsaidatpcomissaoLevel1: TcxGridLevel;
    tbsreferenciada: TcxTabSheet;
    dxBevel1: TdxBevel;
    grdsaidareferenciada: TcxGrid;
    tbvreferenciada: TcxGridDBTableView;
    tbvreferenciadaNUDOCUMENTO: TcxGridDBColumn;
    tbvreferenciadaNUCHAVENFE: TcxGridDBColumn;
    grdsaidareferenciadaLevel1: TcxGridLevel;
    rdgtpdevolucao: TcxDBRadioGroup;
    tbscancelamento: TcxTabSheet;
    memdscancelamento: TcxDBMemo;
    tbsinfcomplementar: TcxTabSheet;
    grdsaidaefd0450: TcxGrid;
    tbvsaidaefd0450: TcxGridDBTableView;
    tbvsaidaefd0450CDEFD0450: TcxGridDBColumn;
    tbvsaidaefd0450NMEFD0450: TcxGridDBColumn;
    tbvsaidaefd0450DSCOMPLEMENTO: TcxGridDBColumn;
    grdsaidaefd0450Level1: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    grdsaidac111: TcxGrid;
    tbvsaidac111: TcxGridDBTableView;
    tbvsaidac111CDTPC111: TcxGridDBColumn;
    tbvsaidac111NUPROCESSO: TcxGridDBColumn;
    grdsaidac111Level1: TcxGridLevel;
    pnl1: TPanel;
    Bevel18: TBevel;
    Label35: TLabel;
    Bevel17: TBevel;
    Bevel16: TBevel;
    Bevel8: TBevel;
    Bevel19: TBevel;
    Bevel26: TBevel;
    Bevel25: TBevel;
    Bevel23: TBevel;
    Bevel24: TBevel;
    Bevel22: TBevel;
    Bevel21: TBevel;
    lblresumobaseicms: TLabel;
    lblresumoipi: TLabel;
    lblresumoprodutos: TLabel;
    Label11: TLabel;
    lblresumoservico: TLabel;
    lblvlseguro: TLabel;
    lbldesconto: TLabel;
    lbl5: TLabel;
    lblvloutdespesa: TLabel;
    Label19: TLabel;
    lblresumoicms: TLabel;
    Label8: TLabel;
    txtVLICMS: TcxDBLabel;
    txtvlbaseicms: TcxDBLabel;
    edtvloutdespesa: TcxDBCalcEdit;
    edtvldesconto: TcxDBCalcEdit;
    edtprdesconto: TcxDBCalcEdit;
    edtvlseguro: TcxDBCalcEdit;
    edtvlfrete: TcxDBCalcEdit;
    txtVLBASEICMSSUBTRIB: TcxDBLabel;
    txtVLICMSSUBTRIB: TcxDBLabel;
    txtVLPRODUTO: TcxDBLabel;
    txtVLSERVICO: TcxDBLabel;
    txtVLIPI: TcxDBLabel;
    txtVLTOTAL: TcxDBLabel;
    gbxduplicata: TcxGroupBox;
    Bevel1: TBevel;
    lblcdcondpagto: TLabel;
    lbltpcobranca: TLabel;
    Label4: TLabel;
    lblplconta: TLabel;
    cbxcdcondpagto: TcxDBLookupComboBox;
    edtdshistorico: TcxDBTextEdit;
    cbxcdtpcobranca: TcxDBLookupComboBox;
    bdcduplicata: TdxBarDockControl;
    txtnmplconta: TcxDBLabel;
    edtnuplconta: TcxDBButtonEdit;
    grdduplicata: TcxGrid;
    tbvduplicata: TcxGridDBTableView;
    tbvduplicataNUDUPLICATA: TcxGridDBColumn;
    tbvduplicataDTVENCIMENTO: TcxGridDBColumn;
    tbvduplicataVLDUPLICATA: TcxGridDBColumn;
    tbvduplicataCDSTDUPLICATA: TcxGridDBColumn;
    tbvduplicataCDTPCOBRANCA: TcxGridDBColumn;
    tbvduplicataNUPLCONTA: TcxGridDBColumn;
    tbvduplicataNMPLCONTA: TcxGridDBColumn;
    tbvduplicataNUCOR: TcxGridDBColumn;
    tbvduplicataNUCORCONTA: TcxGridDBColumn;
    grdduplicataLevel1: TcxGridLevel;
    splduplicata: TcxSplitter;
    tbvduplicataVLSALDO: TcxGridDBColumn;
    dxBarButton34: TdxBarButton;
    cdsitsaidaQTPECA: TFloatField;
    sdsitsaidaQTPECA: TFloatField;
    tbsexportacao: TcxTabSheet;
    cbxcdufembarque: TcxDBLookupComboBox;
    lblcdufembarque: TLabel;
    lbldslocalemarque: TLabel;
    edtdslocalembarque: TcxDBTextEdit;
    cdsCDUFEMBARQUE: TIntegerField;
    cdsDSLOCALEMBARQUE: TStringField;
    sdsCDUFEMBARQUE: TIntegerField;
    sdsDSLOCALEMBARQUE: TStringField;
    Label13: TLabel;
    cbxcdufsaida: TcxDBLookupComboBox;
    edtdslocalexporta: TcxDBTextEdit;
    Label14: TLabel;
    Label15: TLabel;
    edtdslocaldespacho: TcxDBTextEdit;
    cdsCDUFSAIDA: TIntegerField;
    cdsDSLOCALEXPORTA: TStringField;
    cdsDSLOCALDESPACHO: TStringField;
    sdsCDUFSAIDA: TIntegerField;
    sdsDSLOCALEXPORTA: TStringField;
    sdsDSLOCALDESPACHO: TStringField;
    cdsitsaidaVLUNITARIO: TFloatField;
    sdsitsaidaVLUNITARIO: TFloatField;
    cdsitsaidaCDITORDSERV: TIntegerField;
    sdsitsaidaCDITORDSERV: TIntegerField;
    cdsitsaidaCDORDSERV: TIntegerField;
    sdsitsaidaCDORDSERV: TIntegerField;
    cdsitsaidaNUORDSERV: TIntegerField;
    sdsitsaidaNUORDSERV: TIntegerField;
    tbvNUORDSERV: TcxGridDBColumn;
    tbvDSOBSERVACAO: TcxGridDBColumn;
    cdsitsaidaDSOBSERVACAO: TMemoField;
    sdsitsaidaDSOBSERVACAO: TMemoField;
    cdsitsaidaBOICMSINCIDESIPI: TStringField;
    sdsitsaidaBOICMSINCIDESIPI: TStringField;
    cdsBOCONSUMIDORFINAL: TStringField;
    sdsBOCONSUMIDORFINAL: TStringField;
    pnlnfe: TPanel;
    lblnfestatus: TLabel;
    lblstatus: TLabel;
    gbxrepresentante: TcxGroupBox;
    lblrepresentante: TLabel;
    cbxcdrepresentante: TcxDBLookupComboBox;
    lblcomissao: TLabel;
    edtprcomissao: TcxDBCalcEdit;
    txtvlcomissao: TcxDBLabel;
    ckbboconsumidorfinal: TcxDBCheckBox;
    cdsCDINDPRES: TStringField;
    sdsCDINDPRES: TStringField;
    cbxcdindpres: TcxDBLookupComboBox;
    Label16: TLabel;
    sdsitsaidaPFCPUFDEST: TFloatField;
    cdsitsaidaPFCPUFDEST: TFloatField;
    cdsitsaidaPICMSINTERPART: TFloatField;
    sdsitsaidaPICMSINTERPART: TFloatField;
    cdsitsaidaVFCPUFDEST: TFMTBCDField;
    sdsitsaidaVFCPUFDEST: TFMTBCDField;
    cdsitsaidaVICMSUFDEST: TFMTBCDField;
    sdsitsaidaVICMSUFDEST: TFMTBCDField;
    cdsitsaidaVICMSUFREMET: TFMTBCDField;
    sdsitsaidaVICMSUFREMET: TFMTBCDField;
    tbvpFCPUFDest: TcxGridDBColumn;
    cdsVFCPUFDEST: TFMTBCDField;
    sdsVFCPUFDEST: TFMTBCDField;
    cdsVICMSUFDEST: TFMTBCDField;
    sdsVICMSUFDEST: TFMTBCDField;
    cdsVICMSUFREMET: TFMTBCDField;
    sdsVICMSUFREMET: TFMTBCDField;
    cdsitsaidaPICMSUFDEST: TFloatField;
    sdsitsaidaPICMSUFDEST: TFloatField;
    tbvpICMSUFDest: TcxGridDBColumn;
    cdsitsaidaVLDIFAL: TFMTBCDField;
    sdsitsaidaVLDIFAL: TFMTBCDField;
    cdsitsaidaVLBASEDIFAL: TFMTBCDField;
    sdsitsaidaVLBASEDIFAL: TFMTBCDField;
    ckbBOOUTDESPESAITEM: TcxDBCheckBox;
    cdsBOOUTDESPESAITEM: TStringField;
    sdsBOOUTDESPESAITEM: TStringField;
    txtRZSOCIALC: TDBText;
    txtRZSOCIALF: TDBText;
    cdsRZSOCIALC: TStringField;
    cdsRZSOCIALF: TStringField;
    sdsRZSOCIALC: TStringField;
    sdsRZSOCIALF: TStringField;
    dxBarButton35: TdxBarButton;
    NFSe: TACBrNFSe;
    cdssaidareferenciadaBODIGITARCHAVE: TStringField;
    sdssaidareferenciadaBODIGITARCHAVE: TStringField;
    tbvreferenciadaBODIGITARCHAVE: TcxGridDBColumn;
    dxBarButton36: TdxBarButton;
    actexportarXMLCartaCorrecao: TAction;
    sdsCDTPFRETE: TStringField;
    cdsCDTPFRETE: TStringField;
    cdsitsaidaCDORIGEM: TStringField;
    sdsitsaidaCDORIGEM: TStringField;
    edthrsaida: TcxDBTimeEdit;
    Label17: TLabel;
    cdsBOITEMDESCONTO: TStringField;
    sdsBOITEMDESCONTO: TStringField;
    ckbboitemdesconto: TcxDBCheckBox;
    cdsitsaidaVLBASEICMSNTRIBUTAVEL: TFMTBCDField;
    cdsitsaidaVLBASEICMSORIGINAL: TFMTBCDField;
    cdsitsaidaVLTOTALCOMPLETO: TFMTBCDField;
    sdsitsaidaVLBASEICMSNTRIBUTAVEL: TFMTBCDField;
    sdsitsaidaVLBASEICMSORIGINAL: TFMTBCDField;
    sdsitsaidaVLTOTALCOMPLETO: TFMTBCDField;
    sdsCDEMPRESA: TLargeintField;
    sdsCDTRANSPORTADORA: TLargeintField;
    sdsCDFORNECEDOR: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsitsaidaCDEMPRESA: TLargeintField;
    sdsduplicataCDEMPRESA: TLargeintField;
    sdsduplicataCDCLIENTE: TLargeintField;
    sdsduplicataCDCNTCUSTO: TIntegerField;
    sdsduplicataCDITCONTRATOPARCELA: TIntegerField;
    sdsduplicataNUCNTCUSTO: TStringField;
    sdsduplicataVLCOMISSAOABERTA: TFMTBCDField;
    sdssaidareferenciadaCDEMPRESA: TLargeintField;
    sdscartacorrecaoCDEMPRESA: TLargeintField;
    sdssaidatpcomissaoCDEMPRESA: TLargeintField;
    sdsitsaidaloteCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDTRANSPORTADORA: TLargeintField;
    cdsCDFORNECEDOR: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsitsaidaCDEMPRESA: TLargeintField;
    cdsduplicataCDEMPRESA: TLargeintField;
    cdsduplicataCDCLIENTE: TLargeintField;
    cdsduplicataCDCNTCUSTO: TIntegerField;
    cdsduplicataCDITCONTRATOPARCELA: TIntegerField;
    cdsduplicataNUCNTCUSTO: TStringField;
    cdsduplicataVLCOMISSAOABERTA: TFMTBCDField;
    cdssaidareferenciadaCDEMPRESA: TLargeintField;
    cdscartacorrecaoCDEMPRESA: TLargeintField;
    cdssaidatpcomissaoCDEMPRESA: TLargeintField;
    cdsitsaidaloteCDEMPRESA: TLargeintField;
    cdsitsaidaNUITEM: TStringField;
    sdsitsaidaNUITEM: TStringField;
    sdssaidaefd0450CDEMPRESA: TLargeintField;
    cdssaidaefd0450CDEMPRESA: TLargeintField;
    sdssaidac111CDEMPRESA: TLargeintField;
    cdssaidac111CDEMPRESA: TLargeintField;
    actimprimirreciboduplicata: TAction;
    dxBarButton37: TdxBarButton;
    actemailreciboduplicata: TAction;
    ckbBORATEIOPLCONTA: TcxDBCheckBox;
    ckbborateiocntcusto: TcxDBCheckBox;
    txtnmcntcusto: TcxDBLabel;
    edtnucntcusto: TcxDBButtonEdit;
    lblcntcusto: TLabel;
    cdsCDCNTCUSTO: TIntegerField;
    cdsNUCNTCUSTO: TStringField;
    cdsBORATEIOCNTCUSTO: TStringField;
    cdsBORATEIOPLCONTA: TStringField;
    sdsCDCNTCUSTO: TIntegerField;
    sdsNUCNTCUSTO: TStringField;
    sdsBORATEIOCNTCUSTO: TStringField;
    sdsBORATEIOPLCONTA: TStringField;
    cdsNMCNTCUSTO: TStringField;
    sdsNMCNTCUSTO: TStringField;
    tbvduplicatanucntcusto: TcxGridDBColumn;
    tbvduplicatanmcntcusto: TcxGridDBColumn;
    cdsduplicataNMCNTCUSTO: TStringField;
    sdsduplicataNMCNTCUSTO: TStringField;
    actImportarArquivoXML: TAction;
    actImportarDiretorioXML: TAction;
    dxBarButton38: TdxBarButton;
    cdsduplicataBORATEIOCNTCUSTO: TStringField;
    sdsduplicataBORATEIOCNTCUSTO: TStringField;
    cdsduplicataBORATEIOPLCONTA: TStringField;
    sdsduplicataBORATEIOPLCONTA: TStringField;
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
    procedure actGerarDuplicataExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actAbrirClienteExecute(Sender: TObject);
    procedure actAbrirFornecedorExecute(Sender: TObject);
    procedure actAbrirRepresentanteExecute(Sender: TObject);
    procedure actAbrirCondPagtoExecute(Sender: TObject);
    procedure actAbrirTransportadoraExecute(Sender: TObject);
    procedure actAbrirDuplicataExecute(Sender: TObject);
    procedure actexibircamposExecute(Sender: TObject);
    procedure actabrirtpsaidaExecute(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure actabrirpedidoExecute(Sender: TObject);
    procedure actvisualizarExecute(Sender: TObject);
    procedure actGerarDevolucaoSaidaExecute(Sender: TObject);
    procedure actGerarDevolucaoEntradaExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actimprimirlaserExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure edtdshistoricoExit(Sender: TObject);
    procedure actnfeExecute(Sender: TObject);
    procedure actcancelarNFExecute(Sender: TObject);
    procedure actordservimportarExecute(Sender: TObject);
    procedure actexportarxmlExecute(Sender: TObject);
    procedure actnfemenuExecute(Sender: TObject);
    procedure actnfeconfigurarExecute(Sender: TObject);
    procedure actnfestatusExecute(Sender: TObject);
    procedure actnfeenviarExecute(Sender: TObject);
    procedure actnfeemaildestinatarioExecute(Sender: TObject);
    procedure actnfeinutilizarExecute(Sender: TObject);
    procedure actnfegerarpdfExecute(Sender: TObject);
    procedure actnfeconsultacadastroExecute(Sender: TObject);
    procedure actnfeconsultarExecute(Sender: TObject);
    procedure actnfeemailExecute(Sender: TObject);
    procedure actnfeValidarExecute(Sender: TObject);
    procedure actbaixaduplicataExecute(Sender: TObject);
    procedure actimprimirduplicataduplicataExecute(Sender: TObject);
    procedure actbaixaduplicatatodasExecute(Sender: TObject);
    procedure actimprimirduplicataExecute(Sender: TObject);
    procedure actbaixarExecute(Sender: TObject);
    procedure actredefinirExecute(Sender: TObject);
    procedure actcartacorrecaoExecute(Sender: TObject);
    procedure actenviaremailcartacorrecaoExecute(Sender: TObject);
    procedure actImportacaoExecute(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure actcancelarnotaExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actimprimirboletoExecute(Sender: TObject);
    procedure actimprimirduplicatanotaExecute(Sender: TObject);
    procedure actimprimirreciboExecute(Sender: TObject);
    procedure lblcdcondpagtoDblClick(Sender: TObject);
    procedure lblrepresentanteDblClick(Sender: TObject);
    procedure memdsobservacaoPropertiesChange(Sender: TObject);
    procedure lbltpsaidaDblClick(Sender: TObject);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdssaidatpcomissaoBeforePost(DataSet: TDataSet);
    procedure grdsaidareferenciadaDBTableView1NUDOCUMENTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdssaidareferenciadaBeforePost(DataSet: TDataSet);
    procedure cdsduplicataBeforePost(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsitsaidaBeforePost(DataSet: TDataSet);
    procedure cdsitsaidaAfterPost(DataSet: TDataSet);
    procedure cdsitsaidaNewRecord(DataSet: TDataSet);
    procedure grditsaidatvNUPEDIDOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grditsaidatvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grditsaidatvNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lbldestinatarioDblClick(Sender: TObject);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure lblcdtransportadoraDblClick(Sender: TObject);
    procedure edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcodigoExit(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure tbvduplicataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdduplicatatvNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsduplicataNewRecord(DataSet: TDataSet);
    procedure tbvduplicataCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cbxcdtpsaidaEnter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure actimprimircartacorrecaoExecute(Sender: TObject);
    procedure actpdfcartacorrecaoExecute(Sender: TObject);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actabrirordservExecute(Sender: TObject);
    procedure txtNUORDSERVDblClick(Sender: TObject);
    procedure actcopiarchaveExecute(Sender: TObject);
    procedure actabrirlocacaoExecute(Sender: TObject);
    procedure actemailExecute(Sender: TObject);
    procedure actemailnotafiscalExecute(Sender: TObject);
    procedure actimprimirsaidaExecute(Sender: TObject);
    procedure actemailduplicataExecute(Sender: TObject);
    procedure actemailduplicataduplicataExecute(Sender: TObject);
    procedure actemailduplicatanotaExecute(Sender: TObject);
    procedure actemailreciboExecute(Sender: TObject);
    procedure actemailboletoExecute(Sender: TObject);
    procedure actemailnotafiscalboletoExecute(Sender: TObject);
    procedure actemailnfeboletoExecute(Sender: TObject);
    procedure actabrirentradaExecute(Sender: TObject);
    procedure lblnuentradaDblClick(Sender: TObject);
    procedure actimprimircarneExecute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsitsaidaloteBeforePost(DataSet: TDataSet);
    procedure tbvNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvduplicataCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvsaidaefd0450CDEFD0450PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdssaidac111BeforePost(DataSet: TDataSet);
    procedure cdssaidaefd0450BeforePost(DataSet: TDataSet);
    procedure actloteserieExecute(Sender: TObject);
    procedure cdsitsaidaloteAfterDelete(DataSet: TDataSet);
    procedure cdsitsaidaloteAfterInsert(DataSet: TDataSet);
    procedure tbvCDLOCACAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure TornarNuloAliquotaZerada(Sender: TField);
    procedure cdsCDTPCOBRANCAValidate(Sender: TField);
    procedure cdsCDCONDPAGTOValidate(Sender: TField);
    procedure cdsCDCFOPValidate(Sender: TField);
    procedure cdsCDREPRESENTANTEValidate(Sender: TField);
    procedure cdsCDNFEFINALIDADEValidate(Sender: TField);
    procedure cdsNUPLACAValidate(Sender: TField);
    procedure cdsCDTPSAIDAValidate(Sender: TField);
    procedure cdsNUPLCONTAValidate(Sender: TField);
    procedure cdsVLFRETEValidate(Sender: TField);
    procedure cdsVLSEGUROValidate(Sender: TField);
    procedure cdsPRDESCONTOValidate(Sender: TField);
    procedure cdsVLDESCONTOValidate(Sender: TField);
    procedure cdsVLOUTDESPESAValidate(Sender: TField);
    procedure cdssaidatpcomissaoPRCOMISSAOValidate(Sender: TField);
    procedure cdssaidareferenciadaNUDOCUMENTOValidate(Sender: TField);
    procedure cdsduplicataNUPLCONTAValidate(Sender: TField);
    procedure cdsNUSAIDAValidate(Sender: TField);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure cdsitsaidaCDCFOPValidate(Sender: TField);
    procedure cdsitsaidaNUPEDIDOValidate(Sender: TField);
    procedure cdsitsaidaCDDIGITADOValidate(Sender: TField);
    procedure cdsitsaidaVLUNITARIOValidate(Sender: TField);
    procedure cdsitsaidaQTITEMValidate(Sender: TField);
    procedure cdsCDFORNECEDORValidate(Sender: TField);
    procedure cdsCDTRANSPORTADORAValidate(Sender: TField);
    procedure cdsduplicataDTVENCIMENTOValidate(Sender: TField);
    procedure cdsDSHISTORICOValidate(Sender: TField);
    procedure cdsDTEMISSAOValidate(Sender: TField);
    procedure cdsDTSAIDAValidate(Sender: TField);
    procedure cdsitsaidaBOICMSSUBTRIBAJUSTEValidate(Sender: TField);
    procedure cdsitsaidaBOBASEICMSAJUSTEValidate(Sender: TField);
    procedure cdsitsaidaBOBASEIPIAJUSTEValidate(Sender: TField);
    procedure cdsitsaidaBOAJUSTETOTALValidate(Sender: TField);
    procedure cdsitsaidaBOBASEPISAJUSTEValidate(Sender: TField);
    procedure cdsitsaidaBOBASECOFINSAJUSTEValidate(Sender: TField);
    procedure cdsitsaidaCDLOCACAOValidate(Sender: TField);
    procedure cdsitsaidaBOBASEICMSSUBTRIBAJUSTEValidate(Sender: TField);
    procedure cdsduplicataVLDUPLICATAValidate(Sender: TField);
    procedure cdsitsaidaNUPLCONTAValidate(Sender: TField);
    procedure cdssaidaefd0450CDEFD0450Validate(Sender: TField);
    procedure cdssaidareferenciadaCDSAIDAORIGEMValidate(Sender: TField);
    procedure cdssaidareferenciadaCDENTRADAORIGEMValidate(Sender: TField);
    procedure cdsTPDEVOLUCAOValidate(Sender: TField);
    procedure tbvCDLOCACAOPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure cdsitsaidaDSINFADICIONALValidate(Sender: TField);
    procedure cdsBOOUTDESPESAITEMValidate(Sender: TField);
    procedure cdsitsaidaNUCNTCUSTOValidate(Sender: TField);
    procedure cdssaidareferenciadaBODIGITARCHAVEValidate(Sender: TField);
    procedure cdsBOITEMDESCONTOValidate(Sender: TField);
    procedure cdsNUCNTCUSTOValidate(Sender: TField);
    procedure tbvNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure txtRZSOCIALFDblClick(Sender: TObject);
    procedure txtRZSOCIALCDblClick(Sender: TObject);
    procedure cdssaidareferenciadaNewRecord(DataSet: TDataSet);
    procedure cdssaidareferenciadaAfterScroll(DataSet: TDataSet);
    procedure actexportarXMLCartaCorrecaoExecute(Sender: TObject);
    procedure actimprimirreciboduplicataExecute(Sender: TObject);
    procedure actemailreciboduplicataExecute(Sender: TObject);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvduplicatanucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actImportarArquivoXMLExecute(Sender: TObject);
    procedure actImportarDiretorioXMLExecute(Sender: TObject);
    procedure tbvFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure tbvduplicataFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure cdsitsaidaALICMSValidate(Sender: TField);
    procedure cdsitsaidaALIPIValidate(Sender: TField);
    procedure cdsitsaidaALPISValidate(Sender: TField);
    procedure cdsitsaidaALCOFINSValidate(Sender: TField);
    procedure cdsduplicataNUCNTCUSTOValidate(Sender: TField);
  private      { Private declarations }
    locacaodevolucaoList : TLocacaoDevolucaoList;
    locacao : TLocacao;
    tela : TTelaSaida;
    entrada : TEntrada;
    pedido : tpedido;
    transportadora : TTransportadora;
    produto : tproduto;
    cdserieoriginal : integer;
    codigoinsercao : integer;
    codigooriginal : integer;
    exibe : string;
    adntcliente : tadntcliente;
    boinsertdevolucaolocacao : Boolean;
    reg : TRegraSTRecord;
    bonovo : boolean;
    boinsert: boolean;
    procedure setRegistroRegraST;
    function  AchouBaixa:boolean;
    procedure Ajustar(sender:TObject; bovlduplicatadiferentevltotal: boolean);
    procedure CalcularImpostoIcmsItem;
    procedure CalcularImpostoIcmsSubTribItem;
    procedure ConsultarNfe;
    procedure LerConfiguracao;
    procedure LiberarControleNfe(ativar:Boolean);
    function  Loadnfe:boolean;
    procedure NFEStatusChange(Sender: TObject);
    function  RecalcularComissao:boolean;
    //procedure RatearValoresItens(nmcampo:string);
    procedure setrecord(cdtpsaida:integer);
    procedure setst;
    procedure setFocoLocacao;
    function  validarNFE(sender:TObject):Boolean;
    function  TodosPedidosTransporteComNotaFiscal(cdtransporte:string):boolean;
    function  GerarPDFBoleto:string;
    function  GerarListaArquivoPDFBoleto:string;
    procedure itsaidaCalcularIRRF;
    procedure itsaidaCalcularINSS;
    procedure itsaidaCalcularISS;
    procedure itsaidaCalcularICMSST;
    procedure itsaidaCalcularCOFINS;
    procedure itsaidaCalcularPIS;
    procedure itsaidaCalcularICMS;
    procedure itsaidaCalcularIPI;
    procedure itsaidaCalcularComissao;
    procedure itsaidaCalcularValores;
    procedure verificarConfiguracaoEmail;
    procedure verificarExistenciaBaixaMovbancario;
    procedure verificaPosssibilidadeExclusaoDeAcordoComStatusDuplicata;
    procedure verificarSeNotaJaFoiEnviada;
    procedure registroDiferenteDoDigitadoAbrilo(Sender: TObject);
    procedure verificarSeExisteLocacaoInseridoEmNotaParaFrente;
    function  DestinatarioNaoPreenchido:boolean;
    procedure setReferenciada;
    procedure InserirDevolucaoLocacaoSegundo;
    procedure atualizarClienteDuplicata;
    procedure abrirTabelas;
    procedure setLiberarCampoOutDespesa;
    procedure ImprimirCartaCorrecao(dsxml:string);
    procedure SetSaidaReferenciadaFocusing;
    procedure InserirPlContaItsaida(tipo:string);
    function check_adnt_cliente: boolean;
    function cancelar_nfe: boolean;
    procedure imprimir_modo_antigo(Sender: TObject);
    procedure configurarboitemdesconto;
    function cancelarNFE: boolean;
    procedure ConsistirLivroFiscal;
    procedure ConsistirCondpagto;
    procedure GravartotaisClasse;
    procedure DesativarOnValidate;
    procedure AtivarOnValidate;
    procedure VerificarNumerioSerieD;
    procedure check_qtd_imei;
    procedure AtualizarDuplicata;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
    procedure NovoPedido(cdpedido:integer; cditpedido, cditpedidoestrutura: string; cdtpsaida, cdcondpagto: integer; qtd, qtp :string);
    procedure Novo(cdittransporte, cdtpsaida:integer; dtemissao: TDate);overload;
    procedure Novo(cdittransporte:TStrings; cdtpsaida:integer; dtemissao : TDate);overload;
    procedure Novo(cdordserv, cdtpsaida, cdcondpagto: integer; cdcliente, cditordserv: string);overload;
    function  Novo(cdtpsaida, cdcfop, nusaida:string):boolean;overload;
  end;

var
  frmsaida : Tfrmsaida;

implementation

uses uLocalizarPedido,
  UMain,
  uDtmMain,
  UdlgInfNumIntervencao,
  uLocalizarProduto,
  uexibircampos,
  ulocalizar,
  ulocalizarcliente,
  ulocalizarfornecedor,
  ulocalizartransportadora,
  ulocalizarsaida,
  ugerarDevolucao,
  ulocalizarordserv,
  uacbr,
  udlgxmltotreeview,
  uimprimirrelatoriopadrao,
  unfereport,
  ubaixa,
  uduplicataparcelamento,
  ucartacorrecao,
  uitsaidaimportacao,
  udlginutilizarnfe,
  uDlgEscolhePedido,
  ulocalizarlocacao,
  UMenuRelatorio,
  udlgRichEdit,
  rptestoquecompleto,
  ulocalizarentrada,
  classequery,
  uloteserie,
  classeeventoemail, ClasseImportacaoXML;

{$R *.DFM}

const
  artigoI  = 'a';

{ TODO -oPaulo -cLegislação : o valor do IPI deve integrar a base de cálculo do ICMS
 sempre que a operação for destinada ao consumo final. }

function TFrmSaida.TodosPedidosTransporteComNotaFiscal(cdtransporte:string):boolean;
begin
  result := false;
  if cdtransporte = '' then
  begin
    exit;
  end;
  result := RetornaSQLInteger('select count(cdpedido) from ittransporte where '+get_cd_empresa+' and cdtransporte='+ cdtransporte) =
            RetornaSQLInteger('select count(*) from itsaida i '+
                              'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                              'where s.'+get_cd_empresa+' and s.cdtransporte='+cdtransporte+' '+
                              'group by i.cdpedido');
end;

{
procedure TFrmSaida.RatearValoresItens(nmcampo:string);
begin
  if cds.fieldbyname(nmcampo).AsCurrency < 0 then
  begin
    cdsitsaida.FieldByName(nmcampo).clear;
    exit;
  end;
  if cdsvlproduto.AsCurrency * cds.fieldbyname(nmcampo).AsCurrency > 0 then// por que multiplicar?
  begin
    cdsitsaida.fieldbyname(nmcampo).AsCurrency := QRotinas.Roundqp(((cdsitsaidaQTITEM.AsFloat * cdsitsaidaVLUNITARIO.asfloat) / cdsvlproduto.Asfloat) * cds.fieldbyname(nmcampo).Asfloat, tela.tela.tpsaida.boarredondar = _s);
  end
  else
  begin
    cdsitsaida.fieldbyname(nmcampo).clear;
  end;
end;
}

function TFrmSaida.RecalcularComissao:boolean;
var
  vlcomissao : currency;
  r : integer;
begin
  r := 0;
  cds.DisableControls;
  cdsitsaida.DisableControls;
  try
    r := cdsitsaida.RecNo;
    cdsitsaida.First;
    vlcomissao := 0;
    while not cdsitsaida.eof do
    begin
      if cdsitsaidabocomissao.AsString = _S then
      begin
        if cdsitsaida.State = dsbrowse then
        begin
          if cdsitsaida.ReadOnly then
          begin
            cdsitsaida.ReadOnly := False;
          end;
          cdsitsaida.Edit;
        end;
        cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.ascurrency * (cdsPRCOMISSAO.Asfloat / 100), tela.tela.tpsaida.boarredondar = _s);
      end;
      vlcomissao := vlcomissao + cdsitsaidavlcomissao.ascurrency;
      cdsitsaida.Next;
    end;
    cdsvlcomissao.AsCurrency := vlcomissao;
    result := true;
  finally
    cdsitsaida.RecNo := r;
    cds.enablecontrols;
    cdsitsaida.EnableControls;
  end;
end;

procedure Tfrmsaida.setLiberarCampoOutDespesa;
begin
  edtvloutdespesa.Enabled := cds.FieldByName(_booutdespesaitem).AsString <> _s;
  tbvVLOUTDESPESA.Visible := cds.FieldByName(_booutdespesaitem).AsString = _s;
  tbvVLOUTDESPESA.Visible := cds.FieldByName(_booutdespesaitem).AsString = _s;
  tbvVLOUTDESPESA.Options.Focusing := cds.FieldByName(_booutdespesaitem).AsString = _s;
end;

procedure TFrmSaida.setrecord(cdtpsaida:integer);
begin
  if cdtpsaida = 0 then
  begin
    exit;
  end;
  lblbasecalculo.visible   := true;
  lblaliquota.visible      := true;
  lblvalor.visible         := true;
  tela.tela.tpsaida.select(cdtpsaida);
  tela.tela.tpsaida.serie.Select(tela.tela.tpsaida.cdserie);

  tbsexportacao.TabVisible := tela.tela.tpsaida.boexportacao = _s;
  edtpsbruto.Visible       := tela.tela.tpsaida.boratearpeso = _s;
  edtpsliquido.Visible     := tela.tela.tpsaida.boratearpeso = _s;
  lblnmredespacho.Visible  := tela.tela.tpsaida.boredespacho = _s;
  edtnmredespacho.Visible  := tela.tela.tpsaida.boredespacho = _s;
  tbstpcomissao.TabVisible := tela.tela.tpsaida.botpcomissao = _s;
  // gerar nfe
  actnfemenu.Visible           := (tela.tela.tpsaida.serie.nudocfiscalicms = _55) and (cds.State <> dsinsert);
  actcancelarnota.Visible      := tela.tela.tpsaida.serie.nudocfiscalicms <> _55;
  tbvNUCLFISCAL.Visible := (tela.tela.tpsaida.serie.nudocfiscalicms = _55) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _20) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _02) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _2d) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _01) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _00);
  tbvNUSTICMS.Visible   := (tela.tela.tpsaida.serie.nudocfiscalicms = _55) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _20) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _02) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _2d) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _01) or
                           (tela.tela.tpsaida.serie.nudocfiscalicms = _00);
  tbvNUSTIPI.Visible    := tela.tela.tpsaida.serie.nudocfiscalicms = _55;
  tbvNUSTPIS.Visible    := tela.tela.tpsaida.serie.nudocfiscalicms = _55;
  tbvNUSTCOFINS.Visible := tela.tela.tpsaida.serie.nudocfiscalicms = _55;
  tbvNUCOTACAO.Visible  := tela.tela.tpsaida.bopedidocompra = _s;
  tbvNUITEM.Visible     := tela.tela.tpsaida.bopedidocompra = _s;
  tbvDSINFADICIONAL.Visible := tela.tela.tpsaida.boinfadicional = _s;
  //
  edtvllucro.Visible   := tela.tela.tpsaida.bolucro = _s;
  lblvllucro.visible   := tela.tela.tpsaida.bolucro = _s;
  gbxduplicata.Visible := tela.tela.tpsaida.boduplicata = _s;
  splduplicata.Visible := tela.tela.tpsaida.boduplicata = _s;
  // Configura Pedido
  tbvNUPEDIDO.Visible  := tela.tela.tpsaida.bopedido = _s;
  tbvCDLOCACAO.Visible := tela.tela.tpsaida.bolocacao = _s;
  gbxrepresentante.Visible := tela.tela.tpsaida.bocomissao = _s;
  //
  gbxtransportadora.Visible := tela.tela.tpsaida.bofrete = _s;
  // Configura ICMS
  tbvALICMS.Visible := tela.tela.tpsaida.boicms = _s;
  tbvVLICMS.Visible := tela.tela.tpsaida.boicms = _s;
  tbvVLBASEICMS.Visible := tela.tela.tpsaida.boexibirvlbaseicms = _S;
  tbvBOBASEICMSAJUSTE.Visible := tela.tela.tpsaida.boexibirbaseicmsajuste = _S;

  tbvPRMRGVLADICIONADOICMSSUBTRIB.Visible := tela.tela.tpsaida.boicmssubst = _s;
  tbvVLBASEICMSSUBTRIB.Visible := tela.tela.tpsaida.boicmssubst = _s;
  tbvALICMSSUBTRIB.Visible := tela.tela.tpsaida.boicmssubst = _s;
  tbvVLICMSSUBTRIB.Visible := tela.tela.tpsaida.boicmssubst = _s;

  tbvVLBASEISS.Visible := tela.tela.tpsaida.boiss = _s;
  tbvALISS.Visible     := tela.tela.tpsaida.boiss = _s;
  tbvVLISS.Visible     := tela.tela.tpsaida.boiss = _s;

  tbvalipi.visible := tela.tela.tpsaida.boipi = _s;
  tbvvlipi.Visible := tela.tela.tpsaida.boipi = _s;

  tbvPSLIQUIDO.Visible := tela.tela.tpsaida.boexibirpeso = _s;
  tbvPSBRUTO.Visible   := tela.tela.tpsaida.boexibirpeso = _s;
  // Configura ICMS substituiacao
  if (tela.tela.tpsaida.boipi <> _s) and (tela.tela.tpsaida.boicms <> _s) and (tela.tela.tpsaida.boicmssubst = _s) then
  begin
    lblaliquota.Visible := false;
  end;
  // Configura icmsred
  lblicmsred.Visible       := tela.tela.tpsaida.boicmsred = _s;
  edtvlbaseicmsred.Visible := tela.tela.tpsaida.boicmsred = _s;
  edtalicmsred.Visible     := tela.tela.tpsaida.boicmsred = _s;
  edtvlicmsred.Visible     := tela.tela.tpsaida.boicmsred = _s;
  tbvALICMSRED.Visible     := tela.tela.tpsaida.boicmsred = _s;
  // Configura ISS
  lbliss.Visible       := tela.tela.tpsaida.boiss = _s;
  edtvlbaseiss.Visible := tela.tela.tpsaida.boiss = _s;
  edtvliss.Visible     := tela.tela.tpsaida.boiss = _s;
  ckbboretencaoiss.visible := (tela.tela.tpsaida.boiss = _s) and (tela.tela.tpsaida.boretencaoiss = _s);
  // Configura IRRF
  lblirrf.Visible       := tela.tela.tpsaida.boirrf = _s;
  edtvlbaseirrf.Visible := tela.tela.tpsaida.boirrf = _s;
  edtalirrf.Visible     := tela.tela.tpsaida.boirrf = _s;
  edtvlirrf.Visible     := tela.tela.tpsaida.boirrf = _s;
  ckbboretencaoirrf.visible := (tela.tela.tpsaida.boirrf = _s) and (tela.tela.tpsaida.boretencaoirrf = _s);
  // Configura pis
  lblpis.Visible       := tela.tela.tpsaida.bopis = _s;
  edtvlbasepis.Visible := tela.tela.tpsaida.bopis = _s;
  edtvlpis.Visible     := tela.tela.tpsaida.bopis = _s;

  lblpisret.Visible       := tela.tela.tpsaida.bopisret = _s;
  edtvlbasepisret.Visible := tela.tela.tpsaida.bopisret = _s;
  edtalpisret.Visible     := tela.tela.tpsaida.bopisret = _s;
  edtvlpisret.Visible     := tela.tela.tpsaida.bopisret = _s;
  ckbboretencaopis.Visible := (tela.tela.tpsaida.bopisret = _s) and (tela.tela.tpsaida.boretencaopis = _s);
  // Configura COFINS
  lblcofins.Visible       := tela.tela.tpsaida.bocofins = _s;
  edtvlbasecofins.Visible := tela.tela.tpsaida.bocofins = _s;
  edtvlcofins.Visible     := tela.tela.tpsaida.bocofins = _s;

  lblcofinsret.Visible        := tela.tela.tpsaida.bocofinsret = _s;
  edtvlbasecofinsret.Visible  := tela.tela.tpsaida.bocofinsret = _s;
  edtalcofinsret.Visible      := tela.tela.tpsaida.bocofinsret = _s;
  edtvlcofinsret.Visible      := tela.tela.tpsaida.bocofinsret = _s;
  ckbboretencaocofins.Visible := (tela.tela.tpsaida.bocofinsret = _s) and (tela.tela.tpsaida.boretencaocofins = _s);
  // configurar inss
  lblinss.Visible       := tela.tela.tpsaida.boinss = _s;
  edtvlbaseinss.Visible := tela.tela.tpsaida.boinss = _s;
  edtalinss.Visible     := tela.tela.tpsaida.boinss = _s;
  edtvlinss.Visible     := tela.tela.tpsaida.boinss = _s;
  ckbboretencaoinss.Visible := (tela.tela.tpsaida.boinss = _s) and (tela.tela.tpsaida.boretencaoinss = _s);
  // configurar contribuicao social
  lblcontribsocial.Visible       := tela.tela.tpsaida.bocontribsocial = _s;
  edtvlbasecontribsocial.Visible := tela.tela.tpsaida.bocontribsocial = _s;
  edtalcontribsocial.Visible     := tela.tela.tpsaida.bocontribsocial = _s;
  edtvlcontribsocial.Visible     := tela.tela.tpsaida.bocontribsocial = _s;
  ckbboretencaocontribsocial.Visible := (tela.tela.tpsaida.bocontribsocial = _s) and (tela.tela.tpsaida.boretencaocontribsocial = _s);
  // configura os labeis da tributação
  if (tela.tela.tpsaida.boipi <> _s) and (tela.tela.tpsaida.boicms <> _s) and (tela.tela.tpsaida.boicmssubst <> _s) and (tela.tela.tpsaida.boicmsred <> _s) and
     (tela.tela.tpsaida.boiss <> _s)  and (tela.tela.tpsaida.bopis <> _s) and (tela.tela.tpsaida.bocofins <> _s) then
  begin
    lblbasecalculo.visible := false;
    lblaliquota.visible    := false;
    lblvalor.visible       := false;
  end;
  if (cds.State = dsinsert) or (cds.State = dsedit) then
  begin
    if tela.tela.tpsaida.tpforncliente = _f then
    begin
      cds.fieldbyname(_cdcliente).clear
    end
    else
    begin
      cds.fieldbyname(_cdfornecedor).clear;
    end;
  end;
  lbldestinatario.Caption := tela.tela.tpsaida.ObterTpFornCliente;
  edtcdcliente.Visible    := tela.tela.tpsaida.tpforncliente = _c;
  edtcdfornecedor.Visible := tela.tela.tpsaida.tpforncliente = _F;
  // configura devolucao
  ckbboimportacao.Visible   := tela.tela.tpsaida.boimportacao = _s;
  edtvlii.Visible           := tela.tela.tpsaida.boimportacao = _s;
  lblvlii.visible           := tela.tela.tpsaida.boimportacao = _s;
  actGerarDuplicata.Enabled := tela.tela.tpsaida.boduplicata = _s;
  if tela.tela.tpsaida.boduplicata = _s then
  begin
    actGerarDuplicata.Enabled := not AchouBaixa;
  end;
  actGerarDuplicata.Visible := actGerarDuplicata.Enabled;
  //
  actImportacao.Enabled := tela.tela.tpsaida.boimportacao = _s;
  actimportacao.Visible := tela.tela.tpsaida.boimportacao = _s;
end;

procedure Tfrmsaida.setRegistroRegraST;
begin
  reg.cdcfopduf        := tela.tela.tpsaida.cdcfopduf;
  reg.cdcfopfuf        := tela.tela.tpsaida.cdcfopfuf;
  reg.cdcfopdufsubtrib := tela.tela.tpsaida.cdcfopdufsubtrib;
  reg.cdcfopfufsubtrib := tela.tela.tpsaida.cdcfopfufsubtrib;
  if tela.tela.cliente.cduf <> 0 then
  begin
    reg.cduf     := tela.tela.cliente.cduf;
    reg.tpregime := tela.tela.cliente.get_tpregime;
  end
  else
  begin
    reg.cduf     := tela.tela.fornecedor.cduf;
    reg.tpregime := tela.tela.fornecedor.get_tpregime;
  end;
  reg.tpentsai := tela.tela.tpsaida.tpentsai;
end;

function Tfrmsaida.Novo(cdtpsaida, cdcfop, nusaida:string):boolean;
var
  cdtpfrete, cdcliente, cdrepresentante, cdsaidavenda, nusaidavenda : string;
  i : integer;
  vlfrete : currency;
begin
  result         := true;
  frmprogressbar := TFrmprogressbar.Create(nil);
  tela.tela.itsaida.Clear;
  cdcliente       := cds.fieldbyname(_cdcliente).asstring;
  cdrepresentante := cdscdrepresentante.asstring;
  cdsaidavenda    := cdscdsaida.asstring;
  nusaidavenda    := cdsnusaida.asstring;
  cdtpfrete       := cdscdtpfrete.asstring;
  vlfrete         := cdsvlfrete.AsCurrency;
  try
    cdsitsaida.DisableControls;
    cdsitsaida.First;
    frmprogressbar.gau.MaxValue := (cdsitsaida.recordcount - 1) * 2;
    frmprogressbar.Align        := alBottom;
    frmprogressbar.Show;
    while not cdsitsaida.Eof do
    begin
      frmprogressbar.gau.Progress := cdsitsaida.recno;
      application.ProcessMessages;
      tela.tela.itsaida.New;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].cditpedido     := cdsitsaidacditpedido.Asinteger;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].cddigitado     := cdsitsaidacddigitado.AsString;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].cdproduto      := cdsitsaidacdproduto.Asinteger;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].qtitem         := cdsitsaidaqtitem.AsFloat;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].psliquido      := cdsitsaidapsliquido.AsFloat;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].psbruto        := cdsitsaidapsbruto.AsFloat;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].prcomissao     := cdsitsaidaprcomissao.Asfloat;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].vlunitario     := cdsitsaidavlunitario.AsFloat;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].vltotal        := cdsitsaidavltotal.AsCurrency;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].vlcomissao     := cdsitsaidavlcomissao.ascurrency;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].vlfrete        := cdsitsaidavlfrete.ascurrency;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].alpis          := cdsitsaidaalpis.Asfloat;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].alicms         := cdsitsaidaalicms.Asfloat;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].alipi          := cdsitsaidaalipi.Asfloat;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].alcofins       := cdsitsaidaalcofins.Asfloat;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].cdmodbcicms    := cdsitsaidacdmodbcicms.Asinteger;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].cdmodbcsticms  := cdsitsaidacdmodbcsticms.Asinteger;
      tela.tela.itsaida.items[tela.tela.itsaida.Count -1].PRMRGVLADICIONADOICMSSUBTRIB          := cdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB.AsCurrency;
      if tela.tela.tpsaida.tpentsai = _e then
      begin
        tela.tela.itsaida.items[tela.tela.itsaida.Count -1].borecuperapis  := cdsitsaidaborecuperapis.AsString;
      end;
      cdsitsaida.Next;
    end;
    try
      actNovoExecute(nil);
      bonovo := true;
      cdscdtpsaida.asstring := cdtpsaida;
      if cbxcdcfop.Visible then
      begin
        cdscdcfop.asstring := cdcfop;
      end;
      edtCodigo.Text              := nusaida;
      cdsnusaida.asstring         := nusaida;
      cds.fieldbyname(_cdcliente).asstring       := cdcliente;
      cdscdrepresentante.asstring := cdrepresentante;
      cdscdtpfrete.asstring       := cdtpfrete;
      cdsvlfrete.ascurrency       := vlfrete;
      for i := 0 to tela.tela.itsaida.Count - 1 do
      begin
        frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
        application.ProcessMessages;
        cdsitsaida.Insert;
        if tela.tela.itsaida.Items[i].cditpedido <> 0 then
        begin
          cdsitsaidacditpedido.Asinteger := tela.tela.itsaida.Items[i].cditpedido
        end
        else
        begin
          cdsitsaidacditpedido.clear;
        end;
        cdsitsaidacdcfop.asstring         := cdscdcfop.asstring;
        cdsitsaidacditsaida.AsString      := GerarCodigo(_itsaida);
        cdsitsaidacddigitado.asstring     := tela.tela.itsaida.Items[i].cddigitado;
        cdsitsaidacdproduto.asInteger     := tela.tela.itsaida.Items[i].cdproduto;
        setst;
        cdsitsaidaqtitem.Asfloat         := tela.tela.itsaida.Items[i].qtitem;
        if cdsitsaidaboservico.asstring <> _S then
        begin
          cdsitsaidapsbruto.Asfloat   := tela.tela.itsaida.Items[i].psbruto;
          cdsitsaidapsliquido.Asfloat := tela.tela.itsaida.Items[i].psliquido;
        end;
        cdsitsaidavlunitario.AsFloat := tela.tela.itsaida.Items[i].vlunitario;
        cdsitsaidavlfrete.ascurrency := tela.tela.itsaida.Items[i].vlfrete;
        if tela.tela.tpsaida.tpentsai = _E then
        begin
          cdsitsaidaBORECUPERAICMS.AsString   := qregistro.StringdoCodigo(_produto, cdsitsaidacdproduto.asinteger, _BORECUPERAICMS);
          cdsitsaidaBORECUPERAIPI.AsString    := qregistro.StringdoCodigo(_produto, cdsitsaidacdproduto.asinteger, _BORECUPERAIPI);
          cdsitsaidaBORECUPERAcofins.AsString := qregistro.StringdoCodigo(_produto, cdsitsaidacdproduto.asinteger, _BORECUPERAcofins);
          cdsitsaidaborecuperapis.asstring    := qregistro.StringdoCodigo(_produto, cdsitsaidacdproduto.asinteger, _BORECUPERApis);
        end;
        // ***** aqui estava cdstpis, mudei para nustpis - verificar porque estava antes e se algum momento passa aqui
        if cdsitsaidanustpis.Asinteger in [1, 2] then
        begin
          cdsitsaidaalpis.Asfloat := tela.tela.itsaida.Items[i].alpis
        end
        else
        begin
          cdsitsaidaalpis.clear;
        end;
        if cdsitsaidanustcofins.Asinteger in [1, 2] then
        begin
          cdsitsaidaalcofins.Asfloat := tela.tela.itsaida.Items[i].alcofins
        end
        else
        begin
          cdsitsaidaalcofins.clear;
        end;
        if tela.tela.itsaida.Items[i].cdmodbcicms > 0 then
        begin
          cdsitsaidacdmodbcicms.asinteger := tela.tela.itsaida.Items[i].cdmodbcicms;
        end;
        if tela.tela.itsaida.Items[i].cdmodbcsticms > 0 then
        begin
          cdsitsaidacdmodbcsticms.asinteger := tela.tela.itsaida.Items[i].cdmodbcsticms;
        end;
        cdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB.AsCurrency := tela.tela.itsaida.Items[i].PRMRGVLADICIONADOICMSSUBTRIB;
        cdsitsaidaalicms.Asfloat := tela.tela.itsaida.Items[i].alicms;
        cdsitsaidaalipi.Asfloat := tela.tela.itsaida.Items[i].alipi;
        RegistraInformacao_(cdsitsaida);
      end;
    except
      actCancelarExecute(nil);
      bonovo := false;
      result := false;
    end;
    cdsitsaida.first;
    registro.set_grade_item(self, false);
    abrir(cdscdsaida.asinteger);
  finally
    cdsitsaida.EnableControls;
    freeandnil(frmprogressbar);
  end;
end;

procedure Tfrmsaida.SetSaidaReferenciadaFocusing;
begin
  tbvreferenciadaNUDOCUMENTO.options.focusing := cdssaidareferenciada.fieldbyname(_bodigitarchave).asstring <> _s;
  tbvreferenciadaNUCHAVENFE.options.focusing := cdssaidareferenciada.fieldbyname(_bodigitarchave).asstring = _s;
end;

procedure Tfrmsaida.ImprimirCartaCorrecao(dsxml:string);
begin
  Loadnfe;
  nfe.EventoNFe.Evento.Clear;
  nfe.EventoNFe.LerXMLFromString(dsxml);
  NFEImprimirCartaCorrecao(nfe);
end;

procedure Tfrmsaida.setst;
  procedure set_st(nmst:string);
  var
    cdst : string;
    regrast : TRegraST;
  begin
    if (cdsitsaidacdproduto.AsString = '') or (cdsitsaidacdproduto.AsString = cdsitsaidacdproduto.OldValue) then
    begin
      exit;
    end;
    regrast := TRegraST.Create;
    try
      cdst := regrast.GetST(_saida, cdsitsaidacdproduto.AsInteger, cdsitsaidacdcfop.AsInteger, nmst);
    finally
      FreeAndNil(regrast);
    end;
    if cdst <> '' then
    begin
      cdsitsaida.FieldByName(_nust+nmst).asstring := cdst;
    end;
  end;
begin
  set_st(_icms);
  set_st(_ipi);
  set_st(_pis);
  set_st(_cofins);
end;

procedure Tfrmsaida.Novo(cdittransporte, cdtpsaida: integer; dtemissao : TDate);
var
  q : TClasseQuery;
  cdtransporte, cdpedido, nupedido : string;
  prcomissaosaida, prcomissaoitsaida : double;
  procedure inserir_cabecalho;
  begin
    cdscdtpsaida.asinteger        := cdtpsaida;
    nupedido                     := q.q.fieldbyname(_nupedido).asstring;
    cdpedido                     := q.q.fieldbyname(_cdpedido).asstring;
    cdtransporte                 := q.q.fieldbyname(_cdtransporte).asstring;
    cdsdtemissao.AsDateTime      := dtemissao;
    cdsdtsaida.AsDateTime        := dtemissao;
    cdscdtransporte.asstring     := q.q.fieldbyname(_cdtransporte).asstring;
    cds.fieldbyname(_cdcliente).asstring        := q.q.fieldbyname(_cdcliente).asstring;
    cdscdcondpagto.asstring      := q.q.fieldbyname(_cdcondpagto).asstring;
    cdscdrepresentante.asstring  := q.q.fieldbyname(_cdrepresentante).asstring;
    cds.fieldbyname(_cdtransportadora).asstring := q.q.fieldbyname(_cdtransportadora).asstring;
    cdsvlfrete.ascurrency        := 0;
    cdsVLDESCONTO.OnValidate     := nil;
    cdsvldesconto.ascurrency     := q.q.fieldbyname(_vldesconto).AsCurrency;
    cdsVLDESCONTO.OnValidate     := cdsVLDESCONTOValidate;
    if booleanstatus(_cliente, q.q.fieldbyname(_cdcliente).asstring, _bogerarcomissao) then
    begin
      cdsprcomissao.AsCurrency := q.q.fieldbyname(_prcomissao).AsCurrency
    end
    else
    begin
      cdsprcomissao.AsCurrency := 0;
    end;
  end;
begin
  codigoinsercao := 0;
  edtcodigo.clear;
  tela.tela.tpsaida.cdserie := qregistro.inteirodocodigo(_tpsaida, cdtpsaida, _cdserie);
  actNovoExecute(nil);
  bonovo := true;
  q            := TClasseQuery.create;
  cds.DisableControls;
  cdsitsaida.DisableControls;
  try
    q.q.open('select p.cdcliente'+
                   ',p.cdcondpagto'+
                   ',p.cdrepresentante'+
                   ',te.cdtransportadora'+
                   ',p.prcomissao'+
                   ',p.nupedido'+
                   ',p.cdpedido'+
                   ',te.cdtransporte'+
                   ',p.vldesconto '+
             'from transporte te ' +
             'inner join ittransporte i on i.cdtransporte=te.cdtransporte and i.cdempresa=te.cdempresa '+
             'inner join pedido p on p.cdpedido=i.cdpedido and p.cdempresa=i.cdempresa '+
             'left join transportadora t on t.cdtransportadora=te.cdtransportadora and t.cdempresa=te.cdempresa ' +
             'where te.'+get_cd_empresa+' and i.cdittransporte='+inttostr(cdittransporte));
    inserir_cabecalho;
    //  Carregar as informações do Item do Transporte
    q.q.Close;
    q.q.open('select i.cddigitado'+
                   ',i.cdproduto'+
                   ',i.qtitem'+
                   ',i.vlunitario' +
                   ',p.nmproduto'+
                   ',p.nuclfiscal'+
                   ',p.borecuperaicms'+
                   ',p.borecuperaipi'+
                   ',p.borecuperapis'+
                   ',p.borecuperacofins'+
                   ',u.nmunidade'+
                   ',tp.boservico'+
                   ',p.psliquido'+
                   ',p.psbruto'+
                   ',I.CDITPEDIDO'+
                   ',p.bocomissao ' +
             'from itittransporte i '+
             'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
             'left join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and tp.cdempresa=p.cdempresa '+
             'inner join unidade u on u.cdunidade=p.cdunidade and u.cdempresa=p.cdempresa '+
             'where i.'+get_cd_empresa+' and i.cdittransporte='+inttostr(cdittransporte));
    while not q.q.eof do
    begin
      produto.Select(q.q.fieldbyname(_cdproduto).AsInteger);
      produto.tpproduto.select(produto.cdtpproduto);
      produto.CheckDados;
      if (produto.cdtpitem <> _09) and (tela.tela.tpsaida.serie.boservico = _s) then
      begin
        messagedlg('O produto '+inttostr(produto.cdproduto)+' '+produto.nmproduto+#13'possui o tipo de item '+produto.cdtpitem+' que não permite ser lançado em uma nota de serviço.', mtinformation, [mbok], 0);
        abort;
      end;
      if (produto.cdtpitem = _09) and (tela.tela.tpsaida.serie.boservico <> _s) then
      begin
        messagedlg('O produto '+inttostr(produto.cdproduto)+' '+produto.nmproduto+#13'possui o tipo de item '+produto.cdtpitem+' que não permite ser lançado em uma nota que não seja de serviço.', mtinformation, [mbok], 0);
        abort;
      end;
      if (produto.tpproduto.boestoque = _s) and
         (tela.tela.tpsaida.boestoque = _s) and
         (not empresa.material.produto.bovendaestoquezerado) and
         ((produto.qtestoque - q.q.fieldbyname(_qtitem).Asfloat) < 0) then
      begin
        messagedlg('Produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+' com estoque '+FormatFloat(__decimal3, produto.qtestoque)+'.'#13'Digite um produto que tenha o estoque acima do pedido para continuar', mtinformation, [mbok], 0);
        abort;
      end;
      cdsitsaida.Insert;
      cdsitsaidacditsaida.AsString      := GerarCodigo(_itsaida);
      cdsitsaidacdtpregimeicms.AsString := empresa.get_cdtpregimeicms;
      cdsitsaidacdpedido.asstring       := cdpedido;
      cdsitsaidanupedido.asstring       := nupedido;
      cdsitsaidacditpedido.asstring     := q.q.fieldbyname(_cditpedido).asstring;
      cdsitsaidacddigitado.asstring     := q.q.fieldbyname(_cddigitado).asstring;
      cdsitsaidacdcfop.asstring         := cdscdcfop.asstring;
      if BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, True) then
      begin
        if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).AsString, _cduf)) then
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopfufsubtrib
        end
        else
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopdufsubtrib;
        end;
      end
      else if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).AsString, _cduf)) then
      begin
        cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopfuf
      end
      else
      begin
        cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopduf;
      end;
      cdsitsaidacdproduto.asstring      := q.q.fieldbyname(_cdproduto).asstring;
      cdsitsaidanmproduto.asstring      := q.q.fieldbyname(_nmproduto).asstring;
      cdsitsaidanmunidade.asstring      := q.q.fieldbyname(_nmunidade).asstring;
      cdsitsaidanuclfiscal.asstring     := q.q.fieldbyname(_nuclfiscal).asstring;
      cdsitsaidaqtitem.Asfloat          := q.q.fieldbyname(_qtitem).Asfloat;
      if q.q.fieldbyname(_boservico).asstring <> _S then
      begin
        cdsitsaidapsbruto.Asfloat   := q.q.fieldbyname(_psbruto).Asfloat * q.q.fieldbyname(_qtitem).Asfloat;
        cdsitsaidapsliquido.Asfloat := q.q.fieldbyname(_psliquido).Asfloat * q.q.fieldbyname(_qtitem).Asfloat;
      end;
      cdsitsaidavlunitario.asfloat  := q.q.fieldbyname(_vlunitario).AsFloat;
      if tela.tela.tpsaida.tpentsai = _E then
      begin
        cdsitsaidaborecuperaicms.asstring   := q.q.fieldbyname(_borecuperaicms).asstring;
        cdsitsaidaborecuperaipi.asstring    := q.q.fieldbyname(_borecuperaipi).asstring;
        cdsitsaidaborecuperacofins.asstring := q.q.fieldbyname(_borecuperacofins).asstring;
        cdsitsaidaborecuperapis.asstring    := q.q.fieldbyname(_borecuperapis).asstring;
      end;
      // comissao
      cdsitsaidabocomissao.AsString := q.q.fieldbyname(_bocomissao).asstring;
      prcomissaosaida               := cdsprcomissao.asfloat;
      prcomissaoitsaida             := tproduto.VerificarComissao(cdsitsaidacdproduto.AsString, prcomissaosaida);
      if prcomissaoitsaida > 0 then
      begin
        cdsitsaidavlcomissao.Asfloat    := prcomissaoitsaida;
        cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.AsCurrency * prcomissaoitsaida / 100, tela.tela.tpsaida.boarredondar = _s);
      end;
      if (cdsitsaidabocomissao.asstring = _S) and (tela.tela.tpsaida.bocomissao = _s) then
      begin // ratear o desconto de acordo com o valor total
        if cdsbodescontocomissao.asstring = _S then
        begin
          cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.ascurrency * (cdsprcomissao.asfloat / 100), tela.tela.tpsaida.boarredondar = _s)
        end
        else
        begin
          cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.ascurrency * (cdsprcomissao.asfloat / 100), tela.tela.tpsaida.boarredondar = _s);
        end;
      end;
      setst;
      cdsitsaida.Post;
      q.q.next;
    end;
    GravartotaisClasse;
    // recalcular por causa dos descontos
    q.q.First;
    cdsitsaida.First;
    while not q.q.eof do
    begin
      if q.q.RecNo <> 1 then
      begin
        cdsitsaida.next;
      end;
      if cdsvldesconto.AsCurrency > 0 then
      begin
        cdsitsaida.Edit;
        cdsitsaidavldesconto.AsCurrency := QRotinas.Roundqp((cdsitsaidavltotal.AsCurrency / cdsvldesconto.AsCurrency) * cdsvldesconto.AsCurrency, tela.tela.tpsaida.boarredondar = _s);
        cdsitsaidaprdesconto.AsCurrency := (cdsitsaidavltotal.AsCurrency / cdsvldesconto.AsCurrency) * 100;
      end;
      q.q.next;
    end;
    GravartotaisClasse;
    tela.tela.GerarDuplicata;
    AtualizarDuplicata;
    if not registro.aplicar_atualizacao then
    begin
      Exit;
    end;
    if TodosPedidosTransporteComNotaFiscal(cdtransporte) then
    begin
      ExecutaSQL('update transporte set cdsttransporte=2 where '+get_cd_empresa+' and transporte.cdtransporte='+cdtransporte);
    end;
    registro.set_grade_item(self, false);
    abrir(cdscdsaida.asinteger);
  finally
    bonovo := false;
    freeandnil(q);
    cds.EnableControls;
    cdsitsaida.EnableControls;
  end;
end;

procedure Tfrmsaida.NovoPedido(cdpedido: integer; cditpedido, cditpedidoestrutura: string; cdtpsaida, cdcondpagto:integer; qtd, qtp: string);
  function makesqlitpedidoestrutura:string;
  begin
    if cditpedidoestrutura = '' then
    begin
      result := '';
      Exit;
    end;
    result := 'select nuestrutural,cditpedidoestrutura from itpedidoestrutura where cdempresa='+empresa.cdempresa.tostring+' and '+cditpedidoestrutura;
  end;
  function makesqlit:string;
  begin
    result := 'select i.cddigitado'+
                    ',i.cdproduto'+
                    ',i.cditpedido'+
                    ',i.cdpedido'+
                    ',i.dsformula'+
                    ',i.dsobservacao'+
                    ',i.qtitem-i.qtatendida qtitem'+
                    ',i.qtitem qtitemoriginal'+
                    ',i.vlunitario' +
                    ',i.vldesconto'+
                    ',p.nmproduto'+
                    ',p.nuclfiscal'+
                    ',p.borecuperaicms'+
                    ',p.borecuperaipi'+
                    ',p.borecuperapis'+
                    ',p.borecuperacofins'+
                    ',p.alcofins'+
                    ',p.alpis'+
                    ',u.nmunidade'+
                    ',p.cdmodbcicms'+
                    ',p.cdmodbcsticms'+
                    ',i.almva'+
                    ',i.alipi'+
                    ',i.qtlargura1'+
                    ',i.qtcomprimento1'+
                    ',i.qtaltura1'+
                    ',i.alicms'+
                    ',i.alicmssubtrib'+
                    ',t.boservico'+
                    ',i.vldesconto'+
                    ',p.psliquido'+
                    ',p.psbruto'+
                    ',i.qtpeso'+
                    ',i.NUCOTACAO'+
                    ',I.BOIPIBCICMS'+
                    ',i.NUITEM'+
                    ',i.dsobservacaointerna'+
                    ',p.bocomissao ' +
               'from itpedido i '+
               'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
               'left join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
               'inner join unidade u on u.cdunidade=p.cdunidade and u.cdempresa=p.cdempresa '+
               'where i.'+get_cd_empresa+' and '+cditpedido+' '+
               'order by i.cditpedido';
  end;
  function makesql:string;
  begin
    result := 'select p.cdcliente'+
                    ',p.cdcondpagto'+
                    ',p.cdrepresentante'+
                    ',p.prcomissao'+
                    ',p.nupedido'+
                    ',p.cdtransportadora'+
                    ',p.vlfrete'+
                    ',P.VLTOTAL'+
                    ',P.DSOBSERVACAO'+
                    ',p.nmredespacho'+
                    ',t.BOINFADICIONALORDCOMPRA'+
                    ',t.BOINFADICIONALformula'+
                    ',t.bomadeira'+
                    ',T.BOOBSERVACAOCOPIARSAIDA'+
                    ',t.BOITEMOBSERVACAOINFADICIONAL'+
                    ',P.cdtpcobranca'+
                    ',p.cdtpfrete '+
              'from pedido p ' +
              'inner join tppedido t on t.cdtppedido=p.cdtppedido and t.cdempresa=p.cdempresa '+
              'where p.'+get_cd_empresa+' and p.cdpedido='+inttostr(cdpedido);
  end;
var
  q : TClasseQuery;
  nupedido : string;
  boitemobservacaoinfadicional, boinfadicionalformula, boinfadicionalordcompra, bomadeira : Boolean;
  prcomissaosaida, prcomissaoitsaida : double;
  vldesconto : currency;
  function get_nuestrutura:string;
  var
    q : TClasseQuery;
    sql : TStrings;
  begin
    result := '';
    if makesqlitpedidoestrutura = '' then
    begin
      Exit;
    end;
    q := TClasseQuery.create(makesqlitpedidoestrutura);
    sql := TStringList.Create;
    try
      while not q.q.Eof do
      begin
        if result <> '' then
        begin
          result := Result + ', ';
        end;
        result := result + q.q.fieldbyname(_nuestrutural).AsString;
        sql.Add('update itpedidoestrutura set bofaturado=''S'' where cdempresa='+empresa.cdempresa.tostring+' and cditpedidoestrutura='+q.q.fieldbyname(_cditpedidoestrutura).asstring);
        q.q.Next;
      end;
      if result <> '' then
      begin
        result := 'NUMERO DE ESTRURURA(S): '+result;
        ExecutaScript(sql);
      end;
    finally
      FreeAndNil(q);
      FreeAndNil(sql);
    end;
  end;
  procedure processar_cabecalho;
  begin
    q.q.open(makesql);
    BOINFADICIONALORDCOMPRA        := q.q.fieldbyname(_BOINFADICIONALORDCOMPRA).asstring = _S;
    BOINFADICIONALformula          := q.q.fieldbyname(_BOINFADICIONALformula).asstring = _S;
    bomadeira                      := q.q.FieldByName(_bomadeira).AsString = _S;
    boitemobservacaoinfadicional   := q.q.fieldbyname(_boitemobservacaoinfadicional).asstring = _S;
    cdscdtpsaida.asinteger         := cdtpsaida;
    cdsnmredespacho.AsString       := q.q.fieldbyname(_nmredespacho).asstring;
    cdscdtpfrete.OnValidate := nil;
    cdscdtpfrete.AsString          := q.q.fieldbyname(_cdtpfrete).asString;
    cdscdtpcobranca.AsString       := q.q.fieldbyname(_cdtpcobranca).asstring;
    cdsprcomissao.AsString         := q.q.fieldbyname(_prcomissao).asstring;
    nupedido                       := q.q.fieldbyname(_nupedido).asstring;
    cdsdtemissao.asdatetime        := DtBanco;
    cdsdtsaida.asdatetime          := DtBanco;
    cdshrsaida.AsDateTime          := HrBanco;
    cds.fieldbyname(_cdcliente).asstring          := q.q.fieldbyname(_cdcliente).asstring;
    if cdcondpagto > 0 then
    begin
      cdscdcondpagto.asinteger       := cdcondpagto;
    end;
    cdscdrepresentante.asstring    := q.q.fieldbyname(_cdrepresentante).asstring;
    cds.fieldbyname(_cdtransportadora).AsString   := q.q.fieldbyname(_cdtransportadora).asstring;
    cdsVLFRETE.OnValidate          := nil;
    cdsvlfrete.AsCurrency          := q.q.fieldbyname(_vlfrete).AsCurrency;
    cdsVLFRETE.OnValidate          := cdsVLFRETEValidate;
    cdsdsobservacao.asstring := '';
    if tela.tela.tpsaida.boobservacaotpsaida = _s then
    begin
      cdsdsobservacao.asstring := NomedoCodigo(_tpsaida, cdsCDTPSAIDA.AsString, _dsobservacao);
    end;
    if q.q.fieldbyname(_boobservacaocopiarsaida).asstring = _S then
    begin
      if cdsdsobservacao.asstring <> '' then
      begin
        cdsdsobservacao.asstring := cdsdsobservacao.asstring + #13;
      end;
      cdsdsobservacao.asstring := cdsdsobservacao.asstring + q.q.fieldbyname(_dsobservacao).asstring;
    end;
    if booleanstatus(_cliente, q.q.fieldbyname(_cdcliente).asstring, _bogerarcomissao) then
    begin
      cdsprcomissao.AsCurrency := q.q.fieldbyname(_prcomissao).AsCurrency
    end
    else
    begin
      cdsprcomissao.AsCurrency := 0;
    end;
    cdsdsobservacao.AsString := cdsdsobservacao.AsString + get_nuestrutura;
  end;
  procedure inserir_imei_item(cditpedido:integer);
  var
    q : TClasseQuery;
  begin
    q := TClasseQuery.create;
    try
      q.q.open('select cditlote,nuimei from itpedidolote where cdempresa='+empresa.cdempresa.tostring+' and cditpedido='+cditpedido.tostring);
      while not q.q.eof do
      begin
        cdsitsaidalote.Insert;
        cdsitsaidaloteCDITLOTE.AsString := q.q.FieldByName(_cditlote).AsString;
        cdsitsaidaloteNUIMEI.AsString   := q.q.FieldByName(_nuimei).AsString;
        cdsitsaidalote.Post;
        q.q.next;
      end;
    finally
      q.Free;
    end;
  end;
  procedure processar_item;
  var
    qtitem, qtpeca : tstrings;
    i : Integer;
    procedure set_cfop_regra_st;
    var
      regrast : TRegraST;
    begin
      if cdsitsaidacdcfop.AsString <> '' then
      begin
        Exit;
      end;
      cdsitsaidacdcfop.AsString := cdscdcfop.AsString;
      if BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, True) then
      begin
        if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).AsString, _cduf)) then
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopfufsubtrib
        end
        else
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopdufsubtrib;
        end;
      end
      else
      begin
        if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).AsString, _cduf)) then
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopfuf
        end
        else
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopduf;
        end;
      end;
      setRegistroRegraST;
      regrast := TRegraST.Create;
      try
        if not regrast.GetRegraST(cdsitsaida, reg) then
        begin
          setst;
          if BooleandoCodigo(_sticms, cdsitsaidanusticms.AsString, _boicmssubtrib, _nu, True) then
          begin
            if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).AsString, _cduf)) then
            begin
              cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopfufsubtrib
            end
            else
            begin
              cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopdufsubtrib;
            end;
          end
          else
          begin
            if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)) then
            begin
              cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopfuf
            end
            else
            begin
              cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopduf;
            end;
          end;
        end;
      finally
        FreeAndNil(regrast);
      end;
      if (q.q.RecNo = 1) and (cdscdcfop.asstring = '') then
      begin
        cdscdcfop.AsString := cdsitsaidacdcfop.AsString;
      end;
    end;
    procedure set_dataset;
    begin
      q.q.Close;
      q.q.open(makesqlit);
      frmprogressbar.gau.MaxValue := q.q.RecordCount;
    end;
    procedure set_progressbar;
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      frmprogressbar.pnl.Caption  := 'Inserindo item';
      Application.ProcessMessages;
    end;
    procedure check_estoque_produto;
    begin
      if (produto.tpproduto.boestoque = _s) and
         (tela.tela.tpsaida.boestoque = _s) and
         (not empresa.material.produto.bovendaestoquezerado) and
         ((produto.qtestoque - q.q.fieldbyname(_qtitem).Asfloat) < 0) then
      begin
        messagedlg('Produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+' com estoque '+FormatFloat(__decimal3, produto.qtestoque)+'.'#13'Digite um produto que tenha o estoque acima do pedido para continuar', mtinformation, [mbok], 0);
        abort;
      end;
    end;
    procedure set_informacao_adicional;
      function get_madeira:string;
      begin
        if q.q.FieldByName(_nmunidade).AsString = 'M3' then
        begin
          result := q.q.FieldByName(_QTLARGURA1).asstring+'x'+q.q.FieldByName(_qtcomprimento1).AsString+'x'+q.q.FieldByName(_QTALTURA1).AsString
        end
        else if q.q.FieldByName(_nmunidade).AsString = 'ML' then
        begin
          result := qtpeca[i]+' peça(s) de '+q.q.FieldByName(_QTCOMPRIMENTO1).AsString+' comprimento'
        end
        else if q.q.FieldByName(_nmunidade).AsString = 'M2' then
        begin
          result := q.q.FieldByName(_QTLARGURA1).asstring+'x'+q.q.FieldByName(_QTCOMPRIMENTO1).AsString;
        end;
      end;
    begin
      if BOINFADICIONALORDCOMPRA and (q.q.fieldbyname(_nucotacao).asstring <> '') then
      begin
        cdsitsaidaDSINFADICIONAL.asstring := 'O.C. '+q.q.fieldbyname(_nucotacao).asstring+' - '+q.q.fieldbyname(_nuitem).asstring;
      end;
      if BOINFADICIONALformula and (q.q.fieldbyname(_dsformula).asstring <> '') then
      begin
        if bomadeira then
        begin
          cdsitsaidaDSINFADICIONAL.asstring := get_madeira
        end
        else if BOINFADICIONALORDCOMPRA then
        begin
          cdsitsaidaDSINFADICIONAL.asstring := cdsitsaidaDSINFADICIONAL.asstring+#13+q.q.fieldbyname(_dsformula).asstring
        end
        else
        begin
          cdsitsaidaDSINFADICIONAL.asstring := q.q.fieldbyname(_dsformula).asstring;
        end;
      end;
      if boitemobservacaoinfadicional and (q.q.fieldbyname(_dsobservacao).asstring <> '') then
      begin
        if cdsitsaidaDSINFADICIONAL.asstring <> '' then
        begin
          cdsitsaidaDSINFADICIONAL.asstring := cdsitsaidaDSINFADICIONAL.asstring+#13+q.q.fieldbyname(_dsobservacao).asstring
        end
        else
        begin
          cdsitsaidaDSINFADICIONAL.asstring := q.q.fieldbyname(_dsobservacao).asstring;
        end;
      end;
    end;
  begin
    i := 0;
    vldesconto := 0;
    qtitem := TStringList.Create;
    qtpeca := TStringList.Create;
    try
      qtitem.Text := qtd;
      qtpeca.Text := qtp;
      set_dataset;
      while not q.q.eof do
      begin
        set_progressbar;
        produto.Select(q.q.fieldbyname(_cdproduto).AsInteger);
        produto.CheckDados;
        check_estoque_produto;
        cdsitsaida.Insert;
        cdsitsaidacditsaida.AsString   := GerarCodigo(_itsaida);
        cdsitsaidacditpedido.asstring  := q.q.fieldbyname(_cditpedido).asstring;
        cdsitsaidacdtpregimeicms.AsString := empresa.get_cdtpregimeicms;
        cdsitsaidacdpedido.AsString    := q.q.fieldbyname(_cdpedido).asstring;
        cdsitsaidacditpedido.AsString    := q.q.fieldbyname(_cditpedido).asstring;
        cdsitsaidanupedido.asstring    := nupedido;
        cdsitsaidaDSOBSERVACAO.AsString := q.q.fieldbyname(_dsobservacaointerna).AsString;
        cdsitsaidacddigitado.asstring  := q.q.fieldbyname(_cddigitado).asstring;
        cdsitsaidacdproduto.asstring   := q.q.fieldbyname(_cdproduto).asstring;
        cdsitsaidanucotacao.AsString   := q.q.fieldbyname(_nucotacao).asstring;
        cdsitsaidaboipibcicms.AsString := q.q.fieldbyname(_boipibcicms).asstring;
        cdsitsaidanuitem.AsString      := q.q.fieldbyname(_nuitem).asstring;
        cdsitsaidanmproduto.asstring   := q.q.fieldbyname(_nmproduto).asstring;
        cdsitsaidanmunidade.asstring   := q.q.fieldbyname(_nmunidade).asstring;
        cdsitsaidanuclfiscal.asstring  := q.q.fieldbyname(_nuclfiscal).asstring;
        set_informacao_adicional;
        set_cfop_regra_st;
        if q.q.fieldbyname(_cdmodbcicms).asstring <> '' then
        begin
          cdsitsaidacdmodbcicms.asstring := q.q.fieldbyname(_cdmodbcicms).asstring;
        end;
        if q.q.fieldbyname(_cdmodbcsticms).asstring <> '' then
        begin
          cdsitsaidacdmodbcsticms.asstring := q.q.fieldbyname(_cdmodbcsticms).asstring;
        end;
        if q.q.fieldbyname(_cdmodbcsticms).AsInteger = 5 then
        begin
          cdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB.AsCurrency := q.q.fieldbyname(_almva).AsCurrency;
          cdsitsaidaalicmssubtrib.AsCurrency := q.q.fieldbyname(_alicmssubtrib).AsCurrency;
          cdsitsaidaalicms.asstring := q.q.fieldbyname(_alicms).asstring;
        end
        else
        begin
          cdsitsaidaalicms.asstring := q.q.fieldbyname(_alicms).asstring;
        end;
        cdsitsaidaprtotaltributo.Asfloat := produto.ObterPrtotaltributo(cdsitsaidacdcfop.asinteger, produto.nuclfiscal, produto.cdorigem);
        cdsitsaidaqtitem.AsString        := qtitem[i];
        cdsitsaidavldesconto.AsCurrency := ((cdsitsaidaqtitem.AsFloat * q.q.FieldByName(_vldesconto).AsCurrency) / q.q.FieldByName(_qtitem+_original).AsFloat);
        vldesconto := vldesconto + cdsitsaidavldesconto.AsCurrency;
        cdsitsaidaqtpeca.AsString        := qtpeca[i];
        cdsitsaidavlunitario.AsFloat     := q.q.fieldbyname(_vlunitario).AsFloat;
        cdsitsaidaVLTOTAL.AsCurrency     := cdsitsaidaqtitem.AsFloat * q.q.fieldbyname(_vlunitario).AsFloat;
        if q.q.fieldbyname(_boservico).asstring <> _S then
        begin
          if q.q.fieldbyname(_qtpeso).AsCurrency > 0 then
          begin
            cdsitsaidapsbruto.Asfloat   := q.q.fieldbyname(_qtpeso).Asfloat * cdsitsaidaqtitem.Asfloat;
            cdsitsaidapsliquido.Asfloat := q.q.fieldbyname(_qtpeso).Asfloat * cdsitsaidaqtitem.Asfloat;
          end
          else
          begin
            cdsitsaidapsbruto.Asfloat   := q.q.fieldbyname(_psbruto).Asfloat * q.q.fieldbyname(_qtitem).Asfloat;
            cdsitsaidapsliquido.Asfloat := q.q.fieldbyname(_psliquido).Asfloat * q.q.fieldbyname(_qtitem).Asfloat;
          end;
        end;
        cdsitsaidaalipi.asstring          := q.q.fieldbyname(_alipi).asstring;
        if tela.tela.tpsaida.tpentsai = _e then
        begin
          cdsitsaidaborecuperaicms.asstring   := q.q.fieldbyname(_borecuperaicms).asstring;
          cdsitsaidaborecuperaipi.asstring    := q.q.fieldbyname(_borecuperaipi).asstring;
          cdsitsaidaborecuperacofins.asstring := q.q.fieldbyname(_borecuperacofins).asstring;
          cdsitsaidaborecuperapis.asstring    := q.q.fieldbyname(_borecuperapis).asstring;
        end;
        // comissao
        cdsitsaidabocomissao.asstring     := q.q.fieldbyname(_bocomissao).asstring;
        if produto.cdtpcomissaoproduto <> 0 then
        begin
          cdsitsaidacdtpcomissao.asstring := tela.tela.ObterTpComissao(inttostr(produto.cdtpcomissaoproduto), cdscdrepresentante.asstring);
          prcomissaoitsaida               := DoubledoCodigo(_tpcomissao, cdsitsaidacdtpcomissao.asstring, _prcomissao);
          cdsitsaidaprcomissao.Asfloat    := prcomissaoitsaida;
          if (cdsitsaidacdtpcomissao.asstring <> '') and (not cdssaidatpcomissao.Locate(_cdtpcomissao, cdsitsaidacdtpcomissao.asstring, [])) then
          begin
            cdssaidatpcomissao.Insert;
            cdssaidatpcomissaoCDTPCOMISSAO.asstring := cdsitsaidacdtpcomissao.asstring;
            cdssaidatpcomissaoPRCOMISSAO.Asfloat    := prcomissaoitsaida;
            cdssaidatpcomissaoCDSAIDA.asstring      := cdscdsaida.asstring;
            cdssaidatpcomissao.Post;
          end;
        end
        else
        begin
          prcomissaosaida              := cdsprcomissao.asfloat;
          prcomissaoitsaida            := Tproduto.VerificarComissao(cdsitsaidacdproduto.asstring, prcomissaosaida);
          cdsitsaidaprcomissao.Asfloat := prcomissaoitsaida;
        end;
        if (cdsitsaida.State = dsedit) or (cdsitsaida.State = dsinsert) then
        begin
          cdsitsaida.Post;
        end;
        inserir_imei_item(q.q.fieldbyname(_cditpedido).AsInteger);
        Inc(i);
        q.q.next;
      end;
    finally
      FreeAndNil(qtitem);
      FreeAndNil(qtpeca);
    end;
  end;
  procedure recalcular_item;
  begin
    cdsitsaida.First;
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      frmprogressbar.pnl.Caption  := 'Calculando desconto';
      Application.ProcessMessages;
      if q.q.RecNo <> 1 then
      begin
        cdsitsaida.next;
      end;
      if cdsitsaidaprcomissao.Asfloat > 0 then
      begin
        if cdsitsaida.State = dsbrowse then
        begin
          cdsitsaida.Edit;
        end;
        cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp((cdsitsaidavltotal.AsCurrency - cdsitsaidaVLDESCONTO.AsCurrency) * cdsitsaidaprcomissao.Asfloat / 100, tela.tela.tpsaida.boarredondar = _s);
      end;
      if (cdsitsaidabocomissao.asstring = _S) and (cdsprcomissao.asfloat > 0) then
      begin // ratear o desconto de acordo com o valor total
        if cdsbodescontocomissao.asstring = _S then
        begin
          cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp((cdsitsaidavltotal.AsCurrency - cdsitsaidaVLDESCONTO.AsCurrency) * (cdsprcomissao.asfloat / 100), tela.tela.tpsaida.boarredondar = _s)
        end
        else
        begin
          cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp((cdsitsaidavltotal.AsCurrency - cdsitsaidaVLDESCONTO.AsCurrency) * (cdsprcomissao.asfloat / 100), tela.tela.tpsaida.boarredondar = _s);
        end;
      end;
      if (cdsitsaida.State = dsedit) or (cdsitsaida.State = dsinsert) then
      begin
        cdsitsaida.Post;
      end;
      q.q.next;
    end;
  end;
begin
  codigoinsercao := 0;
  edtcodigo.clear;
  q              := TClasseQuery.create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  tela.tela.tpsaida.cdserie := qregistro.inteirodocodigo(_tpsaida, cdtpsaida, _cdserie);
  actNovoExecute(nil);
  cds.DisableControls;
  cdsitsaida.DisableControls;
  try
    frmprogressbar.FormStyle := fsStayOnTop;
    frmprogressbar.pnl.Caption := 'Inserindo registro';
    frmprogressbar.Show;
    bonovo := true;
    frmprogressbar.pnl.Caption := 'Inserindo nota';
    Application.ProcessMessages;
    processar_cabecalho;
    frmprogressbar.pnl.Caption := 'Inserindo itens';
    Application.ProcessMessages;
    processar_item;

    cdsVLDESCONTO.OnValidate       := nil;
    cdsPRDESCONTO.OnValidate       := nil;
    cdsvldesconto.ascurrency       := vldesconto;
    cdsVLDESCONTO.OnValidate       := cdsVLDESCONTOValidate;
    cdsPRDESCONTO.OnValidate       := cdsPRDESCONTOValidate;

    GravartotaisClasse;
    // recalcular por causa dos descontos
    q.q.First;
    recalcular_item;
    GravartotaisClasse;
    tela.tela.GerarDuplicata;
    AtualizarDuplicata;
    if not registro.aplicar_atualizacao then
    begin
      Exit;
    end;
    loadnfe;
    registro.set_grade_item(self, false);
    tela.tela.select(cds);
    tela.tela.itsaida.Ler(cdsitsaida, cdsitsaidalote);
    tela.salvar;
    abrir(cdscdsaida.asinteger);
  finally
    bonovo := false;
    FreeAndNil(q);
    FreeAndNil(frmprogressbar);
    cds.EnableControls;
    cdsitsaida.EnableControls;
  end;
end;

procedure Tfrmsaida.Novo(cdordserv, cdtpsaida, cdcondpagto:integer; cdcliente, cditordserv: string);
  function makesql:string;
  begin
    result := 'select cdfuncionariovendedor'+
                    ',cdcliente'+
                    ',vldesconto'+
                    ',vlproduto + vlservico vltotal'+
                    ',cdstordserv'+
                    ',nuordserv'+
                    ',cdtpcobranca '+
              'from ordserv '+
              'where '+get_cd_empresa+' and cdordserv='+inttostr(cdordserv);
  end;
  function makesql_item:string;
  begin
    result := 'select i.cddigitado'+
                    ',i.cdproduto'+
                    ',i.cditordserv'+
                    ',i.cdordserv'+
                    ',i.qtitem'+
                    ',i.vlunitario' +
                    ',p.nmproduto'+
                    ',p.nuclfiscal'+
                    ',p.borecuperaicms'+
                    ',p.borecuperaipi'+
                    ',p.borecuperapis'+
                    ',p.borecuperacofins'+
                    ',u.nmunidade'+
                    ',t.boservico'+
                    ',p.psliquido'+
                    ',P.alicms'+
                    ',P.cdmodbcicms'+
                    ',P.cdmodbcsticms'+
                    ',p.psbruto'+
                    ',p.bocomissao ' +
              'from itordserv i '+
              'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
              'left join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
              'inner join unidade u on u.cdunidade=p.cdunidade and u.cdempresa=p.cdempresa '+
              'where i.'+get_cd_empresa+' and i.cdordserv='+inttostr(cdordserv)+' and '+cditordserv;
  end;
var
  q : TClasseQuery;
  prcomissaoitsaida, prcomissaosaida : double;
  cdstordserv, nuordserv: string;
  boatualizarcliente: boolean;
  nuregistro : Integer;
  vltotal , vldesconto : Currency;
  regrast : tregrast;
begin
  boatualizarcliente := false;
  codigoinsercao := 0;
  edtcodigo.clear;
  tela.tela.tpsaida.cdserie := qregistro.inteirodocodigo(_tpsaida, cdtpsaida, _cdserie);
  actNovoExecute(nil);
  bonovo := true;
  q            := TClasseQuery.create;
  cds.DisableControls;
  cdsitsaida.DisableControls;
  try
    q.q.open(makesql);
    cdscdtpsaida.asinteger   := cdtpsaida;
    cdscdtpcobranca.asstring := q.q.fieldbyname(_cdtpcobranca).asstring;
    cdsdtemissao.asdatetime  := DtBanco;
    cdsdtsaida.asdatetime    := DtBanco;
    cdshrsaida.AsDateTime    := hrbanco;
    cdscdcondpagto.asInteger := cdcondpagto;
    cdscdordserv.asInteger   := cdordserv;
    if cdcliente = '' then
    begin
      cds.fieldbyname(_cdcliente).asstring := q.q.fieldbyname(_cdcliente).asstring
    end
    else
    begin
      cds.fieldbyname(_cdcliente).asstring := cdcliente;
      boatualizarcliente    := true;
    end;
    vldesconto := q.q.fieldbyname(_vldesconto).AsCurrency;
    vltotal    := q.q.fieldbyname(_vltotal).AsCurrency;
    if gbxrepresentante.Visible and (q.q.FieldByName(_cdfuncionariovendedor).AsString <> '') then
    begin
      cds.FieldByName(_cdrepresentante).AsString := CodigodoCampo(_representante, q.q.FieldByName(_cdfuncionariovendedor).AsString, _cdfuncionario);
    end;
    nuordserv   := q.q.fieldbyname(_nuordserv).asstring;
    cdstordserv := q.q.fieldbyname(_cdstordserv).asstring;
    //  Carregar as informações do Item do Transporte
    q.q.Close;
    q.q.sql.text := makesql_item;
    q.q.open;
    nuregistro := 0;
    while not q.q.eof do
    begin
      Inc(nuregistro);
      cdsitsaida.Insert;
      cdsitsaidacdcfop.asstring := cdscdcfop.asstring;
      if BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, True) then
      begin
        if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)) then
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopfufsubtrib
        end
        else
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopdufsubtrib;
        end;
      end
      else
      begin
        if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)) then
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopfuf
        end
        else
        begin
          cdsitsaidacdcfop.asinteger := tela.tela.tpsaida.cdcfopduf;
        end;
      end;
      cdsitsaidacditsaida.asstring        := GerarCodigo(_itsaida);
      cdsitsaidacdtpregimeicms.asstring   := empresa.get_cdtpregimeicms;
      cdsitsaidacdordserv.asstring        := q.q.fieldbyname(_cdordserv).asstring;
      cdsitsaidanuordserv.asstring        := nuordserv;
      cdsitsaidacditordserv.asstring      := q.q.fieldbyname(_cditordserv).asstring;
      cdsitsaidacddigitado.asstring       := q.q.fieldbyname(_cddigitado).asstring;
      cdsitsaidacdproduto.asstring        := q.q.fieldbyname(_cdproduto).asstring;
      cdsitsaidanmproduto.asstring        := q.q.fieldbyname(_nmproduto).asstring;
      cdsitsaidanmunidade.asstring        := q.q.fieldbyname(_nmunidade).asstring;
      cdsitsaidanuclfiscal.asstring       := q.q.fieldbyname(_nuclfiscal).asstring;
      cdsitsaidaqtitem.Asfloat            := q.q.fieldbyname(_qtitem).Asfloat;
      setRegistroRegraST;
      regrast := TRegraST.Create;
      try
        if not regrast.GetRegraST(cdsitsaida, reg) then
        begin
          setst;
          if BooleandoCodigo(_sticms, cdsitsaidanusticms.asstring, _boicmssubtrib, _nu, True) then
          begin
            if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)) then
            begin
              cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopfufsubtrib
            end
            else
            begin
              cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopdufsubtrib;
            end;
          end
          else if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)) then
          begin
            cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopfuf
          end
          else
          begin
            cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopduf;
          end;
        end;
      finally
        FreeAndNil(regrast);
      end;
      if (nuregistro = 1) and (cdscdcfop.asstring = '') then
      begin
        cdscdcfop.asstring := cdsitsaidacdcfop.asstring;
      end;
      if q.q.fieldbyname(_cdmodbcicms).asstring <> '' then
      begin
        cdsitsaidacdmodbcicms.asstring   := q.q.fieldbyname(_cdmodbcicms).asstring;
      end;
      if q.q.fieldbyname(_cdmodbcsticms).asstring <> '' then
      begin
        cdsitsaidacdmodbcsticms.asstring := q.q.fieldbyname(_cdmodbcsticms).asstring;
      end;
      if q.q.fieldbyname(_cdmodbcsticms).AsInteger = 5 then
      begin
        cdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB.AsCurrency := q.q.fieldbyname(_almva).AsCurrency;
        cdsitsaidaalicmssubtrib.AsCurrency                := q.q.fieldbyname(_alicmssubtrib).AsCurrency;
        cdsitsaidaalicms.asstring                         := q.q.fieldbyname(_alicms).asstring;
      end
      else
      begin
        cdsitsaidaalicms.asstring := q.q.fieldbyname(_alicms).asstring;
      end;
      if q.q.fieldbyname(_boservico).asstring <> _S then
      begin
        cdsitsaidapsbruto.Asfloat   := q.q.fieldbyname(_psbruto).Asfloat   * q.q.fieldbyname(_qtitem).Asfloat;
        cdsitsaidapsliquido.Asfloat := q.q.fieldbyname(_psliquido).Asfloat * q.q.fieldbyname(_qtitem).Asfloat;
      end;
      cdsitsaidavlunitario.AsFloat  := q.q.fieldbyname(_vlunitario).AsFloat;
      if tela.tela.tpsaida.tpentsai = _e then
      begin
        cdsitsaidaborecuperaicms.asstring   := q.q.fieldbyname(_borecuperaicms).asstring;
        cdsitsaidaborecuperaipi.asstring    := q.q.fieldbyname(_borecuperaipi).asstring;
        cdsitsaidaborecuperacofins.asstring := q.q.fieldbyname(_borecuperacofins).asstring;
        cdsitsaidaborecuperapis.asstring    := q.q.fieldbyname(_borecuperapis).asstring;
      end;
      setst;
      cdsitsaidabocomissao.asstring     := q.q.fieldbyname(_bocomissao).asstring;
      prcomissaosaida    := cdsprcomissao.asfloat;
      prcomissaoitsaida  := Tproduto.VerificarComissao(cdsitsaidacdproduto.asstring, prcomissaosaida);
      if prcomissaoitsaida > 0 then
      begin
        cdsitsaidavlcomissao.Asfloat    := prcomissaoitsaida;
        cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.AsCurrency * (prcomissaoitsaida / 100), tela.tela.tpsaida.boarredondar = _s);
      end;
      if (cdsitsaidabocomissao.asstring = _S) and (not cdsprcomissao.IsNull) then
      begin // ratear o desconto de acordo com o valor total
        if cdsbodescontocomissao.asstring = _S then
        begin
          cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.AsCurrency * (cdsprcomissao.asfloat / 100), tela.tela.tpsaida.boarredondar = _s)
        end
        else
        begin
          cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.AsCurrency * (cdsprcomissao.asfloat / 100), tela.tela.tpsaida.boarredondar = _s);
        end;
      end;
      cdsitsaida.Post;
      q.q.next;
    end;
    GravartotaisClasse;
    cdsVLDESCONTO.AsCurrency := vldesconto * (cdsVLPRODUTO.AsCurrency + cdsVLSERVICO.AsCurrency) / vltotal;
    GravartotaisClasse;
    if boatualizarcliente then
    begin
      ExecutaSQL('update ordserv set cdcliente='+cdcliente+' where '+get_cd_empresa+' and cdordserv='+inttostr(cdordserv));
      ExecutaSQL('update duplicata set cdcliente='+cdcliente+' where '+get_cd_empresa+' and nuduplicata='+quotedstr(nuordserv)+' and dshistorico='+quotedstr(nuordserv));
    end;
    if cdstordserv <> _2 then
    begin
      tela.tela.GerarDuplicata;
      AtualizarDuplicata;
    end;
    if not registro.aplicar_atualizacao then
    begin
      Exit;
    end;
    if cdstordserv = _2 then
    begin
      ExecutaSQL('update duplicata set cdsaida='+cdscdsaida.asstring+' where '+get_cd_empresa+' and nuduplicata='+quotedstr(nuordserv)+' and dshistorico='+quotedstr(nuordserv));
    end;
    registro.set_grade_item(self, false);
    abrir(cdscdsaida.asinteger);
  finally
    bonovo := false;
    freeandnil(q);
    cds.EnableControls;
    cdsitsaida.EnableControls;
  end;
end;

procedure Tfrmsaida.Novo(cdittransporte:TStrings; cdtpsaida: integer; dtemissao : Tdate);
var
  q : TClasseQuery;
  cdpedido, nupedido : string;
  i : integer;
  prcomissaosaida, prcomissaoitsaida : double;
  function makesql:string;
  begin
    result := 'select p.cdcliente'+
                    ',p.cdcondpagto'+
                    ',p.cdrepresentante'+
                    ',te.cdtransportadora'+
                    ',te.cdtransporte'+
                    ',p.prcomissao'+
                    ',p.nupedido'+
                    ',p.cdpedido'+
                    ',p.vldesconto '+
              'from transporte te ' +
              'inner join ittransporte i on i.cdtransporte=te.cdtransporte and i.cdempresa=te.cdempresa '+
              'inner join pedido p on p.cdpedido=i.cdpedido and i.cdempresa=p.cdempresa '+
              'left join transportadora t on t.cdtransportadora=te.cdtransportadora and t.cdempresa=te.cdempresa ' +
              'where i.'+get_cd_empresa+' and i.cdittransporte='+cdittransporte[i];
  end;
  function makesqlit:string;
  begin
    result := 'select i.cddigitado'+
                    ',i.cdproduto'+
                    ',i.qtitem'+
                    ',i.vlunitario'+
                    ',p.nmproduto'+
                    ',p.nuclfiscal'+
                    ',p.borecuperaicms'+
                    ',p.borecuperaipi'+
                    ',p.borecuperapis'+
                    ',p.borecuperacofins'+
                    ',i.cditpedido'+
                    ',iP.cdpedido'+
                    ',u.nmunidade'+
                    ',t.boservico'+
                    ',p.psliquido'+
                    ',p.psbruto'+
                    ',ip.dsformula'+
                    ',p.alcofins'+
                    ',p.alpis'+
                    ',p.cdmodbcicms'+
                    ',p.cdmodbcsticms'+
                    ',ip.almva'+
                    ',ip.alipi'+
                    ',ip.alicms'+
                    ',ip.alicmssubtrib'+
                    ',t.boservico'+
                    ',ip.qtpeso'+
                    ',ip.NUCOTACAO'+
                    ',Ip.BOIPIBCICMS'+
                    ',ip.NUITEM'+
                    ',p.bocomissao '+
              'from itittransporte i '+
              'inner join itpedido ip on ip.cditpedido=i.cditpedido and ip.cdempresa=i.cdempresa '+
              'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
              'left join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
              'inner join unidade u on u.cdunidade=p.cdunidade and u.cdempresa=p.cdempresa '+
              'where i.'+get_cd_empresa+' and i.cdittransporte='+cdittransporte[i];
  end;
  procedure processar_cabecalho;
  begin
    q.q.sql.Text   := makesql;
    q.q.open;
    cdscdtpsaida.asInteger       := cdtpsaida;
    nupedido                     := q.q.fieldbyname(_nupedido).asstring;
    cdpedido                     := q.q.fieldbyname(_cdpedido).asstring;
    cdsdtemissao.asdatetime      := dtemissao;
    cdsdtsaida.asdatetime        := dtemissao;
    cdscdtransporte.asstring     := q.q.fieldbyname(_cdtransporte).asstring;;
    cds.fieldbyname(_cdcliente).asstring        := q.q.fieldbyname(_cdcliente).asstring;
    cdscdcondpagto.asstring      := q.q.fieldbyname(_cdcondpagto).asstring;
    cdscdrepresentante.asstring  := q.q.fieldbyname(_cdrepresentante).asstring;
    cds.fieldbyname(_cdtransportadora).asstring := q.q.fieldbyname(_cdtransportadora).asstring;
    cdsvlfrete.AsCurrency        := 0;
    cdsVLDESCONTO.OnValidate     := nil;
    cdsvldesconto.AsCurrency     := q.q.fieldbyname(_vldesconto).AsCurrency;
    cdsVLDESCONTO.OnValidate     := cdsVLDESCONTOValidate;
    if booleanstatus(_cliente, q.q.fieldbyname(_cdcliente).asstring, _bogerarcomissao) then
    begin
      cdsprcomissao.AsCurrency     := q.q.fieldbyname(_prcomissao).AsCurrency
    end
    else
    begin
      cdsprcomissao.AsCurrency     := 0;
    end;
  end;
  procedure processar_item;
  var
    regrast : TRegraST;
  begin
    q.q.Close;
    q.q.sql.text := makesqlit;
    q.q.open;
    while not q.q.eof do
    begin
      produto.select(q.q.fieldbyname(_cdproduto).AsInteger);
      produto.tpproduto.select(produto.cdtpproduto);
      produto.CheckDados;
      if (produto.tpproduto.boestoque = _s) and
         (tela.tela.tpsaida.boestoque = _s) and
         (not empresa.material.produto.bovendaestoquezerado) and
         ((produto.qtestoque - q.q.fieldbyname(_qtitem).Asfloat) < 0) then
      begin
        messagedlg('Produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+' com estoque '+FormatFloat(__decimal3, produto.qtestoque)+'.'#13'Digite um produto que tenha o estoque acima do pedido para continuar', mtinformation, [mbok], 0);
        abort;
      end;
      cdsitsaida.Insert;
      cdsitsaidacdpedido.asstring         := cdpedido;
      cdsitsaidacdcfop.asstring           := cdscdcfop.asstring;
      if BooleandoCodigo(_sticms, produto.nusticms, _boicmssubtrib, _nu, True) then
      begin
        if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)) then
        begin
          cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopfufsubtrib
        end
        else
        begin
          cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopdufsubtrib;
        end;
      end
      else if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)) then
      begin
        cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopfuf
      end
      else
      begin
        cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopduf;
      end;
      if (cdscdcfop.asstring = '') and (cdsitsaidacdcfop.asstring <> '') then
      begin
        cdscdcfop.asstring := cdsitsaidacdcfop.asstring;
      end;
      cdsitsaidacditsaida.asstring        := GerarCodigo(_itsaida);
      cdsitsaidacditpedido.asstring       := q.q.fieldbyname(_cditpedido).asstring;
      cdsitsaidacdtpregimeicms.asstring   := empresa.get_cdtpregimeicms;
      cdsitsaidaCDPEDIDO.AsString         := q.q.fieldbyname(_cdpedido).AsString;
      cdsitsaidanupedido.asstring         := nupedido;
      cdsitsaidacddigitado.asstring       := q.q.fieldbyname(_cddigitado).asstring;
      cdsitsaidacdproduto.asstring        := q.q.fieldbyname(_cdproduto).asstring;
      cdsitsaidanucotacao.asstring        := q.q.fieldbyname(_nucotacao).asstring;
      cdsitsaidaboipibcicms.asstring      := q.q.fieldbyname(_boipibcicms).asstring;
      cdsitsaidanuitem.asstring           := q.q.fieldbyname(_nuitem).asstring;
      setRegistroRegraST;
      regrast := TRegraST.Create;
      try
        if not regrast.GetRegraST(cdsitsaida, reg) then
        begin
          setst;
          if BooleandoCodigo(_sticms, cdsitsaidanusticms.asstring, _boicmssubtrib, _nu, True) then
          begin
            if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)) then
            begin
              cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopfufsubtrib
            end
            else
            begin
              cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopdufsubtrib;
            end;
          end
          else if (empresa.endereco.cduf <> qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)) then
          begin
            cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopfuf
          end
          else
          begin
            cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopduf;
          end;
        end;
      finally
        FreeAndNil(regrast);
      end;
      if q.q.fieldbyname(_cdmodbcicms).asstring <> '' then
      begin
        cdsitsaidacdmodbcicms.asstring   := q.q.fieldbyname(_cdmodbcicms).asstring;
      end;
      if q.q.fieldbyname(_cdmodbcsticms).asstring <> '' then
      begin
        cdsitsaidacdmodbcsticms.asstring := q.q.fieldbyname(_cdmodbcsticms).asstring;
      end;
      if q.q.fieldbyname(_cdmodbcsticms).AsInteger = 5 then
      begin
        cdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB.AsCurrency := q.q.fieldbyname(_almva).AsCurrency;
        cdsitsaidaalicmssubtrib.AsCurrency                := q.q.fieldbyname(_alicmssubtrib).AsCurrency;
        cdsitsaidaalicms.asstring                         := q.q.fieldbyname(_alicms).asstring;
      end
      else
      begin
        cdsitsaidaalicms.asstring := q.q.fieldbyname(_alicms).asstring;
      end;
      cdsitsaidaprtotaltributo.Asfloat := produto.ObterPrtotaltributo(cdsitsaidacdcfop.asinteger, produto.nuclfiscal, produto.cdorigem);
      cdsitsaidanmproduto.asstring     := q.q.fieldbyname(_nmproduto).asstring;
      cdsitsaidanmunidade.asstring     := q.q.fieldbyname(_nmunidade).asstring;
      cdsitsaidanuclfiscal.asstring    := q.q.fieldbyname(_nuclfiscal).asstring;
      cdsitsaidaqtitem.Asfloat         := q.q.fieldbyname(_qtitem).Asfloat;
      if q.q.fieldbyname(_boservico).asstring <> _S then
      begin
        if q.q.fieldbyname(_qtpeso).AsCurrency > 0 then
        begin
          cdsitsaidapsbruto.Asfloat   := q.q.fieldbyname(_qtpeso).Asfloat * cdsitsaidaqtitem.Asfloat;
          cdsitsaidapsliquido.Asfloat := q.q.fieldbyname(_qtpeso).Asfloat * cdsitsaidaqtitem.Asfloat;
        end
        else
        begin
          cdsitsaidapsbruto.Asfloat   := q.q.fieldbyname(_psbruto).Asfloat   * q.q.fieldbyname(_qtitem).Asfloat;
          cdsitsaidapsliquido.Asfloat := q.q.fieldbyname(_psliquido).Asfloat * q.q.fieldbyname(_qtitem).Asfloat;
        end;
      end;
      cdsitsaidavlunitario.AsFloat := q.q.fieldbyname(_vlunitario).AsFloat;
      cdsitsaidaalipi.asstring     := q.q.fieldbyname(_alipi).asstring;
      if tela.tela.tpsaida.tpentsai = _e then
      begin
        cdsitsaidaborecuperaicms.asstring   := q.q.fieldbyname(_borecuperaicms).asstring;
        cdsitsaidaborecuperaipi.asstring    := q.q.fieldbyname(_borecuperaipi).asstring;
        cdsitsaidaborecuperacofins.asstring := q.q.fieldbyname(_borecuperacofins).asstring;
        cdsitsaidaborecuperapis.asstring    := q.q.fieldbyname(_borecuperapis).asstring;
      end;
      // comissao
      cdsitsaidabocomissao.asstring     := q.q.fieldbyname(_bocomissao).asstring;
      if produto.cdtpcomissaoproduto <> 0 then
      begin
        cdsitsaidacdtpcomissao.asstring := tela.tela.ObterTpComissao(inttostr(produto.cdtpcomissaoproduto), cdscdrepresentante.asstring);
        prcomissaoitsaida               := DoubledoCodigo(_tpcomissao, cdsitsaidacdtpcomissao.asstring, _prcomissao);
        if (cdsitsaidacdtpcomissao.asstring <> '') and (not cdssaidatpcomissao.Locate(_cdtpcomissao, cdsitsaidacdtpcomissao.asstring, [])) then
        begin
          cdssaidatpcomissao.Insert;
          cdssaidatpcomissaoCDTPCOMISSAO.asstring := cdsitsaidacdtpcomissao.asstring;
          cdssaidatpcomissaoPRCOMISSAO.Asfloat    := prcomissaoitsaida;
          cdssaidatpcomissaoCDSAIDA.asstring      := cdscdsaida.asstring;
          cdssaidatpcomissao.Post;
        end;
      end
      else
      begin
        prcomissaosaida   := cdsprcomissao.asfloat;
        prcomissaoitsaida := Tproduto.VerificarComissao(cdsitsaidacdproduto.asstring, prcomissaosaida);
      end;
      if prcomissaoitsaida > 0 then
      begin
        cdsitsaidaprcomissao.Asfloat    := prcomissaoitsaida;
        cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.AsCurrency * prcomissaoitsaida / 100, tela.tela.tpsaida.boarredondar = _s);
      end;
      if (cdsitsaidabocomissao.asstring = _S) and (not cdsprcomissao.IsNull) then
      begin // ratear o desconto de acordo com o valor total
        if cdsbodescontocomissao.asstring = _S then
        begin
          cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.AsCurrency * (cdsprcomissao.asfloat / 100), tela.tela.tpsaida.boarredondar = _s)
        end
        else
        begin
          cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.AsCurrency * (cdsprcomissao.asfloat / 100), tela.tela.tpsaida.boarredondar = _s);
        end;
      end;
      cdsitsaidaalpis.Asfloat    := q.q.fieldbyname(_alpis).Asfloat;
      cdsitsaidaalcofins.Asfloat := q.q.fieldbyname(_alcofins).Asfloat;
      cdsitsaida.Post;
      q.q.next;
    end;
  end;
begin
  for i := 0 to cdittransporte.count - 1 do
  begin
    codigoinsercao := 0;
    edtcodigo.clear;
    tela.tela.tpsaida.cdserie := qregistro.inteirodocodigo(_tpsaida, cdtpsaida, _cdserie);
    actNovoExecute(nil);
    bonovo := true;
    q := TClasseQuery.create;
    cds.DisableControls;
    cdsitsaida.DisableControls;
    try
      processar_cabecalho;
      processar_item;
      GravartotaisClasse;
      GravartotaisClasse;
      tela.tela.GerarDuplicata;
      AtualizarDuplicata;
      if not registro.aplicar_atualizacao then
      begin
        Exit;
      end;
      if TodosPedidosTransporteComNotaFiscal(cdscdtransporte.asstring) then
      begin
        ExecutaSQL('update transporte set cdsttransporte=2 where '+get_cd_empresa+' and cdtransporte='+cdscdtransporte.asstring);
      end;
      registro.set_grade_item(self, false);
      abrir(cdscdsaida.asinteger);
    finally
      bonovo := false;
      freeandnil(q);
      cds.EnableControls;
      cdsitsaida.EnableControls;
    end;
  end;
end;

function Tfrmsaida.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmsaida.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure Tfrmsaida.actNovoExecute(Sender: TObject);
begin
  tela.tela.VerificarNFEEnviadaSemChave;
  tela.tela.VerificarNFENaoEnviada;
  registro.Novo(sender);
  boinsert := true;
end;

function Tfrmsaida.AchouBaixa:boolean;
var
  i : Integer;
begin
  result := false;
  for I := 0 to tela.tela.duplicata.Count - 1 do
  begin
    if tduplicata.ExisteBaixaConta(tela.tela.duplicata.Items[i].cdduplicata.ToString) then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure Tfrmsaida.ConsistirLivroFiscal;
begin
  if (not empresa.livro.bolivrofiscal) or (not ((cds.State = dsinsert) or (cds.State = dsedit))) or (tlivrofiscal.permitealterarnota(cdsdtemissao.AsDateTime)) then
  begin
    exit;
  end;
  messagedlg('Não é permitida a inserção ou alteração de uma nota fiscal '#13'quando já existe um livro fiscal na data de emissão do documento.'#13'Altere a data de emissão para o mês posterior ou exclua o livro fiscal para continuar.', mtInformation, [mbok], 0);
  cdsdtemissao.FocusControl;
  abort;
end;

procedure Tfrmsaida.ConsistirCondpagto;
var
  cdcondpagto : string;
begin
  if (tela.tela.tpsaida.boduplicata <> _s) or (cdsnustdocumento.asstring = _02) or (cdsnustdocumento.asstring = _05) or (not cbxCDCONDPAGTO.Enabled) then
  begin
    exit;
  end;
  if (not VarIsNull(cbxcdcondpagto.EditValue)) then
  begin
    cdcondpagto := cbxcdcondpagto.EditValue;
    if cdsCDCONDPAGTO.AsString <> cdcondpagto then
    begin
      cdsCDCONDPAGTO.AsString := cbxcdcondpagto.EditValue;
      Exit;
    end;
    Exit;
  end;
  if not gbxduplicata.enabled then
  begin
    exit;
  end;
  cbxCDCONDPAGTO.SetFocus;
  messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_condicao_de_pagamento]), mtinformation, [mbok], 0);
  abort;
end;

procedure Tfrmsaida.VerificarNumerioSerieD;
var
  dtemissao : TDate;
begin
  if cdsNUDOCFISCALICMS.AsString <> _02 then
  begin
    Exit;
  end;
  dtemissao := RetornaSQLData('select first 1 dtemissao from saida where cdempresa='+cds.fieldbyname(_cdempresa).AsString+' and cdserie='+cdsCDSERIE.AsString+' and nusaida<>'+cdsNUSAIDA.AsString+' order by nusaida desc');
  if (dtemissao > cdsDTEMISSAO.AsDateTime) and (MessageDlg('Data de emissão não pode ser anterior a data de emissão do último documento de série.'#13'Deseja continuar assim mesmo?', mtConfirmation, [mbYes, mbNo], 0) = mrno) then
  begin
    cdsDTEMISSAO.FocusControl;
    Abort;
  end;
  if dtemissao > cdsDTEMISSAO.AsDateTime then
  begin
    MessageDlg('Data de emissão não pode ser anterior a data de emissão do último documento de série.', mtInformation, [mbOk], 0);
    cdsDTEMISSAO.FocusControl;
    Abort;
  end;
end;

procedure Tfrmsaida.check_qtd_imei;
begin
  cdsitsaida.DisableControls;
  try
    cdsitsaida.first;
    while not cdsitsaida.eof do
    begin
      if (cdsitsaida.FieldByName(_boLoteimei).AsString = _s) and (cdsitsaida.fieldbyname(_qtitem).Asfloat > cdsitsaidalote.recordcount) then
      begin
        messagedlg('Quantidade de IMEI menor do que a quantidade do item'#13'no produto '+cdsitsaida.fieldbyname(_nmproduto).asstring+'.', mtinformation, [mbok], 0);
        abort;
      end;
      cdsitsaida.next;
    end;
  finally
    cdsitsaida.EnableControls;
  end;
end;

procedure Tfrmsaida.actSalvarExecute(Sender: TObject);
var
  texto : string;
begin
  registro.Verificar_Bloqueio_chave;
  Self.Perform(WM_NEXTDLGCTL,0,0);

  //consistir_se_nota_ja_foi_enviada_sefaz;
  if (cdsitsaida.State = dsedit) or (cdsitsaida.State = dsinsert) then
  begin
    cdsitsaida.Post;
  end;
  if cdsitsaida.RecordCount = 0 then
  begin
    MessageDlg('É obrigatório a inserção de ítens na nota fiscal.', mtInformation, [mbOK], 0);
    Abort;
  end;
  check_qtd_imei;
  VerificarNumerioSerieD;
  if (edtnuplaca.Text <> '') and (cbxcduf.Text = '') then
  begin
    messagedlg('Unidade Federativa da Placa é um campo obrigatório.', mtinformation, [mbok], 0);
    cbxcduf.SetFocus;
    abort;
  end;
  if (edtnuplaca.Text = '') and (cbxcduf.Text <> '') then
  begin
    messagedlg('Placa é um campo obrigatório.', mtinformation, [mbok], 0);
    edtnuplaca.SetFocus;
    abort;
  end;
  if (tela.tela.vlfrete>0) and (not tela.tela.itsaida.pesopreenchido) then
  begin
    messagedlg('Peso não foi preenchido nos itens para o tipo de frete '+cbxcdtpfrete.Text+'.'#13'Favor preencher antes de continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  consistirLivroFiscal;
  ConsistirCondpagto;
  if (Length(memdsobservacao.Text) >= 250) and (cdsnudocfiscalicms.asstring = _55) and empresa.faturamento.saida.boobservacao250 then
  begin
    MessageDlg('Quantidade máxima de caracteres da observação excedido.'#13'Permitido somente 250 caracteres.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (tela.tela.tpsaida.boduplicata = _s) and (cdsvltotal.AsCurrency = 0) then
  begin
    MessageDlg('É obrigatório valor total para Nota Fiscal que possui contas a receber.'#13'Altere a nota para poder salvar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (edtcdTransportadora.Text <> '') and ((cdsitsaida.Aggregates.Find(_sum+_psbruto).Value = 0) or (cdsitsaida.Aggregates.Find(_sum+_psliquido).Value = 0))  then
  begin
    MessageDlg('Quando a nota possui transportadora é obrigatório o preenchimento de peso nos ítens.'#13'Altere a nota para poder salvar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (tela.tela.tpsaida.borepresentanteobrigatorio = _s) and (cbxcdrepresentante.Text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Representante]), mtinformation, [mbok], 0);
    cbxcdrepresentante.SetFocus;
    Abort;
  end;
  GravartotaisClasse;
  if tela.tela.aNotaEDifal and tela.tela.itsaida.ProcessarDifal(tela.tela.getAlICMSInterEstadual) then
  begin
    cdsitsaida.DisableControls;
    try
      tela.tela.itsaida.atualizarDifal(cdsitsaida);
      cdsVFCPUFDEST.ascurrency   := tela.tela.itsaida.ObterValor(_VFCPUFDEST);
      cdsVICMSUFDEST.ascurrency  := tela.tela.itsaida.ObterValor(_VICMSUFDEST);
      cdsVICMSUFREMET.ascurrency := tela.tela.itsaida.ObterValor(_VICMSUFREMET);
    finally
      cdsitsaida.EnableControls;
    end;
  end;  
  dts.OnStateChange := nil;
  if not registro.aplicar_atualizacao then
  begin
    Exit;
  end;  
  { 
  verificar qual é o cliente que usa o frete de icms substituicao tributaria
  
  texto := tela.tela.gerarfretesub(cdscdsaida.asinteger, 0, cdsdtemissao.AsDateTime);
  if texto <> '' then
  begin
    cds.edit;
    if not registro.aplicar_atualizacao then
    begin
      Exit;
    end;
    cdsdsobservacao.asstring := texto;
    if not registro.aplicar_atualizacao then
    begin
      Exit;
    end;
  end;
  }
  ajustar(Sender, tela.tela.tpsaida.bovlduplicatadiferentevltotal = _s);
  if ((cds.State = dsedit) or (cds.State = dsinsert)) and (not registro.aplicar_atualizacao) then
  begin
    Exit;
  end;
  dts.OnStateChange := dtsStateChange;

  tela.salvar;

  //Registro.RegistroAbrir(cdscdsaida.asinteger);
  boinsert := false;
  registro.set_grade_item(self, false);
  registro.set_readonly_dados(self, True);
  LiberarControleNfe(True);
  if tela.tela.nudocfiscalicms = _55 then
  begin
    actnfemenu.Visible := true;
    actnfemenu.Enabled := true;
  end;
end;

procedure Tfrmsaida.verificarExistenciaBaixaMovbancario;
begin
  cdsduplicata.DisableControls;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      if CodigodoCampo(_baixa, cdsduplicatacdduplicata.asstring, _cdduplicata) <> '' then
      begin
        messagedlg('Nota Fiscal não pode ser excluída.'#13'A duplicata '+cdsduplicatanuduplicata.asstring+' possui baixa no movimento bancário.', mtinformation, [mbok], 0);
        abort;
      end;
      cdsduplicata.Next;
    end;
  finally
    cdsduplicata.EnableControls;
  end;
end;

procedure Tfrmsaida.verificaPosssibilidadeExclusaoDeAcordoComStatusDuplicata;
begin
  cdsduplicata.DisableControls;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      if not (NomedoCodigo(_stduplicata, qregistro.codigodonome(_stduplicata, cdsduplicatanmstduplicata.asstring), _boexcluir) = _S) then
      begin
        messagedlg('Nota Fiscal não pode ser excluída.'#13'O status da Duplicata '+cdsduplicatanuduplicata.asstring+' não permite a sua exclusão.', mtinformation, [mbok], 0);
        abort;
      end;
      cdsduplicata.Next;
    end;
  finally
    cdsduplicata.EnableControls;
  end;
end;

procedure Tfrmsaida.verificarSeNotaJaFoiEnviada;
begin
  if (NomedoCodigo(_saida, cdscdsaida.asstring, _nuchavenfe) <> '') and (nfe.NotasFiscais.Items[0].NFe.Ide.tpAmb = taProducao) then
  begin
    MessageDlg('A nota '+cdsnusaida.asstring+' já foi enviada para a Sefaz.'#13'Náo é possível ser excluída.', mtInformation, [mbok], 0);
    Abort;
  end;
end;

procedure Tfrmsaida.registroDiferenteDoDigitadoAbrilo(Sender: TObject);
var
  codigo: integer;
begin
  if cdsnusaida.asstring = edtcodigo.text then
  begin
    exit;
  end;
  if messagedlg('No momento está aberto o registro '+cdsnusaida.asstring+#13' você gostaria de abrir registro '+edtcodigo.text+' para exclusão?', mtConfirmation, [mbyes, mbno], 0) = mrno then
  begin
    edtcodigo.Text := cdsnusaida.asstring;
    abort;
  end;
  codigo := tsaida.CodigoNotaFiscal(edtcodigo.text);
  if codigo = -1 then
  begin
    edtcodigo.text := cdsnusaida.asstring;
    abort;
  end;
  if not abrir(codigo) then
  begin
    if messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mrno then
    begin
      edtcodigo.text := cdsnusaida.asstring;
      abort;
    end;
    actNovoExecute(sender);
  end;
  edtcodigo.selectall;
end;

procedure Tfrmsaida.verificarSeExisteLocacaoInseridoEmNotaParaFrente;
var
  cdlocacao : string;
begin
  if tela.tela.tpsaida.bolocacao <> _s then
  begin
    exit;
  end;
  cdlocacao := tela.getLocacaoPosterior;
  if cdlocacao <> '' then
  begin
    messagedlg('A locação '+cdlocacao+' está inserido em uma nota posterior.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure Tfrmsaida.actExcluirExecute(Sender: TObject);
var
  nusaida, cdserie : integer;
begin
  registro.Verificar_Bloqueio_chave;
  registroDiferenteDoDigitadoAbrilo(Sender);
  if not registro.RegistroAbrir(cdscdsaida.asinteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cdsnusaida.asstring, maiuscula(exibe)]), mterror, [mbok], 0);
    exit;
  end;
  verificaPosssibilidadeExclusaoDeAcordoComStatusDuplicata;
  verificarExistenciaBaixaMovbancario;
  verificarSeNotaJaFoiEnviada;
  if not registro.RegistroAbrir(cdscdsaida.asinteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cdsnusaida.asstring, maiuscula(exibe)]), mterror, [mbok], 0);
    exit;
  end;
  nusaida := cdsnusaida.AsInteger-1;
  cdserie := cdscdserie.asinteger;
  verificarSeExisteLocacaoInseridoEmNotaParaFrente;
  CDS.AfterScroll := nil;
  try
    if registro.Excluir then
    begin

      tela.tela.itsaida.clear;
      tela.tela.duplicata.clear;
      tela.tela.cartacorrecao.clear;

      tela.excluir;
      tserie.voltar_Numero_serie(nusaida, cdserie);
    end;
  finally
    CDS.AfterScroll := cdsAfterScroll;
  end;
end;

procedure Tfrmsaida.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmsaida.actCancelarExecute(Sender: TObject);
begin
  if boinsert then
  begin
    if MessageDlg('Tem certeza que deseja cancelar a nota?', mtConfirmation, [mbYes, mbno], 0) = mrno then
    begin
      exit;
    end;
    tserie.voltar_Numero_serie(cdsnusaida.AsInteger-1, cdscdserie.AsInteger);
  end;
  if cdsitsaida.state in [dsedit, dsinsert] then
  begin
    cdsitsaida.Cancel;
  end;
  if (cdsduplicata.State = dsinsert) or (cdsDuplicata.State = dsedit) then
  begin
    cdsduplicata.Cancel;
  end;
  registro.Cancelar;
  LiberarControleNfe(True);
end;

procedure Tfrmsaida.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
  configurarboitemdesconto;
  setLiberarCampoOutDespesa;
  if ((cdsNUDOCFISCALICMS.AsString = _55) or (cdsNUDOCFISCALICMS.AsString = _2d)) and ((cdsNUSTDOCUMENTO.AsString = _99) or (cdsNUSTDOCUMENTO.AsString = _00)) then
  begin
    LiberarControleNfe(False);
  end;
end;

procedure Tfrmsaida.CalcularImpostoIcmsItem;
var
  vlbaseicms : Currency;
begin
  if (tela.tela.tpsaida.boicms <> _s) or (cdsitsaidaalicms.IsNull) or (cdsitsaidaalicms.AsCurrency <= 0) then
  begin
    if not cdsitsaidaalicms.isnull then
    begin
      cdsitsaidaalicms.clear;
    end;
    if not cdsitsaidavlicms.isnull then
    begin
      cdsitsaidavlicms.clear;
    end;
    if not cdsitsaidavlbaseicms.isnull then
    begin
      cdsitsaidavlbaseicms.clear;
    end;
    cdsitsaida.fieldbyname(_vlbaseicmsntributavel).AsCurrency := 0;
    cdsitsaida.fieldbyname(_vlbaseicmsoriginal).AsCurrency := 0;
    exit;
  end;
  if cdsitsaidaCDTPREGIMEICMS.AsString = _2 then
  begin
    cdsitsaidavlbaseicms.clear;
    cdsitsaidavlicms.clear;
    cdsitsaida.fieldbyname(_vlbaseicmsntributavel).AsCurrency := 0;
    cdsitsaida.fieldbyname(_vlbaseicmsoriginal).AsCurrency := 0;
    Exit;
  end;
  vlbaseicms := cdsitsaidavltotal.Asfloat -
                cdsitsaidavldesconto.AsCurrency +
                cdsitsaidavlseguro.AsCurrency +
                cdsitsaidavlfrete.AsCurrency;
  if tela.tela.tpsaida.boicmsoutdespesareembolso <> _s then
  begin
    vlbaseicms := vlbaseicms + cdsitsaidavloutdespesa.AsCurrency;
  end;
  if cdsitsaidaboipibcicms.asstring= _S then
  begin
    vlbaseicms := vlbaseicms + cdsitsaidavlipi.AsCurrency;
  end;
  if cdsitsaidabobaseicmsajuste.asstring <> _S then
  begin
    vlbaseicms := QRotinas.Roundqp(vlbaseicms, tela.tela.tpsaida.boarredondar = _s)
  end
  else
  begin
    vlbaseicms := cdsitsaidavlbaseicms.AsCurrency;
  end;
  cdsitsaida.FieldByName(_vlbaseicmsoriginal).AsCurrency := vlbaseicms;
  if cdsitsaidaALICMSRED.AsFloat > 0 then
  begin
    cdsitsaidaVLBASEICMSRED.AsCurrency := vlbaseicms - QRotinas.Roundqp((vlbaseicms *  cdsitsaidaALICMSRED.AsFloat / 100), tela.tela.tpsaida.boarredondar = _s);
    vlbaseicms := cdsitsaidaVLBASEICMSRED.AsCurrency;
  end;
  cdsitsaidavlbaseicms.AsCurrency := vlbaseicms;
  cdsitsaida.FieldByName(_vlbaseicmsntributavel).AsCurrency := cdsitsaida.FieldByName(_vlbaseicmsoriginal).AsCurrency - cdsitsaida.FieldByName(_vlbaseicms).AsCurrency;
  cdsitsaidavlicms.AsCurrency     := QRotinas.Roundqp(vlbaseicms * cdsitsaidaalicms.Asfloat / 100, tela.tela.tpsaida.boarredondar = _s);
end;

procedure Tfrmsaida.CalcularImpostoIcmsSubTribItem;
var
  vlbase, vlicms : currency;
  procedure calcula_icms_substituicao_tributaria_simples_nacional;
  begin
    if cdsitsaidaCDTPREGIMEICMS.AsString = _2 then
    begin
      vlbase := cdsitsaidavltotal.AsCurrency + cdsitsaidavloutdespesa.AsCurrency + cdsitsaidavlseguro.AsCurrency + cdsitsaidavlfrete.AsCurrency;
      if cdsitsaidaboipibcicms.asstring=_S then
      begin
        vlbase := vlbase + cdsitsaidavlipi.AsCurrency;
      end;
      vlicms := vlbase * cdsitsaidaalicms.Asfloat / 100;
      vlbase := (vlbase + cdsitsaidavlipi.AsCurrency) * ((cdsitsaidaprmrgvladicionadoicmssubtrib.AsCurrency / 100)+1);
      if cdsitsaidaBOBASEICMSSUBTRIBAJUSTE.AsString <> _s then
      begin
        cdsitsaidavlbaseicmssubtrib.AsCurrency := vlbase;
      end;
      cdsitsaidavlicmssubtrib.AsCurrency := QRotinas.Roundqp((cdsitsaidavlbaseicmssubtrib.AsCurrency * cdsitsaidaalicmssubtrib.Asfloat / 100) - vlicms, tela.tela.tpsaida.boarredondar = _s);
    end;
  end;
  procedure calcula_icms_substituicao_tributaria_normal;
  begin
    if cdsitsaidaCDTPREGIMEICMS.AsString = _1 then
    begin
      vlbase := (cdsitsaidavlbaseicms.AsCurrency + cdsitsaidavlipi.AsCurrency) * ((cdsitsaidaprmrgvladicionadoicmssubtrib.AsCurrency / 100)+1);
      vlbase := QRotinas.Roundqp(vlbase, tela.tela.tpsaida.boarredondar = _s);
      if cdsitsaidaBOBASEICMSSUBTRIBAJUSTE.AsString <> _s then
      begin
        cdsitsaidavlbaseicmssubtrib.AsCurrency := vlbase;
      end;
      cdsitsaidavlicmssubtrib.AsCurrency := QRotinas.Roundqp((cdsitsaidavlbaseicmssubtrib.AsCurrency * cdsitsaidaalicmssubtrib.Asfloat / 100) - cdsitsaidavlicms.Asfloat, tela.tela.tpsaida.boarredondar = _s);
    end;
  end;
begin
  if (tela.tela.tpsaida.boicmssubst <> _s) or (cdsitsaidaalicmssubtrib.IsNull) or (cdsitsaidaalicmssubtrib.AsCurrency <= 0) then
  begin
    if not cdsitsaidaalicmssubtrib.isnull then
    begin
      cdsitsaidaalicmssubtrib.clear;
    end;
    if not cdsitsaidavlicmssubtrib.isnull then
    begin
      cdsitsaidavlicmssubtrib.clear;
    end;
    if not cdsitsaidavlbaseicmssubtrib.isnull then
    begin
      cdsitsaidavlbaseicmssubtrib.clear;
    end;
    exit;
  end;
  calcula_icms_substituicao_tributaria_simples_nacional;
  calcula_icms_substituicao_tributaria_normal;
end;

procedure Tfrmsaida.FormShow(Sender: TObject);
var
  dif : integer;
begin
  pnl.caption := exibe;
  produto := tproduto.create;
  nfe.OnStatusChange := NFEStatusChange;
  nfe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName)+'\'+_xml+'\';
  nfe.Configuracoes.WebServices.UF := empresa.endereco.sguf;
  nfe.Configuracoes.WebServices.AguardarConsultaRet := 0;
  nfe.Configuracoes.WebServices.IntervaloTentativas := 0;
  nfe.Configuracoes.WebServices.AjustaAguardaConsultaRet := False;
  nfe.Configuracoes.Arquivos.Salvar := True;
  nfe.Configuracoes.Arquivos.SepararporMes := True;
  nfe.Configuracoes.Arquivos.EmissaoPathNFe := True;
  nfe.Configuracoes.Arquivos.PathNFe  := nfe.Configuracoes.Arquivos.PathSalvar;
  nfe.Configuracoes.Arquivos.PathInu  := nfe.Configuracoes.Arquivos.PathSalvar;

  actordservimportar.Visible := empresa.ordserv.bo;
  actordservimportar.Enabled := empresa.ordserv.bo;
  pedido                     := tpedido.create;
  transportadora             := ttransportadora.create;
  entrada                    := TEntrada.create;
  locacao                    := Tlocacao.create;
  tela                       := TTelaSaida.create;
  if TTpSaida.UmTipoDocumento <> '' then
  begin
    lbltpsaida.Visible     := false;
    cbxcdtpsaida.Visible   := false;
    dif               := edtCodigo.Left    - cbxcdtpsaida.left;
    lblcodigo.Left    := lblcodigo.Left    - dif;
    edtCodigo.Left    := edtCodigo.Left    - dif;
    lbldtemissao.Left := lbldtemissao.Left - dif;
    edtDTEMISSAO.Left := edtDTEMISSAO.Left - dif;
    lbldtsaida.Left   := lbldtsaida.Left   - dif;
    edtDTSAIDA.Left   := edtDTSAIDA.Left   - dif;
    lblcfop.Left      := lblcfop.Left      - dif;
    cbxcdcfop.Left    := cbxcdcfop.Left    - dif;
  end;

  lblplconta.visible               := empresa.financeiro.boplconta;
  edtnuplconta.Visible             := lblplconta.visible;
  tbvduplicataNUPLCONTA.Visible    := lblplconta.visible;
  tbvduplicataNMPLCONTA.Visible    := lblplconta.visible;
  tbvNUPLCONTA.Visible             := empresa.financeiro.boplconta;
  tbvNMPLCONTA.Visible             := empresa.financeiro.boplconta;
  ckbBORATEIOPLCONTA.Visible       := empresa.financeiro.boplconta;

  lblcntcusto.visible            := empresa.financeiro.bocntcusto;
  edtnucntcusto.Visible          := lblcntcusto.visible;
  tbvduplicataNUcntcusto.Visible := lblcntcusto.visible;
  tbvduplicataNMcntcusto.Visible := lblcntcusto.visible;
  tbvNUcntcusto.Visible          := empresa.financeiro.bocntcusto;
  tbvNMcntcusto.Visible          := empresa.financeiro.bocntcusto;
  ckbborateiocntcusto.Visible    := empresa.financeiro.bocntcusto;

  tbvduplicataCDTPCOBRANCA.Visible := lbltpcobranca.Visible;
  adntcliente            := tadntcliente.create;
  bonovo      := false;
  actnfemenu.Visible := False;
  if RegistroExiste(_serie, _nudocfiscalicms+'='+quotedstr(_55)) then
  begin
    actnfemenu.Visible := true;
    lerconfiguracao;
  end;
  edtCodigo.SetFocus;
end;

procedure Tfrmsaida.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmsaida.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure Tfrmsaida.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure Tfrmsaida.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure Tfrmsaida.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure Tfrmsaida.actGerarDuplicataExecute(Sender: TObject);
begin
  if cds.RecordCount = 0 then
  begin
    Exit;
  end;
  tela.tela.duplicata.Excluir;
  tela.tela.GerarDuplicata;
  tela.tela.duplicata.Inserir;
  if lowercase(TComponent(sender).Name) = _act+_gerar+_duplicata then
  begin
    showmessage('Duplicatas Geradas!');
  end;
  Abrir(tela.tela.cdsaida);
end;

procedure Tfrmsaida.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsaida.actAbrirClienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmsaida.actAbrirFornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmsaida.actAbrirRepresentanteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmsaida.actAbrirCondPagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmsaida.actAbrirTransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmsaida.actAbrirDuplicataExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsduplicata);
end;

procedure Tfrmsaida.actabrirentradaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmsaida.actexibircamposExecute(Sender: TObject);
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

procedure Tfrmsaida.actabrirtpsaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmsaida.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitsaida);
end;

procedure Tfrmsaida.actabrirpedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitsaida);
end;

procedure Tfrmsaida.actvisualizarExecute(Sender: TObject);
begin
  DlgXMLtoTreeView('Visualizar XML da Nota Fiscal', cdsdsxml.asstring);
end;

procedure Tfrmsaida.actGerarDevolucaoSaidaExecute(Sender: TObject);
begin
  //frmgerardevolucao.gerarDevolucaoSaida(cds, cdsitsaida);
end;

procedure Tfrmsaida.actGerarDevolucaoEntradaExecute(Sender: TObject);
  function get_cduf:integer;
  begin
    result := 0;
    if not cds.fieldbyname(_cdcliente).IsNull then
    begin
      result := qregistro.inteirodocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring, _cduf)
    end
    else if not cds.fieldbyname(_cdfornecedor).IsNull then
    begin
      result := qregistro.inteirodocodigo(_fornecedor, cds.fieldbyname(_cdfornecedor).asstring, _cduf);
    end;
  end;
var
  cduf : integer;
  cdentrada, cdtpentrada, cdcfop, nuentrada: integer;
  nuserie, nuchavenfe, nudocfiscalicms:string;
  dtemissao : TDate;
  entrada : TEntrada;
begin
  cduf := get_cduf;
  if cduf = 0 then
  begin
    Exit;
  end;
  if Gerar_devolucao_simples(cduf, cdtpentrada, cdcfop, nuentrada, nuserie, nudocfiscalicms, nuchavenfe, dtemissao) then
  begin
    entrada := tentrada.create;
    try
      cdentrada := entrada.gerarDevolucaoSimples(cdscdsaida.asInteger, cdtpentrada, cdcfop, nuentrada, nuserie, nudocfiscalicms, nuchavenfe, dtemissao);
      if cdentrada <> 0 then
      begin
        frmmain.Abrirformulario(_entrada, cdentrada);
      end;
    finally
      entrada.Free;
    end;
  end;
end;

procedure Tfrmsaida.FormDestroy(Sender: TObject);
begin
  freeandnil(locacaodevolucaolist);
  freeandnil(pedido);
  freeandnil(transportadora);
  FreeAndNil(tela);
  freeandnil(produto);
  freeandnil(adntcliente);
  freeandnil(registro);
  freeandnil(locacao);
end;

procedure Tfrmsaida.actimprimirlaserExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(325, cdscdsaida.asstring);
end;

procedure Tfrmsaida.actfecharExecute(Sender: TObject);
var
  nusaida : Integer;
  cdserie : integer;
begin
  nusaida := cdsnusaida.AsInteger;
  cdserie := cdscdserie.AsInteger;
  if FinalizarTransacao(cds) = mrcancel then
  begin
    exit;
  end;
  if boinsert then
  begin
    TSerie.voltar_Numero_serie(nusaida-1, cdserie);
  end;
  close;
  frmmain.main.DestruirBotaoFormAtual(_saida, frmmain.tlbnew);
end;

procedure Tfrmsaida.edtdshistoricoExit(Sender: TObject);
begin
  if not ((cds.State = dsinsert) or (cds.State = dsedit)) then
  begin
    Exit;
  end;
  tela.tela.GerarDuplicata;
  AtualizarDuplicata;
end;

procedure Tfrmsaida.actnfeExecute(Sender: TObject);
begin
//  ajustar(sender, cds, cdsduplicata, actgerarduplicata, saida.bovlduplicatadiferentevltotal);
//  tsaida.Gerar_nfe(cdscdsaida.asstring, nfe, True);// then
end;

function Tfrmsaida.cancelar_nfe:boolean;
var
  Chave, idLote, CNPJ, Protocolo, Justificativa : string;
begin
  result := False;
  if not GerarCartaCorrecao(Justificativa) then
  begin
    exit;
  end;

  Chave     := cdsnuchavenfe.asstring;
  idLote    := _1;
  CNPJ      := empresa.nucnpj_;
  Protocolo := cdsnuprotocoloautorizacao.asstring;

  NFe.EventoNFe.Evento.Clear;
  with NFe.EventoNFe.Evento.Add do
  begin
    infEvento.chNFe           := Chave;
    infEvento.CNPJ            := CNPJ;
    infEvento.dhEvento        := tsBanco;
    infEvento.tpEvento        := teCancelamento;
    infEvento.detEvento.xJust := Justificativa;
    infEvento.detEvento.nProt := Protocolo;
  end;
  if not NFe.EnviarEvento(StrToInt(idLote)) then
  begin
    MessageDlg('Não foi possível enviar o cancelamento da nota.', mtInformation, [mbOK], 0);
    abort;
  end;
  if NFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat = 135 then
  begin
    cds.DisableControls;
    cds.ReadOnly := False;
    try
      cds.edit;
      cdsdscancelamento.asstring := Justificativa;
      cdsnuprotocolocancelamento.asstring := NFe.WebServices.EnvEvento.EventoRetorno.InfEvento.detEvento.nProt;
      cdsdsxmlcancel.asstring := NFe.WebServices.EnvEvento.RetWS;
      if not registro.aplicar_atualizacao then
      begin
        Exit;
      end;
    finally
      cds.EnableControls;
      cds.ReadOnly := True;
    end;
    result := true;
  end;
  MessageDlg('Status: '+inttostr(NFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat)+' - '+NFe.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo, mtInformation, [mbOK], 0);
end;

procedure Tfrmsaida.actcancelarNFExecute(Sender: TObject);
begin
  registro.Verificar_Bloqueio_chave;
  if tela.tela.NotaFiscalFazParteLivroProducao(cdscdsaida.AsString) then
  begin
    messagedlg('Não é possível cancelar a nota porque ela faz parte de um livro de produção.', mtInformation, [mbok], 0);
    Abort;
  end;
  if tela.tela.EntradaEstoqueNotaFazParteLivroProducao(cdscdsaida.AsString) then
  begin
    messagedlg('Não é possível cancelar a nota porque a sua entrada de estoque faz parte de um livro de produção.', mtInformation, [mbok], 0);
    Abort;
  end;
  if (messagedlg('Tem certeza que deseja cancelar a nota '+cdsnusaida.asstring+'?', mtconfirmation, [mbyes,mbno], 0) = mrno) or
     ((cdsDSXML.asstring <> '') and (not cancelar_nfe)) then
  begin
    exit;
  end;
  if tela.tela.cancelarNF(cdscdsaida.asstring, _02) then
  begin
    Abrir(cdscdsaida.asinteger);
  end;
end;

procedure Tfrmsaida.actordservimportarExecute(Sender: TObject);
var
  cd : integer;
  procedure inserir_itens;
  var
    q : TClasseQuery;
  begin
    q := TClasseQuery.create;
    try
      q.q.Open('select cdproduto,cddigitado,qtitem,vlunitario from itordserv where '+get_cd_empresa+' and cdordserv='+cd.ToString);
      while not q.q.Eof do
      begin
        cdsitsaida.Append;
        cdsitsaidacdproduto.asstring  := q.q.fieldbyname(_cdproduto).asstring;
        cdsitsaidaCDDIGITADO.asstring := q.q.fieldbyname(_cddigitado).asstring;
        cdsitsaidaQTITEM.AsCurrency   := q.q.fieldbyname(_QTITEM).AsCurrency;
        cdsitsaidaVLUNITARIO.AsFloat  := q.q.fieldbyname(_VLUNITARIO).AsFloat;
        cdsitsaida.Post;
        q.q.Next;
      end;
    finally
      freeandnil(q);
    end;
  end;
begin
  cd := LocalizarOrdServ;
  if cd = 0 then
  begin
    exit;
  end;
  inserir_itens;
end;

procedure Tfrmsaida.actexportarXMLCartaCorrecaoExecute(Sender: TObject);
var
  texto : TSTrings;
  nmfile : string;
begin
  if cdscartacorrecao.RecordCount = 0 then
  begin
    Exit;
  end;
  nmfile := QRotinas.getdiretorio;
  if nmfile = '' then
  begin
    exit;
  end;
  nmfile := nmfile + cdsNUCHAVENFE.asstring+ cdscartacorrecaoNSEQEVENTO.asstring;
  texto := tStringList.create;
  try
    texto.text := cdscartacorrecaoDSXML.AsString;
    texto.savetofile(nmfile);
    messagedlg('XML exportado com sucesso.', mtinformation, [mbok], 0);
  finally
    freeandnil(texto);
  end;
end;

procedure Tfrmsaida.actexportarxmlExecute(Sender: TObject);
var
  arquivo : tstrings;
  diretorio : string;
begin
  if cdsdsxml.IsNull then
  begin
    if NFe.NotasFiscais.Count = 0 then
    begin
      messagedlg('Não há nota fiscal para ser exportada.', mtInformation, [mbok], 0);
      exit;
    end;
  end;
  arquivo := tstringlist.create;
  try
    diretorio := QRotinas.getdiretorio;
    if diretorio = '' then
    begin
      exit;
    end;
    if NFe.NotasFiscais.Count > 0 then
    begin
      arquivo.Text := NFe.NotasFiscais.Items[0].XML
    end
    else
    begin
      arquivo.Text := cdsdsxml.asstring;
    end;
    if cdsnuchavenfe.asstring <> '' then
    begin
      arquivo.SaveToFile(diretorio+'\'+cdsnuchavenfe.asstring+'.'+_xml)
    end
    else
    begin
      arquivo.SaveToFile(diretorio+'\'+cdsnusaida.asstring+'.'+_xml);
    end;
    messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
  finally
    freeandnil(arquivo);
  end;
end;

procedure TFrmSaida.Ajustar(sender:TObject; bovlduplicatadiferentevltotal: boolean);
var
  vlduplicata : currency;
  rec : Integer;
begin
  if bovlduplicatadiferentevltotal or (cdsDuplicata.RecordCount <= 0) then // verificar se o valor total da nota é igual ao valor total das duplicatas
  begin
    exit;
  end;
  vlduplicata := 0;
  rec := cdsduplicata.RecNo;
  cdsduplicata.First;
  cdsDuplicata.DisableControls;
  try
    while not cdsDuplicata.Eof do
    begin
      vlduplicata := vlduplicata + cdsduplicatavlduplicata.AsCurrency;
      cdsDuplicata.Next;
    end;
    cdsduplicata.RecNo := rec;
  finally
    cdsDuplicata.EnableControls;
  end;
  if vlduplicata <> cdsVLLIQUIDO.AsCurrency then
  begin
    if messagedlg('O valor líquido da nota ('+formatfloat(__moeda, cdsVLLIQUIDO.AsCurrency)+') difere do valor total das duplicatas ('+formatfloat(__moeda, vlduplicata)+')'#13+
                  'O sistema vai ajustar o valor das duplicatas de acordo com o valor da nota.'#13+
                  'Ajustar?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      actGerarDuplicata.OnExecute(sender);
    end;
  end;
end;

procedure Tfrmsaida.AtivarOnValidate;
begin
  cdsCDTPCOBRANCA.ONValidate := cdsCDTPCOBRANCAValidate;
  cdsCDCONDPAGTO.ONValidate := cdsCDCONDPAGTOValidate;
  cdsCDCFOP.ONValidate := cdsCDCFOPValidate;
  cdsCDREPRESENTANTE.ONValidate := cdsCDREPRESENTANTEValidate;
  cdsCDNFEFINALIDADE.ONValidate := cdsCDNFEFINALIDADEValidate;
  cdsNUPLACA.ONValidate := cdsNUPLACAValidate;
  cdsCDTPSAIDA.ONValidate := cdsCDTPSAIDAValidate;
  cdsNUPLCONTA.ONValidate := cdsNUPLCONTAValidate;
  cdsVLFRETE.ONValidate := cdsVLFRETEValidate;
  cdsVLSEGURO.ONValidate := cdsVLSEGUROValidate;
  cdsPRDESCONTO.ONValidate := cdsPRDESCONTOValidate;
  cdsVLDESCONTO.ONValidate := cdsVLDESCONTOValidate;
  cdsVLOUTDESPESA.ONValidate := cdsVLOUTDESPESAValidate;
  cdsNUSAIDA.ONValidate := cdsNUSAIDAValidate;
  cdsCDCLIENTE.ONValidate := cdsCDCLIENTEValidate;
  cdsCDFORNECEDOR.ONValidate := cdsCDFORNECEDORValidate;
  cdsCDTRANSPORTADORA.ONValidate := cdsCDTRANSPORTADORAValidate;
  cdsDSHISTORICO.ONValidate := cdsDSHISTORICOValidate;
  cdsDTEMISSAO.ONValidate := cdsDTEMISSAOValidate;
  cdsDTSAIDA.ONValidate := cdsDTSAIDAValidate;
  cdsTPDEVOLUCAO.ONValidate := cdsTPDEVOLUCAOValidate;
  cdsBOOUTDESPESAITEM.ONValidate := cdsBOOUTDESPESAITEMValidate;
  cdsBOITEMDESCONTO.ONValidate := cdsBOITEMDESCONTOValidate;
  cdsNUCNTCUSTO.ONValidate := cdsNUCNTCUSTOValidate;

  cdssaidatpcomissaoPRCOMISSAO.OnValidate := cdssaidatpcomissaoPRCOMISSAOValidate;

  cdssaidareferenciadaNUDOCUMENTO.OnValidate := cdssaidareferenciadaNUDOCUMENTOValidate;
  cdssaidareferenciadaCDSAIDAORIGEM.OnValidate := cdssaidareferenciadaCDSAIDAORIGEMValidate;
  cdssaidareferenciadaCDENTRADAORIGEM.OnValidate := cdssaidareferenciadaCDENTRADAORIGEMValidate;
  cdssaidareferenciadaBODIGITARCHAVE.OnValidate := cdssaidareferenciadaBODIGITARCHAVEValidate;

  cdsduplicataNUPLCONTA.OnValidate := cdsduplicataNUPLCONTAValidate;
  cdsduplicatanuCNTCUSTO.OnValidate := cdsduplicataNuCNTCUSTOValidate;
  cdsduplicataDTVENCIMENTO.OnValidate := cdsduplicataDTVENCIMENTOValidate;
  cdsduplicataVLDUPLICATA.OnValidate := cdsduplicataVLDUPLICATAValidate;

  cdsitsaidaCDCFOP.OnValidate := cdsitsaidaCDCFOPValidate;
  cdsitsaidaNUPEDIDO.OnValidate := cdsitsaidaNUPEDIDOValidate;
  cdsitsaidaCDDIGITADO.OnValidate := cdsitsaidaCDDIGITADOValidate;
  cdsitsaidaVLUNITARIO.OnValidate := cdsitsaidaVLUNITARIOValidate;
  cdsitsaidaQTITEM.OnValidate := cdsitsaidaQTITEMValidate;
  cdsitsaidaBOICMSSUBTRIBAJUSTE.OnValidate := cdsitsaidaBOICMSSUBTRIBAJUSTEValidate;
  cdsitsaidaBOBASEICMSAJUSTE.OnValidate := cdsitsaidaBOBASEICMSAJUSTEValidate;
  cdsitsaidaBOBASEIPIAJUSTE.OnValidate := cdsitsaidaBOBASEIPIAJUSTEValidate;
  cdsitsaidaBOAJUSTETOTAL.OnValidate := cdsitsaidaBOAJUSTETOTALValidate;
  cdsitsaidaBOBASEPISAJUSTE.OnValidate := cdsitsaidaBOBASEPISAJUSTEValidate;
  cdsitsaidaBOBASECOFINSAJUSTE.OnValidate := cdsitsaidaBOBASECOFINSAJUSTEValidate;
  cdsitsaidaCDLOCACAO.OnValidate := cdsitsaidaCDLOCACAOValidate;
  cdsitsaidaBOBASEICMSSUBTRIBAJUSTE.OnValidate := cdsitsaidaBOBASEICMSSUBTRIBAJUSTEValidate;
  cdsitsaidaNUPLCONTA.OnValidate := cdsitsaidaNUPLCONTAValidate;
  cdsitsaidaDSINFADICIONAL.OnValidate := cdsitsaidaDSINFADICIONALValidate;
  cdsitsaidaNUCNTCUSTO.OnValidate := cdsitsaidaNUCNTCUSTOValidate;
  cdsitsaidaALICMS.OnValidate :=  cdsitsaidaALICMSValidate;
  cdsitsaidaALIPI.OnValidate :=  cdsitsaidaALIPIValidate;
  cdsitsaidaALPIS.OnValidate :=  cdsitsaidaALPISValidate;
  cdsitsaidaALCOFINS.OnValidate :=  cdsitsaidaALCOFINSValidate;

  cdssaidaefd0450CDEFD0450.OnValidate := cdssaidaefd0450CDEFD0450Validate;

  cdsitsaida.BeforePost := cdsitsaidaBeforePost;
  cdsitsaida.AfterPost  := cdsitsaidaAfterPost;
end;

procedure Tfrmsaida.actnfemenuExecute(Sender: TObject);
begin
  btnnfe.DropDown(false);
end;

procedure Tfrmsaida.actnfeconfigurarExecute(Sender: TObject);
begin
  if dlgsetNFEAcbr then
  begin
    LerConfiguracao;
  end;
end;

procedure Tfrmsaida.actnfestatusExecute(Sender: TObject);
begin
  NFe.WebServices.StatusServico.Executar;
  MessageDlg(NFe.WebServices.StatusServico.xMotivo, mtInformation, [mbOK], 0);
end;

procedure Tfrmsaida.actnfeenviarExecute(Sender: TObject);
  procedure gerar_numero_lote;
  begin
    cds.ReadOnly := False;
    cds.DisableControls;
    try
      cds.edit;
      cdsnulote.asstring := GerarCodigo(_numlote);
      cdsnustdocumento.asstring := _99;
      if not registro.aplicar_atualizacao then
      begin
        Exit;
      end;
    finally
      cds.EnableControls;
      cds.ReadOnly := true;
    end;
    cds.ReadOnly := False;
  end;
  procedure Liberar_nota_rejeicao;
  begin                                     
    cds.ReadOnly := False;
    cds.DisableControls;
    try
      cds.edit;
      cdsnustdocumento.asstring := _98;
      if not registro.aplicar_atualizacao then
      begin
        Exit;
      end;
    finally
      cds.EnableControls;
      cds.ReadOnly := true;
    end;
    cds.ReadOnly := False;
  end;
  procedure armazenar_dados_envio;
  begin
    cds.edit;
    cdsdsxml.asstring := NFe.NotasFiscais.Items[0].XML;
    cdsnuchavenfe.asstring := NFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe;
    cdsnuprotocoloautorizacao.asstring := NFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt;
    cdsTSPROTOCOLOAUTORIZACAO.AsDateTime := NFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].dhRecbto;
    cdsNURECIBONFE.asstring := NFe.WebServices.Retorno.NFeRetorno.nRec;
    cdsnustdocumento.asstring := _00;
    if not registro.aplicar_atualizacao then
    begin
      Exit;
    end;
  end;
  procedure limpar_dados_envio;
  begin
    cds.edit;
    cdsdsxml.clear;
    cdsnuchavenfe.clear;
    cdsnuprotocoloautorizacao.clear;
    cdsNURECIBONFE.clear;
    if not registro.aplicar_atualizacao then
    begin
      Exit;
    end;
  end;
begin
  registro.Verificar_Bloqueio_chave;
  frmmain.informacao_caption;
  registro.Verificar_Bloqueio_chave;
  validarNFE(Sender);
  gerar_numero_lote;
  try
    try
      QRotinas.SetDecimalSeparator;
      if NFe.Enviar(cdsnulote.AsInteger, false) and (NFe.NotasFiscais.Count > 0) then
      begin
        QRotinas.SetDecimalSeparator;
        armazenar_dados_envio;
        Abrir(cdscdsaida.asinteger);
        NFEImprimir(tela.tela.tpsaida.nucasadecimalquantidade, tela.tela.tpsaida.nucasadecimalvlunitario, nfe, cdsnustdocumento.asstring = _02);
        if MessageDlg('Enviar email destinatário?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
        begin
          actnfeemaildestinatarioExecute(sender);
        end;
      end;
    except
      QRotinas.SetDecimalSeparator;
      limpar_dados_envio;
      if Pos('duplicidade de nf-e', LowerCase(NFe.WebServices.Retorno.Msg)) > 0 then
      begin
        if MessageDlg(NFe.WebServices.Retorno.Msg+'Nota não foi enviada porque já foi emitida na sefaz.'#13'Consultar a nota com a chave '+NFe.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].chNFe+' gerada?', mtInformation, [mbYes, mbNo], 0) = mryes then
        begin
          ConsultarNfe;
        end;
      end
      else
      begin
        if copy(NFe.WebServices.Retorno.xMotivo, 1, 8) = 'Rejeicao' then
        begin
          Liberar_nota_rejeicao;
        end;
        MessageDlg(NFe.WebServices.Retorno.xMotivo, mtInformation, [mbOK], 0);
      end;
    end;
  finally
    cds.ReadOnly := true;
    Abrir(cdscdsaida.asinteger);
  end;
end;

procedure Tfrmsaida.LerConfiguracao;
Var
  Ok: Boolean;
begin
  acbr.LerConfiguracao;
  NFe.Configuracoes.Certificados.Senha := acbr.certificado.senha;
  NFe.Configuracoes.Certificados.NumeroSerie := acbr.certificado.NumeroSerie;
  NFe.Configuracoes.Geral.SSLLib := acbr.certificado.SSLLib;
  NFe.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,acbr.geral.formaemissao);
  tela.tela.set_serie_tpsaida_forma_emissao(NFe.Configuracoes.Geral.FormaEmissao);
  NFe.Configuracoes.Geral.Salvar := acbr.geral.bosalvar;
  NFe.Configuracoes.Arquivos.PathSalvar := acbr.geral.PathSalvar;
  if (nfe.Configuracoes.Arquivos.PathSalvar = '') or (nfe.Configuracoes.Arquivos.PathSalvar = ExtractFilePath(Application.ExeName)) then
  begin
    nfe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName)+_xml;
  end;
  NFe.Configuracoes.WebServices.UF := acbr.WebService.UF;
  NFe.Configuracoes.WebServices.Ambiente := acbr.webservice.Ambiente;
  NFe.Configuracoes.WebServices.Visualizar := acbr.WebService.boVisualizar;

  NFe.Configuracoes.WebServices.ProxyHost := acbr.Proxy.Host;
  NFe.Configuracoes.WebServices.ProxyPort := acbr.Proxy.Porta;
  NFe.Configuracoes.WebServices.ProxyUser := acbr.Proxy.User;
  NFe.Configuracoes.WebServices.ProxyPass := acbr.Proxy.Pass;
  nfe.mail := acbr.acbrmail;
end;

function Tfrmsaida.Loadnfe:boolean;
var
  texto : TStringStream;
begin
  result := False;
  NFe.NotasFiscais.Clear;
  texto := TStringStream.Create('');
  try
    if cdsDSXML.asstring = '' then
    begin
      if cdsnustdocumento.asstring = _99 then
      begin
        result := True;
      end;
      Exit;
    end;
    texto.WriteString(cdsDSXML.asstring);
    NFe.NotasFiscais.LoadFromStream(texto);
    result := True;
  finally
    actnfeemaildestinatario.Enabled := result and (cdsnustdocumento.asstring <> _99);
    actnfeemaildestinatario.Visible := result and (cdsnustdocumento.asstring <> _99);
    actnfeemail.Enabled             := result and (cdsnustdocumento.asstring <> _99);
    actnfeemail.Visible             := result and (cdsnustdocumento.asstring <> _99);
    actemailboleto.Enabled          := result and (cdsnustdocumento.asstring <> _99);
    actemailboleto.Visible          := result and (cdsnustdocumento.asstring <> _99);
    actnfegerarpdf.Enabled          := result and (cdsnustdocumento.asstring <> _99);
    actnfegerarpdf.Visible          := result and (cdsnustdocumento.asstring <> _99);
    actexportarxml.Enabled          := result and (cdsnustdocumento.asstring <> _99);
    actexportarxml.Visible          := result and (cdsnustdocumento.asstring <> _99);
    actcancelarNF.Enabled           := result and (cdsnustdocumento.asstring <> _99);
    actcancelarNF.Visible           := result and (cdsnustdocumento.asstring <> _99);

    if actcancelarNF.Enabled and empresa.livro.bolivrofiscal and (not tlivrofiscal.permitealterarnota(cdsdtemissao.asdatetime)) then
    begin
      actcancelarNF.Enabled := false;
      actcancelarNF.Visible := False;
    end;

    actnfeenviar.Enabled           := ((cdsnustdocumento.asstring = _99) or (not result)) and (cds.RecordCount > 0);
    actnfeenviar.Visible           := ((cdsnustdocumento.asstring = _99) or (not result)) and (cds.RecordCount > 0);
    actnfeValidar.Enabled          := ((cdsnustdocumento.asstring = _99) or (not result)) and (cds.RecordCount > 0);
    actnfeValidar.Visible          := ((cdsnustdocumento.asstring = _99) or (not result)) and (cds.RecordCount > 0);
    actnfe.Enabled                 := (not result) and (cds.RecordCount > 0);
    actnfe.Visible                 := (not result) and (cds.RecordCount > 0);
    actcartacorrecao.Enabled       := result and (cds.RecordCount > 0) and (cdsnustdocumento.asstring <> _99);
    actcartacorrecao.Visible       := result and (cds.RecordCount > 0) and (cdsnustdocumento.asstring <> _99);
    actnfeconsultacadastro.Enabled := (not result) and (cds.RecordCount > 0);
    actnfeconsultacadastro.Visible := (not result) and (cds.RecordCount > 0);
    if result then
    begin
      actexcluir.Enabled := false or ((nfe.NotasFiscais.Count > 0) and (nfe.NotasFiscais.Items[0].NFe.Ide.tpAmb = taHomologacao));
    end;
    freeandnil(texto);
  end;
end;

procedure Tfrmsaida.actnfeinutilizarExecute(Sender: TObject);
var
  i, nusaidai, nusaidaf : integer;
  cdserie: integer;
  cdsaidai: integer;
  cdsaidaf: integer;
  cdsaida: integer;
  dsjustificativa : string;
  sql : TStrings;
  dtemissao : TDate;
  saidainutilizada : TSaida;
  saidainutilizacao : TSaidaInutilizacao;
begin
  registro.Verificar_Bloqueio_chave;
  if not Inutilizar_NFE(nusaidai, nusaidaf, dsjustificativa, dtemissao, cdserie) then
  begin
    Exit;
  end;
  // verificar se existe nota fiscal dentro da faixa de número
  if RetornaSQLInteger('select count(*) from saida where '+get_cd_empresa+' and cdserie='+cdserie.tostring+' and nusaida between '+inttostr(nusaidai)+' and '+inttostr(nusaidaf)) > 0 then
  begin
    MessageDlg('Existe(m) número(s) da faixa que não podem ser inutilizados porque já existe na sua base de dados.', mtInformation, [mbOK], 0);
    Exit;
  end;
  sql := TStringList.Create;
  try
    for i := nusaidai to nusaidaf do
    begin
      if RetornaSQLInteger('select count(*) from saida where '+get_cd_empresa+' and cdserie='+cdserie.tostring+' and nusaida='+inttostr(i)) = 0 then
      begin
        cdsaida := qgerar.GerarCodigo(_saida);
        if i = nusaidai then
        begin
          cdsaidai := cdsaida;
        end;
        if i = nusaidaf then
        begin
          cdsaidaf := cdsaida;
        end;
        saidainutilizada := TSaida.create;
        try
          saidainutilizada.dtemissao := dtemissao;
          saidainutilizada.tpentsai := _s;
          saidainutilizada.nustdocumento := _05;
          saidainutilizada.nudocfiscalicms := _55;
          saidainutilizada.nusaida := i;
          saidainutilizada.cdserie := cdserie;
          saidainutilizada.cdsaida := cdsaida;
          saidainutilizada.dsxml   := UTF8Encode(NFe.WebServices.Inutilizacao.RetWS);
          sql.add(saidainutilizada.insert(true));
        finally
          freeandnil(saidainutilizada);
        end;
        {
        sql.Add('insert into saida(dtemissao,TPENTSAI,nustdocumento,nudocfiscalicms,nusaida,cdserie,cdsaida,dsxml,'+_sqlreg+
                getdtbanco(dtemissao)+',''S'',''05'',''55'','+inttostr(i)+','+cdserie+','+cdsaida+','+quotedstr(UTF8Encode(NFe.WebServices.Inutilizacao.RetWS))+','+SQLRegistra+';');
        }
      end
      else
      begin
        MessageDlg('Existe(m) número(s) da faixa que não podem ser inutilizados.', mtInformation, [mbOK], 0);
        Exit;
      end;
    end;
    NFe.WebServices.Inutiliza(Empresa.nucnpj  , dsjustificativa, StrToInt(FormatDateTime(_YY, dtemissao)), 55              , cdserie, nusaidai               , nusaidaf);
    saidainutilizacao := tsaidainutilizacao.create;
    try
      saidainutilizacao.cdsaidainutilizacao := qgerar.GerarCodigo(_saidainutilizacao);
      saidainutilizacao.cdsaidainicial := cdsaidai;
      saidainutilizacao.cdsaidafinal := cdsaidaf;
      saidainutilizacao.nusaidainicial := nusaidai;
      saidainutilizacao.nusaidafinal := nusaidaf;
      saidainutilizacao.dtemissao := dtemissao;
      saidainutilizacao.dsjustificativa := dsjustificativa;
      saidainutilizacao.dsxml := UTF8Encode(NFe.WebServices.Inutilizacao.RetWS);
      saidainutilizacao.nuprotocolo := NFe.WebServices.Inutilizacao.Protocolo;
      sql.add(saidainutilizacao.insert(true));
    finally
      freeandnil(saidainutilizacao);
    end;
    ExecutaScript(sql);
    MessageDlg('Inutilização enviada com sucesso!', mtInformation, [mbOK], 0);
  finally
    FreeAndNil(sql);
  end;
end;

procedure Tfrmsaida.actnfegerarpdfExecute(Sender: TObject);
begin
  if NFEGerarPDF(tela.tela.tpsaida.nucasadecimalquantidade, tela.tela.tpsaida.nucasadecimalvlunitario, nfe) <> '' then
  begin
    messagedlg('Gerado PDF com sucesso.', mtinformation, [mbok], 0);
  end;
end;

procedure Tfrmsaida.actnfeconsultacadastroExecute(Sender: TObject);
  function sguf_destinatario:string;
  begin
    result := RetornaSQLString('select sguf '+
                               'from '+tela.tela.tpsaida.tpforncliente+' '+
                               'inner join uf on uf.cduf='+tela.tela.tpsaida.tpforncliente+'.cduf '+
                               'where '+get_cd_empresa+' '+
                               'and cd'+tela.tela.tpsaida.tpforncliente+'='+cds.fieldbyname(_cd+tela.tela.tpsaida.tpforncliente).asstring);
  end;
  function cnpj_destinatario:string;
  begin
    result := RetornaSQLString('select nucnpj from '+tela.tela.tpsaida.tpforncliente+' where '+get_cd_empresa+' and cd'+tela.tela.tpsaida.tpforncliente+'='+cds.fieldbyname(_cd+tela.tela.tpsaida.tpforncliente).asstring);
  end;
  function LimpaNumero(AValue: String): String;
  var
    A : Integer ;
  begin
    Result := '' ;
    For A := 1 to length(AValue) do
    begin
      {$IFDEF DELPHI12_UP}
      if CharInSet(AValue[A], [_0.._9]) then
      {$ELSE}
      if (AValue[A] in [_0.._9]) then
      {$ENDIF}
         Result := Result + AValue[A];
    end ;
  end;
var
  old_uf, nucnpj, sguf, UF, Documento : String;
begin
  sguf := sguf_destinatario;
  uf   := sguf;
  if not(InputQuery('WebServices Consulta Cadastro', 'UF do Documento a ser Consultado:', UF)) then
  begin
    exit;
  end;
  if sguf = uf then
  begin
    nucnpj    := cnpj_destinatario;
    documento := nucnpj;
  end;
  if not(InputQuery('WebServices Consulta Cadastro', 'Documento(CNPJ)',    Documento)) then
  begin
    exit;
  end;
  Documento := Trim(LimpaNumero(Documento));
  try
    old_uf := NFe.Configuracoes.WebServices.UF;
    NFe.Configuracoes.WebServices.UF    := uf;
    NFe.WebServices.ConsultaCadastro.UF := UF;
    if Length(Documento) > 11 then
    begin
      NFe.WebServices.ConsultaCadastro.CNPJ := Documento
    end
    else
    begin
      NFe.WebServices.ConsultaCadastro.CPF  := Documento;
    end;
    NFe.WebServices.ConsultaCadastro.Executar;
    DlgXMLtoTreeView('Consulta Cadastro', NFe.WebServices.ConsultaCadastro.RetWS, true);
  finally
    NFe.Configuracoes.WebServices.UF := old_uf;
  end;
end;

procedure Tfrmsaida.actnfeconsultarExecute(Sender: TObject);
var
  nuchave : string;
begin
  if Loadnfe and (cdsnustdocumento.asstring <> _99) then
  begin
    nuchave := cdsnuchavenfe.asstring;
    Exibir_chave_nfe(exibe, cdsnusaida.asstring, nuchave);
    NFe.NotasFiscais.Items[0].NFe.infNFe.ID := nuchave;
    ConsultarNfe;
  end
  else if validarNFE(Sender) then
  begin
    NFe.NotasFiscais.Validar;
    nuchave := nfe.NotasFiscais.Items[0].NFe.infNFe.ID;
    Exibir_chave_nfe(exibe, cdsnusaida.asstring, nuchave);
    NFe.NotasFiscais.Items[0].NFe.infNFe.ID := nuchave;
    ConsultarNfe;
  end;
end;

procedure Tfrmsaida.actnfeemaildestinatarioExecute(Sender: TObject);
begin
  if not Loadnfe then
  begin
    MessageDlg('Nota Fiscal eletrônica inexistente.'#13'Não é possível enviar e-mail.', mtInformation, [mbOK], 0);
    Exit;
  end;
  NFEEnviarDestinatario(tela.tela.tpsaida.nucasadecimalquantidade,
                          tela.tela.tpsaida.nucasadecimalvlunitario,
                          nfe,
                          acbr.email,
                          cds.fieldbyname(_cdcliente).AsLargeInt,
                          cds.fieldbyname(_cdfornecedor).AsLargeInt,
                          cds.fieldbyname(_cdtransportadora).AsLargeInt);
end;

procedure Tfrmsaida.actnfeemailExecute(Sender: TObject);
  function get_arquivo_xml:string;
  var
    arquivo : tstrings;
  begin
    arquivo := tstringlist.create;
    try
      arquivo.Text := cdsdsxml.asstring;
      result := ExtractFilePath(Application.ExeName)+cdsnuchavenfe.asstring+'.'+_xml;
      arquivo.SaveToFile(result);
    finally
      freeandnil(arquivo);
    end;
  end;
var
  listaemail, email1 :string;
  lstemail : TStrings;
  bonenviarpdf : Boolean;
  procedure set_lista_cco;
  var
    i : Integer;
  begin
    if not cds.fieldbyname(_cdcliente).IsNull then
    begin
      tela.tela.cliente.select(cds.fieldbyname(_cdcliente).AsLargeInt);
      bonenviarpdf := tela.tela.cliente.bonenviarpdf = _s;
      tela.tela.cliente.listaemail(lstemail);
      if lstemail.Count = 0 then
      begin
        email1 := tela.tela.cliente.email;
      end
      else
      begin
        email1 := lstemail[0];
        lstemail.Delete(0);
      end;
    end;
    if not cds.fieldbyname(_cdfornecedor).IsNull then
    begin
      tela.tela.fornecedor.select(cds.fieldbyname(_cdfornecedor).AsLargeInt);
      tela.tela.fornecedor.uf.Select(tela.tela.fornecedor.cduf);
      bonenviarpdf := tela.tela.fornecedor.bonenviarpdf = _s;
      tela.tela.fornecedor.listaemail(lstemail);
      if lstemail.Count = 0 then
      begin
        email1 := tela.tela.fornecedor.email;
      end
      else
      begin
        email1 := lstemail[0];
        lstemail.Delete(0);
      end;
    end;
    if not cds.fieldbyname(_cdtransportadora).IsNull then
    begin
      lstemail.Text := lstemail.Text + Ttransportadora.Listaemail(cds.fieldbyname(_cdtransportadora).AsLargeInt);
    end;
    listaemail := '';
    for i := 0 to lstemail.Count - 1 do
    begin
      if listaemail <> '' then
      begin
        listaemail := listaemail + ';';
      end;
      listaemail := listaemail + lstemail[i];
    end;
    if tela.tela.tpsaida.emailcopia<> '' then
    begin
      if listaemail <> '' then
      begin
        listaemail := listaemail + ';';
      end;
      listaemail := listaemail + tela.tela.tpsaida.emailcopia;
    end;
  end;
var
  lista_arquivo : string;
  eventoemail: TEventoEmail;
begin
  verificarConfiguracaoEmail;
  if not Loadnfe then
  begin
    MessageDlg('Nota Fiscal eletrônica inexistente.'#13'Não é possível enviar e-mail.', mtInformation, [mbOK], 0);
    Exit;
  end;
  lista_arquivo := get_arquivo_xml;
  lstemail      := TStringList.Create;
  eventoemail   := TEventoEmail.create;
  try
    set_lista_cco;
    if acbr.email.bopdf and (not bonenviarpdf) then
    begin
      lista_arquivo := lista_arquivo +#13+NFEGerarPDF(tela.tela.tpsaida.nucasadecimalquantidade, tela.tela.tpsaida.nucasadecimalvlunitario, nfe, ExtractFilePath(Application.ExeName));
    end;
    eventoemail.dstitulo  := tela.tela.tpsaida.dstituloemail;
    eventoemail.dsassunto := tela.tela.tpsaida.dsassuntoemail;
    Formatar_Email(True, eventoemail.TratarTitulo(cds), eventoemail.TratarAssunto(cds), lista_arquivo, email1, listaemail, acbr.email.SmtpUser, acbr.email.SmtpPass, '');
  finally
    freeandnil(lstemail);
    freeandnil(eventoemail);
  end;
end;

procedure Tfrmsaida.actnfeValidarExecute(Sender: TObject);
begin
  QRotinas.SetDecimalSeparator;
  if validarNFE(Sender) then
  begin
    NFe.NotasFiscais.Validar;
    Exibir_chave_nfe(exibe, cdsnusaida.asstring, nfe.NotasFiscais.Items[0].NFe.infNFe.ID);
    actimprimirsaidaExecute(sender);
  end;
end;

procedure Tfrmsaida.NFEStatusChange(Sender: TObject);
  function get_ambiente:string;
  begin
    if NFe.Configuracoes.WebServices.Ambiente = taProducao then
    begin
      result          := 'Produção';
      lblstatus.Color := clGray;
    end
    else
    begin
      result          := 'Homologação';
      lblstatus.Color := clGreen;
    end;
  end;
begin
  lblnfestatus.Caption := 'Status - Ambiente '+get_ambiente;
  pnlnfe.visible       := NFe.Status <> stIdle;
  case NFe.Status of
    stNFeStatusServico : lblStatus.Caption := 'Verificando Status do servico...';
    stNFeRecepcao      : lblStatus.Caption := 'Enviando dados da NFe... ';
    stNfeRetRecepcao   : lblStatus.Caption := 'Recebendo dados da NFe...';
    stNfeConsulta      : lblStatus.Caption := 'Consultando NFe...';
    stNfeCancelamento  : lblStatus.Caption := 'Enviando cancelamento de NFe...';
    stNfeInutilizacao  : lblStatus.Caption := 'Enviando pedido de Inutilização...';
    stNFeRecibo        : lblStatus.Caption := 'Consultando Recibo de Lote...';
    stNFeCadastro      : lblStatus.Caption := 'Consultando Cadastro...';
    stNFeEmail         : lblStatus.Caption := 'Enviando Email...';
  end;
  Application.ProcessMessages;
end;

procedure Tfrmsaida.ConsultarNfe;
var
  nuchave : string;
begin
  if NFe.NotasFiscais.Items[0].NFe.infNFe.ID = '' then
  begin
    Exit;
  end;
  NFe.Consultar;
  DlgXMLtoTreeView('Consulta NFe na SEFAZ', UTF8Encode(NFe.WebServices.Consulta.RetWS), true);
  if Pos('Uso Denegado : Irregularidade fiscal do destinatario', NFe.WebServices.Consulta.RetWS) > 0 then
  begin
    if (cdsnustdocumento.asstring <> _04) and  // verificar se a nota já foi cancelada
        (MessageDlg('Nota está denegada na SEFAZ mas não está denegada no sistema.'#13'Processar no sistema?', mtConfirmation, [mbYes,mbNo], 0) = mryes) and // perguntar se é para processar o cancelamento
        tela.tela.cancelarNF(cdscdsaida.asstring, _04) then // processar cancelamento
    begin
      Abrir(cdscdsaida.asinteger);
      cds.DisableControls;
      try
        cds.ReadOnly := false;
        cds.edit;
        cdsdsxml.clear;
        cdsdsxml.asstring := NFe.NotasFiscais.Items[0].XML;
        cdsnustdocumento.asstring := _04;
        nuchave := LowerCase(NFe.NotasFiscais.Items[0].NFe.procNFe.chNFe);
        if Pos(_nfe, nuchave)> 0 then
        begin
          Delete(nuchave, 1, 3);
        end;
        cdsnuchavenfe.asstring := nuchave;
        if not registro.aplicar_atualizacao then
        begin
          Exit;
        end;
      finally
        cds.EnableControls;
      end;
      Abrir(cdscdsaida.asinteger);
    end;
    Exit;
  end;
  if pos('<cStat>100</cStat>', UTF8Encode(NFe.WebServices.Consulta.RetWS)) <= 0 then
  begin
    Exit;
  end;
  if Pos('Cancelamento de NF-e homologado', NFe.WebServices.Consulta.RetWS) > 0 then
  begin
    if (cdsnustdocumento.asstring <> _02) and (cdsnustdocumento.asstring <> _03) and // verificar se a nota já foi cancelada
       (MessageDlg('Nota está cancelada na SEFAZ mas não está cancelada no sistema.'#13'Processar cancelamento no sistema?', mtConfirmation, [mbYes,mbNo], 0) = mryes) and // perguntar se é para processar o cancelamento
        tela.tela.cancelarNF(cdscdsaida.asstring, _02) then // processar cancelamento
    begin
      Abrir(cdscdsaida.asinteger);
      cds.DisableControls;
      try
        cds.ReadOnly := false;
        cds.edit;
        cdsdsxmlcancel.asstring := NFe.WebServices.Consulta.RetWS;
        if not registro.aplicar_atualizacao then
        begin
          Exit;
        end;
      finally
        cds.ReadOnly := true;
        cds.EnableControls;
      end;
      Abrir(cdscdsaida.asinteger);
    end;
    Exit;
  end;
  if cdsnustdocumento.asstring = _99 then
  begin
    if messagedlg('Salvar xml da nota no banco de dados?', mtconfirmation,[mbyes,mbno], 0) = mryes then
    begin
      cds.DisableControls;
      try
        cds.ReadOnly := false;
        cds.edit;
        cdsdsxml.clear;
        cdsdsxml.asstring         := NFe.NotasFiscais.Items[0].XML;
        cdsnustdocumento.asstring := _00;
        nuchave                   := LowerCase(NFe.NotasFiscais.Items[0].NFe.procNFe.chNFe);
        if Pos(_nfe, nuchave)> 0 then
        begin
          Delete(nuchave, 1, 3);
        end;
        cdsnuchavenfe.asstring := nuchave;
        if not registro.aplicar_atualizacao then
        begin
          Exit;
        end;
        Abrir(cdscdsaida.asinteger);
      finally
        cds.EnableControls;
      end;
    end
  end;
end;

function Tfrmsaida.check_adnt_cliente:boolean;
var
  cdadntcliente, valor : TStrings;
  cdadiantamento : string;
begin
  result        := False;
  cdadntcliente := TStringlist.create;
  valor         := TStringList.create;
  try
    if (lowercase(cdsduplicatanmstduplicata.asstring) = _ABERTA) and
       Tadntcliente.ClientePossuiAdiantamento(cdsduplicata.fieldbyname(_cdcliente).asstring, cdadntcliente, valor) and
       (cdadntcliente.count > 0 ) and
       (messagedlg('Cliente '+cds.fieldbyname(_rzsocial+_c).AsString+' possui adiantamento.'#13+
                   'Deseja baixar contas a receber '+cdsduplicatanuduplicata.asstring+' com adiantamento?', mtinformation, [mbyes, mbno], 0) = mryes) then
    begin
      cdadiantamento := cdadntcliente[0];
      if cdadntcliente.Count > 1 then
      begin
        cdadiantamento := dlgescolheadiantamento(cdadntcliente, valor);
      end;
      if cdadiantamento <> '' then
      begin
        result := BaixarAdiantamento(cdsduplicatacdduplicata.AsInteger, _duplicata, strtoint(cdadiantamento));
      end;
    end;
  finally
    freeandnil(cdadntcliente);
    freeandnil(valor);
  end;
end;

procedure Tfrmsaida.actbaixaduplicataExecute(Sender: TObject);
begin
  if check_adnt_cliente then
  begin
    registro.RegistroAbrir(cdsCDSAIDA.asinteger);
    Exit;
  end;
  if BaixarDocumento(_duplicata, cdsduplicatacdduplicata.AsInteger) then
  begin
    registro.RegistroAbrir(cdsCDSAIDA.asinteger);
  end;
end;

procedure Tfrmsaida.actimprimirduplicataduplicataExecute(Sender: TObject);
begin
  if cdsduplicatacdduplicata.asstring = '' then
  begin
    Exit;
  end;
  ImpimirRelatorioPadrao1(331, cdsduplicatacdduplicata.asstring);
end;

procedure Tfrmsaida.actbaixaduplicatatodasExecute(Sender: TObject);
  function check_adnt_cliente:boolean;
  var
    adntcliente : tadntcliente;
    cdadntcliente, valor : TStrings;
    cdadiantamento : string;
    recno : integer;
    function Escolhe_Adiantamento:string;
    begin
      result := dlgescolheadiantamento(cdadntcliente, valor);
    end;
  begin
    result      := False;
    adntcliente := TAdntcliente.create;
    cdadntcliente := TStringlist.create;
    valor         := TStringList.create;
    recno := cdsduplicata.recno;
    cdsduplicata.DisableControls;
    try
      cdsduplicata.First;
      while not cdsduplicata.Eof do
      begin
        cdadntcliente.Clear;
        valor.Clear;
        if (lowercase(cdsduplicatanmstduplicata.asstring) = _ABERTA) and
           adntcliente.ClientePossuiAdiantamento(cdsduplicata.fieldbyname(_cdcliente).asstring, cdadntcliente, valor) and (cdadntcliente.count > 0 ) and
           (messagedlg('Cliente '+cds.FieldByName(_rzsocial+_c).AsString+' possui adiantamento.'#13'Deseja baixar contas a receber '+cdsduplicatanuduplicata.asstring+' com adiantamento?', mtinformation, [mbyes, mbno], 0) = mryes) then
        begin
          cdadiantamento := cdadntcliente[0];
          if cdadntcliente.Count > 1 then
          begin
            cdadiantamento := Escolhe_Adiantamento;
          end;
          if cdadiantamento <> '' then
          begin
            result := BaixarAdiantamento(cdsduplicatacdduplicata.AsInteger, _duplicata, strtoint(cdadiantamento));
          end;
        end;
        cdsduplicata.Next;
      end;
    finally
      freeandnil(cdadntcliente);
      freeandnil(valor);
      freeandnil(adntcliente);
      cdsduplicata.RecNo := recno;
      cdsduplicata.EnableControls;
    end;
  end;
begin
  if cdsDuplicata.RecordCount = 0 then
  begin
    Exit;
  end;
  if not tduplicata.verificarSeNota55JaFoiEnviada(cdsduplicatacdduplicata.asinteger) then
  begin
    messagedlg('Não é possível baixar contas a receber de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota antes de baixar o contas a receber.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if check_adnt_cliente then
  begin
    registro.RegistroAbrir(cdsCDSAIDA.asinteger);
    Exit;
  end;
  if BaixarDocumento(_duplicata, cdsduplicatacdduplicata.AsInteger, nil, cdscdsaida.asstring) then
  begin
    registro.RegistroAbrir(cdsCDSAIDA.asinteger);
  end;
end;

procedure Tfrmsaida.actimprimirduplicataExecute(Sender: TObject);
begin
//
end;

procedure Tfrmsaida.actbaixarExecute(Sender: TObject);
begin
//
end;

procedure Tfrmsaida.actredefinirExecute(Sender: TObject);
begin
  if RedefinirParcelamentoDuplicata(cdscdsaida.asstring, '') then
  begin
    Abrir(cdscdsaida.asinteger);
  end;
end;

procedure Tfrmsaida.actcartacorrecaoExecute(Sender: TObject);
var
  filename : TStrings;
  cdcartacorrecao, vCodigo_Status : integer;
  errormsg,  email1, cdid, dscartacorrecao : string;
  function inserirCartaCorrecao:boolean;
    function get_anomes:string;
    begin
      result := '';
      if nfe.Configuracoes.Arquivos.SepararPorMes then
      begin
        Result := FormatDateTime(_yyyymm, nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento)+'\';
      end;
    end;
    function GetFileCartaCorrecao:string;
    var
      linha : TStrings;
    begin
      linha := TStringList.Create;
      try
        filename.Add(nfe.Configuracoes.Arquivos.PathSalvar+get_anomes+nfe.EventoNFe.Evento.Items[0].InfEvento.TipoEvento +
                             nfe.EventoNFe.Evento.Items[0].InfEvento.chNFe +_0+IntToStr(nfe.EventoNFe.Evento.Items[0].InfEvento.nSeqEvento)+
                             '-ProcEventoNFe.xml');
        linha.LoadFromFile(filename[0]);
        result := linha.text;
      finally
        freeandnil(linha);
      end;
    end;
  begin
    tela.tela.CartaCorrecao.new;
    tela.tela.cartacorrecao.items[tela.tela.cartacorrecao.count-1].cdcartacorrecao := cdcartacorrecao;
    tela.tela.cartacorrecao.items[tela.tela.cartacorrecao.count-1].cdsaida := cdscdsaida.asInteger;
    tela.tela.cartacorrecao.items[tela.tela.cartacorrecao.count-1].nSeqEvento := tela.tela.cartacorrecao.count;
    tela.tela.cartacorrecao.items[tela.tela.cartacorrecao.count-1].dscartacorrecao := dscartacorrecao;
    tela.tela.cartacorrecao.items[tela.tela.cartacorrecao.count-1].tsemissao := nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
    tela.tela.cartacorrecao.items[tela.tela.cartacorrecao.count-1].nuprotocolo := nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
    tela.tela.cartacorrecao.items[tela.tela.cartacorrecao.count-1].dsxml := GetFileCartaCorrecao;
    tela.tela.cartacorrecao.items[tela.tela.cartacorrecao.count-1].insert;
    result := true;
  end;
  procedure set_evento_nfe;
    function get_corgao:integer;
    begin
      result := Empresa.endereco.cduf;
      if NomedoCodigo(_serie, cdsCDSERIE.AsString, _nuserie) >= _900 then
      begin
        result := 90;
      end;
    end;
  begin
    nfe.EventoNFe.Evento.Clear;
    nfe.EventoNFe.idLote := cdcartacorrecao;
    cdid := 'ID110110'+cdsnuchavenfe.asstring+IntToStr(tela.tela.cartacorrecao.count + 1);
    with nfe.EventoNFe.Evento.Add do
    begin
      infEvento.chNFe               := cdsnuchavenfe.asstring;
      infEvento.CNPJ                := empresa.nucnpj_;
      infEvento.dhEvento            := tsBanco;
      infEvento.cOrgao              := get_corgao;
      infEvento.tpEvento            := teCCe;
      infEvento.nSeqEvento          := tela.tela.cartacorrecao.count + 1;
      infEvento.detEvento.xCorrecao := dscartacorrecao;
    end;
  end;
  procedure Enviar_email;
  var
    enviaremail : tenviaremail;
  begin
    enviaremail := tenviaremail.create;
    try
      enviaremail.botexto := True;
      enviaremail.boexcluir_arquivo := True;
      enviaremail.dsanexo := filename;
      enviaremail.boanexo := filename;
      enviaremail.dsdestinatario := email1;
      enviaremail.dscc := '';
      enviaremail.dstitulo := 'Carta de Correção da Nota '+cdsnusaida.asstring+' da Empresa '+empresa.nmempresa;
      enviaremail.dsmensagem := 'Segue em anexo a carta de correção.';
      enviaremail.nmremetente := usuario.nmusuario;
      enviaremail.nmusuario := acbr.email.SmtpUser;
      enviaremail.dssenha := acbr.email.SmtpPass;
      enviaremail.enviar_email;
    finally
      freeandnil(enviaremail);
    end;
  end;
begin
  registro.Verificar_Bloqueio_chave;
  if tela.tela.cartacorrecao.count = 9 then
  begin
    Messagedlg('Excedeu o número de carta de correção para esta nota.', mtinformation, [mbok], 0);
    exit;
  end;
  {if NFe.Configuracoes.Geral.FormaEmissao <> nfe.NotasFiscais.Items[0].NFe.Ide.tpEmis then
  begin
    Messagedlg('Forma de emissão da nota é diferente de NFE=>Configuração.'#13'Favor alterar para continuar.', mtinformation, [mbok], 0);
    exit;
  end;}
  if not GerarCartaCorrecao(dscartacorrecao) then
  begin
    exit;
  end;
  filename := TStringList.Create;
  try
    cdcartacorrecao := strtoint(gerarcodigo(_cartacorrecao));
    try
      set_evento_nfe;
      nfe.EnviarEvento(cdcartacorrecao);
      vCodigo_Status := nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;// nfe.WebServices.EnvEvento.cStat;
      if (vCodigo_Status = 128) or (vCodigo_Status = 135) or (vCodigo_Status = 136) then
      begin
        tela.tela.nseqevento := tela.tela.cartacorrecao.count + 1;
        tela.tela.update;
        MessageBox(Handle, 'Carta de Correção enviada com sucesso.', 'Atenção', MB_OK+MB_ICONINFORMATION);
        try
          if inserirCartaCorrecao then
          begin
            ImprimirCartaCorrecao(tela.tela.cartacorrecao.items[tela.tela.cartacorrecao.count-1].dsxml);
            Abrir(cdscdsaida.asinteger);
            if messagedlg('Enviar a Carta de Correção por e-mail?', mtconfirmation, [mbyes, mbno], 0) = mryes then
            begin
              email1 := InputBox('Enviar e-mail', 'Digite o e-mail para envio da Carta de Correção', '');
              if email1 = '' then
              begin
                messagedlg('E-mail não informado.', mtinformation, [mbok], 0);
                exit;
              end;
              enviar_email;
            end;
          end;
        except
          on E: Exception do
          begin
            errormsg := 'Carta de Correção enviada com sucesso, PORÉM OCORREU UM ERRO AO GRAVAR NA BASE DE DADOS. ENTRE EM CONTATO COM A QUIPOS PARA REGULARIZAR A GRAVAÇÃO.'+#13+e.message;
            MessageBox(Handle, PChar(errormsg), 'Atenção', MB_OK+MB_ICONINFORMATION);
          end;
        end;
      end
      else if vCodigo_Status = 573 then
      begin
        tela.tela.nseqevento := tela.tela.cartacorrecao.count + 1;
        tela.tela.update;
        MessageDlg('Erro no envio da Carta de Correção nº '+FormatFloat(_0,nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + ' - ' + nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo, mtInformation, [mbOK], 0);
        Abort;
      end
      else
      begin
        MessageDlg('Erro no envio da Carta de Correção nº '+FormatFloat(_0,nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + ' - ' + nfe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo, mtInformation, [mbOK], 0);
        Abort;
      end;
    except
      on E:Exception do
      begin
        MessageBox(Handle, Pchar('Carta de Correção não foi enviada devido ao erro:' + #13#13#10 + E.Message), 'Atenção', MB_OK+MB_ICONERROR);
        Exit;
      end;
    end;
  finally
    freeandnil(filename);
  end;
end;

procedure Tfrmsaida.actenviaremailcartacorrecaoExecute(Sender: TObject);
var
  filename : TStrings;
  email1: string;
  b : TBlobField;
  procedure Enviar_email;
  var
    enviaremail : TEnviaremail;
  begin
    enviaremail := tenviaremail.create;
    try
      enviaremail.botexto := True;
      enviaremail.boexcluir_arquivo := True;
      enviaremail.dsanexo := filename;
      enviaremail.boanexo := filename;
      enviaremail.dsdestinatario := email1;
      enviaremail.dscc := '';
      enviaremail.dstitulo := 'Carta de Correção da Nota '+cdsnusaida.asstring+' da Empresa '+empresa.nmempresa;
      enviaremail.dsmensagem := 'Segue em anexo a carta de correção.';
      enviaremail.enviar_email;
    finally
      freeandnil(enviaremail);
    end;
  end;
begin
  if cdscartacorrecao.RecordCount = 0 then
  begin
    exit;
  end;
  if messagedlg('Enviar a Carta de Correção por e-mail?', mtconfirmation, [mbyes, mbno], 0) = mrno then
  begin
    Exit;
  end;
  email1 := InputBox('Enviar e-mail', 'Digite o e-mail para envio da Carta de Correção', '');
  if email1 = '' then
  begin
    messagedlg('E-mail não informado.', mtinformation, [mbok], 0);
    exit;
  end;
  filename := TStringList.Create;
  try
    filename.Add(nfe.Configuracoes.Arquivos.PathSalvar+cdsnuchavenfe.asstring+'-ProcEventoNFe.xml');
    cdscartacorrecao.Last;
    b := TBlobField(cdscartacorrecao.FieldByName(_dsxml));
    b.SaveToFile(filename[0]);
    enviar_email;
  finally
    freeandnil(filename);
  end;
end;

procedure Tfrmsaida.actImportacaoExecute(Sender: TObject);
begin
  if dlgItsaidaImportacao(cdsitsaidacditsaida.asstring, not (cds.State = dsbrowse)) then
  begin
    cdsvlii.AsCurrency := RetornaSQLCurrency('select sum(vlii) ' +
                                             'from itsaidaimportacao '+
                                             'where '+get_cd_empresa+' '+
                                             'and cditsaida in (select cditsaida from itsaida where '+get_cd_empresa+' and cdsaida='+cdscdsaida.asstring+')');
  end;
end;

procedure Tfrmsaida.actImportarArquivoXMLExecute(Sender: TObject);
var
  cdsaida : Integer;
begin
  cdsaida := TImportacaoXML.ImportarArquivoNFE;
  if cdsaida > 0 then
  begin
    abrir(cdsaida);
    messagedlg('XML Importado.', mtinformation, [mbok], 0);
  end;
end;

procedure Tfrmsaida.actImportarDiretorioXMLExecute(Sender: TObject);
begin
  if TImportacaoXML.ImportarDiretorioNFE then
  begin
    messagedlg('XML´s Importado.', mtinformation, [mbok], 0);
  end;
end;

procedure Tfrmsaida.actcopiarExecute(Sender: TObject);
var
  codigo : integer;
  mresult : integer;
begin
  registro.Verificar_Bloqueio_chave;
  mresult := MessageDlg('Copiar a nota '+cdsNUSAIDA.AsString+'?', mtConfirmation, [mbYes, mbNo], 0);
  if (mresult = mrNo) or (mresult = mrCancel) then
  begin
    exit;
  end;
  tela.tela.cdsaida := cdscdsaida.asinteger;
  codigo            := tela.tela.copiar;
  if codigo <> 0 then
  begin
    registro.RegistroAbrir(codigo);
  end;
end;

function Tfrmsaida.cancelarNFE:boolean;
var
  Justificativa : string;
begin
  result := False;
  if not GerarCartaCorrecao(Justificativa) then
  begin
    exit;
  end;
  cds.DisableControls;
  cds.ReadOnly := False;
  try
    cds.edit;
    cdsdscancelamento.asstring := Justificativa;
    if not registro.aplicar_atualizacao then
    begin
      Exit;
    end;
  finally
    cds.EnableControls;
    cds.ReadOnly := True;
  end;
  result := true;
end;

procedure Tfrmsaida.actcancelarnotaExecute(Sender: TObject);
begin
  registro.Verificar_Bloqueio_chave;
  if tela.tela.duplicata.existeBaixa then
  begin
    messagedlg('Não é possível cancelar a nota.'#13'Existe baixa no contas a receber.'#13'Exclua a baixa para poder continuar.', mtinformation, [mbok], 0);
    Abort;
  end;
  if (messagedlg('Tem certeza que deseja cancelar a nota '+cdsnusaida.asstring+'?', mtconfirmation, [mbyes,mbno], 0) = mrno) or (not cancelarNFE) then
  begin
    tela.excluir;
    exit;
  end;
  if tela.tela.cancelarNF(cdscdsaida.asstring, _02) then
  begin
    tela.excluir;
    Abrir(cdscdsaida.asinteger);
  end;
end;

function Tfrmsaida.validarNFE(sender:TObject): Boolean;
begin
  if cds.fieldbyname(_cdcliente).IsNull and cds.fieldbyname(_cdfornecedor).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Cliente+' '+_ou+' '+_Fornecedor]), mtinformation, [mbok], 0);
    Abort;
  end;
  NFe.NotasFiscais.Clear;
  ajustar(sender, tela.tela.tpsaida.bovlduplicatadiferentevltotal = _s);
  result := TNFE.gerarNFE(cdscdsaida.asinteger, nfe);
end;

procedure Tfrmsaida.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure Tfrmsaida.FormCreate(Sender: TObject);
begin
  LocacaoDevolucaoList := tLocacaoDevolucaoList.create;
  boinsertdevolucaolocacao := False;
  exibe := 'Nota Fiscal';
  abrirTabelas;
  registro := tregistro.create(self, _saida, exibe, artigoI, cds, dts, edtcodigo, true);
  GeraMenuRelatorio ('', btnimprimir, 8, self, _saida);
end;

procedure Tfrmsaida.verificarConfiguracaoEmail;
begin
  if tela.tela.tpsaida.dstituloemail = '' then
  begin
    MessageDlg('Título do email não está definido no tipo de nota fiscal.', mtInformation, [mbOK], 0);
    abort;
  end;
  if tela.tela.tpsaida.dsassuntoemail = '' then
  begin
    MessageDlg('Assunto do email não está definido no tipo de nota fiscal.', mtInformation, [mbOK], 0);
    abort;
  end;
end;

procedure Tfrmsaida.actimprimirboletoExecute(Sender: TObject);
var
  duplicatalist : TDuplicatalist;
begin
  if (cdsDuplicata.RecordCount = 0) or
     (adntcliente.ClientePossuiAdiantamento(cds.fieldbyname(_cdcliente).asstring) and
     (messagedlg('Cliente possui adiantamento.'#13'Deseja realmente imprimir a boleta?', mtinformation, [mbyes, mbno], 0) = mrno)) then
  begin
    exit;
  end;
  if not tduplicata.verificarSeNota55JaFoiEnviada(cdsduplicatacdduplicata.asinteger) then
  begin
    messagedlg('Não é possível emitir boleto de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota para depois imprimir o boleto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  duplicataList := TDuplicataList.create;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      if cdsduplicataCDSTDUPLICATA.AsString = _1 then
      begin
        duplicatalist.New.Select(cdsduplicataCDDUPLICATA.asinteger);
      end;
      cdsduplicata.Next;
    end;
    if duplicatalist.count > 0 then
    begin
      duplicatalist.ImprimirBoletoAcbr(cdsduplicataCDSETBOLETO.asinteger);
    end;
  finally
    freeandnil(duplicatalist);
  end;
end;

procedure Tfrmsaida.actimprimirduplicatanotaExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(517, cdscdsaida.asstring);
end;

procedure Tfrmsaida.actimprimirreciboduplicataExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(88, 'where saida.'+get_cd_empresa+' and duplicata.cdduplicata='+cdsduplicatacdduplicata.asstring);
end;

procedure Tfrmsaida.actimprimirreciboExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(548, 'where saida.'+get_cd_empresa+' and saida.cdsaida='+cdscdsaida.asstring);
end;

procedure Tfrmsaida.cdsCDTPCOBRANCAValidate(Sender: TField);
begin
  cdsduplicata.DisableControls;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      cdsduplicata.Edit;
      if sender.IsNull then
      begin
        cdsduplicata.FieldByName(_cdtpcobranca).Clear;
      end;
      cdsduplicata.FieldByName(_cdtpcobranca).AsInteger := sender.AsInteger;
      cdsduplicata.Post;
      cdsduplicata.Next;
    end;
  finally
    cdsduplicata.EnableControls;
  end;
end;

procedure Tfrmsaida.lblcdcondpagtoDblClick(Sender: TObject);
begin
  actAbrirCondPagtoExecute(actAbrirCondPagto);
end;

procedure Tfrmsaida.cdsCDCONDPAGTOValidate(Sender: TField);
begin
  if sender.AsString <> '' then
  begin
    tela.tela.condpagto.Select(sender.AsInteger);
    tela.tela.condpagto.stcondpagto.Select(tela.tela.condpagto.cdstcondpagto);
    if tela.tela.condpagto.stcondpagto.bogerarsaida = _n then
    begin
      messagedlg('Condição de Pagamento está no status '+tela.tela.condpagto.stcondpagto.nmstcondpagto+
                 #13'que não permite ser inserido no '+exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
      sender.FocusControl;
      abort;
    end;
    if tela.tela.condpagto.bosaida = _N then
    begin
      messagedlg('Condição de Pagamento näo está liberada para Nota Fiscal.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
      sender.FocusControl;
      abort;
    end;
    tela.tela.condpagto.itcondpagto.Ler(tela.tela.condpagto.cdcondpagto);
    if not tela.tela.condpagto.itcondpagto.Count = 0 then
    begin
      messagedlg('Condição de Pagamento não possui definição de dias de parcelamento.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
      sender.FocusControl;
      abort;
    end;
  end;
  if (cdsitsaida.State = dsedit) or (cdsitsaida.State = dsinsert) then
  begin
    cdsitsaida.Post;
  end;
  cdsCDCONDPAGTO.OnValidate := nil;
  tela.tela.GerarDuplicata;
  AtualizarDuplicata;
  cdsCDCONDPAGTO.OnValidate := cdsCDCONDPAGTOValidate;
end;

procedure Tfrmsaida.cdsCDCFOPValidate(Sender: TField);
var
  recno : integer;
begin
  Exit;
  cdsitsaida.DisableControls;
  recno := 0;
  try
    recno := cdsitsaida.recno;
    cdsitsaida.First;
    while not cdsitsaida.Eof do
    begin
      if cbxcdcfop.EditValue <> cdsitsaidacdCFOP.asstring then
      begin
        cdsitsaidacdCFOP.asstring := cbxcdcfop.EditValue;
      end;
      cdsitsaida.Next;
    end;
  finally
    cdsitsaida.RecNo := recno;
    cdsitsaida.EnableControls;
  end;
end;

procedure Tfrmsaida.lblrepresentanteDblClick(Sender: TObject);
begin
  actAbrirRepresentante.onExecute(actAbrirRepresentante);
end;

procedure Tfrmsaida.cdsCDREPRESENTANTEValidate(Sender: TField);
var
  cdstrepresentante : string;
begin
  if sender.AsString = '' then
  begin
    exit;
  end;
  cdstrepresentante := NomedoCodigo(_representante, sender.AsString, _cdstrepresentante);
  if not BooleandoCodigo(_strepresentante, cdstrepresentante, _bogerarsaida) then
  begin
    messagedlg('Representante está no status '+NomedoCodigo(_strepresentante, cdstrepresentante, _nmstrepresentante)+#13'que não permite ser inserido na Nota Fiscal.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.FocusControl;
  end;
  cdsprcomissao.AsFloat := ValordoCodigo(_representante, cdscdrepresentante.asstring, _prcomissao);
end;

procedure Tfrmsaida.memdsobservacaoPropertiesChange(Sender: TObject);
begin
  if (Length(memdsobservacao.Text) >= 250) and (cdsnudocfiscalicms.asstring = _55) and empresa.faturamento.saida.boobservacao250 then
  begin
    MessageDlg('Quantidade máxima de caracteres excedido.'#13'Permitido somente 250 caracteres.', mtInformation, [mbOK], 0);
  end;
end;

procedure Tfrmsaida.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmsaida.cdsCDNFEFINALIDADEValidate(Sender: TField);
begin
  if cdscdnfefinalidade.asstring = _2 then
  begin
    cdsnustdocumento.asstring := _06;
  end;
end;

procedure Tfrmsaida.cdsNUCNTCUSTOValidate(Sender: TField);
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
  InserirPlContaItsaida(_cntcusto);
  cdsduplicata.DisableControls;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      cdsduplicata.Edit;
      if sender.IsNull then
      begin
        cdsduplicata.FieldByName(_cdcntcusto).Clear;
        cdsduplicata.FieldByName(_nucntcusto).Clear;
        cdsduplicata.FieldByName(_nmcntcusto).Clear;
      end;
      cdsduplicata.FieldByName(_nucntcusto).AsString  := sender.AsString;
      cdsduplicata.FieldByName(_cdcntcusto).AsInteger := cdscdcntcusto.AsInteger;
      cdsduplicata.FieldByName(_nmcntcusto).AsString  := cdsNMcntcusto.AsString;
      cdsduplicata.Post;
      cdsduplicata.Next;
    end;
  finally
    cdsduplicata.EnableControls;
  end;
end;

procedure Tfrmsaida.cdsNUPLACAValidate(Sender: TField);
begin
  if (cdsNUPLACA.AsString <> '') and (Length(cdsNUPLACA.AsString) <> 7) then
  begin
    MessageDlg('Preenchimento inválido da Placa.', mtInformation, [mbOK], 0);
    cdsNUPLACA.FocusControl;
    Abort;
  end;
end;

procedure Tfrmsaida.lbltpsaidaDblClick(Sender: TObject);
begin
  actabrirtpsaida.onexecute(actabrirtpsaida);
end;

procedure Tfrmsaida.cdsCDTPSAIDAValidate(Sender: TField);
  procedure CopiarObservacaoTipo;
  begin
    if tela.tela.tpsaida.boobservacaotpsaida <> _s then
    begin
      exit;
    end;
    cdsdsobservacao.asstring := tela.tela.tpsaida.dsobservacao+#13;
  end;
  procedure limpar_dados_frete;
  begin
    edtcdTransportadora.Clear;
    edtnuplaca.Clear;
    cdscduf.clear;
    edtnmredespacho.Clear;
    edtqtvolume.Clear;
    edtdsespecie.Clear;
    edtdsmarca.Clear;
    edtnuvolume.Clear;
    edtpsbruto.Clear;
    edtpsliquido.Clear;
  end;
begin
  if sender.AsString <> '' then
  begin
    setrecord(Sender.AsInteger);
    if ((tela.tela.tpsaida.cdcfopduf <> 0) and (tela.tela.tpsaida.cdcfopfuf = 0)) or
       ((tela.tela.tpsaida.cdcfopduf = 0) and (tela.tela.tpsaida.cdcfopfuf <> 0)) or
       ((tela.tela.tpsaida.cdcfopdufsubtrib <> 0) and (tela.tela.tpsaida.cdcfopfufsubtrib = 0)) or
       ((tela.tela.tpsaida.cdcfopdufsubtrib = 0) and (tela.tela.tpsaida.cdcfopfufsubtrib <> 0)) then
    begin
      MessageDlg('As configurações de CFOP do tipo de nota fiscal estão incompletas favor corrigir antes de continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if tela.tela.tpsaida.serie.boativar <> _s then
    begin
      MessageDlg('Série '+tela.tela.tpsaida.serie.nmserie+' desativada.'#13'Escolha outro tipo de documento para continuar.', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      Abort;
    end;
    if tela.tela.tpsaida.serie.nudocfiscalicms = '' then
    begin
      MessageDlg('Documento Fiscal não está configurado no tipo de documento.'#13'Altere o tipo de documento para continuar.', mtInformation, [mbOK], 0);
      if (Sender <> nil) and (TEdit(Sender).Enabled) then
      begin
        Sender.FocusControl;
      end;
      Abort;
    end;
  	edtcodigo.Enabled := tela.tela.tpsaida.serie.nudocfiscalicms = _02;
    if tela.tela.tpsaida.bofrete <> _s then
    begin
      limpar_dados_frete;
    end;
    if (cdscdserie.asstring <> '') and (cdscdserie.asInteger <> tela.tela.tpsaida.cdserie) then
    begin
      TSerie.voltar_Numero_serie(cdsnusaida.AsInteger-1, cdscdserie.asInteger);
      codigoinsercao := 0;
    end;
    if codigoinsercao = 0 then
    begin
      repeat
        if (codigoinsercao <> 0) and (codigoinsercao = codigooriginal) and (tela.tela.tpsaida.cdserie=cdserieoriginal) then
        begin
          Break;
        end;
        codigoinsercao := qgerar.GerarCodigo(_serie, inttostr(tela.tela.tpsaida.cdserie));
      until (tsaida.CodigoNotaFiscal(codigoinsercao, tela.tela.tpsaida.cdserie) = 0);
    end;
    cdsnusaida.asinteger := codigoinsercao;
    edtcodigo.text      := inttostr(codigoinsercao);
    pnl.Caption         := exibe + ' ' + cdsnusaida.asstring;
    CopiarObservacaoTipo;
    if (tela.tela.tpsaida.boduplicata <> _s) and (not cdscdcondpagto.IsNull) then
    begin
      cdscdcondpagto.clear;
      cbxCDCONDPAGTO.Text := '';
    end;
    cdsnudocfiscalicms.asstring := tela.tela.tpsaida.serie.nudocfiscalicms;
    cdsnmdocfiscalicms.asstring := qregistro.CampodoCampo(_docfiscalicms, _nudocfiscalicms, tela.tela.tpsaida.serie.nudocfiscalicms, _nmdocfiscalicms, true);
    if tela.tela.tpsaida.serie.nudocfiscalicms = _55 then
    begin
      cdsnustdocumento.asstring := _98
    end
    else
    begin
      cdsnustdocumento.asstring := _00;
    end;
    cdscdserie.asinteger := tela.tela.tpsaida.cdserie;
    cdsdsmarca.asstring := tela.tela.tpsaida.dsmarca;
    cdsdsespecie.asstring := tela.tela.tpsaida.dsespecie;
    cdstpentsai.asstring := tela.tela.tpsaida.tpentsai;
    if tela.tela.tpsaida.boimportacao = _s then
    begin
      cdsboimportacao.asstring := _S
    end
    else
    begin
      cdsboimportacao.asstring := _N;
    end;
    if tela.tela.tpsaida.bodescontocomissao = _s then
    begin
      cdsbodescontocomissao.asstring := _s;
    end;
    if tela.tela.tpsaida.bocomissao <> _s then
    begin
      cdscdrepresentante.clear;
      cdsprcomissao.clear;
      cdsvlcomissao.clear;
    end;
  end;
  cds.FieldByName(_boitemdesconto).AsString := tela.tela.tpsaida.boitemdesconto;
  if cds.State <> dsinsert then
  begin
    Exit;
  end;
  if not cbxcdcfop.Visible then
  begin
    edtDTEMISSAO.SetFocus;
    Exit;
  end;
  if cbxcdcfop.Enabled then
  begin
    cbxcdcfop.SetFocus;
  end;
end;

procedure Tfrmsaida.cdsNUPLCONTAValidate(Sender: TField);
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
    cdsNMPLCONTA.AsString := NomedoCodigo(_plconta, cdscdplconta.asstring);
  end
  else
  begin
    cdscdplconta.clear;
    cdsNMPLCONTA.Clear;
  end;
  InserirPlContaItsaida(_plconta);
  cdsduplicata.DisableControls;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      cdsduplicata.Edit;
      if sender.IsNull then
      begin
        cdsduplicata.FieldByName(_cdplconta).Clear;
        cdsduplicata.FieldByName(_nuplconta).Clear;
        cdsduplicata.FieldByName(_nmplconta).Clear;
      end;
      cdsduplicata.FieldByName(_cdplconta).AsInteger := cdscdplconta.AsInteger;
      cdsduplicata.FieldByName(_nmplconta).AsString  := cdsNMPLCONTA.AsString;
      cdsduplicata.FieldByName(_nuplconta).AsString  := sender.AsString;
      cdsduplicata.Post;
      cdsduplicata.Next;
    end;
  finally
    cdsduplicata.EnableControls;
  end;
end;

procedure Tfrmsaida.edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmsaida.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure Tfrmsaida.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmsaida.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure Tfrmsaida.cdsVLFRETEValidate(Sender: TField);
begin
  GravartotaisClasse;
end;

procedure Tfrmsaida.cdsVLSEGUROValidate(Sender: TField);
begin
  GravartotaisClasse;
end;

procedure Tfrmsaida.cdsPRDESCONTOValidate(Sender: TField);
var
  vltotal : currency;
begin
  vltotal                  := cdsvlproduto.AsCurrency + cdsvlservico.AsCurrency + cdsvlfrete.AsCurrency + cdsvlipi.AsCurrency + cdsvlseguro.AsCurrency + cdsvlicmssubtrib.AsCurrency + cdsvloutdespesa.AsCurrency;
  cdsVLDESCONTO.OnValidate := nil;
  cdsvldesconto.AsCurrency := vltotal * (cdsprdesconto.AsCurrency / 100);
  cdsVLDESCONTO.OnValidate := cdsVLDESCONTOValidate;
  GravartotaisClasse;
  if not cdscdcondpagto.IsNull then
  begin
    tela.tela.GerarDuplicata;
    AtualizarDuplicata;
  end;
end;

procedure Tfrmsaida.cdsVLDESCONTOValidate(Sender: TField);
var
  vltotal : Currency;
begin
  vltotal := cdsvlproduto.AsCurrency +
             cdsvlservico.AsCurrency +
             cdsvlfrete.AsCurrency +
             cdsvlipi.AsCurrency +
             cdsvlseguro.AsCurrency +
             cdsvlicmssubtrib.AsCurrency +
             cdsvloutdespesa.AsCurrency;
  cdsPRDESCONTO.OnValidate := nil;
  if sender.AsCurrency > vltotal then
  begin
    messagedlg('Valor desconto não pode ser maior do o valor total da nota.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  if vltotal > 0 then
  begin
    cdsprdesconto.AsFloat := cdsvldesconto.AsCurrency * 100 / vltotal
  end
  else
  begin
    cdsprdesconto.AsFloat := 0;
  end;
  cdsPRDESCONTO.OnValidate := cdsPRDESCONTOValidate;
  GravartotaisClasse;
  if not cdscdcondpagto.IsNull then
  begin
    tela.tela.GerarDuplicata;
    AtualizarDuplicata;
  end;
end;

procedure Tfrmsaida.cdsVLOUTDESPESAValidate(Sender: TField);
begin
  GravartotaisClasse;
end;

procedure Tfrmsaida.cdssaidatpcomissaoBeforePost(DataSet: TDataSet);
begin
  if cdssaidatpcomissaocdsaidatpcomissao.IsNull then
  begin
    cdssaidatpcomissaocdsaidatpcomissao.asstring := GerarCodigo(_saidatpcomissao);
  end;
  RegistraInformacao_(dataset);
end;

procedure Tfrmsaida.cdssaidatpcomissaoPRCOMISSAOValidate(Sender: TField);
var
  i : integer;
begin
  if cdssaidatpcomissao.State = dsedit then
  begin
    Exit;
  end;
  cdsitsaida.DisableControls;
  try
    cdsitsaida.First;
    i := 1;
    repeat
      cdsitsaida.RecNo := i;
      if cdsitsaidacdtpcomissao.asstring = cdssaidatpcomissaocdtpcomissao.asstring then
      begin
        if cdsitsaida.State = dsbrowse then
        begin
          cdsitsaida.Edit;
        end;
        cdsitsaidaprcomissao.Asfloat    := Sender.Asfloat;
        cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.AsCurrency * (cdsitsaidaprcomissao.Asfloat / 100), tela.tela.tpsaida.boarredondar = _s);
        cdsitsaida.Post;
      end;
      Inc(i);
    until i > cdsitsaida.RecordCount;
  finally
    cdsitsaida.EnableControls;
  end;
end;

procedure Tfrmsaida.grdsaidareferenciadaDBTableView1NUDOCUMENTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  if (cdstpdevolucao.asstring = _S) or (cdstpdevolucao.asstring = _C) then
  begin
    codigo := Localizarsaida;
    if codigo <> 0 then
    begin
      cdssaidareferenciadacdsaidaorigem.Asinteger := codigo;
      cdssaidareferenciadanudocumento.asstring   := qregistro.StringdoCodigo(_saida, codigo, _nusaida);
    end;
  end
  else if cdstpdevolucao.asstring = _E then
  begin
    codigo := Localizarentrada(edtcdfornecedor.Text);
    if codigo <> 0 then
    begin
      cdssaidareferenciadacdentradaorigem.asInteger := codigo;
      cdssaidareferenciadanudocumento.asstring     := qregistro.StringdoCodigo(_entrada, codigo, _nuentrada);
    end;
  end;
end;

procedure Tfrmsaida.cdssaidac111BeforePost(DataSet: TDataSet);
begin
  if cdssaidac111CDSAIDAC111.IsNull then
  begin
    cdssaidac111CDSAIDAC111.asstring := GerarCodigo(_saidac111);
  end;
  RegistraInformacao_(dataset);
end;

procedure Tfrmsaida.cdssaidaefd0450BeforePost(DataSet: TDataSet);
begin
  if cdssaidaefd0450CDSAIDAEFD0450.IsNull then
  begin
    cdssaidaefd0450CDSAIDAEFD0450.asstring := GerarCodigo(_saidaefd0450);
  end;
  RegistraInformacao_(dataset);
end;

procedure Tfrmsaida.cdssaidaefd0450CDEFD0450Validate(Sender: TField);
begin
  if sender.IsNull then
  begin
    cdssaidaefd0450NMEFD0450.Clear;
    Exit;
  end;
  if not CodigoExiste(_efd0450, Sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_0+_450+' '+__informacao+' '+_complementar)]), mterror, [mbok], 0);
    abort;
  end;
  cdssaidaefd0450NMEFD0450.AsString := NomedoCodigo(_efd0450, Sender.AsString);
end;

procedure Tfrmsaida.cdssaidareferenciadaAfterScroll(DataSet: TDataSet);
begin
  SetSaidaReferenciadaFocusing;
end;

procedure Tfrmsaida.cdssaidareferenciadaBeforePost(DataSet: TDataSet);
begin
  if dataset.fieldbyname(_bodigitarchave).asstring = _s then
  begin
    if dataset.fieldbyname(_nuchavenfe).asstring = '' then
    begin
      messagedlg('Nº da chave é um campo obrigatório.', mtinformation, [mbok], 0);
      pgc.ActivePage := tbsreferenciada;
      dataset.fieldbyname(_nuchavenfe).FocusControl;
      abort;
    end;
  end
  else
  begin
    if dataset.fieldbyname(_nudocumento).asstring = '' then
    begin
      messagedlg('Nº do documento é um campo obrigatório.', mtinformation, [mbok], 0);
      pgc.ActivePage := tbsreferenciada;
      dataset.fieldbyname(_nudocumento).FocusControl;
      abort;
    end;
  end;
  if cdssaidareferenciadaCDSAIDAREFERENCIADA.IsNull then
  begin
    cdssaidareferenciadacdsaidareferenciada.asstring := GerarCodigo(_saidareferenciada);
  end;
  registrainformacao_(dataset);
end;

procedure Tfrmsaida.cdssaidareferenciadaBODIGITARCHAVEValidate(Sender: TField);
begin
  if sender.asstring = _s then
  begin
    sender.dataset.fieldbyname(_nudocumento).clear;
  end;
  SetSaidaReferenciadaFocusing;
end;

procedure Tfrmsaida.cdssaidareferenciadaNewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname(_bodigitarchave).asstring := _n;
end;

procedure Tfrmsaida.cdssaidareferenciadaNUDOCUMENTOValidate(Sender: TField);
  function get_table:string;
  begin
    if cdstpdevolucao.IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Origem+' '+_da+' '+_nota]), mtinformation, [mbok], 0);
      pgc.ActivePage := tbsreferenciada;
      rdgtpdevolucao.SetFocus;
      Abort;
    end;
    if (cdstpdevolucao.AsString = _s) or (cdstpdevolucao.AsString = _c) then
    begin
      result := _saida
    end
    else
    begin
      result := _entrada;
    end;
  end;
  procedure verifica_se_existe;
  var
    codigo : integer;
  begin
    if Sender.DataSet.fieldbyname(_cd+get_table+_origem).asstring <> ''then
    begin
      if sender.asstring = NomedoCodigo(get_table, Sender.DataSet.fieldbyname(_cd+get_table+_origem).asstring, _nu+get_table) then
      begin
        Exit;
      end;
    end;
    if get_table = _saida then
    begin
      codigo := tsaida.CodigoNotaFiscal(sender.asstring);
      if codigo = -1 then
      begin
        sender.Clear;
        exit;
      end;
      if codigo = 0 then
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_nota+' '+_Fiscal)]), mterror, [mbok], 0);
        abort;
      end;
      cdssaidareferenciadacdsaidaorigem.asinteger := codigo;
    end
    else
    begin
      codigo := entrada.codigonotaFiscal(sender.asstring);
      if codigo = -1 then
      begin
        sender.Clear;
        exit;
      end;
      if codigo = 0 then
      begin
        MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_compra)]), mterror, [mbok], 0);
        abort;
      end;
      cdssaidareferenciadacdentradaorigem.asinteger := codigo;
    end;
  end;
  procedure verifica_status; // verificar se está cancelada
  var
    nudocfiscalicms, nustdocumento : string;
  begin
    if get_table <> _saida then
    begin
      Exit;
    end;
    nustdocumento   := NomedoCodigo(_saida, cdssaidareferenciadacdsaidaorigem.asstring, _nustdocumento);
    nudocfiscalicms := NomedoCodigo(_saida, cdssaidareferenciadacdsaidaorigem.asstring, _nudocfiscalicms);
    if (nustdocumento <> _00) and (nustdocumento <> _01) and (nustdocumento <> _08) then
    begin
      messagedlg('Nota Fiscal '+sender.asstring+' não pode ser utilizado como referência por causa do status.', mterror, [mbok], 0);
      abort;
    end;
    if (cdstpdevolucao.AsString = _s) and (nudocfiscalicms <> _55) then
    begin
      messagedlg('Documento '+sender.asstring+' não é nota fiscal eletrônica', mterror, [mbok], 0);
      abort;
    end;
    if (cdstpdevolucao.AsString = _c) and (nudocfiscalicms <> _2d) then
    begin
      messagedlg('Documento '+sender.asstring+' não é cupom fiscal.', mterror, [mbok], 0);
      abort;
    end;
  end;
  procedure verifica_se_eh_do_destinatario_da_nota_fiscal;
  var
    cddestinatario : string;
  begin
    cddestinatario := NomedoCodigo(get_table, Sender.DataSet.fieldbyname(_cd+get_table+_origem).asstring, _cdcliente);
    if cddestinatario <> '' then
    begin
      if cds.fieldbyname(_cdcliente).asstring = '' then
      begin
        MessageDlg('Nota ('+sender.AsString+') refenciada é de cliente mas o destinatário é fornecedor.', mtInformation, [mbok], 0);
        Abort;
      end;
      if cds.fieldbyname(_cdcliente).asstring <> cddestinatario then
      begin
        MessageDlg('Nota ('+sender.AsString+') refenciada é de cliente diferente do destinatário.', mtInformation, [mbok], 0);
        Abort;
      end;
    end
    else
    begin
      cddestinatario := NomedoCodigo(get_table, Sender.DataSet.fieldbyname(_cd+get_table+_origem).asstring, _cdfornecedor);
      if cddestinatario = '' then
      begin
        Exit;
      end;
      if cds.fieldbyname(_cdfornecedor).asstring = '' then
      begin
        MessageDlg('Nota ('+sender.AsString+') refenciada é de fornecedor mas o destinatário é cliente.', mtInformation, [mbok], 0);
        Abort;
      end;
      if cds.fieldbyname(_cdfornecedor).asstring <> cddestinatario then
      begin
        MessageDlg('Nota ('+sender.AsString+') refenciada é de fornecedor diferente do destinatário.', mtInformation, [mbok], 0);
        Abort;
      end;
    end;
  end;
begin
  if sender.isnull then
  begin
    cdssaidareferenciadaCDSAIDAORIGEM.Clear;
    cdssaidareferenciadaCDENTRADAORIGEM.Clear;
    Exit;
  end;
  verifica_se_existe;
  verifica_status;
  verifica_se_eh_do_destinatario_da_nota_fiscal;
end;

procedure Tfrmsaida.cdsduplicataBeforePost(DataSet: TDataSet);
begin
  if dataset.State = dsedit then
  begin
    if (cdsduplicatadtvencimento.oldvalue <> cdsduplicatadtvencimento.asstring) and (cdsduplicatadtprorrogacao.asstring = cdsduplicatadtvencimento.oldvalue) then
    begin
      cdsduplicatadtprorrogacao.asdatetime := cdsduplicatadtvencimento.AsDateTime;
    end;
    if (cdsduplicatavlduplicata.oldvalue <> cdsduplicatavlduplicata.asstring) and (cdsduplicatavlsaldo.asstring = cdsduplicatavlduplicata.oldvalue) then
    begin
      cdsduplicatavlsaldo.AsCurrency := cdsduplicatavlduplicata.AsCurrency;
    end;
  end;
  RegistraInformacao_(dataset);
end;

procedure Tfrmsaida.cdsduplicataNUCNTCUSTOValidate(Sender: TField);
begin
  if sender.asstring = '' then
  begin
    cdsduplicataCDcntcusto.Clear;
    cdsduplicataNMcntcusto.Clear;
    Exit;
  end;
  if not CodigoExiste(_cntcusto, _nunivel, _string, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    abort;
  end;
  cdsduplicatacdcntcusto.asstring := codigodocampo(_cntcusto, sender.AsString, _nunivel);
  cdsduplicatanmcntcusto.asstring := NomedoCodigo (_cntcusto, cdsduplicatacdcntcusto.asstring);
end;

procedure Tfrmsaida.cdsduplicataNUPLCONTAValidate(Sender: TField);
begin
  if sender.asstring = '' then
  begin
    cdsduplicataCDPLCONTA.Clear;
    cdsduplicataNMPLCONTA.Clear;
    Exit;
  end;
  if not CodigoExiste(_plconta, _nunivel, _string, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    abort;
  end;
  cdsduplicatacdplconta.asstring := codigodocampo(_plconta, sender.AsString, _nunivel);
  cdsduplicatanmplconta.asstring := NomedoCodigo (_plconta, cdsduplicatacdplconta.asstring);
end;

procedure Tfrmsaida.cdsduplicataVLDUPLICATAValidate(Sender: TField);
begin
  cdsduplicataVLSALDO.AsCurrency := sender.AsCurrency;
end;

procedure Tfrmsaida.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  edtcodigo.Enabled       := not ((dts.State = dsinsert) or (dts.State = dsedit));
  actcancelarNF.Enabled   := actEditar.Enabled;
  actredefinir.Enabled    := acteditar.Enabled;
  actnfeconsultar.Enabled := actEditar.Enabled;
  actcopiarchave.Enabled  := actEditar.Enabled;
  cbxCDCONDPAGTO.Enabled  := not ((dts.State = dsedit) and (tela.tela.ExistebaixaDuplicata(cdscdsaida.asstring)));
  if tela.tela.tpsaida.serie.nudocfiscalicms = _55 then
  begin
    actnfemenu.Enabled := actEditar.Enabled;
  end;
end;

procedure Tfrmsaida.cdsAfterScroll(DataSet: TDataSet);
begin
  cdsitsaida.DisableControls;
  cdsduplicata.DisableControls;
  try
    tela.dados.select(cds);
    tela.dados.tpsaida.Select(tela.dados.cdtpsaida);
    tela.dados.itsaida.Ler(cdsitsaida, cdsitsaidalote);
    tela.dados.duplicata.ler(cdsduplicata);
    tela.dados.cartacorrecao.ler(cdscartacorrecao);

    tela.tela.select(cds);
    tela.tela.tpsaida.Select(tela.tela.cdtpsaida);
    tela.tela.cliente.select(tela.tela.cdcliente);
    tela.tela.fornecedor.select(tela.tela.cdfornecedor);
    tela.tela.itsaida.Ler(cdsitsaida, cdsitsaidalote);
    tela.tela.duplicata.ler(cdsduplicata);
    tela.tela.cartacorrecao.ler(cdscartacorrecao);
    if cdsitsaida.RecordCount > 0 then
    begin
      cdsitsaida.First;
    end;
    if cdsduplicata.RecordCount > 0 then
    begin
      cdsduplicata.First;
    end;
  finally
    cdsitsaida.EnableControls;
    cdsduplicata.EnableControls;
  end;

  codigoinsercao             := cds.FieldByName(_nusaida).AsInteger;
  tbscancelamento.TabVisible := cdsnustdocumento.asstring = _02;
  lblnuordserv.Visible       := Empresa.ordserv.bo and (not cdsNUORDSERV.IsNull);
  txtNUORDSERV.Visible       := empresa.ordserv.bo and (not cdsNUORDSERV.IsNull);
  setReferenciada;
  txtNUCUPOM.Visible := cdsNUDOCFISCALICMS.AsString = _2D;
  lblnucupom.Visible := cdsNUDOCFISCALICMS.AsString = _2D;
  setrecord(cdsCDTPSAIDA.AsInteger);
  codigooriginal                   := cdsnusaida.asinteger;
  cdserieoriginal                  := cdscdserie.asinteger;
  actGerarDevolucaoSaida.Enabled   := cdstpentsai.asstring = _S;
  actGerarDevolucaoEntrada.Enabled := cdstpentsai.asstring = _S;
  if actGerarDevolucaoEntrada.Enabled and (cdsnudocfiscalicms.asstring = _55) and (cdsnuchavenfe.asstring = '') then
  begin
    actGerarDevolucaoEntrada.Enabled := False;
    actGerarDevolucaoSaida.Enabled   := False;
  end;
  tbscartacorrecao.TabVisible      := cdsnudocfiscalicms.asstring = _55;
  // verificar se esta nota faz parte de um livro fiscal
  if empresa.livro.bolivrofiscal and (not tlivrofiscal.permitealterarnota(cdsdtemissao.AsDateTime)) then
  begin
    actEditar.Enabled       := false;
    actExcluir.Enabled      := false;
    actcancelarNF.Enabled   := false;
    actcancelarnota.Enabled := false;
  end
  else
  begin
    actEditar.Enabled       := (cds.State <> dsInsert) and (not (cdsnustdocumento.asstring = _02));
    actcancelarNF.Enabled   := (cds.State <> dsInsert) and (cdsnustdocumento.asstring = _00);
    actcancelarnota.Enabled := (cds.State <> dsInsert) and (cdsnustdocumento.asstring = _00);
    if actcancelarnf.Enabled then
    begin
      actcancelarNF.Enabled := not tela.tela.ExistebaixaDuplicata(cdscdsaida.asstring);
    end;
  end;
  if cdsnudocfiscalicms.asstring = _2d then
  begin
    actEditar.Enabled       := True;
    actExcluir.Enabled      := false;
    actcancelarnota.Enabled := false;
    actcopiar.Enabled       := false;
  end;
  loadnfe;
  if cdsnusaida.asstring <> '' then
  begin
    pnl.Caption := pnl.caption + ' (' +nomedocodigonu(_stdocumento, cdsnustdocumento.asstring)+')';
    if cdsnuchavenfe.asstring <> '' then
    begin
      pnl.caption := pnl.Caption + ' - Chave '+ qrotinas.getchave(cdsnuchavenfe.asstring);
    end;
  end;
  if not cdscdserie.IsNull then
  begin
    pnl.Caption := pnl.Caption + ' Série '+NomedoCodigo(_serie, cdscdserie.asstring);
  end;
  if not cds.fieldbyname(_cdcliente).IsNull then
  begin
    tela.tela.cliente.select(cds.fieldbyname(_cdcliente).AsLargeInt);
    lbldestinatario.Hint := tela.tela.cliente.hint_rzsocial;
  end;
  if not cds.fieldbyname(_cdfornecedor).IsNull then
  begin
    tela.tela.fornecedor.select(cds.fieldbyname(_cdfornecedor).AsLargeInt);
    tela.tela.fornecedor.uf.Select(tela.tela.fornecedor.cduf);
    lbldestinatario.Hint := tela.tela.fornecedor.hint_rzsocial;
  end;
  actemailnotafiscal.Visible  := cdsNUCHAVENFE.IsNull;
  actemailnotafiscalboleto.Visible := cdsNUCHAVENFE.IsNull;
  gbxdevolucao.Visible := (not cdsCDSAIDADEVOLUCAO.IsNull) or (not cdsCDENTRADA.IsNull);
  if not cdsCDSAIDADEVOLUCAO.IsNull then
  begin
    lblnusaidadevolucao.Caption := NomedoCodigo(_saida, cdsCDSAIDADEVOLUCAo.AsString, _nuentrada);
  end;
  if not cdsCDENTRADA.IsNull then
  begin
    lblnuentrada.caption := NomedoCodigo(_entrada, cdsCDENTRADA.AsString, _nuentrada);
  end;
  actcopiar.enabled := (cdsNUSTDOCUMENTO.asstring <> _04) and (cdsNUSTDOCUMENTO.asstring <> _02) and (cdsNUSTDOCUMENTO.asstring <> _03);
end;

procedure Tfrmsaida.cdsBeforePost(DataSet: TDataSet);
var
  mensagem : string;
begin
  tela.tela.select(dataset);
  if tela.tela.dtemissaovazia then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+_de+' '+__Emissao]), mtinformation, [mbok], 0);
    dataset.fieldbyname(_dtemissao).focuscontrol;
    abort;
  end;
  if tela.tela.dtemissaoMaiorLivroFiscal then
  begin
    messagedlg('Data de Emissão inválida!'#13'Digite uma data acima da data da última '#13'apuração do livro fiscal ('+formatdatetime(_dd_mm_yyyy, tlivrofiscal.UltimoDia)+')', mtinformation, [mbok], 0);
    dataset.fieldbyname(_dtemissao).focuscontrol;
    abort;
  end;
  if tela.tela.dtemissaoAcimaMesAtual then
  begin
    messagedlg('Data de Emissão inválida!'#13'Digite uma nota dentro do mês corrente para continuar!', mtinformation, [mbok], 0);
    dataset.fieldbyname(_dtemissao).focuscontrol;
    abort;
  end;
  if tela.tela.dtsaidaMenorDtemissao then
  begin
    messagedlg('Data de Saída inválida!'#13'Data de Saída não pode ser menor do que a Data de Emissão!', mtinformation, [mbok], 0);
    dataset.fieldbyname(_dtsaida).focuscontrol;
    abort;
  end;
  if tela.tela.cdtpsaida = 0 then
  begin
    if cbxcdtpsaida.visible then
    begin
      cbxcdtpsaida.SetFocus;
    end;
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_Documento]), mtinformation, [mbok], 0);
    abort;
  end;
  mensagem := tela.tela.ConsistirCFOPDestinatario;
  if mensagem <> '' then
  begin
    messagedlg(mensagem, mtinformation, [mbok], 0);
    cdscdcfop.FocusControl;
    abort;
  end;
  if (Dataset.State <> dsinsert) and (cdsprcomissao.AsFloat <> cdsprcomissao.OldValue) then
  begin
    RecalcularComissao;
  end;
  if (dataset.State = dsinsert) and (tela.tela.nusaida = 0) then
  begin
    repeat
      tela.tela.nusaida := qgerar.GerarCodigo(_serie, inttostr(tela.tela.tpsaida.cdserie));
    until not tela.tela.duplicidadeNotaFiscal;
    cdsnusaida.asinteger := tela.tela.nusaida;
    edtcodigo.text := cdsnusaida.asstring;
  end;
  if edtcodigo.text <> '' then
  begin
    cdsnusaida.asstring := edtcodigo.text;
  end;
  // consiste a duplicidade de nota fiscal
  if tela.tela.duplicidadeNotaFiscal then
  begin
    messagedlg('Número de Nota Fiscal duplicado!'#13'Digite outro número para continuar.', mtinformation, [mbok], 0);
    edtcodigo.setfocus;
    abort;
  end;
  if cdsDTREFERENCIA.IsNull then
  begin
    cdsDTREFERENCIA.asdatetime := cdsDTSAIDA.AsDateTime;
  end;
  registrainformacao_(dataset);
  tela.tela.select(dataset);
end;

procedure Tfrmsaida.cdsBOITEMDESCONTOValidate(Sender: TField);
begin
  configurarboitemdesconto;
end;

procedure Tfrmsaida.cdsBOOUTDESPESAITEMValidate(Sender: TField);
begin
  setLiberarCampoOutDespesa;
end;

procedure Tfrmsaida.cdsNUSAIDAValidate(Sender: TField);
begin
  if tela.tela.tpsaida.bodshistoriconf = _s then
  begin
    cdsdshistorico.asstring := 'NF '+cdsnusaida.asstring + ' - '+ nomedocodigo(_cliente, cds.fieldbyname(_cdcliente).asstring);
  end;
end;

procedure Tfrmsaida.cdsCDCLIENTEValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    Exit;
  end;
  tela.tela.cliente.select(sender.AsLargeInt);
  if tela.tela.cliente.cdcliente = 0 then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_Cliente)]), mterror, [mbok], 0);
    cdsprcomissao.clear;
    cdsCDCFOP.clear;
    edtcdcliente.Clear;
    sender.DataSet.FieldByName(_rzsocial+_c).clear;
    sender.FocusControl;
    Abort;
  end;
  tela.tela.cliente.stcliente.Select(tela.tela.cliente.cdstcliente);
  if (tela.tela.cliente.stcliente.bogerarsaida <> _s) or (tela.tela.cliente.stcliente.bogerarinfo <> _s) then
  begin
    messagedlg('Cliente está no status '+tela.tela.cliente.stcliente.nmstcliente+#13'que não permite ser inserido na '+exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    sender.DataSet.FieldByName(_rzsocial+_c).clear;
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
  lbldestinatario.Hint := tela.tela.cliente.hint_rzsocial;
  cds.fieldbyname(_cdfornecedor).Clear;
  if tela.tela.cliente.boconsumidorfinal = _s then
  begin
    cds.FieldByName(_boconsumidorfinal).AsString := _s;
  end
  else
  begin
    cds.FieldByName(_boconsumidorfinal).AsString := _n;
  end;
  if tela.tela.tpsaida.bocomissao = _s then
  begin
    if tela.tela.cliente.cdrepresentante > 0 then
    begin
      cdscdrepresentante.asinteger := tela.tela.cliente.cdrepresentante;
    end;
    if cdsprcomissao.IsNull then
    begin
      cdsprcomissao.AsCurrency := qregistro.ValordoCodigo(_representante, tela.tela.cliente.cdrepresentante, _prcomissao);
    end;
  end
  else
  begin
    cdscdrepresentante.clear;
    cdsprcomissao.clear;
    cdsvlcomissao.clear;
  end;
  if tela.tela.tpsaida.bodshistoriconf = _s then
  begin
    cdsdshistorico.asstring := 'NF '+cdsnusaida.asstring + ' - '+ tela.tela.cliente.nmcliente;
  end;
  atualizarClienteDuplicata;
  sender.DataSet.FieldByName(_rzsocial+_c).asstring := tela.tela.cliente.rzsocial;
end;

procedure Tfrmsaida.itsaidaCalcularIRRF;
begin
  if tela.tela.tpsaida.boirrf = _s then
  begin
    if cdsitsaidaBOSERVICO.asstring = _S then
    begin
      if (not cdsitsaidaalirrf.IsNull) and (cdsitsaidaalirrf.AsCurrency > 0) then
      begin
        cdsitsaidavlirrf.AsCurrency := QRotinas.Roundqp((cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat) * cdsitsaidaalirrf.Asfloat / 100, tela.tela.tpsaida.boarredondar = _s);
        cdsitsaidavlbaseirrf.AsCurrency := cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat;
      end
      else
      begin
        cdsitsaidavlirrf.clear;
        cdsitsaidavlbaseirrf.clear;
      end;
    end
    else
    begin
      cdsitsaidavlirrf.clear;
      cdsitsaidavlbaseirrf.clear;
      cdsitsaidaalirrf.clear;
    end;
  end
  else
  begin
    cdsitsaidaalirrf.clear;
    cdsitsaidavlirrf.clear;
    cdsitsaidavlbaseirrf.clear;
  end;
end;

procedure Tfrmsaida.itsaidaCalcularIPI;
begin
  if tela.tela.tpsaida.boipi = _s then
  begin
    if cdsitsaidaBOSERVICO.asstring <> _S then
    begin
      if cdsitsaidabobaseipiajuste.asstring <> _S then
      begin
        if (not cdsitsaidaalipi.IsNull) and (cdsitsaidaalipi.AsCurrency > 0) then
        begin
          if ((tela.tela.tpsaida.tpforncliente = Maiuscula(_Cliente)) and (tela.tela.cliente.cdsuframa <> 0) and (tela.tela.cliente.dtvalidade >= cdsdtemissao.AsDateTime) and (tela.tela.cliente.boipi=_s)) or
             ((not cdsitsaidanustipi.IsNull) and (not BooleandoCodigo(_stipi, cdsitsaidanustipi.asstring, _boaliquota, _nu, true))) then
          begin
            cdsitsaidaalipi.clear;
            cdsitsaidavlipi.clear;
            cdsitsaidavlbaseipi.clear;
            Exit;
          end
          else
          begin
            cdsitsaidavlbaseipi.AsCurrency := QRotinas.Roundqp((cdsitsaidaQTITEM.Asfloat *
                                                       cdsitsaidaVLUNITARIO.AsFloat)+
                                                       cdsitsaidavlfrete.AsCurrency  +
                                                       cdsitsaidavloutdespesa.AsCurrency +
                                                       cdsitsaidavlseguro.AsCurrency, tela.tela.tpsaida.boarredondar = _s);
          end;
        end
        else
        begin
          cdsitsaidavlipi.clear;
          cdsitsaidavlbaseipi.clear;
          Exit;
        end;
      end;
      cdsitsaidavlipi.AsCurrency := QRotinas.Roundqp(cdsitsaidavlbaseipi.AsCurrency * cdsitsaidaalipi.Asfloat / 100, tela.tela.tpsaida.boarredondar = _s);
    end
    else
    begin
      cdsitsaidaalipi.clear;
      cdsitsaidavlipi.clear;
      cdsitsaidavlbaseipi.clear;
    end;
  end
  else
  begin
    cdsitsaidaalipi.clear;
    cdsitsaidavlipi.clear;
    cdsitsaidavlbaseipi.clear;
  end;
end;

procedure Tfrmsaida.itsaidaCalcularICMS;
begin
  if tela.tela.tpsaida.boicms = _s then
  begin
    if cdsitsaidaBOSERVICO.asstring <> _S then
    begin
      if (not cdsitsaidaalicms.IsNull) and (cdsitsaidaalicms.AsCurrency > 0) then
      begin
        if cdsitsaidanusticms.asstring = _60 then
        begin
          cdsitsaidaalicms.clear;
          cdsitsaidavlicms.clear;
          cdsitsaidavlbaseicms.clear;
        end
        else
        begin
          if (tela.tela.tpsaida.tpforncliente = Maiuscula(_Cliente)) and (tela.tela.cliente.cdsuframa <> 0) and (tela.tela.cliente.dtvalidade >= cdsdtemissao.AsDateTime) and (tela.tela.cliente.boicms = _s) then
          begin
            cdsitsaidaalicms.clear;
            cdsitsaidavlicms.clear;
            cdsitsaidavlbaseicms.clear;
          end
          else
          begin
            CalcularImpostoIcmsItem;
          end;
        end;
      end
      else
      begin
        cdsitsaidavlicms.clear;
        cdsitsaidavlbaseicms.clear;
      end;
    end
    else
    begin
      cdsitsaidaalicms.clear;
      cdsitsaidavlicms.clear;
      cdsitsaidavlbaseicms.clear;
    end;
  end
  else
  begin
    cdsitsaidaalicms.clear;
    cdsitsaidavlicms.clear;
    cdsitsaidavlbaseicms.clear;
  end;
end;

procedure Tfrmsaida.itsaidaCalcularPIS;
begin
  if tela.tela.tpsaida.bopis = _s then
  begin
    if (not cdsitsaidaalpis.IsNull) and (cdsitsaidaalpis.AsCurrency > 0) then
    begin
      if (tela.tela.tpsaida.tpforncliente = Maiuscula(_Cliente)) and (tela.tela.cliente.cdsuframa <> 0) and (tela.tela.cliente.dtvalidade >= cdsdtemissao.AsDateTime) and (tela.tela.cliente.bopis = _s) then
      begin
        cdsitsaidaalpis.clear;
        cdsitsaidavlpis.clear;
        cdsitsaidavlbasepis.clear;
      end
      else
      begin
        if cdsitsaidanustpis.asstring = _08 then
        begin
          cdsitsaidaalpis.clear;
          cdsitsaidavlpis.clear;
          cdsitsaidavlbasepis.clear;
        end
        else
        begin
          if cdsitsaidabobasepisajuste.asstring <> _S then
          begin
            if cdsitsaidaCDCFOP.AsInteger = 6111 then
            begin
              cdsitsaidavlbasepis.AsCurrency := QRotinas.Roundqp((cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat)
                                                - cdsitsaidavldesconto.AsCurrency
                                                //+ cdsitsaidavloutdespesa.AsCurrency
                                                + cdsitsaidavlseguro.AsCurrency
                                                + cdsitsaidavlfrete.AsCurrency, tela.tela.tpsaida.boarredondar = _s);
            end
            else
            begin
              cdsitsaidavlbasepis.AsCurrency := QRotinas.Roundqp((cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat)
                                                - cdsitsaidavldesconto.AsCurrency
                                                + cdsitsaidavloutdespesa.AsCurrency
                                                + cdsitsaidavlseguro.AsCurrency
                                                + cdsitsaidavlfrete.AsCurrency, tela.tela.tpsaida.boarredondar = _s);
            end;
          end;
          cdsitsaidavlpis.AsCurrency := QRotinas.Roundqp(cdsitsaidavlbasepis.AsCurrency * cdsitsaidaalpis.Asfloat / 100, tela.tela.tpsaida.boarredondar = _s);
        end;
      end;
    end
    else
    begin
      cdsitsaidavlpis.clear;
      cdsitsaidavlbasepis.clear;
    end;
  end
  else
  begin
    cdsitsaidaalpis.clear;
    cdsitsaidavlpis.clear;
    cdsitsaidavlbasepis.clear;
  end;
  if BooleandoCodigo(_stpis, cdsitsaidanustpis.asstring, _boaliquota, _nu, True) and (cdsitsaidaalpis.Asfloat = 0) then
  begin
    MessageDlg('Alíquota do PIS é obrigatório para a Situação Tributária '+cdsitsaidanustpis.asstring+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (qregistro.CampodoCampo( _stpis, _nustpis, cdsitsaidanustpis.asstring, _boaliquota, true) = _N) and (cdsitsaidaalpis.Asfloat <> 0) then
  begin
    MessageDlg('Alíquota do PIS não pode ser preenchida para a Situação Tributária '+cdsitsaidanustpis.asstring+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure Tfrmsaida.itsaidaCalcularCOFINS;
begin
  if tela.tela.tpsaida.bocofins = _s then
  begin
    if (not cdsitsaidaalcofins.IsNull) and (cdsitsaidaalcofins.AsCurrency > 0) then
    begin
      if (tela.tela.tpsaida.tpforncliente = Maiuscula(_Cliente)) and (tela.tela.cliente.cdsuframa <> 0) and (tela.tela.cliente.dtvalidade >= cdsdtemissao.AsDateTime) and (tela.tela.cliente.bocofins = _s) then
      begin
        cdsitsaidaalcofins.clear;
        cdsitsaidavlcofins.clear;
        cdsitsaidavlbasecofins.clear;
      end
      else
      begin
        if cdsitsaidanustcofins.asstring = _08 then
        begin
          cdsitsaidaalcofins.clear;
          cdsitsaidavlcofins.clear;
          cdsitsaidavlbasecofins.clear;
        end
        else
        begin
          if cdsitsaidabobasecofinsajuste.asstring <> _S then
          begin
            if cdsitsaidacdcfop.AsInteger = 6111 then
            begin
              cdsitsaidavlbasecofins.AsCurrency := QRotinas.Roundqp((cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat)
                                                          - cdsitsaidavldesconto.AsCurrency
                                                          + cdsitsaidavlseguro.AsCurrency
                                                          + cdsitsaidavlfrete.AsCurrency, tela.tela.tpsaida.boarredondar = _s);
            end
            else
            begin
              cdsitsaidavlbasecofins.AsCurrency := QRotinas.Roundqp((cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat)
                                                          - cdsitsaidavldesconto.AsCurrency
                                                          + cdsitsaidavloutdespesa.AsCurrency
                                                          + cdsitsaidavlseguro.AsCurrency
                                                          + cdsitsaidavlfrete.AsCurrency, tela.tela.tpsaida.boarredondar = _s);
            end;
          end;
          cdsitsaidavlcofins.AsCurrency := QRotinas.Roundqp(cdsitsaidavlbasecofins.AsCurrency * cdsitsaidaalcofins.Asfloat / 100, tela.tela.tpsaida.boarredondar = _s);
        end;
      end
    end
    else
    begin
      cdsitsaidavlcofins.clear;
      cdsitsaidavlbasecofins.clear;
    end;
  end
  else
  begin
    cdsitsaidaalcofins.clear;
    cdsitsaidavlcofins.clear;
    cdsitsaidavlbasecofins.clear;
  end;
  if BooleandoCodigo(_stcofins, cdsitsaidanustcofins.asstring, _boaliquota, _nu, True) and (cdsitsaidaalcofins.Asfloat = 0) then
  begin
    MessageDlg('Alíquota do COFINS é obrigatório para a Situação Tributária '+cdsitsaidanustcofins.asstring+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (qregistro.CampodoCampo( _stcofins, _nustcofins, cdsitsaidanustcofins.asstring, _boaliquota, true) = _N) and (cdsitsaidaalcofins.Asfloat <> 0) then
  begin
    MessageDlg('Alíquota do COFINS não pode ser preenchida para a Situação Tributária '+cdsitsaidanustcofins.asstring+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure Tfrmsaida.itsaidaCalcularICMSST;
begin
  if tela.tela.tpsaida.boicmssubst = _s then
  begin
    if cdsitsaidaBOSERVICO.asstring <> _S then
    begin
      if cdsitsaidaboicmssubtribajuste.asstring <> _S then
      begin
        if (not cdsitsaidaalicmssubtrib.IsNull) and (cdsitsaidaalicmssubtrib.AsCurrency > 0) then
        begin
          CalcularImpostoIcmssubtribItem;
        end
        else
        begin
          cdsitsaidavlicmssubtrib.clear;
          cdsitsaidavlbaseicmssubtrib.clear;
        end;
      end;
    end
    else
    begin
      cdsitsaidaalicmssubtrib.clear;
      cdsitsaidavlicmssubtrib.clear;
      cdsitsaidavlbaseicmssubtrib.clear;
    end;
  end
  else
  begin
    cdsitsaidaalicmssubtrib.clear;
    cdsitsaidavlicmssubtrib.clear;
    cdsitsaidavlbaseicmssubtrib.clear;
  end;
end;

procedure Tfrmsaida.itsaidaCalcularISS;
begin
  if tela.tela.tpsaida.boiss = _s then
  begin
    if cdsitsaidaBOSERVICO.asstring = _S then
    begin
      if (not cdsitsaidaaliss.IsNull) and (cdsitsaidaaliss.AsCurrency > 0) then
      begin
        cdsitsaidavliss.AsCurrency     := QRotinas.Roundqp((cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat) * cdsitsaidaaliss.Asfloat / 100, tela.tela.tpsaida.boarredondar = _s);
        cdsitsaidavlbaseiss.AsCurrency := cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat;
      end
      else
      begin
        cdsitsaidavliss.clear;
        cdsitsaidavlbaseiss.clear;
      end;
    end
    else
    begin
      cdsitsaidavliss.clear;
      cdsitsaidavlbaseiss.clear;
      cdsitsaidaaliss.clear;
    end;
  end
  else
  begin
    cdsitsaidaaliss.clear;
    cdsitsaidavliss.clear;
    cdsitsaidavlbaseiss.clear;
  end;
end;

procedure Tfrmsaida.itsaidaCalcularINSS;
begin
  if tela.tela.tpsaida.boinss = _s then
  begin
    if cdsitsaidaBOSERVICO.asstring = _S then
    begin
      if (not cdsitsaidaalinss.IsNull) and (cdsitsaidaalinss.AsCurrency > 0) then
      begin
        cdsitsaidavlinss.AsCurrency     := QRotinas.Roundqp((cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat) * cdsitsaidaalinss.Asfloat / 100, tela.tela.tpsaida.boarredondar = _s);
        cdsitsaidavlbaseinss.AsCurrency := cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat;
      end
      else
      begin
        cdsitsaidavlinss.clear;
        cdsitsaidavlbaseinss.clear;
      end;
    end
    else
    begin
      cdsitsaidavlinss.clear;
      cdsitsaidavlbaseinss.clear;
      cdsitsaidaalinss.clear;
    end;
  end
  else
  begin
    cdsitsaidaalinss.clear;
    cdsitsaidavlinss.clear;
    cdsitsaidavlbaseinss.clear;
  end;
end;

procedure TFrmSaida.itsaidaCalcularComissao;
var
  prcomissaosaida, prcomissaoitsaida : double;
begin
  if tela.tela.tpsaida.bocomissao <> _s then
  begin
    Exit;
  end;
  if cdsitsaidacdtpcomissao.asstring <> '' then
  begin
    prcomissaoitsaida := cdsitsaidaprcomissao.Asfloat;
    if cdsitsaidaprcomissao.Asfloat = 0 then
    begin
      prcomissaoitsaida := DoubledoCodigo(_tpcomissao, cdsitsaidacdtpcomissao.asstring, _prcomissao);
    end;
  end
  else
  begin
    prcomissaosaida   := cdsprcomissao.asfloat;
    prcomissaoitsaida := Tproduto.VerificarComissao(cdsitsaidacdproduto.asstring, prcomissaosaida);
  end;
  if prcomissaoitsaida > 0then
  begin
    if cdsbodescontocomissao.asstring <> _S then
    begin
      cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp(cdsitsaidavltotal.AsCurrency * (prcomissaoitsaida / 100), tela.tela.tpsaida.boarredondar = _s)
    end
    else
    begin
      cdsitsaidavlcomissao.AsCurrency := QRotinas.Roundqp((cdsitsaidavltotal.AsCurrency - cdsitsaidavldesconto.AsCurrency) * (prcomissaoitsaida / 100), tela.tela.tpsaida.boarredondar = _s);
    end;
  end;
end;

procedure TFrmSaida.itsaidaCalcularValores;
begin
  if cdsitsaidaboajustetotal.asstring <> _S then
  begin
    cdsitsaidavltotal.AsCurrency := QRotinas.Roundqp(cdsitsaidaQTITEM.Asfloat * cdsitsaidaVLUNITARIO.AsFloat, true);
  end;
  itsaidaCalcularComissao;
  //if cds.FieldByName(_booutdespesaitem).AsString <> _s then
  //begin
    //RatearValoresItens(_vloutdespesa);
  //end;
  //RatearValoresItens(_vlseguro);
  itsaidaCalcularIPI;
  itsaidaCalcularICMS;
  itsaidaCalcularICMSST;
  itsaidaCalcularISS;
  itsaidaCalcularINSS;
  itsaidaCalcularIRRF;
  itsaidaCalcularPIS;
  itsaidaCalcularCOFINS;
end;

procedure Tfrmsaida.cdsitsaidaBeforePost(DataSet: TDataSet);
  procedure check_locacao;
  begin
    if cdsitsaidaCDLOCACAO.IsNull and (tela.tela.tpsaida.bolocacao = _s) then
    begin
      MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_da+' '+__Locacao]), mtInformation, [mbOK], 0);
      if pgc.ActivePage <> tbsproduto then
      begin
        pgc.ActivePage := tbsproduto;
      end;
      cdsitsaidaCDLOCACAO.FocusControl;
      Abort;
    end;
  end;
  procedure check_qtitem;
  begin
    if (cdsitsaidaQTITEM.AsFloat <> 0) or (cdsitsaidaBOLOTEIMEI.AsString = _s) then
    begin
      Exit;
    end;
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Quantidade]), mtInformation, [mbOK], 0);
    if pgc.ActivePage <> tbsproduto then
    begin
      pgc.ActivePage := tbsproduto;
    end;
    cdsitsaidaQTITEM.FocusControl;
    abort;
  end;
  procedure check_vlunitario;
  begin
    if cdsitsaidavlunitario.AsFloat < 0 then
    begin
      messagedlg('Valor unitário negativo!', mtinformation, [mbok], 0);
      if pgc.ActivePage <> tbsproduto then
      begin
        pgc.ActivePage := tbsproduto;
      end;
      cdsitsaidavlunitario.FocusControl;
      abort;
    end;
  end;
  procedure check_vltotal;
  begin
    if cdsitsaidavltotal.AsCurrency < 0 then
    begin
      messagedlg('Valor Total negativo!', mtinformation, [mbok], 0);
      cdsitsaidavltotal.FocusControl;
      abort;
    end;
  end;
  procedure check_nusticms;
  begin
    if cdsitsaidaNUSTICMS.IsNull and (cdsitsaidaBOSERVICO.AsString <> _S) then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__situacao+' '+__Tributaria+' '+_do+' '+_ICMS]), mtinformation, [mbok], 0);
      pgc.ActivePage := tbsproduto;
      cdsitsaidaNUSTICMS.FocusControl;
      Abort;
    end;
    if BooleandoCodigo(_sticms, cdsitsaidaNUSTICMS.AsString, _boaliquota, _nu, true) and (cdsitsaidaALICMS.AsFloat = 0) then
    begin
      MessageDlg('Alíquota do ICMS é um campo obrigatório quando a Situação Tributária do ICMS é '+cdsitsaidaNUSTICMS.AsString+'.', mtInformation, [mbOK], 0);
      pgc.ActivePage := tbsproduto;
      cdsitsaidaALICMS.FocusControl;
      Abort;
    end;
    if (cdsitsaidaNUSTICMS.AsString = _20) and (cdsitsaidaALICMSRED.AsFloat = 0) and (tela.tela.tpsaida.bonalicmsred <> _s) then
    begin
      MessageDlg('% de Redução da Base de Cálculo de icms é um campo obrigatório quando a Situação Tributária do ICMS é 20.', mtInformation, [mbOK], 0);
      pgc.ActivePage := tbsproduto;
      if tbvALICMSRED.Visible then
      begin
        cdsitsaidaALICMSRED.FocusControl;
      end;
      Abort;
    end;
  end;
  procedure check_nudocfiscalicms_cdtpregimeicms;
  begin
    if cdsNUDOCFISCALICMS.AsString <> _55 then
    begin
      Exit;
    end;
    if (cdsitsaidaCDTPREGIMEICMS.AsString = _2) and (Length(cdsitsaidaNUSTICMS.AsString) = 2) then
    begin
      MessageDlg('Situação Tributária '+cdsitsaidaNUSTICMS.AsString+' não pode ser usado quando o Tipo de Regime ICMS é Simples Nacional.'#13'Favor alterar o código da Situação Tributária do ICMS para um de 3 dígitos.', mtInformation, [mbOK], 0);
      pgc.ActivePage := tbsproduto;
      cdsitsaidaNUSTICMS.FocusControl;
      Abort;
    end;
    if (cdsitsaidaCDTPREGIMEICMS.AsString = _1) and (Length(cdsitsaidaNUSTICMS.AsString) = 3) then
    begin
      MessageDlg('Situação Tributária '+cdsitsaidaNUSTICMS.AsString+' não pode ser usado quando o Tipo de Regime ICMS é Tributação Normal.'#13'Favor alterar o código da Situação Tributária do ICMS para um de 2 dígitos.', mtInformation, [mbOK], 0);
      pgc.ActivePage := tbsproduto;
      cdsitsaidaNUSTICMS.FocusControl;
      Abort;
    end;
  end;
  procedure preencher_cditpedido;
    function cditpedido_nao_preenchido:boolean;
    begin
      result := (cdsitsaidaNUPEDIDO.AsString <> '') and (cdsitsaidaCDPEDIDO.AsString <> '') and (cdsitsaidaCDPRODUTO.AsString <> '') and (cdsitsaidaCDITPEDIDO.AsString = '');
    end;
    function get_cditpedido:string;
    begin
      result := RetornaSQLString('select cditpedido '+
                                 'from itpedido '+
                                 'where cdempresa='+cdsitsaida.FieldByName(_cdempresa).AsString+' '+
                                 'and cdproduto='+cdsitsaidacdproduto.AsString+' and cdpedido='+cdsitsaidacdpedido.AsString)
    end;
  begin
    if cditpedido_nao_preenchido then
    begin
      cdsitsaidacditpedido.AsString := get_cditpedido;
      if cdsitsaidacditpedido.AsString = '' then
      begin
        messagedlg('Produto '+cdsitsaidacddigitado.AsString+' - '+cdsitsaidaNMPRODUTO.AsString+#13'não existe no pedido '+cdsitsaidanupedido.AsString+'.', mtInformation, [mbok], 0);
        pgc.ActivePage := tbsproduto;
        cdsitsaidacddigitado.FocusControl;
        abort;
      end;
    end;
  end;
var
  valor : double;
begin
  valor := cdsitsaidaQTITEM.AsFloat * 100000;
  valor := RoundTo(valor, 0);
  valor := valor / 100000;
  if cdsitsaidaQTITEM.AsFloat > valor then
  begin
    cdsitsaidaqtitem.OnValidate := nil;
    cdsitsaidaQTITEM.AsFloat := valor;
    cdsitsaidaqtitem.OnValidate := cdsitsaidaQTITEMValidate;
  end;
  check_locacao;
  if DataSet.FieldByName(_cdcfop).IsNull then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_cfop]), mtInformation, [mbOK], 0);
    if pgc.ActivePage <> tbsproduto then
    begin
      pgc.ActivePage := tbsproduto;
    end;
    cdsitsaidaCDCFOP.FocusControl;
    Abort;
  end;
  // check_cddigitado;
  if cdsitsaidaCDDIGITADO.IsNull then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_do+' '+_Produto]), mtInformation, [mbOK], 0);
    if pgc.ActivePage <> tbsproduto then
    begin
      pgc.ActivePage := tbsproduto;
    end;
    cdsitsaidaCDDIGITADO.FocusControl;
    Abort;
  end;
  check_qtitem;
  check_vlunitario;
  itsaidaCalcularValores;
  check_vltotal;
  if tela.tela.tpsaida.bofrete <> _s then
  begin
    cdsitsaidavlfrete.clear;
  end;
  if (cdsitsaidacdproduto.asstring = '') and (cdsitsaidacddigitado.asstring <> '') then
  begin
    cdsitsaidacdproduto.AsInteger := produto.CodigoProdutoDigitado(cdsitsaidacddigitado.asstring, _bosaida);
    if cdsitsaidacdproduto.asstring = '' then
    begin
      abort;
    end;
  end;
  if (cdsitsaidanusticms.asstring = _60) then
  begin
    cdsitsaidaalicms.clear;
    cdsitsaidavlicms.clear;
  end;
  if cdsitsaidaalicms.AsCurrency = 0 then
  begin
    cdsitsaidaalicms.clear;
  end;
  if cdsitsaidaalipi.AsCurrency = 0 then
  begin
    cdsitsaidaalipi.clear;
  end;
  if cdsitsaidaalpis.AsCurrency = 0 then
  begin
    cdsitsaidaalpis.clear;
  end;
  if cdsitsaidaalcofins.AsCurrency = 0 then
  begin
    cdsitsaidaalcofins.clear;
  end;
  cdsitsaidavltotaltributo.AsCurrency := (cdsitsaidavltotal.AsCurrency +
                                          cdsitsaidavlipi.AsCurrency +
                                          cdsitsaidavloutdespesa.AsCurrency -
                                          cdsitsaidavldesconto.AsCurrency +
                                          cdsitsaidavlfrete.AsCurrency +
                                          cdsitsaidavlseguro.AsCurrency +
                                          cdsitsaidavlicmssubtrib.AsCurrency) * cdsitsaidaprtotaltributo.Asfloat / 100;
  check_nusticms;
  check_nudocfiscalicms_cdtpregimeicms;
  preencher_cditpedido;
  if Dataset.State = dsinsert then
  begin
    cdsitsaidacditsaida.asstring := GerarCodigo(_itsaida);
  end;

  if empresa.tpregime <> _s then
  begin
    if DataSet.FieldByName(_cdcfop).AsInteger = 1201 then
    begin
      if (DataSet.FieldByName(_borecuperaicms).AsString <> _s) and (DataSet.FieldByName(_vlicms).AsCurrency > 0) then
      begin
        DataSet.FieldByName(_borecuperaicms).AsString := _s;
      end;
      if (DataSet.FieldByName(_borecuperaipi).AsString <> _s) and (DataSet.FieldByName(_vlipi).AsCurrency > 0) then
      begin
        DataSet.FieldByName(_borecuperaipi).AsString := _s;
      end;
    end
    else if (DataSet.FieldByName(_nustipi).AsString = _00) and (DataSet.FieldByName(_borecuperaipi).AsString <> _s) and (DataSet.FieldByName(_vlipi).AsCurrency > 0) then
    begin
      DataSet.FieldByName(_borecuperaipi).AsString := _s;
    end;
  end;
  RegistraInformacao_(dataset);
end;

procedure Tfrmsaida.cdsitsaidaAfterPost(DataSet: TDataSet);
begin
  if not bonovo  then
  begin
    GravartotaisClasse;
  end;
  if (LocacaoDevolucaoList.Count > 0) and (not boinsertdevolucaolocacao) then
  begin
    boinsertdevolucaolocacao := true;
    InserirDevolucaoLocacaoSegundo;
  end;
end;

procedure Tfrmsaida.cdsitsaidaALCOFINSValidate(Sender: TField);
begin
  if (not sender.IsNull) and (sender.AsFloat = 0) then
  begin
    sender.Clear;
  end;
end;

procedure Tfrmsaida.cdsitsaidaALICMSValidate(Sender: TField);
begin
  if (not sender.IsNull) and (sender.AsFloat = 0) then
  begin
    sender.Clear;
  end;
end;

procedure Tfrmsaida.cdsitsaidaALIPIValidate(Sender: TField);
begin
  if (not sender.IsNull) and (sender.AsFloat = 0) then
  begin
    sender.Clear;
  end;
end;

procedure Tfrmsaida.cdsitsaidaALPISValidate(Sender: TField);
begin
  if (not sender.IsNull) and (sender.AsFloat = 0) then
  begin
    sender.Clear;
  end;
end;

procedure Tfrmsaida.DesativarOnValidate;
begin
  cdsitsaida.BeforePost := nil;
  cdsitsaida.AfterPost  := nil;

  cdsitsaidaALICMS.OnValidate   := nil;
  cdsitsaidaALIPI.OnValidate    := nil;
  cdsitsaidaALPIS.OnValidate    := nil;
  cdsitsaidaALCOFINS.OnValidate := nil;

  cdsCDTPCOBRANCA.ONValidate := nil;
  cdsCDCONDPAGTO.ONValidate := nil;
  cdsCDCFOP.ONValidate := nil;
  cdsCDREPRESENTANTE.ONValidate := nil;
  cdsCDNFEFINALIDADE.ONValidate := nil;
  cdsNUPLACA.ONValidate := nil;
  cdsCDTPSAIDA.ONValidate := nil;
  cdsNUPLCONTA.ONValidate := nil;
  cdsVLFRETE.ONValidate := nil;
  cdsVLSEGURO.ONValidate := nil;
  cdsPRDESCONTO.ONValidate := nil;
  cdsVLDESCONTO.ONValidate := nil;
  cdsVLOUTDESPESA.ONValidate := nil;
  cdsNUSAIDA.ONValidate := nil;
  cdsCDCLIENTE.ONValidate := nil;
  cdsCDFORNECEDOR.ONValidate := nil;
  cdsCDTRANSPORTADORA.ONValidate := nil;
  cdsDSHISTORICO.ONValidate := nil;
  cdsDTEMISSAO.ONValidate := nil;
  cdsDTSAIDA.ONValidate := nil;
  cdsTPDEVOLUCAO.ONValidate := nil;
  cdsBOOUTDESPESAITEM.ONValidate := nil;
  cdsCDTPFRETE.ONValidate := nil;
  cdsBOITEMDESCONTO.ONValidate := nil;
  cdsNUCNTCUSTO.ONValidate := nil;

  cdssaidatpcomissaoPRCOMISSAO.OnValidate := nil;

  cdssaidareferenciadaNUDOCUMENTO.OnValidate := nil;
  cdssaidareferenciadaCDSAIDAORIGEM.OnValidate := nil;
  cdssaidareferenciadaCDENTRADAORIGEM.OnValidate := nil;
  cdssaidareferenciadaBODIGITARCHAVE.OnValidate := nil;

  cdsduplicataNUPLCONTA.OnValidate := nil;
  cdsduplicataDTVENCIMENTO.OnValidate := nil;
  cdsduplicataVLDUPLICATA.OnValidate := nil;
  cdsduplicataNuCNTCUSTO.OnValidate := nil;

  cdsitsaidaCDCFOP.OnValidate := nil;
  cdsitsaidaNUPEDIDO.OnValidate := nil;
  cdsitsaidaCDDIGITADO.OnValidate := nil;
  cdsitsaidaVLUNITARIO.OnValidate := nil;
  cdsitsaidaQTITEM.OnValidate := nil;
  cdsitsaidaBOICMSSUBTRIBAJUSTE.OnValidate := nil;
  cdsitsaidaBOBASEICMSAJUSTE.OnValidate := nil;
  cdsitsaidaBOBASEIPIAJUSTE.OnValidate := nil;
  cdsitsaidaBOAJUSTETOTAL.OnValidate := nil;
  cdsitsaidaBOBASEPISAJUSTE.OnValidate := nil;
  cdsitsaidaBOBASECOFINSAJUSTE.OnValidate := nil;
  cdsitsaidaCDLOCACAO.OnValidate := nil;
  cdsitsaidaBOBASEICMSSUBTRIBAJUSTE.OnValidate := nil;
  cdsitsaidaNUPLCONTA.OnValidate := nil;
  cdsitsaidaDSINFADICIONAL.OnValidate := nil;
  cdsitsaidaNUCNTCUSTO.OnValidate := nil;

  cdssaidaefd0450CDEFD0450.OnValidate := nil;
end;

function TFrmSaida.DestinatarioNaoPreenchido:boolean;
begin
  result := (edtCDCLIENTE.text = '') and
            (((lbldestinatario.caption = Maiuscula(_cliente))    and cds.fieldbyname(_cdcliente).IsNull) or
             ((lbldestinatario.caption = Maiuscula(_fornecedor)) and cds.fieldbyname(_cdfornecedor).IsNull))
end;

procedure Tfrmsaida.cdsitsaidaNewRecord(DataSet: TDataSet);
begin
  if cbxcdtpsaida.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo+' '+_de+' '+_Nota_Fiscal]), mtinformation, [mbok], 0);
    cbxcdtpsaida.SetFocus;
    abort;
  end;
  if DestinatarioNaoPreenchido then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [lbldestinatario.caption]), mtinformation, [mbok], 0);
    edtCDCLIENTE.SetFocus;
    abort;
  end;
  cdsitsaidacdtpregimeicms.asstring := Empresa.get_cdtpregimeicms;
  cdsitsaidaQTITEM.AsFloat          := 1;
  cdsitsaida.fieldbyname(_cdplconta).asstring := cds.fieldbyname(_cdplconta).asstring;
  cdsitsaida.fieldbyname(_nuplconta).asstring := cds.fieldbyname(_nuplconta).asstring;
end;

procedure Tfrmsaida.cdsitsaidaCDCFOPValidate(Sender: TField);
var
  sguf : string;
  regrast : TRegraST;
begin
  if (Sender.AsString = '') or (sender.AsString = _0) then
  begin
    exit;
  end;
  if not BooleandoCodigo(_cfop, Sender.AsString, _boativar) then
  begin
    messagedlg('CFOP está desativado.'#13'Selecione outro para poder continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  if not cds.fieldbyname(_cdcliente).IsNull then
  begin
    sguf := qregistro.stringdocodigo(_uf, tela.tela.cliente.cduf, _sguf);
  end
  else if not cds.fieldbyname(_cdfornecedor).IsNull then
  begin
    tela.tela.fornecedor.uf.Select(tela.tela.fornecedor.cduf);
    sguf := tela.tela.fornecedor.uf.sguf;
  end;
  if sguf = empresa.endereco.sguf then
  begin
    if tela.tela.tpsaida.tpentsai = _S then
    begin
      if (copy(Sender.asstring, 1, 1) <> _5) and (copy(Sender.asstring, 1, 1) <> _7) then
      begin
        if not cds.fieldbyname(_cdcliente).IsNull then
        begin
          messagedlg('Número de CFOP inválido!'#13'Cliente é da mesma unidade federativa da Empresa.'#13'Digite um número que comece com 5 ou 7 para continuar.', mtinformation, [mbok], 0)
        end
        else if not cds.fieldbyname(_cdfornecedor).IsNull then
        begin
          messagedlg('Número de CFOP inválido!'#13'Fornecedor é da mesma unidade federativa da Empresa.'#13'Digite um número que comece com 5 ou 7 para continuar.', mtinformation, [mbok], 0);
        end;
        Sender.FocusControl;
        abort;
      end;
    end
    else if tela.tela.tpsaida.tpentsai = _E then
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
    end;
  end
  else
  begin
    if tela.tela.tpsaida.tpentsai = _S then
    begin
      if (copy(Sender.asstring, 1, 1) <> _6) and (copy(Sender.asstring, 1, 1) <> _7) then
      begin
        if not cds.fieldbyname(_cdcliente).IsNull then
        begin
          messagedlg('Número de CFOP inválido!'#13'Cliente é de uma unidade federativa diferente da Empresa.'#13'Digite um número que comece com 6 ou 7 para continuar.', mtinformation, [mbok], 0)
        end
        else if not cds.fieldbyname(_cdfornecedor).IsNull then
        begin
          messagedlg('Número de CFOP inválido!'#13'Fornecedor é de uma unidade federativa diferente da Empresa.'#13'Digite um número que comece com 6 ou 7 para continuar.', mtinformation, [mbok], 0);
        end;
        Sender.FocusControl;
        abort;
      end;
    end
    else if tela.tela.tpsaida.tpentsai = _E then
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
  if tela.tela.tpsaida.bonaoconsistesticmscfop <> _s then
  begin
    if cdsitsaidacdproduto.asstring <> '' then
    begin
      if BooleandoCodigo(_sticms, NomedoCodigo(_produto, cdsitsaidacdproduto.asstring, _nusticms), _boicmssubtrib, _nu, True) and
        (not BooleandoCodigo(_cfop  , sender.asstring, _BOICMSSUBTRIB, _cd, True)) and
        (not BooleandoCodigo(_cfop  , sender.asstring, _BOaceitaICMSSUBTRIB, _cd, True))
      then
      begin
        MessageDlg('Produto está configurado como Substituição Tributária mas está sendo lançado em um CFOP que não é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
        Abort;
      end;
      if (not BooleandoCodigo(_sticms, NomedoCodigo(_produto, cdsitsaidacdproduto.asstring, _nusticms), _boicmssubtrib, _nu, True)) and
         (BooleandoCodigo(_cfop  , sender.asstring, _BOICMSSUBTRIB, _cd, True)) then
      begin
        MessageDlg('Produto não está configurado como Substituição Tributária mas está sendo lançado em um CFOP que é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
        Abort;
      end;
    end;
  end;
  cdsitsaidaprtotaltributo.Asfloat := produto.ObterPrtotaltributo(cdsitsaidacdcfop.asinteger, cdsitsaidanuclfiscal.asstring, cdsitsaidacdorigem.asstring);
  cdsitsaida.FieldByName(_cdcfop).OnValidate := nil;
  setRegistroRegraST;
  regrast := TRegraST.Create;
  try
    if not regrast.GetRegraST(cdsitsaida, reg) then
    begin
      setst;
    end;
  finally
    FreeAndNil(regrast);
  end;
  cdsitsaida.FieldByName(_cdcfop).onvalidate := cdsitsaidaCDCFOPValidate;
  if cds.FieldByName(_cdcfop).IsNull and (not cdsitsaidacdcfop.IsNull) then
  begin
    cds.FieldByName(_cdcfop).asstring := cdsitsaidacdcfop.asstring;
  end;
  if BooleandoCodigo(_cfop, cdsitsaidaCDCFOP.AsString, _bodevolucao) and (cdsCDNFEFINALIDADE.AsString <> _4) then
  begin
    cdsCDNFEFINALIDADE.AsString := _4;
  end;
end;

procedure Tfrmsaida.cdsitsaidaNUCNTCUSTOValidate(Sender: TField);
begin
  if Sender.AsString <> '' then
  begin
    if not CodigoExiste(_cntcusto, _nunivel, _string, Sender.AsString) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_Centro+' '+_Custo)]), mterror, [mbok], 0);
      sender.FocusControl;
      abort;
    end;
    cdsitsaidacdcntcusto.asstring := CodigodoCampo(_cntcusto, sender.AsString, _nunivel);
    cdsitsaidaNMcntcusto.AsString := NomedoCodigo( _cntcusto, cdsitsaidacdcntcusto.asstring);
  end
  else
  begin
    cdsitsaidacdcntcusto.clear;
    cdsitsaidaNMcntcusto.Clear;
  end;
end;

procedure Tfrmsaida.cdsitsaidaNUPEDIDOValidate(Sender: TField);
var
  cdpedido : String;
  procedure verifica_se_existe_pedido;
  begin
    cdpedido := CodigodoCampo(_pedido, Sender.asstring, _nupedido);
    if cdpedido = '' then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_pedido)]), mterror, [mbok], 0);
      abort;
    end;
  end;
  procedure verifica_status_pedido;
  var
    cdstpedido : string;
  begin
    cdstpedido := NomedoCodigo(_pedido, cdpedido, _cdstpedido);
    if not BooleanStatus(_pedido, cdstpedido, _bogerarinfo) then
    begin
      messagedlg('Pedido '+Sender.asstring+' não pode ser utilizado na Nota Fiscal.'#13'Pedido se encontra no status '+Nomedocodigo(_stpedido, NomedoCodigo(_pedido, cdpedido, _cdstpedido))+'.'#13'Digite outro número de pedido.', mterror, [mbok], 0);
      abort;
    end;
    if not BooleanStatus(_pedido, cdstpedido, _bogerarsaida) then
    begin
      messagedlg('Pedido '+Sender.asstring+' não pode ser utilizado na Nota Fiscal.'#13'Pedido se encontra no status '+Nomedocodigo(_stpedido, NomedoCodigo(_pedido, cdpedido, _cdstpedido))+'.'#13'Digite outro número de pedido.', mterror, [mbok], 0);
      abort;
    end;
  end;
  procedure verifica_se_pedido_eh_do_cliente_da_nota_fiscal;
  begin
    if NomedoCodigo(_pedido, cdpedido, _cdcliente) <> cds.fieldbyname(_cdcliente).asstring then
    begin
      messagedlg('Pedido '+Sender.asstring+' não pertence ao cliente '#13+edtcdcliente.text+' - '+cds.fieldbyname(_rzsocial+_c).AsString+#13'Digite outro número de pedido.', mterror, [mbok], 0);
      abort;
    end;
  end;
begin
  if sender.AsString = '' then
  begin
    cdsitsaidaCDPEDIDO.Clear;
    cdsitsaidaCDITPEDIDO.Clear;
    Exit;
  end;
  verifica_se_existe_pedido;
  verifica_status_pedido;
  verifica_se_pedido_eh_do_cliente_da_nota_fiscal;
  cdsitsaidacdpedido.asstring := cdpedido;
end;

procedure Tfrmsaida.cdsitsaidaNUPLCONTAValidate(Sender: TField);
begin
  if Sender.AsString <> '' then
  begin
    if not CodigoExiste(_plconta, _nunivel, _string, Sender.AsString) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.asstring, maiuscula(_Plano+' '+_Contas)]), mterror, [mbok], 0);
      sender.FocusControl;
      abort;
    end;
    cdsitsaidacdplconta.asstring := CodigodoCampo(_plconta, sender.AsString, _nunivel);
    cdsitsaidaNMPLCONTA.AsString := NomedoCodigo( _plconta, cdsitsaidacdplconta.asstring);
  end
  else
  begin
    cdsitsaidacdplconta.clear;
    cdsitsaidaNMPLCONTA.Clear;
  end;
end;

procedure Tfrmsaida.cdsitsaidaCDDIGITADOValidate(Sender: TField);
var
  tbldestinatario : String;
  cdproduto : integer;
  qtsugerida : double;
  procedure check_estoque;
  begin
    if (produto.tpproduto.boestoque = _s) and
       (tela.tela.tpsaida.boestoque = _s) and
       (not empresa.material.produto.bovendaestoquezerado) and
       (produto.qtestoque <= 0) then
    begin
      messagedlg('Produto '+inttostr(cdproduto)+' '+produto.nmproduto+' com estoque '+FormatFloat(__decimal3, produto.qtestoque)+'.'#13'Digite um produto que tenha o estoque acima de zero para continuar', mtinformation, [mbok], 0);
      abort;
    end;
  end;
  procedure set_cditpedido;
  begin
    if cdsitsaidacdpedido.isnull then
    begin
      Exit;
    end;
    if (ExisteDetailMestre(_itPedido, _cdpedido, cdsitsaidacdpedido.asstring, '', _cdproduto, inttostr(cdproduto), '')=0) then
    begin
      showmessage('Codigo '+cdsitsaidacddigitado.asstring+' inexistente no pedido '+cdsitsaidacdpedido.asstring+'!');
      abort;
    end;
    if cdsitsaidacditpedido.IsNull then // se existir mais de um selecionar qual item é
    begin
      cdsitsaidacditpedido.asinteger := pedido.getcditpedido(cdsitsaidacdpedido.asinteger, cdproduto);
      if cdsitsaidacditpedido.asinteger = 0 then
      begin
        showmessage('Escolha um item do pedido para poder continuar.');
        abort;
      end;
    end;
  end;
  procedure set_dados_cditpedido;
  var
    q : TClasseQuery;
  begin
    q := TClasseQuery.create;
    try
      q.q.Open('select vlunitario,qtatendida,qtitem,alicms,alipi from itpedido where '+get_cd_empresa+' and cditpedido='+cdsitsaidacditpedido.AsString);
      cdsitsaidaalicms.Asfloat := q.q.fieldbyname(_alicms).Asfloat;
      cdsitsaidaalipi.Asfloat := q.q.fieldbyname(_alipi).Asfloat;
      cdsitsaidavlunitario.asfloat := q.q.fieldbyname(_vlunitario).asFloat;
      qtsugerida := q.q.fieldbyname(_qtitem).Asfloat - q.q.fieldbyname(_qtatendida).Asfloat;
      if qtsugerida < 0 then
      begin
        qtsugerida := 0;
      end;
      if qtsugerida = 0 then
      begin
        qtsugerida := 1;
      end;
      cdsitsaidaqtitem.Asfloat := qtsugerida;
    finally
      FreeAndNil(q);
    end;
  end;
  procedure check_servico_em_nfe;
  begin
    if (tela.tela.tpsaida.serie.nudocfiscalicms = _55) and (produto.tpproduto.boservico = _s) then
    begin
      MessageDlg('Não pode lançar serviço em nota fiscal eletrônica (55).', mtInformation, [mbOK], 0);
      abort;
    end;
  end;
  procedure set_cfop_de_acordo_uf_destinatario_situacao_tributaria_produto;
  begin
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
        if tela.tela.tpsaida.cdcfopfufsubtrib = 0 then
        begin
          exit;
        end;
        cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopfufsubtrib;
      end
      else
      begin
        if tela.tela.tpsaida.cdcfopdufsubtrib = 0 then
        begin
          exit;
        end;
        cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopdufsubtrib;
      end;
    end
    else
    begin
      if (empresa.endereco.cduf <> qregistro.inteirodocodigo(tbldestinatario, cds.fieldbyname(_cd+tbldestinatario).asstring, _cduf)) then
      begin
        if tela.tela.tpsaida.cdcfopfuf = 0 then
        begin
          exit;
        end;
        cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopfuf;
      end
      else
      begin
        if tela.tela.tpsaida.cdcfopduf = 0 then
        begin
          exit;
        end;
        cdsitsaidacdcfop.asInteger := tela.tela.tpsaida.cdcfopduf;
      end;
    end;
  end;
  procedure set_dados_fiscais;
  var
    regrast : TRegraST;
  begin
    setRegistroRegraST;
    regrast := TRegraST.Create;
    try
      if regrast.GetRegraST(cdsitsaida, reg) then
      begin
        Exit;
      end;
    finally
      FreeAndNil(regrast);
    end;
    if tela.tela.tpsaida.tpentsai = _e then
    begin
      cdsitsaidaborecuperaicms.asstring   := produto.borecuperaicms;
      cdsitsaidaborecuperaipi.asstring    := produto.borecuperaipi;
      cdsitsaidaborecuperapis.asstring    := produto.borecuperapis;
      cdsitsaidaborecuperacofins.asstring := produto.borecuperacofins;
    end;
    if (produto.tpproduto.boservico = _s) and (tela.tela.tpsaida.boiss = _s) and (tela.tela.tpsaida.aliss > 0) then
    begin
      cdsitsaidaaliss.Asfloat := tela.tela.tpsaida.aliss;
    end;
    if produto.boipi <> _s then
    begin
      cdsitsaidaalipi.clear;
      cdsitsaidavlipi.clear;
    end;
    if produto.alicms > 0 then
    begin
      cdsitsaidaalicms.Asfloat := produto.alicms;
    end;
    if produto.boicms <> _s then
    begin
      cdsitsaidaalicms.clear;
      cdsitsaidavlicms.clear;
    end;
    if produto.alipi > 0 then
    begin
      cdsitsaidaalipi.AsCurrency := produto.alipi;
    end;
    setst;
    if (cdsitsaidanustpis.asstring = _01) or (cdsitsaidanustpis.asstring = _02) then
    begin
      cdsitsaidaalpis.Asfloat := produto.alpis
    end
    else
    begin
      cdsitsaidaalpis.clear;
    end;
    if (cdsitsaidanustcofins.asstring = _01) or (cdsitsaidanustcofins.asstring = _02) then
    begin
      cdsitsaidaalcofins.Asfloat := produto.alcofins
    end
    else
    begin
      cdsitsaidaalcofins.clear;
    end;
  end;
  function se_produto_configurado_subtrib_cfop_nao_subtrib:Boolean;
  begin
    result := (cdsitsaidacdcfop.asstring <> '') and
              BooleandoCodigo(_sticms, cdsitsaidaNUSTICMS.AsString, _boicmssubtrib, _nu, True) and
              (not BooleandoCodigo(_cfop  , cdsitsaidacdcfop.asstring, _BOICMSSUBTRIB, _cd, True)) and
              (not BooleandoCodigo(_cfop  , cdsitsaidacdcfop.asstring, _BOaceitaICMSSUBTRIB, _cd, True))
  end;
  function se_produto_configurado_nao_subtrib_cfop_subtrib:Boolean;
  begin
    result := (cdsitsaidacdcfop.asstring <> '') and
              (not BooleandoCodigo(_sticms, cdsitsaidaNUSTICMS.AsString, _boicmssubtrib, _nu, True)) and
              (BooleandoCodigo(_cfop  , cdsitsaidacdcfop.asstring, _BOICMSSUBTRIB, _cd, True));
  end;
begin
  cdproduto := produto.CodigoProdutoDigitado(cdsitsaidacddigitado.asstring, _bosaida);
  if cdproduto = 0 then
  begin
    abort;
  end;
  set_cditpedido;
  produto.Select(cdproduto);
  produto.tpproduto.select(produto.cdtpproduto);
  produto.CheckDados;
  check_servico_em_nfe;
  check_estoque;
  cdsitsaidaprtotaltributo.Asfloat  := produto.ObterPrtotaltributo(cdsitsaidacdcfop.asinteger, produto.nuclfiscal, produto.cdorigem);
  cdsitsaidanmproduto.asstring      := produto.nmproduto;
  cdsitsaidacdorigem.AsString       := produto.cdorigem;
  cdsitsaidacdproduto.AsInteger     := produto.cdproduto;
  cdsitsaidanmunidade.asstring      := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  cdsitsaidanuclfiscal.asstring     := produto.nuclfiscal;
  if produto.cdmodbcicms > 0 then
  begin
    cdsitsaidacdmodbcicms.AsInteger   := produto.cdmodbcicms;
  end;
  if produto.cdmodbcsticms > 0 then
  begin
    cdsitsaidacdmodbcsticms.asinteger := produto.cdmodbcsticms;
  end;
  cdsitsaidabocomissao.asstring     := produto.bocomissao;
  if tela.tela.tpsaida.bocomissao <> _s then
  begin
    cdsitsaidabocomissao.asstring := _N;
  end;
  cdsitsaidaboloteimei.AsString := produto.tpproduto.boloteimei;
  actloteserie.Visible          := produto.tpproduto.boloteimei = _s;
  actloteserie.Enabled          := produto.tpproduto.boloteimei = _s;
  tbvQTITEM.Options.Focusing := produto.tpproduto.boloteimei <> _s;
  if produto.tpproduto.boloteimei = _s then
  begin
    cdsitsaidaQTITEM.AsFloat := 0;
  end;
  cdsitsaidaboservico.asstring     := produto.tpproduto.boservico;
  cdsitsaidaboestoque.asstring     := produto.tpproduto.boestoque;
  cdsitsaidavlcusto.AsCurrency     := produto.vlcusto;
  if cdsitsaidacdmodbcsticms.AsInteger = 5 then
  begin
    cdsitsaidaPRMRGVLADICIONADOICMSSUBTRIB.AsCurrency := produto.almva;
  end;
  if cdsitsaidacdCFOP.IsNull then
  begin
    set_cfop_de_acordo_uf_destinatario_situacao_tributaria_produto;
  end;
  cdsitsaidaprtotaltributo.Asfloat   := produto.ObterPrtotaltributo(cdsitsaidacdcfop.asinteger, produto.nuclfiscal, produto.cdorigem);
  if (produto.alicmsred > 0) and (tela.tela.tpsaida.boicmsred = _s) then
  begin
    cdsitsaidaalicmsred.Asfloat := produto.alicmsred;
  end;
  set_dados_fiscais;
  if VarIsNull(cbxcdcfop.EditValue) and (not cdsitsaidacdcfop.IsNull) then
  begin
    cds.FieldByName(_cdcfop).AsString := cdsitsaidacdcfop.asstring;
  end;
  if se_produto_configurado_subtrib_cfop_nao_subtrib then
  begin
    MessageDlg('Produto está configurado como Substituição Tributária mas está sendo lançado em um CFOP que não é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if se_produto_configurado_nao_subtrib_cfop_subtrib then
  begin
    MessageDlg('Produto não está configurado como Substituição Tributária mas está sendo lançado em um CFOP que é Substituição Tributária.'#13'Favor alterar o CFOP.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if not cdsitsaidacdpedido.isnull then
  begin
    set_dados_cditpedido;
  end
  else if (cdsitsaidacdproduto.AsInteger <> produto.cdproduto) or cdsitsaidavlunitario.isnull then
  begin
    cdsitsaidavlunitario.AsFloat := produto.vlvenda;
    if tela.tela.tpsaida.boratearpeso <> _s then
    begin
      cdsitsaidapsliquido.Asfloat := produto.psliquido;
      cdsitsaidapsbruto.Asfloat   := produto.psbruto;
    end;
  end;

  if empresa.financeiro.boplconta then
  begin
    if tela.tela.tpsaida.tpentsai = _e then
    begin
      if produto.cdplconta = 0 then
      begin
        cdsitsaida.fieldbyname(_cdplconta).asstring := cds.fieldbyname(_cdplconta).asstring;
        cdsitsaida.fieldbyname(_nuplconta).asstring := cds.fieldbyname(_nuplconta).asstring;
      end
      else
      begin
        cdsitsaida.fieldbyname(_cdplconta).asinteger := produto.cdplconta;
        cdsitsaida.fieldbyname(_nuplconta).asstring  := produto.nuplconta;
      end;
    end
    else
    begin
      if produto.cdplcontasaida = 0 then
      begin
        cdsitsaida.fieldbyname(_cdplconta).asstring := cds.fieldbyname(_cdplcontasaida).asstring;
        cdsitsaida.fieldbyname(_nuplconta).asstring := cds.fieldbyname(_nuplcontasaida).asstring;
      end
      else
      begin
        cdsitsaida.fieldbyname(_cdplconta).asinteger := produto.cdplcontasaida;
        cdsitsaida.fieldbyname(_nuplconta).asstring  := produto.nuplcontasaida;
      end;
    end;
  end;
  if empresa.financeiro.bocntcusto then
  begin
    if tela.tela.tpsaida.tpentsai = _E then
    begin
      if produto.cdcntcusto = 0 then
      begin
        cdsitsaida.fieldbyname(_cdcntcusto).asstring := cds.fieldbyname(_cdcntcusto).asstring;
        cdsitsaida.fieldbyname(_nucntcusto).asstring := cds.fieldbyname(_nucntcusto).asstring;
      end
      else
      begin
        cdsitsaida.fieldbyname(_cdcntcusto).asinteger := produto.cdcntcusto;
        cdsitsaida.fieldbyname(_nucntcusto).asstring  := produto.nucntcusto;
      end;
    end
    else
    begin
      if produto.cdcntcustosaida = 0 then
      begin
        cdsitsaida.fieldbyname(_cdcntcusto).asstring := cds.fieldbyname(_cdcntcusto).asstring;
        cdsitsaida.fieldbyname(_nucntcusto).asstring := cds.fieldbyname(_nucntcusto).asstring;
      end
      else
      begin
        cdsitsaida.fieldbyname(_cdcntcusto).asinteger := produto.cdcntcustosaida;
        cdsitsaida.fieldbyname(_nucntcusto).asstring  := produto.nucntcustosaida;
      end;
    end;
  end;
end;

procedure Tfrmsaida.cdsitsaidaVLUNITARIOValidate(Sender: TField);
var
  cdusuario, texto : String;
  sair : boolean;
begin
  if (not ((tela.tela.tpsaida.bocontrolepreco = _s) and (cdsitsaidacdproduto.asstring <> ''))) or (Sender.AsCurrency >= RetornaSQLCurrency('select vlvenda from produto where '+get_cd_empresa+' and cdproduto='+cdsitsaidacdproduto.asstring)) then
  begin
    Exit;
  end;
  if Sender.AsCurrency < RetornaSQLCurrency('select vlespecial from produto where '+get_cd_empresa+' and cdproduto='+cdsitsaidacdproduto.asstring) then
  begin
    messagedlg('Preço abaixo do mínimo permitido.'#13'Digite um valor acima do atual para continuar', mtinformation, [mbok], 0);
    abort;
  end;
  if Sender.AsCurrency < RetornaSQLCurrency('select vlatacado from produto where '+get_cd_empresa+' and cdproduto='+cdsitsaidacdproduto.asstring) then
  begin
    if usuario.boprodutovlespecial = _n then
    begin
      texto := 'Informe o usuário que pode alterar este valor'; // solicitar a senha do usuário que tem a permissão
      sair  := false;
      while sair = false do
      begin
        if not AssinaturaDigital(texto, cdusuario) then
        begin
          abort;
        end;
        if RetornaSQLBoolean('select boprodutovlespecial from usuario where cdusuario='+cdusuario) then
        begin
          cdsitsaidacdusuariol.asstring    := cdusuario;
          cdsitsaidacdcomputadorl.asstring := vgcdcomputador;
          cdsitsaidatsliberado.AsDateTime  := tsBanco;
          break;
        end;
        messagedlg('Usuário não tem permissão para trabalhar com este preço.'#13'Digite outro usuário e senha para continuar.', mtinformation, [mbok], 0);
      end;
    end;
  end
  else if usuario.boprodutovlatacado = _N then
  begin
    texto := 'Informe o usuário que pode alterar este valor';
    sair  := false;
    while sair = false do
    begin
      if not AssinaturaDigital(texto, cdusuario) then
      begin
        abort;
      end;
      if RetornaSQLBoolean('select boprodutovlatacado from usuario where cdusuario='+cdusuario) then
      begin
        cdsitsaidacdusuariol.asstring    := cdusuario;
        cdsitsaidacdcomputadorl.asstring := vgcdcomputador;
        cdsitsaidatsliberado.AsDateTime  := tsBanco;
        break;
      end;
      messagedlg('Usuário não tem permissão para trabalhar com este preço.'#13'Digite outro usuário e senha para continuar.', mtinformation, [mbok], 0);
    end;
  end;
end;

procedure Tfrmsaida.cdsitsaidaQTITEMValidate(Sender: TField);
var
  qtestoque : double;
begin
  if cdsitsaidaQTITEM.AsFloat < 0 then
  begin
    MessageDlg('Quantidade de item não pode ser negativo.', mtInformation, [mbOK], 0);
    if pgc.ActivePage <> tbsproduto then
    begin
      pgc.ActivePage := tbsproduto;
    end;
    cdsitsaidaQTITEM.FocusControl;
    abort;
  end;
  if (cdsitsaidaQTITEM.AsFloat = 0) and (cdsitsaidaBOLOTEIMEI.asstring <> _s) then
  begin
    MessageDlg('Quantidade de item não pode ser zero.', mtInformation, [mbOK], 0);
    if pgc.ActivePage <> tbsproduto then
    begin
      pgc.ActivePage := tbsproduto;
    end;
    cdsitsaidaQTITEM.FocusControl;
    abort;
  end;
  if (cdsitsaidaboestoque.asstring = _S) and
     (tela.tela.tpsaida.tpentsai = _S) and
     (tela.tela.tpsaida.boestoque = _s) and
     (not empresa.material.produto.bovendaestoquezerado) then
  begin
    qtestoque := CurrencydoCodigo(_produto, cdsitsaidacdproduto.asstring, _qtestoque);
    if qtestoque - Sender.Asfloat < 0 then
    begin
      messagedlg('Quantidade em estoque '+FormatFloat(__decimal4, qtestoque)+' insuficiente para esta venda.'#13'Digite um produto que tenha o estoque acima de zero para continuar', mtinformation, [mbok], 0);
      abort;
    end;
  end;
  if tela.tela.tpsaida.bolucro = _s then
  begin
    cdsitsaidavllucro.AsCurrency := (cdsitsaidavlunitario.AsFloat - cdsitsaidavlcusto.AsCurrency) * Sender.Asfloat;
  end;
  if cdsitsaidaboservico.asstring = _S then
  begin
    cdsitsaidapsbruto  .Asfloat := 0;
    cdsitsaidapsliquido.Asfloat := 0;
  end
  else if cdsitsaidacdproduto.asstring <> '' then
  begin
    cdsitsaidapsbruto  .Asfloat := Sender.AsFloat * DoubledoCodigo(_produto, cdsitsaidacdproduto.asstring, _PSBRUTO);
    cdsitsaidapsliquido.Asfloat := Sender.AsFloat * DoubledoCodigo(_produto, cdsitsaidacdproduto.asstring, _psliquido);
  end;
end;

procedure Tfrmsaida.grditsaidatvNUPEDIDOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  pedido : TPedido;
  itpedidolist : TITPedidolist;
  codigo : string;
  i : integer;
begin
  if cds.fieldbyname(_cdcliente).asstring = '' then
  begin
    messagedlg('Selecione um cliente antes de selecionar um pedido.', mtError, [mbok], 0);
    cds.fieldbyname(_cdcliente).FocusControl;
    exit;
  end;
  pedido       := tpedido.create;
  itpedidolist := TITPedidoList.Create;
  try
    codigo := LocalizarPedido(cds.fieldbyname(_cdcliente).asstring, itpedidolist);
    if itpedidolist.count > 0 then
    begin
      for i := 0 to itpedidolist.count - 1 do
      begin
        if cdsitsaida.State <> dsinsert then
        begin
          cdsitsaida.Insert;
        end;
        pedido.Select(itpedidolist.Items[i].cdpedido);
        pedido.tppedido.Select(pedido.cdtppedido);
        cdsitsaidacditpedido.asinteger  := itpedidolist.Items[i].cditpedido;
        cdsitsaidacdpedido.asInteger    := itpedidolist.Items[i].cdpedido;
        cdsitsaidanupedido.asstring     := pedido.nupedido;
        cdsitsaidacdproduto.asInteger   := itpedidolist.Items[i].cdproduto;
        cdsitsaidacddigitado.asstring   := itpedidolist.Items[i].cddigitado;
        cdsitsaidaqtitem.AsFloat        := itpedidolist.Items[i].qtitem - itpedidolist.Items[i].qtatendida;
        cdsitsaidavlunitario.AsFloat    := itpedidolist.Items[i].vlunitario;
        cdsitsaidanucotacao.asstring    := itpedidolist.Items[i].nucotacao;
        cdsitsaidanuitem.AsString       := itpedidolist.Items[i].nuitem;
        cdsitsaidaVLDESCONTO.AsCurrency := itpedidolist.Items[i].vldesconto;
        cdsitsaidavldesconto.AsCurrency := ((cdsitsaidaqtitem.AsFloat * itpedidolist.Items[i].vldesconto) / itpedidolist.Items[i].qtitem);
        if itpedidolist.Items[i].alicms > 0 then
        begin
          cdsitsaidaALICMS.AsFloat := itpedidolist.Items[i].alicms;
        end;
        if itpedidolist.Items[i].alipi > 0 then
        begin
          cdsitsaidaalipi.AsFloat := itpedidolist.Items[i].alipi;
        end;
        if pedido.tppedido.boinfadicionalordcompra = _s then
        begin
          cdsitsaidaDSINFADICIONAL.asstring := 'O.C. '+itpedidolist.Items[i].nucotacao+' - '+itpedidolist.Items[i].nuitem;
        end;
        if (pedido.tppedido.boinfadicionalformula = _s) and (itpedidolist.Items[i].dsformula <> '') then
        begin
          if pedido.tppedido.boinfadicionalordcompra  = _s then
          begin
            cdsitsaidaDSINFADICIONAL.asstring := cdsitsaidaDSINFADICIONAL.asstring+#13+itpedidolist.Items[i].dsformula
          end
          else
          begin
            cdsitsaidaDSINFADICIONAL.asstring := itpedidolist.Items[i].dsformula;
          end;
        end;
        cdsitsaida.Post;
      end;
    end
    else if codigo <> '' then
    begin
      cdsitsaidanupedido.asstring := NomedoCodigo(_pedido, codigo, _nupedido);
    end;
  finally
    FreeAndNil(pedido);
    FreeAndNil(itpedidolist);
  end;
end;

procedure Tfrmsaida.grditsaidatvCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  Tregistro.ButtonEditProduto(_saida, cdsitsaida, false);
end;
procedure Tfrmsaida.grditsaidatvNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : string;
begin
  codigo := Localizar(_CNTCUSTO, _nunivel, _nmcntcusto, 'Centro Custo', _o, _nunivel);
  if codigo = '' then
  begin
    Exit;
  end;
  if cdsitsaida.State = dsbrowse then
  begin
    cdsitsaida.Edit;
  end;
  cdsitsaidanucntcusto.asstring := codigo;
  cdsitsaidacdCNTCUSTO.asstring := codigodocampo(_cntcusto, codigo, _nunivel);
end;

procedure Tfrmsaida.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsitsaida, key);
  if key = __KeySearch then
  begin
    if LowerCase(tbv.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cddigitado then
    begin
      grditsaidatvCDDIGITADOPropertiesButtonClick(sender, 0)
    end
    else if LowerCase(tbv.Controller.FocusedColumn.DataBinding.FilterFieldName) = _nuplconta then
    begin
      tbvNUPLCONTAPropertiesButtonClick(sender, 0);
    end
    else if LowerCase(tbv.Controller.FocusedColumn.DataBinding.FilterFieldName) = _nucntcusto then
    begin
      tbvNUCNTCUSTOPropertiesButtonClick(sender, 0);
    end
    else if LowerCase(tbv.Controller.FocusedColumn.DataBinding.FilterFieldName) = _nupedido then
    begin
      grditsaidatvNUPEDIDOPropertiesButtonClick(sender, 0);
    end;
  end;
end;

procedure Tfrmsaida.tbvNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  if (cdsitsaida.State <> dsedit) and (cdsitsaida.State <> dsinsert) then
  begin
    cdsitsaida.Edit;
  end;
  cdsitsaidaNUcntcusto.AsString := cd;
end;

procedure Tfrmsaida.tbvNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  if (cdsitsaida.State <> dsedit) and (cdsitsaida.State <> dsinsert) then
  begin
    cdsitsaida.Edit;
  end;
  cdsitsaidaNUPLCONTA.AsString := cd;
end;

procedure Tfrmsaida.tbvsaidaefd0450CDEFD0450PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdssaidaefd0450, _efd0450, _cdefd0450);
end;

procedure Tfrmsaida.lbldestinatarioDblClick(Sender: TObject);
begin
  actAbrirCliente.onExecute   (actAbrirCliente);
  actAbrirFornecedor.onExecute(actAbrirFornecedor);
end;

procedure Tfrmsaida.lblnuentradaDblClick(Sender: TObject);
begin
  actabrirentradaExecute(actabrirentrada);
end;

procedure Tfrmsaida.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  TQForm.edtcdclientePropertiesButtonClick(self, cds);
end;

procedure Tfrmsaida.cdsCDFORNECEDORValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  if not tela.tela.fornecedor.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_Fornecedor)]), mterror, [mbok], 0);
    cdsprcomissao.clear;
    cdsCDCFOP.clear;
    edtcdcliente.Clear;
    sender.FocusControl;
    Abort;
  end;
  tela.tela.fornecedor.uf.Select(tela.tela.fornecedor.cduf);
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
  edtcdfornecedor.Hint := tela.tela.fornecedor.hint_rzsocial;
  lbldestinatario.Hint := edtcdfornecedor.Hint;
  if tela.tela.fornecedor.uf.sguf = empresa.endereco.sguf then
  begin
    if tela.tela.tpsaida.cdcfopduf <> 0 then
    begin
      cds.FieldByName(_cdcfop).AsInteger := tela.tela.tpsaida.cdcfopduf
    end
    else if tela.tela.tpsaida.cdcfopdufsubtrib <> 0 then
    begin
      cds.FieldByName(_cdcfop).AsInteger := tela.tela.tpsaida.cdcfopdufsubtrib;
    end;
  end
  else if tela.tela.tpsaida.cdcfopfuf <> 0 then
  begin
    cds.FieldByName(_cdcfop).AsInteger := tela.tela.tpsaida.cdcfopfuf
  end
  else if tela.tela.tpsaida.cdcfopfufsubtrib <> 0 then
  begin
    cds.FieldByName(_cdcfop).AsInteger := tela.tela.tpsaida.cdcfopfufsubtrib;
  end;
  cds.fieldbyname(_cdcliente).Clear;
  sender.DataSet.FieldByName(_rzsocial+_f).AsString := tela.tela.fornecedor.rzsocial;
end;

procedure Tfrmsaida.lblcdtransportadoraDblClick(Sender: TObject);
begin
  actAbrirTransportadora.onExecute(actAbrirTransportadora);
end;

procedure Tfrmsaida.edtcdtransportadoraPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdtransportadoraPropertiesButtonClick(self, cds);
end;

procedure Tfrmsaida.edtcodigoExit(Sender: TObject);
begin
  if (edtcodigo.Text <> '') and (cds.state = dsinsert) and (not cdscdsaida.IsNull) and
    (not cdscdserie.IsNull) and
     (RetornaSQLInteger('select count(*) from saida where '+get_cd_empresa+' and nusaida='+edtcodigo.Text+' and cdsaida<>'+cdscdsaida.asstring+' and cdserie='+cdscdserie.asstring) > 0) then
  begin
    edtCodigo.SetFocus;
    messagedlg('Número de Nota Fiscal duplicado!'#13'Digite outro número para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  colorexit(sender);
end;

procedure Tfrmsaida.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmsaida.edtcodigoKeyPress(Sender: TObject; var Key: Char);
var
  codigo : integer;
begin
  TQForm.KeyPressControl(key);
  if not ((key = #13) and (TEdit(sender).text <> '')) then
  begin
    exit;
  end;
  if (cds.state = dsinsert) or (cds.state = dsedit) then
  begin
    cdscdsaida.focuscontrol;
    exit;
  end;
  codigo := tsaida.CodigoNotaFiscal(edtcodigo.text);
  if codigo = -1 then
  begin
    edtcodigo.clear;
    exit;
  end;
  if not registro.RegistroAbrir(codigo) then
  begin
    if actnovo.Enabled then
    begin
      if messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        actNovoExecute(sender)
      end
      else
      begin
        edtcodigo.text := cdsnusaida.asstring;
      end;
    end
    else
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcodigo.text, maiuscula(exibe)]), mterror, [mbok], 0);
      edtcodigo.text := cdsnusaida.asstring;
    end;
  end;
  edtcodigo.selectall;
end;

procedure Tfrmsaida.cdsNewRecord(DataSet: TDataSet);
begin
  actnfemenu.Visible          := False;
  codigoinsercao              := 0;
  cdscdsaida.asstring         := GerarCodigo(_saida);
  cdscdnfefinalidade.asstring := _1;
  edtcodigo.Clear;
  cdsdtemissao.asdatetime     := DtBanco;
  cdsdtsaida.asdatetime       := cdsdtemissao.AsDateTime;
  cdshrsaida.AsDateTime       := hrbanco;
  cds.FieldByName(_cdindpres).AsString := _0;
  cds.FieldByName(_boconsumidorfinal).AsString := _n;
  cdscdtpfrete.OnValidate := nil;
  cdsCDTPFRETE.AsString       := _9;
  if get_qtd_registros(_tpsaida) = 1 then
  begin
    cdscdtpsaida.asstring := inttostr(primeiroregistro(_tpsaida));
  end;
  if TTpSaida.UmTipoDocumento = '' then
  begin
    // configura documento no formato padrao
    pgc.ActivePage          := tbsProduto;
    lbldestinatario.Caption := Maiuscula(_Cliente);
    cbxcdtpsaida.SetFocus;
    cbxcdtpsaida.SelectAll;
  end;
end;

procedure Tfrmsaida.tbvduplicataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsduplicata, key);
  if (key = __KeySearch) and (LowerCase(tbvduplicata.Controller.FocusedColumn.DataBinding.FilterFieldName) = _nuplconta) then
  begin
    grdduplicatatvNUPLCONTAPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmsaida.tbvduplicatanucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  if cdsduplicata.State = dsBrowse then
  begin
    cdsduplicata.Edit;
  end;
  cdsduplicataNUcntcusto.AsString := cd;
end;

procedure Tfrmsaida.tbvFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  actloteserie.Visible := cdsitsaidaboloteimei.AsString = _s;
  actloteserie.Enabled := cdsitsaidaboloteimei.AsString = _s;
  tbvQTITEM.Options.Focusing := not (cdsitsaidaboloteimei.AsString = _s);
  tbvVLICMSSUBTRIB.Options.Focusing := cdsitsaidaBOICMSSUBTRIBAJUSTE.AsString = _S;
  tbvVLBASEICMSSUBTRIB.Options.Focusing := cdsitsaidaBOBASEICMSSUBTRIBAJUSTE.AsString = _S;
  setFocoLocacao;
end;

procedure Tfrmsaida.grdduplicatatvNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  if cdsduplicata.State = dsBrowse then
  begin
    cdsduplicata.Edit;
  end;
  cdsduplicataNUPLCONTA.AsString := cd;
end;

procedure Tfrmsaida.cdsduplicataNewRecord(DataSet: TDataSet);
begin
  cdsduplicataCDTPDUPLICATA.AsString  := _1;
  cdsduplicataVLDUPLICATA.AsCurrency  := 0;
  cdsduplicataVLBAIXA.AsCurrency      := 0;
  cdsduplicataVLDESCONTO.AsCurrency   := 0;
  cdsduplicataVLDEVOLUCAO.AsCurrency  := 0;
  cdsduplicataVLABATIMENTO.AsCurrency := 0;
  cdsduplicataVLSALDO.AsCurrency      := 0;
  cdsduplicataVLDEDUCAO.AsCurrency    := 0;
  cdsduplicataVLACRESCIMO.AsCurrency  := 0;
  cdsduplicataVLRECEBIDO.AsCurrency   := 0;
  cdsduplicataVLMULTA.AsCurrency      := 0;
  cdsduplicataVLJUROS.AsCurrency      := 0;
  cdsduplicataVLCOMISSAO.AsCurrency   := 0;
  cdsduplicataVLJUROSNRECEBIDO.AsCurrency := 0;
end;

procedure Tfrmsaida.tbvduplicataCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuduplicata then
  begin
    actAbrirDuplicataExecute(actAbrirDuplicata);
  end;
end;

procedure Tfrmsaida.tbvduplicataCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvduplicataNUCORCONTA;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  end
  else
  begin
    Column := tbvduplicataNUCOR;
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

procedure Tfrmsaida.tbvduplicataFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  actbaixaduplicata.Enabled                 := cdsduplicatacdstduplicata.AsInteger = 1;
  actbaixaduplicatatodas.Enabled            := cdsduplicatacdstduplicata.AsInteger = 1;
  tbvduplicataNUDUPLICATA.Options.Focusing  := cdsduplicataVLBAIXA.AsCurrency = 0;
  tbvduplicataCDTPCOBRANCA.Options.Focusing := cdsduplicataVLBAIXA.AsCurrency = 0;
  tbvduplicataNUPLCONTA.Options.Focusing    := cdsduplicataVLBAIXA.AsCurrency = 0;
  tbvduplicataDTVENCIMENTO.Options.Focusing := cdsduplicataVLBAIXA.AsCurrency = 0;
  tbvduplicataVLDUPLICATA.Options.Focusing  := cdsduplicataVLBAIXA.AsCurrency = 0;
end;

procedure Tfrmsaida.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _NUPEDIDO then
  begin
    actabrirpedido.onExecute(actabrirpedido)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _CDDIGITADO  then
  begin
    actabrirproduto.onExecute(actabrirproduto)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _CDlocacao then
  begin
    actabrirlocacao.onExecute(actabrirlocacao);
  end;
end;

procedure Tfrmsaida.cdsCDTRANSPORTADORAValidate(Sender: TField);
var
  transportadora : TTransportadora;
  veiculo : TVeiculo;
begin
  if sender.AsString = '' then
  begin
    cdsNUPLACA.Clear;
    cdsCDUF.Clear;
    exit;
  end;
  Transportadora := TTransportadora.create;
  veiculo := TVeiculo.Create;
  try
    if not transportadora.Select(sender.AsLargeInt) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [Sender.AsString, maiuscula(_Transportadora)]), mterror, [mbok], 0);
      Sender.FocusControl;
      cdsnuplaca.asstring := '';
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
    if not qregistro.BooleandoCodigo(_sttransportadora, transportadora.cdsttransportadora, _bogerarsaida) then
    begin
      messagedlg('Transportadora está no status '+qregistro.NomedoCodigo(_sttransportadora, transportadora.cdsttransportadora)+#13+
                  'que não permite ser inserido no '+exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
    end;
    if veiculo.Select(transportadora.cdveiculo) then
    begin
      cdsnuplaca.asstring := veiculo.nuplaca;
      if veiculo.cduf <> 0 then
      begin
        cdscduf.asinteger   := veiculo.cduf;
      end;
    end;
  finally
    freeandnil(transportadora);
    freeandnil(veiculo);
  end;
end;

procedure Tfrmsaida.cbxcdtpsaidaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpsaida);
end;

procedure Tfrmsaida.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmsaida.configurarboitemdesconto;
begin
  edtprdesconto.Enabled := not ckbboitemdesconto.Checked;
  edtvldesconto.Enabled := not ckbboitemdesconto.Checked;
end;

procedure Tfrmsaida.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmsaida.cdsduplicataDTVENCIMENTOValidate(Sender: TField); // xe7
begin
  if Sender.asdatetime < edtDTEMISSAO.Date then
  begin
    MessageDlg('Data de vencimento não pode ser menor do que a data de emissão da nota fiscal.'#13'Altere a data de vencimento para continuar.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsduplicataDTPRORROGACAO.AsDateTime := cdsduplicataDTVENCIMENTO.AsDateTime;
end;

procedure Tfrmsaida.cdsDSHISTORICOValidate(Sender: TField);
var
  boreadonly : boolean;
begin
  if cdsduplicata.RecordCount = 0 then
  begin
    Exit;
  end;
  cdsduplicata.First;
  boreadonly := false;
  while not cdsduplicata.Eof do
  begin
    if cdsduplicataCDSTDUPLICATA.AsString <> _1 then
    begin
      cdsduplicata.Next;
      Continue;
    end;
    if cdsduplicata.State = dsbrowse then
    begin
      if cdsduplicata.ReadOnly then
      begin
        cdsduplicata.ReadOnly := False;
        boreadonly := True;
      end;
      cdsduplicata.Edit;
    end;
    cdsduplicatadshistorico.asstring := edtdshistorico.Text;
    cdsduplicata.Next;
  end;
  if boreadonly then
  begin
    cdsduplicata.ReadOnly := true;
  end;
end;

procedure Tfrmsaida.cdsDTEMISSAOValidate(Sender: TField);
  function NudiasDiferenca:integer;
  var
    dtemissao : TDate;
  begin
    result := 0;
    dtemissao := cdsduplicataDTEMISSAO.AsDateTime;
    if cdsDTEMISSAO.asdatetime > dtemissao then
    begin
      while cdsDTEMISSAO.asdatetime > dtemissao do
      begin
        result    := result    + 1;
        dtemissao := dtemissao + 1;
      end;
    end
    else
    begin
      while cdsDTEMISSAO.asdatetime < dtemissao do
      begin
        result    := result    - 1;
        dtemissao := dtemissao - 1;
      end;
    end;
  end;
var
  nudias : integer;
begin
  if cdsduplicata.RecordCount = 0 then
  begin
    exit;
  end;
  if AchouBaixa then
  begin
    MessageDlg('Não pode alterar a data de emissão quando há contas a receber com baixa.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    abort;
  end;
  nudias := nudiasdiferenca;
  cdsduplicata.First;
  while not cdsduplicata.Eof do
  begin
    if cdsduplicata.State = dsbrowse then
    begin
      cdsduplicata.Edit;
    end;
    cdsduplicataDTEMISSAO.AsDateTime     := cdsDTEMISSAO.AsDateTime;
    cdsduplicataDTVENCIMENTO.AsDateTime  := cdsduplicataDTVENCIMENTO.AsDateTime + nudias;
    cdsduplicataDTPRORROGACAO.AsDateTime := cdsduplicataDTPRORROGACAO.AsDateTime + nudias;
    cdsduplicata.Next;
  end;
end;

procedure Tfrmsaida.cdsDTSAIDAValidate(Sender: TField);
begin
  if cdsduplicata.RecordCount = 0 then
  begin
    exit;
  end;
  if AchouBaixa then
  begin
    MessageDlg('Não pode alterar a data de saída quando há contas a receber com baixa.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    abort;
  end;
  cdsduplicata.First;
  while not cdsduplicata.Eof do
  begin
    if cdsduplicata.State = dsbrowse then
    begin
      cdsduplicata.Edit;
    end;
    cdsduplicataDTENTRADA.AsDateTime := cdsDTSAIDA.AsDateTime;
    cdsduplicata.Next;
  end;
end;

procedure Tfrmsaida.actimprimircarneExecute(Sender: TObject);
var
  duplicatalist : TDuplicataList;
begin
  if (cdsDuplicata.RecordCount = 0) or
     (adntcliente.ClientePossuiAdiantamento(cds.fieldbyname(_cdcliente).asstring) and
     (messagedlg('Cliente possui adiantamento.'#13'Deseja realmente imprimir a boleta?', mtinformation, [mbyes, mbno], 0) = mrno)) then
  begin
    exit;
  end;
  if not tduplicata.verificarSeNota55JaFoiEnviada(cdsduplicatacdduplicata.asinteger) then
  begin
    messagedlg('Não é possível emitir boleto de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota para depois imprimir o boleto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  duplicatalist := TDuplicataList.create;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      if cdsduplicataCDSTDUPLICATA.AsString = _1 then
      begin
        duplicatalist.New.Select(cdsduplicataCDDUPLICATA.AsInteger);
      end;
      cdsduplicata.Next;
    end;
    if duplicatalist.count > 0 then
    begin
      duplicatalist.ImprimirCarneAcbr;
    end;
  finally
    freeandnil(duplicatalist);
  end;
end;

procedure Tfrmsaida.actimprimircartacorrecaoExecute(Sender: TObject);
begin
  if cdscartacorrecao.RecordCount = 0 then
  begin
    Exit;
  end;
  ImprimirCartaCorrecao(cdscartacorrecaoDSXML.AsString);
end;

procedure Tfrmsaida.actpdfcartacorrecaoExecute(Sender: TObject);
begin
  if cdscartacorrecao.RecordCount = 0 then
  begin
    Exit;
  end;
  Loadnfe;
  nfe.EventoNFe.Evento.Clear;
  nfe.EventoNFe.LerXMLFromString(cdscartacorrecaoDSXML.AsString);
  gerarPDFCartaCorrecao(nfe);
end;

procedure Tfrmsaida.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, cds);
end;

procedure Tfrmsaida.TornarNuloAliquotaZerada(Sender: TField);
begin
  if (not sender.IsNull) and (sender.AsFloat = 0) then
  begin
    sender.Clear;
  end;
end;

procedure Tfrmsaida.cdsitsaidaBOICMSSUBTRIBAJUSTEValidate(Sender: TField);
begin
  tbvVLICMSSUBTRIB.Options.Focusing := cdsitsaidaBOICMSSUBTRIBAJUSTE.AsString = _S;
end;

procedure Tfrmsaida.actabrirordservExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmsaida.txtRZSOCIALCDblClick(Sender: TObject);
begin
  actAbrirclienteExecute(actAbrircliente);
end;

procedure Tfrmsaida.txtRZSOCIALFDblClick(Sender: TObject);
begin
  actAbrirfornecedorExecute(actAbrirfornecedor);
end;

procedure Tfrmsaida.txtNUORDSERVDblClick(Sender: TObject);
begin
  actabrirordservExecute(actabrirordserv);
end;

procedure Tfrmsaida.cdsitsaidaBOBASEICMSAJUSTEValidate(Sender: TField);
begin
  tbvVLBASEICMS.Options.Focusing := sender.AsString = _S;
end;

procedure Tfrmsaida.cdsitsaidaBOBASEIPIAJUSTEValidate(Sender: TField);
begin
  tbvVLBASEIPI.Options.Focusing := sender.AsString = _S;
end;

procedure Tfrmsaida.cdsitsaidaBOAJUSTETOTALValidate(Sender: TField);
begin
  tbvVLTOTAL.Options.Focusing := sender.AsString = _S;
end;

procedure Tfrmsaida.cdsitsaidaBOBASEPISAJUSTEValidate(Sender: TField);
begin
  tbvVLBASEPIS.Options.Focusing := sender.AsString = _S;
end;

procedure Tfrmsaida.cdsitsaidaBOBASECOFINSAJUSTEValidate(Sender: TField);
begin
  tbvVLBASECOFINS.Options.Focusing := sender.AsString = _S;
end;

procedure Tfrmsaida.actcopiarchaveExecute(Sender: TObject);
var
  nuchave : string;
begin
  if Loadnfe and (cdsnustdocumento.asstring <> _99) then
  begin
    nuchave := cdsnuchavenfe.asstring;
  end
  else if validarNFE(Sender) then
  begin
    NFe.NotasFiscais.Validar;
    nuchave := nfe.NotasFiscais.Items[0].NFe.infNFe.ID;
  end;
  Clipboard.AsText := nuchave;
  ShellExecute(Handle, _open, _msg_link_copiarchave, Nil, Nil, SW_SHOWDEFAULT);
end;

procedure TFrmSaida.InserirDevolucaoLocacaoSegundo;
var
  locacaodevolucaoList : TLocacaoDevolucaoList;
  i : Integer;
begin
  locacaodevolucaolist := TLocacaoDevolucaoList.Create;
  cdsitsaida.DisableControls;
  try
    locacaodevolucaolist.Ler(locacao.cdlocacao, true);
    if locacaodevolucaolist.Count > 1 then
    begin
      for i := 1 to locacaodevolucaolist.Count - 1 do
      begin
        cdsitsaida.Insert;
        cdsitsaidaCDLOCACAO.Asinteger := locacaodevolucaolist.items[i].cdlocacao;
        cdsitsaidavlunitario.AsFloat := locacaodevolucaolist.items[i].vlunitario;
        cdsitsaidaQTITEM.AsFloat := locacaodevolucaolist.items[i].qtitem;
        cdsitsaidaVLTOTAL.AsCurrency := locacaodevolucaolist.items[i].vltotal;
        cdsitsaidaCDLOCACAODEVOLUCAO.asinteger := locacaodevolucaolist.items[i].cdlocacaodevolucao;
        cdsitsaidaCDDIGITADO.asinteger := locacao.tplocacao.cdproduto;
        cdsitsaidaCDLOCACAOPERIODO.asinteger := locacao.locacaoperiodo.items[locacao.locacaoperiodo.Count-1].cdlocacaoperiodo;
        cdsitsaida.post;
      end;
    end;
    boinsertdevolucaolocacao := False;    
  finally
    freeandnil(locacaodevolucaolist);
    cdsitsaida.EnableControls;
  end;
end;

procedure Tfrmsaida.InserirPlContaItsaida(tipo:string);
begin
  cdsitsaida.DisableControls;
  DesativarOnValidate;
  try
    if tipo = _plconta then
    begin
      cdsitsaidaNUPLCONTA.OnValidate := cdsitsaidaNUPLCONTAValidate;
    end
    else
    begin
      cdsitsaidaNUcntCusto.OnValidate := cdsitsaidaNUcntCustoValidate;
    end;
    cdsitsaida.first;
    while not cdsitsaida.Eof do
    begin
      if (cdsitsaida.state <> dsedit) and (cdsitsaida.state <> dsinsert) then
      begin
        cdsitsaida.edit;
      end;
      cdsitsaida.fieldbyname(_cd+tipo).asstring := cds.fieldbyname(_cd+tipo).asstring;
      cdsitsaida.fieldbyname(_nu+tipo).asstring := cds.fieldbyname(_nu+tipo).asstring;
      cdsitsaida.post;
      cdsitsaida.Next;
    end;
  finally
    cdsitsaida.EnableControls;
    AtivarOnValidate;
  end;
end;

procedure Tfrmsaida.cdsitsaidaCDLOCACAOValidate(Sender: TField);
  procedure inserir_devolucao_locacao;
  begin
    locacaodevolucaolist.Ler(locacao.cdlocacao, true);
    if locacaodevolucaolist.Count > 0 then
    begin
      cdsitsaidavlunitario.AsFloat := locacaodevolucaolist.items[0].vlunitario;
      cdsitsaidaQTITEM.AsFloat := locacaodevolucaolist.items[0].qtitem;
      cdsitsaidaVLTOTAL.AsCurrency := locacaodevolucaolist.items[0].vltotal;
      cdsitsaidaCDLOCACAODEVOLUCAO.Asinteger := locacaodevolucaolist.items[0].cdlocacaodevolucao;
      cdsitsaidaCDDIGITADO.AsString := inttostr(locacao.tplocacao.cdproduto);
    end;
  end;
  function locacao_repetida:Boolean;
  var
    c : TClientDataSet;
  begin
    result := false;
    if cdsitsaida.RecordCount = 0 then
    begin
      Exit;
    end;
    c := TClientDataSet.Create(nil);
    try
      c.CloneCursor(cdsitsaida, false);
      c.First;
      while not c.Eof do
      begin
        if (c.FieldByName(_cdLocacao).AsString = cdsitsaidaCDLOCACAO.AsString) and
           (c.FieldByName(_cditsaida).AsString <> cdsitsaidaCDITSAIDA.AsString) and
           (c.FieldByName(_cdlocacaodevolucao).AsString = cdsitsaidaCDLOCACAODEVOLUCAO.AsString) then
        begin
          result := True;
          Break;
        end;
        c.Next;
      end;
    finally
      c.Free;
    end;
  end;
begin
  if boinsertdevolucaolocacao then
  begin
    Exit;
  end;
  boinsertdevolucaolocacao := false;
  setFocoLocacao;
  if Sender.asstring = '' then
  begin
    exit;
  end;
  locacao.Select(sender.AsInteger);
  locacao.tplocacao.Select(locacao.cdtplocacao);
  locacao.locacaoperiodo.Ler(locacao.cdlocacao);
  if locacao.cdlocacao = 0 then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__locacao)]), mterror, [mbok], 0);
    cdsitsaidaCDLOCACAO.FocusControl;
    abort;
  end;
  if locacao.cdcliente <> cds.fieldbyname(_cdcliente).AsLargeInt then
  begin
    messagedlg(format('Locação %s não pertence ao cliente '#13'%s - %s.', [Sender.asstring, edtcdcliente.text, cds.FieldByName(_rzsocial+_c).AsString]), mterror, [mbok], 0);
    cdsitsaidaCDLOCACAO.FocusControl;
    abort;
  end;
  if not (locacao.cdstlocacao in [4, 9, 5, 6, 7]) then
  begin
    MessageDlg('Locação está no status '+locacao.stlocacao.nmstlocacao+' que não permite inserir na nota fiscal.', mtInformation, [mbOK], 0);
    cdsitsaidaCDLOCACAO.FocusControl;
    Abort;
  end;
  if locacao.cdstlocacao in [4, 9] then
  begin
    cdsitsaidavlunitario.AsFloat := locacao.vllocacao / locacao.qtitem;
    cdsitsaidaQTITEM.AsFloat     := locacao.qtitem;
  end
  else if locacao.cdstlocacao in [5, 6, 7] then
  begin
    inserir_devolucao_locacao;
  end;
  if (locacao.cdstlocacao <> 5) and (locacao.cdstlocacao <> 6) then
  begin
    cdsitsaidaCDDIGITADO.AsString := inttostr(locacao.tplocacao.cdproduto);
  end;
  cdsitsaidaCDLOCACAOPERIODO.asinteger := locacao.locacaoperiodo.items[locacao.locacaoperiodo.Count-1].cdlocacaoperiodo;
  if locacao_repetida then
  begin
    MessageDlg('Código da Locação repetido.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
  if cds.State = dsbrowse then
  begin
    cds.Edit;
  end;
  //cdsitsaida.Post;
end;

procedure Tfrmsaida.cdsitsaidaloteBeforePost(DataSet: TDataSet);
begin
  if (Dataset.State = dsinsert) and cdsitsaidaloteCDITSAIDALOTE.isnull then
  begin
    cdsitsaidaloteCDITSAIDALOTE.AsString := GerarCodigo(_itsaidalote);
  end;
  RegistraInformacao_(dataset);
end;

procedure Tfrmsaida.actabrirlocacaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsitsaida);
end;

procedure Tfrmsaida.setFocoLocacao;
begin
  tbvCDCFOP.Options.Focusing     := cdsitsaidaCDLOCACAO.IsNull;
  tbvCDDIGITADO.Options.Focusing := cdsitsaidaCDLOCACAO.IsNull;
  tbvQTITEM.Options.Focusing     := cdsitsaidaCDLOCACAO.IsNull and (not (cdsitsaidaboloteimei.AsString = _s));
  tbvVLUNITARIO.Options.Focusing := cdsitsaidaCDLOCACAO.IsNull;
  tbvVLTOTAL.Options.Focusing    := cdsitsaidaCDLOCACAO.IsNull;
  tbvNUSTICMS.Options.Focusing   := cdsitsaidaCDLOCACAO.IsNull;
end;

procedure Tfrmsaida.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure Tfrmsaida.cdsitsaidaBOBASEICMSSUBTRIBAJUSTEValidate(Sender: TField);
begin
  tbvVLBASEICMSSUBTRIB.Options.Focusing := cdsitsaidaBOBASEICMSSUBTRIBAJUSTE.AsString = _S;
end;

procedure Tfrmsaida.LiberarControleNfe(ativar: Boolean);
begin
  cbxcdtpsaida.Enabled      := ativar;
  edtdtemissao.Enabled      := ativar;
  edtdtsaida.Enabled        := ativar;
  edthrsaida.Enabled        := ativar;
  cbxcdcfop.Enabled         := ativar;
  edtcdcliente.Enabled      := ativar;
  gbxtransportadora.Enabled := ativar;
  pgc.Enabled               := ativar;
  gbxduplicata.Enabled      := ativar;
  pnl1.Enabled              := ativar;
end;

procedure Tfrmsaida.actemailExecute(Sender: TObject);
begin
  btnemail.DropDown(false);
end;

procedure Tfrmsaida.actemailnotafiscalExecute(Sender: TObject);
begin
  verificarConfiguracaoEmail;
  ImpimirRelatorioPadrao1(325, cdsCDSAIDA.AsString , '', _email, '', tela.tela.tpsaida.emailcopia, tela.tela.tpsaida.dstituloemail, tela.tela.tpsaida.dsassuntoemail);
end;

procedure Tfrmsaida.imprimir_modo_antigo(Sender: TObject);
var
  resposta : integer;
begin
  ajustar(sender, tela.tela.tpsaida.bovlduplicatadiferentevltotal = _s);
  resposta := mryes;
  if cdsboimpressa.asstring = _S then
  begin
    resposta := MessageDlg('Esta nota fiscal já foi impressa.'#13'Deseja imprimí-la novamente?', mtconfirmation, [mbyes,mbno], 0);
  end;
  if (resposta = mryes) and (TSaida.Imprimir(cdscdsaida.asstring)) then
  begin
    ExecutaSQL('update saida set boimpressa=''S'' where '+get_cd_empresa+' and cdsaida='+cdscdsaida.asstring);
  end;
end;

procedure Tfrmsaida.actimprimirsaidaExecute(Sender: TObject);
begin
  if NFe.NotasFiscais.Count < 1 then
  begin
    if cdsdsxml.IsNull then
    begin
      imprimir_modo_antigo(sender);
      Exit;
    end;
    Loadnfe;
  end;
  if NFe.NotasFiscais.Count > 0 then
  begin
    NFEImprimir(tela.tela.tpsaida.nucasadecimalquantidade, tela.tela.tpsaida.nucasadecimalvlunitario, nfe, cdsnustdocumento.asstring = _02);
  end;
end;

procedure Tfrmsaida.actemailduplicataExecute(Sender: TObject);
begin
//
end;

procedure Tfrmsaida.actemailduplicataduplicataExecute(Sender: TObject);
begin
  if cdsduplicatacdduplicata.asstring = '' then
  begin
    Exit;
  end;
  ImpimirRelatorioPadrao1(331, cdsduplicatacdduplicata.asstring, '', _email, '', '', '', '');
end;

procedure Tfrmsaida.actemailduplicatanotaExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(517, cdscdsaida.asstring, '', _email, '', '', '', '');
end;

procedure Tfrmsaida.actemailreciboduplicataExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(88, 'where saida.'+get_cd_empresa+' and duplicata.cdduplicata='+cdsduplicatacdduplicata.asstring, '', _email, '', '', '', '');
end;

procedure Tfrmsaida.actemailreciboExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(548, 'where saida.'+get_cd_empresa+' and saida.cdsaida='+cdscdsaida.asstring, '', _email, '', '', '', '');
end;

procedure Tfrmsaida.actemailboletoExecute(Sender: TObject);
var
  nome_arquivo : string;
begin
  nome_arquivo := GerarPDFBoleto;
  Formatar_Email(False, '', '', nome_arquivo, '', '');
end;

function Tfrmsaida.GerarPDFBoleto:string;
begin
  result := tela.tela.duplicata.GerarPDFBoleto(cdsduplicatacdduplicata.AsInteger);
end;

function TFrmSaida.GerarListaArquivoPDFBoleto:string;
begin
  result := '';
  cdsduplicata.First;
  while not cdsduplicata.Eof do
  begin
    result := result + GerarPDFBoleto + #13;
    cdsduplicata.Next;
  end;
end;

procedure Tfrmsaida.actemailnotafiscalboletoExecute(Sender: TObject);
var
  nome_arquivo : TStrings;
begin
  verificarConfiguracaoEmail;
  nome_arquivo := TStringList.Create;
  try
    nome_arquivo.Text := GerarListaArquivoPDFBoleto;
    nome_arquivo.Add(gerar_arquivo_relatorio(325, '', cdsCDSAIDA.AsString, 0, 0, 0, nil, _pdf, '', '', '', ''));
    Formatar_Email(False, tela.tela.tpsaida.dstituloemail, tela.tela.tpsaida.dsassuntoemail, nome_arquivo.Text, '', tela.tela.tpsaida.emailcopia);
  finally
    nome_arquivo.Free;
  end;
end;

procedure Tfrmsaida.actemailnfeboletoExecute(Sender: TObject);
  function get_arquivo_xml:string;
  var
    arquivo : tstrings;
  begin
    arquivo := tstringlist.create;
    try
      arquivo.Text := cdsdsxml.asstring;
      result := ExtractFilePath(Application.ExeName)+cdsnuchavenfe.asstring+'.'+_xml;
      arquivo.SaveToFile(result);
    finally
      freeandnil(arquivo);
    end;
  end;
var
  listaemail, email1 :string;
  lstemail : TStrings;
  bonenviarpdf : Boolean;
  procedure set_lista_cco;
  var
    i : Integer;
  begin
    if not cds.fieldbyname(_cdcliente).IsNull then
    begin
      tela.tela.cliente.select(cds.fieldbyname(_cdcliente).AsLargeInt);
      bonenviarpdf := tela.tela.cliente.bonenviarpdf = _s;
      tela.tela.cliente.listaemail(lstemail);
      if lstemail.Count = 0 then
      begin
        email1 := tela.tela.cliente.email;
      end
      else
      begin
        email1 := lstemail[0];
        lstemail.Delete(0);
      end;
    end;
    if not cds.fieldbyname(_cdfornecedor).IsNull then
    begin
      tela.tela.fornecedor.select(cds.fieldbyname(_cdfornecedor).AsLargeInt);
      tela.tela.fornecedor.uf.Select(tela.tela.fornecedor.cduf);
      bonenviarpdf := tela.tela.fornecedor.bonenviarpdf = _s;
      tela.tela.fornecedor.listaemail(lstemail);
      if lstemail.Count = 0 then
      begin
        email1 := tela.tela.fornecedor.email;
      end
      else
      begin
        email1 := lstemail[0];
        lstemail.Delete(0);
      end;
    end;
    if not cds.fieldbyname(_cdtransportadora).IsNull then
    begin
      lstemail.text := ttransportadora.Listaemail(cds.fieldbyname(_cdtransportadora).AsLargeInt);
    end;
    listaemail := '';
    for i := 0 to lstemail.Count - 1 do
    begin
      if listaemail <> '' then
      begin
        listaemail := listaemail + ';';
      end;
      listaemail := listaemail + lstemail[i];
    end;
    if tela.tela.tpsaida.emailcopia<> '' then
    begin
      if listaemail <> '' then
      begin
        listaemail := listaemail + ';';
      end;
      listaemail := listaemail + tela.tela.tpsaida.emailcopia;
    end;
  end;
var
  lista_arquivo : string;
  eventoemail : TEventoEmail;
begin
  verificarConfiguracaoEmail;
  if not Loadnfe then
  begin
    MessageDlg('Nota Fiscal eletrônica inexistente.'#13'Não é possível enviar e-mail.', mtInformation, [mbOK], 0);
    Exit;
  end;
  lista_arquivo := get_arquivo_xml;
  lstemail      := TStringList.Create;
  eventoemail   := teventoemail.create;
  try
    set_lista_cco;
    if acbr.email.bopdf and (not bonenviarpdf) then
    begin
      lista_arquivo := lista_arquivo +#13+NFEGerarPDF(tela.tela.tpsaida.nucasadecimalquantidade, tela.tela.tpsaida.nucasadecimalvlunitario, nfe, ExtractFilePath(Application.ExeName));
    end;
    lista_arquivo := lista_arquivo + #13 + GerarListaArquivoPDFBoleto;
    eventoemail.dstitulo  := tela.tela.tpsaida.dstituloemail;
    eventoemail.dsassunto := tela.tela.tpsaida.dsassuntoemail;
    Formatar_Email(True, eventoemail.TratarTitulo(cds), eventoemail.TratarAssunto(cds), lista_arquivo, email1, listaemail, acbr.email.SmtpUser, acbr.email.SmtpPass, IntToStr(acbr.email.tpenvio));
  finally
    freeandnil(lstemail);
    freeandnil(eventoemail);
  end;
end;

procedure Tfrmsaida.cdssaidareferenciadaCDSAIDAORIGEMValidate(Sender: TField);
begin
  if not sender.IsNull then
  begin
    sender.DataSet.FieldByName(_nuchavenfe).AsString := NomedoCodigo(_saida, Sender.asstring, _nuchavenfe);
  end;
end;

procedure Tfrmsaida.cdssaidareferenciadaCDENTRADAORIGEMValidate(Sender: TField);
begin
  if not sender.IsNull then
  begin
    sender.DataSet.FieldByName(_nuchavenfe).AsString := NomedoCodigo(_entrada, Sender.asstring, _nuchavenfe);
  end;
end;

procedure Tfrmsaida.cdsTPDEVOLUCAOValidate(Sender: TField);
begin
  cdssaidareferenciada.EmptyDataSet;
  setReferenciada;
end;

procedure Tfrmsaida.setReferenciada;
begin
  tbvreferenciadaNUCHAVENFE.Visible := cdsTPDEVOLUCAO.AsString <> _c;
  tbvreferenciadabodigitarchave.Visible := cdsTPDEVOLUCAO.AsString <> _c;
end;

procedure Tfrmsaida.actloteserieExecute(Sender: TObject);
begin
  Loteserie(_saida, cdsTPENTSAI.AsString, cdsitsaidacdproduto.AsString, cdsitsaidalote);
end;

procedure Tfrmsaida.cdsitsaidaloteAfterDelete(DataSet: TDataSet);
begin
  if (cdsitsaida.State <> dsedit) or (cdsitsaida.State <> dsinsert) then
  begin
    cdsitsaida.Edit;
  end;
  cdsitsaidaQTITEM.AsFloat := cdsitsaidaQTITEM.AsFloat -1;
end;

procedure Tfrmsaida.cdsitsaidaloteAfterInsert(DataSet: TDataSet);
begin
  if (cdsitsaida.State <> dsedit) or (cdsitsaida.State <> dsinsert) then
  begin
    cdsitsaida.Edit;
  end;
  cdsitsaidaQTITEM.AsFloat := cdsitsaidaQTITEM.AsFloat +1;
end;

procedure Tfrmsaida.tbvCDLOCACAOPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
  procedure inserir_devolucao_locacao;
  begin
    locacaodevolucaolist.Ler(locacao.cdlocacao, true);
    if locacaodevolucaolist.Count > 0 then
    begin
      cdsitsaidavlunitario.AsFloat           := locacaodevolucaolist.items[0].vlunitario;
      cdsitsaidaQTITEM.AsFloat               := locacaodevolucaolist.items[0].qtitem;
      cdsitsaidaVLTOTAL.AsCurrency           := locacaodevolucaolist.items[0].vltotal;
      cdsitsaidaCDLOCACAODEVOLUCAO.asinteger := locacaodevolucaolist.items[0].cdlocacaodevolucao;
      cdsitsaidaCDDIGITADO.AsString          := inttostr(locacao.tplocacao.cdproduto);
    end
    else
    begin
      cdsitsaidavlunitario.AsFloat := locacao.vllocacao / locacao.qtitem;
      cdsitsaidaQTITEM.AsFloat     := locacao.qtsaldo;
    end;
  end;
  function locacao_repetida:Boolean;
  var
    c : TClientDataSet;
  begin
    result := false;
    if cdsitsaida.RecordCount = 0 then
    begin
      Exit;
    end;
    c := TClientDataSet.Create(nil);
    try
      c.CloneCursor(cdsitsaida, false);
      c.First;
      while not c.Eof do
      begin
        if (c.FieldByName(_cdLocacao).AsString = cdsitsaidaCDLOCACAO.AsString) and
           (c.FieldByName(_cditsaida).AsString <> cdsitsaidaCDITSAIDA.AsString) and
           (c.FieldByName(_cdlocacaodevolucao).AsString = cdsitsaidaCDLOCACAODEVOLUCAO.AsString) then
        begin
          result := True;
          Break;
        end;
        c.Next;
      end;
    finally
      c.Free;
    end;
  end;
begin
  if boinsertdevolucaolocacao or ((cdsitsaida.State <> dsedit) and (cdsitsaida.State <> dsInsert)) then
  begin
    Exit;
  end;
  boinsertdevolucaolocacao := false;
  setFocoLocacao;
  if VarIsNull(DisplayValue) then
  begin
    exit;
  end;
  locacao.Select(strtoint(DisplayValue));
  locacao.tplocacao.Select(locacao.cdtplocacao);
  locacao.locacaoperiodo.Ler(locacao.cdlocacao);
  if locacao.cdlocacao = 0 then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [DisplayValue, maiuscula(__locacao)]), mterror, [mbok], 0);
    cdsitsaidaCDLOCACAO.FocusControl;
    abort;
  end;
  if locacao.cdcliente <> cds.fieldbyname(_cdcliente).AsLargeInt then
  begin
    messagedlg(format('Locação %s não pertence ao cliente '#13'%s - %s.', [DisplayValue, edtcdcliente.text, cds.FieldByName(_rzsocial+_c).asstring]), mterror, [mbok], 0);
    cdsitsaidaCDLOCACAO.FocusControl;
    abort;
  end;
  if not (locacao.cdstlocacao in [4, 5, 6, 7, 9]) then
  begin
    MessageDlg('Locação está no status '+locacao.stlocacao.nmstlocacao+' que não permite inserir na nota fiscal.', mtInformation, [mbOK], 0);
    cdsitsaidaCDLOCACAO.FocusControl;
    Abort;
  end;
  if (locacao.cdstlocacao = 4) or (locacao.cdstlocacao = 9) then
  begin
    cdsitsaidavlunitario.AsFloat := locacao.vllocacao / locacao.qtitem;
    cdsitsaidaQTITEM.AsFloat     := locacao.qtitem;
  end
  else if (locacao.cdstlocacao = 5) or (locacao.cdstlocacao = 6) or (locacao.cdstlocacao = 7) then
  begin
    inserir_devolucao_locacao;
  end;
  if (locacao.cdstlocacao <> 5) and (locacao.cdstlocacao <> 6) then
  begin
    cdsitsaidaCDDIGITADO.AsString := inttostr(locacao.tplocacao.cdproduto);
  end;
  cdsitsaidaCDLOCACAOPERIODO.asinteger := locacao.locacaoperiodo.items[locacao.locacaoperiodo.Count-1].cdlocacaoperiodo;
  cdsitsaidaCDLOCACAO.AsString := DisplayValue;
  if locacao_repetida then
  begin
    MessageDlg('Código da Locação repetido.', mtInformation, [mbOK], 0);
    cdsitsaidaCDLOCACAO.FocusControl;
    Abort;
  end;
  if cds.State = dsbrowse then
  begin
    cds.Edit;
  end;
  cdsitsaida.Post;
end;

procedure Tfrmsaida.tbvCDLOCACAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : variant;
  ErrorText: TCaption;
  error : Boolean;
begin
  codigo := LocalizarLocacao(cds.fieldbyname(_cdcliente).asstring);
  if codigo = 0 then
  begin
    exit;
  end;
  tbv.DataController.SetEditValue(tbvCDLOCACAO.Index, codigo, evsValue);
  tbvCDLOCACAOPropertiesValidate(tbvCDLOCACAO, codigo, ErrorText, Error);
end;

procedure Tfrmsaida.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrmsaida.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmsaida.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure Tfrmsaida.edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmsaida.atualizarClienteDuplicata;
begin
  cdsduplicata.DisableControls;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      cdsduplicata.Edit;
      cdsduplicata.fieldbyname(_cdcliente).AsString := cds.fieldbyname(_cdcliente).AsString;
      cdsduplicata.Next;
    end;
  finally
    cdsduplicata.EnableControls;
  end;
end;

procedure Tfrmsaida.cdsitsaidaDSINFADICIONALValidate(Sender: TField);
begin
  ShowMessage(Sender.AsString);
end;

procedure Tfrmsaida.abrirTabelas;
begin
  cbxcdtpsaida.Properties.ListSource        := abrir_tabela(_tpsaida);
  cbxcdcfop.Properties.ListSource           := abrir_tabela(_cfop);
  cbxcdnfefinalidade.Properties.ListSource  := abrir_tabela(_nfefinalidade);
  cbxcdindpres.Properties.ListSource        := abrir_tabela(_indpres);
  cbxcdtpcobranca.Properties.ListSource     := abrir_tabela(_tpcobranca);
  cbxcdcondpagto.Properties.ListSource      := abrir_tabela(_condpagto+_s);
  cbxcduf.Properties.ListSource             := abrir_tabela(_uf);
  cbxcdufembarque.Properties.ListSource     := abrir_tabela(_uf);
  cbxcdufsaida.Properties.ListSource        := abrir_tabela(_uf);
  cbxcdtpfrete.Properties.ListSource        := abrir_tabela(_tpfrete);
  cbxcdrepresentante.Properties.ListSource  := abrir_tabela(_representante);
  cbxcdtransportadora.Properties.ListSource := abrir_tabela(_transportadora);

  TcxLookupComboBoxProperties(tbvduplicataCDSTDUPLICATA.Properties).ListSource := abrir_tabela(_stduplicata);
  TcxLookupComboBoxProperties(tbvduplicataCDTPCOBRANCA.Properties).ListSource  := abrir_tabela(_tpcobranca);
  TcxLookupComboBoxProperties(tbvCDCFOP.Properties).ListSource          := abrir_tabela(_cfop);
  TcxLookupComboBoxProperties(tbvCDSTITSAIDA.Properties).ListSource     := abrir_tabela(_STITSAIDA);
  TcxLookupComboBoxProperties(tbvCDTPGRADEVALOR.Properties).ListSource  := abrir_tabela(_TPGRADEVALOR);
  TcxLookupComboBoxProperties(tbvCDMODBCICMS.Properties).ListSource     := abrir_tabela(_MODBCICMS);
  TcxLookupComboBoxProperties(tbvCDMODBCSTICMS.Properties).ListSource   := abrir_tabela(_MODBCSTICMS);
  TcxLookupComboBoxProperties(tbvNUSTICMS.Properties).ListSource        := abrir_tabela(_STICMS);
  TcxLookupComboBoxProperties(tbvNUSTIPI.Properties).ListSource         := abrir_tabela(_STIPI);
  TcxLookupComboBoxProperties(tbvNUSTPIS.Properties).ListSource         := abrir_tabela(_STPIS);
  TcxLookupComboBoxProperties(tbvNUSTCOFINS.Properties).ListSource      := abrir_tabela(_STCOFINS);
  TcxLookupComboBoxProperties(tbvCDTPCOMISSAO.Properties).ListSource    := abrir_tabela(_TPCOMISSAO);
  TcxLookupComboBoxProperties(tbvCDTPREGIMEICMS.Properties).ListSource  := abrir_tabela(_TPregimeicms);
  TcxLookupComboBoxProperties(tbvCDBCCALCULOCREDITO.Properties).ListSource := abrir_tabela(_BCCALCULOCREDITO);
  TcxLookupComboBoxProperties(tbvsaidac111CDTPC111.Properties).ListSource         := abrir_tabela(_TPC111);
end;

procedure Tfrmsaida.GravartotaisClasse;
var
  recproduto, I: Integer;
begin
  cdsitsaida.DisableControls;
  cdsitsaida.AfterPost := nil;
  DesativarOnValidate;
  try
    recproduto   := cdsitsaida.RecNo;
    tela.tela.select(cds);
    tela.tela.itsaida.Ler(cdsitsaida, cdsitsaidalote);
    tela.tela.duplicata.Ler(cdsduplicata);
    tela.tela.gravartotais;
    for I := 0 to tela.tela.itsaida.count - 1 do
    begin
      cdsitsaida.RecNo := i + 1;
      cdsitsaida.Edit;
      tela.tela.itsaida.items[i].Atribuir(cdsitsaida);
      cdsitsaida.post;
    end;
    cdsitsaida.RecNo := recproduto;
    tela.tela.Atribuir(cds);
  finally
    cdsitsaida.EnableControls;
    cdsitsaida.AfterPost := cdsitsaidaAfterPost;
    AtivarOnValidate;
  end;
end;

procedure Tfrmsaida.AtualizarDuplicata;
var
  i : Integer;
begin
  DesativarOnValidate;
  cdsduplicata.DisableControls;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      cdsduplicata.Delete;
    end;
    cdsduplicataNUPLCONTA.OnValidate := cdsduplicataNUPLCONTAValidate;
    cdsduplicatanuCNTCUSTO.OnValidate := cdsduplicataNuCNTCUSTOValidate;
    for I := 0 to tela.tela.duplicata.count - 1 do
    begin
      cdsduplicata.Insert;
      tela.tela.duplicata.items[i].Atribuir(cdsduplicata);
      cdsduplicata.post;
    end;
  finally
    AtivarOnValidate;
    cdsduplicata.EnableControls;
  end;
end;

end.
