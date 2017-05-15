unit umanagerautpagto;

interface

uses
  System.Actions, System.UITypes,
  forms, Graphics, Classes, Dialogs, ActnList, variants, ActnMan, windows, StdCtrls,
  Controls, ComCtrls, ToolWin, ExtCtrls, SysUtils, Menus,
  umontarsql, urotinas, uconstantes, uregistro, uexportarexcel,
  udatahora, ustrings, udlgdatabalanco,
  classeaplicacao, classeadntcliente, classeadntfornecedor, classeempresa, classeretornasql,
  classeusuario, classeform, classequery, classemanagerautpagto,
  XPStyleActnCtrls, dxBar, cxClasses, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxSplitter, dxNavBarCollns, dxNavBarBase, dxNavBar, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCurrencyEdit, cxPC, cxDropDownEdit, cxBarEditItem, cxContainer, cxLabel, cxCalendar, cxGridChartView,
  cxGridDBChartView, cxTextEdit, cxMaskEdit, cxCheckBox, dxBarExtItems, cxDBLookupComboBox, cxPCdxBarPopupMenu,
  cxNavigator, cxGridDBDataDefinitions, dxBarBuiltInMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.DB;

type
  TfrmManagerAutPagto = class(TForm)
    act: TActionManager;
    actImprimir: TAction;
    actAtualizar: TAction;
    actAbrirAutPagto: TAction;
    actListagemAutPagto: TAction;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    btnfiltrar: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dts: TDataSource;
    dxBarLargeButton2: TdxBarLargeButton;
    actbaixa: TAction;
    actabrirduplicata: TAction;
    btnduplicata: TdxBarLargeButton;
    actduplicata: TAction;
    actautpagto: TAction;
    actgrafico: TAction;
    btnautpagto: TdxBarLargeButton;
    btngrafico: TdxBarLargeButton;
    cbxstatus: TdxBarCombo;
    cbxtpdata: TdxBarCombo;
    edtdtinicio: TcxBarEditItem;
    edtdtfinal: TcxBarEditItem;
    cbxgrafico: TcxBarEditItem;
    cbxfaixa: TcxBarEditItem;
    cbxvalor: TcxBarEditItem;
    ckbsaldoconta: TcxBarEditItem;
    ckbbopedidoordcompra: TcxBarEditItem;
    btnviewgroup: TdxBarLargeButton;
    actviewgroup: TAction;
    btnfiltro: TdxBarLargeButton;
    actfiltro: TAction;
    dxBarLargeButton6: TdxBarLargeButton;
    pumimprimir: TdxBarPopupMenu;
    actimprimirautorizacaopagamento: TAction;
    dxBarButton3: TdxBarButton;
    actabrirfornecedor: TAction;
    actabrircliente: TAction;
    actexcel: TAction;
    dxBarLargeButton7: TdxBarLargeButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDAUTPAGTO: TcxGridDBColumn;
    tbvNUDUPLICATA: TcxGridDBColumn;
    tbvCDFORNECEDOR: TcxGridDBColumn;
    tbvRZSOCIAL: TcxGridDBColumn;
    tbvDSHISTORICO: TcxGridDBColumn;
    tbvNMTPCOBRANCA: TcxGridDBColumn;
    tbvCDCNTCUSTO: TcxGridDBColumn;
    tbvCDPLCONTA: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTVENCIMENTO: TcxGridDBColumn;
    tbvDTBAIXA: TcxGridDBColumn;
    tbvVLAUTPAGTO: TcxGridDBColumn;
    tbvVLSALDO: TcxGridDBColumn;
    tbvVLBAIXA: TcxGridDBColumn;
    tbvVLMULTA: TcxGridDBColumn;
    tbvVLJUROS: TcxGridDBColumn;
    tbvVLDESCONTO: TcxGridDBColumn;
    tbvVLDEVOLUCAO: TcxGridDBColumn;
    tbvVLABATIMENTO: TcxGridDBColumn;
    tbvVLRECEBIDO: TcxGridDBColumn;
    tbvNMSTAUTPAGTO: TcxGridDBColumn;
    tbvDTPRORROGACAO: TcxGridDBColumn;
    tbvPRMORADIARIA: TcxGridDBColumn;
    tbvNUCOR: TcxGridDBColumn;
    tbvNUCORCONTA: TcxGridDBColumn;
    tbvPRMULTA: TcxGridDBColumn;
    tbvnmusuario: TcxGridDBColumn;
    tbvtsaprovacao: TcxGridDBColumn;
    grf: TcxGridDBChartView;
    grfDataGroup1: TcxGridDBChartDataGroup;
    grfDespesa: TcxGridDBChartSeries;
    grfReceita: TcxGridDBChartSeries;
    lvl: TcxGridLevel;
    qry: TFDQuery;
    dtsgrafico: TDataSource;
    grfValor: TcxGridDBChartSeries;
    procedure actAtualizarExecute(Sender: TObject);
    procedure actAbrirAutPagtoExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actbaixaExecute(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actabrirduplicataExecute(Sender: TObject);
    procedure actautpagtoExecute(Sender: TObject);
    procedure actduplicataExecute(Sender: TObject);
    procedure actgraficoExecute(Sender: TObject);
    procedure cbxstatusChange(Sender: TObject);
    procedure cbxtpdataChange(Sender: TObject);
    procedure cbxgraficoPropertiesCloseUp(Sender: TObject);
    procedure edtdtfinalChange(Sender: TObject);
    procedure edtdtinicioChange(Sender: TObject);
    procedure cbxfaixaPropertiesCloseUp(Sender: TObject);
    procedure cbxvalorPropertiesCloseUp(Sender: TObject);
    procedure ckbsaldocontaChange(Sender: TObject);
    procedure ckbbopedidoordcompraChange(Sender: TObject);
    procedure actviewgroupExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actimprimirautorizacaopagamentoExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure actabrirfornecedorExecute(Sender: TObject);
    procedure actexcelExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure grfGetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
  private    { Private declarations }
    tbl : string;
    gerenciador : TGerenciador;
    procedure setquery2(boatualizar:boolean=false);
    procedure set_dados;
    function check_adiantamento:boolean;
    function check_adnt_cliente:boolean;
    function check_adnt_fornecedor:boolean;
    function mudouGraficoWhere:boolean;
    procedure SetGraficoWhere;
  public { Public declarations }
  end;

var
  frmManagerAutPagto: TfrmManagerAutPagto;

implementation

uses uMain,
  ubaixa,
  uDtmMain,
  uDlgEscolhePedido,
  uimprimirrelatoriopadrao;

{$R *.dfm}

const
  exibe = 'Gerenciador Financeiro';

procedure TfrmManagerAutPagto.SetGraficoWhere;
begin
  gerenciador.tpdata := cbxtpdata.Text;
  gerenciador.dti := edtdtinicio.EditValue;
  gerenciador.dtf := edtdtfinal.EditValue;
  gerenciador.tpgrafico := cbxgrafico.EditValue;
  gerenciador.tpfaixa := cbxfaixa.EditValue;
  gerenciador.tpvalor := cbxvalor.EditValue;
  gerenciador.status := cbxstatus.Text;
  gerenciador.bosaldoconta := ckbsaldoconta.EditValue;
  gerenciador.bopedidoordcompra := ckbbopedidoordcompra.EditValue;
  gerenciador.tbl := tbl;
  if (gerenciador.tbl = '') and (gerenciador.tpgrafico = 'Acumulado (Receita - Despesa)') then
  begin
    ckbsaldoconta.Visible := ivalways;
  end
  else
  begin
    ckbsaldoconta.Visible := ivNever;
  end;
end;

procedure TfrmManagerAutPagto.set_dados;
begin
  grfValor.visible := (gerenciador.tpgrafico = 'Saldo (Receitas - Despesas)') or (gerenciador.tpgrafico = 'Acumulado (Receita - Despesa)');
  grfDespesa.Visible := (gerenciador.tpgrafico = 'Despesas') or (gerenciador.tpgrafico = 'Receitas X Despesas');
  grfReceita.Visible := (gerenciador.tpgrafico = 'Receitas') or (gerenciador.tpgrafico = 'Receitas X Despesas');
  gerenciador.SetDataset;
  lvl.GridView := grf;
  grf.Title.Text := cbxgrafico.EditValue;
  if (gerenciador.tpgrafico = 'Acumulado (Receita - Despesa)') and (gerenciador.bosaldoconta = _s) then
  begin
    grf.Title.Text := grf.Title.Text + ' - Saldo de Conta R$ '+formatfloat(__moeda, gerenciador.vlsaldoconta);
  end;
end;

procedure TfrmManagerAutPagto.setquery2(boatualizar:boolean=false);
begin
  if (not boatualizar) and (not mudouGraficoWhere) then
  begin
    exit;
  end;
  SetGraficoWhere;
  qry.Close;
  if tbl = '' then
  begin
    set_dados;
    exit;
  end;
  if tbl = _duplicata then
  begin
    qry.sql.text := gerenciador.makesqlduplicata;
  end
  else
  begin
    qry.sql.text := gerenciador.makesqlautpagto;
  end;
  qry.open;
  if tbl = ''then
  begin
    exit;
  end;
  if tbl = _duplicata then
  begin
    TCXGridDBTableSummaryItem(tbv.DataController.Summary.FooterSummaryItems[0]).FieldName := _nuduplicata
  end
  else
  begin
    TCXGridDBTableSummaryItem(tbv.DataController.Summary.FooterSummaryItems[0]).FieldName := _cdautpagto;
  end;
  lvl.GridView := tbv;
end;

procedure TfrmManagerAutPagto.actAtualizarExecute(Sender: TObject);
begin
  setquery2(true);
end;

procedure TfrmManagerAutPagto.actAbrirAutPagtoExecute(Sender: TObject);
begin
  frmmain.AbrirDireto(taction(sender), qry, qry);
end;

procedure TfrmManagerAutPagto.actImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmManagerAutPagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmManagerAutPagto.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmManagerAutPagto.FormShow(Sender: TObject);
begin
  tbvCDPLCONTA.Visible  := empresa.financeiro.boplconta;
  tbvCDCNTCUSTO.Visible := empresa.financeiro.bocntcusto;
  edtdtinicio.OnChange  := nil;
  edtdtfinal.OnChange   := nil;
  edtdtinicio.EditValue := DtBanco;
  edtdtfinal.EditValue  := edtdtinicio.EditValue;
  edtdtinicio.OnChange  := edtdtinicioChange;
  edtdtfinal.OnChange   := edtdtfinalChange;
  actautpagto.Checked := true;
  actautpagtoExecute(actautpagto);
end;

procedure TfrmManagerAutPagto.grfGetValueHint(Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
var
  clone : TDataClient;
begin
  if (gerenciador.bopedidoordcompra = _s) then
  begin
    clone := TDataClient.create;
    try
      clone.m.CloneCursor(gerenciador.c, false, true);
      if clone.m.locate('DIA', Sender.Categories.Values[AValueIndex], []) then
      begin
        if TcxGridDBChartSeries(ASeries).DataBinding.FieldName = uppercase(_vldespesa) then
        begin
          ahint := ahint + #13'Contas a Pagar: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlautpagto).ascurrency)
                         + #13'Ordem Compra: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlordcompra).ascurrency);
        end
        else if TcxGridDBChartSeries(ASeries).DataBinding.FieldName = uppercase(_vlreceita) then
        begin
          ahint := ahint + #13'Contas a Receber: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlduplicata).ascurrency)
                         + #13'Pedido: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlpedido).ascurrency);
        end
        else if TcxGridDBChartSeries(ASeries).DataBinding.FieldName = uppercase(_valor) then
        begin
          ahint := ahint + #13'Contas a Pagar: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlautpagto).ascurrency)
                         + #13'Ordem Compra: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlordcompra).ascurrency)
                         + #13'Contas a Receber: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlduplicata).ascurrency)
                         + #13'Pedido: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlpedido).ascurrency);
        end;
      end;
    finally
      freeandnil(clone);
    end;
  end
  else if TcxGridDBChartSeries(ASeries).DataBinding.FieldName = uppercase(_valor) then
  begin
    clone := TDataClient.create;
    try
      clone.m.CloneCursor(gerenciador.c, false, true);
      if clone.m.locate('DIA', Sender.Categories.Values[AValueIndex], []) then
      begin
        ahint := ahint + #13'Contas a Pagar: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlautpagto).ascurrency)
                       + #13'Contas a Receber: R$ '+formatfloat(__moeda, clone.m.fieldbyname(_vlduplicata).ascurrency);
      end;
    finally
      freeandnil(clone);
    end;
  end;
end;

function TfrmManagerAutPagto.mudouGraficoWhere: boolean;
begin
  result := (gerenciador.tpdata <> cbxtpdata.Text) or
            (gerenciador.dti <> edtdtinicio.EditValue) or
            (gerenciador.dtf <> edtdtfinal.EditValue) or
            (gerenciador.tpgrafico <> cbxgrafico.EditValue) or
            (gerenciador.tpfaixa <> cbxfaixa.EditValue) or
            (gerenciador.status <> cbxstatus.Text) or
            (gerenciador.tpvalor <> cbxvalor.EditValue) or
            (gerenciador.bosaldoconta <> ckbsaldoconta.EditValue) or
            (gerenciador.tbl <> tbl) or
            (gerenciador.bopedidoordcompra <> ckbbopedidoordcompra.EditValue);
end;

procedure TfrmManagerAutPagto.actbaixaExecute(Sender: TObject);
begin
  if check_adiantamento then
  begin
    exit;
  end;
  if BaixarDocumento(tbl, qry.fieldbyname(_cdautpagto).AsInteger, tbv) then
  begin
    qry.Refresh;
  end;
end;

procedure TfrmManagerAutPagto.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmManagerAutPagto.actabrirduplicataExecute(Sender: TObject);
begin
  frmmain.AbrirDireto(taction(sender), qry, qry);
end;

procedure TfrmManagerAutPagto.actautpagtoExecute(Sender: TObject);
begin
  tbl := _autpagto;
  actbaixa.Visible                      := true;
  actfiltro.Visible                     := true;
  actviewgroup.Visible                  := true;
  tbvCDAUTPAGTO.Visible                 := True;
  tbvtsaprovacao.Visible                := True;
  tbvnmusuario.Visible                  := True;
  tbvRZSOCIAL.Caption                   := Maiuscula(_Fornecedor);
  tbvCDFORNECEDOR.DataBinding.FieldName := _CDFornecedor;
  tbvNUDUPLICATA.Styles.Content         := nil;
  cbxstatus.Visible            := ivAlways;
  cbxgrafico.Visible           := ivNever;
  cbxfaixa.Visible             := ivnever;
  cbxvalor.Visible             := ivnever;
  ckbsaldoconta.Visible        := ivNever;
  ckbbopedidoordcompra.Visible := ivNever;
  actimprimirautorizacaopagamento.visible := true;
  setquery2;
end;

procedure TfrmManagerAutPagto.actduplicataExecute(Sender: TObject);
begin
  tbl := _duplicata;
  actbaixa.Visible := true;
  actfiltro.Visible := true;
  actviewgroup.Visible := true;
  tbvtsaprovacao.Visible := false;
  tbvnmusuario.Visible := false;
  tbvCDAUTPAGTO.Visible := false;
  tbvNUDUPLICATA.Visible := true;
  tbvRZSOCIAL.Caption := Maiuscula(_Cliente);
  tbvCDFORNECEDOR.DataBinding.FieldName := _CDcliente;
  tbvNUDUPLICATA.Styles.Content := dtmmain.cxStyle1;
  cbxstatus.Visible := ivAlways;
  cbxgrafico.Visible := ivNever;
  cbxfaixa.Visible := ivnever;
  cbxvalor.Visible := ivnever;
  ckbsaldoconta.Visible := ivnever;
  ckbbopedidoordcompra.Visible := ivnever;
  actimprimirautorizacaopagamento.visible := false;
  setquery2;
end;

procedure TfrmManagerAutPagto.actgraficoExecute(Sender: TObject);
begin
  tbl := '';
  actbaixa.Visible := false;
  actfiltro.Visible := false;
  actviewgroup.Visible := false;
  cbxstatus.Visible := ivNever;
  cbxgrafico.Visible := ivAlways;
  cbxfaixa.Visible := ivalways;
  cbxvalor.Visible := ivalways;
  ckbbopedidoordcompra.Visible := ivalways;
  actimprimirautorizacaopagamento.visible := false;
  setquery2;
end;

procedure TfrmManagerAutPagto.cbxstatusChange(Sender: TObject);
begin
  setquery2;
end;

procedure TfrmManagerAutPagto.cbxtpdataChange(Sender: TObject);
begin
  setquery2;
end;

procedure TfrmManagerAutPagto.cbxgraficoPropertiesCloseUp(Sender: TObject);
begin
  setquery2;
end;

procedure TfrmManagerAutPagto.edtdtfinalChange(Sender: TObject);
begin
  setquery2;
end;

procedure TfrmManagerAutPagto.edtdtinicioChange(Sender: TObject);
begin
  setquery2;
end;

procedure TfrmManagerAutPagto.cbxfaixaPropertiesCloseUp(Sender: TObject);
begin
  setquery2;
end;

procedure TfrmManagerAutPagto.cbxvalorPropertiesCloseUp(Sender: TObject);
begin
  setquery2;
end;

procedure TfrmManagerAutPagto.ckbsaldocontaChange(Sender: TObject);
begin
  setquery2;
end;

procedure TfrmManagerAutPagto.ckbbopedidoordcompraChange(Sender: TObject);
begin
  setquery2;
end;

procedure TfrmManagerAutPagto.actviewgroupExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnviewgroup.down;
end;

procedure TfrmManagerAutPagto.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmManagerAutPagto.FormCreate(Sender: TObject);
begin
  TcxLookupComboBoxProperties(tbvCDPLCONTA.Properties).ListSource := abrir_tabela(_plconta);
  TcxLookupComboBoxProperties(tbvCDCNTCUSTO.Properties).ListSource := abrir_tabela(_CNTCUSTO);
  gerenciador := TGerenciador.create;
  dtsgrafico.DataSet := gerenciador.c;
end;

procedure TfrmManagerAutPagto.FormDestroy(Sender: TObject);
begin
  freeandnil(gerenciador);
end;

function TfrmManagerAutPagto.check_adnt_cliente:boolean;
var
  cdadntcliente, valor : TStrings;
  cdadiantamento : string;
  i : Integer;
begin
  result        := False;
  cdadntcliente := TStringlist.create;
  valor         := TStringList.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if not tbv.ViewData.Records[i].Selected then
      begin
        continue;
      end;
      cdadntcliente.clear;
      valor.clear;
      if (lowercase(tbv.GetColumnByFieldName(_nmstautpagto).DataBinding.Field.AsString) = _ABERTA) and
         tadntcliente.ClientePossuiAdiantamento(tbv.GetColumnByFieldName(_cdcliente).DataBinding.Field.AsString, cdadntcliente, valor) and (cdadntcliente.count > 0 ) and
         (messagedlg('Cliente '+tbv.GetColumnByFieldName(_rzsocial).DataBinding.Field.AsString+' possui adiantamento.'#13'Deseja baixar contas a receber '+tbv.GetColumnByFieldName(_nuduplicata).DataBinding.Field.AsString+' com adiantamento?', mtinformation, [mbyes, mbno], 0) = mryes) then
      begin
        cdadiantamento := cdadntcliente[0];
        if cdadntcliente.Count > 1 then
        begin
          cdadiantamento := dlgescolheadiantamento(cdadntcliente, valor);
        end;
        if cdadiantamento <> '' then
        begin
          result := BaixarAdiantamento(tbv.GetColumnByFieldName(_cdautpagto).DataBinding.Field.AsInteger, tbl, strtoint(cdadiantamento));
        end;
      end;
    end;
  finally
    freeandnil(cdadntcliente);
    freeandnil(valor);
  end;
end;

function TfrmManagerAutPagto.check_adnt_fornecedor:boolean;
var
  cdadntfornecedor, valor : TStrings;
  cdadiantamento : string;
  i : Integer;
begin
  result           := False;
  cdadntfornecedor := TStringlist.create;
  valor            := TStringList.create;
  try
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if not tbv.ViewData.Records[i].Selected then
      begin
        continue;
      end;
      cdadntfornecedor.Clear;
      valor.Clear;
      if (lowercase(tbv.GetColumnByFieldName(_nmstautpagto).DataBinding.Field.AsString) = _ABERTA) and
         tadntfornecedor.fornecedorPossuiAdiantamento(tbv.GetColumnByFieldName(_cdfornecedor).DataBinding.Field.AsString, cdadntfornecedor, valor) and (cdadntfornecedor.count > 0 ) and
         (messagedlg('Fornecedor '+tbv.GetColumnByFieldName(_rzsocial).DataBinding.Field.AsString+' possui adiantamento.'#13'Deseja baixar contas a pagar '+
                     tbv.GetColumnByFieldName(_NUDUPLICATA).DataBinding.Field.AsString+' com adiantamento?', mtinformation, [mbyes, mbno], 0) = mryes) then
      begin
        cdadiantamento := cdadntfornecedor[0];
        if cdadntfornecedor.Count > 1 then
        begin
          cdadiantamento := dlgescolheadiantamento(cdadntfornecedor, valor);
        end;
        if cdadiantamento <> '' then
        begin
          result := BaixarAdiantamento(tbv.GetColumnByFieldName(_cdautpagto).DataBinding.Field.AsInteger, tbl, strtoint(cdadiantamento));
        end;
      end;
    end;
  finally
    freeandnil(cdadntfornecedor);
    freeandnil(valor);
  end;
end;

function TfrmManagerAutPagto.check_adiantamento:boolean;
begin
  result := false;
  if tbl = _autpagto then
  begin
    result := check_adnt_fornecedor;
  end
  else if tbl = _duplicata then
  begin
    result := check_adnt_cliente;
  end;
end;

procedure TfrmManagerAutPagto.actimprimirautorizacaopagamentoExecute(Sender: TObject);
  function makesql:string;
  var
    x, i : Integer;
  begin
    result := '';
    for i := 0 to tbv.ViewData.RecordCount -1 do
    begin
      if not tbv.ViewData.Records[i].Selected then
      begin
        continue;
      end;
      for x := 0 to tbv.ColumnCount - 1 do
      begin
        if _cdautpagto <> LowerCase(tbv.Columns[x].DataBinding.FieldName) then
        begin
          continue;
        end;
        if result <> '' then
        begin
          result := result + ',';
        end;
        result := result + tbv.ViewData.Records[i].DisplayTexts[X];
      end;
    end;
    if result = '' then
    begin
      result := '='+qry.fieldbyname(_cdautpagto).AsString
    end
    else
    begin
      result := ' in ('+result+')';
    end;
    result := _where+' '+_cdautpagto+result;
  end;
begin
  ImpimirRelatorioPadrao1(500, makesql);
end;

procedure TfrmManagerAutPagto.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvCDAUTPAGTO;
  if AViewInfo.Item.ID = Column.Index then
  begin
    Exit;
  end;
  Column := tbvNUCORCONTA;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  end
  else
  begin
    Column := tbvNUCOR;
    if AViewInfo.GridRecord.DisplayTexts[Column.Index] = '' then
    begin
      Exit;
    end;
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
    if ACanvas.Font.Color = clred  then
    begin
      ACanvas.Font.Style := [fsStrikeOut, fsBold]
    end
    else if ACanvas.Font.Color = clblue then
    begin
      ACanvas.Font.Style := [fsBold];
    end;
  end;
end;

procedure TfrmManagerAutPagto.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if tbl = _autpagto  then
  begin
    if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdautpagto then
    begin
      actAbrirautpagto.onExecute(actAbrirautpagto)
    end
    else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdfornecedor then
    begin
      actabrirfornecedorExecute(actabrirfornecedor);
    end;
  end
  else if tbl = _duplicata then
  begin
    if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nuduplicata then
    begin
      actabrirduplicata.OnExecute(actabrirduplicata)
    end
    else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcliente then
    begin
      actabrirclienteExecute(actabrircliente);
    end;
  end;
end;

procedure TfrmManagerAutPagto.actabrirclienteExecute(Sender: TObject);
begin
  frmmain.AbrirDireto(taction(sender), qry, qry);
end;

procedure TfrmManagerAutPagto.actabrirfornecedorExecute(Sender: TObject);
begin
  frmmain.AbrirDireto(taction(sender), qry, qry);
end;

procedure TfrmManagerAutPagto.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmManagerAutPagto.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

end.
