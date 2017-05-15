unit uProduto;

interface

uses
  System.Actions, System.UITypes,Firedac.Stan.Param,
  forms, Variants, StdCtrls, Mask, Buttons, ExtCtrls, Controls, ToolWin, sysutils, dialogs,
  Math, ShellAPI, Graphics, windows, Classes, ActnList, ComCtrls, Menus,
  sqlexpr, Grids, DB, FireDAC.Comp.Client,
  uDBMemo, urotinas, ustrings, uconstantes, uregistroib, uregistro,
  udatahora,
  classearquivo, classeempresa, classeconsiste, classeusuario, classegerar,
  classeexecutasql, classeaplicacao, classeretornasql, classeregistrainformacao, classeform, classeproduto,
  classeRegistro, classequery,
  cxLookAndFeelPainters, cxContainer, cxEdit,
  cxGroupBox, cxPC, cxControls, dxBar, cxClasses, cxGraphics,
  cxLookAndFeels, cxLabel, cxPCdxBarPopupMenu, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxListView, ugrupo,
  dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxMemo, cxDBEdit, cxCheckBox, cxCalc, cxInplaceContainer, cxVGrid,
  cxDBVGrid, cxDBLabel, cxButtonEdit, cxSpinEdit, cxCurrencyEdit,
  cxSplitter, dxBevel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.DBCtrls;

type
  TfrmProduto = class(TForm)
    act: TActionList;
    actNovo: TAction;
    actAbrir: TAction;
    actSalvar: TAction;
    actImprimir: TAction;
    actExcluir: TAction;
    actCancelar: TAction;
    actEditar: TAction;
    actAnterior: TAction;
    actProximo: TAction;
    actUltimo: TAction;
    actPrimeiro: TAction;
    actabrirfornecedor: TAction;
    actabrirsaida: TAction;
    actabrirentrada: TAction;
    actabrirmovto: TAction;
    actabrircliente: TAction;
    actAbrirPedido: TAction;
    actconsultacliente: TAction;
    actconsultafornecedor: TAction;
    actconsultapedido: TAction;
    actconsultasaida: TAction;
    actconsultaentrada: TAction;
    actconsultamovto: TAction;
    actconsultahcustomedio: TAction;
    actabrirtpproduto: TAction;
    actconsultaordserv: TAction;
    actaplicar: TAction;
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
    dxBarLargeButton2: TdxBarLargeButton;
    actconsultaordservexterno: TAction;
    Panel1: TPanel;
    bvl1: TBevel;
    lblcodigo: TLabel;
    Label3: TLabel;
    lblgrupo: TLabel;
    Label22: TLabel;
    pgc: TcxPageControl;
    tbscadastro: TcxTabSheet;
    gbxcaracteristicas: TcxGroupBox;
    Label41: TLabel;
    Label43: TLabel;
    lblfornecedorexclusivo: TLabel;
    gbxcomissao: TcxGroupBox;
    Label31: TLabel;
    gbxestoque: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    gbxvalor: TcxGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    lblprecomedio: TLabel;
    Label1: TLabel;
    Label42: TLabel;
    Label47: TLabel;
    Label50: TLabel;
    Label66: TLabel;
    tbxcadastro: TcxGroupBox;
    lbltpproduto: TLabel;
    lblunidade: TLabel;
    gbxpeso: TcxGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    gbxpis: TcxGroupBox;
    Label23: TLabel;
    gbxcofins: TcxGroupBox;
    gbxIPI: TcxGroupBox;
    lblpercenteipi: TLabel;
    gbxicmsi: TcxGroupBox;
    lblpercenteicms: TLabel;
    lblpercentered: TLabel;
    tbsobservacao: TcxTabSheet;
    tbsespecificaotecnica: TcxTabSheet;
    tbsconsulta: TcxTabSheet;
    tbscontabilidade: TcxTabSheet;
    Label62: TLabel;
    lblplconta: TLabel;
    tbsst: TcxTabSheet;
    pnl: TcxLabel;
    gbxicms: TcxGroupBox;
    Label57: TLabel;
    Label58: TLabel;
    Label65: TLabel;
    gbxipi2: TcxGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    gbxdimensional: TcxGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    lbllargura: TLabel;
    lblespessura: TLabel;
    Label20: TLabel;
    lblkilometro: TLabel;
    Label37: TLabel;
    Label19: TLabel;
    Label36: TLabel;
    actconsultaorcamento: TAction;
    actabrirorcamento: TAction;
    lblcntcusto: TLabel;
    lbldsfuncaobem: TLabel;
    lblnuvidautil: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label6: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    gbxcombustivel: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lblregrast: TLabel;
    gbx1: TcxGroupBox;
    Label17: TLabel;
    lblCDCODFORNECEDOR: TLabel;
    lblcdalternativo: TLabel;
    lblnuclfiscal: TLabel;
    Label7: TLabel;
    Label61: TLabel;
    lblCDBCCALCULOCREDITO: TLabel;
    lblgrade: TLabel;
    lbldslocalizacao: TLabel;
    lblnudiasgarantia: TLabel;
    dxBarLargeButton1: TdxBarLargeButton;
    actmetodoprocesso: TAction;
    Label16: TLabel;
    actconsultalote: TAction;
    actcopiar: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    lblqtmultiplo: TLabel;
    btnopcoes: TdxBarLargeButton;
    actopcoes: TAction;
    pumopcoes: TdxBarPopupMenu;
    lblprdescontomaximo: TLabel;
    lbldspolegada: TLabel;
    lblqtcomprimento: TLabel;
    lblnorma: TLabel;
    lbldstag1: TLabel;
    tbsusarproduto: TcxTabSheet;
    lbldstag2: TLabel;
    actabrirgrupo: TAction;
    actitprodutofornecedor: TAction;
    dxBarButton6: TdxBarButton;
    lbl3: TLabel;
    lbl4: TLabel;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    lblcean: TLabel;
    actprodutocliente: TAction;
    dxBarButton9: TdxBarButton;
    actprodutosimilar: TAction;
    dxBarButton10: TdxBarButton;
    actgrade: TAction;
    dxBarButton11: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    actitproduto: TAction;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    acthcustoproducaop: TAction;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    actprodutotpcliente: TAction;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    actprodutofornecedor: TAction;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dtsconsulta: TDataSource;
    grdconsulta: TcxGrid;
    dts: TDataSource;
    cbxcdtpproduto: TcxDBLookupComboBox;
    cbxcdtpitem: TcxDBLookupComboBox;
    cbxcdunidade: TcxDBLookupComboBox;
    cbxcdorigem: TcxDBLookupComboBox;
    cbxcdcor: TcxDBLookupComboBox;
    cbxcdtamanho: TcxDBLookupComboBox;
    cbxcdnorma: TcxDBLookupComboBox;
    cbxcdmaterial: TcxDBLookupComboBox;
    cbxcdforma: TcxDBLookupComboBox;
    cbxcdgrade: TcxDBLookupComboBox;
    cbxcdtpcomissaoproduto: TcxDBLookupComboBox;
    cbxcduf: TcxDBLookupComboBox;
    memdsobservacao: TcxDBMemo;
    cbxCDNATUREZACONTA: TcxDBLookupComboBox;
    cbxCDINDICADORTPCONTA: TcxDBLookupComboBox;
    cbxcdregrast: TcxDBLookupComboBox;
    cbxcdmodbcicms: TcxDBLookupComboBox;
    cbxcdmodbcsticms: TcxDBLookupComboBox;
    edtnuclfiscal: TcxDBTextEdit;
    ckbBOICMS: TcxDBCheckBox;
    ckbBORECUPERAICMS: TcxDBCheckBox;
    gbxusarproduto: TcxGroupBox;
    ckbsaida: TcxDBCheckBox;
    ckbpedido: TcxDBCheckBox;
    ckbentrada: TcxDBCheckBox;
    ckbordcompra: TcxDBCheckBox;
    ckbordserv: TcxDBCheckBox;
    ckbpedidomaterial: TcxDBCheckBox;
    ckborcamento: TcxDBCheckBox;
    ckbmovto: TcxDBCheckBox;
    ckbBORECUPERAIPI: TcxDBCheckBox;
    ckbBOIPI: TcxDBCheckBox;
    ckbBORECUPERAPIS: TcxDBCheckBox;
    ckbBOPIS: TcxDBCheckBox;
    ckbBOGERARLIVROPRODUCAO: TcxDBCheckBox;
    edtALICMS: TcxDBCalcEdit;
    edtALICMSRED: TcxDBCalcEdit;
    edtALIPI: TcxDBCalcEdit;
    cbxnusticms: TcxDBLookupComboBox;
    edtALPIS: TcxDBCalcEdit;
    edtDSPRODUTO: TcxDBTextEdit;
    edtCDCODFORNECEDOR: TcxDBTextEdit;
    edtCEAN: TcxDBTextEdit;
    edtCDALTERNATIVO: TcxDBTextEdit;
    edtDSLOCALIZACAO: TcxDBTextEdit;
    edtDSTAG1: TcxDBTextEdit;
    edtDSTAG2: TcxDBTextEdit;
    edtPSLIQUIDO: TcxDBCalcEdit;
    edtPSBRUTO: TcxDBCalcEdit;
    edtQTMULTIPLO: TcxDBCalcEdit;
    edtQTESTMIN: TcxDBCalcEdit;
    edtQTESTMAX: TcxDBCalcEdit;
    edtQTESTPREV: TcxDBCalcEdit;
    cbxNUSTPIS: TcxDBLookupComboBox;
    edtCDANP: TcxDBTextEdit;
    ckbBOCOMISSAO: TcxDBCheckBox;
    edtPRCOMISSAO: TcxDBCalcEdit;
    ckbBOCRITICO: TcxDBCheckBox;
    edtDSPOLEGADA: TcxDBTextEdit;
    edtQTKILOMETRO: TcxDBTextEdit;
    edtQTESPESSURA: TcxDBCalcEdit;
    edtQTLARGURA: TcxDBCalcEdit;
    edtQTCOMPRIMENTO: TcxDBCalcEdit;
    ckbBOSINCRONIZADO: TcxDBCheckBox;
    edtVLCUSTO: TcxDBCalcEdit;
    edtVLVENDA: TcxDBCalcEdit;
    edtVLPRAZO: TcxDBCalcEdit;
    edtvlatacado: TcxDBCalcEdit;
    edtvlespecial: TcxDBCalcEdit;
    edtPRDESCONTOMAXIMO: TcxDBCalcEdit;
    edtPRLUCRO: TcxDBCalcEdit;
    edtPRLUCROPRAZO: TcxDBCalcEdit;
    edtPRLUCROATACADO: TcxDBCalcEdit;
    edtPRLUCROESPECIAL: TcxDBCalcEdit;
    edtcodigo: TcxTextEdit;
    edtnome: TcxDBTextEdit;
    edtnunivel: TcxDBButtonEdit;
    txtnmgrupo: TcxDBLabel;
    ckbBOATIVAR: TcxDBCheckBox;
    txtCDITEM: TcxDBLabel;
    edtNUCONTAESTOQUE: TcxDBTextEdit;
    edtDSFUNCAOBEM: TcxDBTextEdit;
    edtCDCONTAATIVO: TcxDBTextEdit;
    edtnucontaativo: TcxDBTextEdit;
    edtNMCONTATIVO: TcxDBTextEdit;
    edtNUCNPJ: TcxDBTextEdit;
    edtCLENQ: TcxDBTextEdit;
    edtcdenq: TcxDBTextEdit;
    edtALMVA: TcxDBTextEdit;
    edtNUDIASGARANTIA: TcxDBSpinEdit;
    ckbBORECUPERACOFINS: TcxDBCheckBox;
    cbxnustcofins: TcxDBLookupComboBox;
    edtALCOFINS: TcxDBCalcEdit;
    ckbBOCOFINS: TcxDBCheckBox;
    txtQTESTOQUE: TcxDBLabel;
    cbxtpbslucro: TcxDBComboBox;
    cbxTPBSLUCROPRAZO: TcxDBComboBox;
    cbxtpbslucroatacado: TcxDBComboBox;
    cbxtpbslucroespecial: TcxDBComboBox;
    txtVLCUSTOMEDIO: TcxDBLabel;
    txtVLCUSTOPRODUCAO: TcxDBLabel;
    glvLevel1: TcxGridLevel;
    tbvorcamento: TcxGridDBTableView;
    tbvorcamentoCDORCAMENTO: TcxGridDBColumn;
    tbvorcamentoDTEMISSAO: TcxGridDBColumn;
    tbvorcamentoNMSTORCAMENTO: TcxGridDBColumn;
    tbvorcamentoCDCLIENTE: TcxGridDBColumn;
    tbvorcamentoRZSOCIAL: TcxGridDBColumn;
    tbvorcamentoQTITEM: TcxGridDBColumn;
    tbvorcamentoVLUNITARIO: TcxGridDBColumn;
    tbvorcamentoVLTOTAL: TcxGridDBColumn;
    tbvcliente: TcxGridDBTableView;
    tbvfornecedor: TcxGridDBTableView;
    tbvpedido: TcxGridDBTableView;
    tbvsaida: TcxGridDBTableView;
    tbventrada: TcxGridDBTableView;
    tbvmovto: TcxGridDBTableView;
    tbvhcustomedio: TcxGridDBTableView;
    tbvordserv: TcxGridDBTableView;
    tbvordservexterno: TcxGridDBTableView;
    tbvitlote: TcxGridDBTableView;
    bmg1Bar2: TdxBar;
    bdcconsulta: TdxBarDockControl;
    tbvmovtoCDMOVTO: TcxGridDBColumn;
    tbvmovtoDTEMISSAO: TcxGridDBColumn;
    tbvmovtoNMTPMOVTO: TcxGridDBColumn;
    tbvmovtoNMCNTCUSTO: TcxGridDBColumn;
    tbvmovtoQTITEM: TcxGridDBColumn;
    tbvmovtoVLUNITARIO: TcxGridDBColumn;
    tbvmovtoVLTOTAL: TcxGridDBColumn;
    tbventradaNUENTRADA: TcxGridDBColumn;
    tbventradaNMTPENTRADA: TcxGridDBColumn;
    tbventradaDTEMISSAO: TcxGridDBColumn;
    tbventradaDTSAIDA: TcxGridDBColumn;
    tbventradaNUDOCFISCALICMS: TcxGridDBColumn;
    tbventradaCDFORNECEDOR: TcxGridDBColumn;
    tbventradaRZSOCIAL: TcxGridDBColumn;
    tbventradaCDCFOP: TcxGridDBColumn;
    tbventradaQTITEM: TcxGridDBColumn;
    tbventradaVLUNITARIO: TcxGridDBColumn;
    tbventradaVLTOTAL: TcxGridDBColumn;
    tbventradaALICMS: TcxGridDBColumn;
    tbventradaALIPI: TcxGridDBColumn;
    tbventradaNUSTICMS: TcxGridDBColumn;
    tbvsaidaNUSAIDA: TcxGridDBColumn;
    tbvsaidaNMTPSAIDA: TcxGridDBColumn;
    tbvsaidaDTEMISSAO: TcxGridDBColumn;
    tbvsaidaCDCLIENTE: TcxGridDBColumn;
    tbvsaidaRZSOCIAL: TcxGridDBColumn;
    tbvsaidaCDCFOP: TcxGridDBColumn;
    tbvsaidaQTITEM: TcxGridDBColumn;
    tbvsaidaVLUNITARIO: TcxGridDBColumn;
    tbvsaidaVLTOTAL: TcxGridDBColumn;
    tbvsaidaALICMS: TcxGridDBColumn;
    tbvsaidaALIPI: TcxGridDBColumn;
    tbvsaidaNUSTICMS: TcxGridDBColumn;
    tbvordservNUORDSERV: TcxGridDBColumn;
    tbvordservDTENTRADA: TcxGridDBColumn;
    tbvordservNMSTORDSERV: TcxGridDBColumn;
    tbvordservCDCLIENTE: TcxGridDBColumn;
    tbvordservRZSOCIAL: TcxGridDBColumn;
    tbvordservQTITEM: TcxGridDBColumn;
    tbvordservVLUNITARIO: TcxGridDBColumn;
    tbvordservVLTOTAL: TcxGridDBColumn;
    dxBarSubItem3: TdxBarSubItem;
    actconsulta: TAction;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    tbvordservexternoNUORDSERV: TcxGridDBColumn;
    tbvordservexternoDTENTRADA: TcxGridDBColumn;
    tbvordservexternoNMSTORDSERV: TcxGridDBColumn;
    tbvordservexternoCDCLIENTE: TcxGridDBColumn;
    tbvordservexternoRZSOCIAL: TcxGridDBColumn;
    tbvordservexternoQTITEM: TcxGridDBColumn;
    tbvordservexternoVLUNITARIO: TcxGridDBColumn;
    tbvordservexternoVLTOTAL: TcxGridDBColumn;
    tbvpedidoNUPEDIDO: TcxGridDBColumn;
    tbvpedidoDTEMISSAO: TcxGridDBColumn;
    tbvpedidoNMSTPEDIDO: TcxGridDBColumn;
    tbvpedidoCDCLIENTE: TcxGridDBColumn;
    tbvpedidoRZSOCIAL: TcxGridDBColumn;
    tbvpedidoQTITEM: TcxGridDBColumn;
    tbvpedidoQTATENDIDA: TcxGridDBColumn;
    tbvpedidoVLUNITARIO: TcxGridDBColumn;
    tbvpedidoVLTOTAL: TcxGridDBColumn;
    tbvfornecedorCDFORNECEDOR: TcxGridDBColumn;
    tbvfornecedorRZSOCIAL: TcxGridDBColumn;
    tbvfornecedorDSENDERECO: TcxGridDBColumn;
    tbvfornecedorNMBAIRRO: TcxGridDBColumn;
    tbvfornecedorNMMUNICIPIO: TcxGridDBColumn;
    tbvfornecedorVLUNITARIO: TcxGridDBColumn;
    tbvfornecedorSGUF: TcxGridDBColumn;
    tbvfornecedorQTITEM: TcxGridDBColumn;
    tbvfornecedorVLTOTAL: TcxGridDBColumn;
    tbvclienteCDCLIENTE: TcxGridDBColumn;
    tbvclienteRZSOCIAL: TcxGridDBColumn;
    tbvclienteDSENDERECO: TcxGridDBColumn;
    tbvclienteNMBAIRRO: TcxGridDBColumn;
    tbvclienteNMMUNCIPIO: TcxGridDBColumn;
    tbvclienteSGUF: TcxGridDBColumn;
    tbvclienteQTITEM: TcxGridDBColumn;
    tbvclienteVLUNITARIO: TcxGridDBColumn;
    tbvclienteVLTOTAL: TcxGridDBColumn;
    tbvhcustomedioDTHISTORICO: TcxGridDBColumn;
    tbvhcustomedioQTESTOQUE: TcxGridDBColumn;
    tbvhcustomedioVLCUSTOMEDIO: TcxGridDBColumn;
    tbvitloteCDITLOTE: TcxGridDBColumn;
    tbvitloteVLCUSTO: TcxGridDBColumn;
    tbvitloteDTCOMPRA: TcxGridDBColumn;
    tbvitloteQTENTRADA: TcxGridDBColumn;
    tbvitloteQTESTOQUE: TcxGridDBColumn;
    tbvitloteNUIMEI: TcxGridDBColumn;
    tbvitloteDTFABRICACAO: TcxGridDBColumn;
    tbvitloteDTVALIDADE: TcxGridDBColumn;
    tbvitloteVLVENDA: TcxGridDBColumn;
    btncliente: TdxBarLargeButton;
    btnfornecedor: TdxBarLargeButton;
    btnorcamento: TdxBarLargeButton;
    btnpedido: TdxBarLargeButton;
    btnsaida: TdxBarLargeButton;
    btnentrada: TdxBarLargeButton;
    btnmovto: TdxBarLargeButton;
    btnhcustomedio: TdxBarLargeButton;
    btnordserv: TdxBarLargeButton;
    btnordservexterno: TdxBarLargeButton;
    btnitlote: TdxBarLargeButton;
    actabrirordserv: TAction;
    btnimprimir: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    lblunidade2: TLabel;
    cbxcdunidade2: TcxDBLookupComboBox;
    lblqtestoque2: TLabel;
    txtqtestoque2: TcxDBLabel;
    lblprunidade: TLabel;
    edtprunidade: TcxDBCalcEdit;
    tbvitloteentrada: TcxGridDBTableView;
    tbvitlotesaida: TcxGridDBTableView;
    tbvitloteentradaNUENTRADA: TcxGridDBColumn;
    tbvitloteentradaDTEMISSAO: TcxGridDBColumn;
    tbvitloteentradaCDCFOP: TcxGridDBColumn;
    tbvitlotesaidaNUSAIDA: TcxGridDBColumn;
    tbvitlotesaidaDTEMISSAO: TcxGridDBColumn;
    tbvitlotesaidaCDCFOP: TcxGridDBColumn;
    dtsitloteentrada: TDataSource;
    dtsitlotesaida: TDataSource;
    ckbbodividir: TcxDBCheckBox;
    tbvitentradalote: TcxGridDBTableView;
    glvitentradalote: TcxGridLevel;
    grditlote: TcxGrid;
    splitlote: TcxSplitter;
    glvitsaidalote: TcxGridLevel;
    tbvitsaidalote: TcxGridDBTableView;
    tbvitentradaloteNUENTRADA: TcxGridDBColumn;
    tbvitentradaloteDTEMISSAO: TcxGridDBColumn;
    tbvitentradaloteCDCFOP: TcxGridDBColumn;
    tbvitsaidaloteNUSAIDA: TcxGridDBColumn;
    tbvitsaidaloteDTEMISSAO: TcxGridDBColumn;
    tbvitsaidaloteCDCFOP: TcxGridDBColumn;
    tbsImovel: TcxTabSheet;
    Label2: TLabel;
    cbxcdformaimovel: TcxDBLookupComboBox;
    lblnulote: TLabel;
    lblnuquadra: TLabel;
    lbldslocalizacaoimovel: TLabel;
    edtdslocalizacaoimovel: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label24: TLabel;
    lbl5: TLabel;
    Label5: TLabel;
    actarquivo: TAction;
    dxBarButton1: TdxBarButton;
    lblnmconfrontantefrente: TLabel;
    edtnmconfrontantefrente: TcxDBTextEdit;
    lblnmconfrontantedireita: TLabel;
    lblnmconfrontanteEsquerda: TLabel;
    lblnmconfrontantefundo: TLabel;
    edtnmconfrontantedireita: TcxDBTextEdit;
    edtnmconfrontanteesquerda: TcxDBTextEdit;
    edtnmconfrontantefundo: TcxDBTextEdit;
    edtdslote: TcxDBTextEdit;
    edtdsquadra: TcxDBTextEdit;
    edtdsarea: TcxDBTextEdit;
    edtdsfrente: TcxDBTextEdit;
    edtdsdireita: TcxDBTextEdit;
    edtdsesquerda: TcxDBTextEdit;
    edtdsfundo: TcxDBTextEdit;
    tbvmovtoNUSAIDA: TcxGridDBColumn;
    Label8: TLabel;
    edtnucest: TcxDBTextEdit;
    lblcdfuncionario: TLabel;
    cbxcdfuncionario: TcxDBLookupComboBox;
    dxBevel1: TdxBevel;
    gbxdsmaterial: TcxGroupBox;
    memdsmaterial: TcxDBMemo;
    gbxdsespecificacaotecnica: TcxGroupBox;
    memdsespecificacaotecnica: TcxDBMemo;
    gbxdsarmazenamento: TcxGroupBox;
    memdsarmazenamento: TcxDBMemo;
    actprodutocomposicaoquimica: TAction;
    dxBarButton2: TdxBarButton;
    actprodutopropriedadefisica: TAction;
    dxBarButton3: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    actconsultaordproducao: TAction;
    tbvordproducao: TcxGridDBTableView;
    tbvordproducaoCDORDPRODUCAO: TcxGridDBColumn;
    tbvordproducaoDTEMISSAO: TcxGridDBColumn;
    tbvordproducaoDTPRVENTREGA: TcxGridDBColumn;
    tbvordproducaoDTENTREGA: TcxGridDBColumn;
    tbvordproducaoNMSTORDPRODUCAO: TcxGridDBColumn;
    tbvordproducaoNMTPORDPRODUCAO: TcxGridDBColumn;
    tbvordproducaoQTITEM: TcxGridDBColumn;
    tbvordproducaoQTPRODUCAO: TcxGridDBColumn;
    actabrirordproducao: TAction;
    qry: TFDQuery;
    txtnmplconta: TcxDBLabel;
    edtnuplconta: TcxDBButtonEdit;
    txtnmcntcusto: TcxDBLabel;
    edtnucntcusto: TcxDBButtonEdit;
    edtcdfornecedor: TcxDBButtonEdit;
    txtnmfornecedor: TDBText;
    edtNUVIDAUTIL: TcxDBSpinEdit;
    actmetodoprocessorecriarOrdProducao: TAction;
    dxBarButton4: TdxBarButton;
    cbxCDBCCALCULOCREDITO: TcxDBLookupComboBox;
    lbl6: TLabel;
    lbl7: TLabel;
    txtNMPLCONTASAIDA: TcxDBLabel;
    edtNUPLCONTASAIDA: TcxDBButtonEdit;
    txtNMCNTCUSTOSAIDA: TcxDBLabel;
    edtNUCNTCUSTOSAIDA: TcxDBButtonEdit;
    procedure actAbrirExecute(Sender: TObject);
    procedure actNovoExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actEditarExecute(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actProximoExecute(Sender: TObject);
    procedure actAnteriorExecute(Sender: TObject);
    procedure actUltimoExecute(Sender: TObject);
    procedure actPrimeiroExecute(Sender: TObject);
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actImprimirExecute(Sender: TObject);
    procedure actabrirfornecedorExecute(Sender: TObject);
    procedure actabrirsaidaExecute(Sender: TObject);
    procedure actabrirentradaExecute(Sender: TObject);
    procedure actabrirmovtoExecute(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure actAbrirPedidoExecute(Sender: TObject);
    procedure actconsultaclienteExecute(Sender: TObject);
    procedure actconsultafornecedorExecute(Sender: TObject);
    procedure grdconsultaDblClick(Sender: TObject);
    procedure actconsultapedidoExecute(Sender: TObject);
    procedure actconsultasaidaExecute(Sender: TObject);
    procedure actconsultaentradaExecute(Sender: TObject);
    procedure actconsultamovtoExecute(Sender: TObject);
    procedure actconsultahcustomedioExecute(Sender: TObject);
    procedure actabrirtpprodutoExecute(Sender: TObject);
    procedure actconsultaordservExecute(Sender: TObject);
    procedure exitcalcularprecovenda(Sender: TObject);
    procedure actaplicarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure edtvlcustoExit(Sender: TObject);
    procedure exitcalcularprecoatacado(Sender: TObject);
    procedure exitcalcularprecoespecial(Sender: TObject);
    procedure actconsultaordservexternoExecute(Sender: TObject);
    procedure actconsultaorcamentoExecute(Sender: TObject);
    procedure actabrirorcamentoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtnomeExit(Sender: TObject);
    procedure actmetodoprocessoExecute(Sender: TObject);
    procedure actconsultaloteExecute(Sender: TObject);
    procedure actcopiarExecute(Sender: TObject);
    procedure actopcoesExecute(Sender: TObject);
    procedure actabrirgrupoExecute(Sender: TObject);
    procedure actitprodutofornecedorExecute(Sender: TObject);
    procedure edtVLPRAZOExit(Sender: TObject);
    procedure actprodutoclienteExecute(Sender: TObject);
    procedure actprodutosimilarExecute(Sender: TObject);
    procedure actgradeExecute(Sender: TObject);
    procedure actitprodutoExecute(Sender: TObject);
    procedure acthcustoproducaopExecute(Sender: TObject);
    procedure actprodutotpclienteExecute(Sender: TObject);
    procedure actprodutofornecedorExecute(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure qryNewRecord(DataSet: TDataSet);
    procedure lbltpprodutoDblClick(Sender: TObject);
    procedure cbxcdtpprodutoExit(Sender: TObject);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure edtnunivelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnunivelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actconsultaExecute(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvorcamentoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvclienteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvfornecedorCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvpedidoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvsaidaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbventradaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvmovtoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvordservCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvordservexternoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirordservExecute(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure edtnunivelExit(Sender: TObject);
    procedure cbxnusticmsExit(Sender: TObject);
    procedure qryconsultaAfterScroll(DataSet: TDataSet);
    procedure actarquivoExecute(Sender: TObject);
    procedure actprodutocomposicaoquimicaExecute(Sender: TObject);
    procedure actprodutopropriedadefisicaExecute(Sender: TObject);
    procedure actconsultaordproducaoExecute(Sender: TObject);
    procedure tbvordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actmetodoprocessorecriarOrdProducaoExecute(Sender: TObject);
    procedure edtnomeKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnustcofinsPropertiesEditValueChanged(Sender: TObject);
    procedure cbxNUSTPISPropertiesEditValueChanged(Sender: TObject);
    procedure edtNUPLCONTASAIDAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNUPLCONTASAIDAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtNUCNTCUSTOSAIDAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNUCNTCUSTOSAIDAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private      { Private declarations }
    tbl      : string;
    exibe    : string;
    produto : TProduto;
    tipo : string;
    qryitlotesaida : TClasseQuery;
    qryitloteentrada : TClasseQuery;
    qryconsulta : TClasseQuery;
    procedure AplicarConfiguracaoEmpresa;
    procedure Configuracaoempresa;
    procedure setgrupo(cdgrupo:integer);
    procedure setrecord(cdtipo:integer);
    procedure SetQuery(tabela:string);
    procedure CalcularPreco(sender:TObject; nmlucro, nmvenda:string);
    procedure checkNomeProdutoRepetido;
    procedure checkNomeProdutoObrigatorio;
    procedure checkCNPJIpiCodigoEnquadramentoObrigatorio;
    procedure checkQuantidadeParaDesativarProduto;
    procedure checkStpis50RecuperaPISObrigatorio;
    procedure checkStcofins50RecuperaCofinsObrigatorio;
    procedure checkAliquotaPIS;
    procedure checkAliquotaCOFINS;
    procedure checkMultiploDe;
    procedure setUsarProdutoEm;
    procedure limparAliquotaZerada;
    procedure checkAliquotaSituacaoTributaria;
    procedure checkSituacaoTriburariaPISCOFINSRecupera;
    procedure AbrirTabela;
    procedure setTelaObjeto;
    procedure SetEmpresa;
    procedure zerar_imposto(tpimposto: string);
    procedure check_aliquota(tpimposto: string);
    function situacao_recupera(tpimposto: string): Boolean;
    procedure SetCdGrupo;
    function consistecodfornecedor: boolean;
    function consistecdalternativo: boolean;
    procedure check_grupo_obrigatorio;
    procedure check_ncm_conteudo;
    procedure check_ncm_obrigatorio;
    procedure check_origem_obrigatorio;
    procedure check_sticms_existente;
    procedure check_sticms_obrigatorio;
    procedure check_tipo_item_obrigatorio;
    procedure check_tipo_produto_obrigatorio;
    procedure check_unidade_obrigatorio;
    procedure Setcaracteristicas;
    procedure Setdiasgarantia;
    procedure SetEstoque;
    procedure SetFornecedorExclusivo;
    procedure Setlocalizacao;
  public  { Public declarations }
    registro : TRegistro;
    function Abrir(codigo:integer):boolean;
  end;

var
  frmProduto: TfrmProduto;

implementation

uses uDtmMain,
  uMain,
  uLocalizarProduto,
  uLocalizar,
  uExportarExcel,
  utipo,
  ulocalizarCliente,
  ulocalizarFornecedor,
  udlgmetodoprocesso,
  udlgtabela,
  uMenuRelatorio, udlgarquivo, ClasseCest;

{$R *.DFM}

procedure TFrmProduto.AplicarConfiguracaoEmpresa;
begin
  actconsultasaida.Visible      := empresa.faturamento.saida.bo;
  actconsultasaida.Enabled      := empresa.faturamento.saida.bo;
  actconsultaentrada.Visible    := empresa.entrada.bo;
  actconsultaentrada.Enabled    := empresa.entrada.bo;
  actconsultacliente.Visible    := empresa.cliente.bo;
  actconsultacliente.Enabled    := empresa.cliente.bo;
  actconsultafornecedor.Visible := empresa.fornecedor.bo;
  actconsultafornecedor.Enabled := empresa.fornecedor.bo;
  actconsultapedido.Visible     := empresa.comercial.pedido.bo;
  actconsultapedido.Enabled     := empresa.comercial.pedido.bo;
  actconsultaordserv.Visible    := empresa.ordserv.bo;
  actconsultaordserv.enabled    := empresa.ordserv.bo;
  actconsultaorcamento.Enabled  := empresa.comercial.orcamento.bo;
  actconsultaorcamento.visible  := empresa.comercial.orcamento.bo;
  actitproduto.visible          := empresa.material.produto.bocomposto;
end;

procedure TFrmProduto.Configuracaoempresa;
begin
  aplicarConfiguracaoEmpresa;
end;

procedure TfrmProduto.setrecord(cdtipo:integer);
begin
  if cdtipo = 0 then
  begin
    exit;
  end;
  produto.tpproduto.Select(cdtipo);

  tbsImovel.TabVisible := produto.tpproduto.boimovel = _s;

  lblqtestoque2.Visible := produto.tpproduto.bounidade2 = _s;
  txtqtestoque2.Visible := produto.tpproduto.bounidade2 = _s;
  cbxcdunidade2.Visible := produto.tpproduto.bounidade2 = _s;
  edtprunidade.Visible  := produto.tpproduto.bounidade2 = _s;
  ckbbodividir.Visible  := produto.tpproduto.bounidade2 = _s;
  lblunidade2.Visible   := produto.tpproduto.bounidade2 = _s;
  cbxcdunidade.Width    := produto.tpproduto.get_widthunidade2;

  actprodutocomposicaoquimica.Visible := produto.tpproduto.bocomposicaoquimica = _s;
  actprodutopropriedadefisica.Visible := produto.tpproduto.bopropriedadefisica = _s;

  lblqtmultiplo.Visible        := produto.tpproduto.bomultiplo = _s;
  edtqtmultiplo.visible        := produto.tpproduto.bomultiplo = _s;
  actprodutotpcliente.Visible  := produto.tpproduto.botpcliente = _s;
  tbsst.TabVisible             := produto.tpproduto.bost = _s;
  gbxEstoque.Visible           := produto.tpproduto.boestoque = _s;
  lblprecomedio.Visible        := produto.tpproduto.boestoque = _s;
  txtvlcustomedio.Visible      := produto.tpproduto.boestoque = _s;
  gbxpeso.Visible              := produto.tpproduto.boestoque = _s;

  actprodutofornecedor.Visible  := produto.tpproduto.bocodigofornecedor = _s;
  acthcustoproducaop.Visible    := produto.tpproduto.boproducao = _s;
  gbxicmsi.Visible              := produto.tpproduto.botributacao = _s;
  gbxIPI.visible                := (produto.tpproduto.botributacao = _s) and (empresa.tpregime <> _S);
  gbxpis.Visible                := (produto.tpproduto.botributacao = _s) and (empresa.tpregime <> _S);
  gbxcofins.Visible             := (produto.tpproduto.botributacao = _s) and (empresa.tpregime <> _S);
  lblCDBCCALCULOCREDITO.Visible := (produto.tpproduto.botributacao = _s) and (empresa.tpregime <> _S);
  CBXCDBCCALCULOCREDITO.Visible := (produto.tpproduto.botributacao = _s) and (empresa.tpregime <> _S);

  actarquivo.Visible := produto.tpproduto.boarquivo = _s;

  lblgrade.Visible     := produto.tpproduto.bogradevalor = _s;
  cbxcdgrade.Visible   := produto.tpproduto.bogradevalor = _s;

  ckbbocritico.Visible := produto.tpproduto.bocritico = _s;

  gbxvalor.Visible := produto.tpproduto.bovalor = _s;

  lblfornecedorexclusivo.Visible := produto.tpproduto.bofornecedorexclusivo = _s;
  edtcdfornecedor.Visible        := produto.tpproduto.bofornecedorexclusivo = _s;
  txtnmfornecedor.Visible        := produto.tpproduto.bofornecedorexclusivo = _s;
  gbxcaracteristicas.Visible     := (produto.tpproduto.bocaracteristicas = _s) or (produto.tpproduto.bofornecedorexclusivo = _s);
  gbxdimensional.Visible         := produto.tpproduto.bodimensional = _s;
  lbldslocalizacao.visible       := produto.tpproduto.bolocalizacao = _s;
  edtdslocalizacao.visible       := produto.tpproduto.bolocalizacao = _s;
  lblnudiasgarantia.visible      := produto.tpproduto.bodiasgarantia = _s;
  edtNUDIASGARANTIA.Visible      := produto.tpproduto.bodiasgarantia = _s;
  actconsultalote.Visible        := produto.tpproduto.bolote = _s;
  actitproduto.Visible           := produto.tpproduto.bocomposto = _s;
  actmetodoprocesso.Visible      := produto.tpproduto.bometodoprocesso = _s;
  actmetodoprocessorecriarOrdProducao.Visible := produto.tpproduto.bometodoprocesso = _s;
  actgrade.Visible               := produto.tpproduto.bogradevalor = _s;
  gbxcomissao.Visible            := produto.tpproduto.bocomissao = _s;
  tbscontabilidade.TabVisible    := produto.tpproduto.bocontabilidade = _s;
  gbxcombustivel.Visible         := produto.tpproduto.bocombustivel = _s;
  gbxicmsi.Visible               := produto.tpproduto.boservico <> _s;
  edtnuclfiscal.Visible          := produto.tpproduto.boservico <> _s;
  ckbBOSINCRONIZADO.Visible      := produto.tpproduto.boservico <> _s;
  lblnuclfiscal.Visible          := produto.tpproduto.boservico <> _s;
  edtCEAN.Visible                := produto.tpproduto.boservico <> _s;
  lblcean.Visible                := produto.tpproduto.boservico <> _s;
  lblCDCODFORNECEDOR.Visible     := produto.tpproduto.boservico <> _s;
  edtCDCODFORNECEDOR.Visible     := produto.tpproduto.boservico <> _s;
end;

procedure TfrmProduto.setUsarProdutoEm;
begin
  ckbsaida.Visible     := empresa.faturamento.saida.bo;
  ckbpedido.Visible    := empresa.comercial.pedido.bo;
  ckborcamento.Visible := empresa.comercial.orcamento.bo;
  ckbordcompra.Visible := empresa.aquisicao.ordcompra.bo;
  ckbordserv.Visible   := empresa.ordserv.bo;
  ckbmovto.Visible     := empresa.material.movto.bo;
  ckbpedidomaterial.Visible := empresa.aquisicao.pedidomaterial.bo;
end;

procedure TfrmProduto.setgrupo(cdgrupo:integer);
  procedure setgrupo;
  var
    grupo : TGrupo;
  begin
    if cdgrupo = 0 then
    begin
      Exit;
    end;
    grupo := TGrupo.create;
    try
      grupo.Select(cdgrupo);
      qry.FieldByName(_nustpis).AsString := grupo.nustpis;
      qry.FieldByName(_nustcofins).AsString := grupo.nustcofins;
      qry.FieldByName(_CDBCCALCULOCREDITO).AsString := grupo.cdbccalculocredito;
      if grupo.cdtpproduto         <> 0  then
      begin
        qry.fieldbyname(_cdtpproduto).asInteger          := grupo.cdtpproduto;
      end;
      if grupo.nuclfiscal          <> '' then
      begin
        qry.fieldbyname(_NUCLFISCAL).asstring            := grupo.nuclfiscal;
      end;
      if grupo.CDORIGEM            <> '' then
      begin
        qry.fieldbyname(_CDORIGEM).asstring              := grupo.CDORIGEM;
      end;
      if grupo.nusticms            <> '' then
      begin
        qry.FieldByName(_nusticms).AsString              := grupo.nusticms;
      end;
      if grupo.cdtpitem            <> '' then
      begin
        qry.fieldbyname(_CDTPITEM).asstring              := grupo.cdtpitem;
      end;
      if grupo.cdtpcomissaoproduto <> 0  then
      begin
        qry.fieldbyname(_cdtpcomissaoproduto).asInteger  := grupo.cdtpcomissaoproduto;
      end;
      if grupo.cdunidade           <> 0  then
      begin
        qry.fieldbyname(_CDUNIDADE).asInteger            := grupo.cdunidade;
      end;
      if grupo.cdmaterial          <> 0  then
      begin
        qry.fieldbyname(_cdmaterial).asInteger           := grupo.cdmaterial;
      end;
      if grupo.cdforma             <> 0  then
      begin
        qry.fieldbyname(_cdforma).asInteger              := grupo.cdforma;
      end;
      if grupo.cdnorma             <> 0  then
      begin
        qry.fieldbyname(_cdnorma).asInteger              := grupo.cdnorma;
      end;
      if grupo.alipi    > 0 then
      begin
        qry.fieldbyname(_ALIPI).AsFloat    := grupo.ALIPI;
      end;
      if grupo.alicms   > 0 then
      begin
        qry.fieldbyname(_ALICMS).AsFloat   := grupo.ALICMS;
      end;
      if grupo.ALPIS    > 0 then
      begin
        qry.fieldbyname(_ALPIS).AsFloat    := grupo.ALPIS;
      end;
      if grupo.alcofins > 0 then
      begin
        qry.fieldbyname(_ALCOFINS).AsFloat := grupo.alcofins;
      end;
      qry.fieldbyname(_BORECUPERAICMS).asstring       := grupo.borecuperaicms;
      qry.fieldbyname(_BORECUPERAIPI).asstring        := grupo.borecuperaipi;
      qry.fieldbyname(_BORECUPERAPIS).asstring        := grupo.borecuperapis;
      qry.fieldbyname(_BOIPI).asstring                := grupo.boipi;
      qry.fieldbyname(_BOICMS).asstring               := grupo.boicms;
      qry.fieldbyname(_BOPIS).asstring                := grupo.bopis;
      qry.fieldbyname(_BORECUPERACOFINS).asstring     := grupo.borecuperacofins;
      qry.fieldbyname(_BOCOFINS).asstring             := grupo.bocofins;
      qry.fieldbyname(_BOGERARLIVROPRODUCAO).AsString := grupo.bogerarlivroproducao;
      qry.FieldByName(_bocomissao).AsString           := grupo.bocomissao;
      qry.FieldByName(_prcomissao).AsFloat            := grupo.prcomissao;
    finally
      freeandnil(grupo);
    end;
  end;
begin
  setgrupo;
  setrecord(qry.fieldbyname(_cdtpproduto).asinteger);
end;

procedure TfrmProduto.checkAliquotaCOFINS;
begin
  if (qregistro.CampodoCampo( _stcofins, _nustcofins,  CBXNUSTcofins.EditValue, _boaliquota, true) = _s) and ((edtalcofins.Text = '0') or (edtalcofins.Text = '')) then
  begin
    MessageDlg('Alíquota do COFINS é um campo obrigatório para a Situação Tributária '+CBXNUSTcofins.Text+'.'#13'Altere o campo para poder continuar.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    edtalcofins.SetFocus;
    abort;
  end;
  if (qregistro.CampodoCampo( _stcofins, _nustcofins,  CBXNUSTcofins.EditValue, _boaliquota, true) = _N) and (edtalcofins.Text <> '0') and (edtalcofins.Text <> '') then
  begin
    MessageDlg('Alíquota do COFINS não deve ser preenchida para a Situação Tributária '+CBXNUSTcofins.Text+'.'#13'Altere o campo para poder continuar.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    edtalcofins.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.checkAliquotaPIS;
begin
  if (qregistro.CampodoCampo( _stpis, _nustpis,  cbxNUSTPIS.EditValue, _boaliquota, true) = _s) and ((edtalpis.Text = '0') or (edtalpis.Text = '')) then
  begin
    MessageDlg('Alíquota do PIS é um campo obrigatório para a Situação Tributária '+cbxNUSTPIS.EditValue+'.'#13'Altere o campo para poder continuar.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    edtalpis.SetFocus;
    abort;
  end;
  if (qregistro.CampodoCampo( _stpis, _nustpis,  cbxNUSTPIS.EditValue, _boaliquota, true) = _N) and (edtalpis.Text <> '0') and (edtalpis.Text <> '') then
  begin
    MessageDlg('Alíquota do PIS não deve ser preenchida para a Situação Tributária '+cbxNUSTPIS.Text+'.'#13'Altere o campo para poder continuar.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    edtalpis.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.checkCNPJIpiCodigoEnquadramentoObrigatorio;
begin
  if (removercaracteres(qry.fieldbyname(_nucnpj).asstring) <> '') and (removercaracteres(qry.fieldbyname(_cdenq).asstring) = '') then
  begin
    messagedlg('Quando o CNPJ do IPI está preenchido, o código de enquadramento é obrigatório.'#13'Altere o cadastro do produto para continuar.', mtInformation, [mbok], 0);
    pgc.ActivePage := tbsst;
    edtcdenq.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.checkMultiploDe;
begin
  if qry.FieldByName(_qt+_multiplo).AsFloat < 0 then
  begin
    messagedlg('Quantidade de Múltiplo não pode ser negativo.', mtinformation, [mbok], 0);
    pgc.ActivePage := tbscadastro;
    if edtqtmultiplo.visible then
    begin
      edtqtmultiplo.SetFocus;
    end;
    abort;
  end;
end;

procedure TfrmProduto.checkNomeProdutoObrigatorio;
begin
  if trim(edtnome.Text) = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    edtnome.SetFocus;
    Abort;
  end;
end;

procedure TfrmProduto.checkNomeProdutoRepetido;
begin
  if (not empresa.material.produto.bonmrepetido) and produto.existeNomeProduto(edtnome.Text, edtcodigo.text) then
  begin
    messagedlg('Produto '+edtnome.Text+' já existe no cadastro.'#13'Altere o nome para poder continuar.', mtInformation, [mbok], 0);
    edtnome.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.checkQuantidadeParaDesativarProduto;
begin
  if (not ckbBOATIVAR.Checked) and (qry.FieldByName(_qtestoque).AsFloat<>0) then
  begin
    messagedlg('Para desativar um produto é necessário que a quantidade em estoque esteja zerada.'#13'Altere a quantidade em estoque para desativar o produto.', mtInformation, [mbok], 0);
    pgc.ActivePage := tbscadastro;
    ckbBOATIVAR.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.checkStcofins50RecuperaCofinsObrigatorio;
begin
  if (cbxNUSTcofins.EditValue = _50) and (not ckbborecuperacofins.Checked) then
  begin
    messagedlg('Para situação tributária do cofins 50 a recuperação do imposto deve estar marcado.'#13'Altere o campo para poder continuar.', mtInformation, [mbok], 0);
    pgc.ActivePage := tbscadastro;
    ckbborecuperacofins.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.checkStpis50RecuperaPISObrigatorio;
begin
  if (cbxNUSTPIS.EditValue = _50) and (not ckbBORECUPERAPIS.Checked) then
  begin
    messagedlg('Para situação tributária do PIS 50 a recuperação do imposto deve estar marcado.'#13'Altere o campo para poder continuar.', mtInformation, [mbok], 0);
    pgc.ActivePage := tbscadastro;
    ckbBORECUPERAPIS.SetFocus;
    abort;
  end;
end;

function TfrmProduto.Abrir(codigo:integer):boolean;
begin
  result := registro.RegistroAbrir(codigo);
end;

procedure TfrmProduto.SetEmpresa;
begin
  actprodutosimilar.Visible := empresa.material.produto.bosimilar;
  actprodutosimilar.Enabled := empresa.material.produto.bosimilar;
  gbxcofins.Visible := empresa.tpregime <> _S;
  gbxpis.Visible := Empresa.tpregime <> _S;
  gbxIPI.Visible := empresa.tpregime <> _S;
  lblpercenteipi.Visible := empresa.tpregime <> _s;
  lblpercenteicms.Visible := empresa.tpregime <> _s;
  edtalipi.Visible := empresa.tpregime <> _S;
  edtalicms.Visible := empresa.tpregime <> _S;
  lblpercentered.Visible := empresa.tpregime <> _S;
  edtALICMSRED.Visible := empresa.tpregime <> _S;
  lblCDBCCALCULOCREDITO.Visible := empresa.tpregime <> _S;
  CBXCDBCCALCULOCREDITO.Visible := empresa.tpregime <> _S;
  ckbbogerarlivroproducao.Visible := Empresa.livroproducao.bo;
  ckbbosincronizado.Visible := empresa.livro.bopdv;
end;

procedure TfrmProduto.actAbrirExecute(Sender: TObject);
begin
  registro.abrir;
end;

procedure TfrmProduto.actNovoExecute(Sender: TObject);
begin
  registro.novo(sender);
end;

procedure TfrmProduto.actSalvarExecute(Sender: TObject);
var
  key : char;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  key := #13;
  nextcontrol(Self.ActiveControl, key);
  // trabalha com registro de grade, evitar erro de insercao
  checkNomeProdutoRepetido;
  checkNomeProdutoObrigatorio;
  checkCNPJIpiCodigoEnquadramentoObrigatorio;
  checkQuantidadeParaDesativarProduto;
  checkStpis50RecuperaPISObrigatorio;
  checkStcofins50RecuperaCofinsObrigatorio;
  if cbxNUSTPIS.Text    <> '' then
  begin
    checkAliquotaPIS;
    if cbxNUSTCOFINS.Text = '' then
    begin
      MessageDlg('Situação tributária do COFINS é obrigatório quando preenche a situação tributária do PIS.', mtInformation, [mbOK], 0);
      cbxNUSTCOFINS.SetFocus;
      Abort;
    end;
  end;
  if cbxNUSTcofins.Text <> '' then
  begin
    checkAliquotaCOFINS;
    if cbxNUSTPIS.Text = '' then
    begin
      MessageDlg('Situação tributária do PIS é obrigatório quando preenche a situação tributária do COFINS.', mtInformation, [mbOK], 0);
      cbxNUSTPIS.SetFocus;
      Abort;
    end;
  end;
  checkMultiploDe;
  produto.nuclfiscal := qry.fieldbyname(_nuclfiscal).AsString;
  produto.nucest     := qry.fieldbyname(_nucest).AsString;
  produto.checkCodigoCEST;
  qry.FieldByName(_nucest).AsString := produto.nucest;
  registro.Salvar;
end;

procedure TfrmProduto.actExcluirExecute(Sender: TObject);
begin
  registro.excluir;
end;

procedure TfrmProduto.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmProduto.actCancelarExecute(Sender: TObject);
begin
  registro.cancelar;
end;

procedure TfrmProduto.actEditarExecute(Sender: TObject);
begin
  registro.editar;
end;

procedure TfrmProduto.edtCodigoKeyPress(Sender: TObject; var Key: Char);
var
  codigo : string;
begin
  if tipo = 'Código' then
  begin
    TQForm.KeyPressControl(key);
  end;
  if not ((key = #13) and (TEdit(sender).text <> '')) then
  begin
    exit;
  end;
  codigo := edtcodigo.text;
  if tipo = 'Alternativo' then
  begin
    codigo := codigodocampo(tbl, codigo, _cdalternativo);
    if codigo = '' then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [codigo, maiuscula(_produto)]), mterror, [mbok], 0);
      edtcodigo.text := qry.fieldbyname(_cdproduto).asstring;
      edtcodigo.selectall;
      exit;
    end;
    tipo              := 'Código';
    lblcodigo.Caption := tipo;
  end
  else if tipo = 'Cód Fornecedor' then
  begin
    codigo := codigodocampo(tbl, codigo, _cdcodfornecedor);
    if codigo = '' then
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [codigo, maiuscula(_produto)]), mterror, [mbok], 0);
      edtcodigo.text := qry.fieldbyname(_cdproduto).asstring;
      edtcodigo.selectall;
      exit;
    end;
    tipo              := 'Código';
    lblcodigo.Caption := tipo;
  end
  else
  begin
    codigo := edtcodigo.text;
  end;
  if not abrir(strtoint(codigo)) then
  begin
    if actnovo.Enabled then
    begin
      if messagedlg('Código '+codigo+' inexistente na tabela '+exibe+'.'#13'Deseja inserí-lo?', mtConfirmation, [mbyes, mbno], 0) = mryes then
      begin
        actNovoExecute(sender)
      end
      else
      begin
        if qry.Active then
        begin
          edtcodigo.text := qry.fieldbyname(_cdproduto).asstring;
        end;
      end;
    end
    else
    begin
      MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [codigo, maiuscula(exibe)]), mterror, [mbok], 0);
      edtcodigo.text := qry.fieldbyname(_cdproduto).asstring;
    end;
  end;
  edtcodigo.selectall;
end;

procedure TfrmProduto.edtcdfornecedorExit(Sender: TObject);
var
  codigo: string;
begin
  colorExit(sender);
  if edtcdfornecedor.Text = '' then
  begin
    exit;
  end;
  codigo := edtcdfornecedor.Text;
  if not codigoexiste( _fornecedor, codigo) then
  begin
    MessageDlg('Código da fornecedor '+codigo+' não encontrado no cadastro de '+_fornecedor+'.', mtWarning, [mbOk], 0);
    edtcdfornecedor.SetFocus;
  end;
end;

procedure TfrmProduto.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0)
  end;
end;

procedure TfrmProduto.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tqform.edtcdfornecedorPropertiesButtonClick(self, qry);
end;

procedure TfrmProduto.edtCodigoEnter(Sender: TObject);
begin
  tedit(sender).selectall;
end;

procedure TfrmProduto.FormShow(Sender: TObject);
begin
  ckbborecuperacofins.Visible := empresa.tpregime = _r;
  ckbBORECUPERAPIS.Visible    := empresa.tpregime = _r;
  ckbborecuperaicms.Visible   := empresa.tpregime <> _s;
  ckbborecuperaipi.Visible    := empresa.tpregime <> _s;
  produto                  := tproduto.create;
  lblcdalternativo.caption := qregistro.CampodoCampo(_campo, _nmcampo, UpperCase(_CDALTERNATIVO), _nmdisplayabrev, true);
  configuracaoempresa;
  tipo        := 'Código';
  pnl.caption := exibe;
  edtCodigo.SetFocus;
end;

procedure TfrmProduto.actProximoExecute(Sender: TObject);
begin
  registro.proximo;
end;

procedure TfrmProduto.actAnteriorExecute(Sender: TObject);
begin
  registro.anterior;
end;

procedure TfrmProduto.actUltimoExecute(Sender: TObject);
begin
  registro.ultimo;
end;

procedure TfrmProduto.actPrimeiroExecute(Sender: TObject);
begin
  registro.primeiro;
end;

procedure TfrmProduto.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SelectNext(sender as twincontrol, true, true);
    key := #0;
  end;
end;

procedure TfrmProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmProduto.edtCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  registro.ExibirInformacaoRegistro(qry, key);
  if key <> 119 then
  begin
    exit;
  end;
  if tipo = 'Código' then
  begin
    tipo := 'Alternativo'
  end
  else if tipo = 'Alternativo' then
  begin
    tipo := 'Cód Fornecedor'
  end
  else if tipo = 'Cód Fornecedor' then
  begin
    tipo := 'Código';
  end;
  lblcodigo.Caption := tipo;
end;

procedure TfrmProduto.actImprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmProduto.actitprodutofornecedorExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itprodutofornecedor))), qry.FieldByName(_cdproduto).AsInteger, _cdproduto);
end;

procedure TfrmProduto.actabrirfornecedorExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qryconsulta.q);
end;

procedure TfrmProduto.actabrirgrupoExecute(Sender: TObject);
begin
  if qry.FieldByName(_cdgrupo).AsString <> '' then
  begin
    Exibir_Grupo(qry.FieldByName(_cdgrupo).AsInteger);
  end;
end;

procedure TfrmProduto.actabrirsaidaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qryconsulta.q);
end;

procedure TfrmProduto.actabrirentradaExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qryconsulta.q);
end;

procedure TfrmProduto.actabrirmovtoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qryconsulta.q);
end;

procedure TfrmProduto.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qryconsulta.q);
end;

procedure TfrmProduto.actAbrirPedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qryconsulta.q);
end;

procedure TfrmProduto.actconsultaclienteExecute(Sender: TObject);
begin
  setquery(_cliente);
end;

procedure TfrmProduto.actconsultafornecedorExecute(Sender: TObject);
begin
  setquery(_fornecedor);
end;

procedure TfrmProduto.grdconsultaDblClick(Sender: TObject);
begin
  if btncliente.down    then
  begin
    actabrircliente.OnExecute   (actabrircliente);
  end;
  if btnfornecedor.down then
  begin
    actabrirfornecedor.onexecute(actabrirfornecedor);
  end;
  if btnpedido.down     then
  begin
    actabrirpedido.onexecute    (actabrirpedido);
  end;
  if btnorcamento.down  then
  begin
    actabrirorcamento.onexecute (actabrirorcamento);
  end;
  if btnsaida.down      then
  begin
    actabrirsaida.onexecute     (actabrirsaida);
  end;
  if btnitlote.Down     then
  begin
    actabrirentrada.OnExecute   (actabrirentrada);
  end;
  if btnentrada.down    then
  begin
    actabrirentrada.onexecute   (actabrirentrada);
  end;
  if btnmovto.down      then
  begin
    actabrirmovto.onexecute     (actabrirmovto);
  end;
end;

procedure TfrmProduto.actconsultapedidoExecute(Sender: TObject);
begin
  setquery(_pedido);
end;

procedure TfrmProduto.actconsultasaidaExecute(Sender: TObject);
begin
  setquery(_saida);
end;

procedure TfrmProduto.actconsultaentradaExecute(Sender: TObject);
begin
  setquery(_entrada);
end;

procedure TfrmProduto.actconsultamovtoExecute(Sender: TObject);
begin
  setquery(_movto);
end;

procedure TfrmProduto.actconsultahcustomedioExecute(Sender: TObject);
begin
  setquery(_hcustomedio);
end;

procedure TfrmProduto.actabrirtpprodutoExecute(Sender: TObject);
begin
  frmmain.AbrirDireto(taction(sender), qry, qry);
end;

procedure TfrmProduto.actconsultaordservExecute(Sender: TObject);
begin
  setquery(_ordserv);
end;

procedure TfrmProduto.CalcularPreco(sender:TObject; nmlucro, nmvenda:string);
var
  nmbscalculo : string;
begin
  if not ((qry.State = dsedit) or (qry.State = dsinsert)) then
  begin
    Exit;
  end;
  if qry.fieldbyname(_tpbslucro+nmlucro).AsString = '' then
  begin
    qry.fieldbyname(_tpbslucro+nmlucro).AsString := _U;
  end;
  if qry.fieldbyname(_tpbslucro+nmlucro).AsString = _U then
  begin
    nmbscalculo := _vlcusto
  end
  else
  begin
    nmbscalculo := _vlcustomedio;
  end;
  if sender is TcxDBCalcEdit then
  begin
    if (TcxDBCalcEdit(sender).DataBinding.Field.FieldName = nmvenda) and (qry.fieldbyname(_prlucro).AsFloat <= 0) and
       (qry.fieldbyname(nmbscalculo).AsCurrency <= 0) and (qry.fieldbyname(nmvenda).AsCurrency > 0) then
    begin
      if nmbscalculo <> _vlcustomedio then
      begin
        qry.fieldbyname(nmbscalculo).ascurrency := qry.fieldbyname(nmvenda).ascurrency;
      end;
      qry.fieldbyname(_prlucro+nmlucro).AsFloat := 0;
    end
    else if TcxDBCalcEdit(sender).DataBinding.Field.FieldName = nmvenda then
    begin
      if qry.fieldbyname(nmbscalculo).AsCurrency = 0 then
      begin
        exit;
      end;
      qry.fieldbyname(_prlucro+nmlucro).AsFloat := ((qry.fieldbyname(nmvenda).AsCurrency / qry.fieldbyname(nmbscalculo).AsCurrency) - 1) * 100;
    end
    else
    begin
      qry.fieldbyname(nmvenda).ascurrency := qry.fieldbyname(nmbscalculo).ascurrency * ((qry.fieldbyname(_prlucro+nmlucro).AsFloat / 100) + 1);
    end;
  end
  else
  begin
    qry.fieldbyname(nmvenda).ascurrency := qry.fieldbyname(nmbscalculo).ascurrency * ((qry.fieldbyname(_prlucro+nmlucro).AsFloat / 100) + 1);
  end;
end;

procedure TfrmProduto.exitcalcularprecovenda(Sender: TObject);
begin
  calcularpreco(sender, '', UpperCase(_VLVENDA));
  colorexit(sender);
end;

procedure TfrmProduto.actaplicarExecute(Sender: TObject);
var
  cdgrupo : integer;
begin
  cdgrupo := qregistro.CodigodoNomeInteiro(_grupo, txtnmgrupo.caption);
  if cdgrupo = 0 then
  begin
    exit;
  end;
  if messagedlg('Deseja aplicar as configurações do Grupo a este produto?', mtconfirmation, [mbyes, mbno], 0) = mryes then
  begin
    setgrupo(cdgrupo);
  end;
end;

procedure TfrmProduto.FormDestroy(Sender: TObject);
begin
  freeandnil(qryitlotesaida);
  freeandnil(qryitloteentrada);
  freeandnil(qryconsulta);
  freeandnil(registro);
  freeandnil(produto);
  freeandnil(qry);
end;

procedure TfrmProduto.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure TfrmProduto.edtvlcustoExit(Sender: TObject);
begin
  calcularpreco(sender, '', UpperCase(_VLVENDA));
  calcularpreco(sender, _atacado , UpperCase(_VLATACADO));
  calcularpreco(sender, _prazo   , UpperCase(_vlprazo));
  calcularpreco(sender, _especial, UpperCase(_VLESPECIAL));
  colorexit(sender);
end;

procedure TfrmProduto.exitcalcularprecoatacado(Sender: TObject);
begin
  calcularpreco(sender, _atacado, UpperCase(_vlatacado));
  colorexit(sender);
end;

procedure TfrmProduto.exitcalcularprecoespecial(Sender: TObject);
begin
  calcularpreco(sender, _especial, UpperCase(_VLESPECIAL));
  colorexit(sender);
end;

procedure TfrmProduto.SetQuery(tabela:string);
  function setmovto:string;
  begin
    result := 'SELECT ITMOVTO.CDMOVTO'+
                    ',MOVTO.DTEMISSAO'+
                    ',TPMOVTO.NMTPMOVTO'+
                    ',CNTCUSTO.NUNIVEL||'' - ''||CNTCUSTO.NMCNTCUSTO NMCNTCUSTO'+
                    ',ITMOVTO.QTITEM'+
                    ',ITMOVTO.VLUNITARIO'+
                    ',SAIDA.NUSAIDA'+
                    ',ITMOVTO.VLTOTAL '+
              'FROM ITMOVTO '+
              'LEFT JOIN MOVTO ON MOVTO.CDMOVTO=ITMOVTO.CDMOVTO and ITMOVTO.cdempresa=MOVTO.cdempresa '+
              'left join itsaida on itsaida.cdempresa=MOVTO.cdempresa and itsaida.cditsaida=MOVTO.cditsaida '+
              'LEFT JOIN SAIDA ON SAIDA.CDEMPRESA=itsaida.CDEMPRESA AND SAIDA.CDSAIDA=itsaida.CDSAIDA '+
              'LEFT JOIN CNTCUSTO ON CNTCUSTO.CDCNTCUSTO=ITMOVTO.CDCNTCUSTO and CNTCUSTO.cdempresa=ITMOVTO.cdempresa '+
              'LEFT JOIN TPMOVTO ON TPMOVTO.CDTPMOVTO=MOVTO.CDTPMOVTO and TPMOVTO.cdempresa=MOVTO.cdempresa '+
              'WHERE ITMOVTO.CDEMPRESA=:CDEMPRESA AND ITMOVTO.CDPRODUTO=:cdproduto '+
              'ORDER BY MOVTO.DTEMISSAO DESC';
  end;
  function setentrada:string;
  begin
    result := 'SELECT E.NUENTRADA'+
                 ',t.nmtpentrada'+
                 ',E.DTEMISSAO'+
                 ',E.DTSAIDA'+
                 ',E.NUDOCFISCALICMS'+
                 ',E.CDFORNECEDOR'+
                 ',F.RZSOCIAL'+
                 ',I.CDCFOP'+
                 ',I.QTITEM'+
                 ',I.VLUNITARIO'+
                 ',I.VLTOTAL'+
                 ',I.ALICMS'+
                 ',I.ALIPI'+
                 ',I.CDENTRADA'+
                 ',i.nusticms '+
           'FROM itENTRADA i '+
           'LEFT JOIN ENTRADA e ON E.CDENTRADA=I.CDENTRADA AND E.CDEMPRESA=I.CDEMPRESA '+
           'left join tpentrada t on t.cdtpentrada=e.cdtpentrada AND T.CDEMPRESA=E.CDEMPRESA '+
           'LEFT JOIN FORNECEDOR f ON F.CDFORNECEDOR=E.CDFORNECEDOR AND F.CDEMPRESA=E.CDEMPRESA '+
           'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDPRODUTO=:cdproduto '+
           'ORDER BY E.CDENTRADA DESC';
  end;
  function setsaida:string;
  begin
    result := 'SELECT S.NUSAIDA'+
                 ',T.NMTPSAIDA'+
                 ',S.DTEMISSAO'+
                 ',S.CDCLIENTE'+
                 ',C.RZSOCIAL'+
                 ',I.CDCFOP'+
                 ',I.QTITEM'+
                 ',I.VLUNITARIO'+
                 ',I.VLTOTAL'+
                 ',I.ALICMS'+
                 ',I.NUSTICMS'+
                 ',I.CDSAIDA'+
                 ',I.ALIPI '+
             'FROM itSAIDA i '+
             'LEFT JOIN SAIDA s ON S.CDSAIDA=I.CDSAIDA AND S.CDEMPRESA=I.CDEMPRESA '+
             'LEFT JOIN TPSAIDA t ON T.CDTPSAIDA=S.CDTPSAIDA AND T.CDEMPRESA=S.CDEMPRESA '+
             'LEFT JOIN CLIENTE c ON C.CDCLIENTE=S.CDCLIENTE AND C.CDEMPRESA=S.CDEMPRESA '+
             'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDPRODUTO=:cdproduto '+
             'ORDER BY I.CDSAIDA DESC';
  end;
  function setordserv:string;
  begin
    result := 'SELECT o.NUordserv'+
                 ',o.dtentrada'+
                 ',S.NMSTordserv'+
                 ',o.CDCLIENTE'+
                 ',C.RZSOCIAL'+
                 ',I.QTITEM'+
                 ',I.VLUNITARIO'+
                 ',I.CDORDSERV'+
                 ',I.VLTOTAL ' +
           'FROM ordserv o '+
           'LEFT JOIN itordserv i ON o.CDordserv=I.CDordserv AND I.CDEMPRESA=O.CDEMPRESA '+
           'LEFT JOIN STordserv s ON o.CDSTordserv=S.CDSTordserv AND S.CDEMPRESA=O.CDEMPRESA '+
           'LEFT JOIN CLIENTE c ON C.CDCLIENTE=o.CDCLIENTE AND C.CDEMPRESA=O.CDEMPRESA '+
           'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDPRODUTO=:cdproduto '+
           'ORDER BY I.CDordserv DESC';
  end;
  function setitordservexterno:string;
  begin
    result := 'SELECT o.NUordserv'+
                 ',o.dtentrada'+
                 ',S.NMSTordserv'+
                 ',o.CDCLIENTE' +
                 ',C.RZSOCIAL'+
                 ',I.QTITEM'+
                 ',I.VLUNITARIO'+
                 ',I.CDORDSERV'+
                 ',I.VLTOTAL ' +
           'FROM ordserv o '+
           'LEFT JOIN itordservexterno i ON o.CDordserv=I.CDordserv AND I.CDEMPRESA=O.CDEMPRESA '+
           'LEFT JOIN STordserv s ON o.CDSTordserv=S.CDSTordserv AND S.CDEMPRESA=O.CDEMPRESA '+
           'LEFT JOIN CLIENTE c ON C.CDCLIENTE=o.CDCLIENTE AND C.CDEMPRESA=O.CDEMPRESA '+
           'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDPRODUTO=:cdproduto '+
           'ORDER BY I.CDordserv DESC';
  end;
  function setpedido:string;
  begin
    result := 'SELECT I.CDPEDIDO'+
                 ',P.NUPEDIDO'+
                 ',P.DTEMISSAO'+
                 ',S.NMSTPEDIDO'+
                 ',P.CDCLIENTE'+
                 ',C.RZSOCIAL'+
                 ',I.QTITEM'+
                 ',I.VLUNITARIO'+
                 ',I.VLTOTAL'+
                 ',I.QTATENDIDA '+
           'FROM ITPEDIDO i '+
           'LEFT JOIN PEDIDO p ON P.CDPEDIDO=I.CDPEDIDO AND P.CDEMPRESA=I.CDEMPRESA '+
           'LEFT JOIN STPEDIDO s ON P.CDSTPEDIDO=S.CDSTPEDIDO AND S.CDEMPRESA=P.CDEMPRESA '+
           'LEFT JOIN CLIENTE c ON C.CDCLIENTE=P.CDCLIENTE AND C.CDEMPRESA=P.CDEMPRESA '+
           'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDPRODUTO=:cdproduto '+
           'ORDER BY I.CDPEDIDO DESC';
  end;
  function setorcamento:string;
  begin
    result := 'SELECT I.CDORCAMENTO'+
                 ',o.DTEMISSAO'+
                 ',S.NMSTORCAMENTO'+
                 ',O.CDCLIENTE'+
                 ',C.RZSOCIAL'+
                 ',I.QTITEM'+
                 ',I.VLUNITARIO'+
                 ',I.VLTOTAL '+
           'FROM ITORCAMENTO i '+
           'LEFT JOIN ORCAMENTO O ON O.CDORCAMENTO=I.CDORCAMENTO AND O.CDEMPRESA=I.CDEMPRESA '+
           'LEFT JOIN STORCAMENTO s ON O.CDSTORCAMENTO=S.CDSTORCAMENTO '+
           'LEFT JOIN CLIENTE c ON C.CDCLIENTE=O.CDCLIENTE AND C.CDEMPRESA=O.CDEMPRESA '+
           'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDPRODUTO=:cdproduto '+
           'ORDER BY I.CDORCAMENTO DESC';
  end;
  function setfornecedor:string;
  begin
    result := 'SELECT F.CDFORNECEDOR'+
                 ',F.RZSOCIAL'+
                 ',F.DSENDERECO'+
                 ',F.NMBAIRRO'+
                 ',m.nmmunicipio'+
                 ',U.SGUF'+
                 ',SUM(I.QTITEM) QTITEM'+
                 ',AVG(I.VLUNITARIO) VLUNITARIO'+
                 ',SUM(I.VLTOTAL) VLTOTAL '+
           'FROM entrada e '+
           'LEFT JOIN fornecedor f ON E.CDFORNECEDOR=F.CDFORNECEDOR AND F.CDEMPRESA=E.CDEMPRESA '+
           'left join municipio m on m.cdmunicipio=f.cdmunicipio '+
           'LEFT JOIN UF u ON U.CDUF=F.CDUF '+
           'LEFT JOIN ITENTRADA i ON I.CDENTRADA=E.CDENTRADA AND I.CDEMPRESA=E.CDEMPRESA '+
           'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDPRODUTO=:cdproduto '+
           'GROUP BY F.CDFORNECEDOR'+
                   ',F.RZSOCIAL'+
                   ',F.DSENDERECO'+
                   ',F.NMBAIRRO'+
                   ',m.nmmunicipio'+
                   ',U.SGUF';
  end;
  function setcliente:string;
  begin
    result := 'SELECT C.CDCLIENTE'+
                 ',C.RZSOCIAL'+
                 ',C.DSENDERECO'+
                 ',C.NMBAIRRO'+
                 ',M.NMMUNICIPIO'+
                 ',U.SGUF'+
                 ',SUM(I.QTITEM) QTITEM'+
                 ',AVG(I.VLUNITARIO) VLUNITARIO'+
                 ',SUM(I.VLTOTAL) VLTOTAL '+
           'FROM SAIDA s '+
           'LEFT JOIN CLIENTE c ON S.CDCLIENTE=C.CDCLIENTE AND C.CDEMPRESA=S.CDEMPRESA '+
           'LEFT JOIN MUNICIPIO m ON M.CDMUNICIPIO=C.CDMUNICIPIO '+
           'LEFT JOIN UF u ON U.CDUF=C.CDUF '+
           'LEFT JOIN ITSAIDA i ON I.CDSAIDA=S.CDSAIDA AND I.CDEMPRESA=S.CDEMPRESA ' +
           'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDPRODUTO=:cdproduto '+
           'GROUP BY C.CDCLIENTE'+
                  ',C.RZSOCIAL'+
                  ',C.DSENDERECO'+
                  ',C.NMBAIRRO'+
                  ',M.NMMUNICIPIO'+
                  ',U.SGUF';
  end;
  FUNCTION setordproducao:string;
  begin
    result := 'select ordproducao.cdordproducao'+
                    ',ordproducao.dtemissao'+
                    ',ordproducao.dtentrega'+
                    ',ordproducao.DTPRVENTREGA'+
                    ',ordproducao.qtitem'+
                    ',ordproducao.qtproducao'+
                    ',stordproducao.nmstordproducao'+
                    ',tpordproducao.nmtpordproducao '+
              'from ordproducao '+
              'left join stordproducao on stordproducao.cdempresa=ordproducao.cdempresa and stordproducao.cdstordproducao=ordproducao.cdstordproducao '+
              'left join tpordproducao on tpordproducao.cdempresa=ordproducao.cdempresa and tpordproducao.cdtpordproducao=ordproducao.cdtpordproducao '+
              'where ordproducao.cdempresa=:cdempresa and ordproducao.cdproduto=:cdproduto';
  end;
  function sethcustomedio:string;
  begin
    result := 'SELECT H.DTHISTORICO'+
                 ',H.QTESTOQUE'+
                 ',H.VLCUSTOMEDIO '+
           'FROM HCUSTOMEDIO h '+
           'WHERE H.CDPRODUTO=:cdproduto AND H.CDEMPRESA=:CDEMPRESA '+
           'ORDER BY H.DTHISTORICO DESC';
  end;
  function setitlote:string;
  begin
    result := 'SELECT CDEMPRESA'+
                    ',CDITLOTE'+
                    ',VLCUSTO'+
                    ',DTCOMPRA'+
                    ',QTENTRADA'+
                    ',QTESTOQUE'+
                    ',NUIMEI '+
                    ',DTFABRICACAO'+
                    ',DTVALIDADE'+
                    ',VLVENDA '+
              'FROM itlote '+
              'WHERE CDPRODUTO=:cdproduto AND CDEMPRESA=:CDEMPRESA';
  end;
  function makesql:string;
  begin
    if tabela = _movto then
    begin
      result := setmovto
    end
    else if tabela = _entrada then
    begin
      result := setentrada
    end
    else if tabela = _saida then
    begin
      result := setsaida
    end
    else if tabela = _itlote then
    begin
      result := setitlote
    end
    else if tabela = _ordserv then
    begin
      result := setordserv
    end
    else if tabela = _orcamento then
    begin
      result := setorcamento
    end
    else if tabela = _itordservexterno then
    begin
      result := setitordservexterno
    end
    else if tabela = _pedido then
    begin
      result := setpedido
    end
    else if tabela = _fornecedor then
    begin
      result := setfornecedor
    end
    else if tabela = _cliente then
    begin
      result := setcliente
    end
    else if tabela = _ordproducao then
    begin
      result := setordproducao
    end
    else if tabela = _hcustomedio then
    begin
      result := sethcustomedio;
    end;
  end;
  function get_gridview:TcxCustomGridView;
  begin
    if tabela = _movto then
    begin
      result := tbvmovto
    end
    else if tabela = _entrada then
    begin
      result := tbventrada
    end
    else if tabela = _saida then
    begin
      result := tbvsaida
    end
    else if tabela = _itlote then
    begin
      result := tbvitlote
    end
    else if tabela = _ordserv then
    begin
      result := tbvordserv
    end
    else if tabela = _orcamento then
    begin
      result := tbvorcamento
    end
    else if tabela = _itordservexterno then
    begin
      result := tbvordservexterno
    end
    else if tabela = _pedido then
    begin
      result := tbvpedido
    end
    else if tabela = _fornecedor then
    begin
      result := tbvfornecedor
    end
    else if tabela = _ordproducao then
    begin
      result := tbvordproducao
    end
    else if tabela = _cliente then
    begin
      result := tbvcliente
    end
    else
    begin
      result := tbvhcustomedio;
    end;
  end;
  procedure set_itlote;
  begin
    grditlote.Visible := tabela = _itlote;
    splitlote.Visible := tabela = _itlote;
  end;
begin
  qryconsulta.q.Close;
  glvLevel1.GridView   := get_gridview;
  QRYCONSULTA.q.sql.text := makesql;
  qryconsulta.q.AfterScroll := nil;
  qryconsulta.q.parambyname(_cdempresa).AsLargeInt := qry.fieldbyname(_cdempresa).AsLargeInt;
  qryconsulta.q.parambyname(_cdproduto).asstring := qry.fieldbyname(_cdproduto).asstring;
  qryconsulta.q.Open;
  qryconsulta.q.AfterScroll := qryconsultaAfterScroll;
  qryconsultaAfterScroll(qryconsulta.q);
  set_itlote;
end;

procedure TfrmProduto.actconsultaordservexternoExecute(Sender: TObject);
begin
  setquery(_itordservexterno);
end;

procedure TfrmProduto.actconsultaorcamentoExecute(Sender: TObject);
begin
  setquery(_orcamento);
end;

procedure TfrmProduto.actabrirorcamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qryconsulta.q);
end;

procedure TfrmProduto.FormCreate(Sender: TObject);
begin
  qryitlotesaida := TClasseQuery.create;
  dtsitlotesaida.dataset := qryitlotesaida.q;
  qryitloteentrada := TClasseQuery.create;
  dtsitloteentrada.dataset := qryitloteentrada.q;
  qryconsulta := TClasseQuery.create;
  dtsconsulta.dataset := qryconsulta.q;
  qryconsulta.q.afterscroll := qryconsultaafterscroll;

  tbl      := _produto;
  exibe    := maiuscula(_Produto);
  registro := tregistro.create(self, tbl, exibe, 'o', qry, dts, edtcodigo);
  setUsarProdutoEm;
  SetEmpresa;
  AbrirTabela;
  GeraMenuRelatorio ('', btnimprimir, 61, self, _produto);
end;

procedure TfrmProduto.edtnomeExit(Sender: TObject);
begin
  if (dts.State <> dsedit) and (dts.State <> dsinsert) then
  begin
    colorexit(sender);
    exit;
  end;
  if trim(edtnome.Text) = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Nome]), mtinformation, [mbok], 0);
    edtnome.SetFocus;
    Abort;
  end;
  if (not empresa.material.produto.bonmrepetido) and produto.existeNomeProduto(edtnome.Text, edtcodigo.text) then
  begin
    messagedlg('Produto '+edtnome.Text+' já existe no cadastro.'#13'Altere o nome para poder continuar.', mtInformation, [mbok], 0);
    edtnome.SetFocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmProduto.edtnomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
  end;
end;

procedure TfrmProduto.actmetodoprocessoExecute(Sender: TObject);
begin
  dlgMetodoProcesso(qry.FieldByName(_cdproduto).AsInteger);
end;

procedure TfrmProduto.actconsultaloteExecute(Sender: TObject);
begin
  setquery(_itlote);
end;

procedure TfrmProduto.actcopiarExecute(Sender: TObject);
var
  codigo : integer;
begin
  if empresa.get_bloqueado then
  begin
    exit;
  end;
  produto.cdproduto := qry.fieldbyname(_cdproduto).AsInteger;
  codigo := produto.copiar;
  if codigo <> 0 then
  begin
    abrir(codigo);
  end;
end;

procedure TfrmProduto.actopcoesExecute(Sender: TObject);
begin
  btnopcoes.DropDown(false);
end;

procedure TfrmProduto.actmetodoprocessorecriarOrdProducaoExecute(Sender: TObject);
begin
  if produto.RecriarOrdProducaoAberto then
  begin
    messagedlg('Ordens de Produção recriadas.', mtinformation, [mbok], 0);
  end;
end;

procedure TfrmProduto.edtVLPRAZOExit(Sender: TObject);
begin
  calcularpreco(sender, _prazo, UpperCase(_vlprazo));
  colorexit(sender);
end;

procedure TfrmProduto.actprodutoclienteExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_produtocliente))), qry.FieldByName(_cdproduto).AsInteger, _cdproduto);
end;

procedure TfrmProduto.actprodutosimilarExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_produtosimilar))), qry.FieldByName(_cdproduto).AsInteger, _cdprodutoorigem);
end;

procedure TfrmProduto.zerar_imposto(tpimposto:string);
begin
  if qry.FieldByName(_al+tpimposto).AsFloat = 0 then
  begin
    qry.FieldByName(_al+tpimposto).Clear;
  end;
end;

procedure TfrmProduto.limparAliquotaZerada;
begin
  zerar_imposto(_icms);
  zerar_imposto(_ipi);
  zerar_imposto(_pis);
  zerar_imposto(_cofins);
end;

procedure TfrmProduto.check_aliquota(tpimposto:string);
begin
  if (qry.FieldByName(_al+tpimposto).AsFloat > 0) and (qry.FieldByName(_nust+tpimposto).AsString = '') then
  begin
    MessageDlg('Situação tributária do '+tpimposto+' é um campo obrigatório quando a alíquota do '+tpimposto+' está preenchida.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    qry.FieldByName(_nust+tpimposto).FocusControl;
    Abort;
  end;
end;

procedure TfrmProduto.checkAliquotaSituacaoTributaria;
begin
  check_aliquota(_icms);
  check_aliquota(_pis);
  check_aliquota(_cofins);
end;

function TfrmProduto.situacao_recupera(tpimposto:string):Boolean;
begin
  result := (qry.FieldByName(_nust+tpimposto).AsString = _50) or
            (qry.FieldByName(_nust+tpimposto).AsString = _51) or
            (qry.FieldByName(_nust+tpimposto).AsString = _52) or
            (qry.FieldByName(_nust+tpimposto).AsString = _53) or
            (qry.FieldByName(_nust+tpimposto).AsString = _54) or
            (qry.FieldByName(_nust+tpimposto).AsString = _55) or
            (qry.FieldByName(_nust+tpimposto).AsString = _56);
end;

procedure TfrmProduto.checkSituacaoTriburariaPISCOFINSRecupera;
begin
  if situacao_recupera(_pis) and (qry.FieldByName(_borecuperapis).AsString <> _s) then
  begin
    MessageDlg('Para a situação do pis '+qry.fieldbyname(_nustpis).AsString+' é obrigatório recuperar o imposto.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    qry.FieldByName(_borecuperapis).FocusControl;
    Abort;
  end;
  if situacao_recupera(_cofins) and (qry.FieldByName(_borecuperacofins).AsString <> _s) then
  begin
    MessageDlg('Para a situação do cofins '+qry.fieldbyname(_nustcofins).AsString+' é obrigatório recuperar o imposto.', mtInformation, [mbOK], 0);
    pgc.ActivePage := tbscadastro;
    qry.FieldByName(_borecuperacofins).FocusControl;
    Abort;
  end;
end;

procedure TfrmProduto.actgradeExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itgradevalor))), qry.FieldByName(_cdproduto).AsInteger, _cdproduto);
end;

procedure TfrmProduto.actitprodutoExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_itproduto))), qry.FieldByName(_cdproduto).AsInteger, _cdproduto);
end;

procedure TfrmProduto.acthcustoproducaopExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_hcustoproducaop))), qry.FieldByName(_cdproduto).AsInteger, _cdproduto);
end;

procedure TfrmProduto.actprodutotpclienteExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_produtotpcliente))), qry.FieldByName(_cdproduto).AsInteger, _cdproduto);
end;

procedure TfrmProduto.actprodutofornecedorExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_produtofornecedor))), qry.FieldByName(_cdproduto).AsInteger, _cdproduto);
end;

procedure TfrmProduto.dtsStateChange(Sender: TObject);
begin
  //registro.statechange;
end;

procedure TfrmProduto.qryAfterScroll(DataSet: TDataSet);
begin
  produto.Select(dataset);
  produto.tpproduto.Select(produto.cdtpproduto);
  setrecord(qry.fieldbyname(_cdtpproduto).asinteger);
  if btncliente.Down then
  begin
    setquery(_cliente)
  end
  else if btnfornecedor.Down then
  begin
    setquery(_fornecedor)
  end
  else if btnorcamento.Down then
  begin
    SetQuery(_orcamento)
  end
  else if btnpedido.Down then
  begin
    setquery(_pedido)
  end
  else if btnsaida.Down then
  begin
    setquery(_saida)
  end
  else if btnordserv.Down then
  begin
    setquery(_ordserv)
  end
  else if btnordservexterno.Down then
  begin
    setquery(_itordservexterno)
  end
  else if btnhcustomedio.Down then
  begin
    setquery(_hcustomedio)
  end
  else if btnitlote.Down then
  begin
    SetQuery(_itlote)
  end
  else if btnmovto.Down then
  begin
    SetQuery(_movto)
  end
  else if btnentrada.Down then
  begin
    setquery(_entrada);
  end;
end;

procedure TfrmProduto.SetCdGrupo;
begin
  if not qry.Fieldbyname(_nunivel).IsNull then
  begin
    qry.Fieldbyname(_cdgrupo).asstring := CodigodoCampo(_grupo, qry.Fieldbyname(_nunivel).asstring, _nunivel)
  end
  else
  begin
    qry.fieldbyname(_cdgrupo).clear;
  end;
end;

function TfrmProduto.consistecodfornecedor:boolean;
begin
  if Empresa.material.produto.bocodfornecedorunico and
    (codigoexiste(_produto, _cdcodfornecedor, _string, qry.fieldbyname(_cdcodfornecedor).asstring)) and
    (CodigodoCampo(_produto, qry.fieldbyname(_cdcodfornecedor).asstring, _cdcodfornecedor) <> qry.fieldbyname(_cdproduto).asstring) then
  begin
    messagedlg('Código do fornecedor duplicado com o produto '+CodigodoCampo(_produto, qry.fieldbyname(_cdcodfornecedor).asstring, 'cdcodfornecedor')+'.'#13+
               'Digite outro código de fornecedor para continuar.', mtinformation, [mbok], 0);
    qry.Fieldbyname(_cdcodfornecedor).FocusControl;
    abort;
  end;
  result := true;
end;

function TfrmProduto.consistecdalternativo:boolean;
begin
  if (codigoexiste(_produto, _cdalternativo, _string, qry.fieldbyname(_cdalternativo).asstring)) and
     (CodigodoCampo(_produto, qry.fieldbyname(_cdalternativo).asstring, _cdalternativo) <> qry.fieldbyname(_cdproduto).asstring) then
  begin
    messagedlg('Código alternativo duplicado com o produto '+CodigodoCampo(_produto, qry.fieldbyname(_cdalternativo).asstring, _cdalternativo)+'.'#13+
               'Digite outro código alternativo para continuar.', mtinformation, [mbok], 0);
    qry.Fieldbyname(_cdalternativo).FocusControl;
    abort;
  end;
  result := true;
end;

procedure TfrmProduto.Setcaracteristicas;
begin
  if produto.tpproduto.bocaracteristicas = _s then
  begin
    exit;
  end;
  qry.fieldbyname(_cdtamanho).clear;
  qry.fieldbyname(_cdcor).clear;
end;

procedure TfrmProduto.Setdiasgarantia;
begin
  if produto.tpproduto.bodiasgarantia <> _s then
  begin
    qry.fieldbyname(_nudiasgarantia).clear;
  end;
end;

procedure TfrmProduto.SetFornecedorExclusivo;
begin
  if produto.tpproduto.bofornecedorexclusivo <> _s then
  begin
    qry.fieldbyname(_cdfornecedor).clear;
  end;
end;

procedure TfrmProduto.Setlocalizacao;
begin
  if not ((produto.tpproduto.bolocalizacao = _s) or (produto.tpproduto.boimovel = _s)) then
  begin
    qry.fieldbyname(_dslocalizacao).clear;
  end;
end;

procedure TfrmProduto.SetEstoque;
begin
  if produto.tpproduto.boestoque = _s then
  begin
    if qry.fieldbyname(_qtestoque).IsNull then
    begin
      qry.fieldbyname(_qtestoque).Asfloat := 0;
    end;
    if qry.fieldbyname(_qtestmin).IsNull  then
    begin
      qry.fieldbyname(_qtestmin).Asfloat  := 0;
    end;
    if qry.fieldbyname(_qtestmax).IsNull  then
    begin
      qry.fieldbyname(_qtestmax).Asfloat  := 0;
    end;
    if qry.fieldbyname(_qtestprev).IsNull then
    begin
      qry.fieldbyname(_qtestprev).Asfloat := 0;
    end;
    exit;
  end;
  qry.fieldbyname(_qtestoque).clear;
  qry.fieldbyname(_qtestmin).clear;
  qry.fieldbyname(_qtestmax).clear;
  qry.fieldbyname(_qtestprev).clear;
end;

procedure TfrmProduto.check_tipo_produto_obrigatorio;
begin
  if qry.fieldbyname(_cdtpproduto).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    qry.fieldbyname(_cdtpproduto).FocusControl;
    abort;
  end;
end;

procedure TfrmProduto.check_grupo_obrigatorio;
begin
  if qry.fieldbyname(_cdgrupo).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Grupo]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    qry.fieldbyname(_nunivel).FocusControl;
    abort;
  end;
end;

procedure TfrmProduto.check_unidade_obrigatorio;
begin
  if qry.fieldbyname(_cdunidade).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Unidade]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    cbxcdunidade.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.check_tipo_item_obrigatorio;
begin
  if qry.fieldbyname(_cdtpitem).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__codigo+' '+_do+' '+_tipo+' '+_de+' '+__item]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    cbxcdtpitem.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.check_sticms_obrigatorio;
begin
  if (qry.fieldbyname(_nusticms).AsString = '') and
     (qry.fieldbyname(_cdtpitem).AsString <> _08) and
     (qry.fieldbyname(_cdtpitem).AsString <> _07) and
     (qry.fieldbyname(_cdtpitem).AsString <> _04) and
     (qry.fieldbyname(_cdtpitem).AsString <> _01) and
     (qry.fieldbyname(_cdtpitem).AsString <> _99) and
     (qry.fieldbyname(_cdtpitem).AsString <> _09) then
  begin
    messagedlg('A definição de situação tributaria é obrigatório para o tipo de item informado.', mterror, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    qry.fieldbyname(_nusticms).FocusControl;
    abort;
  end;
end;

procedure TfrmProduto.check_ncm_obrigatorio;
begin
  if BooleandoCodigo(_tpitem, qry.Fieldbyname(_cdtpitem).AsString, _bonuclfiscal) and (qry.Fieldbyname(_nuclfiscal).AsString = '') then
  begin
    messagedlg('NCM é um campo obrigatório quando o tipo de item for "'+qry.Fieldbyname(_cdtpitem).AsString+'".', mtInformation, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    edtnuclfiscal.SetFocus;
    abort;
  end;
  if (not qry.fieldbyname(_nuclfiscal).IsNull) and
     (length(qry.Fieldbyname(_nuclfiscal).AsString) <> 8) and
     (qry.FieldByName(_nuclfiscal).AsString <> _00) and
     (length(qry.Fieldbyname(_nuclfiscal).AsString) <> 0) then
  begin
    messagedlg('NCM deve ter 8 caracteres.', mterror, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    qry.fieldbyname(_nuclfiscal).FocusControl;
    abort;
  end;
end;

procedure TfrmProduto.check_ncm_conteudo;
begin
  if (qry.Fieldbyname(_nuclfiscal).AsString <> _00) and (qry.Fieldbyname(_nuclfiscal).AsString = StringOfChar(_9, 8)) then
  begin
    messagedlg('Conteúdo '+qry.Fieldbyname(_nuclfiscal).AsString+' não é permitido no NCM.', mtInformation, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    qry.fieldbyname(_nuclfiscal).FocusControl;
    abort;
  end;
end;

procedure TfrmProduto.check_origem_obrigatorio;
begin
  if qry.fieldbyname(_cdorigem).IsNull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_origem]), mtinformation, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    cbxcdorigem.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.check_sticms_existente;
begin
  if (qry.FieldByName(_nusticms).AsString <> '') and (not CodigoExiste(_sticms, _nusticms, _string, qry.fieldbyname(_nusticms).AsString)) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [qry.FieldByName(_nusticms).AsString, maiuscula(__situacao+' '+__tributaria+' '+_icms)]), mterror, [mbok], 0);
    pgc.ActivePage := tbsCadastro;
    cbxNUSTICMS.SetFocus;
    abort;
  end;
end;

procedure TfrmProduto.qryBeforePost(DataSet: TDataSet);
begin
  if (Dataset.State <> dsedit) and (Dataset.State <> dsinsert) then
  begin
    Exit;
  end;
  setcdgrupo;
  if (not Dataset.FieldByName(_nusticms).IsNull) and (Dataset.FieldByName(_nusticms).AsString = '') then
  begin
    Dataset.FieldByName(_nusticms).Clear;
  end;
  check_tipo_produto_obrigatorio;
  check_grupo_obrigatorio;
  check_unidade_obrigatorio;
  check_tipo_item_obrigatorio;
  check_sticms_obrigatorio;
  check_ncm_obrigatorio;
  check_ncm_conteudo;
  check_origem_obrigatorio;
  consistecodfornecedor;
  consistecdalternativo;
  ConsisteCNPJ(dataset, tbl, exibe);
  Setcaracteristicas;
  setdiasgarantia;
  SetFornecedorExclusivo;
  setlocalizacao;
  setestoque;
  check_sticms_existente;
  if (produto.tpproduto.bounidade2 = _s) and qry.FieldByName(_cdunidade2).IsNull then
  begin
    MessageDlg('Unidade 2 é um campo obrigatório.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if Dataset.FieldByName(_nustpis).AsString = '' then
  begin
    Dataset.FieldByName(_nustpis).Clear;
  end;
  if Dataset.FieldByName(_nustcofins).AsString = '' then
  begin
    Dataset.FieldByName(_nustcofins).Clear;
  end;
  if Dataset.FieldByName(_cdbccalculocredito).AsString = '' then
  begin
    Dataset.FieldByName(_cdbccalculocredito).Clear;
  end;
  if Dataset.FieldByName(_alicms).AsCurrency = 0  then
  begin
    Dataset.FieldByName(_alicms).Clear;
  end;
  if Dataset.FieldByName(_nuplconta).AsString <> '' then
  begin
    Dataset.FieldByName(_cdplconta).AsString := CodigodoCampo(_plconta, Dataset.FieldByName(_nuplconta).AsString, _nunivel)
  end
  else
  begin
    Dataset.FieldByName(_cdplconta).Clear;
  end;
  if Dataset.FieldByName(_nuplcontasaida).AsString <> '' then
  begin
    Dataset.FieldByName(_cdplcontasaida).AsString := CodigodoCampo(_plconta, Dataset.FieldByName(_nuplcontasaida).AsString, _nunivel)
  end
  else
  begin
    Dataset.FieldByName(_cdplcontasaida).Clear;
  end;
  if Dataset.FieldByName(_nucntcusto).AsString <> '' then
  begin
    Dataset.FieldByName(_cdcntcusto).AsString := CodigodoCampo(_cntcusto, Dataset.FieldByName(_nucntcusto).AsString, _nunivel)
  end
  else
  begin
    Dataset.FieldByName(_cdcntcusto).Clear;
  end;
  if Dataset.FieldByName(_nucntcustosaida).AsString <> '' then
  begin
    Dataset.FieldByName(_cdcntcustosaida).AsString := CodigodoCampo(_cntcusto, Dataset.FieldByName(_nucntcustosaida).AsString, _nunivel)
  end
  else
  begin
    Dataset.FieldByName(_cdcntcustosaida).Clear;
  end;
  limparAliquotaZerada;
  checkAliquotaSituacaoTributaria;
  checkSituacaoTriburariaPISCOFINSRecupera;
  if produto.tpproduto.bounidade2 <> _s then
  begin
    qry.FieldByName(_cdunidade2).Clear;
    qry.FieldByName(_qtestoque2).Clear;
  end;
  if produto.tpproduto.boservico = _s then
  begin
    qry.fieldbyname(_nusticms).asstring := _90;
  end;
  dataset.fieldbyname(_nmproduto).asstring := RemoverChar(dataset.fieldbyname(_nmproduto).asstring, #13);
  registro.set_update(qry);
  setTelaObjeto;
  produto.calcularPesoChapa;
  qry.FieldByName(_psliquido).asfloat := produto.psliquido;
  qry.FieldByName(_psbruto).AsFloat   := produto.psbruto;
  setTelaObjeto;
  if produto.tpproduto.bogerarnomeautomatico = _s then
  begin
    produto.cdalternativo := qry.FieldByName(_cdalternativo).AsString;
    produto.nmproduto := qry.FieldByName(_nmproduto).AsString;
    produto.dsproduto := qry.FieldByName(_dsproduto).AsString;
    produto.GerarNomeAutomaticamente;
    qry.FieldByName(_cdalternativo).AsString := produto.cdalternativo;
    qry.FieldByName(_nmproduto).AsString     := produto.cdalternativo;
    qry.FieldByName(_dsproduto).AsString     := produto.dsproduto;
  end;
end;

procedure TfrmProduto.qryNewRecord(DataSet: TDataSet);
begin
  set_bo_value(dataset);
  Dataset.FieldByName(_VLCUSTO).AsFloat           := 0;
  Dataset.FieldByName(_VLVENDA).AsFloat           := 0;
  Dataset.FieldByName(_QTESTOQUE).AsFloat         := 0;
  Dataset.FieldByName(_QTPEDIDO).AsFloat          := 0;
  Dataset.FieldByName(_qtdisponivel).AsFloat      := 0;
  Dataset.FieldByName(_QTESTMIN).AsFloat          := 0;
  Dataset.FieldByName(_QTESTMAX).AsFloat          := 0;
  Dataset.FieldByName(_QTESTPREV).AsFloat         := 0;
  Dataset.FieldByName(_VLCUSTOMEDIO).AsFloat      := 0;
  Dataset.FieldByName(_PRLUCRO).AsFloat           := 0;
  Dataset.FieldByName(_PRLUCROPRAZO).AsFloat      := 0;
  Dataset.FieldByName(_PRLUCROATACADO).AsFloat    := 0;
  Dataset.FieldByName(_PRLUCROESPECIAL).AsFloat   := 0;
  //if empresa.material.produto.bopesoautomatico then
  //begin
    Dataset.FieldByName(_psliquido).AsFloat         := 1;
    Dataset.FieldByName(_psbruto).AsFloat           := 1;
  //end;
  dataset.fieldbyname(_nusticms).asstring := _90;
  Dataset.fieldbyname(_borecuperaicms).AsString   := _N;
  Dataset.fieldbyname(_borecuperaipi).AsString    := _N;
  Dataset.fieldbyname(_borecuperapis).AsString    := _N;
  Dataset.fieldbyname(_borecuperacofins).AsString := _N;
  Dataset.fieldbyname(_boativar).AsString           := _S;
  Dataset.FieldByName(_boicms).AsString             := _N;
  Dataset.fieldbyname(_bosaida).AsString            := _S;
  Dataset.fieldbyname(_boentrada).AsString          := _S;
  Dataset.fieldbyname(_bopedido).AsString           := _S;
  Dataset.fieldbyname(_boordcompra).AsString        := _S;
  Dataset.fieldbyname(_boorcamento).AsString        := _S;
  Dataset.fieldbyname(_bopedidomaterial).AsString   := _S;
  Dataset.fieldbyname(_boordserv).AsString          := _S;
  Dataset.fieldbyname(_bomovto).AsString            := _S;
end;

procedure TfrmProduto.lbltpprodutoDblClick(Sender: TObject);
begin
  actabrirtpproduto.onExecute(actabrirtpproduto);
end;

procedure TfrmProduto.cbxcdtpprodutoExit(Sender: TObject);
var
  cdtpproduto : integer;
begin
  cdtpproduto := 0;
  if not varisnull(cbxcdtpproduto.EditValue) then
  begin
    cdtpproduto := StrToInt(cbxcdtpproduto.EditValue);
  end;
  setrecord(cdtpproduto);
  if produto.tpproduto.boservico = _s then
  begin
    qry.FieldByName(_NUSTICMS).AsString := _90;
    qry.FieldByName(_NUCLFISCAL).Clear;
  end;
  colorexit(sender);
end;

procedure TfrmProduto.edtnomePropertiesChange(Sender: TObject);
begin
  if qry.fieldbyname(_cdproduto).asinteger > 0 then
  begin
    pnl.Caption := exibe+' '+ qry.fieldbyname(_cdproduto).asstring + ' - ' + edtNome.Text;
  end;
end;

procedure TfrmProduto.edtnunivelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnunivelPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmProduto.edtnunivelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (qry.state <> dsinsert) and (qry.state <> dsedit) then
  begin
    Exit;
  end;
  cd := Localizar(_grupo, _nunivel, _nmgrupo, maiuscula(_Grupo), 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  qry.FieldByName(_nunivel).AsString := cd;
  edtnunivel.text := cd;
end;

procedure TfrmProduto.edtnuplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmProduto.edtnuplcontaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (qry.State <> dsedit) and (qry.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar( _plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  qry.fieldbyname(_NUPLCONTA).AsString := cd;
end;

procedure TfrmProduto.edtNUPLCONTASAIDAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnuplcontasaidaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmProduto.edtNUPLCONTASAIDAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (qry.State <> dsedit) and (qry.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar( _plconta, _nunivel, _nmplconta, 'Plano Conta', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  qry.fieldbyname(_NUPLCONTASAIDA).AsString := cd;
end;

procedure TfrmProduto.actconsultaExecute(Sender: TObject);
begin
//
end;

procedure TfrmProduto.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmProduto.tbvorcamentoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdorcamento then
  begin
    actabrirorcamentoExecute(actabrirorcamento);
  end;
end;

procedure TfrmProduto.tbvclienteCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcliente then
  begin
    actabrirclienteExecute(actabrircliente);
  end;
end;

procedure TfrmProduto.tbvfornecedorCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdfornecedor then
  begin
    actabrirfornecedorExecute(actabrirfornecedor);
  end;
end;

procedure TfrmProduto.tbvpedidoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nupedido then
  begin
    actabrirpedidoExecute(actabrirpedido);
  end;
end;

procedure TfrmProduto.tbvsaidaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nusaida then
  begin
    actabrirsaidaExecute(actabrirsaida);
  end;
end;

procedure TfrmProduto.tbventradaCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuentrada then
  begin
    actabrirentradaExecute(actabrirentrada);
  end;
end;

procedure TfrmProduto.tbvmovtoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdmovto then
  begin
    actabrirmovtoExecute(actabrirmovto);
  end;
end;

procedure TfrmProduto.tbvordservCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuordserv then
  begin
    actabrirordservExecute(actabrirordserv);
  end;
end;

procedure TfrmProduto.tbvordservexternoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuordserv then
  begin
    actabrirordservExecute(actabrirordserv);
  end;
end;

procedure TfrmProduto.actabrirordservExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qryconsulta.q);
end;

procedure TfrmProduto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmProduto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmProduto.edtnucntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmProduto.edtnucntcustoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (qry.State <> dsedit) and (qry.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar( _cntcusto, _nunivel, _nmcntcusto, 'Centro de Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  qry.fieldbyname(_NUcntcusto).AsString := cd;
end;

procedure TfrmProduto.edtNUCNTCUSTOSAIDAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnucntcustosaidaPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmProduto.edtNUCNTCUSTOSAIDAPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  if (qry.State <> dsedit) and (qry.State <> dsinsert) then
  begin
    Exit;
  end;
  cd := Localizar( _cntcusto, _nunivel, _nmcntcusto, 'Centro de Custo', 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  qry.fieldbyname(_NUcntcustosaida).AsString := cd;
end;

procedure TfrmProduto.edtnunivelExit(Sender: TObject);
var
  cdgrupo : string;
begin
  if not ((qry.State = dsedit) or (qry.State = dsinsert)) then
  begin
    colorexit(sender);
    Exit;
  end;
  if qry.FieldByName(_nmgrupo).ReadOnly then
  begin
    qry.FieldByName(_nmgrupo).ReadOnly := false;
  end;
  if edtnunivel.Text = '' then
  begin
    qry.FieldByName(_nmgrupo).Clear;
    colorexit(sender);
    Exit;
  end;
  cdgrupo := CodigodoCampo(_grupo, edtnunivel.Text, _nunivel);
  if cdgrupo = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnunivel.Text, maiuscula(_grupo)]), mterror, [mbok], 0);
    edtnunivel.clear;
    qry.FieldByName(_nunivel).clear;
    edtnunivel.setfocus;
    Abort;
  end;
  qry.fieldbyname(_cdgrupo).AsString := cdgrupo;
  if not produto.podeAdicionarProdutoGrupo(qry.fieldbyname(_cdgrupo).AsString) then
  begin
    MessageDlg('Este grupo não permite adicionar produto(s) nele.', mtInformation, [mbOK], 0);
    edtnunivel.clear;
    qry.FieldByName(_nunivel).clear;
    edtnunivel.setfocus;
    Abort;
  end;
  setgrupo(qry.fieldbyname(_cdgrupo).Asinteger);
  qry.FieldByName(_nmgrupo).AsString := NomedoCodigo(_grupo, qry.fieldbyname(_cdgrupo).AsString);
  colorexit(sender);
end;

procedure TfrmProduto.cbxnustcofinsPropertiesEditValueChanged(Sender: TObject);
var
  nustcofins : string;
begin
  if (not qry.UpdateOptions.ReadOnly) and (not VarIsNull(cbxnustcofins.EditValue)) then
  begin
    nustcofins := cbxnustcofins.EditValue;
    if RegistroExiste(_stcofins, _nustcofins+'='+nustcofins.QuotedString+' and tpentsai=''S''') then
    begin
      MessageDlg('Situação tributária COFINS '+nustcofins+' de saída não permitido.', mtInformation, [mbOK], 0);
      cbxnustcofins.SetFocus;
      Abort;
    end;
  end;
end;

procedure TfrmProduto.cbxnusticmsExit(Sender: TObject);
begin
  if ((qry.State = dsedit) or (qry.State = dsinsert)) and (length(cbxnusticms.EditText) = 3) and (empresa.tpregime <> _s) then
  begin
    messagedlg('Situação tributária de ICMS não pode ser do simples nacional.', mtinformation, [mbok], 0);
    cbxnusticms.SetFocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmProduto.cbxNUSTPISPropertiesEditValueChanged(Sender: TObject);
var
  nustpis : string;
begin
  if (not qry.UpdateOptions.ReadOnly) and (not VarIsNull(cbxnustpis.EditValue)) then
  begin
    nustpis := cbxnustpis.EditValue;
    if RegistroExiste(_stpis, _nustpis+'='+nustpis.QuotedString+' and tpentsai=''S''') then
    begin
      MessageDlg('Situação tributária PIS '+nustpis+' de saída não permitido.', mtInformation, [mbOK], 0);
      cbxnustpis.SetFocus;
      Abort;
    end;
  end;
end;

procedure TfrmProduto.AbrirTabela;
begin
  cbxcdtpproduto.Properties.ListSource   := abrir_tabela(_tpproduto);
  cbxcdunidade.Properties.ListSource     := abrir_tabela(_unidade);
  cbxcdunidade2.Properties.ListSource    := abrir_tabela(_unidade);
  cbxcdtpitem.Properties.ListSource      := abrir_tabela(_tpitem);
  cbxcdorigem.Properties.ListSource      := abrir_tabela(_origem);
  cbxnusticms.Properties.ListSource      := abrir_tabela(_sticms);
  cbxNUSTPIS.Properties.ListSource       := abrir_tabela(_stpis);
  cbxnustcofins.Properties.ListSource    := abrir_tabela(_stcofins);
  cbxCDBCCALCULOCREDITO.Properties.ListSource := abrir_tabela(_bccalculocredito);
  cbxcdcor.Properties.ListSource         := abrir_tabela(_cor);
  cbxcdtamanho.Properties.ListSource     := abrir_tabela(_tamanho);
  cbxcdforma.Properties.ListSource       := abrir_tabela(_forma);
  cbxcdformaimovel.Properties.ListSource := abrir_tabela(_forma);
  cbxcdmaterial.Properties.ListSource    := abrir_tabela(_material);

  cbxcdfuncionario.Properties.ListSource       := abrir_tabela(_funcionario);
  cbxcdnorma.Properties.ListSource             := abrir_tabela(_norma);
  cbxcdgrade.Properties.ListSource             := abrir_tabela(_grade);
  cbxcdtpcomissaoproduto.Properties.ListSource := abrir_tabela(_tpcomissaoproduto);
  cbxcduf.Properties.ListSource                := abrir_tabela(_uf);
  cbxCDNATUREZACONTA.Properties.ListSource     := abrir_tabela(_naturezaconta);
  cbxCDINDICADORTPCONTA.Properties.ListSource  := abrir_tabela(_indicadortpconta);
  cbxcdregrast.Properties.ListSource           := abrir_tabela(_regrast);
  cbxcdmodbcicms.Properties.ListSource         := abrir_tabela(_modbcicms);
  cbxcdmodbcsticms.Properties.ListSource       := abrir_tabela(_modbcsticms);
end;

procedure TfrmProduto.qryconsultaAfterScroll(DataSet: TDataSet);
  function makesqlitloteentrada:string;
  begin
    result := 'select entrada.nuentrada'+
                    ',entrada.dtemissao'+
                    ',itentradalote.cditlote'+
                    ',ITENTRADALOTE.CDITENTRADALOTE'+
                    ',itentrada.cdcfop '+
              'from entrada '+
              'inner join itentrada on itentrada.cdempresa=entrada.cdempresa and itentrada.cdentrada=entrada.cdentrada '+
              'inner join itentradalote on itentradalote.cdempresa=itentrada.cdempresa and itentradalote.cditentrada=itentrada.cditentrada '+
              'where itentrada.cdempresa='+qry.fieldbyname(_cdempresa).asstring+' and itentradalote.cditlote='+dataset.fieldbyname(_cditlote).asstring;
  end;
  function makesqlitlotesaida:string;
  begin
    result := 'select saida.nusaida'+
                    ',saida.dtemissao'+
                    ',itsaidalote.cditlote'+
                    ',ITSAIDALOTE.CDITSAIDALOTE'+
                    ',ITSAIDALOTE.CDEMPRESA'+
                    ',itsaida.cdcfop '+
              'from itsaidalote '+
              'inner join itsaida on itsaida.cdempresa=itsaidalote.cdempresa and itsaida.cditsaida=itsaidalote.cditsaida '+
              'inner join saida on saida.cdempresa=itsaida.cdempresa and saida.cdsaida=itsaida.cdsaida '+
              'where itsaida.cdempresa='+qry.fieldbyname(_cdempresa).asstring+' and itsaidalote.cditlote='+dataset.fieldbyname(_cditlote).asstring;
  end;
begin
  if not btnitlote.Down then
  begin
    Exit;
  end;
  qryitloteentrada.q.Close;
  qryitlotesaida.q.Close;
  if dataset.fieldbyname(_cditlote).asstring = '' then
  begin
    exit;
  end;
  qryitloteentrada.q.Open(makesqlitloteentrada);
  qryitlotesaida.q.Open(makesqlitlotesaida);
end;

procedure TfrmProduto.setTelaObjeto;
begin
  produto.dstag1        := qry.fieldbyname(_dstag1).AsString;
  produto.cdmaterial    := qry.fieldbyname(_cdmaterial).AsInteger;
  produto.cdnorma       := qry.fieldbyname(_cdnorma).AsInteger;
  produto.cdforma       := qry.fieldbyname(_cdforma).AsInteger;
  produto.norma.Select(produto.cdnorma);
  produto.material.Select(produto.cdmaterial);
  produto.forma.Select(produto.cdforma);
  produto.cdproduto     := qry.fieldbyname(_cdproduto).asinteger;
  produto.qtespessura   := edtQTESPESSURA.Value;
  produto.qtlargura     := edtQTLARGURA.Value;
  produto.qtcomprimento := edtQTCOMPRIMENTO.Value;
  produto.psliquido     := edtPSLIQUIDO.Value;
  produto.psbruto       := edtPSBRUTO.Value;
  produto.cdunidade     := cbxcdunidade.EditValue;
end;

procedure TfrmProduto.actarquivoExecute(Sender: TObject);
begin
  dlgarquivo(tbl, qry.fieldbyname(_cdproduto).AsString);
end;

procedure TfrmProduto.actprodutocomposicaoquimicaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_produtocomposicaoquimica))), qry.FieldByName(_cdproduto).AsInteger, _cdproduto);
end;

procedure TfrmProduto.actprodutopropriedadefisicaExecute(Sender: TObject);
begin
  Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_produtopropriedadefisica))), qry.FieldByName(_cdproduto).AsInteger, _cdproduto);
end;

procedure TfrmProduto.actconsultaordproducaoExecute(Sender: TObject);
begin
  setquery(_ordproducao);
end;

procedure TfrmProduto.tbvordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao);
  end;
end;

procedure TfrmProduto.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry, qryconsulta.q);
end;

end.
