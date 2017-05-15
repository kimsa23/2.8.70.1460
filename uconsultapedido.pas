unit uconsultapedido;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, ComCtrls, StdCtrls, Buttons, Controls, Mask, ExtCtrls,
  Graphics, Gauges, ToolWin, windows, dialogs, Spin, sysutils,
  SqlExpr, DbChart, DB,
  uAdicionarListView, udatahora, uregistro, unumero, ustrings,
  umontarsql, uconstantes, usystem,
  classeusuario, classeretornasql, classeempresa, classepedido, classeform,
  cxPC, cxControls, dxBar, cxClasses, cxSplitter, cxSpinEdit, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxListView, cxLabel, cxGroupBox,
  cxRadioGroup, cxPCdxBarPopupMenu, dxCore, cxDateUtils, dxBarBuiltInMenu;

type
  TfrmConsultaPedido = class(TForm)
    ActionList1: TActionList;
    actGerar: TAction;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    ntb: TNotebook;
    Panel2: TPanel;
    bvl: TBevel;
    pgc: TcxPageControl;
    tbscliente: TcxTabSheet;
    lblnmcliente: TLabel;
    lblcdcliente: TLabel;
    Bevel2: TBevel;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    edtcdcliente: TEdit;
    edtnmcliente: TEdit;
    lsvcliente: TcxListView;
    tbsstpedido: TcxTabSheet;
    Label4: TLabel;
    Label3: TLabel;
    Bevel3: TBevel;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    edtnmstpedido: TEdit;
    edtcdstpedido: TEdit;
    lsvstpedido: TcxListView;
    tbsrepresentante: TcxTabSheet;
    Label6: TLabel;
    Label5: TLabel;
    Bevel4: TBevel;
    ToolBar7: TToolBar;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    edtcdrepresentante: TEdit;
    edtnmrepresentante: TEdit;
    lsvrepresentante: TcxListView;
    tbsgrupo: TcxTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Bevel5: TBevel;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    edtcdgrupo: TEdit;
    edtnmgrupo: TEdit;
    lsvgrupo: TcxListView;
    tbscondpagto: TcxTabSheet;
    Bevel7: TBevel;
    Label10: TLabel;
    Label9: TLabel;
    ToolBar5: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton20: TToolButton;
    edtcdcondpagto: TEdit;
    edtnmcondpagto: TEdit;
    lsvcondpagto: TcxListView;
    tbstpcobranca: TcxTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Bevel9: TBevel;
    ToolBar9: TToolBar;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton35: TToolButton;
    edtnmtpcobranca: TEdit;
    edtcdtpcobranca: TEdit;
    lsvtpcobranca: TcxListView;
    tbstppedido: TcxTabSheet;
    Bevel11: TBevel;
    Label17: TLabel;
    Label16: TLabel;
    edtcdtppedido: TEdit;
    edtnmtppedido: TEdit;
    ToolBar10: TToolBar;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton44: TToolButton;
    lsvtppedido: TcxListView;
    spl1: TcxSplitter;
    trv: TTreeView;
    pnl: TcxLabel;
    edtdsdesenho: TcxTextEdit;
    lbldsdesenho: TLabel;
    lblemissao: TLabel;
    lblateemissao: TLabel;
    lblentrega: TLabel;
    lblateentrega: TLabel;
    lblfechamento: TLabel;
    lblatefechamento: TLabel;
    edtdtemissaoi: TcxDateEdit;
    edtdtemissaof: TcxDateEdit;
    edtdtentregai: TcxDateEdit;
    edtdtentregaf: TcxDateEdit;
    edtdtfechamentoi: TcxDateEdit;
    edtdtfechamentof: TcxDateEdit;
    tbspaciente: TcxTabSheet;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    ToolButton11: TToolButton;
    Label7: TLabel;
    Label8: TLabel;
    edtcdpaciente: TEdit;
    edtnmpaciente: TEdit;
    Bevel1: TBevel;
    lsvpaciente: TcxListView;
    tbssfornecedor: TcxTabSheet;
    tbsproduto: TcxTabSheet;
    ToolBar6: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    Bevel6: TBevel;
    edtnmproduto: TEdit;
    edtcdproduto: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    lsvproduto: TcxListView;
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure edtnmstpedidoChange(Sender: TObject);
    procedure edtnmstpedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmrepresentanteChange(Sender: TObject);
    procedure edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmclienteChange(Sender: TObject);
    procedure edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucnpjcpfKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure edtnmgrupoChange(Sender: TObject);
    procedure edtnmcondpagtoChange(Sender: TObject);
    procedure edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmcondpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdstpedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdcondpagtoKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton32Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure ToolButton35Click(Sender: TObject);
    procedure edtcdtpcobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpcobrancaChange(Sender: TObject);
    procedure edtnmtpcobrancaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure trvClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton41Click(Sender: TObject);
    procedure ToolButton42Click(Sender: TObject);
    procedure ToolButton44Click(Sender: TObject);
    procedure edtcdtppedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtppedidoChange(Sender: TObject);
    procedure edtnmtppedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure edtcdpacienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmpacienteChange(Sender: TObject);
    procedure edtnmpacienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmprodutoChange(Sender: TObject);
    procedure edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
  private    { Private declarations }
    pedido : TPedido;
    cdproduto,
    cdfornecedor,
    cdrepresentante,
    cdpaciente,
    cdstpedido,
    cdcliente,
    cdgrupo,
    cdcondpagto,
    cdtpcobranca,
    cdrota : TStrings;
    cdcntcusto,
    cdtpcliente,
    cdstordserv,
    cdetapa,
    cduf,
    cdtppedido : TStrings;
    executar_on_change_produto : boolean;
    executar_on_change_stpedido : boolean;
    executar_on_change_representante : boolean;
    executar_on_change_paciente : boolean;
    executar_on_change_cliente : boolean;
    executar_on_change_grupo : boolean;
    executar_on_change_condpagto : boolean;
    executar_on_change_tpcobranca : boolean;
    executar_on_change_tppedido : boolean;
    procedure configuracaoEmpresa;
    procedure set_treeview;
    procedure preencher_lista;
    function makesql054: string;
    function makesqlMensalFornecedor: string;
    function makesqlMensalProduto: string;
    function makesqlwhere(cdreport: Integer=0): string;
  public    { Public declarations }
  end;

var
  frmConsultaPedido: TfrmConsultaPedido;

implementation

uses
  uMain,
  rptestoquecompleto,
  uimprimirrelatoriopadrao,
  uconsultasaidarecalcularpedidoqtatendida,
  //uconsultapedidoImprimirAtendimentoDetalhado,
  //uconsultapedidoImprimirAtendimentoMensal,
  //uconsultapedidoImprimirQtdnAtendida,
  uDtmMain;

{$R *.dfm}

procedure TfrmConsultaPedido.configuracaoEmpresa;
begin
  tbsrepresentante.TabVisible := empresa.comercial.representante.bo;
  tbspaciente.TabVisible      := empresa.paciente.bo;
end;

procedure TfrmConsultaPedido.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvcliente);
end;

procedure TfrmConsultaPedido.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvcliente);
end;

procedure TfrmConsultaPedido.ToolButton8Click(Sender: TObject);
begin
  lsvCliente.Clear;
end;

procedure TfrmConsultaPedido.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvstpedido);
end;

procedure TfrmConsultaPedido.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvstpedido);
end;

procedure TfrmConsultaPedido.ToolButton12Click(Sender: TObject);
begin
  lsvstPedido.Clear;
end;

procedure TfrmConsultaPedido.ToolButton13Click(Sender: TObject);
begin
  AdicionarListView(lsvproduto);
end;

procedure TfrmConsultaPedido.ToolButton14Click(Sender: TObject);
begin
  ExcluirListView(lsvproduto);
end;

procedure TfrmConsultaPedido.ToolButton15Click(Sender: TObject);
begin
  lsvproduto.Clear;
end;

procedure TfrmConsultaPedido.ToolButton21Click(Sender: TObject);
begin
  AdicionarListView(lsvrepresentante);
end;

procedure TfrmConsultaPedido.ToolButton22Click(Sender: TObject);
begin
  ExcluirListView(lsvrepresentante);
end;

procedure TfrmConsultaPedido.ToolButton24Click(Sender: TObject);
begin
  lsvrepresentante.Clear;
end;

procedure TfrmConsultaPedido.preencher_lista;
var
  i : Integer;
begin
  cdcliente.clear;
  cdstpedido.clear;
  cdrepresentante.clear;
  cdpaciente.clear;
  cdproduto.clear;
  cdcondpagto.clear;
  cdtpcobranca.clear;
  cdgrupo.clear;
  for I := 0 to lsvcliente.Items.count       - 1 do
  begin
    cdcliente.add      (lsvCliente.items      [i].Caption);
  end;
  for I := 0 to lsvstpedido.Items.count      - 1 do
  begin
    cdstpedido.add     (lsvstpedido.items     [i].caption);
  end;
  for I := 0 to lsvrepresentante.Items.count - 1 do
  begin
    cdrepresentante.add(lsvrepresentante.items[i].caption);
  end;
  for I := 0 to lsvpaciente.Items.count      - 1 do
  begin
    cdpaciente.add     (lsvpaciente.items     [i].caption);
  end;
  for I := 0 to lsvproduto.Items.count - 1 do
  begin
    cdproduto.add(lsvproduto.items[i].caption);
  end;
  for I := 0 to lsvcondpagto.Items.count     - 1 do
  begin
     cdcondpagto.add    (lsvcondpagto.items    [i].caption);
  end;
  for I := 0 to lsvtpcobranca.Items.count    - 1 do
  begin
    cdtpcobranca.add   (lsvtpcobranca.items   [i].caption);
  end;
  for I := 0 to lsvgrupo.Items.count         - 1 do
  begin
    cdgrupo.add        (CodigodoCampo(_grupo, lsvgrupo.items[i].caption, _nunivel));
  end;
end;

function TfrmConsultaPedido.makesql054: string;
var
  t : Integer;
begin
  result := ' ';
  t      := length(result);
  InsercaoDataSQl(edtdtemissaoi , edtdtemissaof, result, _pedido+'.'+_dtemissao   , t);
  sqlmontarlista(cdproduto , _itpedido, _cdproduto , result, t);
  sqlmontarlista(cdtppedido, _pedido  , _cdtppedido, result, t);
  sqlmontarlista(cdcliente , _pedido  , _cdcliente , result, t);
  sqlmontarlista(cdpaciente, _pedido  , _cdpaciente, result, t);
end;

function TfrmConsultaPedido.makesqlwhere(cdreport:Integer=0):string;
begin
  result := 'where pedido.cdempresa='+empresa.cdempresa.tostring+' ';
  InsercaoDataSQl(edtdtemissaoi   , edtdtemissaof   , result, _pedido+'.'+_dtemissao   );
  if cdreport = 520 then
  begin
    InsercaoDataSQl(edtdtentregai   , edtdtentregaf   , result, _itpedido+'.'+_dtprventrega)
  end
  else
  begin
    InsercaoDataSQl(edtdtentregai   , edtdtentregaf   , result, _pedido+'.'+_dtprventrega);
  end;
  InsercaoDataSQl(edtdtfechamentoi, edtdtfechamentof, result, _pedido+'.'+_dtfechamento);
  sqlmontarlista(cdcliente      , _pedido, _cdcliente      , result);
  sqlmontarlista(cdstpedido     , _pedido, _cdstpedido     , result);
  sqlmontarlista(cdrepresentante, _pedido, _cdrepresentante, result);
  sqlmontarlista(cdpaciente     , _pedido, _cdpaciente     , result);
  sqlmontarlista(cdcondpagto    , _pedido, _cdcondpagto    , result);
  sqlmontarlista(cdtpcobranca   , _pedido, _cdtpcobranca   , result);
  sqlmontarlista(cdrota         , _pedido, _cdrota         , result);
  if edtdsdesenho.Text <> ''  then
  begin
    result := result + 'and '+_itpedido+'.'+_dsdesenho+'='+quotedstr(edtdsdesenho.Text)+' ';
  end;
end;

function TfrmConsultaPedido.makesqlMensalProduto:string;
begin
  result := 'where pedido.cdempresa='+empresa.cdempresa.tostring+' and pedido.dtemissao between '+getdtbanco(edtdtemissaoi.Date)+' and '+getdtbanco(edtdtemissaof.Date)+' ';
  sqlmontarlista     (cdproduto      , _itpedido  , _cdproduto      , result, 0, false);
  sqlmontarlista     (cdrepresentante, _pedido    , _cdrepresentante, result);
  sqlmontarlista     (cdpaciente     , _pedido    , _cdpaciente     , result);
  sqlmontarlista     (cdrota         , _pedido    , _cdrota         , result);
  sqlmontarlista     (cdcliente      , _pedido    , _cdcliente      , result);
  sqlmontarlista     (cdfornecedor   , _pedido    , _cdfornecedor   , result);
  sqlmontarlistagrupo(cdgrupo        , _produto   , _cdgrupo        , result, cdproduto.count);
  sqlmontarlista     (cduf           , _cliente   , _cduf           , result);
  sqlmontarlista     (cdtpcliente    , _cliente   , _cdtpcliente    , result);
  sqlmontarlista     (cdstordserv    , _pedido    , _cdstordserv    , result);
  sqlmontarlista     (cdetapa        , _pedido    , _cdetapa        , result);
end;

function TfrmConsultaPedido.makesqlMensalFornecedor:string;
begin
  result := 'where pedido.cdempresa='+empresa.cdempresa.tostring+' and pedido.dtemissao between '+getdtbanco(edtdtemissaoi.Date)+' and '+getdtbanco(edtdtemissaof.Date)+' ';
  sqlmontarlista     (cdproduto      , _itpedido  , _cdproduto      , result, 0, false);
  sqlmontarlista     (cdrepresentante, _pedido    , _cdrepresentante, result);
  sqlmontarlista     (cdpaciente     , _pedido    , _cdpaciente     , result);
  sqlmontarlista     (cdrota         , _pedido    , _cdrota         , result);
  sqlmontarlista     (cdcliente      , _pedido    , _cdcliente      , result);
  sqlmontarlista     (cdfornecedor   , _itpedido  , _cdfornecedor   , result);
  sqlmontarlista     (cduf           , _cliente   , _cduf           , result);
  sqlmontarlista     (cdtpcliente    , _cliente   , _cdtpcliente    , result);
  sqlmontarlista     (cdstordserv    , _pedido    , _cdstordserv    , result);
  sqlmontarlista     (cdetapa        , _pedido    , _cdetapa        , result);
end;

procedure TfrmConsultaPedido.actGerarExecute(Sender: TObject);
var
  nopai, consulta :string;
begin
  preencher_lista;
  nopai        := trv.selected.Parent.text;
  consulta     := trv.selected.text;
  dtmmain.LogSiteAction(self.name, consulta);
  if consulta = 'Recalcular Pedido - Qtd Atendida' then
  begin
    RecalcularPedidoQtAtendida(edtdtemissaoi.Date, edtdtemissaof.Date)
  end
  else if consulta = 'Ajustar quantidade pedido no produto' then
  begin
    if pedido.ajustarqtpedido then
    begin
      MessageDlg('Quantidade de Pedido no produto ajustado.', mtInformation, [mbOK], 0);
    end;
  end
  else
  begin
         if consulta = '5 - Estoque Pedido Carteira'         then ImpimirRelatorioPadrao1(5, makesqlwhere)
    else if consulta = '4 - Estoque Comercial'               then ImpimirRelatorioPadrao1(4, makesqlwhere)
    else if consulta = '32 - Atendimento Pedido'             then ImpimirRelatorioPadrao1(32, makesqlwhere)
    else if consulta = 'Atendimento Pedido Detalhado'        then //imprimirconsultapedidoatendimentodetalhado(edtdtemissaoi, edtdtemissaof)
    else if consulta = 'Atendimento Pedido Mensal'           then //imprimirconsultapedidoatendimentomensal   (edtdtemissaoi, edtdtemissaof)
    else if consulta = '356 - Analítico'                     then ImpimirRelatorioPadrao1(356, makesqlwhere)
    else if consulta = '667 - Analítico sem valores'         then ImpimirRelatorioPadrao1(667, makesqlwhere)
    else if consulta = '357 - Diário'                        then ImpimirRelatorioPadrao1(357, makesqlwhere)
    else if consulta = '525 - Diário Gráfico Valor'          then ImpimirRelatorioPadrao1(525, makesqlwhere)
    else if consulta = '379 - Diário por Vendedor'           then ImpimirRelatorioPadrao1(379, makesqlwhere)
    else if consulta = '381 - Diário por Representante'      then ImpimirRelatorioPadrao1(381, makesqlwhere)
    else if consulta = '358 - Mensal'                        then ImpimirRelatorioPadrao1(358, makesqlwhere)
    else if consulta = '380 - Mensal por Vendedor'           then ImpimirRelatorioPadrao1(380, makesqlwhere)
    else if consulta = '054 - Lista de Exame do Funcionário por Cliente' then ImpimirRelatorioPadrao1(054, makesql054)
    else if consulta = '606 - Mensal por Produto (Quebra Mês)' then ImpimirRelatorioPadrao1(606, makesqlMensalProduto)
    else if consulta = '63 - Mensal por Fornecedor (Quebra Mês)' then ImpimirRelatorioPadrao1(63, makesqlMensalFornecedor)
    else if consulta = '37 - Mensal por Produto com Valor Unitário (Quebra Mês)' then ImpimirRelatorioPadrao1(37, makesqlMensalProduto)
    else if consulta = '607 - Mensal por Produto (Quebra Produto)' then ImpimirRelatorioPadrao1(607, makesqlMensalProduto)
    else if consulta = '359 - Sintético'                     then ImpimirRelatorioPadrao1(359, makesqlwhere)
    else if consulta = '518 - Sintético com Datas'           then ImpimirRelatorioPadrao1(518, makesqlwhere)
    else if consulta = '360 - Sintético por Status'          then ImpimirRelatorioPadrao1(360, makesqlwhere)
    else if consulta = '361 - Sintético por Representante'   then ImpimirRelatorioPadrao1(361, makesqlwhere)
    else if consulta = '520 - Sintético por Produto'         then ImpimirRelatorioPadrao1(520, makesqlwhere(520))
    else if consulta = '371 - Sintético por Cliente'         then ImpimirRelatorioPadrao1(371, makesqlwhere)
    else if consulta = '36 - Sintético por Paciente'         then ImpimirRelatorioPadrao1(36, makesqlwhere)
    else if consulta = '362 - Sintético por Vendedor'        then ImpimirRelatorioPadrao1(362, makesqlwhere)
    else if consulta = '395 - Sintético Qtd não Atendida'    then ImpimirRelatorioPadrao1(395, makesqlwhere)
  end;
end;

procedure TfrmConsultaPedido.trvChange(Sender: TObject; Node: TTreeNode);
var
  consulta : string;
begin
  actGerar.Enabled         := False;
  ntb.ActivePage           := 'Default';
  consulta                 := node.text;
  pgc.Visible              := true;
  tbsstpedido.tabVisible   := true;
  tbscondpagto.tabVisible  := true;
  tbsCliente.TabVisible    := true;
  tbstppedido.TabVisible   := false;
  bvl.Visible              := True;
  lblemissao.Visible       := true;
  lblateemissao.Visible    := true;
  edtdtemissaoi.Visible    := true;
  edtdtemissaof.Visible    := true;
  lblentrega.Visible       := true;
  lblateentrega.Visible    := true;
  edtdtentregai.Visible    := true;
  edtdtentregaf.Visible    := true;
  lblfechamento.Visible    := true;
  lblatefechamento.Visible := true;
  edtdtfechamentoi.Visible := true;
  edtdtfechamentof.Visible := true;
  edtdsdesenho.Visible     := False;
  lbldsdesenho.Visible     := False;
  tbsproduto.tabvisible := false;
  if consulta = 'Recalcular Pedido - Qtd Atendida' then
  begin
    actGerar.Enabled         := true;
    pgc.Visible              := false;
    bvl.Visible              := True;
    lblemissao.Visible       := true;
    lblateemissao.Visible    := true;
    edtdtemissaoi.Visible    := true;
    edtdtemissaof.Visible    := true;
    lblentrega.Visible       := false;
    lblateentrega.Visible    := false;
    edtdtentregai.Visible    := false;
    edtdtentregaf.Visible    := false;
    lblfechamento.Visible    := false;
    lblatefechamento.Visible := false;
    edtdtfechamentoi.Visible := false;
    edtdtfechamentof.Visible := false;
  end
  else if RetornaSQLInteger('select count(*) from tppedido where bodsdesenho=''S''') > 0 then
  begin
    edtdsdesenho.Visible := (consulta = '359 - Sintético') or (consulta = '518 - Sintético com Datas');
    lbldsdesenho.Visible := edtdsdesenho.Visible;
  end;
  if (consulta = '356 - Analítico') or
     (consulta = '667 - Analítico sem valores') or
     (consulta = '357 - Diário') or
     (consulta = '525 - Diário Gráfico Valor') or 
     (consulta = '381 - Diário por Representante') or
     (consulta = '379 - Diário por Vendedor') or
     (consulta = '358 - Mensal') or
     (consulta = '380 - Mensal por Vendedor') or
     (consulta = '359 - Sintético') or
     (consulta = '518 - Sintético com Datas') or
     (consulta = '371 - Sintético por Cliente') or
     (consulta = '36 - Sintético por Paciente') or 
     (consulta = '360 - Sintético por Status') or
     (consulta = '361 - Sintético por Representante') or
     (consulta = '520 - Sintético por Produto') or 
     (consulta = '362 - Sintético por Vendedor') or
     (consulta = '395 - Sintético Qtd não Atendida') or
     (consulta = 'Ajustar quantidade pedido no produto') then
  begin
    actGerar.Enabled := true;
  end
  else if (consulta = '32 - Atendimento Pedido') or (consulta = 'Atendimento Pedido Detalhado') or (consulta = 'Atendimento Pedido Mensal') then
  begin
    actGerar.Enabled := true;
    pgc.Visible := false;
  end
  else if consulta = '054 - Lista de Exame do Funcionário por Cliente' then
  begin
    actGerar.Enabled        := true;
    tbstppedido.TabVisible  := true;
    tbscliente.TabVisible   := true;
    tbspaciente.tabvisible  := true;
    lblemissao.Visible       := true;
    lblateemissao.Visible    := true;
    edtdtemissaoi.Visible    := true;
    edtdtemissaof.Visible    := true;
    pgc.Visible := true;
  end
  else if consulta = '63 - Mensal por Fornecedor (Quebra Mês)' then
  begin
    actGerar.Enabled := true;
    tbstppedido.TabVisible   := true;
    tbscondpagto.TabVisible  := false;
    tbsstpedido.tabvisible   := false;
    tbstpcobranca.TabVisible := false;
    tbsproduto.tabvisible := true;
    pgc.Visible := true;
  end
  else if (consulta = '606 - Mensal por Produto (Quebra Mês)') or
          (consulta = '37 - Mensal por Produto com Valor Unitário (Quebra Mês)') or
          (consulta = '607 - Mensal por Produto (Quebra Produto)') then
  begin
    actGerar.Enabled := true;
    tbstppedido.TabVisible   := true;
    tbscondpagto.TabVisible  := false;
    tbsstpedido.tabvisible   := false;
    tbstpcobranca.TabVisible := false;
    pgc.Visible := true;
  end
  else if (consulta = '4 - Estoque Comercial') or (consulta = '5 - Estoque Pedido Carteira') then
  begin
    actGerar.Enabled         := true;
    pgc.Visible              := False;
    bvl.Visible              := false;
    lblemissao.Visible       := True;
    lblateemissao.Visible    := True;
    edtdtemissaoi.Visible    := True;
    edtdtemissaof.Visible    := True;
    lblentrega.Visible       := true;
    lblateentrega.Visible    := true;
    edtdtentregai.Visible    := true;
    edtdtentregaf.Visible    := true;
    lblfechamento.Visible    := False;
    lblatefechamento.Visible := False;
    edtdtfechamentoi.Visible := False;
    edtdtfechamentof.Visible := False;
  end;
  ConfiguracaoEmpresa;
end;

procedure TfrmConsultaPedido.edtnmstpedidoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stpedido);
end;

procedure TfrmConsultaPedido.edtnmstpedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstPedido, executar_on_change_stPedido, tedit(sender), key);
end;

procedure TfrmConsultaPedido.edtnmrepresentanteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_representante);
end;

procedure TfrmConsultaPedido.edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvrepresentante, executar_on_change_representante, tedit(sender), key);
end;

procedure TfrmConsultaPedido.edtnmclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cliente);
end;

procedure TfrmConsultaPedido.edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcliente, executar_on_change_cliente, tedit(sender), key);
end;

procedure TfrmConsultaPedido.edtnucnpjcpfKeyPress(Sender: TObject; var Key: Char);
var
  ListItem: TListItem;
  cdcliente : string;
  i : integer;
begin
  if key = #13 then
  begin
    if not codigoexiste(_cliente, edtcdcliente.text) then
    begin
      exit;
    end;
    cdcliente := edtcdcliente.text;
    edtcdcliente.Clear;
    edtcdcliente.SetFocus;
    for i := 0 to lsvcliente.Items.Count - 1 do
    begin
      if lsvcliente.Items.Item[i].Caption = cdcliente then
      begin
        exit;
      end;
    end;
    ListItem := lsvcliente.Items.Add;
    ListItem.Caption := cdcliente;
    ListItem.SubItems.Add(Nomedocodigo(_cliente, cdcliente));
  end;
end;

procedure TfrmConsultaPedido.ToolButton4Click(Sender: TObject);
begin
  AdicionarListView(lsvgrupo);
end;

procedure TfrmConsultaPedido.ToolButton17Click(Sender: TObject);
begin
  AdicionarListView(lsvcondpagto);
end;

procedure TfrmConsultaPedido.ToolButton5Click(Sender: TObject);
begin
  ExcluirListView(lsvgrupo);
end;

procedure TfrmConsultaPedido.ToolButton18Click(Sender: TObject);
begin
  ExcluirListView(lsvcondpagto);
end;

procedure TfrmConsultaPedido.ToolButton7Click(Sender: TObject);
begin
  lsvgrupo.Clear;
end;

procedure TfrmConsultaPedido.ToolButton20Click(Sender: TObject);
begin
  lsvcondpagto.Clear;
end;

procedure TfrmConsultaPedido.edtnmgrupoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_grupo);
end;

procedure TfrmConsultaPedido.edtnmcondpagtoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_condpagto);
end;

procedure TfrmConsultaPedido.edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvGrupo, executar_on_change_Grupo, tedit(sender), key);
end;

procedure TfrmConsultaPedido.edtnmcondpagtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcondpagto, executar_on_change_condpagto, tedit(sender), key);
end;

procedure TfrmConsultaPedido.edtcdstpedidoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstpedido, TEdit(sender), key);
end;

procedure TfrmConsultaPedido.edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvrepresentante, TEdit(sender), key);
end;

procedure TfrmConsultaPedido.edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvgrupo, TEdit(sender), key);
end;

procedure TfrmConsultaPedido.edtcdcondpagtoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcondpagto, TEdit(sender), key);
end;

procedure TfrmConsultaPedido.ToolButton32Click(Sender: TObject);
begin
  AdicionarListView(lsvtpcobranca);
end;

procedure TfrmConsultaPedido.ToolButton33Click(Sender: TObject);
begin
  ExcluirListView(lsvtpcobranca);
end;

procedure TfrmConsultaPedido.ToolButton35Click(Sender: TObject);
begin
  lsvtpcobranca.Clear;
end;

procedure TfrmConsultaPedido.edtcdtpcobrancaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpcobranca, TEdit(sender), key);
end;

procedure TfrmConsultaPedido.edtnmtpcobrancaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpcobranca);
end;

procedure TfrmConsultaPedido.edtnmtpcobrancaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpcobranca, executar_on_change_tpcobranca, tedit(sender), key);
end;

procedure TfrmConsultaPedido.trvClick(Sender: TObject);
begin
  ntb.ActivePage := 'Default';
end;

procedure TfrmConsultaPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsultaPedido.ToolButton41Click(Sender: TObject);
begin
  AdicionarListView(lsvtppedido);
end;

procedure TfrmConsultaPedido.ToolButton42Click(Sender: TObject);
begin
  ExcluirListView(lsvtppedido);
end;

procedure TfrmConsultaPedido.ToolButton44Click(Sender: TObject);
begin
  lsvtppedido.Clear;
end;

procedure TfrmConsultaPedido.edtcdtppedidoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtppedido, TEdit(sender), key);
end;

procedure TfrmConsultaPedido.edtnmtppedidoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tppedido);
end;

procedure TfrmConsultaPedido.edtnmtppedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtppedido, executar_on_change_tppedido, tedit(sender), key);
end;

procedure TfrmConsultaPedido.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmConsultaPedido.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcliente, TEdit(sender), key);
end;

procedure TfrmConsultaPedido.FormShow(Sender: TObject);
begin
  configuracaoempresa;
  ntb.ActivePage        := 'Default';
  trv.Items[0].Expand(true);
end;

procedure TfrmConsultaPedido.FormCreate(Sender: TObject);
begin
  cdcliente        := TStringList.create;
  cdcntcusto       := TStringList.create;
  cdstpedido       := TStringList.create;
  cdrepresentante  := TStringList.create;
  cdpaciente       := TStringList.Create;
  cdgrupo          := TStringList.create;
  cdcondpagto      := TStringList.create;
  cdrota           := TStringList.create;
  cdtpcobranca     := TStringList.create;
  cdfornecedor     := TStringList.create;
  cdproduto        := TStringList.create;
  cdtppedido       := TStringList.create;
  cduf             := TStringList.create;
  cdtpcliente      := TStringList.create;
  cdstordserv      := TStringList.create;
  cdetapa          := TStringList.create;
  pedido           := tpedido.create;
  set_treeview;
end;

procedure TfrmConsultaPedido.FormDestroy(Sender: TObject);
begin
  freeandnil(pedido);
  freeandnil(cduf);
  freeandnil(cdproduto);
  freeandnil(cdtppedido);
  freeandnil(cdfornecedor);
  freeandnil(cdcliente);
  freeandnil(cdstpedido);
  freeandnil(cdrepresentante);
  freeandnil(cdpaciente);
  freeandnil(cdgrupo);
  freeandnil(cdcondpagto);
  freeandnil(cdrota);
  freeandnil(cdtpcobranca);
  freeandnil(cdtpcliente);
  freeandnil(cdcntcusto);
  freeandnil(cdstordserv);
  freeandnil(cdetapa);
end;

procedure TfrmConsultaPedido.set_treeview;
var
  no1 : TTreeNode;
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
  trv.Items.AddChild(no1, '356 - Analítico');
  trv.Items.AddChild(no1, '667 - Analítico sem valores');
  trv.Items.AddChild(no1, '32 - Atendimento Pedido');
  trv.Items.AddChild(no1, 'Atendimento Pedido Detalhado');
  trv.Items.AddChild(no1, 'Atendimento Pedido Mensal');
  trv.Items.AddChild(no1, '357 - Diário');
  trv.Items.AddChild(no1, '525 - Diário Gráfico Valor');
  trv.Items.AddChild(no1, '381 - Diário por Representante');
  trv.Items.AddChild(no1, '379 - Diário por Vendedor');
  trv.Items.AddChild(no1, '4 - Estoque Comercial');
  trv.Items.AddChild(no1, '5 - Estoque Pedido Carteira');
  trv.Items.AddChild(no1, '054 - Lista de Exame do Funcionário por Cliente');
  trv.Items.AddChild(no1, '358 - Mensal');
  trv.Items.AddChild(no1, '63 - Mensal por Fornecedor (Quebra Mês)');
  trv.Items.AddChild(no1, '606 - Mensal por Produto (Quebra Mês)');
  trv.Items.AddChild(no1, '37 - Mensal por Produto com Valor Unitário (Quebra Mês)');
  trv.Items.AddChild(no1, '607 - Mensal por Produto (Quebra Produto)');
  trv.Items.AddChild(no1, '380 - Mensal por Vendedor');
  trv.Items.AddChild(no1, '359 - Sintético');
  trv.Items.AddChild(no1, '518 - Sintético com Datas');
  trv.Items.AddChild(no1, '371 - Sintético por Cliente');
  if empresa.paciente.bo then
  begin
    trv.Items.AddChild(no1, '36 - Sintético por Paciente');
  end;
  trv.Items.AddChild(no1, '520 - Sintético por Produto');
  trv.Items.AddChild(no1, '360 - Sintético por Status');
  trv.Items.AddChild(no1, '361 - Sintético por Representante');
  trv.Items.AddChild(no1, '362 - Sintético por Vendedor');
  trv.Items.AddChild(no1, '395 - Sintético Qtd não Atendida');
  no1 := trv.Items.AddChild(nil, Maiuscula(__funcao));
  trv.Items.AddChild(no1, 'Ajustar quantidade pedido no produto');
  trv.Items.AddChild(no1, 'Recalcular Pedido - Qtd Atendida');
end;

procedure TfrmConsultaPedido.ToolButton3Click(Sender: TObject);
begin
  AdicionarListView(lsvpaciente);
end;

procedure TfrmConsultaPedido.ToolButton6Click(Sender: TObject);
begin
  ExcluirListView(lsvpaciente);
end;

procedure TfrmConsultaPedido.ToolButton11Click(Sender: TObject);
begin
  lsvpaciente.Clear;
end;

procedure TfrmConsultaPedido.edtcdpacienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvpaciente, TEdit(sender), key);
end;

procedure TfrmConsultaPedido.edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvproduto, TEdit(sender), key);
end;

procedure TfrmConsultaPedido.edtnmpacienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_paciente);
end;

procedure TfrmConsultaPedido.edtnmpacienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvpaciente, executar_on_change_paciente, tedit(sender), key);
end;

procedure TfrmConsultaPedido.edtnmprodutoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_produto);
end;

procedure TfrmConsultaPedido.edtnmprodutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  AdicionarNomeListView(lsvproduto, executar_on_change_produto, tedit(sender), key);
end;

end.
