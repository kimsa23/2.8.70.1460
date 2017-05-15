unit uconsultarepresentante;

interface

uses
  forms, Classes, ActnList, ComCtrls, StdCtrls, Mask, Buttons, Controls, ExtCtrls,
  ToolWin, sysutils, windows, dialogs,
  sqlexpr,
  uregistro, udatahora, uAdicionarListView, ustrings, umontarsql,
  uconstantes, usystem,
  classeempresa, classeusuario, classeform,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxPC, cxCheckBox, cxCalendar, dxBar, cxClasses, cxSplitter, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxListView, cxLabel, cxGroupBox, cxRadioGroup,
  cxPCdxBarPopupMenu, dxCore, cxDateUtils, dxBarBuiltInMenu, System.Actions;

type
  TfrmConsultaRepresentante = class(TForm)
    ActionList1: TActionList;
    actGerar: TAction;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    spl1: TcxSplitter;
    trv: TTreeView;
    pnl: TcxLabel;
    pnlcliente: TPanel;
    pgc: TcxPageControl;
    tbsrepresentante: TcxTabSheet;
    Bevel4: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    ToolBar7: TToolBar;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    lsvrepresentante: TcxListView;
    edtcdrepresentante: TEdit;
    edtnmrepresentante: TEdit;
    tbsstcliente: TcxTabSheet;
    Bevel3: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    edtnmstcliente: TEdit;
    edtcdstcliente: TEdit;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    lsvstcliente: TcxListView;
    tbstppedido: TcxTabSheet;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    edtcdtppedido: TEdit;
    edtnmtppedido: TEdit;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton4: TToolButton;
    lsvtppedido: TcxListView;
    tbsmunicipio: TcxTabSheet;
    Bevel5: TBevel;
    Label8: TLabel;
    Label9: TLabel;
    edtcdmunicipio: TEdit;
    edtnmmunicipio: TEdit;
    ToolBar2: TToolBar;
    ToolButton15: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    lsvmunicipio: TcxListView;
    tbsbairro: TcxTabSheet;
    Bevel6: TBevel;
    Label7: TLabel;
    edtnmbairro: TEdit;
    ToolBar3: TToolBar;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    lsvnmbairro: TcxListView;
    Panel2: TPanel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    lblinicial: TLabel;
    lblfinal: TLabel;
    lblclassificacao: TLabel;
    lblbaixa: TLabel;
    lblatebaixa: TLabel;
    edtdtf: TcxDateEdit;
    edtdti: TcxDateEdit;
    cbxclassificacao: TComboBox;
    edtdtib: TDateTimePicker;
    edtdtfb: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ToolButton24Click(Sender: TObject);
    procedure actGerarExecute(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure edtcdstclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure edtcdtppedidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtppedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure edtnmmunicipioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure edtnmbairroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure ToolButton15Click(Sender: TObject);
    procedure edtcdmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmrepresentanteChange(Sender: TObject);
    procedure edtnmstclienteChange(Sender: TObject);
    procedure edtnmtppedidoChange(Sender: TObject);
    procedure edtnmmunicipioChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private    { Private declarations }
    executar_on_change_representante : boolean;
    executar_on_change_stcliente     : boolean;
    executar_on_change_tppedido      : boolean;
    executar_on_change_municipio     : boolean;
    executar_on_change_bairro        : boolean;
    procedure set_treeview;
  public    { Public declarations }
  end;

var
  frmConsultaRepresentante: TfrmConsultaRepresentante;

implementation

uses uMain, rptreferenciacruzada,
  uimprimirrelatoriopadrao, uDtmMain;

{$R *.dfm}

procedure TfrmConsultaRepresentante.FormShow(Sender: TObject);
begin
  edtdtf.date     := dtbanco;
  edtdti.date     := edtdtf.date;
  edtdtfb.date    := edtdtf.date;
  edtdtib.date    := edtdtf.date;
  edtdtfb.Checked := false;
  edtdtib.Checked := false;
  trv.Items[0].Expand(true);
end;

procedure TfrmConsultaRepresentante.ToolButton21Click(Sender: TObject);
begin
  AdicionarListView(lsvrepresentante);
end;

procedure TfrmConsultaRepresentante.ToolButton22Click(Sender: TObject);
begin
  ExcluirListView(lsvrepresentante);
end;

procedure TfrmConsultaRepresentante.ToolButton24Click(Sender: TObject);
begin
  lsvrepresentante.Clear;
end;

procedure TfrmConsultaRepresentante.actGerarExecute(Sender: TObject);
var
  I: Integer;
  nmclassificacao, nopai, consulta :string;
  cdmunicipio, nmbairro, cdtppedido, cdstcliente, cdrepresentante : TStrings;
  dti, dtf : TDate;
  function makesqlwhere454:string;
  begin
    result := 'where cliente.cdempresa='+empresa.cdempresa.tostring+' ';
    sqlmontarlista(cdrepresentante, _cliente, _cdrepresentante, result);
    sqlmontarlista(cdstcliente    , _cliente, _cdstcliente    , result);
    sqlmontarlista(cdmunicipio    , _cliente, _cdmunicipio    , result);
    sqlmontarlista(nmbairro       , _cliente, _nmbairro       , result);
  end;
  function makesqlwhere455:string;
  begin
    result := 'where saida.cdempresa='+empresa.cdempresa.tostring+' and saida.tpentsai=''S'' and saida.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
    sqlmontarlista(cdstcliente    , _cliente, _cdstcliente    , result);
    sqlmontarlista(cdrepresentante, _saida  , _cdrepresentante, result);
    if cdtppedido.Count > 0 then
    begin
      result := result + 'and saida.cdsaida in (select cdsaida '+
                                               'from itsaida '+
                                               'inner join pedido on pedido.cdpedido=itsaida.cdpedido and itsaida.cdempresa=pedido.cdempresa '+
                                               'where itsaida.cdempresa='+empresa.cdempresa.tostring+' and itsaida.cdsaida=saida.cdsaida ';
      sqlmontarlista(cdtppedido, _pedido, _cdtppedido, result);
      result := result + ') ';
    end;
         if nmclassificacao = 'Número da Nota Fiscal' then result := result + 'order by saida.nusaida'
    else if nmclassificacao = 'Razão Social Cliente'  then result := result + 'order by cliente.nmcliente,saida.cdsaida ';
  end;
  function makesqlwhere456:string;
  begin
    result := 'where saida.cdempresa='+empresa.cdempresa.tostring+' and saida.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdrepresentante, _saida, _cdrepresentante, result);
    sqlmontarlista(cdstcliente    , _cliente, _cdstcliente    , result);
    if cdtppedido.Count > 0 then
    begin
      result := result +
             'and cdsaida in (select cdsaida ' +
                             'from itsaida ' +
                             'inner join pedido on pedido.cdpedido=itsaida.cdpedido and itsaida.cdempresa=pedido.cdempresa '+
                             'where itsaida.cdempresa='+empresa.cdempresa.tostring+' and itsaida.cdsaida=saida.cdsaida ';
      sqlmontarlista(cdtppedido, _pedido, _cdtppedido, result);
      result := result + ') ';
    end;
    result := result + 'order by ';
    if cdrepresentante.count > 0 then
    begin
      result := result + 'saida.cdrepresentante,';
    end;
    if nmclassificacao = 'Razão Social Cliente' then
    begin
      result := result + 'cliente.nmcliente,';
    end;
    Result := Result + 'saida.nusaida';
  end;
  function makesqlwhere457:string;
  begin
    result := 'where saida.cdempresa='+empresa.cdempresa.tostring+' and saida.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdrepresentante, _saida  , _cdrepresentante, result);
    sqlmontarlista(cdstcliente    , _cliente, _cdstcliente    , result);
  end;
  function makesqlwhere458:string;
  begin
    result := 'where saida.cdempresa='+empresa.cdempresa.tostring+' and saida.vlcomissao>0 and saida.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
    sqlmontarlista(cdrepresentante, _saida, _cdrepresentante, result);
  end;
  function makesqlwhere25:string;
  begin
    result := 'where saida.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl(edtdti, edtdtf, result, _saida+'.'+_dtemissao);
    sqlmontarlista(cdrepresentante, _saida, _cdrepresentante, result);
  end;
  function makesqlwhere462:string;
  begin
    result := 'where duplicata.cdempresa='+empresa.cdempresa.tostring+' ';
    InsercaoDataSQl(edtdtib, edtdtfb, result, _baixa+'.'+_dtbaixa);
    sqlmontarlista(cdrepresentante, _duplicata, _cdrepresentante, result);
    sqlmontarlista(cdstcliente    , _cliente  , _cdstcliente    , result);
  end;
  function makesqlwhere463:string;
  begin
    result := 'where saida.cdempresa='+empresa.cdempresa.tostring+' and saida.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf);
  end;
begin
  cdrepresentante := TStringList.create;
  cdstcliente     := TStringList.create;
  cdtppedido      := TStringList.create;
  cdmunicipio     := TStringList.create;
  nmbairro        := TStringList.create;
  try
    for I := 0 to lsvrepresentante.Items.count - 1 do cdrepresentante.add(lsvrepresentante.items[i].caption);
    for I := 0 to lsvstcliente.Items.count     - 1 do cdstcliente.add    (lsvstcliente.items    [i].caption);
    for I := 0 to lsvtppedido.Items.count      - 1 do cdtppedido.add     (lsvtppedido.items     [i].caption);
    for I := 0 to lsvmunicipio.Items.count     - 1 do cdmunicipio.add    (lsvmunicipio.items    [i].caption);
    for I := 0 to lsvnmbairro.Items.count      - 1 do nmbairro.add       (lsvnmbairro.items     [i].caption);
    //
    nopai           := trv.Selected.parent.Text;
    consulta        := trv.selected.text;
    dti             := edtdti.Date;
    dtf             := edtdtf.Date;
    nmclassificacao := cbxclassificacao.Text;
    dtmmain.LogSiteAction(self.name, consulta);
    //
         if consulta = '455 - Comissão'                       then ImpimirRelatorioPadrao1(455, makesqlwhere455)
    else if consulta = '456 - Comissão Analítica'             then ImpimirRelatorioPadrao1(456, makesqlwhere456)
    else if consulta = '457 - Comissão Diária'                then ImpimirRelatorioPadrao1(457, makesqlwhere457)
    else if consulta = '458 - Comissão (faturamento)'         then ImpimirRelatorioPadrao1(458, makesqlwhere458)
    else if consulta = '459 - Comissão (faturamento) Cliente' then ImpimirRelatorioPadrao1(459, makesqlwhere458)
    else if consulta = '461 - Comissão Mensal'                then ImpimirRelatorioPadrao1(461, makesqlwhere457)
    else if consulta = '460 - Comissão Produtos'              then ImpimirRelatorioPadrao1(460, makesqlwhere458)
    else if consulta = '462 - Comissão (recebimento)'         then ImpimirRelatorioPadrao1(462, makesqlwhere462)
    else if consulta = '454 - Lista de Clientes'              then ImpimirRelatorioPadrao1(454, makesqlwhere454)
    else if consulta = '463 - Maiores Consumidores'           then ImpimirRelatorioPadrao1(463, makesqlwhere463)
    else if consulta = '642 - Venda Grupo Produto'            then ImpimirRelatorioPadrao1(642, makesqlwhere457)
    else if consulta = '25 - Venda Produto'                   then ImpimirRelatorioPadrao1(25, makesqlwhere25);
    if nopai = 'Referência Cruzada' then
    begin
           if consulta = 'Valor de Venda por Ano' then reportReferenciaCruzada(consulta, _Ano, _Representante, _vltotal, _dtemissao, ' saida' , dti, dtf)
      else if consulta = 'Valor de Venda por Mês' then reportReferenciaCruzada(consulta, _Mes, _Representante, _vltotal, _dtemissao, ' saida' , dti, dtf)
      else if consulta = 'Valor de Venda por Dia' then reportReferenciaCruzada(consulta, _Dia, _Representante, _vltotal, _dtemissao, ' saida' , dti, dtf)
      else if consulta = 'Valor Comissão por Ano' then reportReferenciaCruzada(consulta, _Ano, _Representante, _vlcomissao, _dtemissao, ' saida' , dti, dtf)
      else if consulta = 'Valor Comissão por Mês' then reportReferenciaCruzada(consulta, _Mes, _Representante, _vlcomissao, _dtemissao, ' saida' , dti, dtf)
      else if consulta = 'Valor Comissão por Dia' then reportReferenciaCruzada(consulta, _Dia, _Representante, _vlcomissao, _dtemissao, ' saida' , dti, dtf);
    end;
  finally
    cdrepresentante.Free;
    cdstcliente.Free;
    cdtppedido.Free;
    cdmunicipio.Free;
    nmbairro.Free;
  end;
end;

procedure TfrmConsultaRepresentante.trvChange(Sender: TObject; Node: TTreeNode);
var
  consulta : string;
  procedure set_dtbaixa(boativar:Boolean);
  begin
    edtdtib.Visible     := boativar;
    edtdtfb.Visible     := boativar;
    lblatebaixa.Visible := boativar;
    lblbaixa.Visible    := boativar;
  end;
begin
  consulta         := node.text;
  actGerar.Enabled := False;
  tbsstcliente.TabVisible   := true;
  tbstppedido.TabVisible    := false;
  lblinicial.Caption        := 'Inicial';
  lblinicial.Visible        := true;
  lblfinal.Visible          := true;
  edtdti.Visible            := true;
  edtdtf.Visible            := true;
  tbsmunicipio.TabVisible   := false;
  tbsbairro.TabVisible      := false;
  lblclassificacao.Visible  := false;
  cbxclassificacao.Visible  := false;
  set_dtbaixa(consulta = '462 - Comissão (recebimento)');
  if (consulta = '457 - Comissão Diária') or
     (consulta = '458 - Comissão (faturamento)') or
     (consulta = '459 - Comissão (faturamento) Cliente') or
     (consulta = '461 - Comissão Mensal') or
     (consulta = '460 - Comissão Produtos') or
     (consulta = '463 - Maiores Consumidores') or
     (consulta = '25 - Venda Produto') or
     (consulta = '642 - Venda Grupo Produto') or
     (consulta = 'Valor de Venda por Dia') or
     (consulta = 'Valor de Venda por Mês') or
     (consulta = 'Valor de Venda por Ano') or
     (consulta = 'Valor Comissão por Ano') or
     (consulta = 'Valor Comissão por Mês') or
     (consulta = 'Valor Comissão por Dia') then
  begin
    actGerar.Enabled := true;
  end
  else if consulta = '462 - Comissão (recebimento)' then
  begin
    actGerar.Enabled := true;
    lblclassificacao.Visible  := false;
    cbxclassificacao.Visible  := false;
    lblinicial.Visible     := False;
    lblfinal.Visible       := False;
    edtdti.Visible         := False;
    edtdtf.Visible         := False;
    pgc.Visible            := true;
    tbstppedido.Visible    := False;
    tbsmunicipio.Visible   := False;
    tbsbairro.Visible      := False;
  end
  else if consulta = '454 - Lista de Clientes' then
  begin
    actGerar.Enabled := true;
    tbsstcliente.tabVisible := true;
    lblinicial.Visible      := false;
    lblfinal.Visible        := false;
    edtdti.Visible          := false;
    edtdtf.Visible          := false;
    tbsmunicipio.TabVisible := true;
    tbsbairro.TabVisible    := true;
  end
  else if (consulta = '455 - Comissão') or
          (consulta = '456 - Comissão Analítica') then
  begin
    actGerar.Enabled := true;
    lblclassificacao.Visible  := true;
    cbxclassificacao.Visible  := true;
    tbstppedido.TabVisible    := true;
  end;
end;

procedure TfrmConsultaRepresentante.edtnmrepresentanteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_representante);
end;

procedure TfrmConsultaRepresentante.edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvrepresentante, executar_on_change_representante, tedit(sender), key);
end;

procedure TfrmConsultaRepresentante.edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvrepresentante, TEdit(sender), key);
end;

procedure TfrmConsultaRepresentante.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvstcliente);
end;

procedure TfrmConsultaRepresentante.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvstcliente);
end;

procedure TfrmConsultaRepresentante.ToolButton12Click(Sender: TObject);
begin
  lsvstcliente.Clear;
end;

procedure TfrmConsultaRepresentante.edtcdstclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstcliente, TEdit(sender), key);
end;

procedure TfrmConsultaRepresentante.edtnmstclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stcliente);
end;

procedure TfrmConsultaRepresentante.edtnmstclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstcliente, executar_on_change_stcliente, tedit(sender), key);
end;

procedure TfrmConsultaRepresentante.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvtppedido);
end;

procedure TfrmConsultaRepresentante.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvtppedido)
end;

procedure TfrmConsultaRepresentante.ToolButton4Click(Sender: TObject);
begin
  lsvtppedido.Clear;
end;

procedure TfrmConsultaRepresentante.edtcdtppedidoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtppedido, TEdit(sender), key);
end;

procedure TfrmConsultaRepresentante.edtnmtppedidoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tppedido);
end;

procedure TfrmConsultaRepresentante.edtnmtppedidoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtppedido, executar_on_change_tppedido, tedit(sender), key);
end;

procedure TfrmConsultaRepresentante.ToolButton6Click(Sender: TObject);
begin
  ExcluirListView(lsvmunicipio);
end;

procedure TfrmConsultaRepresentante.ToolButton8Click(Sender: TObject);
begin
  lsvmunicipio.Clear;
end;

procedure TfrmConsultaRepresentante.edtnmmunicipioChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_municipio);
end;

procedure TfrmConsultaRepresentante.edtnmmunicipioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvmunicipio, executar_on_change_municipio, tedit(sender), key);
end;

procedure TfrmConsultaRepresentante.ToolButton5Click(Sender: TObject);
begin
  ExcluirListView(lsvnmbairro);
end;

procedure TfrmConsultaRepresentante.ToolButton7Click(Sender: TObject);
begin
  lsvnmbairro.Clear;
end;

procedure TfrmConsultaRepresentante.edtnmbairroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvnmbairro, executar_on_change_bairro, tedit(sender), key);
end;

procedure TfrmConsultaRepresentante.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsultaRepresentante.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmConsultaRepresentante.ToolButton15Click(Sender: TObject);
begin
  AdicionarListView(lsvmunicipio);
end;

procedure TfrmConsultaRepresentante.edtcdmunicipioKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvmunicipio, TEdit(sender), key);
end;

procedure TfrmConsultaRepresentante.FormCreate(Sender: TObject);
begin
  set_treeview;
end;

procedure TfrmConsultaRepresentante.set_treeview;
var
  no1, no2 : TTreeNode;
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
  trv.Items.AddChild(no1, '455 - Comissão');
  trv.Items.AddChild(no1, '456 - Comissão Analítica');
  trv.Items.AddChild(no1, '457 - Comissão Diária');
  trv.Items.AddChild(no1, '458 - Comissão (faturamento)');
  trv.Items.AddChild(no1, '459 - Comissão (faturamento) Cliente');
  trv.Items.AddChild(no1, '461 - Comissão Mensal');
  trv.Items.AddChild(no1, '460 - Comissão Produtos');
  trv.Items.AddChild(no1, '462 - Comissão (recebimento)');
  trv.Items.AddChild(no1, '454 - Lista de Clientes');
  trv.Items.AddChild(no1, '463 - Maiores Consumidores');
  trv.Items.AddChild(no1, '25 - Venda Produto');
  trv.Items.AddChild(no1, '642 - Venda Grupo Produto');
  no2 := trv.Items.AddChild(no1, 'Referência Cruzada');
  trv.Items.AddChild(no2, 'Valor de Venda por Dia');
  trv.Items.AddChild(no2, 'Valor de Venda por Mês');
  trv.Items.AddChild(no2, 'Valor de Venda por Ano');
  trv.Items.AddChild(no2, 'Valor Comissão por Ano');
  trv.Items.AddChild(no2, 'Valor Comissão por Mês');
  trv.Items.AddChild(no2, 'Valor Comissão por Dia');
end;

end.
