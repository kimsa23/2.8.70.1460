unit classeAplicacao;

interface

uses
  FireDAC.Comp.Client,system.SysUtils,
  SqlExpr, classeconexao;

type
  TAplicacao = class
  private
  protected
  public
    con2 : TSQLConnection;
    conexao : TConexao;
    confire: TFDConnection;
    constructor create(conexao2:TSQLConnection; confire2:TFDConnection; chave:string);
    destructor  destroy; override;
    function aplyupdates(q: TFDQuery):boolean;
    procedure ConfigurarFireDac;
    function get_param_firedac(nome:string):string;
    procedure ConfigurarCon2;
    procedure ConfiguraBancoDados;
  end;

var
  aplicacao : TAplicacao;

implementation

procedure TAplicacao.ConfigurarFireDac;
begin
  confire.Params.Clear;
  confire.LoginPrompt := false;
  confire.Params.Add('Server='+conexao.servidor);
  confire.Params.Add('Protocol=TCPIP');
  confire.Params.Add('Database='+conexao.caminho);
  confire.Params.Add('User_Name='+conexao.usuario);
  confire.Params.Add('Password='+conexao.senha);
  confire.Params.Add('DriverID=FB');
  confire.Params.add('ServerCharSet=WIN1252');
end;

procedure TAplicacao.ConfiguraBancoDados;
begin
  conexao.LerArquivoINI;
  ConfigurarCon2;
  ConfigurarFireDac;
end;

procedure TAplicacao.ConfigurarCon2;
begin
  con2.close;
  con2.DriverName    := 'Firebird';
  con2.LibraryName   := 'dbxfb.dll';
  con2.GetDriverFunc := 'getSQLDriverINTERBASE';
  con2.VendorLib     := 'fbclient.DLL';
  con2.LoginPrompt   := false;
  con2.Params.Values['Database']     := conexao.servidor+':'+conexao.caminho;
  con2.Params.Values['RoleName']     := 'RoleName';
  con2.Params.Values['Password']     := conexao.senha;
  con2.Params.Values['User_Name']    := conexao.usuario;
  con2.Params.Values['BlobSize']     := '-1';
  con2.Params.Values['CommitRetain'] := 'False';
  con2.Params.Values['SQLDialect']   := '3';
  con2.Params.Values['LocaleCode']   := '0000';
  con2.Params.Values['WaitOnLocks']  := 'True';
  con2.Params.Values['Interbase TransIsolation'] := 'ReadCommited';
  con2.Params.Values['Trim Char']    := 'True';
end;

function taplicacao.aplyupdates(q: TFDQuery):boolean;
begin
  q.Post;
  confire.StartTransaction;
  if q.ApplyUpdates = 0 then
  begin
    q.CommitUpdates;
    confire.Commit;
    result := true;
  end
  else
  begin
    confire.Rollback;
    result := false;
  end;
end;

constructor TAplicacao.create(conexao2: TSQLConnection; confire2: TFDConnection; chave:string);
begin
  con2    := conexao2;
  confire := confire2;
  conexao := TConexao.Create(chave);
end;

destructor TAplicacao.destroy;
begin
  freeandnil(conexao);
  inherited;
end;

function TAplicacao.get_param_firedac(nome:string): string;
var
  i : integer;
begin
  result := '';
  for i := 0 to confire.params.count - 1 do
  begin
    if nome = copy(lowercase(confire.params[i]), 1, length(nome)) then
    begin
      result := confire.params[i];
      delete(result, 1, length(nome) + 1);
      break;
    end;
  end;
end;

end.
