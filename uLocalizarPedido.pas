unit uLocalizarPedido;

interface

uses
  System.Actions, System.UITypes,
  forms, sqlexpr, Buttons, StdCtrls, ComCtrls, Controls, Grids, Mask, Classes,
  ExtCtrls, ActnList, Menus, dialogs, sysutils, Graphics,
  DBClient, DB,
  uregistro, ulocalizar, uconstantes, uexportarexcel, ustrings,
  urotinas, udatahora, ulocalizarcliente, uMenuRelatorio,
  classesqlmontar, classeretornasql, classepedido, classeempresa, classeform,
  classeAplicacao, classequery,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxGraphics,
  cxLookAndFeels, cxPC, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit, cxGridBandedTableView,
  cxGridDBBandedTableView, cxCalc, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxSplitter, cxPCdxBarPopupMenu, cxCheckBox, dxBar, cxNavigator, dxCore, cxDateUtils,
  dxBarBuiltInMenu, cxBlobEdit, cxSpinEdit, cxTimeEdit, ClasseLocalizar;

type
  TfrmLocalizarPedido = class(TForm)
    Label2: TLabel;
    lblCliente: TLabel;
    Label1: TLabel;
    btnfind: TcxButton;
    btncancel: TcxButton;
    btnok: TcxButton;
    Bevel1: TBevel;
    dts: TDataSource;
    dtsdetail: TDataSource;
    cbxcdcondpagto: TcxLookupComboBox;
    cbxcdtppedido: TcxLookupComboBox;
    dtsdetail1: TDataSource;
    cdsdetail1: TClientDataSet;
    cdsdetail1CDPEDIDO: TIntegerField;
    cdsdetail1CDDIGITADO: TStringField;
    cdsdetail1NMPRODUTO: TStringField;
    cdsdetail1QTITEM: TFloatField;
    cdsdetail1QTATENDIDA: TFloatField;
    cdsdetail1VLUNITARIO: TCurrencyField;
    cdsdetail1VLTOTAL: TCurrencyField;
    cdsdetail1CDITPEDIDO: TIntegerField;
    cdsdetail1NUPEDIDO: TStringField;
    cdsdetail1DTEMISSAO: TDateField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    lbldtemissao: TLabel;
    lbldtsaida: TLabel;
    lblentresaida: TLabel;
    lblentreemissao: TLabel;
    cxTabSheet2: TcxTabSheet;
    Label8: TLabel;
    lblgrupo: TLabel;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    edtvlicmsi: TcxCalcEdit;
    edtalicmsi: TcxCalcEdit;
    edtvlicmsf: TcxCalcEdit;
    edtalicmsf: TcxCalcEdit;
    cxTabSheet6: TcxTabSheet;
    Label23: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    edtvlipii: TcxCalcEdit;
    edtalipii: TcxCalcEdit;
    edtvlipif: TcxCalcEdit;
    edtalipif: TcxCalcEdit;
    cxTabSheet9: TcxTabSheet;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    edtvlprodutoi: TcxCalcEdit;
    edtvlprodutof: TcxCalcEdit;
    edtvltotali: TcxCalcEdit;
    edtvltotalf: TcxCalcEdit;
    edtvlfretei: TcxCalcEdit;
    edtvlfretef: TcxCalcEdit;
    edtdtEmissaoi: TcxDateEdit;
    edtDtemissaoF: TcxDateEdit;
    edtdtprventregai: TcxDateEdit;
    edtdtprventregaf: TcxDateEdit;
    edtvldescontof: TcxCalcEdit;
    Label54: TLabel;
    edtvldescontoi: TcxCalcEdit;
    Label53: TLabel;
    lblrepresentante: TLabel;
    cbxcdrepresentante: TcxLookupComboBox;
    lbldesenho: TLabel;
    edtdsdesenho: TcxTextEdit;
    lbl1: TLabel;
    edtNUCOTACAO: TcxTextEdit;
    lblstspedido: TLabel;
    cbxcdstpedido: TcxLookupComboBox;
    lblorcamento: TLabel;
    edtcdorcamento: TcxButtonEdit;
    lblordproducao: TLabel;
    edtcdordproducao: TcxButtonEdit;
    cbxcdgrupo: TcxLookupComboBox;
    act: TActionList;
    actfiltro: TAction;
    actagrupar: TAction;
    actexcel: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarButton1: TdxBarButton;
    actlimparcriterio: TAction;
    actimprimir: TAction;
    actimprimirmodotexto2: TAction;
    actimprimirorcamento: TAction;
    actimprimirvenda: TAction;
    actimprimirvendasimples: TAction;
    actimprimirordemproducao: TAction;
    dxBarSubItem2: TdxBarSubItem;
    actimprimirdireto: TAction;
    actimprimirdiretoorcamento: TAction;
    dxBarButton9: TdxBarButton;
    actimprimirdiretovenda: TAction;
    dxBarButton10: TdxBarButton;
    actimprimirdiretovendasimples: TAction;
    dxBarButton11: TdxBarButton;
    actimprimirdiretoordproducao: TAction;
    dxBarButton12: TdxBarButton;
    tbspaciente: TcxTabSheet;
    Label3: TLabel;
    edtcdpaciente: TcxTextEdit;
    cbxcdpaciente: TcxLookupComboBox;
    btnfindpaciete: TcxButton;
    tbsfornecedor: TcxTabSheet;
    lblfornecedor: TLabel;
    dxBarSubItem3: TdxBarSubItem;
    actpadrao: TAction;
    actpadraoitens: TAction;
    actentrega: TAction;
    dxBarButton3: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvnupedido: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvnmrepresentante: TcxGridDBColumn;
    tbvNMCONDPAGTO: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvNMSTPEDIDO: TcxGridDBColumn;
    tbvDTPRVENTREGA: TcxGridDBColumn;
    tbvQTPEDIDO: TcxGridDBColumn;
    tbvQTATENDIDO: TcxGridDBColumn;
    tbvVLIPI: TcxGridDBColumn;
    tbvVLICMS: TcxGridDBColumn;
    tbvNMTPPEDIDO: TcxGridDBColumn;
    tbvCDPEDIDO: TcxGridDBColumn;
    grdDBBandedTableView1: TcxGridDBBandedTableView;
    grdDBBandedTableView1CDDIGITADO: TcxGridDBBandedColumn;
    grdDBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn;
    grdDBBandedTableView1QTITEM: TcxGridDBBandedColumn;
    grdDBBandedTableView1QTATENDIDA: TcxGridDBBandedColumn;
    grdDBBandedTableView1VLUNITARIO: TcxGridDBBandedColumn;
    grdDBBandedTableView1VLTOTAL: TcxGridDBBandedColumn;
    tbvdetail: TcxGridDBTableView;
    tbvdetailCDDIGITADO: TcxGridDBColumn;
    tbvdetailNMPRODUTO: TcxGridDBColumn;
    tbvdetailQTITEM: TcxGridDBColumn;
    tbvdetailQTATENDIDA: TcxGridDBColumn;
    tbvdetailVLUNITARIO: TcxGridDBColumn;
    tbvdetailVLTOTAL: TcxGridDBColumn;
    tbvdetailCDITPEDIDO: TcxGridDBColumn;
    tbventrega: TcxGridDBBandedTableView;
    tbventregaDTREVISAO: TcxGridDBBandedColumn;
    tbventregaNUREVISAO: TcxGridDBBandedColumn;
    tbventregaCDTPREVISAOCOMERCIAL: TcxGridDBBandedColumn;
    tbventregaCDSTEMBARQUE: TcxGridDBBandedColumn;
    tbventregaDTEMBARQUE: TcxGridDBBandedColumn;
    tbventregaHREMBARQUE: TcxGridDBBandedColumn;
    tbventregaDTDESEMBARQUE: TcxGridDBBandedColumn;
    tbventregaCDITPEDIDO: TcxGridDBBandedColumn;
    tbventregaCDDIGITADO: TcxGridDBBandedColumn;
    tbventregaNMPRODUTO: TcxGridDBBandedColumn;
    tbventregaNMUNIDADE: TcxGridDBBandedColumn;
    tbventregaQTITEM: TcxGridDBBandedColumn;
    tbventregaDSOBSERVACAO: TcxGridDBBandedColumn;
    tbventregaNMCLIENTE: TcxGridDBBandedColumn;
    tbventregaNUCOTACAO: TcxGridDBBandedColumn;
    tbventregaCDPRODUTONOCLIENTE: TcxGridDBBandedColumn;
    tbventregaDTEMISSAO: TcxGridDBBandedColumn;
    tbventregaCDSTITPEDIDO: TcxGridDBBandedColumn;
    tbventregaNMTPFRETE: TcxGridDBBandedColumn;
    tbventregaNMTRANSPORTADORA: TcxGridDBBandedColumn;
    tbventregaNUPEDIDO: TcxGridDBBandedColumn;
    tbventregaNUCORSTEMBARQUE: TcxGridDBBandedColumn;
    tbventregaNUCORSTITPEDIDO: TcxGridDBBandedColumn;
    grdLevel1: TcxGridLevel;
    grlLevel3: TcxGridLevel;
    spl: TcxSplitter;
    grddetail1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedColumn2: TcxGridDBBandedColumn;
    cxGridDBBandedColumn3: TcxGridDBBandedColumn;
    cxGridDBBandedColumn4: TcxGridDBBandedColumn;
    cxGridDBBandedColumn5: TcxGridDBBandedColumn;
    cxGridDBBandedColumn6: TcxGridDBBandedColumn;
    tbvdetail1: TcxGridDBBandedTableView;
    tbvdetail1CDDIGITADO: TcxGridDBBandedColumn;
    tbvdetail1NMPRODUTO: TcxGridDBBandedColumn;
    tbvdetail1QTITEM: TcxGridDBBandedColumn;
    tbvdetail1QTATENDIDA: TcxGridDBBandedColumn;
    tbvdetail1VLUNITARIO: TcxGridDBBandedColumn;
    tbvdetail1VLTOTAL: TcxGridDBBandedColumn;
    tbvdetail1NUPEDIDO: TcxGridDBBandedColumn;
    tbvdetail1DTEMISSAO: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    tbventregaNMTPVOLUME: TcxGridDBBandedColumn;
    tbventregaQTVOLUME: TcxGridDBBandedColumn;
    btnimprimir: TdxBarButton;
    pumimprimir: TdxBarPopupMenu;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    tbvCDEMPRESA: TcxGridDBColumn;
    lbldtembarque: TLabel;
    edtdtembarquei: TcxDateEdit;
    lbldtembarqueate: TLabel;
    edtdtembarquef: TcxDateEdit;
    lblnuestrutural: TLabel;
    edtnuestrutural: TcxTextEdit;
    tbvdsestrutura: TcxGridDBColumn;
    btnalturaautomatica: TdxBarButton;
    actalturaautomatica: TAction;
    tbventregaNUCORDTEMBARQUE: TcxGridDBBandedColumn;
    tbvNUCOTACAO: TcxGridDBColumn;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    edtcdfornecedor: TcxButtonEdit;
    lblnmfornecedor: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    dxBarButton4: TdxBarButton;
    actmodograde: TAction;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grd_DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure btncancelClick(Sender: TObject);
    procedure tbvdetail1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure tbvdetail1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure tbvStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure tbvdetailStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure edtcdorcamentoExit(Sender: TObject);
    procedure edtcdorcamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdorcamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdordproducaoExit(Sender: TObject);
    procedure edtcdordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdordproducaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdcondpagtoEnter(Sender: TObject);
    procedure cbxcdtppedidoEnter(Sender: TObject);
    procedure cbxcdstpedidoEnter(Sender: TObject);
    procedure cbxcdrepresentanteEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdgrupoEnter(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure actimprimirmodotexto2Execute(Sender: TObject);
    procedure actimprimirorcamentoExecute(Sender: TObject);
    procedure actimprimirvendaExecute(Sender: TObject);
    procedure actimprimirvendasimplesExecute(Sender: TObject);
    procedure actimprimirordemproducaoExecute(Sender: TObject);
    procedure actimprimirdiretoorcamentoExecute(Sender: TObject);
    procedure actimprimirdiretoExecute(Sender: TObject);
    procedure actimprimirdiretovendaExecute(Sender: TObject);
    procedure actimprimirdiretovendasimplesExecute(Sender: TObject);
    procedure actimprimirdiretoordproducaoExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvDblClick(Sender: TObject);
    procedure exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdpacienteEnter(Sender: TObject);
    procedure cbxcdpacienteEnter(Sender: TObject);
    procedure cbxcdpacienteExit(Sender: TObject);
    procedure btnfindpacieteClick(Sender: TObject);
    procedure actpadraoitensExecute(Sender: TObject);
    procedure actentregaExecute(Sender: TObject);
    procedure actpadraoExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tbventregaCDSTEMBARQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbventregaCDSTITPEDIDOCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actalturaautomaticaExecute(Sender: TObject);
    procedure tbventregaDTEMBARQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfornecedorExit(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure actmodogradeExecute(Sender: TObject);
  private
    qry : TClasseQuery;
    cdsdetail : TClasseQuery;
    bopedido, boitpedido, semcliente : boolean;
    SQLSelect : TStrings;
    procedure abrir_tabelas;
    procedure set_abrir_tabela;
    procedure set_empresa;
    procedure Abrir_item;
    procedure filtrar_item;
    function  itpedido_existe:Boolean;
    procedure set_btn_ok_enabled;
    procedure set_tppedido;
    procedure Load_sql_select;
    procedure set_dtembarque(boativar:Boolean);
    procedure setQuery;
    function get_index_select: integer;
    function sqlwhere: string;
    procedure adicionar_item_pedido;
  public    { Public declarations }
  end;

function LocalizarPedido(cdcliente: string; itpedidoList: Titpedidolist):string;overload;
function LocalizarPedido(cdcliente:string=''):integer;overload;

var
  frmLocalizarPedido: TfrmLocalizarPedido;

implementation

uses uDtmMain,
  ulocalizarorcamento,
  ulocalizarordproducao,
  ulocalizarproduto,
  classeregistro,
  uimprimirrelatoriopadrao, ulocalizarpaciente,
  ulocalizarfornecedor;

{$R *.DFM}

function LocalizarPedido(cdcliente:string=''):integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frmlocalizarpedido) then
  begin
    frmLocalizarPedido := TfrmLocalizarPedido.Create(application);
  end;
  with frmLocalizarPedido do
  begin
    actpadrao.Visible  := true;
    actentrega.Visible := true;
    spl.Visible            := false;
    grddetail1.Visible     := false;
    edtcdcliente.Enabled   := cdcliente = '';
    if cdcliente <> '' then
    begin
      edtcdCliente.Text := cdcliente;
      semcliente        := true;
    end;
    if qry.q.Active then
    begin
      btnFindClick(btnfind);
    end;
    set_btn_ok_enabled;
    showmodal;
    if ModalResult = mrok then
    begin
      result := qry.q.fieldbyname(_cdpedido).AsInteger;
    end;
  end;
end;

function LocalizarPedido(cdcliente:string; itpedidoList: Titpedidolist):string;
begin
  if not TQForm.ExisteFormulario(_frmlocalizarpedido) then
  begin
    frmLocalizarPedido := TfrmLocalizarPedido.Create(application);
  end;
  with frmLocalizarPedido do
  begin
    actpadraoitensExecute(actpadraoitens);
    actpadraoitens.Checked := True;
    actpadrao.Visible      := False;
    actentrega.Visible     := False;
    if cdcliente <> '' then
    begin
      grddetail1.Visible     := true;
      spl.Visible            := true;
      tbv.DragMode           := dmAutomatic;
      tbvdetail.DragMode     := dmAutomatic;
      edtcdcliente.Text      := cdcliente;
      edtcdcliente.Enabled   := False;
      semcliente             := true;
    end;
    if qry.q.Active then
    begin
      if qry.q.Active then
      begin
        btnFindClick(btnfind);
      end;
      if qry.q.FieldByName(_cdcliente).AsString <> cdcliente then
      begin
        qry.q.Close;
      end;
    end;
    showmodal;
    if ModalResult = mrok then
    begin
      if cdcliente = '' then
      begin
        itpedidolist.New.Select(cdsdetail.q.fieldbyname(_cditpedido).AsInteger);
      end
      else if cdsdetail1.Active then
      begin
        cdsdetail1.First;
        while not cdsdetail1.Eof do
        begin
          itpedidoList.New.Select(cdsdetail1CDITPEDIDO.AsInteger);
          cdsdetail1.Next;
        end;
        cdsdetail1.First;
        while not cdsdetail1.Eof do
        begin
          cdsdetail1.Delete;
        end;
      end;
      result := qry.q.fieldbyname(_cdpedido).AsString;
    end;
  end;
end;

function TfrmLocalizarPedido.sqlwhere:string;
var
  criterio : string;
begin
  Result := 'where pedido.cdempresa='+empresa.cdempresa.tostring+' ';
  criterio := result;
  sqlmontarnomelikeor(edtnucotacao.Text       , _Pedido,_Itpedido   , _nucotacao     , result);
  sqlmontarnomelike(edtdsdesenho.Text         , _itpedido    ,_dsdesenho       , result);
  sqlmontarnomedireto(edtnuestrutural.Text      , _itpedidoestrutura,_nuestrutural, result);
  sqlmontarcodigo(cbxcdgrupo.editvalue        , _produto     , _cdgrupo        , result);
  sqlmontarcodigo(edtcdproduto.text      , _itpedido    , _cdproduto      , result);
  sqlmontarcodigo(edtcdorcamento.Text         , _Itorcamento , _cdorcamento    , result);
  sqlmontarcodigo(edtcdordproducao.Text       , _ordproducao , _cdordproducao  , result);
  sqlmontarcodigo(edtcdcliente.text      , _pedido      , _cdcliente      , result);
  sqlmontarcodigo(cbxcdpaciente.editvalue     , _pedido      , _cdpaciente     , result);
  sqlmontarcodigo(edtcdfornecedor.text   , _pedido      , _cdfornecedor   , result);
  sqlmontarcodigo(cbxcdrepresentante.editvalue, _pedido      , _cdrepresentante, result);
  sqlmontarcodigo(cbxcdcondpagto.editvalue    , _pedido      , _cdcondpagto    , result);
  sqlmontarcodigo(cbxcdstpedido.editvalue     , _pedido      , _cdstpedido     , result);
  sqlmontarcodigo(cbxcdtppedido.editvalue     , _pedido      , _cdtppedido     , result);
  sqlmontarvalor (edtvlicmsi.Value     , edtvlicmsf.Value    , _itpedido, _vlicms    , result);
  sqlmontarvalor (edtalicmsi.Value     , edtalicmsf.Value    , _itpedido, _alicms    , result);
  sqlmontarvalor (edtvlipii.Value      , edtvlipif.Value     , _itpedido, _vlipi     , result);
  sqlmontarvalor (edtalipii.Value      , edtalipif.Value     , _itpedido, _alipi     , result);
  sqlmontarvalor (edtvlprodutoi.Value  , edtvlprodutof.Value , _pedido  , _vlproduto , result);
  sqlmontarvalor (edtvltotali.Value    , edtvltotalf.Value   , _pedido  , _vltotal   , result);
  sqlmontarvalor (edtvlfretei.Value    , edtvlfretef.Value   , _pedido  , _vlfrete   , result);
  sqlmontarvalor (edtvldescontoi.Value , edtvldescontof.Value, _Pedido  , _vldesconto, result);
  sqlmontardata  (edtdtEmissaoi.text   , edtdtEmissaof.text   , _pedido, _dtemissao   , result);
  sqlmontardata  (edtdtembarquei.text  , edtdtembarquef.text  , _itpedido, _dtembarque   , result);
  sqlmontardata  (edtdtprventregai.text, edtdtprventregaf.text, _pedido, _dtprventrega, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

function TfrmLocalizarPedido.get_index_select:integer;
begin
  result := 0;
  if grdLevel1.GridView = tbv then
  begin
    result := 0
  end
  else if grdLevel1.GridView = tbventrega then
  begin
    result := 1;
  end;
end;

procedure TfrmLocalizarPedido.btnFindClick(Sender: TObject);
begin
  qry.q.Close;
  qry.q.sql.text := StringParametro(SQLSelect[get_index_select], sqlwhere);
  qry.q.open;
  if actpadraoitens.Checked then
  begin
    cdsdetail.q.Close;
    cdsdetail.q.sql.text := StringParametro(SQLSelect[2], sqlwhere);;
    cdsdetail.q.open;
  end;
  set_btn_ok_enabled;
end;

procedure TfrmLocalizarPedido.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarPedido.grd_DblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarPedido.FormShow(Sender: TObject);
begin
  cbxcdrepresentante.Visible := empresa.comercial.representante.bo;
  lblrepresentante.Visible   := empresa.comercial.representante.bo;
  if not semcliente then
  begin
    edtcdcliente.Enabled := true;
    edtcdcliente.SetFocus;
  end;
  edtcdcliente.visible := true;
end;

procedure TfrmLocalizarPedido.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarPedido.btncancelClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarPedido.tbvdetail1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure TfrmLocalizarPedido.Abrir_item;
begin
  if not cdsdetail1.Active then
  begin
    cdsdetail1.CreateDataSet;
    cdsdetail1.Open;
  end;
end;

procedure TfrmLocalizarPedido.filtrar_item;
begin
  cdsdetail.q.Filter   := _cdpedido+'='+qry.q.fieldbyname(_cdpedido).AsString;
  cdsdetail.q.Filtered := True;
end;

function TfrmLocalizarPedido.itpedido_existe:Boolean;
begin
  result := cdsdetail1.Locate(_cditpedido, cdsdetail.q.fieldbyname(_cditpedido).AsString, [loCaseInsensitive]);
end;

procedure TfrmLocalizarPedido.set_btn_ok_enabled;
begin
  if not qry.q.Active then
  begin
    btnok.Enabled := False;
    Exit;
  end;
  btnOk.Enabled := qry.q.RecordCount > 0;
end;

procedure TfrmLocalizarPedido.adicionar_item_pedido;
var
  z, i : Integer;
begin
  if itpedido_existe then
  begin
    Exit;
  end;
  cdsdetail1.Insert;
  for i := 0 to cdsdetail.q.FieldCount - 1 do
  begin
    for z := 0 to cdsdetail1.FieldCount - 1 do
    begin
      if cdsdetail.q.Fields[i].FieldName = cdsdetail1.Fields[z].FieldName then
      begin
        cdsdetail1.FieldByName(cdsdetail.q.Fields[I].FieldName).AsVariant := cdsdetail.q.Fields[I].AsVariant;
      end;
    end;
  end;
  cdsdetail1.Post;
end;

procedure TfrmLocalizarPedido.tbvdetail1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Abrir_item;
  if bopedido then
  begin
    filtrar_item;
    while not cdsdetail.q.Eof do
    begin
      adicionar_item_pedido;
      cdsdetail.q.Next;
    end;
    cdsdetail.q.Filtered := False;
  end;
  if boitpedido then
  begin
    adicionar_item_pedido;
  end;
end;

procedure TfrmLocalizarPedido.tbvStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  bopedido   := True;
  boitpedido := False;
end;

procedure TfrmLocalizarPedido.tbvdetailStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  boitpedido := True;
  bopedido   := False;
end;

procedure TfrmLocalizarPedido.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarPedido.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarPedido.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarPedido.edtcdfornecedorExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _fornecedor, _fornecedor);
  colorexit(sender);
end;

procedure TfrmLocalizarPedido.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfornecedorPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarPedido.edtcdfornecedorPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdfornecedorPropertiesButtonClick(edtcdfornecedor, lblnmfornecedor);
end;

procedure TfrmLocalizarPedido.edtcdorcamentoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdorcamento.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_orcamento, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(__orcamento)]), mterror, [mbok], 0);
    edtcdorcamento.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarPedido.edtcdorcamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdorcamentoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarPedido.edtcdorcamentoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdorcamentoPropertiesButtonClick(edtcdorcamento);
end;

procedure TfrmLocalizarPedido.edtcdordproducaoExit(Sender: TObject);
var
  cd: string;
begin
  cd := edtcdordproducao.text;
  if cd = '' then
  begin
    colorexit(sender);
    exit;
  end;
  if not CodigoExiste(_ordproducao, cd) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cd, maiuscula(_ordem+' '+__producao)]), mterror, [mbok], 0);
    edtcdordproducao.setfocus;
    abort;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarPedido.edtcdordproducaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdordproducaoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarPedido.edtcdordproducaoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdordproducaoPropertiesButtonClick(edtcdordproducao);
end;

procedure TfrmLocalizarPedido.FormCreate(Sender: TObject);
begin
  SetQuery;
  SQLSelect := TStringList.Create;
  Load_sql_select;
  Abrir_tabelas;
  set_empresa;
  set_tppedido;
  actpadraoExecute(actpadrao);
  set_abrir_tabela;
  GeraMenuRelatorio ('', btnimprimir, 29, self, _pedido);
end;

procedure TfrmLocalizarPedido.cbxcdcondpagtoEnter(Sender: TObject);
begin
  abrir_tabela(_condpagto+_s);
  colorenter(sender);
end;

procedure TfrmLocalizarPedido.cbxcdtppedidoEnter(Sender: TObject);
begin
  abrir_tabela(_tppedido);
  colorenter(sender);
end;

procedure TfrmLocalizarPedido.cbxcdstpedidoEnter(Sender: TObject);
begin
  abrir_tabela(_stpedido);
  colorenter(sender);
end;

procedure TfrmLocalizarPedido.cbxcdrepresentanteEnter(Sender: TObject);
begin
  abrir_tabela(_representante);
  colorenter(sender);
end;

procedure TfrmLocalizarPedido.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarPedido.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarPedido.cbxcdgrupoEnter(Sender: TObject);
begin
  abrir_tabela(_grupo);
  colorenter(sender);
end;

procedure TfrmLocalizarPedido.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarPedido.abrir_tabelas;
begin
  cbxcdtppedido.Properties.ListSource      := abrir_tabela(_tppedido);
  cbxcdstpedido.Properties.ListSource      := abrir_tabela(_stpedido);
  cbxcdrepresentante.Properties.ListSource := abrir_tabela(_representante);
  cbxcdcondpagto.Properties.ListSource     := abrir_tabela(_condpagto+_s);
  cbxcdpaciente.Properties.ListSource      := abrir_tabela(_paciente);
  cbxcdgrupo.Properties.ListSource         := abrir_tabela(_grupo);
end;

procedure TfrmLocalizarPedido.actagruparExecute(Sender: TObject);
begin
  if grdlevel1.GridView = tbv then
  begin
    tbv.OptionsView.GroupByBox := btnagrupar.down
  end
  else if grdlevel1.GridView = tbventrega then
  begin
    tbventrega.OptionsView.GroupByBox := btnagrupar.down;
  end;
end;

procedure TfrmLocalizarPedido.actfiltroExecute(Sender: TObject);
begin
  if grdlevel1.GridView = tbv then
  begin
    tbv.FilterRow.Visible := btnfiltro.down
  end
  else if grdlevel1.GridView = tbventrega then
  begin
    tbventrega.FilterRow.Visible := btnfiltro.down;
  end;
end;

procedure TfrmLocalizarPedido.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarPedido.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, qry, tbv);
end;

procedure TfrmLocalizarPedido.actimprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure TfrmLocalizarPedido.actimprimirmodotexto2Execute(Sender: TObject);
var
  i : Integer;
  cdpedido : string;
begin
  if tbv.ViewData.RowCount = 0 then
  begin
    exit;
  end;
  for i := 0 to tbv.ViewData.RecordCount -1 do
  begin
    if tbv.ViewData.Records[i].Selected then
    begin
      cdpedido := tbv.ViewData.Records[i].Values[tbv.GetColumnByFieldName(_cdpedido).Index];
      ImpimirRelatorioPadrao1(550, 'where pedido.cdempresa='+empresa.cdempresa.tostring+' and pedido.cdpedido='+cdpedido);
    end;
  end;
end;

procedure TfrmLocalizarPedido.actimprimirorcamentoExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 333, _cdpedido);
end;

procedure TfrmLocalizarPedido.actimprimirvendaExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 309, _cdpedido);
end;

procedure TfrmLocalizarPedido.actimprimirvendasimplesExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 312, _cdpedido);
end;

procedure TfrmLocalizarPedido.actimprimirordemproducaoExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 503, _cdpedido);
end;

procedure TfrmLocalizarPedido.actimprimirdiretoorcamentoExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 333, _cdpedido, false);
end;

procedure TfrmLocalizarPedido.actimprimirdiretoExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarPedido.actimprimirdiretovendaExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 309, _cdpedido, false);
end;

procedure TfrmLocalizarPedido.actimprimirdiretovendasimplesExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 312, _cdpedido, false);
end;

procedure TfrmLocalizarPedido.actimprimirdiretoordproducaoExecute(Sender: TObject);
begin
  TQForm.ImprimirRelatorioLocalizar(tbv, 503, _cdpedido, false);
end;

procedure TfrmLocalizarPedido.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not qry.q.Active) or (qry.q.RecordCount <= 0) then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    qry.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    qry.q.Prior;
    key := 0;
  end;
end;

procedure TfrmLocalizarPedido.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarPedido.exportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarPedido.edtcdpacienteEnter(Sender: TObject);
begin
  abrir_tabela(_paciente);
  colorenter(sender);
end;

procedure TfrmLocalizarPedido.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarPedido.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarPedido.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdprodutoPropertiesButtonClick(edtcdproduto, lblnmproduto);
end;

procedure TfrmLocalizarPedido.cbxcdpacienteEnter(Sender: TObject);
begin
  abrir_tabela(_paciente);
  colorenter(sender);
end;

procedure TfrmLocalizarPedido.cbxcdpacienteExit(Sender: TObject);
begin
  if cbxcdpaciente.Text = '' then
  begin
    edtcdpaciente.Clear
  end
  else
  begin
    edtcdpaciente.Text := cbxcdpaciente.EditValue;
  end;
  colorexit(sender);
end;

procedure TfrmLocalizarPedido.btnfindpacieteClick(Sender: TObject);
var
  cd : integer;
begin
  { TODO -oPaulo -cMelhor Velocidade : Retirar o combobox do paciente para somente o campo edit }
  cd := LocalizarPaciente;
  if cd <> 0 then
  begin
    cbxcdpaciente.EditValue := cd.tostring;
    edtcdpaciente.Text      := cd.tostring;
  end
end;

procedure TfrmLocalizarPedido.actpadraoitensExecute(Sender: TObject);
begin
  grdLevel1.GridView := tbv;
  grlLevel3.Visible  := true;
  grlLevel3.GridView := tbvdetail;
end;

procedure TfrmLocalizarPedido.actentregaExecute(Sender: TObject);
begin
  grlLevel3.Visible  := False;
  grlLevel3.GridView := nil;
  grdLevel1.GridView := tbventrega;
end;

procedure TfrmLocalizarPedido.actpadraoExecute(Sender: TObject);
begin
  grdLevel1.GridView := tbv;
  grlLevel3.Visible  := False;
  grlLevel3.GridView := nil;
end;

procedure TfrmLocalizarPedido.Load_sql_select;
const
  sql1 = 'SELECT PEDIDO.DTEMISSAO'+
               ',PEDIDO.NUPEDIDO'+
               ',PEDIDO.CDCLIENTE'+
               ',CLIENTE.NMCLIENTE'+
               ',REPRESENTANTE.NMREPRESENTANTE'+
               ',CONDPAGTO.NMCONDPAGTO'+
               ',STPEDIDO.NMSTPEDIDO'+
               ',tppedido.nmtppedido'+
               ',PEDIDO.DTPRVENTREGA'+
               ',PEDIDO.qtatendido'+
               ',PEDIDO.qtpedido'+
               ',PEDIDO.vltotal'+
               ',PEDIDO.VLIPI'+
               ',PEDIDO.VLICMS'+
               ',pedido.dsestrutura'+
               ',PEDIDO.NUCOTACAO'+
               ',PEDIDO.CDEMPRESA'+
               ',PEDIDO.CDPEDIDO '+
         'FROM PEDIDO '+
         'left join itpedido on itpedido.cdpedido=PEDIDO.cdpedido and PEDIDO.cdempresa=itpedido.cdempresa '+
         'left join itpedidoestrutura on itpedidoestrutura.cdempresa=pedido.cdempresa and itpedidoestrutura.cditpedido=itpedido.cditpedido '+
         'left join ordproducao on ordproducao.cditpedido=itpedido.cditpedido and ordproducao.cdempresa=itpedido.cdempresa '+
         'left join itorcamento on itorcamento.cditorcamento=itpedido.cditorcamento and itorcamento.cdempresa=itpedido.cdempresa '+
         'left join produto on produto.cdproduto=itpedido.cdproduto and produto.cdempresa=itpedido.cdempresa '+
         'left JOIN CLIENTE ON PEDIDO.CDCLIENTE=CLIENTE.CDCLIENTE and CLIENTE.cdempresa=PEDIDO.cdempresa '+
         'left JOIN REPRESENTANTE ON REPRESENTANTE.CDREPRESENTANTE=PEDIDO.CDREPRESENTANTE and REPRESENTANTE.cdempresa=PEDIDO.cdempresa '+
         'left JOIN CONDPAGTO ON CONDPAGTO.CDCONDPAGTO=PEDIDO.CDCONDPAGTO and CONDPAGTO.cdempresa=PEDIDO.cdempresa '+
         'left join tppedido on tppedido.cdtppedido=PEDIDO.cdtppedido and tppedido.cdempresa=PEDIDO.cdempresa '+
         'left JOIN STPEDIDO ON STPEDIDO.CDSTPEDIDO=PEDIDO.CDSTPEDIDO and STPEDIDO.cdempresa=PEDIDO.cdempresa '+
         ':where '+
         'group by PEDIDO.DTEMISSAO'+
                 ',PEDIDO.NUPEDIDO'+
                 ',PEDIDO.CDCLIENTE'+
                 ',CLIENTE.NMCLIENTE'+
                 ',REPRESENTANTE.NMREPRESENTANTE'+
                 ',CONDPAGTO.NMCONDPAGTO'+
                 ',STPEDIDO.NMSTPEDIDO'+
                 ',tppedido.nmtppedido'+
                 ',PEDIDO.DTPRVENTREGA'+
                 ',PEDIDO.qtatendido'+
                 ',PEDIDO.qtpedido'+
                 ',PEDIDO.vltotal'+
                 ',PEDIDO.VLIPI'+
                 ',PEDIDO.VLICMS'+
                 ',pedido.dsestrutura'+
                 ',PEDIDO.NUCOTACAO'+
                 ',PEDIDO.CDEMPRESA'+
                 ',PEDIDO.CDPEDIDO '+
         'ORDER BY PEDIDO.DTEMISSAO DESC'+
                 ',PEDIDO.NUPEDIDO DESC';
  sql2 = 'SELECT PEDIDO.CDEMPRESA'+
               ',PEDIDO.CDPEDIDO'+
               ',PEDIDO.NUPEDIDO'+
               ',ITPEDIDO.dtrevisao'+
               ',PEDIDO.dtemissao'+
               ',ITPEDIDO.cdstembarque'+
               ',ITPEDIDO.CDITPEDIDO'+
               ',ITPEDIDO.nurevisao'+
               ',ITPEDIDO.cdtprevisaocomercial'+
               ',ITPEDIDO.cdstitpedido'+
               ',ITPEDIDO.dtembarque'+
               ',itpedido.nucordtembarque'+
               ',ITPEDIDO.QTVOLUME'+
               ',TPVOLUME.NMTPVOLUME'+
               ',ITPEDIDO.hrembarque'+
               ',ITPEDIDO.dtdesembarque'+
               ',CLIENTE.NMCLIENTE'+
               ',ITPEDIDO.nucotacao'+
               ',PRODUTOcliente.cdprodutonocliente'+
               ',itpedido.cddigitado'+
               ',produto.nmproduto'+
               ',unidade.nmunidade'+
               ',itpedido.qtitem'+
               ',tpfrete.nmtpfrete'+
               ',stitpedido.nucor nucorstitpedido'+
               ',stembarque.nucor nucorstembarque'+
               ',transportadora.nmtransportadora'+
               ',itpedido.dsobservacao '+
         'FROM PEDIDO '+
         'INNER JOIN ITPEDIDO ON ITPEDIDO.CDEMPRESA=PEDIDO.CDEMPRESA AND ITPEDIDO.CDPEDIDO=PEDIDO.cdpedido '+
         'left join itpedidoestrutura on itpedidoestrutura.cdempresa=itpedido.cdempresa and itpedidoestrutura.cditpedido=itpedido.cditpedido '+
         'LEFT JOIN TPVOLUME ON TPVOLUME.CDEMPRESA=ITPEDIDO.CDEMPRESA AND TPVOLUME.CDTPVOLUME=ITPEDIDO.CDTPVOLUME '+
         'INNER JOIN CLIENTE ON CLIENTE.CDEMPRESA=PEDIDO.CDEMPRESA AND CLIENTE.CDCLIENTE=PEDIDO.CDCLIENTE '+
         'INNER JOIN PRODUTO ON PRODUTO.CDEMPRESA=ITPEDIDO.CDEMPRESA AND PRODUTO.cdproduto=ITPEDIDO.CDPRODUTO '+
         'left join produtocliente on produtocliente.cdempresa=produto.cdempresa and produtocliente.cdproduto=produto.cdproduto and produtocliente.cdcliente=cliente.cdcliente '+
         'left join unidade on unidade.cdempresa=produto.cdempresa and unidade.cdunidade=produto.cdunidade '+
         'left join tpfrete on tpfrete.cdtpfrete=pedido.cdtpfrete '+
         'left join stitpedido on stitpedido.cdempresa=itpedido.cdempresa and stitpedido.cdstitpedido=itpedido.cdstitpedido '+
         'left join stembarque on stembarque.cdempresa=itpedido.cdempresa and stembarque.cdstembarque=itpedido.cdstembarque '+
         'left join transportadora on transportadora.cdempresa=itpedido.cdempresa and transportadora.cdtransportadora=itpedido.cdtransportadora '+
         ':where '+
         'group by PEDIDO.CDEMPRESA'+
               ',PEDIDO.CDPEDIDO'+
               ',PEDIDO.NUPEDIDO'+
               ',ITPEDIDO.dtrevisao'+
               ',PEDIDO.dtemissao'+
               ',ITPEDIDO.cdstembarque'+
               ',ITPEDIDO.CDITPEDIDO'+
               ',ITPEDIDO.nurevisao'+
               ',ITPEDIDO.cdtprevisaocomercial'+
               ',ITPEDIDO.cdstitpedido'+
               ',ITPEDIDO.dtembarque'+
               ',itpedido.nucordtembarque'+
               ',ITPEDIDO.QTVOLUME'+
               ',TPVOLUME.NMTPVOLUME'+
               ',ITPEDIDO.hrembarque'+
               ',ITPEDIDO.dtdesembarque'+
               ',CLIENTE.NMCLIENTE'+
               ',ITPEDIDO.nucotacao'+
               ',PRODUTOcliente.cdprodutonocliente'+
               ',itpedido.cddigitado'+
               ',produto.nmproduto'+
               ',unidade.nmunidade'+
               ',itpedido.qtitem'+
               ',tpfrete.nmtpfrete'+
               ',stitpedido.nucor'+
               ',stembarque.nucor'+
               ',transportadora.nmtransportadora'+
               ',itpedido.dsobservacao';
  sql3 = 'select itpedido.cdpedido,pedido.cdempresa'+
               ',itpedido.cddigitado'+
               ',produto.nmproduto'+
               ',itpedido.qtatendida'+
               ',itpedido.qtitem'+
               ',itpedido.vlunitario'+
               ',itpedido.cditpedido'+
               ',pedido.nupedido'+
               ',pedido.dtemissao'+
               ',itpedido.VLTOTAL '+
         'from pedido '+
         'left JOIN CLIENTE ON pedido.CDCLIENTE=CLIENTE.CDCLIENTE and CLIENTE.cdempresa=pedido.cdempresa '+
         'left JOIN REPRESENTANTE ON REPRESENTANTE.CDREPRESENTANTE=pedido.CDREPRESENTANTE and REPRESENTANTE.cdempresa=pedido.cdempresa '+
         'left JOIN CONDPAGTO ON CONDPAGTO.CDCONDPAGTO=pedido.CDCONDPAGTO and CONDPAGTO.cdempresa=pedido.cdempresa '+
         'left JOIN STPEDIDO ON STPEDIDO.CDSTPEDIDO=pedido.CDSTPEDIDO and STPEDIDO.cdempresa=pedido.cdempresa '+
         'inner join itpedido on itpedido.cdpedido=pedido.cdpedido and itpedido.cdempresa=pedido.cdempresa '+
         'left join itpedidoestrutura on itpedidoestrutura.cdempresa=itpedido.cdempresa and itpedidoestrutura.cditpedido=itpedido.cditpedido '+
         'left join ordproducao on ordproducao.cditpedido=itpedido.cditpedido and ordproducao.cdempresa=itpedido.cdempresa '+
         'LEFT JOIN itorcamento on itorcamento.cditorcamento=itpedido.cditorcamento and itorcamento.cdempresa=itpedido.cdempresa '+
         'inner join produto on itpedido.cdproduto=produto.cdproduto and produto.cdempresa=itpedido.cdempresa '+
         ':where '+
         'group by itpedido.cdpedido,pedido.cdempresa'+
                 ',itpedido.cddigitado'+
                 ',produto.nmproduto'+
                 ',itpedido.qtatendida'+
                 ',itpedido.qtitem'+
                 ',itpedido.vlunitario'+
                 ',itpedido.cditpedido'+
                 ',pedido.nupedido'+
                 ',pedido.dtemissao'+
                 ',itpedido.VLTOTAL';
begin
  SQLSelect.Add(sql1);
  SQLSelect.Add(sql2);
  SQLSelect.Add(sql3);
end;

procedure TfrmLocalizarPedido.FormDestroy(Sender: TObject);
begin
  FreeAndNil(SQLSelect);
end;

procedure TfrmLocalizarPedido.setQuery;
begin
  qry := TClasseQuery.Create;
  TRegistro.SetQueryLocalizar(qry, dts, tbv);
  cdsdetail := TClasseQuery.Create;
  dtsdetail.DataSet := cdsdetail.q;
end;

procedure TfrmLocalizarPedido.set_abrir_tabela;
begin
  TcxLookupComboBoxProperties(tbventregaCDSTEMBARQUE.Properties).ListSource         := abrir_tabela(_stembarque);
  TcxLookupComboBoxProperties(tbventregaCDTPREVISAOCOMERCIAL.Properties).ListSource := abrir_tabela(_tprevisaocomercial);
  TcxLookupComboBoxProperties(tbventregaCDSTITPEDIDO.Properties).ListSource         := abrir_tabela(_stitpedido);
end;

procedure TfrmLocalizarPedido.tbventregaCDSTEMBARQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBandedColumn;
begin
  Column := tbvEntregaNUCORSTEMBARQUE;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarPedido.tbventregaCDSTITPEDIDOCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBandedColumn;
begin
  Column := tbvEntregaNUCORSTITPEDIDO;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure TfrmLocalizarPedido.set_dtembarque(boativar: Boolean);
begin
  lbldtembarque.Visible := boativar;
  lbldtembarqueate.Visible := boativar;
  edtdtembarquei.Visible := boativar;
  edtdtembarquef.Visible := boativar;
end;

procedure TfrmLocalizarPedido.set_empresa;
begin
  cbxcdrepresentante.Visible               := empresa.comercial.representante.bo;
  lblrepresentante.Visible                 := empresa.comercial.representante.bo;
  tbvnmrepresentante.Visible               := empresa.comercial.representante.bo;
  lblordproducao.Visible                   := Empresa.producao.ordproducao.bo;
  edtcdordproducao.Visible                 := Empresa.producao.ordproducao.bo;
  lblorcamento.Visible                     := empresa.comercial.orcamento.bo;
  edtcdorcamento.Visible                   := empresa.comercial.orcamento.bo;
  actimprimirordemproducao.Visible         := Empresa.producao.ordproducao.bo;
  lblordproducao.Visible                   := Empresa.producao.ordproducao.bo;
  edtcdordproducao.Visible                 := Empresa.producao.ordproducao.bo;
end;

procedure TfrmLocalizarPedido.set_tppedido;
begin
  tbspaciente.TabVisible   := RegistroExiste(_tppedido, _bopaciente  +'=''S''');
  lblnuestrutural.Visible  := RegistroExiste(_tppedido, _BONUESTRUTURAL  +'=''S''');
  edtnuestrutural.Visible  := lblnuestrutural.Visible;
  tbvdsestrutura.Visible   :=  lblnuestrutural.Visible;
  tbsfornecedor.TabVisible := RegistroExiste(_tppedido, _bofornecedor+'=''S''');
  set_dtembarque(RegistroExiste(_tppedido, _BOITEMEMBARQUE+'=''S'''));
end;

procedure TfrmLocalizarPedido.actalturaautomaticaExecute(Sender: TObject);
begin
  tbv.OptionsView.CellAutoHeight := btnalturaautomatica.down;
end;

procedure TfrmLocalizarPedido.tbventregaDTEMBARQUECustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBBANDEDColumn;
begin
  Column := tbventregaNUCORDTEMBARQUE;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
    ACanvas.Font.Style := [fsBold]
  end;
end;

end.
