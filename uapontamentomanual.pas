unit uapontamentomanual;

interface

uses
  System.Actions, System.UITypes,System.Variants,
  forms, Windows, dialogs, graphics, Mask, Buttons, Controls, ToolWin, ExtCtrls, types,
  sysutils, StdCtrls, ComCtrls, Spin, Classes, ActnList, Menus,
  FMTBcd, DBClient, Provider, DBCtrls, DB, Grids, sqlexpr,
  uexportarexcel, udatahora, uregistro, uconstantes, uMenuRelatorio,
  classegerar, classeregistro, classeform, ClasseApontamentoManual,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxGroupBox, cxButtons,
  dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxPC, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxSpinEdit, cxDBEdit, cxMaskEdit, cxCalendar, cxTextEdit,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxTimeEdit, cxButtonEdit, cxCalc, cxCurrencyEdit, cxPCdxBarPopupMenu,
  cxCheckBox, cxNavigator, dxBarBuiltInMenu, cxDBLabel, cxMemo,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TfrmApontamentoManual = class(TForm)
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
    sdsdetail: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    dts1: TDataSource;
    cdsdetail: TClientDataSet;
    dtsdetail: TDataSource;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    pnl: TcxLabel;
    pnltop: TPanel;
    Label1: TLabel;
    lblcdfuncionario: TLabel;
    lbldtemissao: TLabel;
    edtcodigo: TcxTextEdit;
    cbxcdfuncionario: TcxDBLookupComboBox;
    edtdtemissao: TcxDBDateEdit;
    lblcdtpapontamentomanual: TLabel;
    cbxcdtpapontamentomanual: TcxDBLookupComboBox;
    sdsCDAPONTAMENTOMANUAL: TIntegerField;
    sdsCDTPAPONTAMENTOMANUAL: TIntegerField;
    sdsCDFUNCIONARIO: TIntegerField;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    sdsDTEMISSAO: TDateField;
    sdsdetailCDAPONTAMENTO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDSTAPONTAMENTO: TIntegerField;
    sdsdetailCDITORDPRODUCAORECURSO: TIntegerField;
    sdsdetailCDFUNCIONARIO: TIntegerField;
    sdsdetailCDEQUIPAMENTO: TIntegerField;
    sdsdetailCDORDPRODUCAO: TIntegerField;
    sdsdetailCDTPHORAEXTRA: TIntegerField;
    sdsdetailCDTPPARADA: TIntegerField;
    sdsdetailCDAPONTAMENTOMANUAL: TIntegerField;
    sdsdetailCDFORMULACAO: TIntegerField;
    sdsdetailCDFORMULACAO1: TIntegerField;
    sdsdetailCDFORMULACAO2: TIntegerField;
    sdsdetailTSFIM: TSQLTimeStampField;
    sdsdetailTSINICIO: TSQLTimeStampField;
    sdsdetailHRINICIO: TTimeField;
    sdsdetailHRFIM: TTimeField;
    sdsdetailHRDURACAO: TTimeField;
    sdsdetailQTDURACAO: TFloatField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailDTEMISSAO: TDateField;
    sdsdetailQTPRODUCAO: TFloatField;
    sdsdetailQTREFUGO: TFloatField;
    sdsdetailDSOBSERVACAO: TBlobField;
    sdsdetailVLUNITARIO: TFMTBCDField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailQTRETRABALHO: TFloatField;
    sdsdetailCDEQUIPAMENTOAPONTAMENTO: TIntegerField;
    sdsdetailQTVIBRACAO: TFloatField;
    sdsdetailQTTEMPERATURA: TFloatField;
    sdsdetailCDPESAGEM: TStringField;
    sdsdetailBOREAPROVEITAR: TStringField;
    sdsdetailQTCOMPRIMENTO: TStringField;
    sdsdetailQTMISTURA: TFloatField;
    sdsdetailPSMISTURA: TFloatField;
    sdsdetailNUESTRUTURAL: TStringField;
    sdsdetailNUHORIMETROINICIAL: TIntegerField;
    sdsdetailNUHORIMETROFINAL: TIntegerField;
    sdsdetailHRINICIALHORIMETRO: TSQLTimeStampField;
    sdsdetailHRFINALHORIMETRO: TSQLTimeStampField;
    sdsdetailHRDURACAOHORIMETRO: TTimeField;
    sdsdetailQTDURACAOHORIMETRO: TFloatField;
    sdsdetailHROCIOSA: TTimeField;
    sdsdetailQTOCIOSA: TFloatField;
    sdsdetailQTPESO: TFloatField;
    sdsdetailQTAGUA: TFloatField;
    sdsdetailQTSOBRA: TFloatField;
    sdsdetailNUFORMA: TStringField;
    sdsdetailCDPESAGEM1: TStringField;
    sdsdetailCDPESAGEM2: TStringField;
    sdsdetailQTPESO1: TFloatField;
    sdsdetailQTPESO2: TFloatField;
    sdsdetailQTAGUA1: TFloatField;
    sdsdetailQTAGUA2: TFloatField;
    sdsdetailQTSOBRA1: TFloatField;
    sdsdetailQTSOBRA2: TFloatField;
    sdsdetailQTAPROVEITAMENTO: TFloatField;
    sdsdetailBOROSCA: TStringField;
    sdsdetailTPESTADO: TStringField;
    sdsdetailBOESTANQUEIDADE: TStringField;
    sdsdetailBOACABAMENTO: TStringField;
    sdsdetailBOPINTURA: TStringField;
    sdsdetailBOEMBALAGEM: TStringField;
    sdsdetailBOIDENTIFICACAO: TStringField;
    sdsdetailBOEMPENO: TStringField;
    sdsdetailBOREBARBA: TStringField;
    sdsdetailBOPONTACHUMBADOR: TStringField;
    sdsdetailBOREFRATARIODANIFICADO: TStringField;
    sdsdetailBODIMENSIONAL: TStringField;
    sdsdetailBOROSCAPORCAPARAFUSO: TStringField;
    sdsdetailBOSOBREPOSICAOMATERIAL: TStringField;
    sdsdetailBORESISTENCIAMECANICA: TStringField;
    sdsdetailBOBROCA: TStringField;
    sdsdetailBOTRINCA: TStringField;
    sdsdetailBOBOLHA: TStringField;
    sdsdetailBOEXSUDACAO: TStringField;
    sdsdetailBOCENTRALIZADOR: TStringField;
    sdsdetailBOFUROSAIDA: TStringField;
    sdsdetailBOLINHAAR: TStringField;
    sdsdetailBOFLANGE: TStringField;
    sdsdetailBOAVARIATRANSPORTE: TStringField;
    sdsdetailCDREAVALIACAO: TStringField;
    sdsdetailBOAPROVADO: TStringField;
    sdsdetailCDCORRECAO: TStringField;
    sdsdetailCDREGIAOAFETADA: TStringField;
    sdsdetailBOCORRECAOEFICAZ: TStringField;
    sdsdetailDSOBSERVACAO2: TBlobField;
    sdsdetailQTPECA: TFloatField;
    cdsCDAPONTAMENTOMANUAL: TIntegerField;
    cdsCDTPAPONTAMENTOMANUAL: TIntegerField;
    cdsCDFUNCIONARIO: TIntegerField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    cdsDTEMISSAO: TDateField;
    cdssdsdetail: TDataSetField;
    cdsdetailCDAPONTAMENTO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDSTAPONTAMENTO: TIntegerField;
    cdsdetailCDITORDPRODUCAORECURSO: TIntegerField;
    cdsdetailCDFUNCIONARIO: TIntegerField;
    cdsdetailCDEQUIPAMENTO: TIntegerField;
    cdsdetailCDORDPRODUCAO: TIntegerField;
    cdsdetailCDTPHORAEXTRA: TIntegerField;
    cdsdetailCDTPPARADA: TIntegerField;
    cdsdetailCDAPONTAMENTOMANUAL: TIntegerField;
    cdsdetailCDFORMULACAO: TIntegerField;
    cdsdetailCDFORMULACAO1: TIntegerField;
    cdsdetailCDFORMULACAO2: TIntegerField;
    cdsdetailTSFIM: TSQLTimeStampField;
    cdsdetailTSINICIO: TSQLTimeStampField;
    cdsdetailHRINICIO: TTimeField;
    cdsdetailHRFIM: TTimeField;
    cdsdetailHRDURACAO: TTimeField;
    cdsdetailQTDURACAO: TFloatField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailDTEMISSAO: TDateField;
    cdsdetailQTPRODUCAO: TFloatField;
    cdsdetailQTREFUGO: TFloatField;
    cdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailVLUNITARIO: TFMTBCDField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailQTRETRABALHO: TFloatField;
    cdsdetailCDEQUIPAMENTOAPONTAMENTO: TIntegerField;
    cdsdetailQTVIBRACAO: TFloatField;
    cdsdetailQTTEMPERATURA: TFloatField;
    cdsdetailCDPESAGEM: TStringField;
    cdsdetailBOREAPROVEITAR: TStringField;
    cdsdetailQTCOMPRIMENTO: TStringField;
    cdsdetailQTMISTURA: TFloatField;
    cdsdetailPSMISTURA: TFloatField;
    cdsdetailNUESTRUTURAL: TStringField;
    cdsdetailNUHORIMETROINICIAL: TIntegerField;
    cdsdetailNUHORIMETROFINAL: TIntegerField;
    cdsdetailHRINICIALHORIMETRO: TSQLTimeStampField;
    cdsdetailHRFINALHORIMETRO: TSQLTimeStampField;
    cdsdetailHRDURACAOHORIMETRO: TTimeField;
    cdsdetailQTDURACAOHORIMETRO: TFloatField;
    cdsdetailHROCIOSA: TTimeField;
    cdsdetailQTOCIOSA: TFloatField;
    cdsdetailQTPESO: TFloatField;
    cdsdetailQTAGUA: TFloatField;
    cdsdetailQTSOBRA: TFloatField;
    cdsdetailNUFORMA: TStringField;
    cdsdetailCDPESAGEM1: TStringField;
    cdsdetailCDPESAGEM2: TStringField;
    cdsdetailQTPESO1: TFloatField;
    cdsdetailQTPESO2: TFloatField;
    cdsdetailQTAGUA1: TFloatField;
    cdsdetailQTAGUA2: TFloatField;
    cdsdetailQTSOBRA1: TFloatField;
    cdsdetailQTSOBRA2: TFloatField;
    cdsdetailQTAPROVEITAMENTO: TFloatField;
    cdsdetailBOROSCA: TStringField;
    cdsdetailTPESTADO: TStringField;
    cdsdetailBOESTANQUEIDADE: TStringField;
    cdsdetailBOACABAMENTO: TStringField;
    cdsdetailBOPINTURA: TStringField;
    cdsdetailBOEMBALAGEM: TStringField;
    cdsdetailBOIDENTIFICACAO: TStringField;
    cdsdetailBOEMPENO: TStringField;
    cdsdetailBOREBARBA: TStringField;
    cdsdetailBOPONTACHUMBADOR: TStringField;
    cdsdetailBOREFRATARIODANIFICADO: TStringField;
    cdsdetailBODIMENSIONAL: TStringField;
    cdsdetailBOROSCAPORCAPARAFUSO: TStringField;
    cdsdetailBOSOBREPOSICAOMATERIAL: TStringField;
    cdsdetailBORESISTENCIAMECANICA: TStringField;
    cdsdetailBOBROCA: TStringField;
    cdsdetailBOTRINCA: TStringField;
    cdsdetailBOBOLHA: TStringField;
    cdsdetailBOEXSUDACAO: TStringField;
    cdsdetailBOCENTRALIZADOR: TStringField;
    cdsdetailBOFUROSAIDA: TStringField;
    cdsdetailBOLINHAAR: TStringField;
    cdsdetailBOFLANGE: TStringField;
    cdsdetailBOAVARIATRANSPORTE: TStringField;
    cdsdetailCDREAVALIACAO: TStringField;
    cdsdetailBOAPROVADO: TStringField;
    cdsdetailCDCORRECAO: TStringField;
    cdsdetailCDREGIAOAFETADA: TStringField;
    cdsdetailBOCORRECAOEFICAZ: TStringField;
    cdsdetailDSOBSERVACAO2: TBlobField;
    cdsdetailQTPECA: TFloatField;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvHRINICIO: TcxGridDBColumn;
    tbvCDDIGITADO: TcxGridDBColumn;
    tbvNUESTRUTURAL: TcxGridDBColumn;
    tbvBOESTANQUEIDADE: TcxGridDBColumn;
    tbvTPESTADO: TcxGridDBColumn;
    tbvCDFUNCIONARIO: TcxGridDBColumn;
    tbvBOROSCA: TcxGridDBColumn;
    tbvDSOBSERVACAO: TcxGridDBColumn;
    tbvHRFIM: TcxGridDBColumn;
    tbvCDORDPRODUCAO: TcxGridDBColumn;
    tbvlanca: TcxGridDBBandedTableView;
    tbvlancaCDDIGITADO: TcxGridDBBandedColumn;
    tbvlancaNUESTRUTURAL: TcxGridDBBandedColumn;
    tbvlancaCDEQUIPAMENTO: TcxGridDBBandedColumn;
    tbvlancaHRINICIO: TcxGridDBBandedColumn;
    tbvlancaQTTEMPERATURA: TcxGridDBBandedColumn;
    tbvlancaCDORDPRODUCAO: TcxGridDBBandedColumn;
    tbvlancaQTAPROVEITAMENTO: TcxGridDBBandedColumn;
    tbvlancaQTPESO: TcxGridDBBandedColumn;
    tbvlancaQTAGUA: TcxGridDBBandedColumn;
    tbvlancaCDFORMULACAO1: TcxGridDBBandedColumn;
    tbvlancaCDPESAGEM1: TcxGridDBBandedColumn;
    tbvlancaQTPESO1: TcxGridDBBandedColumn;
    tbvlancaQTAGUA1: TcxGridDBBandedColumn;
    tbvlancaQTSOBRA1: TcxGridDBBandedColumn;
    tbvlancaCDPESAGEM2: TcxGridDBBandedColumn;
    tbvlancaCDFORMULACAO2: TcxGridDBBandedColumn;
    tbvlancaQTPESO2: TcxGridDBBandedColumn;
    tbvlancaQTAGUA2: TcxGridDBBandedColumn;
    tbvlancaQTSOBRA2: TcxGridDBBandedColumn;
    tbvlancaHRFIM: TcxGridDBBandedColumn;
    tbvmoldagem: TcxGridDBTableView;
    tbvmoldagemQTPRODUCAO: TcxGridDBColumn;
    tbvmoldagemCDDIGITADO: TcxGridDBColumn;
    tbvmoldagemNUESTRUTURAL: TcxGridDBColumn;
    tbvmoldagemHRINICIO: TcxGridDBColumn;
    tbvmoldagemQTTEMPERATURA: TcxGridDBColumn;
    tbvmoldagemCDFORMULACAO: TcxGridDBColumn;
    tbvmoldagemCDPESAGEM: TcxGridDBColumn;
    tbvmoldagemQTPESO: TcxGridDBColumn;
    tbvmoldagemQTAGUA: TcxGridDBColumn;
    tbvmoldagemHRFIM: TcxGridDBColumn;
    tbvmoldagemQTSOBRA: TcxGridDBColumn;
    tbvmoldagemDSOBSERVACAO: TcxGridDBColumn;
    tbvmoldagemCDORDPRODUCAO: TcxGridDBColumn;
    tbvdesmoldagem: TcxGridDBBandedTableView;
    tbvdesmoldagemCDDIGITADO: TcxGridDBBandedColumn;
    tbvdesmoldagemCDORDPRODUCAO: TcxGridDBBandedColumn;
    tbvdesmoldagemNUESTRUTURAL: TcxGridDBBandedColumn;
    tbvdesmoldagemHRINICIO: TcxGridDBBandedColumn;
    tbvdesmoldagemBOAPROVADO: TcxGridDBBandedColumn;
    tbvdesmoldagemDSOBSERVACAO: TcxGridDBBandedColumn;
    tbvdesmoldagembosobreposicaomaterial: TcxGridDBBandedColumn;
    tbvdesmoldagemcdregiaoafetada: TcxGridDBBandedColumn;
    tbvdesmoldagemcdcorrecao: TcxGridDBBandedColumn;
    tbvdesmoldagembocorrecaoeficaz: TcxGridDBBandedColumn;
    tbvdesmoldagemDSOBSERVACAO2: TcxGridDBBandedColumn;
    tbvdesmoldagemboresistenciamecanica: TcxGridDBBandedColumn;
    tbvdesmoldagembobroca: TcxGridDBBandedColumn;
    tbvdesmoldagembotrinca: TcxGridDBBandedColumn;
    tbvdesmoldagembobolha: TcxGridDBBandedColumn;
    tbvdesmoldagemborebarba: TcxGridDBBandedColumn;
    tbvdesmoldagembopontachumbador: TcxGridDBBandedColumn;
    tbvdesmoldagemboacabamento: TcxGridDBBandedColumn;
    tbvdesmoldagembodimensional: TcxGridDBBandedColumn;
    tbvdesmoldagemboexsudacao: TcxGridDBBandedColumn;
    tbvexpedicao: TcxGridDBBandedTableView;
    tbvexpedicaoCDDIGITADO: TcxGridDBBandedColumn;
    tbvexpedicaoCDORDPRODUCAO: TcxGridDBBandedColumn;
    tbvexpedicaonuestrutural: TcxGridDBBandedColumn;
    tbvexpedicaoBOAPROVADO: TcxGridDBBandedColumn;
    tbvexpedicaoboacabamento: TcxGridDBBandedColumn;
    tbvexpedicaobopintura: TcxGridDBBandedColumn;
    tbvexpedicaoboembalagem: TcxGridDBBandedColumn;
    tbvexpedicaoboidentificacao: TcxGridDBBandedColumn;
    tbvexpedicaoboempeno: TcxGridDBBandedColumn;
    tbvexpedicaoBOREBARBA: TcxGridDBBandedColumn;
    tbvexpedicaobopontachumbador: TcxGridDBBandedColumn;
    tbvexpedicaoborefratariodanificado: TcxGridDBBandedColumn;
    tbvexpedicaobodimensional: TcxGridDBBandedColumn;
    tbvexpedicaoboroscaporcaparafuso: TcxGridDBBandedColumn;
    tbvexpedicaocdcorrecao: TcxGridDBBandedColumn;
    tbvexpedicaoCDFUNCIONARIO: TcxGridDBBandedColumn;
    tbvexpedicaocdreavaliacao: TcxGridDBBandedColumn;
    tbvexpedicaodsobservacao: TcxGridDBBandedColumn;
    tbvenformagem: TcxGridDBBandedTableView;
    tbvenformagemcddigitado: TcxGridDBBandedColumn;
    tbvenformagemCDORDPRODUCAO: TcxGridDBBandedColumn;
    tbvenformagemNUESTRUTURAL: TcxGridDBBandedColumn;
    tbvenformagemHRINICIO: TcxGridDBBandedColumn;
    tbvenformagemBODIMENSIONAL: TcxGridDBBandedColumn;
    tbvenformagembocentralizador: TcxGridDBBandedColumn;
    tbvenformagemBOEMPENO: TcxGridDBBandedColumn;
    tbvenformagembofurosaida: TcxGridDBBandedColumn;
    tbvenformagemBOLINHAAR: TcxGridDBBandedColumn;
    tbvenformagemBOFLANGE: TcxGridDBBandedColumn;
    tbvenformagemboavariatransporte: TcxGridDBBandedColumn;
    tbvenformagemBOIDENTIFICACAO: TcxGridDBBandedColumn;
    tbvenformagemboroscaporcaparafuso: TcxGridDBBandedColumn;
    tbvenformagemColumn13: TcxGridDBBandedColumn;
    tbvenformagemBOAPROVADO: TcxGridDBBandedColumn;
    tbvenformagemDSOBSERVACAO2: TcxGridDBBandedColumn;
    tbvenformagemHRRETORNO: TcxGridDBBandedColumn;
    tbvenformagemcdreavaliacao: TcxGridDBBandedColumn;
    tbvenformagemDSOBSERVACAO: TcxGridDBBandedColumn;
    lvl: TcxGridLevel;
    sdsCDTPEQUIPAMENTO: TIntegerField;
    cdsCDTPEQUIPAMENTO: TIntegerField;
    lbltpequipamento: TLabel;
    cbxcdtpequipamento: TcxDBLookupComboBox;
    sdsdetailCDPRODUTO: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    sdsdetailCDDIGITADO: TStringField;
    cdsdetailCDDIGITADO: TStringField;
    cdsDTLANCAMENTO: TDateField;
    sdsDTLANCAMENTO: TDateField;
    lbldtlancamento: TLabel;
    edtdtlancamento: TcxDBDateEdit;
    tbvexpedicaoDSOUTROS: TcxGridDBBandedColumn;
    sdsdetailDSOUTROS: TStringField;
    cdsdetailDSOUTROS: TStringField;
    sdsDTTERMINO: TDateField;
    sdsHRTERMINO: TTimeField;
    sdsHRINICIO: TTimeField;
    cdsDTTERMINO: TDateField;
    cdsHRTERMINO: TTimeField;
    cdsHRINICIO: TTimeField;
    gbxdatahora: TcxGroupBox;
    edthrinicio: TcxDBTimeEdit;
    lblhrinicio: TLabel;
    lbldttermino: TLabel;
    edtdttermino: TcxDBDateEdit;
    lblhrtermino: TLabel;
    edthrtermino: TcxDBTimeEdit;
    actabrirtpapontamentomanual: TAction;
    actabrirfuncionario: TAction;
    actabrirtpequipamento: TAction;
    tbvHRRETRABALHO: TcxGridDBColumn;
    tbvNUCURVA: TcxGridDBColumn;
    sdsdetailHRRETRABALHO: TTimeField;
    cdsdetailHRRETRABALHO: TTimeField;
    tbvexpedicaoHRRETRABALHO: TcxGridDBBandedColumn;
    sdsdetailHRRETORNO: TTimeField;
    cdsdetailHRRETORNO: TTimeField;
    sdsdetailNUCURVA: TStringField;
    cdsdetailNUCURVA: TStringField;
    actaplicarcodigoordproducao: TAction;
    dxBarButton1: TdxBarButton;
    actabrirordproducao: TAction;
    sdsCDSTAPONTAMENTOMANUAL: TIntegerField;
    cdsCDSTAPONTAMENTOMANUAL: TIntegerField;
    actremovercodigoordproducao: TAction;
    dxBarButton2: TdxBarButton;
    actinsertgride: TAction;
    sdsCDEMPRESA: TLargeintField;
    sdsdetailCDEMPRESA: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    tbvNUESTUTURALANTIGO: TcxGridDBColumn;
    sdsdetailNUESTRUTURALANTIGO: TStringField;
    cdsdetailNUESTRUTURALANTIGO: TStringField;
    sdsdetailCDFUNCIONARIOCONFERIDO: TIntegerField;
    cdsdetailCDFUNCIONARIOCONFERIDO: TIntegerField;
    tbvexpedicaoCDFUNCIONARIOCONFERIDO: TcxGridDBBandedColumn;
    cbxCDFUNCIONARIORESPONSAVEL: TcxDBLookupComboBox;
    lblFUNCIONARIORESPONSAVEL: TLabel;
    sdsCDFUNCIONARIORESPONSAVEL: TIntegerField;
    cdsCDFUNCIONARIORESPONSAVEL: TIntegerField;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cdsdetailBeforePost(DataSet: TDataSet);
    procedure actEditarExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dtsStateChange(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure actfecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actopcoesExecute(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cbxcdtpapontamentomanualEnter(Sender: TObject);
    procedure cbxcdtpequipamentoEnter(Sender: TObject);
    procedure cdsdetailCDDIGITADOValidate(Sender: TField);
    procedure cdsdetailCDFUNCIONARIOValidate(Sender: TField);
    procedure cdsdetailHRINICIOValidate(Sender: TField);
    procedure cdsdetailNewRecord(DataSet: TDataSet);
    procedure cbxcdtpapontamentomanualPropertiesEditValueChanged(Sender: TObject);
    procedure lblcdtpapontamentomanualDblClick(Sender: TObject);
    procedure actabrirtpapontamentomanualExecute(Sender: TObject);
    procedure actabrirfuncionarioExecute(Sender: TObject);
    procedure lblcdfuncionarioDblClick(Sender: TObject);
    procedure lbltpequipamentoDblClick(Sender: TObject);
    procedure actabrirtpequipamentoExecute(Sender: TObject);
    procedure actaplicarcodigoordproducaoExecute(Sender: TObject);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actremovercodigoordproducaoExecute(Sender: TObject);
    procedure tbvdesmoldagemCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvenformagemCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvexpedicaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvlancaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvmoldagemCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actinsertgrideExecute(Sender: TObject);
    procedure tbvHRFIMPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private      { Private declarations }
    tbl : string;
    exibe : string;
    apontamentomanual : TApontamentoManual;
    procedure abrirtabela;
    procedure setrecord(codigo:integer);
    procedure SetGride;
    procedure SetDetailDataHora;
    procedure SetStapontamentomanualTela;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:Integer):boolean;
  end;

var
  frmApontamentoManual: TfrmApontamentoManual;

implementation

uses uDtmMain,
  uMain,
  uProgressBar;

{$R *.DFM}

function TfrmApontamentoManual.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmApontamentoManual.SetStapontamentomanualTela;
begin
  pnl.Style.Font.Color                := apontamentomanual.stapontamentomanual.nucor;
  actEditar.Enabled                   := apontamentomanual.stapontamentomanual.boexcluir = _s;
  actExcluir.Enabled                  := apontamentomanual.stapontamentomanual.boalterar = _s;
  actaplicarcodigoordproducao.Enabled := apontamentomanual.stapontamentomanual.bogerarinfo = _s;
  actremovercodigoordproducao.Enabled := apontamentomanual.stapontamentomanual.bogerarinfo <> _s;
end;

procedure TfrmApontamentoManual.SetDetailDataHora;
begin
  cdsdetail.DisableControls;
  try
    cdsdetail.First;
    while not cdsdetail.eof do
    begin
      if not cdsHRTERMINO.IsNull then
      begin
        cdsdetail.Edit;
        cdsdetailHRFIM.AsDateTime := cds.FieldByName(_hrtermino).AsDateTime;
        cdsdetail.post;
      end;
      if not cds.FieldByName(_dttermino).IsNull then
      begin
        cdsdetail.Edit;
        cdsdetailDTEMISSAO.AsDateTime := cds.FieldByName(_dttermino).AsDateTime;
        cdsdetail.post;
      end;
      if cdsdetailHRFIM.IsNull then
      begin
        cdsdetail.Edit;
        cdsdetailHRFIM.AsDateTime := cdsdetailHRINICIO.AsDateTime;
        cdsdetail.post;
      end;
      cdsdetail.Next;
    end;
  finally
    cdsdetail.EnableControls;
  end;
end;

procedure TfrmApontamentoManual.SetGride;
begin
  if apontamentomanual.tpapontamentomanual.tpview = 'LANCA' then
  begin
    lvl.GridView := tbvlanca;
  end
  else if apontamentomanual.tpapontamentomanual.tpview = 'MOLDAGEM' then
  begin
    lvl.GridView := tbvmoldagem;
  end
  else if apontamentomanual.tpapontamentomanual.tpview = 'DESMOLDAGEM' then
  begin
    lvl.GridView := tbvdesmoldagem;
  end
  else if apontamentomanual.tpapontamentomanual.tpview = 'EXPEDICAO' then
  begin
    lvl.GridView := tbvexpedicao;
    tbvexpedicaoHRRETRABALHO.visible := apontamentomanual.tpapontamentomanual.boHRRETRABALHO = _s;
  end
  else if apontamentomanual.tpapontamentomanual.tpview = 'ENFORMAGEM' then
    lvl.GridView := tbvenformagem
  else
  begin
    tbvBOESTANQUEIDADE.visible := apontamentomanual.tpapontamentomanual.boestanqueidade = _s;
    tbvTPESTADO.visible        := apontamentomanual.tpapontamentomanual.botpestado = _s;
    tbvBOROSCA.visible         := apontamentomanual.tpapontamentomanual.borosca = _s;
    tbvDSOBSERVACAO.visible    := apontamentomanual.tpapontamentomanual.bodsobservacao = _s;
    tbvcdfuncionario.visible   := apontamentomanual.tpapontamentomanual.bofuncionario = _s;
    tbvHRRETRABALHO.visible    := apontamentomanual.tpapontamentomanual.boHRRETRABALHO = _s;
    tbvnucurva.visible         := apontamentomanual.tpapontamentomanual.bonucurva = _s;
    lvl.GridView               := tbv;
  end;
end;

procedure TfrmApontamentoManual.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmApontamentoManual.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmApontamentoManual.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmApontamentoManual.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmApontamentoManual.FormShow(Sender: TObject);
begin
  registro.set_readonly_dados(self, true);
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmApontamentoManual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmApontamentoManual.FormDestroy(Sender: TObject);
begin
  FreeAndNil(registro);
  freeandnil(apontamentomanual);
end;

procedure TfrmApontamentoManual.cdsdetailBeforePost(DataSet: TDataSet);
var
  i : integer;
  boapagai, boapagaf : boolean;
begin
  if DataSet.FieldByName(_cdapontamento).isnull then
  begin
    DataSet.FieldByName(_cdapontamento).AsString := GerarCodigo(_apontamento);
  end;
  i := apontamentomanual.apontamento.ObterIndice(_cdapontamento, dataset.fieldbyname(_cdapontamento).asinteger);
  if i = -1 then
  begin
    apontamentomanual.apontamento.new;
    i := apontamentomanual.apontamento.count-1;
  end;
  boapagai := dataset.FieldByName(_hrinicio).AsString = '';
  boapagaf := dataset.FieldByName(_hrfim).AsString = '';
  apontamentomanual.apontamento.items[i].select(dataset);
  apontamentomanual.apontamento.items[i].CalcularDuracao;
  apontamentomanual.apontamento.items[i].Atribuir(dataset);
  if boapagai then
  begin
    dataset.FieldByName(_hrinicio).clear;
  end;
  if boapagaf then
  begin
    dataset.FieldByName(_hrfim).clear;
  end;
  registro.set_update(cdsdetail);
end;

procedure TfrmApontamentoManual.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmApontamentoManual.actSalvarExecute(Sender: TObject);
begin
  apontamentomanual.select(cds);
  apontamentomanual.tpapontamentomanual.Select(apontamentomanual.cdtpapontamentomanual);
  apontamentomanual.checkCampoObrigatorio;
  if (apontamentomanual.tpapontamentomanual.boinicio <> _s) and (not cdsHRINICIO.IsNull) then
  begin
    cdsHRINICIO.Clear;
  end;
  if (apontamentomanual.tpapontamentomanual.botermino <> _s) and (not cdsdttermino.IsNull) then
  begin
    cdsdttermino.Clear;
  end;
  if (apontamentomanual.tpapontamentomanual.botermino <> _s) and (not cdshrtermino.IsNull) then
  begin
    cdshrtermino.Clear;
  end;
  SetDetailDataHora;
  registro.Salvar;
end;

procedure TfrmApontamentoManual.actExcluirExecute(Sender: TObject);
begin
  if registro.Confirmar_Exclusao then
  begin
    apontamentomanual.Apontamento.excluir;
    registro.Excluir_registro;
  end;
end;

procedure TfrmApontamentoManual.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmApontamentoManual.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmApontamentoManual.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmApontamentoManual.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmApontamentoManual.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmApontamentoManual.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmApontamentoManual.edtcodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key, tbl);
end;

procedure TfrmApontamentoManual.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
end;

procedure TfrmApontamentoManual.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmApontamentoManual.cdsNewRecord(DataSet: TDataSet);
begin
  registro.NewRecord;
  DataSet.FieldByName(_cdstapontamentomanual).AsInteger := 1;
  apontamentomanual.stapontamentomanual.Select(DataSet.FieldByName(_cdstapontamentomanual).AsInteger);
  SetStapontamentomanualTela;
  DataSet.fieldbyname(_DTEMISSAO).AsDateTime := dtbanco;
  DataSet.fieldbyname(_DTlancamento).AsDateTime := DataSet.fieldbyname(_DTEMISSAO).AsDateTime;
  DataSet.fieldbyname(_DTEMISSAO).FocusControl;
end;

procedure TfrmApontamentoManual.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmApontamentoManual.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmApontamentoManual.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmApontamentoManual.cdsBeforePost(DataSet: TDataSet);
begin
  apontamentomanual.select(cds);
  apontamentomanual.tpapontamentomanual.select(apontamentomanual.cdtpapontamentomanual);
  apontamentomanual.checkCampoObrigatorio;
  registro.set_update(cds);
end;

procedure TfrmApontamentoManual.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmApontamentoManual.FormCreate(Sender: TObject);
begin
  tbl := _apontamentomanual;
  exibe := 'Apontamento Manual';
  GeraMenuRelatorio ('', btnimprimir, 64, cds, _apontamentomanual);
  apontamentomanual := tapontamentomanual.create;
  abrirtabela;
  registro := tregistro.create(self, tbl, exibe, 'o', cds, dts, edtcodigo);
end;

procedure TfrmApontamentoManual.cbxcdfuncionarioEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_funcionario);
end;

procedure TfrmApontamentoManual.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmApontamentoManual.actinsertgrideExecute(Sender: TObject);
begin
  if actsalvar.Enabled then
  begin
    cdsdetail.Insert;
    grd.SetFocus;
  end;
end;

procedure TfrmApontamentoManual.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmApontamentoManual.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmApontamentoManual.abrirtabela;
begin
  cbxcdfuncionario.Properties.ListSource                                       := abrir_tabela(_funcionario);
  cbxCDFUNCIONARIORESPONSAVEL.Properties.ListSource                            := abrir_tabela(_funcionario);
  cbxcdtpapontamentomanual.Properties.ListSource                               := abrir_tabela(_tpapontamentomanual);
  cbxcdtpequipamento.Properties.ListSource                                     := abrir_tabela(_tpequipamento);
  TcxLookupComboBoxProperties(tbvCDFUNCIONARIO.Properties).ListSource          := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvexpedicaoCDFUNCIONARIO.Properties).ListSource := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvexpedicaoCDFUNCIONARIOCONFERIDO.Properties).ListSource := abrir_tabela(_funcionario);
  TcxLookupComboBoxProperties(tbvlancaCDEQUIPAMENTO.Properties).ListSource     := abrir_tabela(_equipamento);
  TcxLookupComboBoxProperties(tbvlancaCDFORMULACAO1.Properties).ListSource     := abrir_tabela(_formulacao);
  TcxLookupComboBoxProperties(tbvlancaCDFORMULACAO2.Properties).ListSource     := abrir_tabela(_formulacao);
  TcxLookupComboBoxProperties(tbvmoldagemCDFORMULACAO.Properties).ListSource   := abrir_tabela(_formulacao);
end;

procedure TfrmApontamentoManual.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmApontamentoManual.cdsAfterScroll(DataSet: TDataSet);
begin
  if not apontamentomanual.Select(DataSet) then
  begin
    exit;
  end;
  apontamentomanual.apontamento.ler(_cdapontamentomanual, apontamentomanual.cdapontamentomanual);
  apontamentomanual.stapontamentomanual.Select(apontamentomanual.cdstapontamentomanual);
  SetStapontamentomanualTela;
  setrecord(apontamentomanual.cdtpapontamentomanual);
end;

procedure TfrmApontamentoManual.setrecord(codigo: integer);
begin
  apontamentomanual.tpapontamentomanual.Select(codigo);
  lblFUNCIONARIORESPONSAVEL.Visible   := apontamentomanual.tpapontamentomanual.boresponsavel = _S;
  cbxCDFUNCIONARIORESPONSAVEL.Visible := apontamentomanual.tpapontamentomanual.boresponsavel = _S;
  lblhrinicio.visible          := apontamentomanual.tpapontamentomanual.boinicio = _s;
  edthrinicio.visible          := apontamentomanual.tpapontamentomanual.boinicio = _s;
  lbldttermino.visible         := apontamentomanual.tpapontamentomanual.botermino = _s;
  edtdttermino.visible         := apontamentomanual.tpapontamentomanual.botermino = _s;
  lblhrtermino.visible         := apontamentomanual.tpapontamentomanual.botermino = _s;
  edthrtermino.visible         := apontamentomanual.tpapontamentomanual.botermino = _s;
  tbvHRINICIO.visible          := apontamentomanual.tpapontamentomanual.bohrinicio = _s;
  tbvHRfim.visible             := apontamentomanual.tpapontamentomanual.bohrfim = _s;
  tbvNUESTUTURALANTIGO.Visible := apontamentomanual.tpapontamentomanual.bonuestruturalantigo = _s;
  gbxdatahora.visible          := (apontamentomanual.tpapontamentomanual.boinicio = _s) or
                                  (apontamentomanual.tpapontamentomanual.boresponsavel = _s) or
                                  (apontamentomanual.tpapontamentomanual.botermino = _s);
  SetGride;
end;

procedure TfrmApontamentoManual.cbxcdtpapontamentomanualEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpapontamentomanual);
end;

procedure TfrmApontamentoManual.cbxcdtpequipamentoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_tpequipamento);
end;

procedure TfrmApontamentoManual.cdsdetailCDDIGITADOValidate(Sender: TField);
var
  cdproduto : string;
begin
  if sender.AsString = '' then
  begin
    Exit;
  end;
  cdproduto := CodigodoCampo(_produto, sender.AsString, _cdalternativo);
  if cdproduto = '' then
  begin
    MessageDlg('Produto '+sender.asstring+' inexistente.', mtInformation, [mbOK], 0);
    Abort;
  end;
  cdsdetailCDPRODUTO.AsString := cdproduto;
end;

procedure TfrmApontamentoManual.cdsdetailCDFUNCIONARIOValidate(Sender: TField);
begin
  if sender.asstring = '' then
  begin
    Exit;
  end;
  if not BooleandoCodigo(_funcao, NomedoCodigo(_funcionario, sender.AsString, _cdfuncao), _boapontamento) then
  begin
    MessageDlg('Função do funcionário não permite apontar.', mtInformation, [mbOK], 0);
    abort;
  end;
end;

procedure TfrmApontamentoManual.cdsdetailHRINICIOValidate(Sender: TField);
var
  hrinicio : TTime;
  hrfim : TTime;
begin
  if Sender.IsNull then
  begin
    Exit;
  end;
  hrinicio := sender.AsDateTime;
  hrfim := sender.DataSet.FieldByName(_HRFIM).AsDateTime;
  if (hrinicio > hrfim) and (not sender.DataSet.FieldByName(_HRFIM).IsNull) then
  begin
    MessageDlg('Hora de início não pode ser maior do que a hora final.', mtInformation, [mbOK], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmApontamentoManual.cdsdetailNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName(_dtemissao).AsDateTime := cds.fieldbyname(_dtemissao).AsDateTime;
  if cds.FieldByName(_cdfuncionario+_responsavel).AsInteger > 0 then
  begin
    DataSet.FieldByName(_cdfuncionario).AsInteger := cds.FieldByName(_cdfuncionario+_responsavel).AsInteger;
  end;
end;

procedure TfrmApontamentoManual.cbxcdtpapontamentomanualPropertiesEditValueChanged(Sender: TObject);
begin
  if cbxcdtpapontamentomanual.text <> '' then
  begin
    setrecord(cbxcdtpapontamentomanual.EditingValue);
  end;
end;

procedure TfrmApontamentoManual.lblcdtpapontamentomanualDblClick(Sender: TObject);
begin
  actabrirtpapontamentomanual.onexecute(actabrirtpapontamentomanual);
end;

procedure TfrmApontamentoManual.actabrirtpapontamentomanualExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmApontamentoManual.actabrirfuncionarioExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmApontamentoManual.lblcdfuncionarioDblClick(Sender: TObject);
begin
  actabrirfuncionario.onexecute(actabrirfuncionario);
end;

procedure TfrmApontamentoManual.lbltpequipamentoDblClick(Sender: TObject);
begin
  actabrirtpequipamento.onexecute(actabrirtpequipamento);
end;

procedure TfrmApontamentoManual.actabrirtpequipamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cds);
end;

procedure TfrmApontamentoManual.actaplicarcodigoordproducaoExecute(Sender: TObject);
begin
  if apontamentomanual.aplicarCodigoOrdproducao then
  begin
    MessageDlg('Código da Ordem de Produção aplicado.', mtInformation, [mbOK], 0);
    Abrir(cdsCDAPONTAMENTOMANUAL.AsInteger);
  end;
end;

procedure TfrmApontamentoManual.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsdetail);
end;

procedure TfrmApontamentoManual.tbvCellDblClick(Sender: TcxCustomGridTableView;ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao);
  end;
end;

procedure TfrmApontamentoManual.actremovercodigoordproducaoExecute(Sender: TObject);
begin
  if apontamentomanual.removerCodigoOrdproducao then
  begin
    MessageDlg('Código da Ordem de Produção removido.', mtInformation, [mbOK], 0);
    Abrir(cdsCDAPONTAMENTOMANUAL.AsInteger);
  end;
end;

procedure TfrmApontamentoManual.tbvdesmoldagemCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBbandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao);
  end;
end;

procedure TfrmApontamentoManual.tbvenformagemCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBbandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao);
  end;
end;

procedure TfrmApontamentoManual.tbvexpedicaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBbandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao);
  end;
end;

procedure TfrmApontamentoManual.tbvHRFIMPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = '' then
  begin
    Exit;
  end;
  if (DisplayValue < tbvHRINICIO.EditValue)and (not varisnull(tbvHRINICIO.EditValue)) then
  begin
    MessageDlg('Hora final não pode ser menor do que a hora inicial.', mtInformation, [mbOK], 0);
    tbvHRFIM.FocusWithSelection;
    Abort;
  end;
end;

procedure TfrmApontamentoManual.tbvlancaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBBandedColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao);
  end;
end;

procedure TfrmApontamentoManual.tbvmoldagemCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao);
  end;
end;

end.
