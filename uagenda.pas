unit uagenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ExtCtrls, ActnList, Dialogs, Menus,
  DB, SqlExpr,
  classeexecutasql, classeform, classeRegistro, classegerar, classeempresa,
  classeaplicacao, classequery,
  uRegistro, uConstantes, udatahora, ustrings,
  cxSchedulerDialogs, cxDateUtils, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxEdit, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView,
  cxSplitter, cxClasses, dxBar, dxNavBar, cxContainer, cxDateNavigator,
  cxSchedulerDBStorage, ComCtrls, cxTreeView, dxNavBarCollns, dxNavBarBase,
  cxCalendar, cxBarEditItem, cxGroupBox, cxCheckGroup, cxDropDownEdit, cxHint,
  cxSchedulerTreeListBrowser, cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor,
  System.Actions;

type
  Tfrmagenda = class(TForm)
    scd: TcxScheduler;
    dbstorage: TcxSchedulerDBStorage;
    bmg1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    bmg1Bar1: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    act: TActionList;
    actvisualizardia: TAction;
    actvisualizarsemanatrabalho: TAction;
    actvisualizarsemana: TAction;
    actvisualizarmes: TAction;
    actvisualizartimegrid: TAction;
    actvisualizarano: TAction;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    actvisualizarirparadata: TAction;
    dxBarButton7: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    actvisualizarcalendario: TAction;
    actvisualizarposicaoesquerda: TAction;
    actvisualizarposicaodireita: TAction;
    dxBarButton8: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    actvisualizar: TAction;
    dxBarSubItem4: TdxBarSubItem;
    actfechar: TAction;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    edtdtinicio: TcxBarEditItem;
    edtdttermino: TcxBarEditItem;
    actequipamento: TAction;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dts: TDataSource;
    actnovo: TAction;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    actexcluir: TAction;
    actatualizar: TAction;
    dxBarButton17: TdxBarButton;
    pumevento: TdxBarPopupMenu;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    pumevento2: TdxBarPopupMenu;
    dxBarButton18: TdxBarButton;
    actlocalizar: TAction;
    dxBarButton22: TdxBarButton;
    procedure actvisualizardiaExecute(Sender: TObject);
    procedure actvisualizarsemanatrabalhoExecute(Sender: TObject);
    procedure actvisualizarsemanaExecute(Sender: TObject);
    procedure actvisualizarmesExecute(Sender: TObject);
    procedure actvisualizartimegridExecute(Sender: TObject);
    procedure actvisualizaranoExecute(Sender: TObject);
    procedure actvisualizarirparadataExecute(Sender: TObject);
    procedure actvisualizarcalendarioExecute(Sender: TObject);
    procedure actvisualizarposicaoesquerdaExecute(Sender: TObject);
    procedure actvisualizarposicaodireitaExecute(Sender: TObject);
    procedure actvisualizarExecute(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actequipamentoExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure scdDblClick(Sender: TObject);
    procedure actnovoExecute(Sender: TObject);
    procedure dbstorageEventModified(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure edtdtinicioChange(Sender: TObject);
    procedure dbstorageEventDeleted(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure actexcluirExecute(Sender: TObject);
    procedure actatualizarExecute(Sender: TObject);
    procedure scdFirstVisibleResourceChanged(Sender: TObject);
    procedure scdSelectionChanged(Sender: TObject);
    procedure dbstorageEventInserted(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
    procedure scdMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure actlocalizarExecute(Sender: TObject);
    procedure scdGetEventHintText(Sender: TObject; AEvent: TcxSchedulerControlEvent; var AText: String);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private { Private declarations }
    lstequipamento : TStrings;
    tbl : string;
    hrinicio : TTime;
    dtemissao : TDate;
    q : TClasseQuery;
    procedure set_resource;
    function  makesql_equipamento:string;
    function  makesql_agenda:string;
    function  sql_where_equipamento(tabela:string=''):string;
    procedure set_agenda;
    function  get_lista_equipamento:string;
    procedure excluir_item(cditagenda:string);
  public { Public declarations }
    registro : tregistro;
  end;

var
  frmagenda: Tfrmagenda;

implementation

uses uDtmMain, uMain, udlgselecionarlista, uitagenda,
  ulocalizaritagenda;

{$R *.dfm}

procedure Tfrmagenda.actvisualizardiaExecute(Sender: TObject);
begin
  scd.ViewDay.Active := True;
end;

procedure Tfrmagenda.actvisualizarsemanatrabalhoExecute(Sender: TObject);
begin
  scd.SelectWorkDays(Date);
end;

procedure Tfrmagenda.actvisualizarsemanaExecute(Sender: TObject);
begin
  scd.ViewWeek.Active := True;
end;

procedure Tfrmagenda.actvisualizarmesExecute(Sender: TObject);
begin
  scd.GoToDate(scd.SelectedDays[0], vmMonth);
end;

procedure Tfrmagenda.actvisualizartimegridExecute(Sender: TObject);
begin
  scd.ViewTimeGrid.Active := True;
end;

procedure Tfrmagenda.actvisualizaranoExecute(Sender: TObject);
begin
  scd.ViewYear.Active := True;
end;

procedure Tfrmagenda.actvisualizarirparadataExecute(Sender: TObject);
var
  ADate: TDateTime;
  AMode: TcxSchedulerViewMode;
begin
  ADate := scd.SelectedDays[0];
  if cxShowGoToDateDialog(scd, scd.LookAndFeel, ADate, AMode) then
  begin
    scd.GoToDate(ADate, AMode);
  end;
end;

procedure Tfrmagenda.actvisualizarcalendarioExecute(Sender: TObject);
begin
  scd.DateNavigator.Visible := true;
end;

procedure Tfrmagenda.actvisualizarposicaoesquerdaExecute(Sender: TObject);
begin
  scd.OptionsView.ViewPosition := vpLeft;
end;

procedure Tfrmagenda.actvisualizarposicaodireitaExecute(Sender: TObject);
begin
  scd.OptionsView.ViewPosition := vpRight;
end;

procedure Tfrmagenda.actvisualizarExecute(Sender: TObject);
begin
//
end;

procedure Tfrmagenda.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

procedure Tfrmagenda.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  dts.dataset := q.q;
  lstequipamento                   := TStringList.Create;
  tbl                              := _agenda;
  lstequipamento.Text              := get_lista_equipamento;
  scd.OptionsView.ResourcesPerPage := lstequipamento.Count;
  set_resource;
  edtdtinicio.EditValue            := DtBanco;
  edtdttermino.EditValue           := edtdtinicio.EditValue;
end;

procedure Tfrmagenda.actequipamentoExecute(Sender: TObject);
begin
  if dlgSelecionarLista(lstequipamento, _equipamento) and (Sender <> nil) then
  begin
    scd.OptionsView.ResourcesPerPage := lstequipamento.Count;
    set_resource;
    set_agenda;
  end;
end;

procedure Tfrmagenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  freeandnil(q);
  freeandnil(lstequipamento);
  action := cafree;
end;

function tfrmagenda.sql_where_equipamento(tabela:string=''):string;
var
  i : Integer;
begin
  for i := 0 to lstequipamento.Count - 1 do
  begin
    if i = 0 then
    begin
      result := result + ' ';
      if tabela <> '' then
      begin
        result := result + tabela+'.';
      end;
      result := result + 'cdequipamento in (';
    end;
    if i > 0 then
    begin
      result := result + ',';
    end;
    result := Result + lstequipamento[i];
  end;
  if lstequipamento.Count > 0 then
  begin
    Result := result + ')';
  end;
end;

function Tfrmagenda.makesql_equipamento:string;
begin
  result := 'select cdequipamento,nmequipamento from equipamento';
  if lstequipamento.Count > 0 then
  begin
    Result := result + ' where '+sql_where_equipamento;
  end;
  result := result + ' order by nmequipamento';
end;

procedure Tfrmagenda.set_resource;
var
  q : TClasseQuery;
  i : Integer;
begin
  q := TClasseQuery.Create(makesql_equipamento);
  try
    DBStorage.Resources.Items.Clear;
    i := 0;
    while not q.q.Eof do
    begin
      DBStorage.Resources.Items.Add;
      DBStorage.Resources.Items[i].Name       := q.q.fieldbyname(_nmequipamento).AsString;
      DBStorage.Resources.Items[i].ResourceID := q.q.fieldbyname(_cdequipamento).AsString;
      DBStorage.Resources.Items[i].Visible    := True;
      DBStorage.Resources.Items[i].WorkStart  := StrToTime('08:00:00');
      DBStorage.Resources.Items[i].WorkFinish := StrToTime('23:59:59');
      DBStorage.Resources.Items[i].WorkDays   := [dMonday, dTuesday, dWednesday, dThursday, dFriday];
      Inc(i);
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

function Tfrmagenda.makesql_agenda: string;
begin
  result := 'select a.dtdia-cast(''01/01/1900'' as date) D1'+
                 ',coalesce(i.nmcliente,'''')||coalesce(c.nmcliente,'''')||'' - ''||COALESCE(p.nmproduto,'''')||'' - ''||f.nmfuncionario NMTAREFA'+
                 ',I.CDITAGENDA'+
                 ',I.cdfuncionario'+
                 ',I.CDEQUIPAMENTO'+
                 ',I.CDITCONTRATO'+
                 ',I.CDCLIENTE'+
                 ',I.CDPRODUTO'+
                 ',I.CDSTITAGENDA'+
                 ',I.TSINICIO'+
                 ',I.TSFIM'+
                 ',I.CDDUPLICATA'+
                 ',I.OPTIONS'+
                 ',I.EVENTO'+
                 ',I.STATE'+
                 ',COALESCE(R.NMREGIAOCORPO,'''')||'' ''||I.DSOBSERVACAO message'+
                 ',s.nucor LABELCOLOR '+
            'from itagenda I '+
            'LEFT JOIN AGENDA A on a.cdagenda=i.cdagenda and a.cdempresa=i.cdempresa '+
            'LEFT JOIN STITAGENDA S ON S.CDSTITAGENDA=I.cdstitagenda and s.cdempresa=i.cdempresa '+
            'LEFT JOIN CLIENTE C on c.cdcliente=i.cdcliente and c.cdempresa=i.cdempresa '+
            'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
            'LEFT JOIN REGIAOCORPO R ON R.CDEMPRESA=I.CDEMPRESA AND R.CDREGIAOCORPO=I.CDREGIAOCORPO '+
            'left join funcionario f on f.cdfuncionario=i.cdfuncionario and f.cdempresa=i.cdempresa '+
            'where i.tsinicio between '+quotedstr(FormatDateTime(_mm_dd_yyyy, edtdtinicio.EditValue)+' 00:00:00')+' and '+quotedstr(FormatDateTime(_mm_dd_yyyy, edtdttermino.EditValue)+' 23:59:59')+' '+
            'and '+sql_where_equipamento(_i);
end;

procedure Tfrmagenda.set_agenda;
var
  ADate: TDateTime;
begin
  q.q.Close;
  if (not VarIsNull(edtdtinicio.EditValue)) and (not VarIsNull(edtdttermino.EditValue)) and (lstequipamento.Count >0) then
  begin
    q.q.SQL.Text := makesql_agenda;
    q.q.Open;
    ADate := edtdtinicio.EditValue;
    scd.GoToDate(ADate, vmDay);
  end;
  //ADate := Trunc(scd.SelStart);
  scd.Storage := DBStorage;
  scd.LayoutChanged;
  scd.Refresh;
end;

procedure Tfrmagenda.scdDblClick(Sender: TObject);
begin
  if (scd.SelectedEventCount = 1) and ShowItAgenda(scd.SelectedEvents[0].ID) then
  begin
    q.q.Refresh;
  end;
end;

procedure Tfrmagenda.actnovoExecute(Sender: TObject);
var
  cdresource, codigo : string;
begin
  codigo     := gerarcodigo(_it+_agenda);
  //cdresource := lstequipamento[scd.SelResource.ID];
  cdresource := scd.SelResource.ResourceID;
  if Showitagenda(codigo, dtemissao, hrinicio, '', '', cdresource) then
  begin
    q.q.Refresh;
  end;
end;

procedure Tfrmagenda.dbstorageEventModified(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
  function makesql:string;
  var
    cditagenda : string;
  begin
    cditagenda := aevent.ID;
    Result := 'update itagenda set dtemissao='+GetDtBanco(AEvent.Finish)+',hrinicio='+GethrBanco(aevent.Start)+',tsinicio='+GettsBanco(aevent.Start)+',hrfim='+GethrBanco(AEvent.Finish)+',tsfim='+GettsBanco(AEvent.Finish)+' where cdempresa='+empresa.cdempresa.tostring+' and cditagenda='+cditagenda;
  end;
begin
  ExecutaSQL(makesql);
  q.q.Refresh;
end;

procedure Tfrmagenda.edtdtinicioChange(Sender: TObject);
begin
  set_agenda;
end;

function Tfrmagenda.get_lista_equipamento: string;
  function makesql:string;
  begin
    result := 'select cdequipamento from equipamento where cdempresa='+empresa.cdempresa.tostring+' order by nmequipamento';
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(makesql);
  try
    result := '';
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        result := result + #13;
      end;
      result := result + q.q.fieldbyname(_cdequipamento).AsString;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure Tfrmagenda.dbstorageEventDeleted(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
var
  cditagenda : string;
begin
  cditagenda := aevent.ID;;
  excluir_item(cditagenda);
end;

procedure Tfrmagenda.actexcluirExecute(Sender: TObject);
var
  cditagenda : string;
begin
  if scd.SelectedEventCount = 1 then
  begin
    cditagenda := scd.SelectedEvents[0].ID;
    excluir_item(cditagenda);
  end;
end;

procedure Tfrmagenda.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmagenda.excluir_item(cditagenda: string);
begin
  ExecutaSQL('delete from itagenda where cdempresa='+empresa.cdempresa.tostring+' and cditagenda='+cditagenda);
  q.q.Refresh;
end;

procedure Tfrmagenda.actatualizarExecute(Sender: TObject);
begin
  q.q.Refresh;
end;

procedure Tfrmagenda.scdFirstVisibleResourceChanged(Sender: TObject);
begin
//
end;

procedure Tfrmagenda.scdSelectionChanged(Sender: TObject);
begin
//
end;

procedure Tfrmagenda.dbstorageEventInserted(Sender: TObject; AEvent: TcxSchedulerEvent; var AHandled: Boolean);
begin
  AEvent.ResourceID
end;

procedure Tfrmagenda.scdMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxSchedulerDayViewHitTest;
  AHintPoint: TPoint;
begin
  with TcxScheduler(Sender) do
  begin
    AHitTest := ViewDay.HitTest;
    if AHitTest.HitAtTime then
    begin // obtain the mouse pointer position in screen coordinates
      AHintPoint := GetMouseCursorPos;
      hrinicio   := AHitTest.Time;
      dtemissao  := AHitTest.Time;
    end
  end;
end;

procedure Tfrmagenda.actlocalizarExecute(Sender: TObject);
var
  cd : string;
  dtemissao : TDate;
begin
  cd := Localizaritagenda;
  if cd = '' then
  begin
    Exit;
  end;
  dtemissao := QRegistro.DatadoCodigo(_itagenda, strtoint(cd), _dtemissao);
  edtdtinicio.EditValue := dtemissao;
end;

procedure Tfrmagenda.scdGetEventHintText(Sender: TObject; AEvent: TcxSchedulerControlEvent; var AText: String);
begin
  atext := aevent.Message;
end;

end.
