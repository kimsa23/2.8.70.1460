unit ClasseConection;

interface

uses
  IniFiles, forms,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  //FireDAC.Phys.MSSQL,
  //FireDAC.Phys.MSSQLDef,
  Data.DB, Dialogs,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, SysUtils,
  classeaplicacao;

type
  {
  TCfg = class(TIniFile)
  private
    function GetDatabase: String;
    function GetHostname: String;
    function GetInstance: String;
    function GetLogin: String;
    function GetPassword: String;
    procedure SetDatabase(const Value: String);
    procedure SetHostname(const Value: String);
    procedure SetInstance(const Value: String);
    procedure SetLogin(const Value: String);
    procedure SetPassword(const Value: String);
  public
    property Instance: String read GetInstance write SetInstance;
    property Hostname: String read GetHostname write SetHostname;
    property Login: String read GetLogin write SetLogin;
    property Password: String read GetPassword write SetPassword;
    property Database: String read GetDatabase write SetDatabase;
  end;
  }
  TConnection = class
  strict private
    class var FInstance: TConnection;
    constructor CreatePrivate;
  private
    FConnection: TFDConnection;
  public
    constructor Create;
    class function GetInstance: TConnection;
    property Conexao: TFDConnection read FConnection write FConnection;
    function Execute(const ACmd: String; var Error: String): Boolean;
    //function ExecuteQuery(const ACmd: String): TFDQuery;
    procedure BeginTrans;
    procedure Rollback;
    procedure Commit;
    function Conectar(var Error: String): Boolean;
  end;

//var
  //CFG: TCfg;

implementation

{ TConnection }

procedure TConnection.BeginTrans;
begin
  FConnection.StartTransaction;
end;

procedure TConnection.Commit;
begin
  FConnection.Commit;
end;

function TConnection.Conectar(var Error: String): Boolean;
begin
  Result := False;
  try
    FConnection.Connected := False;
    {
    with FConnection.Params do
    begin
      if (CFG.Instance <> '') and (UpperCase(CFG.Instance) <> 'DEFAULT') then
        Values['Server'] := CFG.HostName + '\' + CFG.Instance
      else
        Values['Server'] := CFG.HostName;
      Values['Database'] := CFG.DataBase;
      Values['User_Name'] := CFG.Login;
      Values['Password'] := CFG.Password;
    end;
    }
    FConnection.Params.Text := aplicacao.confire.Params.Text;
    FConnection.Connected := True;
    Result := FConnection.Connected;
  except
    on E:Exception do
    begin
      Result := False;
      Error := 'Houve um problema ao conectar ao banco: ' + E.Message;
    end;
  end;
end;

constructor TConnection.Create;
begin
  raise Exception.Create('Object Singleton');
end;

constructor TConnection.CreatePrivate;
var
  Error: String;
begin
  inherited Create;
  FConnection := TFDConnection.Create(nil);
  //FConnection.DriverName := 'MSSQL';
  if not (Conectar(Error)) then
  begin
    raise Exception.Create(Error);
  end;
end;

function TConnection.Execute(const ACmd: String; var Error: String): Boolean;
begin
  Result := True;
  try
    FConnection.ExecSQL(ACmd);
  except
    on E: Exception do
    begin
      Error := E.Message;
      Result := False;
    end;
  end;
end;

{function TConnection.ExecuteQuery(const ACmd: String): TFDQuery;
begin
  Result := TFDQuery.Create(nil);
  Result.Connection := FConnection;
  Result.Close;
  Result.Open(ACmd);
end;}

class function TConnection.GetInstance: TConnection;
begin
  if not Assigned(FInstance) then
    FInstance := TConnection.CreatePrivate;
  Result := FInstance;
end;

procedure TConnection.Rollback;
begin
  FConnection.Rollback;
end;

{ TCfg }

{
function TCfg.GetDatabase: String;
begin
  Result := ReadString('CFG','DATABASE','');
end;

function TCfg.GetHostname: String;
begin
  Result := ReadString('CFG','HOSTNAME','');
end;

function TCfg.GetInstance: String;
begin
  Result := ReadString('CFG','INSTANCE','');
end;

function TCfg.GetLogin: String;
begin
  Result := ReadString('CFG','LOGIN','');
end;

function TCfg.GetPassword: String;
begin
  Result := ReadString('CFG','PASSWORD','');
end;

procedure TCfg.SetDatabase(const Value: String);
begin
  WriteString('CFG','DATABASE',Value);
end;

procedure TCfg.SetHostname(const Value: String);
begin
  WriteString('CFG','HOSTNAME','');
end;

procedure TCfg.SetInstance(const Value: String);
begin
  WriteString('CFG','INSTANCE','');
end;

procedure TCfg.SetLogin(const Value: String);
begin
  WriteString('CFG','LOGIN','');
end;

procedure TCfg.SetPassword(const Value: String);
begin
  WriteString('CFG','PASSWORD','');
end;

initialization
  CFG := TCfg.Create(ExtractFilePath(Application.ExeName) + '.ini');
finalization
  FreeAndNil(CFG);
}
end.
