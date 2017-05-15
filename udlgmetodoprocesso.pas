unit udlgmetodoprocesso;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, sysutils, Classes, ExtCtrls, StdCtrls, Controls, ActnList,
  Menus,
  SqlExpr, FMTBcd, DBCtrls, Provider, DBClient, DB,
  uexportarexcel, uconstantes, uRegistro, ustrings,
  classeaplicacao, classegerar, classeproduto, classeRegistro,  classeempresa, classequery,
  cxPC, cxButtons, cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxGrid, cxGridBandedTableView, cxGridDBBandedTableView,
  dxBar, cxDBLabel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxPCdxBarPopupMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxButtonEdit, cxCalc, cxCheckBox, cxBlobEdit, cxGridTableView,
  cxClasses, cxGridCustomView, cxContainer, cxTextEdit, cxSpinEdit, cxDBEdit,
  cxNavigator, dxBarBuiltInMenu, cxGroupBox, cxRadioGroup, cxMaskEdit,
  cxDropDownEdit, cxListBox;

type
  Tfrmdlgmetodoprocesso = class(TForm)
    sdsdetail: TSQLDataSet;
    cdsdetail: TClientDataSet;
    dtsdetail: TDataSource;
    dts2: TDataSource;
    dtsitorcamentorecurso: TDataSource;
    cdsitprodutorecurso: TClientDataSet;
    sdsitprodutorecurso: TSQLDataSet;
    sdsitprodutomaterial: TSQLDataSet;
    sdsitprodutocusto: TSQLDataSet;
    cdsitprodutomaterial: TClientDataSet;
    dtsitorcamentomaterial: TDataSource;
    dtsitorcamentocusto: TDataSource;
    cdsitprodutocusto: TClientDataSet;
    pgc: TcxPageControl;
    tbsmaterial: TcxTabSheet;
    grdmaterial: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    tbvmateria: TcxGridDBBandedTableView;
    tbvmateriaCDDIGITADO: TcxGridDBBandedColumn;
    tbvmateriaNMPRODUTO: TcxGridDBBandedColumn;
    tbvmateriaQTPECA: TcxGridDBBandedColumn;
    tbvmateriaQTPESOUNITARIO: TcxGridDBBandedColumn;
    tbvmateriaQTITEM: TcxGridDBBandedColumn;
    tbvmateriaDSPOSICAO: TcxGridDBBandedColumn;
    tbvmateriaNUCLFISCAL: TcxGridDBBandedColumn;
    tbvmateriaALICMS: TcxGridDBBandedColumn;
    tbvmateriaALIPI: TcxGridDBBandedColumn;
    tbvmateriaBORECUPERAICMS: TcxGridDBBandedColumn;
    tbvmateriaBORECUPERAIPI: TcxGridDBBandedColumn;
    tbvmateriaALPIS: TcxGridDBBandedColumn;
    tbvmateriaALCOFINS: TcxGridDBBandedColumn;
    tbvmateriaBORECUPERAPIS: TcxGridDBBandedColumn;
    tbvmateriaBORECUPERACOFINS: TcxGridDBBandedColumn;
    tbvmateriaDSFORMULA: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    tbscustos: TcxTabSheet;
    grdcusto: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    tbvcusto: TcxGridDBTableView;
    tbvcustoCDDIGITADO: TcxGridDBColumn;
    tbvcustoNMPRODUTO: TcxGridDBColumn;
    tbvcustoQTITEM: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    tbsrecursos: TcxTabSheet;
    grdrecurso: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    tbvrecurso: TcxGridDBBandedTableView;
    tbvrecursoCDTPEQUIPAMENTO: TcxGridDBBandedColumn;
    tbvrecursoQTPREPARACAO: TcxGridDBBandedColumn;
    tbvrecursoQTOPERACAO: TcxGridDBBandedColumn;
    tbvrecursoDSOBSERVACAO: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dspdetail: TDataSetProvider;
    act: TActionList;
    bmg1: TdxBarManager;
    actExibirCompra: TAction;
    dxBarButton1: TdxBarButton;
    pnl1: TPanel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    pnl2: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    txtNMPRODUTO: TDBText;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailNMPRODUTO: TStringField;
    sdsitprodutorecursoCDITPRODUTORECURSO: TIntegerField;
    sdsitprodutorecursoCDPRODUTO: TIntegerField;
    sdsitprodutorecursoCDTPEQUIPAMENTO: TIntegerField;
    sdsitprodutorecursoCDUSUARIOI: TIntegerField;
    sdsitprodutorecursoCDUSUARIOA: TIntegerField;
    sdsitprodutorecursoCDCOMPUTADORI: TIntegerField;
    sdsitprodutorecursoCDCOMPUTADORA: TIntegerField;
    sdsitprodutorecursoTSINCLUSAO: TSQLTimeStampField;
    sdsitprodutorecursoTSALTERACAO: TSQLTimeStampField;
    sdsitprodutorecursoQTPREPARACAO: TFloatField;
    sdsitprodutorecursoQTOPERACAO: TFloatField;
    sdsitprodutorecursoDSOBSERVACAO: TBlobField;
    sdsitprodutorecursoNUSEQUENCIA: TIntegerField;
    sdsitprodutomaterialCDITPRODUTOMATERIAL: TIntegerField;
    sdsitprodutomaterialCDUSUARIOI: TIntegerField;
    sdsitprodutomaterialCDUSUARIOA: TIntegerField;
    sdsitprodutomaterialCDCOMPUTADORI: TIntegerField;
    sdsitprodutomaterialCDCOMPUTADORA: TIntegerField;
    sdsitprodutomaterialCDPRODUTO: TIntegerField;
    sdsitprodutomaterialCDforma: TIntegerField;
    sdsitprodutomaterialCDMATERIAL: TIntegerField;
    sdsitprodutomaterialTSINCLUSAO: TSQLTimeStampField;
    sdsitprodutomaterialTSALTERACAO: TSQLTimeStampField;
    sdsitprodutomaterialQTITEM: TFloatField;
    sdsitprodutomaterialQTPESOUNITARIO: TFloatField;
    sdsitprodutomaterialQTPECA: TFloatField;
    sdsitprodutomaterialCDDIGITADO: TStringField;
    sdsitprodutomaterialDSPOSICAO: TStringField;
    sdsitprodutomaterialALICMS: TFloatField;
    sdsitprodutomaterialALIPI: TFloatField;
    sdsitprodutomaterialALPIS: TFloatField;
    sdsitprodutomaterialALCOFINS: TFloatField;
    sdsitprodutomaterialBORECUPERAICMS: TStringField;
    sdsitprodutomaterialBORECUPERAIPI: TStringField;
    sdsitprodutomaterialBORECUPERAPIS: TStringField;
    sdsitprodutomaterialBORECUPERACOFINS: TStringField;
    sdsitprodutomaterialDSFORMULA: TStringField;
    sdsitprodutomaterialCDPRODUTOMATERIAL: TIntegerField;
    sdsitprodutomaterialNMPRODUTO: TStringField;
    sdsitprodutomaterialNUCLFISCAL: TStringField;
    sdsitprodutocustoCDITPRODUTOCUSTO: TIntegerField;
    sdsitprodutocustoCDUSUARIOI: TIntegerField;
    sdsitprodutocustoCDUSUARIOA: TIntegerField;
    sdsitprodutocustoCDCOMPUTADORI: TIntegerField;
    sdsitprodutocustoCDCOMPUTADORA: TIntegerField;
    sdsitprodutocustoCDPRODUTO: TIntegerField;
    sdsitprodutocustoTSINCLUSAO: TSQLTimeStampField;
    sdsitprodutocustoTSALTERACAO: TSQLTimeStampField;
    sdsitprodutocustoQTITEM: TFloatField;
    sdsitprodutocustoCDDIGITADO: TStringField;
    sdsitprodutocustoCDPRODUTOCUSTO: TIntegerField;
    sdsitprodutocustoNMPRODUTO: TStringField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailNMPRODUTO: TStringField;
    cdsdetailsdsitprodutocusto: TDataSetField;
    cdsdetailsdsitprodutomaterial: TDataSetField;
    cdsdetailsdsitprodutorecurso: TDataSetField;
    cdsitprodutorecursoCDITPRODUTORECURSO: TIntegerField;
    cdsitprodutorecursoCDPRODUTO: TIntegerField;
    cdsitprodutorecursoCDTPEQUIPAMENTO: TIntegerField;
    cdsitprodutorecursoCDUSUARIOI: TIntegerField;
    cdsitprodutorecursoCDUSUARIOA: TIntegerField;
    cdsitprodutorecursoCDCOMPUTADORI: TIntegerField;
    cdsitprodutorecursoCDCOMPUTADORA: TIntegerField;
    cdsitprodutorecursoTSINCLUSAO: TSQLTimeStampField;
    cdsitprodutorecursoTSALTERACAO: TSQLTimeStampField;
    cdsitprodutorecursoQTPREPARACAO: TFloatField;
    cdsitprodutorecursoQTOPERACAO: TFloatField;
    cdsitprodutorecursoDSOBSERVACAO: TBlobField;
    cdsitprodutorecursoNUSEQUENCIA: TIntegerField;
    cdsitprodutomaterialCDITPRODUTOMATERIAL: TIntegerField;
    cdsitprodutomaterialCDUSUARIOI: TIntegerField;
    cdsitprodutomaterialCDUSUARIOA: TIntegerField;
    cdsitprodutomaterialCDCOMPUTADORI: TIntegerField;
    cdsitprodutomaterialCDCOMPUTADORA: TIntegerField;
    cdsitprodutomaterialCDPRODUTO: TIntegerField;
    cdsitprodutomaterialCDforma: TIntegerField;
    cdsitprodutomaterialCDMATERIAL: TIntegerField;
    cdsitprodutomaterialTSINCLUSAO: TSQLTimeStampField;
    cdsitprodutomaterialTSALTERACAO: TSQLTimeStampField;
    cdsitprodutomaterialQTITEM: TFloatField;
    cdsitprodutomaterialQTPESOUNITARIO: TFloatField;
    cdsitprodutomaterialQTPECA: TFloatField;
    cdsitprodutomaterialCDDIGITADO: TStringField;
    cdsitprodutomaterialDSPOSICAO: TStringField;
    cdsitprodutomaterialALICMS: TFloatField;
    cdsitprodutomaterialALIPI: TFloatField;
    cdsitprodutomaterialALPIS: TFloatField;
    cdsitprodutomaterialALCOFINS: TFloatField;
    cdsitprodutomaterialBORECUPERAICMS: TStringField;
    cdsitprodutomaterialBORECUPERAIPI: TStringField;
    cdsitprodutomaterialBORECUPERAPIS: TStringField;
    cdsitprodutomaterialBORECUPERACOFINS: TStringField;
    cdsitprodutomaterialDSFORMULA: TStringField;
    cdsitprodutomaterialCDPRODUTOMATERIAL: TIntegerField;
    cdsitprodutomaterialNMPRODUTO: TStringField;
    cdsitprodutomaterialNUCLFISCAL: TStringField;
    cdsitprodutocustoCDITPRODUTOCUSTO: TIntegerField;
    cdsitprodutocustoCDUSUARIOI: TIntegerField;
    cdsitprodutocustoCDUSUARIOA: TIntegerField;
    cdsitprodutocustoCDCOMPUTADORI: TIntegerField;
    cdsitprodutocustoCDCOMPUTADORA: TIntegerField;
    cdsitprodutocustoCDPRODUTO: TIntegerField;
    cdsitprodutocustoTSINCLUSAO: TSQLTimeStampField;
    cdsitprodutocustoTSALTERACAO: TSQLTimeStampField;
    cdsitprodutocustoQTITEM: TFloatField;
    cdsitprodutocustoCDDIGITADO: TStringField;
    cdsitprodutocustoCDPRODUTOCUSTO: TIntegerField;
    cdsitprodutocustoNMPRODUTO: TStringField;
    tbvrecursoNUSEQUENCIA: TcxGridDBBandedColumn;
    sdsitprodutomaterialCDTPEQUIPAMENTO: TIntegerField;
    cdsitprodutomaterialCDTPEQUIPAMENTO: TIntegerField;
    tbvmateriaCDTPEQUIPAMENTO: TcxGridDBBandedColumn;
    tbsformulacao: TcxTabSheet;
    sdsformulacao: TSQLDataSet;
    cdsformulacao: TClientDataSet;
    dtsformulacao: TDataSource;
    sdsformulacaoCDPRODUTO: TIntegerField;
    sdsformulacaoCDFORMULACAO: TIntegerField;
    sdsformulacaoCDUSUARIOI: TIntegerField;
    sdsformulacaoCDUSUARIOA: TIntegerField;
    sdsformulacaoCDCOMPUTADORI: TIntegerField;
    sdsformulacaoCDCOMPUTADORA: TIntegerField;
    sdsformulacaoTSINCLUSAO: TSQLTimeStampField;
    sdsformulacaoTSALTERACAO: TSQLTimeStampField;
    cdsdetailsdsformulacao: TDataSetField;
    sdsformulacaoNMFORMULACAO: TStringField;
    sdsformulacaoDSFORMULACAO: TStringField;
    sdsformulacaoNMREGIAOAPLICACAO: TStringField;
    cdsformulacaoCDPRODUTO: TIntegerField;
    cdsformulacaoCDFORMULACAO: TIntegerField;
    cdsformulacaoCDUSUARIOI: TIntegerField;
    cdsformulacaoCDUSUARIOA: TIntegerField;
    cdsformulacaoCDCOMPUTADORI: TIntegerField;
    cdsformulacaoCDCOMPUTADORA: TIntegerField;
    cdsformulacaoTSINCLUSAO: TSQLTimeStampField;
    cdsformulacaoTSALTERACAO: TSQLTimeStampField;
    cdsformulacaoNMFORMULACAO: TStringField;
    cdsformulacaoDSFORMULACAO: TStringField;
    cdsformulacaoNMREGIAOAPLICACAO: TStringField;
    grdformulacaoLevel1: TcxGridLevel;
    grdformulacao: TcxGrid;
    tbvformulacao: TcxGridDBTableView;
    tbvformulacaoCDFORMULACAO: TcxGridDBColumn;
    tbvformulacaoNMFORMULACAO: TcxGridDBColumn;
    tbvformulacaoDSFORMULACAO: TcxGridDBColumn;
    tbvformulacaoNMREGIAOAPLICACAO: TcxGridDBColumn;
    sdsitprodutorecursoCDTPDURACAO: TIntegerField;
    cdsitprodutorecursoCDTPDURACAO: TIntegerField;
    tbvrecursoCDTPDURACAO: TcxGridDBBandedColumn;
    sdsdetailDSDESENHO: TStringField;
    cdsdetailDSDESENHO: TStringField;
    edtdsdesenho: TcxDBTextEdit;
    lbldsdesenho: TLabel;
    sdsitprodutomaterialNMUNIDADE: TStringField;
    cdsitprodutomaterialNMUNIDADE: TStringField;
    tbvmateriaNMUNIDADE: TcxGridDBBandedColumn;
    sdsformulacaoCDTPEQUIPAMENTO: TIntegerField;
    cdsformulacaoCDTPEQUIPAMENTO: TIntegerField;
    tbvformulacaoCDTPEQUIPAMENTO: TcxGridDBColumn;
    tbvmateriaCDFORMULACAO: TcxGridDBBandedColumn;
    tbvmateriaDSOBSERVACAO: TcxGridDBBandedColumn;
    sdsitprodutomaterialCDFORMULACAO: TIntegerField;
    cdsitprodutomaterialCDFORMULACAO: TIntegerField;
    sdsitprodutomaterialDSOBSERVACAO: TBlobField;
    cdsitprodutomaterialDSOBSERVACAO: TBlobField;
    tbvmateriaQTFAIXAI: TcxGridDBBandedColumn;
    tbvmateriaQTFAIXAF: TcxGridDBBandedColumn;
    sdsitprodutomaterialQTFAIXAI: TFloatField;
    sdsitprodutomaterialQTFAIXAF: TFloatField;
    cdsitprodutomaterialQTFAIXAI: TFloatField;
    cdsitprodutomaterialQTFAIXAF: TFloatField;
    sdsitprodutorecursoCDFORMULACAO: TIntegerField;
    cdsitprodutorecursoCDFORMULACAO: TIntegerField;
    tbvrecursoCDFORMULACAO: TcxGridDBBandedColumn;
    sdsformulacaoBOQUOCIENTE: TStringField;
    cdsformulacaoBOQUOCIENTE: TStringField;
    tbvformulacaoBOQUOCIENTE: TcxGridDBColumn;
    tbsembalagem: TcxTabSheet;
    dtsitprodutoembalagem: TDataSource;
    cdsitprodutoembalagem: TClientDataSet;
    sdsitprodutoembalagem: TSQLDataSet;
    sdsitprodutoembalagemCDITPRODUTOEMBALAGEM: TIntegerField;
    sdsitprodutoembalagemCDPRODUTO: TIntegerField;
    sdsitprodutoembalagemCDPRODUTOEMBALAGEM: TIntegerField;
    sdsitprodutoembalagemCDUSUARIOI: TIntegerField;
    sdsitprodutoembalagemCDUSUARIOA: TIntegerField;
    sdsitprodutoembalagemCDCOMPUTADORI: TIntegerField;
    sdsitprodutoembalagemCDCOMPUTADORA: TIntegerField;
    sdsitprodutoembalagemCDFORMULACAO: TIntegerField;
    sdsitprodutoembalagemCDTPEQUIPAMENTO: TIntegerField;
    sdsitprodutoembalagemTSINCLUSAO: TSQLTimeStampField;
    sdsitprodutoembalagemTSALTERACAO: TSQLTimeStampField;
    sdsitprodutoembalagemQTITEM: TFloatField;
    sdsitprodutoembalagemCDDIGITADO: TStringField;
    cdsdetailsdsitprodutoembalagem: TDataSetField;
    cdsitprodutoembalagemCDITPRODUTOEMBALAGEM: TIntegerField;
    cdsitprodutoembalagemCDPRODUTO: TIntegerField;
    cdsitprodutoembalagemCDPRODUTOEMBALAGEM: TIntegerField;
    cdsitprodutoembalagemCDUSUARIOI: TIntegerField;
    cdsitprodutoembalagemCDUSUARIOA: TIntegerField;
    cdsitprodutoembalagemCDCOMPUTADORI: TIntegerField;
    cdsitprodutoembalagemCDCOMPUTADORA: TIntegerField;
    cdsitprodutoembalagemCDFORMULACAO: TIntegerField;
    cdsitprodutoembalagemCDTPEQUIPAMENTO: TIntegerField;
    cdsitprodutoembalagemTSINCLUSAO: TSQLTimeStampField;
    cdsitprodutoembalagemTSALTERACAO: TSQLTimeStampField;
    cdsitprodutoembalagemQTITEM: TFloatField;
    cdsitprodutoembalagemCDDIGITADO: TStringField;
    grditprodutoembalagem: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    tbvembalagem: TcxGridDBTableView;
    tbvembalagemCDDIGITADO: TcxGridDBColumn;
    tbvembalagemNMPRODUTO: TcxGridDBColumn;
    tbvembalagemQTITEM: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    sdsitprodutoembalagemNMPRODUTO: TStringField;
    cdsitprodutoembalagemNMPRODUTO: TStringField;
    tbvembalagemCDFORMULACAO: TcxGridDBColumn;
    tbvembalagemCDTPEQUIPAMENTO: TcxGridDBColumn;
    sdsitprodutoembalagemQTEMBALAGEM: TFloatField;
    cdsitprodutoembalagemQTEMBALAGEM: TFloatField;
    tbvembalagemQTEMBALAGEM: TcxGridDBColumn;
    sdsitprodutorecursoBOATIVADO: TStringField;
    cdsitprodutorecursoBOATIVADO: TStringField;
    tbvrecursoBOATIVADO: TcxGridDBBandedColumn;
    tbvrecursoColumn1: TcxGridDBBandedColumn;
    tbvrecursoCDTPDURACAOLIBERACAO: TcxGridDBBandedColumn;
    sdsitprodutorecursoCDTPDURACAOLIBERACAO: TIntegerField;
    sdsitprodutorecursoQTLIBERACAO: TFloatField;
    cdsitprodutorecursoCDTPDURACAOLIBERACAO: TIntegerField;
    cdsitprodutorecursoQTLIBERACAO: TFloatField;
    sdsitprodutomaterialBOCONSUMOAUTOMATICO: TStringField;
    cdsitprodutomaterialBOCONSUMOAUTOMATICO: TStringField;
    tbvmateriaBOCONSUMOAUTOMATICO: TcxGridDBBandedColumn;
    sdsformulacaoBOMETODOPROCESSO: TStringField;
    cdsformulacaoBOMETODOPROCESSO: TStringField;
    tbvformulacaoBOMETODOPROCESSO: TcxGridDBColumn;
    sdsdetailTPQTITEM: TStringField;
    cdsdetailTPQTITEM: TStringField;
    tbstpqtitem: TcxTabSheet;
    rdgtpqtitem1: TcxDBRadioGroup;
    sdsitprodutomaterialNMUNIDADE2: TStringField;
    sdsitprodutomaterialQTITEM2: TFloatField;
    sdsitprodutomaterialPRUNIDADE: TFloatField;
    cdsitprodutomaterialQTITEM2: TFloatField;
    cdsitprodutomaterialNMUNIDADE2: TStringField;
    cdsitprodutomaterialPRUNIDADE: TFloatField;
    tbvmateriaNMUNIDADE2: TcxGridDBBandedColumn;
    tbvmateriaQTITEM2: TcxGridDBBandedColumn;
    sdsdetailPRQTITEM: TFloatField;
    cdsdetailPRQTITEM: TFloatField;
    edtPRQTITEM: TcxDBCalcEdit;
    lblprqtitem: TLabel;
    sdsdetailCDEMPRESA: TLargeintField;
    sdsitprodutorecursoCDEMPRESA: TLargeintField;
    sdsitprodutomaterialCDEMPRESA: TLargeintField;
    sdsitprodutocustoCDEMPRESA: TLargeintField;
    sdsformulacaoCDEMPRESA: TLargeintField;
    sdsitprodutoembalagemCDEMPRESA: TLargeintField;
    cdsdetailCDEMPRESA: TLargeintField;
    cdsitprodutorecursoCDEMPRESA: TLargeintField;
    cdsitprodutomaterialCDEMPRESA: TLargeintField;
    cdsitprodutocustoCDEMPRESA: TLargeintField;
    cdsformulacaoCDEMPRESA: TLargeintField;
    cdsitprodutoembalagemCDEMPRESA: TLargeintField;
    txtcdproduto: TDBText;
    procedure btnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsitprodutocustoBeforePost(DataSet: TDataSet);
    procedure cdsitprodutomaterialBeforePost(DataSet: TDataSet);
    procedure cdsitprodutorecursoBeforePost(DataSet: TDataSet);
    procedure grdcustoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitprodutorecursoNewRecord(DataSet: TDataSet);
    procedure cdsitprodutomaterialNewRecord(DataSet: TDataSet);
    procedure cdsitprodutocustoNewRecord(DataSet: TDataSet);
    procedure cxGridDBBandedTableView2QTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitprodutomaterialQTPESOUNITARIOValidate(Sender: TField);
    procedure cdsitprodutomaterialCDDIGITADOValidate(Sender: TField);
    procedure cdsitprodutomaterialQTPECAValidate(Sender: TField);
    procedure cdsitprodutocustoCDDIGITADOValidate(Sender: TField);
    procedure cdsformulacaoBeforePost(DataSet: TDataSet);
    procedure grdformulacaoDBTableView1CDFORMULACAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsformulacaoCDFORMULACAOValidate(Sender: TField);
    procedure Exportar_excel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvmateriaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvmateriaCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure tbvembalagemCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsitprodutoembalagemCDDIGITADOValidate(Sender: TField);
    procedure cdsitprodutoembalagemBeforePost(DataSet: TDataSet);
    procedure cdsitprodutoembalagemNewRecord(DataSet: TDataSet);
    procedure cdsitprodutorecursoAfterOpen(DataSet: TDataSet);
    procedure cdsitprodutomaterialAfterOpen(DataSet: TDataSet);
    procedure cdsitprodutocustoAfterOpen(DataSet: TDataSet);
    procedure cdsformulacaoAfterOpen(DataSet: TDataSet);
    procedure cdsitprodutoembalagemAfterOpen(DataSet: TDataSet);
    procedure cdsformulacaoNewRecord(DataSet: TDataSet);
    procedure cdsitprodutomaterialQTITEM2Validate(Sender: TField);
    procedure cdsitprodutomaterialAfterScroll(DataSet: TDataSet);
    procedure cdsitprodutomaterialQTITEMValidate(Sender: TField);
  private   { Private declarations }
    registro : TRegistro;
    produto : TProduto;
    procedure setrecord;
    procedure setUnidade2;
    procedure AbrirTabelas;
  public    { Public declarations }
  end;

function dlgMetodoProcesso(cdproduto: integer):boolean;

var
  frmdlgmetodoprocesso: Tfrmdlgmetodoprocesso;

implementation

uses uDtmMain, udlgcalculopeso, ClasseFormulacao;

{$R *.DFM}

function dlgMetodoProcesso(cdproduto: integer):boolean;
begin
  frmdlgmetodoprocesso          := Tfrmdlgmetodoprocesso.Create(application);
  frmdlgmetodoprocesso.produto  := tproduto.create;
  frmdlgmetodoprocesso.registro := tregistro.create(frmdlgmetodoprocesso, _produto, '', '', frmdlgmetodoprocesso.cdsdetail, frmdlgmetodoprocesso.dtsdetail, nil);
  try
    frmdlgmetodoprocesso.produto.cdproduto := cdproduto;
    frmdlgmetodoprocesso.produto.tpproduto.Select(qregistro.InteirodoCodigo(_produto, cdproduto, _cdtpproduto));
    if frmdlgmetodoprocesso.produto.tpproduto.bometodoprocesso <> _s then
    begin
      MessageDlg('Não está ativado o método processo para o produto.', mtinformation, [mbok], 0);
      result := False;
      Exit;
    end;
    frmdlgmetodoprocesso.setrecord;
    with frmdlgmetodoprocesso do
    begin
      sdsdetail.ParamByName(_cdempresa).AsLargeInt := Empresa.cdempresa;
      sdsdetail.ParamByName(_cdproduto).AsInteger := cdproduto;
      cdsdetail.Open;
      //edtcodigo.Text    := cdsdetailCDPRODUTO.AsString;
      //edtcodigo.Enabled := False;
      registro.Editar;
      showmodal;
      result := (ModalResult = mrOk) and (cdsdetail.ReadOnly = False);
    end;
  finally
    frmdlgmetodoprocesso.registro.Destroy;
    frmdlgmetodoprocesso.produto.destroy;
    freeandnil(frmdlgmetodoprocesso);
  end;
end;

procedure Tfrmdlgmetodoprocesso.btnOkClick(Sender: TObject);
begin
  if cdsdetail.ReadOnly = False then
  begin
    cdsdetail.ApplyUpdates(0);
  end;
  modalresult := mrok;
end;

procedure Tfrmdlgmetodoprocesso.FormCreate(Sender: TObject);
begin
  tbvmateriaQTITEM2.Visible          := empresa.material.produto.boqtestoque2;
  tbvmateriaNMUNIDADE2.Visible       := empresa.material.produto.boqtestoque2;
  tbvmateriaBORECUPERAPIS.Visible    := Empresa.tpregime = _R;
  tbvmateriaBORECUPERACOFINS.Visible := Empresa.tpregime = _R;
  tbvmateriaBORECUPERAIPI.Visible    := not (Empresa.tpregime = _s);
  tbvmateriaBORECUPERAICMS.Visible   := not (Empresa.tpregime = _s);
  AbrirTabelas;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutocustoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitprodutocusto);
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutomaterialBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitprodutomaterial);
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutorecursoBeforePost(DataSet: TDataSet);
begin
  if DataSet.FieldByName(_cdtpequipamento).IsNull then
  begin
    messagedlg('Tipo de Equipamento é um campo obrigatório.', mtinformation, [mbok], 0);
    DataSet.FieldByName(_cdtpequipamento).FocusControl;
    abort;
  end;
  registro.set_update(cdsitprodutorecurso);
end;

procedure Tfrmdlgmetodoprocesso.tbvembalagemCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_produto, cdsitprodutoembalagem, false);
end;

procedure Tfrmdlgmetodoprocesso.tbvmateriaCDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_produto, cdsitprodutomaterial, false);
end;

procedure Tfrmdlgmetodoprocesso.tbvmateriaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    if LowerCase(tbvmateria.Controller.FocusedColumn.DataBinding.FilterFieldName) = _cddigitado then
    begin
      tbvmateriaCDDIGITADOPropertiesButtonClick(sender, 0)
    end;
  end;
  exportarexcel(Key, sender);
end;

procedure Tfrmdlgmetodoprocesso.grdcustoDBTableView1CDDIGITADOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEditProduto(_produto, cdsitprodutocusto, false);
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutorecursoNewRecord(DataSet: TDataSet);
begin
  cdsitprodutorecursoCDITprodutoRECURSO.AsString := GerarCodigo(_itprodutorecurso);
  cdsitprodutorecursoQTPREPARACAO.AsFloat        := 0;
  cdsitprodutorecursoQTOPERACAO.AsFloat          := 0;
  cdsitprodutorecursoNUSEQUENCIA.AsInteger       := cdsitprodutorecurso.RecordCount + 1;
  cdsitprodutorecursoCDTPDURACAO.AsString        := _1;
  cdsitprodutorecursoBOATIVADO.AsString          := _S;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutomaterialNewRecord(DataSet: TDataSet);
begin
  cdsitprodutomaterialCDITprodutoMATERIAL.AsString := GerarCodigo(_itprodutomaterial);
  cdsitprodutomaterialQTITEM.AsFloat               := 1;
  cdsitprodutomaterialBOCONSUMOAUTOMATICO.AsString := _N;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutocustoNewRecord(DataSet: TDataSet);
begin
  cdsitprodutocustoCDITprodutoCUSTO.AsString := GerarCodigo(_itprodutocusto);
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutoembalagemBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitprodutoembalagem);
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutoembalagemCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados;
  if (produto.cdproduto <> 0) and (cdsitprodutoembalagemCDPRODUTOEMBALAGEM.asInteger <> produto.cdproduto) then
  begin
    cdsitprodutoembalagemCDPRODUTOEMBALAGEM.asInteger := produto.cdproduto;
  end;
  if cdsitprodutoembalagemQTITEM.IsNull then
  begin
    cdsitprodutoembalagemQTITEM.AsFloat := 1;
  end;
  cdsitprodutoembalagemNMPRODUTO.asstring := produto.nmproduto;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutoembalagemNewRecord(DataSet: TDataSet);
begin
  cdsitprodutoembalagemCDITPRODUTOEMBALAGEM.AsString := GerarCodigo(_it+_produto+_embalagem);
end;

procedure Tfrmdlgmetodoprocesso.cxGridDBBandedTableView2QTPESOUNITARIOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  qtpeso : real;
  dsformula : string;
begin
  if cdsdetail.State <> dsedit then
  begin
    Exit;
  end;
  qtpeso := cdsitprodutomaterialQTPESOUNITARIO.AsFloat;
  if CalcularPeso(cdsitprodutomaterialQTPESOUNITARIO.ReadOnly, cdsitprodutomaterialCDPRODUTO.AsString, dsformula, qtpeso) and (not cdsitprodutomaterial.ReadOnly) then
  begin
    if cdsitprodutomaterial.State <> dsedit then
    begin
      cdsitprodutomaterial.Edit;
    end;
    cdsitprodutomaterialQTPESOUNITARIO.AsFloat := qtpeso;
    cdsitprodutomaterialDSFORMULA.AsString     := dsformula;
  end;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutomaterialQTPESOUNITARIOValidate(Sender: TField);
begin
  cdsitprodutomaterialQTITEM.AsFloat := cdsitprodutomaterialQTPECA.AsFloat * cdsitprodutomaterialQTPESOUNITARIO.AsFloat;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutomaterialCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if produto.cdproduto = 0 then
  begin
    abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados;
  if (produto.cdproduto <> 0) and (cdsitprodutomaterialCDPRODUTOMATERIAL.asInteger <> produto.cdproduto) then
  begin
    cdsitprodutomaterialCDPRODUTOMATERIAL.asInteger := produto.cdproduto;
  end;
  cdsitprodutomaterialNMPRODUTO.asstring        := produto.nmproduto;
  cdsitprodutomaterialNMUNIDADE.asstring        := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  cdsitprodutomaterialNMUNIDADE2.AsString       := qregistro.nomedocodigo(_unidade, produto.cdunidade2);
  cdsitprodutomaterialPRUNIDADE.AsFloat         := produto.prunidade;
  cdsitprodutomaterialNUCLFISCAL.AsString       := PRODUTO.nuclfiscal;
  cdsitprodutomaterialBORECUPERAICMS.AsString   := produto.borecuperaicms;
  cdsitprodutomaterialBORECUPERACOFINS.AsString := produto.borecuperacofins;
  cdsitprodutomaterialBORECUPERAPIS.AsString    := produto.borecuperapis;
  cdsitprodutomaterialBORECUPERAIPI.AsString    := produto.borecuperaipi;
  cdsitprodutomaterialALICMS.AsFloat            := produto.alicms;
  cdsitprodutomaterialALIPI.AsFloat             := produto.alipi;
  cdsitprodutomaterialALPIS.AsFloat             := produto.alpis;
  cdsitprodutomaterialALCOFINS.AsFloat          := produto.alcofins;
  setUnidade2;
  cdsitprodutomaterialQTITEMValidate(cdsitprodutomaterialQTITEM);
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutomaterialQTPECAValidate(Sender: TField);
begin
  cdsitprodutomaterialQTITEM.AsFloat := cdsitprodutomaterialQTPECA.AsFloat * cdsitprodutomaterialQTPESOUNITARIO.AsFloat;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutocustoCDDIGITADOValidate(Sender: TField);
begin
  produto.cdproduto := produto.CodigoProdutoDigitado(Sender.AsString, '');
  if produto.cdproduto = 0 then
  begin
    Abort;
  end;
  produto.Select(produto.cdproduto);
  produto.CheckDados;
  if (produto.cdproduto <> 0) and (cdsitprodutocustoCDPRODUTOCUSTO.AsInteger <> produto.cdproduto) then
  begin
    cdsitprodutocustoCDPRODUTOCUSTO.AsInteger := produto.cdproduto;
  end;
  if cdsitprodutocustoQTITEM.IsNull then
  begin
    cdsitprodutocustoQTITEM.AsFloat := 1;
  end;
  cdsitprodutocustoNMPRODUTO.asstring := produto.nmproduto;
end;

procedure Tfrmdlgmetodoprocesso.cdsformulacaoBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsformulacao);
end;

procedure Tfrmdlgmetodoprocesso.grdformulacaoDBTableView1CDFORMULACAOPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  registro.ButtonEdit(cdsformulacao, _formulacao, _cd+_formulacao, false);
end;

procedure Tfrmdlgmetodoprocesso.setrecord;
begin
  tbvmateriaDSPOSICAO.Visible       := produto.tpproduto.bometodoprocessoposicao = _s;
  tbvmateriaNUCLFISCAL.Visible      := produto.tpproduto.bometodoprocessonuclfiscal = _s;
  tbvmateriaQTPECA.Visible          := produto.tpproduto.bometodoprocessoqtpeca = _s;
  tbvmateriaQTPESOUNITARIO.Visible  := produto.tpproduto.bometodoprocessopsunitario = _s;
  tbvmateriaDSFORMULA.Visible       := produto.tpproduto.bometodoprocessomedida = _s;
  tbvmateriaCDTPEQUIPAMENTO.Visible := produto.tpproduto.bometodoprocessotpequipamento = _s;
  tbvmateriaDSPOSICAO.Visible       := produto.tpproduto.bometodoprocessoposicao = _s;
  tbvmateria.Bands[2].Visible       := produto.tpproduto.bometodoprocessofaixa = _s;
  tbvmateria.Bands[3].Visible       := produto.tpproduto.bometodoprocessoicms = _s;
  tbvmateria.Bands[4].Visible       := produto.tpproduto.bometodoprocessoipi = _s;
  tbvmateria.Bands[5].Visible       := produto.tpproduto.bometodoprocessopis = _s;
  tbvmateria.Bands[6].Visible       := produto.tpproduto.bometodoprocessocofins = _s;
  tbvmateria.Bands[7].Visible       := produto.tpproduto.bometodoprocessotpequipamento = _s;
  tbvmateria.Bands[8].Visible       := produto.tpproduto.bometodoprocessoformulacao = _s;

  tbvrecurso.Bands[2].Visible       := produto.tpproduto.bometodoprocessopreparacao = _s;
  tbvrecurso.Bands[3].Visible       := produto.tpproduto.borecursoformulacao = _s;
  tbvrecursoCDTPDURACAO.Visible     := produto.tpproduto.bometodoprocessotpduracao = _s;

  tbsformulacao.TabVisible            := produto.tpproduto.bometodoprocessoformulacao = _s;
  tbsembalagem.TabVisible             := produto.tpproduto.bometodoprocessoembalagem = _s;
  tbvembalagemCDFORMULACAO.Visible    := produto.tpproduto.boembalagemformulacao = _s;
  tbvembalagemCDtpequipamento.Visible := produto.tpproduto.boembalagemtpequipamento = _s;
end;

procedure Tfrmdlgmetodoprocesso.Exportar_excel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure Tfrmdlgmetodoprocesso.cdsformulacaoCDFORMULACAOValidate(Sender: TField);
var
  formulacao : TFormulacao;
begin
  if sender.AsString = '' then
  begin
    cdsformulacaoNMFORMULACAO.Clear;
    cdsformulacaoDSFORMULACAO.Clear;
    cdsformulacaoNMREGIAOAPLICACAO.Clear;
    Exit;
  end;
  if not CodigoExiste(_formulacao, sender.asstring) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(__formulacao)]), mterror, [mbok], 0);
    Sender.FocusControl;
    Abort;
  end;
  formulacao := tformulacao.create;
  try
    if formulacao.select(sender.asinteger) then
    begin
      formulacao.regiaoaplicacao.select(formulacao.cdregiaoaplicacao);
      cdsformulacaoNMFORMULACAO.asstring      := formulacao.nmformulacao;
      cdsformulacaoDSFORMULACAO.asstring      := formulacao.dsformulacao;
      cdsformulacaoNMREGIAOAPLICACAO.asstring := formulacao.regiaoaplicacao.nmregiaoaplicacao;
    end;
  finally
    freeandnil(formulacao);
  end;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutorecursoAfterOpen(DataSet: TDataSet);
begin
  if cdsitprodutorecurso.RecordCount > 0 then
  begin
    tbsrecursos.Caption := '&Recursos ('+inttostr(cdsitprodutorecurso.RecordCount)+')';
  end;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutomaterialAfterOpen(DataSet: TDataSet);
begin
  if cdsitprodutomaterial.RecordCount > 0 then
  begin
    tbsmaterial.Caption := '&Matéria-Prima ('+inttostr(cdsitprodutomaterial.RecordCount)+')';
  end;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutocustoAfterOpen(DataSet: TDataSet);
begin
  if cdsitprodutocusto.RecordCount > 0 then
  begin
    tbscustos.Caption := '&Serviço Terceirizado ('+inttostr(cdsitprodutocusto.RecordCount)+')';
  end;
end;

procedure Tfrmdlgmetodoprocesso.cdsformulacaoAfterOpen(DataSet: TDataSet);
begin
  if cdsformulacao.RecordCount > 0 then
  begin
    tbsformulacao.Caption := '&Formulação ('+inttostr(cdsformulacao.RecordCount)+')';
  end;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutoembalagemAfterOpen(DataSet: TDataSet);
begin
  if cdsitprodutoembalagem.RecordCount > 0 then
  begin
    tbsembalagem.Caption := '&Embalagem ('+inttostr(cdsitprodutoembalagem.RecordCount)+')';
  end;
end;

procedure Tfrmdlgmetodoprocesso.cdsformulacaoNewRecord(DataSet: TDataSet);
begin
  cdsformulacaoBOMETODOPROCESSO.AsString := _S;
  cdsformulacaoBOQUOCIENTE.AsString      := _N;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutomaterialQTITEM2Validate(Sender: TField);
var
  produto : TProduto;
begin
  if cdsitprodutomaterialPRUNIDADE.AsFloat > 0 then
  begin
    cdsitprodutomaterialQTITEM.OnValidate := nil;
    produto := tproduto.create;
    try
      produto.Select(sender.dataset.fieldbyname(_cdproduto).asinteger);
      cdsitprodutomaterialQTITEM.AsFloat    := produto.calcularQTItem(cdsitprodutomaterialQTITEM2.AsFloat, cdsitprodutomaterialPRUNIDADE.AsFloat);
    finally
      FreeAndNil(produto);
      cdsitprodutomaterialQTITEM.OnValidate := cdsitprodutomaterialQTITEMValidate;
    end;
  end;
end;

procedure Tfrmdlgmetodoprocesso.setUnidade2;
begin
  tbvmateriaQTITEM2.Options.Focusing := cdsitprodutomaterialPRUNIDADE.AsFloat > 0;
end;

procedure Tfrmdlgmetodoprocesso.AbrirTabelas;
begin
  TcxLookupComboBoxProperties(tbvrecursoCDTPDURACAO.Properties).ListSource := abrir_tabela(_tpduracao);
  TcxLookupComboBoxProperties(tbvrecursoCDTPDURACAOLIBERACAO.Properties).ListSource := abrir_tabela(_tpduracao);
  TcxLookupComboBoxProperties(tbvrecursoCDTPEQUIPAMENTO.Properties).ListSource := abrir_tabela(_tpequipamento);
  TcxLookupComboBoxProperties(tbvmateriaCDTPEQUIPAMENTO.Properties).ListSource := abrir_tabela(_tpequipamento);
  TcxLookupComboBoxProperties(tbvmateriaCDformulacao.Properties).ListSource := abrir_tabela(_formulacao);
  TcxLookupComboBoxProperties(tbvrecursoCDFORMULACAO.Properties).ListSource := abrir_tabela(_formulacao);
  TcxLookupComboBoxProperties(tbvembalagemCDTPEQUIPAMENTO.Properties).ListSource := abrir_tabela(_tpequipamento);
  TcxLookupComboBoxProperties(tbvembalagemCDFORMULACAO.Properties).ListSource := abrir_tabela(_formulacao);
  TcxLookupComboBoxProperties(tbvformulacaoCDTPEQUIPAMENTO.Properties).ListSource := abrir_tabela(_tpequipamento);
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutomaterialAfterScroll(DataSet: TDataSet);
begin
  setUnidade2;
end;

procedure Tfrmdlgmetodoprocesso.cdsitprodutomaterialQTITEMValidate(Sender: TField);
var
  produto : TProduto;
begin
  if cdsitprodutomaterialPRUNIDADE.AsFloat > 0 then
  begin
    cdsitprodutomaterialQTITEM2.OnValidate := nil;
    produto := tproduto.create;
    try
      produto.Select(sender.dataset.fieldbyname(_cdprodutomaterial).asinteger);
      cdsitprodutomaterialQTITEM2.AsFloat := produto.calcularQTItem2(cdsitprodutomaterialQTITEM.AsFloat, cdsitprodutomaterialPRUNIDADE.AsFloat);
    finally
      FreeAndNil(produto);
      cdsitprodutomaterialQTITEM2.OnValidate := cdsitprodutomaterialQTITEM2Validate;
    end;
  end;
end;

end.
