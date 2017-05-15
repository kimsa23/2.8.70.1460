unit ufiltrarProjeto;

interface

uses forms, Classes, sysutils, dialogs, Controls, StdCtrls, Mask, Buttons, ComCtrls,
  ExtCtrls,
  udatahora, uconstantes, ustrings, uregistro, urotinas,
  ulocalizarCliente, uDtmMain,classesqlmontar, classeretornasql, classeexecutasql, classeform,
  cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DB,
  cxButtonEdit, cxCheckBox, cxCalc, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxStatusBar, cxLookAndFeelPainters, Menus,
  cxButtons, cxGroupBox, cxCurrencyEdit, cxLookAndFeels, dxCore, cxDateUtils,
  ClasseLocalizar;

type
  TfrmFiltrarProjeto = class(TForm)
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
    cbxcdstprojeto: TcxLookupComboBox;
    edtDtemissaoF: TcxDateEdit;
    edtdtprevisaoi: TcxDateEdit;
    edtdtprevisaof: TcxDateEdit;
    cbxcdtpprojeto: TcxLookupComboBox;
    lbldtvencimento: TLabel;
    edtdtterminoi: TcxDateEdit;
    lblatevencimento: TLabel;
    edtdtterminof: TcxDateEdit;
    lbltpprojeto1: TLabel;
    cbxcdtpprojeto1: TcxLookupComboBox;
    lblprioridade: TLabel;
    cbxcdprioridade: TcxLookupComboBox;
    lblcriador: TLabel;
    cbxcdfuncionario: TcxLookupComboBox;
    lblduplicata: TLabel;
    edtdstag: TcxTextEdit;
    lblnmprojeto: TLabel;
    edtnmprojeto: TcxTextEdit;
    edtcdcliente: TcxButtonEdit;
    lblnmcliente: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdDBTableView1DblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdtpprojetoEnter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure cbxcdtpprojeto1Enter(Sender: TObject);
    procedure cbxcdprioridadeEnter(Sender: TObject);
    procedure cbxcdfuncionarioEnter(Sender: TObject);
    procedure cbxcdstprojetoEnter(Sender: TObject);
    procedure edtcdclienteExit(Sender: TObject);
    procedure edtcdclienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtcdclientePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private   { Private declarations }
    function sqlwhere:string;
  public    { Public declarations }
  end;

function FiltrarProjeto:string;

var
  frmFiltrarProjeto: TfrmFiltrarProjeto;

implementation


{$R *.DFM}

function FiltrarProjeto:string;
begin
  frmFiltrarProjeto := tfrmFiltrarProjeto.Create(application);
  try
    frmFiltrarProjeto.showmodal;
    result := ' ';
    if frmFiltrarProjeto.ModalResult = mrok then
    begin
      result := frmFiltrarProjeto.sqlwhere;
    end;
  finally
    frmFiltrarProjeto.Free;
  end;
end;

function TfrmFiltrarProjeto.sqlwhere:string;
var
  t :integer;
begin
  result := ' ';
  t      := length(result);
  sqlmontarnomelike(edtdstag.Text            , _t, _dstag        , result, t);
  sqlmontarnomelike(edtnmprojeto.Text        , _t, _nm+_projeto     , result, t);
  sqlmontarcodigo(cbxcdtpprojeto.EditValue   , _t, _cdtp+_projeto   , result, t);
  sqlmontarcodigo(cbxcdprioridade.EditValue  , _t, _cdprioridade , result, t);
  sqlmontarcodigo(cbxcdfuncionario.EditValue , _t, _cdfuncionario, result, t);
  sqlmontarcodigo(cbxcdtpprojeto1.EditValue  , _t, _cd+_tp+_projeto+_1, result, t);
  sqlmontarcodigo(cbxcdstprojeto.EditValue   , _t, _cd+_st+_projeto   , result, t);
  sqlmontardata  (edtdtemissaoi.text , edtdtemissaof.text , _t, _dtemissao , result, t);
  sqlmontardata  (edtdtterminoi.text , edtdtterminof.text , _t, _dttermino , result, t);
  sqlmontardata  (edtdtprevisaoi.text, edtdtprevisaof.text, _t, _dtprevisao, result, t);
end;

procedure TfrmFiltrarProjeto.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmFiltrarProjeto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure TfrmFiltrarProjeto.grdDBTableView1DblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure TfrmFiltrarProjeto.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFiltrarProjeto.FormCreate(Sender: TObject);
begin
  cbxcdstprojeto.Properties.ListSource   := abrir_tabela(_st+_projeto);
  cbxcdtpprojeto.Properties.ListSource   := abrir_tabela(_tp+_projeto);
  cbxcdprioridade.Properties.ListSource := abrir_tabela(_prioridade);
  cbxcdfuncionario.Properties.ListSource := abrir_tabela(_funcionario);
  cbxcdtpprojeto1.Properties.ListSource  := abrir_tabela(_tp+_projeto+_1);
end;

procedure TfrmFiltrarProjeto.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmFiltrarProjeto.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmFiltrarProjeto.cbxcdtpprojetoEnter(Sender: TObject);
begin
  abrir_tabela(_tp+_projeto);
  colorenter(sender);
end;

procedure TfrmFiltrarProjeto.edtcdclienteExit(Sender: TObject);
begin
  TQForm.EditLocalizarExit(self, _cliente, _Cliente);
  colorexit(sender);
end;

procedure TfrmFiltrarProjeto.edtcdclienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = __KeySearch then
  begin
    edtcdclientePropertiesButtonClick(sender, 0);
  end;
end;

procedure TfrmFiltrarProjeto.edtcdclientePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  tlocalizar.edtcdclientePropertiesButtonClick(edtcdcliente, lblnmcliente);
end;

procedure TfrmFiltrarProjeto.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure TfrmFiltrarProjeto.cbxcdtpprojeto1Enter(Sender: TObject);
begin
  abrir_tabela(_tp+_projeto+_1);
  colorenter(sender);
end;

procedure TfrmFiltrarProjeto.cbxcdprioridadeEnter(Sender: TObject);
begin
  abrir_tabela(_prioridade);
  colorenter(sender);
end;

procedure TfrmFiltrarProjeto.cbxcdfuncionarioEnter(Sender: TObject);
begin
  abrir_tabela(_funcionario);
  colorenter(sender);
end;

procedure TfrmFiltrarProjeto.cbxcdstprojetoEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_st+_projeto);
end;

end.
