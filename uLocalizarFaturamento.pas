unit uLocalizarFaturamento;

interface

uses
  forms, Buttons, StdCtrls, Mask, Classes, ExtCtrls, dialogs, sysutils, ComCtrls,
  Menus, ActnList, Controls, system.UITypes,
  DB,
  ulocalizarcliente, udatahora, urotinas, uregistro, ulocalizar,
  uconstantes, uexportarexcel,
  classeempresa, classeform, classesqlmontar, classeRetornaSQL, classeAplicacao,
  classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxButtonEdit, cxLookAndFeelPainters, cxButtons, cxGraphics,
  dxStatusBar, cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxLookAndFeels, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore, cxDateUtils,
  cxNavigator, System.Actions, ClasseLocalizar;

type
  TfrmLocalizarFaturamento = class(TForm)
    Bevel1: TBevel;
    lblBoleto: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    edtdtfaturamentof: TcxDateEdit;
    edtdtvencimentof: TcxDateEdit;
    edtdtvencimentoi: TcxDateEdit;
    edtdtfaturamentoi: TcxDateEdit;
    edtdtiniciof: TcxDateEdit;
    edtdtterminof: TcxDateEdit;
    edtdtterminoi: TcxDateEdit;
    edtdtinicioi: TcxDateEdit;
    btnOk: TcxButton;
    btnCancelar: TcxButton;
    btnFind: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDFATURAMENTO: TcxGridDBColumn;
    tbvDTFATURAMENTO: TcxGridDBColumn;
    tbvDTVENCIMENTO: TcxGridDBColumn;
    tbvDTINICIO: TcxGridDBColumn;
    tbvDTTERMINO: TcxGridDBColumn;
    tbvNMSETBOLETO: TcxGridDBColumn;
    tbvNMSTFATURAMENTO: TcxGridDBColumn;
    tbvNMTPFATURAMENTO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cbxcdstfaturamento: TcxLookupComboBox;
    cbxcdtpfaturamento: TcxLookupComboBox;
    cbxcdsetboleto: TcxLookupComboBox;
    lblcliente: TLabel;
    lblproduto: TLabel;
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
    dxBarButton1: TdxBarButton;
    actlimparcriterio: TAction;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    edtcdproduto: TcxButtonEdit;
    lblnmproduto: TLabel;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvDblClick(Sender: TObject);
    procedure btnexportarexcelClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdsetboletoEnter(Sender: TObject);
    procedure cbxcdtpfaturamentoEnter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure edtcdprodutoExit(Sender: TObject);
    procedure edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
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

function LocalizarFaturamento:integer;

var
  frmLocalizarFaturamento: TfrmLocalizarFaturamento;

implementation

uses uDtmMain, ulocalizarproduto;

{$R *.DFM}

function LocalizarFaturamento:integer;
begin
    result := 0;
  if not TQForm.ExisteFormulario(_frm+_Localizar+_Faturamento) then
  begin
    frmLocalizarFaturamento := TfrmLocalizarFaturamento.Create(application);
  end;
  if frmLocalizarFaturamento.q.q.Active then
  begin
    frmLocalizarFaturamento.btnfindclick(frmLocalizarFaturamento.btnfind);
    frmLocalizarFaturamento.qAfterScroll(frmLocalizarFaturamento.q.q);
  end;
  frmLocalizarFaturamento.showmodal;
  if frmLocalizarFaturamento.ModalResult = mrok then
  begin
    result := frmLocalizarFaturamento.codigo;
  end;
end;

function TfrmLocalizarFaturamento.makesql:string;
begin
  result := 'SELECT F.CDFATURAMENTO'+
                  ',F.CDSTFATURAMENTO'+
                  ',F.CDSETBOLETO'+
                  ',F.DTFATURAMENTO'+
                  ',F.DTVENCIMENTO'+
                  ',F.DTINICIO'+
                  ',f.DTTERMINO'+
                  ',C.NMSETBOLETO'+
                  ',S.NMSTFATURAMENTO'+
                  ',T.NMTPFATURAMENTO '+
            'FROM FATURAMENTO f '+
            'left join itfatcliente ic on ic.cdfaturamento=f.cdfaturamento and f.cdempresa=ic.cdempresa '+
            'left join itfatproduto ip on ip.cdfaturamento=f.cdfaturamento and f.cdempresa=ip.cdempresa '+
            'LEFT JOIN STFATURAMENTO s ON F.CDSTFATURAMENTO=S.CDSTFATURAMENTO '+
            'LEFT JOIN TPFATURAMENTO t ON F.CDTPFATURAMENTO=T.CDTPFATURAMENTO and f.cdempresa=t.cdempresa '+
            'LEFT JOIN SETBOLETO c ON F.CDSETBOLETO=C.CDSETBOLETO and f.cdempresa=c.cdempresa '+
            sqlwhere+
            ' group by F.CDFATURAMENTO'+
                              ',F.CDSTFATURAMENTO'+
                              ',F.CDSETBOLETO'+
                              ',F.DTFATURAMENTO'+
                              ',F.DTVENCIMENTO'+
                              ',F.DTINICIO'+
                              ',f.DTTERMINO'+
                              ',C.NMSETBOLETO'+
                              ',S.NMSTFATURAMENTO'+
                              ',T.NMTPFATURAMENTO '+
                      'order by f.dtfaturamento desc,f.cdfaturamento';
end;

function TfrmLocalizarFaturamento.sqlwhere: string;
var
  criterio : string;
begin
  result := 'where f.cdempresa=' + empresa.cdempresa.tostring + ' ';
  criterio := result;
  sqlmontarcodigo(cbxcdstfaturamento.EditValue, _f, _cdstfaturamento, result);
  sqlmontarcodigo(edtcdproduto.text, _i + _p, _cdproduto, result);
  sqlmontarcodigo(edtcdcliente.text, _i + _c, _cdcliente, result);
  sqlmontarcodigo(cbxcdtpfaturamento.EditValue, _f, _cdtpfaturamento, result);
  sqlmontarcodigo(cbxcdsetboleto.EditValue, _f, _cdsetboleto, result);
  sqlmontardata(edtdtfaturamentoi.text, edtdtfaturamentof.text, _f, _dtfaturamento, result);
  sqlmontardata(edtdtvencimentoi.text, edtdtvencimentof.text, _f, _dtvencimento, result);
  sqlmontardata(edtdtinicioi.text, edtdtiniciof.text, _f, _dtinicio, result);
  sqlmontardata(edtdtterminoi.text, edtdtterminof.text, _f, _dttermino, result);
  if criterio = result  then
  begin
    messagedlg('É obrigatório o preenchimento de algum critério para realizar a consulta.', mtinformation, [mbok], 0);
    abort;
  end;
end;

procedure TfrmLocalizarFaturamento.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.SQL.Text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.RecordCount > 0;
end;

procedure TfrmLocalizarFaturamento.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarFaturamento.qAfterScroll(DataSet: TDataSet);
begin
   codigo := q.q.fieldbyname(_cdfaturamento).AsInteger;
end;

procedure TfrmLocalizarFaturamento.AbrirTabelas;
begin
  cbxcdstfaturamento.Properties.ListSource := abrir_tabela(_stfaturamento);
  cbxcdtpfaturamento.Properties.ListSource := abrir_tabela(_tpfaturamento);
  cbxcdsetboleto.Properties.ListSource := abrir_tabela(_setboleto);
end;

procedure TfrmLocalizarFaturamento.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarFaturamento.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarFaturamento.btnexportarexcelClick(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarFaturamento.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarFaturamento.FormCreate(Sender: TObject);
begin
  q := TClasseQuery.Create;
  d := TDataSource.Create(self);
  q.q.AfterScroll := qAfterScroll;
  TRegistro.SetQueryLocalizar(q, d, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarFaturamento.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarFaturamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarFaturamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarFaturamento.cbxcdsetboletoEnter(Sender: TObject);
begin
  abrir_tabela(_SETBOLETO);
  colorenter(sender);
end;

procedure TfrmLocalizarFaturamento.cbxcdtpfaturamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tpfaturamento);
  colorenter(sender);
end;

procedure TfrmLocalizarFaturamento.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmLocalizarFaturamento.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarFaturamento.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmLocalizarFaturamento.edtcdprodutoExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _produto, _produto);
  colorexit(sender);
end;

procedure TfrmLocalizarFaturamento.edtcdprodutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdprodutoPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarFaturamento.edtcdprodutoPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarproduto;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdproduto.text    := cd.tostring;
  lblnmproduto.caption := qregistro.NomedoCodigo(_produto, cd);
end;

procedure TfrmLocalizarFaturamento.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarFaturamento.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarFaturamento.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarFaturamento.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarFaturamento.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarFaturamento.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarFaturamento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

end.
