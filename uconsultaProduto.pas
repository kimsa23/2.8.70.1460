
unit uconsultaProduto;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, ComCtrls, StdCtrls, Mask, Buttons, Controls, ExtCtrls,
  dialogs, ToolWin, sysutils, windows,
  sqlexpr,
  uAdicionarListView, udatahora, unumero, uregistro, umontarsql,
  uconstantes, ustrings, usystem,
  classerecalculocustomedio, classeusuario, classeretornasql, classeform,
  classeetiqueta, classeempresa, classeproduto, classelivrofiscal,
  cxPC, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxGraphics, cxCheckBox, dxBar, cxClasses, cxSplitter, cxLookAndFeels,
  cxLookAndFeelPainters, cxListView, cxGroupBox, cxRadioGroup, cxPCdxBarPopupMenu,
  dxCore, cxDateUtils, dxBarBuiltInMenu,
  ClasseProdutoFGerarBaixaEstoqueSubProduto;

type
  TfrmConsultaProduto = class(TForm)
    pnl: TPanel;
    ActionList1: TActionList;
    actGerar: TAction;
    ntb: TNotebook;
    Panel2: TPanel;
    actsalvar: TAction;
    lblinicial: TLabel;
    lblfinal: TLabel;
    mem: TRichEdit;
    Bevel2: TBevel;
    lblcodigo: TLabel;
    lblsituacao: TLabel;
    lbldtsaida: TLabel;
    actfechar: TAction;
    edtdtinicial: TcxDateEdit;
    edtdtfinal: TcxDateEdit;
    cbxdtsaida: TcxComboBox;
    cbxcodigo: TcxComboBox;
    cbxsituacao: TcxComboBox;
    ckbtrigger: TcxCheckBox;
    ckbmesames: TcxCheckBox;
    ckbbonflivro: TcxCheckBox;
    ckbbogrupo: TcxCheckBox;
    ckbbosuprimirzerado: TcxCheckBox;
    ckbboalternativo: TcxCheckBox;
    ckbbofichanegativa: TcxCheckBox;
    Panel1: TPanel;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Bevel3: TBevel;
    edtnmproduto: TEdit;
    edtcdproduto: TEdit;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    tbsgrupo: TcxTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Bevel4: TBevel;
    edtnmgrupo: TEdit;
    edtcdgrupo: TEdit;
    ToolBar7: TToolBar;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    tbsfornecedor: TcxTabSheet;
    lblcdfornecedor: TLabel;
    lblnmcliente: TLabel;
    Bevel5: TBevel;
    edtnucnpjcpf: TMaskEdit;
    edtnmfornecedor: TEdit;
    edtcdfornecedor: TEdit;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    spl1: TcxSplitter;
    lsvproduto: TcxListView;
    lsvgrupo: TcxListView;
    lsvfornecedor: TcxListView;
    trv: TTreeView;
    tbscliente: TcxTabSheet;
    lsvcliente: TcxListView;
    edtcdcliente: TEdit;
    edtnmcliente: TEdit;
    Label7: TLabel;
    lblcdcliente: TLabel;
    Bevel1: TBevel;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    ToolButton11: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure actsalvarExecute(Sender: TObject);
    procedure edtnmprodutoChange(Sender: TObject);
    procedure edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmgrupoChange(Sender: TObject);
    procedure edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmfornecedorChange(Sender: TObject);
    procedure edtnmfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ntbPageChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
  private    { Private declarations }
    produto : TProduto;
    dti, dtf : TDate;
    linha, cdfornecedor, cdcliente, cdgrupo, cdproduto : TStrings;
    tpdata, consulta, tpcodigo : string;
    executar_on_change_produto    : boolean;
    executar_on_change_grupo      : boolean;
    executar_on_change_Fornecedor : boolean;
    procedure set_treeview;
    procedure preencher_lista;
    procedure funcao;
    function makesql_apuracao: string;
    function makesql_etiqueta: string;
    function makesql_historicoestoqueCliente: string;
    function makesql_historicoestoquefornecedor: string;
    function makesql_inventario_estoque: string;
    function makesql_inventario_estoque_2: string;
    function makesql_lista_produto_critico: string;
    function makesql_produto_grupo: string;
    function makesql22: string;
    function makesql637: string;
    function makesql65: string;
    function makesql66: string;
    function makesql662: string;
    function makesql67: string;
    function makesql68: string;
    function makesqlwhere549: string;
  public    { Public declarations }
  end;

var
  frmConsultaProduto: TfrmConsultaProduto;
  tot:real;
  ativar:boolean;

implementation

uses uLocalizar,
  ulocalizarfornecedor,
  uLocalizarProduto,
  uMain,
  uconsultaProdutoImprimirFichaMovimentacao,
  uconsultaProdutoImprimirMovimentoAnalitico,
  uconsultaprodutoimprimirfichamovimentacaoterceiro,
  uconsultaprodutoestoquediario,
  uimprimirrelatoriopadrao,
  uDtmMain,
  udlgetiqueta,
  classeetapa,
  ClasseGerarCustoMedioLivroProducao,
  ClasseImportarInventario,
  classerecalculoestoqueterceiro;

{$R *.dfm}

procedure TfrmConsultaProduto.FormShow(Sender: TObject);
begin
  produto           := tproduto.create;
  edtdtfinal.date   := dtbanco;
  edtdtinicial.date := edtdtfinal.date;
  trv.Items[0].Expand(true);
end;

procedure TfrmConsultaProduto.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvproduto);
end;

procedure TfrmConsultaProduto.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvproduto);
end;

procedure TfrmConsultaProduto.ToolButton12Click(Sender: TObject);
begin
  lsvproduto.Clear;
end;

procedure TfrmConsultaProduto.ToolButton21Click(Sender: TObject);
begin
  AdicionarListView(lsvgrupo);
end;

procedure TfrmConsultaProduto.ToolButton22Click(Sender: TObject);
begin
  ExcluirListView(lsvgrupo);
end;

procedure TfrmConsultaProduto.ToolButton24Click(Sender: TObject);
begin
  lsvGrupo.Clear;
end;

procedure TfrmConsultaProduto.preencher_lista;
var
  i : Integer;
begin
  cdproduto.clear;
  cdfornecedor.clear;
  cdcliente.clear;
  cdgrupo.clear;
  for I := 0 to lsvproduto.Items.count - 1 do
  begin
    cdproduto.add   (lsvproduto.items[i].caption);
  end;
  for I := 0 to lsvfornecedor.Items.count - 1 do
  begin
    cdfornecedor.add(lsvfornecedor.items[i].caption);
  end;
  for I := 0 to lsvcliente.Items.count - 1 do
  begin
    cdcliente.add   (lsvcliente.items[i].caption);
  end;
  for I := 0 to lsvgrupo.Items.count - 1 do
  begin
    cdgrupo.add(CodigodoCampo(_grupo , lsvgrupo.items[i].caption , _nunivel));
  end;
end;

procedure TfrmConsultaProduto.funcao;
var
  livrofiscal : TLivroFiscal;
  produtolista : tprodutolist;
begin
  {
  if consulta = 'Excluir Produto Repetido' then
  begin
    tproduto.ExcluirRepetido
  end
  else
  }
  if consulta = 'Atualizar Código Cest' then
  begin
    produtolista := tprodutolist.Create;
    try
      produtolista.AtualizarCest;
    finally
      freeandnil(produtolista);
    end;
  end
  {
  else if consulta = 'Corrigir Quantidade 2' then
  begin
    produtolista := tprodutolist.Create;
    try
      produtolista.CorrigirQTitem2;
    finally
      freeandnil(produtolista);
    end;
  end
  else if consulta = 'Ajustar Estoque Lote' then
  begin
    tproduto.AjustarEstoqueLote
  end
  else if consulta = 'Juntar Lote Repetido' then
  begin
    produto.juntarLoteRepetido
  end
  else if consulta = 'Ajustar para maiúsculo número do IMEI' then
  begin
    produto.UppercaseNUIMEI
  end
  }
  else if consulta = 'Importar Inventário de Estoque' then
  begin
    if Empresa.material.produto.dtestoque = 0 then
    begin
      MessageDlg('Para importar o inventário de estoque a data de estoque deve estar preenchida no Cadastro=>Empresa.'#13'Favor alterar preencher a data para continuar.', mtInformation, [mbok], 0);
      Abort;
    end;
    if dti <> empresa.material.produto.dtestoque then
    begin
      MessageDlg('Não pode importar inventário de estoque com a data diferente a data do estoque ('+GetDtAbrev(empresa.material.produto.dtestoque)+') no Cadastro=>Empresa.'#13'Favor alterar a data.', mtInformation, [mbok], 0);
      Abort;
    end;
    TImportarInventario.Processar(dti);
  end
  else if consulta = 'Gerar baixa estoque de subproduto' then
  begin
    if (dti <= empresa.material.produto.dtrecalculosubproduto) or (empresa.material.produto.dtrecalculosubproduto = 0) then
    begin
      messagedlg('Data de início de recálculo deve ser maior do que a data de recálculo de subproduto em Empresa=>Opções=>Material=>Produto', mtinformation, [mbok], 0);
      abort;
    end;
    TGerarBaixaEstoqueSubProduto.Gerar(cdproduto, cdgrupo, dti, dtf);
  end
  else if consulta = 'Gerar Histórico de Custo Médio Livro Produção' then
  begin
    TCustoMedioLivroProducao.Processar(cdproduto, cdgrupo, dti, dtf)
  end
  else if consulta = 'Recalcular Estoque Terceiro (fornecedor)' then
  begin
    TRecalculoEstoqueTerceiro.Processar(linha, _fornecedor, cdfornecedor[0], cdproduto[0], dti, dtf);
  end
  else if consulta = 'Recalcular Estoque Terceiro (cliente)' then
  begin
    trecalculoestoqueterceiro.Processar(linha, _cliente   , cdcliente[0]   , cdproduto[0], dti, dtf);
  end
  else if consulta = 'Recalcular Custo Médio' then
  begin
    if Empresa.livro.borecustomedio then // verificar a data
    begin
      livrofiscal := tlivrofiscal.create;
      try
        if Empresa.livro.bolivrofiscal and (formatdatetime(_yyyymmdd, livrofiscal.UltimoDia) >= formatdatetime(_yyyymmdd, dti)) then
        begin
          messagedlg('Não pode rodar o recálculo do custo médio com data retroativa a '+formatdatetime(_dd_mm_yyyy, livrofiscal.ultimodia)+'.'#13'Altere a data para poder continuar.', mtinformation, [mbok], 0);
          exit;
        end;
      finally
        freeandnil(livrofiscal);
      end;
    end;
    if (Empresa.material.produto.dtestoque > 0) and (dti <= empresa.material.produto.dtestoque) then
    begin
      MessageDlg('O recálculo do custo medio deve ser feito com data posterior a data do estoque ('+GetDtAbrev(empresa.material.produto.dtestoque)+') no Cadastro=>Empresa.'#13'Favor alterar a data.', mtInformation, [mbok], 0);
      Abort;
    end;
    produto.recalculocustomedio.Executar(linha, cdproduto, cdgrupo, dti, dtf, tpdata, ckbtrigger.Checked, ckbmesames.Checked, ckbbonflivro.Checked);
    mem.Lines.text   := linha.text;
    ntb.ActivePage   := _texto;
  end
end;

function TfrmConsultaProduto.makesql_historicoestoquefornecedor:string;
begin
  result := 'where p.cdempresa='+empresa.cdempresa.tostring+' and h.dthistorico between '+GetDtBanco(dti)+' and '+getdtbanco(dtf);
  sqlmontarlista(cdproduto   , _p, _cdproduto   , result);
  sqlmontarlista(cdfornecedor, _f, _cdfornecedor, result);
end;

function TfrmConsultaProduto.makesql_historicoestoqueCliente:string;
begin
  result := 'where p.cdempresa='+empresa.cdempresa.tostring+' and h.dthistorico between '+GetDtBanco(dti)+' and '+getdtbanco(dtf);
  sqlmontarlista(cdproduto, _p, _cdproduto, result);
  sqlmontarlista(cdcliente, _c, _cdcliente, result);
end;

function TfrmConsultaProduto.makesql_produto_grupo:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' ';
  sqlmontarlista(cdproduto, _produto, _cdproduto, result);
  sqlmontarlista(cdgrupo  , _produto, _cdgrupo  , result);
end;

function TfrmConsultaProduto.makesql22:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' ';
  InsercaoDataSQl(edtdtinicial, edtdtfinal, result, _itlote+'.'+_dtvalidade);
  sqlmontarlista (cdproduto, _produto, _cdproduto, result);
  sqlmontarlista (cdgrupo  , _produto, _cdgrupo  , result);
end;

function TfrmConsultaProduto.makesql67:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' and movto.dtemissao between '+getdtbanco(edtdtinicial.Date)+' and '+getdtbanco(edtdtfinal.Date)+' ';
  sqlmontarlista (cdproduto, _produto, _cdproduto, result);
  sqlmontarlista (cdgrupo  , _produto, _cdgrupo  , result);
end;

function TfrmConsultaProduto.makesql_lista_produto_critico:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' and produto.bocritico=''S'' ';
  sqlmontarlista(cdproduto, _produto, _cdproduto, result);
  sqlmontarlista(cdgrupo  , _produto, _cdgrupo  , result);
end;

function TfrmConsultaProduto.makesql65:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' and tpmovto.tpmovto = ''S'' '+
            'and movto.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
  sqlmontarlista(cdgrupo   , _produto, _cdgrupo, result);
  sqlmontarlista(cdproduto , _produto, _cdproduto, result);
end;

function TfrmConsultaProduto.makesql68:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' and tpmovto.tpmovto=''S'' and movto.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
  sqlmontarlista(cdgrupo  , _produto, _cdgrupo , result);
  sqlmontarlista(cdproduto, _produto, _cdproduto, result);
end;

function TfrmConsultaProduto.makesqlwhere549:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' ';
  sqlmontarlista(cdgrupo, _produto, _cdgrupo, result);
  sqlmontarlista(cdproduto, _produto, _cdproduto, result);
  result := result+'#'+
            tpdata+' between '+GetDtBanco(edtdtinicial.Date)+' and '+GetDtBanco(edtdtfinal.Date)+'#'+
            GetDtBanco(edtdtinicial.Date)+' and '+GetDtBanco(edtdtfinal.Date)+'#'+
            GetDtBanco(edtdtinicial.Date-1)+'#';

end;

function TfrmConsultaProduto.makesql66:string;
begin
  result := 'where tipo.boestoque=''S'' '+
            'and documento.cdempresa='+empresa.cdempresa.tostring+' '+
            'and documento.dtsaida between '+getdtbanco(edtdtinicial.Date)+' and '+getdtbanco(edtdtfinal.Date)+' ';
  sqlmontarlista(cdfornecedor, _documento, _cdfornecedor, result);
  sqlmontarlista(cdgrupo     , _produto  , _cdgrupo     , result);
  sqlmontarlista(cdproduto   , _produto  , _cdproduto   , result);
end;

function TfrmConsultaProduto.makesql662:string;
begin
  result := 'where documento.tpentsai=''E'' '+
            'and tipo.boestoque=''S'' and documento.cdempresa='+empresa.cdempresa.tostring+' '+
            'and documento.dtemissao between '+getdtbanco(edtdtinicial.Date)+' and '+getdtbanco(edtdtfinal.Date)+' ';
  sqlmontarlista(cdfornecedor, _documento, _cdfornecedor, result);
  sqlmontarlista(cdgrupo     , _produto  , _cdgrupo     , result);
  sqlmontarlista(cdproduto   , _produto  , _cdproduto   , result);
end;

function TfrmConsultaProduto.makesql_inventario_estoque:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' and tpproduto.boestoque=''S'' ';
  sqlmontarlista(cdgrupo  , _produto, _cdgrupo  , result);
  sqlmontarlista(cdproduto, _produto, _cdproduto, result);
  result := result + #13+cbxsituacao.Text;
end;

function TfrmConsultaProduto.makesql_etiqueta:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' ';
  sqlmontarlista(cdproduto, _produto, _cdproduto, result);
  sqlmontarlista(cdgrupo  , _produto, _cdgrupo  , result);
end;

function TfrmConsultaProduto.makesql_apuracao:string;
begin
  result := 'where produto.cdempresa='+empresa.cdempresa.tostring+' and tpproduto.boestoque=''S'' ';
  sqlmontarlista(cdgrupo  , _produto, _cdgrupo  , result);
  sqlmontarlista(cdproduto, _produto, _cdproduto, result);
end;

function TfrmConsultaProduto.makesql_inventario_estoque_2:string;
begin
  result := FormatDateTime(_mm_dd_yyyy, edtdtinicial.Date);
end;

function TfrmConsultaProduto.makesql637:string;
begin
  Result := 'where grupo.cdempresa='+empresa.cdempresa.tostring+' ';
  InsercaoDataSQl    (edtdtinicial, edtdtfinal, result, _documento +'.' + _dtsaida);
  sqlmontarlistagrupo(cdgrupo, _grupo, _cdgrupo, Result);
end;

procedure TfrmConsultaProduto.actGerarExecute(Sender: TObject);
var
  nopai, noavo, nobisavo :string;
begin
  try
    preencher_lista;
    nopai    := trv.selected.parent.text;
    consulta := trv.selected.text;
    dti      := edtdtinicial.Date;
    dtf      := edtdtfinal.Date;
    dtmmain.LogSiteAction(self.name, consulta);
    if cbxdtsaida.Text = 'Saída' then
    begin
      tpdata := _dtsaida;
    end
    else if cbxdtsaida.Text = Maiuscula(__emissao) then
    begin
      tpdata := _dtemissao;
    end
    else
    begin
      tpdata := _dtreferencia;
    end;

    if (consulta = maiuscula(_Quantidade)) or (consulta = maiuscula(_Valor)) then
    begin
      noavo := trv.Selected.Parent.Parent.Text;
      if (noavo = maiuscula(_Produto)) or (noavo = maiuscula(_Grupo))  then
      begin
        nobisavo := trv.Selected.Parent.Parent.Parent.Text;
      end;
    end;
    //
    TQForm.mudarcontroles(self, false);
         if consulta = '465 - Etiqueta'                                                then imprimir_etiqueta(465, makesql_etiqueta)
    else if consulta = '68 - Consumo'                                                  then ImpimirRelatorioPadrao1(68, makesql68)
    else if consulta = '637 - Balancete de Compra e Venda por Grupo de Produto'        then ImpimirRelatorioPadrao1(637, makesql637)
    else if consulta = '638 - Balancete Mensal de Compra e Venda por Grupo de Produto' then ImpimirRelatorioPadrao1(638, makesql637)
    else if consulta = '65 - Consumo Médio Mensal'                                     then ImpimirRelatorioPadrao1(65, makesql65)
    else if consulta = 'Estoque Diário'                                                then imprimirconsultaprodutoEstoqueDiario            (cdproduto, cdgrupo, dti, dtf, tpdata, cbxcodigo.text, ckbbogrupo.checked, ckbbonflivro.Checked, ckbbosuprimirzerado.Checked, ckbbofichanegativa.checked)
    else if consulta = 'Ficha de Movimentação'                                         then imprimirconsultaprodutofichamovimentacao        (cdproduto, cdgrupo, dti, dtf, tpdata, cbxcodigo.text, ckbbogrupo.checked, ckbbonflivro.Checked, ckbbosuprimirzerado.Checked, ckbbofichanegativa.checked)
    else if consulta = 'Ficha de Movimentação - Estoque Terceiro (fornecedor)'         then imprimirconsultaprodutofichamovimentacaoterceiro(_fornecedor, cdfornecedor, cdproduto, dti, dtf)
    else if consulta = 'Ficha de Movimentação - Estoque Terceiro (cliente)'            then imprimirconsultaprodutofichamovimentacaoterceiro(_cliente   , cdcliente, cdproduto, dti, dtf)
    else if consulta = '354 - Histórico Estoque Fornecedor'                            then ImpimirRelatorioPadrao1(354, makesql_historicoestoquefornecedor)
    else if consulta = '354 - Histórico Estoque Cliente'                               then ImpimirRelatorioPadrao1(354, makesql_historicoestoqueCliente)
    else if consulta = '575 - Inventário de Estoque'                                   then ImpimirRelatorioPadrao1(575, makesql_inventario_estoque+#13+_5+_7+_5, makesql_inventario_estoque_2)
    else if consulta = '657 - Apuração de Estoque'                                     then ImpimirRelatorioPadrao1(657, makesql_apuracao)
    else if consulta = '576 - Inventário de Estoque sem quebra de grupo'               then ImpimirRelatorioPadrao1(576, makesql_inventario_estoque+#13+_5+_7+_6, makesql_inventario_estoque_2)
    else if consulta = '22 - Lista por Data de Validade'                               then ImpimirRelatorioPadrao1(22, makesql22)
    else if consulta = '453 - Lista Preço Venda'                                       then ImpimirRelatorioPadrao1(453, makesql_produto_grupo)
    else if consulta = '38 - Lista Número de Série'                                    then ImpimirRelatorioPadrao1(38, makesql_produto_grupo)
    else if consulta = '39 - Lista Número de Série - Estoque'                          then ImpimirRelatorioPadrao1(39, makesql_produto_grupo)
    else if consulta = '40 - Lista Número de Série Repetido'                           then ImpimirRelatorioPadrao1(40, makesql_produto_grupo)
    else if consulta = '41 - Lista Compra de Lote não identificado'                    then ImpimirRelatorioPadrao1(41, makesql_produto_grupo)
    else if consulta = '578 - Lista Preço Venda/Atacado/Especial'                      then ImpimirRelatorioPadrao1(578, makesql_produto_grupo)
    else if consulta = '501 - Lista Produto Crítico'                                   then ImpimirRelatorioPadrao1(501, makesql_lista_produto_critico)
    else if consulta = '67 - Movimentações de Saída'                                   then ImpimirRelatorioPadrao1(67, makesql67)
    else if consulta = '549 - Movimentação por Totais de Produtos'                     then ImpimirRelatorioPadrao1(549, makesqlwhere549)
    else if consulta = 'Movimento Analítico de Entrada'                                then imprimirconsultaprodutomovimentoanalitico       (cdproduto, cdgrupo, cdfornecedor, dti, dtf, _E, tpdata, cbxcodigo.text, ckbbogrupo.checked)
    else if consulta = 'Movimento Analítico de Saída'                                  then imprimirconsultaprodutomovimentoanalitico       (cdproduto, cdgrupo, cdfornecedor, dti, dtf, _S, tpdata, cbxcodigo.text, ckbbogrupo.checked)
    else if consulta = '66 - Movimento Analítico de Entrada - NF'                      then ImpimirRelatorioPadrao1(66, makesql66, makesql662);
    if mem.Lines.Count > 0 then
    begin
      ntb.activepage := _texto;
      mem.SelStart   := 1;
    end;
    if nopai = 'Função' then
    begin
      funcao;
    end;
  finally
    TQForm.mudarcontroles(self, true);
  end;
end;

procedure TfrmConsultaProduto.trvChange(Sender: TObject; Node: TTreeNode);
var
  consulta : string;
begin
  ntb.ActivePage   := 'Default';
  consulta         := node.text;
  actGerar.Enabled := False;
  if (consulta = 'Recalcular Estoque Terceiro (fornecedor)') or
          (consulta = 'Histórico Estoque Fornecedor') or
          (consulta = 'Ficha de Movimentação - Estoque Terceiro (fornecedor)') then
  begin
    actGerar.Enabled         := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := false;
    tbsfornecedor.TabVisible := true;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible  := true;
    lblinicial.Visible    := true;
    lblinicial.Caption    := Maiuscula(_Data);

    edtdtfinal.Visible  := true;
    lblfinal.Visible    := true;

    lblcodigo.Visible     := false;
    cbxcodigo.Visible     := false;

    lblsituacao.Visible   := false;
    cbxsituacao.Visible   := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := false;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if (consulta = '637 - Balancete de Compra e Venda por Grupo de Produto') or
          (consulta = '638 - Balancete Mensal de Compra e Venda por Grupo de Produto') then
  begin
    actGerar.Enabled         := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := false;
    tbsgrupo.TabVisible      := true;
    tbscliente.TabVisible    := false;
    tbsfornecedor.TabVisible := false;

    edtdtinicial.Visible  := true;
    lblinicial.Visible    := true;
    lblinicial.Caption    := Maiuscula(_Data);

    edtdtfinal.Visible  := true;
    lblfinal.Visible    := true;

    lblcodigo.Visible     := false;
    cbxcodigo.Visible     := false;

    lblsituacao.Visible   := false;
    cbxsituacao.Visible   := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := false;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = '354 - Histórico Estoque Fornecedor' then
  begin
    actGerar.Enabled         := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := false;
    tbscliente.TabVisible    := false;
    tbsfornecedor.TabVisible := true;

    edtdtinicial.Visible  := true;
    lblinicial.Visible    := true;
    lblinicial.Caption    := Maiuscula(_Data);

    edtdtfinal.Visible  := true;
    lblfinal.Visible    := true;

    lblcodigo.Visible     := false;
    cbxcodigo.Visible     := false;

    lblsituacao.Visible   := false;
    cbxsituacao.Visible   := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := false;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if (consulta = 'Recalcular Estoque Terceiro (cliente)') or
          (consulta = '354 - Histórico Estoque Cliente') or
          (consulta = 'Ficha de Movimentação - Estoque Terceiro (cliente)') then
  begin
    actGerar.Enabled         := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := false;
    tbscliente.TabVisible    := true;
    tbsfornecedor.TabVisible := False;

    edtdtinicial.Visible  := true;
    lblinicial.Visible    := true;
    lblinicial.Caption    := Maiuscula(_Data);

    edtdtfinal.Visible  := true;
    lblfinal.Visible    := true;

    lblcodigo.Visible     := false;
    cbxcodigo.Visible     := false;

    lblsituacao.Visible   := false;
    cbxsituacao.Visible   := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := false;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = '22 - Lista por Data de Validade' then
  begin
    actGerar.Enabled         := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;
    edtdtinicial.Visible     := true;
    lblinicial.Visible       := true;
    lblinicial.Caption       := Maiuscula(_Data);

    edtdtfinal.Visible  := true;
    lblfinal.Visible    := true;

    lblcodigo.Visible     := false;
    cbxcodigo.Visible     := false;

    lblsituacao.Visible   := false;
    cbxsituacao.Visible   := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := false;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if (consulta = '453 - Lista Preço Venda') or
          (consulta = '38 - Lista Número de Série') or
          (consulta = '39 - Lista Número de Série - Estoque') or
          (consulta = '40 - Lista Número de Série Repetido') or
          (consulta = '41 - Lista Compra de Lote não identificado') or 
          (consulta = '578 - Lista Preço Venda/Atacado/Especial') or
          (consulta = '501 - Lista Produto Crítico') then
  begin
    actGerar.Enabled := true;
    pgc.Visible           := true;
    tbsproduto.TabVisible := true;
    tbsgrupo.TabVisible   := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible  := false;
    lblinicial.Visible    := false;
    lblinicial.Caption    := Maiuscula(_Data);

    edtdtfinal.Visible  := false;
    lblfinal.Visible    := false;

    lblcodigo.Visible     := false;
    cbxcodigo.Visible     := false;

    lblsituacao.Visible   := false;
    cbxsituacao.Visible   := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := false;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = '657 - Apuração de Estoque' then
  begin
    actGerar.Enabled         := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible     := false;
    lblinicial.Visible       := false;

    edtdtfinal.Visible  := false;
    lblfinal.Visible    := false;

    lblcodigo.Visible     := true;
    cbxcodigo.Visible     := true;

    lblsituacao.Visible   := false;
    cbxsituacao.Visible   := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := true;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if (consulta = '575 - Inventário de Estoque') or (consulta = '576 - Inventário de Estoque sem quebra de grupo') then
  begin
    actGerar.Enabled         := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible     := true;
    lblinicial.Visible       := true;
    lblinicial.Caption       := Maiuscula(_Data);

    edtdtfinal.Visible  := false;
    lblfinal.Visible    := false;

    lblcodigo.Visible     := true;
    cbxcodigo.Visible     := true;

    lblsituacao.Visible   := true;
    cbxsituacao.Visible   := true;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := true;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := true;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = '65 - Consumo Médio Mensal' then
  begin
    actGerar.Enabled := true;
    pgc.Visible        := true;
    tbsproduto.Visible := true;
    tbsgrupo.Visible   := true;
    tbsfornecedor.Visible := false;
    tbscliente.TabVisible := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption  := Maiuscula(_Data);

    edtdtfinal.Visible   := true;
    lblfinal.Visible     := true;

    lblcodigo.Visible   := true;
    cbxcodigo.Visible   := true;

    lblsituacao.Visible := false;
    cbxsituacao.Visible := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := true;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = '68 - Consumo' then
  begin
    actGerar.Enabled := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := Maiuscula(_Data);

    edtdtfinal.Visible  := true;
    lblfinal.Visible    := true;

    lblcodigo.Visible   := true;
    cbxcodigo.Visible   := true;

    lblsituacao.Visible := false;
    cbxsituacao.Visible := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := true;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if (consulta = 'Movimento Analítico de Entrada')  or
          (consulta = 'Movimento Analítico de Saída') then
  begin
    actGerar.Enabled := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := true;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible   := true;
    lblfinal.Visible     := true;

    lblcodigo.Visible   := true;
    cbxcodigo.Visible   := true;

    lblsituacao.Visible := false;
    cbxsituacao.Visible := false;

    lbldtsaida.visible   := true;
    cbxdtsaida.visible   := true;

    ckbbogrupo.Visible    := true;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = '549 - Movimentação por Totais de Produtos' then
  begin
    actGerar.Enabled := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible   := true;
    lblfinal.Visible     := true;

    lblcodigo.Visible    := true;
    cbxcodigo.Visible    := true;

    lblsituacao.Visible  := false;
    cbxsituacao.Visible  := false;

    lbldtsaida.visible   := true;
    cbxdtsaida.visible   := true;

    ckbbogrupo.Visible    := true;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = '67 - Movimentações de Saída' then
  begin
    actGerar.Enabled := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible   := true;
    lblfinal.Visible     := true;

    lblcodigo.Visible    := true;
    cbxcodigo.Visible    := true;

    lblsituacao.Visible  := false;
    cbxsituacao.Visible  := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := true;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = '66 - Movimento Analítico de Entrada - NF' then
  begin
    actGerar.Enabled := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := true;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible   := true;
    lblfinal.Visible     := true;

    lblcodigo.Visible   := false;
    cbxcodigo.Visible   := false;

    lblsituacao.Visible := false;
    cbxsituacao.Visible := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible  := false;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if (consulta = 'Quantidade (dia)') or (consulta = 'Quantidade (mês)') or (consulta = 'Quantidade (ano)') or
          (consulta = 'Valor (dia)') or (consulta = 'Valor (mês)') or (consulta = 'Valor (ano)') then
  begin
    actGerar.Enabled := true;
    pgc.Visible           := false;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible   := true;
    lblfinal.Visible     := true;

    lblcodigo.Visible    := false;
    cbxcodigo.Visible    := false;

    lblsituacao.Visible  := false;
    cbxsituacao.Visible  := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible  := false;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if (consulta = maiuscula(_Quantidade)) or (consulta = maiuscula(_Valor))then
  begin
    actGerar.Enabled := true;
    pgc.Visible           := false;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible   := true;
    lblfinal.Visible     := true;

    lblcodigo.Visible    := false;
    cbxcodigo.Visible    := false;

    lblsituacao.Visible  := false;
    cbxsituacao.Visible  := false;

    lbldtsaida.visible   := false;
    cbxdtsaida.visible   := false;

    ckbbogrupo.Visible    := false;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbbonflivro.Visible  := true;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if (consulta = 'Ficha de Movimentação') or (consulta = 'Estoque Diário') then
  begin
    actGerar.Enabled := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible   := true;
    lblfinal.Visible     := true;

    cbxcodigo.Visible    := true;
    lblcodigo.Visible    := true;

    lblsituacao.Visible := false;
    cbxsituacao.Visible := false;

    lbldtsaida.visible   := true;
    cbxdtsaida.visible   := true;

    ckbbogrupo.Visible          := true;
    ckbbonflivro.Visible        := true;
    ckbbosuprimirzerado.Visible := true;
    ckbbofichanegativa.Visible  := true;
    ckbtrigger.Visible    := false;
    ckbmesames.Visible    := false;
    ckbboalternativo.Visible := false;
  end
  else if (consulta = 'Recalcular Custo Médio') then
  begin
    actGerar.Enabled := true;
    pgc.Visible := true;
    tbsproduto.TabVisible := true;
    tbsgrupo.TabVisible   := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible   := true;
    lblfinal.Visible     := true;

    cbxcodigo.Visible    := false;
    lblcodigo.Visible    := false;

    lblsituacao.Visible := false;
    cbxsituacao.Visible := false;

    lbldtsaida.visible   := true;
    cbxdtsaida.visible   := true;

    ckbtrigger.Visible   := true;
    ckbmesames.Visible   := true;
    ckbbonflivro.Visible := true;
    ckbbogrupo.Visible  := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = '465 - Etiqueta' then
  begin
    actGerar.Enabled := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    lblinicial.Visible := false;
    edtdtinicial.Visible := false;

    lblfinal.Visible   := false;
    edtdtfinal.Visible := false;

    cbxcodigo.Visible    := false;
    lblcodigo.Visible    := false;

    lblsituacao.Visible := false;
    cbxsituacao.Visible := false;

    cbxdtsaida.Visible := false;
    lbldtsaida.Visible := false;

    ckbtrigger.Visible       := false;
    ckbmesames.Visible       := false;
    ckbbonflivro.Visible     := false;
    ckbbogrupo.Visible       := false;
    ckbboalternativo.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = 'Importar Inventário de Estoque' then
  begin
    actGerar.Enabled := true;
    pgc.Visible := false;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;

    edtdtfinal.Visible   := false;
    lblfinal.Visible     := false;

    lblcodigo.Visible    := false;
    cbxcodigo.Visible    := false;

    lblsituacao.Visible  := false;
    cbxsituacao.Visible  := false;

    lbldtsaida.Visible   := false;
    cbxdtsaida.Visible   := false;

    ckbbogrupo.Visible   := false;
    ckbtrigger.Visible   := false;
    ckbmesames.Visible   := false;
    ckbbonflivro.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbboalternativo.Visible    := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if //(consulta = 'Corrigir Código Ítem') or
       //(consulta = 'Excluir Produto Repetido') or
       (consulta = 'Atualizar Código Cest')
       //or
       //(consulta = 'Corrigir Quantidade 2') or
       //(consulta = 'Juntar Lote Repetido') or
       //(consulta = 'Ajustar para maiúsculo número do IMEI')
       //or
       //(consulta = 'Ajustar Estoque Lote')
       then
  begin
    actGerar.Enabled := true;
    pgc.Visible := false;

    edtdtinicial.Visible := false;
    lblinicial.Visible   := false;

    edtdtfinal.Visible   := false;
    lblfinal.Visible     := false;

    lblcodigo.Visible    := false;
    cbxcodigo.Visible    := false;

    lblsituacao.Visible  := false;
    cbxsituacao.Visible  := false;

    lbldtsaida.Visible   := false;
    cbxdtsaida.Visible   := false;

    ckbbogrupo.Visible   := false;
    ckbtrigger.Visible   := false;
    ckbmesames.Visible   := false;
    ckbbonflivro.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbboalternativo.Visible    := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = 'Gerar baixa estoque de subproduto' then
  begin
    actGerar.Enabled := true;
    pgc.Visible           := true;
    tbsproduto.TabVisible := true;
    tbsgrupo.TabVisible   := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible := true;
    lblfinal.Visible   := true;

    lblcodigo.Visible    := false;
    cbxcodigo.Visible    := false;

    lblsituacao.Visible  := false;
    cbxsituacao.Visible  := false;

    lbldtsaida.Visible   := false;
    cbxdtsaida.Visible   := false;

    ckbbogrupo.Visible   := false;
    ckbtrigger.Visible   := false;
    ckbmesames.Visible   := false;
    ckbbonflivro.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbboalternativo.Visible    := false;
    ckbbofichanegativa.Visible  := false;
  end
  else if consulta = 'Gerar Histórico de Custo Médio Livro Produção' then
  begin
    actGerar.Enabled := true;
    pgc.Visible              := true;
    tbsproduto.TabVisible    := true;
    tbsgrupo.TabVisible      := true;
    tbsfornecedor.TabVisible := false;
    tbscliente.TabVisible    := False;

    edtdtinicial.Visible := true;
    lblinicial.Visible   := true;
    lblinicial.Caption   := 'Inicial';

    edtdtfinal.Visible := true;
    lblfinal.Visible   := true;

    lblcodigo.Visible    := false;
    cbxcodigo.Visible    := false;

    lblsituacao.Visible  := false;
    cbxsituacao.Visible  := false;

    lbldtsaida.Visible   := false;
    cbxdtsaida.Visible   := false;

    ckbbogrupo.Visible   := false;
    ckbtrigger.Visible   := false;
    ckbmesames.Visible   := false;
    ckbbonflivro.Visible := false;
    ckbbosuprimirzerado.Visible := false;
    ckbboalternativo.Visible    := false;
    ckbbofichanegativa.Visible  := false;
  end;
end;

procedure TfrmConsultaProduto.actsalvarExecute(Sender: TObject);
begin
  SalvarArquivo(mem);
end;

procedure TfrmConsultaProduto.edtnmprodutoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_produto);
end;

procedure TfrmConsultaProduto.edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvproduto, executar_on_change_produto, tedit(sender), key);
end;

procedure TfrmConsultaProduto.edtnmgrupoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_grupo);
end;

procedure TfrmConsultaProduto.edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvGrupo, executar_on_change_Grupo, tedit(sender), key);
end;

procedure TfrmConsultaProduto.FormCreate(Sender: TObject);
begin
  cdproduto    := TStringList.create;
  cdgrupo      := TStringList.create;
  cdfornecedor := TStringList.create;
  cdcliente    := TStringList.create;
  linha        := TStringlist.create;
  set_treeview;
  tpcodigo       := 'Código';
  ntb.ActivePage := 'Default';
end;

procedure TfrmConsultaProduto.edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvproduto, TEdit(sender), key);
end;

procedure TfrmConsultaProduto.edtcdgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvgrupo, TEdit(sender), key);
end;

procedure TfrmConsultaProduto.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvfornecedor);
end;

procedure TfrmConsultaProduto.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvfornecedor);
end;

procedure TfrmConsultaProduto.ToolButton8Click(Sender: TObject);
begin
  lsvFornecedor.Clear;
end;

procedure TfrmConsultaProduto.edtcdfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 119 then
  begin
    if (tpcodigo = 'Código') or (tpcodigo = 'CNPJ') then
    begin
      if tpcodigo = 'Código' then
      begin
        tpcodigo := 'CNPJ'
      end
      else if tpcodigo = 'CNPJ'   then
      begin
        tpcodigo := 'CPF';
      end;
      edtnucnpjcpf.Clear;
      edtnucnpjcpf.Enabled    := true;
      edtnucnpjcpf.Visible    := true;
      edtnucnpjcpf.EditMask   := MascaraDocumento(tpcodigo);
      edtnucnpjcpf.SetFocus;
      edtcdFornecedor.Enabled := false;
      edtcdFornecedor.visible := false;
    end
    else if tpcodigo = 'CPF' then
    begin
      tpcodigo                := 'Código';
      edtcdFornecedor.Enabled := true;
      edtcdFornecedor.visible := true;
      edtcdFornecedor.SetFocus;
      edtnucnpjcpf.Enabled    := false;
      edtnucnpjcpf.Visible    := false;
    end;
    lblcdfornecedor.Caption := tpcodigo;
  end;
end;

procedure TfrmConsultaProduto.edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
var
  ListItem: TListItem;
  cdFornecedor : string;
  i : integer;
begin
  if key <> #13 then
  begin
    exit;
  end;
  if tpcodigo = 'Código' then
  begin
    if not codigoexiste(_Fornecedor, edtcdFornecedor.text) then
    begin
      exit;
    end;
    cdFornecedor := edtcdFornecedor.text;
    edtcdFornecedor.Clear;
  end
  else
  begin
    cdFornecedor := CodigodoCampo(_Fornecedor, edtnucnpjcpf.Text, _nu+tpcodigo);
  end;
  if cdFornecedor = '' then
  begin
    exit;
  end;
  tpcodigo                := 'Código';
  lblcdFornecedor.Caption := tpcodigo;
  edtcdFornecedor.Enabled := true;
  edtcdFornecedor.Visible := true;
  edtcdFornecedor.SetFocus;
  //
  edtnucnpjcpf.Enabled := false;
  edtnucnpjcpf.Visible := false;
  //
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

procedure TfrmConsultaProduto.edtnmfornecedorChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_Fornecedor);
end;

procedure TfrmConsultaProduto.edtnmfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvFornecedor, executar_on_change_Fornecedor, tedit(sender), key);
end;

procedure TfrmConsultaProduto.ntbPageChanged(Sender: TObject);
begin
  actsalvar.Visible   := ntb.ActivePage = _texto;
end;

procedure TfrmConsultaProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsultaProduto.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmConsultaProduto.FormDestroy(Sender: TObject);
begin
  freeandnil(cdproduto);
  freeandnil(cdgrupo);
  freeandnil(cdfornecedor);
  freeandnil(cdcliente);
  freeandnil(linha);
  freeandnil(produto);
end;

procedure TfrmConsultaProduto.ToolButton3Click(Sender: TObject);
begin
  AdicionarListview(lsvcliente)
end;

procedure TfrmConsultaProduto.ToolButton6Click(Sender: TObject);
begin
  ExcluirListView(lsvcliente);
end;

procedure TfrmConsultaProduto.ToolButton11Click(Sender: TObject);
begin
  lsvCliente.Clear;
end;

procedure TfrmConsultaProduto.set_treeview;
var
  no1 : TTreeNode;
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
  trv.Items.AddChild(no1, '657 - Apuração de Estoque');
  trv.Items.AddChild(no1, '637 - Balancete de Compra e Venda por Grupo de Produto');
  trv.Items.AddChild(no1, '638 - Balancete Mensal de Compra e Venda por Grupo de Produto');
  trv.Items.AddChild(no1, '68 - Consumo');
  trv.Items.AddChild(no1, '65 - Consumo Médio Mensal');
  trv.Items.AddChild(no1, 'Estoque Diário');
  trv.Items.AddChild(no1, '465 - Etiqueta');
  trv.Items.AddChild(no1, 'Ficha de Movimentação');
  trv.Items.AddChild(no1, 'Ficha de Movimentação - Estoque Terceiro (cliente)');
  trv.Items.AddChild(no1, 'Ficha de Movimentação - Estoque Terceiro (fornecedor)');
  trv.Items.AddChild(no1, '354 - Histórico Estoque Cliente');
  trv.Items.AddChild(no1, '354 - Histórico Estoque Fornecedor');
  trv.Items.AddChild(no1, '575 - Inventário de Estoque');
  trv.Items.AddChild(no1, '576 - Inventário de Estoque sem quebra de grupo');
  trv.Items.AddChild(no1, '22 - Lista por Data de Validade');
  trv.Items.AddChild(no1, '453 - Lista Preço Venda');
  trv.Items.AddChild(no1, '578 - Lista Preço Venda/Atacado/Especial');
  trv.Items.AddChild(no1, '501 - Lista Produto Crítico');
  if empresa.material.produto.bonuimei then
  begin
    trv.Items.AddChild(no1, '38 - Lista Número de Série');
    trv.Items.AddChild(no1, '39 - Lista Número de Série - Estoque');
    trv.Items.AddChild(no1, '40 - Lista Número de Série Repetido');
    trv.Items.AddChild(no1, '41 - Lista Compra de Lote não identificado');
  end;
  trv.Items.AddChild(no1, '67 - Movimentações de Saída');
  trv.Items.AddChild(no1, 'Movimento Analítico de Entrada');
  trv.Items.AddChild(no1, '66 - Movimento Analítico de Entrada - NF');
  trv.Items.AddChild(no1, 'Movimento Analítico de Saída');
  trv.Items.AddChild(no1, '549 - Movimentação por Totais de Produtos');
  no1 := trv.Items.AddChild(nil, Maiuscula(__funcao));
  trv.Items.AddChild(no1, 'Atualizar Código Cest');
  //trv.Items.AddChild(no1, 'Corrigir Quantidade 2');
  //trv.Items.AddChild(no1, 'Excluir Produto Repetido');
  trv.Items.AddChild(no1, 'Gerar baixa estoque de subproduto');
  trv.Items.AddChild(no1, 'Gerar Histórico de Custo Médio Livro Produção');
  trv.Items.AddChild(no1, 'Importar Inventário de Estoque');
  trv.Items.AddChild(no1, 'Recalcular Custo Médio');
  trv.Items.AddChild(no1, 'Recalcular Estoque Terceiro (fornecedor)');
  trv.Items.AddChild(no1, 'Recalcular Estoque Terceiro (cliente)');
  //if empresa.material.produto.bonuimei then
  //begin
    //trv.Items.AddChild(no1, 'Ajustar Estoque Lote');
    //trv.Items.AddChild(no1, 'Juntar Lote Repetido');
    //trv.items.AddChild(no1, 'Ajustar para maiúsculo número do IMEI');
  //end;
end;

end.
