unit uFornecedor;

interface

uses
  System.Actions, System.UITypes,
  forms, Variants, Graphics, Classes, ActnList, ComCtrls, ExtCtrls, Menus, StdCtrls,
  Buttons, sysutils, Math, dialogs, Mask, Controls, windows, ToolWin,
  DB, DBClient, Provider, sqlexpr, FMTBcd, Grids,
  urotinas, ustrings, ulocalizar, uconstantes, uregistroib,
  uregistro, uvalidadocumento, uexportarexcel, uprogressbar,
  udatahora, ulocalizarfornecedor,
  classeempresa, classeconsiste, classegerar, classeregistrainformacao,
  classeform, classeretornasql, classefornecedor, classeRegistro,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxPC, cxControls,
  dxBar, cxClasses, cxGraphics, cxLookAndFeels, cxLabel, cxTextEdit, cxDBEdit,
  cxMaskEdit, cxRadioGroup, cxDropDownEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCurrencyEdit, cxDBLabel, cxButtonEdit,
  cxPCdxBarPopupMenu, cxBlobEdit, cxNavigator, dxBarBuiltInMenu;

type
  TfrmFornecedor = class(TForm)
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
    actImpCadG: TAction;
    actabrirentrada: TAction;
    actabrirautpagto: TAction;
    actabriradntfornecedor: TAction;
    actabrirsaida: TAction;
    actconsultaentrada: TAction;
    actconsultaautpagto: TAction;
    actconsultaadntfornecedor: TAction;
    actconsultasaida: TAction;
    actabrirproduto: TAction;
    actconsultaPedidoMaterial: TAction;
    actimprimirhistoricoClassificacao: TAction;
    actfechar: TAction;
    actconsultaordcompra: TAction;
    actconsultaproduto: TAction;
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
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    Panel1: TPanel;
    bvl1: TBevel;
    lblcodigo: TLabel;
    Label3: TLabel;
    lblrzsocial: TLabel;
    pgc: TcxPageControl;
    tbscadastro: TcxTabSheet;
    gbxoutros: TcxGroupBox;
    Label38: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    lblrmatividade: TLabel;
    tbsobservacao: TcxTabSheet;
    tbsconsulta: TcxTabSheet;
    pnl: TcxLabel;
    bmg1Bar1: TdxBar;
    btnentrada: TdxBarLargeButton;
    btnautpagto: TdxBarLargeButton;
    btnadntfornecedor: TdxBarLargeButton;
    btnsaida: TdxBarLargeButton;
    btnproduto: TdxBarLargeButton;
    btnordcompra: TdxBarLargeButton;
    btnpedidomaterial: TdxBarLargeButton;
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    dts: TDataSource;
    sdsCDUF: TIntegerField;
    sdsCDSTFORNECEDOR: TIntegerField;
    sdsCDBANCO: TIntegerField;
    sdsCDCLFORNECEDOR: TIntegerField;
    sdsNMFORNECEDOR: TStringField;
    sdsRZSOCIAL: TStringField;
    sdsDSENDERECO: TStringField;
    sdsNMBAIRRO: TStringField;
    sdsNUCEP: TStringField;
    sdsNUCXPOSTAL: TStringField;
    sdsNUFONE1: TStringField;
    sdsNUFONE2: TStringField;
    sdsNUFONE3: TStringField;
    sdsNUFAX: TStringField;
    sdsTPPESSOA: TStringField;
    sdsNUINSCEST: TStringField;
    sdsNUCNPJ: TStringField;
    sdsNUCPF: TStringField;
    sdsNUIDENTID: TStringField;
    sdsDTNASCIMENTO: TDateField;
    sdsCDSEXO: TStringField;
    sdsCDESTCIVIL: TStringField;
    sdsNMMAE: TStringField;
    sdsNMPAI: TStringField;
    sdsNMCONJUGE: TStringField;
    sdsNUAGENCIA: TStringField;
    sdsNUCNTCORRENTE: TStringField;
    sdsEMAIL: TStringField;
    sdsHOMEPAGE: TStringField;
    sdsDSOBSERVACAO: TBlobField;
    sdsDTINICIOAVALIACAO: TDateField;
    sdsDTDESCREDENCIAMENTO: TDateField;
    sdsBOAVALIACAO: TStringField;
    sdsNUDDG1: TStringField;
    sdsNUDDG2: TStringField;
    sdsDTFUNDACAO: TDateField;
    sdsNMCONTATO: TStringField;
    sdsDSNUMERO: TStringField;
    sdsDSCOMPLEMENTO: TStringField;
    sdsNMNATURALIDADE: TStringField;
    sdsNUCODIGOHISTORICOPAGTO: TIntegerField;
    sdsBOOPTANTESIMPLES: TStringField;
    sdsCDRMATIVIDADE: TIntegerField;
    sdsCDMUNICIPIO: TIntegerField;
    sdsCDTPFORNECEDOR: TIntegerField;
    sdsCDFORNECEDORANTIGO: TStringField;
    sdsDTCADASTRO: TDateField;
    cdsCDUF: TIntegerField;
    cdsCDSTFORNECEDOR: TIntegerField;
    cdsCDBANCO: TIntegerField;
    cdsCDCLFORNECEDOR: TIntegerField;
    cdsNMFORNECEDOR: TStringField;
    cdsRZSOCIAL: TStringField;
    cdsDSENDERECO: TStringField;
    cdsNMBAIRRO: TStringField;
    cdsNUCEP: TStringField;
    cdsNUCXPOSTAL: TStringField;
    cdsNUFONE1: TStringField;
    cdsNUFONE2: TStringField;
    cdsNUFONE3: TStringField;
    cdsNUFAX: TStringField;
    cdsTPPESSOA: TStringField;
    cdsNUINSCEST: TStringField;
    cdsNUCNPJ: TStringField;
    cdsNUCPF: TStringField;
    cdsNUIDENTID: TStringField;
    cdsDTNASCIMENTO: TDateField;
    cdsCDSEXO: TStringField;
    cdsCDESTCIVIL: TStringField;
    cdsNMMAE: TStringField;
    cdsNMPAI: TStringField;
    cdsNMCONJUGE: TStringField;
    cdsNUAGENCIA: TStringField;
    cdsNUCNTCORRENTE: TStringField;
    cdsEMAIL: TStringField;
    cdsHOMEPAGE: TStringField;
    cdsDSOBSERVACAO: TBlobField;
    cdsDTINICIOAVALIACAO: TDateField;
    cdsDTDESCREDENCIAMENTO: TDateField;
    cdsBOAVALIACAO: TStringField;
    cdsNUDDG1: TStringField;
    cdsNUDDG2: TStringField;
    cdsDTFUNDACAO: TDateField;
    cdsNMCONTATO: TStringField;
    cdsDSNUMERO: TStringField;
    cdsDSCOMPLEMENTO: TStringField;
    cdsNMNATURALIDADE: TStringField;
    cdsNUCODIGOHISTORICOPAGTO: TIntegerField;
    cdsBOOPTANTESIMPLES: TStringField;
    cdsCDRMATIVIDADE: TIntegerField;
    cdsCDMUNICIPIO: TIntegerField;
    cdsCDTPFORNECEDOR: TIntegerField;
    cdsCDFORNECEDORANTIGO: TStringField;
    cdsDTCADASTRO: TDateField;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    edtrzsocial: TcxDBTextEdit;
    gbxComercial: TcxGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label23: TLabel;
    Label20: TLabel;
    edtnufax: TcxDBMaskEdit;
    edtnufone2: TcxDBMaskEdit;
    edtnufone1: TcxDBMaskEdit;
    edtnucxpostal: TcxDBMaskEdit;
    edtnucep: TcxDBMaskEdit;
    edtNmbairro: TcxDBTextEdit;
    edtdscomplemento: TcxDBTextEdit;
    edtdsnumero: TcxDBTextEdit;
    edtDsEndereco: TcxDBTextEdit;
    cbxcduf: TcxDBLookupComboBox;
    cbxcdmunicipio: TcxDBLookupComboBox;
    edtnufone3: TcxDBMaskEdit;
    gbxJuridica: TcxGroupBox;
    Label24: TLabel;
    lblnuinscest: TLabel;
    edtnucnpj: TcxDBMaskEdit;
    edtnuinscest: TcxDBTextEdit;
    gbxFisica: TcxGroupBox;
    Label27: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label13: TLabel;
    edtnmconjuge: TcxDBTextEdit;
    edtdtnascimento: TcxDBDateEdit;
    cbxcdestcivil: TcxDBComboBox;
    cbxcdsexo: TcxDBComboBox;
    edtnmpai: TcxDBTextEdit;
    edtnmmae: TcxDBTextEdit;
    edtnuidentid: TcxDBTextEdit;
    edtnucpf: TcxDBMaskEdit;
    rdbtppessoa: TcxDBRadioGroup;
    memdsobservacao: TcxDBMemo;
    dxBarDockControl1: TdxBarDockControl;
    cbxcdstfornecedor: TcxDBLookupComboBox;
    edtemail: TcxDBTextEdit;
    edthomepage: TcxDBTextEdit;
    cbxcdrmatividadE: TcxDBLookupComboBox;
    chk1: TcxDBCheckBox;
    Label1: TLabel;
    sdsCDUSUARIOI: TIntegerField;
    sdsCDUSUARIOA: TIntegerField;
    sdsCDCOMPUTADORI: TIntegerField;
    sdsCDCOMPUTADORA: TIntegerField;
    sdsTSINCLUSAO: TSQLTimeStampField;
    sdsTSALTERACAO: TSQLTimeStampField;
    cdsCDUSUARIOI: TIntegerField;
    cdsCDUSUARIOA: TIntegerField;
    cdsCDCOMPUTADORI: TIntegerField;
    cdsCDCOMPUTADORA: TIntegerField;
    cdsTSINCLUSAO: TSQLTimeStampField;
    cdsTSALTERACAO: TSQLTimeStampField;
    dtsitcontfornecedor: TDataSource;
    dts1: TDataSource;
    grdconsultaLevel1: TcxGridLevel;
    grdconsulta: TcxGrid;
    dtsconsulta: TDataSource;
    cdsconsulta: TClientDataSet;
    dspconsulta: TDataSetProvider;
    sdsconsulta: TSQLDataSet;
    sdsitconsulta: TSQLDataSet;
    dspitconsulta: TDataSetProvider;
    cdsitconsulta: TClientDataSet;
    dtsitconsulta: TDataSource;
    grdconsultaautpagto: TcxGridDBBandedTableView;
    grdconsultaautpagtoCDAUTPAGTO: TcxGridDBBandedColumn;
    grdconsultaautpagtoNUAUTPAGTO: TcxGridDBBandedColumn;
    grdconsultaautpagtoDTEMISSAO: TcxGridDBBandedColumn;
    grdconsultaautpagtoDTVENCIMENTO: TcxGridDBBandedColumn;
    grdconsultaautpagtoVLAUTPAGTO: TcxGridDBBandedColumn;
    grdconsultaautpagtoVLSALDO: TcxGridDBBandedColumn;
    grdconsultaautpagtoVLRECEBIDO: TcxGridDBBandedColumn;
    grdconsultaautpagtoNMSTAUTPAGTO: TcxGridDBBandedColumn;
    grdconsultaadntfornecedor: TcxGridDBBandedTableView;
    grdconsultaadntfornecedorCDADNTFORNECEDOR: TcxGridDBBandedColumn;
    grdconsultaadntfornecedorDTEMISSAO: TcxGridDBBandedColumn;
    grdconsultaadntfornecedorVLADNTFORNECEDOR: TcxGridDBBandedColumn;
    grdconsultaadntfornecedorVLSALDO: TcxGridDBBandedColumn;
    grdconsultaadntfornecedorVLUTILIZADO: TcxGridDBBandedColumn;
    grdconsultaproduto: TcxGridDBBandedTableView;
    grdconsultaprodutoCDPRODUTO: TcxGridDBBandedColumn;
    grdconsultaprodutoNMPRODUTO: TcxGridDBBandedColumn;
    grdconsultaprodutoNMTPPRODUTO: TcxGridDBBandedColumn;
    grdconsultaprodutoNUNIVEL: TcxGridDBBandedColumn;
    grdconsultaprodutoNMGRUPO: TcxGridDBBandedColumn;
    grdconsultaprodutoCDITEM: TcxGridDBBandedColumn;
    grdconsultaprodutoQTITEM: TcxGridDBBandedColumn;
    grdconsultaprodutoVLUNITARIO: TcxGridDBBandedColumn;
    grdconsultaprodutoVLTOTAL: TcxGridDBBandedColumn;
    grdconsultapedidomaterial: TcxGridDBBandedTableView;
    grdconsultapedidomaterialCDPEDIDOMATERIAL: TcxGridDBBandedColumn;
    grdconsultapedidomaterialDTEMISSAO: TcxGridDBBandedColumn;
    grdconsultapedidomaterialVLTOTAL: TcxGridDBBandedColumn;
    grdconsultapedidomaterialNMCNTCUSTO: TcxGridDBBandedColumn;
    grdconsultaordcompra: TcxGridDBBandedTableView;
    grdconsultaordcompraCDORDCOMPRA: TcxGridDBBandedColumn;
    grdconsultaordcompraDTEMISSAO: TcxGridDBBandedColumn;
    grdconsultaordcompraDTENTREGA: TcxGridDBBandedColumn;
    grdconsultaordcompraVLTOTAL: TcxGridDBBandedColumn;
    grdconsultaordcompraNMTPORDCOMPRA: TcxGridDBBandedColumn;
    grdconsultaordcompraNMCONDPAGTO: TcxGridDBBandedColumn;
    grdconsultaordcompraNMSTORDCOMPRA: TcxGridDBBandedColumn;
    grdconsultaordcompraCDPEDIDOMATERIAL: TcxGridDBBandedColumn;
    grdconsultaordcompraRZSOCIAL: TcxGridDBBandedColumn;
    grdconsultaitordcompra: TcxGridDBBandedTableView;
    grdconsultaitordcompraCDDIGITADO: TcxGridDBBandedColumn;
    grdconsultaitordcompraNMPRODUTO: TcxGridDBBandedColumn;
    grdconsultaitordcompraQTITEM: TcxGridDBBandedColumn;
    grdconsultaitordcompraVLUNITARIO: TcxGridDBBandedColumn;
    grdconsultaitordcompraVLTOTAL: TcxGridDBBandedColumn;
    grdconsultaentrada: TcxGridDBBandedTableView;
    grdconsultaentradaNUENTRADA: TcxGridDBBandedColumn;
    grdconsultaentradaDTEMISSAO: TcxGridDBBandedColumn;
    grdconsultaentradaVLTOTAL: TcxGridDBBandedColumn;
    grdconsultaentradaDTSAIDA: TcxGridDBBandedColumn;
    grdconsultaentradaNMCONDPAGTO: TcxGridDBBandedColumn;
    grdconsultaentradaVLPRODUTO: TcxGridDBBandedColumn;
    grdconsultaentradaVLFRETE: TcxGridDBBandedColumn;
    grdconsultaentradaVLBASEICMS: TcxGridDBBandedColumn;
    grdconsultaentradaVLICMS: TcxGridDBBandedColumn;
    grdconsultaentradaVLICMSSUBTRIB: TcxGridDBBandedColumn;
    grdconsultaentradaVLBASEICMSSUBTRIB: TcxGridDBBandedColumn;
    grdconsultaentradaVLIPI: TcxGridDBBandedColumn;
    grdconsultaentradaVLISS: TcxGridDBBandedColumn;
    grdconsultaitentrada: TcxGridDBBandedTableView;
    grdconsultaitentradaCDDIGITADO: TcxGridDBBandedColumn;
    grdconsultaitentradaNMPRODUTO: TcxGridDBBandedColumn;
    grdconsultaitentradaQTITEM: TcxGridDBBandedColumn;
    grdconsultaitentradaVLUNITARIO: TcxGridDBBandedColumn;
    grdconsultaitentradaVLTOTAL: TcxGridDBBandedColumn;
    grdconsultaitentradaVLBASEICMS: TcxGridDBBandedColumn;
    grdconsultaitentradaALICMS: TcxGridDBBandedColumn;
    grdconsultaitentradaVLICMS: TcxGridDBBandedColumn;
    grdconsultaitentradaVLIPI: TcxGridDBBandedColumn;
    grdconsultaLevel4: TcxGridLevel;
    edtNUDDG1: TcxDBMaskEdit;
    edtNUDDG2: TcxDBMaskEdit;
    actimprimircontato: TAction;
    dxBarButton4: TdxBarButton;
    sdsBOCRITICO: TStringField;
    cdsBOCRITICO: TStringField;
    sdsBONENVIARPDF: TStringField;
    cdsBONENVIARPDF: TStringField;
    actabrirordcompra: TAction;
    actabrirpedidomaterial: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    sdsNUPONTUACAOIQF: TFloatField;
    cdsNUPONTUACAOIQF: TFloatField;
    sdsCDPAIS: TIntegerField;
    cdsCDPAIS: TIntegerField;
    lbl2: TLabel;
    cbxcdpais: TcxDBLookupComboBox;
    grdconsultaentradaNUDOCFISCALICMS: TcxGridDBBandedColumn;
    sdsCDPLCONTA: TIntegerField;
    sdsNUPLCONTA: TStringField;
    cdsCDPLCONTA: TIntegerField;
    cdsNUPLCONTA: TStringField;
    tbsFinanceiro: TcxTabSheet;
    lblnucntcontabil: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label33: TLabel;
    Label19: TLabel;
    edtNUCNTCORRENTE: TcxDBTextEdit;
    edtnuagencia: TcxDBTextEdit;
    cbxcdbanco: TcxDBLookupComboBox;
    edtNUCODIGOHISTORICOPAGTO: TcxDBTextEdit;
    edtNUCNTCONTABIL: TcxDBTextEdit;
    txtnmplconta: TcxDBLabel;
    edtnuplconta: TcxDBButtonEdit;
    lblplconta: TLabel;
    sdsNMPLCONTA: TStringField;
    cdsNMPLCONTA: TStringField;
    Label4: TLabel;
    cbxcdtpregime: TcxDBLookupComboBox;
    sdsCDTPREGIME: TIntegerField;
    cdsCDTPREGIME: TIntegerField;
    lblcntcusto: TLabel;
    sdsCDCNTCUSTO: TIntegerField;
    cdsCDCNTCUSTO: TIntegerField;
    sdsitpreselecaofornecedor: TSQLDataSet;
    cdsitpreselecaofornecedor: TClientDataSet;
    dtsitpreselecaofornecedor: TDataSource;
    sdsitpreselecaofornecedorCDITPRESELECAOFORNECEDOR: TIntegerField;
    sdsitpreselecaofornecedorCDPRESELECAOFORNECEDOR: TIntegerField;
    sdsitpreselecaofornecedorCDUSUARIOI: TIntegerField;
    sdsitpreselecaofornecedorCDUSUARIOA: TIntegerField;
    sdsitpreselecaofornecedorCDCOMPUTADORI: TIntegerField;
    sdsitpreselecaofornecedorCDCOMPUTADORA: TIntegerField;
    sdsitpreselecaofornecedorTSINCLUSAO: TSQLTimeStampField;
    sdsitpreselecaofornecedorTSALTERACAO: TSQLTimeStampField;
    cdsitpreselecaofornecedorCDITPRESELECAOFORNECEDOR: TIntegerField;
    cdsitpreselecaofornecedorCDPRESELECAOFORNECEDOR: TIntegerField;
    cdsitpreselecaofornecedorCDUSUARIOI: TIntegerField;
    cdsitpreselecaofornecedorCDUSUARIOA: TIntegerField;
    cdsitpreselecaofornecedorCDCOMPUTADORI: TIntegerField;
    cdsitpreselecaofornecedorCDCOMPUTADORA: TIntegerField;
    cdsitpreselecaofornecedorTSINCLUSAO: TSQLTimeStampField;
    cdsitpreselecaofornecedorTSALTERACAO: TSQLTimeStampField;
    grdconsultaautpagtoDTBAIXA: TcxGridDBBandedColumn;
    tbsiqf: TcxTabSheet;
    lblclfornecedor: TLabel;
    cbxcdclfornecedor: TcxDBLookupComboBox;
    lbl1: TLabel;
    lblnupontuacaoiqf: TcxDBLabel;
    chkbocritico: TcxDBCheckBox;
    bvl2: TBevel;
    pgciqf: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    sdshclfornecedor: TSQLDataSet;
    cdshclfornecedor: TClientDataSet;
    dtshclfornecedor: TDataSource;
    sdshclfornecedorCDHCLFORNECEDOR: TIntegerField;
    sdshclfornecedorCDCLFORNECEDOR: TIntegerField;
    sdshclfornecedorVLIQF: TIntegerField;
    sdshclfornecedorCDUSUARIOI: TIntegerField;
    sdshclfornecedorCDUSUARIOA: TIntegerField;
    sdshclfornecedorCDCOMPUTADORI: TIntegerField;
    sdshclfornecedorCDCOMPUTADORA: TIntegerField;
    sdshclfornecedorTSINCLUSAO: TSQLTimeStampField;
    sdshclfornecedorTSALTERACAO: TSQLTimeStampField;
    cdssdshclfornecedor: TDataSetField;
    cdshclfornecedorCDHCLFORNECEDOR: TIntegerField;
    cdshclfornecedorCDCLFORNECEDOR: TIntegerField;
    cdshclfornecedorVLIQF: TIntegerField;
    cdshclfornecedorCDUSUARIOI: TIntegerField;
    cdshclfornecedorCDUSUARIOA: TIntegerField;
    cdshclfornecedorCDCOMPUTADORI: TIntegerField;
    cdshclfornecedorCDCOMPUTADORA: TIntegerField;
    cdshclfornecedorTSINCLUSAO: TSQLTimeStampField;
    cdshclfornecedorTSALTERACAO: TSQLTimeStampField;
    grdhclfornecedorDBTableView1: TcxGridDBTableView;
    grdhclfornecedorLevel1: TcxGridLevel;
    grdhclfornecedor: TcxGrid;
    grdhclfornecedorDBTableView1CDCLFORNECEDOR: TcxGridDBColumn;
    grdhclfornecedorDBTableView1TSAVALIACAO: TcxGridDBColumn;
    grdhclfornecedorDBTableView1VLIQF: TcxGridDBColumn;
    tbspreselecao: TcxTabSheet;
    grditpreselecaofornecedor: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2CDPRESELECAOFORNECEDOR: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    grdhclfornecedorDBTableView1DSOBSERVACAO: TcxGridDBColumn;
    grdhclfornecedorDBTableView1CDUSUARIOI: TcxGridDBColumn;
    sdshclfornecedorCDORDCOMPRA: TIntegerField;
    cdshclfornecedorCDORDCOMPRA: TIntegerField;
    grdhclfornecedorDBTableView1CDORDCOMPRA: TcxGridDBColumn;
    sdshclfornecedorTSAVALIACAO: TSQLTimeStampField;
    cdshclfornecedorTSAVALIACAO: TSQLTimeStampField;
    actabrirordcomprahclfornecedor: TAction;
    grdconsultaautpagtoNUCOR: TcxGridDBBandedColumn;
    ckbbocteseguradora: TcxDBCheckBox;
    sdsBOCTESEGURADORA: TStringField;
    cdsBOCTESEGURADORA: TStringField;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    Label6: TLabel;
    edtdtcadastro: TcxDBDateEdit;
    cbxcdtpfornecedor: TcxDBLookupComboBox;
    lblcdtpfornecedor: TLabel;
    sdshclfornecedorDSOBSERVACAO: TStringField;
    cdshclfornecedorDSOBSERVACAO: TStringField;
    actproduto: TAction;
    actopcoes: TAction;
    btnopcoes: TdxBarLargeButton;
    pumopcoes: TdxBarPopupMenu;
    dxBarButton3: TdxBarButton;
    sdsNUCNTCONTABIL: TStringField;
    cdsNUCNTCONTABIL: TStringField;
    grdconsultaentradaCDCFOP: TcxGridDBBandedColumn;
    grdconsultaitentradaCDCFOP: TcxGridDBBandedColumn;
    grdconsultaitentradaNUSTICMS: TcxGridDBBandedColumn;
    lblCDINDIEDEST: TLabel;
    cbxcdindiedest: TcxDBLookupComboBox;
    lblnuinscest2: TLabel;
    edtnuinscest2: TcxDBTextEdit;
    Label12: TLabel;
    cbxCDINDIEDEST2: TcxDBLookupComboBox;
    sdsCDINDIEDEST: TIntegerField;
    cdsCDINDIEDEST: TIntegerField;
    edtnucntcusto: TcxDBButtonEdit;
    txtnmcntcusto: TcxDBLabel;
    sdsNUCNTCUSTO: TStringField;
    sdsNMCNTCUSTO: TStringField;
    cdsNUCNTCUSTO: TStringField;
    cdsNMCNTCUSTO: TStringField;
    actitcontfornecedor: TAction;
    dxBarButton5: TdxBarButton;
    actitfornecedoremail: TAction;
    dxBarButton6: TdxBarButton;
    chkbonenviarpdf: TcxDBCheckBox;
    sdsCDFORNECEDOR: TLargeintField;
    sdsCDEMPRESA: TLargeintField;
    cdsCDFORNECEDOR: TLargeintField;
    cdsCDEMPRESA: TLargeintField;
    cdssdsitpreselecaofornecedor: TDataSetField;
    sdsitpreselecaofornecedorCDFORNECEDOR: TLargeintField;
    sdsitpreselecaofornecedorCDEMPRESA: TLargeintField;
    cdsitpreselecaofornecedorCDFORNECEDOR: TLargeintField;
    cdsitpreselecaofornecedorCDEMPRESA: TLargeintField;
    sdshclfornecedorCDFORNECEDOR: TLargeintField;
    sdshclfornecedorCDEMPRESA: TLargeintField;
    cdshclfornecedorCDFORNECEDOR: TLargeintField;
    cdshclfornecedorCDEMPRESA: TLargeintField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actImpCadGExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure actabrirentradaExecute(Sender: TObject);
    procedure actabrirautpagtoExecute(Sender: TObject);
    procedure actabriradntfornecedorExecute(Sender: TObject);
    procedure actabrirsaidaExecute(Sender: TObject);
    procedure actconsultaentradaExecute(Sender: TObject);
    procedure actconsultaautpagtoExecute(Sender: TObject);
    procedure actconsultaadntfornecedorExecute(Sender: TObject);
    procedure actconsultasaidaExecute(Sender: TObject);
    procedure actabrirprodutoExecute(Sender: TObject);
    procedure grditconsultaDblClick(Sender: TObject);
    procedure actconsultaPedidoMaterialExecute(Sender: TObject);
    procedure actimprimirhistoricoClassificacaoExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actconsultaordcompraExecute(Sender: TObject);
    procedure actconsultaprodutoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure cdsAfterScroll(DataSet: TDataSet);
    procedure cdsBeforePost(DataSet: TDataSet);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure edtnomeExit(Sender: TObject);
    procedure cdsNewRecord(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure cbxcdufExit(Sender: TObject);
    procedure rdbtppessoaPropertiesChange(Sender: TObject);
    procedure actimprimircontatoExecute(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdconsultaentradaDblClick(Sender: TObject);
    procedure grdconsultaprodutoDblClick(Sender: TObject);
    procedure grdconsultaautpagtoDblClick(Sender: TObject);
    procedure grdconsultaordcompraDblClick(Sender: TObject);
    procedure actabrirordcompraExecute(Sender: TObject);
    procedure grdconsultapedidomaterialDblClick(Sender: TObject);
    procedure actabrirpedidomaterialExecute(Sender: TObject);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNUPLCONTAValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdclfornecedorEnter(Sender: TObject);
    procedure cbxcdstfornecedorEnter(Sender: TObject);
    procedure dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
    procedure cdsNUFONE1Validate(Sender: TField);
    procedure cdsNUFONE2Validate(Sender: TField);
    procedure cdsNUFONE3Validate(Sender: TField);
    procedure cdsNUFAXValidate(Sender: TField);
    procedure cdsitcontfornecedorNUFONE1Validate(Sender: TField);
    procedure cdsNMFORNECEDORValidate(Sender: TField);
    procedure cdsitpreselecaofornecedorBeforePost(DataSet: TDataSet);
    procedure cdsitpreselecaofornecedorNewRecord(DataSet: TDataSet);
    procedure cdshclfornecedorNewRecord(DataSet: TDataSet);
    procedure cdshclfornecedorBeforePost(DataSet: TDataSet);
    procedure grdhclfornecedorDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdhclfornecedorDBTableView1DblClick(Sender: TObject);
    procedure actabrirordcomprahclfornecedorExecute(Sender: TObject);
    procedure grdconsultaautpagtoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cbxcdrmatividadEEnter(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsDTNASCIMENTOValidate(Sender: TField);
    procedure cdsNUCNPJValidate(Sender: TField);
    procedure cdsNUCPFValidate(Sender: TField);
    procedure cdsNUCEPValidate(Sender: TField);
    procedure cdsCDUFValidate(Sender: TField);
    procedure actprodutoExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure cdsCDINDIEDESTValidate(Sender: TField);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure cdsNUCNTCUSTOValidate(Sender: TField);
    procedure actitcontfornecedorExecute(Sender: TObject);
    procedure actitfornecedoremailExecute(Sender: TObject);
  private      { Private declarations }
    fornecedor : TFornecedor;
    cdclfornecedor : string;
    procedure setNuinscestVisible;
    procedure setempresa;
    procedure SetQuery(tbl:string);
    procedure set_mascara_numero_fone_de_acordo_com_estado;
    procedure set_abrirtabela;
    procedure SetQueryBotaoAtivo;
  public  { Public declarations }
    registro : TRegistro;
    function  Abrir(codigo:LargeInt):boolean;
  end;

var
  frmfornecedor: Tfrmfornecedor;

implementation

uses uDtmMain,
  uMain,
  uimprimirrelatoriopadrao,
  ucartacorrecao,
  uMenuRelatorio,
  udlgtabela;

{$R *.DFM}

const
  tbl      = 'fornecedor';
  exibe    = 'Fornecedor';
  artigoI  = 'o';

procedure TFrmFornecedor.set_mascara_numero_fone_de_acordo_com_estado;
begin
  if BooleandoCodigo(_uf, cdsCDUF.AsString, _bodigito9) then
  begin
    edtnufone1.Properties.EditMask := _99_99999_9999;
    edtnufone2.Properties.EditMask := _99_99999_9999;
    edtnufone3.Properties.EditMask := _99_99999_9999;
    edtnufax.Properties.EditMask   := _99_99999_9999;
  end
  else
  begin
    edtnufone1.Properties.EditMask := _99_9999_9999;
    edtnufone2.Properties.EditMask := _99_9999_9999;
    edtnufone3.Properties.EditMask := _99_9999_9999;
    edtnufax.Properties.EditMask   := _99_9999_9999;
  end;
end;

procedure TFrmFornecedor.setempresa;
begin
  lblnucntcontabil.Visible := Empresa.bocodigocontabil;
  edtNUCNTCONTABIL.Visible := Empresa.bocodigocontabil;
  tbsconsulta.tabvisible   := Empresa.fornecedor.boconsulta;
  lblrmatividade.Visible   := Empresa.fornecedor.bormatividade;
  cbxcdrmatividadE.Visible := empresa.fornecedor.bormatividade;
  lblplconta.Visible       := empresa.financeiro.boplconta;
  edtnuplconta.Visible     := empresa.financeiro.boplconta;
  txtnmplconta.Visible     := empresa.financeiro.boplconta;
  edtnucntcusto.Visible    := empresa.financeiro.bocntcusto;
  lblcntcusto.Visible      := empresa.financeiro.bocntcusto;
  tbsiqf.TabVisible        := Empresa.fornecedor.iqf.bo;
end;

procedure TfrmFornecedor.setNuinscestVisible;
begin
  edtnuinscest2.visible := cdsCDINDIEDEST.asinteger <> 2;
  lblnuinscest2.visible := cdsCDINDIEDEST.asinteger <> 2;
  edtnuinscest.visible := cdsCDINDIEDEST.asinteger <> 2;
  lblnuinscest.visible := cdsCDINDIEDEST.asinteger <> 2;
end;

function Tfrmfornecedor.Abrir(codigo:LargeInt):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmFornecedor.SetQueryBotaoAtivo;
begin
  if btnentrada.Down then
  begin
    setquery(_entrada);
  end
  else if btnautpagto.Down then
  begin
    setquery(_autpagto);
  end
  else if btnadntfornecedor.Down then
  begin
    setquery(_adntfornecedor);
  end
  else if btnsaida.Down then
  begin
    setquery(_saida);
  end
  else if btnproduto.Down then
  begin
    setquery(_produto);
  end
  else if btnordcompra.Down then
  begin
    setquery(_ordcompra);
  end
  else if btnpedidomaterial.Down then
  begin
    setquery(_pedidomaterial);
  end;
end;

procedure Tfrmfornecedor.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure Tfrmfornecedor.actNovoExecute(Sender: TObject);
begin
  if registro.Novo(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure Tfrmfornecedor.actSalvarExecute(Sender: TObject);
var
  dsmotivo : string;
begin
  if (not VarIsNull(cbxcdclfornecedor.EditValue)) and (FloatToStr(cbxcdclfornecedor.EditValue) <> cdclfornecedor) then
  begin
    if getMotivoAlteracaoIQF(dsmotivo) then // solicitar motivo de alteracao de classificacao
    begin
      cdclfornecedor            := FloatToStr(cbxcdclfornecedor.EditValue);
      cdsNUPONTUACAOIQF.AsFloat := CurrencydoCodigo(_clfornecedor, FloatToStr(cbxcdclfornecedor.EditValue), _vl+_maximo);
      cdshclfornecedor.Insert;
      cdshclfornecedorCDCLFORNECEDOR.AsString := FloatToStr(cbxcdclfornecedor.EditValue);
      cdshclfornecedorTSAVALIACAO.AsDateTime  := tsBanco;
      cdshclfornecedorVLIQF.AsFloat           := cdsNUPONTUACAOIQF.AsFloat;
      cdshclfornecedorDSOBSERVACAO.AsString   := dsmotivo;
      cdshclfornecedor.Post;
    end
    else
    begin
      if cdclfornecedor = '' then
      begin
        cdsCDCLFORNECEDOR.Clear
      end
      else
      begin
        cdsCDCLFORNECEDOR.AsString := cdclfornecedor;
      end;
    end;
  end;
  if registro.salvar then
  begin
    edtcodigo.SetFocus;
  end;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;
end;

procedure Tfrmfornecedor.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmFornecedor.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmfornecedor.actCancelarExecute(Sender: TObject);
begin
  if registro.cancelar then
  begin
    registro.dados_atual;
  end;
  TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet).Filtered := False;  
end;

procedure Tfrmfornecedor.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure Tfrmfornecedor.edtCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  registro.codigoKeypress(sender, key, actnovo.enabled);
end;

procedure TfrmFornecedor.rdbtppessoaPropertiesChange(Sender: TObject);
begin
  TQForm.ConfigurarRDBTpPessoaPropertiesChange(rdbtppessoa, gbxJuridica, lblrzsocial, gbxFisica);
end;

procedure Tfrmfornecedor.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure Tfrmfornecedor.FormShow(Sender: TObject);
begin
  fornecedor := TFornecedor.create;
  setempresa;
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure Tfrmfornecedor.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure Tfrmfornecedor.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure Tfrmfornecedor.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure Tfrmfornecedor.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure Tfrmfornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmMain.bmg.Unmerge(bmg1);
  Action := caFree;
end;

procedure Tfrmfornecedor.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(cds, key);
end;

procedure Tfrmfornecedor.actImpCadGExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(320, cds.FieldByName(_CDFORNECEDOR).asstring);
end;

procedure Tfrmfornecedor.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmFornecedor.actabrirentradaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmFornecedor.actabrirautpagtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmFornecedor.actabriradntfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmFornecedor.actabrirsaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmFornecedor.actconsultaentradaExecute(Sender: TObject);
begin
  SetQuery(_entrada);
end;

procedure TfrmFornecedor.actconsultaautpagtoExecute(Sender: TObject);
begin
  SetQuery(_autpagto);
end;

procedure TfrmFornecedor.actconsultaadntfornecedorExecute(Sender: TObject);
begin
  SetQuery(_adntfornecedor);
end;

procedure TfrmFornecedor.actconsultasaidaExecute(Sender: TObject);
begin
  SetQuery(_saida);
end;

procedure TfrmFornecedor.actabrirprodutoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmFornecedor.grditconsultaDblClick(Sender: TObject);
begin
  actabrirproduto.onExecute(actabrirproduto);
end;

procedure TfrmFornecedor.actconsultaPedidoMaterialExecute(Sender: TObject);
begin
  SetQuery(_pedidomaterial);
end;

procedure TfrmFornecedor.actimprimirhistoricoClassificacaoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(322, cds.FieldByName(_CDFORNECEDOR).asstring);
end;

procedure TfrmFornecedor.actitcontfornecedorExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itcontfornecedor))), cds.FieldByName(_cdfornecedor).AsLargeInt, _cdfornecedor);
end;

procedure TfrmFornecedor.actitfornecedoremailExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itfornecedoremail))), cds.FieldByName(_cdfornecedor).AsLargeInt, _cdfornecedor);
end;

procedure TfrmFornecedor.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmFornecedor.actconsultaordcompraExecute(Sender: TObject);
begin
  SetQuery(_ordcompra);
end;

procedure TfrmFornecedor.actconsultaprodutoExecute(Sender: TObject);
begin
  SetQuery(_produto);
end;

procedure TfrmFornecedor.FormDestroy(Sender: TObject);
begin
  fornecedor.free;
  registro.destroy;  
end;

procedure TfrmFornecedor.SetQuery(tbl:string);
var
  sql, sql2 : string;
begin
  sql2 := '';
  cdsconsulta.Close;
  cdsitconsulta.Close;
  if cds.FieldByName(_CDFORNECEDOR).asstring = '' then
  begin
    exit;
  end;
  grdconsultaLevel4.Visible := False;
  if tbl = _ordcompra then
  begin
    sql := 'SELECT o.cdordcompra'+
                 ',o.DTEMISSAO'+
                 ',o.dtentrega'+
                 ',o.vltotal'+
                 ',t.nmtpordcompra'+
                 ',c.nmcondpagto'+
                 ',s.nmstordcompra'+
                 ',o.cdpedidomaterial'+
                 ',f.rzsocial '+
           'FROM ordcompra o '+
           'left join tpordcompra t on o.cdempresa=t.cdempresa and t.cdtpordcompra=o.cdtpordcompra '+
           'left join condpagto c on c.cdempresa=o.cdempresa and c.cdcondpagto=o.cdcondpagto '+
           'left join stordcompra s on s.cdstordcompra=o.cdstordcompra '+
           'left join fornecedor f on f.cdempresa=o.cdempresa and f.cdfornecedor=o.cdfornecedortransportadora '+
           'where o.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and o.cdfornecedor='+cds.FieldByName(_CDFORNECEDOR).asstring;
    sql2:= 'SELECT o.CDORDCOMPRA'+
                 ',i.CDDIGITADO'+
                 ',p.NMPRODUTO'+
                 ',i.QTITEM'+
                 ',i.VLUNITARIO'+
                 ',i.VLTOTAL '+
           'FROM ORDCOMPRA o '+
           'inner join itordcompra i on i.cdempresa=o.cdempresa and i.cdordcompra=o.cdordcompra '+
           'inner JOIN PRODUTO p ON p.cdempresa=i.cdempresa and P.CDPRODUTO=I.CDPRODUTO '+
           'where o.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and o.cdfornecedor='+cds.FieldByName(_CDFORNECEDOR).asstring;
    grdconsultaLevel1.GridView := grdconsultaordcompra;
    grdconsultaLevel4.GridView := grdconsultaitordcompra;
  end
  else if tbl = _entrada then
  begin
    sql := 'SELECT e.CDENTRADA'+
                 ',e.NUENTRADA'+
                 ',e.DTEMISSAO'+
                 ',e.nudocfiscalicms'+
                 ',e.dtsaida'+
                 ',e.cdcfop'+
                 ',c.nmcondpagto'+
                 ',e.vlproduto'+
                 ',e.VLTOTAL'+
                 ',e.vlfrete'+
                 ',e.vlbaseicms'+
                 ',e.vlicms'+
                 ',e.vlicmssubtrib'+
                 ',e.vlbaseicmssubtrib'+
                 ',e.vlipi'+
                 ',e.vliss '+
           'FROM ENTRADA e '+
           'left join condpagto c on c.cdempresa=e.cdempresa and c.cdcondpagto=e.cdcondpagto '+
           'where e.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and e.cdfornecedor='+cds.FieldByName(_CDFORNECEDOR).asstring;
    sql2:= 'SELECT i.CDENTRADA'+
                 ',i.CDDIGITADO'+
                 ',p.NMPRODUTO'+
                 ',i.cdcfop'+
                 ',i.nusticms'+
                 ',i.QTITEM'+
                 ',i.VLUNITARIO'+
                 ',i.VLTOTAL'+
                 ',i.vlbaseicms'+
                 ',i.alicms'+
                 ',i.vlicms'+
                 ',i.vlipi '+
           'FROM ENTRADA e '+
           'inner join itentrada i on i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada '+
           'LEFT JOIN PRODUTO p ON p.cdempresa=i.cdempresa and P.CDPRODUTO=i.CDPRODUTO '+
           'where e.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and e.cdfornecedor='+cds.FieldByName(_CDFORNECEDOR).asstring;
    grdconsultaLevel1.GridView := grdconsultaentrada;
    grdconsultaLevel4.GridView := grdconsultaitentrada;
  end
  else if tbl = _saida then
  begin
    sql := 'SELECT s.CDsaida cdentrada '+
                 ',s.NUsaida nuENTRADA'+
                 ',s.nudocfiscalicms'+
                 ',s.DTEMISSAO'+
                 ',s.dtsaida'+
                 ',S.CDCFOP'+
                 ',c.nmcondpagto'+
                 ',s.vlproduto'+
                 ',s.VLTOTAL'+
                 ',s.vlfrete'+
                 ',s.vlbaseicms'+
                 ',s.vlicms'+
                 ',s.vlicmssubtrib'+
                 ',s.vlbaseicmssubtrib'+
                 ',s.vlipi'+
                 ',s.vliss '+
           'FROM saida s '+
           'left join condpagto c on c.cdempresa=s.cdempresa and c.cdcondpagto=s.cdcondpagto '+
           'where s.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and s.cdfornecedor='+cds.FieldByName(_CDFORNECEDOR).asstring;
    sql2:= 'SELECT i.CDsaida cdENTRADA'+
                 ',i.CDDIGITADO'+
                 ',p.NMPRODUTO'+
                 ',i.QTITEM'+
                 ',I.CDCFOP'+
                 ',I.NUSTICMS'+
                 ',i.VLUNITARIO'+
                 ',i.VLTOTAL'+
                 ',i.vlbaseicms'+
                 ',i.alicms'+
                 ',i.vlicms'+
                 ',i.vlipi'+
                 ',i.vliss '+
           'FROM saida s '+
           'inner join itsaida i on i.cdempresa=s.cdempresa and i.cdsaida=s.cdsaida '+
           'LEFT JOIN PRODUTO p ON p.cdempresa=i.cdempresa and P.CDPRODUTO=i.CDPRODUTO '+
           'where s.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and s.cdfornecedor='+cds.FieldByName(_CDFORNECEDOR).asstring;
    grdconsultaLevel1.GridView := grdconsultaentrada;
    grdconsultaLevel4.GridView := grdconsultaitentrada;
  end
  else if tbl = _autpagto then
  begin
    sql := 'SELECT CDAUTPAGTO'+
                 ',NUAUTPAGTO'+
                 ',DTEMISSAO'+
                 ',DTVENCIMENTO,DTBAIXA'+
                 ',VLAUTPAGTO'+
                 ',VLSALDO'+
                 ',VLRECEBIDO'+
                 ',S.NUCOR'+
                 ',NMSTAUTPAGTO '+
           'FROM AUTPAGTO A '+
           'LEFT JOIN STAUTPAGTO S ON S.CDSTAUTPAGTO=A.CDSTAUTPAGTO '+
           'WHERE cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and CDFORNECEDOR='+cds.FieldByName(_CDFORNECEDOR).asstring;
    grdconsultaLevel1.GridView := grdconsultaautpagto;
  end
  else if tbl = _adntfornecedor then
  begin
    sql := 'SELECT CDADNTFORNECEDOR'+
                 ',DTEMISSAO'+
                 ',DTENTRADA'+
                 ',VLADNTFORNECEDOR'+
                 ',VLSALDO'+
                 ',VLUTILIZADO '+
           'FROM ADNTFORNECEDOR '+
           'WHERE CDFORNECEDOR='+cds.FieldByName(_CDFORNECEDOR).asstring;
    grdconsultaLevel1.GridView := grdconsultaadntfornecedor;
  end
  else if tbl = _pedidomaterial then
  begin
    sql := 'select p.cdpedidomaterial'+
                 ',p.dtemissao'+
                 ',p.vltotal'+
                 ',c.nmcntcusto '+
           'from pedidomaterial p '+
           'left join itpedidomaterial im on im.cdempresa=p.cdempresa and im.cdpedidomaterial=p.cdpedidomaterial '+
           'left join cntcusto c on c.cdempresa=im.cdempresa and c.cdcntcusto=im.cdcntcusto '+
           'inner join itpedidomaterialfornecedor i on im.cditpedidomaterial=i.cditpedidomaterial '+
           'WHERE i.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and I.CDFORNECEDOR='+cds.FieldByName(_CDFORNECEDOR).asstring;
    grdconsultaLevel1.GridView := grdconsultapedidomaterial;
  end
  else if tbl = _produto then
  begin
    sql := 'SELECT p.cdproduto'+
                 ',p.nmproduto'+
                 ',t.nmtpproduto'+
                 ',g.nunivel'+
                 ',g.nmgrupo'+
                 ',p.cditem'+
                 ',SUM(I.QTITEM) QTITEM'+
                 ',AVG(I.VLUNITARIO) VLUNITARIO'+
                 ',SUM(I.VLTOTAL) VLTOTAL '+
           'FROM entrada e '+
           'LEFT JOIN ITENTRADA i ON i.cdempresa=e.cdempresa and I.cdentrada=e.cdentrada '+
           'LEFT JOIN produto p ON i.cdempresa=p.cdempresa and i.cdproduto=p.cdproduto '+
           'left join tpproduto t on t.cdempresa=p.cdempresa and t.cdtpproduto=p.cdtpproduto '+
           'left join grupo g on g.cdempresa=p.cdempresa and g.cdgrupo=p.cdgrupo '+
           'WHERE e.cdempresa='+cds.fieldbyname(_cdempresa).asstring+' and E.CDFORNECEDOR='+cds.FieldByName(_CDFORNECEDOR).asstring+' '+
           'GROUP BY p.cdproduto,p.nmproduto,t.nmtpproduto,g.nunivel,g.nmgrupo,p.cditem';
    grdconsultaLevel1.GridView := grdconsultaproduto;
  end;
  sdsconsulta.CommandText := sql;
  cdsconsulta.SetProvider(dspconsulta);
  cdsconsulta.Open;
  if sql2 <> '' then
  begin
    grdconsultaLevel4.Visible := true;
    sdsitconsulta.CommandText := sql2;
    cdsitconsulta.SetProvider(dspitconsulta);
    cdsitconsulta.Open;
  end;
end;

procedure TfrmFornecedor.FormDeactivate(Sender: TObject);
begin
  frmMain.bmg.Unmerge(bmg1);
end;

procedure TfrmFornecedor.cdsAfterScroll(DataSet: TDataSet);
begin
  fornecedor.select(cds);
  //registro.setStatus(tbl, cds);
  setNuinscestVisible;
  SetQueryBotaoAtivo;
  cbxcdufExit(cbxcduf);
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmFornecedor.cdsBeforePost(DataSet: TDataSet);
begin
  if Copy(cdsRZSOCIAL.AsString, 1, 1) = ' ' then
  begin
    MessageDlg('Razão Social não pode conter espaço no início.'#13'Altere a razão social para poder continuar.', mtInformation, [mbOK], 0);
    cdsRZSOCIAL.FocusControl;
    Abort;
  end;
  ConsisteCNPJ(dataset, tbl, exibe, empresa.fornecedor.BOCNPJrepetido);
  ConsisteCPF (dataset, tbl, exibe, empresa.fornecedor.BOCNPJrepetido);
  if cdsTPPESSOA.AsString = _J then
  begin
    if empresa.fornecedor.bocnpjobrigatorio and
      ((cdsCDPAIS.AsInteger = _nscpais) or
      (cdsCDPAIS.asstring = '')) then
    begin
      if (cdsNUCNPJ.asstring = '') or (cdsNUCNPJ.asstring = _cnpj_vazio) then
      begin
        gbxJuridica.BringToFront;
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CNPJ]), mtinformation, [mbok], 0);
        cdsNUCNPJ.FocusControl;
        abort;
      end;
      if (cdsCDINDIEDEST.asinteger = 1) and (cdsNUINSCEST.AsString = '') then
      begin
        gbxJuridica.BringToFront;
        messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Inscricao_estadual]), mtinformation, [mbok], 0);
        cdsNUINSCEST.FocusControl;
        abort;
      end;
    end;
    cdsNUCPF.Clear;
    cdsNUIDENTID.clear;
    cdsDTNASCIMENTO.clear;
    cdsNMMAE.Clear;
    cdsNMPAI.clear;
    cdsCDSEXO.clear;
    cdsCDESTCIVIL.clear;
    cdsNMCONJUGE.clear;
  end
  else if cdsTPPESSOA.AsString = _F then // Pessoa Física - obrigatóriedade de CPF
  begin
    if empresa.fornecedor.bocpfobrigatorio and ((cdsNUCPF.asstring = '') or (cdsNUCPF.asstring = _cpf_vazio)) then
    begin
      gbxFisica.BringToFront;
      cdsNUCPF.FocusControl;
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_CPF]), mtinformation, [mbok], 0);
      Abort;
    end;
    cdsNUCNPJ.Clear;
  end;
  ConsisteInscricaoEstadual(dataset, gbxjuridica, gbxfisica, TEdit(edtnuinscest), tedit(edtnuinscest2), pgc);
  if not cdsDTCADASTRO.IsNull then
  begin
    if cdsDTCADASTRO.AsDateTime > dtbanco then
    begin
      messagedlg('Data do Cadastro do Fornecedor não pode ser maior do que a data atual.'#13'Digite outra data para continuar.', mtinformation, [mbok], 0);
      cdsDTCADASTRO.FocusControl;
      abort;
    end;
  end
  else
  begin
    cdsDTCADASTRO.AsDateTime := dtbanco;
  end;
  registro.set_update(cds);
end;

procedure TfrmFornecedor.cdsCDINDIEDESTValidate(Sender: TField);
begin
  setnuinscestVisible;
  if sender.asinteger = 2 then
  begin
    sender.dataset.fieldbyname(_nuinscest).clear;
  end;
end;

procedure TfrmFornecedor.cdsCDUFValidate(Sender: TField);
begin
  set_mascara_numero_fone_de_acordo_com_estado;
end;

procedure TfrmFornecedor.edtnomePropertiesChange(Sender: TObject);
begin
  if cds.FieldByName(_CDFORNECEDOR).AsLargeInt > 0 then
  begin
    pnl.Caption := exibe+' '+ cds.FieldByName(_CDFORNECEDOR).asstring + ' - ' + edtnome.Text;
  end;
end;

procedure TfrmFornecedor.edtnomeExit(Sender: TObject);
begin
  colorexit(sender);
  if ((cds.State = dsedit) or (cds.State = dsinsert)) and cdsRZSOCIAL.IsNull and (not cdsNMfornecedor.isnull) then
  begin
    cdsRZSOCIAL.asstring := cdsNMfornecedor.asstring;
  end;
end;

procedure TfrmFornecedor.cdsNewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName(_cdpais).asinteger := _nscpais;
  registro.NewRecord;
  cdsCDSTFORNECEDOR.AsInteger := qregistro.Codigo_status_novo(tbl);
  cdsTPPESSOA.asstring := _J;
  cdsDTCADASTRO.AsDateTime := dtbanco;
end;

procedure TfrmFornecedor.dtsStateChange(Sender: TObject);
begin
  //registro.StateChange;
  if (dts.State = dsinsert) or (dts.State = dsedit) then
  begin
    cdclfornecedor := cdsCDCLFORNECEDOR.AsString; 
  end;
end;

procedure TfrmFornecedor.cbxcdufExit(Sender: TObject);
begin
  if not (sender = nil) then
  begin
    colorexit(Sender);
  end;
  if ((cds.State = dsinsert) or (cds.State = dsedit)) and cbxcduf.DataBinding.IsDataAvailable then
  begin
    dtmMain.Municipio_Filtro_(cbxcduf.DataBinding.Field.AsString, TClientDataSet(cbxcdmunicipio.Properties.ListSource.DataSet)); //dtmmain.cdsmunicipio);
  end;
end;

procedure TfrmFornecedor.actimprimircontatoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(335, cds.FieldByName(_CDFORNECEDOR).AsString);
end;

procedure TfrmFornecedor.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmFornecedor.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmFornecedor.nextcontrol(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    Key := VK_TAB;
  end;
end;

procedure TfrmFornecedor.grdconsultaentradaDblClick(Sender: TObject);
begin
  actabrirentradaExecute(actabrirentrada);
end;

procedure TfrmFornecedor.grdconsultaprodutoDblClick(Sender: TObject);
begin
  actabrirprodutoExecute(actabrirproduto);
end;

procedure TfrmFornecedor.grdconsultaautpagtoDblClick(Sender: TObject);
begin
  actabrirautpagtoExecute(actabrirautpagto);
end;

procedure TfrmFornecedor.grdconsultaordcompraDblClick(Sender: TObject);
begin
  actabrirordcompraExecute(actabrirordcompra);
end;

procedure TfrmFornecedor.actabrirordcompraExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmFornecedor.grdconsultapedidomaterialDblClick(Sender: TObject);
begin
  actabrirpedidomaterialExecute(actabrirpedidomaterial);
end;

procedure TfrmFornecedor.actabrirpedidomaterialExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdsconsulta);
end;

procedure TfrmFornecedor.edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(sender, key, shift);
end;

procedure TfrmFornecedor.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar(_cntcusto, _nunivel, _nmcntcusto, 'Centro Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  cdsNUcntcusto.AsString := cd;
end;

procedure TfrmFornecedor.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
  nextcontrol(sender, key, shift);
end;

procedure TfrmFornecedor.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar(_plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  cdsNUPLCONTA.AsString := cd;
end;

procedure TfrmFornecedor.cdsNUPLCONTAValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsCDPLCONTA.Clear;
    cdsNMPLCONTA.Clear;
    exit;
  end;
  if not codigoexiste(_plconta, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_plano+' '+_contas)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsCDPLCONTA.AsString := CodigodoCampo(_plconta, sender.AsString, _nunivel);
  cdsNMPLCONTA.AsString := Nomedocodigo(_plconta, cdsCDPLCONTA.AsString);
end;

procedure TfrmFornecedor.FormCreate(Sender: TObject);
begin
  set_abrirtabela;
  ckbbocteseguradora.Visible              := Empresa.faturamento.cte.bo;
  tbspreselecao.TabVisible                := empresa.fornecedor.bopreselecaco;
  registro := tregistro.create(self, tbl, exibe, artigoI, cds, dts, edtcodigo);
  GeraMenuRelatorio ('', btnimprimir, 48, cds, tbl);
end;

procedure TfrmFornecedor.cbxcdclfornecedorEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_cl+_fornecedor);
end;

procedure TfrmFornecedor.cbxcdstfornecedorEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_stfornecedor);
end;

procedure TfrmFornecedor.dspBeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind; var Applied: Boolean);
begin
  registro.gerar_codigo(Sender, sds, SourceDS, DeltaDS, UpdateKind, Applied);
end;

procedure TfrmFornecedor.cdsNUFONE1Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmFornecedor.cdsNUFONE2Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmFornecedor.cdsNUFONE3Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmFornecedor.cdsNUFAXValidate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmFornecedor.cdsitcontfornecedorNUFONE1Validate(Sender: TField);
begin
  registro.check_numero_telefone(Sender);
end;

procedure TfrmFornecedor.cdsNMFORNECEDORValidate(Sender: TField);
begin
  if sender.IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    sender.FocusControl;
    Abort;
  end;
end;

procedure TfrmFornecedor.cdsitpreselecaofornecedorBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdsitpreselecaofornecedor);
end;

procedure TfrmFornecedor.cdsitpreselecaofornecedorNewRecord(DataSet: TDataSet);
begin
  cdsitpreselecaofornecedorCDITpreselecaoFORNECEDOR.AsString := GerarCodigo(_it+_pre+_selecao+_fornecedor);
end;

procedure TfrmFornecedor.cdshclfornecedorNewRecord(DataSet: TDataSet);
begin
  cdshclfornecedorCDHCLFORNECEDOR.AsString := GerarCodigo(_h+_clfornecedor);
end;

procedure TfrmFornecedor.cdshclfornecedorBeforePost(DataSet: TDataSet);
begin
  registro.set_update(cdshclfornecedor);
end;

procedure TfrmFornecedor.grdhclfornecedorDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarGradeExcel(Sender, Key, Shift);
  registro.ExibirInformacaoRegistro(cdshclfornecedor, key);
end;

procedure TfrmFornecedor.grdhclfornecedorDBTableView1DblClick(Sender: TObject);
begin
  actabrirordcomprahclfornecedorExecute(actabrirordcomprahclfornecedor);
end;

procedure TfrmFornecedor.actabrirordcomprahclfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), cds, cdshclfornecedor);
end;

procedure TfrmFornecedor.grdconsultaautpagtoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBandedColumn;
begin
  Column := grdconsultaautpagtoCDAUTPAGTO;
  if AViewInfo.Item.ID = Column.Index then
  begin
    Exit;
  end;
  Column             := grdconsultaautpagtoNUCOR;
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

procedure TfrmFornecedor.cbxcdrmatividadEEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_rmatividade);
end;

procedure TfrmFornecedor.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmFornecedor.cdsDTNASCIMENTOValidate(Sender: TField);
begin
  registro.consistir_data_nascimento(Sender);
end;

procedure TfrmFornecedor.cdsNUCEPValidate(Sender: TField);
begin
  if consistircep(sender) then
  begin
    cbxcdufExit(cbxcduf);
  end;
end;

procedure TfrmFornecedor.cdsNUCNPJValidate(Sender: TField);
var
  cdfornecedor : string;
begin
  if removercaracteres(Sender.AsString) = '' then
  begin
    Exit;
  end;
  cdfornecedor := qregistro.codigo_do_registro_existe(_nucnpj, Sender.AsString, tbl, cds.FieldByName(_CDFORNECEDOR).AsString);
  if cdfornecedor <> '' then
  begin
    MessageDlg('CNPJ repetido no fornecedor '+cdfornecedor+' - '+NomedoCodigo(_fornecedor, cdfornecedor)+'.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmFornecedor.cdsNUCNTCUSTOValidate(Sender: TField);
begin
  if sender.AsString = '' then
  begin
    cdsCDcntcusto.Clear;
    cdsNMcntcusto.Clear;
    exit;
  end;
  if not codigoexiste(_cntcusto, _nunivel, _string, sender.AsString) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [sender.AsString, maiuscula(_centro+' '+_custo)]), mterror, [mbok], 0);
    sender.FocusControl;
    abort;
  end;
  cdsCDcntcusto.AsString := CodigodoCampo(_cntcusto, sender.AsString, _nunivel);
  cdsNMcntcusto.AsString := Nomedocodigo(_cntcusto, cdsCDcntcusto.AsString);
end;

procedure TfrmFornecedor.cdsNUCPFValidate(Sender: TField);
var
  cdfornecedor : string;
begin
  if removercaracteres(Sender.AsString) = '' then
  begin
    Exit;
  end;
  cdfornecedor := qregistro.codigo_do_registro_existe(_nucpf, Sender.AsString, tbl, cds.FieldByName(_CDFORNECEDOR).AsString);
  if cdfornecedor <> '' then
  begin
    MessageDlg('CPF repetido no fornecedor '+cdfornecedor+' - '+NomedoCodigo(_fornecedor, cdfornecedor)+'.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmFornecedor.actprodutoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itprodutofornecedor))), cds.FieldByName(_cdfornecedor).AsLargeInt, _cdfornecedor, true);
end;

procedure TfrmFornecedor.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmFornecedor.set_abrirtabela;
begin
  cbxcdrmatividade.Properties.ListSource  := abrir_tabela(_rmatividade);
  cbxcduf.Properties.ListSource           := abrir_tabela(_uf);
  cbxcdmunicipio.Properties.ListSource    := abrir_tabela(_municipio);
  cbxcdbanco.Properties.ListSource        := abrir_tabela(_banco);
  cbxcdclfornecedor.Properties.ListSource := abrir_tabela(_cl+_fornecedor);
  cbxcdstfornecedor.Properties.ListSource := abrir_tabela(_stfornecedor);
  cbxcdtpfornecedor.Properties.ListSource := abrir_tabela(_tp+_fornecedor);
  cbxcdtpregime.Properties.ListSource     := abrir_tabela(_tpregime);
  cbxcdpais.Properties.ListSource         := abrir_tabela(_pais);
  cbxcdindiedest.Properties.ListSource    := abrir_tabela(_indiedest);
  cbxcdindiedest2.Properties.ListSource   := abrir_tabela(_indiedest);
  TcxLookupComboBoxProperties(cxGridDBTableView2CDPRESELECAOFORNECEDOR.Properties).ListSource   := abrir_tabela(_pre+_selecao+_fornecedor);
  TcxLookupComboBoxProperties(grdhclfornecedorDBTableView1CDCLFORNECEDOR.Properties).ListSource := abrir_tabela(_clfornecedor);
  TcxLookupComboBoxProperties(grdhclfornecedorDBTableView1CDUSUARIOI.Properties).ListSource     := abrir_tabela(_usuario);
end;

end.
