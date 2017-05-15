unit uLocalizarApontamentoManual;

interface

uses
  forms, StdCtrls, ActnList, sysutils, Controls, ComCtrls, Menus, ExtCtrls, Classes, Graphics, dialogs,
  DB,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxCore, cxDateUtils, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, dxBar, cxClasses, cxTextEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, cxButtons, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, dxStatusBar, cxGroupBox, cxCalc,
  uregistro, urotinas, uconstantes, uexportarexcel,
  udatahora, ulocalizarproduto,
  classeempresa, classesqlmontar, classeRetornaSQL, classeform, classeAplicacao, classequery, classeregistro,
  System.Actions, System.UITypes, ClasseLocalizar;

type
  TfrmLocalizarApontamentoManual = class(TForm)
    Bevel2: TBevel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtdtemissaof: TcxDateEdit;
    edtdtemissaoi: TcxDateEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnfind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDAPONTAMENTOMANUAL: TcxGridDBColumn;
    tbvNMTPAPONTAMENTOMANUAL: TcxGridDBColumn;
    tbvNMFUNCIONARIO: TcxGridDBColumn;
    tbvDTEMISSAO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    act: TActionList;
    actfiltro: TAction;
    actagrupar: TAction;
    actexcel: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnfiltro: TdxBarButton;
    btnagrupar: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarDockControl1: TdxBarDockControl;
    actlimparcriterio: TAction;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    actopcoes: TAction;
    lblcdtpapontamentomanual: TLabel;
    cbxcdtpapontamentomanual: TcxLookupComboBox;
    lblnuestrutural: TLabel;
    edtnuestrutural: TcxTextEdit;
    lblcdstapontamentomanual: TLabel;
    cbxcdstapontamentomanual: TcxLookupComboBox;
    tbvNMSTAPONTAMENTOMANUAL: TcxGridDBColumn;
    tbvNUCOR: TcxGridDBColumn;
    Label8: TLabel;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    edtcdfuncionario: TcxButtonEdit;
    lblnmfuncionario: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure actopcoesExecute(Sender: TObject);
    procedure tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    codigo : integer;
    q : TClasseQuery;
    d : TDataSource;
    procedure qAfterScroll(DataSet: TDataSet);
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function Localizarapontamentomanual:integer;

var
  frmLocalizarApontamentoManual: TfrmLocalizarApontamentoManual;

implementation

uses uDtmMain, udlgtabela;

{$R *.DFM}

function Localizarapontamentomanual:integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_localizar+_apontamentomanual) then
  begin
    frmLocalizarapontamentomanual := TfrmLocalizarapontamentomanual.Create(application);
  end;
  if frmLocalizarapontamentomanual.q.q.Active then
  begin
    frmLocalizarapontamentomanual.btnfindclick(frmLocalizarapontamentomanual.btnfind);
  end;
  frmLocalizarapontamentomanual.showmodal;
  if frmLocalizarapontamentomanual.ModalResult = mrok then
  begin
    result := frmLocalizarapontamentomanual.codigo;
  end;
end;

function TfrmLocalizarApontamentoManual.makesql:string;
begin
  result := 'select apontamentomanual.cdapontamentomanual'+
                  ',apontamentomanual.dtemissao'+
                  ',tpapontamentomanual.nmtpapontamentomanual'+
                  ',stapontamentomanual.nmstapontamentomanual'+
                  ',stapontamentomanual.nucor'+
                  ',funcionario.nmfuncionario '+
            'FROM apontamentomanual '+
            'left join apontamento on apontamento.cdempresa=apontamentomanual.cdempresa and apontamento.cdapontamentomanual=apontamentomanual.cdapontamentomanual '+
            'left join tpapontamentomanual ON tpapontamentomanual.cdtpapontamentomanual=apontamentomanual.cdtpapontamentomanual and apontamentomanual.cdempresa=tpapontamentomanual.cdempresa '+
            'left join stapontamentomanual ON stapontamentomanual.cdstapontamentomanual=apontamentomanual.cdstapontamentomanual '+
            'left join funcionario on funcionario.cdfuncionario=apontamentomanual.cdfuncionario and funcionario.cdempresa=apontamentomanual.cdempresa '+
            sqlwhere+
            ' group by apontamentomanual.cdapontamentomanual'+
                     ',apontamentomanual.dtemissao'+
                     ',tpapontamentomanual.nmtpapontamentomanual'+
                     ',stapontamentomanual.nmstapontamentomanual'+
                     ',stapontamentomanual.nucor'+
                     ',funcionario.nmfuncionario '+
            'order by apontamentomanual.cdapontamentomanual desc';
end;

function TfrmLocalizarApontamentoManual.sqlwhere:string;
var
  criterio : string;
begin
  result := 'where apontamentomanual.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(edtcdfuncionario.text, _apontamentomanual, _cdfuncionario, result);
  sqlmontarcodigo(cbxcdtpapontamentomanual.EditValue, _apontamentomanual, _cdtpapontamentomanual, result);
  sqlmontarcodigo(cbxcdstapontamentomanual.EditValue, _apontamentomanual, _cdstapontamentomanual, result);
  sqlmontarcodigo(edtcdproduto.Text, _apontamento, _cdproduto, result);
  sqlmontarnomedireto(edtnuestrutural.Text, _apontamento, _nuestrutural, result);
  sqlmontardata(edtdtemissaoi.text, edtdtemissaof.text, _apontamentomanual, _dtemissao, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarApontamentoManual.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarApontamentoManual.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarApontamentoManual.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarApontamentoManual.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarApontamentoManual.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarApontamentoManual.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

procedure TfrmLocalizarApontamentoManual.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarApontamentoManual.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarApontamentoManual.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarApontamentoManual.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarApontamentoManual.edtcdfuncionarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarApontamentoManual.edtcdfuncionarioKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarApontamentoManual.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := cd.ToString;
  lblnmproduto.caption := qregistro.NomedoCodigo(_produto, cd);
end;

procedure TfrmLocalizarApontamentoManual.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarApontamentoManual.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarApontamentoManual.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := cd.ToString;
  lblnmproduto.caption := qregistro.NomedoCodigo(_produto, cd);
end;

procedure TfrmLocalizarApontamentoManual.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarApontamentoManual.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarApontamentoManual.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarApontamentoManual.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarApontamentoManual.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarApontamentoManual.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarApontamentoManual.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not q.q.Active) or (q.q.RecordCount <= 0) then
  begin
    Exit;
  end;
  if key = 40 then
  begin
    q.q.Next;
    key := 0;
  end
  else if key = 38 then
  begin
    q.q.Prior;
    key := 0;
  end;
end;

procedure TfrmLocalizarApontamentoManual.qAfterScroll(DataSet: TDataSet);
begin
  codigo := q.q.fieldbyname(_cdapontamentomanual).Asinteger;
end;

procedure TfrmLocalizarApontamentoManual.AbrirTabelas;
begin
  cbxcdtpapontamentomanual.Properties.ListSource := abrir_tabela(_tpapontamentomanual);
  cbxcdstapontamentomanual.Properties.ListSource := abrir_tabela(_stapontamentomanual);
end;

procedure TfrmLocalizarApontamentoManual.actopcoesExecute(Sender: TObject);
begin
//
end;

procedure TfrmLocalizarApontamentoManual.tbvCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Column : TcxGridDBColumn;
begin
  Column := tbvNUCOR;
  ACanvas.Font.Color := strtoint(AViewInfo.GridRecord.DisplayTexts[Column.Index]);
       if ACanvas.Font.Color = clred  then ACanvas.Font.Style := [fsStrikeOut, fsBold]
  else if ACanvas.Font.Color = clblue then ACanvas.Font.Style := [fsBold];
end;

end.
