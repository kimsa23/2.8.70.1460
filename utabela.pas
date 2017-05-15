unit utabela;

interface

uses
  System.Actions, System.UITypes,FireDAC.Comp.Client,
  forms, StdCtrls, SysUtils, Menus, Classes, ActnList, Controls, ExtCtrls,
  SqlExpr,
  uDtmMain, uinterbase, uExportarExcel, uConstantes,
  classeColumnField, classeregistro, classeretornasql, classeregistrainformacao,
  classegerar, classeempresa, classeAplicacao, classequery,
  cxCheckBox, cxPC, cxDBLookupComboBox,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, dxBar,
  cxClasses, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxButtonEdit, Dialogs,
  cxTextEdit, cxNavigator, cxDBNavigator, dxBarExtItems, DB,
  cxColorComboBox, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxDBColorComboBox;

type
  TfrmTabela1 = class(TForm)
    pnl: TPanel;
    act: TActionList;
    actfechar: TAction;
    bmg1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxbrlrgbtnfechar: TdxBarLargeButton;
    tbv: TcxGridDBTableView;
    grdLevel1: TcxGridLevel;
    grd: TcxGrid;
    dts: TDataSource;
    bmg1Bar1: TdxBar;
    dxBarDockControl1: TdxBarDockControl;
    actexportarexcel: TAction;
    dxBarButton1: TdxBarButton;
    actfiltrar: TAction;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    actagrupar: TAction;
    dxBarControlContainerItem1: TdxBarControlContainerItem;
    ColorDialog1: TColorDialog;
    procedure qryAfterScroll(DataSet: TDataSet);
    procedure actfecharExecute(Sender: TObject);
    procedure qryBeforePost(DataSet: TDataSet);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure actexportarexcelExecute(Sender: TObject);
    procedure actfiltrarExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure grdDBTableView1Column1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure qryBeforeDelete(DataSet: TDataSet);
    procedure tbvEditDblClick(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
    procedure FormCreate(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private
    qry : TFDQuery;
    registro : TRegistro;
    exibe, tbl  : string;
    function  existe_campo(nmfield:string):Boolean;
    procedure set_dados(tabela:string);
    procedure set_readonly;
  public    { Public declarations }
  end;

var
  frmTabela1 : TfrmTabela1;

procedure AbrirTabela(pnlprincipal: TPanel; tbl:string);

implementation

uses uMain;

{$R *.DFM}

procedure AbrirTabela(pnlprincipal: TPanel; tbl:string);
begin
  frmTabela1             := TfrmTabela1.Create(application);
  frmTabela1.Parent      := pnlprincipal;
  frmTabela1.BorderStyle := bsnone;
  frmTabela1.Align       := alclient;
  frmTabela1.bringtofront;
  frmTabela1.Visible     := true;
  frmTabela1.set_dados(tbl);
end;

procedure TfrmTabela1.set_dados(tabela: string);
begin
  exibe        := RetornaSQLString('select nmexibe from tabela where nmtabela='+quotedstr(uppercase(tabela)));
  registro     := TRegistro.create(Self, tabela, exibe, _o, qry, dts, nil);
  tbl          := tabela;
  pnl.Caption  := exibe;
  qry.SQL.Text := QRetornaSQL.get_select_from(tabela);
  if ExisteCampoNaTabela(tabela, _cdempresa) then
  begin
    qry.SQL.Text := qry.SQL.Text + ' where cdempresa='+empresa.cdempresa.tostring+' ';
  end;
  qry.Open;
  set_colunas(registro, tbl, qry, tbv);
  set_readonly;
  grd.SetFocus;
end;

procedure TfrmTabela1.qryAfterScroll(DataSet: TDataSet);
begin
  pnl.Caption := exibe;
  if existe_campo(_cd+tbl) then
  begin
    pnl.Caption := pnl.Caption + ' '  +qry.fieldbyname(_cd+tbl).AsString;
  end;
  if existe_campo(_nm+tbl) then
  begin
    pnl.Caption := pnl.Caption + ' - '+qry.fieldbyname(_nm+tbl).AsString;
  end;
end;

procedure TfrmTabela1.actfecharExecute(Sender: TObject);
begin
  close;
  frmmain.main.DestruirBotaoFormAtual(tbl, frmmain.tlbnew);
end;

function TfrmTabela1.existe_campo(nmfield: string): Boolean;
var
  i : integer;
begin
  result := False;
  for i := 0 to qry.FieldCount - 1 do
  begin
    if qry.Fields[i].FieldName = UpperCase(nmfield) then
    begin
      result := True;
      Break;
    end;
  end;
end;

procedure TfrmTabela1.qryBeforePost(DataSet: TDataSet);
begin
  if tbl = _serie then
  begin
    if (dataset.FieldByName(_boservico).AsString = 'S') and (DataSet.FieldByName(_nudocfiscalicms).AsString <> '01') then
    begin
      MessageDlg('Documento Fiscal ICMS '+DataSet.FieldByName(_nudocfiscalicms).AsString+' não pode ser serviço.'#13'Favor desmarcar o campo Serviço para continuar.', mtInformation, [mbOK], 0);
      dataset.FieldByName(_boservico).FocusControl;
      Abort;
    end;
  end;
  if existe_campo(_cd+tbl) and DataSet.FieldByName(_cd+tbl).IsNull then
  begin
    DataSet.FieldByName(_cd+tbl).AsString := GerarCodigo(tbl);
  end;
  if existe_campo(_cdempresa) then
  begin
    RegistraInformacao_(dataset);
  end;
end;

procedure TfrmTabela1.set_readonly;
var
  boativar: boolean;
begin
  boativar                  := existe_campo(_cdempresa);
  tbv.OptionsData.Editing   := boativar;
  tbv.OptionsData.Appending := boativar;
  tbv.OptionsData.Deleting  := boativar;
  tbv.OptionsData.Inserting := boativar;
  if tbl = _sticms then
  begin
    tbv.OptionsData.Editing := true;
  end;
end;

procedure TfrmTabela1.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
  registro.ExibirInformacaoRegistro(qry, key);
end;

procedure TfrmTabela1.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmTabela1.actexportarexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmTabela1.actfiltrarExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmTabela1.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmTabela1.grdDBTableView1Column1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  colordialog : TColorDialog;
begin
  colordialog := TColorDialog.Create(nil);
  try
    if colordialog.Execute then
    begin
      TcxButtonEdit(Sender).EditingText := IntToStr(colordialog.Color);
    end;
  finally
    colordialog.Free;
  end;
end;

procedure TfrmTabela1.FormCreate(Sender: TObject);
begin
  qry := TFDQuery.create(nil);
  qry.Connection := aplicacao.confire;
  dts.dataset := qry;
  qry.BeforePost := qryBeforePost;
  qry.AfterScroll := qryAfterScroll;
  qry.BeforeDelete := qryBeforeDelete;
end;

procedure TfrmTabela1.FormDestroy(Sender: TObject);
begin
  freeandnil(qry);
  freeandnil(registro);
end;

procedure TfrmTabela1.qryBeforeDelete(DataSet: TDataSet);
begin
  if (LowerCase(tbl) = _storcamento) and (qry.FieldByName(_cdstorcamento).AsInteger in [1, 2, 3, 4]) then
  begin
    MessageDlg('Este status não pode ser excluído.'#13'Faz parte da configuração do sistema.', mtInformation, [mbOK], 0);
    abort;
  end;
end;

procedure TfrmTabela1.tbvEditDblClick(Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit);
begin
  if (LowerCase(TcxGridDBColumn(AItem).DataBinding.FieldName) = _nucor) and ColorDialog1.Execute then
  begin
    if (qry.State <> dsEdit) or (qry.State <> dsinsert) then
    begin
      qry.Edit;
    end;
    TcxGridDBColumn(AItem).DataBinding.Field.AsInteger := ColorDialog1.Color;
  end;
end;

end.
