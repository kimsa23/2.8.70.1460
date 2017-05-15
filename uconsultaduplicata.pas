unit uconsultaduplicata;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  forms, Classes, ActnList, ComCtrls, StdCtrls, Buttons, Controls, Mask,
  ExtCtrls, Gauges, ToolWin, windows, dialogs, sysutils,
  SqlExpr,
  uregistro, uconstantes, uAdicionarListView, udatahora, ustrings,
  umontarsql, usystem,
  classeusuario, classeempresa, classeform, classeduplicata, classeInstrucaoSQL,
  cxPC, cxControls, dxBar, cxClasses, cxSplitter, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxListView, cxEdit, cxGroupBox, cxRadioGroup,
  cxPCdxBarPopupMenu, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, dxCore,
  cxDateUtils, dxBarBuiltInMenu;

type
  TfrmConsultaDuplicata = class(TForm)
    pnl: TPanel;
    ActionList1: TActionList;
    actGerar: TAction;
    ntb: TNotebook;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    spl1: TcxSplitter;
    pnl1: TPanel;
    pgc: TcxPageControl;
    tbscliente: TcxTabSheet;
    Bevel2: TBevel;
    lblcdcliente: TLabel;
    lblnmcliente: TLabel;
    edtnucnpjcpf: TMaskEdit;
    edtcdcliente: TEdit;
    edtnmcliente: TEdit;
    ToolBar3: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    lsvcliente: TcxListView;
    tbsstduplicata: TcxTabSheet;
    Bevel3: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    edtnmstduplicata: TEdit;
    edtcdstduplicata: TEdit;
    lsvstduplicata: TcxListView;
    tbsrepresentante: TcxTabSheet;
    Bevel4: TBevel;
    Label6: TLabel;
    Label5: TLabel;
    ToolBar7: TToolBar;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton24: TToolButton;
    edtcdrepresentante: TEdit;
    edtnmrepresentante: TEdit;
    lsvrepresentante: TcxListView;
    tbstpcobranca: TcxTabSheet;
    Bevel5: TBevel;
    Label2: TLabel;
    Label1: TLabel;
    edtcdtpcobranca: TEdit;
    edtnmtpcobranca: TEdit;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton7: TToolButton;
    lsvtpcobranca: TcxListView;
    tbsrota: TcxTabSheet;
    Bevel8: TBevel;
    Label12: TLabel;
    Label11: TLabel;
    edtcdrota: TEdit;
    edtnmrota: TEdit;
    ToolBar6: TToolBar;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton31: TToolButton;
    lsvrota: TcxListView;
    tbsstaprovacao: TcxTabSheet;
    Bevel7: TBevel;
    Label7: TLabel;
    Label8: TLabel;
    edtcdstaprovacao: TEdit;
    edtnmstaprovacao: TEdit;
    ToolBar2: TToolBar;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton16: TToolButton;
    lsvstaprovacao: TcxListView;
    tbsuf: TcxTabSheet;
    Bevel9: TBevel;
    Label10: TLabel;
    Label9: TLabel;
    edtcduf: TEdit;
    edtnmuf: TEdit;
    ToolBar5: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton20: TToolButton;
    lsvuf: TcxListView;
    tbsstcliente: TcxTabSheet;
    Bevel10: TBevel;
    Label13: TLabel;
    Label14: TLabel;
    edtnmstcliente: TEdit;
    edtcdstcliente: TEdit;
    ToolBar9: TToolBar;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton37: TToolButton;
    lsvstcliente: TcxListView;
    tbsplconta: TcxTabSheet;
    Bevel12: TBevel;
    Label17: TLabel;
    Label18: TLabel;
    edtnmplconta: TEdit;
    edtcdplconta: TEdit;
    ToolBar11: TToolBar;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton45: TToolButton;
    lsvplconta: TcxListView;
    tbstpcliente: TcxTabSheet;
    Bevel13: TBevel;
    Label20: TLabel;
    Label19: TLabel;
    edtcdtpcliente: TEdit;
    edtnmtpcliente: TEdit;
    ToolBar12: TToolBar;
    ToolButton46: TToolButton;
    ToolButton47: TToolButton;
    ToolButton49: TToolButton;
    lsvtpcliente: TcxListView;
    Bevel6: TBevel;
    lble: TLabel;
    lblatee: TLabel;
    lblv: TLabel;
    lblatev: TLabel;
    lblb: TLabel;
    lblateb: TLabel;
    lbli: TLabel;
    lblf: TLabel;
    ckbrepresentante: TCheckBox;
    ckbmunicipio: TCheckBox;
    ckbjuros: TCheckBox;
    Bevel1: TBevel;
    trv: TTreeView;
    lblorder: TLabel;
    rdgorder: TRadioGroup;
    tbstpfaturamento: TcxTabSheet;
    ToolBar8: TToolBar;
    ToolButton3: TToolButton;
    ToolButton6: TToolButton;
    ToolButton11: TToolButton;
    Label15: TLabel;
    edtcdtpfaturamento: TEdit;
    edtnmtpfaturamento: TEdit;
    Label16: TLabel;
    Bevel11: TBevel;
    lsvtpfaturamento: TcxListView;
    tbsempresa: TcxTabSheet;
    ToolBar10: TToolBar;
    ToolButton15: TToolButton;
    ToolButton19: TToolButton;
    ToolButton23: TToolButton;
    Label21: TLabel;
    Label22: TLabel;
    edtnmempresa: TEdit;
    edtcdempresa: TEdit;
    Bevel14: TBevel;
    lsvempresa: TcxListView;
    edtdti: TcxDateEdit;
    edtdtf: TcxDateEdit;
    edtdtiE: TcxDateEdit;
    edtdtfE: TcxDateEdit;
    edtdtiv: TcxDateEdit;
    edtdtfv: TcxDateEdit;
    edtdtib: TcxDateEdit;
    edtdtfb: TcxDateEdit;
    tbsproduto: TcxTabSheet;
    ToolBar13: TToolBar;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    edtnmproduto: TEdit;
    edtcdproduto: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    lsvproduto: TcxListView;
    Bevel15: TBevel;
    cbxclassificar: TcxComboBox;
    cbxtpdata: TcxComboBox;
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
    procedure edtnmstduplicataChange(Sender: TObject);
    procedure edtnmstduplicataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmrepresentanteChange(Sender: TObject);
    procedure edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmclienteChange(Sender: TObject);
    procedure edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucnpjcpfKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnucnpjcpfKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdstduplicataKeyPress(Sender: TObject; var Key: Char);
    procedure edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure edtcdtpcobrancaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpcobrancaChange(Sender: TObject);
    procedure edtnmtpcobrancaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton28Click(Sender: TObject);
    procedure ToolButton29Click(Sender: TObject);
    procedure ToolButton31Click(Sender: TObject);
    procedure edtcdrotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmrotaChange(Sender: TObject);
    procedure edtnmrotaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure edtcdstaprovacaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstaprovacaoChange(Sender: TObject);
    procedure edtnmstaprovacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton20Click(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure ToolButton34Click(Sender: TObject);
    procedure ToolButton35Click(Sender: TObject);
    procedure ToolButton37Click(Sender: TObject);
    procedure edtcdstclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmstclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmstclienteChange(Sender: TObject);
    procedure ToolButton42Click(Sender: TObject);
    procedure ToolButton43Click(Sender: TObject);
    procedure ToolButton45Click(Sender: TObject);
    procedure edtcdplcontaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmplcontaChange(Sender: TObject);
    procedure edtnmplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton46Click(Sender: TObject);
    procedure ToolButton47Click(Sender: TObject);
    procedure ToolButton49Click(Sender: TObject);
    procedure edtcdtpclienteKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpclienteChange(Sender: TObject);
    procedure edtnmtpclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure edtcdtpfaturamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmtpfaturamentoChange(Sender: TObject);
    procedure edtnmtpfaturamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton15Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure edtcdempresaKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmempresaChange(Sender: TObject);
    procedure edtnmempresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton26Click(Sender: TObject);
    procedure ToolButton27Click(Sender: TObject);
    procedure edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtnmprodutoChange(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private    { Private declarations }
    duplicata : TDuplicata;
    tpcodigo : string;
    executar_on_change_tpcliente     : boolean;
    executar_on_change_produto, executar_on_change_empresa, executar_on_change_tpfaturamento : boolean;
    executar_on_change_stduplicata   : boolean;
    executar_on_change_tpcobranca    : boolean;
    executar_on_change_representante : boolean;
    executar_on_change_cliente       : boolean;
    executar_on_change_stcliente     : boolean;
    executar_on_change_Rota          : boolean;
    executar_on_change_stAprovacao   : boolean;
    executar_on_change_plconta       : boolean;
    procedure setempresa;
    procedure set_treeview;
  public    { Public declarations }
  end;

var
  frmConsultaDuplicata: TfrmConsultaDuplicata;

implementation

uses uDtmMain,
  uMain,
  uimprimirrelatoriopadrao, rptestoquecompleto;


{$R *.dfm}

procedure TFrmConsultaDuplicata.setempresa;
  function getreport(tp:integer; nmconsulta:string):boolean;
  begin
    result := nmconsulta = '531 - Posição das Receitas Representante';
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
  if tbsrepresentante.TabVisible            then tbsrepresentante.TabVisible := empresa.comercial.representante.bo;
  if not empresa.comercial.representante.bo then treeview_deletar(1);
  tbsrota.tabvisible          := false;
end;

procedure TfrmConsultaDuplicata.FormShow(Sender: TObject);
begin
  duplicata := TDuplicata.create;
  setempresa;
  tpcodigo                    := 'Código';
  ntb.ActivePage              := 'Default';
  tbstpfaturamento.TabVisible := Empresa.faturamento.bo;
  trv.Items[0].Expand(true);
end;

procedure TfrmConsultaDuplicata.ToolButton1Click(Sender: TObject);
begin
  AdicionarListView(lsvcliente);
end;

procedure TfrmConsultaDuplicata.ToolButton2Click(Sender: TObject);
begin
  ExcluirListView(lsvcliente);
end;

procedure TfrmConsultaDuplicata.ToolButton8Click(Sender: TObject);
begin
  lsvCliente.Clear;
end;

procedure TfrmConsultaDuplicata.ToolButton9Click(Sender: TObject);
begin
  AdicionarListView(lsvstduplicata);
end;

procedure TfrmConsultaDuplicata.ToolButton10Click(Sender: TObject);
begin
  ExcluirListView(lsvstduplicata);
end;

procedure TfrmConsultaDuplicata.ToolButton12Click(Sender: TObject);
begin
  lsvstduplicata.Clear;
end;

procedure TfrmConsultaDuplicata.ToolButton21Click(Sender: TObject);
begin
  AdicionarListView(lsvrepresentante);
end;

procedure TfrmConsultaDuplicata.ToolButton22Click(Sender: TObject);
begin
  ExcluirListView(lsvrepresentante);
end;

procedure TfrmConsultaDuplicata.ToolButton24Click(Sender: TObject);
begin
  lsvrepresentante.Clear;
end;

procedure TfrmConsultaDuplicata.actGerarExecute(Sender: TObject);
const
  order1 = 'Código'#13'Data Emissão'#13'Data Vencimento'#13'Data Prorrogação'#13'Data Baixa'#13'Valor'#13'Código Cliente'#13'Nome Cliente'#13'Razão Social';
  order2 = _duplicata+'.'+_nuduplicata+#13+
           _duplicata+'.'+_DTEMISSAO+#13+
           _duplicata+'.'+_dtvencimento+#13+
           _duplicata+'.'+_dtprorrogacao+#13+
           _duplicata+'.'+_dtbaixa+#13+
           _duplicata+'.'+_vlduplicata+#13+
           _duplicata+'.'+_cdcliente+#13+
           _cliente+'.'+_nmcliente+#13+
           _cliente+'.'+_rzsocial;
var
  nopai, tpdata, consulta :string;
  cdproduto, cdconta, cdtpcliente, cdtpfaturamento, cdplconta, cduf, cdrota, cdtpcobranca, cdrepresentante, cdstduplicata, cdstcliente, cdcliente, cdempresa, cdstaprovacao : TStrings;
  dti, dtf : TDate;
  procedure criar_objetos;
  begin
    cdproduto       := tstringlist.Create;
    cdcliente       := TStringList.create;
    cdempresa       := TStringList.create;
    cdstduplicata   := TStringList.create;
    cdstcliente     := TStringList.create;
    cdtpcliente     := TStringList.create;
    cdtpfaturamento := TStringList.create;
    cdtpcobranca    := TStringList.create;
    cdrepresentante := TStringList.create;
    cdrota          := TStringList.Create;
    cduf            := TStringList.Create;
    cdstaprovacao   := TStringList.create;
    cdplconta       := TStringList.create;
    cdconta         := TStringList.create;
  end;
  procedure preencher_lista;
  var
    i : Integer;
  begin
    for I := 0 to lsvproduto.Items.count       - 1 do cdproduto.add      (lsvproduto.items      [i].Caption);
    for I := 0 to lsvcliente.Items.count       - 1 do cdcliente.add      (lsvCliente.items      [i].Caption);
    for I := 0 to lsvempresa.Items.count       - 1 do cdempresa.add      (lsvempresa.items      [i].Caption);
    for I := 0 to lsvstcliente.Items.count     - 1 do cdstcliente.add    (lsvstcliente.items    [i].caption);
    for I := 0 to lsvtpcliente.Items.count     - 1 do cdtpcliente.add    (lsvtpcliente.items    [i].caption);
    for I := 0 to lsvtpfaturamento.Items.count - 1 do cdtpfaturamento.add(lsvtpfaturamento.items[i].caption);
    for I := 0 to lsvstduplicata.Items.count   - 1 do cdstduplicata.add  (lsvstduplicata.items  [i].caption);
    for I := 0 to lsvtpcobranca.Items.count    - 1 do cdtpcobranca.add   (lsvtpcobranca.items   [i].caption);
    for I := 0 to lsvrepresentante.Items.count - 1 do cdrepresentante.add(lsvrepresentante.items[i].caption);
    for I := 0 to lsvrota.Items.count          - 1 do cdrota.add         (lsvrota.items         [i].caption);
    for I := 0 to lsvuf.Items.count            - 1 do cduf.add           (lsvuf.items           [i].caption);
    for I := 0 to lsvplconta.Items.count       - 1 do cdplconta.add      (CodigodoCampo(_plconta, lsvplconta.items[i].caption, _nunivel));
    for I := 0 to lsvstaprovacao.Items.count   - 1 do cdstaprovacao.add  (lsvstaprovacao.items[i].caption);
  end;
  procedure liberar_objetos;
  begin
    cdproduto.Free;
    cdcliente.Free;
    cdempresa.Free;
    cdstcliente.Free;
    cdtpcliente.Free;
    cdtpfaturamento.Free;
    cdstduplicata.Free;
    cdtpcobranca.Free;
    cdrepresentante.Free;
    cdrota.Free;
    cduf.Free;
    cdstaprovacao.Free;
    cdconta.Free;
    cdplconta.Free;
  end;
  function makesqllista(texto:string; var t:integer; bocliente:Boolean=true):string;
  begin
    Result := texto;
    sqlmontarlista(cdrepresentante, _duplicata  , _cdrepresentante, result, t);
    sqlmontarlista(cdcliente      , _duplicata  , _cdcliente      , result, t);
    sqlmontarlista(cdempresa      , _duplicata  , _cdempresa      , result, t);
    sqlmontarlista(cdstduplicata  , _duplicata  , _cdstduplicata  , result, t);
    sqlmontarlista(cdtpcobranca   , _duplicata  , _cdtpcobranca   , result, t);
    sqlmontarlista(cdplconta      , _duplicata  , _cdplconta      , result, t);
    sqlmontarlista(cdtpfaturamento, _faturamento, _cdtpfaturamento, Result, t);
    if bocliente then
    begin
      sqlmontarlista(cdstcliente    , _cliente   , _cdstcliente    , result, t);
      sqlmontarlista(cdtpcliente    , _cliente   , _cdtpcliente    , result, t);
      sqlmontarlista(cdrota         , _cliente   , _cdrota         , result, t);
      sqlmontarlista(cduf           , _cliente   , _cduf           , result, t);
    end;
    sqlmontarlista(cdstaprovacao  , _aprovacao , _cdstaprovacao  , result, t);
  end;
  function makesql(cdreport:integer=0; t : Integer=1):string;
  begin
    result := ' ';
    if cdreport = 254 then
    begin
      t := 0;
      result := 'where baixa.cdnegociacaoentrada is null ';
    end;
    if cdreport = 669 then
    begin
      t := 0;
      result := 'where baixa.vldevolucao>0 ';
    end;
    InsercaoDataSQl(edtdtiE, edtdtfe, result, _duplicata+'.'+_dtemissao, t);
    if (cdreport = 255) or (cdreport = 624) or (cdreport = 669) or (cdreport = 50) then
    begin
      InsercaoDataSQl(edtdtib, edtdtfb, result,     _baixa+'.'+_dtbaixa, t)
    end
    else
    begin
      InsercaoDataSQl(edtdtib, edtdtfb, result, _duplicata+'.'+_dtbaixa, t);
    end;
    InsercaoDataSQl(edtdtiv, edtdtfv, result, _duplicata+'.'+_dtprorrogacao, t);
    result := makesqllista(Result, t);
    if ckbjuros.checked then
    begin
      if t = Length(Result) then result := 'where' else result := result + 'and';
      result := result + ' duplicata.vljuros>0 ';
    end;
    if cdreport = 212 then
    begin
      if t = Length(Result) then result := 'where' else result := result + 'and';
      result := result + ' duplicata.vlsaldo>0 ';
    end;
  end;
  function makesqlorderby(cdreport:Integer=0):string;
  var
    ord1, ord2 : TStrings;
  begin
    result := '';
    if not cbxclassificar.Visible then
    begin
      exit;
    end;
    ord1 := TStringList.create;
    ord2 := TStringlist.create;
    try
      ord1.Text := order1;
      ord2.Text := order2;
      result    := ' order by ';
      if cdreport = 543 then Result := result + 'empresa.nmempresa,';
      if cdreport = 544 then Result := result + 'duplicata.dtprorrogacao,empresa.nmempresa,';
      result := result + ord2[ord1.indexof(cbxclassificar.text)];
    finally
      ord1.free;
      ord2.free;
    end;
    if rdgorder.itemindex = 1 then
    begin
      result := result + ' desc';
    end;
  end;
  function makesqlsintetico(cdreport:integer=0):string;
  begin
    if (cdreport = 50) or (cdreport = 51) then
    begin
      result := makesql(cdreport);
    end
    else
    begin
      result := makesql(cdreport)+makesqlorderby(cdreport);
    end;
  end;
  function nmdata:string;
  begin
         if tpdata = Maiuscula(__emissao)     then result := _dtemissao
    else if tpdata = Maiuscula(_Baixa)        then result := _dtbaixa
    else if tpdata = Maiuscula(__Prorrogacao) then result := _dtprorrogacao
    else if tpdata = Maiuscula(_Vencimento)   then result := _dtprorrogacao
    else if tpdata = Maiuscula(_Entrada)      then result := _dtentrada;
  end;
  function MakeSQLDiario: string;
  var
    t : Integer;
  begin
    t := 0;
    result := 'where duplicata.'+nmdata+' between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+makesqllista(Result, t, false);
  end;
  function makesqlatrasada:string;
  var
    t : Integer;
  begin
    t := 0;
    result := 'where duplicata.'+nmdata+'<='+getdtbanco(dti)+' '+
              'and duplicata.dtprorrogacao<'+getdtbanco(dti)+' '+makesqllista(Result, t, true);
    if lowercase(nmdata) = _dtbaixa then
    begin
      //result := result + ' and (duplicata.dtbaixa>'+getdtbanco(dti)+' or duplicata.dtbaixa is null)';
    end
    else
    begin
      result := result + ' and duplicata.dtbaixa is null';
    end;
  end;
  function makesqlposicao:string;
  var
    t : Integer;
  begin
    t := 0;
    result := 'where '+nmdata+'<='+getdtbanco(dti)+' and (duplicata.dtbaixa>'+getdtbanco(dti)+' or duplicata.dtbaixa is null) '+makesqllista(Result, t, true);
  end;
  function makesqlprorrogadas:string;
  begin
    result := 'where duplicata.dtvencimento<>duplicata.dtprorrogacao ' + makesql(0, 0)+makesqlorderby;
  end;
  function makesqljuros:string;
  begin
    result := 'where  Duplicata.cdstduplicata=2 and Duplicata.vljurosnrecebido >0 '+makesql(0, 0)+makesqlorderby;
  end;
  function makesqlsinteticoporproduto:string;
  var
    t : Integer;
  begin
    t := 1;
    result := ' ';
    InsercaoDataSQl(edtdtiE, edtdtfe, result, _duplicata+'.'+_dtemissao, t);
    InsercaoDataSQl(edtdtib, edtdtfb, result, _duplicata+'.'+_dtbaixa, t);
    InsercaoDataSQl(edtdtiv, edtdtfv, result, _duplicata+'.'+_dtprorrogacao, t);

    sqlmontarlista(cdrepresentante, _duplicata  , _cdrepresentante, result, t);
    sqlmontarlista(cdcliente      , _duplicata  , _cdcliente      , result, t);
    sqlmontarlista(cdproduto      , _itsaida    , _cdproduto      , result, t);
    sqlmontarlista(cdempresa      , _duplicata  , _cdempresa      , result, t);
    sqlmontarlista(cdstduplicata  , _duplicata  , _cdstduplicata  , result, t);
    sqlmontarlista(cdtpcobranca   , _duplicata  , _cdtpcobranca   , result, t);
    sqlmontarlista(cdplconta      , _duplicata  , _cdplconta      , result, t);
    sqlmontarlista(cdtpfaturamento, _faturamento, _cdtpfaturamento, Result, t);
    sqlmontarlista(cdstcliente    , _cliente   , _cdstcliente    , result, t);
    sqlmontarlista(cdtpcliente    , _cliente   , _cdtpcliente    , result, t);
    sqlmontarlista(cdrota         , _cliente   , _cdrota         , result, t);
    sqlmontarlista(cduf           , _cliente   , _cduf           , result, t);
    sqlmontarlista(cdstaprovacao  , _aprovacao , _cdstaprovacao  , result, t);

    if ckbjuros.checked then
    begin
      if t = Length(Result) then result := 'where' else result := result + 'and';
      result := result + ' duplicata.vljuros>0 ';
    end;
  end;
begin
  criar_objetos;
  try
    preencher_lista;
    nopai               := trv.selected.Parent.Text;
    consulta            := trv.selected.text;
    if (edtdti.Text = '') and ((consulta = '526 - Atrasada') or
                               (consulta = '521 - Diário') or
                               (consulta = '530 - Posição das Receitas') or
                               (consulta = '531 - Posição das Receitas Representante') or
                               (consulta = '532 - Posição das Receitas Totais') or
                               (consulta = '529 - Mensal')) then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data]), mtinformation, [mbok], 0);
      edtdti.SetFocus;
      Abort;
    end;
    if (edtdtf.Text = '') and (consulta = '529 - Mensal') then
    begin
      messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Data]), mtinformation, [mbok], 0);
      edtdtf.SetFocus;
      Abort;
    end;
    dti                 := edtdti.Date;
    dtf                 := edtdtf.Date;
    tpdata              := cbxtpdata.Text;
    dtmmain.LogSiteAction(self.name, consulta);
         if consulta = '212 - Aberta'                             then ImpimirRelatorioPadrao1(212, makesqlsintetico(212))
    else if consulta = '526 - Atrasada'                           then imprimir_relatorio(526, GetDtBanco(dti), makesqlatrasada, dti, 0, 0, nil)
    else if consulta = '521 - Diário'                             then ImpimirRelatorioPadrao1(521, makesqldiario, nmdata)
    else if consulta = '250 - Encontro de contas'                 then imprimir_relatorio(250, '', makesqlatrasada, dti, dtf, 0, nil)
    else if consulta = '252 - Juros Não Recebidos'                then ImpimirRelatorioPadrao1(252, makesqljuros)
    else if consulta = '529 - Mensal'                             then imprimir_relatorio(529, nmdata, MakeSQLDiario, 0, 0, 0, nil)
    else if consulta = '530 - Posição das Receitas'               then imprimir_relatorio(530, GetDtBanco(dti), makesqlposicao, dti, 0, 0, nil)
    else if consulta = '531 - Posição das Receitas Representante' then imprimir_relatorio(531, GetDtBanco(dti), makesqlposicao, dti, 0, 0, nil)
    else if consulta = '532 - Posição das Receitas Totais'        then imprimir_relatorio(532, GetDtBanco(dti), makesqlposicao, dti, 0, 0, nil)
    else if consulta = '254 - Recebida'                           then ImpimirRelatorioPadrao1(254, makesql(254)+' order by CLIENTE.nmcliente')
    else if consulta = '255 - Recebida Diário'                    then ImpimirRelatorioPadrao1(255, makesql(255)+' order by baixa.dtbaixa')
    else if consulta = '433 - Sintético'                          then ImpimirRelatorioPadrao1(433, makesqlsintetico)
    else if consulta = '624 - Sintético Baixa'                    then ImpimirRelatorioPadrao1(624, makesqlsintetico(624))
    else if consulta = '050 - Sintético Baixa do PIS/COFINS'      then ImpimirRelatorioPadrao1(050, makesqlsintetico(50))
    else if consulta = '051 - Sintético Aberto do PIS/COFINS'     then ImpimirRelatorioPadrao1(051, makesqlsintetico(51))
    else if consulta = '669 - Sintético Devolução'                then ImpimirRelatorioPadrao1(669, makesqlsintetico(669))
    else if consulta = '543 - Sintético quebra Empresa'           then ImpimirRelatorioPadrao1(543, makesqlsintetico(543))
    else if consulta = '533 - Sintético Comissão'                 then ImpimirRelatorioPadrao1(533, makesqlsintetico)
    else if consulta = '535 - Sintético Contas Prorrogadas'       then ImpimirRelatorioPadrao1(535, makesqlprorrogadas)
    else if consulta = '534 - Sintético Detalhado'                then ImpimirRelatorioPadrao1(534, makesqlsintetico)
    else if consulta = '598 - Sintético por Produto'              then ImpimirRelatorioPadrao1(598, makesqlsinteticoporproduto)
    else if consulta = '527 - Sintético por cliente'              then ImpimirRelatorioPadrao1(527, makesqlsintetico)
    else if consulta = '528 - Sintético por cliente 2'            then ImpimirRelatorioPadrao1(528, makesqlsintetico)
    else if consulta = '256 - Sintético por vencimento'           then ImpimirRelatorioPadrao1(256, makesqlsintetico)
    else if consulta = '544 - Sintético por vencimento quebra Empresa' then ImpimirRelatorioPadrao1(544, makesqlsintetico(544));
    if nopai = 'Função' then
    begin
           if consulta = 'Aplicar configuração de Mora Diária Cadastro Empresa' then duplicata.setmoradiariaempresa(cdrepresentante, cdcliente, cdstcliente, cdtpcliente, cdstduplicata, cdtpcobranca, cdrota, cdconta, cdplconta, edtdtiE, edtdtfe, edtdtiv, edtdtfv, edtdtib, edtdtfb)
      else if consulta = 'Aplicar configuração de Multa do Cadastro Empresa'    then duplicata.setmultaempresa     (cdrepresentante, cdcliente, cdstcliente, cdtpcliente, cdstduplicata, cdtpcobranca, cdrota, cdconta, cdplconta, edtdtiE, edtdtfe, edtdtiv, edtdtfv, edtdtib, edtdtfb)
      else if consulta = 'Remover dígito de nosso número'                       then duplicata.removerdigitonossonumero(dti, dtf);
    end;
  finally
    liberar_objetos;
  end;
end;

procedure TfrmConsultaDuplicata.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmConsultaDuplicata.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmConsultaDuplicata.trvChange(Sender: TObject; Node: TTreeNode);
var
  consulta : string;
  procedure set_order(boativar:Boolean);
  begin
    cbxclassificar.Visible := boativar;
    lblorder.Visible := boativar;
    rdgorder.Visible := boativar;
  end;
begin
  ntb.ActivePage   := 'Default';
  consulta         := node.text;
  pnl.Caption      := 'Consulta Contas a Receber \ '+consulta;
  actgerar.Enabled := false;
  if consulta = '256 - Sintético por vencimento' then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsrepresentante.TabVisible := True;
    tbscliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsstcliente.TabVisible     := True;
    tbstpcliente.TabVisible     := True;
    tbstpcobranca.TabVisible    := true;
    tbsrota.TabVisible          := True;
    tbsplconta.TabVisible       := True;
    tbsstduplicata.TabVisible   := true;
    tbsuf.TabVisible            := true;
    tbsSTaprovacao.TabVisible   := true;
    tbsproduto.TabVisible       := false;

    edtdtiE.Visible   := true;
    edtdtfe.Visible   := true;
    lble.Visible      := true;
    lblatee.Visible   := true;

    edtdtiv.Visible   := true;
    edtdtfv.Visible   := true;
    lblv.Visible      := true;
    lblatev.Visible   := true;

    edtdtib.Visible   := true;
    edtdtfb.Visible   := true;
    lblb.Visible      := true;
    lblateb.Visible   := true;

    cbxtpdata.Visible := false;
    edtdti.Visible    := false;
    lbli.Visible      := false;
    edtdtf.Visible    := false;
    lblf.Visible      := false;

    ckbjuros.Visible         := true;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '544 - Sintético por vencimento quebra Empresa' then
  begin
    set_order(True);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsrepresentante.TabVisible := True;
    tbscliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsstcliente.TabVisible     := True;
    tbstpcliente.TabVisible     := True;
    tbstpcobranca.TabVisible    := true;
    tbsrota.TabVisible          := True;
    tbsplconta.TabVisible       := True;
    tbsstduplicata.TabVisible   := true;
    tbsuf.TabVisible            := true;
    tbsSTaprovacao.TabVisible   := true;
    tbsproduto.TabVisible       := false;

    edtdtiE.Visible   := true;
    edtdtfe.Visible   := true;
    lble.Visible      := true;
    lblatee.Visible   := true;

    edtdtiv.Visible   := true;
    edtdtfv.Visible   := true;
    lblv.Visible      := true;
    lblatev.Visible   := true;

    edtdtib.Visible   := true;
    edtdtfb.Visible   := true;
    lblb.Visible      := true;
    lblateb.Visible   := true;

    cbxtpdata.Visible := false;
    edtdti.Visible    := false;
    lbli.Visible      := false;
    edtdtf.Visible    := false;
    lblf.Visible      := false;

    ckbjuros.Visible         := true;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '527 - Sintético por cliente' then
  begin
    set_order(True);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsrepresentante.TabVisible := True;
    tbscliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsstcliente.TabVisible     := True;
    tbstpcliente.TabVisible     := True;
    tbstpcobranca.TabVisible    := true;
    tbsrota.TabVisible          := True;
    tbsplconta.TabVisible       := True;
    tbsstduplicata.TabVisible   := true;
    tbsuf.TabVisible            := false;
    tbsSTaprovacao.TabVisible   := false;
    tbsproduto.TabVisible       := false;

    edtdtiE.Visible   := true;
    edtdtfe.Visible   := true;
    lble.Visible      := true;
    lblatee.Visible   := true;

    edtdtiv.Visible   := true;
    edtdtfv.Visible   := true;
    lblv.Visible      := true;
    lblatev.Visible   := true;

    edtdtib.Visible   := true;
    edtdtfb.Visible   := true;
    lblb.Visible      := true;
    lblateb.Visible   := true;

    cbxtpdata.Visible := false;
    edtdti.Visible    := false;
    lbli.Visible      := false;
    edtdtf.Visible    := false;
    lblf.Visible      := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '535 - Sintético Contas Prorrogadas' then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsrepresentante.TabVisible := True;
    tbscliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsstcliente.TabVisible     := True;
    tbstpcliente.TabVisible     := True;
    tbstpcobranca.TabVisible    := true;
    tbsrota.TabVisible          := True;
    tbsplconta.TabVisible       := True;
    tbsstduplicata.TabVisible   := true;
    tbsuf.TabVisible            := false;
    tbsSTaprovacao.TabVisible   := false;
    tbsproduto.TabVisible       := false;

    edtdtiE.Visible   := true;
    edtdtfe.Visible   := true;
    lble.Visible      := true;
    lblatee.Visible   := true;

    edtdtiv.Visible   := true;
    edtdtfv.Visible   := true;
    lblv.Visible      := true;
    lblatev.Visible   := true;

    edtdtib.Visible   := true;
    edtdtfb.Visible   := true;
    lblb.Visible      := true;
    lblateb.Visible   := true;

    cbxtpdata.Visible := false;
    edtdti.Visible    := false;
    lbli.Visible      := false;
    edtdtf.Visible    := false;
    lblf.Visible      := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '532 - Posição das Receitas Totais' then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsrepresentante.TabVisible := True;
    tbscliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsstcliente.TabVisible     := True;
    tbstpcliente.TabVisible     := True;
    tbstpcobranca.TabVisible    := True;
    tbsrota.TabVisible          := True;
    tbsplconta.TabVisible       := True;
    tbsstduplicata.TabVisible   := false;
    tbsuf.TabVisible            := false;
    tbsSTaprovacao.TabVisible   := false;
    tbsproduto.TabVisible       := false;

    edtdtiE.Visible   := false;
    edtdtfe.Visible   := false;
    lble.Visible      := false;
    lblatee.Visible   := false;

    edtdtiv.Visible   := false;
    edtdtfv.Visible   := false;
    lblv.Visible      := false;
    lblatev.Visible   := false;

    edtdtib.Visible   := false;
    edtdtfb.Visible   := false;
    lblb.Visible      := false;
    lblateb.Visible   := false;

    cbxtpdata.Visible := true;
    edtdti.Visible    := true;
    lbli.Visible      := true;
    edtdtf.Visible    := false;
    lblf.Visible      := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '531 - Posição das Receitas Representante' then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsrepresentante.TabVisible := True;
    tbscliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsstcliente.TabVisible     := True;
    tbstpcliente.TabVisible     := True;
    tbstpcobranca.TabVisible    := True;
    tbsrota.TabVisible          := True;
    tbsplconta.TabVisible       := True;
    tbsstduplicata.TabVisible   := false;
    tbsuf.TabVisible            := false;
    tbsSTaprovacao.TabVisible   := false;
    tbsproduto.TabVisible       := false;

    edtdtiE.Visible   := false;
    edtdtfe.Visible   := false;
    lble.Visible      := false;
    lblatee.Visible   := false;

    edtdtiv.Visible   := false;
    edtdtfv.Visible   := false;
    lblv.Visible      := false;
    lblatev.Visible   := false;

    edtdtib.Visible   := false;
    edtdtfb.Visible   := false;
    lblb.Visible      := false;
    lblateb.Visible   := false;

    cbxtpdata.Visible := true;
    edtdti.Visible    := true;
    lbli.Visible      := true;
    edtdtf.Visible    := false;
    lblf.Visible      := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
  end
  else if consulta = 'Remover dígito de nosso número' then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := false;
    tbsempresa.TabVisible       := false;
    tbsuf.TabVisible            := true;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := false;
    tbsstduplicata.TabVisible   := false;
    tbstpcliente.TabVisible     := false;
    tbstpcobranca.TabVisible    := false;
    tbsplconta.tabvisible       := false;
    tbsproduto.TabVisible       := false;

    cbxtpdata.Visible := false;
    edtdti.Visible    := true;
    lbli.Visible      := true;

    edtdtf.Visible    := false;
    lblf.Visible      := false;

    edtdtiE.Visible   := false;
    edtdtfe.Visible   := false;
    lble.Visible      := false;
    lblatee.Visible   := false;

    edtdtiv.Visible   := false;
    edtdtfv.visible   := false;
    lblatev.Visible   := false;
    lblv.Visible      := false;

    edtdtib.Visible   := false;
    edtdtfb.Visible   := false;
    lblb.Visible      := false;
    lblateb.Visible   := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := Empresa.comercial.representante.bo;
  end
  else if (consulta = '433 - Sintético') or
          (consulta = '624 - Sintético Baixa') or
          (consulta = '050 - Sintético Baixa do PIS/COFINS') or
          (consulta = '051 - Sintético Aberto do PIS/COFINS') or  
          (consulta = '669 - Sintético Devolução') or
          (consulta = '543 - Sintético quebra Empresa') then
  begin
    set_order(True);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := true;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;


    cbxtpdata.Visible := false;
    edtdti.Visible  := false;
    lbli.Visible    := false;

    edtdtf.Visible  := false;
    lblf.Visible    := false;

    edtdtiE.Visible := true;
    edtdtfe.Visible := true;
    lble.Visible    := true;
    lblatee.Visible := true;

    edtdtiv.Visible := true;
    edtdtfv.visible := true;
    lblatev.Visible := true;
    lblv.Visible    := true;

    edtdtib.Visible := true;
    edtdtfb.Visible := true;
    lblb.Visible    := true;
    lblateb.Visible := true;

    ckbjuros.visible         := true;
    ckbrepresentante.Visible := false;
  end
  else if (consulta = '252 - Juros Não Recebidos') or
          (consulta = '254 - Recebida') or
          (consulta = '255 - Recebida Diário') or
          (consulta = 'Aplicar configuração de Mora Diária Cadastro Empresa') or
          (consulta = 'Aplicar configuração de Multa Cadastro Empresa') then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := true;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;


    cbxtpdata.Visible := false;
    edtdti.Visible  := false;
    lbli.Visible    := false;

    edtdtf.Visible  := false;
    lblf.Visible    := false;

    edtdtiE.Visible := true;
    edtdtfe.Visible := true;
    lble.Visible    := true;
    lblatee.Visible := true;

    edtdtiv.Visible := true;
    edtdtfv.visible := true;
    lblatev.Visible := true;
    lblv.Visible    := true;

    edtdtib.Visible := true;
    edtdtfb.Visible := true;
    lblb.Visible    := true;
    lblateb.Visible := true;

    ckbjuros.visible         := true;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '598 - Sintético por Produto' then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := true;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := True;

    cbxtpdata.Visible := false;
    edtdti.Visible  := false;
    lbli.Visible    := false;

    edtdtf.Visible  := false;
    lblf.Visible    := false;

    edtdtiE.Visible := true;
    edtdtfe.Visible := true;
    lble.Visible    := true;
    lblatee.Visible := true;

    edtdtiv.Visible := true;
    edtdtfv.visible := true;
    lblatev.Visible := true;
    lblv.Visible    := true;

    edtdtib.Visible := true;
    edtdtfb.Visible := true;
    lblb.Visible    := true;
    lblateb.Visible := true;

    ckbjuros.visible         := true;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '533 - Sintético Comissão' then
  begin
    set_order(True);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := true;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;

    cbxtpdata.Visible := false;
    edtdti.Visible    := false;
    lbli.Visible      := false;

    edtdtf.Visible    := false;
    lblf.Visible      := false;

    edtdtiE.Visible   := true;
    edtdtfe.Visible   := true;
    lble.Visible      := true;
    lblatee.Visible   := true;

    edtdtiv.Visible   := true;
    edtdtfv.visible   := true;
    lblatev.Visible   := true;
    lblv.Visible      := true;

    edtdtib.Visible   := true;
    edtdtfb.Visible   := true;
    lblb.Visible      := true;
    lblateb.Visible   := true;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '521 - Diário' then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := false;
    tbsstduplicata.TabVisible   := true;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := false;
    tbstpcliente.TabVisible     := false;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;

    cbxtpdata.Visible := true;
    edtdti.Visible    := true;
    lbli.Visible      := true;

    edtdtf.Visible    := true;
    lblf.Visible      := true;

    edtdtiE.Visible   := false;
    edtdtfe.Visible   := false;
    lble.Visible      := false;
    lblatee.Visible   := false;

    edtdtiv.Visible   := false;
    edtdtfv.visible   := false;
    lblatev.Visible   := false;
    lblv.Visible      := false;

    edtdtib.Visible   := false;
    edtdtfb.Visible   := false;
    lblb.Visible      := false;
    lblateb.Visible   := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '529 - Mensal'then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := true;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;


    cbxtpdata.Visible := true;
    edtdti.Visible    := true;
    lbli.Visible      := true;

    edtdtf.Visible    := true;
    lblf.Visible      := true;

    edtdtiE.Visible   := false;
    edtdtfe.Visible   := false;
    lble.Visible      := false;
    lblatee.Visible   := false;

    edtdtiv.Visible   := false;
    edtdtfv.visible   := false;
    lblatev.Visible   := false;
    lblv.Visible      := false;

    edtdtib.Visible   := false;
    edtdtfb.Visible   := false;
    lblb.Visible      := false;
    lblateb.Visible   := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;

    lble.caption := Maiuscula(_Data);
    lbli.Caption := 'Inicial';
  end
  else if consulta = '534 - Sintético Detalhado' then
  begin
    set_order(True);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := true;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;

    cbxtpdata.Visible := false;
    edtdti.Visible    := false;
    lbli.Visible      := false;

    edtdtf.Visible    := false;
    lblf.Visible      := false;

    edtdtiE.Visible   := true;
    edtdtfe.Visible   := true;
    lble.Visible      := true;
    lblatee.Visible   := true;

    edtdtiv.Visible   := true;
    edtdtfv.visible   := true;
    lblatev.Visible   := true;
    lblv.Visible      := true;

    edtdtib.Visible   := true;
    edtdtfb.Visible   := true;
    lblb.Visible      := true;
    lblateb.Visible   := true;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '212 - Aberta' then
  begin
    set_order(True);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := false;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;

    cbxtpdata.Visible := false;
    edtdti.Visible    := false;
    lbli.Visible      := false;

    edtdtf.Visible    := false;
    lblf.Visible      := false;

    edtdtiE.Visible   := true;
    edtdtfe.Visible   := true;
    lble.Visible      := true;
    lblatee.Visible   := true;

    edtdtiv.Visible   := true;
    edtdtfv.visible   := true;
    lblatev.Visible   := true;
    lblv.Visible      := true;

    edtdtib.Visible   := false;
    edtdtfb.Visible   := false;
    lblb.Visible      := false;
    lblateb.Visible   := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
    lble.caption             := Maiuscula(__emissao);
  end
  else if consulta = '530 - Posição das Receitas' then
  begin
    set_order(false);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := false;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;

    cbxtpdata.Visible := true;
    edtdti.Visible    := true;
    lbli.Visible      := true;

    edtdtf.Visible    := false;
    lblf.Visible      := false;

    edtdtiE.Visible   := false;
    edtdtfe.Visible   := false;
    lble.Visible      := false;
    lblatee.Visible   := false;

    edtdtiv.Visible   := false;
    edtdtfv.visible   := false;
    lblatev.Visible   := false;
    lblv.Visible      := false;

    edtdtib.Visible   := false;
    edtdtfb.Visible   := false;
    lblb.Visible      := false;
    lblateb.Visible   := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;

    lble.caption := Maiuscula(_Data);
    lbli.Caption := 'Limite';
  end
  else if consulta = '526 - Atrasada' then
  begin
    set_order(true);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := false;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;

    cbxtpdata.Visible := true;
    edtdti.Visible    := true;
    lbli.Visible      := true;

    edtdtf.Visible    := false;
    lblf.Visible      := false;

    edtdtiE.Visible   := false;
    edtdtfe.Visible   := false;
    lble.Visible      := false;
    lblatee.Visible   := false;

    edtdtiv.Visible   := false;
    edtdtfv.visible   := false;
    lblatev.Visible   := false;
    lblv.Visible      := false;

    edtdtib.Visible   := false;
    edtdtfb.Visible   := false;
    lblb.Visible      := false;
    lblateb.Visible   := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;

    lble.caption := Maiuscula(_Data);
    lbli.Caption := 'Limite';
  end
  else if consulta = '250 - Encontro de contas' then
  begin
    set_order(True);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := false;
    tbsempresa.TabVisible       := false;
    tbsplconta.tabvisible       := false;
    tbsSTaprovacao.TabVisible   := true;
    tbsstcliente.tabvisible     := false;
    tbsstduplicata.TabVisible   := false;
    tbsrepresentante.tabvisible := false;
    tbsrota.TabVisible          := false;
    tbstpcliente.TabVisible     := false;
    tbstpcobranca.TabVisible    := false;
    tbsuf.TabVisible            := false;
    tbsproduto.TabVisible       := false;

    cbxtpdata.Visible := false;
    edtdti.Visible    := true;
    lbli.Visible      := true;

    edtdtf.Visible    := true;
    lblf.Visible      := true;

    edtdtiE.Visible   := false;
    edtdtfe.Visible   := false;
    lble.Visible      := false;
    lblatee.Visible   := false;

    edtdtiv.Visible   := false;
    edtdtfv.visible   := false;
    lblatev.Visible   := false;
    lblv.Visible      := false;

    edtdtib.Visible   := false;
    edtdtfb.Visible   := false;
    lblb.Visible      := false;
    lblateb.Visible   := false;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
  end
  else if consulta = '528 - Sintético por cliente 2' then
  begin
    set_order(True);
    actgerar.Enabled            := true;
    pgc.Visible                 := true;
    tbsCliente.TabVisible       := true;
    tbsempresa.TabVisible       := true;
    tbsplconta.tabvisible       := true;
    tbsSTaprovacao.TabVisible   := false;
    tbsstcliente.tabvisible     := true;
    tbsstduplicata.TabVisible   := true;
    tbsrepresentante.tabvisible := true;
    tbsrota.TabVisible          := true;
    tbstpcliente.TabVisible     := true;
    tbstpcobranca.TabVisible    := true;
    tbsproduto.TabVisible       := false;
    tbsuf.TabVisible            := false;
    //
    cbxtpdata.Visible := false;
    edtdti.Visible    := false;
    lbli.Visible      := false;

    edtdtf.Visible    := false;
    lblf.Visible      := false;

    edtdtiE.Visible   := true;
    edtdtfe.Visible   := true;
    lble.Visible      := true;
    lblatee.Visible   := true;

    edtdtiv.Visible   := true;
    edtdtfv.visible   := true;
    lblatev.Visible   := true;
    lblv.Visible      := true;

    edtdtib.Visible   := true;
    edtdtfb.Visible   := true;
    lblb.Visible      := true;
    lblateb.Visible   := true;

    ckbjuros.Visible         := false;
    ckbrepresentante.Visible := false;
  end;
  setempresa;
end;

procedure TfrmConsultaDuplicata.edtnmstduplicataChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stduplicata);
end;

procedure TfrmConsultaDuplicata.edtnmstduplicataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstduplicata, executar_on_change_stduplicata, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmrepresentanteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_representante);
end;

procedure TfrmConsultaDuplicata.edtnmrepresentanteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvrepresentante, executar_on_change_representante, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_cliente);
end;

procedure TfrmConsultaDuplicata.edtnmclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvcliente, executar_on_change_cliente, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnucnpjcpfKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 119 then
  begin
    if (tpcodigo = 'Código') or (tpcodigo = 'CNPJ') then
    begin
           if tpcodigo = 'Código' then tpcodigo := 'CNPJ'
      else if tpcodigo = 'CNPJ'   then tpcodigo := 'CPF';
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

procedure TfrmConsultaDuplicata.edtnucnpjcpfKeyPress(Sender: TObject; var Key: Char);
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
      cdcliente := CodigodoCampo(_cliente, edtnucnpjcpf.Text, _nu+tpcodigo);
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

procedure TfrmConsultaDuplicata.edtcdstduplicataKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstduplicata, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtcdrepresentanteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvrepresentante, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.ToolButton4Click(Sender: TObject);
begin
  AdicionarListView(lsvtpcobranca);
end;

procedure TfrmConsultaDuplicata.ToolButton5Click(Sender: TObject);
begin
  ExcluirListView(lsvtpcobranca);
end;

procedure TfrmConsultaDuplicata.ToolButton7Click(Sender: TObject);
begin
  lsvtpcobranca.Clear;
end;

procedure TfrmConsultaDuplicata.edtcdtpcobrancaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpcobranca, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmtpcobrancaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpcobranca);
end;

procedure TfrmConsultaDuplicata.edtnmtpcobrancaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpcobranca, executar_on_change_tpcobranca, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.ToolButton28Click(Sender: TObject);
begin
  AdicionarListView(lsvrota);
end;

procedure TfrmConsultaDuplicata.ToolButton29Click(Sender: TObject);
begin
  ExcluirListView(lsvrota);
end;

procedure TfrmConsultaDuplicata.ToolButton31Click(Sender: TObject);
begin
  lsvRota.Clear;
end;

procedure TfrmConsultaDuplicata.edtcdrotaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvrota, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmrotaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_Rota);
end;

procedure TfrmConsultaDuplicata.edtnmrotaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvRota, executar_on_change_Rota, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.ToolButton13Click(Sender: TObject);
begin
  AdicionarListView(lsvstaprovacao);
end;

procedure TfrmConsultaDuplicata.ToolButton14Click(Sender: TObject);
begin
  ExcluirListView(lsvstaprovacao);
end;

procedure TfrmConsultaDuplicata.ToolButton16Click(Sender: TObject);
begin
  lsvstaprovacao.Clear;
end;

procedure TfrmConsultaDuplicata.edtcdstaprovacaoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstaprovacao, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmstaprovacaoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_staprovacao);
end;

procedure TfrmConsultaDuplicata.edtnmstaprovacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstaprovacao, executar_on_change_staprovacao, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConsultaDuplicata.ToolButton17Click(Sender: TObject);
begin
  AdicionarListView(lsvuf);
end;

procedure TfrmConsultaDuplicata.ToolButton18Click(Sender: TObject);
begin
  ExcluirListView(lsvuf);
end;

procedure TfrmConsultaDuplicata.ToolButton20Click(Sender: TObject);
begin
  lsvuf.Clear;
end;

procedure TfrmConsultaDuplicata.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(lowercase(copy(self.Name, 4, length(self.Name) - 3)), frmmain.tlbnew);
end;

procedure TfrmConsultaDuplicata.ToolButton34Click(Sender: TObject);
begin
  AdicionarListView(lsvstcliente);
end;

procedure TfrmConsultaDuplicata.ToolButton35Click(Sender: TObject);
begin
  ExcluirListView(lsvstcliente);
end;

procedure TfrmConsultaDuplicata.ToolButton37Click(Sender: TObject);
begin
  lsvstcliente.Clear;
end;

procedure TfrmConsultaDuplicata.edtcdstclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvstcliente, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmstclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvstcliente, executar_on_change_stcliente, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmstclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_stcliente);
end;

procedure TfrmConsultaDuplicata.ToolButton42Click(Sender: TObject);
begin
  AdicionarListView(lsvplconta);
end;

procedure TfrmConsultaDuplicata.ToolButton43Click(Sender: TObject);
begin
  ExcluirListView(lsvplconta);
end;

procedure TfrmConsultaDuplicata.ToolButton45Click(Sender: TObject);
begin
  lsvplconta.Clear;
end;

procedure TfrmConsultaDuplicata.edtcdplcontaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvplconta, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmplcontaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_plconta);
end;

procedure TfrmConsultaDuplicata.edtnmplcontaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvplconta, executar_on_change_plconta, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.ToolButton46Click(Sender: TObject);
begin
  AdicionarListView(lsvtpcliente);
end;

procedure TfrmConsultaDuplicata.ToolButton47Click(Sender: TObject);
begin
  ExcluirListView(lsvtpcliente);
end;

procedure TfrmConsultaDuplicata.ToolButton49Click(Sender: TObject);
begin
  lsvtpcliente.Clear;
end;

procedure TfrmConsultaDuplicata.edtcdtpclienteKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpcliente, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmtpclienteChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpcliente);
end;

procedure TfrmConsultaDuplicata.edtnmtpclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpcliente, executar_on_change_tpcliente, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.FormDestroy(Sender: TObject);
begin
  freeandnil(duplicata);
end;

procedure TfrmConsultaDuplicata.ToolButton3Click(Sender: TObject);
begin
  AdicionarListView(lsvtpfaturamento);
end;

procedure TfrmConsultaDuplicata.ToolButton6Click(Sender: TObject);
begin
  ExcluirListView(lsvtpfaturamento);
end;

procedure TfrmConsultaDuplicata.ToolButton11Click(Sender: TObject);
begin
  lsvtpfaturamento.Clear;
end;

procedure TfrmConsultaDuplicata.edtcdtpfaturamentoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvtpfaturamento, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmtpfaturamentoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_tpfaturamento);
end;

procedure TfrmConsultaDuplicata.edtnmtpfaturamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvtpfaturamento, executar_on_change_tpfaturamento, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.ToolButton15Click(Sender: TObject);
begin
  AdicionarListView(lsvempresa);
end;

procedure TfrmConsultaDuplicata.ToolButton19Click(Sender: TObject);
begin
  ExcluirListView(lsvempresa);
end;

procedure TfrmConsultaDuplicata.ToolButton23Click(Sender: TObject);
begin
  lsvempresa.Clear;
end;

procedure TfrmConsultaDuplicata.edtcdempresaKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvempresa, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmempresaChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_empresa);
end;

procedure TfrmConsultaDuplicata.edtnmempresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvempresa, executar_on_change_empresa, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.ToolButton25Click(Sender: TObject);
begin
  AdicionarListView(lsvproduto);
end;

procedure TfrmConsultaDuplicata.ToolButton26Click(Sender: TObject);
begin
  ExcluirListView(lsvproduto);
end;

procedure TfrmConsultaDuplicata.ToolButton27Click(Sender: TObject);
begin
  lsvproduto.Clear;
end;

procedure TfrmConsultaDuplicata.edtcdprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  AdicionarCodigoListView(lsvproduto, TEdit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  AdicionarNomeListView(lsvproduto, executar_on_change_produto, tedit(sender), key);
end;

procedure TfrmConsultaDuplicata.edtnmprodutoChange(Sender: TObject);
begin
  preencherNomeListview(TEdit(sender), executar_on_change_produto);
end;

procedure TfrmConsultaDuplicata.FormCreate(Sender: TObject);
begin
  set_treeview;
end;

procedure TfrmConsultaDuplicata.set_treeview;
var
  no1 : TTreeNode;
begin
  no1 := trv.Items.AddChild(nil, Maiuscula(__relatorio));
  trv.Items.AddChild(no1, '212 - Aberta');
  trv.Items.AddChild(no1, '526 - Atrasada');
  trv.Items.AddChild(no1, '521 - Diário');
  trv.Items.AddChild(no1, '250 - Encontro de contas');
  trv.Items.AddChild(no1, '252 - Juros Não Recebidos');
  trv.Items.AddChild(no1, '529 - Mensal');
  trv.Items.AddChild(no1, '530 - Posição das Receitas');
  trv.Items.AddChild(no1, '531 - Posição das Receitas Representante');
  trv.Items.AddChild(no1, '532 - Posição das Receitas Totais');
  trv.Items.AddChild(no1, '254 - Recebida');
  trv.Items.AddChild(no1, '433 - Sintético');
  trv.Items.AddChild(no1, '051 - Sintético Aberto do PIS/COFINS');
  trv.Items.AddChild(no1, '624 - Sintético Baixa');
  trv.Items.AddChild(no1, '050 - Sintético Baixa do PIS/COFINS');
  trv.Items.AddChild(no1, '533 - Sintético Comissão');
  trv.Items.AddChild(no1, '535 - Sintético Contas Prorrogadas');
  trv.Items.AddChild(no1, '534 - Sintético Detalhado');
  trv.Items.AddChild(no1, '669 - Sintético Devolução');
  trv.Items.AddChild(no1, '527 - Sintético por cliente');
  trv.Items.AddChild(no1, '528 - Sintético por cliente 2');
  trv.Items.AddChild(no1, '598 - Sintético por Produto');
  trv.Items.AddChild(no1, '256 - Sintético por vencimento');
  trv.Items.AddChild(no1, '544 - Sintético por vencimento quebra Empresa');
  trv.Items.AddChild(no1, '543 - Sintético quebra Empresa');
  no1 := trv.Items.AddChild(nil, Maiuscula(__funcao));
  trv.Items.AddChild(no1, 'Aplicar configuração de Mora Diária Cadastro Empresa');
  trv.Items.AddChild(no1, 'Aplicar configuração de Multa do Cadastro Empresa');
  trv.Items.AddChild(no1, 'Remover dígito de nosso número');
end;

end.
