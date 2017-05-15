unit uEquipamento;

interface

uses
  System.Actions, System.UITypes,
  forms, StdCtrls, Controls, ComCtrls, ToolWin, ExtCtrls, dialogs, Classes,
  sysutils, Mask, ActnList, Menus, ShellAPI, windows,
  Grids, Provider, DBClient, DB, DBCtrls, sqlexpr,
  uNovoTabela, uregistro, uconstantes, ustrings,
  classeusuario, classeconsiste, classeregistrainformacao,
  classecliente, classeproduto, classeempresa, classeretornasql, classeequipamento,
  classeexecutasql, classeaplicacao, classegerar, classeRegistro, classeform,
  classequery,
  dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxTextEdit, cxDBEdit, cxButtonEdit,
  cxGridBandedTableView, cxGridDBBandedTableView, cxPC, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxDBLabel, cxSpinEdit,
  cxCalc, cxCurrencyEdit, cxCheckBox, cxCalendar, cxPCdxBarPopupMenu, cxButtons,
  cxTimeEdit, cxMemo, cxNavigator, dxBarBuiltInMenu, cxListView, Data.FMTBcd;

type
  TfrmEquipamento = class(TForm)
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
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrsprtr3: TdxBarSeparator;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    cds: TClientDataSet;
    dts: TDataSource;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    sdsdetail: TSQLDataSet;
    dtsdetail: TDataSource;
    dts1: TDataSource;
    pgc: TcxPageControl;
    tbsequipamento: TcxTabSheet;
    grd: TcxGrid;
    grdDBBandedTableView1: TcxGridDBBandedTableView;
    grdDBBandedTableView1CDTPEQUIPAMENTO: TcxGridDBBandedColumn;
    grdDBBandedTableView1NMTPEQUIPAMENTO: TcxGridDBBandedColumn;
    grdLevel1: TcxGridLevel;
    tbsCadastro: TcxTabSheet;
    lblmarca: TLabel;
    cbxcdmarca: TcxDBLookupComboBox;
    lblmodelo: TLabel;
    cbxcdmodelo: TcxDBLookupComboBox;
    lblcor: TLabel;
    cbxcdcor: TcxDBLookupComboBox;
    lblcontrato: TLabel;
    cbxcdcontrato: TcxDBLookupComboBox;
    lblproduto: TLabel;
    edtcdproduto: TcxDBButtonEdit;
    edtnuano: TcxDBSpinEdit;
    lblnuano: TLabel;
    cbxcdtpeletricpneum: TcxDBLookupComboBox;
    lbltpeletricpneum: TLabel;
    edtvlequipamento: TcxDBCalcEdit;
    lblvlequipamento: TLabel;
    chkbopertenceempresa: TcxDBCheckBox;
    edtvlhora: TcxDBCalcEdit;
    lblvlhora: TLabel;
    tbsautorizada: TcxTabSheet;
    lblfornecedor: TLabel;
    edtcdfornecedor: TcxDBButtonEdit;
    lblfabricante: TLabel;
    edtcdfabricante: TcxDBButtonEdit;
    edtnunf: TcxDBTextEdit;
    lblnunf: TLabel;
    edtvlcompra: TcxDBCalcEdit;
    lblvlcompra: TLabel;
    edtdtcompra: TcxDBDateEdit;
    lbldtcompra: TLabel;
    edtnucertificadogarantia: TcxDBTextEdit;
    lblnucertificadogarantia: TLabel;
    edtnmrevendedor: TcxDBTextEdit;
    lblnmrevendedor: TLabel;
    edtdtfabricacao: TcxDBDateEdit;
    lbldtfabricacao: TLabel;
    lblcdfabricacao: TLabel;
    edtcdfabricacao: TcxDBTextEdit;
    tbsmedidor: TcxTabSheet;
    grdmedidorDBTableView1: TcxGridDBTableView;
    grdmedidorLevel1: TcxGridLevel;
    grdmedidor: TcxGrid;
    sdsitequipamentomedidor: TSQLDataSet;
    cdsitequipamentomedidor: TClientDataSet;
    dtsitequipamentomedidor: TDataSource;
    grdmedidorDBTableView1DTMEDIDOR: TcxGridDBColumn;
    grdmedidorDBTableView1NUPOSICAOI: TcxGridDBColumn;
    grdmedidorDBTableView1NUPOSICAOF: TcxGridDBColumn;
    chkbomedidor: TcxDBCheckBox;
    lblnuserie: TLabel;
    edtnuserie: TcxDBTextEdit;
    lblnupatrimonio: TLabel;
    edtnupatrimonio: TcxDBTextEdit;
    lblnmproduto: TDBText;
    lblnmfornecedor: TDBText;
    lblnmfabricante: TDBText;
    cdsdetail: TClientDataSet;
    cdsCDEQUIPAMENTO: TIntegerField;
    cdsCDMODELO: TIntegerField;
    cdsCDVSOFTBASICO: TIntegerField;
    cdsCDTPEQUIPAMENTO: TIntegerField;
    cdsCDCONTRATO: TIntegerField;
    cdsCDFABRICANTE: TIntegerField;
    cdsCDMARCA: TIntegerField;
    cdsCDSTEQUIPAMENTO: TIntegerField;
    cdsCDCOR: TIntegerField;
    cdsCDTPELETRICPNEUM: TIntegerField;
    cdsCDPRODUTO: TIntegerField;
    cdsNMEQUIPAMENTO: TStringField;
    cdsNUIDENTCLIENTE: TStringField;
    cdsNUPATRIMONIO: TStringField;
    cdsNUDIAPREVENTIVA: TIntegerField;
    cdsNUNF: TStringField;
    cdsDTCOMPRA: TDateField;
    cdsVLCOMPRA: TFMTBCDField;
    cdsNUHOMOLOGATORIO: TStringField;
    cdsDTHOMOLOGARIO: TDateField;
    cdsNUFABRICACAO: TStringField;
    cdsNUORDSEQ: TIntegerField;
    cdsNUVSOFTBASICO: TStringField;
    cdsNULSOFTBASICO: TStringField;
    cdsNUSERIE: TStringField;
    cdsDSMODELO: TStringField;
    cdsNUANO: TIntegerField;
    cdsNUCERTIFICADOGARANTIA: TStringField;
    cdsDTFABRICACAO: TDateField;
    cdsNMREVENDEDOR: TStringField;
    cdsVLEQUIPAMENTO: TFMTBCDField;
    cdsBOPERTENCEEMPRESA: TStringField;
    cdsIDSETOR: TFloatField;
    cdsNUPOSICAO: TIntegerField;
    cdsDSOBSERVACAO: TBlobField;
    cdsIMFOTO: TBlobField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsBOMEDIDOR: TStringField;
    cdsCDFABRICACAO: TStringField;
    cdsVLHORA: TFMTBCDField;
    cdsNMFABRICANTE: TStringField;
    cdsNMFORNECEDOR: TStringField;
    cdsNMPRODUTO: TStringField;
    cdsdetailCDTPEQUIPAMENTO: TIntegerField;
    cdsdetailCDEQUIPAMENTO: TIntegerField;
    cdsdetailNMTPEQUIPAMENTO: TStringField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailBOAUTORIZADA: TStringField;
    cdsdetailBONUSERIE: TStringField;
    cdsdetailBONUPATRIMONIO: TStringField;
    cdsdetailBONUPATRIMONIOO: TStringField;
    cdsdetailBOCOR: TStringField;
    cdsdetailBONUANO: TStringField;
    cdsdetailBONUSERIEDUPLICADO: TStringField;
    cdsdetailBONUSERIEO: TStringField;
    sdsitequipamentomedidorCDEQUIPAMENTO: TIntegerField;
    sdsitequipamentomedidorDTMEDIDOR: TDateField;
    sdsitequipamentomedidorNUPOSICAOI: TIntegerField;
    sdsitequipamentomedidorNUPOSICAOF: TIntegerField;
    sdsitequipamentomedidorCDUSUARIOI: TIntegerField;
    sdsitequipamentomedidorCDUSUARIOA: TIntegerField;
    sdsitequipamentomedidorCDCOMPUTADORI: TIntegerField;
    sdsitequipamentomedidorCDCOMPUTADORA: TIntegerField;
    sdsitequipamentomedidorTSINCLUSAO: TSQLTimeStampField;
    sdsitequipamentomedidorTSALTERACAO: TSQLTimeStampField;
    cdsitequipamentomedidorCDEQUIPAMENTO: TIntegerField;
    cdsitequipamentomedidorDTMEDIDOR: TDateField;
    cdsitequipamentomedidorNUPOSICAOI: TIntegerField;
    cdsitequipamentomedidorNUPOSICAOF: TIntegerField;
    cdsitequipamentomedidorCDUSUARIOI: TIntegerField;
    cdsitequipamentomedidorCDUSUARIOA: TIntegerField;
    cdsitequipamentomedidorCDCOMPUTADORI: TIntegerField;
    cdsitequipamentomedidorCDCOMPUTADORA: TIntegerField;
    cdsitequipamentomedidorTSINCLUSAO: TSQLTimeStampField;
    cdsitequipamentomedidorTSALTERACAO: TSQLTimeStampField;
    sdsCDEQUIPAMENTO: TIntegerField;
    sdsCDMODELO: TIntegerField;
    sdsCDVSOFTBASICO: TIntegerField;
    sdsCDTPEQUIPAMENTO: TIntegerField;
    sdsCDCONTRATO: TIntegerField;
    sdsCDFABRICANTE: TIntegerField;
    sdsCDMARCA: TIntegerField;
    sdsCDSTEQUIPAMENTO: TIntegerField;
    sdsCDCOR: TIntegerField;
    sdsCDTPELETRICPNEUM: TIntegerField;
    sdsCDPRODUTO: TIntegerField;
    sdsNMEQUIPAMENTO: TStringField;
    sdsNUIDENTCLIENTE: TStringField;
    sdsNUPATRIMONIO: TStringField;
    sdsNUDIAPREVENTIVA: TIntegerField;
    sdsNUNF: TStringField;
    sdsDTCOMPRA: TDateField;
    sdsVLCOMPRA: TFMTBCDField;
    sdsNUHOMOLOGATORIO: TStringField;
    sdsDTHOMOLOGARIO: TDateField;
    sdsNUFABRICACAO: TStringField;
    sdsNUORDSEQ: TIntegerField;
    sdsNUVSOFTBASICO: TStringField;
    sdsNULSOFTBASICO: TStringField;
    sdsNUSERIE: TStringField;
    sdsDSMODELO: TStringField;
    sdsNUANO: TIntegerField;
    sdsNUCERTIFICADOGARANTIA: TStringField;
    sdsDTFABRICACAO: TDateField;
    sdsNMREVENDEDOR: TStringField;
    sdsVLEQUIPAMENTO: TFMTBCDField;
    sdsBOPERTENCEEMPRESA: TStringField;
    sdsIDSETOR: TFloatField;
    sdsNUPOSICAO: TIntegerField;
    sdsDSOBSERVACAO: TBlobField;
    sdsIMFOTO: TBlobField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsBOMEDIDOR: TStringField;
    sdsCDFABRICACAO: TStringField;
    sdsVLHORA: TFMTBCDField;
    sdsNMFABRICANTE: TStringField;
    sdsNMFORNECEDOR: TStringField;
    sdsNMPRODUTO: TStringField;
    sdsdetailCDTPEQUIPAMENTO: TIntegerField;
    sdsdetailCDEQUIPAMENTO: TIntegerField;
    sdsdetailNMTPEQUIPAMENTO: TStringField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailBOAUTORIZADA: TStringField;
    sdsdetailBONUSERIE: TStringField;
    sdsdetailBONUPATRIMONIO: TStringField;
    sdsdetailBONUPATRIMONIOO: TStringField;
    sdsdetailBOCOR: TStringField;
    sdsdetailBONUANO: TStringField;
    sdsdetailBONUSERIEDUPLICADO: TStringField;
    sdsdetailBONUSERIEO: TStringField;
    sdsdetailBOMODELO: TStringField;
    sdsdetailBOMARCA: TStringField;
    sdsdetailBOPRODUTO: TStringField;
    sdsdetailBOELETRICPNEUM: TStringField;
    sdsdetailBOVLEQUIPAMENTO: TStringField;
    sdsdetailBOPERTENCEEMPRESA: TStringField;
    sdsdetailBOVLHORA: TStringField;
    sdsdetailBOMEDIDOR: TStringField;
    sdsdetailBOEQUIPAMENTO: TStringField;
    cdssdsitequipamentomedidor: TDataSetField;
    cdssdsdetail: TDataSetField;
    ckbboapontamentosimultaneo: TcxDBCheckBox;
    sdsBOAPONTAMENTOSIMULTANEO: TStringField;
    cdsBOAPONTAMENTOSIMULTANEO: TStringField;
    sdsCDSETOR: TIntegerField;
    cdsCDSETOR: TIntegerField;
    lblsetor: TLabel;
    cbxcdsetor: TcxDBLookupComboBox;
    sdsQTITEM: TIntegerField;
    sdsQTSALDO: TIntegerField;
    cdsQTITEM: TIntegerField;
    cdsQTSALDO: TIntegerField;
    edtqtitem: TcxDBSpinEdit;
    lblqtitem: TLabel;
    txtqtsaldo: TcxDBLabel;
    lblqtsaldo: TLabel;
    pnl1: TPanel;
    pnl: TcxLabel;
    lbltpequipamento: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    edtnome: TcxDBTextEdit;
    edtcodigo: TcxTextEdit;
    cbxcdtpequipamento: TcxDBLookupComboBox;
    actabrirtpequipamento: TAction;
    lblstequipamento: TLabel;
    cbxcdstequipamento: TcxDBLookupComboBox;
    btninsertmarca: TcxButton;
    btninsertmodelo: TcxButton;
    tbsconsulta: TcxTabSheet;
    actconsultalocacao: TAction;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    btnlocacao: TdxBarLargeButton;
    dtsconsulta: TDataSource;
    grdconsulta: TcxGrid;
    tbvlocacao: TcxGridDBTableView;
    tbvlocacaocdmovbancario: TcxGridDBColumn;
    tbvlocacaodtinicio: TcxGridDBColumn;
    tbvlocacaonmmovimentacao: TcxGridDBColumn;
    tbvlocacaonmconta: TcxGridDBColumn;
    tbvlocacaovllocacao: TcxGridDBColumn;
    grdconsultaLevel1: TcxGridLevel;
    tbvlocacaocdcliente: TcxGridDBColumn;
    tbvlocacaonmcliente: TcxGridDBColumn;
    tbvlocacaodtprevista: TcxGridDBColumn;
    tbvlocacaodtfinal: TcxGridDBColumn;
    sdsHRTEMPOAGENDA: TTimeField;
    cdsHRTEMPOAGENDA: TTimeField;
    edthrtempoagenda: TcxDBTimeEdit;
    lblhrtempoagenda: TLabel;
    tbsjustificativastatus: TcxTabSheet;
    memdsjustivativastatus: TcxDBMemo;
    sdsDSJUSTIFICATIVASTATUS: TBlobField;
    cdsDSJUSTIFICATIVASTATUS: TBlobField;
    lblcliente: TLabel;
    edtcdcliente: TcxDBButtonEdit;
    txtnmcliente: TDBText;
    sdsNMCLIENTE: TStringField;
    cdsNMCLIENTE: TStringField;
    actabrircliente: TAction;
    actabrirproduto: TAction;
    actajustarsaldo: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    actabrirlocacao: TAction;
    tbsdsobservacao: TcxTabSheet;
    mem: TcxDBMemo;
    tbvlocacaoQTITEM: TcxGridDBColumn;
    tbvlocacaoQTSALDO: TcxGridDBColumn;
    tbvlocacaoQTDEVOLUCAO: TcxGridDBColumn;
    sdsQTVELOCIDADE: TFloatField;
    cdsQTVELOCIDADE: TFloatField;
    edtqtvelocidade: TcxDBCalcEdit;
    lblqtvelocidade: TLabel;
    actarquivo: TAction;
    dxBarLargeButton2: TdxBarLargeButton;
    sdsNUPLACA: TStringField;
    cdsNUPLACA: TStringField;
    edtnuplaca: TcxDBTextEdit;
    lblnuplaca: TLabel;
    sdsNUCHASSI: TStringField;
    cdsNUCHASSI: TStringField;
    edtnuchassi: TcxDBTextEdit;
    lblnuchassi: TLabel;
    sdsCDTPEQUIPAMENTO2: TIntegerField;
    cdsCDTPEQUIPAMENTO2: TIntegerField;
    cbxcdtpequipamento2: TcxDBLookupComboBox;
    lblcdtpequipamento2: TLabel;
    sdsCDEMPRESA: TLargeintField;
    sdsCDFORNECEDOR: TLargeintField;
    sdsCDCLIENTE: TLargeintField;
    sdsCDEQUIPAMENTOANTIGO: TIntegerField;
    sdsBOCLIENTEPROPRIETARIOAVISO: TStringField;
    cdsCDEMPRESA: TLargeintField;
    cdsCDFORNECEDOR: TLargeintField;
    cdsCDCLIENTE: TLargeintField;
    cdsCDEQUIPAMENTOANTIGO: TIntegerField;
    cdsBOCLIENTEPROPRIETARIOAVISO: TStringField;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsdetailCDCOMPUTADOR: TIntegerField;
    sdsdetailCDFUNCIONARIO: TIntegerField;
    sdsdetailCDSTORDPRODUCAO: TIntegerField;
    sdsdetailBONUCHASSI: TStringField;
    sdsdetailBONUCHASSIO: TStringField;
    sdsdetailBONUPLACA: TStringField;
    sdsdetailVLPREPARACAO: TFMTBCDField;
    sdsdetailVLOPERACAO: TFMTBCDField;
    sdsdetailBOQTITEM: TStringField;
    sdsdetailBOCLIENTE: TStringField;
    sdsdetailBOJUSTIFICATIVASTATUS: TStringField;
    sdsdetailBOMARCAOBRIGATORIO: TStringField;
    sdsdetailBOMODELOOBRIGATORIO: TStringField;
    sdsdetailBOBAIXAESTOQUE: TStringField;
    sdsdetailBOAPONTAMENTO: TStringField;
    sdsdetailBOBAIXAESTOQUEAUTOMATICO: TStringField;
    sdsdetailBOTEMPERATURA: TStringField;
    sdsdetailBOVIBRACAO: TStringField;
    sdsdetailBOAPONTAMENTOTURMA: TStringField;
    sdsdetailBOPESAGEM: TStringField;
    sdsdetailBOCOMPRIMENTO: TStringField;
    sdsdetailBOREAPROVEITAR: TStringField;
    sdsdetailBOAPONTAMENTOTEMPO: TStringField;
    sdsdetailBOEQUIPAMENTOANTERIOR: TStringField;
    sdsdetailBOQTMISTURA: TStringField;
    sdsdetailBOPSMISTURA: TStringField;
    sdsdetailBOREFERENCIAFORMULACAO: TStringField;
    sdsdetailBOFAIXA: TStringField;
    sdsdetailBOQTPRODUCAO: TStringField;
    sdsdetailBOQTPRODUCAOPREENCHIDA: TStringField;
    sdsdetailBOQTREFUGO: TStringField;
    sdsdetailBOQUOCIENTE: TStringField;
    sdsdetailBODSOBSERVACAO: TStringField;
    sdsdetailBONUESTRUTURAL: TStringField;
    sdsdetailBOMANUALDATAUNICA: TStringField;
    sdsdetailBOAPONTAMENTOROSCA: TStringField;
    sdsdetailBOAPONTAMENTOESTANQUEIDADE: TStringField;
    sdsdetailBOAPONTAMENTOTPESTADO: TStringField;
    sdsdetailTPVIEW: TStringField;
    sdsdetailVLDIAGNOSTICO: TFMTBCDField;
    sdsdetailBONUESTRUTURALOBRIGATORIO: TStringField;
    sdsdetailBOQTPECA: TStringField;
    sdsdetailBOTPEQUIPAMENTO2: TStringField;
    sdsitequipamentomedidorCDEMPRESA: TLargeintField;
    cdsdetailBOMODELO: TStringField;
    cdsdetailBOMARCA: TStringField;
    cdsdetailBOPRODUTO: TStringField;
    cdsdetailBOELETRICPNEUM: TStringField;
    cdsdetailBOVLEQUIPAMENTO: TStringField;
    cdsdetailBOPERTENCEEMPRESA: TStringField;
    cdsdetailBOVLHORA: TStringField;
    cdsdetailBOMEDIDOR: TStringField;
    cdsdetailBOEQUIPAMENTO: TStringField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsdetailCDCOMPUTADOR: TIntegerField;
    cdsdetailCDFUNCIONARIO: TIntegerField;
    cdsdetailCDSTORDPRODUCAO: TIntegerField;
    cdsdetailBONUCHASSI: TStringField;
    cdsdetailBONUCHASSIO: TStringField;
    cdsdetailBONUPLACA: TStringField;
    cdsdetailVLPREPARACAO: TFMTBCDField;
    cdsdetailVLOPERACAO: TFMTBCDField;
    cdsdetailBOQTITEM: TStringField;
    cdsdetailBOCLIENTE: TStringField;
    cdsdetailBOJUSTIFICATIVASTATUS: TStringField;
    cdsdetailBOMARCAOBRIGATORIO: TStringField;
    cdsdetailBOMODELOOBRIGATORIO: TStringField;
    cdsdetailBOBAIXAESTOQUE: TStringField;
    cdsdetailBOAPONTAMENTO: TStringField;
    cdsdetailBOBAIXAESTOQUEAUTOMATICO: TStringField;
    cdsdetailBOTEMPERATURA: TStringField;
    cdsdetailBOVIBRACAO: TStringField;
    cdsdetailBOAPONTAMENTOTURMA: TStringField;
    cdsdetailBOPESAGEM: TStringField;
    cdsdetailBOCOMPRIMENTO: TStringField;
    cdsdetailBOREAPROVEITAR: TStringField;
    cdsdetailBOAPONTAMENTOTEMPO: TStringField;
    cdsdetailBOEQUIPAMENTOANTERIOR: TStringField;
    cdsdetailBOQTMISTURA: TStringField;
    cdsdetailBOPSMISTURA: TStringField;
    cdsdetailBOREFERENCIAFORMULACAO: TStringField;
    cdsdetailBOFAIXA: TStringField;
    cdsdetailBOQTPRODUCAO: TStringField;
    cdsdetailBOQTPRODUCAOPREENCHIDA: TStringField;
    cdsdetailBOQTREFUGO: TStringField;
    cdsdetailBOQUOCIENTE: TStringField;
    cdsdetailBODSOBSERVACAO: TStringField;
    cdsdetailBONUESTRUTURAL: TStringField;
    cdsdetailBOMANUALDATAUNICA: TStringField;
    cdsdetailBOAPONTAMENTOROSCA: TStringField;
    cdsdetailBOAPONTAMENTOESTANQUEIDADE: TStringField;
    cdsdetailBOAPONTAMENTOTPESTADO: TStringField;
    cdsdetailTPVIEW: TStringField;
    cdsdetailVLDIAGNOSTICO: TFMTBCDField;
    cdsdetailBONUESTRUTURALOBRIGATORIO: TStringField;
    cdsdetailBOQTPECA: TStringField;
    cdsdetailBOTPEQUIPAMENTO2: TStringField;
    cdsitequipamentomedidorCDEMPRESA: TLargeintField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure edtcodigoEnter(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cdsCDPRODUTOValidate(Sender: TField);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsCDTPEQUIPAMENTOValidate(Sender: TField);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsCDFORNECEDORValidate(Sender: TField);
    procedure cdsCDFABRICANTEValidate(Sender: TField);
    procedure edtcdfabricanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfabricantePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtpequipamentoEnter(Sender: TObject);
    procedure cbxcdmarcaEnter(Sender: TObject);
    procedure cbxcdmodeloEnter(Sender: TObject);
    procedure cbxcdcorEnter(Sender: TObject);
    procedure cbxcdcontratoEnter(Sender: TObject);
    procedure cbxcdtpeletricpneumEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure lbltpequipamentoDblClick(Sender: TObject);
    procedure actabrirtpequipamentoExecute(Sender: TObject);
    procedure cdsQTITEMValidate(Sender: TField);
    procedure cbxcdstequipamentoEnter(Sender: TObject);
    procedure btninsertmarcaClick(Sender: TObject);
    procedure btninsertmodeloClick(Sender: TObject);
    procedure cdsCDSTEQUIPAMENTOValidate(Sender: TField);
    procedure actconsultalocacaoExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsCDCLIENTEValidate(Sender: TField);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure txtnmclienteDblClick(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure lblnmprodutoDblClick(Sender: TObject);
    procedure actajustarsaldoExecute(Sender: TObject);
    procedure tbvlocacaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirlocacaoExecute(Sender: TObject);
    procedure actarquivoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    qconsulta : TClasseQuery;
    equipamento : TEquipamento;
    produto : tproduto;
    cliente : TCliente;
    qtitem_old : integer;
    procedure setrecord(cdtp:integer);
    procedure SetQuery(tbl:string);
  public  { Public declarations }
    registro : tregistro;
    function  Abrir(codigo:integer):boolean;
  end;

var
  frmEquipamento: TfrmEquipamento;

implementation

uses uDtmMain, uExportarExcel, uLocalizar, uMain,
  ulocalizarproduto, ulocalizarfornecedor, ulocalizarCliente,
  classearquivo, uDBMemo, udlgarquivo;

{$R *.DFM}

const
  tbl      = _equipamento;
  exibe    = 'Equipamento';
  artigoI  = 'o';

function TfrmEquipamento.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmEquipamento.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmEquipamento.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmEquipamento.actSalvarExecute(Sender: TObject);
begin
  if (equipamento.tpequipamento.bojustificativastatus = _s) and
     (not BooleanStatus(_equipamento, cbxcdstequipamento.EditValue, _bogerarinfo)) and (Length(memdsjustivativastatus.Text) < 15) then
  begin
    MessageDlg('Justificativa para a mudança de status '+cbxcdstequipamento.Text+' deve ser preenchida com o tamanho mínimo de 15 caracteres.', mtInformation, [mbOK], 0);
    pgc.Activepage := tbsjustificativastatus;
    abort;
  end;
  if cdsbopertenceempresa.AsString = _S then
  begin
    if edtNUPATRIMONIO.Text = '' then
    begin
      messagedlg('Número do Patrimônio é obrigatório quando equipamento pertence a empresa.', mtinformation, [mbok], 0);
      cdsnupatrimonio.FocusControl;
      abort;
    end;
    if equipamento.ExistePatrimonioRepetidoEmpresa(cdscdequipamento.asstring,  edtNUPATRIMONIO.Text) then
    begin
      messagedlg('Número do Patrimônio é repetido em outro equipamento que pertence a empresa.', mtinformation, [mbok], 0);
      cdsnupatrimonio.FocusControl;
      abort;
    end;
  end;
  registro.Salvar;
end;

procedure TfrmEquipamento.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmEquipamento.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmEquipamento.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmEquipamento.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmEquipamento.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  equipamento := tequipamento.create;
  produto     := tproduto.create;
  cliente     := tcliente.create;
  edtCodigo.SetFocus;
  pnl.caption := exibe;
end;

procedure TfrmEquipamento.tbvlocacaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cd+_locacao then
  begin
    actabrirlocacaoExecute(actabrirlocacao);
  end;
end;

procedure TfrmEquipamento.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmEquipamento.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmEquipamento.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmEquipamento.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmEquipamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmEquipamento.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmEquipamento.edtcodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmEquipamento.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure TfrmEquipamento.edtcodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmEquipamento.edtnomePropertiesChange(Sender: TObject);
begin
  pnl.Caption := exibe+' '+ cdsCDEQUIPAMENTO.asstring + ' - ' + edtNome.Text;
end;

procedure TfrmEquipamento.FormDestroy(Sender: TObject);
begin
  registro.Destroy;
  freeandnil(equipamento);
  produto.free;
  cliente.destroy;
end;

procedure TfrmEquipamento.cdsBeforePost(DataSet: TDataSet);
begin
  if (equipamento.tpequipamento.bonuserie = _s) and (equipamento.tpequipamento.bonuserieo = _s) and (cdsNUSERIE.asstring = '') then
  begin
    messagedlg('Numero de Serie obrigatorio!', mtError, [mbok], 0);
    cdsnuserie.FocusControl;
    abort;
  end;
  if (equipamento.tpequipamento.bonuserieduplicado <> _s) and (codigoexiste(_equipamento, _nuserie, _string, cdsnuserie.asstring)) and (CodigodoCampo(_equipamento, cdsnuserie.asstring, _nuserie) <> cdscdequipamento.asstring) then
  begin
    messagedlg('Número de série duplicado com o equipamento '+CodigodoCampo(_equipamento, cdsnuserie.asstring, _nuserie)+'.', mtinformation, [mbok], 0);
    cdsnuserie.FocusControl;
    abort;
  end;
  if (equipamento.tpequipamento.bonupatrimonio = _s) and (equipamento.tpequipamento.bonupatrimonioo = _s) and (cdsnupatrimonio.asstring = '') then
  begin
    messagedlg('Numero do Patrimônio obrigatorio!', mtError, [mbok], 0);
    cdsnupatrimonio.FocusControl;
    abort;
  end;
  if cdscdtpequipamento.asstring = '' then
  begin
    messagedlg('Tipo de Equipamento obrigatorio!', mtError, [mbok], 0);
    cdscdtpequipamento.FocusControl;
    abort;
  end;
  if cdsnmequipamento.isnull then
  begin
    cdsnmequipamento.asstring := cdsnuserie.asstring;
  end;
  registro.set_update(cds);
end;

procedure TfrmEquipamento.cdsdetailBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsdetail);
end;

procedure TfrmEquipamento.cdsNewRecord(DataSet: TDataSet);
begin
  cdsCDTPEQUIPAMENTO.asinteger := registro.get_tipo_tabela_minumo;
  registro.NewRecord;
  cdsQTITEM.AsInteger  := 1;
  cdsQTSALDO.AsInteger := 1;
  cdsCDSTEQUIPAMENTO.AsInteger := qregistro.Codigo_status_novo(_equipamento);
  setrecord(cdsCDTPEQUIPAMENTO.asinteger);
end;

procedure TfrmEquipamento.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  btninsertmarca.Visible  := (dts.State = dsEdit) or (dts.State = dsInsert);
  btninsertmodelo.Visible := btninsertmarca.Visible;
end;

procedure TfrmEquipamento.cdsdetailNewRecord(DataSet: TDataSet);
begin
   Dataset.Fieldbyname(_cdtpequipamento).AsString := GerarCodigo(_tpequipamento);
end;

procedure TfrmEquipamento.cdsCDPRODUTOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  if (produto.cdproduto <> 0) and (cdsCDPRODUTO.AsInteger <> produto.cdproduto) then
  begin
    cdsCDPRODUTO.AsInteger := produto.cdproduto;
  end;
  if produto.boativar <> _s then
  begin
    MessageDlg('Produto '+sender.asstring+' - '+produto.nmproduto+#13'está desativado.', mtInformation, [mbOK], 0);
    Abort;
  end;
  cdsNMPRODUTO.asstring := produto.nmproduto;
  cdsvlequipamento.AsCurrency := produto.vlvenda;
end;

procedure TfrmEquipamento.setrecord(cdtp: integer);
begin
  equipamento.tpequipamento.Select(cdtp);

  lblcdtpequipamento2.visible := equipamento.tpequipamento.botpequipamento2 = _s;
  cbxcdtpequipamento2.visible := equipamento.tpequipamento.botpequipamento2 = _s;

  lblnuplaca.visible := equipamento.tpequipamento.bonuplaca = _s;
  edtnuplaca.Visible := equipamento.tpequipamento.bonuplaca = _s;

  lblnuchassi.visible := equipamento.tpequipamento.bonuchassi = _s;
  edtnuchassi.Visible := equipamento.tpequipamento.bonuchassi = _s;

  edtcdcliente.Visible := equipamento.tpequipamento.bocliente = _s;
  lblcliente.Visible   := equipamento.tpequipamento.bocliente = _s;
  txtnmcliente.visible := equipamento.tpequipamento.bocliente = _s;

  lblqtitem.Visible  := equipamento.tpequipamento.boqtitem = _s;
  edtqtitem.Visible  := equipamento.tpequipamento.boqtitem = _s;
  txtqtsaldo.Visible := equipamento.tpequipamento.boqtitem = _s;
  lblqtsaldo.Visible := equipamento.tpequipamento.boqtitem = _s;
  actajustarsaldo.Visible := equipamento.tpequipamento.boqtitem = _s;


  tbsjustificativastatus.TabVisible := equipamento.tpequipamento.bojustificativastatus = _s;

  tbsautorizada.TabVisible     := equipamento.tpequipamento.boautorizada = _s;

  lblcor.Visible     := equipamento.tpequipamento.bocor = _s;
  cbxcdcor.Visible   := equipamento.tpequipamento.bocor = _s;

  lblcontrato.Visible     := Empresa.bocontrato;
  cbxcdcontrato.Visible   := Empresa.bocontrato;

  lblnuserie.Visible      := equipamento.tpequipamento.bonuserie = _s;
  edtnuserie.Visible      := equipamento.tpequipamento.bonuserie = _s;

  lblnupatrimonio.visible := equipamento.tpequipamento.bonupatrimonio = _s;
  edtnupatrimonio.Visible := equipamento.tpequipamento.bonupatrimonio = _s;

  edtnuano.Visible    := equipamento.tpequipamento.bonuano = _s;
  lblnuano.visible    := equipamento.tpequipamento.bonuano = _s;

  cbxcdmarca.Visible  := equipamento.tpequipamento.bomarca = _s;
  lblmarca.Visible    := equipamento.tpequipamento.bomarca = _s;
  btninsertmarca.Visible := equipamento.tpequipamento.bomarca = _s;

  cbxcdmodelo.Visible := equipamento.tpequipamento.bomodelo = _s;
  lblmodelo.Visible   := equipamento.tpequipamento.bomodelo = _s;
  btninsertmodelo.Visible := equipamento.tpequipamento.bomodelo = _s;

  lblproduto.Visible   := equipamento.tpequipamento.boproduto = _s;
  edtcdproduto.Visible := equipamento.tpequipamento.boproduto = _s;
  lblnmproduto.Visible := equipamento.tpequipamento.boproduto = _s;

  cbxcdtpeletricpneum.Visible := equipamento.tpequipamento.boeletricpneum = _s;
  lbltpeletricpneum.Visible   := equipamento.tpequipamento.boeletricpneum = _s;

  lblvlequipamento.Visible := equipamento.tpequipamento.bovlequipamento = _s;
  edtvlequipamento.Visible := equipamento.tpequipamento.bovlequipamento = _s;

  chkbopertenceempresa.Visible := equipamento.tpequipamento.bopertenceempresa = _s;

  lblvlhora.Visible := equipamento.tpequipamento.bovlhora = _s;
  edtvlhora.Visible := equipamento.tpequipamento.bovlhora = _s;

  chkbomedidor.Visible := equipamento.tpequipamento.bomedidor = _s;

  tbsequipamento.Visible := equipamento.tpequipamento.boequipamento = _s;

  tbsmedidor.TabVisible := equipamento.tpequipamento.bomedidor = _s;
  tbsequipamento.TabVisible := equipamento.tpequipamento.boequipamento = _s;
end;

procedure TfrmEquipamento.cdsAfterScroll(DataSet: TDataSet);
begin
  setrecord(cdsCDTPEQUIPAMENTO.asinteger);
  qtitem_old := cdsqtitem.asinteger;
  if btnlocacao.Down then
  begin
    setquery(_locacao)
  end;
end;

procedure TfrmEquipamento.cdsCDTPEQUIPAMENTOValidate(Sender: TField);
begin
  setrecord(sender.Asinteger);
end;

procedure TfrmEquipamento.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  if (cds.State <> dsedit) and (cds.State <> dsinsert) then
  begin
    Exit;
  end;
  codigo := localizarproduto;
  if codigo = 0 then
  begin
    Exit;
  end;
  cdsCDPRODUTO.AsInteger := codigo;
end;

procedure TfrmEquipamento.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmEquipamento.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, cds);
end;

procedure TfrmEquipamento.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmEquipamento.cdsCDFORNECEDORValidate(Sender: TField);
begin
  if not CodigoExiste(_fornecedor, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_fornecedor)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsNMFORNECEDOR.asstring := NomedoCodigo(_fornecedor, sender.AsString);
end;

procedure TfrmEquipamento.cdsCDFABRICANTEValidate(Sender: TField);
begin
  if not CodigoExiste(_fabricante, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_fabricante)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  cdsNMfabricante.asstring := NomedoCodigo(_fabricante, sender.AsString);
end;

procedure TfrmEquipamento.edtcdfabricanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfabricantePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmEquipamento.edtcdfabricantePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  codigo : integer;
begin
  codigo := Localizar(_fabricante, true);
  if codigo = 0 then
  begin
    exit;
  end;
  cdsCDfabricante.AsInteger := codigo;
end;

procedure TfrmEquipamento.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmEquipamento.FormCreate(Sender: TObject);
begin
  qconsulta := tclassequery.create;
  dtsconsulta.dataset := qconsulta.q;
  tbsconsulta.tabvisible                    := empresa.bolocacao;
  lblhrtempoagenda.Visible                  := empresa.producao.boagenda;
  edthrtempoagenda.Visible                  := empresa.producao.boagenda;
  ckbboapontamentosimultaneo.Visible        := Empresa.producao.ordproducao.bo;
  lblnuserie.Caption                        := empresa.equipamento.dsnuserie;
  lblnupatrimonio.Caption                   := empresa.equipamento.dsnupatrimonio;
  cbxcdtpequipamento.Properties.ListSource  := abrir_tabela(_tpequipamento);
  cbxcdtpequipamento2.Properties.ListSource := abrir_tabela(_tpequipamento2);
  cbxcdstequipamento.Properties.ListSource  := abrir_tabela(_stequipamento);
  cbxcdmarca.Properties.ListSource          := abrir_tabela(_marca);
  cbxcdsetor.Properties.ListSource          := abrir_tabela(_setor);
  cbxcdmodelo.Properties.ListSource         := abrir_tabela(_modelo);
  cbxcdcor.Properties.ListSource            := abrir_tabela(_cor);
  cbxcdcontrato.Properties.ListSource       := abrir_tabela(_contrato);
  cbxcdtpeletricpneum.Properties.ListSource := abrir_tabela(_tpeletricpneum);
  registro                                  := tregistro.Create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
end;

procedure TfrmEquipamento.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  colorenter(Sender);
  abrir_tabela(_tpequipamento);
end;

procedure TfrmEquipamento.cbxcdmarcaEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_marca);
end;

procedure TfrmEquipamento.cbxcdmodeloEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_modelo);
end;

procedure TfrmEquipamento.cbxcdcorEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_cor);
end;

procedure TfrmEquipamento.cbxcdcontratoEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_contrato);
end;

procedure TfrmEquipamento.cbxcdtpeletricpneumEnter(Sender: TObject);
begin
  colorenter(sender);
  abrir_tabela(_tpeletricpneum);
end;

procedure TfrmEquipamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmEquipamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmEquipamento.lbltpequipamentoDblClick(Sender: TObject);
begin
  actAbrirtpequipamento.onExecute(actAbrirtpequipamento);
end;

procedure TfrmEquipamento.actabrirtpequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmEquipamento.actajustarsaldoExecute(Sender: TObject);
begin
  ExecutaSQL('update equipamento '+
             'set qtsaldo=qtitem - (select sum(qtsaldo) '+
                                   'from locacao l '+
                                   'where l.cdempresa='+cds.FieldByName(_cdempresa).AsString+' '+
                                   'and l.cdequipamento='+cdscdequipamento.asstring+') '+
             'where cdempresa='+cds.FieldByName(_cdempresa).AsString+' and cdequipamento='+cdscdequipamento.asstring);
  Abrir(cdscdequipamento.asinteger);
end;

procedure TfrmEquipamento.cdsQTITEMValidate(Sender: TField);
begin
  if (sender.AsInteger = 0) and (not BooleanStatus(_equipamento, cdsCDSTEQUIPAMENTO.AsString, _bogerarinfo)) then
  begin
    messagedlg('Quantidade de saldo deve ser maior do que 0 (zero) para o status '+cbxcdstequipamento.Text+'.', mtinformation, [mbok], 0);
    sender.FocusControl;
    Abort;
  end;
  cdsQTSALDO.AsInteger := cdsQTSALDO.AsInteger + (sender.AsInteger - qtitem_old);
  qtitem_old           := SENDER.AsInteger;
end;

procedure TfrmEquipamento.cbxcdstequipamentoEnter(Sender: TObject);
begin
  colorenter(Sender);
  abrir_tabela(_st+_equipamento);
end;

procedure TfrmEquipamento.btninsertmarcaClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_marca, 'Marca');
  if codigo <> '' then
  begin
    abrir_tabela(_marca);
    cbxcdmarca.EditValue := codigo;
  end;
end;

procedure TfrmEquipamento.btninsertmodeloClick(Sender: TObject);
var
  codigo : string;
begin
  codigo := InserirRegistroTabela(_modelo, 'Modelo');
  if codigo <> '' then
  begin
    abrir_tabela(_modelo);
    cbxcdmodelo.EditValue := codigo;
  end;
end;

procedure TfrmEquipamento.cdsCDSTEQUIPAMENTOValidate(Sender: TField);
begin
  if (not BooleanStatus(_equipamento, Sender.AsString, _bogerarinfo)) then
  begin
    if cdsQTITEM.AsInteger<>cdsQTSALDO.AsInteger then
    begin
      messagedlg('Quantidade de saldo deve ser igual a quantidade de itens para alterar para este status.', mtinformation, [mbok], 0);
      cdsCDSTEQUIPAMENTO.FocusControl;
      Abort;
    end;
    cdsQTITEM.OnValidate := nil;
    cdsQTITEM.AsInteger  := 0;
    cdsQTSALDO.AsInteger := 0;
    cdsQTITEM.OnValidate := cdsQTITEMValidate;
  end;
end;

procedure TfrmEquipamento.actconsultalocacaoExecute(Sender: TObject);
begin
  SetQuery(_locacao);
end;

procedure TfrmEquipamento.SetQuery(tbl: string);
var
  sql : string;
begin
  qconsulta.q.Close;
  if cdsCDequipamento.asstring = '' then
  begin
    exit;
  end;
  if tbl = _locacao then
  begin
    sql := 'SELECT l.cdlocacao'+
                 ',l.DTinicio'+
                 ',l.DTfinal'+
                 ',l.DTprevista'+
                 ',l.qtitem'+
                 ',l.qtsaldo'+
                 ',(select sum(qtitem) from locacaodevolucao ld where ld.cdempresa=l.cdempresa and ld.cdlocacao=l.cdlocacao) qtdevolucao'+
                 ',t.nmtplocacao'+
                 ',s.nmstlocacao'+
                 ',s.nucor'+
                 ',l.vllocacao'+
                 ',c.cdcliente'+
                 ',c.nmcliente '+
           'FROM locacao l '+
           'LEFT JOIN stlocacao S ON S.CDSTlocacao=l.cdstlocacao '+
           'LEFT JOIN tplocacao t on t.cdtplocacao=l.cdtplocacao and t.cdempresa=l.cdempresa '+
           'LEFT JOIN CLIENTE C ON C.CDCLIENTE=l.cdcliente and c.cdempresa=l.cdempresa '+
           'where l.cdempresa='+cds.FieldByName(_cdempresa).AsString+' and l.cdequipamento='+cdsCDequipamento.AsString;
    grdconsultaLevel1.GridView := tbvlocacao;
  end;
  qconsulta.q.sql.text := sql;
  qconsulta.q.Open;
end;

procedure TfrmEquipamento.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmEquipamento.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmEquipamento.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdclientePropertiesButtonClick(self, cds);
end;

procedure TfrmEquipamento.cdsCDCLIENTEValidate(Sender: TField);
begin
  if Sender.AsString = '' then
  begin
    cdsNMCLIENTE.Clear;
    Exit;
  end;
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
  cdsNMCLIENTE.AsString := cliente.nmcliente;
end;

procedure TfrmEquipamento.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmEquipamento.txtnmclienteDblClick(Sender: TObject);
begin
  actabrirclienteExecute(actabrircliente);
end;

procedure TfrmEquipamento.actabrirlocacaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, qconsulta.q);
end;

procedure TfrmEquipamento.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender),cds,cds);
end;

procedure TfrmEquipamento.lblnmprodutoDblClick(Sender: TObject);
begin
  actabrirprodutoExecute(actabrirproduto);
end;

procedure TfrmEquipamento.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(tbl, cds.fieldbyname(_cdequipamento).AsString);
end;

end.
