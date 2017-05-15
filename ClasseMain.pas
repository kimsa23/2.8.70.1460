unit ClasseMain;

interface

uses
  System.Actions, System.UITypes,
  StdCtrls, ActnList, dialogs, sysutils, forms, ComCtrls, ExtCtrls,
  uconstantes, Controls,
  DB, 
  dxBar,
  ustrings, uRegistro, uRegistroib,
  classeRegistro, classeusuario;

Type
  TMain = Class(TObject)
  private
    registro : TRegistro;
    function FinalizarTransacao: integer;
    function getpnl: Integer;
    function existebotao(tlbnew : Ttoolbar; nmcomponente: string): Boolean;
    procedure criarbotao(tlbnew: Ttoolbar; tbl: string);
  public
    formatual : string;
    function    AbrirForm(tbl:string; tlbnew: TToolbar):boolean;
    procedure   ConfigForm (aform:TForm; tlbnew : Ttoolbar; registroform:tregistro=nil);
    constructor create;
    procedure   DestruirBotaoFormAtual(tbl:string; tlbnew: TToolbar);
    procedure   DestruirFormAtual(var aform: string; tlbnew: TToolbar);
    procedure   DestruirTodosForms;
    procedure   FecharTodosForms;
    function    ProcessarAbertura(nmform:string):boolean;
    procedure   SetNextFormAtual(var formatual:string; aform:string; tlbnew: TToolbar);
  end;

implementation

uses Classes;

procedure TMain.FecharTodosForms;
var
  i : integer;
begin
  i := 0;
  while screen.FormCount > i do
  begin
    if (screen.Forms[i].Name <> Application.MainForm.Name) and (screen.Forms[i].Name <> '') and (screen.Forms[i].Name <> 'dtmmain') then
    begin
      screen.Forms[i].Free;
      i := 0;
    end
    else
    begin
      inc(i);
    end;
  end;
end;

function TMain.getpnl:Integer;
var
  i : Integer;
begin
  result := 0;
  for i := 0 to application.MainForm.ControlCount - 1 do
  begin
    if LowerCase(application.MainForm.Controls[i].Name) = _pnl then
    begin
      result := i;
      break;
    end;
  end;
end;

function TMain.existebotao(tlbnew : Ttoolbar; nmcomponente:string):Boolean;
var
  i : Integer;
begin
  result := False;
  for I := 0 to tlbnew.ButtonCount - 1 do    // verificar se já existe o botão
  begin
    if lowercase(tlbnew.Buttons[i].Name) = lowercase(nmcomponente) then
    begin
      result := True;
      exit;
    end;
  end;
end;

procedure TMain.criarbotao(tlbnew : Ttoolbar; tbl:string);
var
  i : Integer;
  nbnew : TToolButton;
begin
  nbnew         := TToolButton.Create(tlbnew);
  nbnew.Visible := true;
  nbnew.Name    := _ntb+tbl;
  for I := 0 to application.mainForm.ComponentCount - 1 do
  begin
    if (application.mainForm.Components[i] is TAction) and (lowercase(TAction(application.mainForm.components[i]).Name) = _act+tbl) then
    begin
      nbnew.Action := TAction(application.mainForm.components[i]);
      break;
    end;
  end;
  nbnew.Parent := tlbnew;
end;

procedure TMain.ConfigForm(aform:TForm; tlbnew : Ttoolbar; registroform:tregistro=nil);
var
  tbl : string;
begin
  aform.parent      := TWinControl(application.mainForm.Controls[getpnl]);
  aform.BorderStyle := bsnone;
  aform.Align       := alclient;
  aform.bringtofront;
  aform.Visible     := true;
  formatual := lowercase(Aform.Name);
  tbl       := lowercase(copy(aform.Name, 4, length(aform.Name) - 3));
  registro := registroform;
  if existebotao(tlbnew, _ntb+tbl) then
  begin
    Exit;
  end;
  criarbotao(tlbnew, tbl);
end;

procedure TMain.DestruirBotaoFormAtual(tbl:string; tlbnew: TToolbar);
var
  x : integer;
begin
  for x := 0 to tlbnew.ButtonCount - 1 do
  begin
    if lowercase(tlbnew.Buttons[x].Name) = _ntb+lowercase(tbl) then
    begin
      tlbnew.Buttons[x].Free;
      formatual := '';
      break;
    end;
  end;
end;

procedure TMain.SetNextFormAtual(var formatual:string; aform:string; tlbnew: TToolbar);
var
  x : integer;
begin
  for x := 0 to screen.FormCount -1 do
  begin
    if (screen.Forms[x].Name <> application.MainForm.Name) and (lowercase(copy(screen.Forms[x].Name, 1, 12)) <> _frm+_localizar) and
       (lowercase(copy(screen.Forms[x].Name, 1, 13)) <> 'frmclientchat') and
       (screen.Forms[x].Name <> '') then
    begin
      formatual := aform;
      configForm(screen.forms[x], tlbnew);
      exit;
    end;
  end;
end;

procedure TMain.DestruirFormAtual(var aform: string; tlbnew: TToolbar);
var
  i : integer;
  form : TForm;
  tbl : string;
begin
  if aform = '' then
  begin
    exit;
  end;
  tbl := lowercase(copy(aform, 4, length(aform) - 3));
  for i := 0 to screen.FormCount -1 do
  begin
    if (lowercase(screen.Forms[i].name) <> lowercase(aform)) and (lowercase(copy(screen.Forms[i].name, 1, 9)) <> _frm+_tabela) then
    begin
      continue;
    end;

    if not (screen.Forms[i].Menu = nil) then
    begin
      application.MainForm.menu.Unmerge(screen.Forms[i].Menu);
    end;

    form := screen.Forms[i];
    freeandnil(form);
    aform := '';

    destruirbotaoformatual(tbl, tlbnew);
    setnextformatual(formatual, aform, tlbnew);
    exit;
  end;
end;

procedure TMain.DestruirTodosForms;
var
  i, x : integer;
  form : TForm;
begin
  x := screen.FormCount -1;
  i := 0;
  while i <= x do
  begin
    if (lowercase(screen.Forms[i].Name) = _frm+_main) or (lowercase(screen.Forms[i].Name) = '') then
    begin
      inc(i);
      continue;
    end;
    dec(x);
    form := screen.Forms[i];
    freeandnil(form);
  end;
end;

function TMain.AbrirForm(tbl:string; tlbnew: TToolbar):boolean;
var
  i : integer;
begin
  result := false;
  tbl := lowercase(tbl);
  for i := 0 to Screen.FormCount - 1 do
  begin
    if screen.Forms[i].Caption = tbl then
    begin
      ConfigForm(screen.Forms[i], tlbnew);
      exit;
    end;
  end;
  result := true;
end;

{procedure TMain.ExibirFormRegraST(frmMain: TForm; tlbnew: TToolBar; tbl, exibe:string; codigo: string='');
begin
  if not abrirForm(tbl, tlbnew) then
  begin
    exit;
  end;
  frmregrast := TFrmregrast.Create(frmMain);
  frmregrast.Config(tbl, exibe);
  configform(frmregrast, tlbnew);
  frmregrast.Abrir(codigo);
end;}

function TMain.FinalizarTransacao:integer;
var
  resposta : integer;
begin
  result := 0;
  if registro = nil then
  begin
    exit;
  end;
  if (registro.Status_cds <> dsedit) and (registro.Status_cds <> dsinsert) then
  begin
    exit;
  end;
  resposta := messagedlg('Deseja salvar as alterações?', mtConfirmation, [mbNo, mbCancel], 0);
  case resposta of
    mrno : registro.Cancelar;
  end;
  result := resposta;
end;

function TMain.ProcessarAbertura(nmform:string):boolean;
begin
  result := false;
  if (lowercase(formatual) = nmform) or (formatual = '') then
  begin
    exit;
  end;
  result := FinalizarTransacao  = mrcancel
end;

constructor TMain.create;
begin
end;

end.
