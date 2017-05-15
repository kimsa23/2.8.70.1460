unit uconsultamovto;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, ComCtrls, StdCtrls, Buttons, Controls, Mask, ExtCtrls,
  ToolWin, windows, dialogs, sysutils,
  sqlexpr,
  umontarsql, ustrings, udatahora, uregistro, unumero, uconstantes,
  uAdicionarListView, usystem,
  classeusuario, classeform, classeempresa,
  cxPC, cxControls, dxBar, cxClasses, cxSplitter, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxListView, cxEdit, cxGroupBox, cxRadioGroup,
  cxPCdxBarPopupMenu, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxCore,
  cxDateUtils, dxBarBuiltInMenu;

type
  TfrmConsultaMovto = class(TForm)
    pnl: TPanel;
    ActionList1: TActionList;
    actGerar: TAction;
    ntb: TNotebook;
    Panel2: TPanel;
    lblinicial: TLabel;
    lblfinal: TLabel;
    Bevel6: TBevel;
    actfechar: TAction;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    tbsgrupo: TcxTabSheet;
    tbscntcusto: TcxTabSheet;
    tbstpmovto: TcxTabSheet;
    ToolBar7: TToolBar;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    edtnmproduto: TEdit;
    edtcdproduto: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Bevel4: TBevel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    Label2: TLabel;
    Label1: TLabel;
    edtcdgrupo: TEdit;
    edtnmgrupo: TEdit;
    Bevel2: TBevel;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    Label3: TLabel;
    Label4: TLabel;
    edtnmcntcusto: TEdit;
    edtcdcntcusto: TEdit;
    Bevel3: TBevel;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    edtnmtpmovto: TEdit;
    edtcdtpmovto: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Bevel5: TBevel;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    spl1: TcxSplitter;
    lsvproduto: TcxListView;
    lsvgrupo: TcxListView;
    lsvcntcusto: TcxListView;
    lsvtpmovto: TcxListView;
    trv: TTreeView;
    edtdti: TcxDateEdit;
    edtdtf: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure edtnmcntcustoChange(Sender: TObject);
    procedure edtnmcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmprodutoChange(Sender: TObject);
    procedure edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure edtnmgrupoChange(Sender: TObject);
    procedure edtnmtpmovtoChange(Sender: TObject);
    procedure edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmtpmovtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdtpmovtoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private    { Private declarations }
    executar_on_change_produto  : boolean;
    executar_on_change_grupo    : boolean;
    executar_on_change_cntcusto : boolean;
    executar_on_change_tpmovto  : boolean;
    procedure set_treeview;
  public    { Public declarations }
  end;

var
  frmConsultaMovto: TfrmConsultaMovto;

implementation

uses uMain,
  uconsultasaidareferenciacruzada,
  uconsultasaidaImprimirMensalProdutoPM,
  uconsultasaidaImprimirMensalProdutoPP,
  uimprimirrelatoriopadrao,
  uDtmMain;

{$R *.dfm}

procedure TfrmConsultaMovto.FormShow(Sender: TObject);
begin
  ntb.ActivePage := 'Default';
  edtdtf.date    := dtbanco;
  edtdti.date    := edtdtf.date;
  trv.Items[0].Expand(true);
end;

procedure TfrmConsultaMovto.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvcntcusto);
end;

procedure TfrmConsultaMovto.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvcntcusto);
end;

procedure TfrmConsultaMovto.ToolButton12Click(Sender: TObject);
begin
  lsvcntcusto.Clear;
end;

procedure TfrmConsultaMovto.ToolButton21Click(Sender: TObject);
begin
  AdicionarListView(lsvproduto);
end;

procedure TfrmConsultaMovto.ToolButton22Click(Sender: TObject);
begin
  ExcluirListView(lsvproduto);
end;

procedure TfrmConsultaMovto.ToolButton24Click(Sender: TObject);
begin
  lsvproduto.Clear;
end;

procedure TfrmConsultaMovto.actGerarExecute(Sender: TObject);
var
  //acabado,
  nopai, consulta :string;
  cdcliente, cdfornecedor, cdtpcliente, cdstordserv, cdetapa, cdcondpagto, cdrota, cduf, cdtpsaida, cdrepresentante, cdproduto, cdgrupo, cdcntcusto, cdtpmovto : TStrings;
  dti, dtf : TDate;
  //boprodutoinversa : Boolean;
  procedure criar_objetos;
  begin
    cdcliente       := tstringlist.create;
    cdfornecedor    := tstringlist.create;
    cdtpcliente     := tstringlist.create;
    cdstordserv     := tstringlist.create;
    cdetapa         := tstringlist.create;
    cdcondpagto     := tstringlist.create;
    cdproduto       := TStringList.create;
    cdgrupo         := TStringList.create;
    cdcntcusto      := TStringList.create;
    cdtpmovto       := TStringList.create;
    cduf            := TStringList.create;
    cdtpsaida       := TStringList.create;
    cdrota          := TStringList.create;
    cdrepresentante := TStringList.create;
  end;
  procedure preencher_lista;
  var
    i : Integer;
  begin
    for I := 0 to lsvproduto.Items.count  - 1 do cdproduto.add (lsvproduto.items [i].Caption);
    for I := 0 to lsvcntcusto.Items.count - 1 do cdcntcusto.add(CodigodoCampo(_cntcusto, lsvcntcusto.items[i].caption, _nunivel));
    for I := 0 to lsvtpmovto.Items.count  - 1 do cdtpmovto.add (lsvtpmovto.items [i].caption);
    for I := 0 to lsvgrupo.Items.count    - 1 do cdgrupo.add   (CodigodoCampo(_grupo, lsvgrupo.items[i].caption, _nunivel));
  end;
  procedure destruir_objetos;
  begin
    cdcliente.Free;
    cdfornecedor.Free;
    cdtpcliente.Free;
    cdstordserv.Free;
    cdetapa.Free;
    cdcondpagto.free;
    cdproduto.free;
    cdgrupo.free;
    cdcntcusto.free;
    cdtpmovto.free;
    cduf.free;
    cdtpsaida.free;
    cdrepresentante.free;
    cdrota.free;
  end;
  function makesqlMovEstoqueAnalitico:string;
  begin
    result := 'where movto.cdempresa='+empresa.cdempresa.tostring+' and movto.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdcntcusto, _itmovto, _cdcntcusto, result);
    sqlmontarlista(cdproduto , _itmovto, _cdproduto , result);
    sqlmontarlista(cdtpmovto , _movto, _cdtpmovto  , result);
  end;
  function makesql28:string;
  begin
    result := 'where movto.cdempresa='+empresa.cdempresa.tostring+' and movto.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdcntcusto, _itmovto, _cdcntcusto, result);
    sqlmontarlista(cdproduto , _itmovto, _cdproduto , result);
    sqlmontarlista(cdtpmovto , _movto, _cdtpmovto  , result);
  end;
begin
  //boprodutoinversa := False;
  criar_objetos;
  nopai    := trv.selected.Parent.text;
  consulta := trv.selected.text;
  try
    preencher_lista;
    dti      := edtdti.Date;
    dtf      := edtdtf.Date;
    dtmmain.LogSiteAction(self.name, consulta);
         if consulta = '28 - Analítico'                            then ImpimirRelatorioPadrao1(28, makesql28)
    else if consulta = '564 - Analítico por Centro Custo'          then ImpimirRelatorioPadrao1(564, makesqlMovEstoqueAnalitico)
    else if consulta = '563 - Analítico Centro Custo por Grupo'    then ImpimirRelatorioPadrao1(563, makesqlMovEstoqueAnalitico)
    else if consulta = '30 - Consumo Centro Custo'                 then ImpimirRelatorioPadrao1(30, makesql28)
    else if consulta = '31 - Consumo Total por Centro Custo'       then ImpimirRelatorioPadrao1(31, makesql28)
    else if consulta = 'Mensal por Produto (Quebra Mês)'           then imprimirconsultasaidamensalprodutoqm         (_MOVTO, cdrepresentante, cdcliente, cdfornecedor, cdproduto, false, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, dti, dtf, maiuscula(_Produto), false)
    else if consulta = 'Diário por Produto (Quebra Dia)'           then imprimirconsultasaidamensalprodutoqm         (_MOVTO, cdrepresentante, cdcliente, cdfornecedor, cdproduto, false, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, dti, dtf, maiuscula(_Produto), true)
    else if consulta = 'Mensal por Produto (Quebra Produto)'       then imprimirconsultasaidamensalprodutoqp         (_movto, cdrepresentante, cdcliente, cdfornecedor, cdproduto, false, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, dti, dtf, maiuscula(_Produto))
    else if consulta = 'Diário por Produto (Quebra Produto)'       then imprimirconsultasaidamensalprodutoqp         (_movto, cdrepresentante, cdcliente, cdfornecedor, cdproduto, false, cdgrupo, cdtpsaida, cduf, cdrota, cdtpcliente, cdstordserv, cdetapa, cdcntcusto, dti, dtf, maiuscula(_Produto), true)
    else if consulta = '566 - Diário'                              then ImpimirRelatorioPadrao1(566, makesqlMovEstoqueAnalitico)
    else if consulta = '566 - Mensal'                              then ImpimirRelatorioPadrao1(566, makesqlMovEstoqueAnalitico)
    else if consulta = '565 - Sintético'                           then ImpimirRelatorioPadrao1(565, makesqlMovEstoqueAnalitico)
    else if consulta = '29 - Sintético por Grupo por Centro Custo' then ImpimirRelatorioPadrao1(29, makesql28)
    else if consulta = 'Quantidade Consumo Mensal (por produto)'   then imprimirconsultasaidamensalreferenciacruzada (cdcondpagto, cdrepresentante, cduf, cdrota, cdtpsaida, cdgrupo, cdproduto, cdcntcusto, dti, dtf,  _produto, 'qtitem', _s, 'movto')
    else if consulta = 'Valor Consumo Mensal (por produto)'        then imprimirconsultasaidamensalreferenciacruzada (cdcondpagto, cdrepresentante, cduf, cdrota, cdtpsaida, cdgrupo, cdproduto, cdcntcusto, dti, dtf, _produto, 'vltotal', _s, 'movto');
  finally
    destruir_objetos;
  end;
end;

procedure TfrmConsultaMovto.trvChange(Sender: TObject; Node: TTreeNode);
var
  consulta : string;
begin
  ntb.ActivePage   := 'Default';
  consulta         := node.text;
  actGerar.Enabled := False;
  if consulta = '28 - Analítico' then
  begin
    actGerar.Enabled       := true;
    tbscntcusto.tabvisible := true;
    tbsproduto.TabVisible  := true;
    tbstpmovto.TabVisible  := true;
    tbsgrupo.TabVisible    := false;
  end
  else if (consulta = 'Mensal por Produto (Quebra Mês)') or
          (consulta = 'Mensal por Produto (Quebra Produto)') or
          (consulta = 'Diário por Produto (Quebra Dia)') or
          (consulta = 'Diário por Produto (Quebra Produto)') then 
  begin
    actGerar.Enabled       := true;
    tbscntcusto.tabvisible := false;
    tbsproduto.TabVisible  := true;
    tbstpmovto.TabVisible  := false;
    tbsgrupo.TabVisible    := false;
  end
  else if consulta = '31 - Consumo Total por Centro Custo' then
  begin
    actGerar.Enabled       := true;
    tbscntcusto.tabvisible := true;
    tbsproduto.TabVisible  := false;
    tbstpmovto.TabVisible  := false;
    tbsgrupo.TabVisible    := false;
  end
  else if consulta = '566 - Diário' then
  begin
    actGerar.Enabled       := true;
    tbscntcusto.tabvisible := true;
    tbsproduto.TabVisible  := true;
    tbstpmovto.TabVisible  := true;
    tbsgrupo.TabVisible    := false;
  end
  else if consulta = '566 - Mensal' then
  begin
    actGerar.Enabled       := true;
    tbscntcusto.tabvisible := true;
    tbsproduto.TabVisible  := true;
    tbstpmovto.TabVisible  := true;
    tbsgrupo.TabVisible    := false;
  end
  else if consulta = '565 - Sintético' then
  begin
    actGerar.Enabled       := true;
    tbscntcusto.tabvisible := true;
    tbsproduto.TabVisible  := true;
    tbstpmovto.TabVisible  := true;
    tbsgrupo.TabVisible    := false;
  end
  else if consulta = '29 - Sintético por Grupo por Centro Custo' then
  begin
    actGerar.Enabled       := true;
    tbscntcusto.tabvisible := true;
    tbsproduto.TabVisible  := false;
    tbstpmovto.TabVisible  := false;
    tbsgrupo.TabVisible    := false;
  end
  else if consulta = '30 - Consumo Centro Custo' then
  begin
    actGerar.Enabled      := true;
    tbsgrupo.TabVisible   := true;
    tbsproduto.TabVisible := false;
    tbstpmovto.TabVisible := false;
  end
  else if (consulta = '564 - Analítico por Centro Custo') or
          (consulta = '563 - Analítico Centro Custo por Grupo') then
  begin
    actGerar.Enabled      := true;
    tbsgrupo.TabVisible   := false;
    tbsproduto.TabVisible := false;
    tbstpmovto.TabVisible := false;
  end
  else if (consulta = 'Valor Consumo Mensal (por produto)') or
          (consulta = 'Quantidade Consumo Mensal (por produto)') then
  begin
    actGerar.Enabled      := true;
    tbsproduto.TabVisible := true;
    tbsgrupo.TabVisible   := true;
    tbstpmovto.TabVisible := false;
  end;
end;

procedure TfrmConsultaMovto.edtnmcntcustoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cntcusto);
end;

procedure TfrmConsultaMovto.edtnmcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcntcusto, executar_on_change_cntcusto, tedit(sender), key);
end;

procedure TfrmConsultaMovto.edtnmprodutoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_produto);
end;

procedure TfrmConsultaMovto.edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvproduto, executar_on_change_produto, tedit(sender), key);
end;

procedure TfrmConsultaMovto.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvgrupo);
end;

procedure TfrmConsultaMovto.ToolButton5Click(Sender: TObject);
begin
  AdicionarListView(lsvtpmovto);
end;

procedure TfrmConsultaMovto.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvgrupo);
end;

procedure TfrmConsultaMovto.ToolButton6Click(Sender: TObject);
begin
  ExcluirListView(lsvtpmovto);
end;

procedure TfrmConsultaMovto.ToolButton4Click(Sender: TObject);
begin
  lsvgrupo.Clear;
end;

procedure TfrmConsultaMovto.ToolButton8Click(Sender: TObject);
begin
  lsvtpmovto.Clear;
end;

procedure TfrmConsultaMovto.edtnmgrupoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_grupo);
end;

procedure TfrmConsultaMovto.edtnmtpmovtoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpmovto);
end;

procedure TfrmConsultaMovto.edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvGrupo, executar_on_change_Grupo, tedit(sender), key);
end;

procedure TfrmConsultaMovto.edtnmtpmovtoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpmovto, executar_on_change_tpmovto, tedit(sender), key);
end;

procedure TfrmConsultaMovto.edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvproduto, TEdit(sender), key);
end;

procedure TfrmConsultaMovto.edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvgrupo, TEdit(sender), key);
end;

procedure TfrmConsultaMovto.edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcntcusto, TEdit(sender), key);
end;

procedure TfrmConsultaMovto.edtcdtpmovtoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpmovto, TEdit(sender), key);
end;

procedure TfrmConsultaMovto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsultaMovto.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmConsultaMovto.set_treeview;
var
  no1 : TTreeNode;
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
  trv.Items.AddChild(no1, '28 - Analítico');
  trv.Items.AddChild(no1, '564 - Analítico por Centro Custo');
  trv.Items.AddChild(no1, '563 - Analítico Centro Custo por Grupo');
  trv.Items.AddChild(no1, '30 - Consumo Centro Custo');
  trv.Items.AddChild(no1, '31 - Consumo Total por Centro Custo');
  trv.Items.AddChild(no1, '566 - Diário');
  trv.Items.AddChild(no1, 'Diário por Produto (Quebra Dia)');
  trv.Items.AddChild(no1, 'Diário por Produto (Quebra Produto)');
  trv.Items.AddChild(no1, '566 - Mensal');
  trv.Items.AddChild(no1, 'Mensal por Produto (Quebra Mês)');
  trv.Items.AddChild(no1, 'Mensal por Produto (Quebra Produto)');
  trv.Items.AddChild(no1, '565 - Sintético');
  trv.Items.AddChild(no1, '29 - Sintético por Grupo por Centro Custo');
  trv.Items.AddChild(no1, 'Valor Consumo Mensal (por produto)');
  trv.Items.AddChild(no1, 'Quantidade Consumo Mensal (por produto)');
end;

procedure TfrmConsultaMovto.FormCreate(Sender: TObject);
begin
  set_treeview;
end;

end.
