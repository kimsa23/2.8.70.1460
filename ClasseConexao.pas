unit ClasseConexao;

interface

uses SysUtils, classes, dialogs, forms, system.UITypes, System.Win.Registry, Winapi.Windows,
  uconstantes, ustrings;

Type
  TConexao = class(TObject)
  private
    FCaminho: string;
    FServidor: string;
    Fsenha: string;
    Fusuario: string;
    Fchave: string;
    procedure CriarArquivo(nome_arquivo:string; arquivo:TStrings; nulinhas:Integer);
    procedure GravarRegistry;
  public
    property chave : string read Fchave write Fchave;
    property Servidor : string read FServidor write FServidor;
    property Caminho : string read FCaminho write FCaminho;
    property usuario : string read Fusuario write Fusuario;
    property senha : string read Fsenha write Fsenha;
    procedure LerArquivoINI;
    procedure GravarINI;
    procedure LerRegistry;
    constructor create(chave_:string);
  end;

implementation

constructor TConexao.create(chave_: string);
begin
  chave := ExtractFilePath(Application.ExeName)+chave_+'.'+_ini;
end;

procedure TConexao.CriarArquivo(nome_arquivo: string; arquivo: TStrings; nulinhas: Integer);
var
  i : integer;
begin
  for i := 1 to nulinhas do
  begin
    arquivo.Add('');
  end;
  try
    arquivo.SaveToFile(nome_arquivo);
  except
    MessageDlg('Não pode criar o arquivo '+nome_arquivo+'.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TConexao.GravarINI;
var
  Reg : TStrings;
begin
  Reg := Tstringlist.create;
  try
    if not FileExists(chave) then
    begin
      CriarArquivo(chave, Reg, 10);
    end;
    reg.LoadFromFile(chave);
    reg[00] := Maiuscula(_Servidor);
    reg[01] := Servidor;
    reg[02] := Maiuscula(_Caminho);
    reg[03] := Caminho;
    reg[04] := Maiuscula(_Protocolo);
    reg[05] := 'TCP/IP';
    reg[06] := 'Usuário';
    reg[07] := Usuario;
    reg[08] := Maiuscula(_Senha);
    reg[09] := Senha;
    reg.SaveToFile(chave);
    GravarRegistry;
  finally
    reg.free;
  end;
end;

procedure TConexao.GravarRegistry;
var
  reg : TRegistry;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    if reg.OpenKey('\Software\Quipos', true) then
    begin
      reg.WriteString('Servidor', Servidor);
      reg.WriteString('Caminho', Caminho);
      reg.WriteString('Usuario', usuario);
      reg.WriteString('Senha', Senha);
    end;
  finally
    reg.CloseKey;
    freeandnil(reg);
  end;
end;

procedure TConexao.LerArquivoINI;
var
  Reg : TStrings;
begin
  Reg := TStringlist.Create;
  try
    reg.LoadFromFile(chave);
    Servidor := reg[01];
    Caminho := reg[03];
    Usuario := reg[07];
    Senha   := reg[09];
    if Servidor = '' then
    begin
      servidor := _127_0_0_1;
    end;
    if caminho = '' then
    begin
      caminho := ExtractFilePath(Application.ExeName)+_quipos+'.'+_fdb;
    end;
    if usuario = '' then
    begin
      usuario := _SYSDBA;
    end;
    if senha = '' then
    begin
      senha := _masterkey;
    end;
  finally
    freeandnil(reg);
  end;
end;

procedure TConexao.LerRegistry;
var
  reg : TRegistry;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    if reg.OpenKey('\Software\Quipos', true) then
    begin
      Servidor := reg.ReadString('Servidor');
      Caminho  := reg.ReadString('Caminho');
      usuario  := reg.ReadString('Usuario');
      Senha    := reg.ReadString('Senha');
    end;
  finally
    reg.CloseKey;
    freeandnil(reg);
  end;
end;

end.
