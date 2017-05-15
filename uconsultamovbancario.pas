unit uconsultamovbancario;

interface

uses
  System.Actions, System.UITypes,
  forms, Classes, ActnList, ComCtrls, StdCtrls, Buttons, Controls, Mask, ExtCtrls,
  ToolWin, windows, dialogs, sysutils,
  SqlExpr,
  uregistro, unumero, uconstantes, uAdicionarListView, umontarsql,
  ustrings, udatahora, usystem,
  classeexecutasql, classeaplicacao, classeform, classeempresa, classeconta,
  classeusuario, classecobranca, classequery,
  cxPC, cxControls, dxBar, cxClasses, cxSplitter, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxListView, cxEdit, cxGroupBox, cxRadioGroup,
  cxCheckBox, cxPCdxBarPopupMenu, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxCore, cxDateUtils, dxBarBuiltInMenu;

type
  TfrmConsultaMovBancario = class(TForm)
    pnl: TPanel;
    ActionList1: TActionList;
    actGerar: TAction;
    ntb: TNotebook;
    Panel2: TPanel;
    lbldata: TLabel;
    Bevel5: TBevel;
    actfechar: TAction;
    ckbconciliado: TCheckBox;
    rdgtpvalor: TRadioGroup;
    pgc: TcxPageControl;
    tbsconta: TcxTabSheet;
    tbsmovimentacao: TcxTabSheet;
    tbsplconta: TcxTabSheet;
    tbscliente: TcxTabSheet;
    tbsstadntcliente: TcxTabSheet;
    tbsfornecedor: TcxTabSheet;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    edtnmconta: TEdit;
    Label4: TLabel;
    Label3: TLabel;
    edtcdconta: TEdit;
    Bevel3: TBevel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    Label1: TLabel;
    Label2: TLabel;
    edtcdmovimentacao: TEdit;
    edtnmmovimentacao: TEdit;
    Bevel2: TBevel;
    ToolBar7: TToolBar;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    Label7: TLabel;
    edtcdplconta: TEdit;
    edtnmgrupo: TEdit;
    Label8: TLabel;
    Bevel6: TBevel;
    lblcdcliente: TLabel;
    lblnmcliente: TLabel;
    edtnmcliente: TEdit;
    edtcdcliente: TEdit;
    ckbclienteinversa: TCheckBox;
    Bevel7: TBevel;
    ToolBar3: TToolBar;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton18: TToolButton;
    ToolBar5: TToolBar;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton29: TToolButton;
    Label10: TLabel;
    Label9: TLabel;
    edtcdstadntcliente: TEdit;
    edtnmstadntcliente: TEdit;
    Bevel8: TBevel;
    tbsstadntfornecedor: TcxTabSheet;
    lblnmfornecedor: TLabel;
    lblcdfornecedor: TLabel;
    edtcdfornecedor: TEdit;
    edtnmfornecedor: TEdit;
    ckbfornecedorinversa: TCheckBox;
    Bevel9: TBevel;
    ToolBar6: TToolBar;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton33: TToolButton;
    Label12: TLabel;
    Label11: TLabel;
    edtcdstadntfornecedor: TEdit;
    edtnmstadntfornecedor: TEdit;
    ToolBar9: TToolBar;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton37: TToolButton;
    Bevel10: TBevel;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    spl1: TcxSplitter;
    lsvconta: TcxListView;
    lsvmovimentacao: TcxListView;
    lsvplconta: TcxListView;
    lsvcliente: TcxListView;
    lsvstadntcliente: TcxListView;
    lsvfornecedor: TcxListView;
    lsvstadntfornecedor: TcxListView;
    trv: TTreeView;
    lblatedata: TLabel;
    tbscntcusto: TcxTabSheet;
    ToolBar8: TToolBar;
    ToolButton3: TToolButton;
    ToolButton7: TToolButton;
    ToolButton11: TToolButton;
    Label13: TLabel;
    edtcdcntcusto: TEdit;
    Label14: TLabel;
    edtnmcntcusto: TEdit;
    Bevel1: TBevel;
    lsvcntcusto: TcxListView;
    tbsempresa: TcxTabSheet;
    ToolBar10: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton17: TToolButton;
    Bevel11: TBevel;
    edtnmempresa: TEdit;
    edtcdempresa: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    lsvempresa: TcxListView;
    edtdatai: TcxDateEdit;
    edtdataf: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure edtnmcontaChange(Sender: TObject);
    procedure edtnmcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure edtnmmovimentacaoChange(Sender: TObject);
    procedure edtnmmovimentacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdcontaKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdmovimentacaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure edtcdplcontaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmgrupoChange(Sender: TObject);
    procedure edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actfecharExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure edtnmclienteChange(Sender: TObject);
    procedure edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure ToolButton29Click(Sender: TObject);
    procedure edtcdstadntclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstadntclienteChange(Sender: TObject);
    procedure edtnmstadntclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton30Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure edtnmfornecedorChange(Sender: TObject);
    procedure edtnmfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton34Click(Sender: TObject);
    procedure ToolButton35Click(Sender: TObject);
    procedure ToolButton37Click(Sender: TObject);
    procedure edtcdstadntfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstadntfornecedorChange(Sender: TObject);
    procedure edtnmstadntfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmcntcustoChange(Sender: TObject);
    procedure edtnmcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure edtcdempresaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmempresaChange(Sender: TObject);
    procedure edtnmempresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private    { Private declarations }
    conta : TConta;
    executar_on_change_cntcusto, executar_on_change_empresa, executar_on_change_conta         : boolean;
    executar_on_change_movimentacao  : boolean;
    executar_on_change_plconta       : boolean;
    executar_on_change_cliente       : boolean;
    executar_on_change_stadntcliente : boolean;
    executar_on_change_Fornecedor    : boolean;
    executar_on_change_stadntfornecedor : boolean;
    function ExcluirPlconta:boolean;
    procedure set_treeview;
  public    { Public declarations }
  end;

var
  frmConsultaMovBancario: TfrmConsultaMovBancario;

implementation

uses uMain, classeadntclienterecalculosaldo, rptestoquecompleto,
  rptreferenciacruzada,
  //untconsultaplcontaimprimirdiario,
  uimprimirrelatoriopadrao,
  uDtmMain,
  uimp_movimentacaofinanceira;

{$R *.dfm}
procedure TfrmConsultaMovBancario.FormShow(Sender: TObject);
begin
  ntb.ActivePage := 'Default';
  conta          := TConta.create;
  if not empresa.financeiro.bocntcusto then
  begin
    tbscntcusto.TabVisible := False;
    excluiritemtreeview(trv, '660 - Centro Custo - Razão por Data de Emissão');
    excluiritemtreeview(trv, '661 - Centro Custo - Razão por Data de Vencimento');
    excluiritemtreeview(trv, '662 - Centro Custo - Razão por Data de Baixa com Produtos');
    excluiritemtreeview(trv, '663 - Centro Custo - Razão por Data de Vencimento com Produtos');
    excluiritemtreeview(trv, '664 - Centro Custo - Razão por Data de Emissão com Produtos');
    excluiritemtreeview(trv, '665 - Centro Custo - Razão por Data de Baixa');
  end;
  if not empresa.financeiro.boplconta then
  begin
    tbsplconta.TabVisible := false;
    excluiritemtreeview(trv, '074 - DRE');
    excluiritemtreeview(trv, '633 - Plano Contas - Balanço de Período - Original Emissão');
    excluiritemtreeview(trv, '634 - Plano Contas - Balanço de Período - Original Vencimento');
    excluiritemtreeview(trv, '635 - Plano Contas - Balanço de Período - Saldo');
    excluiritemtreeview(trv, '636 - Plano Contas - Balanço de Período - Baixa');
    excluiritemtreeview(trv, 'Plano Contas - Diário');
    excluiritemtreeview(trv, '514 - Plano Contas - Razão por Data de Emissão');
    excluiritemtreeview(trv, '515 - Plano Contas - Razão por Data de Baixa');
    excluiritemtreeview(trv, '513 - Plano Contas - Razão por Data de Emissão com Produtos');
    excluiritemtreeview(trv, '519 - Plano Contas - Razão por Data de Baixa com Produtos');
    excluiritemtreeview(trv, '071 - Plano Contas - Razão por Data de Vencimento com Produtos');
    excluiritemtreeview(trv, '512 - Plano Contas - Razão por Data de Vencimento');
  end;
  trv.Items[0].Expand(true);
end;

procedure TfrmConsultaMovBancario.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvconta);
end;

procedure TfrmConsultaMovBancario.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvconta);
end;

procedure TfrmConsultaMovBancario.ToolButton12Click(Sender: TObject);
begin
  lsvconta.Clear;
end;

procedure TfrmConsultaMovBancario.actGerarExecute(Sender: TObject);
var
  nopai, consulta :string;
  cdempresa, cdcntcusto, cdstadntcliente, cdcliente, cdplconta, cdconta, cdmovimentacao, cdfornecedor, cdstadntfornecedor : TStrings;
  procedure criar_objetos;
  begin
    cdconta            := TStringList.create;
    cdplconta          := TStringList.create;
    cdcliente          := TStringList.create;
    cdfornecedor       := TStringList.create;
    cdmovimentacao     := TStringList.create;
    cdstadntcliente    := TStringList.create;
    cdcntcusto         := TStringList.Create;
    cdempresa          := TStringList.Create;
    cdstadntfornecedor := TStringList.create;
  end;
  procedure preencher_lista;
  var
    i : Integer;
  begin
    for I := 0 to lsvconta.Items.count            - 1 do cdconta.add           (lsvconta.items           [i].Caption);
    for I := 0 to lsvempresa.Items.count          - 1 do cdempresa.add         (lsvempresa.items         [i].Caption);
    for I := 0 to lsvplconta.Items.count          - 1 do cdplconta.add         (CodigodoCampo(_plconta , lsvplconta.items[i].caption , _nunivel));
    for I := 0 to lsvcntcusto.Items.count         - 1 do cdcntcusto.add        (CodigodoCampo(_cntcusto, lsvcntcusto.items[i].caption, _nunivel));
    for I := 0 to lsvcliente.Items.count          - 1 do cdcliente.add         (lsvcliente.items         [i].Caption);
    for I := 0 to lsvfornecedor.Items.count       - 1 do cdfornecedor.add      (lsvfornecedor.items      [i].Caption);
    for I := 0 to lsvmovimentacao.Items.count     - 1 do cdmovimentacao.add    (lsvmovimentacao.items    [i].caption);
    for I := 0 to lsvstadntcliente.Items.count    - 1 do cdstadntcliente.add   (lsvstadntcliente.items   [i].caption);
    for I := 0 to lsvstadntfornecedor.Items.count - 1 do cdstadntfornecedor.add(lsvstadntfornecedor.items[i].caption);
  end;
  procedure destruir_objetos;
  begin
    cdconta.free;
    cdcntcusto.free;
    cdplconta.free;
    cdcliente.free;
    cdfornecedor.free;
    cdmovimentacao.free;
    cdstadntcliente.free;
    cdstadntfornecedor.free;
    cdempresa.free;
  end;
  function makesqlwhere:string;
  var
    t : Integer;
  begin
    Result := ' ';
    t      := length(result);
    InsercaoDataSQl(edtdatai, edtdataf, result, _hcontasaldo+'.'+_dthcontasaldo, t);
    sqlmontarlista(cdconta, _hcontasaldo, _cdconta, result, t);
  end;
  function makesqlrazao(nmtabela, nmdata:string):string;
  begin
    Result := 'where t.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl    (edtdatai, edtdataf, result, nmtabela+'.'+nmdata);
    sqlmontarlistagrupo(cdplconta, _p, _cdplconta, result);
  end;
  function makesqlrazaocntcusto(nmtabela, nmdata:string):string;
  begin
    Result := 'where t.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl    (edtdatai, edtdataf, result, nmtabela+'.'+nmdata);
    sqlmontarlistagrupo(cdcntcusto, _p, _cdcntcusto, result);
  end;
  function makesqlwhere556:string;
  begin
    Result := 'where b.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl (edtdatai, edtdataf, result, _b+'.'+_dtbaixa);
    sqlmontarlista (cdcntcusto, _c, _cdcntcusto, result);
    sqlmontarlista (cdplconta , _P, _cdplconta, result);
  end;
  function makesqlwhere555:string;
  begin
    Result := 'where a.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl (edtdatai, edtdataf, result, _a+'.'+_dtemissao);
    sqlmontarlista (cdcntcusto, _c, _cdcntcusto, result);
    sqlmontarlista (cdplconta , _P, _cdplconta, result);
  end;
  function makesqlwhere557:string;
  begin
    Result := 'where a.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl (edtdatai, edtdataf, result, _a+'.'+_dtvencimento);
    sqlmontarlista (cdcntcusto, _c, _cdcntcusto, result);
    sqlmontarlista (cdplconta , _P, _cdplconta, result);
  end;
  function makesqlsaldoconta:string;
  begin
    Result := 'where c.cdempresa='+empresa.cdempresa.tostring+' '+
              'and dthcontasaldo=(select max(dthcontasaldo) '+
                                 'from hcontasaldo h1 '+
                                 'where h1.cdempresa=c.cdempresa and h1.cdconta=c.cdconta and dthcontasaldo<='+getdtbanco(edtdatai.Date)+') ';
  end;
  function makesqlchequeemitido:string;
  begin
    result := 'WHERE movbancario.cdempresa='+empresa.cdempresa.tostring+' and MOVBANCARIO.CDMOVIMENTACAO=7 ';
    InsercaoDataSQl(edtdatai, edtdataf, result, _movbancario+'.'+_dtemissao);
    if ckbconciliado.checked then result := result + 'and movbancario.boconciliado=''S'' '
                             else result := result + 'and movbancario.boconciliado=''N'' ';
    sqlmontarlista(cdconta, _conta, _cdconta, result);
  end;
  function makesqlgraficoreceitadespesas(nmdata:string):string;
  begin
    result := 'WHERE t.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl(edtdatai, edtdataf, result, _t+'.'+nmdata);
  end;
  function makesqldiariomovimentacao:string;
  begin
    result := 'where movbancario.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl(edtdatai, edtdataf, result  , _movbancario+'.'+_dtemissao);
    sqlmontarlista(cdconta        , _movbancario, _cdconta        , result);
    sqlmontarlista(cdmovimentacao , _movbancario, _cdmovimentacao , result);
  end;
  function makesqladntcliente:string;
  begin
    result := 'where adntcliente.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarlista (cdcliente      , _adntcliente, _cdcliente, result, 0, ckbclienteinversa.Checked);
    sqlmontarlista (cdstadntcliente, _adntcliente, _cdstadntcliente, result);
    InsercaoDataSQl(edtdatai, edtdataf, result, _adntcliente+'.'+_dtemissao);
  end;
  function makesqladntfornecedor:string;
  begin
    result := 'where adntfornecedor.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarlista (cdfornecedor      , _adntfornecedor, _cdfornecedor, result, 0, ckbfornecedorinversa.Checked);
    sqlmontarlista (cdstadntfornecedor, _adntfornecedor, _cdstadntfornecedor, result);
    InsercaoDataSQl(edtdatai, edtdataf, result, _adntfornecedor+'.'+_dtemissao);
  end;
 function makesqlChequesEmitidos:string;
  begin
    result := ' WHERE movimentacao.cdempresa='+empresa.cdempresa.tostring+' and MOVBANCARIO.CDMOVIMENTACAO=7 and movbancario.boconciliado=';
    if ckbconciliado.checked then
    begin
      result := result + ' ''S'' '
    end
    else
    begin
      result := result + ' ''N'' ';
    end;
    InsercaoDataSQl(edtdatai, edtdataf, result, _movbancario+'.'+_dtemissao);
    sqlmontarlista(cdconta, _conta, _cdconta, result);
  end;
  function makesqlCentroCusto(nmtabela, nmdata:string):string; (**)
  begin
    Result := 'where t.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl    (edtdatai, edtdataf, result, nmtabela+'.'+nmdata);
    sqlmontarlista (cdcntcusto, _cntcusto, _cdcntcusto, result);
  end;
  function makesqlPlanoContas(nmdata:string; nmtabela: string = 'd'):string;
  begin
    Result := 'where (pl.nunivel is not null) AND pl.cdempresa = '+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl    (edtdatai, edtdataf, result, nmtabela +'.' + nmdata);
    sqlmontarlistagrupo(cdplconta, _p+_l, _cdplconta, Result);
  end;
  function makesql074:string;
  begin
    Result := 'where nota.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl    (edtdatai, edtdataf, result, _nota +'.' + _dtemissao);
    //sqlmontarlistagrupo(cdplconta, _p+_l, _cdplconta, Result);
  end;
  function makesqlPlanoContas636(nmdata:string; nmtabela: string = 'd'):string; (**)
  begin
    Result := 'where (plconta.nunivel is not null) AND plconta.cdempresa = '+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl    (edtdatai, edtdataf, result, nmtabela +'.' + nmdata);
    sqlmontarlistagrupo(cdplconta , _plconta,  _cdplconta, Result);
  end;
  function makesqlPlanoContas6362(nmdata:string; nmtabela: string = 'd'):string; (**)
  begin
    Result := ' ';
    sqlmontarlistagrupo(cdcntcusto, '', _cdcntcusto, result, 1);
  end;
begin
  criar_objetos;
  try
    preencher_lista;
    nopai    := trv.selected.Parent.Text;
    consulta := trv.selected.text;
    dtmmain.LogSiteAction(self.name, consulta);
         if consulta = '305 - Adiantamento Cliente - Saldo Diário'                              then imprimir_relatorio     (305, consulta, '', edtdatai.Date, edtdataf.Date, 0, nil)
    else if consulta = '307 - Posição de Saldo de Adiantamento de Cliente'                      then imprimir_relatorio     (307, consulta, '', edtdatai.Date, edtdataf.Date, 0, nil)
    else if consulta = '556 - Plano Contas X Centro Custo por Baixa'                            then ImpimirRelatorioPadrao1(556, makesqlwhere556)
    else if consulta = '555 - Plano Contas X Centro Custo por Emissão'                          then ImpimirRelatorioPadrao1(555, makesqlwhere555)
    else if consulta = '557 - Plano Contas X Centro Custo por Vencimento'                       then ImpimirRelatorioPadrao1(557, makesqlwhere557)
    else if consulta = '568 - Analitico Centro de custo - Razão por data de baixa com produtos' then ImpimirRelatorioPadrao1(568, makesqlCentroCusto(_b, _dtbaixa), makesqlrazao(_t, _dtemissao))
    else if consulta = 'Referência Cruzada - Plano de Contas versus Centro de Custo'            then reportReferenciaCruzada1(consulta, 'Centro Custo', 'Plano Contas', edtdatai.Date, edtdataf.Date)
    else if consulta = 'Referência Cruzada - Fornecedor versus Centro de Custo'                 then reportReferenciaCruzada (consulta, 'Centro Custo', Maiuscula(_Fornecedor), _vlautpagto, _dtemissao, ' autpagto' , edtdatai.Date, edtdataf.Date)
    else if consulta = '570 - Analítico'                                                        then ImpimirRelatorioPadrao1(570, makesqldiariomovimentacao)
    else if consulta = '397 - Cheques Emitidos'                                                 then ImpimirRelatorioPadrao1(397, makesqlchequeemitido)
    else if consulta = '571 - Cheques Emitidos Analítico'                                       then ImpimirRelatorioPadrao1(571, makesqlChequesEmitidos)
    else if consulta = '572 - Diário'                                                           then ImpimirRelatorioPadrao1(572, makesqldiariomovimentacao)
    else if consulta = '551 - Diário Movimentação'                                              then ImpimirRelatorioPadrao1(551, makesqldiariomovimentacao)
    else if consulta = '411 - Diário Saldo Conta'                                               then ImpimirRelatorioPadrao1(411, makesqlwhere)
    else if consulta = '410 - Fluxo de Caixa'                                                   then ImpimirRelatorioPadrao1(410, edtdatai.Date, edtdataf.Date)
    else if consulta = '418 - Fluxo de Caixa Saldo Previsto'                                    then ImpimirRelatorioPadrao1(418, edtdatai.Date, edtdataf.Date)
    else if consulta = '475 - Fluxo de Caixa Previsto com Saldo do Dia'                         then ImpimirRelatorioPadrao1(475, edtdatai.Date, edtdataf.Date)
    else if consulta = '431 - Fluxo de Caixa Realizado'                                         then ImpimirRelatorioPadrao1(431, edtdatai.Date, edtdataf.Date) 
    else if consulta = '545 - Gráfico de Receita x Despesas Regime de Caixa'                    then ImpimirRelatorioPadrao1(545, makesqlgraficoreceitadespesas(_dtprorrogacao))
    else if consulta = '546 - Gráfico de Receita x Despesas Regime de Competência'              then ImpimirRelatorioPadrao1(546, makesqlgraficoreceitadespesas(_dtemissao))
    else if consulta = '26 - Mensal'                                                            then ImpimirRelatorioPadrao1(26, makesqldiariomovimentacao)
    else if consulta = '499 - Saldo Conta'                                                      then ImpimirRelatorioPadrao1(499, makesqlsaldoconta, false, edtdatai.Date)
    else if consulta = '27 - Sintético'                                                         then ImpimirRelatorioPadrao1(27, makesqldiariomovimentacao)
    else if consulta = '552 - Sintético Adiantamento Cliente'                                   then ImpimirRelatorioPadrao1(552, makesqladntcliente)
    else if consulta = '554 - Sintético Adiantamento Fornecedor'                                then ImpimirRelatorioPadrao1(554, makesqladntfornecedor)
    else if consulta = '633 - Plano Contas - Balanço de Período - Original Emissão'             then ImpimirRelatorioPadrao1(633, makesqlPlanoContas(_dtemissao))
    else if consulta = '074 - DRE'                                                              then ImpimirRelatorioPadrao1(074, makesql074)
    else if consulta = '634 - Plano Contas - Balanço de Período - Original Vencimento'          then ImpimirRelatorioPadrao1(634, makesqlPlanoContas(_dtprorrogacao))
    else if consulta = '635 - Plano Contas - Balanço de Período - Saldo'                        then ImpimirRelatorioPadrao1(635, makesqlPlanoContas(_dtprorrogacao))
    else if consulta = '636 - Plano Contas - Balanço de Período - Baixa'                        then
    begin
      ImpimirRelatorioPadrao1(636, makesqlPlanoContas636(_dtbaixa, 'baixa'), makesqlPlanoContas6362(_dtbaixa, 'baixa'));
    end
    //else if consulta = 'Plano Contas - Diário'                                                  then imprimirplcontadiario (cdplconta, edtdatai.Date, edtdataf.Date, rdgtpvalor.itemindex)
    else if consulta = '515 - Plano Contas - Razão por Data de Baixa'                           then ImpimirRelatorioPadrao1(515, makesqlrazao(_b, _dtbaixa))
    else if consulta = '665 - Centro Custo - Razão por Data de Baixa'                           then ImpimirRelatorioPadrao1(665, makesqlrazaocntcusto(_b, _dtbaixa))
    else if consulta = '514 - Plano Contas - Razão por Data de Emissão'                         then ImpimirRelatorioPadrao1(514, makesqlrazao(_t, _dtemissao))
    else if consulta = '660 - Centro Custo - Razão por Data de Emissão'                         then ImpimirRelatorioPadrao1(660, makesqlrazaocntcusto(_t, _dtemissao))
    else if consulta = '513 - Plano Contas - Razão por Data de Emissão com Produtos'            then ImpimirRelatorioPadrao1(513, makesqlrazao(_t, _dtemissao))
    else if consulta = '664 - Centro Custo - Razão por Data de Emissão com Produtos'            then ImpimirRelatorioPadrao1(664, makesqlrazaocntcusto(_t, _dtemissao))
    else if consulta = '071 - Plano Contas - Razão por Data de Vencimento com Produtos'         then ImpimirRelatorioPadrao1(071, makesqlrazao(_t, _dtprorrogacao))
    else if consulta = '519 - Plano Contas - Razão por Data de Baixa com Produtos'              then ImpimirRelatorioPadrao1(519, makesqlrazao(_b, _dtbaixa), makesqlrazao(_t, _dtemissao))
    else if consulta = '662 - Centro Custo - Razão por Data de Baixa com Produtos'              then ImpimirRelatorioPadrao1(662, makesqlrazaocntcusto(_b, _dtbaixa), makesqlrazaocntcusto(_t, _dtemissao))
    else if consulta = '663 - Centro Custo - Razão por Data de Vencimento com Produtos'         then ImpimirRelatorioPadrao1(663, makesqlrazaocntcusto(_t, _dtprorrogacao))
    else if consulta = '512 - Plano Contas - Razão por Data de Vencimento'                      then ImpimirRelatorioPadrao1(512, makesqlrazao(_t, _dtprorrogacao))
    else if consulta = '661 - Centro Custo - Razão por Data de Vencimento'                      then ImpimirRelatorioPadrao1(661, makesqlrazaocntcusto(_t, _dtprorrogacao));
    if nopai = 'Função' then
    begin
           if consulta = 'Excluir Plano Contas Repetido'         then ExcluirPlconta
      else if consulta = 'Recalcular Saldo Adiantamento Cliente' then Recalcular_saldo_adntcliente(edtdatai.Date, edtdataf.Date, cdcliente);
    end
    else if nopai = Maiuscula(_Exportar) then
    begin
      if consulta = 'Movimentação Financeira' then
      begin
        if imp_movimentacao_financeira(cdempresa, cdconta, cdmovimentacao, edtdatai.Date, edtdataf.Date) then
        begin
          MessageDlg('Arquivo gerado com sucesso!', mtInformation, [mbOK], 0);
        end;
      end;
    end;
  finally
    destruir_objetos;
  end;
end;

procedure TfrmConsultaMovBancario.trvChange(Sender: TObject; Node: TTreeNode);
var
  consulta : string;
  lista : TStrings;
  procedure setdata(edtdti, edtdtf: TcxdateEdit; lbl, lblate: TLabel;status:boolean);
  begin
    edtdti.Visible := status;
    edtdtf.Visible := status;
    lbl.Visible    := status;
    lblate.Visible := status;
  end;
  procedure setdata2(edtdti, edtdtf: TcxdateEdit; lbl, lblate: TLabel;status:boolean);
  begin
    edtdti.Visible := status;
    edtdtf.Visible := status;
    lbl.Visible    := status;
    lblate.Visible := status;
  end;
  procedure setfalse;
  begin
    tbsconta.TabVisible            := false;
    tbsmovimentacao.TabVisible     := false;
    tbsplconta.TabVisible          := false;
    tbscliente.TabVisible          := false;
    tbsstadntcliente.TabVisible    := false;
    tbsfornecedor.TabVisible       := false;
    tbsstadntfornecedor.TabVisible := false;
    tbscntcusto.TabVisible         := False;
    tbsempresa.TabVisible          := False;
    rdgtpvalor.Visible             := false;
    ckbconciliado.Visible          := false;
    setdata(edtdatai, edtdataf, lbldata, lblatedata, false);
  end;
  procedure setactivepage;
  var
    i : integer;
  begin
    pgc.Visible := false;
    for i := 0 to pgc.PageCount - 1 do
    begin
      if pgc.Pages[i].TabVisible then
      begin
        pgc.Visible := true;
        pgc.ActivePage := pgc.Pages[i];
        break;
      end;
    end;
  end;
  procedure setcomponentes;
  var
    i : integer;
  begin
    setfalse;
    for i := 0 to lista.Count - 1 do
    begin
           if lista[i] = _data             then setdata(edtdatai, edtdataf, lbldata, lblatedata, true)
      else if lista[i] = _datai            then
      begin
        edtdatai.Visible := true;
        lbldata.Visible  := true;
      end
      else if lista[i] = _conta              then tbsconta.TabVisible            := true
      else if lista[i] = _movimentacao       then tbsmovimentacao.TabVisible     := true
      else if lista[i] = _plconta            then tbsplconta.TabVisible          := true
      else if lista[i] = _cliente            then tbscliente.TabVisible          := true
      else if lista[i] = _stadntcliente      then tbsstadntcliente.TabVisible    := true
      else if lista[i] = _cntcusto           then tbscntcusto.TabVisible         := true
      else if lista[i] = _fornecedor         then tbsfornecedor.TabVisible       := true
      else if lista[i] = _st+_adntfornecedor then tbsstadntfornecedor.TabVisible := true
      else if lista[i] = _tpvalor            then rdgtpvalor.Visible             := true
      else if lista[i] = _conciliado         then ckbconciliado.Visible          := true
      else if lista[i] = _empresa            then tbsempresa.tabvisible          := True;
    end;
    setactivepage;
  end;
begin
  lista := TStringList.Create;
  try
    consulta := node.text;
         if consulta = '305 - Adiantamento Cliente - Saldo Diário'                   then lista.text := _data
    else if consulta = '570 - Analítico'                                             then lista.text := _data+#13+_conta+#13+_movimentacao
    else if consulta = '397 - Cheques Emitidos'                                      then lista.Text := _data+#13+_conciliado+#13+_conta
    else if consulta = '571 - Cheques Emitidos Analítico'                            then lista.Text := _data+#13+_conciliado+#13+_conta
    else if consulta = '572 - Diário'                                                then lista.Text := _data+#13+_conta+#13+_movimentacao
    else if consulta = '551 - Diário Movimentação'                                   then lista.Text := _data+#13+_conta+#13+_movimentacao
    else if consulta = '411 - Diário Saldo Conta'                                    then lista.Text := _data+#13+_conta
    else if consulta = 'Referência Cruzada - Fornecedor versus Centro de Custo'      then lista.Text := _data+#13+_conta
    else if consulta = '410 - Fluxo de Caixa'                                        then lista.text := _data
    else if consulta = '418 - Fluxo de Caixa Saldo Previsto'                         then lista.text := _data
    else if consulta = '475 - Fluxo de Caixa Previsto com Saldo do Dia'              then lista.Text := _data
    else if consulta = '431 - Fluxo de Caixa Realizado'                              then lista.text := _data
    else if consulta = '545 - Gráfico de Receita x Despesas Regime de Caixa'         then lista.Text := _data
    else if consulta = '546 - Gráfico de Receita x Despesas Regime de Competência'   then lista.Text := _data
    else if consulta = '26 - Mensal'                                                 then lista.Text := _data+#13+_conta+#13+_movimentacao
    else if consulta = '633 - Plano Contas - Balanço de Período - Original Emissão'  then lista.text := _data+#13+_tpvalor+#13+_plconta
    else if consulta = '074 - DRE'                                                   then lista.text := _data
    else if consulta = '634 - Plano Contas - Balanço de Período - Original Vencimento' then lista.text := _data+#13+_tpvalor+#13+_plconta
    else if consulta = '635 - Plano Contas - Balanço de Período - Saldo'             then lista.text := _data+#13+_tpvalor+#13+_plconta
    else if consulta = '636 - Plano Contas - Balanço de Período - Baixa'             then lista.text := _data+#13+_tpvalor+#13+_plconta//+#13+_cntcusto
    else if consulta = 'Plano Contas - Diário'                                       then lista.text := _data+#13+_tpvalor+#13+_plconta
    else if consulta = '515 - Plano Contas - Razão por Data de Baixa'                then lista.text := _data+#13+_plconta
    else if consulta = '665 - Centro Custo - Razão por Data de Baixa'                then lista.text := _data+#13+_cntcusto
    else if consulta = '514 - Plano Contas - Razão por Data de Emissão'              then lista.text := _data+#13+_plconta
    else if consulta = '660 - Centro Custo - Razão por Data de Emissão'              then lista.text := _data+#13+_cntcusto
    else if consulta = '513 - Plano Contas - Razão por Data de Emissão com Produtos' then lista.text := _data+#13+_plconta
    else if consulta = '664 - Centro Custo - Razão por Data de Emissão com Produtos' then lista.text := _data+#13+_cntcusto
    else if consulta = '519 - Plano Contas - Razão por Data de Baixa com Produtos'   then lista.text := _data+#13+_plconta
    else if consulta = '662 - Centro Custo - Razão por Data de Baixa com Produtos'   then lista.text := _data+#13+_cntcusto
    else if consulta = '663 - Centro Custo - Razão por Data de Vencimento com Produtos' then lista.text := _data+#13+_cntcusto
    else if consulta = '071 - Plano Contas - Razão por Data de Vencimento com Produtos' then lista.text := _data+#13+_plconta
    else if consulta = '512 - Plano Contas - Razão por Data de Vencimento'           then lista.text := _data+#13+_plconta
    else if consulta = '661 - Centro Custo - Razão por Data de Vencimento'           then lista.text := _data+#13+_cntcusto
    else if consulta = 'Referência Cruzada - Plano de Contas versus Centro de Custo' then lista.text := _data
    else if consulta = '556 - Plano Contas X Centro Custo por Baixa'                 then lista.Text := _data+#13+_plconta+#13+_cntcusto
    else if consulta = '555 - Plano Contas X Centro Custo por Emissão'               then lista.Text := _data+#13+_plconta+#13+_cntcusto
    else if consulta = '557 - Plano Contas X Centro Custo por Vencimento'            then lista.text := _data+#13+_plconta+#13+_cntcusto
    else if consulta = '307 - Posição de Saldo de Adiantamento de Cliente'           then lista.text := _data
    else if consulta = 'Recalcular Saldo Adiantamento Cliente'                       then lista.text := _data+#13+_cliente
    else if consulta = '499 - Saldo Conta'                                           then lista.text := _datai
    else if consulta = '27 - Sintético'                                              then lista.Text := _data+#13+_conta+#13+_movimentacao
    else if consulta = '552 - Sintético Adiantamento Cliente'                        then lista.text := _data+#13+_stadntcliente+#13+_cliente
    else if consulta = '554 - Sintético Adiantamento Fornecedor'                     then lista.text := _data+#13+_fornecedor+#13+_st+_adntfornecedor
    else if consulta = '568 - Analitico Centro de custo - Razão por data de baixa com produtos' then lista.Text := _data+#13+_cntcusto
    else if consulta = 'Verificar endereço na cobrança'                              then lista.Text := ' '
    else if consulta = 'Movimentação Financeira'                                     then lista.Text := _data+#13+_empresa+#13+_conta+#13+_movimentacao
    else if consulta = 'Excluir Plano Contas Repetido'                               then lista.Text := ' ';
    actGerar.Enabled := lista.Text <> '';
  finally
    setcomponentes;
    freeandnil(lista);
  end;
end;

procedure TfrmConsultaMovBancario.edtnmcontaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_conta);
end;

procedure TfrmConsultaMovBancario.edtnmcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvconta, executar_on_change_conta, tedit(sender), key);
end;

procedure TfrmConsultaMovBancario.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvmovimentacao);
end;

procedure TfrmConsultaMovBancario.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvmovimentacao)
end;

procedure TfrmConsultaMovBancario.ToolButton4Click(Sender: TObject);
begin
  lsvmovimentacao.Clear;
end;

procedure TfrmConsultaMovBancario.edtnmmovimentacaoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_movimentacao);
end;

procedure TfrmConsultaMovBancario.edtnmmovimentacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvmovimentacao, executar_on_change_movimentacao, tedit(sender), key);
end;

procedure TfrmConsultaMovBancario.edtcdcontaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvconta, TEdit(sender), key);
end;

procedure TfrmConsultaMovBancario.edtcdmovimentacaoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvmovimentacao, TEdit(sender), key);
end;

procedure TfrmConsultaMovBancario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsultaMovBancario.ToolButton21Click(Sender: TObject);
begin
  AdicionarListView(lsvplconta);
end;

procedure TfrmConsultaMovBancario.ToolButton22Click(Sender: TObject);
begin
  ExcluirListView(lsvplconta);
end;

procedure TfrmConsultaMovBancario.ToolButton24Click(Sender: TObject);
begin
  lsvplconta.Clear;
end;

procedure TfrmConsultaMovBancario.edtcdplcontaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvplconta, TEdit(sender), key);
end;

procedure TfrmConsultaMovBancario.edtnmgrupoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_plconta);
end;

procedure TfrmConsultaMovBancario.edtnmgrupoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvplconta, executar_on_change_plconta, tedit(sender), key);
end;

procedure TfrmConsultaMovBancario.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmConsultaMovBancario.FormDestroy(Sender: TObject);
begin
  freeandnil(conta);
end;

procedure TfrmConsultaMovBancario.ToolButton15Click(Sender: TObject);
begin
  AdicionarListView(lsvcliente);
end;

procedure TfrmConsultaMovBancario.ToolButton16Click(Sender: TObject);
begin
  ExcluirListView(lsvcliente);
end;

procedure TfrmConsultaMovBancario.ToolButton18Click(Sender: TObject);
begin
  lsvCliente.Clear;
end;

procedure TfrmConsultaMovBancario.edtnmclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cliente);
end;

procedure TfrmConsultaMovBancario.edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcliente, executar_on_change_cliente, tedit(sender), key);
end;

procedure TfrmConsultaMovBancario.ToolButton19Click(Sender: TObject);
begin
  AdicionarListView(lsvstadntcliente);
end;

procedure TfrmConsultaMovBancario.ToolButton20Click(Sender: TObject);
begin
  ExcluirListView(lsvstadntcliente);
end;

procedure TfrmConsultaMovBancario.ToolButton29Click(Sender: TObject);
begin
  lsvstadntcliente.Clear;
end;

procedure TfrmConsultaMovBancario.edtcdstadntclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstadntcliente, TEdit(sender), key);
end;

procedure TfrmConsultaMovBancario.edtnmstadntclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stadntcliente);
end;

procedure TfrmConsultaMovBancario.edtnmstadntclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstadntcliente, executar_on_change_stadntcliente, tedit(sender), key);
end;

procedure TfrmConsultaMovBancario.ToolButton30Click(Sender: TObject);
begin
  AdicionarListView(lsvfornecedor);
end;

procedure TfrmConsultaMovBancario.ToolButton31Click(Sender: TObject);
begin
  ExcluirListview(lsvfornecedor);
end;

procedure TfrmConsultaMovBancario.ToolButton33Click(Sender: TObject);
begin
  lsvFornecedor.Clear;
end;

procedure TfrmConsultaMovBancario.edtnmfornecedorChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_Fornecedor);
end;

procedure TfrmConsultaMovBancario.edtnmfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvFornecedor, executar_on_change_Fornecedor, tedit(sender), key);
end;

procedure TfrmConsultaMovBancario.ToolButton34Click(Sender: TObject);
begin
  AdicionarListView(lsvstadntfornecedor);
end;

procedure TfrmConsultaMovBancario.ToolButton35Click(Sender: TObject);
begin
  ExcluirListView(lsvstadntfornecedor);
end;

procedure TfrmConsultaMovBancario.ToolButton37Click(Sender: TObject);
begin
  lsvstadntfornecedor.Clear;
end;

procedure TfrmConsultaMovBancario.edtcdstadntfornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstadntfornecedor, TEdit(sender), key);
end;

procedure TfrmConsultaMovBancario.edtnmstadntfornecedorChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stadntfornecedor);
end;

procedure TfrmConsultaMovBancario.edtnmstadntfornecedorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstadntfornecedor, executar_on_change_stadntfornecedor, tedit(sender), key);
end;

procedure TfrmConsultaMovBancario.edtcdclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcliente, TEdit(sender), key);
end;

procedure TfrmConsultaMovBancario.edtcdfornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvfornecedor, TEdit(sender), key);
end;

function TfrmConsultaMovBancario.ExcluirPlconta: boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('SELECT CDplconta FROM plconta');
  try
    while not q.q.Eof do
    begin
      try
        ExecutaSQL('delete from plconta where cdplconta='+q.q.fieldbyname(_cdplconta).AsString);
      except
      end;
      q.q.next;
    end;
    result := true;
    showmessage('Plano Contas Excluídos!');
  finally
    freeandnil(q)
  end;
end;

procedure TfrmConsultaMovBancario.edtcdcntcustoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvcntcusto, TEdit(sender), key);
end;

procedure TfrmConsultaMovBancario.edtnmcntcustoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cntcusto);
end;

procedure TfrmConsultaMovBancario.edtnmcntcustoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcntcusto, executar_on_change_cntcusto, tedit(sender), key);
end;

procedure TfrmConsultaMovBancario.ToolButton3Click(Sender: TObject);
begin
  AdicionarListView(lsvcntcusto);
end;

procedure TfrmConsultaMovBancario.ToolButton7Click(Sender: TObject);
begin
  ExcluirListView(lsvcntcusto);
end;

procedure TfrmConsultaMovBancario.ToolButton11Click(Sender: TObject);
begin
  lsvcntcusto.Clear;
end;

procedure TfrmConsultaMovBancario.ToolButton13Click(Sender: TObject);
begin
  AdicionarListView(lsvempresa);
end;

procedure TfrmConsultaMovBancario.ToolButton14Click(Sender: TObject);
begin
  ExcluirListView(lsvempresa);
end;

procedure TfrmConsultaMovBancario.ToolButton17Click(Sender: TObject);
begin
  lsvempresa.Clear;
end;

procedure TfrmConsultaMovBancario.edtcdempresaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvempresa, TEdit(sender), key);
end;

procedure TfrmConsultaMovBancario.edtnmempresaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_empresa);
end;

procedure TfrmConsultaMovBancario.edtnmempresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvempresa, executar_on_change_empresa, tedit(sender), key);
end;

procedure TfrmConsultaMovBancario.set_treeview;
var
  no1 : TTreeNode;
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
  trv.Items.AddChild(no1, '305 - Adiantamento Cliente - Saldo Diário');
  trv.Items.AddChild(no1, '570 - Analítico');
  trv.Items.AddChild(no1, '568 - Analitico Centro de custo - Razão por data de baixa com produtos');
  trv.Items.AddChild(no1, '660 - Centro Custo - Razão por Data de Emissão');
  trv.Items.AddChild(no1, '661 - Centro Custo - Razão por Data de Vencimento');
  trv.Items.AddChild(no1, '665 - Centro Custo - Razão por Data de Baixa');
  trv.Items.AddChild(no1, '662 - Centro Custo - Razão por Data de Baixa com Produtos');
  trv.Items.AddChild(no1, '663 - Centro Custo - Razão por Data de Vencimento com Produtos');
  trv.Items.AddChild(no1, '664 - Centro Custo - Razão por Data de Emissão com Produtos');
  trv.Items.AddChild(no1, '397 - Cheques Emitidos');
  trv.Items.AddChild(no1, '571 - Cheques Emitidos Analítico');
  trv.Items.AddChild(no1, '572 - Diário');
  trv.Items.AddChild(no1, '551 - Diário Movimentação');
  trv.Items.AddChild(no1, '411 - Diário Saldo Conta');
  trv.Items.AddChild(no1, '410 - Fluxo de Caixa');
  trv.Items.AddChild(no1, '475 - Fluxo de Caixa Previsto com Saldo do Dia');
  trv.Items.AddChild(no1, '431 - Fluxo de Caixa Realizado');
  trv.Items.AddChild(no1, '418 - Fluxo de Caixa Saldo Previsto');
  trv.Items.AddChild(no1, '545 - Gráfico de Receita x Despesas Regime de Caixa');
  trv.Items.AddChild(no1, '546 - Gráfico de Receita x Despesas Regime de Competência');
  trv.Items.AddChild(no1, '26 - Mensal');
  trv.items.addChild(no1, '074 - DRE');
  trv.Items.AddChild(no1, '633 - Plano Contas - Balanço de Período - Original Emissão');
  trv.Items.AddChild(no1, '634 - Plano Contas - Balanço de Período - Original Vencimento');
  trv.Items.AddChild(no1, '635 - Plano Contas - Balanço de Período - Saldo');
  trv.Items.AddChild(no1, '636 - Plano Contas - Balanço de Período - Baixa');
  trv.Items.AddChild(no1, 'Plano Contas - Diário');
  trv.Items.AddChild(no1, '515 - Plano Contas - Razão por Data de Baixa');
  trv.Items.AddChild(no1, '514 - Plano Contas - Razão por Data de Emissão');
  trv.Items.AddChild(no1, '513 - Plano Contas - Razão por Data de Emissão com Produtos');
  trv.Items.AddChild(no1, '071 - Plano Contas - Razão por Data de Vencimento com Produtos');
  trv.Items.AddChild(no1, '519 - Plano Contas - Razão por Data de Baixa com Produtos');
  trv.Items.AddChild(no1, '512 - Plano Contas - Razão por Data de Vencimento');
  trv.Items.AddChild(no1, '556 - Plano Contas X Centro Custo por Baixa');
  trv.Items.AddChild(no1, '555 - Plano Contas X Centro Custo por Emissão');
  trv.Items.AddChild(no1, '557 - Plano Contas X Centro Custo por Vencimento');
  trv.Items.AddChild(no1, '307 - Posição de Saldo de Adiantamento de Cliente');
  trv.Items.AddChild(no1, 'Referência Cruzada - Fornecedor versus Centro de Custo');
  trv.Items.AddChild(no1, 'Referência Cruzada - Plano de Contas versus Centro de Custo');
  trv.Items.AddChild(no1, '499 - Saldo Conta');
  trv.Items.AddChild(no1, '27 - Sintético');
  trv.Items.AddChild(no1, '552 - Sintético Adiantamento Cliente');
  trv.Items.AddChild(no1, '554 - Sintético Adiantamento Fornecedor');
  no1 := trv.Items.AddChild(nil, Maiuscula(__Funcao));
  trv.Items.AddChild(no1, 'Recalcular Saldo Adiantamento Cliente');
  trv.Items.AddChild(no1, 'Excluir Plano Contas Repetido');
  no1 := trv.Items.AddChild(nil, Maiuscula(_Exportar));
  trv.Items.AddChild(no1, 'Movimentação Financeira');
end;

procedure TfrmConsultaMovBancario.FormCreate(Sender: TObject);
begin
  set_treeview;
end;

end.
