{$I ACBr.inc}
unit umdfe;

interface

uses
  System.Actions, System.UITypes,
  windows, sysutils, dialogs, graphics, Classes, ActnList, StdCtrls, forms,
  ShellAPI, Menus, IniFiles, ComCtrls, Mask, ToolWin, Controls, ExtCtrls, Buttons,
  Clipbrd, dateutils,
  Grids,
  DB, sqlexpr, Provider, DBClient,
  pmdfeConversaoMDFe,
  ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFEFR, ACBrMDFe, pcnConversao, ACBrDFeSSL, ACBrMail, ACBrDFeException,
  uregistroIb, urotinas, ustrings, uregistro,
  uconstantes, unumero, urichedit, udatahora, uexportarexcel, uprogressbar,
  classeemail, classetransportadora, classemdfe, classeRegistro, classeretornasql,
  classequery, classeempresa, classeregistrainformacao, classegerar, classeusuario, classecte, classeexecutasql,
  classeconsiste, classeform, classefornecedor, classeserie,
  dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxPC, cxControls, cxContainer,
  cxLookAndFeelPainters, cxEdit, cxGroupBox,
  cxSplitter, cxTreeView, xmldom,
  XMLIntf, msxmldom, XMLDoc, cxLabel, cxPCdxBarPopupMenu, FMTBcd, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalc, cxCheckBox,
  cxMemo, cxDBLabel, cxButtonEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView, cxCurrencyEdit,
  cxBlobEdit, cxSpinEdit, DBCtrls, cxTimeEdit, dxBevel, cxNavigator,
  dxBarBuiltInMenu, ACBrBase, ACBrDFe;

type
  Tfrmmdfe = class(TForm)
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
    actnfe: TAction;
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
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarButton3: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    btnmdfe: TdxBarLargeButton;
    actnfemenu: TAction;
    pumnfe: TdxBarPopupMenu;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarLargeButton18: TdxBarLargeButton;
    dxBarLargeButton19: TdxBarLargeButton;
    dxBarLargeButton22: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    actopcoes: TAction;
    ACBrMDFe1: TACBrMDFe;
    cds: TClientDataSet;
    cdsCDMDFE: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsCDSERIE: TIntegerField;
    cdsCDUF: TIntegerField;
    cdsCDMDFETPEMITENTE: TIntegerField;
    cdsCDMDFEMODALIDADE: TIntegerField;
    cdsCDMDFEFORMAEMISSAO: TIntegerField;
    cdsCDUFINICIO: TIntegerField;
    cdsCDUFFIM: TIntegerField;
    cdsCDUNIDADE: TIntegerField;
    cdsCDVEICULO: TIntegerField;
    cdsCDTPMDFE: TIntegerField;
    cdsCDSTMDFE: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsNUMDFE: TIntegerField;
    cdsDTEMISSAO: TDateField;
    cdsHREMISSAO: TTimeField;
    cdsNUCHAVE: TStringField;
    cdsCDVERIFICADORCHAVE: TStringField;
    cdsQTCTE: TIntegerField;
    cdsQTNFE: TIntegerField;
    cdsVLCARGA: TFMTBCDField;
    cdsNURNTRC: TStringField;
    cdsCDCIOT: TStringField;
    cdssdsmdfeufpercurso: TDataSetField;
    cdssdsmdfeveiculo: TDataSetField;
    cdssdsmdfepedagio: TDataSetField;
    cdssdsmdfetransportadora: TDataSetField;
    cdssdsmdfelacre: TDataSetField;
    cdsNMSTMDFE: TStringField;
    cdssdsmdfedescarregamento: TDataSetField;
    cdssdsmdfecarregamento: TDataSetField;
    cdsQTCARGA: TFloatField;
    dts: TDataSource;
    dsp: TDataSetProvider;
    dts1: TDataSource;
    sds: TSQLDataSet;
    sdsCDMDFE: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsCDSERIE: TIntegerField;
    sdsCDUF: TIntegerField;
    sdsCDMDFETPEMITENTE: TIntegerField;
    sdsCDMDFEMODALIDADE: TIntegerField;
    sdsCDMDFEFORMAEMISSAO: TIntegerField;
    sdsCDUFINICIO: TIntegerField;
    sdsCDUFFIM: TIntegerField;
    sdsCDUNIDADE: TIntegerField;
    sdsCDVEICULO: TIntegerField;
    sdsCDTPMDFE: TIntegerField;
    sdsCDSTMDFE: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsNUMDFE: TIntegerField;
    sdsDTEMISSAO: TDateField;
    sdsHREMISSAO: TTimeField;
    sdsNUCHAVE: TStringField;
    sdsCDVERIFICADORCHAVE: TStringField;
    sdsQTCTE: TIntegerField;
    sdsQTNFE: TIntegerField;
    sdsVLCARGA: TFMTBCDField;
    sdsNURNTRC: TStringField;
    sdsCDCIOT: TStringField;
    sdsNMSTMDFE: TStringField;
    sdsQTCARGA: TFloatField;
    sdsmdfeufpercurso: TSQLDataSet;
    sdsmdfeufpercursoCDMDFE: TIntegerField;
    sdsmdfeufpercursoCDUF: TIntegerField;
    sdsmdfeufpercursoCDUSUARIOI: TIntegerField;
    sdsmdfeufpercursoCDUSUARIOA: TIntegerField;
    sdsmdfeufpercursoCDCOMPUTADORI: TIntegerField;
    sdsmdfeufpercursoCDCOMPUTADORA: TIntegerField;
    sdsmdfeufpercursoTSINCLUSAO: TSQLTimeStampField;
    sdsmdfeufpercursoTSALTERACAO: TSQLTimeStampField;
    cdsmdfeufpercurso: TClientDataSet;
    cdsmdfeufpercursoCDMDFE: TIntegerField;
    cdsmdfeufpercursoCDUF: TIntegerField;
    cdsmdfeufpercursoCDUSUARIOI: TIntegerField;
    cdsmdfeufpercursoCDUSUARIOA: TIntegerField;
    cdsmdfeufpercursoCDCOMPUTADORI: TIntegerField;
    cdsmdfeufpercursoCDCOMPUTADORA: TIntegerField;
    cdsmdfeufpercursoTSINCLUSAO: TSQLTimeStampField;
    cdsmdfeufpercursoTSALTERACAO: TSQLTimeStampField;
    dtsmdfeufpercurso: TDataSource;
    sdsmdfeveiculo: TSQLDataSet;
    sdsmdfeveiculoCDMDFE: TIntegerField;
    sdsmdfeveiculoCDVEICULO: TIntegerField;
    sdsmdfeveiculoCDUSUARIOI: TIntegerField;
    sdsmdfeveiculoCDUSUARIOA: TIntegerField;
    sdsmdfeveiculoCDCOMPUTADORI: TIntegerField;
    sdsmdfeveiculoCDCOMPUTADORA: TIntegerField;
    sdsmdfeveiculoTSINCLUSAO: TSQLTimeStampField;
    sdsmdfeveiculoTSALTERACAO: TSQLTimeStampField;
    sdsmdfeveiculoNUPLACA: TStringField;
    cdsmdfeveiculo: TClientDataSet;
    cdsmdfeveiculoCDMDFE: TIntegerField;
    cdsmdfeveiculoCDVEICULO: TIntegerField;
    cdsmdfeveiculoCDUSUARIOI: TIntegerField;
    cdsmdfeveiculoCDUSUARIOA: TIntegerField;
    cdsmdfeveiculoCDCOMPUTADORI: TIntegerField;
    cdsmdfeveiculoCDCOMPUTADORA: TIntegerField;
    cdsmdfeveiculoTSINCLUSAO: TSQLTimeStampField;
    cdsmdfeveiculoTSALTERACAO: TSQLTimeStampField;
    cdsmdfeveiculoNUPLACA: TStringField;
    dtsmdfeveiculo: TDataSource;
    sdsmdfepedagio: TSQLDataSet;
    sdsmdfepedagioCDMDFEPEDAGIO: TIntegerField;
    sdsmdfepedagioCDMDFE: TIntegerField;
    sdsmdfepedagioCDUSUARIOI: TIntegerField;
    sdsmdfepedagioCDUSUARIOA: TIntegerField;
    sdsmdfepedagioCDCOMPUTADORI: TIntegerField;
    sdsmdfepedagioCDCOMPUTADORA: TIntegerField;
    sdsmdfepedagioTSINCLUSAO: TSQLTimeStampField;
    sdsmdfepedagioTSALTERACAO: TSQLTimeStampField;
    sdsmdfepedagioNUCOMPROVANTE: TStringField;
    sdsmdfepedagioNMFORNECEDOR: TStringField;
    sdsmdfepedagioNMRESPONSAVEL: TStringField;
    cdsmdfepedagio: TClientDataSet;
    cdsmdfepedagioCDMDFEPEDAGIO: TIntegerField;
    cdsmdfepedagioCDMDFE: TIntegerField;
    cdsmdfepedagioCDUSUARIOI: TIntegerField;
    cdsmdfepedagioCDUSUARIOA: TIntegerField;
    cdsmdfepedagioCDCOMPUTADORI: TIntegerField;
    cdsmdfepedagioCDCOMPUTADORA: TIntegerField;
    cdsmdfepedagioTSINCLUSAO: TSQLTimeStampField;
    cdsmdfepedagioTSALTERACAO: TSQLTimeStampField;
    cdsmdfepedagioNUCOMPROVANTE: TStringField;
    cdsmdfepedagioNMFORNECEDOR: TStringField;
    cdsmdfepedagioNMRESPONSAVEL: TStringField;
    dtsmdfepedagio: TDataSource;
    sdsmdfelacre: TSQLDataSet;
    sdsmdfelacreCDMDFELACRE: TIntegerField;
    sdsmdfelacreCDMDFE: TIntegerField;
    sdsmdfelacreCDUSUARIOI: TIntegerField;
    sdsmdfelacreCDUSUARIOA: TIntegerField;
    sdsmdfelacreCDCOMPUTADORI: TIntegerField;
    sdsmdfelacreCDCOMPUTADORA: TIntegerField;
    sdsmdfelacreTSINCLUSAO: TSQLTimeStampField;
    sdsmdfelacreTSALTERACAO: TSQLTimeStampField;
    sdsmdfelacreNULACRE: TStringField;
    cdsmdfelacre: TClientDataSet;
    cdsmdfelacreCDMDFELACRE: TIntegerField;
    cdsmdfelacreCDMDFE: TIntegerField;
    cdsmdfelacreCDUSUARIOI: TIntegerField;
    cdsmdfelacreCDUSUARIOA: TIntegerField;
    cdsmdfelacreCDCOMPUTADORI: TIntegerField;
    cdsmdfelacreCDCOMPUTADORA: TIntegerField;
    cdsmdfelacreTSINCLUSAO: TSQLTimeStampField;
    cdsmdfelacreTSALTERACAO: TSQLTimeStampField;
    cdsmdfelacreNULACRE: TStringField;
    dtsmdfelacre: TDataSource;
    sdsmdfetransportadora: TSQLDataSet;
    sdsmdfetransportadoraCDMDFE: TIntegerField;
    sdsmdfetransportadoraCDUSUARIOI: TIntegerField;
    sdsmdfetransportadoraCDUSUARIOA: TIntegerField;
    sdsmdfetransportadoraCDCOMPUTADORI: TIntegerField;
    sdsmdfetransportadoraCDCOMPUTADORA: TIntegerField;
    sdsmdfetransportadoraTSINCLUSAO: TSQLTimeStampField;
    sdsmdfetransportadoraTSALTERACAO: TSQLTimeStampField;
    sdsmdfetransportadoraNMTRANSPORTADORA: TStringField;
    sdsmdfetransportadoraNUCPF: TStringField;
    cdsmdfetransportadora: TClientDataSet;
    cdsmdfetransportadoraCDMDFE: TIntegerField;
    cdsmdfetransportadoraCDUSUARIOI: TIntegerField;
    cdsmdfetransportadoraCDUSUARIOA: TIntegerField;
    cdsmdfetransportadoraCDCOMPUTADORI: TIntegerField;
    cdsmdfetransportadoraCDCOMPUTADORA: TIntegerField;
    cdsmdfetransportadoraTSINCLUSAO: TSQLTimeStampField;
    cdsmdfetransportadoraTSALTERACAO: TSQLTimeStampField;
    cdsmdfetransportadoraNMTRANSPORTADORA: TStringField;
    cdsmdfetransportadoraNUCPF: TStringField;
    dtsmdfetransportadora: TDataSource;
    sdsmdfecarregamento: TSQLDataSet;
    sdsmdfecarregamentoCDMDFE: TIntegerField;
    sdsmdfecarregamentoCDMUNICIPIO: TIntegerField;
    sdsmdfecarregamentoCDUSUARIOI: TIntegerField;
    sdsmdfecarregamentoCDUSUARIOA: TIntegerField;
    sdsmdfecarregamentoCDCOMPUTADORI: TIntegerField;
    sdsmdfecarregamentoCDCOMPUTADORA: TIntegerField;
    sdsmdfecarregamentoTSINCLUSAO: TSQLTimeStampField;
    sdsmdfecarregamentoTSALTERACAO: TSQLTimeStampField;
    cdsmdfecarregamento: TClientDataSet;
    cdsmdfecarregamentoCDMDFE: TIntegerField;
    cdsmdfecarregamentoCDMUNICIPIO: TIntegerField;
    cdsmdfecarregamentoCDUSUARIOA: TIntegerField;
    cdsmdfecarregamentoCDUSUARIOI: TIntegerField;
    cdsmdfecarregamentoCDCOMPUTADORI: TIntegerField;
    cdsmdfecarregamentoCDCOMPUTADORA: TIntegerField;
    cdsmdfecarregamentoTSINCLUSAO: TSQLTimeStampField;
    cdsmdfecarregamentoTSALTERACAO: TSQLTimeStampField;
    dtsmdfecarregamento: TDataSource;
    sdsmdfecte: TSQLDataSet;
    sdsmdfecteCDMDFE: TIntegerField;
    sdsmdfecteCDMUNICIPIO: TIntegerField;
    sdsmdfecteCDCTE: TIntegerField;
    sdsmdfecteCDUSUARIOI: TIntegerField;
    sdsmdfecteCDUSUARIOA: TIntegerField;
    sdsmdfecteCDCOMPUTADORI: TIntegerField;
    sdsmdfecteCDCOMPUTADORA: TIntegerField;
    sdsmdfecteTSINCLUSAO: TSQLTimeStampField;
    sdsmdfecteTSALTERACAO: TSQLTimeStampField;
    sdsmdfecteDTEMISSAO: TDateField;
    cdsmdfecte: TClientDataSet;
    cdsmdfecteCDMDFE: TIntegerField;
    cdsmdfecteCDMUNICIPIO: TIntegerField;
    cdsmdfecteCDCTE: TIntegerField;
    cdsmdfecteCDUSUARIOI: TIntegerField;
    cdsmdfecteCDUSUARIOA: TIntegerField;
    cdsmdfecteCDCOMPUTADORI: TIntegerField;
    cdsmdfecteCDCOMPUTADORA: TIntegerField;
    cdsmdfecteTSINCLUSAO: TSQLTimeStampField;
    cdsmdfecteTSALTERACAO: TSQLTimeStampField;
    cdsmdfecteDTEMISSAO: TDateField;
    dtsmdfecte: TDataSource;
    sdsmdfenfe: TSQLDataSet;
    sdsmdfenfeCDMDFE: TIntegerField;
    sdsmdfenfeCDMUNICIPIO: TIntegerField;
    sdsmdfenfeCDUSUARIOI: TIntegerField;
    sdsmdfenfeCDUSUARIOA: TIntegerField;
    sdsmdfenfeCDCOMPUTADORI: TIntegerField;
    sdsmdfenfeCDCOMPUTADORA: TIntegerField;
    sdsmdfenfeTSINCLUSAO: TSQLTimeStampField;
    sdsmdfenfeTSALTERACAO: TSQLTimeStampField;
    sdsmdfenfeNUCHAVENFE: TStringField;
    cdsmdfenfe: TClientDataSet;
    cdsmdfenfeCDMDFE: TIntegerField;
    cdsmdfenfeCDMUNICIPIO: TIntegerField;
    cdsmdfenfeCDUSUARIOI: TIntegerField;
    cdsmdfenfeCDUSUARIOA: TIntegerField;
    cdsmdfenfeCDCOMPUTADORI: TIntegerField;
    cdsmdfenfeCDCOMPUTADORA: TIntegerField;
    cdsmdfenfeTSINCLUSAO: TSQLTimeStampField;
    cdsmdfenfeTSALTERACAO: TSQLTimeStampField;
    cdsmdfenfeNUCHAVENFE: TStringField;
    dtsmdfenfe: TDataSource;
    sdsmdfedescarregamento: TSQLDataSet;
    sdsmdfedescarregamentoCDMDFE: TIntegerField;
    sdsmdfedescarregamentoCDMUNICIPIO: TIntegerField;
    sdsmdfedescarregamentoCDUSUARIOI: TIntegerField;
    sdsmdfedescarregamentoCDUSUARIOA: TIntegerField;
    sdsmdfedescarregamentoCDCOMPUTADORI: TIntegerField;
    sdsmdfedescarregamentoCDCOMPUTADORA: TIntegerField;
    sdsmdfedescarregamentoTSINCLUSAO: TSQLTimeStampField;
    sdsmdfedescarregamentoTSALTERACAO: TSQLTimeStampField;
    cdsmdfedescarregamento: TClientDataSet;
    cdsmdfedescarregamentoCDMDFE: TIntegerField;
    cdsmdfedescarregamentoCDMUNICIPIO: TIntegerField;
    cdsmdfedescarregamentoCDUSUARIOI: TIntegerField;
    cdsmdfedescarregamentoCDUSUARIOA: TIntegerField;
    cdsmdfedescarregamentoCDCOMPUTADORI: TIntegerField;
    cdsmdfedescarregamentoCDCOMPUTADORA: TIntegerField;
    cdsmdfedescarregamentoTSINCLUSAO: TSQLTimeStampField;
    cdsmdfedescarregamentoTSALTERACAO: TSQLTimeStampField;
    cdsmdfedescarregamentosdsmdfenfe: TDataSetField;
    cdsmdfedescarregamentosdsmdfecte: TDataSetField;
    dtsmdfedescarregamento: TDataSource;
    dts4: TDataSource;
    sdsmdfecteVLCARGA: TFMTBCDField;
    cdsmdfecteVLCARGA: TFMTBCDField;
    sdsmdfecteNUCHAVENFE: TStringField;
    cdsmdfecteNUCHAVENFE: TStringField;
    sdsmdfedescarregamentoQTCTE: TIntegerField;
    sdsmdfedescarregamentoQTNFE: TIntegerField;
    sdsmdfedescarregamentoVLCARGA: TFMTBCDField;
    cdsmdfedescarregamentoQTCTE: TIntegerField;
    cdsmdfedescarregamentoQTNFE: TIntegerField;
    cdsmdfedescarregamentoVLCARGA: TFMTBCDField;
    actabrircte: TAction;
    actabrirfornecedor: TAction;
    actabrirresponsavel: TAction;
    actabrirtransportadora: TAction;
    actabrirveiculo: TAction;
    actstatus: TAction;
    actconfigurar: TAction;
    actvalidar: TAction;
    actenviar: TAction;
    sdsNULOTE: TIntegerField;
    cdsNULOTE: TIntegerField;
    sdsNUPROTOCOLOAUTORIZACAO: TStringField;
    sdsDSXML: TBlobField;
    sdsTSPROTOCOLOAUTORIZACAO: TSQLTimeStampField;
    sdsNUCHAVENFE: TStringField;
    sdsNURECIBONFE: TStringField;
    cdsNUPROTOCOLOAUTORIZACAO: TStringField;
    cdsDSXML: TBlobField;
    cdsTSPROTOCOLOAUTORIZACAO: TSQLTimeStampField;
    cdsNUCHAVENFE: TStringField;
    cdsNURECIBONFE: TStringField;
    actabrirveiculo2: TAction;
    actcancelarmdfe: TAction;
    sdsDSCANCELAMENTO: TBlobField;
    sdsNUPROTOCOLOCANCELAMENTO: TStringField;
    sdsDSXMLCANCEL: TBlobField;
    cdsDSCANCELAMENTO: TBlobField;
    cdsNUPROTOCOLOCANCELAMENTO: TStringField;
    cdsDSXMLCANCEL: TBlobField;
    actencerrar: TAction;
    dxBarButton2: TdxBarButton;
    sdsNUSEQEVENTO: TIntegerField;
    cdsNUSEQEVENTO: TIntegerField;
    sdsNUPROTOCOLOENCERRAMENTO: TStringField;
    sdsDSXMLENCERRAMENTO: TBlobField;
    sdsDTENCERRAMENTO: TDateField;
    cdsNUPROTOCOLOENCERRAMENTO: TStringField;
    cdsDSXMLENCERRAMENTO: TBlobField;
    cdsDTENCERRAMENTO: TDateField;
    actexportarxml: TAction;
    actgerarpdf: TAction;
    actenviaremail: TAction;
    actconsultar: TAction;
    sdsmdfecteQTCARGA: TFloatField;
    cdsmdfecteQTCARGA: TFloatField;
    cdsmdfedescarregamentoQTCARGA: TFloatField;
    sdsmdfedescarregamentoQTCARGA: TFloatField;
    pnltop: TPanel;
    lbltpmdfe: TLabel;
    cbxcdtpmdfe: TcxDBLookupComboBox;
    edtcodigo: TcxTextEdit;
    lblcodigo: TLabel;
    lbldtemissao: TLabel;
    edtdtemissao: TcxDBDateEdit;
    lblhremissao: TLabel;
    edthremissao: TcxDBTimeEdit;
    lblcduf: TLabel;
    cbxcduf: TcxDBLookupComboBox;
    lblCDMDFETPEMITENTE: TLabel;
    cbxCDMDFETPEMITENTE: TcxDBLookupComboBox;
    lblcdmdfemodalidade: TLabel;
    cbxCDMDFEMODALIDADE: TcxDBLookupComboBox;
    lblcdmdfeformaemissao: TLabel;
    cbxCDMDFEFORMAEMISSAO: TcxDBLookupComboBox;
    lblcdstmdfe: TLabel;
    txtnmstmdfe: TcxDBLabel;
    lblveiculo: TLabel;
    edtcdveiculo: TcxDBButtonEdit;
    lbl3: TLabel;
    edtcdciot: TcxDBTextEdit;
    lbl1: TLabel;
    cbxcdufinicio: TcxDBLookupComboBox;
    lbl2: TLabel;
    cbxcduffim: TcxDBLookupComboBox;
    pnl: TcxLabel;
    gbx1: TcxGroupBox;
    Label2: TLabel;
    lbl4: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txt1: TcxDBLabel;
    txt2: TcxDBLabel;
    edtvlcarga: TcxDBCalcEdit;
    cbxcdunidade: TcxDBLookupComboBox;
    edtqtcarga: TcxDBCalcEdit;
    pgc: TcxPageControl;
    tbscarregamento: TcxTabSheet;
    grdmdfecarregamento: TcxGrid;
    grdmdfecarregamentoDBTableView1: TcxGridDBTableView;
    grdmdfecarregamentoDBTableView1CDMUNICIPIO: TcxGridDBColumn;
    grdmdfecarregamentoLevel1: TcxGridLevel;
    tbspercurso: TcxTabSheet;
    grdmdfeufpercurso: TcxGrid;
    grdmdfeufpercursoDBTableView1: TcxGridDBTableView;
    grdmdfeufpercursoDBTableView1CDUF: TcxGridDBColumn;
    grdmdfeufpercursoLevel1: TcxGridLevel;
    tbsdocumento: TcxTabSheet;
    grdmdfedescarregamento: TcxGrid;
    grdmdfedescarregamentoDBTableView1: TcxGridDBTableView;
    grdmdfedescarregamentoDBTableView1CDMUNICIPIO: TcxGridDBColumn;
    grdmdfedescarregamentoDBTableView1QTCTE: TcxGridDBColumn;
    grdmdfedescarregamentoDBTableView1QTNFE: TcxGridDBColumn;
    grdmdfedescarregamentoDBTableView1VLCARGA: TcxGridDBColumn;
    grdmdfedescarregamentoDBTableView1QTCARGA: TcxGridDBColumn;
    grdmdfedescarregamentoLevel1: TcxGridLevel;
    pgcdocumento: TcxPageControl;
    tbscte: TcxTabSheet;
    grdmdfecte: TcxGrid;
    grdmdfecteDBTableView1: TcxGridDBTableView;
    grdmdfecteDBTableView1CDCTE: TcxGridDBColumn;
    grdmdfecteDBTableView1DTEMISSAO: TcxGridDBColumn;
    grdmdfecteDBTableView1VLCARGA: TcxGridDBColumn;
    grdmdfecteDBTableView1QTCARGA: TcxGridDBColumn;
    grdmdfecteDBTableView1NUCHAVENFE: TcxGridDBColumn;
    grdmdfecteLevel1: TcxGridLevel;
    tbsnfe: TcxTabSheet;
    grdmdfenfe: TcxGrid;
    grdmdfenfeDBTableView1: TcxGridDBTableView;
    grdmdfenfeDBTableView1NUCHAVENFE: TcxGridDBColumn;
    grdmdfenfeLevel1: TcxGridLevel;
    spl1: TcxSplitter;
    cxLabel1: TcxLabel;
    tbsinfoadic: TcxTabSheet;
    lblnmstdocumento: TLabel;
    grdmdfelacre: TcxGrid;
    grdmdfelacreDBTableView1: TcxGridDBTableView;
    grdmdfelacreDBTableView1NULACRE: TcxGridDBColumn;
    grdmdfelacreLevel1: TcxGridLevel;
    tbstransportadora: TcxTabSheet;
    grdmdfetransportadora: TcxGrid;
    grdmdfetransportadoraDBTableView1: TcxGridDBTableView;
    grdmdfetransportadoraDBTableView1CDTRANSPORTADORA: TcxGridDBColumn;
    grdmdfetransportadoraDBTableView1NMTRANSPORTADORA: TcxGridDBColumn;
    grdmdfetransportadoraDBTableView1NUCPF: TcxGridDBColumn;
    grdmdfetransportadoraLevel1: TcxGridLevel;
    tbsreboque: TcxTabSheet;
    grdmdfeveiculo: TcxGrid;
    grdmdfeveiculoDBTableView1: TcxGridDBTableView;
    grdmdfeveiculoDBTableView1CDVEICULO: TcxGridDBColumn;
    grdmdfeveiculoDBTableView1NUPLACA: TcxGridDBColumn;
    grdmdfeveiculoLevel1: TcxGridLevel;
    tbspedagio: TcxTabSheet;
    grdmdfepedagio: TcxGrid;
    grdmdfepedagioDBTableView1: TcxGridDBTableView;
    grdmdfepedagioDBTableView1CDFORNECEDOR: TcxGridDBColumn;
    grdmdfepedagioDBTableView1NMFORNECEDOR: TcxGridDBColumn;
    grdmdfepedagioDBTableView1NUCOMPROVANTE: TcxGridDBColumn;
    grdmdfepedagioDBTableView1CDRESPONSAVEL: TcxGridDBColumn;
    grdmdfepedagioDBTableView1NMRESPONSAVEL: TcxGridDBColumn;
    grdmdfepedagioLevel1: TcxGridLevel;
    ACBrMail1: TACBrMail;
    actenviaremailremetente: TAction;
    dxBarButton1: TdxBarButton;
    actImportarXML: TAction;
    dxBarButton4: TdxBarButton;
    sdsmdfenfeCDMDFENFE: TIntegerField;
    cdsmdfenfeCDMDFENFE: TIntegerField;
    sdsCDEMPRESA: TLargeintField;
    sdsmdfeufpercursoCDEMPRESA: TLargeintField;
    sdsmdfeveiculoCDEMPRESA: TLargeintField;
    sdsmdfepedagioCDEMPRESA: TLargeintField;
    sdsmdfepedagioCDFORNECEDOR: TLargeintField;
    sdsmdfepedagioCDRESPONSAVEL: TLargeintField;
    sdsmdfelacreCDEMPRESA: TLargeintField;
    sdsmdfetransportadoraCDEMPRESA: TLargeintField;
    sdsmdfetransportadoraCDTRANSPORTADORA: TLargeintField;
    sdsmdfecarregamentoCDEMPRESA: TLargeintField;
    sdsmdfedescarregamentoCDEMPRESA: TLargeintField;
    sdsmdfecteCDEMPRESA: TLargeintField;
    sdsmdfenfeCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsmdfeufpercursoCDEMPRESA: TLargeintField;
    cdsmdfeveiculoCDEMPRESA: TLargeintField;
    cdsmdfepedagioCDEMPRESA: TLargeintField;
    cdsmdfepedagioCDFORNECEDOR: TLargeintField;
    cdsmdfepedagioCDRESPONSAVEL: TLargeintField;
    cdsmdfelacreCDEMPRESA: TLargeintField;
    cdsmdfetransportadoraCDEMPRESA: TLargeintField;
    cdsmdfetransportadoraCDTRANSPORTADORA: TLargeintField;
    cdsmdfecarregamentoCDEMPRESA: TLargeintField;
    cdsmdfedescarregamentoCDEMPRESA: TLargeintField;
    cdsmdfecteCDEMPRESA: TLargeintField;
    cdsmdfenfeCDEMPRESA: TLargeintField;
    tbsObservacao: TcxTabSheet;
    memdsobservacao: TcxDBMemo;
    sdsDSOBSERVACAO: TBlobField;
    cdsDSOBSERVACAO: TBlobField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actnfeExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtcodigoExit(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure colorexit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsCDTPMDFEValidate(Sender: TField);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure edtcdveiculoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsmdfecarregamentoNewRecord(DataSet: TDataSet);
    procedure cdsmdfedescarregamentoNewRecord(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsmdfeufpercursoBeforePost(DataSet: TDataSet);
    procedure cdsmdfeveiculoBeforePost(DataSet: TDataSet);
    procedure cdsmdfepedagioBeforePost(DataSet: TDataSet);
    procedure cdsmdfelacreBeforePost(DataSet: TDataSet);
    procedure cdsmdfetransportadoraBeforePost(DataSet: TDataSet);
    procedure cdsmdfecarregamentoBeforePost(DataSet: TDataSet);
    procedure cdsmdfedescarregamentoBeforePost(DataSet: TDataSet);
    procedure cdsmdfecteBeforePost(DataSet: TDataSet);
    procedure cdsmdfenfeBeforePost(DataSet: TDataSet);
    procedure cdsCDSTMDFEValidate(Sender: TField);
    procedure cdsCDUFINICIOValidate(Sender: TField);
    procedure cdsCDUFFIMValidate(Sender: TField);
    procedure cdsmdfecteAfterPost(DataSet: TDataSet);
    procedure cdsmdfenfeAfterPost(DataSet: TDataSet);
    procedure cdsmdfecteCDCTEValidate(Sender: TField);
    procedure grdmdfecteDBTableView1CDCTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsmdfedescarregamentoAfterPost(DataSet: TDataSet);
    procedure actabrircteExecute(Sender: TObject);
    procedure grdmdfecteDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdmdfepedagioDBTableView1CDFORNECEDORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grdmdfepedagioDBTableView1CDRESPONSAVELPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsmdfepedagioCDFORNECEDORValidate(Sender: TField);
    procedure cdsmdfepedagioCDRESPONSAVELValidate(Sender: TField);
    procedure actabrirfornecedorExecute(Sender: TObject);
    procedure actabrirresponsavelExecute(Sender: TObject);
    procedure grdmdfepedagioDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure grdmdfetransportadoraDBTableView1CDTRANSPORTADORAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsmdfetransportadoraCDTRANSPORTADORAValidate(Sender: TField);
    procedure grdmdfetransportadoraDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirtransportadoraExecute(Sender: TObject);
    procedure grdmdfeveiculoDBTableView1CDVEICULOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure grdmdfeveiculoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure cdsmdfeveiculoCDVEICULOValidate(Sender: TField);
    procedure actabrirveiculoExecute(Sender: TObject);
    procedure cdsmdfecarregamentoCDMUNICIPIOValidate(Sender: TField);
    procedure cdsmdfedescarregamentoCDMUNICIPIOValidate(Sender: TField);
    procedure actnfemenuExecute(Sender: TObject);
    procedure actstatusExecute(Sender: TObject);
    procedure actconfigurarExecute(Sender: TObject);
    procedure actvalidarExecute(Sender: TObject);
    procedure actenviarExecute(Sender: TObject);
    procedure cdsmdfeufpercursoCDUFValidate(Sender: TField);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lblveiculoDblClick(Sender: TObject);
    procedure actabrirveiculo2Execute(Sender: TObject);
    procedure actcancelarmdfeExecute(Sender: TObject);
    procedure actencerrarExecute(Sender: TObject);
    procedure actexportarxmlExecute(Sender: TObject);
    procedure actgerarpdfExecute(Sender: TObject);
    procedure edtcdveiculoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdmdfecteDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure grdmdfetransportadoraDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure grdmdfeveiculoDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure grdmdfepedagioDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure grdmdfecarregamentoDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdmdfeufpercursoDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdmdfedescarregamentoDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdmdfecteDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdmdfenfeDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdmdfelacreDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdmdfetransportadoraDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdmdfeveiculoDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdmdfepedagioDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actenviaremailExecute(Sender: TObject);
    procedure actconsultarExecute(Sender: TObject);
    procedure cdsCDMDFETPEMITENTEValidate(Sender: TField);
    procedure actenviaremailremetenteExecute(Sender: TObject);
    procedure actImportarXMLExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    boinsert : boolean;
    email : TEmail_;
    fornecedor      : TFornecedor;
    mdfe            : TMDFE;
    transportadora  : TTransportadora;
    transportadorav  : TTransportadora;
    veiculo         : TVeiculo;
    cdserieoriginal : Integer;
    exibe, codigooriginal, codigoinsercao : string;
    procedure Consultar_MDFe;
    procedure gerar_mdfe;
    procedure LerConfiguracao;
    function  Loadmdfe:boolean;
    procedure setrecord(cdtpmdfe:integer);
    procedure encerrar_mdfe(nuprotocolo, retornoXml:string);
    procedure get_municipio_carregamento(cdembarque:string);
    procedure get_informacao_documento(cdembarque:string);
    procedure AbrirTabelas;
  public  { Public declarations }
    registro        : TRegistro;
    function  Abrir(codigo:integer):boolean;
    function  Novo(cdembarque:string):Boolean;
  end;

var
  frmmdfe : Tfrmmdfe;

implementation

uses UMain,
  uDtmMain,
  ulocalizar,
  ulocalizarfornecedor,
  uacbr,
  udlgxmltotreeview, uimprimirrelatoriopadrao,
  ulocalizarveiculo, ulocalizarcte, pmdfeMDFe,
  UdlgInfNumIntervencao,
  ACBrMDFeWebServices,
  pmdfeRetConsReciMDFe,
  umdfereport,
  ucartacorrecao,
  classeACBR;

{$R *.DFM}

const
  artigoI  = 'a';

procedure Tfrmmdfe.setrecord(cdtpmdfe:integer);
begin
  if cdtpmdfe = 0 then
  begin
    exit;
  end;
  mdfe.tpmdfe.select(cdtpmdfe);
end;

function Tfrmmdfe.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure Tfrmmdfe.actAbrirExecute(Sender: TObject);
begin
  registro.Abrir;
end;

procedure Tfrmmdfe.actNovoExecute(Sender: TObject);
begin
  registro.Novo(sender);
  cdsCDUF.AsInteger := empresa.endereco.cduf;
  cbxcdtpmdfe.SetFocus;
  boinsert := true;
end;

procedure Tfrmmdfe.actSalvarExecute(Sender: TObject);
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if cbxcdunidade.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Unidade]), mtInformation, [mbOK], 0);
    cbxcdunidade.SetFocus;
    Abort;
  end;
  dts.OnStateChange := nil;
  if not registro.aplicar_atualizacao then
  begin
    Exit;
  end;
  if ((cds.State = dsedit) or (cds.State = dsinsert)) and (not registro.aplicar_atualizacao) then
  begin
    Exit;
  end;
  dts.OnStateChange := dtsStateChange;
  Registro.RegistroAbrir(cdscdmdfe.asinteger);
  boinsert := false;
  registro.set_grade_item(self, false);
end;

procedure Tfrmmdfe.actExcluirExecute(Sender: TObject);
var
  numdfe, cdserie, codigo : integer;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if cdsnumdfe.asstring <> edtcodigo.text then
  begin
    if messagedlg('No momento está aberto o registro '+cdsnumdfe.asstring+#13' você gostaria de abrir registro '+edtcodigo.text+' para exclusão?', mtConfirmation, [mbyes, mbno], 0) = mrno then
    begin
      edtcodigo.Text := cdsnumdfe.asstring;
      exit;
    end;
    codigo := mdfe.CodigoMDFE(edtcodigo.text);
    if codigo = -1 then
    begin
      edtcodigo.text := cdsnumdfe.asstring;
      exit;
    end;
    if not abrir(codigo) then
    begin
      if messagedlg('Código '+edtcodigo.text+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mrno then
      begin
        edtcodigo.text := cdsnumdfe.asstring;
        exit;
      end;
      actNovoExecute(sender);
    end;
    edtcodigo.selectall;
  end;
  if not registro.RegistroAbrir(cdscdmdfe.asinteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cdscdmdfe.asstring, maiuscula(_mdfe)]), mterror, [mbok], 0);
    exit;
  end;
  if not registro.RegistroAbrir(cdscdmdfe.asinteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cdscdmdfe.asstring, maiuscula(_mdfe)]), mterror, [mbok], 0);
    exit;
  end;
  numdfe := cdsnumdfe.AsInteger-1;
  cdserie := cdscdserie.asinteger;
  if registro.Excluir then
  begin
    Tserie.Voltar_Numero_Serie(numdfe, cdserie);
  end;
end;

procedure Tfrmmdfe.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmmdfe.actCancelarExecute(Sender: TObject);
begin
  if boinsert then
  begin
    tserie.voltar_Numero_serie(cdsnumdfe.AsInteger-1, cdscdserie.asInteger);
  end;
  registro.Cancelar;
end;

procedure Tfrmmdfe.actEditarExecute(Sender: TObject);
begin
  registro.Editar;
end;

procedure Tfrmmdfe.FormShow(Sender: TObject);
begin
  pnl.caption        := exibe;
  mdfe               := classemdfe.TMDFE.create;
  fornecedor         := tfornecedor.create ;
  transportadora     := TTransportadora.create;
  transportadorav    := TTransportadora.create;
  veiculo            := TVeiculo.create;
  lerconfiguracao;
  ACBrMDFe1.Configuracoes.Arquivos.PathSchemas := ExtractFilePath(Application.ExeName)+'Schemasmdfe';
  edtCodigo.SetFocus;
end;

procedure Tfrmmdfe.actImportarXMLExecute(Sender: TObject);
var
  opd : topendialog;
  arquivo : TStrings;
  texto : TStringStream;
begin
  opd     := topendialog.Create(nil);
  arquivo := TStringList.Create;
  texto   := TStringStream.Create('');
  try
    opd.Title      := 'Selecione a MDF-e';
    opd.DefaultExt := '*.XML';
    opd.Filter     := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
    if not opd.Execute then
    begin
      exit;
    end;
    ACBrMDFe1.Manifestos.Clear;
    arquivo.LoadFromFile(opd.FileName);
    texto.WriteString(UTF8Encode(arquivo.text));
    ACBrMDFe1.Manifestos.LoadFromStream(texto);
    // selecionar o arquivo xml
    // carregar no acbr
    // verificar se o xml é autorizado
    if ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.chMDFe = '' then
    begin
      messagedlg('XML não está autorizado.', mtinformation, [mbok], 0);
      abort;
    end;
    // verificar se é do mesmo emitente
    if ACBrMDFe1.Manifestos.Items[0].MDFe.emit.CNPJ <> empresa.nucnpj_ then
    begin
      messagedlg('XML não pertence ao emitente.', mtinformation, [mbok], 0);
      abort;
    end;
    // verificar número
    mdfe.dsxml := ACBrMDFe1.Manifestos.Items[0].XML;
    mdfe.nuchavenfe := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.chMDFe;
    mdfe.nuprotocoloautorizacao := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
    mdfe.tsprotocoloautorizacao := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.dhRecbto;
    mdfe.cdstmdfe := 2;
    mdfe.Update;
    Abrir(cdsCDMDFE.AsInteger);
  finally
    freeandnil(opd);
    freeandnil(arquivo);
    freeandnil(texto);
  end;
end;

procedure Tfrmmdfe.actImprimirExecute(Sender: TObject);
begin
  if ACBrMDFe1.Manifestos.Count < 1 then
  begin
    Loadmdfe;
  end;
  if ACBrMDFe1.Manifestos.Count > 0 then
  begin
    mdfe_imprimir(ACBrMDFe1, cdsCDSTMDFE.asstring = _3);
  end;
end;

procedure Tfrmmdfe.actPrimeiroExecute(Sender: TObject);
begin
  registro.Primeiro;
end;

procedure Tfrmmdfe.actAnteriorExecute(Sender: TObject);
begin
  registro.Anterior;
end;

procedure Tfrmmdfe.actProximoExecute(Sender: TObject);
begin
  registro.Proximo;
end;

procedure Tfrmmdfe.actUltimoExecute(Sender: TObject);
begin
  registro.Ultimo;
end;

procedure Tfrmmdfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmmdfe.FormDestroy(Sender: TObject);
begin
  freeandnil(email);
  freeandnil(fornecedor);
  freeandnil(transportadora);
  freeandnil(veiculo);
  freeandnil(mdfe);
  freeandnil(registro);
end;

procedure Tfrmmdfe.actfecharExecute(Sender: TObject);
var
  numdfe : Integer;
  cdserie : integer;
begin
  numdfe := cdsnumdfe.AsInteger;
  cdserie := cdscdserie.asinteger;
  if FinalizarTransacao(cds) = mrcancel then
  begin
    exit;
  end;
  if boinsert then
  begin
    tserie.voltar_Numero_serie(numdfe-1, cdserie);
  end;
  close;
  frmmain.main.DestruirBotaoFormAtual(_mdfe, frmmain.tlbnew);
end;

procedure Tfrmmdfe.actnfeExecute(Sender: TObject);
begin
//
end;

procedure Tfrmmdfe.actopcoesExecute(Sender: TObject);
begin
//
end;

procedure Tfrmmdfe.FormCreate(Sender: TObject);
begin
  email := temail_.Create;
  exibe := 'MDF-e';
  AbrirTabelas;
  registro := tregistro.create(Self, _mdfe, exibe, artigoI, cds, dts, edtcodigo, true);
end;

procedure Tfrmmdfe.edtcodigoExit(Sender: TObject);
begin
  if (edtcodigo.Text <> '') and (cds.state = dsinsert) and (not cdscdmdfe.IsNull) and
    (not cdscdserie.IsNull) and
     (RetornaSQLInteger('select count(*) from mdfe where cdempresa='+empresa.cdempresa.tostring+' and numdfe='+edtcodigo.Text+' and cdmdfe<>'+cdscdmdfe.asstring+' and cdserie='+cdscdserie.asstring) > 0) then
  begin
    edtCodigo.SetFocus;
    messagedlg('Número de MDFE duplicado!', mtInformation, [mbOK], 0);
    Abort;
  end;
  colorexit(sender);
end;

procedure Tfrmmdfe.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmmdfe.edtcodigoKeyPress(Sender: TObject; var Key: Char);
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
    cdscdmdfe.focuscontrol;
    exit;
  end;
  codigo := mdfe.CodigoMDFE(edtcodigo.text);
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
        edtcodigo.text := cdsnumdfe.asstring;
      end;
    end
    else
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [codigo.ToString, maiuscula(_mdfe)]), mterror, [mbok], 0);
      edtcodigo.text := cdscdmdfe.asstring;
    end;
  end;
  edtcodigo.selectall;
end;

procedure Tfrmmdfe.encerrar_mdfe(nuprotocolo, retornoXml:string);
begin
  cds.DisableControls;
  cds.ReadOnly := False;
  try
    cds.edit;
    cdsnuprotocoloencerramento.asstring := nuprotocolo;
    cdsdsxmlencerramento.asstring       := retornoXml;
    cdsCDSTMDFE.AsString                := _4;
    cdsdtencerramento.asdatetime        := DtBanco;
    if not registro.aplicar_atualizacao then
    begin
      Exit;
    end;
  finally
    cds.EnableControls;
    cds.ReadOnly := True;
  end;
end;

procedure Tfrmmdfe.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmmdfe.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmmdfe.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  edtcodigo.Enabled := not ((dts.State = dsinsert) or (dts.State = dsedit));
end;

procedure Tfrmmdfe.cdsCDTPMDFEValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  setrecord(Sender.AsInteger);
  if not qregistro.BooleandoCodigo(_serie, mdfe.tpmdfe.cdserie, _boativar) then
  begin
    MessageDlg('Série '+qregistro.NomedoCodigo(_serie, mdfe.tpmdfe.cdserie)+' desativada.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  if (cdscdserie.asstring <> '') and (cdscdserie.asinteger <> mdfe.tpmdfe.cdserie) then
  begin
    tserie.voltar_Numero_serie(cdsnumdfe.AsInteger-1, cdscdserie.asInteger);
    codigoinsercao := '';
  end;
  if codigoinsercao = '' then
  begin
    repeat
      if (codigoinsercao <> '') and (codigoinsercao = codigooriginal) and (mdfe.tpmdfe.cdserie=cdserieoriginal) then
      begin
        Break;
      end;
      codigoinsercao := inttostr(qgerar.GerarCodigo(_serie, IntToStr(mdfe.tpmdfe.cdserie), 0, _mdfe));
    until (mdfe.CodigoMDFE(codigoinsercao, '') = 0);
  end;
  cdsnumdfe.asstring             := codigoinsercao;
  edtcodigo.text                 := codigoinsercao;
  pnl.Caption                    := exibe + ' ' + cdsnumdfe.asstring;
  if mdfe.tpmdfe.cdserie = 0 then
  begin
    MessageDlg('Série não está definida no tipo de MDFE.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdscdserie.AsInteger  := mdfe.tpmdfe.cdserie;
  if mdfe.tpmdfe.cdunidade <> 0 then
  begin
    cdsCDUNIDADE.AsInteger := mdfe.tpmdfe.cdunidade;
  end;
  if mdfe.tpmdfe.cdmdfetpemitente <> 0 then
  begin
    cdsCDMDFETPEMITENTE.AsInteger := mdfe.tpmdfe.cdmdfetpemitente;
  end;
  if mdfe.tpmdfe.cdmdfemodalidade <> 0 then
  begin
    cdsCDMDFEMODALIDADE.AsInteger := mdfe.tpmdfe.cdmdfemodalidade;
  end;
  if mdfe.tpmdfe.cdmdfeformaemissao <> 0 then
  begin
    cdsCDMDFEFORMAEMISSAO.AsInteger := mdfe.tpmdfe.cdmdfeformaemissao;
  end;
  if mdfe.tpmdfe.cduf <> 0 then
  begin
    cdsCDUF.AsInteger := mdfe.tpmdfe.cduf;
  end;
  if mdfe.tpmdfe.cdveiculo <> 0 then
  begin
    cdsCDVEICULO.AsInteger := mdfe.tpmdfe.cdveiculo;
  end;
end;

procedure Tfrmmdfe.cdsNewRecord(DataSet: TDataSet);
begin
  codigoinsercao           := '';
  cdscdmdfe.asstring       := GerarCodigo(_mdfe);
  edtcodigo.Clear;
  cdsCDSTmdfe.AsInteger     := qregistro.Codigo_status_novo(_mdfe);
  cdsdtemissao.asdatetime  := DtBanco;
  cdsHREMISSAO.AsDateTime  := HrBanco;
  cdsQTCTE.AsInteger       := 0;
  cdsQTNFE.AsInteger       := 0;
  cdsQTCARGA.AsFloat       := 0;
  cdsVLCARGA.AsCurrency    := 0;
  cdsNUSEQEVENTO.AsInteger := 0;
  cdsCDTPMDFE.AsString     := RetornaSQLString('select first 1 cdtpmdfe from tpmdfe where cdempresa='+empresa.cdempresa.tostring+' order by cdtpmdfe');
  cdscdunidade.asstring    := qregistro.CodigodoNome(_unidade, empresa.faturamento.cte.nmunidade);
end;

procedure Tfrmmdfe.edtcdveiculoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd: integer;
begin
  cd := localizarveiculo;
  if cd <> 0 then
  begin
    cdsCDVEICULO.AsInteger := cd;
  end;
end;

procedure Tfrmmdfe.cdsmdfecarregamentoNewRecord(DataSet: TDataSet);
begin
  if cbxcdufinicio.Text = '' then
  begin
    MessageDlg('UF de Carregamento não está preenchido.', mtInformation, [mbOK], 0);
    cbxcdufinicio.SetFocus;
    abort;
  end;
end;

procedure Tfrmmdfe.cdsmdfedescarregamentoNewRecord(DataSet: TDataSet);
begin
  if cbxcduffim.Text = '' then
  begin
    MessageDlg('UF de Descarregamento não está preenchido.', mtInformation, [mbOK], 0);
    cbxcduffim.SetFocus;
    abort;
  end;
  cdsmdfedescarregamentoQTCTE.AsInteger    := 0;
  cdsmdfedescarregamentoQTNFE.AsInteger    := 0;
  cdsmdfedescarregamentoVLCARGA.AsCurrency := 0;
  cdsmdfedescarregamentoQTCARGA.AsCurrency := 0;
end;

procedure Tfrmmdfe.cdsBeforePost(DataSet: TDataSet);
begin
  if cbxcduf.Text = '' then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_uf]), mtInformation, [mbOK], 0);
    cbxcduf.SetFocus;
    Abort;
  end;
  registro.set_update(cds);
end;

procedure Tfrmmdfe.cdsmdfeufpercursoBeforePost(DataSet: TDataSet);
begin
  if cdsmdfeufpercurso.RecordCount = empresa.faturamento.mdfe.qtpercurso then
  begin
    MessageDlg('Quantidade de percurso não pode mais do que '+inttostr(empresa.faturamento.mdfe.qtpercurso)+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cdsmdfeufpercurso);
end;

procedure Tfrmmdfe.cdsmdfeveiculoBeforePost(DataSet: TDataSet);
begin
  if cdsmdfeveiculo.RecordCount = empresa.faturamento.mdfe.qtreboque then
  begin
    MessageDlg('Quantidade de reboque não pode mais do que '+inttostr(empresa.faturamento.mdfe.qtreboque)+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cdsmdfeveiculo);
end;

procedure Tfrmmdfe.cdsmdfepedagioBeforePost(DataSet: TDataSet);
begin
  if cdsmdfepedagio.FieldByName(_CDFORNECEDOR).IsNull then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [_Fornecedor]), mtInformation, [mbOK], 0);
    cdsmdfepedagio.FieldByName(_CDFORNECEDOR).FocusControl;
    Abort;
  end;
  if cdsmdfepedagioNUCOMPROVANTE.IsNull then
  begin
    MessageDlg(format(_msg_s_eh_um_campo_obrigatorio, [__numero+' '+_do+' '+_comprovante]), mtInformation, [mbOK], 0);
    cdsmdfepedagioNUCOMPROVANTE.FocusControl;
    Abort;
  end;
  if cdsmdfepedagioCDMDFEPEDAGIO.IsNull then
  begin
    cdsmdfepedagioCDMDFEPEDAGIO.AsString := GerarCodigo(_mdfe+_pedagio);
  end;
  registro.set_update(cdsmdfepedagio);
end;

procedure Tfrmmdfe.cdsmdfelacreBeforePost(DataSet: TDataSet);
begin
  if cdsmdfelacreCDMDFELACRE.IsNull then
  begin
    cdsmdfelacreCDMDFELACRE.AsString := GerarCodigo(_mdfe+_lacre);
  end;
  registro.set_update(cdsmdfelacre);
end;

procedure Tfrmmdfe.cdsmdfetransportadoraBeforePost(DataSet: TDataSet);
begin
  if cdsmdfetransportadora.RecordCount = empresa.faturamento.mdfe.qttransportadora then
  begin
    MessageDlg('Quantidade de condutores não pode mais do que '+inttostr(empresa.faturamento.mdfe.qttransportadora)+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cdsmdfetransportadora);
end;

procedure Tfrmmdfe.cdsmdfecarregamentoBeforePost(DataSet: TDataSet);
begin
  if cdsmdfecarregamento.RecordCount = empresa.faturamento.mdfe.qtcarregamento then
  begin
    MessageDlg('Quantidade de carregamento não pode mais do que '+inttostr(empresa.faturamento.mdfe.qtcarregamento)+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cdsmdfecarregamento);
end;

procedure Tfrmmdfe.cdsmdfedescarregamentoBeforePost(DataSet: TDataSet);
begin
  if cdsmdfedescarregamento.RecordCount = empresa.faturamento.mdfe.qtdescarregamento then
  begin
    MessageDlg('Quantidade de descarregamento não pode mais do que '+inttostr(empresa.faturamento.mdfe.qtdescarregamento)+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cdsmdfedescarregamento);
end;

procedure Tfrmmdfe.cdsmdfecteBeforePost(DataSet: TDataSet);
begin
  if cdsmdfecte.RecordCount = empresa.faturamento.mdfe.qtcte then
  begin
    MessageDlg('Quantidade de CTE´s não pode mais do que '+inttostr(empresa.faturamento.mdfe.qtcte)+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
  registro.set_update(cdsmdfecte);
end;

procedure Tfrmmdfe.cdsmdfenfeBeforePost(DataSet: TDataSet);
begin
  if cdsmdfenfe.RecordCount = empresa.faturamento.mdfe.qtnfe then
  begin
    MessageDlg('Quantidade de NFE´s não pode mais do que '+inttostr(empresa.faturamento.mdfe.qtnfe)+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if dataset.FieldByName(_cdmdfenfe).AsInteger = 0 then
  begin
    dataset.FieldByName(_cdmdfenfe).AsInteger := qgerar.GerarCodigo(_mdfenfe);
  end;
  registro.set_update(cdsmdfenfe);
end;

procedure Tfrmmdfe.cdsCDMDFETPEMITENTEValidate(Sender: TField);
begin
  tbsnfe.TabVisible := Sender.AsString = _2;
end;

procedure Tfrmmdfe.cdsCDSTMDFEValidate(Sender: TField);
begin
  cdsNMSTMDFE.AsString := NomedoCodigo(_st+_mdfe, sender.AsString);
end;

procedure Tfrmmdfe.cdsCDUFINICIOValidate(Sender: TField);
begin
  cdsmdfecarregamento.First;
  while not cdsmdfecarregamento.Eof do
  begin
    cdsmdfecarregamento.Delete;
  end;
end;

procedure Tfrmmdfe.cdsCDUFFIMValidate(Sender: TField);
begin
  cdsmdfedescarregamento.First;
  while not cdsmdfedescarregamento.Eof do
  begin
    cdsmdfedescarregamento.Delete;
  end;
end;

procedure Tfrmmdfe.cdsmdfecteAfterPost(DataSet: TDataSet);
begin
  cdsmdfedescarregamentoQTCTE.AsInteger    := cdsmdfecte.RecordCount;
  cdsmdfedescarregamentoVLCARGA.AsCurrency := cdsmdfecte.Aggregates[0].Value;
  cdsmdfedescarregamentoQTCARGA.AsCurrency := cdsmdfecte.Aggregates[1].Value;
  cdsmdfedescarregamento.Post;
end;

procedure Tfrmmdfe.cdsmdfenfeAfterPost(DataSet: TDataSet);
begin
  cdsmdfedescarregamentoQTNFE.AsInteger := cdsmdfenfe.RecordCount;
end;

procedure Tfrmmdfe.cdsmdfecteCDCTEValidate(Sender: TField);
var
  cte : TCte;
  procedure Adicionar_transportadora;
  var
    i : Integer;
  begin
    for i := 0 to cte.ctetransportadora.count - 1 do
    begin
      if not cdsmdfetransportadora.Locate(_cdtransportadora, cte.ctetransportadora.Items[i].cdtransportadora, []) then
      begin
        cdsmdfetransportadora.Insert;
        cdsmdfetransportadora.FieldByName(_CDTRANSPORTADORA).AsLargeInt := cte.ctetransportadora.Items[i].cdtransportadora;
        cdsmdfetransportadora.Post;
      end;
    end;
  end;
  procedure Adicionar_reboque;
  var
    i : Integer;
  begin
    for i := 0 to cte.ctetransportadora.Count - 1 do
    begin
      if cdsCDVEICULO.AsString = '' then
      begin
        cdsCDVEICULO.AsInteger := cte.ctetransportadora.Items[i].cdveiculo;
      end;
      if cdsCDVEICULO.AsInteger <> cte.ctetransportadora.Items[i].cdveiculo then
      begin
        MessageDlg('O veículo do CTE não é o mesmo do MDFE.', mtInformation, [mbOK], 0);
        sender.FocusControl;
        abort;
      end;
      if (cte.ctetransportadora.Items[i].cdveiculocarreta <> 0) and (not cdsmdfeveiculo.Locate(_cdveiculo, cte.ctetransportadora.Items[i].cdveiculocarreta, [])) then
      begin
        cdsmdfeveiculo.Insert;
        cdsmdfeveiculoCDVEICULO.AsInteger := cte.ctetransportadora.Items[i].cdveiculocarreta;
        cdsmdfeveiculo.Post;
      end;
      if (cte.ctetransportadora.Items[i].cdveiculocarreta2 <> 0) and (not cdsmdfeveiculo.Locate(_cdveiculo, cte.ctetransportadora.Items[i].cdveiculocarreta2, [])) then
      begin
        cdsmdfeveiculo.Insert;
        cdsmdfeveiculoCDVEICULO.AsInteger := cte.ctetransportadora.Items[i].cdveiculocarreta2;
        cdsmdfeveiculo.Post;
      end;
    end;
  end;
  procedure adicionar_municipio_carregamento;
  begin
    if not cdsmdfecarregamento.Locate(_cdmunicipio, cte.cdmunicipioinicio, []) then
    begin
      cdsmdfecarregamento.Insert;
      cdsmdfecarregamentoCDMUNICIPIO.AsInteger := cte.cdmunicipioinicio;
      cdsmdfecarregamento.Post;
    end;
  end;
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  cte := TCte.create;
  try
    cte.Select(sender.AsInteger);
    cte.cteremetentenota.Ler(cte.cdcte);
    cte.ctetransportadora.Ler(cte.cdcte);
    cte.cteqtdcarga.Ler(cte.cdcte);
    if cte.cdcte = 0 then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_cte)]), mterror, [mbok], 0);
      Sender.FocusControl;
      Abort;
    end;
    if cte.cduftermino <> cdsCDUFFIM.AsInteger then
    begin
      MessageDlg('UF de término do CTE ('+qregistro.StringdoCodigo(_uf, cte.cduftermino, _sguf)+')'#13'diferente da UF do descarregamento ('+cbxcduffim.Text+').', mtInformation, [mbOK], 0);
      sender.FocusControl;
      Abort;
    end;
    if cte.cdmunicipiotermino <> cdsmdfedescarregamentoCDMUNICIPIO.AsInteger then
    begin
      MessageDlg('Munícipio do CTE ('+qregistro.NomedoCodigo(_municipio, cte.cdmunicipiotermino)+')'#13'diferente do munícipio do descarregamento.', mtInformation, [mbOK], 0);
      Sender.FocusControl;
      Abort;
    end;
    if cdsCDUFINICIO.AsString = '' then
    begin
      cdsCDUFINICIO.AsInteger := cte.cdufinicio;
    end;
    adicionar_reboque;
    cdsmdfecteDTEMISSAO.AsDateTime := cte.dtemissao;
    cdsmdfecteVLCARGA.AsCurrency   := cte.vlmercadoria;
    cdsmdfecteQTCARGA.AsCurrency   := cte.getQtdcarga;
    cdsmdfectenuchavenfe.asstring  := cte.nuchavenfe;
    //adicionar_nfe;
    adicionar_transportadora;
    adicionar_municipio_carregamento;
  finally
    freeandnil(cte);
  end;
end;

procedure Tfrmmdfe.grdmdfecteDBTableView1CDCTEPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsmdfecte, _cte, _cd+_cte, false);
end;

procedure Tfrmmdfe.cdsmdfedescarregamentoAfterPost(DataSet: TDataSet);
begin
  cdsQTCTE.AsInteger    := cdsmdfedescarregamento.Aggregates[0].Value;
  cdsQTNFE.AsInteger    := cdsmdfedescarregamento.Aggregates[1].Value;
  cdsVLCARGA.AsCurrency := cdsmdfedescarregamento.Aggregates[2].Value;
  cdsQTCARGA.AsCurrency := cdsmdfedescarregamento.Aggregates[3].Value;
end;

procedure Tfrmmdfe.actabrircteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsmdfecte);
end;

procedure Tfrmmdfe.grdmdfecteDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _CDCTE then
  begin
    actabrircte.onExecute(actabrircte);
  end;
end;

procedure Tfrmmdfe.grdmdfepedagioDBTableView1CDFORNECEDORPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsmdfepedagio, _fornecedor, _cd+_fornecedor, false);
end;

procedure Tfrmmdfe.grdmdfepedagioDBTableView1CDRESPONSAVELPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsmdfepedagio, _fornecedor, _cd+_responsavel, false);
end;

procedure Tfrmmdfe.cdsmdfepedagioCDFORNECEDORValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsmdfepedagioNMFORNECEDOR.Clear;
    Exit;
  end;
  if not fornecedor.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if fornecedor.tppessoa <> _J then
  begin
    MessageDlg('Permitido somente fornecedor pessoa jurídica.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
  cdsmdfepedagioNMFORNECEDOR.AsString := fornecedor.nmfornecedor;
end;

procedure Tfrmmdfe.cdsmdfepedagioCDRESPONSAVELValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsmdfepedagioNMRESPONSAVEL.Clear;
    Exit;
  end;
  if not fornecedor.select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if fornecedor.tppessoa <> _J then
  begin
    MessageDlg('Permitido somente fornecedor pessoa jurídica.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
  cdsmdfepedagioNMRESPONSAVEL.AsString := fornecedor.nmfornecedor;
end;

procedure Tfrmmdfe.actabrirfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsmdfepedagio);
end;

procedure Tfrmmdfe.actabrirresponsavelExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsmdfepedagio, _cd+_responsavel, true);
end;

procedure Tfrmmdfe.grdmdfepedagioDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdfornecedor then
  begin
    actabrirfornecedor.onExecute(actabrirfornecedor)
  end
  else if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cd+_responsavel then
  begin
    actabrirresponsavel.onExecute(actabrirresponsavel);
  end;
end;

procedure Tfrmmdfe.grdmdfetransportadoraDBTableView1CDTRANSPORTADORAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsmdfetransportadora, _transportadora, _cd+_transportadora, false);
end;

procedure Tfrmmdfe.cdsmdfetransportadoraCDTRANSPORTADORAValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsmdfetransportadoraNMtransportadora.Clear;
    cdsmdfetransportadoraNUCPF.Clear;
    Exit;
  end;
  if not transportadora.Select(sender.AsLargeInt) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_transportadora)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if transportadora.tppessoa = _j then
  begin
    MessageDlg('Transportadora deve ser pessoa física.', mtInformation, [mbOK], 0);
    Sender.FocusControl;
    Abort;
  end;
  if transportadora.nucpf = '' then
  begin
    MessageDlg('CPF não está preenchido no cadastro da transportadora.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
  cdsmdfetransportadoraNMtransportadora.AsString := transportadora.nmtransportadora;
  cdsmdfetransportadoraNUCPF.AsString := transportadora.nucpf;
end;

procedure Tfrmmdfe.grdmdfetransportadoraDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdtransportadora then
  begin
    actabrirtransportadora.onExecute(actabrirtransportadora)
  end;
end;

procedure Tfrmmdfe.actabrirtransportadoraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsmdfetransportadora);
end;

procedure Tfrmmdfe.grdmdfeveiculoDBTableView1CDVEICULOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsmdfeveiculo, _veiculo, _cd+_veiculo, false);
end;

procedure Tfrmmdfe.grdmdfeveiculoDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdveiculo then actabrirveiculo.onExecute(actabrirveiculo)
end;

procedure Tfrmmdfe.cdsmdfeveiculoCDVEICULOValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsmdfeveiculonuplaca.Clear;
    Exit;
  end;
  if Sender.AsString = cdsCDVEICULO.AsString then
  begin
    MessageDlg('Reboque não pode ser o mesmo veículo do MDFE.', mtinformation, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if not veiculo.select(sender.AsInteger) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__veiculo)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  transportadorav.Select(veiculo.cdtransportadora);
  cdsmdfeveiculonuplaca.AsString := veiculo.nuplaca;
end;

procedure Tfrmmdfe.actabrirveiculoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsmdfeveiculo);
end;

procedure Tfrmmdfe.cdsmdfecarregamentoCDMUNICIPIOValidate(Sender: TField);
var
  nmmunicipio, sguf : string;
begin
  if Sender.AsString = '' then
  begin
    exit;
  end;
  sguf := NomedoCodigo(_uf, NomedoCodigo(_municipio, sender.AsString, _cduf), _sguf);
  if sguf <> cbxcdufinicio.Text then
  begin
    nmmunicipio := NomedoCodigo(_municipio, sender.AsString);
    MessageDlg('Cidade '+nmmunicipio+' ('+sguf+') não pertence a UF '+cbxcdufinicio.Text+' de Carregamento.', mtinformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure Tfrmmdfe.cdsmdfedescarregamentoCDMUNICIPIOValidate(Sender: TField);
var
  nmmunicipio, sguf : string;
begin
  if Sender.AsString = '' then
  begin
    exit;
  end;
  sguf := NomedoCodigo(_uf, NomedoCodigo(_municipio, sender.AsString, _cduf), _sguf);
  if sguf <> cbxcduffim.Text then
  begin
    nmmunicipio := NomedoCodigo(_municipio, sender.AsString);
    MessageDlg('Cidade '+nmmunicipio+' ('+sguf+') não pertence a UF '+cbxcduffim.Text+' de Carregamento.', mtinformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure Tfrmmdfe.actnfemenuExecute(Sender: TObject);
begin
  btnmdfe.DropDown(false);
end;

procedure Tfrmmdfe.actstatusExecute(Sender: TObject);
begin
  ACBrMDFe1.WebServices.StatusServico.Executar;
  MessageDlg(ACBrMDFe1.WebServices.StatusServico.xMotivo, mtInformation, [mbOK], 0);
end;

procedure Tfrmmdfe.actconfigurarExecute(Sender: TObject);
begin
  if dlgsetNFEAcbr then
  begin
    LerConfiguracao;
  end;
end;

procedure Tfrmmdfe.LerConfiguracao;
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
    //{$IFDEF DFE_SEM_CAPICOM}
      //ACBrMDFe1.Configuracoes.Certificados.ArquivoPFX  := Ini.ReadString( 'Certificado','Caminho' ,'');
     // ACBrMDFe1.Configuracoes.Certificados.Senha       := Ini.ReadString( 'Certificado','Senha'   ,'');
    //{$ELSE}
      ACBrMDFe1.Configuracoes.Certificados.NumeroSerie := Ini.ReadString( 'Certificado','NumSerie','');
    //{$ENDIF}
    ACBrMDFe1.Configuracoes.Geral.SSLLib       := acbr.certificado.SSLLib;
    ACBrMDFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(1));
    ACBrMDFe1.Configuracoes.Geral.Salvar       := Ini.ReadBool(   'Geral','Salvar'      ,True);
    ACBrMDFe1.Configuracoes.Arquivos.PathSalvar   := Ini.ReadString( 'Geral','PathSalvar'  ,'');
    if (ACBrMDFe1.Configuracoes.Arquivos.PathSalvar = '') or (ACBrMDFe1.Configuracoes.Arquivos.PathSalvar = ExtractFilePath(Application.ExeName)) then
    begin
      ACBrMDFe1.Configuracoes.Arquivos.PathSalvar := ExtractFilePath(Application.ExeName)+'\'+_xml;
    end;

    ACBrMDFe1.Configuracoes.WebServices.UF         := Ini.ReadString('WebService','UF','MG');
    ACBrMDFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(Ini.ReadInteger('WebService','Ambiente'  ,0)+1));
    ACBrMDFe1.Configuracoes.WebServices.Visualizar := Ini.ReadBool(    'WebService','Visualizar',False);

    ACBrMDFe1.Configuracoes.WebServices.ProxyHost  := Ini.ReadString( 'Proxy','Host'   ,'');
    ACBrMDFe1.Configuracoes.WebServices.ProxyPort  := Ini.ReadString( 'Proxy','Porta'  ,'');
    ACBrMDFe1.Configuracoes.WebServices.ProxyUser  := Ini.ReadString( 'Proxy','User'   ,'');
    ACBrMDFe1.Configuracoes.WebServices.ProxyPass  := Ini.ReadString( 'Proxy','Pass'   ,'');

    if ACBrMDFe1.DAMDFe <> nil then
    begin
      ACBrMDFe1.DAMDFe.TipoDAMDFe := StrToTpImp(OK,IntToStr(0+1));
      ACBrMDFe1.DAMDFe.Logo       := Ini.ReadString( 'Geral','LogoMarca'   ,'');
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
    email.tpenvio  := ini.ReadInteger('Email','Tipo Envio', 1);
    email.bopdf    := Ini.ReadBool  ('Email',UpperCase(_PDF)    ,False);

    Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
    msg.LoadFromStream(StreamMemo);
    StreamMemo.Free;
    email.msg      := msg.text;
  finally
    freeandnil(Ini);
    freeandnil(msg);
  end;
end;

procedure Tfrmmdfe.gerar_mdfe;
var
  cte : TCte;
begin
  if mdfe.cdufinicio = 0 then
  begin
    messagedlg('UF de Carregamento é um campo obrigatório.', mtinformation, [mbok], 0);
    abort;
  end;
  if mdfe.cduffim = 0 then
  begin
    messagedlg('UF de Descarregamento é um campo obrigatório.', mtinformation, [mbok], 0);
    abort;
  end;
  if not mdfe.VerificarUFPercurso then
  begin
    messagedlg('UF´S do percurso obrigatório de acordo com a UF de início e fim.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbspercurso;
    Abort;
  end;
  ACBrMDFe1.Manifestos.Clear;
  with ACBrMDFe1.Manifestos.Add.MDFe do
  begin
    infAdic.infCpl := cdsDSOBSERVACAO.AsString;
    Ide.cUF     := cdsCDUF.AsInteger; // Dados de Identificação do MDF-e
    Ide.tpAmb   := ACBrMDFe1.Configuracoes.WebServices.Ambiente;
         if cdsCDMDFETPEMITENTE.AsInteger = 1 then Ide.tpEmit  := teTransportadora // TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );
    else if cdsCDMDFETPEMITENTE.AsInteger = 2 then Ide.tpEmit  := teTranspCargaPropria; // TMDFeTpEmitente = ( teTransportadora, teTranspCargaPropria );

    Ide.modelo  := _58;
    Ide.serie   := StrToInt(NomedoCodigo(_serie, cdsCDSERIE.AsString, _nuserie));
    Ide.nMDF    := cdsNUMDFE.AsInteger;
    Ide.cMDF    := -1;  // Código não Aleatório
    if cdsCDMDFEMODALIDADE.AsString = _1 then
    begin
      Ide.modal := moRodoviario
    end
    else if cdsCDMDFEMODALIDADE.AsString = _2 then
    begin
      Ide.modal := moAereo
    end
    else if cdsCDMDFEMODALIDADE.AsString = _3 then
    begin
      Ide.modal := moAquaviario
    end
    else if cdsCDMDFEMODALIDADE.AsString = _4 then
    begin
      Ide.modal := moFerroviario;
    end;
    Ide.dhEmi   := cdsDTEMISSAO.AsDateTime + cdsHREMISSAO.AsDateTime;
    if cdsCDMDFEFORMAEMISSAO.AsString = _1 then
    begin
      Ide.tpEmis := teNormal
    end
    else if cdsCDMDFEFORMAEMISSAO.AsString = _2 then
    begin
      Ide.tpEmis := teContingencia;
    end;

    Ide.procEmi := peAplicativoContribuinte; // TpcnProcessoEmissao = (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco);
    Ide.verProc := Empresa.nuversao;
    Ide.UFIni   := cbxcdufinicio.Text;
    Ide.UFFim   := cbxcduffim.text;
    //ide.dhIniViagem

    cdsmdfecarregamento.First;
    while not cdsmdfecarregamento.Eof do
    begin
      with Ide.infMunCarrega.Add do
      begin
        cMunCarrega := cdsmdfecarregamentoCDMUNICIPIO.AsInteger;
        xMunCarrega := NomedoCodigo(_municipio, cdsmdfecarregamentoCDMUNICIPIO.AsString);
      end;
      cdsmdfecarregamento.Next;
    end;
    // Dados do Emitente

    cdsmdfeufpercurso.First;
    while not cdsmdfeufpercurso.eof do
    begin
      with Ide.infPercurso.Add do
      begin
        UFPer := NomedoCodigo(_uf, cdsmdfeufpercursoCDUF.AsString, _sguf);
      end;
      cdsmdfeufpercurso.Next;
    end;

    Emit.CNPJ  := Empresa.nucnpj_;
    Emit.IE    := empresa.nuinscest_;
    Emit.xNome := empresa.rzsocial;
    Emit.xFant := empresa.nmempresa;

    Emit.EnderEmit.xLgr    := empresa.endereco.dsendereco;
    Emit.EnderEmit.nro     := empresa.endereco.dsnumero;
    Emit.EnderEmit.xCpl    := empresa.endereco.dscomplemento;
    Emit.EnderEmit.xBairro := empresa.endereco.nmbairro;
    Emit.EnderEmit.cMun    := empresa.endereco.cdmunicipio;
    Emit.EnderEmit.xMun    := empresa.endereco.nmmunicipio;
    Emit.EnderEmit.CEP     := strtoint(removercaracteres(empresa.endereco.nucep));
    Emit.EnderEmit.UF      := empresa.endereco.sguf;
    Emit.EnderEmit.fone    := empresa.nufone1;
    Emit.enderEmit.email   := Empresa.email;

    veiculo.select(cdsCDVEICULO.AsInteger);
    if Length(veiculo.nurntrc) > 8 then
    begin
      messagedlg('O número RNTRC do veículo '+inttostr(veiculo.cdveiculo)+' está maior do 8 caracteres.', mtInformation, [mbok], 0);
      abort;
    end;

    rodo.RNTRC              := Empresa.faturamento.cte.nurntrc;
    rodo.CIOT               := cdsCDCIOT.AsString;
    rodo.veicTracao.cInt    := IntToStr(veiculo.cdveiculo);
    rodo.veicTracao.placa   := veiculo.nuplaca;
    rodo.veicTracao.tara    := veiculo.pstara;
    rodo.veicTracao.capKG   := veiculo.pscapacidade;
    rodo.veicTracao.capM3   := veiculo.pscapacidadem3;

         if veiculo.cdctetprodado = _00 then rodo.veicTracao.tpRod := trNaoAplicavel
    else if veiculo.cdctetprodado = _01 then rodo.veicTracao.tpRod := trTruck
    else if veiculo.cdctetprodado = _02 then rodo.veicTracao.tpRod := trToco
    else if veiculo.cdctetprodado = _03 then rodo.veicTracao.tpRod := trCavaloMecanico
    else if veiculo.cdctetprodado = _04 then rodo.veicTracao.tpRod := trVAN
    else if veiculo.cdctetprodado = _05 then rodo.veicTracao.tpRod := trUtilitario
    else if veiculo.cdctetprodado = _06 then rodo.veicTracao.tpRod := trOutros;

    rodo.veicTracao.UF := qregistro.StringdoCodigo(_uf, veiculo.cduf, _sguf);

         if veiculo.cdctetpcarroceria = _00 then rodo.veicTracao.tpCar := tcNaoAplicavel
    else if veiculo.cdctetpcarroceria = _01 then rodo.veicTracao.tpCar := tcAberta
    else if veiculo.cdctetpcarroceria = _02 then rodo.veicTracao.tpCar := tcFechada
    else if veiculo.cdctetpcarroceria = _03 then rodo.veicTracao.tpCar := tcGraneleira
    else if veiculo.cdctetpcarroceria = _04 then rodo.veicTracao.tpCar := tcPortaContainer
    else if veiculo.cdctetpcarroceria = _05 then rodo.veicTracao.tpCar := tcSider;

    transportadorav.Select(veiculo.cdtransportadora);
    if (transportadorav.tppessoa = _F) or ((transportadorav.tppessoa = _j) and (transportadorav.nucnpj <> empresa.nucnpj))  then
    begin
      if transportadorav.tppessoa = _F then
      begin
        rodo.veicTracao.prop.CNPJCPF := removercaracteres(transportadorav.nucpf)
      end
      else
      begin
        rodo.veicTracao.prop.CNPJCPF := removercaracteres(transportadorav.nucnpj);
      end;
      rodo.veicTracao.prop.RNTRC := veiculo.nurntrc;
      rodo.veicTracao.prop.xNome := transportadorav.rzsocial;
      rodo.veicTracao.prop.IE    := removercaracteres(transportadorav.nuinscest);
      rodo.veicTracao.prop.UF    := qregistro.StringdoCodigo(_uf, transportadorav.cduf, _sguf);
      case veiculo.cdctetpproprietario of
        0 : rodo.veicTracao.prop.tpProp := tpTACAgregado;
        1 : rodo.veicTracao.prop.tpProp := tpTACIndependente;
        2 : rodo.veicTracao.prop.tpProp := tpOutros;
      end;
    end;

    if cdsmdfetransportadora.RecordCount = 0 then
    begin
      messagedlg('O preenchimento do Condutor é obrigatório.', mtinformation, [mbok], 0);
      abort;
    end;
    cdsmdfetransportadora.First;
    while not cdsmdfetransportadora.Eof do
    begin
      with rodo.veicTracao.condutor.Add do
      begin
        xNome := cdsmdfetransportadoraNMTRANSPORTADORA.AsString;
        CPF   := removercaracteres(cdsmdfetransportadoraNUCPF.AsString);
      end;
      cdsmdfetransportadora.Next;
    end;
    cdsmdfeveiculo.First;
    while not cdsmdfeveiculo.Eof do
    begin
      veiculo.Select(cdsmdfeveiculoCDVEICULO.asinteger);
      transportadorav.Select(veiculo.cdtransportadora);
      with rodo.veicReboque.Add do
      begin
        cInt  := IntToStr(veiculo.cdveiculo);
        placa := veiculo.nuplaca;
        tara  := veiculo.pstara;
        capKG := veiculo.pscapacidade;
        capM3 := veiculo.pscapacidadem3;
        UF    := qregistro.StringdoCodigo(_uf, veiculo.cduf, _sguf);
        if (transportadorav.tppessoa = _F) or ((transportadorav.tppessoa = _j) and (transportadorav.nucnpj <> empresa.nucnpj))  then
        begin
          if transportadorav.tppessoa = _F then
          begin
            prop.CNPJCPF := removercaracteres(transportadorav.nucpf)
          end
          else
          begin
            prop.CNPJCPF := removercaracteres(transportadorav.nucnpj);
          end;
          prop.RNTRC := veiculo.nurntrc;
          prop.xNome := transportadorav.rzsocial;
          prop.IE    := removercaracteres(transportadorav.nuinscest);
          prop.UF    := qregistro.StringdoCodigo(_uf, transportadorav.cduf, _sguf);
          if veiculo.cdctetpproprietario = 0 then
          begin
            prop.tpProp := tpTACAgregado
          end
          else if veiculo.cdctetpproprietario = 1 then
          begin
            prop.tpProp := tpTACIndependente
          end
          else if veiculo.cdctetpproprietario = 2 then
          begin
            prop.tpProp := tpOutros;
          end;
        end;
      end;
      cdsmdfeveiculo.Next;
    end;
    cdsmdfepedagio.First;
    while not cdsmdfepedagio.Eof do
    begin
      with rodo.valePed.disp.Add do
      begin
        CNPJForn := removercaracteres(NomedoCodigo(_fornecedor, cdsmdfepedagio.FieldByName(_CDFORNECEDOR).AsString, _nucnpj));
        CNPJPg   := removercaracteres(NomedoCodigo(_fornecedor, cdsmdfepedagio.FieldByName(_CDRESPONSAVEL).AsString, _nucnpj));
        nCompra  := cdsmdfepedagioNUCOMPROVANTE.AsString;
      end;
      cdsmdfepedagio.Next;
    end;
    cdsmdfedescarregamento.First;
    while not cdsmdfedescarregamento.Eof do
    begin
      with infDoc.infMunDescarga.Add do
      begin
        cMunDescarga := cdsmdfedescarregamentoCDMUNICIPIO.AsInteger;
        xMunDescarga := NomedoCodigo(_municipio, cdsmdfedescarregamentoCDMUNICIPIO.AsString);
        if cdsCDMDFETPEMITENTE.AsString = _2 then
        begin
          cdsmdfenfe.First;
          while not cdsmdfenfe.Eof do
          begin
            with infNFe.Add do
            begin
              chNFe := cdsmdfenfeNUCHAVENFE.AsString;
              {
              with infUnidTransp.Add do
              begin
                tpUnidTransp := 7;
                idUnidTransp := _kg;
                with lacUnidTransp.Add do
                begin
                  nLacre := 1;
                end;
              end;
              }
            end;
            cdsmdfenfe.Next;
          end;
        end;
        cdsmdfecte.First;
        while not cdsmdfecte.Eof do
        begin
          with infCTe.Add do
          begin
            chCTe := cdsmdfecteNUCHAVENFE.AsString;
            cte := TCte.create;
            try
              cte.Select(cdsmdfecteCDCTE.AsInteger);
              if cte.nuchavecontingencia <> '' then
              begin
                SegCodBarra := cte.nuchavecontingencia;
              end;
            finally
              FreeAndNil(cte);
            end;
          end;
          cdsmdfecte.Next;
        end;
      end;
      cdsmdfedescarregamento.Next;
    end;
    tot.qCTe := cdsQTCTE.AsInteger;
    tot.qNFe := cdsQTNFE.AsInteger;
    tot.vCarga := cdsVLCARGA.AsCurrency;
    if cdsCDMDFETPEMITENTE.AsString = _2 then
    begin
      tot.qNFe := cdsQTNFE.AsInteger;
    end;
    if lowercase(cbxcdunidade.Text) = _KG  then
    begin
      tot.cUnid := uKG
    end
    else if lowercase(cbxcdunidade.Text) = _ton then
    begin
      tot.cUnid := uTON;
    end
    else
    begin
      MessageDlg('Código de Unidade '+cbxcdunidade.Text+' não identificado.', mtInformation, [mbok], 0);
      Abort;
    end;
    tot.qCarga := cdsQTCARGA.AsFloat;
    cdsmdfelacre.First;
    while not cdsmdfelacre.eof do
    begin
      with lacres.Add do
      begin
        nLacre := cdsmdfelacreNULACRE.AsString;
      end;
      cdsmdfelacre.Next;
    end;
  end;
end;

procedure Tfrmmdfe.actvalidarExecute(Sender: TObject);
begin
  gerar_mdfe;
  ACBrMDFe1.Manifestos.Validar;
  Exibir_chave_nfe(exibe, cdsnumdfe.asstring, ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID);
end;

procedure Tfrmmdfe.actenviarExecute(Sender: TObject);
  procedure gerar_numero_lote;
  begin
    mdfe.nulote := strtoint(GerarCodigo(_numlote));
    mdfe.Update;
  end;
  procedure RegistrarEnviado;
  begin
    mdfe.cdstmdfe := 99;
    mdfe.Update;
  end;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  gerar_mdfe;
  gerar_numero_lote;
  RegistrarEnviado;
  try
    if ACBrMDFe1.Enviar(mdfe.nulote) then
    begin
      mdfe.dsxml := ACBrMDFe1.Manifestos.Items[0].XML;
      mdfe.nuchavenfe := ACBrMDFe1.WebServices.Retorno.MDFeRetorno.ProtMDFe.Items[0].chMDFe;
      mdfe.nuprotocoloautorizacao := ACBrMDFe1.WebServices.Retorno.MDFeRetorno.ProtMDFe.Items[0].nProt;
      mdfe.tsprotocoloautorizacao := ACBrMDFe1.WebServices.Retorno.MDFeRetorno.ProtMDFe.Items[0].dhRecbto;
      mdfe.nurecibonfe := ACBrMDFe1.WebServices.Retorno.MDFeRetorno.nRec;
      mdfe.cdstmdfe := 2;
      mdfe.Update;
      MDFE_imprimir(ACBrMDFe1, cdsCDSTMDFE.asstring = _3);
    end;
  except
    if ACBrMDFe1.WebServices.Retorno.cStat = 539 then
    begin
      if messagedlg('Rejeicao: Duplicidade de MDF-e, com diferença na Chave de Acesso.'#13+
                    'Foi enviado a chave '+ACBrMDFe1.WebServices.Retorno.ChaveMDFe+#13+
                    'mas na receita está  '+copy(ACBrMDFe1.WebServices.Retorno.xMotivo, 75, 44)+'.'#13+
                    'Realizar download do XML no site da receita?', mtinformation, [mbyes, mbno], 0) = mryes then
      begin
        Clipboard.AsText := copy(ACBrMDFe1.WebServices.Retorno.xMotivo, 75, 44);
        ShellExecute(Handle, _open, 'https://mdfe-portal.sefaz.rs.gov.br/SiteSSL/DownloadXMLMDFe', Nil, Nil, SW_SHOWDEFAULT);
      end;
    end
    else
    begin
      raise EACBrDFeException.CreateDef(ACBrMDFe1.WebServices.Retorno.xMotivo);
    end;
  end;
  Abrir(cdsCDMDFE.asinteger);
end;

function Tfrmmdfe.Loadmdfe:boolean;
begin
  result := False;
  ACBrMDFe1.Manifestos.Clear;
  if cdsDSXML.asstring = '' then
  begin
    if cdsCDSTMDFE.asstring = _1 then
    begin
      result := True;
    end;
    Exit;
  end;
  ACBrMDFe1.Manifestos.LoadFromString(cdsDSXML.asstring, true);
  result := True;
  actnfe.Enabled           := (not result) and (cds.RecordCount > 0);
  actnfe.Visible           := (not result) and (cds.RecordCount > 0);
  if result then
  begin
    actEditar.Enabled  := false;
  end;
end;

procedure Tfrmmdfe.cdsmdfeufpercursoCDUFValidate(Sender: TField);
begin
  if Sender.AsString = cdsCDUFINICIO.AsString then
  begin
    MessageDlg('UF do percurso não pode ser igual a UF de Carregamento.', mtinformation, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  if Sender.AsString = cdsCDUFFIM.AsString then
  begin
    MessageDlg('UF do percurso não pode ser igual a UF de Descarregamento.', mtinformation, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
end;

procedure Tfrmmdfe.cdsAfterScroll(DataSet: TDataSet);
begin
  mdfe.Select(cds);
  mdfe.mdfecarregamento.Ler(cdsmdfecarregamento);
  mdfe.mdfeufpercurso.Ler(cdsmdfeufpercurso);
  mdfe.mdfelacre.Ler(cdsmdfelacre);
  mdfe.mdfetransportadora.Ler(cdsmdfetransportadora);
  mdfe.mdfeveiculo.Ler(cdsmdfeveiculo);
  mdfe.mdfepedagio.Ler(cdsmdfepedagio);
  mdfe.mdfedescarregamento.Ler(cdsmdfedescarregamento, cdsmdfecte, cdsmdfenfe);

  tbsnfe.TabVisible := cdsCDMDFETPEMITENTE.AsString = _2;
  ACBrMDFe1.Manifestos.Clear;
  //registro.setStatus(_mdfe, cds);
  actvalidar.Enabled      := mdfe.cdstmdfe in [1, 99];
  actenviar.Enabled       := mdfe.cdstmdfe in [1, 99];
  actcancelarmdfe.Enabled := mdfe.cdstmdfe = 2;
  actencerrar.Enabled     := mdfe.cdstmdfe = 2;
  actimportarxml.Enabled  := mdfe.cdstmdfe in [1, 99];
  pnl.Caption             := exibe + ' ' + cdsnumdfe.asstring;
  if cdsnumdfe.asstring <> '' then
  begin
    pnl.Caption := pnl.caption + ' (' +nomedocodigo(_st+_mdfe, cdsCDSTMDFE.asstring)+')';
    if cdsnuchavenfe.asstring <> '' then
    begin
      pnl.caption := pnl.Caption + ' - Chave '+ qrotinas.getchave(cdsnuchavenfe.asstring);
    end;
  end;
  if not cdscdserie.IsNull then
  begin
    pnl.Caption := pnl.Caption + ' Série '+NomedoCodigo(_serie, cdscdserie.asstring);
  end;
end;

procedure Tfrmmdfe.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure Tfrmmdfe.lblveiculoDblClick(Sender: TObject);
begin
  actabrirveiculo2Execute(actabrirveiculo2);
end;

procedure Tfrmmdfe.actabrirveiculo2Execute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure Tfrmmdfe.actcancelarmdfeExecute(Sender: TObject);
var
  idLote, Justificativa : String;
begin
  if empresa.get_bloqueado or (messagedlg('Tem certeza que deseja cancelar o MDFE '+cdsnumdfe.asstring+'?', mtconfirmation, [mbyes,mbno], 0) = mrno) then
  begin
    exit;
  end;
  if not GerarCartaCorrecao(Justificativa) then
  begin
    exit;
  end;
  Loadmdfe;
  idLote := _1;
  ACBrMDFe1.EventoMDFe.Evento.Clear;
  with ACBrMDFe1.EventoMDFe.Evento.Add do
  begin
    infEvento.chMDFe          := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
    infEvento.CNPJ            := empresa.nucnpj_;
    infEvento.dhEvento        := tsBanco;
    infEvento.tpEvento        := teCancelamento;
    infEvento.nSeqEvento      := cdsNUSEQEVENTO.AsInteger + 1;
    infEvento.detEvento.nProt := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
    infEvento.detEvento.xJust := trim(Justificativa);
  end;
  if not ACBrMDFe1.EnviarEvento(StrToInt(idLote)) then
  begin
    MessageDlg('Não foi possível enviar o cancelamento do mdfe.', mtInformation, [mbOK], 0);
    abort;
  end;
  if ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat = 135 then
  begin
    mdfe.Cancelar(Justificativa, ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.InfEvento.detEvento.nProt, ACBrMDFe1.WebServices.EnvEvento.RetWS);
  end;
  MessageDlg('Status: '+inttostr(ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat)+' - '+ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo, mtInformation, [mbOK], 0);
  Abrir(cdscdmdfe.asinteger);
end;

procedure Tfrmmdfe.actencerrarExecute(Sender: TObject);
var
  idLote : String;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  if (empresa.faturamento.mdfe.nudiasencerramento > 0) and (DaysBetween(cdsDTEMISSAO.AsDateTime, DtBanco) <= empresa.faturamento.mdfe.nudiasencerramento)  then
  begin
    messagedlg('MDFE só pode ser encerrado a partir da data '+FormatDateTime(_dd__mm__yyyy, cdsDTEMISSAO.AsDateTime + empresa.faturamento.mdfe.nudiasencerramento)+'.', mtinformation, [mbok], 0);
    exit;
  end;
  if messagedlg('Tem certeza que deseja encerrar o MDFE '+cdsnumdfe.asstring+'?'#13'Após encerrar não poderá cancelar o MDFE e nem o CTE.', mtconfirmation, [mbyes,mbno], 0) = mrno then
  begin
    exit;
  end;

  Loadmdfe;

  idLote := _1;
  ACBrMDFe1.EventoMDFe.Evento.Clear;

  with ACBrMDFe1.EventoMDFe.Evento.Add do
  begin
    infEvento.chMDFe          := Copy(ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID, 5, 44);
    infEvento.CNPJ            := empresa.nucnpj_;
    infEvento.dhEvento        := tsBanco;
    infEvento.tpEvento        := teEncerramento;
    infEvento.nSeqEvento      := cdsNUSEQEVENTO.AsInteger + 1;
    infEvento.detEvento.nProt := ACBrMDFe1.Manifestos.Items[0].MDFe.procMDFe.nProt;
    infEvento.detEvento.dtEnc := DtBanco;
    infEvento.detEvento.cUF   := StrToInt(Copy(IntToStr(ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga),1,2));
    infEvento.detEvento.cMun  := ACBrMDFe1.Manifestos.Items[0].MDFe.infDoc.infMunDescarga.Items[0].cMunDescarga;
  end;

  if not ACBrMDFe1.EnviarEvento(StrToInt(idLote)) then
  begin
    MessageDlg('Não foi possível enviar o encerramento do mdfe.', mtInformation, [mbOK], 0);
    abort;
  end;
  if ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat = 135 then
  begin
    encerrar_mdfe(ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.InfEvento.detEvento.nProt, ACBrMDFe1.WebServices.EnvEvento.RetWS);
  end;
  MessageDlg('Status: '+inttostr(ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.cStat)+' - '+ACBrMDFe1.WebServices.EnvEvento.EventoRetorno.retEvento[0].RetInfEvento.xMotivo, mtInformation, [mbOK], 0);
  Abrir(cdscdmdfe.asinteger);
end;

procedure Tfrmmdfe.actexportarxmlExecute(Sender: TObject);
var
  arquivo : tstrings;
  diretorio : string;
begin
  if cdsdsxml.IsNull and (ACBrMDFe1.Manifestos.Count = 0) then
  begin
    messagedlg('Não há MDF-e para ser exportada.', mtInformation, [mbok], 0);
    exit;
  end;
  arquivo := tstringlist.create;
  try
    diretorio := QRotinas.getdiretorio;
    if diretorio = '' then
    begin
      exit;
    end;
    if ACBrMDFe1.Manifestos.Count > 0 then
    begin
      arquivo.Text := ACBrMDFe1.Manifestos.Items[0].XML
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
      arquivo.SaveToFile(diretorio+'\'+cdsnumdfe.asstring+'.'+_xml);
    end;
    messagedlg(_msg_Exportacao_concluida, mtInformation, [mbok], 0);
  finally
    freeandnil(arquivo);
  end;
end;

procedure Tfrmmdfe.actgerarpdfExecute(Sender: TObject);
begin
  if ACBrMDFe1.Manifestos.Count < 1 then
  begin
    Loadmdfe;
  end;
  if MDFE_GerarPDF(ACBrMDFe1) then
  begin
    messagedlg('Gerado PDF com sucesso.', mtinformation, [mbok], 0);
  end;
end;

procedure Tfrmmdfe.edtcdveiculoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdveiculoPropertiesButtonClick(sender, 0)
  end
  else
  begin
    nextcontrol(Sender, Key, shift);
  end;
end;

procedure Tfrmmdfe.grdmdfecteDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    if LowerCase(AItem.DataBinding.FilterFieldName) = _cdcte then
    begin
      grdmdfecteDBTableView1CDCTEPropertiesButtonClick(grdmdfecteDBTableView1CDCTE, 0);
    end;
  end;
end;

procedure Tfrmmdfe.grdmdfetransportadoraDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    if LowerCase(AItem.DataBinding.FilterFieldName) = _cdtransportadora then
    begin
      grdmdfetransportadoraDBTableView1CDTRANSPORTADORAPropertiesButtonClick(grdmdfetransportadoraDBTableView1CDTRANSPORTADORA, 0);
    end;
  end;
end;

procedure Tfrmmdfe.grdmdfeveiculoDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    if LowerCase(AItem.DataBinding.FilterFieldName) = _cdveiculo then
    begin
      grdmdfeveiculoDBTableView1CDVEICULOPropertiesButtonClick(grdmdfeveiculoDBTableView1CDVEICULO, 0);
    end;
  end;
end;

procedure Tfrmmdfe.grdmdfepedagioDBTableView1EditKeyDown(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    if LowerCase(AItem.DataBinding.FilterFieldName) = _cdfornecedor then
    begin
      grdmdfepedagioDBTableView1CDFORNECEDORPropertiesButtonClick(grdmdfepedagioDBTableView1CDFORNECEDOR, 0);
    end;
    if LowerCase(AItem.DataBinding.FilterFieldName) = _cd+_responsavel then
    begin
      grdmdfepedagioDBTableView1CDRESPONSAVELPropertiesButtonClick(grdmdfepedagioDBTableView1CDRESPONSAVEL, 0);
    end;
  end;
end;

procedure Tfrmmdfe.grdmdfecarregamentoDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsmdfecarregamento, key);
end;

procedure Tfrmmdfe.grdmdfeufpercursoDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsmdfeufpercurso, key);
end;

procedure Tfrmmdfe.grdmdfedescarregamentoDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsmdfedescarregamento, key);
end;

procedure Tfrmmdfe.grdmdfecteDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsmdfecte, key);
end;

procedure Tfrmmdfe.grdmdfenfeDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsmdfenfe, key);
end;

procedure Tfrmmdfe.grdmdfelacreDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsmdfelacre, key);
end;

procedure Tfrmmdfe.grdmdfetransportadoraDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsmdfetransportadora, key);
end;

procedure Tfrmmdfe.grdmdfeveiculoDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsmdfeveiculo, key);
end;

procedure Tfrmmdfe.grdmdfepedagioDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
  registro.ExibirInformacaoRegistro(cdsmdfepedagio, key);
end;

procedure Tfrmmdfe.actenviaremailExecute(Sender: TObject);
begin
  if not Loadmdfe then
  begin
    MessageDlg('MDF-e inexistente.'#13'Não é possível enviar e-mail.', mtInformation, [mbOK], 0);
    Exit;
  end;
  MDFE_enviar_email(ACBrMDFe1, email);
end;

procedure Tfrmmdfe.actenviaremailremetenteExecute(Sender: TObject);
begin
  if not Loadmdfe then
  begin
    MessageDlg('MDF-e inexistente.'#13'Não é possível enviar e-mail.', mtInformation, [mbOK], 0);
    Exit;
  end;
  MDFE_enviar_email(ACBrMDFe1, email, mdfe.ListaEmailRemetenteCTE);
end;

procedure Tfrmmdfe.actconsultarExecute(Sender: TObject);
var
  nuchave : string;
begin
  nuchave := cdsnuchavenfe.asstring;
  if nuchave <> '' then
  begin
    if Loadmdfe and (cdsCDSTMDFE.asstring <> _1) then
    begin
      Exibir_chave_nfe(exibe, cdsNUMDFE.asstring, nuchave);
      ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID := nuchave;
      consultar_mdfe;
    end;
  end
  else
  begin
    gerar_mdfe;
    ACBrMDFe1.Manifestos.Validar;
    consultar_mdfe;
  end;
end;

procedure Tfrmmdfe.Consultar_MDFe;
begin
  if ACBrMDFe1.Manifestos.Items[0].MDFe.infMDFe.ID = '' then
  begin
    Exit;
  end;
  ACBrMDFe1.Consultar;
  if (ACBrMDFe1.WebServices.Consulta.cStat = 132) and (cdsCDSTMDFE.AsInteger <> 4) then
  begin
    encerrar_mdfe(ACBrMDFe1.WebServices.Consulta.Protocolo, ACBrMDFe1.WebServices.Consulta.RetWS);
    Abrir(cdscdmdfe.asinteger);
  end;
  ShowMessage('Motivo: '+ACBrMDFe1.WebServices.Consulta.XMotivo);
  if (ACBrMDFe1.WebServices.Consulta.XMotivo = 'Cancelamento de MDF-e homologado') and (mdfe.cdstmdfe = 2) then
  begin
    mdfe.Cancelar('', ACBrMDFe1.WebServices.Consulta.Protocolo, ACBrMDFe1.WebServices.Consulta.RetWS);
  end;
end;

function Tfrmmdfe.Novo(cdembarque: string): Boolean;
var
  q : tclassequery;
begin
  q := tclassequery.create;
  try
    q.q.open('select embarque.*,itembarque.*,transportadora.cdveiculo '+
              'from embarque '+
              'left join itembarque on itembarque.cdempresa=embarque.cdempresa and itembarque.cdembarque=embarque.cdembarque '+
              'left join transportadora on transportadora.cdempresa=embarque.cdempresa and transportadora.cdtransportadora=embarque.cdtransportadora '+
              'where embarque.cdempresa='+empresa.cdempresa.tostring+' and embarque.cdembarque='+cdembarque);
    actnovoexecute(actnovo);
    cds.fieldbyname(_cdveiculo).asstring  := q.q.fieldbyname(_cdveiculo).asstring;
    cds.FieldByName(_cdufinicio).AsString := RetornaSQLString('select cdufinicio from cte where cdempresa='+empresa.cdempresa.tostring+' and cdcte='+q.q.fieldbyname(_cdcte).AsString);
    cds.FieldByName(_cduffim).AsString    := RetornaSQLString('select cduftermino from cte where cdempresa='+empresa.cdempresa.tostring+' and cdcte='+q.q.fieldbyname(_cdcte).AsString);
    get_municipio_carregamento(cdembarque);
    get_informacao_documento(cdembarque);
    result := True;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmmdfe.AbrirTabelas;
begin
  TcxLookupComboBoxProperties(grdmdfecarregamentoDBTableView1CDMUNICIPIO.Properties).ListSource := abrir_tabela(_municipio);
  TcxLookupComboBoxProperties(grdmdfedescarregamentoDBTableView1CDMUNICIPIO.Properties).ListSource := abrir_tabela(_municipio);
  TcxLookupComboBoxProperties(grdmdfeufpercursoDBTableView1CDUF.Properties).ListSource := abrir_tabela(_uf);
  cbxcdunidade.Properties.ListSource          := abrir_tabela(_mdfe + _unidade);
  cbxcdtpmdfe.Properties.ListSource           := abrir_tabela(_tp + _mdfe);
  cbxcduf.Properties.ListSource               := abrir_tabela(_uf);
  cbxcdufinicio.Properties.ListSource         := abrir_tabela(_uf);
  cbxcduffim.Properties.ListSource            := abrir_tabela(_uf);
  cbxCDMDFETPEMITENTE.Properties.ListSource   := abrir_tabela(_mdfe + _tp + _emitente);
  cbxCDMDFEMODALIDADE.Properties.ListSource   := abrir_tabela(_mdfe + _modalidade);
  cbxCDMDFEFORMAEMISSAO.Properties.ListSource := abrir_tabela(_mdfe + _forma + _emissao);
end;

procedure Tfrmmdfe.get_municipio_carregamento(cdembarque: string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('select cte.CDMUNICIPIOINICIO '+
             'from cte '+
             'left join itembarque on itembarque.cdempresa=cte.cdempresa and itembarque.cdcte=cte.cdcte '+
             'where itembarque.cdempresa='+empresa.cdempresa.tostring+' and itembarque.cdembarque='+cdembarque+' '+
             'group by cte.CDMUNICIPIOINICIO');
    while not q.q.eof do
    begin
      cdsmdfecarregamento.insert;
      cdsmdfecarregamentoCDMUNICIPIO.asstring := q.q.fieldbyname(_CDMUNICIPIOINICIO).asstring;
      cdsmdfecarregamento.post;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure Tfrmmdfe.get_informacao_documento(cdembarque: string);
var
  q : TClasseQuery;
  cdmunicipio : string;
  ctetransportadora : TCTETransportadoraList;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('select c.CDMUNICIPIOTERMINO,c.cdcte '+
             'from cte c '+
             'left join itembarque i on i.cdempresa=c.cdempresa and i.cdcte=c.cdcte '+
             'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdembarque='+cdembarque+' '+
             'group by c.CDMUNICIPIOTERMINO,c.cdcte');
    while not q.q.Eof do
    begin
      if cdmunicipio <> q.q.FieldByName(_CDMUNICIPIOTERMINO).asstring then
      begin
        cdsmdfedescarregamento.Insert;
        cdsmdfedescarregamento.FieldByName(_cdmunicipio).AsString := q.q.FieldByName(_CDMUNICIPIOTERMINO).asstring;
        cdsmdfedescarregamento.Post;
        cdmunicipio := q.q.FieldByName(_CDMUNICIPIOTERMINO).asstring;
      end;
      cdsmdfecte.Insert;
      cdsmdfecte.FieldByName(_cdcte).AsString := q.q.fieldbyname(_cdcte).AsString;
      cdsmdfecte.Post;
      ctetransportadora := TCTETransportadoraList.Create;
      try
        ctetransportadora.Ler(q.q.FieldByName(_cdcte).AsInteger);
        if ctetransportadora.Count > 0 then
        begin
          if ctetransportadora.Items[0].cdveiculocarreta > 0 then
          begin
            if not cdsmdfeveiculo.Locate(_cdveiculo,  ctetransportadora.Items[0].cdveiculocarreta, []) then
            begin
              cdsmdfeveiculo.Insert;
              cdsmdfeveiculoCDVEICULO.AsInteger := ctetransportadora.Items[0].cdveiculocarreta;
              cdsmdfeveiculo.Post;
            end;
          end;
          if ctetransportadora.Items[0].cdveiculocarreta2 > 0 then
          begin
            if not cdsmdfeveiculo.Locate(_cdveiculo,  ctetransportadora.Items[0].cdveiculocarreta2, []) then
            begin
              cdsmdfeveiculo.Insert;
              cdsmdfeveiculoCDVEICULO.AsInteger := ctetransportadora.Items[0].cdveiculocarreta2;
              cdsmdfeveiculo.Post;
            end;
          end;
        end;
      finally
        FreeAndNil(ctetransportadora);
      end;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

end.
