unit udlgjustificativa;

interface

uses
  System.Actions, System.UITypes,
  forms, Menus, StdCtrls, Spin, Controls, Dialogs, Classes, ExtCtrls, sysutils,
  uConstantes,
  classeretornasql, classeempresa,ComCtrls, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxTextEdit, cxMemo,
  cxButtons;

type
  Tfrmdlgjustificativa = class(TForm)
    btn3: TcxButton;
    btn4: TcxButton;
    memjustificativa: TcxMemo;
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
  private { Private declarations }
  public { Public declarations }
  end;

function DialogoJustificativa(dstitulo:string; var dsjustificativa:string):boolean;

var
  frmdlgjustificativa: Tfrmdlgjustificativa;

implementation

{$R *.dfm}

function DialogoJustificativa(dstitulo:string; var dsjustificativa:string):boolean;
begin
  result := false;
  frmdlgjustificativa := Tfrmdlgjustificativa.Create(nil);
  try
    frmdlgjustificativa.Caption := dstitulo;
    frmdlgjustificativa.showmodal;
    if frmdlgjustificativa.ModalResult = mrok then
    begin
      dsjustificativa := frmdlgjustificativa.memjustificativa.Text;
      result          := true;
    end;
  finally
    freeandnil(frmdlgjustificativa);
  end;
end;

procedure Tfrmdlgjustificativa.btn3Click(Sender: TObject);
begin
  if memjustificativa.Text = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Justificativa]), mtinformation, [mbok], 0);
    memjustificativa.SetFocus;
    Abort;
  end;
  ModalResult := mrOk;
end;

procedure Tfrmdlgjustificativa.btn4Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmdlgjustificativa.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure Tfrmdlgjustificativa.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

end.
