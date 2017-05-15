unit uconsultacheque;

interface

uses
  forms, Classes, ActnList, ComCtrls, StdCtrls, Buttons, Controls, Mask, ExtCtrls,
  ToolWin, windows, dialogs, sysutils,
  SqlExpr,
  uregistro, uconstantes, uAdicionarListView, udatahora, umontarsql,
  usystem,
  classeempresa, classeusuario, classeInstrucaoSQL, classeform,
  cxPC, cxControls, dxBar, cxClasses, cxSplitter, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxListView, cxEdit, cxGroupBox, cxRadioGroup,
  cxPCdxBarPopupMenu, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxCore,
  cxDateUtils, dxBarBuiltInMenu, System.Actions;

type
  TfrmConsultaCheque = class(TForm)
    pnl: TPanel;
    ActionList1: TActionList;
    actGerar: TAction;
    ntb: TNotebook;
    Panel2: TPanel;
    lblemissao: TLabel;
    lblateentrada: TLabel;
    lblvencimento: TLabel;
    lblatevencimento: TLabel;
    lblEntrada: TLabel;
    lblatebaixa: TLabel;
    lblprorrog: TLabel;
    lblateprorrog: TLabel;
    Bevel5: TBevel;
    actfechar: TAction;
    pgc: TcxPageControl;
    tbscliente: TcxTabSheet;
    tbsstcheque: TcxTabSheet;
    tbsbanco: TcxTabSheet;
    Bevel2: TBevel;
    edtnmcliente: TEdit;
    edtcdcliente: TEdit;
    lblcdcliente: TLabel;
    lblnmcliente: TLabel;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    edtnucnpjcpf: TMaskEdit;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    Label4: TLabel;
    Label3: TLabel;
    edtcdstcheque: TEdit;
    edtnmstcheque: TEdit;
    Bevel3: TBevel;
    ToolBar7: TToolBar;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    Label5: TLabel;
    edtcdbanco: TEdit;
    edtnmbanco: TEdit;
    Label6: TLabel;
    Bevel4: TBevel;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnsalvar: TdxBarLargeButton;
    dxbrlrgbtnimprimir: TdxBarLargeButton;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    spl1: TcxSplitter;
    lsvcliente: TcxListView;
    lsvstcheque: TcxListView;
    lsvbanco: TcxListView;
    trv: TTreeView;
    edtdtiE: TcxDateEdit;
    edtdtfE: TcxDateEdit;
    edtdtiv: TcxDateEdit;
    edtdtfv: TcxDateEdit;
    edtdtib: TcxDateEdit;
    edtdtfb: TcxDateEdit;
    edtdtip: TcxDateEdit;
    edtdtfp: TcxDateEdit;
    edt9: TcxDateEdit;
    edt10: TcxDateEdit;
    edt11: TcxDateEdit;
    edt12: TcxDateEdit;
    edt13: TcxDateEdit;
    edt14: TcxDateEdit;
    edt15: TcxDateEdit;
    edt16: TcxDateEdit;
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
    procedure edtnmstchequeChange(Sender: TObject);
    procedure edtnmstchequeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmbancoChange(Sender: TObject);
    procedure edtnmbancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmclienteChange(Sender: TObject);
    procedure edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucnpjcpfKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucnpjcpfKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdstchequeKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdbancoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private    { Private declarations }
    tpcodigo : string;
    executar_on_change_stcheque : boolean;
    executar_on_change_banco    : boolean;
    executar_on_change_cliente  : boolean;
    procedure set_treeview;
  public    { Public declarations }
  end;

var
  frmConsultaCheque: TfrmConsultaCheque;

implementation

uses uMain,
  uimprimirrelatoriopadrao, uDtmMain, ustrings;

{$R *.dfm}

procedure TfrmConsultaCheque.FormShow(Sender: TObject);
begin
  tpcodigo       := 'Código';
  ntb.ActivePage := 'Default';
  trv.Items[0].Expand(true);
end;

procedure TfrmConsultaCheque.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvcliente);
end;

procedure TfrmConsultaCheque.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvCliente);
end;

procedure TfrmConsultaCheque.ToolButton8Click(Sender: TObject);
begin
  lsvCliente.Clear;
end;

procedure TfrmConsultaCheque.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvstcheque);
end;

procedure TfrmConsultaCheque.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvstcheque);
end;

procedure TfrmConsultaCheque.ToolButton12Click(Sender: TObject);
begin
  lsvstcheque.Clear;
end;

procedure TfrmConsultaCheque.ToolButton21Click(Sender: TObject);
begin
  AdicionarListView(lsvbanco);
end;

procedure TfrmConsultaCheque.ToolButton22Click(Sender: TObject);
begin
  ExcluirListView(lsvbanco);
end;

procedure TfrmConsultaCheque.ToolButton24Click(Sender: TObject);
begin
  lsvbanco.Clear;
end;

procedure TfrmConsultaCheque.actGerarExecute(Sender: TObject);
var
  nopai, consulta :string;
  cdbanco, cdstcheque, cdcliente, cdtpcliente, cdplconta, cdconta, cdrota, cdtpcobranca, cdrepresentante, cdstcliente, cdstaprovacao : TStrings;
  procedure criar_objetos;
  begin
    cdcliente       := TStringList.create;
    cdstcheque      := TStringList.create;
    cdbanco         := TStringList.create;
    cdstcliente     := TStringList.create;
    cdtpcliente     := TStringList.create;
    cdtpcobranca    := TStringList.create;
    cdrepresentante := TStringList.create;
    cdrota          := TStringList.Create;
    cdstaprovacao   := TStringList.create;
    cdconta         := TStringList.create;
    cdplconta       := TStringList.create;
  end;
  procedure preencher_lista;
  var
    i : Integer;
  begin
    for I := 0 to lsvcliente.Items.count  - 1 do cdcliente.add (lsvCliente.items [i].Caption);
    for I := 0 to lsvstcheque.Items.count - 1 do cdstcheque.add(lsvstcheque.items[i].caption);
    for I := 0 to lsvbanco.Items.count    - 1 do cdbanco.add   (lsvbanco.items   [i].caption);
  end;
  procedure destruir_objetos;
  begin
    cdcliente.Free;
    cdstcheque.Free;
    cdbanco.Free;
    cdstcliente.Free;
    cdtpcliente.Free;
    cdtpcobranca.Free;
    cdrepresentante.Free;
    cdrota.Free;
    cdstaprovacao.Free;
    cdconta.Free;
    cdplconta.Free;
  end;
  function makesqlwhere:string;
  begin
    result := 'where cheque.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl(edtdtiE, edtdtfe, result, _cheque+'.'+_dtemissao    );
    InsercaoDataSQl(edtdtib, edtdtfb, result, _cheque+'.'+_dtentrada    );
    InsercaoDataSQl(edtdtip, edtdtfp, result, _cheque+'.'+_dtprorrogacao);
    InsercaoDataSQl(edtdtiv, edtdtfv, result, _cheque+'.'+_dtvencimento );
    sqlmontarlista(cdbanco   , _cheque, _cdbanco   , result);
    sqlmontarlista(cdcliente , _cheque, _cdcliente , result);
    sqlmontarlista(cdstcheque, _cheque, _cdstcheque, result);
  end;
begin
  criar_objetos;
  try
    preencher_lista;
    //
    nopai    := trv.selected.Parent.Text;
    consulta := trv.selected.text;
    //
    if nopai = 'Relatório' then
    begin
      dtmmain.LogSiteAction(self.name, consulta);
           if consulta = '401 - Diário por Data Emissão'     then ImpimirRelatorioPadrao1(401, makesqlwhere)
      else if consulta = '402 - Diário por Data Entrada'     then ImpimirRelatorioPadrao1(402, makesqlwhere)
      else if consulta = '403 - Diário por Data Vencimento'  then ImpimirRelatorioPadrao1(403, makesqlwhere)
      else if consulta = '404 - Diário por Data Prorrogação' then ImpimirRelatorioPadrao1(404, makesqlwhere)
      else if consulta = '406 - Mensal por Data Emissão'     then ImpimirRelatorioPadrao1(406, makesqlwhere)
      else if consulta = '406 - Mensal por Data Entrada'     then ImpimirRelatorioPadrao1(406, makesqlwhere)
      else if consulta = '406 - Mensal por Data Vencimento'  then ImpimirRelatorioPadrao1(406, makesqlwhere)
      else if consulta = '406 - Mensal por Data Prorrogação' then ImpimirRelatorioPadrao1(406, makesqlwhere)
      else if consulta = '405 - Sintético'                   then ImpimirRelatorioPadrao1(405, makesqlwhere)
      else if consulta = '400 - Sintético (por cliente)'     then ImpimirRelatorioPadrao1(400, makesqlwhere)
      else if consulta = '398 - Sintético (por status)'      then ImpimirRelatorioPadrao1(398, makesqlwhere)
      else if consulta = '399 - Sintético (por banco)'       then ImpimirRelatorioPadrao1(399, makesqlwhere);
    end;
  finally
    destruir_objetos;
  end;
end;

procedure TfrmConsultaCheque.trvChange(Sender: TObject; Node: TTreeNode);
var
  consulta : string;
begin
  ntb.ActivePage   := 'Default';
  consulta         := node.text;
  actGerar.Enabled := false;
  if (consulta = '405 - Sintético') or
     (consulta = '401 - Diário por Data Emissão') or
     (consulta = '402 - Diário por Data Entrada') or
     (consulta = '403 - Diário por Data Vencimento') or
     (consulta = '404 - Diário por Data Prorrogação') or
     (consulta = '406 - Mensal por Data Emissão') or
     (consulta = '406 - Mensal por Data Entrada') or
     (consulta = '406 - Mensal por Data Vencimento') or
     (consulta = '406 - Mensal por Data Prorrogação') or
     (consulta = '400 - Sintético (por cliente)')or
     (consulta = '398 - Sintético (por status)') or
     (consulta = '399 - Sintético (por banco)') then
  begin
    actGerar.Enabled  := True;
    pgc.Visible              := true;
    tbsCliente.TabVisible    := true;
    tbsstcheque.TabVisible   := true;
    tbsbanco.tabvisible      := true;
    lblemissao.caption       := Maiuscula(__emissao);
    lblemissao.Visible       := true;
    lblvencimento.Visible    := true;
    lblEntrada.Visible       := true;
    lblprorrog.Visible       := true;
    lblateentrada.Visible    := true;
    lblatevencimento.Visible := true;
    lblatebaixa.Visible      := true;
    lblateprorrog.Visible    := true;
    if not edtdtiE.Visible then edtdtiE.Visible := true;
    if not edtdtfe.visible then edtdtfe.Visible := true;
    if not edtdtiv.visible then edtdtiv.Visible := true;
    if not edtdtfv.Visible then edtdtfv.visible := true;
    if not edtdtib.Visible then edtdtib.Visible := true;
    if not edtdtfb.Visible then edtdtfb.Visible := true;
    if not edtdtip.Visible then edtdtip.Visible := true;
    if not edtdtfp.Visible then edtdtfp.Visible := true;
  end;
end;

procedure TfrmConsultaCheque.edtnmstchequeChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stcheque);
end;

procedure TfrmConsultaCheque.edtnmstchequeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstcheque, executar_on_change_stcheque, tedit(sender), key);
end;

procedure TfrmConsultaCheque.edtnmbancoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_banco);
end;

procedure TfrmConsultaCheque.edtnmbancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvbanco, executar_on_change_banco, tedit(sender), key);
end;

procedure TfrmConsultaCheque.edtnmclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cliente);
end;

procedure TfrmConsultaCheque.edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcliente, executar_on_change_cliente, tedit(sender), key);
end;

procedure TfrmConsultaCheque.edtnucnpjcpfKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
      edtnucnpjcpf.Enabled   := true;
      edtnucnpjcpf.Visible   := true;
      edtnucnpjcpf.EditMask  := MascaraDocumento(tpcodigo);
      edtnucnpjcpf.SetFocus;
      edtcdcliente.Enabled   := false;
      edtcdcliente.visible   := false;
    end
    else if tpcodigo = 'CPF' then
    begin
      tpcodigo               := 'Código';
      edtcdcliente.Enabled   := true;
      edtcdcliente.visible   := true;
      edtcdcliente.SetFocus;
      edtnucnpjcpf.Enabled   := false;
      edtnucnpjcpf.Visible   := false;
    end;
    lblcdcliente.Caption := tpcodigo;
  end;
end;

procedure TfrmConsultaCheque.edtnucnpjcpfKeyPress(Sender: TObject; var Key: Char);
var
  ListItem: TListItem;
  cdcliente : string;
  i : integer;
begin
  if key = #13 then
  begin
    if tpcodigo = 'Código' then
    begin
      if not codigoexiste(_cliente, edtcdcliente.text) then
      begin
        exit;
      end;
      cdcliente := edtcdcliente.text;
      edtcdcliente.Clear;
    end
    else
    begin
      cdcliente := CodigodoCampo(_cliente, edtnucnpjcpf.Text, 'nu'+tpcodigo);
    end;
    if cdcliente <> '' then
    begin
      tpcodigo := 'Código';
      lblcdcliente.Caption := tpcodigo;
      edtcdcliente.Enabled := true;
      edtcdcliente.Visible := true;
      edtcdcliente.SetFocus;
      //
      edtnucnpjcpf.Enabled := false;
      edtnucnpjcpf.Visible := false;
      //
      for i := 0 to lsvcliente.Items.Count - 1 do
      begin
        if lsvcliente.Items.Item[i].Caption = cdcliente then
        begin
          exit;
        end;
      end;
      ListItem := lsvcliente.Items.Add;
      ListItem.Caption := cdcliente;
      ListItem.SubItems.Add(NomedoCodigo(_cliente, cdcliente));
    end;
  end;
end;

procedure TfrmConsultaCheque.edtcdstchequeKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstcheque, TEdit(sender), key);
end;

procedure TfrmConsultaCheque.edtcdbancoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvbanco, TEdit(sender), key);
end;

procedure TfrmConsultaCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsultaCheque.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmConsultaCheque.set_treeview;
var
  no1 : TTreeNode;
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
  trv.Items.AddChild(no1, '401 - Diário por Data Emissão');
  trv.Items.AddChild(no1, '402 - Diário por Data Entrada');
  trv.Items.AddChild(no1, '404 - Diário por Data Prorrogação');
  trv.Items.AddChild(no1, '403 - Diário por Data Vencimento');
  trv.Items.AddChild(no1, '406 - Mensal por Data Emissão');
  trv.Items.AddChild(no1, '406 - Mensal por Data Entrada');
  trv.Items.AddChild(no1, '406 - Mensal por Data Prorrogação');
  trv.Items.AddChild(no1, '406 - Mensal por Data Vencimento');
  trv.Items.AddChild(no1, '405 - Sintético');
  trv.Items.AddChild(no1, '400 - Sintético (por cliente)');
  trv.Items.AddChild(no1, '398 - Sintético (por status)');
  trv.Items.AddChild(no1, '399 - Sintético (por banco)');
end;

procedure TfrmConsultaCheque.FormCreate(Sender: TObject);
begin
  set_treeview;
end;

end.
