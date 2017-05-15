unit ugerarpedido;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls,
  Variants, Controls, Menus,
  DBClient, sqlexpr, DB,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora,
  ulocalizarcliente,
  classequery, classeaplicacao, classepedido, classeform,  classeempresa, classeretornasql,
  classeorcamento, classeproduto,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxButtons, cxLabel, cxCheckListBox,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxCheckBox, cxNavigator, dxBar, dxBevel, dxCore, cxDateUtils,
  cxCalendar;

type
  TfrmdlgGerarPedido = class(TForm)
    lbldocumento: TLabel;
    btncancelar: TcxButton;
    btnok: TcxButton;
    cbxcdtppedido: TcxLookupComboBox;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    cds: TClientDataSet;
    cdscddigitado: TStringField;
    cdsnmproduto: TStringField;
    cdsqtitem: TFloatField;
    cdscdittabela: TIntegerField;
    dts: TDataSource;
    tbvcddigitado: TcxGridDBColumn;
    tbvnmproduto: TcxGridDBColumn;
    tbvqtitem: TcxGridDBColumn;
    cdsboativar: TStringField;
    tbvboativar: TcxGridDBColumn;
    cdsnuitem: TIntegerField;
    tbvnuitem: TcxGridDBColumn;
    edtnucotacao: TcxTextEdit;
    lblnucotacao: TLabel;
    tbvDTPRVENTREGA: TcxGridDBColumn;
    cdsDTPRVENTREGA: TDateField;
    dxBevel1: TdxBevel;
    dxBevel2: TdxBevel;
    bmg1: TdxBarManager;
    bmg1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    lbldtprevisao: TLabel;
    edtdtprevisao: TcxDateEdit;
    procedure btnOkClick(Sender: TObject);
    procedure cdsBeforeDelete(DataSet: TDataSet);
    procedure cbxcdtppedidoPropertiesChange(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure edtdtprevisaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private   { Private declarations }
    tbl : string;
    pedido : TPedido;
    orcamento : TOrcamento;
    itorcamento : titorcamentolist;
    bogambiarra : Boolean;
    procedure loadProduto(cdtppedido: integer=0);
    function existeProdutoMarcado:Boolean;
    function existeProdutoMarcadoComQuantidade:boolean;
    procedure setTabela(tabela: string);
    procedure prepararListaOrcamento;
    function consistirTppedidoServicoProduto(tppedido: TTPPedido; I: Integer): boolean;
  public    { Public declarations }
  end;

function GerarPedido(tabela: string; orcamento: Torcamento):boolean;

var
  frmdlgGerarPedido: TfrmdlgGerarPedido;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function GerarPedido(tabela: string; orcamento: torcamento):boolean;
var
  cdtppedido: Integer;
begin
  result := false;
  frmdlgGerarPedido := TfrmdlgGerarPedido.Create(application);
  try
    frmdlggerarpedido.bogambiarra := True;
    frmdlggerarpedido.orcamento := orcamento;
    frmdlggerarpedido.setTabela(tabela);
    with frmdlgGerarPedido do
    begin
      showmodal;
      if ModalResult <> mrok then
      begin
        exit;
      end;
      prepararListaOrcamento;
      cdtppedido := cbxcdtppedido.EditValue;
      bogambiarra := False;
      if tabela = _pedido then
      begin
        frmmain.NovoPedido(orcamento.cdorcamento, edtdtprevisao.date, itorcamento, cdtppedido, frmdlggerarpedido.edtnucotacao.text)
      end
      else
      begin
        frmmain.NovoRequisicaoProducao(orcamento.cdorcamento, edtdtprevisao.date, cdtppedido, itorcamento);
      end;
      result := true;
    end;
  finally
    FreeAndNil(frmdlggerarpedido);
  end;
end;

procedure TfrmdlgGerarPedido.btnOkClick(Sender: TObject);
begin
  if cds.State = dsedit then
  begin
    cds.Post;
  end;
  if cbxcdtppedido.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Tipo]), mtinformation, [mbok], 0);
    cbxcdtppedido.SetFocus;
    abort;
  end;
  if not existeProdutoMarcado then
  begin
    messagedlg('Seleção de algum produto é obrigatório!', mtinformation, [mbok], 0);
    abort;
  end;
  if not existeProdutoMarcadoComQuantidade then
  begin
    messagedlg('O produto selecionado deve ter a quantidade maior do que zero!', mtinformation, [mbok], 0);
    abort;
  end;
  if (tbl = _pedido) and ((pedido.tppedido.bocotacao = _s) or (pedido.tppedido.bocotacaoitem=_s)) and
     ((pedido.tppedido.bocotacaoitemobrigatorio = _s) or (pedido.tppedido.bocotacaoobrigatorio=_s)) and (edtnucotacao.Text = '') then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_da+' '+_ordem_de_Compra]), mtinformation, [mbok], 0);
    edtnucotacao.SetFocus;
    Abort;
  end;
  modalresult := mrok;
end;

function TfrmdlgGerarPedido.consistirTppedidoServicoProduto(tppedido : TTPPedido; I: Integer):boolean;
begin
  result := false;
  if (tppedido.cdtppedido > 0) and (not ((tppedido.boiss=_s) and (tppedido.boicms= _s))) then
  begin
    if (tppedido.boiss = _s) and (orcamento.itorcamento.Items[I].produto.tpproduto.boservico <> _s) then
    begin
      result := true;
      Exit;
    end;
    if (tppedido.boicms = _s) and (orcamento.itorcamento.Items[I].produto.tpproduto.boservico = _s) then
    begin
      result := true;
    end;
  end;
end;

procedure TfrmdlgGerarPedido.loadProduto(cdtppedido: integer=0);
var
  I: Integer;
begin
  cds.EmptyDataSet;
  cds.disablecontrols;
  try
    pedido.tppedido.Select(cdtppedido);
    itorcamento.clear;
    for I := 0 to orcamento.itorcamento.Count - 1 do
    begin
      if not ((orcamento.itorcamento.Items[I].qtitem-orcamento.itorcamento.Items[I].qtaprovado > 0) and
         (orcamento.itorcamento.Items[I].vltotal > 0) and (orcamento.itorcamento.Items[I].cdstitorcamento in [1, 3])) then
      begin
        continue;
      end;
      if orcamento.itorcamento.items[i].produto.cdproduto = 0 then
      begin
        orcamento.itorcamento.Items[I].produto.Select(orcamento.itorcamento.Items[I].cdproduto);
        orcamento.itorcamento.Items[I].produto.tpproduto.Select(orcamento.itorcamento.Items[I].produto.cdtpproduto);
      end;
      if consistirTppedidoServicoProduto(pedido.tppedido, I) then
      begin
        Continue;
      end;
      orcamento.itorcamento.Items[I].produto.Checkcdtpitem;
      orcamento.itorcamento.Items[I].produto.Checkboativar;
      itorcamento.new;
      itorcamento.items[itorcamento.count-1].CopiarObjeto(orcamento.itorcamento.items[i]);
      cds.Append;
      cdsboativar.AsString    := _S;
      cdscddigitado.AsString  := orcamento.itorcamento.Items[I].cddigitado;
      cdsnmproduto.AsString   := orcamento.itorcamento.Items[I].produto.nmproduto;
      cdsqtitem.AsFloat       := orcamento.itorcamento.Items[I].qtitem;
      cdscdittabela.AsInteger := orcamento.itorcamento.Items[I].cditorcamento;
      if orcamento.itorcamento.Items[I].dtprventrega <> 0 then
      begin
        cdsDTPRVENTREGA.AsDateTime := orcamento.itorcamento.Items[I].dtprventrega;
      end
      else if edtdtprevisao.Text <> '' then
      begin
        cdsDTPRVENTREGA.AsDateTime := edtdtprevisao.Date;
      end;
      cds.Post;
    end;
    cds.First;
  finally
    cds.enablecontrols;
  end;
end;

procedure TfrmdlgGerarPedido.prepararListaOrcamento;
var
  x : integer;
begin
  if cds.State = dsedit then
  begin
    cds.Post;
  end;
  cds.First;
  while not cds.Eof do
  begin
    if (cdsboativar.AsString <> _s) or (cdsqtitem.AsFloat <= 0) then
    begin
      itorcamento.excluir(cdscdittabela.Asinteger);
      cds.Next;
      continue;
    end;
    x := itorcamento.indice(cdscdittabela.asinteger);
    itorcamento.items[x].qtitem := cdsqtitem.asfloat;
    itorcamento.items[x].dtprventrega := cdsDTPRVENTREGA.AsDateTime;
    cds.Next;
  end;
end;

function TfrmdlgGerarPedido.existeProdutoMarcado: Boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cds, true);
    c.First;
    while not c.Eof do
    begin
      result := c.FieldByName(_boativar).AsString = _S;
      if result then
      begin
        Break;
      end;
      c.Next;
    end;
  finally
    c.free;
  end;
end;

function TfrmdlgGerarPedido.existeProdutoMarcadoComQuantidade: boolean;
var
  c : TClientDataSet;
begin
  result := False;
  c := TClientDataSet.Create(nil);
  try
    c.CloneCursor(cds, true);
    c.First;
    while not c.Eof do
    begin
      result := (c.FieldByName(_boativar).AsString = _S) and (c.FieldByName(_qtitem).AsFloat > 0);
      if result then
      begin
        Break;
      end;
      c.Next;
    end;
  finally
    c.free;
  end;
end;

procedure TfrmdlgGerarPedido.cdsBeforeDelete(DataSet: TDataSet);
begin
  if cds.RecordCount = 1 then
  begin
    MessageDlg('É necessário que exista ao menos um ítem para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TfrmdlgGerarPedido.cbxcdtppedidoPropertiesChange(Sender: TObject);
begin
  if (tbl <> _pedido) or VarIsNull(cbxcdtppedido.EditValue) then
  begin
    Exit;
  end;
  if not bogambiarra then
  begin
    Exit;
  end;
  pedido.tppedido.Select(StrToInt(cbxcdtppedido.EditValue));
  edtnucotacao.Visible    := (pedido.tppedido.bocotacao = _s) or (pedido.tppedido.bocotacaoitem = _s);
  lblnucotacao.Visible    := (pedido.tppedido.bocotacao = _s) or (pedido.tppedido.bocotacaoitem = _s);
  tbvnuitem.Visible       := (pedido.tppedido.bocotacao = _s) or (pedido.tppedido.bocotacaoitem = _s);
  tbvDTPRVENTREGA.Visible := pedido.tppedido.bodtprventregaitem = _s;
  loadProduto(pedido.tppedido.cdtppedido);
end;

procedure TfrmdlgGerarPedido.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmdlgGerarPedido.dxBarButton1Click(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      cds.FieldByName(_boativar).AsString := _S;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure TfrmdlgGerarPedido.dxBarButton2Click(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      if cds.FieldByName(_boativar).AsString = _n then
      begin
        cds.FieldByName(_boativar).AsString := _S
      end
      else
      begin
        cds.FieldByName(_boativar).AsString := _n;
      end;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure TfrmdlgGerarPedido.dxBarButton3Click(Sender: TObject);
var
  recno : Integer;
begin
  cds.DisableControls;
  try
    recno := cds.RecNo;
    cds.First;
    while not cds.Eof do
    begin
      cds.Edit;
      cds.FieldByName(_boativar).AsString := _n;
      cds.Post;
      cds.Next;
    end;
    cds.RecNo := recno;
  finally
    cds.EnableControls;
  end;
end;

procedure TfrmdlgGerarPedido.setTabela(tabela: string);
begin
  tbl := tabela;
  cbxcdtppedido.Properties.ListSource := abrir_tabela(_tp+tabela);
  cbxcdtppedido.Properties.KeyFieldNames := _cdtp+tabela;
  cbxcdtppedido.Properties.ListFieldNames := _nmtp+tabela;
  if orcamento.tporcamento.tpdata = _r then
  begin
    edtdtprevisao.Date := orcamento.dtresposta
  end
  else
  begin
    edtdtprevisao.Date := orcamento.dtprventrega;
  end;
  if edtdtprevisao.Date = 0 then
  begin
    edtdtprevisao.Clear;
  end;
  loadProduto;
  if cds.RecordCount = 0 then
  begin
    MessageDlg('Não existem itens com quantidade disponível ou com valor unitário preenchido para gerar pedido.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if tbl <> _pedido then
  begin
    lblnucotacao.Visible := False;
    edtnucotacao.Visible := False;
    tbvnuitem.Visible    := False;
    Caption              := 'Gerar Requisição de Produção';
  end;
  if RetornaSQLInteger('select count(*) from tp'+tabela+' where cdempresa='+empresa.cdempresa.tostring) <> 1 then
  begin
    Exit;
  end;
  cbxcdtppedido.Text := RetornaSQLString('select nmtp'+tabela+' from tp'+tabela+' where cdempresa='+empresa.cdempresa.tostring);
  cbxcdtppedidoPropertiesChange(cbxcdtppedido);
  cbxcdtppedido.Enabled := false;
end;

procedure TfrmdlgGerarPedido.edtdtprevisaoPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
var
  rec : Integer;
begin
  cds.DisableControls;
  rec := cds.RecNo;
  try
    cds.First;
    while not cds.Eof do
    begin
      cds.edit;
      if edtdtprevisao.Text = '' then
      begin
        cdsDTPRVENTREGA.Clear
      end
      else
      begin
        cdsDTPRVENTREGA.AsDateTime := edtdtprevisao.Date;
      end;
      cds.Post;
      cds.Next;
    end;
  finally
    cds.RecNo := rec;
    cds.EnableControls;
  end;
end;

procedure TfrmdlgGerarPedido.FormCreate(Sender: TObject);
begin
  pedido := tpedido.create;
  itorcamento := titorcamentolist.create;
end;

procedure TfrmdlgGerarPedido.FormDestroy(Sender: TObject);
begin
  FreeAndNil(pedido);
  FreeAndNil(itorcamento);
end;

end.
