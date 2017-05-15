unit usystem;

interface

uses
  System.Actions, System.UITypes,
  shellapi, ComCtrls, Forms, windows, dialogs, sysutils, registry, winsock,
  classes, MMSystem, controls, shlobj, uConstantes;

function  ContinuarAplicacaoMaisdeUmaInstancia:boolean;
function  ExecFile(const FileName, Params, DefaultDir: string;ShowCmd: Integer): THandle;overload;
function  KeyLeads:String;
Function  GetNetWorkUserName:string;
function  GetWindowsDirectoryStr: string;
function  getSpecialDir: string;
//Function  NomeComputador : String;
function  NomeDoComputador : string;
procedure SalvarArquivo(mem:TRichEdit);

var
  qp_nmcomputador: string;

implementation

procedure SalvarArquivo(mem:TRichEdit);
var
  SaveDialog : TSaveDialog;
begin
  savedialog := tsavedialog.Create(nil);
  try
    SaveDialog.DefaultExt := '*.txt';
    savedialog.Filter := 'Arquivo Texto|*.txt|Todos os arquivos|*.*';
    if SaveDialog.Execute then
    begin
      mem.Lines.SaveToFile(SaveDialog.FileName);
    end;
  finally
    freeandnil(savedialog);
  end ;
end;

function getSpecialDir: string;
const
  CSIDL_ADMINTOOLS              = $0030;
  CSIDL_COMMON_ADMINTOOLS       = $002f;
  CSIDL_COMMON_DESKTOPDIRECTORY = $0019;
  CSIDL_COMMON_DOCUMENTS        = $002e;
  CSIDL_COMMON_FAVORITES        = $001f;
  CSIDL_MYDOCUMENTS             = $000c;
  CSIDL_MYMUSIC                 = $000d;
  CSIDL_MYPICTURES              = $0027;
  CSIDL_MYVIDEO                 = $000e;
  CSIDL_PROGRAM_FILES           = $0026;
  CSIDL_PROGRAM_FILES_COMMON    = $002b;
  CSIDL_SYSTEM                  = $0025;
  CSIDL_WINDOWS                 = $0024;
  //
  CSIDL_DESKTOP                 = $0000; //   –{USUARIO}\Desktop
  CSIDL_PROGRAMS                = $0002; //  –{USUARIO}\Menu Iniciar\Programas
  CSIDL_PERSONAL                = $0005; //  –{USUARIO}\Meus Documentos
  CSIDL_FAVORITES               = $0006; //  –{USUARIO}\Favoritos
  CSIDL_STARTUP                 = $0007; //  –{USUARIO}\Menu Iniciar\Programas\Inicializar
  CSIDL_SENDTO                  = $0009; //  –{USUARIO}\SendTo
  CSIDL_STARTMENU               = $000b; //  –{USUARIO}\Menu Iniciar
  CSIDL_DESKTOPDIRECTORY        = $0010; //  –{USUARIO}\Desktop
  CSIDL_FONTS                   = $0014; //  –C:\Windows\Fonts
  CSIDL_COMMON_STARTMENU        = $0016; //  –{All Users}\Menu Iniciar
  CSIDL_COMMON_PROGRAMS         = $0017; //  –{All Users}\Menu Iniciar\Programas
  CSIDL_COMMON_STARTUP          = $0018; //  –{All Users}\Menu Iniciar\Programas\Inicializar
  //CSIDL_COMMON_DESKTOPDIRECTORY = $0019; //  –{All Users}\Desktop
  CSIDL_APPDATA                 = $001a; //  –{USUARIO}\Dados de Aplicativos
  CSIDL_LOCAL_APPDATA           = $001c; //  –{USUARIO}\Configurações Locais\Dados de Aplicativos
  //CSIDL_COMMON_FAVORITES        = $001f; //  –{All Users}\Favoritos
  CSIDL_INTERNET_CACHE          = $0020; //  –{USUARIO}\Configurações locais\Temporary Internet Files
  CSIDL_COOKIES                 = $0021; //  –{USUARIO}\Cookies
  CSIDL_HISTORY                 = $0022; //  –{USUARIO}\Configurações locais\Histórico
  CSIDL_PROFILE                 = $0028; //  –{USUARIO}
  CSIDL_COMMON_MUSIC            = $0035; //  –{All Users}\Minhas Músicas
  CSIDL_COMMON_PICTURES         = $0036; //  –{All Users}\Minhas Imagens
  CSIDL_COMMON_VIDEO            = $0037; //  –{All Users}\Meus Vídeos
  // Algumas Constantes Não Definidas:
  //CSIDL_ADMINTOOLS              = $0030; //  –{USUARIO}\Menu iniciar\Programas\Ferramentas administrativas
  //CSIDL_COMMON_ADMINTOOLS       = $002f; //  –{All Users}\Menu iniciar\Programas\Ferramentas administrativas
  //CSIDL_COMMON_DOCUMENTS        = $002e; //  –{All Users}\Documentos
  //CSIDL_MYMUSIC                 = $000d; //  –{USUARIO}\Minhas Músicas
  //CSIDL_MYPICTURES              = $0027; //  –{USUARIO}\Minhas Imagens
  //CSIDL_MYVIDEO                 = $000e; //  –{USUARIO}\Meus Vídeos
  //CSIDL_PROGRAM_FILES           = $0026; //  –C:\Arquivos de Programas
  //CSIDL_PROGRAM_FILES_COMMON    = $002b; //  –C:\Arquivos de Programas\Arquivos Comuns
  //CSIDL_SYSTEM                  = $0025; //  –C:\Windows\System32
  //CSIDL_WINDOWS                 = $0024; //  –C:\Windows
  //
var
  r: Bool;
  path: array[0..MAX_PATH] of Char;
begin
  //substitua COLOQUE_AQUI_A_CONSTANTE_DESEJADA pela constante relativa ao diretório desejado
  //r := ShGetSpecialFolderPath(0, path, COLOQUE_AQUI_A_CONSTANTE_DESEJADA, False);
  r := ShGetSpecialFolderPath(0, path, CSIDL_DESKTOP, False);
  if not r then
  begin
    MessageDlg('Diretório não Encontrado', mtInformation, [mbOK], 0);
    Exit;
  end;
  Result := Path;
end;

// Retorna o nome do computado
function NomeDoComputador : string;
const
MAX_COMPUTER_LENGTH = 30;
var
  pNome : PChar;
  len : DWord;
begin
  Result := '';
  try
    len := MAX_COMPUTER_LENGTH + 1;
    GetMem(pNome,len);
    if GetComputerName(pNome, len) then
    begin
      Result := pNome
    end
    else
    begin
      Result := 'Não foi possível obter o nome deste computador...';
    end;
  finally
    FreeMem(pNome, len);
  end;
end;

// Retorna o path corrente do diretório do Windows
//

function GetWindowsDirectoryStr: string;
const
fsPathName = 255;
var
Buff: array [0..fsPathName] of char;
begin
GetWindowsDirectory( Buff, fsPathName );
Result := StrPas( Buff );
end;

// Testa se a janela jã foi criada
function AppIsRunning: Boolean;
var
  hSem : THandle;
begin
  Result   := False;
  hSem     := CreateSemaphore(nil, 0, 1, pChar(Application.Title));
  if ((hSem <> 0) AND (GetLastError() = ERROR_ALREADY_EXISTS)) then
  begin
    CloseHandle(hSem);
    Result := True;
  end;
end;

function ContinuarAplicacaoMaisdeUmaInstancia:boolean;
begin
  result := true;
  if AppIsRunning and (messagedlg('Já existe uma instância desta aplicação em execução.'#13'Deseja abrir outra instância?', mtConfirmation, [mbyes, mbno], 0) = mrno) then
  begin
    application.terminate; // a aplicação atual finaliza
    result := false;
  end;
end;

// *****************************************************************************
// verificação das teclas Caps, Scroll e NUM que usa um evento do Delphi e naum o Timer
// *****************************************************************************

function KeyLeads:String;
Var
  State : String;
  KeyState  :  TKeyboardState;
begin
  State := '';
  GetKeyboardState(KeyState);
  if (KeyState[VK_NUMLOCK] = 1) then
  begin
    State := State + 'Num Lock';
  end;
  if (KeyState[VK_CAPITAL] = 1) then
  begin
    State := State + 'Caps Lock';
  end;
  if (KeyState[VK_SCROLL] = 1) then
  begin
    State := State + 'Scroll Lock';
  end;
  Result := State;
end;

// Executa um aplicativo, já abrindo um arquivo anexo
function ExecFile(const FileName, Params, DefaultDir: string;ShowCmd: Integer): THandle;
// DefautDir: Diretorio onde ele irá trabalhar
// ShowCmd:  1 = Normal
//           2 = Minimizado
//           3 = Tela Cheia
var
  zFileName, zParams, zDir: array[0..79] of Char;
begin
  Result := ShellExecute(Application.MainForm.Handle,
                         nil,StrPCopy(zFileName, FileName),
                         StrPCopy(zParams, Params),
                         StrPCopy(zDir, DefaultDir), ShowCmd);
end;

Function NomeComputador : String;
var
  lpBuffer : PChar;
  nSize    : DWord;
const
  Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);
  GetComputerName(lpBuffer,nSize);
  Result := String(lpBuffer);
  StrDispose(lpBuffer);
end;

Function GetNetWorkUserName:string;
var
  buffer : array[0..128] of char;
  l      : dword;
begin
  l := SizeOf(buffer);
  GetUserName (buffer,l);
  if l>0 then
  begin
    result := StrPas(buffer)
  end
  else
  begin
    result := 'GUEST';
  end;
end;

end.

