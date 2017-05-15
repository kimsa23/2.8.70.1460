unit udlgDetalheOrcamento;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls, Controls, Math,
  DB,
  uexportarexcel, unumero, ustrings, uregistro, uconstantes, udatahora, ulocalizarcliente,
  classeorcamento, classeequipamento, classeproduto, classeRegistro, classeregistrainformacao, classegerar, classeform,  classeempresa, classeretornasql,
  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, cxButtons, cxLabel,
  cxCheckListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxMemo, cxDBEdit, cxCalendar, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FMTBcd, Provider, DBClient, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxSplitter, cxBlobEdit,
  cxCurrencyEdit, cxSpinEdit, cxCalc, cxPCdxBarPopupMenu, dxBar, ActnList,
  cxGridChartView, cxGridDBChartView, cxVGrid, cxDBVGrid,
  cxInplaceContainer, DBCtrls, cxDBLabel, cxNavigator,
  dxBarBuiltInMenu, SqlExpr;

type
  Tfrmdlgdetalheorcamento = class(TForm)
    sdsdetail: TSQLDataSet;
    sdsdetailCDITORCAMENTO: TIntegerField;
    sdsdetailCDORCAMENTO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailCDTPICMS: TIntegerField;
    sdsdetailCDTPIPI: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailQTAPROVADO: TFloatField;
    sdsdetailVLUNITARIO: TFMTBCDField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailPRLUCRO: TFloatField;
    sdsdetailALICMS: TFloatField;
    sdsdetailVLICMS: TFMTBCDField;
    sdsdetailALIPI: TFloatField;
    sdsdetailVLIPI: TFMTBCDField;
    sdsdetailDSDESENHO: TStringField;
    sdsdetailDSPOSICAODESENHO: TStringField;
    sdsdetailNUREVISAODESENHO: TStringField;
    sdsdetailNUDIASENTREGA: TIntegerField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailCDTPGRADEVALOR: TIntegerField;
    sdsdetailVLTOTALCIPI: TFMTBCDField;
    sdsdetailDTPRVENTREGA: TDateField;
    sdsdetailQTLARGURA1: TFloatField;
    sdsdetailQTALTURA1: TFloatField;
    sdsdetailQTCOMPRIMENTO1: TFloatField;
    sdsdetailDSFORMULA: TStringField;
    sdsdetailALMVA: TFloatField;
    sdsdetailVLICMSSUBTRIB: TFMTBCDField;
    sdsdetailVLFRETE: TFMTBCDField;
    sdsdetailVLDESCONTO: TFMTBCDField;
    sdsdetailALICMSSUBTRIB: TFloatField;
    sdsdetailNUCOTACAO: TStringField;
    sdsdetailNUITEM: TStringField;
    sdsdetailQTPECA: TFloatField;
    sdsdetailNMFORMA: TStringField;
    sdsdetailCDFORMA: TIntegerField;
    sdsdetailNMPRODUTO: TStringField;
    sdsdetailCDALTERNATIVO: TStringField;
    sdsdetailNMTPGRADEVALOR: TStringField;
    sdsdetailNMUNIDADE: TStringField;
    sdsdetailDSOBSERVACAO: TBlobField;
    sdsdetailDSDESENHOPOSICAO: TStringField;
    sdsdetailDSDESENHOREVISAO: TStringField;
    sdsdetailALPIS: TFloatField;
    sdsdetailVLPIS: TFMTBCDField;
    sdsdetailALCOFINS: TFloatField;
    sdsdetailVLCOFINS: TFMTBCDField;
    sdsdetailALCSLL: TFloatField;
    sdsdetailVLCSLL: TFMTBCDField;
    sdsdetailALIRPJ: TFloatField;
    sdsdetailVLIRPJ: TFMTBCDField;
    sdsdetailVLPRODUCAO: TFMTBCDField;
    sdsdetailVLMATERIAL: TFMTBCDField;
    sdsdetailVLCUSTO: TFMTBCDField;
    sdsdetailVLPREPARACAO: TFMTBCDField;
    sdsdetailVLOPERACAO: TFMTBCDField;
    sdsdetailQTOPERACAO: TFloatField;
    sdsdetailQTPREPARACAO: TFloatField;
    sdsdetailQTHORA: TFloatField;
    sdsdetailVLPRODUCAOP: TFMTBCDField;
    sdsdetailVLMATERIALP: TFMTBCDField;
    sdsdetailVLCUSTOP: TFMTBCDField;
    sdsdetailVLPREPARACAOP: TFMTBCDField;
    sdsdetailVLOPERACAOP: TFMTBCDField;
    sdsdetailQTPREPARACAOP: TFloatField;
    sdsdetailQTOPERACAOP: TFloatField;
    sdsdetailQTHORAP: TFloatField;
    sdsdetailVLPISP: TFMTBCDField;
    sdsdetailVLCOFINSP: TFMTBCDField;
    sdsdetailVLCSLLP: TFMTBCDField;
    sdsdetailVLIRPJP: TFMTBCDField;
    sdsdetailVLICMSP: TFMTBCDField;
    sdsdetailVLIPIP: TFMTBCDField;
    sdsdetailNUPRAZOENTREGA: TIntegerField;
    sdsdetailDTAPROVACAO: TDateField;
    sdsdetailNUCLFISCAL: TStringField;
    sdsdetailVLLUCRO: TFMTBCDField;
    sdsdetailVLLUCROP: TFMTBCDField;
    sdsdetailALISS: TFloatField;
    sdsdetailVLISSP: TFMTBCDField;
    sdsdetailVLISS: TFMTBCDField;
    sdsdetailVLIMPOSTOP: TFMTBCDField;
    sdsdetailVLIMPOSTO: TFMTBCDField;
    sdsdetailVLVENDALIQUIDAP: TFMTBCDField;
    sdsdetailVLVENDALIQUIDA: TFMTBCDField;
    sdsdetailVLLUCROBRUTOP: TFMTBCDField;
    sdsdetailVLLUCROBRUTO: TFMTBCDField;
    sdsdetailVLDESPESA: TFMTBCDField;
    sdsdetailVLDESPESAP: TFMTBCDField;
    sdsdetailVLDESPESAADMINISTRATIVA: TFMTBCDField;
    sdsdetailVLDESPESAADMINISTRATIVAP: TFMTBCDField;
    sdsdetailVLDESPESAFRETEP: TFMTBCDField;
    sdsdetailVLDESPESAFRETE: TFMTBCDField;
    sdsdetailVLDESPESACOMERCIALP: TFMTBCDField;
    sdsdetailVLDESPESACOMERCIAL: TFMTBCDField;
    sdsdetailVLDESPESAEMBALAGEMP: TFMTBCDField;
    sdsdetailVLDESPESAEMBALAGEM: TFMTBCDField;
    sdsdetailVLDESPESASEGUROP: TFMTBCDField;
    sdsdetailVLDESPESASEGURO: TFMTBCDField;
    sdsdetailVLLUCROIRCSP: TFMTBCDField;
    sdsdetailVLLUCROIRCS: TFMTBCDField;
    sdsdetailPRDESPESAADMINISTRATIVA: TFloatField;
    sdsdetailPRDESPESAFRETE: TFloatField;
    sdsdetailPRDESPESACOMERCIAL: TFloatField;
    sdsdetailPRDESPESAEMBALAGEM: TFloatField;
    sdsdetailPRDESPESASEGURO: TFloatField;
    sdsdetailVLIRCSLLP: TFMTBCDField;
    sdsdetailVLIRCSLL: TFMTBCDField;
    sdsdetailALSIMPLES: TFloatField;
    sdsdetailVLSIMPLESP: TFMTBCDField;
    sdsdetailVLSIMPLES: TFMTBCDField;
    sdsdetailBOSERVICO: TStringField;
    sdsdetailVLRECURSOP: TFMTBCDField;
    sdsdetailVLRECURSO: TFMTBCDField;
    cdsdetail: TClientDataSet;
    cdsdetailCDITORCAMENTO: TIntegerField;
    cdsdetailCDORCAMENTO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailCDTPICMS: TIntegerField;
    cdsdetailCDTPIPI: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailQTAPROVADO: TFloatField;
    cdsdetailVLUNITARIO: TFMTBCDField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailPRLUCRO: TFloatField;
    cdsdetailALICMS: TFloatField;
    cdsdetailVLICMS: TFMTBCDField;
    cdsdetailALIPI: TFloatField;
    cdsdetailVLIPI: TFMTBCDField;
    cdsdetailDSDESENHO: TStringField;
    cdsdetailDSPOSICAODESENHO: TStringField;
    cdsdetailNUREVISAODESENHO: TStringField;
    cdsdetailNUDIASENTREGA: TIntegerField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailCDTPGRADEVALOR: TIntegerField;
    cdsdetailVLTOTALCIPI: TFMTBCDField;
    cdsdetailDTPRVENTREGA: TDateField;
    cdsdetailQTLARGURA1: TFloatField;
    cdsdetailQTALTURA1: TFloatField;
    cdsdetailQTCOMPRIMENTO1: TFloatField;
    cdsdetailDSFORMULA: TStringField;
    cdsdetailALMVA: TFloatField;
    cdsdetailVLICMSSUBTRIB: TFMTBCDField;
    cdsdetailVLFRETE: TFMTBCDField;
    cdsdetailVLDESCONTO: TFMTBCDField;
    cdsdetailALICMSSUBTRIB: TFloatField;
    cdsdetailNUCOTACAO: TStringField;
    cdsdetailNUITEM: TStringField;
    cdsdetailQTPECA: TFloatField;
    cdsdetailNMFORMA: TStringField;
    cdsdetailCDFORMA: TIntegerField;
    cdsdetailNMPRODUTO: TStringField;
    cdsdetailCDALTERNATIVO: TStringField;
    cdsdetailNMTPGRADEVALOR: TStringField;
    cdsdetailNMUNIDADE: TStringField;
    cdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailDSDESENHOPOSICAO: TStringField;
    cdsdetailDSDESENHOREVISAO: TStringField;
    cdsdetailsdsitorcamentorecurso: TDataSetField;
    cdsdetailsdsitorcamentomaterial: TDataSetField;
    cdsdetailsdsitorcamentocusto: TDataSetField;
    cdsdetailALPIS: TFloatField;
    cdsdetailVLPIS: TFMTBCDField;
    cdsdetailALCOFINS: TFloatField;
    cdsdetailVLCOFINS: TFMTBCDField;
    cdsdetailALCSLL: TFloatField;
    cdsdetailVLCSLL: TFMTBCDField;
    cdsdetailALIRPJ: TFloatField;
    cdsdetailVLIRPJ: TFMTBCDField;
    cdsdetailVLPRODUCAO: TFMTBCDField;
    cdsdetailVLMATERIAL: TFMTBCDField;
    cdsdetailVLCUSTO: TFMTBCDField;
    cdsdetailVLPREPARACAO: TFMTBCDField;
    cdsdetailVLOPERACAO: TFMTBCDField;
    cdsdetailQTOPERACAO: TFloatField;
    cdsdetailQTPREPARACAO: TFloatField;
    cdsdetailQTHORA: TFloatField;
    cdsdetailVLPRODUCAOP: TFMTBCDField;
    cdsdetailVLMATERIALP: TFMTBCDField;
    cdsdetailVLCUSTOP: TFMTBCDField;
    cdsdetailVLPREPARACAOP: TFMTBCDField;
    cdsdetailVLOPERACAOP: TFMTBCDField;
    cdsdetailQTPREPARACAOP: TFloatField;
    cdsdetailQTOPERACAOP: TFloatField;
    cdsdetailQTHORAP: TFloatField;
    cdsdetailVLPISP: TFMTBCDField;
    cdsdetailVLCOFINSP: TFMTBCDField;
    cdsdetailVLCSLLP: TFMTBCDField;
    cdsdetailVLIRPJP: TFMTBCDField;
    cdsdetailVLICMSP: TFMTBCDField;
    cdsdetailVLIPIP: TFMTBCDField;
    cdsdetailNUPRAZOENTREGA: TIntegerField;
    cdsdetailDTAPROVACAO: TDateField;
    cdsdetailNUCLFISCAL: TStringField;
    cdsdetailVLLUCRO: TFMTBCDField;
    cdsdetailVLLUCROP: TFMTBCDField;
    cdsdetailALISS: TFloatField;
    cdsdetailVLISSP: TFMTBCDField;
    cdsdetailVLISS: TFMTBCDField;
    cdsdetailVLIMPOSTOP: TFMTBCDField;
    cdsdetailVLIMPOSTO: TFMTBCDField;
    cdsdetailVLVENDALIQUIDAP: TFMTBCDField;
    cdsdetailVLVENDALIQUIDA: TFMTBCDField;
    cdsdetailVLLUCROBRUTOP: TFMTBCDField;
    cdsdetailVLLUCROBRUTO: TFMTBCDField;
    cdsdetailVLDESPESA: TFMTBCDField;
    cdsdetailVLDESPESAP: TFMTBCDField;
    cdsdetailVLDESPESAADMINISTRATIVA: TFMTBCDField;
    cdsdetailVLDESPESAADMINISTRATIVAP: TFMTBCDField;
    cdsdetailVLDESPESAFRETEP: TFMTBCDField;
    cdsdetailVLDESPESAFRETE: TFMTBCDField;
    cdsdetailVLDESPESACOMERCIALP: TFMTBCDField;
    cdsdetailVLDESPESACOMERCIAL: TFMTBCDField;
    cdsdetailVLDESPESAEMBALAGEMP: TFMTBCDField;
    cdsdetailVLDESPESAEMBALAGEM: TFMTBCDField;
    cdsdetailVLDESPESASEGUROP: TFMTBCDField;
    cdsdetailVLDESPESASEGURO: TFMTBCDField;
    cdsdetailVLLUCROIRCSP: TFMTBCDField;
    cdsdetailVLLUCROIRCS: TFMTBCDField;
    cdsdetailPRDESPESAADMINISTRATIVA: TFloatField;
    cdsdetailPRDESPESAFRETE: TFloatField;
    cdsdetailPRDESPESACOMERCIAL: TFloatField;
    cdsdetailPRDESPESAEMBALAGEM: TFloatField;
    cdsdetailPRDESPESASEGURO: TFloatField;
    cdsdetailVLIRCSLLP: TFMTBCDField;
    cdsdetailVLIRCSLL: TFMTBCDField;
    cdsdetailALSIMPLES: TFloatField;
    cdsdetailVLSIMPLESP: TFMTBCDField;
    cdsdetailVLSIMPLES: TFMTBCDField;
    cdsdetailBOSERVICO: TStringField;
    cdsdetailVLRECURSOP: TFMTBCDField;
    cdsdetailVLRECURSO: TFMTBCDField;
    dtsdetail: TDataSource;
    dts2: TDataSource;
    dtsitorcamentorecurso: TDataSource;
    cdsitorcamentorecurso: TClientDataSet;
    cdsitorcamentorecursoCDITORCAMENTORECURSO: TIntegerField;
    cdsitorcamentorecursoCDITORCAMENTO: TIntegerField;
    cdsitorcamentorecursoCDUSUARIOI: TIntegerField;
    cdsitorcamentorecursoCDUSUARIOA: TIntegerField;
    cdsitorcamentorecursoCDCOMPUTADORI: TIntegerField;
    cdsitorcamentorecursoCDCOMPUTADORA: TIntegerField;
    cdsitorcamentorecursoCDTPEQUIPAMENTO: TIntegerField;
    cdsitorcamentorecursoTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentorecursoTSALTERACAO: TSQLTimeStampField;
    cdsitorcamentorecursoQTPREPARACAO: TFloatField;
    cdsitorcamentorecursoQTOPERACAO: TFloatField;
    cdsitorcamentorecursoVLPREPARACAO: TFMTBCDField;
    cdsitorcamentorecursoVLOPERACAO: TFMTBCDField;
    cdsitorcamentorecursoVLTOTALOPERACAO: TFMTBCDField;
    cdsitorcamentorecursoVLTOTALPREPARACAO: TFMTBCDField;
    cdsitorcamentorecursoVLTOTAL: TFMTBCDField;
    cdsitorcamentorecursoDSOBSERVACAO: TBlobField;
    sdsitorcamentorecurso: TSQLDataSet;
    sdsitorcamentorecursoCDITORCAMENTORECURSO: TIntegerField;
    sdsitorcamentorecursoCDITORCAMENTO: TIntegerField;
    sdsitorcamentorecursoCDUSUARIOI: TIntegerField;
    sdsitorcamentorecursoCDUSUARIOA: TIntegerField;
    sdsitorcamentorecursoCDCOMPUTADORI: TIntegerField;
    sdsitorcamentorecursoCDCOMPUTADORA: TIntegerField;
    sdsitorcamentorecursoTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentorecursoTSALTERACAO: TSQLTimeStampField;
    sdsitorcamentorecursoQTPREPARACAO: TFloatField;
    sdsitorcamentorecursoQTOPERACAO: TFloatField;
    sdsitorcamentorecursoVLPREPARACAO: TFMTBCDField;
    sdsitorcamentorecursoVLOPERACAO: TFMTBCDField;
    sdsitorcamentorecursoVLTOTALOPERACAO: TFMTBCDField;
    sdsitorcamentorecursoCDTPEQUIPAMENTO: TIntegerField;
    sdsitorcamentorecursoVLTOTALPREPARACAO: TFMTBCDField;
    sdsitorcamentorecursoVLTOTAL: TFMTBCDField;
    sdsitorcamentorecursoDSOBSERVACAO: TBlobField;
    sdsitorcamentomaterial: TSQLDataSet;
    sdsitorcamentomaterialCDITORCAMENTOMATERIAL: TIntegerField;
    sdsitorcamentomaterialCDITORCAMENTO: TIntegerField;
    sdsitorcamentomaterialCDUSUARIOI: TIntegerField;
    sdsitorcamentomaterialCDUSUARIOA: TIntegerField;
    sdsitorcamentomaterialCDCOMPUTADORI: TIntegerField;
    sdsitorcamentomaterialCDCOMPUTADORA: TIntegerField;
    sdsitorcamentomaterialCDPRODUTO: TIntegerField;
    sdsitorcamentomaterialCDFORMA: TIntegerField;
    sdsitorcamentomaterialCDMATERIAL: TIntegerField;
    sdsitorcamentomaterialTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentomaterialTSALTERACAO: TSQLTimeStampField;
    sdsitorcamentomaterialQTITEM: TFloatField;
    sdsitorcamentomaterialQTPESOUNITARIO: TFloatField;
    sdsitorcamentomaterialVLUNITARIO: TFMTBCDField;
    sdsitorcamentomaterialVLTOTAL: TFMTBCDField;
    sdsitorcamentomaterialCDDIGITADO: TStringField;
    sdsitorcamentomaterialNMPRODUTO: TStringField;
    sdsitorcamentomaterialQTPECA: TFloatField;
    sdsitorcamentomaterialDSPOSICAO: TStringField;
    sdsitorcamentomaterialNUCLFISCAL: TStringField;
    sdsitorcamentomaterialALICMS: TFloatField;
    sdsitorcamentomaterialALIPI: TFloatField;
    sdsitorcamentomaterialBORECUPERAICMS: TStringField;
    sdsitorcamentomaterialBORECUPERAIPI: TStringField;
    sdsitorcamentomaterialVLICMS: TFMTBCDField;
    sdsitorcamentomaterialVLIPI: TFMTBCDField;
    sdsitorcamentomaterialVLFRETE: TFMTBCDField;
    sdsitorcamentomaterialVLFINAL: TFMTBCDField;
    sdsitorcamentomaterialALPIS: TFloatField;
    sdsitorcamentomaterialALCOFINS: TFloatField;
    sdsitorcamentomaterialVLPIS: TFMTBCDField;
    sdsitorcamentomaterialVLCOFINS: TFMTBCDField;
    sdsitorcamentomaterialBORECUPERAPIS: TStringField;
    sdsitorcamentomaterialBORECUPERACOFINS: TStringField;
    sdsitorcamentomaterialDSFORMULA: TStringField;
    sdsitorcamentocusto: TSQLDataSet;
    sdsitorcamentocustoCDITORCAMENTOCUSTO: TIntegerField;
    sdsitorcamentocustoCDITORCAMENTO: TIntegerField;
    sdsitorcamentocustoCDUSUARIOI: TIntegerField;
    sdsitorcamentocustoCDUSUARIOA: TIntegerField;
    sdsitorcamentocustoCDCOMPUTADORI: TIntegerField;
    sdsitorcamentocustoCDCOMPUTADORA: TIntegerField;
    sdsitorcamentocustoCDPRODUTO: TIntegerField;
    sdsitorcamentocustoTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentocustoTSALTERACAO: TSQLTimeStampField;
    sdsitorcamentocustoVLTOTAL: TFMTBCDField;
    sdsitorcamentocustoCDDIGITADO: TStringField;
    sdsitorcamentocustoNMPRODUTO: TStringField;
    sdsitorcamentocustoQTITEM: TFloatField;
    sdsitorcamentocustoVLUNITARIO: TFMTBCDField;
    cdsitorcamentomaterial: TClientDataSet;
    cdsitorcamentomaterialCDITORCAMENTOMATERIAL: TIntegerField;
    cdsitorcamentomaterialCDITORCAMENTO: TIntegerField;
    cdsitorcamentomaterialCDUSUARIOI: TIntegerField;
    cdsitorcamentomaterialCDUSUARIOA: TIntegerField;
    cdsitorcamentomaterialCDCOMPUTADORI: TIntegerField;
    cdsitorcamentomaterialCDCOMPUTADORA: TIntegerField;
    cdsitorcamentomaterialCDPRODUTO: TIntegerField;
    cdsitorcamentomaterialTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentomaterialTSALTERACAO: TSQLTimeStampField;
    cdsitorcamentomaterialQTITEM: TFloatField;
    cdsitorcamentomaterialQTPESOUNITARIO: TFloatField;
    cdsitorcamentomaterialVLUNITARIO: TFMTBCDField;
    cdsitorcamentomaterialVLTOTAL: TFMTBCDField;
    cdsitorcamentomaterialCDDIGITADO: TStringField;
    cdsitorcamentomaterialCDFORMA: TIntegerField;
    cdsitorcamentomaterialCDMATERIAL: TIntegerField;
    cdsitorcamentomaterialNMPRODUTO: TStringField;
    cdsitorcamentomaterialQTPECA: TFloatField;
    cdsitorcamentomaterialDSPOSICAO: TStringField;
    cdsitorcamentomaterialNUCLFISCAL: TStringField;
    cdsitorcamentomaterialALICMS: TFloatField;
    cdsitorcamentomaterialALIPI: TFloatField;
    cdsitorcamentomaterialBORECUPERAICMS: TStringField;
    cdsitorcamentomaterialBORECUPERAIPI: TStringField;
    cdsitorcamentomaterialVLICMS: TFMTBCDField;
    cdsitorcamentomaterialVLIPI: TFMTBCDField;
    cdsitorcamentomaterialVLFRETE: TFMTBCDField;
    cdsitorcamentomaterialVLFINAL: TFMTBCDField;
    cdsitorcamentomaterialALPIS: TFloatField;
    cdsitorcamentomaterialALCOFINS: TFloatField;
    cdsitorcamentomaterialVLPIS: TFMTBCDField;
    cdsitorcamentomaterialVLCOFINS: TFMTBCDField;
    cdsitorcamentomaterialBORECUPERAPIS: TStringField;
    cdsitorcamentomaterialBORECUPERACOFINS: TStringField;
    cdsitorcamentomaterialDSFORMULA: TStringField;
    dtsitorcamentomaterial: TDataSource;
    dtsitorcamentocusto: TDataSource;
    cdsitorcamentocusto: TClientDataSet;
    cdsitorcamentocustoCDITORCAMENTOCUSTO: TIntegerField;
    cdsitorcamentocustoCDITORCAMENTO: TIntegerField;
    cdsitorcamentocustoCDUSUARIOI: TIntegerField;
    cdsitorcamentocustoCDUSUARIOA: TIntegerField;
    cdsitorcamentocustoCDCOMPUTADORI: TIntegerField;
    cdsitorcamentocustoCDCOMPUTADORA: TIntegerField;
    cdsitorcamentocustoCDPRODUTO: TIntegerField;
    cdsitorcamentocustoTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentocustoTSALTERACAO: TSQLTimeStampField;
    cdsitorcamentocustoVLTOTAL: TFMTBCDField;
    cdsitorcamentocustoCDDIGITADO: TStringField;
    cdsitorcamentocustoNMPRODUTO: TStringField;
    cdsitorcamentocustoQTITEM: TFloatField;
    cdsitorcamentocustoVLUNITARIO: TFMTBCDField;
    pgc: TcxPageControl;
    tbsmaterial: TcxTabSheet;
    grdmaterial: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2CDDIGITADO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2NMPRODUTO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2QTPECA: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2QTPESOUNITARIO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2QTITEM: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLUNITARIO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLTOTAL: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2DSPOSICAO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2NUCLFISCAL: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ALICMS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ALIPI: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2BORECUPERAICMS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2BORECUPERAIPI: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLICMS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLIPI: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLFRETE: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLFINAL: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ALPIS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ALCOFINS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLPIS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLCOFINS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2BORECUPERAPIS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2BORECUPERACOFINS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2DSFORMULA: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    tbscustos: TcxTabSheet;
    grdcusto: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    grdcustoDBTableView1: TcxGridDBTableView;
    grdcustoDBTableView1CDDIGITADO: TcxGridDBColumn;
    grdcustoDBTableView1NMPRODUTO: TcxGridDBColumn;
    grdcustoDBTableView1QTITEM: TcxGridDBColumn;
    grdcustoDBTableView1VLUNITARIO: TcxGridDBColumn;
    grdcustoDBTableView1VLTOTAL: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    tbsrecursos: TcxTabSheet;
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
    dspdetail: TDataSetProvider;
    act: TActionList;
    dxBarDockControl1: TdxBarDockControl;
    bmg1: TdxBarManager;
    bmg1Bar1: TdxBar;
    actExibirCompra: TAction;
    dxBarButton1: TdxBarButton;
    sdsitorcamentorecursoNUSEQUENCIA: TIntegerField;
    cdsitorcamentorecursoNUSEQUENCIA: TIntegerField;
    cdspizzapeca: TClientDataSet;
    cdspizzapecavalor: TFMTBCDField;
    cdspizzapecanome: TStringField;
    dtspizzapeca: TDataSource;
    dtspizzaitem: TDataSource;
    cdspizzaitem: TClientDataSet;
    cdspizzaitemnome: TStringField;
    cdspizzaitemvalor: TFMTBCDField;
    tbscomposicaocusto: TcxTabSheet;
    tbsitem: TcxTabSheet;
    cxDBVerticalGrid3: TcxDBVerticalGrid;
    cxDBEditorRow11: TcxDBEditorRow;
    cxDBEditorRow12: TcxDBEditorRow;
    cxDBVerticalGrid3DBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow16: TcxDBEditorRow;
    cxDBEditorRow15: TcxDBEditorRow;
    cxDBEditorRow17: TcxDBEditorRow;
    cxDBEditorRow18: TcxDBEditorRow;
    cxDBEditorRow19: TcxDBEditorRow;
    cxDBEditorRow20: TcxDBEditorRow;
    spl3: TcxSplitter;
    grditem: TcxDBVerticalGrid;
    cxDBEditorRow21: TcxDBEditorRow;
    cxDBEditorRow22: TcxDBEditorRow;
    cxDBEditorRow23: TcxDBEditorRow;
    grditemvlicms: TcxDBEditorRow;
    grditemvlipi: TcxDBEditorRow;
    grditemDBEditorRow2: TcxDBEditorRow;
    grditemDBEditorRow1: TcxDBEditorRow;
    grditemvlcpp: TcxDBEditorRow;
    grditemvlsimples: TcxDBEditorRow;
    grditemvliss: TcxDBEditorRow;
    cxDBEditorRow32: TcxDBEditorRow;
    cxDBEditorRow34: TcxDBEditorRow;
    cxDBEditorRow36: TcxDBEditorRow;
    cxDBEditorRow37: TcxDBEditorRow;
    cxDBEditorRow38: TcxDBEditorRow;
    cxDBEditorRow39: TcxDBEditorRow;
    cxDBEditorRow40: TcxDBEditorRow;
    cxDBEditorRow41: TcxDBEditorRow;
    cxDBEditorRow42: TcxDBEditorRow;
    cxDBEditorRow43: TcxDBEditorRow;
    grditemVLLUCROIRCS: TcxDBEditorRow;
    grditemVLIRCSLL: TcxDBEditorRow;
    cxDBEditorRow46: TcxDBEditorRow;
    cxDBEditorRow48: TcxDBEditorRow;
    cxDBEditorRow50: TcxDBEditorRow;
    grditemDBEditorRow3: TcxDBEditorRow;
    tbscomposicaopreco: TcxTabSheet;
    grdpizzaitem: TcxGrid;
    tbvcomposicaopreco: TcxGridDBTableView;
    chapizzaitem: TcxGridDBChartView;
    chapizzaitemDataGroup1: TcxGridDBChartDataGroup;
    chapizzaitemSeries1: TcxGridDBChartSeries;
    glvLevel1: TcxGridLevel;
    vgritemcusto: TcxDBVerticalGrid;
    cxDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow2: TcxDBEditorRow;
    vgritemcustoDBEditorRow1: TcxDBEditorRow;
    edtitemprepacao: TcxDBEditorRow;
    edtitemqtoperacao: TcxDBEditorRow;
    cxDBEditorRow7: TcxDBEditorRow;
    cxDBEditorRow8: TcxDBEditorRow;
    cxDBEditorRow9: TcxDBEditorRow;
    cxDBEditorRow10: TcxDBEditorRow;
    cxGrid3: TcxGrid;
    cxGrid3DBChartView1: TcxGridDBChartView;
    cxGrid3DBChartView1DataGroup1: TcxGridDBChartDataGroup;
    cxGrid3DBChartView1Series1: TcxGridDBChartSeries;
    cxGrid3Level1: TcxGridLevel;
    grdpeca: TcxDBVerticalGrid;
    grdpecaDBEditorRow1: TcxDBEditorRow;
    grdpecaDBEditorRow2: TcxDBEditorRow;
    grdpecaDBEditorRow3: TcxDBEditorRow;
    grdpecaVLICMSP: TcxDBEditorRow;
    grdpecaDBEditorRow27: TcxDBEditorRow;
    grdpecacdtpicms: TcxDBEditorRow;
    grdpecaVLIPIP: TcxDBEditorRow;
    grdpecaDBEditorRow23: TcxDBEditorRow;
    grdpecacdtpipi: TcxDBEditorRow;
    grdpecaVLIRPJP: TcxDBEditorRow;
    grdpecaDBEditorRow44: TcxDBEditorRow;
    grdpecaVLCSLLP: TcxDBEditorRow;
    grdpecaDBEditorRow42: TcxDBEditorRow;
    grdpecaVLCPPP: TcxDBEditorRow;
    grdpecaDBEditorRow40: TcxDBEditorRow;
    grdpecaVLSIMPLESP: TcxDBEditorRow;
    grdpecaDBEditorRow38: TcxDBEditorRow;
    grdpecaVLISSP: TcxDBEditorRow;
    grdpecaDBEditorRow30: TcxDBEditorRow;
    grdpecaDBEditorRow7: TcxDBEditorRow;
    grdpecaDBEditorRow24: TcxDBEditorRow;
    grdpecaDBEditorRow6: TcxDBEditorRow;
    grdpecaDBEditorRow25: TcxDBEditorRow;
    grdpecaDBEditorRow8: TcxDBEditorRow;
    grdpecaDBEditorRow9: TcxDBEditorRow;
    grdpecaDBEditorRow10: TcxDBEditorRow;
    grdpecaDBEditorRow11: TcxDBEditorRow;
    grdpecaDBEditorRow32: TcxDBEditorRow;
    grdpecaDBEditorRow12: TcxDBEditorRow;
    grdpecaDBEditorRow33: TcxDBEditorRow;
    grdpecaDBEditorRow13: TcxDBEditorRow;
    grdpecaDBEditorRow34: TcxDBEditorRow;
    grdpecaDBEditorRow14: TcxDBEditorRow;
    grdpecaDBEditorRow35: TcxDBEditorRow;
    grdpecaDBEditorRow15: TcxDBEditorRow;
    grdpecaDBEditorRow36: TcxDBEditorRow;
    grdpecaVLLUCROIRCSP: TcxDBEditorRow;
    grdpecaVLIRCSLLP: TcxDBEditorRow;
    grdpecaDBEditorRow18: TcxDBEditorRow;
    grdpecaDBEditorRow28: TcxDBEditorRow;
    grdpecaDBEditorRow17: TcxDBEditorRow;
    grdpecaDBEditorRow29: TcxDBEditorRow;
    grdpecaDBEditorRow20: TcxDBEditorRow;
    grdpecaDBEditorRow21: TcxDBEditorRow;
    pnl1: TPanel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    pnl2: TPanel;
    acteditar: TAction;
    lbl1: TLabel;
    lbl2: TLabel;
    txtCDDIGITADO: TDBText;
    txtNMPRODUTO: TDBText;
    lbl3: TLabel;
    edtqtitem: TcxDBCalcEdit;
    Label11: TLabel;
    txt1: TcxDBLabel;
    lbl4: TLabel;
    lbl5: TcxDBLabel;
    sdsitorcamentocustoDSOBSERVACAO: TBlobField;
    cdsitorcamentocustoDSOBSERVACAO: TBlobField;
    grdcustoDBTableView1DSOBSERVACAO: TcxGridDBColumn;
    sdsitorcamentorecursoCDTPDURACAO: TIntegerField;
    cdsitorcamentorecursoCDTPDURACAO: TIntegerField;
    sdsdetailQTITEM: TFMTBCDField;
    cdsdetailQTITEM: TFMTBCDField;
    sdsitorcamentomaterialNUFATOR: TFloatField;
    sdsitorcamentocustoCDUNIDADE: TIntegerField;
    sdsitorcamentocustoNUFATOR: TFloatField;
    sdsitorcamentocustoVLFINAL: TFMTBCDField;
    cdsitorcamentomaterialNUFATOR: TFloatField;
    cdsitorcamentocustoCDUNIDADE: TIntegerField;
    cdsitorcamentocustoNUFATOR: TFloatField;
    cdsitorcamentocustoVLFINAL: TFMTBCDField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsdetailPRDESCONTO: TFMTBCDField;
    sdsdetailVLTOTALSDESCONTO: TFMTBCDField;
    sdsdetailNUSEQUENCIA: TIntegerField;
    sdsdetailDSPRODUTO: TStringField;
    sdsdetailCDSTITORCAMENTO: TIntegerField;
    sdsdetailBOCERTIFICADO: TStringField;
    sdsdetailBOINFTECNICA: TStringField;
    sdsdetailCDCONDPAGTO: TIntegerField;
    sdsdetailVLDESCONTOPRODUCAO: TFMTBCDField;
    sdsdetailCDPRODUTOEMBALAGEM: TIntegerField;
    sdsdetailCDDIGITADOEMBALAGEM: TStringField;
    sdsdetailVLACRESCIMO: TFMTBCDField;
    sdsdetailCDTPITORCAMENTO: TIntegerField;
    sdsdetailCDPERIODICIDADE: TIntegerField;
    sdsdetailNUPERIODICIDADE: TIntegerField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsdetailPRDESCONTO: TFMTBCDField;
    cdsdetailVLTOTALSDESCONTO: TFMTBCDField;
    cdsdetailNUSEQUENCIA: TIntegerField;
    cdsdetailDSPRODUTO: TStringField;
    cdsdetailCDSTITORCAMENTO: TIntegerField;
    cdsdetailBOCERTIFICADO: TStringField;
    cdsdetailBOINFTECNICA: TStringField;
    cdsdetailCDCONDPAGTO: TIntegerField;
    cdsdetailVLDESCONTOPRODUCAO: TFMTBCDField;
    cdsdetailCDPRODUTOEMBALAGEM: TIntegerField;
    cdsdetailCDDIGITADOEMBALAGEM: TStringField;
    cdsdetailVLACRESCIMO: TFMTBCDField;
    cdsdetailCDTPITORCAMENTO: TIntegerField;
    cdsdetailCDPERIODICIDADE: TIntegerField;
    cdsdetailNUPERIODICIDADE: TIntegerField;
    sdsitorcamentorecursoCDEMPRESA: TLargeintField;
    sdsitorcamentomaterialCDEMPRESA: TLargeintField;
    sdsitorcamentomaterialDSOBSERVACAO: TBlobField;
    sdsitorcamentocustoCDEMPRESA: TLargeintField;
    cdsitorcamentorecursoCDEMPRESA: TLargeintField;
    cdsitorcamentomaterialCDEMPRESA: TLargeintField;
    cdsitorcamentomaterialDSOBSERVACAO: TBlobField;
    cdsitorcamentocustoCDEMPRESA: TLargeintField;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsitorcamentocustoNewRecord(DataSet: TDataSet);
    procedure cdsitorcamentocustoBeforePost(DataSet: TDataSet);
    procedure cdsitorcamentocustoAfterPost(DataSet: TDataSet);
    procedure cdsitorcamentocustoAfterDelete(DataSet: TDataSet);
    procedure cdsitorcamentomaterialNewRecord(DataSet: TDataSet);
    procedure cdsitorcamentomaterialBeforePost(DataSet: TDataSet);
    procedure cdsitorcamentomaterialAfterPost(DataSet: TDataSet);
    procedure cdsitorcamentomaterialAfterDelete(DataSet: TDataSet);
    procedure cdsitorcamentorecursoNewRecord(DataSet: TDataSet);
    procedure cdsitorcamentorecursoBeforePost(DataSet: TDataSet);
    procedure cdsitorcamentorecursoAfterPost(DataSet: TDataSet);
    procedure cdsitorcamentorecursoAfterDelete(DataSet: TDataSet);
    procedure actExibirCompraExecute(Sender: TObject);
    procedure cxGridDBBandedTableView2CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grdcustoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cxGridDBBandedTableView2QTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitorcamentocustoCDDIGITADOValidate(Sender: TField);
    procedure cdsitorcamentocustoQTITEMValidate(Sender: TField);
    procedure cdsitorcamentomaterialQTITEMValidate(Sender: TField);
    procedure cdsitorcamentomaterialQTPESOUNITARIOValidate(Sender: TField);
    procedure setvalorfinal(Sender: TField);
    procedure cdsitorcamentomaterialCDDIGITADOValidate(Sender: TField);
    procedure cdsitorcamentomaterialQTPECAValidate(Sender: TField);
    procedure setvalormaterial(Sender: TField);
    procedure cdsitorcamentorecursoCDTPEQUIPAMENTOValidate(Sender: TField);
    procedure cdsitorcamentorecursoQTPREPARACAOValidate(Sender: TField);
    procedure cdsitorcamentorecursoQTOPERACAOValidate(Sender: TField);
    procedure cdsitorcamentorecursoVLPREPARACAOValidate(Sender: TField);
    procedure cdsitorcamentorecursoVLOPERACAOValidate(Sender: TField);
    procedure cdsdetailVLPRODUCAOPValidate(Sender: TField);
    procedure cdsdetailQTITEMValidate(Sender: TField);
    procedure cdsdetailVLUNITARIOValidate(Sender: TField);
    procedure cdsdetailALICMSValidate(Sender: TField);
    procedure cdsdetailALIPIValidate(Sender: TField);
    procedure cdsdetailDSDESENHOValidate(Sender: TField);
    procedure setvlproducao(Sender: TField);
    procedure pgcChange(Sender: TObject);
    procedure acteditarExecute(Sender: TObject);
    procedure ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
  private   { Private declarations }
    registro : TRegistro;
    produto : TProduto;
    equipamento : TEquipamento;
    orcamento : TOrcamento;
    procedure setvalorcusto;
    procedure settotalmaterial;
    procedure setpreparacao;
    procedure setoperacao;
    procedure setvalor;
    procedure Atualizar_pizza_peca;
    procedure Atualizar_pizza_item;
  public    { Public declarations }
  end;

function dlgDetalharorcamento(boeditar:Boolean; cdstorcamento, cditorcamento: string; orcamento:TOrcamento; registro:TRegistro; produto:TProduto; equipamento:tequipamento):boolean;

var
  frmdlgdetalheorcamento: Tfrmdlgdetalheorcamento;

implementation

uses uMain, uDtmMain, udlgentradaproduto, udlgcalculopeso,
  udlgdesenhoorcamento;

{$R *.DFM}

function dlgDetalharorcamento(boeditar:Boolean; cdstorcamento, cditorcamento: string; orcamento:TOrcamento; registro:TRegistro; produto:TProduto; equipamento:tequipamento):boolean;
begin
  frmdlgdetalheorcamento := tfrmdlgdetalheorcamento.Create(application);
  try
    frmdlgdetalheorcamento.registro    := registro;
    frmdlgdetalheorcamento.produto     := produto;
    frmdlgdetalheorcamento.equipamento := equipamento;
    frmdlgdetalheorcamento.orcamento   := orcamento;
    with frmdlgdetalheorcamento do
    begin
      acteditar.Enabled            := boeditar;
      sdsdetail.ParamByName(_cdempresa).AsLargeint     := empresa.cdempresa;
      sdsdetail.ParamByName(_cditorcamento).AsString := cditorcamento;
      cdsdetail.Open;
      if boeditar and ((cdstorcamento = _1) or ((cdstorcamento = _3) and (cdsdetailQTAPROVADO.AsFloat = 0))) then
      begin
        acteditarExecute(acteditar);
      end;
      showmodal;
      result := (ModalResult = mrOk) and (cdsdetail.ReadOnly = False);
    end;
  finally
    freeandnil(frmdlgdetalheorcamento);
  end;
end;

procedure Tfrmdlgdetalheorcamento.btnOkClick(Sender: TObject);
begin
  if cdsdetail.ReadOnly = False then
  begin
    cdsdetail.ApplyUpdates(0);
  end;
  modalresult := mrok;
end;

procedure Tfrmdlgdetalheorcamento.FormCreate(Sender: TObject);
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
begin
  grdpecaVLCPPP.Visible       := empresa.tpregime = _S;
  grditemvlcpp.visible        := empresa.tpregime = _S;
  grdpecaVLSIMPLESP.Visible   := empresa.tpregime = _S;
  grditemvlsimples.visible    := empresa.tpregime = _S;
  grdpecaVLLUCROIRCSP.Visible := empresa.tpregime = _R;
  grditemVLLUCROIRCS.Visible  := empresa.tpregime = _R;
  grdpecaVLIRCSLLP.Visible    := Empresa.tpregime = _R;
  grditemvlircsll.visible     := empresa.tpregime = _R;

  cxGridDBBandedTableView2.Bands[get_index('PIS'   , cxGridDBBandedTableView2)].Visible := Empresa.tpregime = _R;
  cxGridDBBandedTableView2.Bands[get_index('COFINS', cxGridDBBandedTableView2)].Visible := Empresa.tpregime = _R;
  cxGridDBBandedTableView2BORECUPERAIPI.Visible  := not (Empresa.tpregime = _s);
  cxGridDBBandedTableView2BORECUPERAICMS.Visible := not (Empresa.tpregime = _s);

  TcxLookupComboBoxProperties(tbvrecursoCDTPEQUIPAMENTO.Properties).ListSource      := abrir_tabela(_tpequipamento);
  TcxLookupComboBoxProperties(grdpecacdtpipi.Properties.EditProperties).ListSource  := abrir_tabela(_tpipi);
  TcxLookupComboBoxProperties(grdpecacdtpicms.Properties.EditProperties).ListSource := abrir_tabela(_tpicms);
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentocustoNewRecord(DataSet: TDataSet);
begin
  cdsitorcamentocustoCDITORCAMENTOCUSTO.AsString := GerarCodigo(_it+_ORCAMENTO+_custo);
  cdsitorcamentocustoVLUNITARIO.AsCurrency       := 0;
  cdsitorcamentocustoNUFATOR.AsFloat             := 1;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentocustoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitorcamentocusto);
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentocustoAfterPost(DataSet: TDataSet);
var
  vltotal : Currency;
  c : TClientDataSet;
begin
  vltotal := 0;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsitorcamentocusto, false);
    c.First;
    while not c.Eof do
    begin
      vltotal := vltotal + c.fieldbyname(_VLTOTAL).AsCurrency;
      c.Next;
    end;
    if cdsdetail.State = dsbrowse then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailVLCUSTOp.AsCurrency := vltotal;
    cdsdetailVLCUSTO.AsCurrency  := vltotal * cdsdetailQTITEM.AsFloat;
  finally
    FreeAndNil(c);
  end;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentocustoAfterDelete(DataSet: TDataSet);
begin
  cdsitorcamentocustoAfterPost(DataSet);
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentomaterialNewRecord(DataSet: TDataSet);
begin
  cdsitorcamentomaterialCDITORCAMENTOMATERIAL.AsString := GerarCodigo(_it+_ORCAMENTO+_material);
  cdsitorcamentomaterialQTITEM.AsFloat     := 0;
  cdsitorcamentomaterialVLUNITARIO.AsFloat := 0;
  cdsitorcamentomaterialNUFATOR.AsFloat    := 1;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentomaterialBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitorcamentomaterial);
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentomaterialAfterPost(DataSet: TDataSet);
var
  vltotalfinal : Currency;
  c : TClientDataSet;
begin
  vltotalfinal := 0;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cdsitorcamentomaterial, false);
    c.First;
    while not c.Eof do
    begin
      vltotalfinal := vltotalfinal + c.fieldbyname(_vlfinal).AsCurrency;
      c.Next;
    end;
    if cdsdetail.State = dsbrowse then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailVLMATERIALp.AsCurrency := vltotalfinal;
    cdsdetailVLMATERIAL.AsCurrency  := vltotalfinal * cdsdetailQTITEM.AsFloat;
  finally
    FreeAndNil(c);
  end;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentomaterialAfterDelete(DataSet: TDataSet);
begin
  cdsitorcamentomaterialAfterPost(DataSet);
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentorecursoNewRecord(DataSet: TDataSet);
begin
  cdsitorcamentorecursoCDITORCAMENTORECURSO.AsString := GerarCodigo(_it+_orcamento+_recurso);
  cdsitorcamentorecursoQTPREPARACAO.AsFloat          := 0;
  cdsitorcamentorecursoQTOPERACAO.AsFloat            := 0;
  cdsitorcamentorecursoNUSEQUENCIA.AsInteger         := cdsitorcamentorecurso.RecordCount + 1;
  cdsitorcamentorecursoCDTPDURACAO.AsString          := _1;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentorecursoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitorcamentorecurso);
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentorecursoAfterPost(DataSet: TDataSet);
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
    c.CloneCursor(cdsitorcamentorecurso, false);
    c.First;
    while not c.Eof do
    begin
      vloperacao   := vloperacao   + c.fieldbyname(_VLTOTALOPERACAO).AsCurrency;
      vlpreparacao := vlpreparacao + c.fieldbyname(_VLTOTALPREPARACAO).AsCurrency;
      qtoperacao   := qtoperacao   + c.fieldbyname(_qtoperacao).asfloat;
      qtpreparacao := qtpreparacao + c.fieldbyname(_qtpreparacao).asfloat;
      c.Next;
    end;
    IF cdsdetail.State = dsbrowse then
    begin
      cdsdetail.Edit;
    end;
    cdsdetailVLOPERACAOp.AsCurrency   := vloperacao;
    cdsdetailVLPREPARACAOp.AsCurrency := vlpreparacao;
    cdsdetailVLRECURSOP.AsCurrency    := vloperacao + vlpreparacao;
    cdsdetailqtoperacaop.asfloat      := qtoperacao;
    cdsdetailqtpreparacaop.asfloat    := qtpreparacao;
    cdsdetailqthorap.asfloat          := cdsdetailqtoperacaop.asfloat + cdsdetailqtpreparacaop.asfloat;

    cdsdetailVLOPERACAO.AsCurrency   := vloperacao * cdsdetailQTITEM.AsFloat;
    cdsdetailVLPREPARACAO.AsCurrency := vlpreparacao * cdsdetailQTITEM.AsFloat;
    cdsdetailVLRECURSO.AsCurrency    := cdsdetailVLOPERACAO.AsCurrency + cdsdetailVLPREPARACAO.AsCurrency;
    cdsdetailqtoperacao.asfloat      := qtoperacao * cdsdetailqtitem.asfloat;
    cdsdetailqtpreparacao.asfloat    := qtpreparacao * cdsdetailqtitem.asfloat;
    cdsdetailqthora.asfloat          := cdsdetailqtoperacao.asfloat + cdsdetailqtpreparacao.asfloat;
  finally
    FreeAndNil(c);
  end;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentorecursoAfterDelete(DataSet: TDataSet);
begin
  cdsitorcamentorecursoAfterPost(DataSet);
end;

procedure Tfrmdlgdetalheorcamento.actExibirCompraExecute(Sender: TObject);
begin
  dlgentradaproduto(cdsitorcamentomaterialCDPRODUTO.AsString);
end;

procedure Tfrmdlgdetalheorcamento.cxGridDBBandedTableView2CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_orcamento, cdsitorcamentomaterial, false);
end;

procedure Tfrmdlgdetalheorcamento.grdcustoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_orcamento, cdsitorcamentocusto, false);
end;

procedure Tfrmdlgdetalheorcamento.cxGridDBBandedTableView2QTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  qtpeso : real;
  dsformula : string;
begin
  if cdsdetail.State <> dsedit then
  begin
    Exit;
  end;
  qtpeso := cdsitorcamentomaterialQTPESOUNITARIO.AsFloat;
  if CalcularPeso(cdsitorcamentomaterialQTPESOUNITARIO.ReadOnly, cdsitorcamentomaterialCDPRODUTO.AsString, dsformula, qtpeso) and (not cdsitorcamentomaterial.ReadOnly) then
  begin
    if cdsitorcamentomaterial.State <> dsedit then
    begin
      cdsitorcamentomaterial.Edit;
    end;
    cdsitorcamentomaterialQTPESOUNITARIO.AsFloat := qtpeso;
    cdsitorcamentomaterialDSFORMULA.AsString     := dsformula;
  end;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentocustoCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _boorcamento);
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados;
  if (produto.cdproduto <> 0) and (cdsitorcamentocustoCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsitorcamentocustoCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  if cdsitorcamentocustoQTITEM.IsNull then
  begin
    cdsitorcamentocustoQTITEM.AsFloat := 1;
  end;
  cdsitorcamentocustoNMPRODUTO.asstring := produto.nmproduto;
  cdsitorcamentocustoVLTOTAL.AsCurrency := produto.vlvenda;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentocustoQTITEMValidate(Sender: TField);
begin
  setvalorcusto;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentomaterialQTITEMValidate(Sender: TField);
begin
  settotalmaterial;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentomaterialQTPESOUNITARIOValidate(Sender: TField);
begin
  cdsitorcamentomaterialQTITEM.AsFloat := cdsitorcamentomaterialQTPECA.AsFloat * cdsitorcamentomaterialQTPESOUNITARIO.AsFloat;
end;

procedure Tfrmdlgdetalheorcamento.setvalorfinal(Sender: TField);
var
  valor : Currency;
begin
  cdsitorcamentomaterialVLPIS.AsCurrency    := cdsitorcamentomaterialVLTOTAL.AsCurrency * cdsitorcamentomaterialALPIS.AsFloat / 100;
  cdsitorcamentomaterialVLCOFINS.AsCurrency := cdsitorcamentomaterialVLTOTAL.AsCurrency * cdsitorcamentomaterialALCOFINS.AsFloat / 100;
  cdsitorcamentomaterialVLICMS.AsCurrency   := cdsitorcamentomaterialVLTOTAL.AsCurrency * cdsitorcamentomaterialALICMS.AsFloat / 100;
  cdsitorcamentomaterialVLIPI.AsCurrency    := cdsitorcamentomaterialVLTOTAL.AsCurrency * cdsitorcamentomaterialALIPI.AsFloat / 100;
  valor                                     := cdsitorcamentomaterialVLTOTAL.AsCurrency + cdsitorcamentomaterialVLFRETE.AsCurrency + cdsitorcamentomaterialVLIPI.AsCurrency;
  if cdsitorcamentomaterialBORECUPERAICMS.AsString   = _S then
  begin
    valor := valor - cdsitorcamentomaterialVLICMS.AsCurrency;
  end;
  if cdsitorcamentomaterialBORECUPERAIPI.AsString    = _S then
  begin
    valor := valor - cdsitorcamentomaterialVLIPI.AsCurrency;
  end;
  if cdsitorcamentomaterialBORECUPERAPIS.AsString    = _S then
  begin
    valor := valor - cdsitorcamentomaterialVLPIS.AsCurrency;
  end;
  if cdsitorcamentomaterialBORECUPERACOFINS.AsString = _S then
  begin
    valor := valor - cdsitorcamentomaterialVLCOFINS.AsCurrency;
  end;
  cdsitorcamentomaterialVLFINAL.AsCurrency := valor;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentomaterialCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, _boorcamento);
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados;
  if (produto.cdproduto <> 0) and (cdsitorcamentomaterialCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsitorcamentomaterialCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  cdsitorcamentomaterialNMPRODUTO.asstring        := produto.nmproduto;
  cdsitorcamentomaterialVLUNITARIO.AsCurrency     := produto.vlcusto;
  cdsitorcamentomaterialNUCLFISCAL.AsString       := PRODUTO.nuclfiscal;
  cdsitorcamentomaterialBORECUPERAICMS.AsString   := produto.borecuperaicms;
  cdsitorcamentomaterialBORECUPERACOFINS.AsString := produto.borecuperacofins;
  cdsitorcamentomaterialBORECUPERAPIS.AsString    := produto.borecuperapis;
  cdsitorcamentomaterialBORECUPERAIPI.AsString    := produto.borecuperaipi;
  cdsitorcamentomaterialALICMS.AsFloat            := produto.alicms;
  cdsitorcamentomaterialALIPI.AsFloat             := produto.alipi;
  cdsitorcamentomaterialALPIS.AsFloat             := produto.alpis;
  cdsitorcamentomaterialALCOFINS.AsFloat          := produto.alcofins;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentomaterialQTPECAValidate(Sender: TField);
begin
  cdsitorcamentomaterialQTITEM.AsFloat := cdsitorcamentomaterialQTPECA.AsFloat * cdsitorcamentomaterialQTPESOUNITARIO.AsFloat;
end;

procedure Tfrmdlgdetalheorcamento.setvalormaterial(Sender: TField);
begin
  cdsdetailVLPRODUCAOp.AsCurrency := cdsdetailVLPRODUCAOp.AsCurrency - cdsitorcamentomaterialVLFINAL.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency  := cdsdetailVLPRODUCAO.AsCurrency  - (cdsitorcamentomaterialVLFINAL.AsCurrency * cdsdetailQTITEM.AsFloat);
  cdsdetailVLPRODUCAOp.AsCurrency := cdsdetailVLPRODUCAOp.AsCurrency + cdsitorcamentomaterialVLFINAL.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency  := cdsdetailVLPRODUCAO.AsCurrency + (cdsitorcamentomaterialVLFINAL.AsCurrency * cdsdetailQTITEM.AsFloat);
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentorecursoCDTPEQUIPAMENTOValidate(Sender: TField);
begin
  equipamento.tpequipamento.Select(sender.AsInteger);
  cdsitorcamentorecursoVLPREPARACAO.AsCurrency := equipamento.tpequipamento.vlpreparacao;
  cdsitorcamentorecursoVLOPERACAO.AsCurrency   := equipamento.tpequipamento.vloperacao;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentorecursoQTPREPARACAOValidate(Sender: TField);
begin
  setpreparacao;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentorecursoQTOPERACAOValidate(Sender: TField);
begin
  setoperacao;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentorecursoVLPREPARACAOValidate(Sender: TField);
begin
  setpreparacao;
end;

procedure Tfrmdlgdetalheorcamento.cdsitorcamentorecursoVLOPERACAOValidate(Sender: TField);
begin
  setoperacao;
end;

procedure Tfrmdlgdetalheorcamento.cdsdetailVLPRODUCAOPValidate(Sender: TField);
var
  precovenda : Currency;
  markupmultiplicador, vlpr : Real;
begin
  if orcamento.tporcamento.boitemcusto <> _s then
  begin
    Exit;
  end;
  if empresa.tpregime = _S then
  begin
    if cdsdetailALICMS.AsFloat   > 0 then
    begin
      cdsdetailALICMS.AsFloat   := 0;
    end;
    if cdsdetailALipi.AsFloat    > 0 then
    begin
      cdsdetailALipi.AsFloat    := 0;
    end;
    if cdsdetailALpis.AsFloat    > 0 then
    begin
      cdsdetailALpis.AsFloat    := 0;
    end;
    if cdsdetailALcofins.AsFloat > 0 then
    begin
      cdsdetailALcofins.AsFloat := 0;
    end;
    if cdsdetailALirpj.AsFloat   > 0 then
    begin
      cdsdetailALirpj.AsFloat   := 0;
    end;
    if cdsdetailALcsll.AsFloat   > 0 then
    begin
      cdsdetailALcsll.AsFloat   := 0;
    end;
    vlpr := cdsdetailALSIMPLES.AsFloat+cdsdetailPRLUCRO.AsFloat
  end
  else if empresa.tpregime = _P then
  begin
    if cdsdetailALSIMPLES.AsFloat > 0 then
    begin
      cdsdetailALSIMPLES.AsFloat := 0;
    end;
    vlpr := cdsdetailALPIS.AsFloat + cdsdetailALCOFINS.AsFloat + cdsdetailALCSLL.AsFloat + cdsdetailALIRPJ.AsFloat + cdsdetailPRLUCRO.AsFloat;
    if cdsdetailCDTPICMS.AsInteger = 2 then
    begin
      vlpr := vlpr + cdsdetailALICMS.AsFloat;
    end;
    if cdsdetailCDTPIPI.AsInteger  = 1 then
    begin
      vlpr := vlpr + cdsdetailALIPI.AsFloat;
    end;
  end
  else
  begin
    if cdsdetailALSIMPLES.AsFloat > 0 then
    begin
      cdsdetailALSIMPLES.AsFloat := 0;
    end;
    vlpr := cdsdetailALPIS.AsFloat + cdsdetailALCOFINS.AsFloat + cdsdetailALCSLL.AsFloat + cdsdetailALIRPJ.AsFloat + cdsdetailPRLUCRO.AsFloat;
    if cdsdetailCDTPICMS.AsInteger = 2 then
    begin
      vlpr := vlpr + cdsdetailALICMS.AsFloat;
    end;
    if cdsdetailCDTPIPI.AsInteger  = 1 then
    begin
      vlpr := vlpr + cdsdetailALIPI.AsFloat;
    end;
  end;

  vlpr := vlpr + cdsdetailPRDESPESAADMINISTRATIVA.AsFloat + cdsdetailPRDESPESAFRETE.AsFloat + cdsdetailPRDESPESACOMERCIAL.AsFloat + cdsdetailPRDESPESAEMBALAGEM.AsFloat + cdsdetailPRDESPESASEGURO.AsFloat;

  markupmultiplicador := 100 / (100 - vlpr);
  precovenda          := (cdsdetailVLPRODUCAOp.AsCurrency * markupmultiplicador) - (cdsdetailvldesconto.AsCurrency / cdsdetailqtitem.AsFloat);

  if cdsdetailCDTPICMS.AsInteger = 2 then
  begin
    cdsdetailVLICMSP.AsCurrency := precovenda * cdsdetailALICMS.AsFloat / 100;
  end;
  if cdsdetailCDTPIPI.AsInteger  = 1 then
  begin
    cdsdetailVLIPIp.AsCurrency  := precovenda * cdsdetailALIPI.AsFloat / 100;
  end;

  cdsdetailVLPISp.AsCurrency     := precovenda * cdsdetailALPIS.AsFloat / 100;
  cdsdetailVLCOFINSp.AsCurrency  := precovenda * cdsdetailALCOFINS.AsFloat / 100;
  cdsdetailVLISSP.AsCurrency     := precovenda * cdsdetailALISS.AsFloat / 100;
  cdsdetailVLSIMPLESP.AsCurrency := precovenda * cdsdetailALSIMPLES.AsFloat / 100;

  cdsdetailVLIMPOSTOP.AsCurrency := cdsdetailVLPISp.AsCurrency + cdsdetailVLCOFINSP.AsCurrency + cdsdetailVLISSP.AsCurrency + cdsdetailVLSIMPLESP.AsCurrency;
  if cdsdetailCDTPICMS.AsInteger = 2 then
  begin
    cdsdetailVLIMPOSTOP.AsCurrency := cdsdetailVLIMPOSTOP.AsCurrency + cdsdetailVLICMSp.AsCurrency;
  end;
  if cdsdetailCDTPIPI.AsInteger  = 1 then
  begin
    cdsdetailVLIMPOSTOP.AsCurrency := cdsdetailVLIMPOSTOp.AsCurrency + cdsdetailVLIPIP.AsCurrency;
  end;
  cdsdetailVLCSLLp.AsCurrency   := precovenda * cdsdetailALCSLL.AsFloat / 100;
  cdsdetailVLIRPJp.AsCurrency   := precovenda * cdsdetailALIRPJ.AsFloat / 100;

  if (empresa.tpregime = _S) or (empresa.tpregime = _P) then
  begin
    cdsdetailVLIMPOSTOP.AsCurrency := cdsdetailVLIMPOSTOP.AsCurrency + cdsdetailVLCSLLP.AsCurrency + cdsdetailVLIRPJP.AsCurrency;
  end;

  cdsdetailVLLUCROP.AsCurrency                 := precovenda - cdsdetailVLPRODUCAOp.AsCurrency - cdsdetailVLIMPOSTOP.AsCurrency;
  cdsdetailVLUNITARIO.AsCurrency               := RoundTo(precovenda, -2);
  cdsdetailVLVENDALIQUIDAP.AsCurrency          := cdsdetailVLUNITARIO.AsCurrency - cdsdetailVLIMPOSTOP.AsCurrency;
  cdsdetailVLLUCROBRUTOP.AsCurrency            := cdsdetailVLVENDALIQUIDAP.AsCurrency - cdsdetailVLPRODUCAOP.AsCurrency;
  cdsdetailVLDESPESAADMINISTRATIVAP.AsCurrency := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESAADMINISTRATIVA.AsFloat / 100;
  cdsdetailVLDESPESAFRETEP.AsCurrency          := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESAFRETE.AsFloat / 100;
  cdsdetailVLDESPESACOMERCIALP.AsCurrency      := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESACOMERCIAL.AsFloat / 100;
  cdsdetailVLDESPESAEMBALAGEMP.AsCurrency      := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESAEMBALAGEM.AsFloat / 100;
  cdsdetailVLDESPESASEGUROP.AsCurrency         := cdsdetailVLUNITARIO.AsCurrency * cdsdetailPRDESPESASEGURO.AsFloat / 100;
  cdsdetailVLDESPESAP.AsCurrency               := cdsdetailVLDESPESAADMINISTRATIVAP.AsCurrency + cdsdetailVLDESPESAFRETEP.AsCurrency +
                                                  cdsdetailVLDESPESACOMERCIALP.AsCurrency      + cdsdetailVLDESPESAEMBALAGEMP.AsCurrency +
                                                  cdsdetailVLDESPESASEGUROP.AsCurrency;
  cdsdetailVLLUCROIRCSP.AsCurrency := cdsdetailVLLUCROBRUTOP.AsCurrency - cdsdetailVLDESPESAP.AsCurrency;
  cdsdetailVLLUCROP.AsCurrency     := cdsdetailVLLUCROIRCSP.AsCurrency;
  if empresa.tpregime = _R then
  begin
    cdsdetailVLIRCSLLP.AsCurrency := cdsdetailVLIRPJP.AsCurrency      + cdsdetailVLCSLLP.AsCurrency;
    cdsdetailVLLUCROP.AsCurrency  := cdsdetailVLLUCROIRCSP.AsCurrency - cdsdetailVLIRCSLLP.AsCurrency;
  end;
  //
  cdsdetailVLIMPOSTO.AsCurrency      := cdsdetailVLIMPOSTOP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLICMS.AsCurrency         := cdsdetailVLICMSP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLSIMPLES.AsCurrency      := cdsdetailVLSIMPLESP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLIPI.AsCurrency          := cdsdetailVLIPIP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLISS.AsCurrency          := cdsdetailVLISSP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLSIMPLES.AsCurrency      := cdsdetailVLSIMPLESP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLIRPJ.AsCurrency         := cdsdetailVLIRPJP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLCSLL.AsCurrency         := cdsdetailVLCSLLP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLPIS.AsCurrency          := cdsdetailVLPISP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLCOFINS.AsCurrency       := cdsdetailVLCOFINSP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLVENDALIQUIDA.AsCurrency := cdsdetailVLVENDALIQUIDAP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLLUCROBRUTO.AsCurrency   := cdsdetailVLLUCROBRUTOP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESA.AsCurrency      := cdsdetailVLDESPESAP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESAADMINISTRATIVA.AsCurrency := cdsdetailVLDESPESAADMINISTRATIVAP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESAFRETE.AsCurrency := cdsdetailVLDESPESAFRETEP.AsCurrency * cdsdetailQTITEM.AsCurrency;
  cdsdetailVLDESPESACOMERCIAL.AsCurrency := cdsdetailVLDESPESACOMERCIALP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESAEMBALAGEM.AsCurrency := cdsdetailVLDESPESAEMBALAGEMP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLDESPESASEGURO.AsCurrency    := cdsdetailVLDESPESASEGUROP.AsCurrency * cdsdetailQTITEM.AsFloat;
  cdsdetailVLLUCRO.AsCurrency            := cdsdetailVLLUCROP.AsCurrency * cdsdetailQTITEM.AsFloat;
end;

procedure Tfrmdlgdetalheorcamento.cdsdetailQTITEMValidate(Sender: TField);
begin
  setvalor;
end;

procedure Tfrmdlgdetalheorcamento.cdsdetailVLUNITARIOValidate(Sender: TField);
begin
  setvalor;
end;

procedure Tfrmdlgdetalheorcamento.cdsdetailALICMSValidate(Sender: TField);
begin
  cdsdetailVLICMS.AsCurrency := cdsdetailVLTOTAL.AsCurrency * cdsdetailALICMS.AsCurrency / 100;
  cdsdetailVLPRODUCAOPValidate(Sender);
end;

procedure Tfrmdlgdetalheorcamento.cdsdetailALIPIValidate(Sender: TField);
begin
  setvalor;
  cdsdetailVLPRODUCAOPValidate(Sender);
end;

procedure Tfrmdlgdetalheorcamento.cdsdetailDSDESENHOValidate(Sender: TField);
var
  cditorcamento : string;
begin
  // verificar se existe o desenho em outros orçamentos
  if RetornaSQLInteger('select count(*) from itorcamento where cdempresa='+empresa.cdempresa.tostring+' and cditorcamento<>'+cdsdetailCDITORCAMENTO.AsString+' and dsdesenho='+quotedstr(sender.AsString))>0 then
  begin
    if MessageDlg('Existem orçamentos com este desenho.'#13'Deseja visualizá-los?', mtconfirmation, [mbyes,mbno], 0) = mryes then
    begin
      cditorcamento := dlgdesenhoorcamento(cdsdetailCDITORCAMENTO.AsString, sender.asstring);
      if cditorcamento <> '' then
      begin

      end;
    end;
  end;
end;

procedure Tfrmdlgdetalheorcamento.setvlproducao(Sender: TField);
begin
  cdsdetailVLPRODUCAOp.AsCurrency := cdsdetailVLMATERIALp.AsCurrency + cdsdetailVLCUSTOp.AsCurrency + cdsdetailVLPREPARACAOp.AsCurrency + cdsdetailVLOPERACAOp.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency := cdsdetailVLMATERIAL.AsCurrency + cdsdetailVLCUSTO.AsCurrency + cdsdetailVLPREPARACAO.AsCurrency + cdsdetailVLOPERACAO.AsCurrency;
end;

procedure Tfrmdlgdetalheorcamento.setvalorcusto;
begin
  cdsdetailVLPRODUCAOp.AsCurrency       := cdsdetailVLPRODUCAOp.AsCurrency    - cdsitorcamentocustoVLTOTAL.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency        := cdsdetailVLPRODUCAO.AsCurrency    - (cdsitorcamentocustoVLTOTAL.AsCurrency * cdsdetailQTITEM.AsFloat);
  cdsitorcamentocustoVLTOTAL.AsCurrency := cdsitorcamentocustoQTITEM.AsFloat * cdsitorcamentocustoVLUNITARIO.AsCurrency;
  cdsdetailVLPRODUCAOp.AsCurrency       := cdsdetailVLPRODUCAOp.AsCurrency    + cdsitorcamentocustoVLTOTAL.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency        := cdsdetailVLPRODUCAO.AsCurrency    + (cdsitorcamentocustoVLTOTAL.AsCurrency * cdsdetailQTITEM.AsFloat);
end;

procedure Tfrmdlgdetalheorcamento.settotalmaterial;
begin
  cdsitorcamentomaterialVLTOTAL.AsCurrency := cdsitorcamentomaterialQTITEM.AsCurrency * cdsitorcamentomaterialVLUNITARIO.ascurrency;
end;

procedure Tfrmdlgdetalheorcamento.setpreparacao;
begin
  cdsdetailVLPRODUCAOp.AsCurrency                   := cdsdetailVLPRODUCAOp.AsCurrency             - cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency                    := cdsdetailVLPRODUCAO.AsCurrency  - (cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency * cdsdetailqtitem.AsFloat);
  cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency := cdsitorcamentorecursoQTPREPARACAO.AsCurrency * cdsitorcamentorecursoVLPREPARACAO.ascurrency;
  cdsdetailVLPRODUCAOp.AsCurrency                   := cdsdetailVLPRODUCAOp.AsCurrency             + cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency                    := cdsdetailVLPRODUCAO.AsCurrency              + (cdsitorcamentorecursoVLTOTALPREPARACAO.AsCurrency * cdsdetailQTITEM.AsFloat);
end;

procedure Tfrmdlgdetalheorcamento.setoperacao;
begin
  cdsdetailVLPRODUCAOP.AsCurrency                 := cdsdetailVLPRODUCAOP.AsCurrency - cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency                  := cdsdetailVLPRODUCAO.AsCurrency - (cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency * cdsdetailQTITEM.AsFloat);
  cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency := cdsitorcamentorecursoQTOPERACAO.AsCurrency * cdsitorcamentorecursoVLOPERACAO.ascurrency;
  cdsdetailVLPRODUCAOP.AsCurrency                 := cdsdetailVLPRODUCAOP.AsCurrency + cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency;
  cdsdetailVLPRODUCAO.AsCurrency                  := cdsdetailVLPRODUCAO.AsCurrency + (cdsitorcamentorecursoVLTOTALOPERACAO.AsCurrency * cdsdetailQTITEM.AsFloat);
end;

procedure Tfrmdlgdetalheorcamento.setvalor;
begin
  cdsdetailVLTOTAL.AsCurrency     := RoundTo(cdsdetailQTITEM.AsFloat * cdsdetailVLUNITARIO.ascurrency, -2);
  cdsdetailVLTOTALCIPI.AsCurrency := cdsdetailVLTOTAL.AsCurrency + (cdsdetailVLTOTAL.AsCurrency * cdsdetailALIPI.AsFloat / 100);
end;

procedure Tfrmdlgdetalheorcamento.Atualizar_pizza_peca;
  procedure adicionar_valor(nome:string; valor:currency);
  begin
    cdspizzapeca.Append;
    cdspizzapecanome.AsString    := nome;
    cdspizzapecavalor.AsCurrency := valor * 100;
    cdspizzapeca.Post;
  end;
begin
  if not cdspizzapeca.Active then
  begin
    cdspizzapeca.CreateDataSet;
    cdspizzapeca.Open;
  end;
  if cdspizzapeca.RecordCount > 0 then
  begin
    cdspizzapeca.EmptyDataSet;
  end;
  cdspizzapeca.ReadOnly := False;
  Adicionar_valor('Recurso'         , cdsdetailVLRECURSOP.AsCurrency);
  Adicionar_valor('Material'        , cdsdetailVLMATERIALP.AsCurrency);
  Adicionar_valor('Serviço Terceiro', cdsdetailVLCUSTOP.AsCurrency);
end;

procedure Tfrmdlgdetalheorcamento.Atualizar_pizza_item;
  procedure adicionar_valor(nome:string; valor:currency);
  begin
    cdspizzaitem.Append;
    cdspizzaitemnome.AsString    := nome + ' R$ '+formatfloat(__moeda, valor);
    cdspizzaitemvalor.AsCurrency := valor;
    cdspizzaitem.Post;
  end;
begin
  if not cdspizzaitem.Active then
  begin
    cdspizzaitem.CreateDataSet;
    cdspizzaitem.Open;
  end;
  if cdspizzaitem.RecordCount > 0 then
  begin
    cdspizzaitem.EmptyDataSet;
  end;
  cdspizzaitem.ReadOnly := False;
  Adicionar_valor('Recurso' , cdsdetailVLOPERACAOP.AsCurrency + cdsdetailVLPREPARACAOP.AsCurrency);
  Adicionar_valor('Material', cdsdetailVLMATERIALP.AsCurrency);
  Adicionar_valor('Serviço Terceiro', cdsdetailVLCUSTOP.AsCurrency);
  if empresa.tpregime = _R then
  begin
    Adicionar_valor('Imposto', cdsdetailVLIMPOSTOP.AsCurrency + cdsdetailVLIRCSLLP.AsCurrency)
  end
  else
  begin
    Adicionar_valor('Imposto', cdsdetailVLIMPOSTOP.AsCurrency);
  end;
  Adicionar_valor('Despesa', cdsdetailVLDESPESAP.AsCurrency);
  Adicionar_valor('Lucro'  , cdsdetailVLLUCROP.AsCurrency);
end;

procedure Tfrmdlgdetalheorcamento.pgcChange(Sender: TObject);
begin
  if pgc.ActivePage = tbscomposicaocusto then
  begin
    atualizar_pizza_peca
  end
  else if pgc.ActivePage = tbscomposicaopreco then
  begin
    Atualizar_pizza_item;
  end;
end;

procedure Tfrmdlgdetalheorcamento.acteditarExecute(Sender: TObject);
begin
  cdsdetail.ReadOnly                 := False;
  cdsitorcamentorecurso.ReadOnly     := False;
  cdsitorcamentomaterial.ReadOnly    := False;
  cdsitorcamentocusto.ReadOnly       := False;
  acteditar.Enabled                  := False;
end;

procedure Tfrmdlgdetalheorcamento.ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.
