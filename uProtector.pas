unit uProtector;

interface

uses
  System.Actions, System.UITypes,
  FireDAC.Comp.Client, system.SysUtils,
  actnList, menus, comctrls, StdCtrls, actnman, registry, controls, ShellAPI,
  dialogs, forms, classes, ExtCtrls, Buttons, Windows,
  SqlExpr,
  cxDBEdit, cxButtons, cxPC, dxBar, cxDBLookupComboBox,
  uconstantes, utipo, ustrings,
  classeaplicacao, classeempresa, classeretornasql, uconfiguracao;

procedure AtivarAction            (act:TActionList; status: boolean);overload;
procedure AtivarAction            (act:TActionManager; status : boolean);overload;
procedure ConfigurarPermissoes    (Form:TForm);
procedure DesConfigurarPermissoes (Form:TForm);
procedure RegistroInicializarForm1(self:TForm);
procedure Set_path_banco_dados    (chave:string);
function  check_conexao:Boolean;
procedure executar_suporte_remoto;

implementation

uses classeusuario, ClasseConection, ClasseConexao;

procedure executar_suporte_remoto;
var
  handle : integer;
begin
  handle := 0;
  if (ShellExecute(Handle, nil, PChar(ExtractFilePath(Application.ExeName)+'\TeamViewerQS_pt.exe'), nil, nil, SW_SHOWNORMAL) = ERROR_FILE_NOT_FOUND) and
     (ShellExecute(Handle, nil, PChar(ExtractFilePath(Application.ExeName)+'\TeamViewerQS.exe'), nil, nil, SW_SHOWNORMAL) = ERROR_FILE_NOT_FOUND) and
     (MessageDlg('Arquivo não existe no seu computador.'#13'Baixar o arquivo?', mtConfirmation, [mbYes, mbNo], 0) = mryes) then
  begin
    ShellExecute(Handle, _open, 'http://www.teamviewer.com/download/version_7x/TeamViewerQS.exe', Nil, Nil, SW_SHOWDEFAULT);
  end;
end;

procedure RegistroInicializarForm1(self:TForm);
var
  i : integer;
begin
  ConfigurarPermissoes(self);
  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TEdit) and (LowerCase(TEdit(self.Components[i]).Name) = _edtcodigo) then
    begin
      TEdit(self.Components[i]).BringToFront;
      TEdit(self.Components[i]).setfocus;
    end;
  end;
end;

procedure AtivarAction(act:TActionList; status : boolean);
var
  j :integer;
  acao : TAction;
begin
  for j := 0 to act.ActionCount - 1 do
  begin
    acao := TAction(act.Actions[j]);
    acao.Enabled := status;
    acao.Visible := status;
    if acao.Caption = _Login then
    begin
      acao.enabled := not status;
      acao.Visible := not status;
    end;
  end;
end;

procedure AtivarAction(act:TActionManager; status : boolean);
var
 j :integer;
 acao : TAction;
begin
  for j := 0 to act.ActionCount - 1 do
  begin
    acao := TAction(act.Actions[j]);
    acao.Enabled := status;
    acao.Visible := status;
    if acao.Caption = _Login then
    begin
      acao.enabled := not status;
      acao.visible := not status;
    end;
  end;
end;

procedure ConfigurarPermissoes(Form:TForm);
var
  f, j : integer;
  controle : TComponent;
  form_ : Tform;
  campo, nome : string;
  procedure set_TCustomAction;
  begin
    if not (controle is TCustomAction) then
    begin
      exit;
    end;
    if usuario.ativar [f] = _N then
    begin
      if TCustomAction(controle).Enabled then
      begin
        TCustomAction(controle).Enabled := false;
      end;
    end
    else if not TCustomAction(Controle).enabled then
    begin
      TCustomAction(Controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TCustomAction(controle).visible then
      begin
        TCustomAction(controle).visible := false;
      end;
    end
    else if not TCustomAction(Controle).visible then
    begin
      TCustomAction(Controle).visible := true;
    end;
  end;
  procedure Set_TEdit;
  begin
    if not (controle is TEdit) then
    begin
      exit;
    end;
    if usuario.ativar [f] = _N then
    begin
      if TEdit(controle).Enabled then
      begin
        TEdit(controle).Enabled := false;
      end;
    end
    else if not TEdit(controle).Enabled then
    begin
      TEdit(Controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TEdit(controle).visible then
      begin
        TEdit(controle).visible := false;
      end;
    end
    else if not TEdit(controle).visible then
    begin
      TEdit(Controle).visible := true;
    end;
  end;
  procedure Set_TSpeedButton;
  begin
    if not (controle is TSpeedButton) then
    begin
      exit;
    end;
    if usuario.ativar [f] = _N then
    begin
      if TSpeedButton(controle).Enabled then
      begin
        TSpeedButton(controle).Enabled := false;
      end;
    end
    else if not TSpeedButton(controle).Enabled then
    begin
      TSpeedButton(Controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TSpeedButton(controle).visible then
      begin
        TSpeedButton(controle).visible := false;
      end;
    end
    else if not TSpeedButton(controle).visible then
    begin
      TSpeedButton(Controle).visible := true;
    end;
  end;
  procedure Set_TLabel;
  begin
    if not (controle is TLabel) then
    begin
      exit;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TLabel(controle).visible then
      begin
        TLabel(controle).visible := false;
      end;
    end
    else if not TLabel(controle).visible then
    begin
      TLabel(Controle).visible := true;
    end;
  end;
  procedure Set_TMenuItem;
  begin
    if not (controle is TMenuItem) then
    begin
      exit;
    end;
    if usuario.ativar [f] = _N then
    begin
      if TMenuItem(controle).Enabled then
      begin
        TMenuItem(controle).Enabled := false;
      end;
    end
    else if not TMenuItem(controle).Enabled then
    begin
      TMenuItem(Controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TMenuItem(controle).visible then
      begin
        TMenuItem(controle).visible := false;
      end;
    end
    else if not TMenuItem(controle).visible then
    begin
      TMenuItem(Controle).visible := true;
    end;
  end;
  procedure Set_TcxTabSheet;
  begin
    if not (controle is TcxTabSheet) then
    begin
      exit;
    end;
    if usuario.ativar[f] = _N then
    Begin
      if TcxTabSheet(controle).enabled then
      begin
        TcxTabSheet(controle).enabled := false;
      end;
    end
    else if not TcxTabSheet(controle).enabled then
    begin
      TcxTabSheet(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TcxTabSheet(controle).TabVisible then
      begin
        TcxTabSheet(controle).TabVisible := false;
      end;
    end
    else if not TcxTabSheet(controle).TabVisible then
    begin
      TcxTabSheet(controle).TabVisible := true;
    end;
  end;
  procedure Set_TcxDBCalcEdit;
  begin
    if not (controle is TcxDBCalcEdit) then
    begin
      exit;
    end;
    if usuario.ativar[f] = _N then
    Begin
      if TcxDBCalcEdit(controle).enabled then
      begin
        TcxDBCalcEdit(controle).enabled := false;
      end;
    end
    else if not TcxDBCalcEdit(controle).enabled then
    begin
      TcxDBCalcEdit(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TcxDBCalcEdit(controle).Visible then
      begin
        TcxDBCalcEdit(controle).Visible := false;
      end;
    end
    else if not TcxDBCalcEdit(controle).Visible then
    begin
      TcxDBCalcEdit(controle).Visible := true;
    end;
  end;
  procedure Set_TcxDBButtonEdit;
  begin
    if not (controle is TcxDBButtonEdit) then
    begin
      exit;
    end;
    if usuario.ativar[f] = _N then
    Begin
      if TcxDBButtonEdit(controle).enabled then
      begin
        TcxDBButtonEdit(controle).enabled := false;
      end;
    end
    else if not TcxDBButtonEdit(controle).enabled then
    begin
      TcxDBButtonEdit(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TcxDBButtonEdit(controle).Visible then
      begin
        TcxDBButtonEdit(controle).Visible := false;
      end;
    end
    else if not TcxDBButtonEdit(controle).Visible then
    begin
      TcxDBButtonEdit(controle).Visible := true;
    end;
  end;
  procedure Set_TdxBarSubItem;
  begin
    if not (controle is TdxBarSubItem) then
    begin
      exit;
    end;
    if usuario.ativar[f] = _N then
    Begin
      if TdxBarSubItem(controle).enabled then
      begin
        TdxBarSubItem(controle).enabled := false;
      end;
    end
    else if not TdxBarSubItem(controle).enabled then
    begin
      TdxBarSubItem(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TdxBarSubItem(controle).Visible = ivAlways then
      begin
        TdxBarSubItem(controle).Visible := ivNever;
      end;
    end
    else if TdxBarSubItem(controle).Visible <> ivAlways then
    begin
      TdxBarSubItem(controle).Visible := ivAlways;
    end;
  end;
  procedure set_TcxDBLookupComboBox;
  begin
    if not (controle is TcxDBLookupComboBox) then
    begin
      exit;
    end;
    if usuario.ativar[f] = _N then
    Begin
      if TcxDBLookupComboBox(controle).enabled then
      begin
        TcxDBLookupComboBox(controle).enabled := false;
      end;
    end
    else if not TcxDBLookupComboBox(controle).enabled then
    begin
      TcxDBLookupComboBox(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TcxDBLookupComboBox(controle).Visible then
      begin
        TcxDBLookupComboBox(controle).Visible := false;
      end;
    end
    else if not TcxDBLookupComboBox(controle).Visible then
    begin
      TcxDBLookupComboBox(controle).Visible := true;
    end;
  end;
  procedure Set_TcxButton;
  begin
    if not (controle is TcxButton) then
    begin
      exit;
    end;
    if usuario.ativar[f] = _N then
    Begin
      if TcxButton(controle).enabled then
      begin
        TcxButton(controle).enabled := false;
      end;
    end
    else if not TcxButton(controle).enabled then
    begin
      TcxButton(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TcxButton(controle).Visible then
      begin
        TcxButton(controle).Visible := false;
      end;
    end
    else if not TcxButton(controle).Visible then
    begin
      TcxButton(controle).Visible := true;
    end;
  end;
  procedure Set_TTabSheet;
  begin
    if not (controle is ttabsheet) then
    begin
      exit;
    end;
    if usuario.ativar[f] = _N then
    Begin
      if ttabsheet(controle).enabled then
      begin
        ttabsheet(controle).enabled := false;
      end;
    end
    else if not ttabsheet(controle).enabled then
    begin
      ttabsheet(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if ttabsheet(controle).TabVisible then
      begin
        ttabsheet(controle).TabVisible := false;
      end;
    end
    else if not ttabsheet(controle).TabVisible then
    begin
      ttabsheet(controle).TabVisible := true;
    end;
  end;
  procedure Set_TStatusbar;
  begin
    if not (controle is tstatusbar) then
    begin
      exit;
    end;
    if usuario.ativar[f] = _N then
    Begin
      if tstatusbar(controle).enabled then
      begin
        tstatusbar(controle).enabled := false;
      end;
    end
    else if not tstatusbar(controle).enabled then
    begin
      tstatusbar(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if tstatusbar(controle).Visible then
      begin
        tstatusbar(controle).Visible := false;
      end;
    end
    else if not tstatusbar(controle).Visible then
    begin
      tstatusbar(controle).Visible := true;
    end;
  end;
  procedure Set_TPanel;
  begin
    if not (controle is TPanel) then
    begin
      exit;
    end;
    if usuario.ativar[f] = _N then
    Begin
      if TPanel(controle).enabled then
      begin
        TPanel(controle).enabled := false;
      end;
    end
    else if not TPanel(controle).enabled then
    begin
      TPanel(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if TPanel(controle).Visible then
      begin
        TPanel(controle).Visible := false;
      end;
    end
    else if not TPanel(controle).Visible then
    begin
      TPanel(controle).Visible := true;
    end;
  end;
  procedure set_TGroupBox;
  begin
    if not (controle is tgroupbox) then
    begin
      exit;
    end;
    if usuario.ativar[f]  = _N then
    begin
      if tgroupbox(controle).enabled then
      begin
        tgroupbox(controle).enabled := false;
      end;
    end
    else if not tgroupbox(controle).enabled then
    begin
      tgroupbox(controle).enabled := true;
    end;
    if usuario.visivel[f] = _N then
    begin
      if tgroupbox(controle).visible then
      begin
        tgroupbox(controle).visible := false
      end;
    end
    else if not tgroupbox(controle).visible then
    begin
      tgroupbox(controle).visible := true;
    end;
  end;
  procedure set_TRV;
  var
    no : TTreeNode;
    x, i : integer;
  begin
    if not (controle is TTreeView) then
    begin
      exit;
    end;
    for x := 0 to usuario.comdesc.Count - 1 do
    begin
      for I := 0 to TTreeView(controle).Items.Count - 1 do
      begin
        if (Trim(usuario.formulario[x]) = uppercase(form_.Name)) and
           (Trim(usuario.componente[x]) = uppercase(controle.name)) and
           (uppercase(RetiraAcentos(TTreeView(controle).Items[i].Text)) = Trim(uppercase(RetiraAcentos(usuario.comdesc[x])))) and
           ((Trim(usuario.visivel[x]) = _N) or (Trim(usuario.ativar[x]) = _N)) then
        begin
          no := TTreeView(controle).Items[i];
          TTreeView(controle).Items.Delete(no);
          break;
        end;
      end;
    end;
  end;
begin
  form_ := form;
  for f := 0 to usuario.formulario.Count - 1 do
  begin
    for j := 0 to form_.ComponentCount - 1 do
    begin
      controle := form_.Components[j];
      nome     := Trim(usuario.componente[f]);
      if copy(LowerCase(nome), 1, 3) = _QRY then
      begin
        campo := copy(nome, pos('.', nome)+1, length(nome) - pos('.', nome));
        nome  := copy(nome, 1, pos('.', nome)-1);
      end;
      if (Trim(usuario.formulario[f]) = uppercase(form_.Name)) and (nome = uppercase(controle.name)) then
      begin
        set_TCustomAction;
        set_TEdit;
        Set_TSpeedButton;
        set_TLabel;
        set_TMenuItem;
        set_TTabSheet;
        set_TcxDBButtonEdit;
        Set_TdxBarSubItem;
        set_TcxDBCalcEdit;
        Set_TcxTabSheet;
        set_TcxButton;
        set_TcxDBLookupComboBox;
        set_TStatusbar;
        set_TPanel;
        set_TGroupBox;
        set_trv;
        break;
      end;
    end;
  end;
end;

procedure DesConfigurarPermissoes(Form:TForm);
var
  f, j : integer;
  controle : TComponent;
  form_ : Tform;
begin
  form_ := form;
  for j := 0 to form_.ComponentCount - 1 do
  begin
    controle := form_.Components[j];
    for f := 0 to usuario.formulario.Count - 1 do
    begin
      if (usuario.formulario[f] = uppercase(form_.Name)) and (usuario.componente[f] = uppercase(controle.name)) then
      begin
        if controle is TCustomAction then
        begin
          TCustomAction(Controle).enabled := true;
          TCustomAction(Controle).visible := true;
        end
        else if controle is TMenuItem then
        begin
          TMenuItem(Controle).enabled := true;
          TMenuItem(Controle).visible := true;
        end
        else if controle is ttabsheet then
        begin
          ttabsheet(controle).enabled := true;
          ttabsheet(controle).visible := true;
        end
        else if controle is tgroupbox then
        begin
          tgroupbox(controle).enabled := true;
          tgroupbox(controle).visible := true;
        end ;
        break;
      end;
    end;
  end;
end;

function check_conexao:Boolean;
begin
  try
    aplicacao.con2.Open;
    result := True;
  except
    result := False;
  end;
end;

procedure Set_path_banco_dados(chave:string);
var
  linha, filename, Servidor, Caminho, Protocolo, usuario, senha : string;
  F: TextFile;
begin
  filename := ExtractFilePath(Application.ExeName)+chave+'.'+_ini;
  if FileExists(filename) then
  begin
    AssignFile(F, filename);
    try
      Reset(F);
      Readln(F, linha); Readln(F, linha); Servidor  := linha;
      Readln(F, linha); Readln(F, linha); Caminho   := linha;
      Readln(F, linha); Readln(F, linha); Protocolo := linha;
      Readln(F, linha); Readln(F, linha); usuario   := linha;
      Readln(F, linha); Readln(F, linha); senha     := linha;
    finally
      CloseFile(F);
    end;
  end;
  if Servidor = '' then
  begin
    servidor := _127_0_0_1;
  end;
  if caminho  = '' then
  begin
    caminho  := ExtractFilePath(Application.ExeName)+_quipos+'.'+_fdb;
  end;
end;

end.

