unit umanagerTarefa;

interface

uses
  System.Actions, System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ActnList, ExtCtrls, Menus, StdCtrls, Dialogs,
  DBClient, Provider, SqlExpr, DB, FMTBcd,
  JvExExtCtrls, JvTrayIcon,
  ustrings, uexportarexcel, uregistro, uConstantes, udatahora,
  classeregistrainformacao, classegerar, classeretornasql, classeusuario, classeempresa,
  classeaplicacao, classequery,
  cxDateUtils, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxClasses, dxBar, dxStatusBar, ToolWin, ComCtrls, dxNavBar,
  cxGridLevel, cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLookAndFeelPainters, cxSplitter, cxContainer, cxGroupBox,
  cxLookAndFeels, dxNavBarBase, dxNavBarCollns, cxCurrencyEdit, cxInplaceContainer,
  cxVGrid, cxOI, cxCalc, cxBlobEdit, cxTextEdit, cxMemo, cxPC, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxLabel, cxBarEditItem, cxDBLookupComboBox, cxTimeEdit, cxTreeView,
  cxPCdxBarPopupMenu, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerDateNavigator,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, JvExtComponent, JvClock, cxDBEdit,
  cxSpinEdit, cxSchedulerDBStorage, cxDateNavigator, cxListView, cxCheckBox,
  cxNavigator, cxSchedulerTreeListBrowser, dxBarBuiltInMenu, cxSchedulerRecurrence,
  cxSchedulerRibbonStyleEventEditor;

type
  Tfrmmanagertarefa = class(TForm)
    cxSplitter1: TcxSplitter;
    bmg: TdxBarManager;
    act: TActionList;
    acttarefaatribuir: TAction;
    dxBarLargeButton3: TdxBarLargeButton;
    dts: TDataSource;
    dxBarManager1Bar6: TdxBar;
    actatualizartarefa: TAction;
    dxBarButton6: TdxBarButton;
    actnovotarefa: TAction;
    actabrirtarefa: TAction;
    acteditartarefa: TAction;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    actviewgrouptarefa: TAction;
    btnviewgrouptarefa: TdxBarButton;
    sdsscheduler: TSQLDataSet;
    dspscheduler: TDataSetProvider;
    cdsscheduler: TClientDataSet;
    dtsscheduler: TDataSource;
    dbs: TcxSchedulerDBStorage;
    actatualizarscheduler: TAction;
    dxBarManager1Bar8: TdxBar;
    dxBarButton15: TdxBarButton;
    cds1: TClientDataSet;
    dsp1: TDataSetProvider;
    dts1: TDataSource;
    sds1: TSQLDataSet;
    ntb: TNotebook;
    doctarefa: TdxBarDockControl;
    grd: TcxGrid;
    tbvtarefa: TcxGridDBTableView;
    tbvtarefaNMTPTAREFA1: TcxGridDBColumn;
    tbvtarefaNMTAREFA: TcxGridDBColumn;
    tbvtarefaDSOBSERVACAO: TcxGridDBColumn;
    tbvtarefaNMCLIENTE: TcxGridDBColumn;
    tbvtarefaNMITCONTCLIENTE: TcxGridDBColumn;
    tbvtarefaNMSTTAREFA: TcxGridDBColumn;
    tbvtarefaNMTPTAREFA: TcxGridDBColumn;
    tbvtarefaDTEMISSAO: TcxGridDBColumn;
    tbvtarefaHREMISSAO: TcxGridDBColumn;
    tbvtarefaDTTERMINO: TcxGridDBColumn;
    tbvtarefaFUNCIONARIO: TcxGridDBColumn;
    tbvtarefaDSTAG: TcxGridDBColumn;
    tbvtarefaNUCOR: TcxGridDBColumn;
    tbvtarefaDTEMISSAO1: TcxGridDBColumn;
    tbvtarefaHRINICIO: TcxGridDBColumn;
    tbvtarefaHRFIM: TcxGridDBColumn;
    tbvtarefaQTDURACAO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    scdCalendario: TcxScheduler;
    dxBarDockControl3: TdxBarDockControl;
    lblopcao: TcxLabel;
    tbvtarefaCDFUNCIONARIO: TcxGridDBColumn;
    dxNavBar1: TdxNavBar;
    nvbTarefa: TdxNavBarGroup;
    nvbRelatorio: TdxNavBarGroup;
    nvbGrafico: TdxNavBarGroup;
    nvbTarefaControl: TdxNavBarGroupControl;
    trv: TcxTreeView;
    actviewcalendario: TAction;
    ntbviewcalendario: TdxBarButton;
    nvbRelatorioControl: TdxNavBarGroupControl;
    trvrelatorio: TcxTreeView;
    Panel1: TPanel;
    Panel2: TPanel;
    lblemissao: TLabel;
    lblvencimento: TLabel;
    lblatevencimento: TLabel;
    lblateemissao: TLabel;
    lblprventrega: TLabel;
    lblateprventrega: TLabel;
    lblentrega: TLabel;
    lblateentrega: TLabel;
    edtdtemissaoi: TDateTimePicker;
    edtdtemissaof: TDateTimePicker;
    edtdtvencimentoi: TDateTimePicker;
    edtdtvencimentof: TDateTimePicker;
    edtdtprventregai: TDateTimePicker;
    edtdtprventregaf: TDateTimePicker;
    edtdtentregai: TDateTimePicker;
    edtdtentregaf: TDateTimePicker;
    pgc: TcxPageControl;
    tbscliente: TcxTabSheet;
    bvl4: TBevel;
    lblcdcliente: TLabel;
    lblnmcliente: TLabel;
    edtcdcliente: TEdit;
    ToolBar6: TToolBar;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton29: TToolButton;
    lsvcliente: TcxListView;
    edtnmcliente: TEdit;
    tbsfuncionario: TcxTabSheet;
    bvl1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    ToolBar4: TToolBar;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    lsvfuncionario: TcxListView;
    edtnmfuncionario: TEdit;
    edtcdfuncionario: TEdit;
    tbsitcontcliente: TcxTabSheet;
    Bevel9: TBevel;
    Label53: TLabel;
    edtnmitcontcliente: TEdit;
    ToolBar27: TToolBar;
    ToolButton73: TToolButton;
    ToolButton74: TToolButton;
    lsvnmitcontcliente: TcxListView;
    tbvtarefaCDTAREFA: TcxGridDBColumn;
    actalturaautomatica: TAction;
    btnalturaautomatica: TdxBarButton;
    actfechar: TAction;
    dxBarButton11: TdxBarButton;
    pgctarefa: TcxPageControl;
    spltarefa: TcxSplitter;
    tbvtarefaboresolvido: TcxGridDBColumn;
    tbvtarefaCDFUNCIONARIO1: TcxGridDBColumn;
    btnsemprojeto: TdxBarButton;
    actsemprojeto: TAction;
    btnfiltro: TdxBarButton;
    actfiltro: TAction;
    tbvtarefaDTPREVISTA: TcxGridDBColumn;
    tbvtarefaNMPROJETO: TcxGridDBColumn;
    nvd: TcxDateNavigator;
    tbvtarefaNMPRIORIDADE: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    actmudartarefa: TAction;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure trvChange(Sender: TObject; Node: TTreeNode);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure actatualizartarefaExecute(Sender: TObject);
    procedure actnovotarefaExecute(Sender: TObject);
    procedure actabrirtarefaExecute(Sender: TObject);
    procedure acteditartarefaExecute(Sender: TObject);
    procedure actviewgrouptarefaExecute(Sender: TObject);
    procedure tbvtarefaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvtarefaDblClick(Sender: TObject);
    procedure tbvtarefaCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actatualizarschedulerExecute(Sender: TObject);
    procedure actviewcalendarioExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure trvrelatorioChange(Sender: TObject; Node: TTreeNode);
    procedure actalturaautomaticaExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actsemprojetoExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure nvdSelectionChanged(Sender: TObject; const AStart, AFinish: TDateTime);
    procedure actmudartarefaExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private { Private declarations }
    boprojeto, botarefa, bo_set_subitem_pendente : Boolean;
    dt_na_data : TDate;
    no_selecionado, no_cliente, no_tipo, no_tipo1, No_hoje : TTreeNode;
    cdtarefa1, cdacompanhamento1 : tstrings;
    cdtipo, nmdata, tbl : string;
    qry : TClasseQuery;
    procedure set_painel_Scheduler   (sqlwhere: string; nivel2: string; boAPONTAMENTO:Boolean=false; dtinicio: TDate=0);
    procedure set_treeview;
    procedure setdadostarefa (notexto:string; sqlwhere:string='');
    procedure setdadosprojeto(sqlwhere: string);
    procedure setdadosscheduler(sqlwhere:string; boAPONTAMENTO:Boolean=false);
    procedure acViewTypeExecute(tag: integer);
    procedure set_data_scheduler(nivel2:string);
    function  ShowPainelScheduler(sqlwhere: string; nivel : string; boAPONTAMENTO:Boolean=false):boolean;
    function  get_data_no(texto:string):string;
    function  makesql_acompanhamento:string;
  public { Public declarations }
    procedure abrir(cdtarefa:integer);
  end;

var
  frmmanagertarefa: Tfrmmanagertarefa;

implementation

uses uMain,
  uDtmMain,
  utarefa,
  ufiltrartarefa,
  classeform,
  ufiltrarProjeto,
  uprojeto,
  uProgressBar,
  usetchangetarefa,
  classetarefa;

{$R *.dfm}

procedure Tfrmmanagertarefa.FormShow(Sender: TObject);
begin
  set_treeview;
  No_hoje.Selected := True;
end;

procedure Tfrmmanagertarefa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure Tfrmmanagertarefa.FormCreate(Sender: TObject);
begin
  qry := tclasseQuery.create;
  dts.dataset := qry.q;
  spltarefa.CloseSplitter;
  tbl := _manager+_tarefa;
  cdtarefa1         := TStringList.Create;
  cdacompanhamento1 := TStringList.Create;
end;

procedure Tfrmmanagertarefa.set_treeview;
var
  No, no1, no2 : TTreeNode;
  procedure set_calendario;
  begin
    no1 := trv.Items.AddChild(nil, Maiuscula(__Calendario));
    no2 := trv.Items.AddChild(no1, Maiuscula(_Apontamento));
    trv.Items.AddChild(no2, Maiuscula(_Hoje));
    trv.Items.AddChild(no2, Maiuscula(_Ontem));
    trv.Items.AddChild(no2, Maiuscula(_Semana));
    trv.Items.AddChild(no2, Maiuscula(_Semana+' '+_Passada));
    trv.Items.AddChild(no2, Maiuscula(__Mes));
    trv.Items.AddChild(no2, Maiuscula(__Mes+' '+_Passado));
    trv.Items.AddChild(no2, maiuscula(_Na+' '+_Data));
    no2 := trv.Items.AddChild(no1, Maiuscula(_planejamento));
    trv.Items.AddChild(no2, Maiuscula(_Hoje));
    trv.Items.AddChild(no2, Maiuscula(_Ontem));
    trv.Items.AddChild(no2, Maiuscula(__Amanha));
    trv.Items.AddChild(no2, Maiuscula(_Semana));
    trv.Items.AddChild(no2, Maiuscula(_Semana+' '+_Passada));
    trv.Items.AddChild(no2, Maiuscula(__Proxima+' '+_semana));
    trv.Items.AddChild(no2, Maiuscula(__Mes));
    trv.Items.AddChild(no2, Maiuscula(__Mes+' '+_Passado));
    trv.Items.AddChild(no2, Maiuscula(__proximo+' '+__Mes));
    trv.Items.AddChild(no2, maiuscula(_Na+' '+_Data));
    trv.Items[1].Expand(false);
  end;
  procedure set_projeto;
    procedure preencher_lista_treeview;
    var
      Lista : TStrings;
      i : Integer;
    begin
      lista := TStringlist.create;
      try
        preencher_lista_registro(_st+_projeto, Lista);
        for i := 0 to lista.Count - 1  do
        begin
          trv.Items.AddChild(no1, Maiuscula(Lista[i])+ '('+inttostr(get_qtd_registros_nome(_projeto, _st+_projeto, Lista[i])) +')');
        end;
      finally
        freeandnil(lista);
      end;
    end;
  begin
    no1 := trv.Items.AddChild(nil, Maiuscula(_Projeto));
    preencher_lista_treeview;
    trv.Items[1].Expand(false);
  end;
  procedure set_tarefa;
    procedure set_caixa_trabalho;
    begin
      no1     := trv.Items.AddChild(no, Maiuscula(_Caixa+' '+_Trabalho));
      No_hoje := trv.Items.AddChild(no1, Maiuscula(_Pendente));
      no_cliente := trv.Items.AddChild(No_hoje, Maiuscula(_Cliente));
      no_tipo    := trv.Items.AddChild(No_hoje, Maiuscula(_tipo));
      no_tipo1   := trv.Items.AddChild(No_hoje, Maiuscula(_tipo+' '+_1));
      trv.Items.AddChild(no1, Maiuscula(_Hoje));
      trv.Items.AddChild(no1, Maiuscula(_Ontem));
      trv.Items.AddChild(no1, Maiuscula(__Amanha));
      trv.Items.AddChild(no1, Maiuscula(_Entrada));
      trv.Items.AddChild(no1, Maiuscula(_atrasado));
      trv.Items.AddChild(no1, Maiuscula(_Semana));
      trv.Items.AddChild(no1, Maiuscula(_Semana+' '+_Passada));
      trv.Items.AddChild(no1, Maiuscula(__Proxima+' '+_semana));
      trv.Items.AddChild(no1, Maiuscula(__Mes));
      trv.Items.AddChild(no1, Maiuscula(__Mes+' '+_Passado));
      trv.Items.AddChild(no1, Maiuscula(__proximo+' '+__Mes));
      trv.Items.AddChild(no1, maiuscula(_Na+' '+_Data));
      No2 := trv.Items.AddChild(no1, maiuscula(_prioridade));
      trv.Items.AddChild(No2, maiuscula(__Critica));
      trv.Items.AddChild(No2, maiuscula(_Alta));
      trv.Items.AddChild(No2, maiuscula(__Media));
      trv.Items.AddChild(No2, Maiuscula(_Baixa));
    end;
    procedure set_caixa_encaminhamento;
    begin
      no1 := trv.Items.AddChild(no, Maiuscula(_Caixa+' '+_Encaminhamento));
      no2 := trv.Items.AddChild(no1, Maiuscula(_Pendente));
      trv.Items.AddChild(no2, Maiuscula(_Hoje));
      trv.Items.AddChild(no2, Maiuscula(_Ontem));
      trv.Items.AddChild(no2, Maiuscula(__Amanha));
      trv.Items.AddChild(no2, Maiuscula(_Entrada));
      trv.Items.AddChild(no2, Maiuscula(_atrasado));
      trv.Items.AddChild(no2, Maiuscula(_Semana));
      trv.Items.AddChild(no2, Maiuscula(_Semana+' '+_Passada));
      trv.Items.AddChild(no2, Maiuscula(__Proxima+' '+_semana));
      trv.Items.AddChild(no2, Maiuscula(__Mes));
      trv.Items.AddChild(no2, Maiuscula(__Mes+' '+_Passado));
      trv.Items.AddChild(no2, Maiuscula(__proximo+' '+__Mes));
      trv.Items.AddChild(no2, maiuscula(_Na+' '+_Data));
      no2 := trv.Items.AddChild(no1, maiuscula(_Resolvido));
      trv.Items.AddChild(no2, Maiuscula(_Hoje));
      trv.Items.AddChild(no2, Maiuscula(_Ontem));
      trv.Items.AddChild(no2, Maiuscula(_Semana));
      trv.Items.AddChild(no2, Maiuscula(_Semana+' '+_Passada));
      trv.Items.AddChild(no2, Maiuscula(__Mes));
      trv.Items.AddChild(no2, Maiuscula(__Mes+' '+_Passado));
      trv.Items.AddChild(no2, maiuscula(_Na+' '+_Data));
      no2 := trv.Items.AddChild(no1, maiuscula(_Resolvido+' '+_por+' '+_mim));
      trv.Items.AddChild(no2, Maiuscula(_Hoje));
      trv.Items.AddChild(no2, Maiuscula(_Ontem));
      trv.Items.AddChild(no2, Maiuscula(_Semana));
      trv.Items.AddChild(no2, Maiuscula(_Semana+' '+_Passada));
      trv.Items.AddChild(no2, Maiuscula(__Mes));
      trv.Items.AddChild(no2, Maiuscula(__Mes+' '+_Passado));
      trv.Items.AddChild(no2, maiuscula(_Na+' '+_Data));
    end;
    procedure set_caixa_setor;
    begin
      no1 := trv.Items.AddChild(no, maiuscula(_Caixa+' '+_Setor));
      trv.Items.AddChild(no1, Maiuscula(_Pendente));
      trv.Items.AddChild(no1, Maiuscula(_Hoje));
      trv.Items.AddChild(no1, Maiuscula(_Ontem));
      trv.Items.AddChild(no1, Maiuscula(__Amanha));
      trv.Items.AddChild(no1, Maiuscula(_Entrada));
      trv.Items.AddChild(no1, Maiuscula(_atrasado));
      trv.Items.AddChild(no1, Maiuscula(_Semana));
      trv.Items.AddChild(no1, Maiuscula(_Semana+' '+_Passada));
      trv.Items.AddChild(no1, Maiuscula(__Proxima+' '+_semana));
      trv.Items.AddChild(no1, Maiuscula(__Mes));
      trv.Items.AddChild(no1, Maiuscula(__Mes+' '+_Passado));
      trv.Items.AddChild(no1, Maiuscula(__proximo+' '+__Mes));
      trv.Items.AddChild(no1, maiuscula(_Na+' '+_Data));
    end;
    procedure set_dtemissao;
    begin
      no1 := trv.Items.AddChild(no, Maiuscula(_Data));

      no2 := trv.Items.AddChild(no1, Maiuscula(__emissao));
      trv.Items.AddChild(no2, Maiuscula(_Hoje));
      trv.Items.AddChild(no2, Maiuscula(_Ontem));
      trv.Items.AddChild(no2, Maiuscula(_Semana));
      trv.Items.AddChild(no2, Maiuscula(_Semana+' '+_Passada));
      trv.Items.AddChild(no2, Maiuscula(__Mes));
      trv.Items.AddChild(no2, Maiuscula(__Mes+' '+_Passado));
      trv.Items.AddChild(no2, maiuscula(_Na+' '+_Data));

      no2 := trv.Items.AddChild(no1, Maiuscula(__termino));
      trv.Items.AddChild(no2, Maiuscula(_Hoje));
      trv.Items.AddChild(no2, Maiuscula(_Ontem));
      trv.Items.AddChild(no2, Maiuscula(_Semana));
      trv.Items.AddChild(no2, Maiuscula(_Semana+' '+_Passada));
      trv.Items.AddChild(no2, Maiuscula(__Mes));
      trv.Items.AddChild(no2, Maiuscula(__Mes+' '+_Passado));
      trv.Items.AddChild(no2, maiuscula(_Na+' '+_Data));

      no2 := trv.Items.AddChild(no1, Maiuscula(__Previsao));
      trv.Items.AddChild(no2, Maiuscula(_Hoje));
      trv.Items.AddChild(no2, Maiuscula(_Ontem));
      trv.Items.AddChild(no2, Maiuscula(__Amanha));
      trv.Items.AddChild(no2, Maiuscula(_atrasado));
      trv.Items.AddChild(no2, Maiuscula(_Semana));
      trv.Items.AddChild(no2, Maiuscula(_Semana+' '+_Passada));
      trv.Items.AddChild(no2, Maiuscula(__Proxima+' '+_semana));
      trv.Items.AddChild(no2, Maiuscula(__Mes));
      trv.Items.AddChild(no2, Maiuscula(__Mes+' '+_Passado));
      trv.Items.AddChild(no2, maiuscula(_Na+' '+_Data));
    end;
    procedure set_caixa_acao;
    var
      No1 : TTreeNode;
    begin
      no1 := trv.Items.AddChild(no, Maiuscula(_Caixa+' '+__Acao));
      trv.Items.AddChild(no1, Maiuscula(_Hoje));
      trv.Items.AddChild(no1, Maiuscula(_Ontem));
      trv.Items.AddChild(no1, Maiuscula(_Semana));
      trv.Items.AddChild(no1, Maiuscula(_Semana+' '+_Passada));
      trv.Items.AddChild(no1, Maiuscula(__Mes));
      trv.Items.AddChild(no1, Maiuscula(__Mes+' '+_Passado));
      trv.Items.AddChild(no1, maiuscula(_Na+' '+_Data));
    end;
  begin
    no := trv.Items.AddChild(nil, maiuscula(_Tarefa));
    set_caixa_trabalho;
    set_caixa_setor;
    set_caixa_encaminhamento;
    set_caixa_acao;
    set_dtemissao;
    trv.Items[0].Expand(false);
  end;
begin
  trv.Items.Clear;
  set_tarefa;
  set_calendario;
  set_projeto;
end;

procedure Tfrmmanagertarefa.trvChange(Sender: TObject; Node: TTreeNode);
  function get_posicao_treeview:string;
  begin
    if Node.Level = 0 then
    begin
      result := node.Text
    end
    else if Node.Level = 1 then
    begin
      result := Node.Parent.Text+'\'+node.Text
    end
    else if Node.Level = 2 then
    begin
      result := Node.Parent.Parent.Text+'\'+Node.Parent.Text+'\'+node.Text
    end
    else if Node.Level = 3 then
    begin
      result := Node.Parent.Parent.Parent.Text+'\'+Node.Parent.Parent.Text+'\'+Node.Parent.Text+'\'+node.Text
    end
    else if Node.Level = 4 then
    begin
      result := Node.Parent.Parent.Parent.Parent.Text+'\'+Node.Parent.Parent.Parent.Text+'\'+Node.Parent.Parent.Text+'\'+Node.Parent.Text+'\'+node.Text;
    end;
    botarefa  := Copy(Result, 1, 6) = Maiuscula(_Tarefa);
    boprojeto := Copy(Result, 1, 7) = Maiuscula(_Projeto);
    if botarefa  then
    begin
      tbvtarefaNMTAREFA.Caption := Maiuscula(_Tarefa);
    end;
    if boprojeto then
    begin
      tbvtarefaNMTAREFA.Caption := Maiuscula(_Projeto);
    end;
  end;
  procedure set_level_1;
  begin
    if node.Parent.Text = Maiuscula(_projeto) then
    begin
      setdadosprojeto('WHERE t.cdstprojeto='+qregistro.CodigodoNome(_st+_projeto, Copy(Node.Text, 1, pos('(', Node.Text)-1))+' ');
    end;
  end;
  procedure set_level_2;
    function get_dtprevista:string;
    begin
      result := get_data_no(Node.Text);
      if result <> '' then
      begin
        result := _dtprevista+result;
      end;
    end;
  begin
    if Node.Parent.Text = maiuscula(_caixa+' '+_trabalho) then
    begin
      cdtipo := maiuscula(_caixa+' '+_trabalho);
      nmdata := _dtprevista;
      nvd.visible := Node.Text = maiuscula(_Na+' '+_Data);
      if Node.Text = maiuscula(_Na+' '+_Data) then
      begin
        Exit;
      end;
      setdadostarefa(Node.Text, get_dtprevista);
    end
    else if Node.Parent.Text = maiuscula(_Caixa+' '+_Setor) then
    begin
      cdtipo := _setor;
      nmdata := _dtprevista;
      nvd.visible := Node.Text = maiuscula(_Na+' '+_Data);
      if Node.Text = maiuscula(_Na+' '+_Data) then
      begin
        Exit;
      end;
      setdadostarefa(Node.Text);
    end
    else if Node.Parent.Text = maiuscula(_Caixa+' '+__Acao)    then
    begin
      cdtipo := _acao;
      nmdata := _dtemissao;
      nvd.visible := Node.Text = maiuscula(_Na+' '+_Data);
      if Node.Text = maiuscula(_Na+' '+_Data) then
      begin
        Exit;
      end;
      setdadostarefa(Node.Text, nmdata+get_data_no(Node.Text));
    end
    else if Node.Parent.Text = maiuscula(_Apontamento)  then
    begin
      set_painel_scheduler(_dtemissao+get_data_no(Node.Text), node.Text)
    end
    else if Node.Parent.Text = maiuscula(_planejamento) then
    begin
      set_painel_scheduler(_dtprevista+get_data_no(node.Text), node.Text, True, 0);
    end;
  end;
  procedure set_level_3;
  begin
    if node.Parent.Parent.Text = maiuscula(_Caixa+' '+_Encaminhamento) then
    begin
      cdtipo := _acompanhamento;
      nvd.visible := Node.Text = maiuscula(_Na+' '+_Data);
      if Node.Text = maiuscula(_Na+' '+_Data) then
      begin
        Exit;
      end;
      setdadostarefa(Node.Text, makesql_acompanhamento+nmdata+get_data_no(Node.Text));
    end
    else if node.Parent.Parent.Text = maiuscula(_caixa+' '+_trabalho) then
    begin
      if Node.Parent.Text = maiuscula(_Prioridade) then
      begin
        cdtipo := _prioridade;
        setdadostarefa(Node.Text);
      end;
    end
    else
    begin
      cdtipo := _data;
      nmdata := '';
      if Node.Parent.Text = Maiuscula(__emissao)  then
      begin
        nmdata := _dtemissao
      end
      else if Node.Parent.Text = Maiuscula(__termino)  then
      begin
        nmdata := _dttermino
      end
      else if Node.Parent.Text = Maiuscula(__Previsao) then
      begin
        nmdata := _dtprevista;
      end;
      nvd.visible := Node.Text = maiuscula(_Na+' '+_Data);
      if Node.Text = maiuscula(_Na+' '+_Data) then
      begin
        Exit;
      end;
      setdadostarefa(Node.Text, ' where t.'+nmdata+get_data_no(Node.Text));
    end;
  end;
  procedure set_level_4;
    function se_no_vazio:Boolean;
    begin
      result := Trim(Copy(node.Text, 1, Pos('(', node.Text)-1)) = '';
    end;
    function get_nome:string;
    begin
      if LowerCase(Node.Parent.Text) = _cliente then
      begin
        result := _NMCLIENTE
      end
      else if LowerCase(Node.Parent.Text) = _tipo then
      begin
        Result := _NM+_tptarefa
      end
      else if LowerCase(Node.Parent.Text) = _tipo+' '+_1 then
      begin
        Result := _NM+_tptarefa+_1;
      end;
    end;
  begin
    if (LowerCase(Node.Parent.Text) = _cliente) or (LowerCase(Node.Parent.Text) = _tipo) or (LowerCase(Node.Parent.Text) = _tipo+' '+_1) then
    begin
      qry.q.Filtered := False;
      if se_no_vazio then
      begin
        qry.q.Filter := get_nome+' is null'
      end
      else
      begin
        qry.q.Filter := get_nome+'='+quotedstr(Trim(Copy(node.Text, 1, Pos('(', node.Text)-1)));
      end;
      qry.q.Filtered := True;
    end
  end;
begin
  no_selecionado := node;
  nvd.visible := false;
  qry.q.Filtered := False;
  lblopcao.Caption := get_posicao_treeview;
  case node.Level of
    1 : set_level_1;
    2 : set_level_2;
    3 : set_level_3;
    4 : set_level_4;
  end;
end;

procedure TfrmmanagerTarefa.set_painel_Scheduler(sqlwhere: string; nivel2: string; boAPONTAMENTO:Boolean=false; dtinicio: TDate=0);
begin
  ntb.ActivePage := maiuscula(__Calendario);
  ShowPainelScheduler(sqlwhere, nivel2, boAPONTAMENTO);
end;

procedure Tfrmmanagertarefa.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmmanagertarefa.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmmanagertarefa.actatualizartarefaExecute(Sender: TObject);
begin
  qry.q.Refresh;
end;

procedure Tfrmmanagertarefa.actnovotarefaExecute(Sender: TObject);
var
  cdprojeto, cdtarefa : integer;
begin
  if botarefa then
  begin
    if RetornaSQLString('select min(cdtptarefa) from tptarefa WHERE CDEMPRESA='+empresa.cdempresa.tostring) = '' then
    begin
      MessageDlg('Não há tipo de tarefa definido.', mtInformation, [mbOK], 0);
      Abort;
    end;
    cdtarefa    := qgerar.gerarcodigo(_tarefa);
    spltarefa.OpenSplitter;
    ShowTarefa(cdtarefa, pgctarefa, self);
  end
  else if boprojeto then
  begin
    cdprojeto := qgerar.gerarcodigo(_projeto);
    spltarefa.OpenSplitter;
    ShowProjeto(cdprojeto, pgctarefa);
  end;
end;

procedure Tfrmmanagertarefa.actsemprojetoExecute(Sender: TObject);
begin
  trvChange(trv, trv.Selected);
end;

procedure Tfrmmanagertarefa.abrir(cdtarefa: integer);
begin
  spltarefa.OpenSplitter;
  ShowTarefa(cdtarefa, pgctarefa, self);// then
end;

procedure Tfrmmanagertarefa.actabrirtarefaExecute(Sender: TObject);
var
  sql : string;
begin
  if botarefa then
  begin
    sql := FiltrarTarefa;
    if sql <> ' ' then
    begin
      cdtipo := _filtro;
      setdadostarefa('', sql);
    end;
  end
  else if boprojeto then
  begin
    sql := FiltrarProjeto;
    if sql <> ' ' then
    begin
      setdadosprojeto(sql);
    end;
  end;
end;

procedure Tfrmmanagertarefa.acteditartarefaExecute(Sender: TObject);
var
  cdtarefa : integer;
begin
  if qry.q.RecordCount = 0 then
  begin
    Exit;
  end;
  cdtarefa    := qry.q.fieldbyname(_cdtarefa).asinteger;
  spltarefa.OpenSplitter;
  if botarefa then
  begin
    ShowTarefa (cdtarefa, pgctarefa, self)
  end
  else
  begin
    ShowProjeto(cdtarefa, pgctarefa);
  end;
end;

procedure Tfrmmanagertarefa.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmmanagertarefa.actviewgrouptarefaExecute(Sender: TObject);
begin
  tbvtarefa.OptionsView.GroupByBox := btnviewgrouptarefa.down;
end;

procedure Tfrmmanagertarefa.tbvtarefaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
  if key = 13 then
  begin
    tbvtarefaDblClick(Sender);
  end;
end;

function Tfrmmanagertarefa.makesql_acompanhamento:string;
begin
  if no_selecionado.Parent.Text = Maiuscula(_Pendente) then
  begin
    nmdata := _dtprevista;
    result := 'WHERE ta.CDFUNCIONARIOORIGEM='+inttostr(usuario.funcionario.cdfuncionario)+' AND ta.boresolvido=''N'' and ta.';
  end
  else if no_selecionado.Parent.Text = maiuscula(_Resolvido) then
  begin
    nmdata := _dttermino;
    result := 'WHERE ta.CDFUNCIONARIOORIGEM='+inttostr(usuario.funcionario.cdfuncionario)+' AND ta.boresolvido=''S'' and ta.';
  end
  else if no_selecionado.Parent.Text = maiuscula(_Resolvido+' '+_por+' '+_mim) then
  begin
    nmdata := _dttermino;
    result := 'WHERE ta.CDFUNCIONARIO='+inttostr(usuario.funcionario.cdfuncionario)+' AND ta.boresolvido=''S'' and ta.';
  end;
end;

procedure Tfrmmanagertarefa.nvdSelectionChanged(Sender: TObject; const AStart, AFinish: TDateTime);
var
  sql_texto : string;
begin
  if not nvd.Visible  then
  begin
    exit;
  end;
  sql_texto := '';
  if cdtipo = _data then
  begin
    sql_texto := 'where t.'
  end
  else if cdtipo = _acompanhamento then
  begin
    sql_texto := makesql_acompanhamento;
  end;
  sql_texto := sql_texto + nmdata+' between '+GetDtBanco(AStart)+' and '+getdtbanco(AFinish);
  setdadostarefa(no_selecionado.Text, sql_texto);
end;

procedure Tfrmmanagertarefa.tbvtarefaDblClick(Sender: TObject);
begin
  acteditartarefaExecute(acteditartarefa);
end;

procedure Tfrmmanagertarefa.tbvtarefaCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column, Column1, Column2, column3 : TcxGridDBColumn;
  vl, vl1, vl2, vl3 :string;
begin
  Column  := tbvtarefaNMSTTAREFA;;
  vl      := AViewInfo.GridRecord.DisplayTexts[Column.Index];
  Column1 := tbvtarefaCDFUNCIONARIO;
  vl1     := upperCase(AViewInfo.GridRecord.DisplayTexts[Column1.Index]);
  Column2 := tbvtarefaCDFUNCIONARIO1;
  vl2     := upperCase(AViewInfo.GridRecord.DisplayTexts[Column2.Index]);
  Column3 := tbvtarefaboresolvido;
  vl3     := upperCase(AViewInfo.GridRecord.DisplayTexts[Column3.Index]);

  if vl = Uppercase(_Pendente) then
  begin
    if vl1 = inttostr(usuario.funcionario.cdfuncionario) then
    begin
      if (vl2 = '') and (vl3 = '') then
      begin
        ACanvas.Font.Color := clred;//8421440;//clFuchsia;                         // minha tarefa, n resolvida e sem encaminhamento
        ACanvas.Font.Style := [fsBold];
      end
      else if vl3 = _s then
      begin
        ACanvas.Font.Color := clGreen;//8421440;//clFuchsia;                         // minha tarefa, n resolvida e sem encaminhamento
        ACanvas.Font.Style := [fsBold];
      end
      else if (vl2 = inttostr(usuario.funcionario.cdfuncionario)) and (vl3 = _n) then
      begin
        ACanvas.Font.Color := 185;//8421440;//clFuchsia;                         // minha tarefa, n resolvida e sem encaminhamento
        ACanvas.Font.Style := [fsBold];
      end;
    end
    else
    begin
      if (vl1 <> vl2) and (vl3 = _n) then                    // encaminhado para mim e n resolvido
      begin
        ACanvas.Font.Color := clblue;
        ACanvas.Font.Style := [fsBold];
      end
    end;
  end
  else if vl1 = inttostr(usuario.funcionario.cdfuncionario) then
  begin
    ACanvas.Font.Color := clBlack; //32768;//clOlive;                             // minha tarefa e resolvida e sem encaminhamento
    ACanvas.Font.Style := [fsBold];
  end
  else if (vl1 <> vl2) and (vl3 = _n) then                    // encaminhado para mim e n resolvido
  begin
    ACanvas.Font.Color := 16744448;
    ACanvas.Font.Style := [fsBold];
  end;
end;

procedure Tfrmmanagertarefa.setdadostarefa(notexto:string; sqlwhere:string='');
  function get_semprojeto:string;
  begin
    if btnsemprojeto.Down then
    begin
      Result := ' and t.cdprojeto is null';
    end;
  end;
  function get_cdprioridade:string;
  begin
    if notexto = maiuscula(__Critica) then
    begin
      result := _4
    end
    else if notexto = maiuscula(_Alta) then
    begin
      result := _3
    end
    else if notexto = maiuscula(__Media) then
    begin
      result := _2
    end
    else if notexto = Maiuscula(_Baixa) then
    begin
      result := _1;
    end;
  end;
  function get_contador:string;
  begin
    Exit;
    result := ',(select count(*) from tarefaacompanhamento t2 where t2.boresolvido=''N'' and t2.cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+' and t2.cdempresa=t.cdempresa and t2.cdtarefa=t.cdtarefa) qt0'+
              ',(select count(*) from tarefaacompanhamento t2 where t2.boresolvido=''N'' and t2.cdfuncionarioorigem='+inttostr(usuario.funcionario.cdfuncionario)+' and t2.cdempresa=t.cdempresa and t2.cdtarefa=t.cdtarefa) qt1'+
              ',(select count(*) from tarefaacompanhamento t2 where t2.boresolvido=''N'' and t2.cdempresa=t.cdempresa and t2.cdtarefa=t.cdtarefa) qt2';
  end;
  function get_campos:string;
  begin
    tbvtarefaNMPROJETO.visible := true;
    result := 'T.CDTAREFA'+
             ',T.NMTAREFA'+
             ',C.NMCLIENTE'+
             ',S.NMSTTAREFA'+
             ',P.NMTPTAREFA'+
             ',F.NMFUNCIONARIO'+
             ',f.cdfuncionario'+
             ',T1.NMTPTAREFA1'+
             ',T.dtTERMINO'+
             ',t.dtprevista'+
             ',PR.NMPROJETO'+
             ',PI.NMPRIORIDADE'+
             ',T.HREMISSAO'+
             ',T.DSTAG'+
             ',I.NMITCONTCLIENTE'+
             ',s.nucor'+
             ',T.DTEMISSAO';
    if cdtipo = _acao then
    begin
      result := result + ',a.dsobservacao'+
                         ',a.dtemissao'+
                         ',a.hrinicio,a.hrfim,a.qtduracao'+
                         ',(select first 1 ta.boresolvido from tarefaacompanhamento ta where ta.cdtarefa=t.cdtarefa and ta.cdempresa=t.cdempresa '+
                         'and ta.cdtarefaacompanhamento=(select first 1 ta2.cdtarefaacompanhamento from tarefaacompanhamento ta2 where ta2.cdempresa=t.cdempresa and ta2.cdtarefa=t.cdtarefa order by ta2.cdtarefaacompanhamento desc)) boresolvido' +
                         ',(select first 1 ta.cdfuncionario from tarefaacompanhamento ta where ta.cdtarefa=t.cdtarefa and ta.cdempresa=t.cdempresa '+
                         'and ta.cdtarefaacompanhamento=(select first 1 ta2.cdtarefaacompanhamento from tarefaacompanhamento ta2 where ta2.cdempresa=t.cdempresa and ta2.cdtarefa=t.cdtarefa order by ta2.cdtarefaacompanhamento desc)) cdfuncionario1';
    end
    else if cdtipo <> _filtro then
    begin
      result := result + ',ta.boresolvido'+
                         ',ta.cdfuncionario';
    end;
  end;
  function get_tabela:string;
  begin
    result := 'FROM TAREFA T '+
              'LEFT JOIN STTAREFA S ON S.CDSTTAREFA=T.CDSTTAREFA and t.cdempresa=s.cdempresa '+
              'LEFT JOIN PROJETO PR ON PR.CDEMPRESA=T.CDEMPRESA AND PR.CDPROJETO=T.CDPROJETO '+
              'LEFT JOIN PRIORIDADE PI ON PI.CDEMPRESA=T.CDEMPRESA AND PI.CDPRIORIDADE=T.CDPRIORIDADE '+
              'LEFT JOIN TPTAREFA P ON P.CDTPTAREFA=T.CDTPTAREFA and t.cdempresa=p.cdempresa '+
              'LEFT JOIN FUNCIONARIO F ON F.CDFUNCIONARIO=T.CDFUNCIONARIO and t.cdempresa=f.cdempresa '+
              'LEFT JOIN TPTAREFA1 T1 ON T1.CDTPTAREFA1=T.CDTPTAREFA1 and t.cdempresa=t1.cdempresa '+
              'LEFT JOIN CLIENTE C ON C.CDCLIENTE=T.CDCLIENTE and t.cdempresa=c.cdempresa '+
              'LEFT JOIN ITCONTCLIENTE I ON I.CDITCONTCLIENTE=T.CDITCONTCLIENTE and t.cdempresa=i.cdempresa ';
  end;
  function makesql:string;
    function get_na_data(tbl:string):string;
    begin
      result := sqlwhere;
      if result <> '' then
      begin
        result := 'AND '+tbl+'.'+sqlwhere;
      end;
    end;
    function makesql_caixa_trabalho:string;
    begin
      result := 'SELECT '+get_campos+get_contador+' '+get_tabela+
                'left join tarefaacompanhamento ta on ta.cdtarefa=t.cdtarefa and t.cdempresa=ta.cdempresa ' +
                'and ta.cdtarefaacompanhamento=(select first 1 ta2.cdtarefaacompanhamento from tarefaacompanhamento ta2 where ta2.cdempresa=t.cdempresa and ta2.cdtarefa=t.cdtarefa order by ta2.cdtarefaacompanhamento desc) ' +
                'WHERE T.CDFUNCIONARIO='+inttostr(usuario.funcionario.cdfuncionario)+' '+
                'and (NOT ((s.bonovo=''N'') '+
                'AND (s.boalterar=''N'') '+
                'and (s.boexcluir=''N'') '+
                'AND (s.bogerarinfo=''N''))) '+get_semprojeto+' '+get_na_data(_t)+' '+
                'and ((ta.cdtarefaacompanhamento is null) or (ta.boresolvido = ''S'')) ';
      if notexto = Maiuscula(_Entrada) then
      begin
        result := result + 'and (select count(*) from tarefaacompanhamento where tarefaacompanhamento.boresolvido=''N'' AND tarefaacompanhamento.cdempresa=t.cdempresa and tarefaacompanhamento.cdtarefa=t.cdtarefa) = 0  ';
      end;
      result := result +
                ' union ' +
                'SELECT '+get_campos+get_contador+' '+get_tabela +
                'inner join tarefaacompanhamento ta on ta.cdtarefa=t.cdtarefa and ta.boresolvido=''N'' and t.cdempresa=ta.cdempresa '+
                'WHERE ta.CDFUNCIONARIO='+inttostr(usuario.funcionario.cdfuncionario)+' AND tA.BORESOLVIDO=''N'' '+get_semprojeto+' '+get_na_data(_t+_a)+' '+
                'order by 1 desc';
    end;
    function makesql_prioridade:string;
    begin
      result := 'SELECT '+get_campos+get_contador+' '+get_tabela+
                'left join tarefaacompanhamento ta on ta.cdtarefa=t.cdtarefa and t.cdempresa=ta.cdempresa '+
                'and ta.cdtarefaacompanhamento=(select first 1 ta2.cdtarefaacompanhamento from tarefaacompanhamento ta2 where ta2.cdempresa=t.cdempresa and ta2.cdtarefa=t.cdtarefa order by ta2.cdtarefaacompanhamento desc) ' +
                'WHERE T.CDFUNCIONARIO='+inttostr(usuario.funcionario.cdfuncionario)+' and (NOT ((s.bonovo=''N'') AND (s.boalterar=''N'') and (s.boexcluir=''N'') AND (s.bogerarinfo=''N''))) AND t.cdprioridade='+get_cdprioridade+' '+
                'and ((ta.cdtarefaacompanhamento is null) or (ta.boresolvido = ''S'')) '+get_semprojeto+' ';
      if notexto = Maiuscula(_Entrada) then
      begin
        result := result + 'and (select count(*) from tarefaacompanhamento where tarefaacompanhamento.boresolvido=''N'' AND tarefaacompanhamento.cdempresa=t.cdempresa and tarefaacompanhamento.cdtarefa=t.cdtarefa) = 0  ';
      end;
      result := result +
                ' union ' +
                'SELECT '+get_campos+get_contador+' '+get_tabela +
                'inner join tarefaacompanhamento ta on ta.cdtarefa=t.cdtarefa and ta.boresolvido=''N'' and t.cdempresa=ta.cdempresa '+
                'WHERE ta.CDFUNCIONARIO='+inttostr(usuario.funcionario.cdfuncionario)+' AND tA.BORESOLVIDO=''N'' AND t.cdprioridade='+get_cdprioridade+' '+get_semprojeto+' '+
                'order by 1 desc';
    end;
    function makesql_setor:string;
    begin
      result := 'SELECT '+get_campos+get_contador+' '+get_tabela+
                'left join tarefaacompanhamento ta on ta.cdtarefa=t.cdtarefa and t.cdempresa=ta.cdempresa ' +
                'and ta.cdtarefaacompanhamento=(select first 1 ta2.cdtarefaacompanhamento from tarefaacompanhamento ta2 where ta2.cdempresa=t.cdempresa and ta2.cdtarefa=t.cdtarefa order by ta2.cdtarefaacompanhamento desc) ' +
                'WHERE f.CDsetor='+inttostr(usuario.funcionario.cdsetor)+' '+
                'and (NOT ((s.bonovo=''N'') '+
                'AND (s.boalterar=''N'') '+
                'and (s.boexcluir=''N'') '+
                'AND (s.bogerarinfo=''N''))) '+get_na_data(_t)+
                'and ((ta.cdtarefaacompanhamento is null) or (ta.boresolvido = ''S'')) '+get_semprojeto+' ';
      if notexto = Maiuscula(_Entrada) then
      begin
        result := result + 'and (select count(*) from tarefaacompanhamento where tarefaacompanhamento.boresolvido=''N'' AND tarefaacompanhamento.cdempresa=t.cdempresa and tarefaacompanhamento.cdtarefa=t.cdtarefa) = 0  ';
      end;
      result := result +
                ' union ' +
                'SELECT '+get_campos+get_contador+' '+get_tabela+
                'inner join tarefaacompanhamento ta on ta.cdtarefa=t.cdtarefa and ta.boresolvido=''N'' and t.cdempresa=ta.cdempresa '+
                'inner join funcionario fa on fa.cdfuncionario=ta.cdfuncionario and fa.cdempresa=ta.cdempresa '+
                'WHERE fa.CDsetor='+inttostr(usuario.funcionario.cdsetor)+' '+get_na_data(_t+_a)+' '+get_semprojeto+' '+
                'order by 1 desc';
    end;
    function makesql_data:string;
    begin
      result := 'SELECT '+get_campos+get_contador+' '+get_tabela+
                'left join tarefaacompanhamento ta on ta.cdtarefa=t.cdtarefa and t.cdempresa=ta.cdempresa '+
                'and ta.cdtarefaacompanhamento=(select first 1 ta2.cdtarefaacompanhamento from tarefaacompanhamento ta2 where ta2.cdempresa=t.cdempresa and ta2.cdtarefa=t.cdtarefa order by ta2.cdtarefaacompanhamento desc) ' +
                sqlwhere+' '+get_semProjeto+' order by t.cdtarefa desc';
    end;
    function makesql_acao:string;
    begin
      result := 'SELECT '+get_campos+get_contador+' '+get_tabela+
                'left join acao a on a.cdtarefa=t.cdtarefa and a.cdempresa=t.cdempresa '+
                'WHERE a.CDFUNCIONARIO='+inttostr(usuario.funcionario.cdfuncionario)+' AND a.'+sqlwhere+' '+get_semprojeto+' '+
                'order by a.dtemissao,a.hrinicio desc,t.cdtarefa desc';
    end;
    function makesql_acompanhamento:string;
    begin
      result := 'SELECT '+get_campos+get_contador+' '+get_tabela+
                'inner join tarefaacompanhamento ta on ta.cdtarefa=t.cdtarefa and t.cdempresa=ta.cdempresa '+
                sqlwhere+' '+get_semprojeto+' '+
                'order by t.cdtarefa desc';
    end;
    function makesql_filtro:string;
    begin
      result := 'SELECT '+get_campos+' '+get_tabela+
                'left join acao a on a.cdtarefa=t.cdtarefa and a.cdempresa=t.cdempresa '+
                'left join tarefaacompanhamento ta on ta.cdtarefa=t.cdtarefa and t.cdempresa=ta.cdempresa '+
                sqlwhere+' '+get_semprojeto+' '+
                'group by '+get_campos+
                ' order by t.cdtarefa desc';
    end;
  begin
    if cdtipo = _data then
    begin
      result := makesql_data
    end
    else if cdtipo = maiuscula(_caixa+' '+_trabalho) then
    begin
      result := makesql_caixa_trabalho
    end
    else if cdtipo = _prioridade then
    begin
      result := makesql_prioridade
    end
    else if cdtipo = _setor then
    begin
      result := makesql_setor
    end
    else if cdtipo = _acao then
    begin
      result := makesql_acao
    end
    else if cdtipo = _acompanhamento then
    begin
      result := makesql_acompanhamento
    end
    else if cdtipo = _filtro then
    begin
      result := makesql_filtro;
    end;
  end;
  procedure set_acao;
  begin
    tbvtarefaDSOBSERVACAO.Visible := cdtipo = _acao;
    tbvtarefaHRINICIO.Visible     := cdtipo = _acao;
    tbvtarefaHRFIM.Visible        := cdtipo = _acao;
    tbvtarefaQTDURACAO.Visible    := cdtipo = _acao;
    tbvtarefaDTEMISSAO1.Visible   := cdtipo = _acao;

    tbvtarefaDSOBSERVACAO.DataBinding.FieldName := '';
    tbvtarefaHRINICIO.DataBinding.FieldName     := '';
    tbvtarefaHRFIM.DataBinding.FieldName        := '';
    tbvtarefaQTDURACAO.DataBinding.FieldName    := '';
    tbvtarefaDTEMISSAO1.DataBinding.FieldName   := '';
    if cdtipo = _acao then
    begin
      tbvtarefaDSOBSERVACAO.DataBinding.FieldName := _dsobservacao;
      tbvtarefaHRINICIO.DataBinding.FieldName     := _HRinicio;
      tbvtarefaHRFIM.DataBinding.FieldName        := _hrfim;
      tbvtarefaQTDURACAO.DataBinding.FieldName    := _QT+_duracao;
      tbvtarefaDTEMISSAO1.DataBinding.FieldName   := _dtemissao;
    end;
  end;
  procedure set_subitem_pendente;
    procedure set_subitem(no_field: TTreeNode; nmfield:string);
    var
      qt, nm : Tstrings;
      x, i : Integer;
      aux : string;
    begin
      nm := tstringlist.Create;
      qt := tstringlist.Create;
      try
        no_field.DeleteChildren;
        qry.q.DisableControls;
        qry.q.First;
        while not qry.q.Eof do
        begin
          if nm.IndexOf(qry.q.fieldbyname(nmfield).AsString) = -1 then
          begin
            nm.Add(qry.q.fieldbyname(nmfield).AsString);
            qt.Add(_0+_1);
          end
          else
          begin
            qt[nm.IndexOf(qry.q.fieldbyname(nmfield).AsString)] := FormatarTextoEsquerda(IntToStr(StrToInt(qt[nm.IndexOf(qry.q.fieldbyname(nmfield).AsString)])+1), 2, _0);
          end;
          qry.q.Next;
        end;
        for i := 0 to nm.count - 1 do
        begin
          for x := 0 to nm.Count - 1 do
          begin
            if nm[i] < nm[x] then
            begin
              aux   := nm[i];
              nm[i] := nm[x];
              nm[x] := aux;

              aux   := qt[i];
              qt[i] := qt[x];
              qt[x] := aux;
            end;
          end;
        end;
        for i := 0 to nm.count - 1 do
        begin
          trv.Items.AddChild(no_field, nm[i]+' ('+qt[i]+')');
        end;
        qry.q.First;
      finally
        qry.q.EnableControls;
        nm.Free;
        qt.Free;
      end;
    end;
  begin
    set_subitem(no_cliente, _nmcliente);
    set_subitem(no_tipo   , _nm+_tptarefa);
    set_subitem(no_tipo1  , _nm+_tptarefa+_1);
  end;
begin
  if usuario.funcionario.cdfuncionario = 0 then
  begin
    MessageDlg('Usuário não está configurado como funcionário.'#13'Visualização dos dados não é possível.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if usuario.funcionario.cdsetor = 0 then
  begin
    MessageDlg(_msg_Usuario_nao_possui_setor_definido_no_cadastro_do_funcionario, mtInformation, [mbOK], 0);
    Abort;
  end;
  set_acao;
  ntb.ActivePage := maiuscula(_Tarefa);
  Screen.Cursor  := crHourGlass;
  try
    qry.q.Close;
    qry.q.SQL.Text := makesql;
    qry.q.Open;
    if (cdtipo = maiuscula(_caixa+' '+_trabalho)) and (NoTexto = Maiuscula(_Pendente)) then
    begin
      set_subitem_pendente;
      bo_set_subitem_pendente := False;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmmanagertarefa.setdadosprojeto(sqlwhere:string);
  function makesql:string;
  begin
    tbvtarefaNMPROJETO.visible := false;
    result := 'SELECT T.CDPROJETO CDTAREFA'+
                    ',T.NMPROJETO NMTAREFA'+
                    ',PI.NMPRIORIDADE'+
                    ',C.NMCLIENTE'+
                    ',S.NMSTPROJETO NMSTTAREFA'+
                    ',P.NMTPPROJETO NMTPTAREFA'+
                    ',F.NMFUNCIONARIO'+
                    ',f.cdfuncionario'+
                    ',T1.NMTPPROJETO1 NMTPTAREFA1'+
                    ',T.dtTERMINO'+
                    ',t.dtprevista'+
                    ',T.HREMISSAO'+
                    ',T.DSTAG'+
                    ',I.NMITCONTCLIENTE'+
                    ',s.nucor'+
                    ',T.DTEMISSAO '+
              'FROM projeto T '+
              'LEFT JOIN STprojeto S ON S.CDSTprojeto=T.CDSTprojeto and t.cdempresa=s.cdempresa '+
              'LEFT JOIN PRIORIDADE PI ON PI.CDEMPRESA=T.CDEMPRESA AND PI.CDPRIORIDADE=T.CDPRIORIDADE '+
              'LEFT JOIN TPprojeto P ON P.CDTPprojeto=T.CDTPprojeto and t.cdempresa=p.cdempresa '+
              'LEFT JOIN FUNCIONARIO F ON F.CDFUNCIONARIO=T.CDFUNCIONARIO and t.cdempresa=f.cdempresa '+
              'LEFT JOIN TPprojeto1 T1 ON T1.CDTPprojeto1=T.CDTPprojeto1 and t.cdempresa=t1.cdempresa '+
              'LEFT JOIN CLIENTE C ON C.CDCLIENTE=T.CDCLIENTE and t.cdempresa=c.cdempresa '+
              'LEFT JOIN ITCONTCLIENTE I ON I.CDITCONTCLIENTE=T.CDITCONTCLIENTE and t.cdempresa=i.cdempresa '+
              sqlwhere+
              'order by T.CDPROJETO desc';
  end;
  procedure set_acao;
  begin
    tbvtarefaDSOBSERVACAO.Visible := False;
    tbvtarefaHRINICIO.Visible     := False;
    tbvtarefaHRFIM.Visible        := False;
    tbvtarefaQTDURACAO.Visible    := False;
    tbvtarefaDTEMISSAO1.Visible   := False;

    tbvtarefaDSOBSERVACAO.DataBinding.FieldName := '';
    tbvtarefaHRINICIO.DataBinding.FieldName     := '';
    tbvtarefaHRFIM.DataBinding.FieldName        := '';
    tbvtarefaQTDURACAO.DataBinding.FieldName    := '';
    tbvtarefaDTEMISSAO1.DataBinding.FieldName   := '';
  end;
begin
  if usuario.funcionario.cdfuncionario = 0 then
  begin
    MessageDlg('Usuário não está configurado como funcionário.'#13'Visualização dos dados não é possível.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if usuario.funcionario.cdsetor = 0 then
  begin
    MessageDlg(_msg_Usuario_nao_possui_setor_definido_no_cadastro_do_funcionario, mtInformation, [mbOK], 0);
    Abort;
  end;
  set_acao;
  ntb.ActivePage := maiuscula(_Tarefa);
  Screen.Cursor  := crHourGlass;
  try
    qry.q.Close;
    qry.q.SQL.Text := makesql;
    qry.q.Open;
    bo_set_subitem_pendente := False;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmmanagertarefa.actfiltroExecute(Sender: TObject);
begin
  tbvtarefa.FilterRow.Visible := btnfiltro.Down;
end;

procedure Tfrmmanagertarefa.actatualizarschedulerExecute(Sender: TObject);
begin
  cdsscheduler.Refresh;
end;

procedure Tfrmmanagertarefa.acViewTypeExecute(tag: integer);
var
  ADate: TDateTime;
begin
  ADate := Trunc(scdCalendario.SelStart);
  case Tag of
    0: scdCalendario.GoToDate(ADate, vmDay);
    1: scdCalendario.GoToDate(ADate, vmWorkWeek);
    2: scdCalendario.GoToDate(ADate, vmWeek);
    3: scdCalendario.GoToDate(ADate, vmMonth);
    4: begin
         scdCalendario.SelectedDays.Clear;
         scdCalendario.SelectedDays.Add(ADate);
         scdCalendario.ViewTimeGrid.Active := True;
       end;
    5: scdCalendario.ViewYear.Active := True;
  end;
  scdCalendario.Storage := DBS;
  scdCalendario.LayoutChanged;
  scdCalendario.Refresh;
end;

procedure Tfrmmanagertarefa.setdadosscheduler(sqlwhere:string; boAPONTAMENTO:Boolean=false);
  procedure set_fields;
  begin
    cdsscheduler.Close;
    cdsscheduler.FieldDefs.Clear;
    cdsscheduler.Fields.Clear;
    cdsscheduler.IndexDefs.Clear;
    cdsscheduler.FieldDefs.Add('options', ftInteger);
    cdsscheduler.FieldDefs.Add('evento', ftInteger);
    cdsscheduler.FieldDefs.Add('state', ftInteger);
    cdsscheduler.FieldDefs.Add('labelcolor', ftInteger);
    cdsscheduler.FieldDefs.Add(_nm+_tarefa, ftstring, 255);
    cdsscheduler.FieldDefs.Add(_cdfuncionario, ftInteger);
    cdsscheduler.FieldDefs.Add(_cd+_acao, ftInteger);
    cdsscheduler.FieldDefs.Add(_ts+_inicio, ftTimeStamp);
    cdsscheduler.FieldDefs.Add(_ts+_fim, ftTimeStamp);
    cdsscheduler.FieldDefs.Add(_d+_1, ftInteger);
    cdsscheduler.CreateDataSet;
  end;
  procedure processar_registros_tarefas;
  var
    cdfuncionario :string;
    dtprevista : TDateTime;
    tempor, tempoi, tempof : TTime;
  begin
    sdsscheduler.Open;
    cdfuncionario := sdsscheduler.fieldbyname(_cdfuncionario).AsString;
    dtprevista    := sdsscheduler.fieldbyname(_dtprevista).AsDateTime;
    tempoi        := StrToTime('08:00:00');
    tempor        := StrToTime('08:00:00');
    while not sdsscheduler.Eof do
    begin

      if cdfuncionario <> sdsscheduler.fieldbyname(_cdfuncionario).AsString then
      begin
        cdfuncionario := sdsscheduler.fieldbyname(_cdfuncionario).AsString;
        tempoi        := StrToTime('08:00:00');
        tempor        := StrToTime('08:00:00');
      end;
      if dtprevista <> sdsscheduler.fieldbyname(_dtprevista).AsDateTime then
      begin
        dtprevista := sdsscheduler.fieldbyname(_dtprevista).AsDateTime;
        tempoi     := StrToTime('08:00:00');
        tempor     := StrToTime('08:00:00');
      end;

      if (dtprevista = DtBanco) and sdsscheduler.FieldByName(_ts+_termino).IsNull and (tempor = StrToTime('08:00:00')) then
      begin
        tempor := HrBanco;
        tempoi := tempor;
      end;

      if sdsscheduler.FieldByName(_HR+_ESTIMADA).AsDateTime = StrToTime(_00_00_00) then
      begin
        tempof := tempoi + StrToTime('00:30:00')
      end
      else
      begin
        tempof := tempoi + sdsscheduler.fieldbyname(_hr+_estimada).AsDateTime;
      end;
      cdsscheduler.Insert;
      cdsscheduler.FieldByName('options').AsInteger      := 0;
      cdsscheduler.FieldByName('evento').asinteger       := 0;
      cdsscheduler.FieldByName('state').AsInteger        := 2;
      if sdsscheduler.FieldByName(_ts+_termino).IsNull then
      begin
        cdsscheduler.FieldByName('labelcolor').AsInteger   := 536870912
      end
      else
      begin
        cdsscheduler.FieldByName('labelcolor').AsInteger   := 1676422;
      end;
      cdsscheduler.FieldByName(_nm+_tarefa).asstring     := sdsscheduler.FieldByName(_nm+_tarefa).asstring;
      cdsscheduler.FieldByName(_cdfuncionario).asinteger := sdsscheduler.FieldByName(_cdfuncionario).asinteger;
      cdsscheduler.FieldByName(_cd+_acao).asinteger      := sdsscheduler.FieldByName(_cd+_acao).asinteger;
      cdsscheduler.FieldByName(_ts+_inicio).asdatetime   := sdsscheduler.FieldByName(_dtprevista).asdatetime + tempoi;
      cdsscheduler.FieldByName(_ts+_fim).asdatetime      := sdsscheduler.FieldByName(_dtprevista).asdatetime + tempof;
      cdsscheduler.FieldByName(_d+_1).AsInteger          := sdsscheduler.FieldByName(_d+_1).AsInteger;

      cdsscheduler.Post;
      sdsscheduler.Next;
      tempoi := tempof;
    end;
  end;
  function makesql:string;
  begin
    if boAPONTAMENTO then
    begin
      result := 'SELECT t.cdtarefa||''-''||coalesce(c.nmcliente,'''')||''-''||t.nmtarefa NMTAREFA'+
                      ',t.cdfuncionario'+
                      ',t.cdtarefa cdacao'+
                      ',t.dtprevista'+
                      ',t.HRESTIMADA'+
                      ',t.dttermino+hrtermino tstermino'+
                      ',t.dtprevista-cast(''01/01/1900'' as date) D1 '+
                'FROM tarefa t '+
                'left join cliente c on c.cdempresa=t.cdempresa and c.cdcliente=t.cdcliente '+
                'where t.cdempresa='+empresa.cdempresa.tostring+' and t.'+
                sqlwhere+' and (select count(*) from tarefaacompanhamento a where a.cdempresa=t.cdempresa and a.cdtarefa=t.cdtarefa) = 0 '+
                'union '+
                'SELECT t.cdtarefa||''-''||coalesce(c.nmcliente,'''')||''-''||t.nmtarefa NMTAREFA'+
                      ',e.cdfuncionario'+
                      ',t.cdtarefa cdacao'+
                      ',e.dtprevista'+
                      ',E.HRESTIMADA'+
                      ',e.tstermino'+
                      ',e.dtprevista-cast(''01/01/1900'' as date) D1 '+
                'FROM tarefa t '+
                'left join cliente c on c.cdempresa=t.cdempresa and c.cdcliente=t.cdcliente '+
                'inner join tarefaacompanhamento e on e.cdempresa=t.cdempresa and e.cdtarefa=t.cdtarefa and e.cdfuncionario is not null '+
                'where t.cdempresa='+empresa.cdempresa.tostring+' and e.'+
                sqlwhere+' '+
                'order by 2,4,6 desc,3';
      Exit;
    end;
    result := 'SELECT NULL OPTIONS'+
                    ',0 evento'+
                    ',2 STATE'+
                    ',536870912 LABELCOLOR'+
                    ',t.cdtarefa||''-''||coalesce(c.nmcliente,'''')||''-''||a.nmtarefa NMTAREFA'+
                    ',t.*'+
                    ',t.dtemissao+t.hrinicio tsinicio'+
                    ',t.dtemissao+t.hrfim tsfim'+
                    ',t.dtemissao-cast(''01/01/1900'' as date) D1 '+
              'FROM ACAO T '+
              'left join tarefa a on a.cdtarefa=t.cdtarefa and a.cdempresa=t.cdempresa '+
              'left join cliente c on c.cdempresa=a.cdempresa and c.cdcliente=a.cdcliente '+
              'where t.cdempresa='+empresa.cdempresa.tostring+' and t.'+
              sqlwhere;
  end;
  function makesqlfuncionario:string;
  begin
    result := 'select f.cdfuncionario,f.nmfuncionario '+
              'from funcionario f ';
    if boAPONTAMENTO then
    begin
      result := result + 'inner join tarefa t on t.cdempresa=f.cdempresa and f.cdfuncionario=t.cdfuncionario '
    end
    else
    begin
      result := result + 'inner join acao t on t.cdempresa=f.cdempresa and f.cdfuncionario=t.cdfuncionario ';
    end;
    result := result +
              'where t.cdempresa='+empresa.cdempresa.tostring+' and t.'+
              sqlwhere+
              'group by f.cdfuncionario,f.nmfuncionario';
  end;
var
  q : TClasseQuery;
  i : Integer;
begin
  q := TClasseQuery.Create(makesqlfuncionario);
  Screen.Cursor   := crHourGlass;
  try
    i := 0;
    DBS.Resources.Items.Clear;
    while not q.q.Eof do
    begin
      DBS.Resources.Items.Add;
      DBS.Resources.Items[i].Name       := q.q.fieldbyname(_nmfuncionario).AsString;
      DBS.Resources.Items[i].ResourceID := q.q.fieldbyname(_cdfuncionario).AsString;
      DBS.Resources.Items[i].Visible    := True;
      DBS.Resources.Items[i].WorkStart  := StrToTime('08:00:00');
      DBS.Resources.Items[i].WorkFinish := StrToTime('18:00:00');
      DBS.Resources.Items[i].WorkDays   := [dMonday, dTuesday, dWednesday, dThursday, dFriday];
      Inc(i);
      q.q.Next;
    end;

    cdsscheduler.close;
    sdsscheduler.Close;
    sdsscheduler.CommandText := makesql;
    if boAPONTAMENTO then
    begin
      cdsscheduler.ProviderName := '';
      set_fields;
      processar_registros_tarefas;
      Exit;
    end;
    dspscheduler.DataSet     := sdsscheduler;
    cdsscheduler.SetProvider(dspscheduler);
    cdsscheduler.open;
  finally
    freeandnil(q);
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmmanagertarefa.set_data_scheduler(nivel2:string);
var
  dti: TDate;
begin
  dti := 0;
  if nivel2 = maiuscula(_Na+' '+_Data) then
  begin
    dti := dt_na_data;
    acViewTypeExecute(0);
  end
  else if nivel2 = Maiuscula(_hoje)   then
  begin
    dti := DtBanco;
    acViewTypeExecute(0);
  end
  else if nivel2 = Maiuscula(_ontem)  then
  begin
    dti := DtBanco-1;
    acViewTypeExecute(0);
  end
  else if nivel2 = Maiuscula(__amanha)  then
  begin
    dti := DtBanco+1;
    acViewTypeExecute(0);
  end
  else if nivel2 = Maiuscula(_semana) then
  begin
    acViewTypeExecute(2);
    dti := Primeiro_Dia_Semana(DtBanco);
  end
  else if nivel2 = Maiuscula(_Semana+' '+_passada) then
  begin
    acViewTypeExecute(2);
    dti := Primeiro_Dia_Semana(DtBanco-7);
  end
  else if nivel2 = Maiuscula(__Proxima+' '+_semana) then
  begin
    acViewTypeExecute(2);
    dti := Primeiro_Dia_Semana(DtBanco+7);
  end
  else if nivel2 = Maiuscula(__mes) then
  begin
    acViewTypeExecute(3);
    dti := StrToDate('01/'+FormatDateTime(__dtmesano_barra, DtBanco));
  end
  else if nivel2 = Maiuscula(__mes+' '+_passado) then
  begin
    acViewTypeExecute(3);
    dti := StrToDate('01/'+FormatDateTime(__dtmesano_barra, Primeiro_dia_mes_anterior(DtBanco)));
  end
  else if nivel2 = Maiuscula('Próximo'+' '+__mes) then
  begin
    acViewTypeExecute(3);
    dti := StrToDate('01/'+FormatDateTime(__dtmesano_barra, Primeiro_dia_mes_proximo(DtBanco)));
  end;
  scdCalendario.GoToDate(dti);
end;

function Tfrmmanagertarefa.ShowPainelScheduler(sqlwhere: string; nivel : string; boAPONTAMENTO:Boolean=false):boolean;
begin
  scdCalendario.Storage.Clear;
  setdadosscheduler(sqlwhere, boAPONTAMENTO);
  set_data_scheduler(nivel);
  result := True;
end;

function Tfrmmanagertarefa.get_data_no(texto: string): string;
begin
  if texto = Maiuscula(_Entrada) then
  begin
    result := ' is null '
  end
  else if texto = Maiuscula(_Hoje) then
  begin
    result := '='+GetDtBanco(DtBanco)
  end
  else if texto = Maiuscula(__Amanha) then
  begin
    result := '='+GetDtBanco(DtBanco+1)
  end
  else if texto = Maiuscula(_Ontem) then
  begin
    result := '='+GetDtBanco(DtBanco-1)
  end
  else if texto = Maiuscula(_Atrasado) then
  begin
    result := '<'+GetDtBanco(DtBanco)
  end
  else if texto = Maiuscula(_Semana) then
  begin
    result := ' between '+GetDtBanco(Primeiro_Dia_Semana(DtBanco))+  ' and '+GetDtBanco(Ultima_Dia_Semana(DtBanco))
  end
  else if texto = Maiuscula(__Proxima+' '+_semana) then
  begin
    result := ' between '+GetDtBanco(Primeiro_Dia_Semana(DtBanco+7))+' and '+GetDtBanco(Ultima_Dia_Semana(DtBanco+7))
  end
  else if texto = Maiuscula(_Semana+' '+_Passada) then
  begin
    result := ' between '+GetDtBanco(Primeiro_Dia_Semana(DtBanco-7))+' and '+GetDtBanco(Ultima_Dia_Semana(DtBanco-7))
  end
  else if texto = Maiuscula(__Mes) then
  begin
    result := ' between '+GetDtBanco(StrToDate('01/'+FormatDateTime(__dtmesano_barra, DtBanco)))+' and '+GetDtBanco(Ultimo_Dia_Mes(DtBanco))
  end
  else if texto = Maiuscula(__proximo+' '+__Mes) then
  begin
    result := ' between '+GetDtBanco(Primeiro_dia_mes_proximo(DtBanco))+' and '+GetDtBanco(Ultimo_Dia_Mes_proximo(DtBanco))
  end
  else if texto = Maiuscula(__Mes+' '+_Passado) then
  begin
    result := ' between '+GetDtBanco(StrToDate('01/'+FormatDateTime(__dtmesano_barra, Primeiro_dia_mes_anterior(DtBanco))))+' and '+GetDtBanco(Ultimo_Dia_Mes(Primeiro_dia_mes_anterior(DtBanco)));
  end;
end;

procedure Tfrmmanagertarefa.actviewcalendarioExecute(Sender: TObject);
begin
  scdCalendario.DateNavigator.Visible := ntbviewcalendario.Down;
end;

procedure Tfrmmanagertarefa.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(cdtarefa1);
  freeandnil(cdacompanhamento1);
end;

procedure Tfrmmanagertarefa.trvrelatorioChange(Sender: TObject; Node: TTreeNode);
begin
  ntb.ActivePage := maiuscula(__Relatorio);
end;

procedure Tfrmmanagertarefa.actalturaautomaticaExecute(Sender: TObject);
begin
  tbvtarefa.OptionsView.CellAutoHeight := btnalturaautomatica.down;
end;

procedure Tfrmmanagertarefa.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmmanagertarefa.actmudartarefaExecute(Sender: TObject);
var
  tarefa : TTarefa;
  procedure adicionar_tarefa;
  var
    i : Integer;
  begin
    tarefa.lstcdtarefa.Clear;
    for i := 0 to tbvtarefa.ViewData.RecordCount -1 do
    begin
      if tbvtarefa.ViewData.Records[i].Selected then
      begin
        tarefa.lstcdtarefa.Add(tbvtarefa.ViewData.Records[i].Values[tbvtarefa.GetColumnByFieldName(_cdtarefa).Index]);
      end;
    end;
  end;
begin
  tarefa := TTarefa.create;
  try
    if set_change_tarefa(tarefa) then
    begin
      adicionar_tarefa;
      if tarefa.set_change_tarefa then
      begin
        qry.q.Refresh;
      end;
    end;
  finally
    tarefa.Destroy;
  end;
end;

end.
