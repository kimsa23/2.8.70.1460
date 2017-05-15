unit uBaixaEstoque;

interface

uses
  System.Actions, System.UITypes,
  forms, Dialogs, SysUtils, Classes, ComCtrls, Controls, StdCtrls, Buttons,
  Menus, Mask, ExtCtrls, Variants,
  sqlexpr,
  uregistro, ustrings, udatahora, ulocalizar, ulocalizarproduto,
  uconstantes,
  classeregistrainformacao, classeretornasql, classegerar, classeexecutasql,
  classeform, classeproduto, classeempresa, classeaplicacao, classequery, classemovto,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxLookAndFeelPainters, cxButtons, cxGraphics, cxButtonEdit, cxCalendar, cxCheckBox,
  cxLookAndFeels, cxPC, dxCore, cxDateUtils, cxMemo, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmBaixaEstoque = class(TForm)
    Bevel1: TBevel;
    lblcntcusto: TLabel;
    Label1: TLabel;
    lbllote: TLabel;
    lblqtitem: TLabel;
    Label6: TLabel;
    lblqtestoque: TLabel;
    lblestoque: TLabel;
    Label3: TLabel;
    cbxcditlote: TcxComboBox;
    edtcdproduto: TcxButtonEdit;
    edtdtbaixa: TcxDateEdit;
    ckbinsercao: TcxCheckBox;
    btncancelar: TcxButton;
    btnok: TcxButton;
    edtqtitem: TcxCalcEdit;
    lblnmunidade: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    memdsobservacao: TcxMemo;
    lblvlunitario: TLabel;
    edtvlunitario: TcxCalcEdit;
    cbxcdtpmovto: TcxLookupComboBox;
    cbxcdcntcusto: TcxLookupComboBox;
    lblQTESTOQUE2: TLabel;
    lblESTOQUE2: TLabel;
    edtQTITEM2: TcxCalcEdit;
    lblQTITEM2: TLabel;
    lblnmproduto: TLabel;
    procedure btnokClick(Sender: TObject);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nextcontrol(Sender: TObject; var Key: Char);
    procedure edtdtbaixaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtqtitemKeyPress(Sender: TObject; var Key: Char);
    procedure btncancelarClick(Sender: TObject);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxcditloteKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure cbxcdtpmovtoExit(Sender: TObject);
    procedure edtqtitemExit(Sender: TObject);
    procedure edtQTITEM2Exit(Sender: TObject);
    procedure edtQTITEM2KeyPress(Sender: TObject; var Key: Char);
  private    { Private declarations }
    produto : TProduto;
    tpmovtopadrao : string;
    bocntcusto : boolean;
    function  Carregar_Lote:boolean;
    procedure exibir_mensagem_estoque_minimo (cdproduto: string);
    procedure exibir_mensagem_estoque_gatilho(cdproduto: string);
    procedure set_produto(cdproduto:integer);
  public { Public declarations }
  end;

function BaixarEstoque:boolean;
function EntrarEstoque:boolean;

var
  frmBaixaEstoque: TfrmBaixaEstoque;

implementation

{$R *.dfm}

uses utipo, uDtmMain;

function SetMovimento(tpmovto:string):boolean;
  function gerar_movimentacao_estoque:boolean;
    function get_vlcustomedio:currency;
    begin
           if BooleandoCodigo(_tpmovto, frmbaixaestoque.cbxcdtpmovto.EditValue, _bovalor)   then result := frmbaixaestoque.produto.VlCustoMedioNaData(frmbaixaestoque.edtcdproduto.Text, DtBanco)
      else if BooleandoCodigo(_tpmovto, frmbaixaestoque.cbxcdtpmovto.EditValue, _bovlvenda) then result := frmbaixaestoque.produto.vlvenda
                                                                                            else result := frmbaixaestoque.edtvlunitario.value;
    end;
  var
    cdtpmovto : string;
    cdmovto : integer;
    movto : TMovto;
    sql : tstrings;
  begin
    movto           := tmovto.create;
    sql             := tstringlist.create;
    try
      sql.clear;
      cdtpmovto := frmbaixaestoque.cbxcdtpmovto.EditValue;
      cdmovto   := qregistro.CodigodoWhere(_movto, 'cdempresa='+empresa.cdempresa.tostring+' and cdtpmovto='+cdtpmovto+' and dtemissao='+getdtbanco(frmbaixaestoque.edtdtbaixa.Date)); // verifica se existe movimentação de estoque na data de hoje
      if cdmovto = 0 then // inserir movimentacao de estoque
      begin
        movto.cdmovto   := QGerar.GerarCodigo(_movto);
        movto.dtemissao := DtBanco;
        movto.cdtpmovto := StrToInt(cdtpmovto);
        movto.dtemissao :=frmbaixaestoque.edtdtbaixa.Date;
        //sql.Add(tmovtodao.Insert(movto, true));
        sql.Add(movto.Insert(true));
      end
      else
      begin
        //tmovtodao.read(movto, cdmovto);
        movto.Select(cdmovto);
      end;
      movto.ItMovto.New;
      if not VarIsNull(frmbaixaestoque.cbxcdcntcusto.EditValue) then
      begin
        movto.ItMovto.Items[movto.ItMovto.count-1].cdcntcusto := StrToInt(frmbaixaestoque.cbxcdcntcusto.EditValue);
      end;
      movto.ItMovto.Items[movto.ItMovto.count-1].cdmovto      := movto.cdmovto;
      movto.ItMovto.Items[movto.ItMovto.count-1].cditmovto    := QGerar.GerarCodigo(_itmovto);
      movto.ItMovto.Items[movto.ItMovto.count-1].cdproduto    := StrToInt(frmbaixaestoque.edtcdproduto.text);
      movto.ItMovto.Items[movto.ItMovto.count-1].qtitem       := frmbaixaestoque.edtqtitem.Value;
      movto.ItMovto.Items[movto.ItMovto.count-1].qtitem2      := frmbaixaestoque.edtqtitem2.value;
      movto.ItMovto.Items[movto.ItMovto.count-1].vlunitario   := get_vlcustomedio;
      movto.ItMovto.Items[movto.ItMovto.count-1].vltotal      := frmbaixaestoque.edtqtitem.Value * movto.ItMovto.Items[movto.ItMovto.count-1].vlunitario;
      movto.ItMovto.Items[movto.ItMovto.count-1].cddigitado   := frmbaixaestoque.edtcdproduto.text;
      movto.ItMovto.Items[movto.ItMovto.count-1].dsobservacao := frmbaixaestoque.memdsobservacao.lines.text;
      //sql.Add(titmovtodao.insert(movto.ItMovto.Items[movto.ItMovto.count-1], true));
      sql.Add(movto.ItMovto.Items[movto.ItMovto.count-1].Insert(true));
      result := ExecutaScript(sql);
    finally
      freeandnil(sql);
      freeandnil(movto);
    end;
  end;
  function get_nmtpmovto:string;
  begin
    if tpmovto = _e then result := 'Entrada'
                    else result := 'Baixa';
    result := result + ' Estoque';
  end;
begin
  result          := false;
  frmbaixaEstoque := TFrmbaixaEstoque.Create(application);
  try
    frmbaixaestoque.tpmovtopadrao := tpmovto;
    repeat
      frmbaixaestoque.Caption := get_nmtpmovto;
      frmbaixaestoque.cbxcdtpmovto.Properties.ListSource := abrir_tabela(_tpmovto+tpmovto);
      frmbaixaestoque.showmodal;
      if frmbaixaEstoque.ModalResult <> mrok then
      begin
        Exit;
      end;
      result := gerar_movimentacao_estoque;
      frmbaixaEstoque.exibir_mensagem_estoque_minimo(frmbaixaestoque.edtcdproduto.text);
      frmbaixaEstoque.exibir_mensagem_estoque_gatilho(frmbaixaestoque.edtcdproduto.text);
    until (not frmBaixaEstoque.ckbinsercao.Checked) or (frmbaixaestoque.ModalResult = mrcancel);
  finally
    freeandnil(frmbaixaestoque);
  end;
end;

function BaixarEstoque:boolean;
begin
  result := setmovimento(_S);
end;

function EntrarEstoque:boolean;
begin
  result := SetMovimento(_E);
end;

function TFrmBaixaEstoque.Carregar_Lote:boolean;
  function makesql:string;
  begin
    result := 'select cditlote,qtestoque '+
              'from itlote '+
              'where qtestoque>0 and cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+edtcdproduto.text+' '+
              'order by dtvalidade,cditlote';
  end;
var
  q : TclasseQuery;
begin
  cbxcditlote.Clear;
  lblqtestoque.Caption  := '';
  lblQTESTOQUE2.Caption := '';
  q                     := TClasseQuery.create;
  try
    q.q.open(makesql);
    cbxcditlote.Properties.Items.add(q.q.fieldbyname(_cditlote).Asstring);
    cbxcditlote.ItemIndex := 0;
    lblqtestoque.Caption  := q.q.fieldbyname(_qtestoque).asstring;
    //lblQTESTOQUE2.Caption := q.q.fieldbyname(_qtestoque2).asstring;
    result := true;
  finally
    q.free;
  end;
end;

procedure TfrmBaixaEstoque.btnokClick(Sender: TObject);
var
  qtestoque : real;
begin
  if edtdtbaixa.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data]), mtinformation, [mbok], 0);
    edtdtbaixa.SetFocus;
    abort;
  end;
  if edtcdproduto.text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Produto]), mtinformation, [mbok], 0);
    edtcdproduto.SetFocus;
    abort;
  end;
  if (produto.tpproduto.bolote = _S) and (cbxcditlote.Text = '') then
  begin
    messagedlg('Produto '+lblnmproduto.caption+' não possui estoque.'#13'Escolha outro produto para continuar.!', mtinformation, [mbok], 0);
    edtcdproduto.SetFocus;
    abort;
  end;
  if cbxcdtpmovto.text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtpmovto.SetFocus;
    abort;
  end;
  if bocntcusto and VarIsNull(cbxcdcntcusto.EditValue) then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Centro_de_Custo]), mtinformation, [mbok], 0);
    cbxcdcntcusto.SetFocus;
    abort;
  end;
  if edtqtitem.Value = 0 then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Quantidade]), mtinformation, [mbok], 0);
    edtqtitem.SetFocus;
    abort;
  end;
  if edtqtitem.Value < 0 then
  begin
    messagedlg('Quantidade não pode ser menor do que zero!', mtinformation, [mbok], 0);
    edtqtitem.SetFocus;
    abort;
  end;
  if tpmovtopadrao = _S then
  begin
    qtestoque := strtofloat(RemoverChar(lblqtestoque.Caption, '.'));
    if edtqtitem.value > qtestoque then
    begin
      messagedlg('Quantidade acima do estoque!'#13'Digite um valor menor para continuar.', mtinformation, [mbok], 0);
      edtqtitem.SetFocus;
      abort;
    end;
    // verificar se a quantidade ainda está disponível no estoque se for baixa
    qtestoque := frmbaixaestoque.produto.EstoqueRealParabaixa(strtoint(edtcdproduto.text), edtdtbaixa.Date);
    if edtqtitem.value > qtestoque then
    begin
      messagedlg('Quantidade em estoque inferior a baixa.'#13'Quantidade em estoque atual '+formatfloat(__decimal4, qtestoque)+'.'#13+
                  'Altere a quantidade da baixa para a faixa atual do estoque.', mtinformation, [mbok], 0);
      edtqtitem.Value      := qtestoque;
      lblqtestoque.Caption := formatfloat(__decimal4, qtestoque);
      edtqtitem.SetFocus;
      abort;
    end;
  end;
  ModalResult := mrok;
end;

procedure TfrmBaixaEstoque.edtcdprodutoExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, _produto, _Produto) then
  begin
    set_produto(strtoint(edtcdproduto.Text));
  end;
  colorexit(sender);
end;

procedure TfrmBaixaEstoque.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmBaixaEstoque.nextcontrol(Sender: TObject; var Key: Char);
begin
  if key <> #13 then
  begin
    exit;
  end;
  SelectNext(sender as twincontrol, true, true);
  key := #0;
end;

procedure TfrmBaixaEstoque.edtdtbaixaExit(Sender: TObject);
var
  qtestoque : currency;
begin
  if edtdtbaixa.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data]), mtinformation, [mbok], 0);
    edtdtbaixa.SetFocus;
    Abort;
  end;
  if edtcdproduto.text <> '' then
  begin
    qtestoque := produto.EstoqueRealParabaixa(strtoint(edtcdproduto.text), edtdtbaixa.Date);
    if tpmovtopadrao = _S then
    begin
      edtqtitem.Value := qtestoque;
      edtqtitemExit(edtqtitem);
    end;
    lblqtestoque.Caption  := formatfloat(__decimal4, qtestoque);
    lblQTESTOQUE2.Caption := formatfloat(__decimal4, produto.calcularqtitem2(qtestoque, produto.prunidade));
  end;
  colorexit(Sender);
end;

procedure TfrmBaixaEstoque.FormShow(Sender: TObject);
begin
  produto               := TProduto.create;
  bocntcusto            := empresa.financeiro.bocntcusto;
  lblcntcusto.Visible   := bocntcusto;
  cbxcdcntcusto.visible := bocntcusto;
  if not ckbinsercao.Checked then
  begin
    edtdtbaixa.Date := dtbanco;
  end;
end;

procedure TfrmBaixaEstoque.FormDestroy(Sender: TObject);
begin
  produto.destroy;
end;

procedure TfrmBaixaEstoque.edtqtitemKeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #13 then
  begin
    exit;
  end;
  if btnok.Enabled then btnok.SetFocus
                   else edtQTITEM2.SetFocus;
  key := #0;
end;

procedure TfrmBaixaEstoque.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmBaixaEstoque.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cod : integer;
  qtestoque : currency;
begin
  cod := LocalizarProduto(_bomovto);
  if cod = 0 then
  begin
    exit;
  end;
  produto.Select(cod);
  edtcdproduto.text := cod.ToString;
  lblnmproduto.caption := produto.nmproduto;
  lblnmunidade.caption := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  produto.tpproduto.Select(produto.cdtpproduto);
  // verificar se o produto possui lote
  qtestoque := produto.EstoqueRealParabaixa(cod, edtdtbaixa.Date);
  if tpmovtopadrao = _S then
  begin
    edtqtitem.Value := qtestoque;
    edtqtitemExit(edtqtitem);
  end;
  lblqtestoque.Caption  := formatfloat(__decimal4, qtestoque);
  lblQTESTOQUE2.Caption := formatfloat(__decimal4, produto.calcularqtitem2(qtestoque, produto.prunidade));
  if produto.tpproduto.bolote = _S then
  begin
    Carregar_Lote;
  end;
  cbxcditlote.Visible := produto.tpproduto.bolote = _S;
  lbllote.Visible     := produto.tpproduto.bolote = _S;
end;

procedure TfrmBaixaEstoque.edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #13 then
  begin
    exit;
  end;
  if cbxcditlote.Visible then cbxcditlote.SetFocus
                         else cbxcdtpmovto.SetFocus;
end;

procedure TfrmBaixaEstoque.cbxcditloteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    cbxcdtpmovto.setfocus;
  end;
end;

procedure TfrmBaixaEstoque.exibir_mensagem_estoque_minimo(cdproduto: string);
begin
  if uppercase(tpmovtopadrao) <> UpperCase(_s) then
  begin
    Exit;
  end;
  produto.Select(produto.cdproduto);
  if (produto.qtestmin > 0) and (produto.qtestoque < produto.qtestmin) then
  begin
    MessageDlg('Produto '+inttostr(produto.cdproduto)+' - '+produto.nmproduto+#13'está abaixo do estoque mínimo.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmBaixaEstoque.exibir_mensagem_estoque_gatilho(cdproduto: string);
begin
  if uppercase(tpmovtopadrao) <> UpperCase(_s) then
  begin
    Exit;
  end;
  produto.Select(produto.cdproduto);
  if (produto.qtestprev > 0) and (produto.qtestoque < produto.qtestprev) then
  begin
    MessageDlg('Produto '+inttostr(produto.cdproduto)+' - '+produto.nmproduto+#13'está abaixo do estoque de gatilho.', mtInformation, [mbOK], 0);
  end;
end;

procedure TfrmBaixaEstoque.FormCreate(Sender: TObject);
begin
  cbxcdcntcusto.Properties.ListSource := abrir_tabela(_cntcusto);
end;

procedure TfrmBaixaEstoque.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmBaixaEstoque.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmBaixaEstoque.set_produto(cdproduto: integer);
var
  qtestoque : double;
begin
  if not qregistro.CodigoExiste(_Produto, cdproduto) then // código reduzido
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [cdproduto.ToString, maiuscula(_produto)]), mterror, [mbok], 0);
    lblnmunidade.caption := '';
    lblnmproduto.caption := '';
    cbxcditlote.Clear;
    edtcdproduto.setfocus;
    abort;
  end;
  produto.Select(cdproduto);
  lblnmproduto.caption := produto.nmproduto;
  lblnmunidade.caption := qregistro.nomedocodigo(_unidade, produto.cdunidade);
  if produto.boativar <> _s then
  begin
    MessageDlg('Produto '+cdproduto.ToString+' - '+lblnmproduto.caption+#13'está desativado.', mtInformation, [mbOK], 0);
    edtcdproduto.SetFocus;
    Abort;
  end;
  produto.tpproduto.select(produto.cdtpproduto);
  if produto.tpproduto.boestoque <> _s then
  begin
    MessageDlg(_Produto+' '+cdproduto.ToString+' - '+lblnmproduto.caption+#13'não pode ser usado porque está configurado que não controla estoque.', mtInformation, [mbOK], 0);
    edtcdproduto.SetFocus;
    Abort;
  end;
  if edtdtbaixa.date < DtBanco then
  begin
    qtestoque := produto.EstoqueRealNaData(cdproduto, edtdtbaixa.date)
  end
  else
  begin
    qtestoque := produto.EstoqueRealParabaixa(cdproduto, edtdtbaixa.date);
  end;
  if tpmovtopadrao = _S then
  begin
    edtqtitem.Value := qtestoque;
    edtqtitemExit(edtqtitem);
  end;
  lblqtestoque.Caption  := formatfloat(__decimal4, qtestoque);
  lblQTESTOQUE2.Caption := FormatFloat(__decimal4, produto.calcularqtitem2(qtestoque, produto.prunidade));
  if produto.tpproduto.bolote = _S then
  begin
    Carregar_Lote;
  end;
  cbxcditlote.Visible   := produto.tpproduto.bolote = _S;
  lbllote.Visible       := produto.tpproduto.bolote = _S;
  edtQTITEM2.Visible    := produto.prunidade > 0;
  lblQTESTOQUE2.Visible := produto.prunidade > 0;
  lblestoque2.Visible   := produto.prunidade > 0;
  lblQTITEM2.Visible    := produto.prunidade > 0;
end;

procedure TfrmBaixaEstoque.cbxcdtpmovtoExit(Sender: TObject);
begin
  if VarIsNull(cbxcdtpmovto.EditValue) then
  begin
    colorexit(sender);
    Exit;
  end;
  lblvlunitario.visible := (not BooleandoCodigo(_tpmovto, frmbaixaestoque.cbxcdtpmovto.EditValue, _bovalor)) and
                           (not BooleandoCodigo(_tpmovto, frmbaixaestoque.cbxcdtpmovto.EditValue, _bovlvenda));
  edtvlunitario.visible := lblvlunitario.visible;
  colorexit(sender);
end;

procedure TfrmBaixaEstoque.edtqtitemExit(Sender: TObject);
begin
  if produto.prunidade > 0 then
  begin
    edtQTITEM2.Value := produto.calcularqtitem2(edtqtitem.Value, produto.prunidade);
  end;
  colorexit(sender);
end;

procedure TfrmBaixaEstoque.edtQTITEM2Exit(Sender: TObject);
begin
  if produto.prunidade > 0 then
  begin
    edtQTITEM.Value := produto.calcularqtitem(edtqtitem2.Value, produto.prunidade);
  end;
  colorexit(sender);
end;

procedure TfrmBaixaEstoque.edtQTITEM2KeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #13 then
  begin
    exit;
  end;
  if btnok.Enabled then btnok.SetFocus
                   else edtdtbaixa.SetFocus;
  key := #0;
end;

end.
