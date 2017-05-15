unit ulocalizarproduto;

interface

uses
  System.Actions, System.UITypes,
  forms, graphics, sqlexpr, StdCtrls, Buttons, Controls, Grids, dialogs,
  ActnList, sysutils, Variants, Classes, Menus, ComCtrls, ExtCtrls,
  DB,
  uprotector, ustrings, uRotinas, uconstantes, uexportarexcel,
  uregistro, udatahora,
  classesqlmontar, classeretornasql, classeform, classeempresa, classeproduto,
  classeusuario, classeAplicacao, classequery,
  cxGridDBBandedTableView, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPCdxBarPopupMenu,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxCurrencyEdit, cxCheckBox, cxCalc, dxBar, cxClasses, cxMemo, cxDBEdit,
  cxImage, cxSplitter, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxButtons, cxTextEdit, cxGroupBox,
  cxRadioGroup, cxPC, cxNavigator, cxButtonEdit, cxBarEditItem,
  dxBarBuiltInMenu, cxCalendar, cxGridChartView, cxGridDBChartView,
  cxGridBandedTableView, cxLabel, ClasseLocalizar;

type
  TfrmLocalizarProduto = class(TForm)
    rps: TcxStyleRepository;
    cxStyle1: TcxStyle;
    bmg: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnfiltro: TdxBarButton;
    act: TActionList;
    actfiltro: TAction;
    actagrupar: TAction;
    btnagrupar: TdxBarButton;
    actexcel: TAction;
    dxBarButton2: TdxBarButton;
    tmrnome: TTimer;
    tmrdsproduto: TTimer;
    actfiltron: TAction;
    actagruparn: TAction;
    actexceln: TAction;
    actlimparcriterio: TAction;
    btnfiltron: TdxBarButton;
    btnagruparn: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    tmrdstag2: TTimer;
    dxBarButton1: TdxBarButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDPRODUTO: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvDSPRODUTO: TcxGridDBColumn;
    tbvCDUNIDADE: TcxGridDBColumn;
    tbvQTESTOQUE: TcxGridDBColumn;
    tbvQTPEDIDO: TcxGridDBColumn;
    tbvQTDISPONIVEL: TcxGridDBColumn;
    tbvVLVENDA: TcxGridDBColumn;
    tbvNUCLFISCAL: TcxGridDBColumn;
    tbvBOATIVAR: TcxGridDBColumn;
    tbvCDTPITEM: TcxGridDBColumn;
    tbvDSDESENHO: TcxGridDBColumn;
    tbvDSTAG2: TcxGridDBColumn;
    tbvCDCODFORNECEDOR: TcxGridDBColumn;
    tbvCDALTERNATIVO: TcxGridDBColumn;
    tbvNUNIVEL: TcxGridDBColumn;
    tbvNMGRUPO: TcxGridDBColumn;
    tbvVLCUSTO: TcxGridDBColumn;
    tbvVLATACADO: TcxGridDBColumn;
    tbvVLESPECIAL: TcxGridDBColumn;
    tbvDSLOCALIZACAO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    pgc: TcxPageControl;
    tbstag: TcxTabSheet;
    lbldstag1: TLabel;
    edtdstag1: TcxTextEdit;
    ckbdstag1: TcxCheckBox;
    ckbdstag2: TcxCheckBox;
    edtdstag2: TcxTextEdit;
    lbldstag2: TLabel;
    tmrdstag1: TTimer;
    tmrcdalternativo: TTimer;
    tmrcdcodfornecedor: TTimer;
    tbsdimensional: TcxTabSheet;
    cbxcdmaterial: TcxLookupComboBox;
    lblcdmaterial: TLabel;
    cbxcdforma: TcxLookupComboBox;
    lblcdforma: TLabel;
    cbxcdnorma: TcxLookupComboBox;
    lblcdnorma: TLabel;
    lblqtespessura: TLabel;
    edtqtespessura: TcxCalcEdit;
    edtqtlargura: TcxCalcEdit;
    lblqtlargura: TLabel;
    edtqtcomprimento: TcxCalcEdit;
    lblqtcomprimento: TLabel;
    ckbdspolegada: TcxCheckBox;
    edtdspolegada: TcxTextEdit;
    lbldspolegada: TLabel;
    tmrdspolegada: TTimer;
    tbvCDMATERIAL: TcxGridDBColumn;
    tbvCDFORMA: TcxGridDBColumn;
    tbvCDNORMA: TcxGridDBColumn;
    tbvQTESPESSURA: TcxGridDBColumn;
    tbvQTLARGURA: TcxGridDBColumn;
    tbvQTCOMPRIMENTO: TcxGridDBColumn;
    tbvDSPOLEGADA: TcxGridDBColumn;
    tbvDSTAG1: TcxGridDBColumn;
    dxBarDockControl1: TdxBarDockControl;
    tbsOutros: TcxTabSheet;
    lbldesenho: TLabel;
    edtdsdesenho: TcxTextEdit;
    ckbdsdesenho: TcxCheckBox;
    lbldsproduto: TLabel;
    edtdsproduto: TcxTextEdit;
    ckbdsproduto: TcxCheckBox;
    tmrnuclfiscal: TTimer;
    tmrnunivel: TTimer;
    actmetodoprocesso: TAction;
    dxBarButton3: TdxBarButton;
    ckbSelecaomultipla: TcxBarEditItem;
    tbvCDTPPRODUTO: TcxGridDBColumn;
    tbvsimilar: TcxGridDBTableView;
    grdlevelsimilar: TcxGridLevel;
    grdsimilar: TcxGrid;
    tbvsimilarCDPRODUTO: TcxGridDBColumn;
    tbvsimilarNMPRODUTO: TcxGridDBColumn;
    tbvsimilarDSPRODUTO: TcxGridDBColumn;
    tbvsimilarCDUNIDADE: TcxGridDBColumn;
    tbvsimilarQTESTOQUE: TcxGridDBColumn;
    tbvsimilarQTPEDIDO: TcxGridDBColumn;
    tbvsimilarQTDISPONIVEL: TcxGridDBColumn;
    tbvsimilarVLVENDA: TcxGridDBColumn;
    tbvsimilarNUCLFISCAL: TcxGridDBColumn;
    tbvsimilarBOATIVAR: TcxGridDBColumn;
    tbvsimilarCDTPITEM: TcxGridDBColumn;
    tbvsimilarDSDESENHO: TcxGridDBColumn;
    tbvsimilarDSTAG2: TcxGridDBColumn;
    tbvsimilarDSTAG1: TcxGridDBColumn;
    tbvsimilarCDCODFORNECEDOR: TcxGridDBColumn;
    tbvsimilarCDALTERNATIVO: TcxGridDBColumn;
    tbvsimilarNUNIVEL: TcxGridDBColumn;
    tbvsimilarNMGRUPO: TcxGridDBColumn;
    tbvsimilarVLCUSTO: TcxGridDBColumn;
    tbvsimilarVLATACADO: TcxGridDBColumn;
    tbvsimilarVLESPECIAL: TcxGridDBColumn;
    tbvsimilarCDTPPRODUTO: TcxGridDBColumn;
    tbvsimilarDSLOCALIZACAO: TcxGridDBColumn;
    tbvsimilarCDMATERIAL: TcxGridDBColumn;
    tbvsimilarCDFORMA: TcxGridDBColumn;
    tbvsimilarCDNORMA: TcxGridDBColumn;
    tbvsimilarQTESPESSURA: TcxGridDBColumn;
    tbvsimilarQTLARGURA: TcxGridDBColumn;
    tbvsimilarQTCOMPRIMENTO: TcxGridDBColumn;
    tbvsimilarDSPOLEGADA: TcxGridDBColumn;
    actmapaproducao: TAction;
    bmgBar1: TdxBar;
    bdcsimilar: TdxBarDockControl;
    actfiltrosimilar: TAction;
    btnfiltrosimilar: TdxBarButton;
    actagruparsimilar: TAction;
    btnagruparsimilar: TdxBarButton;
    dxBarButton8: TdxBarButton;
    actexcelsimilar: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actconsulta: TAction;
    actentrada: TAction;
    actsaida: TAction;
    dxBarButton7: TdxBarButton;
    dxBarButton9: TdxBarButton;
    actsaidadiariografico: TAction;
    actsaidamensalgrafico: TAction;
    actentradadiariografico: TAction;
    actentradamensalgrafico: TAction;
    actestoquediario: TAction;
    actsaidamensal: TAction;
    actentradamensal: TAction;
    edtdtinicio: TcxBarEditItem;
    pnlconsulta: TPanel;
    bdcconsulta: TdxBarDockControl;
    grdconsulta: TcxGrid;
    tbventrada: TcxGridDBBandedTableView;
    tbventradaNUENTRADA: TcxGridDBBandedColumn;
    tbventradaNMTPENTRADA: TcxGridDBBandedColumn;
    tbventradaDTEMISSAO: TcxGridDBBandedColumn;
    tbventradaCDFORNECEDOR: TcxGridDBBandedColumn;
    tbventradaRZSOCIAL: TcxGridDBBandedColumn;
    tbventradaQTITEM: TcxGridDBBandedColumn;
    tbventradaVLUNITARIO: TcxGridDBBandedColumn;
    tbventradaVLTOTAL: TcxGridDBBandedColumn;
    tbventradaALICMS: TcxGridDBBandedColumn;
    tbventradaALIPI: TcxGridDBBandedColumn;
    tbventradaNUSTICMS: TcxGridDBBandedColumn;
    tbvsaida: TcxGridDBBandedTableView;
    tbvsaidaNUSAIDA: TcxGridDBBandedColumn;
    tbvsaidaNMTPSAIDA: TcxGridDBBandedColumn;
    tbvsaidaDTEMISSAO: TcxGridDBBandedColumn;
    tbvsaidaCDCLIENTE: TcxGridDBBandedColumn;
    tbvsaidaRZSOCIAL: TcxGridDBBandedColumn;
    tbvsaidaQTITEM: TcxGridDBBandedColumn;
    tbvsaidaVLUNITARIO: TcxGridDBBandedColumn;
    tbvsaidaVLTOTAL: TcxGridDBBandedColumn;
    tbvsaidaALICMS: TcxGridDBBandedColumn;
    tbvsaidaALIPI: TcxGridDBBandedColumn;
    tbvsaidadiario: TcxGridDBChartView;
    tbvsaidadiarioDataGroup1: TcxGridDBChartDataGroup;
    tbvsaidadiarioSeries1: TcxGridDBChartSeries;
    tbvsaidamensal: TcxGridDBBandedTableView;
    tbvsaidamensalAno: TcxGridDBBandedColumn;
    tbvsaidamensaldtemissao: TcxGridDBBandedColumn;
    tbvsaidamensalqtitem: TcxGridDBBandedColumn;
    grdconsultaLevel1: TcxGridLevel;
    edtdtfinal: TcxBarEditItem;
    bmgBar2: TdxBar;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    actocultar: TAction;
    btnocultar: TdxBarButton;
    dxBarButton17: TdxBarButton;
    actexcelconsulta: TAction;
    lblconsulta: TcxLabel;
    tbvQTESTOQUE2: TcxGridDBColumn;
    pnl: TPanel;
    Label1: TLabel;
    lblunidade: TLabel;
    lblgrupo: TLabel;
    lbl1: TLabel;
    lblcdtpitem: TLabel;
    lblnuclfiscal: TLabel;
    lblcdcodfornecedor: TLabel;
    lblcdalternativo: TLabel;
    lblcdproduto: TLabel;
    lblnmgrupo: TLabel;
    edtnome: TcxTextEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnnovo: TcxButton;
    ckbboativar: TcxCheckBox;
    cbxcdunidade: TcxLookupComboBox;
    cbxcdtpproduto: TcxLookupComboBox;
    cbxcdtpitem: TcxLookupComboBox;
    edtnuclfiscal: TcxTextEdit;
    edtcdcodfornecedor: TcxTextEdit;
    ckbcdcodfornecedor: TcxCheckBox;
    edtcdalternativo: TcxTextEdit;
    ckbcdalternativo: TcxCheckBox;
    edtcdproduto: TcxTextEdit;
    edtnunivel: TcxButtonEdit;
    ckbnmproduto: TcxCheckBox;
    lblnuimei: TLabel;
    edtnuimei: TcxTextEdit;
    tbvNUSTICMS: TcxGridDBColumn;
    tbvsimilarNUSTICMS: TcxGridDBColumn;
    dxBarButton6: TdxBarButton;
    actmodograde: TAction;
    tbvVLCUSTOMEDIO: TcxGridDBColumn;
    tbvPRLUCRO: TcxGridDBColumn;
    tbvQTESTMIN: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnnovotClick(Sender: TObject);
    procedure edtnomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnomePropertiesChange(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edtdsprodutoPropertiesChange(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure cbxcdunidadeEnter(Sender: TObject);
    procedure cbxcdtpprodutoEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure tmrnomeTimer(Sender: TObject);
    procedure tmrdsprodutoTimer(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtdsdesenhoExit(Sender: TObject);
    procedure tmrdstag2Timer(Sender: TObject);
    procedure edtdstag2PropertiesChange(Sender: TObject);
    procedure ckbdsprodutoClick(Sender: TObject);
    procedure ckbdstag1Click(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure ckbdstag2Click(Sender: TObject);
    procedure edtdstag1PropertiesChange(Sender: TObject);
    procedure tmrdstag1Timer(Sender: TObject);
    procedure ckbcdalternativoClick(Sender: TObject);
    procedure ckbcdcodfornecedorClick(Sender: TObject);
    procedure edtcdalternativoPropertiesChange(Sender: TObject);
    procedure edtcdcodfornecedorPropertiesChange(Sender: TObject);
    procedure tmrcdalternativoTimer(Sender: TObject);
    procedure tmrcdcodfornecedorTimer(Sender: TObject);
    procedure edtdspolegadaPropertiesChange(Sender: TObject);
    procedure ckbdspolegadaClick(Sender: TObject);
    procedure tmrdspolegadaTimer(Sender: TObject);
    procedure ckbboativarClick(Sender: TObject);
    procedure tmrnuclfiscalTimer(Sender: TObject);
    procedure edtnuclfiscalPropertiesChange(Sender: TObject);
    procedure tmrnunivelTimer(Sender: TObject);
    procedure edtnunivelPropertiesChange(Sender: TObject);
    procedure edtnunivelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtnunivelExit(Sender: TObject);
    procedure edtnunivelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actmetodoprocessoExecute(Sender: TObject);
    procedure ckbnmprodutoClick(Sender: TObject);
    procedure ckbSelecaomultiplaPropertiesChange(Sender: TObject);
    procedure cbxcdformaEnter(Sender: TObject);
    procedure cbxcdnormaEnter(Sender: TObject);
    procedure edtqtespessuraPropertiesChange(Sender: TObject);
    procedure edtqtlarguraPropertiesChange(Sender: TObject);
    procedure edtqtcomprimentoPropertiesChange(Sender: TObject);
    procedure edtdsdesenhoPropertiesChange(Sender: TObject);
    procedure cbxcdtpprodutoPropertiesEditValueChanged(Sender: TObject);
    procedure cbxcdtpitemPropertiesEditValueChanged(Sender: TObject);
    procedure cbxcdunidadePropertiesEditValueChanged(Sender: TObject);
    procedure cbxcdmaterialPropertiesEditValueChanged(Sender: TObject);
    procedure cbxcdformaPropertiesEditValueChanged(Sender: TObject);
    procedure cbxcdnormaPropertiesEditValueChanged(Sender: TObject);
    procedure tbvQTESTOQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actfiltrosimilarExecute(Sender: TObject);
    procedure actagruparsimilarExecute(Sender: TObject);
    procedure actexcelsimilarExecute(Sender: TObject);
    procedure actconsultaExecute(Sender: TObject);
    procedure actsaidaExecute(Sender: TObject);
    procedure actentradaExecute(Sender: TObject);
    procedure actsaidadiariograficoExecute(Sender: TObject);
    procedure actsaidamensalgraficoExecute(Sender: TObject);
    procedure actentradadiariograficoExecute(Sender: TObject);
    procedure actentradamensalgraficoExecute(Sender: TObject);
    procedure actestoquediarioExecute(Sender: TObject);
    procedure actsaidamensalExecute(Sender: TObject);
    procedure actentradamensalExecute(Sender: TObject);
    procedure edtdtinicioChange(Sender: TObject);
    procedure edtdtfinalChange(Sender: TObject);
    procedure actocultarExecute(Sender: TObject);
    procedure actexcelconsultaExecute(Sender: TObject);
    procedure tbvsimilarQTESTOQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvQTESTOQUE2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edtnuimeiExit(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
  private   { Private declarations }
    boinsert : Boolean;
    produto : TProduto;
    filtro_dspolegada : string;
    filtro_cdalternativo : string;
    filtro_cdcodfornecedor : string;
    filtro_nuclfiscal : string;
    filtro_nuimei : string;
    filtro_nunivel : string;
    filtro_dstag1 : string;
    filtro_dstag2 : string;
    filtro_nmproduto : string;
    filtro_dsproduto : string;
    tblorigem : string;
    codigo : integer;
    nmdata : string;
    sqlgrade : string;
    titulografico : string;
    sqlgrafico : TcxGridDBChartView;
    sqlgride   : TcxGridDBBandedTableView;
    q, qsimilar : TClasseQuery;
    d, dsimilar : TDataSource;
    procedure setgrade;
    procedure AplicarFiltro;
    function getFilterTblOrigem(filtro:string):string;
    function makesql(sqlwhere:string):string;
    function seDimensional:boolean;
    procedure setEmpresa;
    procedure setAbrirTabela;
    procedure setDsproduto;
    procedure setDesenho;
    procedure setDstag2;
    procedure setDstag1;
    procedure setForma;
    procedure setMaterial;
    procedure setNorma;
    procedure setEspessura;
    procedure setLargura;
    procedure setComprimento;
    procedure setNuimei;
    procedure setPolegada;
    procedure setCodfornecedor;
    procedure setCdalternativo;
    procedure setCdreduzido;
    procedure setDslocalizacao;
    procedure setGrupo;
    procedure setQtdisponivel;
    procedure setValores;
    procedure setLookup;
    function  getCdprodutoDeNuimei:string;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure SetQuery;
    function getCampoLiberadoEmpresa: string;
    procedure AtualizarGradeConsulta;
    procedure AtualizarGradeSimilar;
    procedure SetTblOrigem;
    procedure SetMultiSelect(bo:boolean);
  public    { Public declarations }
  end;

function LocalizarProduto(tblorigem:string=''; novo:boolean=false):integer;
function LocalizarProdutoMultiSelect(tblorigem:string=''; novo:boolean=false):string;

var
  frmLocalizarProduto: TfrmLocalizarProduto;

implementation

uses uNovoProduto,
  uLocalizar,
  uDtmMain,
  udlgmetodoprocesso,
  udlgmapaproducaoproduto,
  classeregistro;

{$R *.DFM}

function LocalizarProduto(tblorigem:string=''; novo:boolean=false):integer;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_produto) then
  begin
    frmlocalizarproduto := Tfrmlocalizarproduto.Create(application);
  end;
  frmlocalizarproduto.tblorigem := tblorigem;
  frmlocalizarproduto.SetMultiSelect(false);
  frmlocalizarproduto.btnnovo.Visible  := novo;
  frmlocalizarproduto.boinsert := False;
  if frmlocalizarproduto.q.q.Active  then
  begin
    frmlocalizarproduto.q.q.close;
    frmlocalizarproduto.q.q.open;
  end;
  frmlocalizarproduto.showmodal;
  if frmlocalizarproduto.ModalResult <> mrok then
  begin
    result := 0;
    Exit;
  end;
  if frmlocalizarproduto.boinsert then
  begin
    result := frmlocalizarproduto.codigo;
    Exit;
  end;
  result := frmlocalizarproduto.codigo;
end;

function LocalizarProdutoMultiSelect(tblorigem:string=''; novo:boolean=false):string;
begin
  if not TQForm.ExisteFormulario(_frm+_localizar+_produto) then
  begin
    frmlocalizarproduto := Tfrmlocalizarproduto.Create(application);
  end;
  frmlocalizarproduto.tblorigem := tblorigem;
  frmlocalizarproduto.SetMultiSelect(true);
  frmlocalizarproduto.btnnovo.Visible  := novo;
  frmlocalizarproduto.boinsert := False;
  if frmlocalizarproduto.q.q.Active  then
  begin
    frmlocalizarproduto.q.q.close;
    frmlocalizarproduto.q.q.open;
  end;
  frmlocalizarproduto.showmodal;
  if frmlocalizarproduto.ModalResult <> mrok then
  begin
    result := '';
    Exit;
  end;
  if frmlocalizarproduto.boinsert then
  begin
    result := frmlocalizarproduto.codigo.ToString;
    Exit;
  end;

  result := TQForm.ObterMultiSelect(_produto, frmlocalizarproduto.tbv);
  if result = '' then
  begin
    result := frmlocalizarproduto.codigo.ToString;
  end;
end;

function TfrmLocalizarProduto.getCampoLiberadoEmpresa:string;
begin
  result := ',p.nuclfiscal,p.cdtpitem';
  if empresa.material.produto.bodsproduto then
  begin
    result := result + ',p.DSPRODUTO';
  end;
  if empresa.material.produto.boqtdisponivel then
  begin
    result := Result + ',p.qtpedido,p.QTDISPONIVEL';
  end;
  if empresa.material.produto.boqtestmin then
  begin
    result := Result + ',p.qtestmin';
  end;
  if empresa.material.produto.bovlvenda then
  begin
    result := result + ',p.VLVENDA';
  end;
  if empresa.material.produto.bodesenho then
  begin
    result := result + ',p.dsdesenho';
  end;
  if empresa.material.produto.botag2 then
  begin
    result := result + ',p.dstag2';
  end;
  if empresa.material.produto.botag1 then
  begin
    result := result + ',p.dstag1';
  end;
  if Empresa.material.produto.bocodfornecedor then
  begin
    result := result + ',p.cdcodfornecedor';
  end;
  if Empresa.material.produto.bogrupo then
  begin
    result := result + ',g.nunivel,g.nmgrupo';
  end;
  if Empresa.material.produto.bovlcusto then
  begin
    result := result + ',p.vlcusto';
  end;
  if Empresa.material.produto.bovlcustomedio then
  begin
    result := result + ',p.vlcustomedio';
  end;
  if Empresa.material.produto.boprlucro then
  begin
    result := result + ',p.prlucro';
  end;
  if Empresa.material.produto.bovlatacado then
  begin
    result := result + ',p.vlatacado';
  end;
  if Empresa.material.produto.bovlespecial then
  begin
    result := result + ',p.vlespecial';
  end;
  if Empresa.material.produto.bocdalternativo then
  begin
    result := result + ',p.cdalternativo';
  end;
  if Empresa.material.produto.bodslocalizacao then
  begin
    result := result + ',p.dslocalizacao';
  end;
  if Empresa.material.produto.bopolegada then
  begin
    result := result + ',p.dspolegada';
  end;
  if Empresa.material.produto.bocomprimento then
  begin
    result := result + ',p.qtcomprimento';
  end;
  if Empresa.material.produto.boespessura then
  begin
    result := result + ',p.qtespessura';
  end;
  if Empresa.material.produto.boforma then
  begin
    result := result + ',p.cdforma';
  end;
  if Empresa.material.produto.bolargura then
  begin
    result := result + ',p.qtlargura';
  end;
  if Empresa.material.produto.bomaterial then
  begin
    result := result + ',p.cdmaterial';
  end;
  if Empresa.material.produto.bonorma then
  begin
    result := result + ',p.cdnorma';
  end;
end;

procedure TfrmLocalizarProduto.AtualizarGradeConsulta;
begin
  if actentrada.Checked then
  begin
    actentradaExecute(actentrada)
  end
  else if actentradadiariografico.Checked then
  begin
    actentradadiariograficoExecute(actentradadiariografico)
  end
  else if actentradamensalgrafico.Checked then
  begin
    actentradamensalgraficoExecute(actentradamensalgrafico)
  end
  else if actentradamensal.Checked then
  begin
    actentradamensalExecute(actentradamensal)
  end
  else if actsaida.Checked then
  begin
    actsaidaExecute(actsaida)
  end
  else if actsaidadiariografico.Checked then
  begin
    actsaidadiariograficoExecute(actsaidadiariografico)
  end
  else if actsaidamensalgrafico.Checked then
  begin
    actsaidamensalgraficoExecute(actsaidamensalgrafico)
  end
  else if actsaidamensal.Checked then
  begin
    actsaidamensalExecute(actsaidamensal)
  end
  else if actestoquediario.Checked then
  begin
    actestoquediarioExecute(actestoquediario);
  end;
end;

procedure TfrmLocalizarProduto.AtualizarGradeSimilar;
begin
  if not empresa.material.produto.bosimilar then
  begin
    exit;
  end;
  qsimilar.q.Close;
  if codigo <> 0 then
  begin
    qsimilar.q.SQL.Text := makesql('inner join produtosimilar s on s.cdempresa=p.cdempresa and s.cdproduto=p.cdproduto where p.cdempresa=' + empresa.cdempresa.tostring + ' and s.cdprodutoorigem=' + codigo.tostring);
    qsimilar.q.Open;
    grdsimilar.Visible := qsimilar.q.RecordCount > 0;
    bdcsimilar.Visible := qsimilar.q.RecordCount > 0;
  end
  else
  begin
    grdsimilar.visible := False;
    bdcsimilar.Visible := false;
  end;
end;

function TfrmLocalizarProduto.makesql(sqlwhere:string):string;
begin
  result := 'SELECT p.CDPRODUTO'+
                  ',p.NMPRODUTO'+
                  ',P.NUSTICMS'+
                  ',P.CDUNIDADE'+
                  ',p.cdtpproduto'+
                  ',p.BOSAIDA'+
                  ',p.BOENTRADA'+
                  ',p.BOPEDIDO'+
                  ',p.BOORDCOMPRA'+
                  ',p.BOORCAMENTO'+
                  ',p.BOPEDIDOMATERIAL'+
                  ',p.BOORDSERV'+
                  ',p.BOMOVTO'+
                  ',p.QTESTOQUE'+
                  ',p.qtestoque2'+
                  ',p.BOATIVAR'+
                  getCampoLiberadoEmpresa+
            ' FROM PRODUTO P '+
            'left join grupo G on g.cdgrupo=p.cdgrupo and g.cdempresa=p.cdempresa '+
            sqlwhere+' '+
            'ORDER BY P.NMPRODUTO'
end;

procedure TfrmLocalizarProduto.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdproduto).AsInteger;
  AtualizarGradeSimilar;
  AtualizarGradeConsulta;
end;

procedure TfrmLocalizarProduto.SetQuery;
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  qsimilar := TClasseQuery.Create;
  dsimilar := TDataSource.Create(self);
  dsimilar.DataSet := qsimilar.q;
  tbvsimilar.DataController.DataSource := dsimilar;
  tbventrada.DataController.DataSource := dsimilar;
  tbvsaida.DataController.DataSource := dsimilar;
  tbvsaidadiario.DataController.DataSource := dsimilar;
  tbvsaidamensal.DataController.DataSource := dsimilar;
end;

procedure TfrmLocalizarProduto.SetTblOrigem;
begin
  AplicarFiltro;
  if edtnome.Text <> '' then
  begin
    tmrnomeTimer(tmrnome);
  end;
  if edtdsproduto.Text <> '' then
  begin
    tmrdsprodutoTimer(tmrdsproduto);
  end;
  if edtdstag2.Text <> '' then
  begin
    tmrdstag2Timer(tmrdstag2);
  end;
  if edtdstag1.Text <> '' then
  begin
    tmrdstag1Timer(tmrdstag1);
  end;
  if edtcdalternativo.Text <> '' then
  begin
    tmrcdalternativoTimer(tmrcdalternativo);
  end;
  if edtcdcodfornecedor.Text <> '' then
  begin
    tmrcdcodfornecedorTimer(tmrcdcodfornecedor);
  end;
  if edtdspolegada.Text > '' then
  begin
    tmrdspolegadaTimer(tmrdspolegada);
  end;
end;

procedure TfrmLocalizarProduto.FormShow(Sender: TObject);
begin
  SetTblOrigem;
  edtnome.SelectAll;
  edtNome.SetFocus;
end;

procedure TfrmLocalizarProduto.FormDestroy(Sender: TObject);
begin
  freeandnil(produto);
  freeandnil(q);
  freeandnil(qsimilar);
end;

procedure TfrmLocalizarProduto.setAbrirTabela;
begin
  cbxcdtpproduto.Properties.ListSource := abrir_tabela(_tpproduto);
  cbxcdunidade.Properties.ListSource   := abrir_tabela(_unidade);
  cbxcdtpitem.Properties.ListSource    := abrir_tabela(_tpitem);
  cbxcdmaterial.Properties.ListSource  := abrir_tabela(_material);
  cbxcdnorma.Properties.ListSource     := abrir_tabela(_norma);
  cbxcdforma.Properties.ListSource     := abrir_tabela(_forma);
end;

procedure TfrmLocalizarProduto.setCdalternativo;
begin
  tbvsimilarCDALTERNATIVO.Visible := Empresa.material.produto.bocdalternativo;
  tbvCDALTERNATIVO.Visible := Empresa.material.produto.bocdalternativo;
  edtcdalternativo.visible := Empresa.material.produto.bocdalternativo;
  lblcdalternativo.visible := Empresa.material.produto.bocdalternativo;
  ckbcdalternativo.Visible := empresa.material.produto.bocdalternativo;
end;

procedure TfrmLocalizarProduto.setCdreduzido;
begin
  lblcdproduto.Visible := empresa.material.produto.bocdreduzido;
  edtcdproduto.Visible := empresa.material.produto.bocdreduzido;
end;

procedure TfrmLocalizarProduto.setCodfornecedor;
begin
  tbvsimilarCDCODFORNECEDOR.Visible := Empresa.material.produto.bocodfornecedor;
  tbvCDCODFORNECEDOR.Visible := Empresa.material.produto.bocodfornecedor;
  edtcdcodfornecedor.visible := Empresa.material.produto.bocodfornecedor;
  lblcdcodfornecedor.visible := Empresa.material.produto.bocodfornecedor;
  ckbcdcodfornecedor.Visible := empresa.material.produto.bocodfornecedor;
end;

procedure TfrmLocalizarProduto.setComprimento;
begin
  edtqtcomprimento.Visible := Empresa.material.produto.bocomprimento;
  lblqtcomprimento.Visible := Empresa.material.produto.bocomprimento;
  tbvqtcomprimento.Visible := Empresa.material.produto.bocomprimento;
  tbvsimilarqtcomprimento.Visible := Empresa.material.produto.bocomprimento;
end;

procedure TfrmLocalizarProduto.setDesenho;
begin
  lbldesenho.Visible   := empresa.material.produto.bodesenho;
  edtdsdesenho.Visible := empresa.material.produto.bodesenho;
  ckbdsdesenho.Visible := empresa.material.produto.bodesenho;
  tbvDSDESENHO.Visible := empresa.material.produto.bodesenho;
  tbvsimilarDSDESENHO.Visible := empresa.material.produto.bodesenho;
end;

procedure TfrmLocalizarProduto.setDslocalizacao;
begin
  tbvDSLOCALIZACAO.Visible := Empresa.material.produto.bodslocalizacao;
  tbvsimilarDSLOCALIZACAO.Visible := Empresa.material.produto.bodslocalizacao;
end;

procedure TfrmLocalizarProduto.setDsproduto;
begin
  lbldsproduto.Visible := empresa.material.produto.bodsproduto;
  edtdsproduto.Visible := empresa.material.produto.bodsproduto;
  ckbdsproduto.Visible := empresa.material.produto.bodsproduto;
  tbvDSPRODUTO.Visible := empresa.material.produto.bodsproduto;
  tbvsimilarDSPRODUTO.Visible := empresa.material.produto.bodsproduto;
end;

procedure TfrmLocalizarProduto.setDstag1;
begin
  lbldstag1.Visible := empresa.material.produto.botag1;
  edtdstag1.Visible := empresa.material.produto.botag1;
  ckbdstag1.Visible := empresa.material.produto.botag1;
  tbvDStag1.Visible := empresa.material.produto.botag1;
  tbvsimilarDStag1.Visible := empresa.material.produto.botag1;
end;

procedure TfrmLocalizarProduto.setDstag2;
begin
  lbldstag2.Visible := empresa.material.produto.botag2;
  edtdstag2.Visible := empresa.material.produto.botag2;
  ckbdstag2.Visible := empresa.material.produto.botag2;
  tbvDStag2.Visible := empresa.material.produto.botag2;
  tbvsimilarDStag2.Visible := empresa.material.produto.botag2;
end;

procedure TfrmLocalizarProduto.setEmpresa;
begin
  setDsproduto;
  setNuimei;
  setDesenho;
  setDstag2;
  setDstag1;
  setForma;
  setMaterial;
  setNorma;
  setEspessura;
  setLargura;
  setComprimento;
  setPolegada;
  setCodfornecedor;
  setCdalternativo;
  setCdreduzido;
  setDslocalizacao;
  setGrupo;
  setQtdisponivel;
  setValores;
  tbvQTESTOQUE2.Visible     := Empresa.material.produto.boqtestoque2;
  tbvqtestmin.visible       := Empresa.material.produto.boqtestmin;
  actmapaproducao.Visible   := empresa.material.produto.bomapaproducao;
  tbstag.TabVisible         := empresa.material.produto.botag1 or empresa.material.produto.botag2;
  tbsdimensional.TabVisible := seDimensional;
  tbsoutros.TabVisible      := empresa.material.produto.bodsproduto or empresa.material.produto.bodesenho;
  pgc.Visible               := tbsoutros.TabVisible and tbstag.TabVisible and tbsdimensional.TabVisible;
end;

procedure TfrmLocalizarProduto.setEspessura;
begin
  edtqtespessura.Visible := Empresa.material.produto.boespessura;
  lblqtespessura.Visible := Empresa.material.produto.boespessura;
  tbvqtespessura.Visible := Empresa.material.produto.boespessura;
  tbvsimilarqtespessura.Visible := Empresa.material.produto.boespessura;
end;

procedure TfrmLocalizarProduto.setForma;
begin
  cbxcdforma.Visible := Empresa.material.produto.boforma;
  lblcdforma.Visible := Empresa.material.produto.boforma;
  tbvcdforma.Visible := Empresa.material.produto.boforma;
  tbvsimilarcdforma.Visible := Empresa.material.produto.boforma;
end;

procedure TfrmLocalizarProduto.setGrupo;
begin
  tbvsimilarNUNIVEL.Visible := Empresa.material.produto.bogrupo;
  tbvsimilarNMGRUPO.Visible := Empresa.material.produto.bogrupo;
  tbvNUNIVEL.Visible := Empresa.material.produto.bogrupo;
  tbvNMGRUPO.Visible := Empresa.material.produto.bogrupo;
  lblgrupo.Visible   := Empresa.material.produto.bogrupo;
  edtnunivel.Visible := empresa.material.produto.bogrupo;
  lblnmgrupo.Visible := empresa.material.produto.bogrupo;
end;

procedure TfrmLocalizarProduto.setLargura;
begin
  edtqtlargura.Visible := Empresa.material.produto.bolargura;
  lblqtlargura.Visible := Empresa.material.produto.bolargura;
  tbvqtlargura.Visible := Empresa.material.produto.bolargura;
  tbvsimilarqtlargura.Visible := Empresa.material.produto.bolargura;
end;

procedure TfrmLocalizarProduto.setLookup;
begin
  TcxLookupComboBoxProperties(tbvCDNORMA.Properties).ListSource     := abrir_tabela(_norma);
  TcxLookupComboBoxProperties(tbvCDFORMA.Properties).ListSource     := abrir_tabela(_forma);
  TcxLookupComboBoxProperties(tbvCDMATERIAL.Properties).ListSource  := abrir_tabela(_material);
  TcxLookupComboBoxProperties(tbvCDTPITEM.Properties).ListSource    := abrir_tabela(_TPITEM);
  TcxLookupComboBoxProperties(tbvCDUNIDADE.Properties).ListSource   := abrir_tabela(_UNIDADE);
  TcxLookupComboBoxProperties(tbvCDTPPRODUTO.Properties).ListSource := abrir_tabela(_tpproduto);
end;

procedure TfrmLocalizarProduto.setMaterial;
begin
  cbxcdmaterial.Visible := Empresa.material.produto.bomaterial;
  lblcdmaterial.Visible := Empresa.material.produto.bomaterial;
  tbvcdmaterial.Visible := Empresa.material.produto.bomaterial;
  tbvsimilarcdmaterial.Visible := Empresa.material.produto.bomaterial;
end;

procedure TfrmLocalizarProduto.SetMultiSelect(bo: boolean);
begin
  if bo then
  begin
    ckbSelecaomultipla.Visible := ivAlways
  end
  else
  begin
    ckbSelecaomultipla.Visible := ivNever;
  end;
end;

procedure TfrmLocalizarProduto.setNorma;
begin
  cbxcdnorma.Visible := Empresa.material.produto.bonorma;
  lblcdnorma.Visible := Empresa.material.produto.bonorma;
  tbvcdnorma.Visible := Empresa.material.produto.bonorma;
  tbvsimilarcdnorma.Visible := Empresa.material.produto.bonorma;
end;

procedure TfrmLocalizarProduto.setPolegada;
begin
  edtdspolegada.Visible := Empresa.material.produto.bopolegada;
  lbldspolegada.Visible := Empresa.material.produto.bopolegada;
  ckbdspolegada.Visible := Empresa.material.produto.bopolegada;
  tbvDSPOLEGADA.Visible := Empresa.material.produto.bopolegada;
  tbvsimilarDSPOLEGADA.Visible := Empresa.material.produto.bopolegada;
end;

procedure TfrmLocalizarProduto.setQtdisponivel;
begin
  tbvQTPEDIDO.Visible     := empresa.material.produto.boqtdisponivel;
  tbvQTDISPONIVEL.Visible := empresa.material.produto.boqtdisponivel;
  tbvsimilarQTPEDIDO.Visible     := empresa.material.produto.boqtdisponivel;
  tbvsimilarQTDISPONIVEL.Visible := empresa.material.produto.boqtdisponivel;
end;

procedure TfrmLocalizarProduto.setValores;
begin
  tbvVLVENDA.Visible    := Empresa.material.produto.bovlvenda;
  tbvVLCUSTO.Visible    := Empresa.material.produto.bovlcusto;
  tbvVLCUSTOmedio.Visible := Empresa.material.produto.bovlcustomedio;
  tbvprlucro.Visible := empresa.material.produto.boprlucro;
  tbvVLATACADO.Visible  := Empresa.material.produto.bovlatacado;
  tbvVLESPECIAL.Visible := Empresa.material.produto.bovlespecial;

  tbvsimilarVLVENDA.Visible    := Empresa.material.produto.bovlvenda;
  tbvsimilarVLCUSTO.Visible    := Empresa.material.produto.bovlcusto;
  tbvsimilarVLATACADO.Visible  := Empresa.material.produto.bovlatacado;
  tbvsimilarVLESPECIAL.Visible := Empresa.material.produto.bovlespecial;
end;

function TfrmLocalizarProduto.seDimensional: boolean;
begin
  result := Empresa.material.produto.bopolegada or
            Empresa.material.produto.bocomprimento or
            Empresa.material.produto.bolargura or
            Empresa.material.produto.boespessura or
            Empresa.material.produto.bonorma or
            Empresa.material.produto.bomaterial or
            Empresa.material.produto.boforma;
end;

procedure TfrmLocalizarProduto.ckbboativarClick(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.ckbcdalternativoClick(Sender: TObject);
begin
  if ckbcdalternativo.checked then
  begin
    q.q.Filtered := false;
  end;
  edtcdalternativoPropertiesChange(sender);
  edtcdalternativo.SetFocus;
end;

procedure TfrmLocalizarProduto.ckbcdcodfornecedorClick(Sender: TObject);
begin
  if ckbcdcodfornecedor.checked then
  begin
    q.q.Filtered := false;
  end;
  edtcdcodfornecedorPropertiesChange(sender);
  edtcdcodfornecedor.SetFocus;
end;

procedure TfrmLocalizarProduto.ckbdspolegadaClick(Sender: TObject);
begin
  if ckbdspolegada.checked then
  begin
    q.q.Filtered := false;
  end;
  edtdspolegadaPropertiesChange(sender);
  edtdspolegada.SetFocus;
end;

procedure TfrmLocalizarProduto.ckbdsprodutoClick(Sender: TObject);
begin
  if ckbdsproduto.checked then
  begin
    q.q.Filtered := false;
  end;
  edtdsprodutoPropertiesChange(sender);
  edtdsproduto.SetFocus;
end;

procedure TfrmLocalizarProduto.btncancelarClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure TfrmLocalizarProduto.btnnovotClick(Sender: TObject);
begin
  if NovoProduto(edtnome.Text, codigo) then
  begin
    boinsert := True;
    modalresult := mrok;
  end;
end;

procedure TfrmLocalizarProduto.edtnomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if q.q.RecordCount = 0 then
  begin
    exit;
  end;
  if key = 40 then
  begin
    q.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    q.q.Prior;
    key := 0;
  end;
end;

procedure TfrmLocalizarProduto.edtnomePropertiesChange(Sender: TObject);
begin
  tmrnome.Enabled := False;
  tmrnome.Enabled := True;
end;

procedure TfrmLocalizarProduto.edtnuclfiscalPropertiesChange(Sender: TObject);
begin
  tmrnuclfiscal.Enabled := False;
  tmrnuclfiscal.Enabled := True;
end;

procedure TfrmLocalizarProduto.edtnunivelExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtnunivel.text;
  if cd = '' then
  begin
    lblnmgrupo.caption := '';
    colorexit(Sender);
    exit;
  end;
  cd := CodigodoCampo(_grupo, cd, _nunivel);
  if cd = '' then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtnunivel.Text, maiuscula(_grupo)]), mterror, [mbok], 0);
    edtnunivel.setfocus;
    abort;
  end;
  lblnmgrupo.Caption := NomedoCodigo(_grupo, cd);
  colorexit(Sender);
end;

procedure TfrmLocalizarProduto.edtnunivelKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtnunivelPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarProduto.edtnunivelPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar(_grupo, _nunivel, _nmgrupo, maiuscula(_Grupo), 'o', _nunivel);
  if cd = '' then
  begin
    exit;
  end;
  edtnunivel.Text    := cd;
  lblnmgrupo.Caption := QRegistro.CampodoCampo(_grupo, _nunivel, cd, _nmgrupo, true);
end;

procedure TfrmLocalizarProduto.edtnunivelPropertiesChange(Sender: TObject);
begin
  tmrnunivel.Enabled := False;
  tmrnunivel.Enabled := True;
end;

procedure TfrmLocalizarProduto.edtqtcomprimentoPropertiesChange(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.edtqtespessuraPropertiesChange(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.edtqtlarguraPropertiesChange(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.btnokClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarProduto.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarProduto.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarProduto.FormCreate(Sender: TObject);
begin
  SetQuery;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  setAbrirTabela;
  setEmpresa;
  produto := TProduto.create;
  setLookup;
  edtdtinicio.EditValue := dtbanco - 180;
  edtdtfinal.EditValue  := dtbanco;
end;

procedure TfrmLocalizarProduto.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  s : string;
  Column : TcxGridDBColumn;
begin
  Column := tbvBOATIVAR;
  s      := upperCase(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  if s <> UpperCase(_VERDADEIRO) then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsStrikeOut, fsBold]
  end;
end;

procedure TfrmLocalizarProduto.edtdspolegadaPropertiesChange(Sender: TObject);
begin
  tmrdspolegada.Enabled := False;
  tmrdspolegada.Enabled := True;
end;

procedure TfrmLocalizarProduto.edtdsprodutoPropertiesChange(Sender: TObject);
begin
  tmrdsproduto.Enabled := False;
  tmrdsproduto.Enabled := True;
end;

procedure TfrmLocalizarProduto.edtdstag1PropertiesChange(Sender: TObject);
begin
  tmrdstag1.Enabled := False;
  tmrdstag1.Enabled := True;
end;

procedure TfrmLocalizarProduto.edtdstag2PropertiesChange(Sender: TObject);
begin
  tmrdstag2.Enabled := False;
  tmrdstag2.Enabled := True;
end;

procedure TfrmLocalizarProduto.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarProduto.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarProduto.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarProduto.cbxcdunidadeEnter(Sender: TObject);
begin
  abrir_tabela(_unidade);
  colorenter(sender);
end;

procedure TfrmLocalizarProduto.cbxcdunidadePropertiesEditValueChanged(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.cbxcdformaEnter(Sender: TObject);
begin
  abrir_tabela(_forma);
  colorenter(sender);
end;

procedure TfrmLocalizarProduto.cbxcdformaPropertiesEditValueChanged(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.cbxcdmaterialPropertiesEditValueChanged(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.cbxcdnormaEnter(Sender: TObject);
begin
  abrir_tabela(_norma);
  colorenter(sender);
end;

procedure TfrmLocalizarProduto.cbxcdnormaPropertiesEditValueChanged(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.cbxcdtpitemPropertiesEditValueChanged(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.cbxcdtpprodutoEnter(Sender: TObject);
begin
  abrir_tabela(_tpproduto);
  colorenter(sender);
end;

procedure TfrmLocalizarProduto.cbxcdtpprodutoPropertiesEditValueChanged(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarProduto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarProduto.ckbdstag1Click(Sender: TObject);
begin
  if ckbdstag1.checked then
  begin
    q.q.Filtered := false;
  end;
  edtdstag1PropertiesChange(sender);
  edtdstag1.SetFocus;
end;

procedure TfrmLocalizarProduto.ckbdstag2Click(Sender: TObject);
begin
  if ckbdstag2.checked then
  begin
    q.q.Filtered := false;
  end;
  edtdstag2PropertiesChange(sender);
  edtdstag2.SetFocus;
end;

procedure TfrmLocalizarProduto.ckbnmprodutoClick(Sender: TObject);
begin
  edtnomePropertiesChange(sender);
  edtnome.SetFocus;
end;

procedure TfrmLocalizarProduto.ckbSelecaomultiplaPropertiesChange(Sender: TObject);
begin
  frmlocalizarproduto.tbv.OptionsSelection.MultiSelect := ckbSelecaomultipla.EditValue;
end;

procedure TfrmLocalizarProduto.tmrnomeTimer(Sender: TObject);
begin
  if edtnome.text = '' then
  begin
    filtro_nmproduto := ''
  end
  else
  begin
    filtro_nmproduto := 'nmproduto like ';
    if ckbnmproduto.checked then
    begin
      filtro_nmproduto := filtro_nmproduto + ''''+edtnome.text+'%'''
    end
    else
    begin
      filtro_nmproduto := filtro_nmproduto + '''%'+edtnome.text+'%''';
    end;
  end;
  AplicarFiltro;
  tmrnome.Enabled := False;
end;

procedure TfrmLocalizarProduto.tmrnuclfiscalTimer(Sender: TObject);
begin
  if edtnuclfiscal.text = '' then
  begin
    filtro_nuclfiscal := ''
  end
  else
  begin
    filtro_nuclfiscal := 'nuclfiscal like '''+edtnuclfiscal.text+'%''';
  end;
  AplicarFiltro;
  tmrnuclfiscal.Enabled := False;
end;

procedure TfrmLocalizarProduto.tmrnunivelTimer(Sender: TObject);
begin
  if edtnunivel.text = '' then
  begin
    filtro_nunivel := ''
  end
  else
  begin
    filtro_nunivel := 'nunivel like '''+edtnunivel.text+'%''';
  end;
  AplicarFiltro;
  tmrnunivel.Enabled := False;
end;

procedure TfrmLocalizarProduto.tmrcdalternativoTimer(Sender: TObject);
begin
  if ckbcdalternativo.checked then
  begin
    if q.q.Active and (edtcdalternativo.text <> '') then
    begin
      q.q.AfterScroll := nil;
      q.q.Locate(_cdalternativo, edtcdalternativo.text, [loCaseInsensitive, loPartialKey]);
      q.q.AfterScroll := qAfterScroll;
      qAfterScroll(q.q);
    end;
  end
  else
  begin
    if edtcdalternativo.text = '' then
    begin
      filtro_cdalternativo := ''
    end
    else
    begin
      filtro_cdalternativo := 'cdalternativo like ''%'+edtcdalternativo.text+'%''';
    end;
    AplicarFiltro;
  end;
  tmrcdalternativo.Enabled := False;
end;

procedure TfrmLocalizarProduto.tmrcdcodfornecedorTimer(Sender: TObject);
begin
  if ckbcdcodfornecedor.checked then
  begin
    if q.q.Active and (edtcdcodfornecedor.text <> '') then
    begin
      q.q.AfterScroll := nil;
      q.q.Locate(_cdcodfornecedor, edtcdcodfornecedor.text, [loCaseInsensitive, loPartialKey]);
      q.q.AfterScroll := qAfterScroll;
      qAfterScroll(q.q);
    end;
  end
  else
  begin
    if edtcdcodfornecedor.text = '' then
    begin
      filtro_cdcodfornecedor := ''
    end
    else
    begin
      filtro_cdcodfornecedor := 'cdcodfornecedor like ''%'+edtcdcodfornecedor.text+'%''';
    end;
    AplicarFiltro;
  end;
  tmrcdcodfornecedor.Enabled := False;
end;

procedure TfrmLocalizarProduto.tmrdspolegadaTimer(Sender: TObject);
begin
  if ckbdspolegada.checked then
  begin
    if q.q.Active and (edtdspolegada.text <> '') then
    begin
      q.q.AfterScroll := nil;
      q.q.Locate(_ds+_polegada, edtdspolegada.text, [loCaseInsensitive, loPartialKey]);
      q.q.AfterScroll := qAfterScroll;
      qAfterScroll(q.q);
    end;
  end
  else
  begin
    if edtdspolegada.text = '' then
    begin
      filtro_dspolegada := ''
    end
    else
    begin
      filtro_dspolegada := 'dspolegada like ''%'+edtdspolegada.text+'%''';
    end;
    AplicarFiltro;
  end;
  tmrdspolegada.Enabled := False;
end;

procedure TfrmLocalizarProduto.tmrdsprodutoTimer(Sender: TObject);
begin
  if ckbdsproduto.checked then
  begin
    if q.q.Active and (edtdsproduto.text <> '') then
    begin
      q.q.AfterScroll := nil;
      q.q.Locate(_dsproduto, edtdsproduto.text, [loCaseInsensitive, loPartialKey]);
      q.q.AfterScroll := qAfterScroll;
      qAfterScroll(q.q);
    end;
  end
  else
  begin
    if edtdsproduto.text = '' then
    begin
      filtro_dsproduto := ''
    end
    else
    begin
      filtro_dsproduto := 'dsproduto like ''%'+edtdsproduto.text+'%''';
    end;
    AplicarFiltro;
  end;
  tmrdsproduto.Enabled := False;
end;

procedure TfrmLocalizarProduto.tmrdstag1Timer(Sender: TObject);
begin
  if ckbdstag1.checked then
  begin
    if q.q.Active and (edtdstag1.text <> '') then
    begin
      q.q.AfterScroll := nil;
      q.q.Locate(_ds+_tag+_1, edtdstag1.text, [loCaseInsensitive, loPartialKey]);
      q.q.AfterScroll := qAfterScroll;
      qAfterScroll(q.q);
    end;
  end
  else
  begin
    if edtdstag1.text = '' then
    begin
      filtro_dstag1 := ''
    end
    else
    begin
      filtro_dstag1 := 'dstag1 like ''%'+edtdstag1.text+'%''';
    end;
    AplicarFiltro;
  end;
  tmrdstag1.Enabled := False;
end;

procedure TfrmLocalizarProduto.tmrdstag2Timer(Sender: TObject);
begin
  if ckbdstag2.checked then
  begin
    if q.q.Active and (edtdstag2.text <> '') then
    begin
      q.q.AfterScroll := nil;
      q.q.Locate(_ds+_tag+_2, edtdstag2.text, [loCaseInsensitive, loPartialKey]);
      q.q.AfterScroll := qAfterScroll;
      qAfterScroll(q.q);
    end;
  end
  else
  begin
    if edtdstag2.text = '' then
    begin
      filtro_dstag2 := ''
    end
    else
    begin
      filtro_dstag2 := 'dstag2 like ''%'+edtdstag2.text+'%''';
    end;
    AplicarFiltro;
  end;
  tmrdstag2.Enabled := False;
end;

procedure TfrmLocalizarProduto.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarProduto.actmetodoprocessoExecute(Sender: TObject);
begin
  if q.q.recordcount > 0 then
  begin
    dlgMetodoProcesso(q.q.FieldByName(_CDPRODUTO).AsInteger);
  end;
end;

procedure TfrmLocalizarProduto.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarProduto.AplicarFiltro;
var
  filtro : string;
  procedure setAnd;
  begin
    if filtro <> '' then
    begin
      filtro := filtro + ' and ';
    end;
  end;
  procedure setCodigo(cbx: TcxLookupComboBox; campo:string; bostring:boolean=false);
    function get_texto:string;
    begin
      result := String(cbx.EditValue);
      if bostring then
      begin
        result := quotedstr(String(cbx.EditValue))
      end;
    end;
  begin
    if (cbx.EditValue <> null) and (String(cbx.EditValue) <> _0) then
    begin
      setAnd;
      filtro := filtro + 'p.';
      filtro := filtro +campo+'='+get_texto;
    end;
  end;
  procedure setQtd(edt:currency; campo:string);
  begin
    if edt = 0 then
    begin
      exit;
    end;
    setAnd;
    filtro := filtro + campo+'='+getcurrencys(edt);
  end;
  procedure setBoativar;
  begin
    setAnd;
    if ckbboativar.Checked then
    begin
      filtro := filtro + 'boativar=''S'' '
    end
    else
    begin
      filtro := filtro + 'boativar<>''S'' ';
    end;
  end;
begin
  filtro := '';
  if filtro_nmproduto <> '' then
  begin
    filtro := filtro_nmproduto;
  end;

  if filtro_dsproduto <> '' then
  begin
    setAnd;
    filtro := filtro + filtro_dsproduto;
  end;

  if filtro_nuimei <> '' then
  begin
    setAnd;
    filtro := filtro + getCdprodutoDeNuimei;
  end;

  if filtro_dstag2 <> '' then
  begin
    setAnd;
    filtro := filtro + filtro_dstag2;
  end;

  if filtro_dspolegada <> '' then
  begin
    setAnd;
    filtro := filtro + filtro_dspolegada;
  end;

  if filtro_dstag1 <> '' then
  begin
    setAnd;
    filtro := filtro + filtro_dstag1;
  end;

  if filtro_cdalternativo <> '' then
  begin
    setAnd;
    filtro := filtro + filtro_cdalternativo;
  end;

  if filtro_cdcodfornecedor <> '' then
  begin
    setAnd;
    filtro := filtro + filtro_cdcodfornecedor;
  end;

  if filtro_nuclfiscal <> '' then
  begin
    setAnd;
    filtro := filtro + 'p.';
    filtro := filtro + filtro_nuclfiscal;
  end;

  if filtro_nunivel <> '' then
  begin
    setAnd;
     filtro := filtro + 'p.';
    filtro := filtro + filtro_nunivel;
  end;

  setBoativar;

  setCodigo(cbxcdunidade  , _cdunidade);
  setCodigo(cbxcdtpproduto, _cdtpproduto);
  setCodigo(cbxcdtpitem   , _cdtpitem, true);
  setCodigo(cbxcdforma    , _cdforma);
  setCodigo(cbxcdnorma    , _cdnorma);
  setCodigo(cbxcdmaterial , _cdmaterial);

  setQtd(edtqtespessura.Value  , _qtespessura);
  setQtd(edtqtlargura.Value    , _qtlargura);
  setQtd(edtqtcomprimento.Value, _qtcomprimento);

  filtro := getFilterTblOrigem(filtro);

  q.q.AfterScroll := nil;
  q.q.close;
  if filtro <> '' then
  begin
    filtro := 'where p.cdempresa='+empresa.cdempresa.tostring + ' and '+filtro;
  end
  else
  begin
    filtro := 'where p.cdempresa='+empresa.cdempresa.tostring;
  end;
  q.q.sql.Text := makesql(filtro);
  q.q.Open;
  q.q.AfterScroll := qAfterScroll;
  qAfterScroll(q.q);
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarProduto.edtcdalternativoPropertiesChange(Sender: TObject);
begin
  tmrcdalternativo.Enabled := False;
  tmrcdalternativo.Enabled := True;
end;

procedure TfrmLocalizarProduto.edtcdcodfornecedorPropertiesChange(Sender: TObject);
begin
  tmrcdcodfornecedor.Enabled := False;
  tmrcdcodfornecedor.Enabled := True;
end;

procedure TfrmLocalizarProduto.edtcdprodutoExit(Sender: TObject);
begin
  if q.q.Active and (edtcdproduto.Text <> '') then
  begin
    q.q.AfterScroll := nil;
    q.q.Locate(_cdproduto, edtcdproduto.Text, []);
    q.q.AfterScroll := qAfterScroll;
    qAfterScroll(q.q);
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarProduto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not q.q.Active) or (q.q.RecordCount <= 0) then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    q.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    q.q.Prior;
    key := 0;
  end;
end;

procedure TfrmLocalizarProduto.edtdsdesenhoExit(Sender: TObject);
begin
  if q.q.Active and (edtdsdesenho.Text <> '') then
  begin
    q.q.AfterScroll := nil;
    q.q.Locate(_dsdesenho, edtdsdesenho.Text, [loCaseInsensitive, loPartialKey]);
    q.q.AfterScroll := qAfterScroll;
    qAfterScroll(q.q);
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarProduto.edtdsdesenhoPropertiesChange(Sender: TObject);
begin
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.tbvQTESTOQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvQTESTOQUE;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] = '0' then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsBold];
  end
  else if Copy(AViewInfo.GridRecord.DisplayTexts[Column.Index], 1, 1) = '-' then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Style := [fsUnderline];
  end;
end;

function TfrmLocalizarProduto.getFilterTblOrigem(filtro:string):string;
begin
  result := filtro;
  if tblorigem = '' then
  begin
    Exit;
  end;
  if result <> '' then
  begin
    result := result + ' and ';
  end;
  result := result + 'p.';
  result := result + tblorigem+'=''S''';
end;

procedure TfrmLocalizarProduto.actfiltrosimilarExecute(Sender: TObject);
begin
  tbvsimilar.FilterRow.Visible := btnfiltrosimilar.down;
end;

procedure TfrmLocalizarProduto.actagruparsimilarExecute(Sender: TObject);
begin
  tbvsimilar.OptionsView.GroupByBox := btnagruparsimilar.down;
end;

procedure TfrmLocalizarProduto.actexcelsimilarExecute(Sender: TObject);
begin
  exportarexcel(grdsimilar);
end;

procedure TfrmLocalizarProduto.actconsultaExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarProduto.actsaidaExecute(Sender: TObject);
begin
  if (not q.q.Active) or q.q.FieldByName(_cdproduto).IsNull then
  begin
    Exit;
  end;
  nmdata   := _dtemissao;
  sqlgrade      := 'SELECT S.NUSAIDA'+
                         ',T.NMTPSAIDA'+
                         ',S.DTEMISSAO'+
                         ',S.CDCLIENTE'+
                         ',C.RZSOCIAL'+
                         ',I.QTITEM'+
                         ',I.VLUNITARIO'+
                         ',I.VLTOTAL'+
                         ',I.ALICMS'+
                         ',I.ALIPI'+
                         ',I.CDSAIDA '+
                   'FROM SAIDA S '+
                   'LEFT JOIN itSAIDA I ON S.CDSAIDA=I.CDSAIDA and i.cdempresa=s.cdempresa '+
                   'LEFT JOIN TPSAIDA T ON T.CDTPSAIDA=S.CDTPSAIDA and t.cdempresa=s.cdempresa '+
                   'LEFT JOIN CLIENTE C ON C.CDCLIENTE=S.CDCLIENTE and c.cdempresa=s.cdempresa '+
                   'WHERE I.CDEMPRESA='+empresa.cdempresa.tostring+' and I.CDPRODUTO='+q.q.fieldbyname(_CDPRODUTO).AsString+' :dtemissao '+
                   'ORDER BY S.DTEMISSAO DESC';
  titulografico := '';
  sqlgrafico    := nil;
  sqlgride      := tbvsaida;
  setgrade;
  actocultarExecute(sender);
end;

procedure TfrmLocalizarProduto.actentradaExecute(Sender: TObject);
begin
  if (not q.q.Active) or q.q.FieldByName(_cdproduto).IsNull then
  begin
    Exit;
  end;
  nmdata        := _dtemissao;
  sqlgrade      := 'SELECT s.NUENTRADA'+
                         ',t.nmtpentrada'+
                         ',S.DTEMISSAO'+
                         ',S.CDFORNECEDOR'+
                         ',F.RZSOCIAL'+
                         ',I.QTITEM'+
                         ',I.VLUNITARIO'+
                         ',I.VLTOTAL'+
                         ',I.ALICMS'+
                         ',I.ALIPI'+
                         ',i.nusticms'+
                         ',p.cdorigem'+
                         ',I.CDENTRADA '+
                   'FROM ENTRADA s '+
                   'LEFT JOIN itENTRADA I ON s.CDENTRADA=I.CDENTRADA and i.cdempresa=s.cdempresa '+
                   'left join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                   'left join tpentrada T on t.cdtpentrada=s.cdtpentrada and t.cdempresa=s.cdempresa '+
                   'LEFT JOIN FORNECEDOR F ON F.CDFORNECEDOR=s.CDFORNECEDOR and f.cdempresa=s.cdempresa '+
                   'WHERE i.cdempresa='+empresa.cdempresa.tostring+' and I.CDPRODUTO='+q.q.fieldbyname(_CDPRODUTO).AsString+' :dtemissao '+
                   'ORDER BY s.DTSAIDA DESC';
  titulografico := '';
  sqlgrafico    := nil;
  sqlgride      := tbventrada;
  setgrade;
  actocultarExecute(sender);
end;

procedure TfrmLocalizarProduto.actsaidadiariograficoExecute(Sender: TObject);
begin
  if (not q.q.Active) or q.q.FieldByName(_cdproduto).IsNull then
  begin
    Exit;
  end;
  nmdata   := _dtemissao;
  sqlgrade := 'SELECT S.DTEMISSAO,sum(I.QTITEM) qtitem '+
              'FROM SAIDA S '+
              'LEFT JOIN itSAIDA I ON S.CDSAIDA=I.CDSAIDA and i.cdempresa=s.cdempresa '+
              'WHERE s.cdempresa='+empresa.cdempresa.tostring+' and I.CDPRODUTO='+q.q.fieldbyname(_CDPRODUTO).AsString+' :dtemissao '+
              'GROUP BY S.DTEMISSAO '+
              'ORDER BY S.DTEMISSAO ASC';
  titulografico := 'Venda Diária';
  sqlgrafico    := tbvsaidadiario;
  sqlgride      := nil;
  setgrade;
  actocultarExecute(sender);
end;

procedure TfrmLocalizarProduto.actsaidamensalgraficoExecute(Sender: TObject);
begin
  if (not q.q.Active) or q.q.FieldByName(_cdproduto).IsNull then
  begin
    Exit;
  end;
  nmdata        := _dtemissao;
  sqlgrade      := 'select extract(year FROM S.DTEMISSAO),m.nmmes dtemissao'+
                         ',extract(month FROM S.DTEMISSAO)'+
                         ',sum(I.QTITEM) QTITEM '+
                   'from SAIDA S '+
                   'LEFT JOIN ITSAIDA I ON I.CDSAIDA=S.CDSAIDA and i.cdempresa=s.cdempresa '+
                   'LEFT JOIN MES M ON M.CDMES=extract(month FROM S.DTEMISSAO) '+
                   'where s.cdempresa='+empresa.cdempresa.tostring+' and I.CDPRODUTO='+q.q.fieldbyname(_cdproduto).asstring+' :dtemissao '+
                   'group by extract(YEAR FROM s.dtemissao),extract(month FROM s.dtemissao),M.NMMES '+
                   'order by extract(YEAR FROM s.dtemissao),extract(month FROM s.dtemissao),M.NMMES';
  titulografico := 'Venda Mensal';
  sqlgrafico    := tbvsaidadiario;
  sqlgride      := nil;
  setgrade;
  actocultarExecute(sender);
end;

procedure TfrmLocalizarProduto.actentradadiariograficoExecute(Sender: TObject);
begin
  if (not q.q.Active) or q.q.FieldByName(_cdproduto).IsNull then
  begin
    Exit;
  end;
  nmdata        := _dtemissao;
  sqlgrade      := 'SELECT s.DTEMISSAO,sum(I.QTITEM) qtitem '+
                   'FROM ENTRADA s '+
                   'LEFT JOIN ITENTRADA I ON s.CDENTRADA=I.CDENTRADA and i.cdempresa=s.cdempresa '+
                   'WHERE i.cdempresa='+empresa.cdempresa.tostring+' and I.CDPRODUTO='+q.q.fieldbyname(_CDPRODUTO).AsString+' :dtemissao '+
                   'GROUP BY s.DTEMISSAO '+
                   'ORDER BY s.DTEMISSAO ASC';
  titulografico := 'Compra Diária';
  sqlgrafico    := tbvsaidadiario;
  sqlgride      := nil;
  setgrade;
  actocultarExecute(sender);
end;

procedure TfrmLocalizarProduto.actentradamensalgraficoExecute(Sender: TObject);
begin
  if (not q.q.Active) or q.q.FieldByName(_cdproduto).IsNull then
  begin
    Exit;
  end;
  nmdata        := _dtemissao;
  sqlgrade      := 'select extract(year FROM S.DTEMISSAO),m.nmmes dtemissao'+
                         ',extract(month FROM S.DTEMISSAO)'+
                         ',sum(I.QTITEM) QTITEM '+
                   'from entrada S '+
                   'LEFT JOIN ITentrada I ON I.CDentrada=S.CDentrada and i.cdempresa=s.cdempresa '+
                   'LEFT JOIN MES M ON M.CDMES=extract(month FROM S.DTEMISSAO) '+
                   'where s.cdempresa='+empresa.cdempresa.tostring+' and I.CDPRODUTO='+q.q.fieldbyname(_cdproduto).asstring+' :dtemissao '+
                   'group by extract(YEAR FROM s.dtemissao),extract(month FROM s.dtemissao),M.NMMES '+
                   'order by extract(YEAR FROM s.dtemissao),extract(month FROM s.dtemissao),M.NMMES';
  titulografico := 'Compra Mensal';
  sqlgrafico    := tbvsaidadiario;
  sqlgride      := nil;
  setgrade;
  actocultarExecute(sender);
end;

procedure TfrmLocalizarProduto.actestoquediarioExecute(Sender: TObject);
begin
  if (not q.q.Active) or q.q.FieldByName(_cdproduto).IsNull then
  begin
    Exit;
  end;
  nmdata        := _dthistorico;
  sqlgrade      := 'SELECT S.DTHISTORICO DTEMISSAO,S.QTESTOQUE qtitem '+
                   'FROM HCUSTOMEDIO S '+
                   'WHERE S.cdempresa='+empresa.cdempresa.tostring+' and S.CDPRODUTO='+q.q.fieldbyname(_CDPRODUTO).AsString+' :dtemissao '+
                   'ORDER BY S.DTHISTORICO ASC';
  titulografico := 'Estoque Diária';
  sqlgrafico    := tbvsaidadiario;
  sqlgride      := nil;
  setgrade;
  actocultarExecute(sender);
end;

procedure TfrmLocalizarProduto.actsaidamensalExecute(Sender: TObject);
begin
  if (not q.q.Active) or q.q.FieldByName(_cdproduto).IsNull then
  begin
    Exit;
  end;
  nmdata   := _dtemissao;
  sqlgrade := 'select extract(year FROM S.DTEMISSAO) ANO,m.nmmes dtemissao'+
                    ',extract(month FROM S.DTEMISSAO)'+
                    ',sum(I.QTITEM) QTITEM '+
              'from SAIDA S '+
              'LEFT JOIN ITSAIDA I ON I.CDSAIDA=S.CDSAIDA and i.cdempresa=s.cdempresa '+
              'LEFT JOIN MES M ON M.CDMES=extract(month FROM S.DTEMISSAO) '+
              'where s.cdempresa='+empresa.cdempresa.tostring+' and I.CDPRODUTO='+q.q.fieldbyname(_cdproduto).asstring+' :dtemissao '+
              'group by extract(YEAR FROM s.dtemissao),extract(month FROM s.dtemissao),M.NMMES '+
              'order by extract(YEAR FROM s.dtemissao),extract(month FROM s.dtemissao),M.NMMES';
  tbvsaidamensal.Bands[0].Caption := 'Venda Mensal';
  titulografico := '';
  sqlgrafico    := nil;
  sqlgride      := tbvsaidamensal;
  setgrade;
  actocultarExecute(sender);
end;

procedure TfrmLocalizarProduto.actentradamensalExecute(Sender: TObject);
begin
  if (not q.q.Active) or q.q.FieldByName(_cdproduto).IsNull then
  begin
    Exit;
  end;
  nmdata   := _dtemissao;
  sqlgrade := 'select extract(year FROM S.DTEMISSAO) ANO,m.nmmes dtemissao'+
                      ',extract(month FROM S.DTEMISSAO)'+
                      ',sum(I.QTITEM) QTITEM '+
                'from entrada S '+
                'LEFT JOIN ITentrada I ON I.CDentrada=S.CDentrada and i.cdempresa=s.cdempresa '+
                'LEFT JOIN MES M ON M.CDMES=extract(month FROM S.DTEMISSAO) '+
                'where s.cdempresa='+empresa.cdempresa.tostring+' and I.CDPRODUTO='+q.q.fieldbyname(_cdproduto).asstring+' :dtemissao '+
                'group by extract(YEAR FROM s.dtemissao),extract(month FROM s.dtemissao),M.NMMES '+
                'order by extract(YEAR FROM s.dtemissao),extract(month FROM s.dtemissao),M.NMMES';
  tbvsaidamensal.Bands[0].Caption := 'Compra Mensal';
  titulografico := '';
  sqlgrafico    := nil;
  sqlgride      := tbvsaidamensal;
  setgrade;
  actocultarExecute(sender);
end;

procedure TfrmLocalizarProduto.setgrade;
begin
  qsimilar.q.Close;
  if not q.q.Active then
  begin
    exit;
  end;
  if (q.q.fieldbyname(_CDPRODUTO).AsString = '')
  or (sqlgrade = '') then
  begin
    exit;
  end;
  qsimilar.q.sql.Text := StringParametro(sqlgrade,  'and s.'+nmdata+' between '+GetDtBanco(edtdtinicio.EditValue)+' and '+GetDtBanco(edtdtfinal.EditValue)+' ');
  qsimilar.q.Open;
  if sqlgrafico <> nil then
  begin
    sqlgrafico.Title.Text      := titulografico;
    grdconsultaLevel1.GridView := sqlgrafico;
  end
  else
  begin
    grdconsultaLevel1.GridView := sqlgride;
  end;
end;

procedure TfrmLocalizarProduto.edtdtinicioChange(Sender: TObject);
begin
  setgrade;
end;

procedure TfrmLocalizarProduto.edtdtfinalChange(Sender: TObject);
begin
  setgrade;
end;

procedure TfrmLocalizarProduto.actocultarExecute(Sender: TObject);
begin
  pnlconsulta.Visible := not btnocultar.down;
  lblconsulta.Caption := TAction(sender).Caption;
  if not pnlconsulta.Visible then
  begin
    sqlgrade := '';
  end;
end;

procedure TfrmLocalizarProduto.actexcelconsultaExecute(Sender: TObject);
begin
  exportarexcel(grdconsulta);
end;

procedure TfrmLocalizarProduto.tbvsimilarQTESTOQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvsimilarQTESTOQUE;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] = '0' then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsBold];
  end
  else if Copy(AViewInfo.GridRecord.DisplayTexts[Column.Index], 1, 1) = '-' then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Style := [fsUnderline];
  end;
end;

procedure TfrmLocalizarProduto.tbvQTESTOQUE2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvQTESTOQUE2;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] = '0' then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsBold];
  end
  else if Copy(AViewInfo.GridRecord.DisplayTexts[Column.Index], 1, 1) = '-' then
  begin
    ACanvas.Font.Color := clred;
    ACanvas.Font.Style := [fsBold];
    ACanvas.Font.Style := [fsUnderline];
  end;
end;

function TfrmLocalizarProduto.getCdprodutoDeNuimei: string;
var
  q : TClasseQuery;
begin
  result := '';
  q := TClasseQuery.create;
  try
    q.q.Open('select cdproduto from itlote where cdempresa='+empresa.cdempresa.tostring+' and nuimei='+quotedstr(edtnuimei.text));
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        Result := result + ',';
      end;
      Result := result + q.q.fieldbyname(_cdproduto).AsString;
      q.q.Next;
    end;
    if result <> '' then
    begin
      result := 'cdproduto in ('+result+')';
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TfrmLocalizarProduto.edtnuimeiExit(Sender: TObject);
begin
  if edtnuimei.text = '' then
  begin
    filtro_nuimei := ''
  end
  else
  begin
    filtro_nuimei := 'imei like '''+edtnuimei.text+'%''';
  end;
  AplicarFiltro;
end;

procedure TfrmLocalizarProduto.setNuimei;
begin
  edtnuimei.Visible := empresa.material.produto.bonuimei;
  lblnuimei.Visible := empresa.material.produto.bonuimei;
end;

end.
