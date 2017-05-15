{$I ACBr.inc}

unit ucte;

interface

uses
  System.Actions, System.UITypes,
  System.Variants,
  forms, ComCtrls, ToolWin, ExtCtrls, Mask, Controls, Buttons, sysutils, windows,
  IniFiles, Graphics, dialogs, StdCtrls, Classes, ActnList, Menus, Math,
  DBCtrls, FMTBcd, DB, DBClient, Provider, sqlexpr, Grids,
  utipo, urotinas, udatahora, ustrings, ulocalizarproduto,
  uvalidadocumento, uExportarExcel, uconstantes, uregistro, unovoproduto,
  uprotector, uAssinaturaDigital,
  classeEndereco,classeretornasql, classeemail, classeRegistro, classegerar, classeconsiste,
  classeregistrainformacao, classeproduto, classeform, classeaplicacao, classecte,
  classerpa, classeexecutasql, classeACBR, classesaida, classecliente, classeusuario,
  classequery, classeempresa, classectegerar, classetransportadora, classeautpagto,
  pcteProcCTe, ACBrCTeConhecimentos, ACBrCTeWebServices, pcteEventoCTe,
  pcnAuxiliar, ACBrDFeSSL, ACBrValidador, pcnConversao, ACBrCTe, ACBrCTeDACTEClass,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxTextEdit, cxMemo,
  cxContainer, cxEdit, cxGroupBox, cxPC, dxBar, cxClasses, cxDBEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxButtonEdit,
  cxCalc, cxCurrencyEdit, cxGridBandedTableView, cxGridDBBandedTableView, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxDBLabel, cxSpinEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTimeEdit, cxCheckBox, cxButtons, cxBlobEdit, cxRichEdit,
  cxPCdxBarPopupMenu, cxSplitter, cxNavigator, dxBarBuiltInMenu,
  cxRadioGroup, ACBrBase, ACBrDFe, ACBrMail;

type
  TfrmCTE = class(TForm)
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
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    sdscteqtdcarga: TSQLDataSet;
    cdscteqtdcarga: TClientDataSet;
    dtscteqtdcarga: TDataSource;
    sdsctetransportadora: TSQLDataSet;
    cdsctetransportadora: TClientDataSet;
    dtsctetransportadora: TDataSource;
    actgerar: TAction;
    actvalidar: TAction;
    actenviar: TAction;
    actconsultar: TAction;
    btn1: TdxBarLargeButton;
    actcte: TAction;
    dxBarSubItem1: TdxBarSubItem;
    btncte: TdxBarLargeButton;
    pm1: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    actstatus: TAction;
    dxBarButton5: TdxBarButton;
    ACBrCTe: TACBrCTe;
    actgerarpdf: TAction;
    dxBarButton6: TdxBarButton;
    actexportarxml: TAction;
    dxBarButton7: TdxBarButton;
    actenviaremail: TAction;
    dxBarButton8: TdxBarButton;
    dtscteremetentenota: TDataSource;
    cdscteremetentenota: TClientDataSet;
    sdscteremetentenota: TSQLDataSet;
    sdsCDCTE: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDMUNICIPIOEMISSAO: TIntegerField;
    sdsCDMUNICIPIOTERMINO: TIntegerField;
    sdsCDMUNICIPIOINICIO: TIntegerField;
    sdsCDUFTERMINO: TIntegerField;
    sdsCDUFINICIO: TIntegerField;
    sdsCDUFEMISSAO: TIntegerField;
    sdsCDCTEFORMAIMPRESSAO: TIntegerField;
    sdsCDCTEFORMAEMISSAO: TIntegerField;
    sdsCDCTEFORMAPAGAMENTO: TIntegerField;
    sdsCDCTETPSERVICO: TIntegerField;
    sdsCDCTEMODAL: TIntegerField;
    sdsCDCTETPTOMADOR: TIntegerField;
    sdsCDCTETPPREVISAOENTREGA: TIntegerField;
    sdsCDCTETPPREVISAOENTREGAH: TIntegerField;
    sdsCDCTETPREMETENTEINFORMACAO: TIntegerField;
    sdsCDPRODUTO: TIntegerField;
    sdsCDVEICULO: TIntegerField;
    sdsCDTPCTE: TIntegerField;
    sdsCDSTCTE: TIntegerField;
    sdsCDCFOP: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNUCHAVENFEREFERENCIADO: TStringField;
    sdsBOREMETENTE: TStringField;
    sdsDTPREVISAOI: TDateField;
    sdsHRPREVISAOI: TTimeField;
    sdsHRPREVISAOF: TTimeField;
    sdsVLSERVICO: TFMTBCDField;
    sdsVLRECEBER: TFMTBCDField;
    sdsVLBASEICMS: TFMTBCDField;
    sdsVLICMS: TFMTBCDField;
    sdsALICMS: TFloatField;
    sdsALREDICMS: TFloatField;
    sdsVLCREDITOOUTOGARDO: TFMTBCDField;
    sdsVLMERCADORIA: TFMTBCDField;
    sdsBOINDICADORLOTACAO: TStringField;
    sdsDTPREVISAOENTREGA: TDateField;
    sdsDSOBSERVACAO: TBlobField;
    sdsDTEMISSAO: TDateField;
    sdsHREMISSAO: TTimeField;
    sdsNUCTE: TIntegerField;
    sdsDSOBSERVACAOFISCAL: TBlobField;
    sdsNURNTRC: TStringField;
    sdsCDSERIE: TIntegerField;
    sdsDSXML: TBlobField;
    sdsNUCHAVENFE: TStringField;
    sdsDSOUTRASCARACTERISTICAS: TStringField;
    sdsCDCTETPINFORMACAOREMETENTE: TIntegerField;
    sdsNMCFOP: TStringField;
    sdsNMREMETENTE: TStringField;
    sdsNMDESTINATARIO: TStringField;
    sdsNMEXPEDIDOR: TStringField;
    sdsNMRECEBEDOR: TStringField;
    sdsNMPRODUTO: TStringField;
    cdsCDCTE: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDMUNICIPIOEMISSAO: TIntegerField;
    cdsCDMUNICIPIOTERMINO: TIntegerField;
    cdsCDMUNICIPIOINICIO: TIntegerField;
    cdsCDUFTERMINO: TIntegerField;
    cdsCDUFINICIO: TIntegerField;
    cdsCDUFEMISSAO: TIntegerField;
    cdsCDCTEFORMAIMPRESSAO: TIntegerField;
    cdsCDCTEFORMAEMISSAO: TIntegerField;
    cdsCDCTEFORMAPAGAMENTO: TIntegerField;
    cdsCDCTETPSERVICO: TIntegerField;
    cdsCDCTEMODAL: TIntegerField;
    cdsCDCTETPTOMADOR: TIntegerField;
    cdsCDCTETPPREVISAOENTREGA: TIntegerField;
    cdsCDCTETPPREVISAOENTREGAH: TIntegerField;
    cdsCDCTETPREMETENTEINFORMACAO: TIntegerField;
    cdsCDPRODUTO: TIntegerField;
    cdsCDVEICULO: TIntegerField;
    cdsCDTPCTE: TIntegerField;
    cdsCDSTCTE: TIntegerField;
    cdsCDCFOP: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNUCHAVENFEREFERENCIADO: TStringField;
    cdsBOREMETENTE: TStringField;
    cdsDTPREVISAOI: TDateField;
    cdsHRPREVISAOI: TTimeField;
    cdsHRPREVISAOF: TTimeField;
    cdsVLSERVICO: TFMTBCDField;
    cdsVLRECEBER: TFMTBCDField;
    cdsVLBASEICMS: TFMTBCDField;
    cdsVLICMS: TFMTBCDField;
    cdsALICMS: TFloatField;
    cdsALREDICMS: TFloatField;
    cdsVLCREDITOOUTOGARDO: TFMTBCDField;
    cdsVLMERCADORIA: TFMTBCDField;
    cdsBOINDICADORLOTACAO: TStringField;
    cdsDTPREVISAOENTREGA: TDateField;
    cdsDSOBSERVACAO: TBlobField;
    cdsDTEMISSAO: TDateField;
    cdsHREMISSAO: TTimeField;
    cdsNUCTE: TIntegerField;
    cdsDSOBSERVACAOFISCAL: TBlobField;
    cdsNURNTRC: TStringField;
    cdsCDSERIE: TIntegerField;
    cdsDSXML: TBlobField;
    cdsNUCHAVENFE: TStringField;
    cdsDSOUTRASCARACTERISTICAS: TStringField;
    cdsCDCTETPINFORMACAOREMETENTE: TIntegerField;
    cdsNMCFOP: TStringField;
    cdsNMREMETENTE: TStringField;
    cdsNMDESTINATARIO: TStringField;
    cdsNMEXPEDIDOR: TStringField;
    cdsNMRECEBEDOR: TStringField;
    cdsNMPRODUTO: TStringField;
    cdssdscteremetentenota: TDataSetField;
    cdssdsctetransportadora: TDataSetField;
    cdssdscteqtdcarga: TDataSetField;
    sdscteqtdcargaCDCTEQTDCARGA: TIntegerField;
    sdscteqtdcargaCDCTE: TIntegerField;
    sdscteqtdcargaCDUNIDADE: TIntegerField;
    sdscteqtdcargaCDCTETPMEDIDA: TIntegerField;
    sdscteqtdcargaCDUSUARIOI: TIntegerField;
    sdscteqtdcargaCDUSUARIOA: TIntegerField;
    sdscteqtdcargaCDCOMPUTADORI: TIntegerField;
    sdscteqtdcargaCDCOMPUTADORA: TIntegerField;
    sdscteqtdcargaQTITEM: TFloatField;
    sdscteqtdcargaTSINCLUSAO: TSQLTimeStampField;
    sdscteqtdcargaTSALTERACAO: TSQLTimeStampField;
    cdscteqtdcargaCDCTEQTDCARGA: TIntegerField;
    cdscteqtdcargaCDCTE: TIntegerField;
    cdscteqtdcargaCDUNIDADE: TIntegerField;
    cdscteqtdcargaCDCTETPMEDIDA: TIntegerField;
    cdscteqtdcargaCDUSUARIOI: TIntegerField;
    cdscteqtdcargaCDUSUARIOA: TIntegerField;
    cdscteqtdcargaCDCOMPUTADORI: TIntegerField;
    cdscteqtdcargaCDCOMPUTADORA: TIntegerField;
    cdscteqtdcargaQTITEM: TFloatField;
    cdscteqtdcargaTSINCLUSAO: TSQLTimeStampField;
    cdscteqtdcargaTSALTERACAO: TSQLTimeStampField;
    sdsctetransportadoraCDCTE: TIntegerField;
    sdsctetransportadoraCDUSUARIOI: TIntegerField;
    sdsctetransportadoraCDUSUARIOA: TIntegerField;
    sdsctetransportadoraCDCOMPUTADORI: TIntegerField;
    sdsctetransportadoraCDCOMPUTADORA: TIntegerField;
    sdsctetransportadoraTSINCLUSAO: TSQLTimeStampField;
    sdsctetransportadoraTSALTERACAO: TSQLTimeStampField;
    sdsctetransportadoraNMTRANSPORTADORA: TStringField;
    cdsctetransportadoraCDCTE: TIntegerField;
    cdsctetransportadoraCDUSUARIOI: TIntegerField;
    cdsctetransportadoraCDUSUARIOA: TIntegerField;
    cdsctetransportadoraCDCOMPUTADORI: TIntegerField;
    cdsctetransportadoraCDCOMPUTADORA: TIntegerField;
    cdsctetransportadoraTSINCLUSAO: TSQLTimeStampField;
    cdsctetransportadoraTSALTERACAO: TSQLTimeStampField;
    cdsctetransportadoraNMTRANSPORTADORA: TStringField;
    sdscteremetentenotaCDCTEREMETENTENOTA: TIntegerField;
    sdscteremetentenotaCDCTE: TIntegerField;
    sdscteremetentenotaCDUSUARIOI: TIntegerField;
    sdscteremetentenotaCDUSUARIOA: TIntegerField;
    sdscteremetentenotaCDCOMPUTADORI: TIntegerField;
    sdscteremetentenotaCDCOMPUTADORA: TIntegerField;
    sdscteremetentenotaCDCFOP: TIntegerField;
    sdscteremetentenotaDTEMISSAO: TDateField;
    sdscteremetentenotaVLBASEICMS: TFMTBCDField;
    sdscteremetentenotaVLICMS: TFMTBCDField;
    sdscteremetentenotaVLBASEICMSSUBTRIB: TFMTBCDField;
    sdscteremetentenotaVLICMSSUBTRIB: TFMTBCDField;
    sdscteremetentenotaNUPIN: TIntegerField;
    sdscteremetentenotaVLPRODUTO: TFMTBCDField;
    sdscteremetentenotaVLTOTAL: TFMTBCDField;
    sdscteremetentenotaTSINCLUSAO: TSQLTimeStampField;
    sdscteremetentenotaTSALTERACAO: TSQLTimeStampField;
    cdscteremetentenotaCDCTEREMETENTENOTA: TIntegerField;
    cdscteremetentenotaCDCTE: TIntegerField;
    cdscteremetentenotaCDUSUARIOI: TIntegerField;
    cdscteremetentenotaCDUSUARIOA: TIntegerField;
    cdscteremetentenotaCDCOMPUTADORI: TIntegerField;
    cdscteremetentenotaCDCOMPUTADORA: TIntegerField;
    cdscteremetentenotaCDCFOP: TIntegerField;
    cdscteremetentenotaDTEMISSAO: TDateField;
    cdscteremetentenotaVLBASEICMS: TFMTBCDField;
    cdscteremetentenotaVLICMS: TFMTBCDField;
    cdscteremetentenotaVLBASEICMSSUBTRIB: TFMTBCDField;
    cdscteremetentenotaVLICMSSUBTRIB: TFMTBCDField;
    cdscteremetentenotaNUPIN: TIntegerField;
    cdscteremetentenotaVLPRODUTO: TFMTBCDField;
    cdscteremetentenotaVLTOTAL: TFMTBCDField;
    cdscteremetentenotaTSINCLUSAO: TSQLTimeStampField;
    cdscteremetentenotaTSALTERACAO: TSQLTimeStampField;
    bmgobservacao: TdxBar;
    actadicionarnota: TAction;
    dxBarButton9: TdxBarButton;
    actadicionarvalor: TAction;
    sdsCDCONDPAGTO: TIntegerField;
    cdsCDCONDPAGTO: TIntegerField;
    actcancelarcte: TAction;
    actinutilizar: TAction;
    actemaildestinatario: TAction;
    dxBarButton10: TdxBarButton;
    sdsctetransportadoraVLSERVICO: TFMTBCDField;
    sdsctetransportadoraVLFRETE: TFMTBCDField;
    sdsctetransportadoraVLPEDAGIO: TFMTBCDField;
    sdsctetransportadoraVLADIANTAMENTO: TFMTBCDField;
    sdsctetransportadoraVLINSS: TFMTBCDField;
    sdsctetransportadoraVLSESTSENAT: TFMTBCDField;
    sdsctetransportadoraVLDESCONTO: TFMTBCDField;
    sdsctetransportadoraVLSALDO: TFMTBCDField;
    sdsctetransportadoraCDVEICULO: TIntegerField;
    cdsctetransportadoraVLSERVICO: TFMTBCDField;
    cdsctetransportadoraVLFRETE: TFMTBCDField;
    cdsctetransportadoraVLPEDAGIO: TFMTBCDField;
    cdsctetransportadoraVLADIANTAMENTO: TFMTBCDField;
    cdsctetransportadoraVLINSS: TFMTBCDField;
    cdsctetransportadoraVLSESTSENAT: TFMTBCDField;
    cdsctetransportadoraVLDESCONTO: TFMTBCDField;
    cdsctetransportadoraVLSALDO: TFMTBCDField;
    cdsctetransportadoraCDVEICULO: TIntegerField;
    sdsctetransportadoraNUPLACA: TStringField;
    sdsctetransportadoraNUPLACACARRETA: TStringField;
    cdsctetransportadoraNUPLACA: TStringField;
    cdsctetransportadoraNUPLACACARRETA: TStringField;
    actrpa: TAction;
    btn3: TdxBarLargeButton;
    sdsNMTOMADOR: TStringField;
    cdsNMTOMADOR: TStringField;
    cdsctetransportadoraDSOBSERVACAO: TBlobField;
    sdsctetransportadoraDSOBSERVACAO: TBlobField;
    sdsctetransportadoraCDVEICULOCARRETA: TIntegerField;
    cdsctetransportadoraCDVEICULOCARRETA: TIntegerField;
    sdsctetransportadoraNMPROPRIETARIO: TStringField;
    cdsctetransportadoraNMPROPRIETARIO: TStringField;
    sdsctetransportadoraTPPESSOA: TStringField;
    cdsctetransportadoraTPPESSOA: TStringField;
    btn4: TdxBarLargeButton;
    sdsctetransportadoraVLACRESCIMO: TFMTBCDField;
    cdsctetransportadoraVLACRESCIMO: TFMTBCDField;
    sdscteremetentenotaNUCHAVENFE: TStringField;
    sdscteremetentenotaPSLIQUIDO: TFloatField;
    sdscteremetentenotaPSBRUTO: TFloatField;
    sdscteremetentenotaNUDOCFISCALICMS: TStringField;
    cdscteremetentenotaNUCHAVENFE: TStringField;
    cdscteremetentenotaPSLIQUIDO: TFloatField;
    cdscteremetentenotaPSBRUTO: TFloatField;
    cdscteremetentenotaNUDOCFISCALICMS: TStringField;
    dxBarButton11: TdxBarButton;
    sdsduplicata: TSQLDataSet;
    cdsduplicata: TClientDataSet;
    dtsduplicata: TDataSource;
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
    sdsCDTPCOBRANCA: TIntegerField;
    sdsDSHISTORICO: TStringField;
    sdsCDPLCONTA: TIntegerField;
    cdsCDTPCOBRANCA: TIntegerField;
    cdsDSHISTORICO: TStringField;
    cdsCDPLCONTA: TIntegerField;
    sdsduplicataNMSTDUPLICATA: TStringField;
    cdsduplicataNMSTDUPLICATA: TStringField;
    sdsNUSTICMS: TStringField;
    cdsNUSTICMS: TStringField;
    actabrirduplicata: TAction;
    actabrirremetente: TAction;
    actabrirdestinatario: TAction;
    actabrirtomador: TAction;
    actabrirexpedidor: TAction;
    actabrirrecebedor: TAction;
    actadicionarduplicata: TAction;
    dxBarButton12: TdxBarButton;
    sdsVLPIS: TFMTBCDField;
    sdsVLCOFINS: TFMTBCDField;
    sdsVLBASECOFINS: TFMTBCDField;
    sdsVLBASEPIS: TFMTBCDField;
    sdsALPIS: TFloatField;
    sdsALCOFINS: TFloatField;
    cdsVLPIS: TFMTBCDField;
    cdsVLCOFINS: TFMTBCDField;
    cdsVLBASECOFINS: TFMTBCDField;
    cdsVLBASEPIS: TFMTBCDField;
    cdsALPIS: TFloatField;
    cdsALCOFINS: TFloatField;
    sdsTSCONTINGENCIA: TSQLTimeStampField;
    sdsDSCONTINGENCIA: TStringField;
    cdsTSCONTINGENCIA: TSQLTimeStampField;
    cdsDSCONTINGENCIA: TStringField;
    actemailremetente: TAction;
    dxBarButton13: TdxBarButton;
    actimportaxml: TAction;
    dxBarButton14: TdxBarButton;
    sdsNUSTDOCUMENTO: TStringField;
    cdsNUSTDOCUMENTO: TStringField;
    sdsCDITCONTCLIENTE: TIntegerField;
    cdsCDITCONTCLIENTE: TIntegerField;
    sdsitcontcliente: TSQLDataSet;
    dspitcontcliente: TDataSetProvider;
    cdsitcontcliente: TClientDataSet;
    dtsitcontcliente: TDataSource;
    sdsNUKMVIAGEM: TFloatField;
    sdsNUKMDIA: TFloatField;
    sdsNUDIASENTREGA: TIntegerField;
    cdsNUKMVIAGEM: TFloatField;
    cdsNUKMDIA: TFloatField;
    cdsNUDIASENTREGA: TIntegerField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    actconsultasalvar: TAction;
    dxBarButton15: TdxBarButton;
    sdsDSXMLCANCEL: TBlobField;
    cdsDSXMLCANCEL: TBlobField;
    sdsctetransportadoraVLIRRF: TFMTBCDField;
    cdsctetransportadoraVLIRRF: TFMTBCDField;
    sdsduplicataCDTPDUPLICATA: TIntegerField;
    sdsduplicataNUCPFCNPJ: TStringField;
    sdsduplicataNUCPFCNPJ2: TStringField;
    sdsduplicataNMEMITENTE: TStringField;
    sdsduplicataNMEMITENTE2: TStringField;
    sdsduplicataNUCONTACORRENTE: TStringField;
    sdsduplicataTPPESSOA: TStringField;
    sdsduplicataCDBANCODEVOLUCAO: TIntegerField;
    cdsduplicataCDTPDUPLICATA: TIntegerField;
    cdsduplicataNUCPFCNPJ: TStringField;
    cdsduplicataNUCPFCNPJ2: TStringField;
    cdsduplicataNMEMITENTE: TStringField;
    cdsduplicataNMEMITENTE2: TStringField;
    cdsduplicataNUCONTACORRENTE: TStringField;
    cdsduplicataTPPESSOA: TStringField;
    cdsduplicataCDBANCODEVOLUCAO: TIntegerField;
    actcartacorrecao: TAction;
    dxBarButton16: TdxBarButton;
    sdscartacorrecao: TSQLDataSet;
    cdscartacorrecao: TClientDataSet;
    dtscartacorrecao: TDataSource;
    sdscartacorrecaoCDCARTACORRECAOCTE: TIntegerField;
    sdscartacorrecaoCDCTE: TIntegerField;
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
    cdscartacorrecaoCDCARTACORRECAOCTE: TIntegerField;
    cdscartacorrecaoCDCTE: TIntegerField;
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
    sdsNSEQEVENTO: TIntegerField;
    cdsNSEQEVENTO: TIntegerField;
    sdsDTPREVISAOF: TDateField;
    cdsDTPREVISAOF: TDateField;
    actadicionarrodoviario: TAction;
    dxBarButton17: TdxBarButton;
    acteditarrpa: TAction;
    sdsctetransportadoraNUSEGURADORA: TStringField;
    cdsctetransportadoraNUSEGURADORA: TStringField;
    actabrirveiculo: TAction;
    actabrirveiculo2: TAction;
    actabrirtransportadora: TAction;
    bmg1Bar1: TdxBar;
    actgerarautpagto: TAction;
    dxBarButton18: TdxBarButton;
    actbaixar: TAction;
    dxBarButton19: TdxBarButton;
    sdsctetransportadoraCDAUTPAGTO: TIntegerField;
    cdsctetransportadoraCDAUTPAGTO: TIntegerField;
    actgerarduplicata: TAction;
    sdsCDRPA: TIntegerField;
    cdsCDRPA: TIntegerField;
    actabrirrpa: TAction;
    actconfigurar: TAction;
    dxBarButton20: TdxBarButton;
    actexportaxmlemissor: TAction;
    dxBarButton21: TdxBarButton;
    sdsctetransportadoraNUPLACACARRETA2: TStringField;
    sdsctetransportadoraCDVEICULOCARRETA2: TIntegerField;
    cdsctetransportadoraNUPLACACARRETA2: TStringField;
    cdsctetransportadoraCDVEICULOCARRETA2: TIntegerField;
    sdscteinformacaoseguro: TSQLDataSet;
    cdscteinformacaoseguro: TClientDataSet;
    dtscteinformacaoseguro: TDataSource;
    sdscteinformacaoseguroCDCTEINFORMACAOSEGURO: TIntegerField;
    sdscteinformacaoseguroCDCTE: TIntegerField;
    sdscteinformacaoseguroCDUSUARIOI: TIntegerField;
    sdscteinformacaoseguroCDUSUARIOA: TIntegerField;
    sdscteinformacaoseguroCDCOMPUTADORI: TIntegerField;
    sdscteinformacaoseguroCDCOMPUTADORA: TIntegerField;
    sdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO: TIntegerField;
    sdscteinformacaoseguroTSINCLUSAO: TSQLTimeStampField;
    sdscteinformacaoseguroTSALTERACAO: TSQLTimeStampField;
    sdscteinformacaoseguroNUAPOLICE: TStringField;
    sdscteinformacaoseguroNUAVERBACAO: TStringField;
    sdscteinformacaoseguroVLCARGA: TFMTBCDField;
    cdssdscteinformacaoseguro: TDataSetField;
    cdscteinformacaoseguroCDCTEINFORMACAOSEGURO: TIntegerField;
    cdscteinformacaoseguroCDCTE: TIntegerField;
    cdscteinformacaoseguroCDUSUARIOI: TIntegerField;
    cdscteinformacaoseguroCDUSUARIOA: TIntegerField;
    cdscteinformacaoseguroCDCOMPUTADORI: TIntegerField;
    cdscteinformacaoseguroCDCOMPUTADORA: TIntegerField;
    cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO: TIntegerField;
    cdscteinformacaoseguroTSINCLUSAO: TSQLTimeStampField;
    cdscteinformacaoseguroTSALTERACAO: TSQLTimeStampField;
    cdscteinformacaoseguroNUAPOLICE: TStringField;
    cdscteinformacaoseguroNUAVERBACAO: TStringField;
    cdscteinformacaoseguroVLCARGA: TFMTBCDField;
    actredefinir: TAction;
    sdsNUPROTOCOLO: TStringField;
    cdsNUPROTOCOLO: TStringField;
    sdsNUCONTRATO: TStringField;
    sdsNUDOCUMENTOTRANSPORTE: TStringField;
    cdsNUCONTRATO: TStringField;
    cdsNUDOCUMENTOTRANSPORTE: TStringField;
    sdsctetransportadoraNUEIXOS: TIntegerField;
    cdsctetransportadoraNUEIXOS: TIntegerField;
    sdsctetransportadoraNUEIXOSVC: TIntegerField;
    sdsctetransportadoraNUEIXOSV2: TIntegerField;
    cdsctetransportadoraNUEIXOSVC: TIntegerField;
    cdsctetransportadoraNUEIXOSV2: TIntegerField;
    dxBarLargeButton1: TdxBarLargeButton;
    actcopiar: TAction;
    sdsctedocumentoanterior: TSQLDataSet;
    cdsctedocumentoanterior: TClientDataSet;
    dtsctedocumentoanterior: TDataSource;
    sdsctedocumentoanteriorCDCTEDOCUMENTOANTERIOR: TIntegerField;
    sdsctedocumentoanteriorCDCTE: TIntegerField;
    sdsctedocumentoanteriorCDUSUARIOI: TIntegerField;
    sdsctedocumentoanteriorCDUSUARIOA: TIntegerField;
    sdsctedocumentoanteriorCDCOMPUTADORI: TIntegerField;
    sdsctedocumentoanteriorCDCOMPUTADORA: TIntegerField;
    sdsctedocumentoanteriorTSINCLUSAO: TSQLTimeStampField;
    sdsctedocumentoanteriorTSALTERACAO: TSQLTimeStampField;
    cdssdsctedocumentoanterior: TDataSetField;
    cdsctedocumentoanteriorCDCTEDOCUMENTOANTERIOR: TIntegerField;
    cdsctedocumentoanteriorCDCTE: TIntegerField;
    cdsctedocumentoanteriorCDUSUARIOI: TIntegerField;
    cdsctedocumentoanteriorCDUSUARIOA: TIntegerField;
    cdsctedocumentoanteriorCDCOMPUTADORI: TIntegerField;
    cdsctedocumentoanteriorCDCOMPUTADORA: TIntegerField;
    cdsctedocumentoanteriorTSINCLUSAO: TSQLTimeStampField;
    cdsctedocumentoanteriorTSALTERACAO: TSQLTimeStampField;
    dts2: TDataSource;
    sdsitctedocumentoanterior: TSQLDataSet;
    cdsitctedocumentoanterior: TClientDataSet;
    dtsitctedocumentoanterior: TDataSource;
    sdsitctedocumentoanteriorCDITCTEDOCUMENTOANTERIOR: TIntegerField;
    sdsitctedocumentoanteriorCDCTEDOCUMENTOANTERIOR: TIntegerField;
    sdsitctedocumentoanteriorCDUSUARIOI: TIntegerField;
    sdsitctedocumentoanteriorCDUSUARIOA: TIntegerField;
    sdsitctedocumentoanteriorCDCOMPUTADORI: TIntegerField;
    sdsitctedocumentoanteriorCDCOMPUTADORA: TIntegerField;
    sdsitctedocumentoanteriorTSINCLUSAO: TSQLTimeStampField;
    sdsitctedocumentoanteriorTSALTERACAO: TSQLTimeStampField;
    sdsitctedocumentoanteriorNUSERIE: TStringField;
    sdsitctedocumentoanteriorNUSUBSERIE: TStringField;
    sdsitctedocumentoanteriorDTEMISSAO: TDateField;
    sdsitctedocumentoanteriorNUCHAVE: TStringField;
    cdsctedocumentoanteriorsdsitctedocumentoanterior: TDataSetField;
    cdsitctedocumentoanteriorCDITCTEDOCUMENTOANTERIOR: TIntegerField;
    cdsitctedocumentoanteriorCDCTEDOCUMENTOANTERIOR: TIntegerField;
    cdsitctedocumentoanteriorCDUSUARIOI: TIntegerField;
    cdsitctedocumentoanteriorCDUSUARIOA: TIntegerField;
    cdsitctedocumentoanteriorCDCOMPUTADORI: TIntegerField;
    cdsitctedocumentoanteriorCDCOMPUTADORA: TIntegerField;
    cdsitctedocumentoanteriorTSINCLUSAO: TSQLTimeStampField;
    cdsitctedocumentoanteriorTSALTERACAO: TSQLTimeStampField;
    cdsitctedocumentoanteriorNUSERIE: TStringField;
    cdsitctedocumentoanteriorNUSUBSERIE: TStringField;
    cdsitctedocumentoanteriorDTEMISSAO: TDateField;
    cdsitctedocumentoanteriorNUCHAVE: TStringField;
    sdsctedocumentoanteriorRZSOCIAL: TStringField;
    cdsctedocumentoanteriorRZSOCIAL: TStringField;
    sdsitctedocumentoanteriorNUCTETPDOCUMENTOANTERIOR: TStringField;
    cdsitctedocumentoanteriorNUCTETPDOCUMENTOANTERIOR: TStringField;
    sdsitctedocumentoanteriorNUDOCUMENTO: TIntegerField;
    cdsitctedocumentoanteriorNUDOCUMENTO: TIntegerField;
    sdsNUCHAVECTEANULACAO: TStringField;
    sdsDTEMISSAOCTEANULACAO: TDateField;
    cdsNUCHAVECTEANULACAO: TStringField;
    cdsDTEMISSAOCTEANULACAO: TDateField;
    dtsitcartacorrecaocte: TDataSource;
    cdsitcartacorrecaocte: TClientDataSet;
    sdsitcartacorrecaocte: TSQLDataSet;
    dts3: TDataSource;
    sdsitcartacorrecaocteCDITCARTACORRECAOCTE: TIntegerField;
    sdsitcartacorrecaocteCDCARTACORRECAOCTE: TIntegerField;
    sdsitcartacorrecaocteCDUSUARIOI: TIntegerField;
    sdsitcartacorrecaocteCDUSUARIOA: TIntegerField;
    sdsitcartacorrecaocteCDCOMPUTADORI: TIntegerField;
    sdsitcartacorrecaocteCDCOMPUTADORA: TIntegerField;
    sdsitcartacorrecaocteCDCARTACORRECAOCTEGRUPO: TIntegerField;
    sdsitcartacorrecaocteCDCARTACORRECAOCTEITEM: TIntegerField;
    sdsitcartacorrecaocteNUITEM: TIntegerField;
    sdsitcartacorrecaocteTSINCLUSAO: TSQLTimeStampField;
    sdsitcartacorrecaocteTSALTERACAO: TSQLTimeStampField;
    sdsitcartacorrecaocteDSITCARTACORRECAOCTE: TStringField;
    cdscartacorrecaosdsitcartacorrecaocte: TDataSetField;
    cdsitcartacorrecaocteCDITCARTACORRECAOCTE: TIntegerField;
    cdsitcartacorrecaocteCDCARTACORRECAOCTE: TIntegerField;
    cdsitcartacorrecaocteCDUSUARIOI: TIntegerField;
    cdsitcartacorrecaocteCDUSUARIOA: TIntegerField;
    cdsitcartacorrecaocteCDCOMPUTADORI: TIntegerField;
    cdsitcartacorrecaocteCDCOMPUTADORA: TIntegerField;
    cdsitcartacorrecaocteCDCARTACORRECAOCTEGRUPO: TIntegerField;
    cdsitcartacorrecaocteCDCARTACORRECAOCTEITEM: TIntegerField;
    cdsitcartacorrecaocteNUITEM: TIntegerField;
    cdsitcartacorrecaocteTSINCLUSAO: TSQLTimeStampField;
    cdsitcartacorrecaocteTSALTERACAO: TSQLTimeStampField;
    cdsitcartacorrecaocteDSITCARTACORRECAOCTE: TStringField;
    bmg1Bar2: TdxBar;
    actenviaremailcartacorrecao: TAction;
    dxBarButton22: TdxBarButton;
    sdscteremetentenotaNUCTETPDOCOUTROS: TStringField;
    sdscteremetentenotaDSOUTROS: TStringField;
    sdscteremetentenotaDTPREVISAO: TDateField;
    cdscteremetentenotaNUCTETPDOCOUTROS: TStringField;
    cdscteremetentenotaDSOUTROS: TStringField;
    cdscteremetentenotaDTPREVISAO: TDateField;
    sdsVLFRETE: TFMTBCDField;
    sdsVLADVALOREM: TFMTBCDField;
    sdsVLOUTRO: TFMTBCDField;
    sdsVLPEDAGIO: TFMTBCDField;
    sdsPRADVALOREM: TFloatField;
    cdsVLFRETE: TFMTBCDField;
    cdsVLADVALOREM: TFMTBCDField;
    cdsVLOUTRO: TFMTBCDField;
    cdsVLPEDAGIO: TFMTBCDField;
    cdsPRADVALOREM: TFloatField;
    sdscteremetentenotaVLFRETE: TFMTBCDField;
    cdscteremetentenotaVLFRETE: TFMTBCDField;
    sdsctetransportadoraVLFRETEPESO: TFMTBCDField;
    cdsctetransportadoraVLFRETEPESO: TFMTBCDField;
    dxBarButton23: TdxBarButton;
    actimprimircarta: TAction;
    dxBarButton24: TdxBarButton;
    actexportarcartapdf: TAction;
    sdsTPTOMADORICMS: TStringField;
    cdsTPTOMADORICMS: TStringField;
    pnltop: TPanel;
    pnl: TcxLabel;
    Label1: TLabel;
    edtcodigo: TcxTextEdit;
    Label2: TLabel;
    edtdtemissao: TcxDBDateEdit;
    edthremissao: TcxDBTimeEdit;
    Label3: TLabel;
    cbxcdctemodal: TcxDBLookupComboBox;
    Label7: TLabel;
    cbxcdctetpservico: TcxDBLookupComboBox;
    Label4: TLabel;
    cbxcdctetptomador: TcxDBLookupComboBox;
    lbl2: TLabel;
    cbxcdcteformapagamento: TcxDBLookupComboBox;
    lblcfop: TLabel;
    cbxcdcfop: TcxDBLookupComboBox;
    cve: TcxGroupBox;
    lbl6: TLabel;
    lblDestinatario: TLabel;
    lblexpedidor: TLabel;
    lblrecebedor: TLabel;
    lbltomador: TLabel;
    lblNMREMETENTE: TDBText;
    lblNMDESTINATARIO: TDBText;
    lblnmtomador: TDBText;
    lblNMEXPEDIDOR: TDBText;
    lblnmrecebedor: TDBText;
    lblcontato: TLabel;
    txtNURAMAL: TDBText;
    lblramal: TLabel;
    edtcdremetente: TcxDBButtonEdit;
    edtcddestinatario: TcxDBButtonEdit;
    edtcdexpedidor: TcxDBButtonEdit;
    edtcdrecebedor: TcxDBButtonEdit;
    edtcdtomador: TcxDBButtonEdit;
    cbxcditcontcliente: TcxDBLookupComboBox;
    pgc: TcxPageControl;
    tbsDADOS: TcxTabSheet;
    gbxtermino: TcxGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    cbxcduftermino: TcxDBLookupComboBox;
    cbxcdmunicipiotermino: TcxDBLookupComboBox;
    gbxinicio: TcxGroupBox;
    lbl3: TLabel;
    lblmunicipioinicio: TLabel;
    cbxcdufinicio: TcxDBLookupComboBox;
    cbxcdmunicipioinicio: TcxDBLookupComboBox;
    gbxemissao: TcxGroupBox;
    lbl1: TLabel;
    lbl8: TLabel;
    cbxcdufemissao: TcxDBLookupComboBox;
    cbxcdmunicipioemissao: TcxDBLookupComboBox;
    gbxoutros: TcxGroupBox;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lblnuchavenfereferenciado: TLabel;
    lbldtemissaocteanulacao: TLabel;
    lblnuchavecteanulacao: TLabel;
    edtnuchavenfereferenciado: TcxDBTextEdit;
    edtnuchavecteanulacao: TcxDBTextEdit;
    cbxcdctefinalidadeemissao: TcxDBLookupComboBox;
    cbxcdcteformaemissao: TcxDBLookupComboBox;
    cbxcteformaimpressao: TcxDBLookupComboBox;
    edtdtemissaocteanulacao: TcxDBDateEdit;
    rdgtptomadoricms: TcxDBRadioGroup;
    gbxprevisaoentrega: TcxGroupBox;
    Label6: TLabel;
    lbl13: TLabel;
    lbldtprevisaoi: TLabel;
    lbldtprevisaof: TLabel;
    lblhrprevisaoi: TLabel;
    lblhrprevisaof: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    cbxcdctetpprevisaoentrega: TcxDBLookupComboBox;
    cbxcdctetpprevisaoentregah: TcxDBLookupComboBox;
    edtdtprevisaoi: TcxDBDateEdit;
    edtdtprevisaof: TcxDBDateEdit;
    edthrprevisaoi: TcxDBTimeEdit;
    edthrprevisaof: TcxDBTimeEdit;
    edtNUKMVIAGEM: TcxDBCalcEdit;
    edtNUKMDIA: TcxDBCalcEdit;
    edtNUDIASENTREGA: TcxDBSpinEdit;
    gbxcontingencia: TcxGroupBox;
    Label8: TLabel;
    Label11: TLabel;
    edtdscontingencia: TcxDBTextEdit;
    edttscontingencia: TcxDBDateEdit;
    tbsnfe: TcxTabSheet;
    Bevel5: TBevel;
    lbl14: TLabel;
    grdcteremetentenota: TcxGrid;
    tbvcteremetentenota: TcxGridDBTableView;
    tbvcteremetentenotaNUCTETPDOCOUTROS: TcxGridDBColumn;
    tbvcteremetentenotaDSOUTROS: TcxGridDBColumn;
    tbvcteremetentenotaNUROMANEIO: TcxGridDBColumn;
    tbvcteremetentenotaNUPEDIDO: TcxGridDBColumn;
    tbvcteremetentenotaNUDOCFISCALICMS: TcxGridDBColumn;
    tbvcteremetentenotaNUCHAVENFE: TcxGridDBColumn;
    tbvcteremetentenotaNUSERIE: TcxGridDBColumn;
    tbvcteremetentenotaNUNOTA: TcxGridDBColumn;
    tbvcteremetentenotaDTEMISSAO: TcxGridDBColumn;
    tbvcteremetentenotaVLBASEICMS: TcxGridDBColumn;
    tbvcteremetentenotaVLICMS: TcxGridDBColumn;
    tbvcteremetentenotaVLBASEICMSSUBTRIB: TcxGridDBColumn;
    tbvcteremetentenotaVLICMSSUBTRIB: TcxGridDBColumn;
    tbvcteremetentenotaVLPRODUTO: TcxGridDBColumn;
    tbvcteremetentenotaVLTOTAL: TcxGridDBColumn;
    tbvcteremetentenotaCDCFOP: TcxGridDBColumn;
    tbvcteremetentenotaPSLIQUIDO: TcxGridDBColumn;
    tbvcteremetentenotaPSBRUTO: TcxGridDBColumn;
    tbvcteremetentenotaNUPIN: TcxGridDBColumn;
    tbvcteremetentenotaVLFRETE: TcxGridDBColumn;
    tbvcteremetentenotaDTPREVISAO: TcxGridDBColumn;
    lvlcteremetentenota: TcxGridLevel;
    cbxCDCTETPINFORMACAOREMETENTE: TcxDBLookupComboBox;
    pnlcarga: TPanel;
    Bevel2: TBevel;
    Label13: TLabel;
    lbl7: TLabel;
    Label5: TLabel;
    grdcteqtdcarga: TcxGrid;
    tbvcteqtdcarga: TcxGridDBTableView;
    tbvcteqtdcargaCDUNIDADE: TcxGridDBColumn;
    tbvcteqtdcargaCDCTETPMEDIDA: TcxGridDBColumn;
    tbvcteqtdcargaQTITEM: TcxGridDBColumn;
    lvlcteqtdcarga: TcxGridLevel;
    txtnmproduto: TcxDBLabel;
    edtcdproduto: TcxDBButtonEdit;
    edtvlmercadoria: TcxDBCalcEdit;
    edtDSOUTRASCARACTERISTICAS: TcxDBTextEdit;
    btnadicionarvalor: TcxButton;
    cxLabel1: TcxLabel;
    cxSplitter2: TcxSplitter;
    cxLabel3: TcxLabel;
    tbsservicos: TcxTabSheet;
    gbxicms: TcxGroupBox;
    lbl20: TLabel;
    lblalredicms: TLabel;
    lblVLBASEICMS: TLabel;
    lblALICMS: TLabel;
    lblvlicms: TLabel;
    lblVLCREDITOOUTOGARDO: TLabel;
    cbxnusticms: TcxDBLookupComboBox;
    edtalredicms: TcxDBCalcEdit;
    edtalicms: TcxDBCalcEdit;
    edtvlcreditooutogardo: TcxDBCalcEdit;
    txtVLBASEICMS: TcxDBLabel;
    txtVLICMS: TcxDBLabel;
    edtvlbaseicms: TcxDBCalcEdit;
    edtvlicms: TcxDBCalcEdit;
    gbxduplicata: TcxGroupBox;
    Label15: TLabel;
    lbltpcobranca: TLabel;
    lbl19: TLabel;
    Bevel6: TBevel;
    grdduplicata: TcxGrid;
    tbvduplicata: TcxGridDBTableView;
    tbvduplicataNUDUPLICATA: TcxGridDBColumn;
    tbvduplicataDTVENCIMENTO: TcxGridDBColumn;
    tbvduplicataVLDUPLICATA: TcxGridDBColumn;
    tbvduplicataNMSTDUPLICATA: TcxGridDBColumn;
    lvlduplicata: TcxGridLevel;
    cbxcdcondpagto: TcxDBLookupComboBox;
    cbxcdtpcobranca: TcxDBLookupComboBox;
    btngerarduplicata: TcxButton;
    btnredefinir: TcxButton;
    edtvlreceber: TcxDBCalcEdit;
    cxGroupBox1: TcxGroupBox;
    Label9: TLabel;
    Label12: TLabel;
    Bevel4: TBevel;
    Label10: TLabel;
    Label14: TLabel;
    lbl18: TLabel;
    Label16: TLabel;
    edtvlfrete: TcxDBCalcEdit;
    edtvlpedagio: TcxDBCalcEdit;
    edtvlservico: TcxDBCalcEdit;
    edtvloutro: TcxDBCalcEdit;
    edtpradvalorem: TcxDBCalcEdit;
    edtvladvalorem: TcxDBCalcEdit;
    tbsrodoviario: TcxTabSheet;
    Bevel3: TBevel;
    lbl27: TLabel;
    lbl28: TLabel;
    lblcdrpa: TLabel;
    txtcdrpa: TDBText;
    txtNURNTRC: TDBText;
    lbl21: TLabel;
    lblnucontrato: TLabel;
    lblnudocumentotransporte: TLabel;
    grdctetransportadora: TcxGrid;
    tbvctetransportadora: TcxGridDBBandedTableView;
    tbvctetransportadoraCDTRANSPORTADORA: TcxGridDBBandedColumn;
    tbvctetransportadoraNMTRANSPORTADORA: TcxGridDBBandedColumn;
    tbvctetransportadoraVLFRETE: TcxGridDBBandedColumn;
    tbvctetransportadoraVLPEDAGIO: TcxGridDBBandedColumn;
    tbvctetransportadoraVLADIANTAMENTO: TcxGridDBBandedColumn;
    tbvctetransportadoraVLINSS: TcxGridDBBandedColumn;
    tbvctetransportadoraVLSESTSENAT: TcxGridDBBandedColumn;
    tbvctetransportadoraVLDESCONTO: TcxGridDBBandedColumn;
    tbvctetransportadoraVLSALDO: TcxGridDBBandedColumn;
    tbvctetransportadoraVLFRETEPESO: TcxGridDBBandedColumn;
    tbvctetransportadoraVLACRESCIMO: TcxGridDBBandedColumn;
    tbvctetransportadoraVLIRRF: TcxGridDBBandedColumn;
    tbvctetransportadoraNUSEGURADORA: TcxGridDBBandedColumn;
    tbvctetransportadoraDSOBSERVACAO: TcxGridDBBandedColumn;
    tbvctetransportadoraCDVEICULO: TcxGridDBBandedColumn;
    tbvctetransportadoraNUPLACA: TcxGridDBBandedColumn;
    tbvctetransportadoraNUPLACACARRETA: TcxGridDBBandedColumn;
    tbvctetransportadoraNMPROPRIETARIO: TcxGridDBBandedColumn;
    tbvctetransportadoraCDVEICULOCARRETA: TcxGridDBBandedColumn;
    tbvctetransportadoraCDVEICULOCARRETA2: TcxGridDBBandedColumn;
    tbvctetransportadoraNUPLACACARRETA2: TcxGridDBBandedColumn;
    lvlctetransportadora: TcxGridLevel;
    edtprevisaoentrega: TcxDBDateEdit;
    chkboindicadorlotacao: TcxDBCheckBox;
    btneditarrpa: TcxButton;
    bdcrodoviario: TdxBarDockControl;
    edtnuciot: TcxDBTextEdit;
    edtnucontrato: TcxDBTextEdit;
    edtnudocumentotransporte: TcxDBTextEdit;
    tbsobservacao: TcxTabSheet;
    memdsobservacao: TcxDBMemo;
    bdcobservacao: TdxBarDockControl;
    tbscartacorrecao: TcxTabSheet;
    grdcartacorrecao: TcxGrid;
    tbvcartacorrecao: TcxGridDBTableView;
    tbvcartacorrecaoNSEQEVENTO: TcxGridDBColumn;
    tbvcartacorrecaoTSEMISSAO: TcxGridDBColumn;
    tbvcartacorrecaoNUPROTOCOLO: TcxGridDBColumn;
    tbvcartacorrecaoDSXML: TcxGridDBColumn;
    lvlcartacorrecao: TcxGridLevel;
    grditcartacorrecaocte: TcxGrid;
    tbvitcartacorrecaocte: TcxGridDBTableView;
    tbvitcartacorrecaocteCDCARTACORRECAOCTEGRUPO: TcxGridDBColumn;
    tbvitcartacorrecaocteCDCARTACORRECAOCTEITEM: TcxGridDBColumn;
    tbvitcartacorrecaocteDSITCARTACORRECAOCTE: TcxGridDBColumn;
    tbvitcartacorrecaocteNUITEM: TcxGridDBColumn;
    lvlitcartacorrecaocte: TcxGridLevel;
    bdccarta: TdxBarDockControl;
    tbsseguro: TcxTabSheet;
    grdcteinformacaoseguro: TcxGrid;
    tbvcteinformacaoseguro: TcxGridDBTableView;
    tbvcteinformacaoseguroCDTPCTERESPONSAVELSEGURO: TcxGridDBColumn;
    tbvcteinformacaoseguroCDFORNECEDOR: TcxGridDBColumn;
    tbvcteinformacaoseguroNUAPOLICE: TcxGridDBColumn;
    tbvcteinformacaoseguroNUAVERBACAO: TcxGridDBColumn;
    tbvcteinformacaoseguroVLCARGA: TcxGridDBColumn;
    lvlcteinformacaoseguro: TcxGridLevel;
    tbsdocumentoanterior: TcxTabSheet;
    grdctedocumentoanterior: TcxGrid;
    tbvctedocumentoanterior: TcxGridDBTableView;
    tbvctedocumentoanteriorCDCLIENTE: TcxGridDBColumn;
    tbvctedocumentoanteriorRZSOCIAL: TcxGridDBColumn;
    lvlctedocumentoanterior: TcxGridLevel;
    grditctedocumentoanterior: TcxGrid;
    tbvitctedocumentoanterior: TcxGridDBTableView;
    tbvitctedocumentoanteriorNUCTETPDOCUMENTOANTERIOR: TcxGridDBColumn;
    tbvitctedocumentoanteriorNUSERIE: TcxGridDBColumn;
    tbvitctedocumentoanteriorNUSUBSERIE: TcxGridDBColumn;
    tbvitctedocumentoanteriorNUDOCUMENTO: TcxGridDBColumn;
    tbvitctedocumentoanteriorDTEMISSAO: TcxGridDBColumn;
    tbvitctedocumentoanteriorNUCHAVE: TcxGridDBColumn;
    lvlitctedocumentoanterior: TcxGridLevel;
    spl1: TcxSplitter;
    tbvduplicataCDTPCOBRANCA: TcxGridDBColumn;
    ACBrMail1: TACBrMail;
    sdscteremetentenotaDSXML: TBlobField;
    cdscteremetentenotaDSXML: TBlobField;
    sdsBOIMPRESSAORPA: TStringField;
    cdsBOIMPRESSAORPA: TStringField;
    sdsDSJUSTIFICATIVA: TBlobField;
    cdsDSJUSTIFICATIVA: TBlobField;
    sdsNUPLCONTA: TStringField;
    cdsNUPLCONTA: TStringField;
    sdscteremetentenotaNUROMANEIO: TStringField;
    cdscteremetentenotaNUROMANEIO: TStringField;
    cdscteremetentenotaNUPEDIDO: TStringField;
    sdscteremetentenotaNUPEDIDO: TStringField;
    sdscteremetentenotaNUSERIE: TStringField;
    cdscteremetentenotaNUSERIE: TStringField;
    sdscteremetentenotaNUNOTA: TStringField;
    cdscteremetentenotaNUNOTA: TStringField;
    sdsCDTPFRETE: TStringField;
    cdsCDTPFRETE: TStringField;
    actgerarmdfe: TAction;
    dxBarButton25: TdxBarButton;
    sdsCDEMPRESA: TLargeintField;
    sdsCDREMETENTE: TLargeintField;
    sdsCDTOMADOR: TLargeintField;
    sdsCDEXPEDIDOR: TLargeintField;
    sdsCDRECEBEDOR: TLargeintField;
    sdsCDDESTINATARIO: TLargeintField;
    sdsCDDESTINATARIODIFERENTE: TLargeintField;
    sdsNUCIOT: TLargeintField;
    sdscteqtdcargaCDEMPRESA: TLargeintField;
    sdsctetransportadoraCDEMPRESA: TLargeintField;
    sdsctetransportadoraCDTRANSPORTADORA: TLargeintField;
    sdsctetransportadoraCDPROPRIETARIO: TLargeintField;
    sdscteremetentenotaCDEMPRESA: TLargeintField;
    sdsduplicataCDEMPRESA: TLargeintField;
    sdsduplicataCDCLIENTE: TLargeintField;
    sdsduplicataCDNEGOCIACAOSAIDA: TIntegerField;
    sdsduplicataCDCNTCUSTO: TIntegerField;
    sdsduplicataCDSETBOLETO: TIntegerField;
    sdsduplicataCDITCONTRATOPARCELA: TIntegerField;
    sdsduplicataDSOBSERVACAOBOLETO: TBlobField;
    sdsduplicataNUCNTCUSTO: TStringField;
    sdsduplicataVLCOMISSAOABERTA: TFMTBCDField;
    sdscartacorrecaoCDEMPRESA: TLargeintField;
    sdscteinformacaoseguroCDEMPRESA: TLargeintField;
    sdscteinformacaoseguroCDFORNECEDOR: TLargeintField;
    sdsctedocumentoanteriorCDEMPRESA: TLargeintField;
    sdsctedocumentoanteriorCDCLIENTE: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDREMETENTE: TLargeintField;
    cdsCDTOMADOR: TLargeintField;
    cdsCDEXPEDIDOR: TLargeintField;
    cdsCDRECEBEDOR: TLargeintField;
    cdsCDDESTINATARIO: TLargeintField;
    cdsCDDESTINATARIODIFERENTE: TLargeintField;
    cdsNUCIOT: TLargeintField;
    cdscteqtdcargaCDEMPRESA: TLargeintField;
    cdsctetransportadoraCDEMPRESA: TLargeintField;
    cdsctetransportadoraCDTRANSPORTADORA: TLargeintField;
    cdsctetransportadoraCDPROPRIETARIO: TLargeintField;
    cdscteremetentenotaCDEMPRESA: TLargeintField;
    cdsduplicataCDEMPRESA: TLargeintField;
    cdsduplicataCDCLIENTE: TLargeintField;
    cdsduplicataCDNEGOCIACAOSAIDA: TIntegerField;
    cdsduplicataCDCNTCUSTO: TIntegerField;
    cdsduplicataCDSETBOLETO: TIntegerField;
    cdsduplicataCDITCONTRATOPARCELA: TIntegerField;
    cdsduplicataDSOBSERVACAOBOLETO: TBlobField;
    cdsduplicataNUCNTCUSTO: TStringField;
    cdsduplicataVLCOMISSAOABERTA: TFMTBCDField;
    cdscartacorrecaoCDEMPRESA: TLargeintField;
    cdscteinformacaoseguroCDEMPRESA: TLargeintField;
    cdscteinformacaoseguroCDFORNECEDOR: TLargeintField;
    cdsctedocumentoanteriorCDEMPRESA: TLargeintField;
    cdsctedocumentoanteriorCDCLIENTE: TLargeintField;
    tbvduplicataNUPLCONTA: TcxGridDBColumn;
    tbvduplicataNMPLCONTA: TcxGridDBColumn;
    sdsduplicataNMPLCONTA: TStringField;
    cdsduplicataNMPLCONTA: TStringField;
    sdsduplicataNMCNTCUSTO: TStringField;
    cdsduplicataNMCNTCUSTO: TStringField;
    tbvduplicataNUCNTCUSTO: TcxGridDBColumn;
    tbvduplicataNMCNTCUSTO: TcxGridDBColumn;
    edtvlicmsservico: TcxDBCalcEdit;
    edtvlseguro: TcxDBCalcEdit;
    lblvlicmsservico: TLabel;
    lblvlseguro: TLabel;
    sdsVLSEGURO: TFMTBCDField;
    sdsVLICMSSERVICO: TFMTBCDField;
    cdsVLSEGURO: TFMTBCDField;
    cdsVLICMSSERVICO: TFMTBCDField;
    cdsCDCTEFINALIDADEEMISSAO: TStringField;
    sdsCDCTEFINALIDADEEMISSAO: TStringField;
    cdsitctedocumentoanteriorCDEMPRESA: TLargeintField;
    sdsitctedocumentoanteriorCDEMPRESA: TLargeintField;
    actexportarxmlcancelado: TAction;
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
    procedure actImprimirExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure colorEnter(Sender: TObject);
    procedure colorExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtcdremetentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcddestinatarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdexpedidorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdrecebedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdremetenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcddestinatarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdexpedidorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdrecebedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsCDREMETENTEValidate(Sender: TField);
    procedure cdsCDCFOPValidate(Sender: TField);
    procedure cdsCDDESTINATARIOValidate(Sender: TField);
    procedure cdsCDEXPEDIDORValidate(Sender: TField);
    procedure cdsCDRECEBEDORValidate(Sender: TField);
    procedure cbxcdufinicioExit(Sender: TObject);
    procedure cbxcdufemissaoExit(Sender: TObject);
    procedure cbxcdufterminoExit(Sender: TObject);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsCDPRODUTOValidate(Sender: TField);
    procedure cdscteqtdcargaNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBBandedTableView1CDTRANSPORTADORAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsctetransportadoraCDTRANSPORTADORAValidate(Sender: TField);
    procedure actcteExecute(Sender: TObject);
    procedure actgerarExecute(Sender: TObject);
    procedure actvalidarExecute(Sender: TObject);
    procedure actconsultarExecute(Sender: TObject);
    procedure actenviarExecute(Sender: TObject);
    procedure actstatusExecute(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure actgerarpdfExecute(Sender: TObject);
    procedure actexportarxmlExecute(Sender: TObject);
    procedure actenviaremailExecute(Sender: TObject);
    procedure cdsALICMSValidate(Sender: TField);
    procedure cbxcteprevisaoentregaPropertiesChange(Sender: TObject);
    procedure cbxcteprevisaoentregahPropertiesChange(Sender: TObject);
    procedure cdscteremetentenotaNewRecord(DataSet: TDataSet);
    procedure cxgrdbtblvwGrid1DBTableView1NUCHAVENFEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actadicionarnotaExecute(Sender: TObject);
    procedure actadicionarvalorExecute(Sender: TObject);
    procedure actcancelarcteExecute(Sender: TObject);
    procedure actinutilizarExecute(Sender: TObject);
    procedure actemaildestinatarioExecute(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CDVEICULOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsctetransportadoraCDVEICULOValidate(Sender: TField);
    procedure actrpaExecute(Sender: TObject);
    procedure cdsCDCTETPTOMADORValidate(Sender: TField);
    procedure edtcdtomadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtomadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDTOMADORValidate(Sender: TField);
    procedure cbxctetptomadorPropertiesChange(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CDVEICULOCARRETAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsctetransportadoraCDVEICULOCARRETAValidate(Sender: TField);
    procedure set_calculo(Sender: TField);
    procedure cdsctetransportadoraBeforePost(DataSet: TDataSet);
    procedure cdscteremetentenotaBeforePost(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsVLRECEBERValidate(Sender: TField);
    procedure check_nota(Sender: TField);
    procedure dspUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsCDCTEFINALIDADEEMISSAOValidate(Sender: TField);
    procedure cdsCDCONDPAGTOValidate(Sender: TField);
    procedure cdsduplicataBeforePost(DataSet: TDataSet);
    procedure cdsNUSTICMSValidate(Sender: TField);
    procedure cdsduplicataNewRecord(DataSet: TDataSet);
    procedure tbvduplicataDblClick(Sender: TObject);
    procedure actabrirduplicataExecute(Sender: TObject);
    procedure actabrirremetenteExecute(Sender: TObject);
    procedure lblNMREMETENTEDblClick(Sender: TObject);
    procedure actabrirdestinatarioExecute(Sender: TObject);
    procedure lblNMDESTINATARIODblClick(Sender: TObject);
    procedure actabrirtomadorExecute(Sender: TObject);
    procedure lblnmtomadorDblClick(Sender: TObject);
    procedure actabrirexpedidorExecute(Sender: TObject);
    procedure actabrirrecebedorExecute(Sender: TObject);
    procedure lblNMEXPEDIDORDblClick(Sender: TObject);
    procedure lblnmrecebedorDblClick(Sender: TObject);
    procedure actadicionarduplicataExecute(Sender: TObject);
    procedure cbxcteformaemissaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actemailremetenteExecute(Sender: TObject);
    procedure actimportaxmlExecute(Sender: TObject);
    procedure cdsCDSTCTEValidate(Sender: TField);
    procedure actconsultasalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdcondpagtoEnter(Sender: TObject);
    procedure cbxcdtpcobrancaEnter(Sender: TObject);
    procedure cdscteqtdcargaBeforePost(DataSet: TDataSet);
    procedure actcartacorrecaoExecute(Sender: TObject);
    procedure actadicionarrodoviarioExecute(Sender: TObject);
    procedure acteditarrpaExecute(Sender: TObject);
    procedure actabrirveiculoExecute(Sender: TObject);
    procedure tbvctetransportadoraCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirveiculo2Execute(Sender: TObject);
    procedure actabrirtransportadoraExecute(Sender: TObject);
    procedure cdscteremetentenotaDTEMISSAOValidate(Sender: TField);
    procedure actgerarautpagtoExecute(Sender: TObject);
    procedure cdsctetransportadoraAfterScroll(DataSet: TDataSet);
    procedure actbaixarExecute(Sender: TObject);
    procedure actgerarduplicataExecute(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure cdsCDCTEFORMAEMISSAOValidate(Sender: TField);
    procedure txtcdrpaDblClick(Sender: TObject);
    procedure actabrirrpaExecute(Sender: TObject);
    procedure actconfigurarExecute(Sender: TObject);
    procedure cdsctetransportadoraNewRecord(DataSet: TDataSet);
    procedure actexportaxmlemissorExecute(Sender: TObject);
    procedure edtcdremetentePropertiesEditValueChanged(Sender: TObject);
    procedure edtcddestinatarioPropertiesEditValueChanged(Sender: TObject);
    procedure edtcdtomadorPropertiesEditValueChanged(Sender: TObject);
    procedure edtcdexpedidorPropertiesEditValueChanged(Sender: TObject);
    procedure edtcdrecebedorPropertiesEditValueChanged(Sender: TObject);
    procedure edtcodigoPropertiesEditValueChanged(Sender: TObject);
    procedure cdsBOINDICADORLOTACAOValidate(Sender: TField);
    procedure grdctetransportadoraDBBandedTableView1CDVEICULOCARRETA2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsctetransportadoraCDVEICULOCARRETA2Validate(Sender: TField);
    procedure grdcteqtdcargaDBTableView1CDCTETPMEDIDAPropertiesInitPopup(Sender: TObject);
    procedure cdscteinformacaoseguroBeforePost(DataSet: TDataSet);
    procedure cdscteinformacaoseguroNewRecord(DataSet: TDataSet);
    procedure actredefinirExecute(Sender: TObject);
    procedure edtnucontratoKeyPress(Sender: TObject; var Key: Char);
    procedure cdscteremetentenotaNUCHAVENFEValidate(Sender: TField);
    procedure actcopiarExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdctedocumentoanteriorDBTableView1CDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsctedocumentoanteriorCDCLIENTEValidate(Sender: TField);
    procedure cdsCDCTETPSERVICOValidate(Sender: TField);
    procedure cdsctedocumentoanteriorBeforePost(DataSet: TDataSet);
    procedure cdsctedocumentoanteriorNewRecord(DataSet: TDataSet);
    procedure cdsitctedocumentoanteriorNewRecord(DataSet: TDataSet);
    procedure cdsitctedocumentoanteriorBeforePost(DataSet: TDataSet);
    procedure actenviaremailcartacorrecaoExecute(Sender: TObject);
    procedure cdsCDCTETPINFORMACAOREMETENTEValidate(Sender: TField);
    procedure cdscteremetentenotaAfterPost(DataSet: TDataSet);
    procedure set_vlservico(Sender: TField);
    procedure cdsPRADVALOREMValidate(Sender: TField);
    procedure NextControl(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsctetransportadoraVLFRETEPESOValidate(Sender: TField);
    procedure actimprimircartaExecute(Sender: TObject);
    procedure actexportarcartapdfExecute(Sender: TObject);
    procedure cdsduplicataDTVENCIMENTOValidate(Sender: TField);
    procedure cdscteinformacaoseguroCDTPCTERESPONSAVELSEGUROValidate(Sender: TField);
    procedure cdsVLMERCADORIAValidate(Sender: TField);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actgerarmdfeExecute(Sender: TObject);
    procedure tbvduplicataNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvduplicataNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsduplicataNUCNTCUSTOValidate(Sender: TField);
    procedure cdsduplicataNUPLCONTAValidate(Sender: TField);
    procedure actexportarxmlcanceladoExecute(Sender: TObject);
    procedure cdsCDTPCOBRANCAValidate(Sender: TField);
  private      { Private declarations }
    email    : temail_;
    cte      : TCte;
    boacteditarrpa : Boolean;
    procedure atualizarContatocliente;
    function  checkEnvio:Boolean;
    procedure excluir_texto_subcontratada;
    function  GerarCTE:Boolean;
    function  getduplicata(observacao: string): string;
    function  getRodoviario(observacao: string): string;
    function  getnota(observacao:string):string;
    function  get_cdtpfrete(cdctetptomador:integer):string;
    function  get_peso_carga:double;
    procedure lerconfiguracao;
    procedure check_preenchimento_duplicata;
    procedure set_cfop;
    procedure set_tomador(codigo:Integer);
    procedure set_campos_remetente_nota;
    procedure set_nota;
    procedure set_nfe;
    procedure set_outros;
    procedure set_peso_medida;
    procedure check_chave_cte;
    procedure set_abrirtabela;
    procedure ConfigurarCondpagtoTpcobrancaTomador;
    procedure SetVisibleImpostos;
    function get_chave: string;
    procedure check_data_previsao_entrega_final;
    procedure check_data_previsao_entrega_inicial;
    procedure check_informacao_seguro;
    procedure check_numero_chave_em_outro_cte;
    procedure InserirSeguradora;
    procedure RegistrarContingencia;
    procedure GerarDuplicata;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:integer):boolean;
    function  Novo(cditembarque:string):Boolean;
    function  Gerar_CTE(cdembarque:string):Boolean;
  end;

var
  frmCTE: TfrmCTE;

implementation

uses UMain,
  uacbr,
  uctetransportadora,
  ucartacorrecao,
  udlginutilizarcte,
  uduplicataparcelamento,
  uctereport,
  ubaixa,
  uimprimirrelatoriopadrao,
  ucartacorrecaocte,
  UdlgInfNumIntervencao,
  udlgxmltotreeview,
  uDtmMain,
  ulocalizar,
  ulocalizarveiculo,
  ulocalizarCliente,
  ulocalizarTransportadora,
  uprogressbar;

const
  tbl      = 'cte';
  exibe    = 'Conhecimento Transporte Eletrônico';
  artigoI  = 'a';

{$R *.DFM}

procedure TfrmCTE.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmCTE.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

function TfrmCTE.Abrir(codigo: integer): boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmCTE.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmCTE.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmCTE.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmCTE.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmCTE.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmCTE.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmCTE.actEditarExecute(Sender: TObject);
begin
  registro.editar;
  if edtdtemissao.Enabled then
  begin
    edtdtemissao.SetFocus
  end
  else
  begin
    cbxcdctemodal.SetFocus;
  end;
end;

procedure TfrmCTE.actSalvarExecute(Sender: TObject);
begin
  excluir_texto_subcontratada;
  if (cdsNUSTICMS.AsString = _00) and (cdsALICMS.AsFloat = 0) then
  begin
    MessageDlg('Alíquota de ICMS é um campo obrigatório quando a Situação Tributária for 00.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbsservicos;
    cdsALICMS.FocusControl;
    Abort;
  end;
  if cdsalicms.AsFloat = 0 then
  begin
    cdsvlbaseicms.Clear;
    cdsvlicms.Clear;
    cdsalicms.Clear;
  end;
  check_preenchimento_duplicata;
  InserirSeguradora;
  registro.Salvar;
  TClientDataSet(cbxcdmunicipiotermino.Properties.ListSource.DataSet).Filtered := False;
  TClientDataSet(cbxcdmunicipioinicio.Properties.ListSource.DataSet).Filtered  := False;
  TClientDataSet(cbxcdmunicipioemissao.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmCTE.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
  TClientDataSet(cbxcdmunicipiotermino.Properties.ListSource.DataSet).Filtered := False;
  TClientDataSet(cbxcdmunicipioinicio.Properties.ListSource.DataSet).Filtered  := False;
  TClientDataSet(cbxcdmunicipioemissao.Properties.ListSource.DataSet).Filtered := False;
end;

procedure TfrmCTE.FormShow(Sender: TObject);
begin
  cte        := TCte.create;
  registro.set_readonly_dados(self, true);
  pnl.Caption := exibe;
  edtCodigo.SetFocus;
  pgc.ActivePageIndex := 0;
  lerconfiguracao;
  ACBrCTe.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName)+'Schemascte';
  configurarPermissoes(self);
  boacteditarrpa := acteditarrpa.enabled;
end;

procedure TfrmCTE.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmCTE.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmCTE.edtCodigoKeyPress(Sender: TObject; var Key: Char);
var
  codigo : integer;
begin
  ApenasNumericos(key);
  if not ((key = #13) and (TEdit(sender).text <> '')) then
  begin
    exit;
  end;
  codigo := strtoint(edtcodigo.text);
  if not abrir(codigo) then
  begin
    if actnovo.Enabled then
    begin
      if messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        actNovoExecute(sender)
      end
      else
      begin
        edtcodigo.text := cdsCDCTE.asstring;
      end;
    end
    else
    begin
      messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Digite outro número para continuar.', mtConfirmation, [mbok], 0);
      edtcodigo.text := cdsCDCTE.asstring;
    end;
  end;
  edtcodigo.selectall;
end;

procedure TfrmCTE.actImprimirExecute(Sender: TObject);
begin
  if ACBrCTe.Conhecimentos.Count = 0 then
  begin
    Exit;
  end;
  check_chave_cte;
  cte.Imprimir;
end;

procedure TfrmCTE.FormDestroy(Sender: TObject);
begin
  freeandnil(registro);
  freeandnil(cte);
  freeandnil(email);
end;

procedure TfrmCTE.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmCTE.dtsStateChange(Sender: TObject);
begin
  actrpa.Enabled            := dts.State = dsBrowse;
  actcte.Enabled            := dts.State = dsBrowse;
  actcancelarcte.Enabled    := dts.State = dsBrowse;
  actadicionarnota.Visible  := dts.State in [dsInsert, dsEdit];
  actadicionarvalor.Visible := dts.State in [dsInsert, dsEdit];
  bmgobservacao.Visible     := dts.State in [dsInsert, dsEdit];
  if actcancelarcte.Enabled then
  begin
    actcancelarcte.Enabled := cdsCDSTCTE.AsInteger = 3;
  end;
  if not empresa.faturamento.cte.bodigitardtemissao then
  begin
    edtdtemissao.Enabled := false;
    edthremissao.Enabled := false;
  end;
  acteditarrpa.Enabled := (not ((dts.State = dsedit) or (dts.State = dsInsert))) and (cdsCDSTCTE.AsString = _3);
  if acteditarrpa.Enabled then
  begin
    acteditarrpa.Enabled := boacteditarrpa;
  end;
  acteditarrpa.Visible := acteditarrpa.Enabled;
  actadicionarduplicata.Enabled := cds.State <> dsInsert;
end;

procedure TfrmCTE.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  memdsobservacao.Clear;
  cdsCDCTEMODAL.AsInteger             := 1;
  cdsCDCTETPSERVICO.AsInteger         := 1;
  cdsCDCTEFINALIDADEEMISSAO.AsString  := _0;
  cdsCDCTEFORMAEMISSAO.asinteger      := 1;
  cdsCDCTEFORMAIMPRESSAO.asinteger    := 1;
  if empresa.faturamento.cte.cdctetptomador <> '' then
  begin
    cdsCDCTETPTOMADOR.AsString  := empresa.faturamento.cte.cdctetptomador;
  end
  else
  begin
    cdsCDCTETPTOMADOR.AsInteger := 4;
  end;
  cdsCDCTEFORMAPAGAMENTO.AsInteger        := 1;
  cdsCDCTETPINFORMACAOREMETENTE.AsInteger := 2;
  cdsDTEMISSAO.AsDateTime             := dtbanco;
  cdsHREMISSAO.AsDateTime             := HrBanco;
  cdsCDSTCTE.AsInteger                 := qregistro.Codigo_status_novo(tbl);
  cdsCDUFEMISSAO.AsInteger            := empresa.endereco.cduf;
  cdsCDMUNICIPIOEMISSAO.AsInteger     := empresa.endereco.cdmunicipio;
  if empresa.faturamento.cte.cdproduto <> '' then
  begin
    cdscdproduto.asstring := empresa.faturamento.cte.cdproduto;
  end;
  if empresa.faturamento.cte.nurntrc = '' then
  begin
    MessageDlg('Número do RNTRC é um campo obrigatório no cadastro=>Empresa.', mtInformation, [mbOK], 0);
    cds.CancelUpdates;
    abort;
  end;
  cdsNURNTRC.AsString := empresa.faturamento.cte.nurntrc;
  if empresa.faturamento.cte.cdctetpprevisaoentrega <> '' then
  begin
    cdsCDCTETPPREVISAOENTREGA.AsString := empresa.faturamento.cte.cdctetpprevisaoentrega;
  end;
  if empresa.faturamento.cte.cdctetpprevisaoentregah <> '' then
  begin
    cdsCDCTETPPREVISAOENTREGAH.AsString := empresa.faturamento.cte.cdctetpprevisaoentregah;
  end;
  if empresa.faturamento.cte.cdcteformapagamento > 0 then
  begin
    cds.FieldByName(_cdcteformapagamento).asinteger := empresa.faturamento.cte.cdcteformapagamento;
  end;
  cdsBOINDICADORLOTACAO.AsString := _S;
  if cdsCDCTE.AsInteger = -1 then
  begin
    edtcodigo.Clear;
  end
  else
  begin
    edtcodigo.text := cdsCDCTE.asstring;
  end;
  if empresa.faturamento.cte.nudiaprevisaoentregacte > 0 then
  begin
    cdsDTPREVISAOENTREGA.AsDateTime := dtbanco + empresa.faturamento.cte.nudiaprevisaoentregacte;
  end;
  pnl.Caption := exibe+' '+edtcodigo.text;
end;

procedure TfrmCTE.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  if (SourceDS = sds) and (DeltaDS.FieldByName(_cd+tbl).NewValue < 0) and (UpdateKind = ukinsert) then
  begin
    registro.codigoinsercao               := GerarCodigo(tbl);
    DeltaDS.FieldByName(_cd+tbl).NewValue := registro.codigoinsercao;
  end;
  if (DeltaDS.FindField(uppercase(_cd+tbl)) <> nil) and (UpdateKind = ukinsert) and (DeltaDS.FieldByName(_cd+tbl).NewValue < 0) then
  begin
    DeltaDS.FieldByName(_cd+tbl).NewValue := registro.codigoinsercao;
  end;
  if (DeltaDS.FindField(uppercase(_nuduplicata)) <> nil) and (UpdateKind = ukinsert) then
  begin
    if RetornaSQLInteger('select count(*) from itcondpagto where cdcondpagto='+cds.fieldbyname(_cdcondpagto).asstring) > 1 then
    begin
      if registro.codigoinsercao = '' then
      begin
        DeltaDS.FieldByName(_nuduplicata).NewValue := DeltaDS.FieldByName(_cd+tbl).AsString+'/'+char(DeltaDS.RecNo-1+65)
      end
      else
      begin
        DeltaDS.FieldByName(_nuduplicata).NewValue := registro.codigoinsercao+'/'+char(DeltaDS.RecNo-1+65)
      end;
    end
    else
    begin
      if registro.codigoinsercao = '' then
      begin
        DeltaDS.FieldByName(_nuduplicata).NewValue := DeltaDS.FieldByName(_cd+tbl).AsString
      end
      else
      begin
        DeltaDS.FieldByName(_nuduplicata).NewValue := registro.codigoinsercao;
      end;
    end;
  end;
end;

procedure TfrmCTE.colorEnter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmCTE.colorExit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmCTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCTE.edtcdremetentePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarCliente(true);
  if cd <> 0 then
  begin
    cds.fieldbyname(_CDREMETENTE).AsLargeInt := cd;
  end
end;

procedure TfrmCTE.edtcddestinatarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarCliente(true);
  if cd <> 0 then
  begin
    cds.fieldbyname(_CDDESTINATARIO).AsLargeInt := cd;
  end
end;

procedure TfrmCTE.edtcdexpedidorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarCliente(true);
  if cd <> 0 then
  begin
    cds.fieldbyname(_CDEXPEDIDOR).AsLargeInt := cd;
  end
end;

procedure TfrmCTE.edtcdrecebedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarCliente(true);
  if cd <> 0 then
  begin
    cds.fieldbyname(_CDRECEBEDOR).AsLargeInt := cd;
  end
end;

procedure TfrmCTE.edtcdremetenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdremetentePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmCTE.edtcddestinatarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcddestinatarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmCTE.edtcdexpedidorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdexpedidorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmCTE.edtcdrecebedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdrecebedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmCTE.cdsCDREMETENTEValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMREMETENTE.clear;
    Exit;
  end;
  if not cte.remetente.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not cte.remetente.ConsistirMunicipio(Sender.AsString) then
  begin
    sender.FocusControl;
    abort;
  end;
  if cte.remetente.cdpais = 0 then
  begin
    messagedlg('Cadastro do Remetente não está preenchido o país.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  if cte.remetente.cdproduto <> 0 then
  begin
    cdsCDPRODUTO.Asinteger := cte.remetente.cdproduto;
  end;
  cdsNMREMETENTE.AsString := cte.remetente.nmcliente;
  lblnmremetente.Hint := cte.remetente.hint_rzsocial;
  if (cdscteinformacaoseguro.recordcount = 1) and (cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO.asinteger = 0) and (cte.remetente.cdfornecedorseguradora <> 0) then
  begin
    cdscteinformacaoseguro.Edit;
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.remetente.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.remetente.nuapolice;
    cdscteinformacaoseguro.Post;
  end;
  if (empresa.faturamento.cte.cdtpcteresponsavelseguro = _0) and (cdscteinformacaoseguro.recordcount = 0) and (cte.remetente.cdfornecedorseguradora <> 0) then
  begin
    cds.FieldByName(_CDREMETENTE).OnValidate := nil;
    cdscteinformacaoseguro.insert;
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.remetente.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.remetente.nuapolice;
    cdscteinformacaoseguro.Post;
    cds.FieldByName(_CDREMETENTE).OnValidate := cdsCDREMETENTEValidate;
  end;
  cdsCDUFINICIO.AsInteger := cte.remetente.cduf;
  cdsCDMUNICIPIOINICIO.AsInteger := cte.remetente.cdmunicipio;
  set_cfop;
  if cdsCDCTETPTOMADOR.AsInteger = 1 then
  begin
    cdsCDITCONTCLIENTE.Clear;
  end;
  atualizarContatocliente;
  ConfigurarCondpagtoTpcobrancaTomador;
end;

function set_mensagem_fiscal(obs, msg: string; linha: integer):string;
var
  t : TStrings;
begin
  t := tstringlist.Create;
  try
    t.Text := obs;
    if t.Count = linha then
    begin
      t.Add(msg)
    end
    else
    begin
      t[linha] := msg;
    end;
    result := t.Text;
  finally
    FreeAndNil(t);
  end;
end;

function TfrmCTE.getnota(observacao: string): string;
var
  c : TClientDataSet;
  nota : string;
begin
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdscteremetentenota, false);
    c.First;
    while not c.Eof do
    begin
      if nota <> '' then
      begin
        nota := nota + ','
      end
      else
      begin
        nota := 'Nota ';
      end;
      nota := nota + c.fieldbyname(_nunota).AsString;
      c.Next;
    end;
    result := set_mensagem_fiscal(observacao, nota, 1);
  finally
    FreeAndNil(c);
  end;
end;

function TfrmCTE.getduplicata(observacao: string): string;
var
  c : TClientDataSet;
  nota : string;
begin
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsduplicata, false);
    c.First;
    while not c.Eof do
    begin
      if nota <> '' then
      begin
        nota := nota + ', '
      end
      else
      begin
        nota := 'Contas a Receber ';
      end;
      nota := nota + c.fieldbyname(_nuduplicata).AsString+' ('+formatdatetime(_dd_mm_yyyy, c.fieldbyname(_dtvencimento).AsDateTime)+')';
      c.Next;
    end;
    result := set_mensagem_fiscal(observacao, nota, 2);
  finally
    FreeAndNil(c);
  end;
end;

function TfrmCTE.getRodoviario(observacao: string): string;
var
  c : TClientDataSet;
  nota : string;
begin
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsctetransportadora, false);
    c.First;
    nota := '';
    while not c.Eof do
    begin
      if nota <> '' then
      begin
        nota := nota + '/';
      end;
      nota := nota + 'Placa do Cavalo: '+c.fieldbyname(_nuplaca).AsString+' UF: '+nomedocodigo(_uf, nomedocodigo(_veiculo, c.fieldbyname(_cdveiculo).asstring, _cduf), _sguf);
      if c.fieldbyname(_nuplacacarreta).AsString <> '' then
      begin
        nota := nota +'      Placa da Carreta: '+c.fieldbyname(_nuplacacarreta).AsString+' UF: '+nomedocodigo(_uf, nomedocodigo(_veiculo, c.fieldbyname(_cdveiculocarreta).asstring, _cduf), _sguf);
      end;
      nota := nota + '      Motorista: '+c.fieldbyname(_nmtransportadora).AsString;
      c.Next;
    end;
    result := set_mensagem_fiscal(observacao, nota, 3);
  finally
    FreeAndNil(c);
  end;
end;

procedure TfrmCTE.cdsCDCFOPValidate(Sender: TField);
  procedure check_cfop_existente;
  begin
    if not CodigoExiste(_cfop, sender.asstring) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cfop)]), mterror, [mbok], 0);
      Sender.FocusControl;
      Abort;
    end;
  end;
  procedure check_cfop_configurado_cte;
  begin
    if not BooleandoCodigo(_cfop, sender.AsString, _bocte) then
    begin
      messagedlg('Código '+sender.AsString+' não configurado para emissão de CTe!', mtError, [mbok], 0);
      Sender.FocusControl;
      Abort;
    end;
  end;
begin
  check_cfop_existente;
  check_cfop_configurado_cte;
  cdsNMCFOP.AsString := NomedoCodigo(_cfop, sender.AsString);
  if empresa.tpregime = _s then
  begin
    cdsNUSTICMS.AsString := _ss;
  end
  else if (sender.AsString <> '2206') and (sender.AsString <> '1206') then
  begin
    cdsnuSTICMS.AsString := NomedoCodigo(_cfop, sender.AsString, _nusticms);
  end;
  cdsDSOBSERVACAO.AsString := set_mensagem_fiscal(memdsobservacao.Lines.Text, NomedoCodigo(_cfop, sender.AsString, _dsmensagem), 0);
end;

procedure TfrmCTE.cdsCDDESTINATARIOValidate(Sender: TField);
begin
  if not cte.destinatario.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not cte.destinatario.ConsistirMunicipio(Sender.AsString) then
  begin
    sender.FocusControl;
    abort;
  end;
  if cte.destinatario.cdpais = 0 then
  begin
    messagedlg('Cadastro do Destinatário não está preenchido o país.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMDESTINATARIO.AsString := cte.destinatario.nmcliente;
  lblnmdestinatario.Hint := cte.destinatario.hint_rzsocial;
  if (cdscteinformacaoseguro.RecordCount = 1) and (cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO.asinteger = 3) and (cte.destinatario.cdfornecedorseguradora <> 0) then
  begin
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.destinatario.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.destinatario.nuapolice;
  end;
  if (empresa.faturamento.cte.cdtpcteresponsavelseguro = _3) and (cdscteinformacaoseguro.recordcount = 0) and (cte.destinatario.cdfornecedorseguradora <> 0) then
  begin
    cdscteinformacaoseguro.insert;
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.destinatario.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.destinatario.nuapolice;
  end;
  cdsCDUFTERMINO.AsInteger := cte.destinatario.cduf;
  cdsCDMUNICIPIOTERMINO.AsInteger := cte.destinatario.cdmunicipio;
  set_cfop;
  if cdsCDCTETPTOMADOR.AsInteger = 4 then
  begin
    cdsCDITCONTCLIENTE.Clear;
  end;
  atualizarContatocliente;
  ConfigurarCondpagtoTpcobrancaTomador;
end;

procedure TfrmCTE.cdsCDEXPEDIDORValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMEXPEDIDOR.clear;
    Exit;
  end;
  if not cte.expedidor.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not cte.expedidor.ConsistirMunicipio(Sender.AsString) then
  begin
    sender.FocusControl;
    abort;
  end;
  if cte.expedidor.cdpais = 0 then
  begin
    messagedlg('Cadastro do Expedidor não está preenchido o país.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMEXPEDIDOR.AsString := cte.expedidor.nmcliente;
  lblnmexpedidor.Hint := cte.expedidor.hint_rzsocial;
  if (cdscteinformacaoseguro.RecordCount = 1) and (cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO.asinteger = 1) and (cte.expedidor.cdfornecedorseguradora <> 0) then
  begin
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.expedidor.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.expedidor.nuapolice;
  end;
  if (empresa.faturamento.cte.cdtpcteresponsavelseguro = _1) and (cdscteinformacaoseguro.recordcount = 0) and (cte.expedidor.cdfornecedorseguradora <> 0) then
  begin
    cdscteinformacaoseguro.insert;
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.expedidor.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.expedidor.nuapolice;
  end;
  set_cfop;
  if cdsCDCTETPTOMADOR.AsInteger = 2 then
  begin
    cdsCDITCONTCLIENTE.Clear;
  end;
  atualizarContatocliente;
  ConfigurarCondpagtoTpcobrancaTomador;
end;

procedure TfrmCTE.cdsCDRECEBEDORValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMRECEBEDOR.clear;
    Exit;
  end;
  if not cte.recebedor.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not cte.recebedor.ConsistirMunicipio(Sender.AsString) then
  begin
    sender.FocusControl;
    abort;
  end;
  if cte.recebedor.cdpais = 0 then
  begin
    messagedlg('Cadastro do Recebedor não está preenchido o país.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMRECEBEDOR.AsString := cte.recebedor.nmcliente;
  lblnmrecebedor.Hint := cte.recebedor.hint_rzsocial;
  if (cdscteinformacaoseguro.RecordCount = 1) and (cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO.asinteger = 2) and (cte.recebedor.cdfornecedorseguradora <> 0) then
  begin
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.recebedor.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.recebedor.nuapolice;
  end;
  if (empresa.faturamento.cte.cdtpcteresponsavelseguro = _2) and (cdscteinformacaoseguro.recordcount = 0) and (cte.recebedor.cdfornecedorseguradora <> 0) then
  begin
    cdscteinformacaoseguro.insert;
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.recebedor.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.recebedor.nuapolice;
  end;
  set_cfop;
  if cdsCDCTETPTOMADOR.AsInteger = 3 then
  begin
    cdsCDITCONTCLIENTE.Clear;
  end;
  atualizarContatocliente;
  ConfigurarCondpagtoTpcobrancaTomador;
end;

procedure TfrmCTE.cbxcdufinicioExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcdufinicio.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcdufinicio.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipioinicio.Properties.ListSource.DataSet));
  end;
end;

procedure TfrmCTE.cbxcdufemissaoExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcdufemissao.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcdufemissao.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipioemissao.Properties.ListSource.DataSet));
  end;
end;

procedure TfrmCTE.cbxcdufterminoExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcduftermino.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduftermino.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipiotermino.Properties.ListSource.DataSet));
  end;
end;

procedure TfrmCTE.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := LocalizarProduto;
  if cd <> 0 then
  begin
    cdsCDPRODUTO.AsInteger := cd;
  end
end;

procedure TfrmCTE.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmCTE.cdsCDPRODUTOValidate(Sender: TField);
begin
  if not CodigoExiste(_produto, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_produto)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsNMPRODUTO.AsString := NomedoCodigo(_produto, sender.AsString);
end;

procedure TfrmCTE.cdscteqtdcargaNewRecord(DataSet: TDataSet);
begin
  cdscteqtdcargaCDCTEQTDCARGA.AsString := GerarCodigo(_cteqtdcarga);
end;

procedure TfrmCTE.cxGrid1DBBandedTableView1CDTRANSPORTADORAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: LargeInt;
begin
  cd := localizarTransportadora(true);
  if cd = 0 then
  begin
    Exit;
  end;
  if cdsctetransportadora.State = dsbrowse then
  begin
    cdsctetransportadora.Edit;
  end;
  cdsctetransportadora.fieldbyname(_CDTRANSPORTADORA).AsLargeInt := cd;
end;

procedure TfrmCTE.cdsctetransportadoraCDTRANSPORTADORAValidate(Sender: TField);
var
  transportadora : TTransportadora;
begin
  if sender.asstring = '' then
  begin
    cdsctetransportadoraNMTRANSPORTADORA.clear;
    cdsctetransportadora.fieldbyname(_CDPROPRIETARIO).clear;
    cdsctetransportadoraTPPESSOA.clear;
    cdsctetransportadoraCDVEICULO.clear;
    cdsctetransportadoraCDVEICULOCARRETA.clear;
    cdsctetransportadoraCDVEICULOCARRETA2.clear;
    exit;
  end;
  transportadora := ttransportadora.Create;
  try
    if not transportadora.Select(Sender.AsLargeInt) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_transportadora)]), mterror, [mbok], 0);
      abort;
    end;
    cdsctetransportadoraNMTRANSPORTADORA.asstring := transportadora.nmtransportadora;
    if transportadora.cdveiculo > 0 then
    begin
      cdsctetransportadoraCDVEICULO.AsInteger := transportadora.cdveiculo;
    end;
    if transportadora.cdveiculocarreta > 0 then
    begin
      cdsctetransportadoraCDVEICULOCARRETA.AsInteger := transportadora.cdveiculocarreta;
    end;
    if transportadora.cdveiculocarreta2 > 0 then
    begin
      cdsctetransportadoraCDVEICULOCARRETA2.AsInteger := transportadora.cdveiculocarreta2;
    end;
  finally
    freeandnil(transportadora);
  end;
end;

procedure TfrmCTE.actcteExecute(Sender: TObject);
begin
  btncte.DropDown(false);
end;

procedure TfrmCTE.actgerarExecute(Sender: TObject);
begin
  CheckEnvio;
  if GerarCTE then
  begin
    messagedlg('Conhecimento '+cdsCDCTE.asstring+' gerado.', mtinformation, [mbok], 0);
  end;
end;

procedure TfrmCTE.actgerarmdfeExecute(Sender: TObject);
var
  cdmdfe : integer;
begin
  if cdsctetransportadora.RecordCount = 0 then
  begin
    messagedlg('Obrigatório o preenchimento do motorista na aba Rodoviário.', mtinformation, [mbok], 0);
    abort;
  end;
  cdmdfe := cte.GerarMDFE;
  if cdmdfe > 0 then
  begin
    frmmain.Abrirformulario(_mdfe, cdmdfe);
  end
  else if cdmdfe = - 1 then
  begin
    messagedlg('MDFE já foi gerada para este CTE.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmCTE.actvalidarExecute(Sender: TObject);
begin
  CheckEnvio;
  if GerarCTE then
  begin
    ACBrCTe.Conhecimentos.Validar;
    Exibir_chave_nfe(exibe, cdsCDCTE.asstring, ACBrCTe.Conhecimentos.Items[0].CTe.infCTe.ID);
    cte.dsxml := ACBrCTe.Conhecimentos.Items[0].XML;
    actImprimirExecute(sender);
    RegistrarContingencia;
  end;
end;

procedure TfrmCTE.actconsultarExecute(Sender: TObject);
var
  arquivo : tstrings;
  diretorio, nuchave : string;
begin
  nuchave := cdsnuchavenfe.AsString;
  if nuchave = '' then
  begin
    if ACBrCTe.Conhecimentos.Count = 0 then
    begin
      actvalidarExecute(actvalidar);
    end;
    nuchave := ACBrCTe.Conhecimentos.Items[0].CTe.infCTe.ID;
    delete(nuchave, 1, 3);
  end;
  if not(InputQuery('Consulta CT', 'Chave:', nuchave)) then exit;
  ACBrCTe.WebServices.Consulta.CTeChave := nuChave;
  ACBrCTe.WebServices.Consulta.Executar;
  if pos('<cStat>101</cStat>', UTF8Encode(ACBrCTe.WebServices.Consulta.RetWS)) > 0 then
  begin
    if ((cte.cdstcte = 3) or (cte.cdstcte = 1)) and
       (MessageDlg('CT-e está cancelado na SEFAZ mas não está cancelado no sistema.'#13'Processar cancelamento no sistema?', mtConfirmation, [mbYes,mbNo], 0) = mryes) then
    begin
      cte.verificarSePodeCancelar;
      if cte.Cancelar then
      begin
        nuchave := LowerCase(ACBrCTe.Conhecimentos.Items[0].CTe.procCTe.chCTe);
        if Pos(_cte, nuchave)> 0 then
        begin
          Delete(nuchave, 1, 3);
        end;
        cte.nuchavenfe := nuchave;
        cte.dsxmlcancel := ACBrCTe.WebServices.Consulta.RetWS;
        cte.Update;
        Abrir(cdsCDCTE.asInteger);
      end;
    end;
    Exit;
  end;
  DlgXMLtoTreeView('Consulta CTE na SEFAZ', UTF8Encode(ACBrCTe.WebServices.Consulta.RetWS), true);
  if (pos('<cStat>100</cStat>', UTF8Encode(ACBrCTe.WebServices.Consulta.RetWS)) > 0) and
     (messagedlg('Salvar xml do CT-e no computador?', mtconfirmation,[mbyes,mbno], 0) = mryes) then
  begin
    arquivo := tstringlist.create;
    try
      diretorio := QRotinas.getdiretorio;
      if diretorio = '' then
      begin
        exit;
      end; // salvar
      arquivo.Text := ACBrCTe.Conhecimentos.Items[0].XML;
      arquivo.SaveToFile(diretorio+'\'+ACBrCTe.Conhecimentos.Items[0].CTe.infCTe.ID+'.xml');
      messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
    finally
      freeandnil(arquivo);
    end;
  end;
end;

procedure TfrmCTE.actenviarExecute(Sender: TObject);
var
  vNumLote : String;
begin
  if empresa.faturamento.cte.boseguradora and (cdsctetransportadoraNUSEGURADORA.asstring = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_da+' '+_seguradora]), mtinformation, [mbok], 0);
    Abort;
  end;
  vNumLote := GerarCodigo(_numlote);
  GerarCTE;
  if ACBrCTe.Enviar(StrToInt(vNumLote), false) then
  begin
    cds.AfterScroll := nil;
    actEditarExecute(sender);
    cdsDSXML.AsString       := ACBrCTe.Conhecimentos.Items[0].XML;
    cdsNUCHAVENFE.AsString  := ACBrCTe.Conhecimentos.Items[0].CTe.procCTe.chCTe;
    cdsNUPROTOCOLO.AsString := ACBrCTe.Conhecimentos.Items[0].CTe.procCTe.nProt;
    cdsCDSTCTE.AsInteger    := 3;
    actSalvarExecute(Sender);
    cds.AfterScroll := cdsAfterScroll;
    Abrir(cdsCDCTE.AsInteger);
    actImprimirExecute(nil);
    if empresa.faturamento.cte.boremetenteemail then
    begin
      if MessageDlg('Enviar email remetente?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin
        actemailremetenteExecute(sender);
      end;
    end
    else if MessageDlg('Enviar email destinatário?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
    begin
      actemaildestinatarioExecute(sender);
    end;
    Abrir(cdsCDCTE.AsInteger);
    actgerarautpagtoExecute(actgerarautpagto);
  end;
end;

procedure TfrmCTE.lerconfiguracao;
var
  IniFile    : String;
  Ini        : TIniFile;
  Ok         : Boolean;
  msg        : tstrings;
  StreamMemo : TMemoryStream;
begin
  IniFile    := ChangeFileExt( Application.ExeName, '.'+_ini);
  Ini        := TIniFile.Create( IniFile );
  msg        := tstringlist.create;
  StreamMemo := TMemoryStream.Create;
  try
    //{$IFDEF ACBrCTeOpenSSL}
    //{$IFDEF DFE_SEM_CAPICOM}
      //ACBrCTe.Configuracoes.Certificados.ArquivoPFX  := Ini.ReadString( 'Certificado','Caminho' ,'');
     // ACBrCTe.Configuracoes.Certificados.Senha     := Ini.ReadString( 'Certificado','Senha'   ,'');
    //{$ELSE}
      ACBrCTe.Configuracoes.Certificados.NumeroSerie := Ini.ReadString( 'Certificado','NumSerie','');
    //{$ENDIF}
    ACBrCTe.Configuracoes.Geral.SSLLib := acbr.certificado.SSLLib;
    ACBrCTe.Configuracoes.Geral.FormaEmissao     := StrToTpEmis(OK,IntToStr(1));
    ACBrCTe.Configuracoes.Geral.Salvar           := Ini.ReadBool(   'Geral','Salvar'      ,True);

    ACBrCTe.Configuracoes.Arquivos.PathSalvar       := Ini.ReadString( 'Geral','PathSalvar'  ,'');
    ACBrCTe.Configuracoes.Arquivos.Salvar       := true;

    if (ACBrCTe.Configuracoes.Arquivos.PathSalvar = '') or (ACBrCTe.Configuracoes.Arquivos.PathSalvar = ExtractFilePath(Application.ExeName)) then
    begin
      ACBrCTe.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName)+_xml;
    end;

    ACBrCTe.Configuracoes.WebServices.UF         := Ini.ReadString('WebService','UF','MG');
    ACBrCTe.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(Ini.ReadInteger('WebService','Ambiente'  ,0)+1));
    ACBrCTe.Configuracoes.WebServices.Visualizar := Ini.ReadBool(    'WebService','Visualizar',False);
    ACBrCTe.Configuracoes.WebServices.ProxyHost  := Ini.ReadString( 'Proxy','Host'   ,'');
    ACBrCTe.Configuracoes.WebServices.ProxyPort  := Ini.ReadString( 'Proxy','Porta'  ,'');
    ACBrCTe.Configuracoes.WebServices.ProxyUser  := Ini.ReadString( 'Proxy','User'   ,'');
    ACBrCTe.Configuracoes.WebServices.ProxyPass  := Ini.ReadString( 'Proxy','Pass'   ,'');
    if ACBrCTe.DACTe <> nil then
    begin
      ACBrCTe.DACTe.TipoDACTe  := StrToTpImp(OK,IntToStr(0+1));
      ACBrCTe.DACTe.Logo       := Ini.ReadString( 'Geral','LogoMarca'   ,'');
    end;

    ACBrMail1.Host      := Ini.ReadString('Email','Host'   ,'');
    ACBrMail1.Port      := Ini.ReadString('Email','Port'   ,'');
    ACBrMail1.Username  := Ini.ReadString('Email','User'   ,'');
    ACBrMail1.Password  := Ini.ReadString('Email','Pass'   ,'');
    ACBrMail1.Body.Text := Ini.ReadString('Email','Assunto','');
    ACBrMail1.SetSSL    := Ini.ReadBool  ('Email','SSL'    ,False);

    email.SmtpHost := Ini.ReadString('Email','Host'   ,'');
    email.SmtpPort := Ini.ReadString('Email','Port'   ,'');
    email.SmtpUser := Ini.ReadString('Email','User'   ,'');
    email.SmtpPass := Ini.ReadString('Email','Pass'   ,'');
    email.Assunto  := Ini.ReadString('Email','Assunto','');
    email.boSSL    := Ini.ReadBool  ('Email','SSL'    ,False);
    email.bopdf    := Ini.ReadBool  ('Email',UpperCase(_PDF)    ,False);
    email.tpenvio  := ini.ReadInteger('Email','Tipo Envio', 1);
    Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
    msg.LoadFromStream(StreamMemo);
    StreamMemo.Free;
    email.msg      := msg.text;
  finally
    Ini.Free;
    freeandnil(msg);
  end;
end;

procedure TfrmCTE.actstatusExecute(Sender: TObject);
begin
  ACBrCTe.WebServices.StatusServico.Executar;
  MessageDlg(ACBrCTe.WebServices.StatusServico.xMotivo, mtInformation, [mbOK], 0);
end;

function TfrmCTE.get_chave:string;
var
  i, j: integer;
  Aspas : string;
begin
  if Pos('Id="', cdsDSXML.asstring) <> 0 then
  begin
    Aspas := '"';
  end
  else
  begin
    Aspas := '''';
  end;
  I := 0;
  I := RetornarPosEx('Id=', cdsDSXML.asstring, I + 6);
  I := RetornarPosEx(Aspas, cdsDSXML.asstring, I + 2);
  J := RetornarPosEx(Aspas, cdsDSXML.asstring, I + 1);
  result := copy(cdsDSXML.asstring, I + 1, J - I -1);
end;

procedure TfrmCTE.cdsAfterScroll(DataSet: TDataSet);
var
  texto : TStringStream;
begin
  SetVisibleImpostos;
  cte.Select(cds);
  cte.remetente.select(cte.cdremetente);
  cte.destinatario.select(cte.CDDESTINATARIO);
  cte.recebedor.select(cte.CDRECEBEDOR);
  cte.expedidor.select(cte.CDEXPEDIDOR);
  cte.tomador.select(cte.CDTOMADOR);
  cte.CTEInformacaoSeguro.ler(cdsCTEInformacaoSeguro);
  cte.CTEDocumentoAnterior.ler(cdsCTEDocumentoAnterior, cdsitCTEDocumentoAnterior);
  cte.cartacorrecaocte.ler(cdscartacorrecao);
  cte.cteqtdcarga.ler(cdscteqtdcarga);
  cte.cteremetentenota.ler(cdscteremetentenota);
  cte.ctetransportadora.ler(cdsctetransportadora);
  cte.duplicata.ler(cdsduplicata);
  cte.condpagto.Select(cte.cdcondpagto);
  cte.condpagto.itcondpagto.Ler(cte.cdcondpagto);

  set_campos_remetente_nota;
  lblnuchavecteanulacao.Visible     := (cdsCDCTEFINALIDADEEMISSAO.AsString = _2) or (cdsCDCTEFINALIDADEEMISSAO.AsString= _3);
  edtnuchavecteanulacao.Visible     := (cdsCDCTEFINALIDADEEMISSAO.AsString = _2) or (cdsCDCTEFINALIDADEEMISSAO.AsString= _3);
  lbldtemissaocteanulacao.Visible   := (cdsCDCTEFINALIDADEEMISSAO.AsString = _2) or (cdsCDCTEFINALIDADEEMISSAO.AsString= _3);
  edtdtemissaocteanulacao.Visible   := (cdsCDCTEFINALIDADEEMISSAO.AsString = _2) or (cdsCDCTEFINALIDADEEMISSAO.AsString= _3);
  rdgtptomadoricms.Visible          := cdsCDCTEFINALIDADEEMISSAO.AsString = _3;

  lblnuchavenfereferenciado.Visible := cdsCDCTEFINALIDADEEMISSAO.AsString <> _2;
  edtnuchavenfereferenciado.Visible := cdsCDCTEFINALIDADEEMISSAO.AsString <> _2;

  tbsdocumentoanterior.TabVisible := cdsCDCTETPSERVICO.AsInteger = 2;
  actexportarxml.Visible          := cdsCDSTCTE.AsInteger in [2, 3];
  actgerarpdf.Visible             := cdsCDSTCTE.AsInteger = 3;
  actcartacorrecao.Visible        := cdsCDSTCTE.AsInteger = 3;
  actgerarduplicata.Visible       := cdsCDSTCTE.AsInteger = 3;
  actredefinir.Visible            := cdsCDSTCTE.AsInteger = 3;
  actgerarmdfe.Enabled := cdsCDSTCTE.AsInteger = 3;
  if (pgc.ActivePage = tbscartacorrecao) and (cdsCDSTCTE.AsInteger <> 3) then
  begin
    pgc.ActivePage := tbsDADOS;
  end;
  tbscartacorrecao.TabVisible  := cdsCDSTCTE.AsInteger = 3;
  if empresa.faturamento.cte.boremetenteemail then
  begin
    actemailremetente.Visible    := cdsCDSTCTE.AsInteger = 3
  end
  else
  begin
    actemaildestinatario.Visible := cdsCDSTCTE.AsInteger = 3;
  end;
  actenviaremail.Visible       := cdsCDSTCTE.AsInteger = 3;
  actexportarxml.Enabled       := cdsCDSTCTE.AsInteger in [2, 3];
  actgerarpdf.Enabled          := cdsCDSTCTE.AsInteger = 3;
  if empresa.faturamento.cte.boremetenteemail then
  begin
    actemailremetente.Enabled    := cdsCDSTCTE.AsInteger = 3;
  end
  else
  begin
    actemaildestinatario.Enabled := cdsCDSTCTE.AsInteger = 3;
  end;
  actenviaremail.Enabled       := cdsCDSTCTE.AsInteger = 3;
  actvalidar.Visible    := cdsCDSTCTE.AsInteger = 1;
  actvalidar.Enabled    := cdsCDSTCTE.AsInteger = 1;
  actenviar.Visible     := cdsCDSTCTE.AsInteger = 1;
  actenviar.Enabled     := cdsCDSTCTE.AsInteger = 1;
  actimportaxml.Visible := cdsCDSTCTE.AsInteger = 1;
  actimportaxml.Enabled := cdsCDSTCTE.AsInteger = 1;
  pnl.Caption := exibe;
  if cdsCDCTE.asstring <> '' then
  begin
    pnl.Caption := pnl.caption + ' ' + cdsCDCTE.asstring+' (' +nomedocodigo(_st+tbl, cdsCDstCTE.asstring)+')';
    if cdsNUCHAVENFE.asstring <> '' then
    begin
      pnl.caption := pnl.Caption + ' - Chave '+ qrotinas.getchave(cdsNUCHAVENFE.asstring);
    end;
  end;
  atualizarcontatocliente;

  //registro.setStatus(tbl, cds);
  if empresa.faturamento.cte.boexcluir then
  begin
    actexcluir.Enabled := false;
  end;
  texto := TStringStream.Create('');

  try
    ACBrCTe.Conhecimentos.Clear;
    if cdsDSXML.IsNull then
    begin
      Exit;
    end;
    texto.WriteString(cdsDSXML.asstring);
    ACBrCTe.Conhecimentos.LoadFromStream(texto);
    if ACBrCTe.Conhecimentos.count>0 then
    begin
      ACBrCTe.Conhecimentos.Items[0].CTe.infCTe.ID := get_chave;
      if ACBrCTe.Conhecimentos.Items[0].CTe.Ide.tpAmb = taHomologacao then
      begin
        actExcluir.Enabled := True;
      end;
    end;
  finally
    freeandnil(texto);
  end;
  lbldtprevisaoi.Visible := cdsCDCTETPPREVISAOENTREGA.AsInteger  = 5;
  lblhrprevisaoi.Visible := cdsCDCTETPPREVISAOENTREGAh.AsInteger = 5;

  edtvlbaseicms.Visible   := cdsCDCTEFINALIDADEEMISSAO.AsSTring = _1;
  edtvlicms.Visible       := cdsCDCTEFINALIDADEEMISSAO.AsSTring = _1;
  gbxcontingencia.Visible := cdsCDCTEFORMAEMISSAO.AsInteger      = 5;

  cdsctetransportadoraAfterScroll(cdsctetransportadora);
end;

procedure TfrmCTE.check_data_previsao_entrega_inicial;
begin
  if edtdtprevisaoi.Visible and cdsDTPREVISAOI.IsNull then
  begin
    pgc.ActivePage := tbsDADOS;
    edtdtprevisaoi.SetFocus;
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+__Previsao+' '+_de+' '+_entrega]), mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmCTE.check_data_previsao_entrega_final;
begin
  if edtdtprevisaof.Visible and cdsDTPREVISAOF.IsNull then
  begin
    pgc.ActivePage := tbsDADOS;
    edtdtprevisaof.SetFocus;
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data+' '+__Previsao+' '+_de+' '+_entrega]), mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmCTE.check_informacao_seguro;
begin
  if (cdsCDCTEMODAL.AsString = _1) and (cdscteinformacaoseguro.RecordCount = 0) then
  begin
    MessageDlg('As informacoes do seguro da carga devem ser preenchidas para o modal rodoviario.', mtInformation, [mbOK], 0);
    abort;
  end;
end;

function TfrmCTE.GerarCTE: Boolean;
var
  ctegerar : TCTEGerar;
begin
  check_data_previsao_entrega_inicial;
  check_data_previsao_entrega_final;
  // retirado na versão 2.8.61.1439 - 2017-03-23
  //check_informacao_seguro;
  ctegerar := TCTEGerar.Create(ACBrCTe, cte);
  try
    result := ctegerar.Gerar;
  finally
    freeandnil(ctegerar);
  end;
end;

function TfrmCTE.checkEnvio: Boolean;
begin
  if cdsNUCHAVENFE.asstring <> '' then
  begin
    messagedlg('Conhecimento já foi enviada.', mtinformation,[mbok], 0);
    Abort;
  end;
  result := True;
end;

procedure TfrmCTE.actgerarpdfExecute(Sender: TObject);
begin
  if CTEGerarPDF(ACBrCTe, cte.dsxml, cte.cdstcte = 2) then
  begin
    messagedlg('Gerado PDF com sucesso.', mtinformation, [mbok], 0);
  end;
end;

procedure TfrmCTE.actexportarcartapdfExecute(Sender: TObject);
begin
  if cdscartacorrecao.RecordCount = 0 then
  begin
    Exit;
  end;
  ACBrCTe.EventoCTe.Evento.Clear;
  ACBrCTe.EventoCTe.LerXMLFromString(cdscartacorrecaoDSXML.AsString);
  GerarPDFCartaCorrecao(ACBrCTe);
end;

procedure TfrmCTE.actexportarxmlcanceladoExecute(Sender: TObject);
begin
//
end;

procedure TfrmCTE.actexportarxmlExecute(Sender: TObject);
var
  diretorio : string;
  arquivo : tstrings;
begin
  if cdsDSXML.IsNull and (ACBrCTe.Conhecimentos.Count = 0) then
  begin
    messagedlg('Não há conhecimento para ser exportado.', mtInformation, [mbok], 0);
    exit;
  end;
  arquivo := tstringlist.create;
  try
    diretorio := QRotinas.getdiretorio;
    if diretorio = '' then
    begin
      exit;
    end;
    if cdscdstcte.asinteger = 2 then
    begin
      arquivo.Text := cdsDSXMLCANCEL.asstring;
    end
    else
    begin
      arquivo.Text := cdsDSXML.asstring;
    end;
    if cdsNUCHAVENFE.AsString <> '' then
    begin
      arquivo.SaveToFile(diretorio+'\'+cdsNUCHAVENFE.AsString+'.xml')
    end
    else
    begin
      arquivo.SaveToFile(diretorio+'\'+cdsCDCTE.AsString+'.xml');
    end;
    messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
  finally
    freeandnil(arquivo);
  end;
end;

procedure TfrmCTE.actenviaremailcartacorrecaoExecute(Sender: TObject);
var
  filename : TStrings;
  email1: string;
  b : TBlobField;
  enviaremail : tenviaremail;
begin
  if (cdscartacorrecao.RecordCount = 0) or (messagedlg('Enviar a Carta de Correção por e-mail?', mtconfirmation, [mbyes, mbno], 0) = mrno) then
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
    filename.Add(ACBrCTe.Configuracoes.Arquivos.PathSalvar+cdsnuchavenfe.asstring+'-ProcEventoCTE.xml');
    cdscartacorrecao.Last;
    b := TBlobField(cdscartacorrecao.FieldByName(_dsxml));
    b.SaveToFile(filename[0]);
    enviaremail := tenviaremail.create;
    try
      enviaremail.botexto := True;
      enviaremail.boexcluir_arquivo := True;
      enviaremail.dsanexo := filename;
      enviaremail.boanexo := filename;
      enviaremail.dsdestinatario := email1;
      enviaremail.dscc := '';
      enviaremail.dstitulo := 'Carta de Correção do CTE '+cdsCDCTE.asstring+' da Empresa '+empresa.nmempresa;
      enviaremail.dsmensagem := 'Segue em anexo a carta de correção.';
      enviaremail.nmremetente := '';
      enviaremail.nmusuario := email.SmtpUser;
      enviaremail.dssenha := email.SmtpPass;
      enviaremail.tpenvio := IntToStr(email.tpenvio);
      enviaremail.enviar_email;
    finally
      freeandnil(enviaremail);
    end;
  finally
    filename.Free;
  end;
end;

procedure TfrmCTE.actenviaremailExecute(Sender: TObject);
begin
  if cdsdsxml.isnull then
  begin
    MessageDlg('Conhecimento eletrônico inexistente.'#13'Não é possível enviar e-mail.', mtInformation, [mbOK], 0);
    Exit;
  end;
  CTEEnviarEmail(ACBrCTe, email);
end;

procedure TfrmCTE.cdsALICMSValidate(Sender: TField);
begin
  cdsVLICMS.AsCurrency := roundto(cdsVLBASEICMS.AsCurrency * cdsALICMS.AsCurrency / 100, -2);
end;

procedure TfrmCTE.cbxcteprevisaoentregaPropertiesChange(Sender: TObject);
var
  cdctetpprevisaoentrega: Integer;
begin
  if cbxcdctetpprevisaoentrega.Text = '' then
  begin
    Exit;
  end;
  cdctetpprevisaoentrega := strtoint(qregistro.CodigodoNome(_ctetpprevisaoentrega, cbxcdctetpprevisaoentrega.Text));
  edtdtprevisaoi.Visible := (cdctetpprevisaoentrega = 2) or (cdctetpprevisaoentrega = 3) or (cdctetpprevisaoentrega = 4) or (cdctetpprevisaoentrega = 5);
  edtdtprevisaof.Visible := cdctetpprevisaoentrega = 5;
  lbldtprevisaoi.Visible := cdctetpprevisaoentrega = 5;
  lbldtprevisaof.Visible := cdctetpprevisaoentrega = 5;
end;

procedure TfrmCTE.cbxcteprevisaoentregahPropertiesChange(Sender: TObject);
var
  cdctetpprevisaoentregah: Integer;
begin
  if cbxcdctetpprevisaoentregah.Text = '' then
  begin
    Exit;
  end;
  cdctetpprevisaoentregah := strtoint(qregistro.CodigodoNome(_ctetpprevisaoentregah, cbxcdctetpprevisaoentregah.Text));
  edthrprevisaoi.Visible := (cdctetpprevisaoentregah = 2) or (cdctetpprevisaoentregah = 3) or (cdctetpprevisaoentregah = 4) or (cdctetpprevisaoentregah = 5);
  edthrprevisaof.Visible := cdctetpprevisaoentregah = 5;
  lblhrprevisaoi.Visible := cdctetpprevisaoentregah = 5;
  lblhrprevisaof.Visible := cdctetpprevisaoentregah = 5;
end;

procedure TfrmCTE.cdscteremetentenotaNewRecord(DataSet: TDataSet);
begin
  cdscteremetentenotaCDCTEREMETENTENOTA.AsString       := GerarCodigo(_cteremetentenota);
  cdscteremetentenotaVLBASEICMS.AsCurrency             := 0;
  cdscteremetentenotaVLICMS.AsCurrency                 := 0;
  cdscteremetentenotaVLBASEICMSSUBTRIB.AsCurrency      := 0;
  cdscteremetentenotaVLICMSSUBTRIB.AsCurrency          := 0;
  cdscteremetentenotaVLPRODUTO.AsCurrency              := 0;
  cdscteremetentenotaVLTOTAL.AsCurrency                := 0;
  cdscteremetentenotaVLFRETE.AsCurrency                := 0;
end;

procedure TfrmCTE.cxgrdbtblvwGrid1DBTableView1NUCHAVENFEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  filename : string;
  acbr : TAcbr;
begin
  if cdscteremetentenota.ReadOnly then
  begin
    Exit;
  end;
  if QRotinas.getfilename(filename) then
  begin
    acbr := TAcbr.Create;
    try
      Acbr.loadnfe(filename);
      if (cdscteremetentenota.State <> dsedit) and (cdscteremetentenota.State <> dsinsert) then
      begin
        cdscteremetentenota.Edit;
      end;
      if acbr.cdemitente = '' then
      begin
        messagedlg('Remetente não está cadastrado na tabela Cliente.', mtinformation, [mbok], 0);
        abort;
      end;
      if acbr.cddestinatario = '' then
      begin
        messagedlg('Destinatário não está cadastrado na tabela Cliente.', mtinformation, [mbok], 0);
        abort;
      end;
      if cds.FieldByName(_cdremetente).AsString <> acbr.cdemitente then
      begin
        cds.FieldByName(_cdremetente).AsString := acbr.cdemitente;
      end;
      if cds.FieldByName(_cddestinatario).AsString <> acbr.cddestinatario then
      begin
        cds.FieldByName(_cddestinatario).AsString := acbr.cddestinatario;
      end;
      cdscteremetentenotaNUCHAVENFE.AsString  := acbr.nuchavenfe;
      cdscteremetentenotaNUSERIE.AsInteger    := acbr.nuserie;
      cdscteremetentenotaNUNOTA.AsInteger     := acbr.nunota;
      cdscteremetentenotaVLTOTAL.AsCurrency   := acbr.vltotal;
      cdscteremetentenotaPSLIQUIDO.AsFloat    := acbr.psliquido;
      cdscteremetentenotaPSBRUTO.AsFloat      := acbr.psbruto;
      cdscteremetentenotaDTEMISSAO.AsDateTime := acbr.dtemissao;
      cdscteremetentenotaVLFRETE.AsCurrency   := acbr.vlfrete;
      cdscteremetentenotadsxml.asstring       := acbr.dsxml;
      cdscteremetentenota.Post;
    finally
      FreeAndNil(acbr);
    end;
  end;
end;

procedure TfrmCTE.actadicionarnotaExecute(Sender: TObject);
begin
  cdsDSOBSERVACAO.AsString := getnota(cdsDSOBSERVACAO.AsString);
end;

procedure TfrmCTE.actadicionarvalorExecute(Sender: TObject);
begin
  cdsVLMERCADORIA.AsCurrency := cdscteremetentenota.Aggregates[1].Value
end;

function TfrmCTE.get_cdtpfrete(cdctetptomador:integer): string;
begin
  if cdctetptomador = 1 then
  begin
    result := _1
  end
  else if cdctetptomador in [2, 3, 5] then
  begin
    result := _0
  end
  else if cdctetptomador = 4 then
  begin
    result := _2;
  end;
end;

function TfrmCTE.get_peso_carga: double;
begin
  result := 0;
  cdscteqtdcarga.First;
  while not cdscteqtdcarga.eof do
  begin
    if nomedocodigo(_unidade, cdscteqtdcargaCDUNIDADE.AsString) = empresa.faturamento.cte.nmunidade then
    begin
      result := cdscteqtdcargaQTITEM.AsFloat;
      break;
    end;
    cdscteqtdcarga.Next;
  end;
end;

procedure TfrmCTE.actcancelarcteExecute(Sender: TObject);
var
  NomeEvento, PathEvento, dsJustificativa : String;
  iLote: Integer;
  filename : TStrings;
  dhEvento : TDatetime;
begin
  cte.verificarSePodeCancelar;
  if messagedlg('Tem certeza que deseja cancelar o CTE '+cdscdcte.AsString+'?', mtconfirmation, [mbyes,mbno], 0) = mrno then
  begin
    exit;
  end;
  check_chave_cte;
  if not GerarCartaCorrecao(dsJustificativa) then
  begin
    exit;
  end;
  ACBrCTe.EventoCTe.Evento.Clear;
  dhEvento := tsBanco;
  with ACBrCTe.EventoCTe.Evento.Add do
  begin
    infEvento.nSeqEvento      := 1; // Para o Evento de Cancelamento: nSeqEvento sempre = 1
    infEvento.chCTe           := Copy(ACBrCTe.Conhecimentos.Items[0].CTe.infCTe.Id, 4, 44);
    infEvento.CNPJ            := empresa.nucnpj;
    infEvento.dhEvento        := dhEvento;
    infEvento.tpEvento        := teCancelamento;
    infEvento.detEvento.xJust := trim(dsJustificativa);
    infEvento.detEvento.nProt := ACBrCTe.Conhecimentos.Items[0].CTe.procCTe.nProt;
  end;
  iLote := 1; // Numero do Lote do Evento
  ACBrCTe.EnviarEvento(iLote);
  { TODO -oEvitar Suporte -cRetorno da Sefaz : registrar erro não previsto no site para monitoramento }
  {try
    ACBrCTe.EnviarEvento(iLote);
  except
    on E: Exception do
    begin
      if ACBrCTe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 631 then
      begin
        messagedlg('Cancelamento já foi registrado na Receita Federal.'#13'O sistema vai processar a consulta do CTE.', mtinformation, [mbok], 0);
        actconsultarExecute(sender);
        exit;
      end
      else
      begin

        // registrar erro não previsto no site para monitoramento
      end;
    end;
  end;}
  if ACBrCTe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat = 631 then
  begin
    messagedlg('Cancelamento já foi registrado na Receita Federal.'#13'O sistema vai processar a consulta do CTE.', mtinformation, [mbok], 0);
    actconsultarExecute(sender);
    exit;
  end;
  if ACBrCTe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
  begin
    Exit;
  end;
  DlgXMLtoTreeView('Cancelar CTE na SEFAZ', UTF8Encode(ACBrCTe.WebServices.EnvEvento.RetWS), true);
  cte.Cancelar;
  PathEvento := ACBrCTe.Configuracoes.Arquivos.PathSalvar;
  NomeEvento := PathEvento + '\' + '110111' + cte.nuchavenfe + '01' + '-procEventoCTe.xml';
  filename   := tstringlist.Create;
  try
    filename.LoadFromFile(NomeEvento);
    cte.dsxmlcancel := filename.Text;
    cte.Update;
  finally
    filename.Clear;
  end;
  Abrir(cdsCDCTE.AsInteger);
end;

procedure TfrmCTE.actinutilizarExecute(Sender: TObject);
var
  sql : TStrings;
  dsJustificativa : String;
  dtemissao : TDate;
  i, cdctei, cdctef : Integer;
begin
  if not Inutilizar_CTE(cdctei, cdctef, dsjustificativa, dtemissao) then
  begin
    Exit;
  end;
  // verificar se existe cte dentro da faixa de número que foram enviados, cancelados, ou inutilzados já confirmados
  if RetornaSQLInteger('select count(*) from cte where cdcte between '+inttostr(cdctei)+' and '+inttostr(cdctef)+' and (cdstcte in (1,2,3) or (cdstcte=4 and dsxml is not null))') > 0 then
  begin
    MessageDlg('Existe(m) número(s) da faixa que não podem ser inutilizados.'#13'Altere a faixa para poder continuar.', mtInformation, [mbOK], 0);
    Exit;
  end;
  sql       := TStringList.Create;
  try // loop para gerar cte inutilizado
    for i := cdctei to cdctef do
    begin // verificar se já existe o cte
      if not CodigoExiste(_cte, IntToStr(i)) then
      begin // gerar o cte
        sql.Add('insert into cte'+
                '(cdctefinalidadeemissao,dtemissao,nustdocumento,cdtpfrete,cdcte,cdusuarioi,cdusuarioa,cdcomputadori,cdcomputadora,cdstcte,cdempresa,tsinclusao,tsalteracao,boremetente)values'+
                '(''0'','+getdtbanco(dtemissao)+',''05'',9,'+inttostr(i)+','+inttostr(usuario.cdusuario)+','+inttostr(usuario.cdusuario)+','+vgcdcomputador+','+vgcdcomputador+',4,'+empresa.cdempresa.tostring+
                ','+QuotedStr(tsBancos)+','+quotedstr(tsBancos)+',''N'');');
      end
      else
      begin
        MessageDlg('Existe(m) número(s) da faixa que não podem ser inutilizados.'#13'Altere a faixa para poder continuar.', mtInformation, [mbOK], 0);
        Exit;
      end;
    end;
    ExecutaScript(sql);
  finally
    FreeAndNil(sql);
  end;
  ACBrCTe.WebServices.Inutiliza(empresa.nucnpj, dsJustificativa, strtoint(FormatDateTime(_yyyy, DtBanco)), 57, 1, cdctei, cdctef);
  // loop para atualizar cte
  sql := TStringList.Create;
  try
    for i := cdctei to cdctef do
    begin // marcar o cte com a o retorno da inutilização
      sql.add('update cte set dsxml='+quotedstr(UTF8Encode(ACBrCTe.WebServices.Inutilizacao.XML_ProcInutCTe))+' where cdcte='+inttostr(i)+';');
      sql.add('update cte set dsjustificativa='+quotedstr(dsJustificativa)+' where cdcte='+inttostr(i)+';');
    end;
    ExecutaScript(sql);
    sql.clear;
    sql.add('insert into cteinutilizacao'+
            '(CDcteINUTILIZACAO,CDcteINICIAL,CDcteFINAL,DTEMISSAO,DSJUSTIFICATIVA,DSXML,NUPROTOCOLO,'+_sqlreg+
             GerarCodigo(_cteinutilizacao)+','+inttostr(cdctei)+','+inttostr(cdctef)+','+getdtbanco(dtemissao)+','+
             quotedstr(dsjustificativa)+','+
             quotedstr(UTF8Encode(ACBrCTe.WebServices.Inutilizacao.RetWS))+','+
             ACBrCTe.WebServices.Inutilizacao.Protocolo+','+
             SQLRegistra+';');
    ExecutaScript(sql);
    MessageDlg('Inutilização enviada com sucesso!', mtInformation, [mbOK], 0);
  finally
    FreeAndNil(sql);
  end;
end;

procedure TfrmCTE.actemaildestinatarioExecute(Sender: TObject);
begin
  case cdsCDCTETPTOMADOR.AsInteger of
    1 : CTEEnviarDestinatario(ACBrCTe, email, cds.fieldbyname(_CDREMETENTE).AsLargeInt);
    2 : CTEEnviarDestinatario(ACBrCTe, email, cds.fieldbyname(_CDEXPEDIDOR).AsLargeInt);
    3 : CTEEnviarDestinatario(ACBrCTe, email, cds.fieldbyname(_CDRECEBEDOR).AsLargeInt);
    4 : CTEEnviarDestinatario(ACBrCTe, email, cds.fieldbyname(_CDDESTINATARIO).AsLargeInt);
    5 : CTEEnviarDestinatario(ACBrCTe, email, cds.fieldbyname(_CDTOMADOR).AsLargeInt);
  end;
end;

procedure TfrmCTE.cxGrid1DBBandedTableView1CDVEICULOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  if cdsctetransportadora.ReadOnly then
    Exit;
  if (cdsctetransportadora.State <> dsedit) and (cdsctetransportadora.State <> dsinsert) then
  begin
    cdsctetransportadora.Edit;
  end;
  cd := localizarveiculo;
  if cd <> 0 then
  begin
    cdsctetransportadoraCDVEICULO.AsInteger := cd;
  end;
end;

procedure TfrmCTE.cdsctetransportadoraCDVEICULOValidate(Sender: TField);
var
  veiculo : TVeiculo;
  transportadora : TTransportadora;
begin
  if cdsctetransportadora.ReadOnly then
  begin
    Exit;
  end;
  if (cdsctetransportadora.State <> dsedit) and (cdsctetransportadora.State <> dsinsert) then
  begin
    cdsctetransportadora.Edit;
  end;
  if sender.asstring = '' then
  begin
    cdsctetransportadoraNUPLACA.clear;
    cdsctetransportadoraNMPROPRIETARIO.clear;
    cdsctetransportadoraTPPESSOA.clear;
    cdsctetransportadora.fieldbyname(_CDPROPRIETARIO).Clear;
    exit;
  end;
  veiculo := tveiculo.Create;
  transportadora := ttransportadora.Create;
  try
    if not veiculo.Select(Sender.asinteger) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__veiculo)]), mterror, [mbok], 0);
      abort;
    end;
    veiculo.check_peso_capacidade;
    veiculo.check_peso_tara;
    veiculo.check_m3_capacidade;
    veiculo.check_uf_veiculo;
    Veiculo.check_rntrc_tamanho;
    veiculo.check_tpveiculo;
    veiculo.check_tprodado;
    veiculo.Check_tpproprietario;
    cdsctetransportadoraNUPLACA.asstring := veiculo.nuplaca;
    cdsctetransportadora.fieldbyname(_CDPROPRIETARIO).AsLargeint := veiculo.cdtransportadora;
    transportadora.Select(veiculo.cdtransportadora);
    if (transportadora.tppessoa = _j) and (ValidarIE(transportadora.nuinscest, qregistro.StringdoCodigo(_uf, transportadora.cduf, _sguf)) <> '') then
    begin
      MessageDlg('Número da Inscrição Estadual inválida do dono do veículo.', mtInformation, [mbOK], 0);
      Abort;
    end;
    cdsctetransportadoraNMPROPRIETARIO.AsString := transportadora.nmtransportadora;
    cdsctetransportadoraTPPESSOA.AsString := transportadora.tppessoa;
    set_calculo(Sender);
  finally
    freeandnil(veiculo);
    freeandnil(transportadora);
  end;
end;

procedure TfrmCTE.actrpaExecute(Sender: TObject);
begin
  if (cdsctetransportadora.fieldbyname(_CDPROPRIETARIO).AsString <> '') and
     (cdsctetransportadoraTPPESSOA.AsString = _f) and
     (NomedoCodigo(_transportadora, cdsctetransportadora.fieldbyname(_CDPROPRIETARIO).AsString, _nuinss) = '') then
  begin
    MessageDlg('Número do INSS não está preenchido no Proprietário.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if empresa.faturamento.cte.boseguradora and (cdsctetransportadoraNUSEGURADORA.asstring = '') then
  begin
    MessageDlg('Número da seguradora é um campo obrigatório na guia Rodoviário.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if cte.nuchavenfe = '' then
  begin
    MessageDlg('CTE ainda não foi enviado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (cte.boimpressaorpa = _s) and empresa.faturamento.cte.boimpressaorpa and (AssinaturaDigital(4) = 0) then
  begin
    exit;
  end;
  if ImpimirRelatorioPadrao1(326, cdsCDCTE.AsString, false) then
  begin
    cte.boimpressaorpa := _S;
    cte.Update;
    Abrir(cte.cdcte);
  end;
end;

procedure TfrmCTE.cdsCDCTETPTOMADORValidate(Sender: TField);
begin
  if sender.AsInteger <> 5 then
  begin
    cds.fieldbyname(_CDTOMADOR).Clear;
  end;
  set_cfop;
  cdsCDTPFRETE.AsString := get_cdtpfrete(sender.Asinteger);
  cdsCDITCONTCLIENTE.Clear;
  atualizarContatocliente;
  if not cdsCDCONDPAGTO.IsNull then
  begin
    cdsCDCONDPAGTOValidate(cdsCDCONDPAGTO);
  end;
end;

procedure TfrmCTE.set_cfop;
  function get_codigo_tomador:string;
  begin
    case cdsCDCTETPTOMADOR.AsInteger of
      1: result := cds.fieldbyname(_CDREMETENTE).AsString;
      2: result := cds.fieldbyname(_CDEXPEDIDOR).AsString;
      3: result := cds.fieldbyname(_CDRECEBEDOR).AsString;
      4: result := cds.fieldbyname(_CDDESTINATARIO).AsString;
      5: result := cds.fieldbyname(_CDTOMADOR).AsString;
    end;
  end;
var
  observacao, cdcliente, nmrmatividade: string;
  cdufr, cdufd, cduft : integer;
  procedure check_preenchimento_ramo_atividade_no_tomador_de_servico;
  begin
    if (nmrmatividade = '') and (cdcliente <> '') then
    begin
      MessageDlg('O ramo de atividade não está definido no tomador de serviço.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  function uf_remetente_dentro_e_uf_destinatario_dentro:Boolean;
  begin
    result := (cdufr = empresa.endereco.cduf) and (cdufd = empresa.endereco.cduf);
  end;
  procedure set_uf_remetente_dentro_e_uf_destinatario_dentro;
  begin
    cdsnuSTICMS.AsString := _40;
    cds.FieldByName(_vlbaseicms).AsCurrency := 0;
    cds.FieldByName(_vlicms).AsCurrency := 0;
    cds.FieldByName(_alicms).AsCurrency := 0;
    observacao           := 'Isenção do ICMS Item 144 anexo I do RICMS/MG';
    if nmrmatividade = UpperCase(_INDUSTRIA) then
    begin
      cdsCDCFOP.AsInteger := 5352
    end
    else if nmrmatividade = UpperCase(_COMERCIO)  then
    begin
      cdsCDCFOP.AsInteger := 5353
    end
    else
    begin
      cdsCDCFOP.AsInteger   := 5357;
      cdsnuSTICMS.AsString  := _00;
      cdsALICMS.AsCurrency  := 18;
      observacao            := '';
    end;
  end;
  function uf_remetente_dentro_e_uf_destinatario_fora:Boolean;
  begin
    result := (cdufr = empresa.endereco.cduf) and (cdufd <> empresa.endereco.cduf);
  end;
  procedure set_uf_remetente_dentro_e_uf_destinatario_fora;
    function uf_tomador_fora:Boolean;
    begin
      result := cduft <> empresa.endereco.cduf;
    end;
    function uf_tomador_dentro:Boolean;
    begin
      result := cduft = empresa.endereco.cduf;
    end;
  begin
    if uf_tomador_fora then
    begin
      cdsnuSTICMS.AsString := _00;
      if nmrmatividade = UpperCase(_INDUSTRIA) then
      begin
        cdsCDCFOP.AsInteger  := 6352;
        cdsALICMS.AsCurrency := empresa.get_aliquota_destino(cdufd);
      end
      else if nmrmatividade = UpperCase(_COMERCIO) then
      begin
        cdsCDCFOP.AsInteger  := 6353;
        cdsALICMS.AsCurrency := empresa.get_aliquota_destino(cdufd);
      end
      else
      begin
        cdsCDCFOP.AsInteger  := 6357;
        cdsALICMS.AsCurrency := 18;
      end
    end
    else if uf_tomador_dentro then
    begin
      if nmrmatividade = UpperCase(_INDUSTRIA) then
      begin
        cdsCDCFOP.AsInteger := 6352
      end
      else if nmrmatividade = UpperCase(_COMERCIO)  then
      begin
        cdsCDCFOP.AsInteger := 6353
      end
      else
      begin
        cdsCDCFOP.AsInteger := 6357;
      end;
      cdsnuSTICMS.AsString := _00;
      cdsALICMS.AsCurrency := empresa.get_aliquota_destino(cdufd);
    end;
  end;
  function uf_remetente_fora_e_uf_destinatario_dentro:Boolean;
  begin
    result := (cdufr <> empresa.endereco.cduf) and (cdufd = empresa.endereco.cduf);
  end;
  procedure set_uf_remetente_fora_e_uf_destinatario_dentro;
  begin
    cdsCDCFOP.AsInteger  := 6932;
    cdsNUSTICMS.AsString := _90;
  end;
  function uf_remetente_fora_e_uf_destinatario_fora_e_igual_entre_si:Boolean;
  begin
    result := (cdufr <> empresa.endereco.cduf) and (cdufd <> empresa.endereco.cduf) and (cdufr = cdufd);
  end;
  procedure set_uf_remetente_fora_e_uf_destinatario_fora_e_igual_entre_si;
  begin
    cdsCDCFOP.AsInteger  := 5932;
    cdsNUSTICMS.AsString := _90;
  end;
  function uf_remetente_fora_e_uf_destinatario_fora_e_diferente_entre_si:Boolean;
  begin
    result := (cdufr <> empresa.endereco.cduf) and (cdufd <> empresa.endereco.cduf) and (cdufr <> cdufd);
  end;
  procedure set_uf_remetente_fora_e_uf_destinatario_fora_e_diferente_entre_si;
  begin
    cdsCDCFOP.AsInteger  := 6932;
    cdsNUSTICMS.AsString := _90;
  end;
begin
  observacao    := '';
  cdcliente     := get_codigo_tomador;
  cdufr         := qregistro.inteirodocodigo(_cliente    , cds.fieldbyname(_CDREMETENTE).AsString   , _cduf);
  cdufd         := qregistro.inteirodocodigo(_cliente    , cds.fieldbyname(_CDDESTINATARIO).AsString, _cduf);
  cduft         := qregistro.inteirodocodigo(_cliente    , cdcliente                 , _cduf);
  nmrmatividade := NomedoCodigo(_rmatividade, NomedoCodigo(_cliente, cdcliente, _cdrmatividade));
  check_preenchimento_ramo_atividade_no_tomador_de_servico;
  if uf_remetente_dentro_e_uf_destinatario_dentro then
  begin
    set_uf_remetente_dentro_e_uf_destinatario_dentro
  end
  else if uf_remetente_dentro_e_uf_destinatario_fora then
  begin
    set_uf_remetente_dentro_e_uf_destinatario_fora
  end
  else if uf_remetente_fora_e_uf_destinatario_dentro then
  begin
    set_uf_remetente_fora_e_uf_destinatario_dentro
  end
  else if uf_remetente_fora_e_uf_destinatario_fora_e_igual_entre_si then
  begin
    set_uf_remetente_fora_e_uf_destinatario_fora_e_igual_entre_si
  end
  else if uf_remetente_fora_e_uf_destinatario_fora_e_diferente_entre_si then
  begin
    set_uf_remetente_fora_e_uf_destinatario_fora_e_diferente_entre_si;
  end;
  if cdsNUSTICMS.asstring = _40 then
  begin
    cds.FieldByName(_vlbaseicms).AsCurrency := 0;
    cds.FieldByName(_vlicms).AsCurrency := 0;
    cds.FieldByName(_alicms).AsCurrency := 0;
  end;
  if empresa.tpregime = _s then
  begin
    cdsNUSTICMS.AsString := _ss;
    cds.FieldByName(_vlbaseicms).AsCurrency := 0;
    cds.FieldByName(_vlicms).AsCurrency := 0;
    cds.FieldByName(_alicms).AsCurrency := 0;
  end;
end;

procedure TfrmCTE.set_nfe;
begin
  tbvcteremetentenotaNUCTETPDOCOUTROS.Visible  := False;
  tbvcteremetentenotaDSOUTROS.Visible          := False;
  tbvcteremetentenotaNUROMANEIO.Visible        := False;
  tbvcteremetentenotaNUPEDIDO.Visible          := False;
  tbvcteremetentenotaNUDOCFISCALICMS.Visible   := False;
  tbvcteremetentenotaNUCHAVENFE.Visible        := true;
  tbvcteremetentenotaNUSERIE.Visible           := True;
  tbvcteremetentenotaNUNOTA.Visible            := True;
  tbvcteremetentenotaDTEMISSAO.Visible         := True;
  tbvcteremetentenotaVLBASEICMS.Visible        := false;
  tbvcteremetentenotaVLICMS.Visible            := false;
  tbvcteremetentenotaVLBASEICMSSUBTRIB.Visible := false;
  tbvcteremetentenotaVLICMSSUBTRIB.Visible     := false;
  tbvcteremetentenotaVLPRODUTO.Visible         := false;
  tbvcteremetentenotaVLTOTAL.Visible           := True;
  tbvcteremetentenotaCDCFOP.Visible            := false;
  tbvcteremetentenotaPSLIQUIDO.Visible         := True;
  tbvcteremetentenotaPSBRUTO.Visible           := True;
  tbvcteremetentenotaDTPREVISAO.Visible        := True;
end;

procedure TfrmCTE.set_nota;
begin
  tbvcteremetentenotaNUCTETPDOCOUTROS.Visible  := False;
  tbvcteremetentenotaDSOUTROS.Visible          := False;
  tbvcteremetentenotaNUROMANEIO.Visible        := True;
  tbvcteremetentenotaNUPEDIDO.Visible          := True;
  tbvcteremetentenotaNUDOCFISCALICMS.Visible   := True;
  tbvcteremetentenotaNUCHAVENFE.Visible        := false;
  tbvcteremetentenotaNUSERIE.Visible           := True;
  tbvcteremetentenotaNUNOTA.Visible            := True;
  tbvcteremetentenotaDTEMISSAO.Visible         := True;
  tbvcteremetentenotaVLBASEICMS.Visible        := True;
  tbvcteremetentenotaVLICMS.Visible            := True;
  tbvcteremetentenotaVLBASEICMSSUBTRIB.Visible := True;
  tbvcteremetentenotaVLICMSSUBTRIB.Visible     := True;
  tbvcteremetentenotaVLPRODUTO.Visible         := True;
  tbvcteremetentenotaVLTOTAL.Visible           := True;
  tbvcteremetentenotaCDCFOP.Visible            := True;
  tbvcteremetentenotaPSLIQUIDO.Visible         := false;
  tbvcteremetentenotaPSBRUTO.Visible           := True;
  tbvcteremetentenotaDTPREVISAO.Visible        := True;
end;

procedure TfrmCTE.set_outros;
begin
  tbvcteremetentenotaNUCTETPDOCOUTROS.Visible  := True;
  tbvcteremetentenotaDSOUTROS.Visible          := True;
  tbvcteremetentenotaNUROMANEIO.Visible        := false;
  tbvcteremetentenotaNUPEDIDO.Visible          := false;
  tbvcteremetentenotaNUDOCFISCALICMS.Visible   := false;
  tbvcteremetentenotaNUCHAVENFE.Visible        := false;
  tbvcteremetentenotaNUSERIE.Visible           := false;
  tbvcteremetentenotaNUNOTA.Visible            := True;
  tbvcteremetentenotaDTEMISSAO.Visible         := True;
  tbvcteremetentenotaVLBASEICMS.Visible        := false;
  tbvcteremetentenotaVLICMS.Visible            := false;
  tbvcteremetentenotaVLBASEICMSSUBTRIB.Visible := false;
  tbvcteremetentenotaVLICMSSUBTRIB.Visible     := false;
  tbvcteremetentenotaVLPRODUTO.Visible         := false;
  tbvcteremetentenotaVLTOTAL.Visible           := True;
  tbvcteremetentenotaCDCFOP.Visible            := false;
  tbvcteremetentenotaPSLIQUIDO.Visible         := false;
  tbvcteremetentenotaPSBRUTO.Visible           := false;
  tbvcteremetentenotaDTPREVISAO.Visible        := True;
end;

procedure TfrmCTE.set_peso_medida;
  function existe_peso_medida:boolean;
  begin
    result := false;
    cdscteqtdcarga.First;
    while not cdscteqtdcarga.eof do
    begin
      if (cdscteqtdcargaCDUNIDADE.asstring = qregistro.CodigodoNome(_unidade, empresa.faturamento.cte.nmunidade)) and
         (cdscteqtdcargaCDCTETPMEDIDA.AsString = qregistro.CodigodoNome(_ctetpmedida, _peso)) then
      begin
        cdscteqtdcarga.edit;
        result := true;
        break;
      end;
      cdscteqtdcarga.next;
    end;
  end;
  procedure inserir_peso_medida;
  begin
    cdscteqtdcarga.insert;
    cdscteqtdcargaCDUNIDADE.AsString     := qregistro.CodigodoNome(_unidade, empresa.faturamento.cte.nmunidade);
    cdscteqtdcargaCDCTETPMEDIDA.AsString := qregistro.CodigodoNome(_ctetpmedida, _peso);
  end;
var
  c : TClientDataSet;
  peso : double;
begin
  peso := 0;
  c    := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdscteremetentenota, false);
    c.First;
    while not c.Eof do
    begin
      peso := peso + c.fieldbyname(_psbruto).AsFloat;
      c.Next;
    end;
    if not existe_peso_medida then
    begin
      inserir_peso_medida;
    end;
    cdscteqtdcargaQTITEM.AsFloat := peso; // atualizar_peso_medida
  finally
    FreeAndNil(c);
  end;
end;

procedure TfrmCTE.edtcdtomadorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdtomadorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmCTE.edtcdtomadorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := LocalizarCliente(true);
  if cd <> 0 then
  begin
    cds.fieldbyname(_CDTOMADOR).AsLargeInt := cd;
  end
end;

procedure TfrmCTE.cdsCDTOMADORValidate(Sender: TField);
begin
  if (Sender.AsString = '') or (cdsCDCTETPTOMADOR.AsInteger <> 5) then
  begin
    Exit;
  end;
  if not cte.tomador.select(Sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not cte.tomador.ConsistirMunicipio(Sender.AsString) then
  begin
    sender.FocusControl;
    abort;
  end;
  if cte.tomador.cdpais = 0 then
  begin
    messagedlg('Cadastro do tomador não está preenchido o país.', mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsNMtomador.AsString := cte.tomador.nmcliente;
  lblnmtomador.Hint := cte.tomador.hint_rzsocial;
  if (cdscteinformacaoseguro.RecordCount > 0) and (cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO.AsInteger = 5) and (cte.tomador.cdfornecedorseguradora <> 0) then
  begin
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.tomador.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.tomador.nuapolice;
  end;
  if (empresa.faturamento.cte.cdtpcteresponsavelseguro = _5) and (cdscteinformacaoseguro.recordcount = 0) and (cte.tomador.cdfornecedorseguradora <> 0) then
  begin
    cdscteinformacaoseguro.insert;
    cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.tomador.cdfornecedorseguradora;
    cdscteinformacaoseguroNUAPOLICE.AsString := cte.tomador.nuapolice;
  end;
  set_cfop;
  if cdsCDCTETPTOMADOR.AsInteger = 5 then
  begin
    cdsCDITCONTCLIENTE.Clear;
  end;
  atualizarContatocliente;
  ConfigurarCondpagtoTpcobrancaTomador;
end;

procedure TfrmCTE.cdsCDTPCOBRANCAValidate(Sender: TField);
begin
  cdsduplicata.DisableControls;
  try
    cdsduplicata.First;
    while not cdsduplicata.Eof do
    begin
      cdsduplicata.Edit;
      if Sender.IsNull then
      begin
        cdsduplicata.FieldByName(_cdtpcobranca).clear;
      end
      else
      begin
        cdsduplicata.FieldByName(_cdtpcobranca).AsInteger := Sender.AsInteger;
      end;
      cdsduplicata.Post;
      cdsduplicata.Next;
    end;
  finally
    cdsduplicata.EnableControls;
  end;
end;

procedure TfrmCTE.cbxctetptomadorPropertiesChange(Sender: TObject);
var
  codigo: integer;
begin
  if not ((cds.State = dsedit) or (cds.State = dsinsert)) then
  begin
    Exit;
  end;
  codigo := StrToInt(qregistro.CodigodoNome(_ctetptomador, cbxcdctetptomador.Text));
  set_tomador(codigo);
end;

procedure TfrmCTE.set_tomador(codigo: Integer);
begin
  lbltomador.Visible   := codigo = 5;
  edtcdtomador.Visible := lbltomador.Visible;
  lblnmtomador.Visible := lbltomador.Visible;
end;

procedure TfrmCTE.cxGrid1DBBandedTableView1CDVEICULOCARRETAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  if cdsctetransportadora.ReadOnly then
    Exit;
  if (cdsctetransportadora.State <> dsedit) and (cdsctetransportadora.State <> dsinsert) then
  begin
    cdsctetransportadora.Edit;
  end;
  cd := localizarveiculo;
  if cd <> 0 then
  begin
    cdsctetransportadoraCDVEICULOCARRETA.AsInteger := cd;
  end;
end;

procedure TfrmCTE.cdsctetransportadoraCDVEICULOCARRETAValidate(Sender: TField);
var
  veiculo : TVeiculo;
begin
  if cdsctetransportadora.ReadOnly then
  begin
    Exit;
  end;
  if (cdsctetransportadora.State <> dsedit) and (cdsctetransportadora.State <> dsinsert) then
  begin
    cdsctetransportadora.Edit;
  end;
  if sender.asstring = '' then
  begin
    cdsctetransportadoraNUPLACACARRETA.clear;
    exit;
  end;
  veiculo := tveiculo.Create;
  try
    if not veiculo.Select(Sender.asinteger) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__veiculo)]), mterror, [mbok], 0);
      abort;
    end;
    veiculo.check_uf_veiculo;
    Veiculo.check_rntrc_tamanho;
    veiculo.check_tpveiculo;
    veiculo.check_tprodado;
    veiculo.Check_tpproprietario;
    cdsctetransportadoraNUPLACACARRETA.asstring := veiculo.nuplaca;
  finally
    freeandnil(veiculo);
  end;
end;

procedure TfrmCTE.set_calculo(Sender: TField);
  procedure check_vlfrete;
  begin
    if (not empresa.faturamento.cte.bovlfretemaior) and (cdsctetransportadoraVLFRETE.AsCurrency >= cdsVLFRETE.AsCurrency) then
    begin
      MessageDlg('Valor do Frete deve ser menor do que o valor do Frete do CTE.', mtinformation, [mbok], 0);
      Abort;
    end;
  end;
var
  rpa : TRPA;
  vlbaseirrf : Currency;
begin
  check_vlfrete;
  if cdsctetransportadoraTPPESSOA.AsString = _F then
  begin
    rpa := TRPA.create;
    try
      cdsctetransportadoraVLSESTSENAT.AsCurrency := rpa.ValorSestSenat(cdsctetransportadoraVLFRETE.AsCurrency, cdsDTEMISSAO.AsDateTime);
      cdsctetransportadoraVLINSS.AsCurrency      := rpa.ValorINSS(cdsctetransportadora.fieldbyname(_CDPROPRIETARIO).AsString,
                                                                  cdsctetransportadoraVLFRETE.AsCurrency,
                                                                  cdsDTEMISSAO.AsDateTime,
                                                                  cdscdcte.asstring,
                                                                  _cte);
      cdsctetransportadoraVLIRRF.AsCurrency := rpa.ValorIRRF(cdsctetransportadora.fieldbyname(_CDPROPRIETARIO).AsString,
                                                             cdsctetransportadoraVLFRETE.AsCurrency,
                                                             vlbaseirrf,
                                                             cdsDTEMISSAO.AsDateTime,
                                                             cdscdcte.asstring,
                                                             _cte);
    finally
      freeandnil(rpa);
    end;
  end
  else
  begin
    cdsctetransportadoraVLSESTSENAT.AsCurrency := 0;
    cdsctetransportadoraVLINSS.AsCurrency      := 0;
    cdsctetransportadoraVLIRRF.AsCurrency      := 0;
  end;
  if (uppercase(sender.FieldName) = uppercase(_vlfrete)) and (empresa.financeiro.rpa.pradiantamento > 0) then
  begin
    cdsctetransportadoraVLADIANTAMENTO.AsCurrency := roundto(
                                                     (cdsctetransportadoravlfrete.ascurrency * empresa.financeiro.rpa.pradiantamento / 100) -
                                                     cdsctetransportadoraVLIRRF.AsCurrency -
                                                     cdsctetransportadoraVLINSS.AsCurrency -
                                                     cdsctetransportadoraVLSESTSENAT.AsCurrency, -2);
  end;
  cdsctetransportadoraVLSALDO.AsCurrency     := cdsctetransportadoraVLFRETE.AsCurrency +
                                                cdsctetransportadoraVLACRESCIMO.AsCurrency -
                                                cdsctetransportadoraVLADIANTAMENTO.AsCurrency -
                                                cdsctetransportadoraVLIRRF.AsCurrency -
                                                cdsctetransportadoraVLINSS.AsCurrency -
                                                cdsctetransportadoraVLSESTSENAT.AsCurrency -
                                                cdsctetransportadoraVLDESCONTO.AsCurrency;
  if empresa.faturamento.cte.bosomarpedagiosaldo then
  begin
    cdsctetransportadoraVLSALDO.AsCurrency     := cdsctetransportadoraVLSALDO.AsCurrency + cdsctetransportadoraVLPEDAGIO.AsCurrency;
  end;
  if cdsctetransportadoraVLSALDO.AsCurrency < 0 then
  begin
    MessageDlg('Valor do Saldo não pode ser negativo.'#13'Altere os valores parar poder continuar.', mtinformation, [mbok], 0);
    Abort;
  end;
  if cdsctetransportadoraVLSALDO.AsCurrency < trunc(cdsctetransportadoraVLFRETE.AsCurrency * 0.1) then
  begin
    MessageDlg('Valor do Saldo não pode ser menor que 10% do valor do frete.'#13'Altere os valores parar poder continuar.', mtinformation, [mbok], 0);
    Abort;
  end;
end;

procedure TfrmCTE.set_campos_remetente_nota;
begin
  tbvcteremetentenotaNUNOTA.Caption := 'Nº Nota';
  if cdsCDCTETPINFORMACAOREMETENTE.AsString = _1 then
  begin
    set_nota
  end
  else if cdsCDCTETPINFORMACAOREMETENTE.AsString = _2 then
  begin
    set_nfe
  end
  else if cdsCDCTETPINFORMACAOREMETENTE.AsString = _3 then
  begin
    set_outros;
    tbvcteremetentenotaNUNOTA.Caption := 'Nº';
  end;
end;

procedure TfrmCTE.cdsctetransportadoraBeforePost(DataSet: TDataSet);
begin
  if cdsctetransportadora.fieldbyname(_cdtransportadora).isnull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_da+' '+_Transportadora]), mtinformation, [mbok], 0);
    pgc.activepage := tbsrodoviario;
    cdsctetransportadora.fieldbyname(_cdtransportadora).focuscontrol;
    abort;
  end;
  if DataSet.fieldbyname(_cdproprietario).isnull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Codigo+' '+_da+' '+_Proprietario]), mtinformation, [mbok], 0);
    pgc.activepage := tbsrodoviario;
    DataSet.fieldbyname(_cdproprietario).focuscontrol;
    abort;
  end;
  if cdsctetransportadoraVLSALDO.AsCurrency < 0 then
  begin
    MessageDlg('Valor do Saldo não pode ser negativo.'#13'Altere os valores parar poder continuar.', mtinformation, [mbok], 0);
    pgc.activepage := tbsrodoviario;
    Abort;
  end;
  registro.set_update(cdsctetransportadora);
end;

procedure TfrmCTE.cdscteremetentenotaAfterPost(DataSet: TDataSet);
begin
  cdsVLMERCADORIA.AsCurrency := cdscteremetentenota.Aggregates[1].Value;
  if varisnull(cdscteremetentenota.Aggregates[0].Value) then
  begin
    cdsVLFRETE.AsCurrency      := 0;
  end
  else
  begin
    cdsVLFRETE.AsCurrency      := cdscteremetentenota.Aggregates[0].Value;
  end;
  set_peso_medida;
end;

procedure TfrmCTE.cdscteremetentenotaBeforePost(DataSet: TDataSet);
  procedure checknuchavenfe;
  begin
    if length(cdscteremetentenotaNUCHAVENFE.AsString) < 44 then
    begin
      messagedlg('Tamanho do Número da Chave Eletrônica está menor que 44 dígitos.', mtinformation, [mbok], 0);
      cdscteremetentenotaNUCHAVENFE.FocusControl;
      abort;
    end;
    if length(cdscteremetentenotaNUCHAVENFE.AsString) > 44 then
    begin
      messagedlg('Tamanho do Número da Chave Eletrônica está maior que 44 dígitos.', mtinformation, [mbok], 0);
      cdscteremetentenotaNUCHAVENFE.FocusControl;
      abort;
    end;
    if formatdatetime(_yymm, cdscteremetentenotaDTEMISSAO.asdatetime) <> copy(cdscteremetentenotaNUCHAVENFE.asstring, 3, 4) then
    begin
      messagedlg('Data de emissão inválido de acordo com o chave da NFE.'#13+
                 'O ano e mês da data de emissão ('+formatdatetime(_yymm, cdscteremetentenotaDTEMISSAO.asdatetime)+
                 ') da nota não confere com a posição 3 até a 6 ('+copy(cdscteremetentenotaNUCHAVENFE.asstring, 3, 4)+').', mtinformation, [mbok], 0);
      cdscteremetentenotaDTEMISSAO.FocusControl;
      abort;
    end;
    if FormatarTextoEsquerda(cdscteremetentenotaNUSERIE.asstring, 3, _0) <> copy(cdscteremetentenotaNUCHAVENFE.asstring, 23, 3) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13+
                 'A série ('+FormatarTextoEsquerda(cdscteremetentenotaNUSERIE.asstring, 3, _0)+
                 ') da nota não confere com a posição 23 até a 25 ('+copy(cdscteremetentenotaNUCHAVENFE.asstring, 23, 3)+').', mtinformation, [mbok], 0);
      cdscteremetentenotaNUCHAVENFE.FocusControl;
      abort;
    end;
    if FormatarTextoEsquerda(cdscteremetentenotaNUNOTA.AsString, 9,_0) <> copy(cdscteremetentenotaNUCHAVENFE.asstring, 26, 9) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13+
                 'O número ('+FormatarTextoEsquerda(cdscteremetentenotaNUNOTA.AsString, 9,_0)+
                 ') da nota não confere com a posição 26 até a 34 ('+copy(cdscteremetentenotaNUCHAVENFE.asstring, 26, 9)+').', mtinformation, [mbok], 0);
      cdscteremetentenotaNUCHAVENFE.FocusControl;
      abort;
    end;
  end;
begin
  if DataSet.State = dsinsert then
  begin
    cdsDSOBSERVACAO.AsString := cdsDSOBSERVACAO.AsString+DataSet.fieldbyname(_nunota).AsString+#13;
  end;
  if cdsCDCTETPINFORMACAOREMETENTE.AsString = _1 then
  begin
    cdscteremetentenotaNUDOCFISCALICMS.AsString := _01;
    if cdscteremetentenotaCDCFOP.isnull then
    begin
      messagedlg('CFOP é um campo obritário.',mtInformation, [mbOK], 0);
      cdscteremetentenotaCDCFOP.focuscontrol;
      abort;
    end;
  end
  else if cdsCDCTETPINFORMACAOREMETENTE.AsString = _2 then
  begin
    if not cdscteremetentenotaNUCHAVENFE.IsNull then
    begin
      cdscteremetentenotaNUDOCFISCALICMS.AsString := _55;
      checknuchavenfe;
    end
  end
  else if cdsCDCTETPINFORMACAOREMETENTE.AsString = _3 then
  begin
  end;
  if (cdsCDCTETPINFORMACAOREMETENTE.AsString = _1) or (cdsCDCTETPINFORMACAOREMETENTE.AsString = _2) then
  begin
    if cdscteremetentenotaNUSERIE.IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_de+' '+__serie]), mtinformation, [mbok], 0);
      Abort;
    end;
    if cdscteremetentenotaNUNOTA.IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_da+' '+_nota]), mtinformation, [mbok], 0);
      Abort;
    end;
  end;
  if cdsCDCTETPINFORMACAOREMETENTE.AsString = _3 then
  begin
    if cdscteremetentenotaNUNOTA.IsNull then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_do+' '+_documento]), mtinformation, [mbok], 0);
      Abort;
    end;
    if (cdscteremetentenotaNUCTETPDOCOUTROS.AsString = _99) and cdscteremetentenotaDSOUTROS.IsNull then
    begin
      MessageDlg('Descrição do documento é um campo obrigatório para o tipo '+tbvcteremetentenotaNUCTETPDOCOUTROS.Caption+'.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  registro.set_update(cdscteremetentenota);
end;

procedure TfrmCTE.cdsBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cds);
end;

procedure TfrmCTE.set_vlservico(Sender: TField);
begin
  cdsvlservico.ascurrency := cdsVLFRETE.AsCurrency +
                             cdsVLPEDAGIO.AsCurrency +
                             cdsVLADVALOREM.AsCurrency +
                             cdsVLOUTRO.AsCurrency +
                             cdsVLICMSSERVICO.AsCurrency +
                             cdsVLSEGURO.AsCurrency;
  cdsVLRECEBER.AsCurrency := cdsVLSERVICO.AsCurrency;
end;

procedure TfrmCTE.cdsVLRECEBERValidate(Sender: TField);
begin
  if (cdsnusticms.asstring = _00) or (cdsnusticms.asstring = _20) or (cdsnusticms.asstring = _60) or (cdsnusticms.asstring = _90) then
  begin
    cdsVLBASEICMS.AsCurrency := cdsVLRECEBER.AsCurrency;
  end
  else
  begin
    cdsVLBASEICMS.AsCurrency := 0;
  end;
  ConfigurarCondpagtoTpcobrancaTomador;
  if not cdsCDCONDPAGTO.IsNull then
  begin
    cdsCDCONDPAGTOValidate(cdsCDCONDPAGTO);
  end;
end;

procedure TfrmCTE.check_nota(Sender: TField);
  function makesql:string;
  begin
    result := 'select count(*) '+
              'from cteremetentenota n '+
              'inner join cte c on c.cdcte=n.cdcte '+
              'where n.nunota='+cdscteremetentenotaNUNOTA.AsString+' and n.nuserie=' +cdscteremetentenotaNUSERIE.AsString+' and c.cdremetente='+cds.fieldbyname(_CDREMETENTE).AsString;
    if cdsCDCTE.AsString <> '' then
    begin
      result := result +' and c.cdcte<>'+cdsCDCTE.AsString;
    end;
  end;
begin
  if (not cdscteremetentenotaNUNOTA.IsNull) and (not cdscteremetentenotaNUSERIE.isnull) then
  begin
    if cds.fieldbyname(_CDREMETENTE).IsNull then
    begin
      MessageDlg('Preencha o campo Remetente '#13'antes de preencher as informações da nota.', mtInformation, [mbOK], 0);
      cds.fieldbyname(_CDREMETENTE).FocusControl;
      Abort;
    end;
    if (RetornaSQLInteger(makesql)>0)
      and (MessageDlg('Número da Nota repetido.'#13+_msg_deseja_Continuar, mtInformation, [mbyes, mbno], 0) = mrno) then
    begin
      sender.FocusControl;
      Abort;
    end;
  end;
end;

procedure TfrmCTE.check_preenchimento_duplicata;
begin
  if (cdsCDCTEFINALIDADEEMISSAO.AsString = _0) and (cdsduplicata.RecordCount = 0) then
  begin
    messagedlg('Contas a Receber é obrigatório para a Finalidade de Emissão '+cbxcdctefinalidadeemissao.Text+'.', mtinformation, [mbok], 0);
    pgc.ActivePage := tbsservicos;
    cbxcdcondpagto.SetFocus;
    abort;
  end;
end;

procedure TfrmCTE.dspUpdateError(Sender: TObject; DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind; var Response: TResolverResponse);
begin
  ShowMessage('Erro: '+E.Message);
end;

procedure TfrmCTE.cdsCDCTEFINALIDADEEMISSAOValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Finalidade+' '+__emissao+' '+_de+' '+_CTE]), mtinformation, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  edtvlbaseicms.Visible := Sender.AsString = _1;
  edtvlicms.Visible     := sender.AsString = _1;
  lblnuchavenfereferenciado.Visible := Sender.AsString <> _2;
  edtnuchavenfereferenciado.Visible := Sender.AsString <> _2;
  rdgtptomadoricms.Visible := Sender.AsString = _3;
  lblnuchavecteanulacao.Visible     := (Sender.AsString = _2) or (sender.AsString = _3);
  edtnuchavecteanulacao.Visible     := (Sender.AsString = _2) or (sender.AsString = _3);
  lbldtemissaocteanulacao.Visible   := (Sender.AsString = _2) or (sender.AsString = _3);
  edtdtemissaocteanulacao.Visible   := (Sender.AsString = _2) or (sender.AsString = _3);
end;

procedure TfrmCTE.cdsCDCONDPAGTOValidate(Sender: TField);
begin
  if cdsCDCONDPAGTO.AsString = '' then
  begin
    cdsduplicata.First;
    if (cdsduplicata.RecordCount > 0) and (CodigodoCampo(_baixa, cdsduplicataCDDUPLICATA.AsString, _cdduplicata) <> '') then
    begin
      MessageDlg('Não é possível gerar contas a receber.'#13'O contas a receber '+cdsduplicataNUDUPLICATA.AsString+' possui baixa.', mtInformation, [mbok], 0);
      Abort;
    end;
    while not cdsduplicata.Eof do
    begin
      cdsduplicata.Delete;
    end;
    exit;
  end;
  if cdsVLRECEBER.AsCurrency <= 0 then
  begin
    messagedlg('Valor a receber não possui valor.'#13'Preencha o valor a receber para definir a Condição de Pagamento.', mtinformation, [mbok], 0);
    cdsCDCONDPAGTO.OnValidate := nil;
    cbxcdcondpagto.Text       := '';
    cdsCDCONDPAGTO.AsString   := '';
    cdsVLRECEBER.FocusControl;
    cdsCDCONDPAGTO.OnValidate := cdsCDCONDPAGTOValidate;
    abort;
  end;
  cte.condpagto.Select(sender.AsInteger);
  cte.condpagto.itcondpagto.Ler(Sender.AsInteger);
  if cte.condpagto.itcondpagto.Count = 0 then
  begin
    messagedlg('Condição de Pagamento foi cadastrada sem a definição de dias na grade.'#13'Favor alterar a condição de pagamento para poder continuar.', mtinformation, [mbok], 0);
    cdsCDCONDPAGTO.FocusControl;
    abort;
  end;
  cdsCDCONDPAGTO.OnValidate := nil;
  GerarDuplicata;
  cdsCDCONDPAGTO.OnValidate := cdsCDCONDPAGTOValidate;
end;

procedure TfrmCTE.cdsduplicataBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsduplicata);
end;

procedure TfrmCTE.cdsNUSTICMSValidate(Sender: TField);
begin
  SetVisibleImpostos;
  if (cdsnuSTICMS.AsString = _00) or (cdsnuSTICMS.AsString = _20) or (cdsnuSTICMS.AsString = _60) then
  begin
    cdsVLBASEICMS.AsCurrency := cdsVLRECEBER.AsCurrency;
  end
  else if (cdsnuSTICMS.AsString = _41) or (cdsnuSTICMS.AsString = _40) or (cdsnuSTICMS.AsString = _51) or (cdsnuSTICMS.AsString = _90) then
  begin
    cdsVLBASEICMS.AsCurrency := 0;
    cdsVLICMS.AsCurrency     := 0;
    cdsALICMS.AsCurrency     := 0;
  end;
end;

procedure TfrmCTE.cdsPRADVALOREMValidate(Sender: TField);
begin
  cdsVLADVALOREM.AsCurrency := (cdsVLMERCADORIA.AsCurrency)* sender.AsFloat / 100;
  if cdsALICMS.AsFloat > 0 then
  begin
    cdsVLADVALOREM.AsCurrency := (cdsVLADVALOREM.AsCurrency / (1 - (cdsALICMS.AsFloat / 100)));
  end;
end;

procedure TfrmCTE.cdsduplicataNewRecord(DataSet: TDataSet);
begin
  cdsduplicataVLDUPLICATA.AsCurrency := 0;
  cdsduplicataVLBAIXA.AsCurrency     := 0;
  cdsduplicataVLDESCONTO.AsCurrency  := 0;
  cdsduplicataVLDEVOLUCAO.AsCurrency := 0;
  cdsduplicataVLABATIMENTO.AsCurrency:= 0;
  cdsduplicataVLSALDO.AsCurrency     := 0;
  cdsduplicataVLDEDUCAO.AsCurrency   := 0;
  cdsduplicataVLACRESCIMO.AsCurrency := 0;
  cdsduplicataVLRECEBIDO.AsCurrency  := 0;
  cdsduplicataVLMULTA.AsCurrency     := 0;
  cdsduplicataVLJUROS.AsCurrency     := 0;
  cdsduplicataCDTPDUPLICATA.AsString := _1;
end;

procedure TfrmCTE.cdsduplicataNUCNTCUSTOValidate(Sender: TField);
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

procedure TfrmCTE.cdsduplicataNUPLCONTAValidate(Sender: TField);
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

procedure TfrmCTE.tbvduplicataDblClick(Sender: TObject);
begin
  actabrirduplicataExecute(actabrirduplicata);
end;

procedure TfrmCTE.tbvduplicataNUCNTCUSTOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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
  if (cdsduplicata.State <> dsedit) and (cdsduplicata.State <> dsinsert) then
  begin
    cdsduplicata.Edit;
  end;
  cdsduplicataNUcntcusto.AsString := cd;
end;

procedure TfrmCTE.tbvduplicataNUPLCONTAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

procedure TfrmCTE.actabrirduplicataExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsduplicata);
end;

procedure TfrmCTE.actabrirremetenteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(_cdremetente, TAction(Sender), cds, cds);
end;

procedure TfrmCTE.lblNMREMETENTEDblClick(Sender: TObject);
begin
  actabrirremetente.onExecute(actabrirremetente);
end;

procedure TfrmCTE.actabrirdestinatarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(_cddestinatario, TAction(Sender), cds, cds);
end;

procedure TfrmCTE.lblNMDESTINATARIODblClick(Sender: TObject);
begin
  actabrirdestinatario.onExecute(actabrirdestinatario);
end;

procedure TfrmCTE.actabrirtomadorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(_cdtomador, TAction(Sender), cds, cds);
end;

procedure TfrmCTE.lblnmtomadorDblClick(Sender: TObject);
begin
  actabrirtomador.onExecute(actabrirtomador);
end;

procedure TfrmCTE.actabrirexpedidorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(_cdexpedidor, TAction(Sender), cds, cds);
end;

procedure TfrmCTE.actabrirrecebedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(_cdrecebedor, TAction(Sender), cds, cds);
end;

procedure TfrmCTE.lblNMEXPEDIDORDblClick(Sender: TObject);
begin
  actabrirexpedidor.onExecute(actabrirexpedidor);
end;

procedure TfrmCTE.lblnmrecebedorDblClick(Sender: TObject);
begin
  actabrirrecebedor.onExecute(actabrirrecebedor);
end;

procedure TfrmCTE.actadicionarduplicataExecute(Sender: TObject);
begin
  cdsDSOBSERVACAO.AsString := getduplicata(cdsDSOBSERVACAO.AsString);
end;

procedure TfrmCTE.cbxcteformaemissaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  gbxcontingencia.Visible := DisplayValue = 'CONTINGENCIA FS-DA';
end;

procedure TfrmCTE.actemailremetenteExecute(Sender: TObject);
begin
  CTEEnviarDestinatario(ACBrCTe, email, cds.fieldbyname(_CDREMETENTE).AsLargeInt);
end;

procedure TfrmCTE.actimportaxmlExecute(Sender: TObject);
var
  filename : string;
begin
  if not QRotinas.getfilename(filename) then // Abre a tela de diálogo
  begin
    exit;
  end;
  ACBrCTe.Conhecimentos.LoadFromFile(filename);
  cds.ReadOnly := false;
  try
    cds.edit;
    cdsDSXML.AsString      := ACBrCTe.Conhecimentos.Items[0].XML;
    cdsNUCHAVENFE.AsString := ACBrCTe.Conhecimentos.Items[0].CTe.procCTe.chCTe;
    cdsCDSTCTE.AsInteger   := 3;
    cds.Post;
    cds.ApplyUpdates(0);
  finally
    cds.ReadOnly := true;
  end;
  Abrir(cdsCDCTE.AsInteger);
end;

procedure TfrmCTE.actimprimircartaExecute(Sender: TObject);
begin
  if cdscartacorrecao.RecordCount = 0 then
  begin
    Exit;
  end;
  ACBrCTe.EventoCTe.Evento.Clear;
  ACBrCTe.EventoCTe.LerXMLFromString(cdscartacorrecaoDSXML.AsString);
  CTEImprimirCartaCorrecao(ACBrCTe);
end;

procedure TfrmCTE.cdsCDSTCTEValidate(Sender: TField);
begin
  case sender.AsInteger of
    1, 3 : cdsNUSTDOCUMENTO.AsString := _00;
    2 : cdsNUSTDOCUMENTO.AsString := _02;
    4 : cdsNUSTDOCUMENTO.AsString := _05;
  end;
end;

procedure TfrmCTE.atualizarContatocliente;
  function getcdcliente(cdctetptomador:integer):string;
  begin
    case CDCTETPTOMADOR of
      1: result := cds.fieldbyname(_CDREMETENTE).AsString;
      2: result := cds.fieldbyname(_CDEXPEDIDOR).AsString;
      3: result := cds.fieldbyname(_CDRECEBEDOR).AsString;
      4: result := cds.fieldbyname(_CDDESTINATARIO).AsString;
      5: result := cds.fieldbyname(_CDTOMADOR).AsString;
    end;
  end;
var
  cdcliente : string;
begin
  cdsitcontcliente.Close;
  sdsitcontcliente.Close;
  cdcliente := getcdcliente(cdsCDCTETPTOMADOR.AsInteger);
  if cdcliente = '' then
  begin
    Exit;
  end;
  sdsitcontcliente.ParamByName(_cdcliente).AsString := cdcliente;
  sdsitcontcliente.ParamByName(_cdempresa).ASlargeInt := empresa.cdempresa;
  cdsitcontcliente.Open;
end;

procedure TfrmCTE.actconsultasalvarExecute(Sender: TObject);
var
  arquivo : tstrings;
  diretorio, nuchave : string;
begin
  nuchave := cte.nuchavenfe;
  if nuchave = '' then
  begin
    if ACBrCTe.Conhecimentos.Count = 0 then
    begin
      actvalidarExecute(actvalidar);
    end;
    nuchave := ACBrCTe.Conhecimentos.Items[0].CTe.infCTe.ID;
    delete(nuchave, 1, 3);
  end;
  if not(InputQuery('Consulta CT', 'Chave:', nuchave)) then
  begin
    exit;
  end;
  if FormatarTextoEsquerda(inttostr(cte.cdcte), 9,_0) <> copy(nuchave, 26, 9) then
  begin
    messagedlg('Número da Chave Eletrônica inválido.'#13'O número do cte deve constar no número da chave.', mtinformation, [mbok], 0);
    abort;
  end;
  ACBrCTe.WebServices.Consulta.CTeChave := nuChave;
  ACBrCTe.WebServices.Consulta.Executar;
  DlgXMLtoTreeView('Consulta CTE na SEFAZ', UTF8Encode(ACBrCTe.WebServices.Consulta.RetWS), true);
  if pos('<cStat>101</cStat>', UTF8Encode(ACBrCTe.WebServices.Consulta.RetWS)) > 0 then
  begin
    if (cte.cdstcte = 3) and
       (MessageDlg('CT-e está cancelado na SEFAZ mas não está cancelado no sistema.'#13'Processar cancelamento no sistema?', mtConfirmation, [mbYes,mbNo], 0) = mryes) then
    begin
      cte.VerificarSePodeCancelar;
      if cte.Cancelar then
      begin
        nuchave := LowerCase(ACBrCTe.Conhecimentos.Items[0].CTe.procCTe.chCTe);
        if Pos(_cte, nuchave)> 0 then
        begin
          Delete(nuchave, 1, 3);
        end;
        cte.nuchavenfe := nuchave;
        cte.dsxmlcancel := ACBrCTe.WebServices.Consulta.RetWS;
        cte.Update;
        Abrir(cte.cdcte);
      end;
    end;
    Exit;
  end;
  if pos('<cStat>100</cStat>', UTF8Encode(ACBrCTe.WebServices.Consulta.RetWS)) > 0 then
  begin
    if messagedlg('Salvar xml do CT-e no banco de dados?', mtconfirmation,[mbyes,mbno], 0) = mryes then
    begin
      nuchave := LowerCase(ACBrCTe.Conhecimentos.Items[0].CTe.procCTe.chCTe);
      if Pos(_cte, nuchave)> 0 then
      begin
        Delete(nuchave, 1, 3);
      end;
      cte.cdstcte := 3;
      cte.nuchavenfe := nuchave;
      cte.dsxml := ACBrCTe.Conhecimentos.Items[0].XML;
      cte.Update;
      Abrir(cte.cdcte);
    end
    else if messagedlg('Salvar xml do CT-e no computador?', mtconfirmation,[mbyes,mbno], 0) = mryes then
    begin
      arquivo := tstringlist.create;
      try
        diretorio := QRotinas.getdiretorio;
        if diretorio = '' then
        begin
          exit;
        end; // salvar
        arquivo.Text := ACBrCTe.Conhecimentos.Items[0].XML;
        arquivo.SaveToFile(diretorio+'\'+ACBrCTe.Conhecimentos.Items[0].CTe.infCTe.ID+'.xml');
        messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
      finally
        freeandnil(arquivo);
      end;
    end;
  end;
end;

procedure TfrmCTE.FormCreate(Sender: TObject);
begin
  email := TEmail_.Create;
  tbvduplicataNUPLCONTA.Visible := empresa.financeiro.boplconta;
  tbvduplicataNMPLCONTA.Visible := empresa.financeiro.boplconta;
  tbvduplicataNUcntcusto.Visible := empresa.financeiro.bocntcusto;
  tbvduplicataNMcntcusto.Visible := empresa.financeiro.bocntcusto;
  tbscartacorrecao.TabVisible := False;
  actcartacorrecao.Visible    := False;
  set_abrirtabela;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure TfrmCTE.cbxcdcondpagtoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_condpagto+_c);
end;

procedure TfrmCTE.cbxcdtpcobrancaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpcobranca);
end;

procedure TfrmCTE.cdscteqtdcargaBeforePost(DataSet: TDataSet);
begin
  if cdscteqtdcargaCDCTETPMEDIDA.IsNull then
  begin
    pgc.ActivePage := tbsnfe;
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Medida]), mtinformation, [mbok], 0);
    cdscteqtdcargaCDCTETPMEDIDA.FocusControl;
    Abort;
  end;
  registro.set_update(cdscteqtdcarga);
end;

procedure TfrmCTE.actcartacorrecaoExecute(Sender: TObject);
begin
  if RetornaSQLInteger('select nSeqEvento from cte where cdcte='+cdscdcte.AsString) + 1 > 99 then
  begin
    Messagedlg('Excedeu o número de carta de correção para este Ct-e.', mtinformation, [mbok], 0);
    exit;
  end;
  if Gerar_Carta_Correcao_cte(cdscdcte.AsString, cdsNUCHAVENFE.asstring, ACBrCTe, email) then
  begin
    Abrir(cdsCDCTE.AsInteger);
  end;
end;

procedure TfrmCTE.actadicionarrodoviarioExecute(Sender: TObject);
begin
  cdsDSOBSERVACAO.AsString := getrodoviario(cdsDSOBSERVACAO.AsString);
end;

procedure TfrmCTE.acteditarrpaExecute(Sender: TObject);
var
  boenabled : Boolean;
begin
  if cdsctetransportadora.RecordCount = 0 then
  begin
    Exit;
  end;
  boenabled := acteditar.Enabled;
  if not boenabled then
  begin
    actEditar.Enabled := True;
    cds.AfterScroll   := nil;
  end;
  //actEditarExecute(actEditar);

  registro.set_readonly_dados(self, false);
  cds.edit;

  cds.AfterScroll := cdsAfterScroll;
  if ExibirCTETransportadora(cdsctetransportadora) then
  begin
    actSalvarExecute(sender)
  end
  else
  begin
    actCancelarExecute(sender);
  end;
  if not boenabled then
  begin
    actEditar.Enabled := False;
  end;
end;

procedure TfrmCTE.actabrirveiculoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsctetransportadora);
end;

procedure TfrmCTE.tbvctetransportadoraCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdveiculo then
  begin
    actabrirveiculoExecute(actabrirveiculo)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdveiculocarreta then
  begin
    actabrirveiculo2Execute(actabrirveiculo2)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdtransportadora then
  begin
    actabrirtransportadoraExecute(actabrirtransportadora);
  end;
end;

procedure TfrmCTE.actabrirveiculo2Execute(Sender: TObject);
begin
  frmMain.AbrirDireto(_cdveiculocarreta, TAction(Sender), cds, cdsctetransportadora);
end;

procedure TfrmCTE.actabrirtransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsctetransportadora);
end;

procedure TfrmCTE.cdscteremetentenotaDTEMISSAOValidate(Sender: TField);
begin
  if Sender.AsDateTime > edtdtemissao.Date then
  begin
    MessageDlg('Data de emissão da nota fiscal não pode ser maior do a data do CTE.'#13'Altere o valor para continuar.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmCTE.actgerarautpagtoExecute(Sender: TObject);                              
begin
  if cte.gerarAutpagto then
  begin
    MessageDlg('Contas a Pagar gerado!', mtInformation, [mbok], 0);
    Abrir(cdsCDCTE.AsInteger);
  end;
end;

procedure TfrmCTE.cdsctetransportadoraAfterScroll(DataSet: TDataSet);
begin                          
  actgerarautpagto.Enabled := (cdsCDSTCTE.AsString = _3) and
                              cdsctetransportadoraCDAUTPAGTO.IsNull and
                              (cdsctetransportadora.fieldbyname(_CDPROPRIETARIO).AsString <> '') and
                              (cdsctetransportadoraVLFRETE.AsCurrency > 0);
  actbaixar.Enabled        := (cdsCDSTCTE.AsString = _3) and (not cdsctetransportadoraCDAUTPAGTO.IsNull) and (ValordoCodigo(_autpagto, cdsctetransportadoraCDAUTPAGTO.AsString, _vlsaldo)>0);
end;

procedure TfrmCTE.actbaixarExecute(Sender: TObject);
begin
  if BaixarDocumento(_autpagto, cdsctetransportadoraCDAUTPAGTO.asInteger, cdsctetransportadoraVLADIANTAMENTO.AsCurrency, cdsctetransportadoraVLSALDO.AsCurrency) then
  begin
    abrir(cdsCDcte.AsInteger);
  end;
end;

procedure TfrmCTE.actgerarduplicataExecute(Sender: TObject);
begin
  if cdsCDCONDPAGTO.AsString = '' then
  begin
    cdsduplicata.First;
    if (cdsduplicata.RecordCount > 0) and (CodigodoCampo(_baixa, cdsduplicataCDDUPLICATA.AsString, _cdduplicata) <> '') then
    begin
      MessageDlg('Não é possível gerar contas a receber.'#13'O contas a receber '+cdsduplicataNUDUPLICATA.AsString+' possui baixa.', mtInformation, [mbok], 0);
      Abort;
    end;
    while not cdsduplicata.Eof do
    begin
      cdsduplicata.Delete;
    end;
    exit;
  end;
  if cdsVLRECEBER.AsCurrency <= 0 then
  begin
    messagedlg('Valor a receber não possui valor.'#13'Preencha o valor a receber para definir a Condição de Pagamento.', mtinformation, [mbok], 0);
    abort;
  end;
  if RetornaSQLInteger('select count(*) from itcondpagto where cdcondpagto='+cdsCDCONDPAGTO.AsString) = 0 then
  begin
    messagedlg('Condição de Pagamento foi cadastrada sem a definição de dias na grade.'#13'Favor alterar a condição de pagamento para poder continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  try
    cdsduplicata.ReadOnly := False;
    cds.ReadOnly          := False;
    cdsduplicata.Edit;
    GerarDuplicata;
    cdsduplicata.ApplyUpdates(0);
    MessageDlg('Contas a Receber gerado.', mtInformation, [mbOK], 0);
  finally
    cdsduplicata.ReadOnly := true;
    cds.ReadOnly := true;
  end;
end;

procedure TfrmCTE.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmCTE.cdsCDCTEFORMAEMISSAOValidate(Sender: TField);
begin
  if Sender.asstring = _2 then
  begin
    MessageDlg('A forma de emissão '+cbxcdcteformaemissao.Text+' está desativada.'#13'Selecione outra forma de emissão para continuar.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmCTE.txtcdrpaDblClick(Sender: TObject);
begin
  actabrirrpa.onExecute(actabrirrpa);
end;

procedure TfrmCTE.actabrirrpaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmCTE.actconfigurarExecute(Sender: TObject);
begin
  if dlgsetNFEAcbr then
  begin
    LerConfiguracao;
  end;
end;

procedure TfrmCTE.cdsctetransportadoraNewRecord(DataSet: TDataSet);
begin
  cdsctetransportadoraDSOBSERVACAO.asstring := empresa.faturamento.cte.dsobservacaorpa;
end;

procedure TfrmCTE.cdsctetransportadoraVLFRETEPESOValidate(Sender: TField);
begin
  if sender.ascurrency = 0 then
  begin
    cdsctetransportadoravlfrete.ascurrency := sender.ascurrency;
    exit;
  end;
  cdsctetransportadoravlfrete.ascurrency := sender.ascurrency * get_peso_carga;
end;

procedure TfrmCTE.actexportaxmlemissorExecute(Sender: TObject);
var
  diretorio: string;
begin
  if ACBrCTe.Conhecimentos.Count > 0 then
  begin
    diretorio := QRotinas.getdiretorio(diretorio);
    if diretorio <> '' then
    begin
      ACBrCTe.Conhecimentos.Items[0].gravarxml(diretorio+'\'+inttostr(ACBrCTe.Conhecimentos.Items[0].CTe.Ide.nCT)+'.xml');
      ShowMessage('Arquivo salvo com sucesso.');
    end;
  end
end;

procedure TfrmCTE.edtcdremetentePropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblNMREMETENTE.Hint := cte.remetente.hint_rzsocial;
  end;
end;

procedure TfrmCTE.edtcddestinatarioPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblNMDESTINATARIO.Hint := cte.destinatario.hint_rzsocial;
  end;
end;

procedure TfrmCTE.edtcdtomadorPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblnmtomador.Hint := cte.tomador.hint_rzsocial;
  end;
end;

procedure TfrmCTE.edtcdexpedidorPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblNMEXPEDIDOR.Hint := cte.expedidor.hint_rzsocial;
  end;
end;

procedure TfrmCTE.edtcdrecebedorPropertiesEditValueChanged(Sender: TObject);
begin
  if (cds.State = dsedit) or (cds.State = dsinsert) then
  begin
    lblnmrecebedor.Hint := cte.recebedor.hint_rzsocial;
  end;
end;

procedure TfrmCTE.edtcodigoPropertiesEditValueChanged(Sender: TObject);
begin
  lblNMREMETENTE.Hint    := qregistro.get_Hint(_cliente, cds.fieldbyname(_CDREMETENTE).asstring);
  lblNMDESTINATARIO.Hint := qregistro.get_Hint(_cliente, cds.fieldbyname(_CDDESTINATARIO).asstring);
  lblnmtomador.Hint      := qregistro.get_Hint(_cliente, cds.fieldbyname(_CDTOMADOR).asstring);
  lblNMEXPEDIDOR.Hint    := qregistro.get_Hint(_cliente, cds.fieldbyname(_CDEXPEDIDOR).asstring);
  lblnmrecebedor.Hint    := qregistro.get_Hint(_cliente, cds.fieldbyname(_CDRECEBEDOR).asstring);
end;

procedure TfrmCTE.cdsBOINDICADORLOTACAOValidate(Sender: TField);
begin
  tbvctetransportadora.OptionsData.Appending := chkboindicadorlotacao.Checked;
  tbvctetransportadora.OptionsData.CancelOnExit := chkboindicadorlotacao.Checked;
  tbvctetransportadora.OptionsData.Deleting := chkboindicadorlotacao.Checked;
  tbvctetransportadora.OptionsData.DeletingConfirmation := chkboindicadorlotacao.Checked;
  tbvctetransportadora.OptionsData.Inserting := chkboindicadorlotacao.Checked;
end;

procedure TfrmCTE.grdctetransportadoraDBBandedTableView1CDVEICULOCARRETA2PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  if cdsctetransportadora.ReadOnly then
  begin
    Exit;
  end;
  if (cdsctetransportadora.State <> dsedit) and (cdsctetransportadora.State <> dsinsert) then
  begin
    cdsctetransportadora.Edit;
  end;
  cd := localizarveiculo;
  if cd <> 0 then
  begin
    cdsctetransportadoraCDVEICULOCARRETA2.AsInteger := cd;
  end;
end;

procedure TfrmCTE.InserirSeguradora;
begin
  if (cds.FieldByName(_cdctefinalidadeemissao).AsString = _0) and
     (cdscteinformacaoseguro.recordcount = 0) and
     (Empresa.faturamento.cte.cdfornecedorseguradora <> '') and
     (Empresa.faturamento.cte.cdtpcteresponsavelseguro <> '') then
  begin
    cdscteinformacaoseguro.Insert;
    cdscteinformacaoseguro.Post;
  end;
end;

procedure TfrmCTE.cdsctetransportadoraCDVEICULOCARRETA2Validate(Sender: TField);
var
  veiculo : tveiculo;
begin
  if cdsctetransportadora.ReadOnly then
  begin
    Exit;
  end;
  if (cdsctetransportadora.State <> dsedit) and (cdsctetransportadora.State <> dsinsert) then
  begin
    cdsctetransportadora.Edit;
  end;
  if sender.asstring = '' then
  begin
    cdsctetransportadoraNUPLACACARRETA2.clear;
    exit;
  end;
  veiculo := tveiculo.Create;
  try
    if not veiculo.Select(Sender.asInteger) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__veiculo)]), mterror, [mbok], 0);
      abort;
    end;
    veiculo.check_uf_veiculo;
    Veiculo.check_rntrc_tamanho;
    veiculo.check_tpveiculo;
    veiculo.check_tprodado;
    veiculo.Check_tpproprietario;
    cdsctetransportadoraNUPLACACARRETA2.asstring := veiculo.nuplaca;
  finally
    freeandnil(veiculo);
  end;
end;

procedure TfrmCTE.grdcteqtdcargaDBTableView1CDCTETPMEDIDAPropertiesInitPopup(Sender: TObject);
begin
  abrir_tabela(_ctetpmedida);
end;

procedure TfrmCTE.cdscteinformacaoseguroBeforePost(DataSet: TDataSet);
begin
  if cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO.isnull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Responsavel]), mtinformation, [mbok], 0);
    pgc.activepage := tbsseguro;
    cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO.FocusControl;
    abort;
  end;
  if cdscteinformacaoseguroNUAPOLICE.isnull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_da+' '+__Apolice]), mtinformation, [mbok], 0);
    pgc.activepage := tbsseguro;
    cdscteinformacaoseguroNUAPOLICE.FocusControl;
    abort;
  end;
  if cdscteinformacaoseguroVLCARGA.isnull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Valor+' '+_da+' '+_Carga]), mtinformation, [mbok], 0);
    pgc.activepage := tbsseguro;
    cdscteinformacaoseguroVLCARGA.FocusControl;
    abort;
  end;
  registro.set_update(cdscteinformacaoseguro);
end;

procedure TfrmCTE.cdscteinformacaoseguroNewRecord(DataSet: TDataSet);
begin
  cdscteinformacaoseguroCDCTEINFORMACAOSEGURO.AsString    := GerarCodigo(_cteinformacaoseguro);
  cdscteinformacaoseguroVLCARGA.AsCurrency                := cdsVLMERCADORIA.AsCurrency;
  cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsString := Empresa.faturamento.cte.cdfornecedorseguradora;
  cdscteinformacaoseguroNUAPOLICE.asstring                := empresa.faturamento.cte.nuapolice;
  cdscteinformacaoseguroCDTPCTERESPONSAVELSEGURO.AsString := Empresa.faturamento.cte.cdtpcteresponsavelseguro;
end;

procedure TfrmCTE.actredefinirExecute(Sender: TObject);
begin
  if RedefinirParcelamentoDuplicata('', cdsCDCTE.AsString) then
  begin
    Abrir(cdsCDCTE.AsInteger);
  end;
end;

procedure TfrmCTE.edtnucontratoKeyPress(Sender: TObject; var Key: Char);
begin
  ApenasNumericos(key)
end;

procedure TfrmCTE.NextControl(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmCTE.check_numero_chave_em_outro_cte;
var
  cdcte : string;
begin
  cdcte := tcteremetentenota.ObterCTEdeNFERepetido(cdscteremetentenotaNUCHAVENFE.asstring, cdscteremetentenotaCDCTEREMETENTENOTA.asinteger);
  if (cdcte <> '') and (MessageDlg('Número de chave já usado no CTE '+cdcte+'.'#13'Continuar assim mesmo?', mtConfirmation, [mbNo, mbyes], 0) = mrNo) then
  begin
    cdscteremetentenotaNUCHAVENFE.FocusControl;
    abort;
  end;
end;

procedure TfrmCTE.cdscteremetentenotaNUCHAVENFEValidate(Sender: TField);
var
  c : TClientDataSet;
begin
  if cdscteremetentenota.RecordCount = 0 then
  begin
    exit;
  end;
  cdscteremetentenotaNUCHAVENFE.OnValidate := nil;
  c := tclientdataset.Create(nil);
  try
    c.CloneCursor(cdscteremetentenota, true);
    c.First;
    while not c.Eof do
    begin
      if (Sender.AsString = c.FieldByName(_nuchavenfe).AsString) and (cdscteremetentenotaCDCTEREMETENTENOTA.AsString <> c.FieldByName(_CDCTEREMETENTENOTA).AsString) then
      begin
        MessageDlg('Número de chave repetida neste CTE.', mtInformation, [mbOK], 0);
        Sender.FocusControl;
        Abort;
      end;
      c.Next;
    end;
    if Modulo11(Copy(Sender.asstring, 1, 43)) <> Copy(Sender.asstring, 44, 1) then
    begin
      messagedlg('Dígito verificador da da Chave Eletrônica inválido.'#13+
                 'O dígito ('+Modulo11(Copy(Sender.asstring, 1, 43))+
                 ') da chave da nota não confere com a posição 44 ('+Copy(Sender.asstring, 44, 1)+').', mtinformation, [mbok], 0);
      Sender.FocusControl;
      abort;
    end;
    if cte.remetente.cdcliente = 0 then
    begin
      cte.remetente.Select(cte.cdremetente);
    end;
    if removercaracteres(cte.remetente.nucnpj) <> copy(sender.asstring, 7, 14) then
    begin
      messagedlg('Número da Chave Eletrônica inválido.'#13+
                 'O CNPJ ('+removercaracteres(cte.remetente.nucnpj)+') do remetente da nota não confere com a posição 7 até a 20 ('+copy(sender.asstring, 7, 14)+').', mtinformation, [mbok], 0);
      //sender.FocusControl;
      //abort;
    end;
    check_numero_chave_em_outro_cte;
  finally
    freeandnil(c);
    Sender.OnValidate := cdscteremetentenotaNUCHAVENFEValidate;
  end;
end;

procedure TfrmCTE.actcopiarExecute(Sender: TObject);
var
  codigo : integer;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  cte.cdcte := cdscdcte.asinteger;
  codigo    := cte.copiar;
  if codigo = 0 then
  begin
    Exit;
  end;
  ACBrCTe.Conhecimentos.Clear;
  registro.RegistroAbrir(codigo);
  if cdscdcondpagto.asstring <> '' then
  begin
    actgerarduplicataExecute(actgerarduplicata);
  end;
end;

procedure TfrmCTE.excluir_texto_subcontratada;
var
  i : Integer;
begin
  for i := 0 to memdsobservacao.Lines.Count - 1 do
  begin
    if Copy(memdsobservacao.Lines[i], 1, 13) = 'Subcontratada' then
    begin
      memdsobservacao.Lines.Delete(i);
    end;
  end;
end;

procedure TfrmCTE.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmCTE.grdctedocumentoanteriorDBTableView1CDCLIENTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : LargeInt;
begin
  cd := LocalizarCliente;
  if cd <> 0 then
  begin
    cdsctedocumentoanterior.fieldbyname(_CDCLIENTE).AsLargeInt := cd;
  end
end;

procedure TfrmCTE.cdsctedocumentoanteriorCDCLIENTEValidate(Sender: TField);
var
  cliente : TCliente;
begin
  if Sender.AsString = '' then
  begin
    cdsctedocumentoanteriorRZSOCIAL.Clear;
    Exit;
  end;
  cliente := tcliente.create;
  try
    if not cliente.select(Sender.AsLargeInt) then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cliente)]), mterror, [mbok], 0);
      pgc.ActivePage := tbsdocumentoanterior;
      Sender.FocusControl;
      Abort;
    end;
    cliente.stcliente.Select(cliente.cdstcliente);
    if cliente.stcliente.bogerarinfo <> _s then
    begin
      messagedlg('Cliente está no status '+cliente.stcliente.nmstcliente+#13'que não permite ser inserido no '+Exibe+'.'#13'Escolha outro código para prosseguir.', mtinformation, [mbok], 0);
      pgc.ActivePage := tbsdocumentoanterior;
      sender.FocusControl;
      abort;
    end;
    cdsctedocumentoanteriorRZSOCIAL.AsString  := cliente.rzsocial;
  finally
    freeandnil(cliente)
  end;
end;

procedure TfrmCTE.cdsCDCTETPINFORMACAOREMETENTEValidate(Sender: TField);
begin
  set_campos_remetente_nota;
end;

procedure TfrmCTE.cdsCDCTETPSERVICOValidate(Sender: TField);
begin
  tbsdocumentoanterior.TabVisible := cdsCDCTETPSERVICO.AsInteger = 2;
end;

procedure TfrmCTE.cdsctedocumentoanteriorBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsctedocumentoanterior);
end;

procedure TfrmCTE.cdsctedocumentoanteriorNewRecord(DataSet: TDataSet);
begin
  cdsctedocumentoanteriorCDCTEDOCUMENTOANTERIOR.AsString := GerarCodigo(_ctedocumentoanterior);
end;

procedure TfrmCTE.cdsitctedocumentoanteriorNewRecord(DataSet: TDataSet);
begin
  cdsitctedocumentoanteriorCDITCTEDOCUMENTOANTERIOR.AsString := GerarCodigo(_itctedocumentoanterior);
end;

procedure TfrmCTE.cdsitctedocumentoanteriorBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitctedocumentoanterior);
end;

procedure TfrmCTE.check_chave_cte;
begin
  if cdsCDSTCTE.AsString = _1 then
  begin
    Exit;
  end;
  if cdsNUCHAVENFE.AsString <> ACBrCTe.Conhecimentos.Items[0].CTe.procCTe.chCTe then
  begin
    MessageDlg('A chave do xml do cte ('+ACBrCTe.Conhecimentos.Items[0].CTe.procCTe.chCTe+') é diferente da chave armazenada no banco ('+cdsNUCHAVENFE.AsString+').'#13'Favor entrar em contato com a Quipos para reportar o erro.', mtInformation, [mbok], 0);
    Abort;
  end;
  if formatdatetime(_yymm, cdsDTEMISSAO.asdatetime) <> copy(cdsNUCHAVENFE.asstring, 3, 4) then
  begin
    messagedlg('Número da Chave Eletrônica inválido.'#13'O ano e mês da data de emissão ('+formatdatetime(_yymm, cdsDTEMISSAO.asdatetime)+
               ') não confere com a posição 3 até a 6 ('+copy(cdsNUCHAVENFE.asstring, 3, 4)+').', mtinformation, [mbok], 0);
    abort;
  end;
  if FormatarTextoEsquerda(cdscdcte.AsString, 9,_0) <> copy(cdsnuchavenfe.asstring, 26, 9) then
  begin
    messagedlg('Número da Chave Eletrônica inválido.'#13'O número ('+FormatarTextoEsquerda(cdscdcte.AsString, 9,_0)+') do cte não confere com a posição 26 até a 34 ('+copy(cdsnuchavenfe.asstring, 26, 9)+').', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmCTE.cdsduplicataDTVENCIMENTOValidate(Sender: TField);
begin
  cdsduplicataDTPRORROGACAO.AsDateTime := cdsduplicataDTVENCIMENTO.AsDateTime;
end;

function TfrmCTE.Novo(cditembarque: string): Boolean;
var
  q : tclassequery;
begin
  result         := true;
  frmprogressbar := TFrmprogressbar.Create(nil);
  q              := tclassequery.create('select i.*'+
                                              ',e.vlfretepeso'+
                                              ',e.cdtransportadora '+
                                        'from embarque e '+
                                        'left join itembarque i on i.cdempresa=e.cdempresa and i.cdembarque=e.cdembarque '+
                                        'where i.cdcte is null and i.cdempresa='+empresa.cdempresa.tostring+' and i.cditembarque='+cditembarque); // ler dados do embarque
  try 
    actNovoExecute(actnovo);
    cds.FieldByName(_cdremetente).AsString    := q.q.fieldbyname(_cdremetente).AsString;
    cds.FieldByName(_cddestinatario).AsString := q.q.fieldbyname(_cddestinatario).AsString;
    cds.FieldByName(_cdctetptomador).AsString := _1;
    cds.FieldByName(_CDCTETPPREVISAOENTREGA).AsString := _1;
    cds.FieldByName(_CDCTETPPREVISAOENTREGAH).AsString := _1;

    cdscteremetentenota.Insert;
    cdscteremetentenotaNUCHAVENFE.AsString  := q.q.fieldbyname(_nuchavenfe).AsString;
    cdscteremetentenotaNUSERIE.AsString     := q.q.fieldbyname(_nuserie).AsString;
    cdscteremetentenotaNUNOTA.AsString      := q.q.fieldbyname(_nunota).AsString;
    cdscteremetentenotaDTEMISSAO.AsDateTime := q.q.fieldbyname(_dtemissao).AsDateTime;
    cdscteremetentenotaVLTOTAL.AsCurrency   := q.q.fieldbyname(_vltotal).AsCurrency;
    cdscteremetentenotaVLFRETE.AsCurrency   := q.q.fieldbyname(_vlfrete).AsCurrency;
    cdscteremetentenotaPSLIQUIDO.AsFloat    := q.q.fieldbyname(_psliquido).AsFloat;
    cdscteremetentenotaPSbruto.AsFloat      := q.q.fieldbyname(_psbruto).AsFloat;
    cdscteremetentenota.Post;

    cds.FieldByName(_cdcondpagto).AsString := _8;

    cds.FieldByName(_DTPREVISAOENTREGA).AsDateTime := cds.FieldByName(_dtemissao).AsDateTime + 3;

    cdsctetransportadora.Insert;
    cdsctetransportadora.fieldbyname(_CDTRANSPORTADORA).AsString := q.q.fieldbyname(_cdtransportadora).AsString;
    cdsctetransportadoravlfretepeso.Ascurrency    := q.q.fieldbyname(_vlfretepeso).AsCurrency;
    cdsctetransportadoraVLPEDAGIO.AsCurrency      := q.q.fieldbyname(_vlpedagio).AsCurrency;

    cdscteinformacaoseguro.Insert;
    cdscteinformacaoseguro.post;

    actSalvarExecute(actsalvar);
    ExecutaSQL('update itembarque set cdcte='+cdscdcte.asstring+' where cdempresa='+empresa.cdempresa.tostring+' and cditembarque='+cditembarque);
  finally
    freeandnil(frmprogressbar);
    FreeAndNil(q);
  end;
end;

procedure TfrmCTE.RegistrarContingencia;
begin
  if (cte.cdcteformaemissao = 5) and (cte.nuchavecontingencia = '') then
  begin
    cte.nuchavecontingencia := ACBrCTe.GerarChaveContingencia(ACBrCTe.Conhecimentos.Items[0].CTe);
    cte.nuchavenfe          := copy(ACBrCTe.Conhecimentos.Items[0].CTe.infCTe.Id, 4, 44);
    cte.update;
  end;
end;

function TfrmCTE.Gerar_CTE(cdembarque: string): Boolean;
var
  q : tclassequery;
begin
  result         := true;
  frmprogressbar := TFrmprogressbar.Create(nil);
  q              := tclassequery.create('select i.*'+
                                              ',e.vlfretepeso'+
                                              ',e.cdtransportadora '+
                                        'from embarque e '+
                                        'left join itembarque i on i.cdempresa=e.cdempresa and i.cdembarque=e.cdembarque '+
                                        'where i.cdcte is null and i.cdempresa='+empresa.cdempresa.tostring+' and i.cdembarque='+cdembarque);
  try    
    while not q.q.eof do
    begin
      actNovoExecute(actnovo);
      cds.FieldByName(_cdremetente).AsString := q.q.fieldbyname(_cdremetente).AsString;
      cds.FieldByName(_cddestinatario).AsString := q.q.fieldbyname(_cddestinatario).AsString;
      cds.FieldByName(_cdctetptomador).AsString := _1;
      cds.FieldByName(_CDCTETPPREVISAOENTREGA).AsString := _1;
      cds.FieldByName(_CDCTETPPREVISAOENTREGAH).AsString := _1;

      cdscteremetentenota.Insert;
      cdscteremetentenotaNUCHAVENFE.AsString  := q.q.fieldbyname(_nuchavenfe).AsString;
      cdscteremetentenotaNUSERIE.AsString     := q.q.fieldbyname(_nuserie).AsString;
      cdscteremetentenotaNUNOTA.AsString      := q.q.fieldbyname(_nunota).AsString;
      cdscteremetentenotaDTEMISSAO.AsDateTime := q.q.fieldbyname(_dtemissao).AsDateTime;
      cdscteremetentenotaVLTOTAL.AsCurrency   := q.q.fieldbyname(_vltotal).AsCurrency;
      cdscteremetentenotaVLFRETE.AsCurrency   := q.q.fieldbyname(_vlfrete).AsCurrency;
      cdscteremetentenotaPSLIQUIDO.AsFloat    := q.q.fieldbyname(_psliquido).AsFloat;
      cdscteremetentenotaPSbruto.AsFloat      := q.q.fieldbyname(_psbruto).AsFloat;
      cdscteremetentenota.Post;

      cds.FieldByName(_cdcondpagto).AsString := _8;

      cds.FieldByName(_DTPREVISAOENTREGA).AsDateTime := cds.FieldByName(_dtemissao).AsDateTime + 3;

      cdsctetransportadora.Insert;
      cdsctetransportadora.fieldbyname(_CDTRANSPORTADORA).AsString := q.q.fieldbyname(_cdtransportadora).AsString;
      cdsctetransportadoravlfretepeso.Ascurrency    := q.q.fieldbyname(_vlfretepeso).AsCurrency;
      cdsctetransportadoraVLPEDAGIO.AsCurrency      := q.q.fieldbyname(_vlpedagio).AsCurrency;

      cdscteinformacaoseguro.Insert;
      cdscteinformacaoseguro.post;

      actSalvarExecute(actsalvar);
      ExecutaSQL('update itembarque set cdcte='+cdscdcte.asstring+' where cdempresa='+empresa.cdempresa.tostring+' and cditembarque='+q.q.fieldbyname(_cditembarque).asstring);
      q.q.next;
    end;
  finally
    freeandnil(frmprogressbar);
    FreeAndNil(q);
  end;
end;

procedure TfrmCTE.SetVisibleImpostos;
begin
  edtalredicms.Visible := (cdsnuSTICMS.AsString = _20) or (cdsnuSTICMS.AsString = _90);
  lblalredicms.Visible := edtalredicms.Visible;
  txtVLBASEICMS.Visible := (cdsnuSTICMS.AsString = _00) or (cdsnuSTICMS.AsString = _20) or (cdsnuSTICMS.AsString = _60) or (cdsnuSTICMS.AsString = _90);
  lblVLBASEICMS.Visible := txtVLBASEICMS.Visible;
  edtalicms.Visible := txtVLBASEICMS.Visible;
  lblALICMS.Visible := txtVLBASEICMS.Visible;
  txtVLICMS.Visible := txtVLBASEICMS.Visible;
  lblvlicms.Visible := txtVLBASEICMS.Visible;
  edtvlcreditooutogardo.Visible := cdsnuSTICMS.AsString = _90;
  lblvlcreditooutogardo.Visible := cdsnuSTICMS.AsString = _90;
end;

procedure TfrmCTE.set_abrirtabela;
begin
  cbxcdcfop.Properties.ListSource             := abrir_tabela(_cfop+_cte);
  cbxcdtpcobranca.Properties.ListSource       := abrir_tabela(_tpcobranca);
  cbxnusticms.Properties.ListSource           := abrir_tabela(_sticms+_1);
  cbxcdcondpagto.Properties.ListSource        := abrir_tabela(_condpagto+_c);
  cbxcdufinicio.Properties.ListSource         := abrir_tabela(_uf);
  cbxcduftermino.Properties.ListSource        := abrir_tabela(_uf+_2);
  cbxcdufemissao.Properties.ListSource        := abrir_tabela(_uf+_1);
  cbxcdmunicipioinicio.Properties.ListSource  := abrir_tabela(_municipio);
  cbxcdmunicipiotermino.Properties.ListSource := abrir_tabela(_municipio+_2);
  cbxcdmunicipioemissao.Properties.ListSource := abrir_tabela(_municipio+_1);
  cbxcdctemodal.Properties.ListSource         := abrir_tabela(_ctemodal);
  cbxcdctetptomador.Properties.ListSource     := abrir_tabela(_ctetptomador);
  cbxcdctetpservico.Properties.ListSource     := abrir_tabela(_ctetpservico);
  cbxcteformaimpressao.Properties.ListSource  := abrir_tabela(_cteformaimpressao);
  cbxcdcteformaemissao.Properties.ListSource  := abrir_tabela(_cteformaemissao);
  cbxcdcteformapagamento.Properties.ListSource        := abrir_tabela(_cteformapagamento);
  cbxcdctetpprevisaoentrega.Properties.ListSource     := abrir_tabela(_ctetpprevisaoentrega);
  cbxcdctefinalidadeemissao.Properties.ListSource     := abrir_tabela(_ctefinalidadeemissao);
  cbxcdctetpprevisaoentregah.Properties.ListSource    := abrir_tabela(_ctetpprevisaoentregah);
  cbxCDCTETPINFORMACAOREMETENTE.Properties.ListSource := abrir_tabela(_ctetpinformacaoremetente);
  TcxLookupComboBoxProperties(tbvcteqtdcargaCDCTETPMEDIDA.Properties).ListSource := abrir_tabela(_ctetpmedida);

  TcxLookupComboBoxProperties(tbvcteremetentenotaNUCTETPDOCOUTROS.Properties).ListSource := abrir_tabela(_CTETPDOCOUTROS);
  TcxLookupComboBoxProperties(tbvcteqtdcargaCDUNIDADE.Properties).ListSource := abrir_tabela(_unidade);
  TcxLookupComboBoxProperties(tbvcteinformacaoseguroCDTPCTERESPONSAVELSEGURO.Properties).ListSource := abrir_tabela(_tpcteresponsavelseguro);
  TcxLookupComboBoxProperties(tbvcteinformacaoseguroCDFORNECEDOR.Properties).ListSource := abrir_tabela(_fornecedor+_seguradora);
  TcxLookupComboBoxProperties(tbvitctedocumentoanteriorNUCTETPDOCUMENTOANTERIOR.Properties).ListSource := abrir_tabela(_ctetpdocumentoanterior);
  TcxLookupComboBoxProperties(tbvitcartacorrecaocteCDCARTACORRECAOCTEGRUPO.Properties).ListSource := abrir_tabela(_cartacorrecaoctegrupo);
  TcxLookupComboBoxProperties(tbvitcartacorrecaocteCDCARTACORRECAOCTEITEM.Properties).ListSource := abrir_tabela(_cartacorrecaocteitem+_1);
  TcxLookupComboBoxProperties(tbvduplicataCDTPCOBRANCA.Properties).ListSource := abrir_tabela(_tpcobranca);
end;

procedure TfrmCTE.cdscteinformacaoseguroCDTPCTERESPONSAVELSEGUROValidate(Sender: TField);
begin
  if sender.asinteger = 0 then // remetente
  begin
    if cte.remetente.cdfornecedorseguradora <> 0 then
    begin
      cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.remetente.cdfornecedorseguradora;
      cdscteinformacaoseguroNUAPOLICE.AsString := cte.remetente.nuapolice;
    end;
  end
  else if sender.asinteger = 1 then // expedidor
  begin
    if cte.expedidor.cdfornecedorseguradora <> 0 then
    begin
      cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.expedidor.cdfornecedorseguradora;
      cdscteinformacaoseguroNUAPOLICE.AsString := cte.expedidor.nuapolice;
    end;
  end
  else if sender.asinteger = 2 then // recebedor
  begin
    if cte.recebedor.cdfornecedorseguradora <> 0 then
    begin
      cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.recebedor.cdfornecedorseguradora;
      cdscteinformacaoseguroNUAPOLICE.AsString := cte.recebedor.nuapolice;
    end;
  end
  else if sender.asinteger = 3 then // destinatario
  begin
    if cte.destinatario.cdfornecedorseguradora <> 0 then
    begin
      cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.destinatario.cdfornecedorseguradora;
      cdscteinformacaoseguroNUAPOLICE.AsString := cte.destinatario.nuapolice;
    end;
  end
  else if sender.asinteger = 5 then // tomador do servico
  begin
    if cte.tomador.cdfornecedorseguradora <> 0 then
    begin
      cdscteinformacaoseguro.fieldbyname(_CDFORNECEDOR).AsLargeInt := cte.tomador.cdfornecedorseguradora;
      cdscteinformacaoseguroNUAPOLICE.AsString := cte.tomador.nuapolice;
    end;
  end;
end;

procedure TfrmCTE.ConfigurarCondpagtoTpcobrancaTomador;
var
  bogerar : boolean;
begin
  bogerar := False;
  if (cdsVLRECEBER.AsCurrency = 0) or (cdscdctetptomador.AsInteger = 0) then
  begin
    exit;
  end;
  cdscdcondpagto.OnValidate := nil;
  case cdsCDCTETPTOMADOR.AsInteger of
    1:
    begin
      if cte.remetente.cdtpcobranca <> 0 then
      begin
        cdscdtpcobranca.asinteger := cte.remetente.cdtpcobranca;
        bogerar := true;
      end;
      if cte.remetente.cdcondpagto <> 0 then
      begin
        cdscdcondpagto.asinteger := cte.remetente.cdcondpagto;
        bogerar := true;
      end;
    end;
    2:
    begin
      if cte.expedidor.cdcondpagto <> 0 then
      begin
        cdscdcondpagto.asinteger := cte.expedidor.cdcondpagto;
        bogerar := true;
      end;
      if cte.expedidor.cdtpcobranca <> 0 then
      begin
        cdscdtpcobranca.asinteger := cte.expedidor.cdtpcobranca;
        bogerar := true;
      end;
    end;
    3:
    begin
      if cte.recebedor.cdcondpagto <> 0 then
      begin
        cdscdcondpagto.asinteger := cte.recebedor.cdcondpagto;
        bogerar := true;
      end;
      if cte.recebedor.cdtpcobranca <> 0 then
      begin
        cdscdtpcobranca.asinteger := cte.recebedor.cdtpcobranca;
        bogerar := true;
      end;
    end;
    4:
    begin
      if cte.destinatario.cdcondpagto <> 0 then
      begin
        cdscdcondpagto.asinteger := cte.destinatario.cdcondpagto;
        bogerar := true;
      end;
      if cte.destinatario.cdtpcobranca <> 0 then
      begin
        cdscdtpcobranca.asinteger := cte.destinatario.cdtpcobranca;
        bogerar := true;
      end;
    end;
    5:
    begin
      if cte.tomador.cdcondpagto <> 0 then
      begin
        cdscdcondpagto.asinteger := cte.tomador.cdcondpagto;
        bogerar := true;
      end;
      if cte.destinatario.cdtpcobranca <> 0 then
      begin
        cdscdtpcobranca.asinteger := cte.tomador.cdtpcobranca;
        bogerar := true;
      end;
    end;
  end;
  cdscdcondpagto.OnValidate := cdsCDCONDPAGTOValidate;
  if bogerar then
  begin
    cdsCDCONDPAGTOValidate(cdsCDCONDPAGTO);
  end;
end;

procedure TfrmCTE.cdsVLMERCADORIAValidate(Sender: TField);
begin
  if cdscteinformacaoseguro.recordcount = 1 then
  begin
    cdscteinformacaoseguro.Edit;
    cdscteinformacaoseguroVLCARGA.AsCurrency := sender.AsCurrency;
    cdscteinformacaoseguro.Post;
  end;
end;

procedure TfrmCTE.GerarDuplicata;
var
  I: Integer;
begin
  cte.Select(cds);
  cdsduplicata.First;
  while not cdsduplicata.Eof do
  begin
    cdsduplicata.Delete;
  end;
  cte.GerarDuplicata;
  for I := 0 to cte.duplicata.Count - 1 do
  begin
    cdsduplicata.Append;
    cdsduplicata.fieldbyname(_cdduplicata).asinteger    := cte.duplicata.Items[i].cdduplicata;
    cdsduplicata.fieldbyname(_cdcte).asinteger          := cte.duplicata.Items[i].cdcte;
    cdsduplicata.fieldbyname(_cdtpcobranca).asinteger   := cte.duplicata.Items[i].cdtpcobranca;
    cdsduplicata.fieldbyname(_cdstduplicata).AsInteger  := cte.duplicata.Items[i].cdstduplicata;
    cdsduplicata.fieldbyname(_cdcliente).AsLargeInt     := cte.duplicata.Items[i].cdcliente;
    cdsduplicata.fieldbyname(_dtemissao).AsDateTime     := cte.duplicata.Items[i].dtemissao;
    cdsduplicata.fieldbyname(_dtentrada).AsDateTime     := cte.duplicata.Items[i].dtentrada;
    cdsduplicata.fieldbyname(_dtvencimento).AsDateTime  := cte.duplicata.Items[i].dtvencimento;
    cdsduplicata.fieldbyname(_dtprorrogacao).AsDateTime := cte.duplicata.Items[i].dtprorrogacao;
    cdsduplicata.fieldbyname(_vlduplicata).AsCurrency   := cte.duplicata.Items[i].vlduplicata;
    cdsduplicata.fieldbyname(_vlsaldo).AsCurrency       := cte.duplicata.Items[i].vlsaldo;
    cdsduplicata.FieldByName(_PRMORADIARIA).ascurrency  := cte.duplicata.Items[i].prmoradiaria;
    cdsduplicata.FieldByName(_PRMulta).ascurrency       := cte.duplicata.Items[i].prmulta;
    cdsduplicata.fieldbyname(_dsparcela).asstring       := cte.duplicata.Items[i].dsparcela;
    cdsduplicata.fieldbyname(_nuduplicata).asstring     := cte.duplicata.Items[i].nuduplicata;
    cdsduplicata.Post;
  end;
end;

end.
