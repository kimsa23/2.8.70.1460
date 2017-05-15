unit usetchangetarefa;

interface

uses forms, Classes, sysutils, dialogs, Controls, StdCtrls, Mask, Buttons, ComCtrls,
  ExtCtrls, Menus, 
  udatahora, uconstantes, ustrings, uregistro, urotinas,
  uDtmMain,
  classeempresa, classesqlmontar, classeretornasql, classeexecutasql, classeform, classetarefa,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGraphics, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxButtonEdit, cxCheckBox,
  cxCalc, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxStatusBar, cxLookAndFeelPainters,
  cxButtons, cxGroupBox, cxCurrencyEdit, cxLookAndFeels, dxCore, cxDateUtils;

type
  Tfrmsetchangetarefa = class(TForm)
    lblstatus: TLabel;
    lbldtemissao: TLabel;
    Label21: TLabel;
    lbldtprevisao: TLabel;
    btnCancelar: TcxButton;
    btnok: TcxButton;
    edtdtEmissao: TcxDateEdit;
    cbxcdsttarefa: TcxLookupComboBox;
    edtdtprevisao: TcxDateEdit;
    cbxcdtptarefa: TcxLookupComboBox;
    lbldtvencimento: TLabel;
    edtdttermino: TcxDateEdit;
    lbltptarefa1: TLabel;
    cbxcdtptarefa1: TcxLookupComboBox;
    lblprioridade: TLabel;
    cbxcdprioridade: TcxLookupComboBox;
    lblduplicata: TLabel;
    edtdstag: TcxTextEdit;
    cbxcdprojeto: TcxLookupComboBox;
    lblprojeto: TLabel;
    ckbencaminhamento: TcxCheckBox;
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grdDBTableView1DblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure cbxcdtptarefaEnter(Sender: TObject);
    procedure eventokeypress(Sender: TObject; var Key: Char);
    procedure cbxcdtptarefa1Enter(Sender: TObject);
    procedure cbxcdprioridadeEnter(Sender: TObject);
    procedure cbxcdsttarefaEnter(Sender: TObject);
    procedure cbxcdprojetoEnter(Sender: TObject);
  private   { Private declarations }
    tarefa : TTarefa;
    procedure set_tarefa;
  public    { Public declarations }
  end;

function Set_Change_Tarefa(tarefa: TTarefa):boolean;

var
  frmsetchangetarefa: Tfrmsetchangetarefa;

implementation

uses Variants;

{$R *.DFM}

function Set_Change_Tarefa(tarefa: TTarefa):boolean;
begin
  frmsetchangetarefa := Tfrmsetchangetarefa.Create(application);
  try
    frmsetchangetarefa.tarefa := tarefa;
    frmsetchangetarefa.showmodal;
    frmsetchangetarefa.set_tarefa;
    result := frmsetchangetarefa.ModalResult = mrok;
  finally
    frmsetchangetarefa.Free;
  end;
end;

procedure Tfrmsetchangetarefa.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmsetchangetarefa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
  begin
    modalresult := mrcancel;
  end;
end;

procedure Tfrmsetchangetarefa.grdDBTableView1DblClick(Sender: TObject);
begin
  if btnok.enabled then
  begin
    btnOkClick(sender);
  end;
end;

procedure Tfrmsetchangetarefa.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmsetchangetarefa.FormCreate(Sender: TObject);
begin
  cbxcdsttarefa.Properties.ListSource   := abrir_tabela(_sttarefa);
  cbxcdtptarefa.Properties.ListSource   := abrir_tabela(_tptarefa);
  cbxcdprioridade.Properties.ListSource := abrir_tabela(_prioridade);
  cbxcdprojeto.Properties.ListSource    := abrir_tabela(_projeto);
  cbxcdtptarefa1.Properties.ListSource  := abrir_tabela(_tptarefa1);
end;

procedure Tfrmsetchangetarefa.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmsetchangetarefa.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmsetchangetarefa.cbxcdtptarefaEnter(Sender: TObject);
begin
  abrir_tabela(_tptarefa);
  colorenter(sender);
end;

procedure Tfrmsetchangetarefa.eventokeypress(Sender: TObject; var Key: Char);
begin
  TQForm.KeyPressControl(key);
end;

procedure Tfrmsetchangetarefa.cbxcdtptarefa1Enter(Sender: TObject);
begin
  abrir_tabela(_tptarefa1);
  colorenter(sender);
end;

procedure Tfrmsetchangetarefa.cbxcdprioridadeEnter(Sender: TObject);
begin
  abrir_tabela(_prioridade);
  colorenter(sender);
end;

procedure Tfrmsetchangetarefa.cbxcdprojetoEnter(Sender: TObject);
begin
  abrir_tabela(_projeto);
  colorenter(sender);
end;

procedure Tfrmsetchangetarefa.cbxcdsttarefaEnter(Sender: TObject);
begin
  colorEnter(sender);
  abrir_tabela(_sttarefa);
end;

procedure Tfrmsetchangetarefa.set_tarefa;
begin
  tarefa.dtemissao  := edtdtEmissao.Date;
  tarefa.dtprevisao := edtdtprevisao.Date;
  tarefa.dttermino  := edtdttermino.Date;
  if not VarIsNull(cbxcdsttarefa.EditValue)   then
  begin
    tarefa.cdsttarefa := cbxcdsttarefa.EditValue;
  end;
  if not VarIsNull(cbxcdtptarefa.EditValue)   then
  begin
    tarefa.cdtptarefa := cbxcdtptarefa.EditValue;
  end;
  if not VarIsNull(cbxcdtptarefa1.EditValue)  then
  begin
    tarefa.cdtptarefa1 := cbxcdtptarefa1.EditValue;
  end;
  if not VarIsNull(cbxcdprojeto.EditValue)    then
  begin
    tarefa.cdprojeto := cbxcdprojeto.EditValue;
  end;
  if not VarIsNull(cbxcdprioridade.EditValue) then
  begin
    tarefa.cdprioridade := cbxcdprioridade.EditValue;
  end;
  tarefa.boencaminhamento := ckbencaminhamento.Checked;
  tarefa.dstag := edtdstag.Text;
  tarefa.cdempresa := empresa.cdempresa;
end;

end.
