unit udlgchaveuso;

interface

uses forms, Windows, StdCtrls, Controls, Classes, dialogs,
  ShellAPI, sysutils,
  uConstantes,
  cxButtons, cxPC, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus;

type
  Tfrmdlgchaveuso = class(TForm)
    lbl: TLabel;
    btncancelar: TcxButton;
    btnok: TcxButton;
    edtnuchaveuso: TEdit;
    lblnucnpj: TLabel;
    edtnucnpj: TEdit;
    lblrzsocial: TLabel;
    edtrzsocial: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure lbl2Click(Sender: TObject);
  private    { Private declarations }
  public    { Public declarations }
  end;

Function Informe_Chave_uso(rzsocial, nucnpj, dtvalidade:string; var chave : string):boolean;

var
  frmdlgchaveuso: Tfrmdlgchaveuso;

implementation

{$R *.dfm}

Function Informe_Chave_uso(rzsocial, nucnpj, dtvalidade:string; var chave : string):boolean;
begin
  frmdlgchaveuso := tfrmdlgchaveuso.create(nil);
  try
    frmdlgchaveuso.edtnucnpj.Text   := nucnpj;
    frmdlgchaveuso.edtrzsocial.Text := rzsocial;
    frmdlgchaveuso.Caption          := frmdlgchaveuso.Caption + ' - Validade '+dtvalidade;
    //frmdlgchaveuso.ModalResult := mrNone;
    frmdlgchaveuso.ShowModal;
    if frmdlgchaveuso.ModalResult <> mrCancel then
    begin
      chave := frmdlgchaveuso.edtnuchaveuso.Text;
    end;
    result := frmdlgchaveuso.ModalResult = mrok;
  finally
    frmdlgchaveuso.Free;
  end;
end;

procedure Tfrmdlgchaveuso.lbl2Click(Sender: TObject);
begin
  ShellExecute(Handle, _open, 'http://www.horariodebrasilia.org/', Nil, Nil, SW_SHOWDEFAULT);
end;

end.
