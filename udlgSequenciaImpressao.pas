unit udlgSequenciaImpressao;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, StdCtrls, Spin, Controls, Dialogs, Classes, ExtCtrls, sysutils, SqlExpr,
  uConstantes,
  classeretornasql,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxButtons, cxPC, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit,
  cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxCalendar;

type
  Tfrmdlgsequenciaimpressao = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    edtinicio: TcxSpinEdit;
    edttermino: TcxSpinEdit;
    btn3: TcxButton;
    btn4: TcxButton;
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure edtinicioExit(Sender: TObject);
    procedure edtterminoExit(Sender: TObject);
  private { Private declarations }
    procedure verificar_inicio;
    function  verificar_sequencia:Boolean;
  public { Public declarations }
  end;

function SequenciaImpressao(exibe: string; var inicio, termino: integer):boolean;

var
  frmdlgsequenciaimpressao: Tfrmdlgsequenciaimpressao;

implementation

{$R *.dfm}

function SequenciaImpressao(exibe: string; var inicio, termino: integer):boolean;
begin
  result := false;
  frmdlgsequenciaimpressao := Tfrmdlgsequenciaimpressao.Create(nil);
  try
    frmdlgsequenciaimpressao.Caption              := frmdlgsequenciaimpressao.Caption+' '+exibe;
    frmdlgsequenciaimpressao.showmodal;
    if frmdlgsequenciaimpressao.ModalResult = mrok then
    begin
      inicio  := frmdlgsequenciaimpressao.edtinicio.Value;
      termino := frmdlgsequenciaimpressao.edttermino.Value;
      result  := true;
    end;
  finally
    freeandnil(frmdlgsequenciaimpressao);
  end;
end;

procedure Tfrmdlgsequenciaimpressao.btn3Click(Sender: TObject);
begin
  verificar_inicio;
  ModalResult := mrOk;
end;

procedure Tfrmdlgsequenciaimpressao.btn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlgsequenciaimpressao.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdlgsequenciaimpressao.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure Tfrmdlgsequenciaimpressao.verificar_inicio;
begin
  if edtinicio.Text = _0 then
  begin
    MessageDlg('Sequência tem que ser maior que zero.', mtinformation, [mbok], 0);
    edtinicio.SetFocus;
    Abort;
  end;
end;

procedure Tfrmdlgsequenciaimpressao.edtinicioExit(Sender: TObject);
begin
  verificar_inicio;
  if (edtinicio.Text <> '') and (edtinicio.Text <> _0) then
  begin
    if edttermino.Text = _0 then
    begin
      edttermino.Text := edtinicio.Text;
    end;
    if not verificar_sequencia then
    begin
      edtinicio.SetFocus;
      abort;
    end;
  end;
  colorexit(sender);
end;

procedure Tfrmdlgsequenciaimpressao.edtterminoExit(Sender: TObject);
begin
  if (edttermino.Text <> '') and (edttermino.Text <> _0) then
  begin
    verificar_inicio;
    if not verificar_sequencia then
    begin
      edttermino.SetFocus;
      Abort;
    end;
  end;
  colorexit(sender);
end;

function Tfrmdlgsequenciaimpressao.verificar_sequencia: Boolean;
begin
  result := True;
  if edtinicio.Value > edttermino.Value then
  begin
    MessageDlg('Numeração tem que estar em sequência.', mtinformation, [mbok], 0);
    result := False;
  end;
end;

end.
