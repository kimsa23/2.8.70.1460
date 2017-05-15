unit uNovaMensagem;

interface

uses
  System.Actions, System.UITypes,
  Forms, SysUtils, Windows, Messages, Classes, Graphics, Controls, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls, ClipBrd, ToolWin, ActnList, ImgList,
  RichEdit, ShellAPI,
  Grids, SqlExpr,
  urotinas, uregistro, upara, ustrings, uConstantes,
  classeexecutasql, classeempresa, System.ImageList;

type
  TfrmNovaMensagem = class(TForm)
    MainMenu: TMainMenu;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    FilePrintItem: TMenuItem;
    FileExitItem: TMenuItem;
    EditUndoItem: TMenuItem;
    EditCutItem: TMenuItem;
    EditCopyItem: TMenuItem;
    EditPasteItem: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    PrintDialog: TPrintDialog;
    FontDialog1: TFontDialog;
    N5: TMenuItem;
    miEditFont: TMenuItem;
    Editor: TRichEdit;
    StandardToolBar: TToolBar;
    OpenButton: TToolButton;
    SaveButton: TToolButton;
    PrintButton: TToolButton;
    ToolButton5: TToolButton;
    UndoButton: TToolButton;
    CutButton: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    ToolButton10: TToolButton;
    FontName: TComboBox;
    FontSize: TEdit;
    ToolButton11: TToolButton;
    UpDown1: TUpDown;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolButton16: TToolButton;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    ToolButton20: TToolButton;
    BulletsButton: TToolButton;
    ToolbarImages: TImageList;
    ActionList1: TActionList;
    actFileNewCmd: TAction;
    actFileOpenCmd: TAction;
    actFileSaveCmd: TAction;
    actFilePrintCmd: TAction;
    actFileExitCmd: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    actEditCutCmd: TAction;
    actEditCopyCmd: TAction;
    actEditPasteCmd: TAction;
    actEditUndoCmd: TAction;
    actEditFontCmd: TAction;
    actFileSaveAsCmd: TAction;
    N3: TMenuItem;
    ToolButton3: TToolButton;
    actEnviar: TAction;
    Enviar1: TMenuItem;
    N1: TMenuItem;
    pnl: TPanel;
    btnpara: TButton;
    edtdestino: TEdit;
    edtAssunto: TEdit;
    Label1: TLabel;
    actExibirPara: TAction;
    procedure SelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FileNew(Sender: TObject);
    procedure FileOpen(Sender: TObject);
    procedure FileSave(Sender: TObject);
    procedure FileSaveAs(Sender: TObject);
    procedure FilePrint(Sender: TObject);
    procedure FileExit(Sender: TObject);
    procedure EditUndo(Sender: TObject);
    procedure EditCut(Sender: TObject);
    procedure EditCopy(Sender: TObject);
    procedure EditPaste(Sender: TObject);
    procedure SelectFont(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BoldButtonClick(Sender: TObject);
    procedure ItalicButtonClick(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure AlignButtonClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure UnderlineButtonClick(Sender: TObject);
    procedure BulletsButtonClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RulerItemMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RulerItemMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FirstIndMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure LeftIndMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RightIndMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure RichEditChange(Sender: TObject);
    procedure ActionList2Update(Action: TBasicAction; var Handled: Boolean);
    procedure actEnviarExecute(Sender: TObject);
    procedure actExibirParaExecute(Sender: TObject);
  private
    tipo     : string;
    FFileName: string;
    FUpdating: Boolean;
    FDragOfs: Integer;
    FDragging: Boolean;
    function CurrText: TTextAttributes;
    procedure GetFontNames;
    procedure SetFileName(const FileName: String);
    procedure CheckFileSave;
    procedure SetupRuler;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    procedure PerformFileOpen(const AFileName: string);
    procedure SetModified(Value: Boolean);
  end;

var
  frmNovaMensagem: TfrmNovaMensagem;

function NovaMensagem   (var titulo: string; cdfuncionario: TStrings; rce : TRichEdit):boolean;
procedure Abrir_mensagem(titulo:string; rce:Trichedit);

implementation

resourcestring
  sSaveChanges = 'Salvar alterações para %s?';
  sOverWrite = 'OK para Sobrescrever %s';
  sUntitled = 'Nova Mensagem';
  sModified = 'Modificado';
  sColRowInfo = 'Linha: %3d   Coluna: %3d';

const
  RulerAdj = 4/3;
  GutterWid = 6;

  ENGLISH = (SUBLANG_ENGLISH_US shl 10) or LANG_ENGLISH;
  FRENCH  = (SUBLANG_FRENCH shl 10) or LANG_FRENCH;
  GERMAN  = (SUBLANG_GERMAN shl 10) or LANG_GERMAN;

{$R *.dfm}

procedure montar_funcionario(cdfuncionario:TStrings; lstfuncionario:string);
var
  x, i : integer;
  codigo, nmfuncionario : string;
begin
  x := 1;
  for i := 1 to length(lstfuncionario) do
  begin
    if lstfuncionario[i] = ';' then
    begin
      nmfuncionario := copy(lstfuncionario, x, i - x);
      codigo := qregistro.CodigodoNome(_funcionario, nmfuncionario);
      if codigo <> '' then
      begin
        cdfuncionario.add(codigo);
      end;
      x := i + 1;
    end;
  end;
  nmfuncionario := copy(lstfuncionario, x, length(lstfuncionario));
  codigo        := qregistro.CodigodoNome(_funcionario, nmfuncionario);
  if codigo <> '' then
  begin
     cdfuncionario.add(codigo);
  end;
end;

function NovaMensagem(var titulo: string; cdfuncionario : TStrings; rce: TRichEdit):boolean;
var
  filename : string;
begin
  result := false;
  Application.CreateForm(TfrmNovaMensagem, frmNovaMensagem);
  try
    frmnovamensagem.tipo                   := 'nova';
    frmNovaMensagem.showmodal;
    if frmNovaMensagem.ModalResult = mrok then
    begin
      titulo := frmnovamensagem.edtAssunto.Text;
      montar_funcionario(cdfuncionario, frmnovamensagem.edtdestino.Text);
      filename := NomeTabelaTemporaria;
      frmnovamensagem.Editor.Lines.SaveToFile(filename);
      rce.Lines.LoadFromFile(filename);
      sysutils.DeleteFile(filename);
      result := true;
    end;
  finally
   freeandnil(frmNovaMensagem);
  end;
end;

procedure Abrir_mensagem(titulo:string; rce:Trichedit);
var
  filename : string;
begin
  filename := NomeTabelaTemporaria;
  frmNovaMensagem := TfrmNovaMensagem.Create(nil);
  try
    frmnovamensagem.tipo                   := 'abrir';
    frmnovamensagem.edtAssunto.Text        := titulo;
    frmnovamensagem.edtAssunto.Enabled     := false;
    frmnovamensagem.edtAssunto.BorderStyle := bsnone;
    frmnovamensagem.edtdestino.Visible     := false;
    frmnovamensagem.btnpara.Visible        := false;
    frmnovamensagem.actExibirPara.Visible  := false;
    frmnovamensagem.actEnviar.Visible      := false;
    frmnovamensagem.actEnviar.Enabled      := false;
    rce.Lines.SaveToFile(filename);
    frmnovamensagem.Editor.Lines.LoadFromFile(filename);
    frmNovaMensagem.showmodal;
  finally
   freeandnil(frmNovaMensagem);
  end;
end;

procedure TfrmNovaMensagem.SelectionChange(Sender: TObject);
begin
  with Editor.Paragraph do
  try
    FUpdating := True;
    BoldButton.Down := fsBold in Editor.SelAttributes.Style;
    ItalicButton.Down := fsItalic in Editor.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in Editor.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(Editor.SelAttributes.Size);
    FontName.Text := Editor.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

function TfrmNovaMensagem.CurrText: TTextAttributes;
begin
  if Editor.SelLength > 0 then
  begin
    Result := Editor.SelAttributes
  end
  else
  begin
    Result := Editor.DefAttributes;
  end;
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric; FontType: Integer; Data: Pointer): Integer;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure TfrmNovaMensagem.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  //EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure TfrmNovaMensagem.SetFileName(const FileName: String);
begin
  FFileName := FileName;
  Caption := Format('%s - %s', [ExtractFileName(FileName), Application.Title]);
end;

procedure TfrmNovaMensagem.CheckFileSave;
var
  SaveResp: Integer;
begin
  if not Editor.Modified then
  begin
    Exit;
  end;
  SaveResp := MessageDlg(Format(sSaveChanges, [FFileName]), mtConfirmation, mbYesNoCancel, 0);
  case SaveResp of
    idYes: FileSave(Self);
    idNo: {Nothing};
    idCancel: Abort;
  end;
end;

procedure TfrmNovaMensagem.SetupRuler;
var
  I: Integer;
  S: String;
begin
  SetLength(S, 201);
  I := 1;
  while I < 200 do
  begin
    S[I] := #9;
    S[I+1] := '|';
    Inc(I, 2);
  end;
end;

procedure TfrmNovaMensagem.SetEditRect;
var
  R: TRect;
begin
  with Editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

procedure TfrmNovaMensagem.FormCreate(Sender: TObject);
begin
  OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
  SaveDialog.InitialDir := OpenDialog.InitialDir;
  SetFileName(sUntitled);
  GetFontNames;
  SetupRuler;
  SelectionChange(Self);
  CurrText.Name := DefFontData.Name;
  CurrText.Size := -MulDiv(DefFontData.Height, 72, Screen.PixelsPerInch);
end;

procedure TfrmNovaMensagem.FileNew(Sender: TObject);
begin
  SetFileName(sUntitled);
  Editor.Lines.Clear;
  Editor.Modified := False;
  SetModified(False);
end;

procedure TfrmNovaMensagem.PerformFileOpen(const AFileName: string);
begin
  Editor.Lines.LoadFromFile(AFileName);
  SetFileName(AFileName);
  Editor.SetFocus;
  Editor.Modified := False;
  SetModified(False);
end;

procedure TfrmNovaMensagem.FileOpen(Sender: TObject);
begin
  CheckFileSave;
  if OpenDialog.Execute then
  begin
    PerformFileOpen(OpenDialog.FileName);
    Editor.ReadOnly := ofReadOnly in OpenDialog.Options;
  end;
end;

procedure TfrmNovaMensagem.FileSave(Sender: TObject);
begin
  if FFileName = sUntitled then
  begin
    FileSaveAs(Sender)
  end
  else
  begin
    Editor.Lines.SaveToFile(FFileName);
    Editor.Modified := False;
    SetModified(False);
  end;
end;

procedure TfrmNovaMensagem.FileSaveAs(Sender: TObject);
begin
  if not SaveDialog.Execute then
  begin
    exit;
  end;
  if FileExists(SaveDialog.FileName) and
     (MessageDlg(Format(sOverWrite, [SaveDialog.FileName]), mtConfirmation, mbYesNoCancel, 0) <> idYes) then
  begin
    Exit;
  end;
  Editor.Lines.SaveToFile(SaveDialog.FileName);
  SetFileName(SaveDialog.FileName);
  Editor.Modified := False;
  SetModified(False);
end;

procedure TfrmNovaMensagem.FilePrint(Sender: TObject);
begin
  if PrintDialog.Execute then
  begin
    Editor.Print(FFileName);
  end;
end;

procedure TfrmNovaMensagem.FileExit(Sender: TObject);
begin
  Close;
end;

procedure TfrmNovaMensagem.EditUndo(Sender: TObject);
begin
  with Editor do
  begin
    if HandleAllocated then
    begin
      SendMessage(Handle, EM_UNDO, 0, 0);
    end;
  end;
end;

procedure TfrmNovaMensagem.EditCut(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure TfrmNovaMensagem.EditCopy(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure TfrmNovaMensagem.EditPaste(Sender: TObject);
begin
  Editor.PasteFromClipboard;
end;

procedure TfrmNovaMensagem.SelectFont(Sender: TObject);
begin
  FontDialog1.Font.Assign(Editor.SelAttributes);
  if FontDialog1.Execute then
  begin
    CurrText.Assign(FontDialog1.Font);
  end;
  SelectionChange(Self);
  Editor.SetFocus;
end;

procedure TfrmNovaMensagem.FormResize(Sender: TObject);
begin
  SetEditRect;
  SelectionChange(Sender);
end;

procedure TfrmNovaMensagem.FormPaint(Sender: TObject);
begin
  SetEditRect;
end;

procedure TfrmNovaMensagem.BoldButtonClick(Sender: TObject);
begin
  if FUpdating then
  begin
    Exit;
  end;
  if BoldButton.Down then
  begin
    CurrText.Style := CurrText.Style + [fsBold]
  end
  else
  begin
    CurrText.Style := CurrText.Style - [fsBold];
  end;
end;

procedure TfrmNovaMensagem.ItalicButtonClick(Sender: TObject);
begin
  if FUpdating then
  begin
    Exit;
  end;
  if ItalicButton.Down then
  begin
    CurrText.Style := CurrText.Style + [fsItalic]
  end
  else
  begin
    CurrText.Style := CurrText.Style - [fsItalic];
  end;
end;

procedure TfrmNovaMensagem.FontSizeChange(Sender: TObject);
begin
  if FUpdating then
  begin
    Exit;
  end;
  CurrText.Size := StrToInt(FontSize.Text);
end;

procedure TfrmNovaMensagem.AlignButtonClick(Sender: TObject);
begin
  if FUpdating then
  begin
    Exit;
  end;
  Editor.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure TfrmNovaMensagem.FontNameChange(Sender: TObject);
begin
  if FUpdating then
  begin
    Exit;
  end;
  CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure TfrmNovaMensagem.UnderlineButtonClick(Sender: TObject);
begin
  if FUpdating then
  begin
    Exit;
  end;
  if UnderlineButton.Down then
  begin
    CurrText.Style := CurrText.Style + [fsUnderline]
  end
  else
  begin
    CurrText.Style := CurrText.Style - [fsUnderline];
  end;
end;

procedure TfrmNovaMensagem.BulletsButtonClick(Sender: TObject);
begin
  if FUpdating then
  begin
    Exit;
  end;
  Editor.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);
end;

procedure TfrmNovaMensagem.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  try
    //CheckFileSave;
  except
    CanClose := False;
  end;
end;

procedure TfrmNovaMensagem.RulerItemMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left+X-FDragOfs;
  FDragging := True;
end;

procedure TfrmNovaMensagem.RulerItemMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if FDragging then
  begin
    TLabel(Sender).Left :=  TLabel(Sender).Left+X-FDragOfs;
  end;
end;

procedure TfrmNovaMensagem.FirstIndMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  LeftIndMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TfrmNovaMensagem.LeftIndMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  SelectionChange(Sender);
end;

procedure TfrmNovaMensagem.RightIndMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  SelectionChange(Sender);
end;

procedure TfrmNovaMensagem.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(Editor.Handle, EM_EXLINEFROMCHAR, 0, Editor.SelStart);
  CharPos.X := (Editor.SelStart - SendMessage(Editor.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
end;

procedure TfrmNovaMensagem.FormShow(Sender: TObject);
begin
  UpdateCursorPos;
  DragAcceptFiles(Handle, True);
  RichEditChange(nil);
  if tipo = 'nova' then
  begin
    edtdestino.SetFocus;
  end;
  if (ParamCount > 0) and FileExists(ParamStr(1)) then { Check if we should load a file from the command line }
  begin
    PerformFileOpen(ParamStr(1));
  end;
  Editor.Modified := False;
end;

procedure TfrmNovaMensagem.WMDropFiles(var Msg: TWMDropFiles);
var
  CFileName: array[0..MAX_PATH] of Char;
begin
  try
    if DragQueryFile(Msg.Drop, 0, CFileName, MAX_PATH) > 0 then
    begin
      CheckFileSave;
      PerformFileOpen(CFileName);
      Msg.Result := 0;
    end;
  finally
    DragFinish(Msg.Drop);
  end;
end;

procedure TfrmNovaMensagem.RichEditChange(Sender: TObject);
begin
  SetModified(Editor.Modified);
end;

procedure TfrmNovaMensagem.SetModified(Value: Boolean);
begin
end;

procedure TfrmNovaMensagem.ActionList2Update(Action: TBasicAction; var Handled: Boolean);
begin
 { Update the status of the edit commands }
  actEditCutCmd.Enabled  := Editor.SelLength > 0;
  actEditCopyCmd.Enabled := actEditCutCmd.Enabled;
  if Editor.HandleAllocated then
  begin
    actEditUndoCmd.Enabled  := Editor.Perform(EM_CANUNDO, 0, 0) <> 0;
    actEditPasteCmd.Enabled := Editor.Perform(EM_CANPASTE, 0, 0) <> 0;
  end;
end;

procedure TfrmNovaMensagem.actEnviarExecute(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure TfrmNovaMensagem.actExibirParaExecute(Sender: TObject);
begin
  Exibir_Para(edtdestino);
end;

end.
