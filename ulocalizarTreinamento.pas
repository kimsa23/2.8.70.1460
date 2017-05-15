unit ulocalizarTreinamento;

interface

uses
  forms, Menus, Buttons, Mask, Classes, ExtCtrls, dialogs, sysutils, StdCtrls, ComCtrls,
  Controls, ActnList,
  DB,
  uregistro, urotinas, ulocalizar, uconstantes, uexportarexcel, ulocalizarcliente,
  udatahora,
  classeempresa, classeform, classesqlmontar, classeAplicacao, classequery, classeregistro,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLookAndFeelPainters, cxButtons, cxButtonEdit, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxCurrencyEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxStatusBar, cxGroupBox, cxLookAndFeels,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxBar, dxCore,
  cxDateUtils, cxNavigator, System.Actions, ulocalizarFuncionario,
  ClasseLocalizar;

type
  TfrmLocalizarTreinamento = class(TForm)
    dts: TDataSource;
    Bevel1: TBevel;
    Label8: TLabel;
    btnfind: TcxButton;
    btnCancelar: TcxButton;
    btnOk: TcxButton;
    grd: TcxGrid;
    tbv: TcxGridDBTableView;
    tbvCDTREINAMENTO: TcxGridDBColumn;
    tbvNMTPTREINAMENTO: TcxGridDBColumn;
    grdLevel1: TcxGridLevel;
    cbxcdtptreinamento: TcxLookupComboBox;
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
    dxBarButton1: TdxBarButton;
    actlimparcriterio: TAction;
    actmodograde: TAction;
    dxBarButton3: TdxBarButton;
    Label3: TLabel;
    edtdtinicioi: TcxDateEdit;
    Label4: TLabel;
    edtdtiniciof: TcxDateEdit;
    edtdtterminof: TcxDateEdit;
    lbl2: TLabel;
    edtdtterminoi: TcxDateEdit;
    lbl1: TLabel;
    Label9: TLabel;
    edtcdfuncionario: TcxButtonEdit;
    lblnmfuncionario: TLabel;
    tbvDTINICIO: TcxGridDBColumn;
    tbvDTTERMINO: TcxGridDBColumn;
    tbvQTHORAS: TcxGridDBColumn;
    tbvNMINSTRUTOR: TcxGridDBColumn;
    procedure btnFindClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure grdDblClick(Sender: TObject);
    procedure edtcdcontaKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbxcdtptreinamentoEnter(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure actexcelExecute(Sender: TObject);
    procedure actagruparExecute(Sender: TObject);
    procedure actfiltroExecute(Sender: TObject);
    procedure actlimparcriterioExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbvDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actmodogradeExecute(Sender: TObject);
    procedure edtcdfuncionarioExit(Sender: TObject);
    procedure edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
  private   { Private declarations }
    q : tclassequery;
    procedure AbrirTabelas;
    function makesql: string;
    function sqlwhere: string;
  public    { Public declarations }
  end;

function LocalizarTreinamento:Integer;

var
  frmLocalizarTreinamento: TfrmLocalizarTreinamento;

implementation

uses uDtmMain;

{$R *.DFM}

function LocalizarTreinamento:Integer;
begin
  result := 0;
  if not TQForm.ExisteFormulario(_frm+_Localizar+_treinamento) then
  begin
    frmLocalizarTreinamento := tfrmLocalizarTreinamento.Create(application);
  end;
  if frmLocalizarTreinamento.q.q.Active then
  begin
    frmLocalizarTreinamento.btnfindclick(frmLocalizarTreinamento.btnfind);
  end;
  frmLocalizarTreinamento.showmodal;
  if frmLocalizarTreinamento.ModalResult = mrok then
  begin
    result := frmLocalizarTreinamento.q.q.fieldbyname(_cdtreinamento).Asinteger;
  end;
end;

function TfrmLocalizarTreinamento.sqlwhere:string;
begin
  result := 'where treinamento.cdempresa='+empresa.cdempresa.ToString+' ';
  sqlmontarcodigo(cbxcdtptreinamento.EditValue          , _treinamento, _cdtptreinamento, result);
  sqlmontardata  (edtdtinicioi.text , edtdtiniciof.text , _treinamento, _dtinicio    , result);
  sqlmontardata  (edtdtterminoi.text, edtdtterminof.text, _treinamento, _dttermino   , result);
  sqlmontarcodigo(edtcdfuncionario.text, _ittreinamento, _cdfuncionario, result);
end;

function TfrmLocalizarTreinamento.makesql:string;
begin
  result := 'SELECT treinamento.cdtreinamento'+
                  ',treinamento.dtinicio'+
                  ',treinamento.dttermino'+
                  ',tptreinamento.nmtptreinamento'+
                  ',treinamento.qthoras'+
                  ',treinamento.nminstrutor '+
            'FROM treinamento '+
            'left join tptreinamento on tptreinamento.cdempresa=treinamento.cdempresa and tptreinamento.cdtptreinamento=treinamento.cdtptreinamento '+
            'left join ittreinamento on ittreinamento.cdempresa=treinamento.cdempresa and ittreinamento.cdtreinamento=treinamento.cdtreinamento '+
            sqlwhere+' '+
            'group by treinamento.cdtreinamento'+
                  ',treinamento.dtinicio'+
                  ',treinamento.dttermino'+
                  ',tptreinamento.nmtptreinamento'+
                  ',treinamento.qthoras'+
                  ',treinamento.nminstrutor';
end;

procedure TfrmLocalizarTreinamento.btnFindClick(Sender: TObject);
begin
  q.q.close;
  q.q.sql.text := makesql;
  q.q.open;
  btnOk.Enabled := q.q.recordcount > 0;
end;

procedure TfrmLocalizarTreinamento.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmLocalizarTreinamento.grdDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmLocalizarTreinamento.edtcdcontaKeyPress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarTreinamento.edtcdfuncionarioExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _funcionario, _funcionario);
  colorexit(sender);
end;

procedure TfrmLocalizarTreinamento.edtcdfuncionarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdfuncionarioPropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmLocalizarTreinamento.edtcdfuncionarioPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  cd : integer;
begin
  cd := Localizarfuncionario;
  if cd = 0 then
  begin
    exit;
  end;
  edtcdfuncionario.text    := cd.ToString;
  lblnmfuncionario.caption := qregistro.NomedoCodigo(_funcionario, cd);
end;

procedure TfrmLocalizarTreinamento.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmLocalizarTreinamento.tbvKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  exportarexcel(Key, sender);
end;

procedure TfrmLocalizarTreinamento.FormCreate(Sender: TObject);
begin
  q := tclassequery.create;
  TRegistro.SetQueryLocalizar(q, dts, tbv);
  AbrirTabelas;
end;

procedure TfrmLocalizarTreinamento.FormDestroy(Sender: TObject);
begin
  freeandnil(q);
end;

procedure TfrmLocalizarTreinamento.AbrirTabelas;
begin
  cbxcdtptreinamento.Properties.ListSource := abrir_tabela(_tptreinamento);
end;

procedure TfrmLocalizarTreinamento.cbxcdtptreinamentoEnter(Sender: TObject);
begin
  abrir_tabela(_tptreinamento);
  colorenter(sender);
end;

procedure TfrmLocalizarTreinamento.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLocalizarTreinamento.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLocalizarTreinamento.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmLocalizarTreinamento.actexcelExecute(Sender: TObject);
begin
  exportarexcel(grd);
end;

procedure TfrmLocalizarTreinamento.actagruparExecute(Sender: TObject);
begin
  tbv.OptionsView.GroupByBox := btnagrupar.down;
end;

procedure TfrmLocalizarTreinamento.actfiltroExecute(Sender: TObject);
begin
  tbv.FilterRow.Visible := btnfiltro.down;
end;

procedure TfrmLocalizarTreinamento.actlimparcriterioExecute(Sender: TObject);
begin
  TLocalizar.LimparCriterio(self);
end;

procedure TfrmLocalizarTreinamento.actmodogradeExecute(Sender: TObject);
begin
  TRegistro.SetModoGrade(actmodograde.Checked, q, tbv);
end;

procedure TfrmLocalizarTreinamento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfrmLocalizarTreinamento.tbvDblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

end.
