unit ufiltrartarefa;

interface

uses forms, Classes, sysutils, dialogs, Controls, StdCtrls, Mask, Buttons, ComCtrls,
  ExtCtrls,
  Grids, sqlexpr,
  udatahora, uconstantes, ustrings, uregistro, urotinas,
  ulocalizarCliente, uDtmMain,
  classeempresa, classesqlmontar, classeretornasql, classeexecutasql, classeform,
  cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB,
  DBClient, Provider, cxButtonEdit, cxCheckBox, cxCalc, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxStatusBar, cxLookAndFeelPainters, Menus,
  cxButtons, cxGroupBox, cxCurrencyEdit, cxLookAndFeels, dxCore, cxDateUtils,
  Data.FMTBcd;

type
  TfrmFiltrarTarefa = class(TForm)
    lblstatus: TLabel;
    lbldtemissao: TLabel;
    Label21: TLabel;
    lblCliente: TLabel;
    Label4: TLabel;
    lbldtprevisao: TLabel;
    Label5: TLabel;
    btnCancelar: TcxButton;
    btnok: TcxButton;
    edtdtEmissaoi: TcxDateEdit;
    cbxcdsttarefa: TcxLookupComboBox;
    edtDtemissaoF: TcxDateEdit;
    edtdtprevisaoi: TcxDateEdit;
    edtdtprevisaof: TcxDateEdit;
    cbxcdtptarefa: TcxLookupComboBox;
    cbxcdcliente: TcxLookupComboBox;
    btnfindcliente: TcxButton;
    edtcdcliente: TcxTextEdit;
    lbldtvencimento: TLabel;
    edtdtterminoi: TcxDateEdit;
    lblatevencimento: TLabel;
    edtdtterminof: TcxDateEdit;
    lbltptarefa1: TLabel;
    cbxcdtptarefa1: TcxLookupComboBox;
    lblprioridade: TLabel;
    cbxcdprioridade: TcxLookupComboBox;
    lblcriador: TLabel;
    cbxcdfuncionario: TcxLookupComboBox;
    lblduplicata: TLabel;
    edtdstag: TcxTextEdit;
    lblnmtarefa: TLabel;
    edtcdtarefa: TcxTextEdit;
    lblcditcontcliente: TLabel;
    cbxcditcontcliente: TcxLookupComboBox;
    sdsitcontcliente: TSQLDataSet;
    dspitcontcliente: TDataSetProvider;
    cdsitcontcliente: TClientDataSet;
    dtsitcontcliente: TDataSource;
    lblacompanhamento: TLabel;
    edtacompanhamento: TcxTextEdit;
    lblacao: TLabel;
    edtacao: TcxTextEdit;
    cbxcdprojeto: TcxLookupComboBox;
    lblprojeto: TLabel;
    edtnmtarefa: TcxTextEdit;
    lbl1: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdDBTableView1DblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure btnfindclienteClick(Sender: TObject);
    procedure cbxcdtptarefaEnter(Sender: TObject);
    procedure cbxcdclienteEnter(Sender: TObject);
    procedure edtcdclienteEnter(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure cbxcdclienteExit(Sender: TObject);
    procedure cbxcdtptarefa1Enter(Sender: TObject);
    procedure cbxcdprioridadeEnter(Sender: TObject);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure cbxcdsttarefaEnter(Sender: TObject);
    procedure cbxcdprojetoEnter(Sender: TObject);
  private   { Private declarations }
    function sqlwhere:string;
    procedure atualizarContatocliente;
  public    { Public declarations }
  end;

function FiltrarTarefa:string;

var
  frmFiltrarTarefa: TfrmFiltrarTarefa;

implementation


{$R *.DFM}

function FiltrarTarefa:string;
begin
  frmFiltrarTarefa := tfrmFiltrarTarefa.Create(application);
  try
    frmFiltrarTarefa.showmodal;
    result := ' ';
    if frmFiltrarTarefa.ModalResult = mrok then
    begin
      result := frmFiltrarTarefa.sqlwhere;
    end;
  finally
    frmFiltrarTarefa.Free;
  end;
end;

function TfrmFiltrarTarefa.sqlwhere:string;
var
  t :integer;
begin
  result := ' ';
  t      := length(result);
  if edtcdtarefa.Text <> '' then
  begin
    result := result + 'where t.cdtarefa='+edtcdtarefa.Text+' ';
  end;
  sqlmontarnomelike(edtdstag.Text             , _t, _dstag            , result, t);
  sqlmontarnomelike(edtnmtarefa.Text          , _t, _nm+_tarefa       , result, t);
  sqlmontarnomelike(edtacompanhamento.Text    , _t+_a, _dsobservacao  , result, t);
  sqlmontarnomelike(edtacao.Text              , _a, _dsobservacao     , result, t);
  sqlmontarcodigo(cbxcdCliente.EditValue      , _t, _cdCLIENTE        , result, t);
  sqlmontarcodigo(cbxcditcontcliente.EditValue, _t, _cditcontcliente  , result, t);
  sqlmontarcodigo(cbxcdtptarefa.EditValue     , _t, _cd+_tp+_tarefa   , result, t);
  sqlmontarcodigo(cbxcdprioridade.EditValue   , _t, _cdprioridade     , result, t);
  sqlmontarcodigo(cbxcdprojeto.EditValue      , _t, _cd+_projeto      , result, t);
  sqlmontarcodigo(cbxcdfuncionario.EditValue  , _t, _cdfuncionario    , result, t);
  sqlmontarcodigo(cbxcdtptarefa1.EditValue    , _t, _cd+_tp+_tarefa+_1, result, t);
  sqlmontarcodigo(cbxcdsttarefa.EditValue     , _t, _cd+_st+_tarefa   , result, t);
  sqlmontardata  (edtdtemissaoi.text , edtdtemissaof.text , _t, _dtemissao , result, t);
  sqlmontardata  (edtdtterminoi.text , edtdtterminof.text , _t, _dttermino , result, t);
  sqlmontardata  (edtdtprevisaoi.text, edtdtprevisaof.text, _t, _dtprevista, result, t);
end;

procedure TfrmFiltrarTarefa.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmFiltrarTarefa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmFiltrarTarefa.grdDBTableView1DblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmFiltrarTarefa.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFiltrarTarefa.FormCreate(Sender: TObject);
begin
  cbxcdsttarefa.Properties.ListSource    := abrir_tabela(_sttarefa);
  cbxcdtptarefa.Properties.ListSource    := abrir_tabela(_tptarefa);
  cbxcdprioridade.Properties.ListSource  := abrir_tabela(_prioridade);
  cbxcdprojeto.Properties.ListSource     := abrir_tabela(_projeto);
  cbxcdfuncionario.Properties.ListSource := abrir_tabela(_funcionario);
  cbxcdtptarefa1.Properties.ListSource   := abrir_tabela(_tptarefa+_1);
  cbxcdcliente.Properties.ListSource     := abrir_tabela(_cliente);
end;

procedure TfrmFiltrarTarefa.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmFiltrarTarefa.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmFiltrarTarefa.btnfindclienteClick(Sender: TObject);
var
  cd : integer;
begin
  cd := Localizarcliente;
  if cd <> 0 then
  begin
    cbxcdcliente.EditValue := cd.tostring;
    edtcdcliente.Text      := cd.tostring;
  end;
  atualizarContatocliente;
end;

procedure TfrmFiltrarTarefa.cbxcdtptarefaEnter(Sender: TObject);
begin
  abrir_tabela(_tptarefa);
  colorenter(sender);
end;

procedure TfrmFiltrarTarefa.cbxcdclienteEnter(Sender: TObject);
begin
  abrir_tabela(_cliente);
  colorenter(sender);
end;

procedure TfrmFiltrarTarefa.edtcdclienteEnter(Sender: TObject);
begin
  abrir_tabela(_cliente);
  colorenter(sender);
end;

procedure TfrmFiltrarTarefa.edtcdclienteExit(Sender: TObject);
begin
  if TQForm.EditLocalizarExit(self, _cliente, _cliente) then
  begin
    cbxcdcliente.EditValue := edtcdcliente.Text
  end
  else
  begin
    cbxcdcliente.Clear;
  end;
  colorexit(Sender);
  atualizarContatocliente;  
end;

procedure TfrmFiltrarTarefa.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmFiltrarTarefa.cbxcdclienteExit(Sender: TObject);
begin
  if cbxcdcliente.Text = '' then edtcdcliente.Clear
                            else edtcdcliente.Text := cbxcdcliente.EditValue;
  colorexit(sender);
  atualizarContatocliente;
end;

procedure TfrmFiltrarTarefa.cbxcdtptarefa1Enter(Sender: TObject);
begin
  abrir_tabela(_tptarefa+_1);
  colorenter(sender);
end;

procedure TfrmFiltrarTarefa.cbxcdprioridadeEnter(Sender: TObject);
begin
  abrir_tabela(_prioridade);
  colorenter(sender);
end;

procedure TfrmFiltrarTarefa.cbxcdprojetoEnter(Sender: TObject);
begin
  abrir_tabela(_projeto);
  colorenter(sender);
end;

procedure TfrmFiltrarTarefa.cbxcdfuncionarioEnter(Sender: TObject);
begin
  abrir_tabela(_funcionario);
  colorenter(sender);
end;

procedure TfrmFiltrarTarefa.cbxcdsttarefaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_sttarefa);
end;

procedure TfrmFiltrarTarefa.atualizarContatocliente;
begin
  cdsitcontcliente.Close;
  sdsitcontcliente.Close;
  if edtcdcliente.Text = '' then
  begin
    Exit;
  end;
  sdsitcontcliente.Parambyname(_cdempresa).AsLargeint := empresa.cdempresa;
  sdsitcontcliente.Parambyname(_cdcliente).AsString := edtcdcliente.Text;
  cdsitcontcliente.Open;
end;

end.
