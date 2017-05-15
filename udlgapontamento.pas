unit udlgapontamento;

interface

uses
  System.Actions, System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ActnList, ComCtrls, StdCtrls,
  DB,
  ulocalizarFuncionario, ulocalizarproduto, ulocalizar, udatahora, udlgLista,
  ustrings, uDtmMain, uregistro, uconstantes,
  classeapontamento, classeregistrainformacao, classegerar, classefuncionario,
  classeequipamento, classeexecutasql, classeempresa, ClasseFormulacao,
  classeaplicacao, classeproduto, classeretornasql, classequery, classeturma,
  classeordproducao,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, cxButtons, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxBevel, cxContainer, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc, cxButtonEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, cxSpinEdit, cxTimeEdit, dxCore,
  cxDateUtils, cxCalendar, cxMemo;

type
  Tfrmdlgapontamento = class(TForm)
    pnlok: TPanel;
    btnok: TcxButton;
    btncancelar: TcxButton;
    pnlproduto: TPanel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    lblconsumo: TcxLabel;
    pnldados: TPanel;
    lblqttemperatura: TLabel;
    lblqtvibracao: TLabel;
    edtqttemperatura: TcxCalcEdit;
    edtqtvibracao: TcxCalcEdit;
    pnltemporizador: TPanel;
    lbltemporizador: TcxLabel;
    pnl: TcxLabel;
    act: TActionList;
    acttemporizador: TAction;
    tmr: TTimer;
    tbvCDPRODUTO: TcxGridDBColumn;
    tbvNMPRODUTO: TcxGridDBColumn;
    tbvNMUNIDADE: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    dts: TDataSource;
    lblduracao: TLabel;
    lblfim: TLabel;
    lblinicio: TLabel;
    pnlfuncionario: TPanel;
    lblfuncionario: TcxLabel;
    tbvfuncionario: TcxGridDBTableView;
    grdfuncionarioLevel1: TcxGridLevel;
    grdfuncionario: TcxGrid;
    tbvfuncionarioCDFUNCIONARIO: TcxGridDBColumn;
    tbvfuncionarioNMFUNCIONARIO: TcxGridDBColumn;
    cxButton1: TcxButton;
    actinserirfuncionario: TAction;
    actexcluirfuncionario: TAction;
    actinserirproduto: TAction;
    actexcluirproduto: TAction;
    cxButton2: TcxButton;
    btnexcluirproduto: TcxButton;
    btninserirproduto: TcxButton;
    dtsfuncionario: TDataSource;
    cxButton5: TcxButton;
    actinserirturma: TAction;
    edtcdfuncionario: TcxButtonEdit;
    edtcdproduto: TcxButtonEdit;
    lblnmfuncionario: TLabel;
    lblnmproduto: TLabel;
    bvlfuncionario: TdxBevel;
    dxBevel2: TdxBevel;
    pnlequipamento: TPanel;
    lblequipamento: TcxLabel;
    cbxcdequipamento: TcxLookupComboBox;
    actfinalizar: TAction;
    lblcdpesagem: TLabel;
    edtqtcomprimento: TcxTextEdit;
    lblqtcomprimento: TLabel;
    ckbboreaproveitar: TcxCheckBox;
    ckbmanual: TcxCheckBox;
    edthrduracao: TcxTimeEdit;
    ckbbaixaestoque: TcxCheckBox;
    lblnmequipamento: TLabel;
    lblratear: TcxLabel;
    actratear: TAction;
    edtcdpesagem: TcxSpinEdit;
    edtqtmistura: TcxCalcEdit;
    lblpsmistura: TLabel;
    edtpsmistura: TcxCalcEdit;
    lblqtmistura: TLabel;
    tbvQTFORMULACAO: TcxGridDBColumn;
    tbvQTFAIXAI: TcxGridDBColumn;
    tbvQTFAIXAF: TcxGridDBColumn;
    edtqtproducao: TcxCalcEdit;
    lblqtproducao: TLabel;
    lblqtrefugo: TLabel;
    edtqtrefugo: TcxCalcEdit;
    actativarmanual: TAction;
    pnldsobservacao: TPanel;
    memdsobservacao: TcxMemo;
    lbldsobservacao: TLabel;
    lblnuestrutural: TLabel;
    edtnuestrutural: TcxTextEdit;
    actativarreaproveitar: TAction;
    edtdtinicio: TcxDateEdit;
    edthrinicio: TcxTimeEdit;
    edtdtfim: TcxDateEdit;
    edthrfim: TcxTimeEdit;
    lblqtpeca: TLabel;
    edtqtpeca: TcxCalcEdit;
    procedure btnokClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure acttemporizadorExecute(Sender: TObject);
    procedure tmrTimer(Sender: TObject);
    procedure actinserirfuncionarioExecute(Sender: TObject);
    procedure actexcluirfuncionarioExecute(Sender: TObject);
    procedure actexcluirprodutoExecute(Sender: TObject);
    procedure actinserirprodutoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actinserirturmaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actfinalizarExecute(Sender: TObject);
    procedure ckbmanualClick(Sender: TObject);
    procedure actratearExecute(Sender: TObject);
    procedure actativarmanualExecute(Sender: TObject);
    procedure actativarreaproveitarExecute(Sender: TObject);
    procedure edtqtpecaExit(Sender: TObject);
    procedure edtqtproducaoExit(Sender: TObject);
  private { Private declarations }
    mtbfuncionario : TDataClient;
    mtb : TDataClient;
    Turma : TTurma;
    equipamento : TEquipamento;
    funcionario : TFuncionario;
    apontamento : TApontamento;
    produto     : TProduto;
    itordproducaorecurso : TItOrdProducaoRecurso;
    itordproducaorecursoList : TItOrdProducaoRecursoList;
    cdapontamento : integer;
    cdequipamento : integer;
    boencerrar_etapa, boexiste_apontamento : boolean;
    procedure check_equipamento_obrigatorio;
    procedure finalizar_apontamento;
    function  get_cdequipamento:integer;
    function  inserir_apontamento(cdfuncionario:integer):string;
    procedure inserir_funcionario(cdfuncionario:string);
    procedure inserir_produto(cdproduto:Integer);
    function  Insert_Update_apontamento(codigo:integer; tsinicio, tsfim: TDatetime):string;
    function  makesql_localizar_funcionario:string;
    procedure set_componentes_temporizador(bostatus:boolean);
    procedure set_encerrar_etapa;
    procedure configurar_tela;
    procedure Carregar_Produto;
    procedure Carregar_apontamento_aberto;
    procedure Get_qtpeca_qtitem(var qtitem : Double; var qtpeca : Double);
    procedure CriarFieldsFuncionario;
    procedure CriarFieldsApontamento;
  public { Public declarations }
  end;

function dlgApontamento(cditordproducaorecurso: integer):boolean;

implementation

{$R *.dfm}

var
  frmdlgapontamento: Tfrmdlgapontamento;

function dlgApontamento(cditordproducaorecurso: integer):boolean;
begin
  result            := false;
  frmdlgapontamento := Tfrmdlgapontamento.create(nil);
  try
    frmdlgapontamento.itordproducaorecurso.select(cditordproducaorecurso);
    frmdlgapontamento.showmodal;
    if frmdlgapontamento.ModalResult = mrok then
    begin
      frmdlgapontamento.apontamento.executarBaixaEstoque;
      result := true;
    end;
  finally
    FreeAndNil(frmdlgapontamento);
  end;
end;

procedure Tfrmdlgapontamento.FormCreate(Sender: TObject);
begin
  mtbfuncionario := tdataclient.create;
  dtsfuncionario.dataset := mtbfuncionario.m;
  CriarFieldsFuncionario;
  mtb := tdataclient.create;
  dts.dataset := mtb.m;
  CriarFieldsApontamento;
  cdapontamento            := 0;
  apontamento              := TApontamento.Create;
  equipamento              := tequipamento.create;
  funcionario              := tfuncionario.create;
  produto                  := TProduto.create;
  Turma                    := TTurma.create;
  itordproducaorecurso     := titordproducaorecurso.create;
  itordproducaorecursolist := titordproducaorecursolist.create;
  lbltemporizador.caption  := acttemporizador.Caption;
end;

procedure Tfrmdlgapontamento.FormDestroy(Sender: TObject);
begin
  freeandnil(mtb);
  freeandnil(mtbfuncionario);
  freeandnil(equipamento);
  freeandnil(produto);
  freeandnil(funcionario);
  freeandnil(apontamento);
  freeandnil(turma);
  freeandnil(itordproducaorecurso);
  freeandnil(itordproducaorecursolist);
end;

procedure Tfrmdlgapontamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdlgapontamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdlgapontamento.actexcluirfuncionarioExecute(Sender: TObject);
begin
  if mtbfuncionario.m.recordcount > 0 then
  begin
    mtbfuncionario.m.Delete;
  end;
end;

procedure Tfrmdlgapontamento.actexcluirprodutoExecute(Sender: TObject);
begin
  if mtb.m.recordcount > 0 then
  begin
    mtb.m.delete;
  end;
end;

procedure Tfrmdlgapontamento.actativarmanualExecute(Sender: TObject);
begin
  ckbmanual.Checked := not ckbmanual.Checked;
end;

procedure Tfrmdlgapontamento.actativarreaproveitarExecute(Sender: TObject);
begin
  ckbboreaproveitar.Checked := not ckbboreaproveitar.Checked;
end;

procedure Tfrmdlgapontamento.Carregar_Produto;
  function makesqlwhere:string;
  begin
    Result := 'cdtpequipamento='+inttostr(itordproducaorecurso.cdtpequipamento)+' and cdordproducao='+inttostr(itordproducaorecurso.cdordproducao);
    if itordproducaorecurso.cdformulacao <> 0 then
    begin
      result := result + ' and cdformulacao='+inttostr(itordproducaorecurso.cdformulacao);
    end;
  end;
var
  itordproducaomaterialList : TItOrdProducaoMaterialList;
  itformulacao : TITFormulacao;
  i : Integer;
begin
  itordproducaomaterialList := TItOrdProducaoMaterialList.Create;
  itformulacao := TITFormulacao.create;
  try
    mtb.m.open;
    itordproducaorecursoList.Ler(makesqlwhere);
    itordproducaomaterialList.Ler(makesqlwhere);
    for i := 0 to itordproducaomaterialList.Count - 1 do
    begin
      itordproducaomaterialList.Items[i].movto.Ler(_cditordproducaomaterial, itordproducaomaterialList.Items[i].cditordproducaomaterial);
      if itordproducaomaterialList.Items[i].movto.Count > 0 then
      begin
        Continue;
      end;
      mtb.m.Insert;
      mtb.m.fieldbyname(_CDITORDPRODUCAOMATERIAL).AsInteger := itordproducaomaterialList.Items[i].cditordproducaomaterial;
      mtb.m.fieldbyname(_CDPRODUTO).AsInteger               := itordproducaomaterialList.Items[i].cdproduto;
      itordproducaomaterialList.Items[i].produto.Select(itordproducaomaterialList.Items[i].cdproduto);
      mtb.m.fieldbyname(_NMPRODUTO).asstring                := itordproducaomaterialList.Items[i].produto.nmproduto;
      mtb.m.fieldbyname(_NMUNIDADE).AsString                := qregistro.nomedocodigo(_unidade, itordproducaomaterialList.Items[i].produto.cdunidade);
      if itformulacao.select('cdempresa='+itordproducaomaterialList.Items[i].cdempresa.tostring+' '+
                             'and cdformulacao='+inttostr(itordproducaomaterialList.Items[i].cdformulacao)+' '+
                             'and cdproduto='+inttostr(itordproducaomaterialList.Items[i].cdproduto)) then
      begin
        mtb.m.fieldbyname(_QTFORMULACAO).AsFloat              := itformulacao.qtitem;
      end;
      mtb.m.fieldbyname(_QTFAIXAI).AsFloat                  := itordproducaomaterialList.Items[i].qtfaixai;
      mtb.m.fieldbyname(_QTFAIXAF).AsFloat                  := itordproducaomaterialList.Items[i].qtfaixaf;
      mtb.m.fieldbyname(_QTITEM).AsFloat                    := 0;
      if (equipamento.tpequipamento.bobaixaestoqueautomatico = _s )then
      begin
        mtb.m.fieldbyname(_QTITEM).AsFloat := itordproducaomaterialList.Items[i].qtitem;
      end;
      mtb.m.post;
    end;
  finally
    freeandnil(itordproducaomaterialList);
    FreeAndNil(itformulacao);
  end;
end;

procedure Tfrmdlgapontamento.configurar_tela;
begin
  cbxcdequipamento.Properties.ListSource := abrir_tabela(_equipamentoapontamento, inttostr(itordproducaorecurso.cdtpequipamento), _cdtpequipamento);
  equipamento.tpequipamento.Select(itordproducaorecurso.cdtpequipamento);
  pnl.caption              := 'Apontamento da Ordem de Produção '+inttostr(itordproducaorecurso.cdordproducao)+' na Etapa '+equipamento.tpequipamento.nmtpequipamento;
  cbxcdequipamento.Visible := equipamento.tpequipamento.boequipamentoanterior <> _s;
  lblequipamento.Visible   := equipamento.tpequipamento.boequipamentoanterior <> _s;

  cdequipamento            := itordproducaorecurso.getCdequipamentoAnterior(equipamento.tpequipamento.boequipamentoanterior= _s);
  lblnmequipamento.Caption := nomedocodigo(_equipamento, inttostr(cdequipamento));

  edtdtfim.Visible         := equipamento.tpequipamento.bomanualdataunica = _s;
  pnltemporizador.visible  := equipamento.tpequipamento.boapontamentotempo = _s;
  lblfuncionario.Visible   := equipamento.tpequipamento.boapontamentotempo = _s;
  edtcdfuncionario.Visible := equipamento.tpequipamento.boapontamentotempo = _s;
  bvlfuncionario.Visible   := equipamento.tpequipamento.boapontamentotempo = _s;
  if edtcdfuncionario.Visible and (edtcdfuncionario.Text = '') then
  begin
    edtcdfuncionario.Text := IntToStr(equipamento.tpequipamento.cdfuncionario);
    edtcdfuncionarioExit(edtcdfuncionario);
  end;

  pnlproduto.visible := equipamento.tpequipamento.bobaixaestoque = _s;
  if pnlproduto.Visible and (not pnltemporizador.visible) then
  begin
    ckbbaixaestoque.Checked := True;
  end;
  if equipamento.tpequipamento.bobaixaestoque = _s then
  begin
    Carregar_Produto;
  end;
  
  pnldados.visible         := equipamento.tpequipamento.get_visualizar_dados;
  lblqtvibracao.visible    := equipamento.tpequipamento.bovibracao = _s;
  edtqtvibracao.visible    := equipamento.tpequipamento.bovibracao = _s;
  lblqttemperatura.visible := equipamento.tpequipamento.botemperatura = _s;
  edtqttemperatura.visible := equipamento.tpequipamento.botemperatura = _s;
  lblqtmistura.visible     := equipamento.tpequipamento.boqtmistura = _s;
  edtqtmistura.visible     := equipamento.tpequipamento.boqtmistura = _s;
  lblpsmistura.visible     := equipamento.tpequipamento.bopsmistura = _s;
  edtpsmistura.visible     := equipamento.tpequipamento.bopsmistura = _s;
  pnldsobservacao.Visible  := equipamento.tpequipamento.bodsobservacao = _s;
  lblqtproducao.Visible    := equipamento.tpequipamento.boqtproducao = _s;
  edtqtproducao.Visible    := equipamento.tpequipamento.boqtproducao = _s;
  lblqtpeca.Visible        := equipamento.tpequipamento.boqtpeca = _s;
  edtqtpeca.Visible        := equipamento.tpequipamento.boqtpeca = _s;

  if (equipamento.tpequipamento.boqtproducao = _s) and (equipamento.tpequipamento.boqtproducaopreenchida = _s) then
  begin
    edtqtproducao.Value   := ValordoCodigo(_ordproducao, inttostr(itordproducaorecurso.cdordproducao), _qtitem);
    edtqtproducao.enabled := False;
  end;

  lblqtrefugo.Visible           := equipamento.tpequipamento.boqtrefugo = _s;
  edtqtrefugo.Visible           := equipamento.tpequipamento.boqtrefugo = _s;
  lblcdpesagem.Visible          := equipamento.tpequipamento.bopesagem = _s;
  edtcdpesagem.Visible          := equipamento.tpequipamento.bopesagem = _s;
  lblqtcomprimento.visible      := equipamento.tpequipamento.bocomprimento = _s;
  edtqtcomprimento.visible      := equipamento.tpequipamento.bocomprimento = _s;
  lblnuestrutural.Visible       := equipamento.tpequipamento.bonuestrutural = _s;
  edtnuestrutural.Visible       := equipamento.tpequipamento.bonuestrutural = _s;
  ckbboreaproveitar.visible     := equipamento.tpequipamento.boreaproveitar = _s;
  actativarreaproveitar.Enabled := ckbboreaproveitar.Visible;

  actinserirfuncionario.visible := (equipamento.tpequipamento.boapontamentoturma  = _s) and (equipamento.tpequipamento.boapontamentotempo = _s);
  actexcluirfuncionario.visible := (equipamento.tpequipamento.boapontamentoturma  = _s) and (equipamento.tpequipamento.boapontamentotempo = _s);
  actinserirturma.visible       := (equipamento.tpequipamento.boapontamentoturma  = _s) and (equipamento.tpequipamento.boapontamentotempo = _s);
  grdfuncionario.visible        := (equipamento.tpequipamento.boapontamentoturma  = _s) and (equipamento.tpequipamento.boapontamentotempo = _s);
  if equipamento.tpequipamento.boapontamentoturma <> _s then
  begin
    pnlfuncionario.Height := 23;
  end;

  tbvQTFORMULACAO.Visible := equipamento.tpequipamento.boreferenciaformulacao = _s;
  tbvQTFAIXAI.Visible     := equipamento.tpequipamento.bofaixa = _s;
  tbvQTFAIXAF.Visible     := equipamento.tpequipamento.bofaixa = _s;
end;

procedure Tfrmdlgapontamento.CriarFieldsApontamento;
begin
  mtb.m.FieldDefs.Clear;
  mtb.m.FieldDefs.Add(_cdproduto, ftInteger);
  mtb.m.FieldDefs.Add(_cditordproducaomaterial, ftInteger);
  mtb.m.FieldDefs.Add(_nmproduto, ftstring, 250);
  mtb.m.FieldDefs.Add(_nmunidade, ftstring, 100);
  mtb.m.FieldDefs.Add(_qtitem, ftfloat);
  mtb.m.FieldDefs.Add(_qtformulacao, ftfloat);
  mtb.m.FieldDefs.Add(_qtfaixai, ftfloat);
  mtb.m.FieldDefs.Add(_qtfaixaf, ftfloat);
  mtb.m.CreateDataSet;
end;

procedure Tfrmdlgapontamento.CriarFieldsFuncionario;
begin
  mtbfuncionario.m.FieldDefs.Clear;
  mtbfuncionario.m.FieldDefs.Add(_cdfuncionario, ftInteger);
  mtbfuncionario.m.FieldDefs.Add(_cdapontamento, ftInteger);
  mtbfuncionario.m.FieldDefs.Add(_nmfuncionario, ftstring, 100);
  mtbfuncionario.m.CreateDataSet;
end;

procedure Tfrmdlgapontamento.actinserirfuncionarioExecute(Sender: TObject);
var
  cdfuncionario : string;
begin
  cdfuncionario := Localizar(_funcionario, Maiuscula(__funcionario), makesql_localizar_funcionario);
  if cdfuncionario = '' then
  begin
    Exit;
  end;
  if equipamento.tpequipamento.boapontamentoturma = _s then
  begin
    if mtbfuncionario.m.Locate(_cdfuncionario, cdfuncionario, []) then
    begin
      exit;
    end;
    inserir_funcionario(cdfuncionario);
    exit;
  end;
  edtcdfuncionario.text    := cdfuncionario;
  lblnmfuncionario.caption := NomedoCodigo(_funcionario, cdfuncionario);
end;

procedure Tfrmdlgapontamento.actinserirprodutoExecute(Sender: TObject);
var
  cdproduto : integer;
begin
  cdproduto := Localizarproduto;
  if (cdproduto = 0) or mtb.m.Locate(_cdproduto, cdproduto, []) then
  begin
    exit;
  end;
  inserir_produto(cdproduto);
end;

procedure Tfrmdlgapontamento.actinserirturmaExecute(Sender: TObject);
var
  cd : integer;
  i : integer;
begin
  cd := Localizar(_turma);
  if cd = 0 then
  begin
    exit;
  end;
  turma.Funcionario.Ler(_cdturma, cd);
  for i := 0 to turma.Funcionario.Count - 1 do
  begin
    inserir_funcionario(inttostr(turma.funcionario.Items[i].cdfuncionario));
  end;
end;

procedure Tfrmdlgapontamento.inserir_funcionario(cdfuncionario: string);
begin
  mtbfuncionario.m.insert;
  mtbfuncionario.m.fieldbyname(_CDFUNCIONARIO).asstring := cdfuncionario;
  mtbfuncionario.m.fieldbyname(_NMFUNCIONARIO).AsString := nomedocodigo(_funcionario, cdfuncionario);
  mtbfuncionario.m.post;
end;

procedure Tfrmdlgapontamento.inserir_produto(cdproduto: Integer);
begin
  produto.Select(cdproduto);
  mtb.m.insert;
  mtb.m.fieldbyname(_CDPRODUTO).AsInteger := produto.cdproduto;
  mtb.m.fieldbyname(_NMPRODUTO).AsString  := produto.nmproduto;
  mtb.m.fieldbyname(_NMUNIDADE).AsString  := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  mtb.m.fieldbyname(_QTITEM).AsFloat      := 0;
end;

function Tfrmdlgapontamento.makesql_localizar_funcionario: string;
begin
  result := 'select cdfuncionario'+
                  ',nmfuncionario '+
            'from funcionario f '+
            'left join funcao fu on fu.cdempresa=f.cdempresa and fu.cdfuncao=f.cdfuncao '+
            'where f.cdempresa='+empresa.cdempresa.tostring+' and fu.boapontamento=''S''';
end;

procedure Tfrmdlgapontamento.set_componentes_temporizador(bostatus: boolean);
begin
  lblinicio.visible             := bostatus;
  lblfim.visible                := bostatus;
  lblduracao.visible            := bostatus;
  if equipamento.tpequipamento.bomanualdataunica = _s then
  begin
    edtdtfim.Visible              := bostatus;
  end;
  edthrfim.Visible              := bostatus;
  edtdtinicio.Visible           := bostatus;
  edthrinicio.Visible           := bostatus;
  edthrduracao.visible          := bostatus;
  ckbmanual.Visible             := bostatus;
  actativarmanual.Enabled       := ckbmanual.Visible;
  actativarreaproveitar.Enabled := ckbboreaproveitar.Visible;
  actinserirfuncionario.enabled := not bostatus;
  actexcluirfuncionario.enabled := not bostatus;
  actinserirturma.enabled       := not bostatus;
  cbxcdequipamento.enabled      := not bostatus;
  edtcdfuncionario.enabled      := not bostatus;
  edtqtcomprimento.enabled      := not bostatus;
  ckbboreaproveitar.enabled     := not bostatus;
  edtcdpesagem.enabled          := not bostatus;
  edtcdproduto.enabled          := not bostatus;
  actinserirproduto.enabled     := not bostatus;
  actexcluirproduto.Enabled     := not bostatus;
  btncancelar.enabled           := not bostatus;
  actratear.Enabled             := bostatus;
  actratear.Visible             := bostatus;
  lblratear.Visible             := bostatus;
end;

procedure Tfrmdlgapontamento.set_encerrar_etapa;
begin
  boencerrar_etapa := messagedlg('Encerrar a etapa '+nomedocodigo(_tpequipamento, inttostr(itordproducaorecurso.cdtpequipamento))+'?', mtconfirmation, [mbyes, mbno], 0) = mryes;
end;

procedure Tfrmdlgapontamento.btncancelarClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tfrmdlgapontamento.ckbmanualClick(Sender: TObject);
begin
  edtdtinicio.Enabled  := ckbmanual.Checked;
  edthrinicio.Enabled  := ckbmanual.Checked;
  edtdtfim.Enabled     := ckbmanual.Checked;
  edthrfim.Enabled     := ckbmanual.Checked;;
  lblduracao.visible   := not ckbmanual.Checked;
  edthrduracao.Visible := not ckbmanual.Checked;
  if ckbmanual.checked then
  begin
    edtdtinicio.setfocus;
  end;
end;

procedure Tfrmdlgapontamento.edtcdfuncionarioExit(Sender: TObject);
begin
  if edtcdfuncionario.text = '' then
  begin
    lblnmfuncionario.caption := '';
    colorexit(sender);
    exit;
  end;
  if not funcionario.Select(strtoint(edtcdfuncionario.text)) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdfuncionario.text, maiuscula(__funcionario)]), mterror, [mbok], 0);
    edtcdfuncionario.setfocus;
    abort;
  end;
  apontamento.checkFuncionarioApontamento(edtcdfuncionario.Text);
  if equipamento.tpequipamento.boapontamentoturma = _s then
  begin
    inserir_funcionario(edtcdfuncionario.text);
    lblnmfuncionario.Caption := '';
    edtcdfuncionario.clear;
  end
  else
  begin
    lblnmfuncionario.caption := funcionario.nmfuncionario;
  end;
  colorexit(sender);
end;

procedure Tfrmdlgapontamento.edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmdlgapontamento.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : string;
begin
  cd := Localizar(_funcionario, Maiuscula(__funcionario), makesql_localizar_funcionario);
  if cd = '' then
  begin
    exit;
  end;
  edtcdfuncionario.text    := cd;
  lblnmfuncionario.caption := nomedocodigo(_funcionario, cd);
end;

procedure Tfrmdlgapontamento.edtcdprodutoExit(Sender: TObject);
begin
  if edtcdproduto.text = '' then
  begin
    lblnmproduto.caption := '';
    colorexit(sender);
    exit;
  end;
  if not codigoexiste(_produto, edtcdproduto.text) then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [edtcdproduto.text, maiuscula(_produto)]), mterror, [mbok], 0);
    edtcdproduto.setfocus;
    abort;
  end;
  inserir_produto(StrToInt(edtcdproduto.text));
  edtcdproduto.clear;
  lblnmproduto.caption := '';
  colorexit(sender);
end;

procedure Tfrmdlgapontamento.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure Tfrmdlgapontamento.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := cd.ToString;
  lblnmproduto.caption := qregistro.nomedocodigo(_produto, cd);
end;

procedure Tfrmdlgapontamento.check_equipamento_obrigatorio;
begin
  if cbxcdequipamento.text = '' then
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [_Recurso]), mtinformation, [mbok], 0);
    cbxcdequipamento.SetFocus;
    abort;
  end;
end;

function Tfrmdlgapontamento.get_cdequipamento:integer;
begin
  if cdequipamento <> 0 then
  begin
    result := cdequipamento;
    exit;
  end;
  result := cbxcdequipamento.EditValue;
end;

procedure Tfrmdlgapontamento.Get_qtpeca_qtitem(var qtitem : Double; var qtpeca : Double);
  function makesql:string;
  begin
    result := 'select ordproducao.cditpedido'+
                    ',itpedido.qtlargura1'+
                    ',itpedido.qtaltura1'+
                    ',itpedido.qtcomprimento1'+
                    ',unidade.nmunidade '+
              'from ordproducao '+
              'inner join itpedido on itpedido.cdempresa=ordproducao.cdempresa and itpedido.cditpedido=ordproducao.cditpedido '+
              'inner join produto on produto.cdempresa=itpedido.cdempresa and produto.cdproduto=itpedido.cdproduto '+
              'inner join unidade on unidade.cdempresa=produto.cdempresa and unidade.cdunidade=produto.cdunidade '+
              'where ordproducao.cdempresa='+itordproducaorecurso.cdempresa.tostring+' and ordproducao.cdordproducao='+inttostr(itordproducaorecurso.cdordproducao);
  end;
var
  q : Tclassequery;
begin
  if (qtitem = 0) and (qtpeca = 0) then
  begin
    Exit;
  end;
  q := TClasseQuery.create(makesql);
  try
    if q.q.FieldByName(_cditpedido).IsNull then
    begin
      Exit;
    end;
    if qtitem = 0 then
    begin
           if q.q.FieldByName(_NMUNIDADE).AsString = 'ML' then qtitem := q.q.FieldByName(_QTCOMPRIMENTO1).AsFloat * qtpeca
      else if q.q.FieldByName(_NMUNIDADE).AsString = 'M2' then qtitem := q.q.FieldByName(_QTLARGURA1).AsFloat     * q.q.FieldByName(_QTCOMPRIMENTO1).AsFloat * qtpeca
      else if q.q.FieldByName(_NMUNIDADE).AsString = 'M3' then qtitem := q.q.FieldByName(_QTLARGURA1).AsFloat     * q.q.FieldByName(_QTCOMPRIMENTO1).AsFloat * q.q.FieldByName(_QTALTURA1).AsFloat * qtpeca;
    end
    else
    begin
           if q.q.FieldByName(_NMUNIDADE).AsString = 'M3' then qtpeca := qtitem / q.q.FieldByName(_QTLARGURA1).AsFloat / q.q.FieldByName(_QTCOMPRIMENTO1).AsFloat / q.q.FieldByName(_QTALTURA1).AsFloat
      else if q.q.FieldByName(_NMUNIDADE).AsString = 'ML' then qtpeca := qtitem / q.q.FieldByName(_QTCOMPRIMENTO1).AsFloat
      else if q.q.FieldByName(_NMUNIDADE).AsString = 'M2' then qtpeca := qtitem / q.q.FieldByName(_QTLARGURA1).AsFloat / q.q.FieldByName(_QTCOMPRIMENTO1).AsFloat;
    end;
  finally
    FreeAndNil(q);
  end
end;

procedure Tfrmdlgapontamento.edtqtpecaExit(Sender: TObject);
var
  qtpeca, qtitem : Double;
begin
  qtitem := 0;
  qtpeca := edtqtpeca.Value;
  Get_qtpeca_qtitem(qtitem, qtpeca);
  edtqtproducao.Value := qtitem;
end;

procedure Tfrmdlgapontamento.edtqtproducaoExit(Sender: TObject);
var
  qtpeca, qtitem : Double;
begin
  qtpeca := 0;
  qtitem := edtqtproducao.Value;
  Get_qtpeca_qtitem(qtitem, qtpeca);
  edtqtpeca.Value := qtpeca;
end;

procedure Tfrmdlgapontamento.FormShow(Sender: TObject);
begin
  configurar_tela;
  SendMessage(cbxcdequipamento.Handle, WM_KEYDOWN, VK_DOWN, 0);
  Carregar_apontamento_aberto;
end;

procedure Tfrmdlgapontamento.Carregar_apontamento_aberto;
var
  i : integer;
begin
  itordproducaorecurso.apontamento.Ler('cdstapontamento=1 and cditordproducaorecurso='+inttostr(itordproducaorecurso.cditordproducaorecurso)); // tem a condição do status 1 para a leitura
  boexiste_apontamento := itordproducaorecurso.apontamento.count > 0;
  if not boexiste_apontamento then
  begin
    Exit;
  end;

  cdapontamento := itordproducaorecurso.apontamento.Items[0].cdapontamento;
  if equipamento.tpequipamento.boequipamentoanterior = _s then
  begin
    cdequipamento            := itordproducaorecurso.apontamento.Items[0].cdequipamento;
    lblnmequipamento.Caption := nomedocodigo(_equipamento, inttostr(cdequipamento));
  end
  else
  begin
    cdequipamento              := 0;
    cbxcdequipamento.editvalue := inttostr(itordproducaorecurso.apontamento.Items[0].cdequipamento);
  end;
  edtdtinicio.Date     := itordproducaorecurso.apontamento.Items[0].tsinicio;
  edthrinicio.Time     := itordproducaorecurso.apontamento.Items[0].tsinicio;
  edtdtfim.Date        := itordproducaorecurso.apontamento.Items[0].tsfim;
  edthrfim.Time        := itordproducaorecurso.apontamento.Items[0].tsfim;
  edtqtrefugo.Value    := itordproducaorecurso.apontamento.Items[0].qtrefugo;
  edtqtproducao.Value  := itordproducaorecurso.apontamento.Items[0].qtproducao;
  edtqtpeca.Value      := itordproducaorecurso.apontamento.Items[0].qtpeca;
  memdsobservacao.Text := itordproducaorecurso.apontamento.Items[0].dsobservacao;
  if itordproducaorecurso.apontamento.Count = 1 then
  begin
    edtcdfuncionario.text := inttostr(itordproducaorecurso.apontamento.Items[0].cdfuncionario);
  end;

  if (equipamento.tpequipamento.boapontamentoturma = _s) and (equipamento.tpequipamento.boapontamentotempo = _s) then
  begin
    mtbfuncionario.m.open;
    for i := 0 to itordproducaorecurso.apontamento.count - 1 do
    begin
      mtbfuncionario.m.Insert;
      mtbfuncionario.m.fieldbyname(_cdapontamento).AsInteger := itordproducaorecurso.apontamento.Items[i].cdapontamento;
      mtbfuncionario.m.fieldbyname(_cdfuncionario).AsInteger := itordproducaorecurso.apontamento.Items[i].cdfuncionario;
      mtbfuncionario.m.fieldbyname(_nmfuncionario).AsString  := nomedocodigo(_funcionario, inttostr(itordproducaorecurso.apontamento.Items[i].cdfuncionario));
      mtbfuncionario.m.post;
    end;
  end;

  if equipamento.tpequipamento.boapontamentotempo = _s then
  begin
    acttemporizadorExecute(acttemporizador);
  end;
end;

procedure Tfrmdlgapontamento.tmrTimer(Sender: TObject);
  procedure Atualizar_apontamento;
  begin
    itordproducaorecurso.IniciarExecucao;
    itordproducaorecurso.update;
    if equipamento.tpequipamento.boapontamentoturma <> _s then // nao eh apontmento de turma
    begin
      ExecutaSQL(inserir_apontamento(strtoint(edtcdfuncionario.text)));
      exit;
    end;
    mtbfuncionario.m.First; // inserir apontamento para todos os funcionarios da lista
    while not mtbfuncionario.m.eof do
    begin
      ExecutaSQL(inserir_apontamento(mtbfuncionario.m.fieldbyname(_CDFUNCIONARIO).AsInteger));
      mtbfuncionario.m.Edit;
      mtbfuncionario.m.fieldbyname(_cdapontamento).AsInteger := cdapontamento;
      mtbfuncionario.m.Post;
      mtbfuncionario.m.Next;
    end;
  end;
begin
  if not ckbmanual.Checked then
  begin
    edtdtfim.Date     := DtBanco;
    edthrfim.Time     := HrBanco;
    edthrduracao.Time := (edtdtfim.date+edthrfim.Time) - (edtdtinicio.date+edthrinicio.Time);
  end;
  if cdapontamento = 0 then
  begin
    atualizar_apontamento;
  end;
end;

procedure Tfrmdlgapontamento.actfinalizarExecute(Sender: TObject);
begin
  if not tmr.enabled then
  begin
    exit;
  end;
  set_encerrar_etapa;
  tmr.enabled                   := false;
  ckbmanual.Visible             := false;
  actativarmanual.Enabled       := ckbmanual.Visible;
  actativarreaproveitar.Enabled := ckbboreaproveitar.Visible;
  lbltemporizador.caption       := acttemporizador.Caption;
  set_componentes_temporizador(tmr.enabled);
  finalizar_apontamento;
  if boencerrar_etapa then
  begin
    btnokClick(btnok);
  end;
end;

procedure Tfrmdlgapontamento.actratearExecute(Sender: TObject);
begin
  Ratear_ordProducao(itordproducaorecurso.cdtpequipamento, itordproducaorecursoList);
end;

procedure Tfrmdlgapontamento.acttemporizadorExecute(Sender: TObject);
begin
  if tmr.enabled then
  begin
    exit;
  end;
  check_equipamento_obrigatorio;
  if ((equipamento.tpequipamento.boapontamentoturma = _s)and (mtbfuncionario.m.recordcount = 0)) or ((equipamento.tpequipamento.boapontamentoturma <> _s) and (edtcdfuncionario.Text = '')) then // Se_funcionario_preenchido
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [__funcionario]), mtinformation, [mbok], 0);
    actinserirfuncionarioExecute(actinserirfuncionario);
    abort;
  end;
  tmr.enabled             := true;
  ckbmanual.Visible       := true;
  actativarmanual.Enabled := True;
  lbltemporizador.caption := actfinalizar.Caption;
  if not boexiste_apontamento then
  begin
    edtdtinicio.Date := DtBanco;
    edthrinicio.Time := HrBanco;
    edtdtfim.Date    := DtBanco;
    edthrfim.Time    := HrBanco;
  end;
  set_componentes_temporizador(tmr.enabled);
end;

procedure Tfrmdlgapontamento.btnokClick(Sender: TObject);
begin
  check_equipamento_obrigatorio;
  if equipamento.tpequipamento.boapontamentoturma = _s then // //check_funcionario_obrigatorio
  begin
    if mtbfuncionario.m.RecordCount = 0 then
    begin
      messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [__funcionario]), mtinformation, [mbok], 0);
      edtcdfuncionario.SetFocus;
      abort;
    end;
  end
  else if (equipamento.tpequipamento.boapontamentotempo = _s) and (edtcdfuncionario.Text = '') then
  begin
    messagedlg(format(_msg_s_eh_um_campo_obrigatorio, [__funcionario]), mtinformation, [mbok], 0);
    edtcdfuncionario.SetFocus;
    abort;
  end;

  // ???????????????????? o que faz com estas informacoes se nao tiver apontamento de tempo?
  apontamento.qtproducao             := StrToFloat(edtqtproducao.Text);
  apontamento.qtpeca                 := strtofloat(edtqtpeca.Text);
  apontamento.cdordproducao          := itordproducaorecurso.cdordproducao;
  apontamento.cditordproducaorecurso := itordproducaorecurso.cditordproducaorecurso;

  if equipamento.tpequipamento.boapontamentotempo <> _s then
  begin
    set_encerrar_etapa;
    if ckbbaixaestoque.checked then
    begin
      //apontamento.gerar_baixa_estoque(mtb, 1 + itordproducaorecursoList.Count, equipamento.tpequipamento.bofaixa);
      apontamento.gerarBaixaEstoque(mtb.m, itordproducaorecursoList.Count, equipamento.tpequipamento.bofaixa=_s);
    end;
    finalizar_apontamento;
    if (equipamento.tpequipamento.boqtproducao = _s)and (apontamento.qtproducao > 0) then
    begin
      apontamento.gerarEntradaProducao;
    end;
  end;
  modalresult := mrok;
end;

function Tfrmdlgapontamento.Insert_Update_apontamento(codigo:integer; tsinicio, tsfim: TDatetime):string;
begin
  if codigo = 0 then
  begin
    tsinicio := tsBanco;
    tsfim := tsinicio;
  end;
  apontamento.cdstapontamento := 2;
  apontamento.cdordproducao := itordproducaorecurso.cdordproducao;
  apontamento.dtemissao := tsinicio;
  apontamento.tsinicio := tsinicio;
  apontamento.hrinicio := tsinicio;
  apontamento.tsfim := tsfim;
  apontamento.hrfim := tsfim;
  apontamento.hrduracao := tsfim-tsinicio;
  apontamento.qtduracao := 0;
  if apontamento.hrduracao > 0 then
  begin
    apontamento.qtduracao := get_qtduracao(tsinicio, tsfim);
  end;
  apontamento.cdpesagem := edtcdpesagem.Text;
  apontamento.qtvibracao := strtofloat(edtqtvibracao.Text);
  apontamento.qttemperatura := strtofloat(edtqttemperatura.Text);
  apontamento.qtrefugo := StrToFloat(edtqtrefugo.Text);
  apontamento.qtmistura := strtofloat(edtqtmistura.Text);
  apontamento.psmistura := strtofloat(edtpsmistura.Text);
  apontamento.dsobservacao := memdsobservacao.Text;
  apontamento.qtcomprimento := edtqtcomprimento.Text;
  apontamento.nuestrutural := edtnuestrutural.text;
  if codigo = 0 then
  begin
    apontamento.cdapontamento   := strtoint(GerarCodigo(_apontamento));
    if get_cdequipamento <> 0 then
    begin
      apontamento.cdequipamento := get_cdequipamento;
    end;
    result := apontamento.Insert(true);
  end
  else
  begin
    apontamento.cdapontamento := codigo;
    result := apontamento.Update(true);
  end;
  ExecutaSQL('update ordproducao set cdtpequipamento='+inttostr(itordproducaorecurso.cdtpequipamento)+' where cdempresa='+empresa.cdempresa.tostring+' and cdordproducao='+inttostr(itordproducaorecurso.cdordproducao));
  if equipamento.tpequipamento.cdstordproducao <> 0 then
  begin
    ExecutaSQL('update ordproducao set cdstordproducao='+inttostr(equipamento.tpequipamento.cdstordproducao)+' where cdempresa='+empresa.cdempresa.tostring+' and cdordproducao='+inttostr(itordproducaorecurso.cdordproducao));
  end;
end;

procedure Tfrmdlgapontamento.finalizar_apontamento;
  function get_tsduracao:TDateTime;
  begin
    result := (edtdtfim.Date + edthrfim.Time) - (edtdtinicio.Date + edthrinicio.Time); // calcula a duracao
    if boencerrar_etapa and (itordproducaorecursoList.count > 0) then // se houver recurso de mais de uma op
    begin
      result := result / itordproducaorecursoList.count; // ratear o tempo de duracao entre eles
    end;
  end;
var
  tsinicio : TDateTime;
  sql : TStrings;
  i : integer;
begin
  sql := TStringlist.create;
  try
    if boencerrar_etapa then
    begin
      if pnltemporizador.Visible then
      begin
        tsinicio  := StrToDateTime(formatdatetime(_dd_mm_yyyy, edtdtinicio.Date)+' '+formatdatetime(_hh_mm_ss, edthrinicio.Time));
      end;
      itordproducaorecurso.Encerrar_etapa;
      sql.add(itordproducaorecurso.update(true));
    end;
    //atualizar_apontamento_producao *********************************************************************************************************************
    apontamento.cditordproducaorecurso := itordproducaorecurso.cditordproducaorecurso;
    if equipamento.tpequipamento.boapontamentoturma = _s then
    begin
      mtbfuncionario.m.First;
      while not mtbfuncionario.m.Eof do
      begin
        sql.add(Insert_Update_apontamento(mtbfuncionario.m.fieldbyname(_cdapontamento).asInteger, tsinicio, tsinicio + get_tsduracao));
        mtbfuncionario.m.Next;
      end;
    end
    else if equipamento.tpequipamento.boapontamentotempo = _s then
    begin
      sql.add(Insert_Update_apontamento(cdapontamento, tsinicio, tsinicio + get_tsduracao))
    end
    else
    begin
      sql.add(Insert_Update_apontamento(            0, tsinicio, tsinicio + get_tsduracao));
    end;
    tsinicio := tsinicio + get_tsduracao;
    // ***************************************************************************************************************************************************
    ExecutaScript(sql);
    sql.clear;
    if boencerrar_etapa then
    begin
      apontamento.ativarProximaEtapa;
    end;
    //atualizar_recurso_producao_rateado *****************************************************************************************************************
    for i := 0 to itordproducaorecursoList.count - 1 do
    begin
      itordproducaorecursoList.Items[i].cdstitordproducaorecurso := 2;
      if boencerrar_etapa then
      begin
        itordproducaorecursoList.Items[i].Encerrar_etapa;
      end;
      sql.add(itordproducaorecursoList.Items[i].update(True));
    end;
    // atualizar_apontamento_producao_rateado ************************************************************************************************************
    for i := 0 to itordproducaorecursoList.count - 1 do
    begin
      if equipamento.tpequipamento.boapontamentoturma = _s then
      begin
        mtbfuncionario.m.First;
        while not mtbfuncionario.m.Eof do
        begin
          sql.Add(inserir_apontamento      (mtbfuncionario.m.fieldbyname(_cdapontamento).asinteger));
          sql.add(Insert_Update_apontamento(mtbfuncionario.m.fieldbyname(_cdapontamento).asInteger, tsinicio, tsinicio + get_tsduracao));
          mtbfuncionario.m.Next;
        end;
      end
      else if equipamento.tpequipamento.boapontamentotempo = _s then
      begin
        sql.add(inserir_apontamento      (strtoint(edtcdfuncionario.Text)));
        sql.add(Insert_Update_apontamento(cdapontamento, tsinicio, tsinicio + get_tsduracao));
      end;
      ExecutaScript(sql);
      sql.Clear;
      if ckbbaixaestoque.checked then
      begin
        //apontamento.gerar_baixa_estoque(mtb, 1 + itordproducaorecursoList.count, equipamento.tpequipamento.bofaixa);
        apontamento.gerarBaixaEstoque(mtb.m, itordproducaorecursoList.count, equipamento.tpequipamento.bofaixa = _s);
      end;
      if boencerrar_etapa then
      begin
        apontamento.ativarProximaEtapa;
      end;
      tsinicio := tsinicio + get_tsduracao;
    end;
    // *************************************************************************************************************************************************
    cdapontamento := 0;
  finally
    FreeAndNil(sql);
  end;
end;

function Tfrmdlgapontamento.inserir_apontamento(cdfuncionario:integer):string;
begin
  cdapontamento := qgerar.GerarCodigo(_apontamento);
  apontamento.cdapontamento := cdapontamento;
  apontamento.cdfuncionario := cdfuncionario;
  apontamento.cdequipamento := get_cdequipamento;
  apontamento.cdordproducao := itordproducaorecurso.cdordproducao;
  apontamento.cdpesagem := edtcdpesagem.Value;
  apontamento.qtvibracao := edtqtvibracao.Value;
  apontamento.qttemperatura := edtqttemperatura.Value;
  apontamento.qtmistura := edtqtmistura.Value;
  apontamento.psmistura := edtpsmistura.Value;
  apontamento.dsobservacao := memdsobservacao.Text;
  apontamento.qtcomprimento := edtqtcomprimento.Text;
  apontamento.nuestrutural := edtnuestrutural.text;
  apontamento.qtproducao := StrToFloat(edtqtproducao.text);
  apontamento.qtpeca := strtofloat(edtqtpeca.Text);
  apontamento.qtrefugo := StrToFloat(edtqtrefugo.text);
  apontamento.boreaproveitar := BooleanToStr(ckbboreaproveitar.Checked);
  apontamento.cditordproducaorecurso := itordproducaorecurso.cditordproducaorecurso;
  result := apontamento.insert(true);
end;

end.
