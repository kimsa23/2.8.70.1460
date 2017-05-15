unit umanagerordproducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Menus, ToolWin, ComCtrls, ActnList, ExtCtrls, Math, Dialogs, StdCtrls,
  DB, FMTBcd, firedac.stan.param,
  ustrings, uexportarexcel, uregistro, uConstantes, udatahora, uRotinas,
  classeordproducao, classeorcamento, classeretornasql, classeusuario, classeempresa,
  classeaplicacao, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxCalendar, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxCurrencyEdit, cxCalc, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxBar, cxBarEditItem, cxSplitter, dxNavBarBase,
  dxNavBarCollns, dxNavBar, cxGroupBox, cxTreeView, cxGridBandedTableView,
  cxDateUtils, cxButtonEdit, cxBlobEdit, cxTextEdit, cxDBLookupComboBox, cxSpinEdit,
  cxMemo, cxPCdxBarPopupMenu, cxCheckBox, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxButtons, cxMaskEdit, cxDBEdit,
  cxGridDBBandedTableView, cxPC, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerDBStorage, cxLabel,
  cxNavigator, cxSchedulerTreeListBrowser, dxBarBuiltInMenu,
  cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor, System.Actions;

type
  Tfrmmanagerordproducao = class(TForm)
    dts: TDataSource;
    act: TActionList;
    actfechar: TAction;
    cxSplitter1: TcxSplitter;
    nvb: TdxNavBar;
    nvbstordproducao: TdxNavBarGroup;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    edtdti: TcxBarEditItem;
    edtdtf: TcxBarEditItem;
    nvbstorcamento: TdxNavBarGroup;
    nvbstorcamentoControl: TdxNavBarGroupControl;
    trvstorcamento: TcxTreeView;
    dxBarLargeButton2: TdxBarLargeButton;
    actatualizar: TAction;
    nvbstordproducaoControl: TdxNavBarGroupControl;
    trvstordproducao: TcxTreeView;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    actabrirordproducao: TAction;
    actabrirorcamento: TAction;
    actabrirpedido: TAction;
    actabrircliente: TAction;
    actgerarpedido: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dtsdetail: TDataSource;
    actimprimir: TAction;
    btnimprimir: TdxBarLargeButton;
    actimprimirorcamento: TAction;
    actimprimiranalitico: TAction;
    pumiimprimir: TdxBarPopupMenu;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    actimprimirordproducao: TAction;
    dxBarButton3: TdxBarButton;
    ntb: TNotebook;
    pgc: TcxPageControl;
    tbsproduto: TcxTabSheet;
    grddetail1: TcxGrid;
    grddetail1DBBandedTableView1: TcxGridDBBandedTableView;
    grddetail1DBBandedTableView1CDDIGITADO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DTPRVENTREGA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSFORMULA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSOBSERVACAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSDESENHO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSDESENHOPOSICAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSDESENHOREVISAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUCOTACAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUITEM: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDTPGRADEVALOR: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDforma: TcxGridDBBandedColumn;
    colgrddetail1DBBandedTableView1QTLARGURA1: TcxGridDBBandedColumn;
    colgrddetail1DBBandedTableView1QTCOMPRIMENTO1: TcxGridDBBandedColumn;
    colgrddetail1DBBandedTableView1QTALTURA1: TcxGridDBBandedColumn;
    colgrddetail1DBBandedTableView1QTPECA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1QTITEM: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1QTATENDIDA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLUNITARIO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLTOTAL: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLFRETE: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLDESCONTO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDTPICMS: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1ALICMS: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLICMS: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1ALMVA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLICMSSUBTRIB: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1ALICMSSUBTRIB: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDTPIPI: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1ALIPI: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLIPI: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLTOTALCIPI: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUPRAZOENTREGA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DTAPROVACAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUCLFISCAL: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSOBSERVACAOMADEIRA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUSEQUENCIA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSPRODUTO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDSTITORCAMENTO: TcxGridDBBandedColumn;
    grlgrddetail1Level1: TcxGridLevel;
    tbsobservacao: TcxTabSheet;
    memdsobservacao: TcxDBMemo;
    tbsobsinterna: TcxTabSheet;
    memDSOBSINTERNA: TcxDBMemo;
    grd: TcxGrid;
    Tbvordproducao: TcxGridDBTableView;
    TbvordproducaoCDORDPRODUCAO: TcxGridDBColumn;
    TbvordproducaoDTEMISSAO: TcxGridDBColumn;
    TbvordproducaoDTPREVENTREGA: TcxGridDBColumn;
    TbvordproducaoDTENTREGA: TcxGridDBColumn;
    TbvordproducaoCDORCAMENTO: TcxGridDBColumn;
    TbvordproducaoNUPEDIDO: TcxGridDBColumn;
    TbvordproducaoNMCLIENTE: TcxGridDBColumn;
    TbvordproducaoNMSTSORDPRODUCAO: TcxGridDBColumn;
    TbvordproducaoQTHORAORCADA: TcxGridDBColumn;
    TbvordproducaoQTHORAPRODUCAO: TcxGridDBColumn;
    TbvordproducaoNUSAIDA: TcxGridDBColumn;
    TbvordproducaoDSDESENHO: TcxGridDBColumn;
    TbvordproducaoNUCOTACAO: TcxGridDBColumn;
    TbvordproducaoNUITEM: TcxGridDBColumn;
    TbvOrcamento: TcxGridDBTableView;
    TbvOrcamentoCDORCAMENTO: TcxGridDBColumn;
    TbvOrcamentoDTEMISSAO: TcxGridDBColumn;
    TbvOrcamentoDTRESPOSTA: TcxGridDBColumn;
    TbvOrcamentoCDCLIENTE: TcxGridDBColumn;
    TbvOrcamentoNMCLIENTE: TcxGridDBColumn;
    TbvOrcamentoNMREPRESENTANTE: TcxGridDBColumn;
    TbvOrcamentoNMCONDPAGTO: TcxGridDBColumn;
    TbvOrcamentoVLTOTAL: TcxGridDBColumn;
    TbvOrcamentoNMSTORCAMENTO: TcxGridDBColumn;
    TbvOrcamentoDTPRVENTREGA: TcxGridDBColumn;
    TbvOrcamentoQTPEDIDO: TcxGridDBColumn;
    TbvOrcamentoQTATENDIDA: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    spt: TcxSplitter;
    nvbapontamento: TdxNavBarGroup;
    nvbapontamentoControl: TdxNavBarGroupControl;
    trvAPONTAMENTO: TcxTreeView;
    Scheduler: TcxScheduler;
    Storage: TcxSchedulerStorage;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1Bar2: TdxBar;
    dxBarButton4: TdxBarButton;
    actequipamento: TAction;
    actfuncionario: TAction;
    dxBarButton5: TdxBarButton;
    DBStorage: TcxSchedulerDBStorage;
    dtsapontamento: TDataSource;
    pnl: TcxLabel;
    TbvordproducaoNUCOR: TcxGridDBColumn;
    TbvOrcamentoNUCOR: TcxGridDBColumn;
    lblgrade: TcxLabel;
    TbvordproducaoDSOBSERVACAO: TcxGridDBColumn;
    Tbvordproducaonmfuncionario: TcxGridDBColumn;
    TbvordproducaoNMMUNICIPIO: TcxGridDBColumn;
    TbvordproducaoDTPRVINSTALACAO: TcxGridDBColumn;
    TbvordproducaoCDDIGITADO: TcxGridDBColumn;
    TbvordproducaoNMPRODUTO: TcxGridDBColumn;
    TbvordproducaoNUESTRUTURAL: TcxGridDBColumn;
    TbvOrcamentoCDTPORCAMENTO: TcxGridDBColumn;
    TbvordproducaoNMTPORCAMENTO: TcxGridDBColumn;
    actMapaProducao: TAction;
    dxBarLargeButton4: TdxBarLargeButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actfecharExecute(Sender: TObject);
    procedure ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure actatualizarExecute(Sender: TObject);
    procedure trvstorcamentoChange(Sender: TObject; Node: TTreeNode);
    procedure trvstordproducaoChange(Sender: TObject; Node: TTreeNode);
    procedure trvstordproducaoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure trvstordproducaoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure trvstorcamentoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure trvstorcamentoDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TbvordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirordproducaoExecute(Sender: TObject);
    procedure actabrirorcamentoExecute(Sender: TObject);
    procedure TbvOrcamentoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actabrirpedidoExecute(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure actgerarpedidoExecute(Sender: TObject);
    procedure actimprimirExecute(Sender: TObject);
    procedure actimprimirorcamentoExecute(Sender: TObject);
    procedure actimprimiranaliticoExecute(Sender: TObject);
    procedure actimprimirordproducaoExecute(Sender: TObject);
    procedure SchedulerLayoutChanged(Sender: TObject);
    procedure SchedulerDblClick(Sender: TObject);
    procedure nvbActiveGroupChanged(Sender: TObject);
    procedure actequipamentoExecute(Sender: TObject);
    procedure actfuncionarioExecute(Sender: TObject);
    procedure TbvordproducaoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TbvOrcamentoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TbvordproducaoDSOBSERVACAOGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure trvAPONTAMENTOClick(Sender: TObject);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure actMapaProducaoExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private { Private declarations }
    qry : TClasseQuery;
    qryapontamento : TClasseQuery;
    qrydetail : TClasseQuery;
    ordproducao : TOrdProducao;
    orcamento   : TOrcamento;
    lstequipamento, lstfuncionario : TStrings;
    FPrevStorage: TcxCustomSchedulerStorage;
    procedure set_atualizar(trv:TcxTreeView; tabela:string);
    procedure set_dados_orcamento(cdstorcamento:string='';cdcliente:string='';cdrepresentante:string=''; dtresposta:TDateTime=0);
    procedure set_dados_ordproducao(cdstordproducao:string='';cdcliente:string=''; cdtpequipamento:string=''; dtprventrega:TDate=0);
    function  sqlwhere_orcamento(tabela:string; cdstorcamento:string='';cdcliente:string=''; cdrepresentante:string=''; cdtpequipamento:string=''; dtresposta:TDateTime=0; dtprventrega:TDateTime=0):string;
    procedure setrecord(cdtp:integer);
    procedure set_planejamento(nivel1, nivel2:string);
    procedure set_apontamento (nivel1, nivel2:string);
    procedure fill_ordproducao(nmdata:string);
    procedure fill_Carga_Trabalho(nmdata:string);
    procedure acViewTypeExecute(tag: integer);
    procedure setdados(tabela:string; lista:TStrings; dti, dtf:TDate);
    procedure set_trvapontamento;
    procedure set_trvAPONTAMENTO_Change(Node: TTreeNode);
    procedure SetEmpresa;
    procedure SetTpOrdProducao;
    function get_cdordproducao(texto: string): integer;
    function qtd_status_treeview(texto:string):string;
  public { Public declarations }
  end;

var
  frmmanagerordproducao: Tfrmmanagerordproducao;

implementation

uses uMain,
  uDtmMain,
  ugerarpedido,
  uimprimirrelatoriopadrao,
  rptestoquecompleto,
  uProgressBar,
  udlgselecionarlista, udlgmapaproducaoproduto;

{$R *.dfm}

const
  _nudias = 90;

function get_index(nome:string; tbv: TcxGridDBBandedTableView):Integer;
var
  i : Integer;
begin
  result := -1;
  for i := 0 to tbv.ItemCount - 1 do
  begin
    if tbv.Bands[i].Caption = nome then
    begin
      result := i;
      Break;
    end;
  end;
end;

procedure Tfrmmanagerordproducao.FormShow(Sender: TObject);
begin
  edtdti.EditValue     := DtBanco - _nudias;
  edtdtf.EditValue     := DtBanco;
  ntb.ActivePage       := _APONTAMENTO;
  nvb.ActiveGroupIndex := 2;
end;

procedure Tfrmmanagerordproducao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure Tfrmmanagerordproducao.actfecharExecute(Sender: TObject);
begin
  frmmanagerordproducao.close;
end;

procedure Tfrmmanagerordproducao.ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmmanagerordproducao.FormCreate(Sender: TObject);
begin
  qry := TClasseQuery.create;
  dts.dataset := qry.q;
  qryapontamento := TClasseQuery.create;
  dtsapontamento.dataset := qryapontamento.q;
  qrydetail := TClasseQuery.create;
  dtsdetail.dataset := qrydetail.q;
  TcxLookupComboBoxProperties(TbvOrcamentoCDTPORCAMENTO.Properties).ListSource := abrir_tabela(_tporcamento);
  ordproducao    := TOrdProducao.create;
  orcamento      := torcamento.create;
  lstequipamento := TStringList.Create;
  lstfuncionario := TStringList.Create;
  SetEmpresa;
  set_trvapontamento;
  SetTpOrdProducao;
end;

procedure Tfrmmanagerordproducao.actatualizarExecute(Sender: TObject);
begin
  pgc.Visible := nvb.ActiveGroupIndex = 0;
  spt.Visible := nvb.ActiveGroupIndex = 0;
  actimprimirorcamento.Visible   := nvb.ActiveGroupIndex = 0;
  actimprimiranalitico.Visible   := nvb.ActiveGroupIndex = 0;
  actimprimirordproducao.Visible := nvb.ActiveGroupIndex = 1;
  if nvb.ActiveGroupIndex = 0 then
  begin
    set_atualizar(trvstorcamento, _orcamento)
  end
  else if nvb.ActiveGroupIndex = 1 then
  begin
    set_atualizar(trvstordproducao, _ordproducao);
  end;
end;

function Tfrmmanagerordproducao.sqlwhere_orcamento(tabela:string; cdstorcamento:string=''; cdcliente:string=''; cdrepresentante:string=''; cdtpequipamento:string=''; dtresposta:TDateTime=0; dtprventrega:TDateTime=0):string;
begin
  result := 'where o.cdempresa='+empresa.cdempresa.tostring+' ';
  if (cdstorcamento = '') and (cdcliente = '') and (cdrepresentante = '') and (dtresposta = 0) and (dtprventrega = 0) then
  begin
    result := result + ' and o.cdst'+tabela+'<>'+qregistro.CodigodoNome(_st+tabela, uppercase(_CONCLUIDO))+' and o.dtprventrega<'+GetDtBanco(DtBanco);
  end;
  if not VarIsNull(edtdti.EditValue) then
  begin
    result := result + ' and o.dtemissao';
    if not VarIsNull(edtdtf.EditValue) then
    begin
      result := result + ' '+_between+' '+GetDtBanco(edtdti.EditValue)+' and '+GetDtBanco(edtdtf.EditValue)
    end
    else
    begin
      result := result + '='+GetDtBanco(edtdti.EditValue);
    end;
  end;
  if cdtpequipamento <> '' then
  begin
    result := result + 'and o.cdtpequipamento='+cdtpequipamento;
  end
  else if cdstorcamento <> '' then
  begin
    result := result + 'and o.cdst'+tabela+'='+cdstorcamento;
  end;
  if cdcliente <> '' then
  begin
    result := result + 'and ';
    if tabela = _ordproducao then
    begin
      result := result + _c
    end
    else
    begin
      result := result + _o;
    end;
    result := result + '.'+_cdcliente+'='+cdcliente;
  end;
  if cdrepresentante <> '' then
  begin
    result := result + 'and o.'+_cdrepresentante+'='+cdrepresentante;
  end;
  if dtresposta <> 0 then
  begin
    result := result + 'and ';
    IF dtresposta = -1 then
    begin
      result := result + _o + '.'+_dtresposta+' is null '
    end
    else
    begin
      result := result + _o + '.'+_dtresposta+'='+GetDtBanco(dtresposta);
    end;
  end;
  if dtprventrega <> 0 then
  begin
    result := result + 'and ';
    IF dtprventrega = -1 then
    begin
      result := result + _o + '.'+_dtprventrega+' is null '
    end
    else
    begin
      result := result + _o + '.'+_dtprventrega+'='+GetDtBanco(dtprventrega);
    end;
  end;
end;

procedure Tfrmmanagerordproducao.set_atualizar(trv:TcxTreeView; tabela:string);
var
  s, s1 : TClasseQuery;
  procedure set_treeview(tbl:string);
    function makesql:string;
    begin
      if (tbl = _resposta) or (tbl = _prventrega) then
      begin
        result := 'select o.dt'+tbl+
                        ',count(o.dt'+tbl+')'+
                  'from '+tabela+' o '+
                  sqlwhere_orcamento(tabela)+
                  'group by o.dt'+tbl+' '+
                  'order by o.dt'+tbl;
      end
      else
      begin
        result := 'select c.nm'+tbl+
                        ',count(c.cd'+tbl+')'+
                        ',c.cd'+tbl+' '+
                  'from '+tabela+' o ';
        if tabela = _orcamento then
        begin
          result := result + 'right join '+tbl+' c on c.cd'+tbl+'=o.cd'+tbl+' and c.cdempresa=o.cdempresa '
        end
        else
        begin
          result := result + 'left join itpedido i on i.cditpedido=o.cditpedido and i.cdempresa=o.cdempresa '+
                                                       'left join pedido p on p.cdpedido=i.cdpedido and p.cdempresa=i.cdempresa '+
                                                       'left join '+tbl+' c on c.cd'+tbl+'=p.cd'+tbl+' and c.cdempresa=p.cdempresa ';
        end;
        result := result +
                  sqlwhere_orcamento(tabela)+
                  ' group by c.nm'+tbl+',c.cd'+tbl+' '+
                  'order by c.nm'+tbl;
      end;
    end;
    function makesql_status(codigo:string=''):string;
    var
      data : TDateTime;
    begin
      data := 0;
      result := 'select s.nmst'+tabela+',s.nuordem,count(o.cd'+tabela+') '+
                'from st'+tabela+' s '+
                'left join '+tabela+' o on o.cdst'+tabela+'=s.cdst'+tabela+' ';
      if (tabela = _ordproducao) and (tbl <> _prventrega) then
      begin
        result := result + 'left join itpedido i on i.cditpedido=o.cditpedido and i.cdempresa=o.cdempresa '+
                           'left join pedido p on p.cdpedido=i.cdpedido and p.cdempresa=i.cdempresa '+
                           'left join '+tbl+' c on c.cd'+tbl+'=p.cd'+tbl+' and c.cdempresa=p.cdempresa ';
      end;
      if (tbl = _resposta) or (tbl = _prventrega) then
      begin
        data := s.q.fieldbyname(_dt+tbl).Asdatetime;
        if data = 0 then
        begin
          data := -1;
        end;
      end;
      if tbl = _resposta then
      begin
        result := result + sqlwhere_orcamento(tabela, '', '', '', '', data)
      end
      else if tbl = _prventrega then
      begin
        result := result + sqlwhere_orcamento(tabela, '', '', '', '', 0, data)
      end
      else if tbl = _cliente then
      begin
        result := result + sqlwhere_orcamento(tabela, '', s.q.fieldbyname(_cd+tbl).AsString)
      end
      else if tbl = _representante then
      begin
        result := result + sqlwhere_orcamento(tabela, '', '', s.q.fieldbyname(_cd+tbl).AsString);
      end;
      result := result +
                ' group by s.nuordem,s.nmst'+tabela+' '+
                'order by s.nuordem'
    end;
  var
    nocliente, No : TTreeNode;
  begin
    trv.FullExpand;
    if tbl = _prventrega then
    begin
      nocliente := trv.Items.AddChild(nil, Maiuscula(__Previsao))
    end
    else
    begin
      nocliente := trv.Items.AddChild(nil, Maiuscula(tbl));
    end;
    s.q.Close;
    s.q.Open(makesql);
    while not s.q.Eof do
    begin
      if (tbl = _resposta) or (tbl = _prventrega) then
      begin
        no := trv.Items.AddChild(nocliente, s.q.fieldbyname(_dt+tbl).Asstring+' ('+s.q.fields[1].asstring+') ')
      end
      else
      begin
        no := trv.Items.AddChild(nocliente, s.q.fieldbyname(_nm+tbl).Asstring+' ('+s.q.fields[1].asstring+') ');
      end;
      s1.q.Close;
      s1.q.Open(makesql_status);
      while not s1.q.Eof do
      begin
        trv.Items.AddChild(no, s1.q.fields[0].Asstring+' ('+s1.q.fields[2].asstring+')');
        s1.q.next;
      end;
      s.q.next;
    end;
    trv.FullCollapse;
  end;
  procedure adicionar_atrasado;
  var
    sql : string;
  begin
    sql := 'select count(*) from '+tabela+' where cdempresa='+empresa.cdempresa.tostring+' and cdst'+tabela+'<>'+qregistro.CodigodoNome(_st+tabela, uppercase(_CONCLUIDO))+' AND DTPRVENTREGA<'+GetDtBanco(DtBanco);
    if not VarIsNull(edtdti.EditValue) then
    begin
      sql := sql + 'and dtemissao';
      if not VarIsNull(edtdtf.EditValue) then
      begin
        sql := sql + ' '+_between+' '+GetDtBanco(edtdti.EditValue)+' and '+GetDtBanco(edtdtf.EditValue)
      end
      else
      begin
        sql := sql + '='+GetDtBanco(edtdti.EditValue);
      end;
    end;
    trv.Items.AddChild(trv.Items[0], 'ATRASADO ('+RetornaSQLString(sql)+')');
  end;
  procedure set_status;
  begin
    trv.Items.AddFirst(nil, Maiuscula(_Status));
    s.q.Open('select cdst'+tabela+',nmst'+tabela+',nuordem from st'+tabela+' order by nuordem');
    while not s.q.Eof do
    begin
      trv.Items.AddChild(trv.Items[0], s.q.fieldbyname(_nmst+tabela).Asstring+' ('+RetornaSQLString('select count(cdst'+tabela+') from '+tabela+' o '+sqlwhere_orcamento(tabela, s.q.fieldbyname(_cdst+tabela).asstring))+')');
      s.q.next;
    end;
    adicionar_atrasado;
  end;
  procedure set_tpequipamento;
  begin
    trv.Items.AddFirst(nil, Maiuscula(_Etapa));
    s.q.Open('select o.cdtpequipamento'+
                   ',t.nmtpequipamento'+
                   ',count(*) '+
             'from ordproducao o '+
             'inner join tpequipamento t on t.cdempresa=o.cdempresa and t.cdtpequipamento=o.cdtpequipamento '+
             sqlwhere_orcamento(tabela)+' '+
             'group by o.cdtpequipamento,t.nmtpequipamento '+
             'order by nmtpequipamento');
    while not s.q.Eof do
    begin
      trv.Items.AddChild(trv.Items[0], s.q.fieldbyname(_nmtpequipamento).Asstring+' ('+s.q.fields[2].Asstring+')');
      s.q.next;
    end;
  end;
begin
  s  := TClasseQuery.Create;
  s1 := TClasseQuery.Create;
  try
    trv.Items.Clear;
    set_status;
    set_treeview(_cliente);
    if tabela = _orcamento then
    begin
      set_treeview(_representante);
      set_treeview(_resposta);
    end;
    if tabela = _ordproducao then
    begin
      set_treeview(_prventrega);
      set_tpequipamento;
    end;
  finally
    freeandnil(s);
    freeandnil(s1);
  end;
end;

procedure Tfrmmanagerordproducao.set_dados_orcamento(cdstorcamento:string='';cdcliente:string='';cdrepresentante:string=''; dtresposta:TDateTime=0);
  function makesql:string;
  begin
    result := 'SELECT o.cdempresa'+
                    ',o.DTEMISSAO'+
                    ',O.CDTPORCAMENTO'+
                    ',o.CDCLIENTE'+
                    ',o.dtresposta'+
                    ',c.NMCLIENTE'+
                    ',o.dsobservacao'+
                    ',o.DSOBSINTERNA'+
                    ',r.NMREPRESENTANTE'+
                    ',cp.NMCONDPAGTO'+
                    ',s.NMSTorcamento'+
                    ',s.bogerarinfo'+
                    ',o.DTPRVENTREGA'+
                    ',o.qtaprovado'+
                    ',o.qtitem'+
                    ',o.vltotal'+
                    ',S.NUCOR'+
                    ',o.cdorcamento '+
              'FROM orcamento o '+
              'left JOIN CLIENTE C ON o.CDCLIENTE=C.CDCLIENTE and o.cdempresa=c.cdempresa '+
              'left JOIN REPRESENTANTE R ON R.CDREPRESENTANTE=o.CDREPRESENTANTE and r.cdempresa=o.cdempresa '+
              'left JOIN CONDPAGTO CP ON CP.CDCONDPAGTO=o.CDCONDPAGTO and cp.cdempresa=o.cdempresa '+
              'left JOIN STorcamento S ON S.CDSTorcamento=o.CDSTorcamento ';
    result := result + sqlwhere_orcamento(_orcamento, cdstorcamento, cdcliente, cdrepresentante, '', dtresposta);
  end;
begin
  qry.q.DisableControls;
  Screen.Cursor   := crHourGlass;
  try
    qry.q.close;
    qry.q.sql.text := makesql;
    qry.q.open;
  finally
    qry.q.enablecontrols;
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmmanagerordproducao.trvstorcamentoChange(Sender: TObject; Node: TTreeNode);
var
  texto, cdstorcamento, cdcliente, cdrepresentante : string;
  dtresposta : TDateTime;
begin
  if node.Level = 0 then
  begin
    Exit;
  end;
  cdstorcamento   := '';
  cdcliente       := '';
  cdrepresentante := '';
  dtresposta      := 0;
  if Node.Level = 1 then
  begin
    texto := copy(node.Text, 1, get_ultima_posicao('(', node.text) - 2);
    if node.Parent.Text = Maiuscula(_Status) then
    begin
      cdstorcamento := qregistro.codigodonome(_storcamento  , texto)
    end
    else if Node.Parent.Text = Maiuscula(_Cliente) then
    begin
      cdcliente := qregistro.codigodonome(_cliente      , texto)
    end
    else if Node.Parent.Text = Maiuscula(_Representante) then
    begin
      cdrepresentante := qregistro.codigodonome(_representante, texto)
    end
    else if Node.Parent.Text = Maiuscula(_resposta) then
    begin
      if texto = '' then
      begin
        dtresposta := -1
      end
      else
      begin
        dtresposta := StrToDate(texto);
      end;
    end;
    lblgrade.Caption := 'Orçamento\'+node.Parent.Text+'\'+texto;
  end;
  if Node.Level = 2 then
  begin
    texto := copy(node.Parent.Text, 1, get_ultima_posicao('(', node.Parent.text) - 2);
    if node.Parent.Parent.Text = Maiuscula(_Status) then
    begin
      cdstorcamento := qregistro.codigodonome(_storcamento  , texto)
    end
    else if Node.Parent.Parent.Text = Maiuscula(_Cliente) then
    begin
      cdcliente := qregistro.codigodonome(_cliente, texto)
    end
    else if Node.Parent.Parent.Text = Maiuscula(_Representante) then
    begin
      cdrepresentante := qregistro.codigodonome(_representante, texto)
    end
    else if Node.Parent.Parent.Text = Maiuscula(_Resposta) then
    begin
      if texto = '' then
      begin
        dtresposta := -1
      end
      else
      begin
        dtresposta := StrToDate(texto);
      end;
    end;
    cdstorcamento := qregistro.codigodonome(_storcamento  , copy(node.Text, 1, get_ultima_posicao('(', node.text) - 2));
    lblgrade.Caption := 'Orçamento\'+node.Parent.Parent.Text+'\'+texto+'\'+copy(node.Text, 1, get_ultima_posicao('(', node.text) - 2);
  end;
  if (Node.Level = 1) or (Node.Level = 2) then
  begin
    qry.q.AfterScroll := nil;
    set_dados_orcamento(cdstorcamento, cdcliente, cdrepresentante, dtresposta);
    qry.q.AfterScroll := qryAfterScroll;
    qryAfterScroll(qry.q);
  end;
end;

procedure Tfrmmanagerordproducao.trvstordproducaoChange(Sender: TObject; Node: TTreeNode);
var
  texto, cdtpequipamento, cdstordproducao, cdcliente : string;
  dtprventrega : TDate;
begin
  if node.Level = 0 then
  begin
    Exit;
  end;
  cdstordproducao := '';
  cdcliente       := '';
  cdtpequipamento := '';
  dtprventrega    := 0;
  if Node.Level = 1 then
  begin
    texto := copy(node.Text, 1, get_ultima_posicao('(', node.text) - 2);
    if node.Parent.Text = Maiuscula(_Status)  then
    begin
      cdstordproducao := qregistro.codigodonome(_stordproducao, texto)
    end
    else if Node.Parent.Text = Maiuscula(_Cliente) then
    begin
      cdcliente       := qregistro.codigodonome(_cliente      , texto)
    end
    else if Node.Parent.Text = Maiuscula(_etapa)   then
    begin
      cdtpequipamento := qregistro.codigodonome(_tpequipamento, texto)
    end
    else if Node.Parent.Text = Maiuscula(__Previsao) then
    begin
      if texto = '' then
      begin
        dtprventrega := -1
      end
      else
      begin
        dtprventrega := StrToDate(texto);
      end;
    end;
    set_dados_ordproducao(cdstordproducao, cdcliente, cdtpequipamento, dtprventrega);
  end;
  if Node.Level = 2 then
  begin
    texto := copy(node.Parent.Text, 1, get_ultima_posicao('(', node.Parent.text) - 2);
    if node.Parent.Parent.Text = Maiuscula(_Status) then
    begin
      cdstordproducao := qregistro.codigodonome(_stordproducao, texto)
    end
    else if Node.Parent.Parent.Text = Maiuscula(_Cliente) then
    begin
      cdcliente := qregistro.codigodonome(_cliente      , texto)
    end
    else if Node.Parent.Parent.Text = Maiuscula(__Previsao) then
    begin
      if texto = '' then
      begin
        dtprventrega := -1
      end
      else
      begin
        dtprventrega := StrToDate(texto);
      end;
    end;
    cdstordproducao := qregistro.codigodonome(_stordproducao, copy(node.Text, 1, get_ultima_posicao('(', node.text) - 2));
    set_dados_ordproducao(cdstordproducao, cdcliente, cdtpequipamento, dtprventrega);
  end;
end;

procedure Tfrmmanagerordproducao.set_dados_ordproducao(cdstordproducao:string='';cdcliente:string=''; cdtpequipamento:string=''; dtprventrega:TDate=0);
  function Makesql:string;
  begin
    result := 'SELECT o.cdordproducao'+
                    ',o.DTEMISSAO'+
                    ',o.dtentrega'+
                    ',o.DTPRVENTREGA'+
                    ',s.nmstordproducao'+
                    ',C.nmcliente'+
                    ',c.cdcliente'+
                    ',io.cdorcamento'+
                    ',tporcamento.nmtporcamento'+
                    ',O.QTHORAORCADA'+
                    ',O.QTHORAPRODUCAO'+
                    ',s.nucor'+
                    ',p.nupedido'+
                    ',p.cdpedido'+
                    ',i.dsdesenho'+
                    ',i.nucotacao'+
                    ',i.nuitem'+
                    ',O.DSOBSERVACAO'+
                    ',f.nmfuncionario'+
                    ',m.nmmunicipio'+
                    ',O.DTPRVINSTALACAO'+
                    ',O.NUESTRUTURAL'+
                    ',O.CDDIGITADO'+
                    ',D.NMPRODUTO'+
                    ',s2.NUSAIDA '+
               'FROM ordproducao o '+
               'left join funcionario f on f.cdfuncionario=o.cdfuncionario and f.cdempresa=o.cdempresa '+
               'LEFT JOIN PRODUTO D ON D.CDEMPRESA=O.CDEMPRESA AND D.CDPRODUTO=O.CDPRODUTO '+
               'left join municipio m on m.cdmunicipio=o.cdmunicipio '+
               'LEFT JOIN ITORDPRODUCAOMATERIAL IM ON IM.CDORDPRODUCAO=O.CDORDPRODUCAO and im.cdempresa=o.cdempresa '+
               'LEFT JOIN ITORDPRODUCAOCUSTO IC ON IC.CDORDPRODUCAO=O.CDORDPRODUCAO and ic.cdempresa=o.cdempresa '+
               'left join itpedido i on i.cditpedido=o.cditpedido and i.cdempresa=o.cdempresa '+
               'left join itsaida i3 on i3.cditpedido=i.cditpedido and i3.cdempresa=i.cdempresa '+
               'left join saida s2 on s2.cdsaida=i3.cdsaida and s2.cdempresa=i3.cdempresa '+
               'left join itorcamento io on io.cditorcamento=i.cditorcamento and io.cdempresa=i.cdempresa '+
               'left join orcamento on orcamento.cdempresa=io.cdempresa and orcamento.cdorcamento=io.cdorcamento '+
               'left join tporcamento on tporcamento.cdempresa=orcamento.cdempresa and tporcamento.cdtporcamento=orcamento.cdtporcamento '+
               'left join pedido p on p.cdpedido=i.cdpedido and p.cdempresa=i.cdempresa '+
               'LEFT JOIN CLIENTE c ON C.CDCLIENTE=p.CDCLIENTE and c.cdempresa=p.cdempresa '+
               'LEFT JOIN STordproducao s ON S.CDSTordproducao=o.cdstordproducao '+
               sqlwhere_orcamento(_ordproducao, cdstordproducao, cdcliente, '', cdtpequipamento, 0, dtprventrega)+
               ' GROUP BY o.cdordproducao'+
                    ',o.DTEMISSAO'+
                    ',o.dtentrega'+
                    ',o.DTPRVENTREGA'+
                    ',s.nmstordproducao'+
                    ',C.nmcliente'+
                    ',c.cdcliente'+
                    ',io.cdorcamento'+
                    ',tporcamento.nmtporcamento'+
                    ',O.QTHORAORCADA'+
                    ',O.QTHORAPRODUCAO'+
                    ',s.nucor'+
                    ',p.nupedido'+
                    ',p.cdpedido'+
                    ',i.dsdesenho'+
                    ',i.nucotacao'+
                    ',i.nuitem'+
                    ',O.DSOBSERVACAO'+
                    ',f.nmfuncionario'+
                    ',m.nmmunicipio'+
                    ',O.DTPRVINSTALACAO'+
                    ',O.NUESTRUTURAL'+
                    ',O.CDDIGITADO'+
                    ',D.NMPRODUTO'+
                    ',s2.nusaida';
  end;
begin
  qry.q.DisableControls;
  Screen.Cursor   := crHourGlass;
  try
    qry.q.close;
    qry.q.sql.text := makesql;
    qry.q.open;
  finally
    qry.q.enablecontrols;
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmmanagerordproducao.trvstordproducaoDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  z, p, i : integer;
  cdstordproducaoproximo : integer;
begin
  if (QRotinas.nome_status_treeview(trvstordproducao.DropTarget.Text) = '') or
     (QRotinas.nome_status_treeview(trvstordproducao.DropTarget.Text) = QRotinas.nome_status_treeview(trvstordproducao.selected.Text)) then
  begin
    exit;
  end;
  cdstordproducaoproximo := qregistro.CodigodoNomeInteiro(_stordproducao, QRotinas.nome_status_treeview(trvstordproducao.DropTarget.Text));
  z := 0;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := Tbvordproducao.ViewData.RecordCount;
    frmprogressbar.Show;
    for i := 0 to Tbvordproducao.ViewData.RecordCount -1 do
    begin
      frmprogressbar.gau.Progress := i + 1;
      frmprogressbar.pnl.Caption := 'Atualizando status '+inttostr(frmprogressbar.gau.MaxValue)+' de '+inttostr(frmprogressbar.gau.Progress);
      Application.ProcessMessages;
      if Tbvordproducao.ViewData.Records[i].Selected then
      begin
        for p := 0 to Tbvordproducao.ColumnCount - 1 do
        begin
          if LowerCase(Tbvordproducao.Columns[p].DataBinding.FieldName) = _cdordproducao then
          begin
            ordproducao.cdordproducao := Tbvordproducao.ViewData.Records[i].Values[p];
            ordproducao.Select(ordproducao.cdordproducao);
            ordproducao.cdstordproducao := cdstordproducaoproximo;
            ordproducao.Update;
            ordproducao.RegistrarMudancaStatus;
            Tbvordproducao.ViewData.Records[i].Selected := False;
            Inc(z);
            Break;
          end;
        end;
      end;
    end;
  finally
    frmprogressbar.free;
  end;
  qry.q.Refresh;
  trvstordproducao.Selected.Text   := QRotinas.nome_status_treeview(trvstordproducao.selected.Text) + ' ('+inttostr(qry.q.RecordCount)+')';
  trvstordproducao.DropTarget.Text := QRotinas.nome_status_treeview(trvstordproducao.DropTarget.Text)+' ('+inttostr(z + strtoint(qtd_status_treeview(trvstordproducao.DropTarget.Text)))+')';
end;

procedure Tfrmmanagerordproducao.trvstordproducaoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := true;
end;

procedure Tfrmmanagerordproducao.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(qrydetail);
  freeandnil(ordproducao);
  freeandnil(orcamento);
  freeandnil(lstequipamento);
  freeandnil(lstfuncionario);
end;

procedure Tfrmmanagerordproducao.trvstorcamentoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True;
end;

procedure Tfrmmanagerordproducao.trvstorcamentoDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  z, p, i : integer;
  cdstorcamentoproximo : string;
begin
  if (QRotinas.nome_status_treeview(trvstorcamento.DropTarget.Text) = '') or
     (QRotinas.nome_status_treeview(trvstorcamento.DropTarget.Text) = QRotinas.nome_status_treeview(trvstorcamento.selected.Text)) then
  begin
    exit;
  end;
  cdstorcamentoproximo := qregistro.CodigodoNome(_storcamento, QRotinas.nome_status_treeview(trvstorcamento.DropTarget.Text));
  z := 0;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := Tbvorcamento.ViewData.RecordCount;
    frmprogressbar.Show;
    for i := 0 to Tbvorcamento.ViewData.RecordCount -1 do
    begin
      frmprogressbar.gau.Progress := i + 1;
      frmprogressbar.pnl.Caption := 'Atualizando status '+inttostr(frmprogressbar.gau.MaxValue)+' de '+inttostr(frmprogressbar.gau.Progress);
      Application.ProcessMessages;
      if Tbvorcamento.ViewData.Records[i].Selected then
      begin
        for p := 0 to Tbvorcamento.ColumnCount - 1 do
        begin
          if LowerCase(Tbvorcamento.Columns[p].DataBinding.FieldName) = _cdorcamento then
          begin
            orcamento.cdorcamento := Tbvorcamento.ViewData.Records[i].Values[p];
            orcamento.SetStatus(cdstorcamentoproximo);
            Tbvorcamento.ViewData.Records[i].Selected := False;
            Inc(z);
            Break;
          end;
        end;
      end;
    end;
  finally
    frmprogressbar.free;
  end;

  qry.q.AfterScroll := nil;
  qry.q.Refresh;
  qry.q.AfterScroll := qryAfterScroll;
  qryAfterScroll(qry.q);

  trvstorcamento.Selected.Text   := QRotinas.nome_status_treeview(trvstorcamento.selected.Text) + ' ('+inttostr(qry.q.RecordCount)+')';
  trvstorcamento.DropTarget.Text := QRotinas.nome_status_treeview(trvstorcamento.DropTarget.Text)+' ('+inttostr(z + strtoint(qtd_status_treeview(trvstorcamento.DropTarget.Text)))+')';
end;

procedure Tfrmmanagerordproducao.TbvordproducaoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdordproducao then
  begin
    actabrirordproducaoExecute(actabrirordproducao)
  end
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nupedido      then
  begin
    actabrirpedidoExecute(actabrirpedido)
  end
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdorcamento   then
  begin
    actabrirorcamentoExecute(actabrirorcamento)
  end
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _nmcliente     then
  begin
    actabrirclienteExecute(actabrircliente);
  end;
end;

procedure Tfrmmanagerordproducao.actabrirordproducaoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry.q, qry.q);
end;

procedure Tfrmmanagerordproducao.actabrirorcamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry.q, qry.q);
end;

procedure Tfrmmanagerordproducao.TbvOrcamentoCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdorcamento then
  begin
    actabrirorcamentoExecute(actabrirorcamento)
  end
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcliente   then
  begin
    actabrirclienteExecute(actabrircliente);
  end;
end;

procedure Tfrmmanagerordproducao.actabrirpedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry.q, qry.q);
end;

procedure Tfrmmanagerordproducao.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry.q, qry.q);
end;

procedure Tfrmmanagerordproducao.actgerarpedidoExecute(Sender: TObject);
begin
  if qry.q.FieldByName(_CDorcamento).asstring <> '' then
  begin
    orcamento.cdorcamento := qry.q.FieldByName(_CDorcamento).AsInteger;
    orcamento.tporcamento.Select(QRegistro.InteirodoCodigo(_orcamento, qry.q.fieldbyname(_cdorcamento).asinteger, _cdtporcamento));
    GerarPedido(_pedido, orcamento);
  end;
end;

procedure Tfrmmanagerordproducao.setrecord(cdtp:integer);
begin
  if cdtp = 0 then
  begin
    exit;
  end;
  orcamento.tporcamento.Select(cdtp);

  grddetail1DBBandedTableView1DSPRODUTO.Visible  := orcamento.tporcamento.boitemdescricao = _s;
  grddetail1DBBandedTableView1NMPRODUTO.Visible  := orcamento.tporcamento.boitemdescricao <> _s;

  tbsobservacao.TabVisible := orcamento.tporcamento.boobservacao = _s;
  tbsobsinterna.TabVisible := orcamento.tporcamento.boobservacaointerna = _s;

  grddetail1DBBandedTableView1DSOBSERVACAO.Visible := orcamento.tporcamento.bodsobservacaoitem = _s;
  grddetail1DBBandedTableView1NUSEQUENCIA.Visible  := orcamento.tporcamento.bonusequencia = _s;
  //
  grddetail1DBBandedTableView1.Bands[get_index(Maiuscula(_Madeira), grddetail1DBBandedTableView1)].Visible := orcamento.tporcamento.bomadeira = _s;
  //
  grddetail1DBBandedTableView1NUITEM.visible    := orcamento.tporcamento.bonuitem = _s;
  grddetail1DBBandedTableView1NUCOTACAO.Visible := orcamento.tporcamento.bocotacaoitem  = _s;
  grddetail1DBBandedTableView1.Bands[get_index('Cotação', grddetail1DBBandedTableView1)].Visible := (orcamento.tporcamento.bonuitem = _s) or (orcamento.tporcamento.bocotacaoitem = _s);

  grddetail1DBBandedTableView1CDTPGRADEVALOR.Visible := orcamento.tporcamento.botpgrade = _s;

  grddetail1DBBandedTableView1DSDESENHO.Visible        := orcamento.tporcamento.bodsdesenho = _s;
  grddetail1DBBandedTableView1DSDESENHOREVISAO.Visible := orcamento.tporcamento.boitemdesenhorevisao = _s;
  grddetail1DBBandedTableView1DSDESENHOPOSICAO.Visible := orcamento.tporcamento.boitemdesenhoposicao = _s;
  grddetail1DBBandedTableView1.Bands[get_index(Maiuscula(_Desenho), grddetail1DBBandedTableView1)].Visible := orcamento.tporcamento.bodsdesenho = _s;

  grddetail1DBBandedTableView1DSFORMULA.Visible := orcamento.tporcamento.boitemformula = _s;

  grddetail1DBBandedTableView1VLICMSSUBTRIB.Visible := orcamento.tporcamento.boicmssubtrib = _s;
  grddetail1DBBandedTableView1ALICMSSUBTRIB.Visible := orcamento.tporcamento.boicmssubtrib = _s;
  grddetail1DBBandedTableView1ALMVA.Visible         := orcamento.tporcamento.boicmssubtrib = _s;
  grddetail1DBBandedTableView1ALICMS.Visible        := orcamento.tporcamento.boicmssubtrib = _s;
  grddetail1DBBandedTableView1.Bands[get_index('ICMS Sub Trib', grddetail1DBBandedTableView1)].Visible := orcamento.tporcamento.boicmssubtrib = _s;

  grddetail1DBBandedTableView1VLFRETE.Visible    := orcamento.tporcamento.boexibirfrete = _s;
  grddetail1DBBandedTableView1ALIPI.Visible          := orcamento.tporcamento.boipi = _s;
  grddetail1DBBandedTableView1VLIPI.Visible          := orcamento.tporcamento.boipi = _s;
  grddetail1DBBandedTableView1VLTOTALCIPI.Visible    := orcamento.tporcamento.boipi = _s;
  grddetail1DBBandedTableView1.Bands[get_index(UpperCase(_IPI), grddetail1DBBandedTableView1)].Visible := orcamento.tporcamento.boipi = _s;

  grddetail1DBBandedTableView1DTPRVENTREGA.Visible           := orcamento.tporcamento.bodtprventregaitem = _s;
  grddetail1DBBandedTableView1VLUNITARIO.Properties.ReadOnly := orcamento.tporcamento.boitemalterarvalor <> _s;
  //
  grddetail1DBBandedTableView1VLDESCONTO.Visible := orcamento.tporcamento.boitemdesconto = _s;
  //
  grddetail1DBBandedTableView1CDTPICMS.Visible := orcamento.tporcamento.boitemtpicms = _s;
  grddetail1DBBandedTableView1ALICMS.Visible   := orcamento.tporcamento.boicms = _s;
  grddetail1DBBandedTableView1VLICMS.Visible   := orcamento.tporcamento.boicms = _s;
  grddetail1DBBandedTableView1.Bands[get_index(UpperCase(_ICMS), grddetail1DBBandedTableView1)].Visible := orcamento.tporcamento.boicms = _s;

  grddetail1DBBandedTableView1NUPRAZOENTREGA.Visible := orcamento.tporcamento.boitemnuprazoentrega = _s;
  grddetail1DBBandedTableView1DTAPROVACAO.Visible    := orcamento.tporcamento.boitemdtaprovacao = _s;
  grddetail1DBBandedTableView1.Bands[get_index('Datas', grddetail1DBBandedTableView1)].Visible := (orcamento.tporcamento.boitemnuprazoentrega = _s) or (orcamento.tporcamento.boitemdtaprovacao = _s);
  grddetail1DBBandedTableView1NUCLFISCAL.Visible     := orcamento.tporcamento.boitemnuclfiscal = _s;
end;

procedure Tfrmmanagerordproducao.actimprimirExecute(Sender: TObject);
begin
  btnimprimir.DropDown(false);
end;

procedure Tfrmmanagerordproducao.actimprimirorcamentoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(333, qry.q.FieldByName(_CDORCAMENTO).AsString);
end;

procedure Tfrmmanagerordproducao.actimprimiranaliticoExecute(Sender: TObject);
begin
  imprimirocamento(qry.q.FieldByName(_CDORCAMENTO).AsString);
end;

procedure Tfrmmanagerordproducao.actimprimirordproducaoExecute(Sender: TObject);
begin
  ImpimirRelatorioPadrao1(503, qry.q.fieldbyname(_cdordproducao).AsString+' and op.cdempresa='+empresa.cdempresa.tostring);
end;

procedure Tfrmmanagerordproducao.fill_Carga_Trabalho(nmdata:string);
  function makesql:string;
  begin
    result := 'SELECT o.nudiascusto'+
                    ',O.QTHORAPRODUCAO'+
                    ',o.qthoraorcada'+
                    ',C.NMCLIENTE'+
                    ',O.CDORDPRODUCAO'+
                    ',O.DTEMISSAO'+
                    ',O.DTPRVENTREGA'+
                    ',O.DTENTREGA '+
              'FROM ORDPRODUCAO O '+
              'LEFT JOIN ITPEDIDO I ON I.CDITPEDIDO=O.CDITPEDIDO and o.cdempresa=i.cdempresa '+
              'LEFT JOIN PEDIDO P ON P.CDPEDIDO=I.CDPEDIDO and p.cdempresa=i.cdempresa '+
              'LEFT JOIN CLIENTE C ON C.CDCLIENTE=P.CDCLIENTE and c.cdempresa=p.cdempresa '+
              'WHERE o.cdstordproducao<>9 and O.'+nmdata+' BETWEEN '+GetDtBanco(edtdti.EditValue)+' and '+GetDtBanco(edtdtf.EditValue)+' '+
              'ORDER BY O.DTEMISSAO,O.CDORDPRODUCAO';
  end;
var
  c : TClasseQuery;
  AEvent: TcxSchedulerEvent;
  procedure gerar_evento(nmrecurso:string; dti, dtf: TDate; APreEvent: TcxSchedulerEvent);
  begin
    AEvent              := Scheduler.Storage.createEvent;
    AEvent.Start        := dti;
    AEvent.Finish       := dtf;
    if nmrecurso = _recurso then
    begin
      AEvent.LabelColor   := 6610596;
      AEvent.Caption      := 'OP '+c.q.fieldbyname(_cdordproducao).AsString+' '+nmrecurso+' '+c.q.fieldbyname(_qthoraorcada).AsString+' hora(s)';
    end
    else
    begin
      AEvent.Caption      := 'OP '+c.q.fieldbyname(_cdordproducao).AsString+' '+nmrecurso;
    end;
    if c.q.fieldbyname(_qthoraorcada).AsFloat > 0 then
    begin
      AEvent.TaskComplete := Floor(c.q.fieldbyname(_qthoraproducao).AsFloat / c.q.fieldbyname(_qthoraorcada).AsFloat * 100);
    end;
    AEvent.Post;
    if APreEvent <> nil then
    begin
      APreEvent.TaskLinks.Add(AEvent, TcxSchedulerEventRelation(0));
    end;
  end;
  function data_util(data:TDate):TDate;
  begin
    if DayOfWeek(data) = 1 then
    begin
      data := data - 1;
    end;
    if DayOfWeek(data) = 7 then
    begin
      data := data - 1;
    end;
    result := data;
  end;
  function data_inicio_recurso(nudia:Integer; dtfinal: TDate):TDate;
  var
    i : integer;
  begin
    for i := 1 to nudia do
    begin
      dtfinal := dtfinal - 1;
      dtfinal := data_util(dtfinal);
    end;
    result := dtfinal;
  end;
begin
  Scheduler.Storage.Clear;
  Scheduler.ViewGantt.Scales.MinorUnitWidth := 15;
  Scheduler.ViewGantt.VisibleStart := edtdti.EditValue;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  c := TClasseQuery.Create(makesql);
  try
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    frmprogressbar.Show;
    while not c.q.Eof do
    begin
      frmprogressbar.gau.Progress := c.q.RecNo;
      Application.ProcessMessages;
      gerar_evento(_recurso, c.q.fieldbyname(_dtemissao).AsDateTime, c.q.fieldbyname(_dtprventrega).AsDateTime, nil);
      c.q.Next;
    end;
  finally
    freeandnil(c);
    freeandnil(frmprogressbar);
  end;
end;

procedure Tfrmmanagerordproducao.fill_ordproducao(nmdata:string);
  function makesql:string;
  var
    nm_data : string;
  begin
    nm_data := nmdata;
    result := 'SELECT O.QTHORAPRODUCAO,o.qthoraorcada,C.NMCLIENTE,O.CDORDPRODUCAO,O.DTEMISSAO,O.DTPRVENTREGA,O.DTENTREGA '+
              'FROM ORDPRODUCAO O '+
              'LEFT JOIN ITPEDIDO I ON I.CDITPEDIDO=O.CDITPEDIDO and i.cdempresa=o.cdempresa '+
              'LEFT JOIN PEDIDO P ON P.CDPEDIDO=I.CDPEDIDO and p.cdempresa=i.cdempresa '+
              'LEFT JOIN CLIENTE C ON C.CDCLIENTE=P.CDCLIENTE and c.cdempresa=p.cdempresa '+
              'where o.cdempresa='+empresa.cdempresa.tostring+' ';
    if (nmdata = _dtprventrega) or (nmdata = _dtemissao) or (nmdata = _dtentrega) then
    begin
      result := result + 'and O.'+nmdata+' BETWEEN '+GetDtBanco(edtdti.EditValue)+' and '+GetDtBanco(edtdtf.EditValue)+' '
    end
    else if nmdata = _atrasado then
    begin
      result := result + 'and (not o.cdstordproducao in (9,8,7)) and (O.dtentrega is null and o.'+_dtprventrega+'<'+GetDtBanco(DtBanco)+') '
    end
    else if nmdata = _hoje then
    begin
      result := result + 'and o.cdstordproducao<>9 and o.'+_dtprventrega+'='+GetDtBanco(DtBanco)+' '
    end
    else if nmdata = Maiuscula(__Amanha) then
    begin
      result := result + 'and o.cdstordproducao<>9 and o.'+_dtprventrega+'='+GetDtBanco(DtBanco+1)+' '
    end
    else if nmdata = Maiuscula(_Esta+' '+_Semana) then
    begin
      result := result + 'and o.cdstordproducao<>9 and o.'+_dtprventrega+' between '+GetDtBanco(Primeiro_Dia_Semana(DtBanco))+' and '+GetDtBanco(Ultima_Dia_Semana(DtBanco))+' '
    end
    else if nmdata = Maiuscula(__Proxima+' '+_semana) then
    begin
      result := result + 'and o.cdstordproducao<>9 and o.'+_dtprventrega+' between '+GetDtBanco(Primeiro_Dia_Semana(DtBanco+7))+' and '+GetDtBanco(Ultima_Dia_Semana(DtBanco+7))+' ';
    end;
    if (nmdata = _atrasado) or (nmdata = _hoje) or (nmdata = Maiuscula(__Amanha)) or (nmdata = Maiuscula(_Esta+' '+_Semana)) or (nmdata = Maiuscula(__Proxima+' '+_semana)) then
    begin
      nm_data := _dtprventrega;
    end;
    result := result + 'ORDER BY O.'+nm_data+',O.CDORDPRODUCAO';
  end;
var
  c : TClasseQuery;
  AEvent: TcxSchedulerEvent;
  procedure gerar_evento_previsto;
  begin
    AEvent              := Scheduler.Storage.createEvent;
    if nmdata = _atrasado then
    begin
      AEvent.LabelColor   := 8689404;
      AEvent.Caption      := 'OP '+c.q.fieldbyname(_cdordproducao).AsString+' - '+
                                   c.q.fieldbyname(_nmcliente).AsString+' - '+
                             'Previsto:'+inttostr(Floor(c.q.fieldbyname(_dtprventrega).AsDateTime - c.q.fieldbyname(_dtemissao).AsDateTime))+' dia(s) - '+
                             'Hora(s) '+c.q.fieldbyname(_qthoraorcada).AsString+' - '+
                             'Atraso '+inttostr(Floor(edtdtf.EditValue - c.q.fieldbyname(_dtprventrega).AsDateTime));
      AEvent.Start        := c.q.fieldbyname(_dtemissao).AsDateTime;
      AEvent.Finish       := edtdtf.EditValue;
      if c.q.fieldbyname(_qthoraorcada).AsFloat > 0 then
      begin
        AEvent.TaskComplete := Floor(c.q.fieldbyname(_qthoraproducao).AsFloat / c.q.fieldbyname(_qthoraorcada).AsFloat * 100);
      end;
    end
    else
    begin
      AEvent.Caption      := 'OP '+c.q.fieldbyname(_cdordproducao).AsString+' - '+
                                   c.q.fieldbyname(_nmcliente).AsString+' - '+
                                   inttostr(Floor(c.q.fieldbyname(_dtprventrega).AsDateTime - c.q.fieldbyname(_dtemissao).AsDateTime))+' dia(s) previsto - '+
                                   c.q.fieldbyname(_qthoraorcada).AsString+' hora(s)';
      AEvent.Start        := c.q.fieldbyname(_dtemissao).AsDateTime;
      AEvent.Finish       := c.q.fieldbyname(_dtprventrega).AsDateTime;
      AEvent.TaskComplete := Floor(c.q.fieldbyname(_qthoraproducao).AsFloat / c.q.fieldbyname(_qthoraorcada).AsFloat * 100);
    end;
    AEvent.Post;
  end;
  procedure caption_antecedencia;
  begin
    AEvent.LabelColor := 6610596;
    AEvent.Caption    := 'OP '+c.q.fieldbyname(_cdordproducao).AsString+' - '+c.q.fieldbyname(_nmcliente).AsString+' - '+
                         inttostr(Floor(c.q.fieldbyname(_dtentrega).AsDateTime - c.q.fieldbyname(_dtemissao).AsDateTime))+' dia(s) execuçao - '+
                         inttostr(Floor(c.q.fieldbyname(_dtprventrega).AsDateTime - c.q.fieldbyname(_dtentrega).AsDateTime))+' dia(s) antecedência - '+
                         c.q.fieldbyname(_qthoraproducao).AsString+' hora(s)';
  end;
  procedure caption_execucao;
  begin
    AEvent.LabelColor := 16051844;
    AEvent.Caption    := 'OP '+c.q.fieldbyname(_cdordproducao).AsString+' - '+c.q.fieldbyname(_nmcliente).AsString+' - '+
                         inttostr(Floor(c.q.fieldbyname(_dtentrega).AsDateTime - c.q.fieldbyname(_dtemissao).AsDateTime))+' dia(s) execuçao - '+
                         c.q.fieldbyname(_qthoraproducao).AsString+' hora(s)';
  end;
  procedure caption_atraso;
  begin
    AEvent.LabelColor := 8689404;
    AEvent.Caption    := 'OP '+c.q.fieldbyname(_cdordproducao).AsString+' - '+c.q.fieldbyname(_nmcliente).AsString+' - '+
                         inttostr(Floor(c.q.fieldbyname(_dtentrega).AsDateTime - c.q.fieldbyname(_dtemissao).AsDateTime))+' dia(s) execuçao - '+
                         inttostr(Floor(c.q.fieldbyname(_dtentrega).AsDateTime - c.q.fieldbyname(_dtprventrega).AsDateTime))+' dia(s) atraso - '+
                         c.q.fieldbyname(_qthoraproducao).AsString+' hora(s)';
  end;
  procedure gerar_evento_execucao;
  begin
    AEvent              := Scheduler.Storage.createEvent;
    AEvent.Start        := c.q.fieldbyname(_dtemissao).AsDateTime;
    AEvent.Finish       := c.q.fieldbyname(_dtentrega).AsDateTime;
    AEvent.TaskComplete := Floor(c.q.fieldbyname(_qthoraproducao).AsFloat / c.q.fieldbyname(_qthoraorcada).AsFloat * 100);
    if c.q.FieldByName(_dtentrega).AsDateTime < c.q.FieldByName(_dtprventrega).AsDateTime then
    begin
      caption_antecedencia
    end
    else if c.q.FieldByName(_dtentrega).AsDateTime = c.q.FieldByName(_dtprventrega).AsDateTime then
    begin
      caption_execucao
    end
    else if c.q.FieldByName(_dtentrega).AsDateTime > c.q.FieldByName(_dtprventrega).AsDateTime then
    begin
      caption_atraso;
    end;
    AEvent.Post;
  end;
begin
  Scheduler.Storage.Clear;
  Scheduler.ViewGantt.Scales.MinorUnitWidth := 15;
  c := TClasseQuery.Create(makesql);
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    frmprogressbar.Show;
    while not c.q.Eof do
    begin
      frmprogressbar.gau.Progress := c.q.RecNo;
      Application.ProcessMessages;
      gerar_evento_previsto;
      if not c.q.FieldByName(_dtentrega).IsNull then
      begin
        gerar_evento_execucao;
      end;
      c.q.Next;
    end;
  finally
    freeandnil(c);
    freeandnil(frmprogressbar);
  end;
end;

procedure Tfrmmanagerordproducao.set_planejamento(nivel1, nivel2: string);
begin
  Storage.Resources.Items.Clear;
  Storage.Resources.Items.Add;
  Storage.Resources.Items[0].Name       := ' ';
  Storage.Resources.Items[0].ResourceID := 0;
  Storage.Resources.Items[0].Visible    := True;
  Storage.Resources.Items[0].WorkStart  := StrToTime('07:00:00');
  Storage.Resources.Items[0].WorkFinish := StrToTime('17:00:00');
  Storage.Resources.Items[0].WorkDays   := [dMonday, dTuesday, dWednesday, dThursday, dFriday];
  Scheduler.Storage                     := storage;
  acViewTypeExecute(6);
  Scheduler.ViewGantt.Scales.MajorUnit  := suMonth;
  Scheduler.ViewGantt.Scales.MinorUnit  := suDay;
  Scheduler.ViewGantt.Scales.MajorUnitSeparatorWidth := 1;
  Scheduler.ViewGantt.eventdetailinfo   := True;
  Scheduler.ViewGantt.EventMaxLineCount := 5;
  if nivel1 = 'Carga Trabalho' then
  begin
    if nivel2 = Maiuscula(__emissao) then
    begin
      fill_Carga_Trabalho(_dtemissao)
    end
    else
    begin
      fill_Carga_Trabalho(_dtprventrega);
    end;
  end
  else if nivel1 = 'Ordem Produção' then
  begin
    if nivel2 = Maiuscula(__emissao) then
    begin
      fill_ordproducao(_dtemissao)
    end
    else if nivel2 = Maiuscula(_Entrega) then
    begin
      fill_ordproducao(_dtentrega)
    end
    else if nivel2 = Maiuscula(_Atrasado) then
    begin
      fill_ordproducao(_atrasado)
    end
    else if nivel2 = Maiuscula(_hoje) then
    begin
      fill_ordproducao(_hoje)
    end
    else if nivel2 = Maiuscula(__Amanha) then
    begin
      fill_ordproducao(Maiuscula(__Amanha))
    end
    else if nivel2 = Maiuscula(_Esta+' '+_Semana) then
    begin
      fill_ordproducao(Maiuscula(_Esta+' '+_Semana))
    end
    else if nivel2 = Maiuscula(__Proxima+' '+_semana) then
    begin
      fill_ordproducao(Maiuscula(__Proxima+' '+_semana))
    end
    else
    begin
      fill_ordproducao(_dtprventrega);
    end;
  end;
end;

procedure Tfrmmanagerordproducao.acViewTypeExecute(tag: integer);
var
  ADate: TDateTime;
  APrevView: TcxSchedulerCustomView;
begin
  APrevView := Scheduler.CurrentView;
  ADate     := Trunc(Scheduler.SelStart);
  case Tag of
    0: Scheduler.GoToDate(ADate, vmDay);
    1: Scheduler.GoToDate(ADate, vmWorkWeek);
    2: Scheduler.GoToDate(ADate, vmWeek);
    3: Scheduler.GoToDate(ADate, vmMonth);
    4: begin
         Scheduler.SelectedDays.Clear;
         Scheduler.SelectedDays.Add(ADate);
         Scheduler.ViewTimeGrid.Active := True;
       end;
    5: Scheduler.ViewYear.Active := True;
    6: begin
         FPrevStorage := Scheduler.Storage;
         if Scheduler.ViewGantt.VisibleStart = NullDate then
         begin
           Scheduler.SelectDays(DtBanco - 10, DtBanco - 10);
         end;
         Scheduler.ViewGantt.Active := True;
       end;
  end;
  if (Tag <> 6) and (APrevView is TcxSchedulerGanttView) then
  begin
    Scheduler.Storage := FPrevStorage;
  end;
  Scheduler.LayoutChanged;
end;

procedure Tfrmmanagerordproducao.SchedulerLayoutChanged(Sender: TObject);
begin
  Scheduler.ViewYear.Scale := 12;
end;

function Tfrmmanagerordproducao.get_cdordproducao(texto:string):integer;
var
  x : Integer;
begin
  result := 0;
  if Copy(texto, 1, 2) = 'OP' then
  begin
    x := Pos('-', texto) - 5;
    result := strtoint(Copy(texto, 4, x));
  end;
end;

procedure Tfrmmanagerordproducao.SchedulerDblClick(Sender: TObject);
begin
  if (Scheduler.SelectedEventCount = 1) and (get_cdordproducao(Scheduler.SelectedEvents[0].Caption) <> 0) then
  begin
    frmMain.Abrirformulario(_ordproducao, get_cdordproducao(Scheduler.SelectedEvents[0].Caption));
  end;
end;

procedure Tfrmmanagerordproducao.nvbActiveGroupChanged(Sender: TObject);
begin
  if nvb.ActiveGroupIndex = 2 then
  begin
    ntb.ActivePage := _APONTAMENTO
  end
  else
  begin
    qry.q.Close;
    ntb.ActivePage := _grade;
    if nvb.ActiveGroupIndex = 0 then
    begin
      grdLevel1.GridView := TbvOrcamento;
      lblgrade.Caption   := 'Orçamento';
    end
    else
    begin
      grdLevel1.GridView := Tbvordproducao;
      lblgrade.Caption   := 'Ordem Produção';
    end;
  end;
end;

procedure Tfrmmanagerordproducao.actequipamentoExecute(Sender: TObject);
begin
  if dlgSelecionarLista(lstequipamento, _equipamento) and (Sender <> nil) then
  begin
    set_apontamento(trvAPONTAMENTO.Selected.Parent.Text, trvAPONTAMENTO.Selected.Text);
  end;
end;

procedure Tfrmmanagerordproducao.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmmanagerordproducao.actfuncionarioExecute(Sender: TObject);
begin
  if dlgSelecionarLista(lstfuncionario, _funcionario) and (sender <> nil) then
  begin
    set_apontamento(trvAPONTAMENTO.Selected.Parent.Text, trvAPONTAMENTO.Selected.Text);
  end;
end;

procedure Tfrmmanagerordproducao.set_apontamento(nivel1, nivel2: string);
var
  tabela : string;
  lista : TStrings;
  i : integer;
  dti, dtf : TDate;
  procedure set_data;
  begin
    dtf := 0;
    if nivel2 = Maiuscula(_hoje)   then
    begin
      dti := DtBanco;
      acViewTypeExecute(0);
    end
    else if nivel2 = Maiuscula(_ontem)  then
    begin
      dti := DtBanco-1;
      acViewTypeExecute(0);
    end
    else if nivel2 = Maiuscula(_semana) then
    begin
      acViewTypeExecute(2);
      dti := Primeiro_Dia_Semana(DtBanco);
      dtf := Ultima_Dia_Semana(DtBanco)
    end
    else if nivel2 = Maiuscula(_Semana+' '+_passada) then
    begin
      acViewTypeExecute(2);
      dti := Primeiro_Dia_Semana(DtBanco-7);
      dtf := Ultima_Dia_Semana(DtBanco-7)
    end
    else if nivel2 = Maiuscula(__mes) then
    begin
      acViewTypeExecute(3);
      dti := StrToDate('01/'+FormatDateTime(__dtmesano_barra, DtBanco));
      dtf := Ultimo_Dia_Mes(DtBanco);
    end;
    Scheduler.GoToDate(dti);
  end;
begin
  if nivel1 = Maiuscula(_equipamento) then
  begin
    lista  := lstequipamento;
    tabela := _equipamento;
    if lstequipamento.Count = 0 then
    begin
      actequipamentoExecute(nil);
    end;
  end
  else
  begin
    lista  := lstfuncionario;
    tabela := _funcionario;
    if lstfuncionario.Count = 0 then
    begin
      actfuncionarioExecute(nil);
    end;
  end;
  DBStorage.Resources.Items.Clear;
  DBStorage.FieldNames.ResourceID := _CD+tabela;
  for i := 0 to lista.Count - 1 do
  begin
    DBStorage.Resources.Items.Add;
    DBStorage.Resources.Items[i].Name       := NomedoCodigo(tabela, lista[i]);
    DBStorage.Resources.Items[i].ResourceID := lista[i];
    DBStorage.Resources.Items[i].Visible    := True;
    DBStorage.Resources.Items[i].WorkStart  := StrToTime('07:00:00');
    DBStorage.Resources.Items[i].WorkFinish := StrToTime('17:00:00');
    DBStorage.Resources.Items[i].WorkDays := [dMonday, dTuesday, dWednesday, dThursday, dFriday];
  end;
  Storage.Resources.Items.Clear;
  Storage.Clear;
  Scheduler.Storage := dbstorage;
  set_data;
  setdados(tabela, lista, dti, dtf);
end;

procedure Tfrmmanagerordproducao.setdados(tabela:string; lista:TStrings; dti, dtf:TDate);
  function makesql:string;
    function sqlwhere:string;
    var
      i :Integer;
    begin
      result := '';
      if dtf > 0 then
      begin
        Result := 'WHERE cdempresa='+empresa.cdempresa.tostring+' and dtemissao BETWEEN '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)
      end
      else
      begin
        Result := 'WHERE cdempresa='+empresa.cdempresa.tostring+' and dtemissao='+GetDtBanco(dti);
      end;
      if lista.Count > 0 then
      begin
        result := result + ' and cd'+tabela+' in (';
        for i := 0 to lista.Count - 1 do
        begin
          if i > 0 then
          begin
            result := result + ',';
          end;
          result := result + lista[i];
        end;
        Result := result + ')';
      end;
    end;
  begin
    result := QRetornaSQL.get_select_from(_APONTAMENTO)+ ' '+sqlwhere;
  end;
begin
  qryapontamento.q.DisableControls;
  Screen.Cursor   := crHourGlass;
  try
    qryapontamento.q.close;
    qryapontamento.q.sql.text := makesql;
    qryapontamento.q.open;
  finally
    qryapontamento.q.enablecontrols;
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmmanagerordproducao.TbvordproducaoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := TbvordproducaoNUCOR;
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

procedure Tfrmmanagerordproducao.TbvOrcamentoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := TbvOrcamentoNUCOR;
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

procedure Tfrmmanagerordproducao.TbvordproducaoDSOBSERVACAOGetCellHint(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint; var AHintText: TCaption; var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
begin
  AIsHintMultiLine := True;
  AHintText        := ARecord.DisplayTexts[8];
end;

procedure Tfrmmanagerordproducao.set_trvapontamento;
var
  no1, no2 : TTreeNode;
begin
  no1 := trvapontamento.Items.AddChild(nil, Maiuscula(_carga+' '+_trabalho));
  trvapontamento.Items.AddChild(no1, Maiuscula(__emissao));
  trvapontamento.Items.AddChild(no1, Maiuscula(__previsao));
  no1 := trvapontamento.Items.AddChild(nil, Maiuscula(_ordem+' '+__producao));
  trvapontamento.Items.AddChild(no1, Maiuscula(__emissao));
  trvapontamento.Items.AddChild(no1, Maiuscula(_entrega));
  trvapontamento.Items.AddChild(no1, Maiuscula(__previsao));
  trvapontamento.Items.AddChild(no1, Maiuscula(_atrasado));
  trvapontamento.Items.AddChild(no1, Maiuscula(_hoje));
  trvapontamento.Items.AddChild(no1, Maiuscula(__amanha));
  trvapontamento.Items.AddChild(no1, Maiuscula(_esta+' '+_semana));
  trvapontamento.Items.AddChild(no1, Maiuscula(__proxima+' '+_semana));
  no1 := trvapontamento.Items.AddChild(nil, Maiuscula(_apontamento));
  no2 := trvapontamento.Items.AddChild(no1, Maiuscula(_equipamento));
  trvapontamento.Items.AddChild(no2, Maiuscula(_hoje));
  trvapontamento.Items.AddChild(no2, Maiuscula(_ontem));
  trvapontamento.Items.AddChild(no2, Maiuscula(_dia));
  trvapontamento.Items.AddChild(no2, Maiuscula(_semana));
  trvapontamento.Items.AddChild(no2, Maiuscula(_semana+' '+_passada));
  trvapontamento.Items.AddChild(no2, Maiuscula(__mes));
  no2 := trvapontamento.Items.AddChild(no1, Maiuscula(__funcionario));
  trvapontamento.Items.AddChild(no2, Maiuscula(_hoje));
  trvapontamento.Items.AddChild(no2, Maiuscula(_ontem));
  trvapontamento.Items.AddChild(no2, Maiuscula(_dia));
  trvapontamento.Items.AddChild(no2, Maiuscula(_semana));
  trvapontamento.Items.AddChild(no2, Maiuscula(_semana+' '+_passada));
  trvapontamento.Items.AddChild(no2, Maiuscula(__mes));
end;

procedure Tfrmmanagerordproducao.trvAPONTAMENTOClick(Sender: TObject);
begin
  set_trvAPONTAMENTO_Change(trvAPONTAMENTO.Selected);
end;

procedure Tfrmmanagerordproducao.set_trvAPONTAMENTO_Change(
  Node: TTreeNode);
begin
  if node.Level = 0 then
  begin
    pnl.Caption := node.Text;
  end;
  if Node.Level <> 2 then
  begin
    actequipamento.Visible    := false;
    actfuncionario.Visible    := false;
    dxBarManager1Bar2.Visible := False;
  end;
  if Node.Level = 1 then
  begin
    pnl.Caption := node.Parent.Text+'\'+node.Text;
    if node.Parent.Text = Maiuscula(_apontamento) then
    begin
      Exit;
    end;
    set_planejamento(node.Parent.Text, Node.Text);
  end;
  if node.Level = 2 then
  begin
    pnl.Caption               := node.Parent.Parent.Text+'\'+node.Parent.Text+'\'+node.Text;
    actequipamento.Visible    := node.Parent.Text = Maiuscula(_equipamento);
    actfuncionario.Visible    := Node.Parent.Text = Maiuscula(__funcionario);
    dxBarManager1Bar2.Visible := true;
    set_apontamento(node.Parent.Text, Node.Text);
  end;
end;

procedure Tfrmmanagerordproducao.SetEmpresa;
begin
  TbvOrcamentoNMREPRESENTANTE.Visible := empresa.comercial.representante.bo;
  Tbvordproducaonmfuncionario.Visible := empresa.producao.ordproducao.bofuncionario;
  TbvordproducaoNMMUNICIPIO.Visible := empresa.producao.ordproducao.bomunicipio;
  TbvordproducaoDTPRVINSTALACAO.Visible := empresa.producao.ordproducao.boprvinstalacao;
end;

procedure Tfrmmanagerordproducao.SetTpOrdProducao;
var
  boativar: Boolean;
begin
  boativar := RegistroExiste(_tpordproducao, _bopedido + '=''S''');
  TbvordproducaoCDORCAMENTO.Visible := boativar;
  TbvordproducaoNUPEDIDO.Visible := boativar;
  TbvordproducaoNUSAIDA.Visible := boativar;
  TbvordproducaoNUCOTACAO.Visible := boativar;
  TbvordproducaoNUITEM.Visible := boativar;
  TbvordproducaoNMCLIENTE.Visible := boativar;
end;

procedure Tfrmmanagerordproducao.qryAfterScroll(DataSet: TDataSet);
begin
  actgerarpedido.Visible := (nvb.ActiveGroupIndex = 0) and (qry.q.FieldByName(_bogerarinfo).AsString = _s);
  if nvb.ActiveGroupIndex = 0 then
  begin
    qrydetail.q.close;
    if qry.q.fieldbyname(_cdorcamento).asstring <> '' then
    begin
      qrydetail.q.SQL.Text := 'SELECT I.*'+
                                  ',P.NMPRODUTO'+
                                  ',P.NUCLFISCAL'+
                                  ',U.NMUNIDADE'+
                                  ',T.BOSERVICO '+
                            'FROM ITORCAMENTO I '+
                            'LEFT JOIN PRODUTO P ON P.CDPRODUTO=I.CDPRODUTO AND I.CDEMPRESA=P.CDEMPRESA '+
                            'LEFT JOIN TPPRODUTO T ON T.CDTPPRODUTO=P.CDTPPRODUTO AND T.CDEMPRESA=P.CDEMPRESA '+
                            'LEFT JOIN UNIDADE U ON U.CDUNIDADE=P.CDUNIDADE AND U.CDEMPRESA=P.CDEMPRESA '+
                            'WHERE I.CDEMPRESA=:CDEMPRESA AND I.CDORCAMENTO=:CDORCAMENTO';
      qrydetail.q.Parambyname(_cdempresa).AsLargeInt   := qry.q.FieldByName(_cdempresa).AsLargeInt;
      qrydetail.q.Parambyname(_cdorcamento).AsString := qry.q.fieldbyname(_cdorcamento).asstring;
      qrydetail.q.open;
      setrecord(qregistro.InteirodoCodigo(_orcamento, qry.q.fieldbyname(_cdorcamento).asinteger, _cdtporcamento));
    end;
  end;
end;

function Tfrmmanagerordproducao.qtd_status_treeview(texto: string): string;
begin
  result := copy(texto, pos('(', texto) + 1, Length(texto)-(pos('(', texto) + 1));
end;

procedure Tfrmmanagerordproducao.actMapaProducaoExecute(Sender: TObject);
begin
  exibir_mapa_producao_produto;
end;

end.
