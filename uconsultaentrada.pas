unit uconsultaentrada;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, ComCtrls, StdCtrls, Buttons, Controls, Mask, ExtCtrls,
  ToolWin, windows, dialogs, sysutils,
  sqlexpr,
  umontarsql, udatahora, uregistro, unumero, uconstantes, ustrings,
  uAdicionarListView, usystem,
  classeentrada, classeusuario, classeform, classeempresa,
  cxPC, cxControls, dxBar, cxClasses, cxSplitter, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGroupBox, cxRadioGroup, cxCalendar, cxCheckBox, cxListView, cxPCdxBarPopupMenu,
  dxCore, cxDateUtils, dxBarBuiltInMenu;

type
  TfrmConsultaEntrada = class(TForm)
    pnl: TPanel;
    ActionList1: TActionList;
    actGerar: TAction;
    ntb: TNotebook;
    Panel2: TPanel;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    spl1: TcxSplitter;
    lblorder: TLabel;
    cbxpor: TcxComboBox;
    rdgPeriodicidade: TcxRadioGroup;
    ckbresumo: TcxCheckBox;
    pnl1: TPanel;
    pgc: TcxPageControl;
    tbsfornecedor: TcxTabSheet;
    Bevel2: TBevel;
    lblcdfornecedor: TLabel;
    lblnmcliente: TLabel;
    edtnmfornecedor: TEdit;
    edtcdfornecedor: TEdit;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    tbscliente: TcxTabSheet;
    Bevel7: TBevel;
    lblcdcliente: TLabel;
    Label9: TLabel;
    edtcdcliente: TEdit;
    edtnmcliente: TEdit;
    ToolBar5: TToolBar;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton29: TToolButton;
    tbstpentrada: TcxTabSheet;
    Bevel3: TBevel;
    Label4: TLabel;
    Label3: TLabel;
    edtcdtpentrada: TEdit;
    edtnmtpentrada: TEdit;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    tbsproduto: TcxTabSheet;
    Bevel4: TBevel;
    Label6: TLabel;
    Label5: TLabel;
    ToolBar7: TToolBar;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    edtcdproduto: TEdit;
    edtnmproduto: TEdit;
    tbsgrupo: TcxTabSheet;
    Bevel5: TBevel;
    Label2: TLabel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    edtcdgrupo: TEdit;
    edtnmgrupo: TEdit;
    tbscfop: TcxTabSheet;
    Bevel6: TBevel;
    Label8: TLabel;
    Label7: TLabel;
    ToolBar2: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton16: TToolButton;
    edtcdcfop: TEdit;
    edtnmcfop: TEdit;
    tbstpproduto: TcxTabSheet;
    Bevel8: TBevel;
    Label11: TLabel;
    Label10: TLabel;
    edtcdtpproduto: TEdit;
    edtnmtpproduto: TEdit;
    ToolBar6: TToolBar;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton33: TToolButton;
    tbscntcusto: TcxTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Bevel1: TBevel;
    edtcdcntcusto: TEdit;
    ToolBar8: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton26: TToolButton;
    edtnmcntcusto: TEdit;
    lsvfornecedor: TcxListView;
    lsvcliente: TcxListView;
    lsvtpentrada: TcxListView;
    lsvproduto: TcxListView;
    lsvgrupo: TcxListView;
    lsvcfop: TcxListView;
    lsvtpproduto: TcxListView;
    lsvcntcusto: TcxListView;
    ckbprodutoinversa: TcxCheckBox;
    trv: TTreeView;
    lblemissao: TLabel;
    lblateemissao: TLabel;
    lblentrada: TLabel;
    lblateentrada: TLabel;
    tbsempresa: TcxTabSheet;
    ToolBar10: TToolBar;
    ToolButton15: TToolButton;
    ToolButton3: TToolButton;
    ToolButton23: TToolButton;
    Label21: TLabel;
    edtcdempresa: TEdit;
    Label22: TLabel;
    edtnmempresa: TEdit;
    Bevel14: TBevel;
    lsvempresa: TcxListView;
    edtdtemissaoi: TcxDateEdit;
    edtdtemissaof: TcxDateEdit;
    edtdtentradai: TcxDateEdit;
    edtdtentradaf: TcxDateEdit;
    procedure FormShow(Sender: TObject);
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
    procedure edtnmtpentradaChange(Sender: TObject);
    procedure edtnmtpentradaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmprodutoChange(Sender: TObject);
    procedure edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmfornecedorChange(Sender: TObject);
    procedure edtnmfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure edtnmgrupoChange(Sender: TObject);
    procedure edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdtpentradaKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure edtcdcfopKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmcfopChange(Sender: TObject);
    procedure edtnmcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton29Click(Sender: TObject);
    procedure edtnmclienteChange(Sender: TObject);
    procedure edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton30Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure edtcdtpprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpprodutoChange(Sender: TObject);
    procedure edtnmtpprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmcntcustoChange(Sender: TObject);
    procedure edtnmcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure edtcdempresaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmempresaChange(Sender: TObject);
    procedure edtnmempresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private    { Private declarations }
    executar_on_change_empresa, executar_on_change_cntcusto   : Boolean;
    executar_on_change_cliente    : boolean;
    executar_on_change_tpentrada  : boolean;
    executar_on_change_grupo      : boolean;
    executar_on_change_produto    : boolean;
    executar_on_change_tpproduto  : boolean;
    executar_on_change_fornecedor : boolean;
    executar_on_change_cfop       : boolean;
    procedure set_empresa;
    procedure set_treeview;
  public    { Public declarations }
  end;

var
  frmConsultaEntrada: TfrmConsultaEntrada;

implementation

uses
  uMain,
  rptestoquecompleto,
  uconsultasaidareferenciacruzada,
  uconsultasaidaImprimirMensalProdutoPM,
  uconsultasaidaImprimirMensalProdutoPP,
  uimprimirrelatoriopadrao, uDtmMain;
  
{$R *.dfm}

procedure TfrmConsultaEntrada.FormShow(Sender: TObject);
begin
  ntb.ActivePage := 'Default';
  set_empresa;
  trv.Items[0].Expand(true);
end;

procedure TfrmConsultaEntrada.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvfornecedor);
end;

procedure TfrmConsultaEntrada.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvfornecedor);
end;

procedure TfrmConsultaEntrada.ToolButton8Click(Sender: TObject);
begin
  lsvFornecedor.Clear;
end;

procedure TfrmConsultaEntrada.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvtpentrada);
end;

procedure TfrmConsultaEntrada.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvtpentrada);
end;

procedure TfrmConsultaEntrada.ToolButton12Click(Sender: TObject);
begin
  lsvtpentrada.Clear;
end;

procedure TfrmConsultaEntrada.ToolButton21Click(Sender: TObject);
begin
  AdicionarListView(lsvproduto);
end;

procedure TfrmConsultaEntrada.ToolButton22Click(Sender: TObject);
begin
  ExcluirListView(lsvproduto);
end;

procedure TfrmConsultaEntrada.ToolButton24Click(Sender: TObject);
begin
  lsvProduto.Clear;
end;

procedure TfrmConsultaEntrada.actGerarExecute(Sender: TObject);
  function get_numes:Integer;
  begin
    Result := 0;
    if rdgPeriodicidade.ItemIndex = 0 then
    begin
      result := 6
    end
    else if rdgPeriodicidade.ItemIndex = 1 then
    begin
      result := 4
    end
    else if rdgPeriodicidade.ItemIndex = 2 then
    begin
      result := 3;
    end;
    result := Result + (cbxpor.ItemIndex * 10);
  end;
  function get_nureport:integer;
  begin
    if rdgPeriodicidade.ItemIndex = 0 then
    begin
      result := 300
    end
    else if rdgPeriodicidade.ItemIndex = 1 then
    begin
      result := 302
    end
    else
    begin
      result := 301;
    end;
  end;
var
  nopai, consulta : string;
  cdempresa, linhas, cdtpproduto, cdcfop, cdcliente, cdfornecedor, cdtpentrada, cdproduto, cdgrupo, cdstordserv, cdcondpagto, cdtpcliente, cdcntcusto, cdrota, cdrepresentante, cduf, cdtpsaida, cdetapa: TStrings;
  entrada : tentrada;
  procedure criar_objetos;
  begin
    cdempresa       := tstringlist.create;
    cdcondpagto     := tstringlist.create;
    cdetapa         := TStringList.Create;
    cdstordserv     := TStringList.Create;
    cdtpcliente     := TStringList.Create;
    cdrota          := TStringList.create;
    cdrepresentante := TStringList.create;
    cduf            := TStringList.create;
    cdtpsaida       := TStringList.create;
    cdfornecedor    := TStringList.create;
    cdcliente       := TStringList.create;
    cdtpentrada     := TStringList.create;
    cdproduto       := TStringList.create;
    cdtpproduto     := TStringList.create;
    cdgrupo         := TStringList.create;
    cdcfop          := TStringList.create;
    cdcntcusto      := TStringList.create;
    linhas          := TStringList.create;
  end;
  procedure Preencher_lista;
  var
    i: Integer; 
  begin
    for I := 0 to lsvempresa.Items.count    - 1 do
    begin
      cdempresa.add   (lsvempresa.items   [i].Caption);
    end;
    for I := 0 to lsvfornecedor.Items.count - 1 do
    begin
      cdfornecedor.add(lsvfornecedor.items[i].Caption);
    end;
    for I := 0 to lsvcliente.Items.count    - 1 do
    begin
      cdcliente.add   (lsvcliente.items   [i].Caption);
    end;
    for I := 0 to lsvtpentrada.Items.count  - 1 do
    begin
      cdtpentrada.add (lsvtpentrada.items [i].caption);
    end;
    for I := 0 to lsvproduto.Items.count    - 1 do
    begin
      cdproduto.add   (lsvproduto.items   [i].caption);
    end;
    for I := 0 to lsvtpproduto.Items.count  - 1 do
    begin
      cdtpproduto.add (lsvtpproduto.items [i].caption);
    end;
    for i := 0 to lsvcfop.Items.count       - 1 do
    begin
      cdcfop.add      (lsvcfop.items      [i].caption);
    end;
    for I := 0 to lsvgrupo.Items.count      - 1 do
    begin
      cdgrupo.add     (CodigodoCampo(_grupo   , lsvgrupo.items[i].caption, _nunivel));
    end;
    for I := 0 to lsvcntcusto.Items.count   - 1 do
    begin
      cdcntcusto.add  (CodigodoCampo(_cntcusto, lsvcntcusto.items[i].caption, _nunivel));
    end;
  end;
  procedure destruirobjetos;
  begin
    cdempresa.Free;
    FreeAndNil(cdstordserv);
    freeandnil(cdtpcliente);
    freeandnil(cdrota);
    freeandnil(cdrepresentante);
    freeandnil(cduf);
    freeandnil(cdtpsaida);
    freeandnil(cdfornecedor);
    freeandnil(cdcliente);
    freeandnil(cdcondpagto);
    freeandnil(cdtpentrada);
    freeandnil(cdproduto);
    freeandnil(cdtpproduto);
    freeandnil(cdgrupo);
    freeandnil(cdcntcusto);
    FreeAndNil(cdetapa);
    freeandnil(linhas);
    freeandnil(cdcfop);
  end;
  (*Fred*)
  function makesqlwherepadrao:string;
  var
    t : integer;
  begin
    result := ' ';
    t := Length(Result);
    InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _entrada+'.'+_dtemissao, t);
    InsercaoDataSQl(edtdtentradai, edtdtentradaf, result, _entrada+'.'+_dtsaida, t);
    sqlmontarlista(cdempresa   , _entrada  , _cdempresa   , result, t);
    sqlmontarlista(cdtpentrada , _entrada  , _cdtpentrada , result, t);
    sqlmontarlista(cdfornecedor, _entrada  , _cdfornecedor, result, t);
    sqlmontarlista(cdcliente   , _entrada  , _cdcliente   , result, t);
    sqlmontarlista(cdgrupo     , _produto  , _cdgrupo     , result, t);
    sqlmontarlista(cdtpproduto , _produto  , _cdtpproduto , result, t);
    sqlmontarlista(cdcfop      , _itentrada, _cdcfop      , result, t);
  end;
  function makesqlwherecomum:string;
  begin
    result := makesqlwherepadrao;
    sqlmontarlista(cdproduto , _itentrada, _cdproduto , result);
    sqlmontarlista(cdcntcusto, _itentrada, _cdcntcusto, result);
  end;

  (*Fred*)
  function makesqlwhereCentroCusto_Compras_e_Contas:string;
  var
    t : integer;
  begin
    result := ' ';
    t := 2 ;
    InsercaoDataSQl(edtdtemissaoi, edtdtemissaof, result, _autpagto+'.'+_dtemissao, t);
    InsercaoDataSQl(edtdtentradai, edtdtentradaf, result, _autpagto+'.'+_dtentrada, t);
    sqlmontarlista(cdempresa   , _autpagto, _cdempresa   , result, t);
    sqlmontarlista(cdfornecedor, _autpagto, _cdfornecedor, result, t);
    sqlmontarlista(cdcntcusto  , _autpagto, _cdcntcusto, result, t);
  end;
begin
  criar_objetos;
  nopai    := trv.selected.parent.text;
  consulta := trv.selected.text;
  try
    preencher_lista;
    dtmmain.LogSiteAction(self.name, consulta);
         if consulta = '372 - Analítico'                                   then ImpimirRelatorioPadrao1(372, makesqlwherecomum)
    else if consulta = '344 - Analítico Centro Custo'                      then ImpimirRelatorioPadrao1(344, makesqlwherecomum)
    else if consulta = '345 - Analítico Produto por Centro Custo'          then ImpimirRelatorioPadrao1(345, makesqlwherecomum)
    else if consulta = '438 - Analítico Centro Custo com Contas a Pagar'   then ImpimirRelatorioPadrao1(438, makesqlwherecomum, makesqlwhereCentroCusto_Compras_e_Contas)
    else if consulta = '373 - Diário'                                      then ImpimirRelatorioPadrao1(373, makesqlwherecomum)
    else if consulta = '374 - Mensal'                                      then ImpimirRelatorioPadrao1(374, makesqlwherecomum)
    else if consulta = '375 - Sintético'                                   then ImpimirRelatorioPadrao1(375, makesqlwherecomum)
    else if consulta = '421 - Sintético Cliente'                           then ImpimirRelatorioPadrao1(421, makesqlwherecomum)
    else if consulta = '376 - Sintético Produto'                           then ImpimirRelatorioPadrao1(376, makesqlwherecomum)
    else if consulta = '369 - Crédito PIS/COFINS (Grupo)'                  then ImpimirRelatorioPadrao1(369, makesqlwherecomum)
    else if consulta = '368 - Crédito PIS/COFINS (Centro Custo)'           then ImpimirRelatorioPadrao1(368, makesqlwherecomum)
    else if consulta = '370 - Crédito PIS/COFINS (Base Cálculo Crédito)'   then ImpimirRelatorioPadrao1(370, makesqlwherecomum)
    else if consulta = '365 - Sintético Crédito PIS/COFINS'                then ImpimirRelatorioPadrao1(365, makesqlwherecomum)
    else if consulta = '366 - Sintético Crédito PIS/COFINS (Grupo)'        then ImpimirRelatorioPadrao1(366, makesqlwherecomum)
    else if consulta = '367 - Sintético Crédito PIS/COFINS (Centro Custo)' then ImpimirRelatorioPadrao1(367, makesqlwherecomum)
    else if consulta = '394 - Imposto Notas Fiscais'                       then ImpimirRelatorioPadrao1(394, makesqlwherecomum)
    else if consulta = 'Compra Centro Custo'                               then imprimir_relatorio(get_nureport, consulta+' '+rdgPeriodicidade.Properties.Items[rdgPeriodicidade.itemindex].Caption, makesqlwherecomum, edtdtemissaoi.Date, edtdtemissaof.Date, get_numes, nil)
    else if consulta = '377 - Crédito ICMS'                                then ImpimirRelatorioPadrao1(377, 'between '+getdtbanco(edtdtemissaoi.Date)+' and '+getdtbanco(edtdtemissaof.Date)+' and empresa.cdempresa='+empresa.cdempresa.tostring+' ')
    else if consulta = '378 - Crédito IPI'                                 then ImpimirRelatorioPadrao1(378, 'between '+getdtbanco(edtdtemissaoi.Date)+' and '+getdtbanco(edtdtemissaof.Date)+' and empresa.cdempresa='+empresa.cdempresa.tostring+' ')
    else if consulta = 'Mensal por Centro Custo (Quebra Mês)'              then imprimirconsultasaidamensalprodutoqm(_entrada, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdtemissaoi.Date, edtdtemissaof.Date, _cntcusto)
    else if consulta = 'Mensal por Centro Custo (Quebra Centro Custo)'     then imprimirconsultasaidamensalprodutoqp(_entrada, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdtemissaoi.Date, edtdtemissaof.Date, _cntcusto)
    else if consulta = 'Mensal por Produto (Quebra Mês)'                   then imprimirconsultasaidamensalprodutoqm(_entrada, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdtemissaoi.Date, edtdtemissaof.Date, _produto)
    else if consulta = 'Mensal por Produto (Quebra Produto)'               then imprimirconsultasaidamensalprodutoqp(_entrada, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdtemissaoi.Date, edtdtemissaof.Date, _produto)
    else if consulta = 'Mensal por Fornecedor (Quebra Mês)'                then imprimirconsultasaidamensalprodutoqm(_entrada, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdtemissaoi.Date, edtdtemissaof.Date, _Fornecedor)
    else if consulta = 'Mensal por Fornecedor (Quebra Fornecedor)'         then imprimirconsultasaidamensalprodutoqp(_entrada, cdrepresentante, cdcliente, cdfornecedor, cdproduto, ckbprodutoinversa.Checked, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, edtdtemissaoi.Date, edtdtemissaof.Date, _Fornecedor)
    else if consulta = 'Valor Compra Mensal (por Produto)'                 then imprimirconsultasaidamensalreferenciacruzada(cdcondpagto, cdrepresentante, cduf, cdrota, cdtpsaida, cdgrupo, cdproduto, cdcntcusto, edtdtemissaoi.Date, edtdtemissaof.Date, _produto, 'vltotal', _acabado, _entrada);

    if nopai = 'Função' then
    begin
      if consulta = 'Baixar Estoque' then
      begin
        entrada := tentrada.create;
        try
          entrada.BaixarProdutoData(edtdtemissaoi.Date, edtdtemissaof.Date, empresa.livroproducao.qtdiasaidaestoque);
        finally
          freeandnil(entrada);
        end;
      end
      else if consulta = 'Configurar Situação Tributária' then
      begin
        entrada := tentrada.create;
        try
          entrada.setst(edtdtemissaoi.Date, edtdtemissaof.Date);
        finally
          freeandnil(entrada);
        end;
      end;
    end;
  finally
    destruirobjetos;
  end;
end;

procedure TfrmConsultaEntrada.trvChange(Sender: TObject; Node: TTreeNode);
begin
  ntb.ActivePage   := 'Default';
  actGerar.Enabled := False;
  if (node.text = '372 - Analítico') or
     (Node.text = '344 - Analítico Centro Custo') or
     (Node.Text = '438 - Analítico Centro Custo com Contas a Pagar') or 
     (node.text = '373 - Diário') or
     (node.text = '374 - Mensal') or
     (node.text = '375 - Sintético') or
     (node.text = '376 - Sintético Produto') or
     (node.text = '421 - Sintético Cliente') or
     (node.text = '369 - Crédito PIS/COFINS (Grupo)') or
     (node.text = '368 - Crédito PIS/COFINS (Centro Custo)') or
     (node.text = '345 - Analítico Produto por Centro Custo') or
     (node.text = '365 - Sintético Crédito PIS/COFINS') or
     (node.text = '366 - Sintético Crédito PIS/COFINS (Grupo)') or
     (node.text = '367 - Sintético Crédito PIS/COFINS (Centro Custo)') or
     (node.text = '394 - Imposto Notas Fiscais') or
     (node.text = '370 - Crédito PIS/COFINS (Base Cálculo Crédito)') then
  begin
    actGerar.Enabled         := true;
    lblemissao.Visible       := True;
    lblateemissao.visible    := True;
    edtdtemissaoi.Visible    := true;
    edtdtemissaof.Visible    := True;
    lblentrada.Visible       := True;
    lblateentrada.Visible    := True;
    edtdtentradai.Visible    := True;
    edtdtentradaf.Visible    := True;
    pgc.Visible              := true;
    tbsfornecedor.TabVisible := true;
    tbsproduto.tabvisible    := true;
    tbstpentrada.TabVisible  := true;
    tbsgrupo.tabvisible      := true;
    tbscntcusto.TabVisible   := true;
    tbstpproduto.tabvisible  := true;
    tbscfop.TabVisible       := true;
    tbscliente.TabVisible    := true;
    rdgPeriodicidade.Visible := False;
    ckbresumo.Visible        := False;
    lblorder.Visible         := False;
    cbxpor.Visible           := false;
  end
  else if node.text = 'Compra Centro Custo' then
  begin
    actGerar.Enabled         := true;
    lblemissao.Visible       := True;
    lblateemissao.visible    := True;
    edtdtemissaoi.Visible    := true;
    edtdtemissaof.Visible    := True;
    lblentrada.Visible       := True;
    lblateentrada.Visible    := True;
    edtdtentradai.Visible    := True;
    edtdtentradaf.Visible    := True;
    pgc.Visible              := true;
    tbsfornecedor.TabVisible := true;
    tbsproduto.tabvisible    := true;
    tbstpentrada.TabVisible  := true;
    tbsgrupo.tabvisible      := true;
    tbscntcusto.TabVisible   := true;
    tbstpproduto.tabvisible  := true;
    tbscfop.TabVisible       := true;
    tbscliente.TabVisible    := true;
    rdgPeriodicidade.Visible := true;
    ckbresumo.Visible        := False;
    lblorder.Visible         := False;
    cbxpor.Visible           := true;
  end
  else if (node.text = '377 - Crédito ICMS') or (node.text = '378 - Crédito IPI') then
  begin
    actGerar.Enabled         := true;
    lblentrada.Visible       := False;
    edtdtentradai.Visible    := False;
    edtdtentradaf.Visible    := False;
    lblateentrada.Visible    := False;
    pgc.Visible              := false;
    rdgPeriodicidade.Visible := False;
    ckbresumo.Visible        := False;
    lblorder.Visible         := False;
    cbxpor.Visible           := False;
  end
  else if (node.text = 'Mensal por Produto (Quebra Mês)') or
          (node.text = 'Mensal por Produto (Quebra Produto)') or
          (node.text = 'Mensal por Centro Custo (Quebra Mês)') or
          (node.text = 'Mensal por Centro Custo (Quebra Centro Custo)') or
          (node.text = 'Mensal por Fornecedor (Quebra Mês)') or
          (node.text = 'Mensal por Fornecedor (Quebra Fornecedor)') then
  begin
    actGerar.Enabled         := true;
    lblemissao.Visible       := True;
    lblateemissao.visible    := True;
    edtdtemissaoi.Visible    := true;
    edtdtemissaof.Visible    := True;
    lblentrada.Visible       := false;
    lblateentrada.Visible    := false;
    edtdtentradai.Visible    := false;
    edtdtentradaf.Visible    := false;
    pgc.Visible              := true;
    tbsfornecedor.TabVisible := true;
    tbsproduto.tabvisible    := true;
    tbstpentrada.TabVisible  := false;
    tbsgrupo.tabvisible      := true;
    tbscntcusto.TabVisible   := true;
    tbstpproduto.tabvisible  := false;
    tbscfop.TabVisible       := false;
    tbscliente.TabVisible    := true;
    rdgPeriodicidade.Visible := False;
    ckbresumo.Visible        := False;
    lblorder.Visible         := False;
    cbxpor.Visible           := False;
  end
  else if (Node.text = 'Valor Compra Mensal (por Produto)') then
  begin
    actGerar.Enabled         := true;
    lblemissao.Visible       := True;
    lblateemissao.visible    := True;
    edtdtemissaoi.Visible    := true;
    edtdtemissaof.Visible    := True;
    lblentrada.Visible       := false;
    lblateentrada.Visible    := false;
    edtdtentradai.Visible    := false;
    edtdtentradaf.Visible    := false;
    pgc.Visible              := true;
    tbsgrupo.tabvisible      := true;
    tbsproduto.tabvisible    := true;
    tbscntcusto.TabVisible   := true;
    tbsfornecedor.TabVisible := false;
    tbstpentrada.TabVisible  := false;
    tbstpproduto.tabvisible  := false;
    tbscfop.TabVisible       := false;
    tbscliente.TabVisible    := false;
    rdgPeriodicidade.Visible := False;
    ckbresumo.Visible        := False;
    lblorder.Visible         := False;
    cbxpor.Visible           := False;
  end
  else if (Node.text = 'Baixar Estoque') or (node.text = 'Configurar Situação Tributária') then
  begin
    actGerar.Enabled         := true;
    lblemissao.Visible       := True;
    lblateemissao.visible    := True;
    edtdtemissaoi.Visible    := true;
    edtdtemissaof.Visible    := True;
    lblentrada.Visible       := false;
    lblateentrada.Visible    := false;
    edtdtentradai.Visible    := false;
    edtdtentradaf.Visible    := false;
    pgc.Visible              := false;
    rdgPeriodicidade.Visible := False;
    ckbresumo.Visible        := False;
    lblorder.Visible         := False;
    cbxpor.Visible           := False;
  end;
end;

procedure TfrmConsultaEntrada.edtnmtpentradaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpentrada);
end;

procedure TfrmConsultaEntrada.edtnmtpentradaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpentrada, executar_on_change_tpentrada, tedit(sender), key);
end;

procedure TfrmConsultaEntrada.edtnmprodutoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_produto);
end;

procedure TfrmConsultaEntrada.edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvproduto, executar_on_change_produto, tedit(sender), key);
end;

procedure TfrmConsultaEntrada.edtnmfornecedorChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_Fornecedor);
end;

procedure TfrmConsultaEntrada.edtnmfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvFornecedor, executar_on_change_Fornecedor, tedit(sender), key);
end;

procedure TfrmConsultaEntrada.ToolButton4Click(Sender: TObject);
begin
  AdicionarListView(lsvgrupo);
end;

procedure TfrmConsultaEntrada.ToolButton5Click(Sender: TObject);
begin
  ExcluirListView(lsvgrupo);
end;

procedure TfrmConsultaEntrada.ToolButton7Click(Sender: TObject);
begin
  lsvGrupo.Clear;
end;

procedure TfrmConsultaEntrada.edtnmgrupoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_grupo);
end;

procedure TfrmConsultaEntrada.edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvGrupo, executar_on_change_Grupo, tedit(sender), key);
end;

procedure TfrmConsultaEntrada.edtcdtpentradaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpentrada, TEdit(sender), key);
end;

procedure TfrmConsultaEntrada.edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvproduto, TEdit(sender), key);
end;

procedure TfrmConsultaEntrada.edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvgrupo, TEdit(sender), key);
end;

procedure TfrmConsultaEntrada.ToolButton13Click(Sender: TObject);
begin
  AdicionarListView(lsvcfop);
end;

procedure TfrmConsultaEntrada.ToolButton14Click(Sender: TObject);
begin
  ExcluirListView(lsvcfop);
end;

procedure TfrmConsultaEntrada.ToolButton16Click(Sender: TObject);
begin
  lsvcfop.Clear;
end;

procedure TfrmConsultaEntrada.edtcdcfopKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcfop, TEdit(sender), key);
end;

procedure TfrmConsultaEntrada.edtnmcfopChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cfop);
end;

procedure TfrmConsultaEntrada.edtnmcfopKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcfop, executar_on_change_cfop, tedit(sender), key);
end;

procedure TfrmConsultaEntrada.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmConsultaEntrada.ToolButton19Click(Sender: TObject);
begin
  AdicionarListview(lsvcliente)
end;

procedure TfrmConsultaEntrada.ToolButton20Click(Sender: TObject);
begin
  ExcluirListView(lsvcliente);
end;

procedure TfrmConsultaEntrada.ToolButton29Click(Sender: TObject);
begin
  lsvCliente.Clear;
end;

procedure TfrmConsultaEntrada.edtnmclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cliente);
end;

procedure TfrmConsultaEntrada.edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcliente, executar_on_change_cliente, tedit(sender), key);
end;

procedure TfrmConsultaEntrada.ToolButton30Click(Sender: TObject);
begin
  AdicionarListView(lsvtpproduto);
end;

procedure TfrmConsultaEntrada.ToolButton31Click(Sender: TObject);
begin
  ExcluirListView(lsvtpproduto);
end;

procedure TfrmConsultaEntrada.ToolButton33Click(Sender: TObject);
begin
  lsvtpProduto.Clear;
end;

procedure TfrmConsultaEntrada.edtcdtpprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpproduto, TEdit(sender), key);
end;

procedure TfrmConsultaEntrada.edtnmtpprodutoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpproduto);
end;

procedure TfrmConsultaEntrada.edtnmtpprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpproduto, executar_on_change_tpproduto, tedit(sender), key);
end;

procedure TfrmConsultaEntrada.ToolButton17Click(Sender: TObject);
begin
  AdicionarListView(lsvcntcusto);
end;

procedure TfrmConsultaEntrada.ToolButton18Click(Sender: TObject);
begin
  ExcluirListView(lsvcntcusto);
end;

procedure TfrmConsultaEntrada.ToolButton26Click(Sender: TObject);
begin
  lsvcntcusto.Clear;
end;

procedure TfrmConsultaEntrada.edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcntcusto, TEdit(sender), key);
end;

procedure TfrmConsultaEntrada.edtnmcntcustoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cntcusto);
end;

procedure TfrmConsultaEntrada.edtnmcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcntcusto, executar_on_change_cntcusto, tedit(sender), key);
end;

procedure TfrmConsultaEntrada.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
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
    ListItem        := lsvcliente.Items.Add;
    ListItem.Caption := cdcliente;
    ListItem.SubItems.Add(NomedoCodigo(_cliente, cdcliente));
  end;
end;

procedure TfrmConsultaEntrada.edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
var
  ListItem: TListItem;
  cdFornecedor : string;
  i : integer;
begin
  if key = #13 then
  begin
    if not codigoexiste(_Fornecedor, edtcdFornecedor.text) then
    begin
      exit;
    end;
    cdFornecedor := edtcdFornecedor.text;
    edtcdFornecedor.Clear;
    edtcdFornecedor.SetFocus;
    for i := 0 to lsvFornecedor.Items.Count - 1 do
    begin
      if lsvFornecedor.Items.Item[i].Caption = cdFornecedor then
      begin
        exit;
      end;
    end;
    ListItem         := lsvFornecedor.Items.Add;
    ListItem.Caption := cdFornecedor;
    ListItem.SubItems.Add(NomedoCodigo(_Fornecedor, cdFornecedor));
  end;
end;

procedure TfrmConsultaEntrada.set_empresa;
  function getreport(tp:integer; nmconsulta:string):boolean;
  begin
    result := false;
    if tp = 1 then
    begin
      result := (nmconsulta = '369 - Crédito PIS/COFINS (Grupo)') or
                (nmconsulta = '368 - Crédito PIS/COFINS (Centro Custo)') or
                (nmconsulta = '370 - Crédito PIS/COFINS (Base Cálculo Crédito)') or
                (nmconsulta = '365 - Sintético Crédito PIS/COFINS') or
                (nmconsulta = '367 - Sintético Crédito PIS/COFINS (Centro Custo)') or
                (nmconsulta = '366 - Sintético Crédito PIS/COFINS (Grupo)');
    end
    else if tp = 2 then
    begin
      result := (nmconsulta = '344 - Analítico Centro Custo') or
                (nmconsulta = '438 - Analítico Centro Custo com Contas a Pagar') or
                (nmconsulta = '345 - Analítico Produto por Centro Custo') or
                (nmconsulta = 'Compra Centro Custo') or
                (nmconsulta = '368 - Crédito PIS/COFINS (Centro Custo)') or
                (nmconsulta = 'Mensal por Centro Custo (Quebra Centro Custo)') or
                (nmconsulta = '367 - Sintético Crédito PIS/COFINS (Centro Custo)') or
                (nmconsulta = 'Mensal por Centro Custo (Quebra Mês)');
    end;
  end;
  procedure treeview_deletar(tp:integer);
  var
    no : TTreeNode;
    i : integer;
  begin
    for I := 0 to trv.Items.Count - 1 do
    begin
      if getreport(tp, trv.Items[i].Text) then
      begin
        no := trv.Items[i];
        trv.Items.Delete(no);
        treeview_deletar(tp);
        break;
      end;
    end;
  end;
begin
  if empresa.tpregime <> _r   then
  begin
    treeview_deletar(1);
  end;
  if not empresa.financeiro.bocntcusto then
  begin
    treeview_deletar(2);
  end;
end;

procedure TfrmConsultaEntrada.ToolButton15Click(Sender: TObject);
begin
  AdicionarListView(lsvempresa);
end;

procedure TfrmConsultaEntrada.ToolButton3Click(Sender: TObject);
begin
  ExcluirListView(lsvempresa);
end;

procedure TfrmConsultaEntrada.ToolButton23Click(Sender: TObject);
begin
  lsvempresa.Clear;
end;

procedure TfrmConsultaEntrada.edtcdempresaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvempresa, TEdit(sender), key);
end;

procedure TfrmConsultaEntrada.edtnmempresaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_empresa);
end;

procedure TfrmConsultaEntrada.edtnmempresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvempresa, executar_on_change_empresa, tedit(sender), key);
end;

procedure TfrmConsultaEntrada.set_treeview;
var
  no1 : TTreeNode;
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
  trv.Items.AddChild(no1, '372 - Analítico');
  trv.Items.AddChild(no1, '344 - Analítico Centro Custo');
  trv.Items.AddChild(no1, '438 - Analítico Centro Custo com Contas a Pagar');
  trv.Items.AddChild(no1, '345 - Analítico Produto por Centro Custo');
  trv.Items.AddChild(no1, 'Compra Centro Custo');
  trv.Items.AddChild(no1, '377 - Crédito ICMS');
  trv.Items.AddChild(no1, '378 - Crédito IPI');
  trv.Items.AddChild(no1, '369 - Crédito PIS/COFINS (Grupo)');
  trv.Items.AddChild(no1, '368 - Crédito PIS/COFINS (Centro Custo)');
  trv.Items.AddChild(no1, '370 - Crédito PIS/COFINS (Base Cálculo Crédito)');
  trv.Items.AddChild(no1, '373 - Diário');
  trv.Items.AddChild(no1, '394 - Imposto Notas Fiscais');
  trv.Items.AddChild(no1, '374 - Mensal');
  trv.Items.AddChild(no1, 'Mensal por Centro Custo (Quebra Mês)');
  trv.Items.AddChild(no1, 'Mensal por Centro Custo (Quebra Centro Custo)');
  trv.Items.AddChild(no1, 'Mensal por Produto (Quebra Mês)');
  trv.Items.AddChild(no1, 'Mensal por Produto (Quebra Produto)');
  trv.Items.AddChild(no1, 'Mensal por Fornecedor (Quebra Mês)');
  trv.Items.AddChild(no1, 'Mensal por Fornecedor (Quebra Fornecedor)');
  trv.Items.AddChild(no1, '375 - Sintético');
  trv.Items.AddChild(no1, '421 - Sintético Cliente');
  trv.Items.AddChild(no1, '365 - Sintético Crédito PIS/COFINS');
  trv.Items.AddChild(no1, '367 - Sintético Crédito PIS/COFINS (Centro Custo)');
  trv.Items.AddChild(no1, '366 - Sintético Crédito PIS/COFINS (Grupo)');
  trv.Items.AddChild(no1, '376 - Sintético Produto');
  trv.Items.AddChild(no1, 'Valor Compra Mensal (por Produto)');
  no1 := trv.Items.AddChild(nil, Maiuscula(__funcao));
  trv.Items.AddChild(no1, 'Baixar Estoque');
  trv.Items.AddChild(no1, 'Configurar Situação Tributária');
end;

procedure TfrmConsultaEntrada.FormCreate(Sender: TObject);
begin
  set_treeview;
end;

end.
