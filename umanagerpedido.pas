unit umanagerpedido;

interface

uses
  System.Actions, System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ActnList, ExtCtrls, Dialogs,
  DB,
  JvTrayIcon,
  ustrings, uexportarexcel, uregistro, uConstantes, udatahora, uprotector,
  classeretornasql, classeusuario, classepedido, classeempresa, classeexecutasql,
  classeaplicacao, classequery,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxCurrencyEdit, cxCalc, cxBlobEdit, dxBarBuiltInMenu,
  cxContainer, cxCalendar, ComCtrls, cxTreeView, dxNavBarCollns, dxNavBarBase,
  dxBar, cxBarEditItem, cxClasses, cxLabel, cxPC, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxSplitter, dxNavBar,
  dxStatusBar, ToolWin, cxGroupBox, cxInplaceContainer, cxVGrid, cxOI, cxTextEdit,
  cxMemo, cxMaskEdit, cxDropDownEdit, cxPCdxBarPopupMenu,
  cxDBLookupComboBox, cxSpinEdit, cxTimeEdit;

type
  Tfrmmanagerpedido = class(TForm)
    dts: TDataSource;
    dtsdetail: TDataSource;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    act: TActionList;
    actgerarsaida: TAction;
    actfechar: TAction;
    cxBarEditItem1: TcxBarEditItem;
    edtdti: TcxBarEditItem;
    edtdtf: TcxBarEditItem;
    dxBarButton6: TdxBarButton;
    actestatisica: TAction;
    dxBarSubItem1: TdxBarSubItem;
    actduplicata: TAction;
    dxBarButton12: TdxBarButton;
    acthistorico: TAction;
    dxBarButton13: TdxBarButton;
    nvb: TdxNavBar;
    cxSplitter1: TcxSplitter;
    pnlfundo: TPanel;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDPEDIDO: TcxGridDBColumn;
    tbvNUPEDIDO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    tbvDTPRVENTREGA: TcxGridDBColumn;
    tbvDTFECHAMENTO: TcxGridDBColumn;
    tbvCDCLIENTE: TcxGridDBColumn;
    tbvNMCLIENTE: TcxGridDBColumn;
    tbvVLTOTAL: TcxGridDBColumn;
    tbvNMCONDPAGTO: TcxGridDBColumn;
    tbvNMREPRESENTANTE: TcxGridDBColumn;
    tbvPRCOMISSAO: TcxGridDBColumn;
    tbvNMTPFRETE: TcxGridDBColumn;
    tbvQTITEM: TcxGridDBColumn;
    tbvQTATENDIDA: TcxGridDBColumn;
    tbvCDCONDPAGTO: TcxGridDBColumn;
    tbvNUCORCONDPAGTO: TcxGridDBColumn;
    tbvdsobservacao: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    spldetail: TcxSplitter;
    pnl: TcxLabel;
    actabrircliente: TAction;
    actabrirpedido: TAction;
    nvbPedido: TdxNavBarGroup;
    nvbPedidoControl: TdxNavBarGroupControl;
    trvpedido: TcxTreeView;
    actatualizar: TAction;
    dxBarButton14: TdxBarButton;
    grddetail: TcxGrid;
    tbvdetail: TcxGridDBTableView;
    tbvdetailCDPEDIDO: TcxGridDBColumn;
    tbvdetailCDDIGITADO: TcxGridDBColumn;
    tbvdetailNMPRODUTO: TcxGridDBColumn;
    tbvdetailNUCOTACAO: TcxGridDBColumn;
    tbvdetailNUITEM: TcxGridDBColumn;
    tbvdetailQTITEM: TcxGridDBColumn;
    tbvdetailQTATENDIDA: TcxGridDBColumn;
    tbvdetailVLUNITARIO: TcxGridDBColumn;
    tbvdetailVLTOTAL: TcxGridDBColumn;
    grddetailLevel1: TcxGridLevel;
    tbvdetailCDITPEDIDO: TcxGridDBColumn;
    tbvdetailCDORCAMENTO: TcxGridDBColumn;
    tbvdetailCDTPORCAMENTO: TcxGridDBColumn;
    actabrirorcamento: TAction;
    tbvNMTPPEDIDO: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure actfecharExecute(Sender: TObject);
    procedure actgerarsaidaExecute(Sender: TObject);
    procedure ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tbvNMCONDPAGTOCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure actestatisicaExecute(Sender: TObject);
    procedure actduplicataExecute(Sender: TObject);
    procedure acthistoricoExecute(Sender: TObject);
    procedure qryAfterRefresh(DataSet: TDataSet);
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure qryBeforeRefresh(DataSet: TDataSet);
    procedure actabrirpedidoExecute(Sender: TObject);
    procedure actabrirclienteExecute(Sender: TObject);
    procedure actatualizarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure trvpedidoChange(Sender: TObject; Node: TTreeNode);
    procedure actabrirorcamentoExecute(Sender: TObject);
    procedure tbvdetailCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private { Private declarations }
    qry : TClasseQuery;
    qrydetail : TClasseQuery;
    pedido  : tpedido;
    procedure setdados(nopai, noselecao:string);
    procedure set_treeview;
    procedure set_trv_tabela(tbl:string);
    function  get_exibe_tabela(tbl:string):string;
    function  get_posicao_treeview(node:TTreeNode):string;
    function  get_nmtabela(nmtabela:string):string;
  public { Public declarations }
  end;

var
  frmmanagerpedido: Tfrmmanagerpedido;

implementation

uses uMain,
  udlgGerarSaida, uDtmMain,
  udlgclientefinanceiro,
  udlgduplicatacliente,
  udlghpedidoetapa;

{$R *.dfm}

const
  sql1 = 'select Pedido.CDEMPRESA'+
               ',pedido.cdpedido'+
               ',pedido.nupedido'+
               ',pedido.dtemissao'+
               ',pedido.dtprventrega'+
               ',pedido.dtfechamento'+
               ',pedido.prcomissao'+
               ',cliente.nmcliente'+
               ',representante.nmrepresentante'+
               ',pedido.cdcondpagto'+
               ',condpagto.nmcondpagto'+
               ',condpagto.nucor nucorcondpagto'+
               ',tpfrete.nmtpfrete'+
               ',pedido.vltotal'+
               ',pedido.cdcliente'+
               ',pedido.dsobservacao'+
               ',tppedido.boitemtp'+
               ',TPPEDIDO.NMTPPEDIDO'+
               ',sum(itpedido.qtitem) qtitem'+
               ',sum(itpedido.qtatendida) qtatendida '+
         'from pedido '+
         'left join itpedido on itpedido.cdpedido=pedido.cdpedido and pedido.cdempresa=itpedido.cdempresa '+
         'left join tppedido on tppedido.cdempresa=pedido.cdempresa and tppedido.cdtppedido=pedido.cdtppedido '+
         'left join cliente on cliente.cdcliente=pedido.cdcliente and pedido.cdempresa=cliente.cdempresa '+
         'left join stpedido on stpedido.cdstpedido=pedido.cdstpedido and pedido.cdempresa=stpedido.cdempresa '+
         'left join representante on representante.cdrepresentante=pedido.cdrepresentante and pedido.cdempresa=representante.cdempresa '+
         'left join condpagto on condpagto.cdcondpagto=pedido.cdcondpagto and pedido.cdempresa=condpagto.cdempresa '+
         'left join tpfrete on tpfrete.cdtpfrete=pedido.cdtpfrete '+
         ':where '+
         ' group by pedido.CDEMPRESA'+
                  ',pedido.cdpedido'+
                  ',pedido.nupedido'+
                  ',pedido.dtprventrega'+
                  ',pedido.dtemissao'+
                  ',pedido.dtfechamento'+
                  ',pedido.prcomissao'+
                  ',cliente.nmcliente'+
                  ',representante.nmrepresentante'+
                  ',pedido.cdcondpagto'+
                  ',condpagto.nmcondpagto'+
                  ',condpagto.nucor'+
                  ',tpfrete.nmtpfrete'+
                  ',pedido.vltotal'+
                  ',pedido.cdcliente'+
                  ',pedido.dsobservacao'+
                  ',tppedido.boitemtp'+
                  ',TPPEDIDO.NMTPPEDIDO';

procedure Tfrmmanagerpedido.setdados(nopai, noselecao:string);
  function sqlwhere:string;
  begin
    result := 'where pedido.cdempresa='+empresa.cdempresa.tostring+' '+
              'and pedido.dtemissao between '+getdtbanco(edtdti.EditValue)+' and '+getdtbanco(edtdtf.EditValue)+' ';
    if noselecao = Maiuscula(_ATRASADO) then
    begin
      result := result + 'and pedido.DTPRVENTREGA<'+GetDtBanco(DtBanco)+' and pedido.dtfechamento is null';
    end
    else
    begin
      result := result + 'and pedido.cd'+get_nmtabela(nopai)+'='+qregistro.CodigodoNome(get_nmtabela(nopai), noselecao);;
    end;
  end;
begin
  qry.q.DisableControls;
  qrydetail.q.DisableControls;
  Screen.Cursor   := crHourGlass;
  qry.q.AfterScroll := nil;
  try
    qry.q.close;
    qrydetail.q.Close;
    qry.q.sql.text := StringParametro(sql1, sqlwhere);
    qry.q.open;
  finally
    qry.q.enablecontrols;
    qrydetail.q.EnableControls;
    qry.q.AfterScroll := qryAfterScroll;
    qryAfterScroll(qry.q);
    Screen.Cursor := crDefault;
  end;
end;

procedure Tfrmmanagerpedido.FormShow(Sender: TObject);
begin
  tbvNMREPRESENTANTE.Visible := empresa.comercial.representante.bo;
  tbvPRCOMISSAO.Visible      := empresa.comercial.representante.bo;
  tbvdetailNUCOTACAO.Visible := RetornaSQLInteger('select count(*) from tppedido where cdempresa='+empresa.cdempresa.tostring+' and BOCOTACAOITEM=''S''')>0;
  tbvdetailNUITEM.Visible    := RetornaSQLInteger('select count(*) from tppedido where cdempresa='+empresa.cdempresa.tostring+' and BONUITEM=''S''')>0;
  edtdti.EditValue           := DtBanco - 90;
  edtdtf.EditValue           := DtBanco;
end;

procedure Tfrmmanagerpedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure Tfrmmanagerpedido.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(qrydetail);
  freeandnil(pedido);
end;

procedure Tfrmmanagerpedido.actfecharExecute(Sender: TObject);
begin
  frmmanagerpedido.close;
end;

procedure Tfrmmanagerpedido.actgerarsaidaExecute(Sender: TObject);
begin
  pedido.cdpedido := qry.q.fieldbyname(_cdpedido).asInteger;
  GerarSaida_Pedido(qry.q.fieldbyname(_cdpedido).asInteger, qry.q.fieldbyname(_CDCLIENTE).AsString, qry.q.fieldbyname(_cdcondpagto).AsInteger, true);
end;

procedure Tfrmmanagerpedido.ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure Tfrmmanagerpedido.tbvCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
       if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _NUPEDIDO  then actabrirpedido.onExecute(actabrirpedido)
  else if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdcliente then actabrircliente.onExecute(actabrircliente);
end;

procedure Tfrmmanagerpedido.tbvNMCONDPAGTOCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCORCONDPAGTO;
  if AViewInfo.GridRecord.DisplayTexts[Column.Index] <> '' then
  begin
    ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
  end;
end;

procedure Tfrmmanagerpedido.actestatisicaExecute(Sender: TObject);
begin
  if qry.q.Active and (qry.q.fieldbyname(_cdcliente).AsString <> '') then
  begin
    dlgclientefinanceiro(qry.q.fieldbyname(_cdcliente).AsLargeInt);
  end;
end;

procedure Tfrmmanagerpedido.actExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure Tfrmmanagerpedido.actduplicataExecute(Sender: TObject);
begin
  if qry.q.Active and (qry.q.fieldbyname(_cdcliente).AsString <> '') then
  begin
    dlgduplicatacliente(qry.q.fieldbyname(_cdempresa).AsString, qry.q.fieldbyname(_cdcliente).AsString);
  end;
end;

procedure Tfrmmanagerpedido.acthistoricoExecute(Sender: TObject);
begin
  if qry.q.Active and (qry.q.fieldbyname(_cdpedido).AsString <> '') then
  begin
    dlghpedidoetapa(qry.q.fieldbyname(_cdempresa).AsString, qry.q.fieldbyname(_cdpedido).AsString);
  end;
end;

procedure Tfrmmanagerpedido.qryAfterRefresh(DataSet: TDataSet);
begin
  qry.q.AfterScroll := qryAfterScroll;
  qryAfterScroll(dataset);
end;

procedure Tfrmmanagerpedido.qryAfterScroll(DataSet: TDataSet);
  function makesql:string;
  begin
    result := 'select i.nucotacao'+
                    ',i.nuitem'+
                    ',i.cdpedido'+
                    ',i.cditpedido'+
                    ',i.cdtpitpedido'+
                    ',i.cddigitado'+
                    ',p.nmproduto'+
                    ',i.qtitem'+
                    ',itorcamento.cdorcamento'+
                    ',orcamento.cdtporcamento'+
                    ',i.qtatendida'+
                    ',i.vlunitario'+
                    ',i.vltotal '+
              'from itpedido i '+
              'left join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
              'left join itorcamento on itorcamento.cdempresa=i.cdempresa and itorcamento.cditorcamento=i.cditorcamento '+
              'left join orcamento on orcamento.cdempresa=itorcamento.cdempresa and orcamento.cdorcamento=itorcamento.cdorcamento '+
              'where i.cdempresa='+qry.q.fieldbyname(_cdempresa).AsString+' and i.cdpedido='+qry.q.fieldbyname(_cdpedido).AsString;
  end;
begin
  if (not grddetail.Visible) or (qry.q.fieldbyname(_cdpedido).AsString = '') then
  begin
    exit;
  end;
  qrydetail.q.close;
  qrydetail.q.sql.text := makesql;
  qrydetail.q.open;
  tbvdetailCDITPEDIDO.visible := qry.q.fieldbyname(_boitemtp).asstring = _s;
end;

procedure Tfrmmanagerpedido.qryBeforeRefresh(DataSet: TDataSet);
begin
  qry.q.AfterScroll := nil;
end;

procedure Tfrmmanagerpedido.actabrirpedidoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry.q, qry.q);
end;

procedure Tfrmmanagerpedido.actabrirclienteExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qry.q, qry.q);
end;

procedure Tfrmmanagerpedido.actatualizarExecute(Sender: TObject);
begin
// 
end;

procedure Tfrmmanagerpedido.FormCreate(Sender: TObject);
begin
  qry := tclassequery.create;
  dts.dataset := qry.q;
  qry.q.AfterScroll := qryAfterScroll;
  qry.q.AfterRefresh := qryAfterRefresh;
  qry.q.AfterScroll := qryAfterScroll;
  qry.q.BeforeRefresh := qryBeforeRefresh;
  qrydetail := tclassequery.create;
  dtsdetail.dataset := qrydetail.q;
  pedido  := tpedido.create;
  TcxLookupComboBoxProperties(tbvdetailCDITPEDIDO.Properties).ListSource    := abrir_tabela(_tpitpedido);
  TcxLookupComboBoxProperties(tbvdetailCDTPORCAMENTO.Properties).ListSource := abrir_tabela(_tporcamento);
  set_treeview;
end;

procedure Tfrmmanagerpedido.set_treeview;
begin
  trvpedido.Items.Clear;
  set_trv_tabela(_stpedido);
  set_trv_tabela(_tpcomercial);
  set_trv_tabela(_tpcredito);
end;

procedure Tfrmmanagerpedido.set_trv_tabela(tbl: string);
var
  no : TTreeNode;
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('select nm'+tbl+' from '+tbl+' order by nm'+tbl);
    while not q.q.Eof do
    begin
      if q.q.RecNo = 1 then
      begin
        no := trvpedido.Items.AddChild(nil, maiuscula(get_exibe_tabela(tbl)));
      end;
      trvpedido.Items.AddChild(no, Maiuscula(q.q.fieldbyname(_nm+tbl).asstring));
      q.q.next;
    end;
    if tbl = _stpedido then
    begin
      trvpedido.Items.AddChild(no, Maiuscula(_atrasado));
    end;
  finally
    q.Free;
  end;
end;

procedure Tfrmmanagerpedido.trvpedidoChange(Sender: TObject; Node: TTreeNode);
begin
  pnl.Caption := get_posicao_treeview(Node);
  if Node.Level = 1 then
  begin
    setdados(node.parent.text, node.text);
  end;
end;

function Tfrmmanagerpedido.get_exibe_tabela(tbl: string): string;
begin
       if tbl = _stpedido    then result := Maiuscula(_status)
  else if tbl = _tpcredito   then result := Maiuscula(__credito)
  else if tbl = _tpcomercial then result := Maiuscula(_Comercial);
end;

function Tfrmmanagerpedido.get_posicao_treeview(node: TTreeNode): string;
begin
       if node.Level = 0 then Result := node.Text
  else if node.Level = 1 then result := node.Parent.Text+'\'+node.Text;
end;

function Tfrmmanagerpedido.get_nmtabela(nmtabela: string): string;
begin
       if nmtabela = Maiuscula(_status)    then result := _stpedido
  else if nmtabela = Maiuscula(__credito)  then result := _tpcredito
  else if nmtabela = Maiuscula(_Comercial) then result := _tpcomercial;
end;

procedure Tfrmmanagerpedido.actabrirorcamentoExecute(Sender: TObject);
begin
  frmMain.AbrirDireto(TAction(Sender), qrydetail.q, qrydetail.q);
end;

procedure Tfrmmanagerpedido.tbvdetailCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if LowerCase(TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName) = _cdorcamento then actabrirorcamento.onExecute(actabrirorcamento);
end;

end.
