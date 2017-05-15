unit uRichEdit;

interface

uses
  System.Actions, System.UITypes,
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Dialogs, ImgList, StdCtrls, ComCtrls, BandActn, StdActns, ExtActns, ActnList,
  ToolWin, ExtCtrls, ActnMan, ActnCtrls, ActnMenus,
  uconstantes, usystem, uprogressbar;

type
  TfrmRichEdit = class(TForm)
    rce: TRichEdit;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    act: TActionList;
    actSalvar: TAction;
    StatusBar1: TStatusBar;
    procedure actSalvarExecute(Sender: TObject);
  private { Private declarations }
  public { Public declarations }
  end;

Function ExibirSaidaVideo(linha:TStrings; windowstate: TWindowState=wsnormal; plaintext:boolean = true):boolean;overload;
Function ExibirSaidaVideo(linha:String; windowstate: TWindowState=wsnormal; plaintext:boolean = true):boolean;overload;

var
  frmRichEdit: TfrmRichEdit;

implementation

{$R *.dfm}

Function ExibirSaidaVideo(linha:TStrings; windowstate: TWindowState=wsnormal; plaintext:boolean = true):boolean;
var
  limite, i: integer;
begin
  frmRichEdit    := TfrmRichEdit.Create(application);
  try
    with frmrichedit do
    begin
      WindowState   := windowstate;
      rce.PlainText := plaintext;
      limite        := linha.Count;
      if limite > 10000 then
      begin
        messagedlg('Houve '+inttostr(linha.Count)+' erros.'#13'Serão exibidos somente '+inttostr(limite)+'.', mtinformation, [mbok], 0);
        limite := 10000;
      end;
      for i := 0 to limite - 1 do
      begin
        application.ProcessMessages;
        rce.Lines.add(linha[i]);
      end;
      ShowModal;
    end;
    result := true;
  finally
    freeandnil(frmRichEdit);
  end;
end;

Function ExibirSaidaVideo(linha:String; windowstate: TWindowState=wsnormal; plaintext:boolean = true):boolean;
begin
  frmRichEdit := TfrmRichEdit.Create(application);
  try
    with frmrichedit do
    begin
      WindowState    := windowstate;
      rce.PlainText  := plaintext;
      rce.Lines.Text := linha;
      ShowModal;
    end;
    result := true;
  finally
    freeandnil(frmRichEdit);
  end;
end;

procedure TfrmRichEdit.actSalvarExecute(Sender: TObject);
begin
  SalvarArquivo(rce);
end;

end.
