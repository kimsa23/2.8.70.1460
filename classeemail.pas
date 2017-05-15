unit classeemail;

interface

uses Forms, Dialogs, SysUtils, ComObj, classes,
  ACBrNFeNotasFiscais, mimepart, mimemess,
  ACBrMail,
  DB, DBClient,
  classeexecutasql, classeempresa, classeaplicacao,
  ustrings, uconstantes, udatahora, classedao;

type
  TEmail_ = class
  private
    FboSSL: Boolean;
    FSmtpPort: string;
    FSmtpPass: string;
    Ftpenvio: Integer;
    Fmsg: string;
    FSmtpHost: string;
    FSmtpUser: string;
    Fbopdf: Boolean;
    FAssunto: string;
    procedure SetAssunto(const Value: string);
    procedure Setbopdf(const Value: Boolean);
    procedure SetboSSL(const Value: Boolean);
    procedure Setmsg(const Value: string);
    procedure SetSmtpHost(const Value: string);
    procedure SetSmtpPass(const Value: string);
    procedure SetSmtpPort(const Value: string);
    procedure SetSmtpUser(const Value: string);
    procedure Settpenvio(const Value: Integer);
  public
    property tpenvio : Integer read Ftpenvio write Settpenvio;
    property SmtpHost: string read FSmtpHost write SetSmtpHost;
    property SmtpPort: string read FSmtpPort write SetSmtpPort;
    property SmtpUser: string read FSmtpUser write SetSmtpUser;
    property SmtpPass: string read FSmtpPass write SetSmtpPass;
    property Assunto: string read FAssunto write SetAssunto;
    property msg: string read Fmsg write Setmsg;
    property bopdf: Boolean read Fbopdf write Setbopdf;
    property boSSL: Boolean read FboSSL write SetboSSL;
  end;
  TLogEmail  = class(TPersintentObject)
  private
    Fdstitulo: string;
    Fdsdestinatario: string;
    Fcdempresa: LargeInt;
    Fcdcomputador: integer;
    Fcdlogemail: integer;
    Fcdusuario: integer;
    Fdsanexo: string;
    Fdscc: string;
    Fcdtarefa: integer;
    Ftsregistro: TDateTime;
    Fdsmensagem: string;
  public
    [keyfield]
    property cdempresa : LargeInt read Fcdempresa write Fcdempresa;
    [keyfield]
    property cdlogemail: integer read Fcdlogemail write Fcdlogemail;
    [fk]
    property cdusuario : integer read Fcdusuario write Fcdusuario;
    [fk]
    property cdtarefa  : integer read Fcdtarefa write Fcdtarefa;
    [fk]
    property cdcomputador : integer read Fcdcomputador write Fcdcomputador;
    property tsregistro : TDateTime read Ftsregistro write Ftsregistro;
    property dsmensagem : string read Fdsmensagem write Fdsmensagem;
    property dsdestinatario : string read Fdsdestinatario write Fdsdestinatario;
    property dscc : string read Fdscc write Fdscc;
    property dstitulo : string read Fdstitulo write Fdstitulo;
    property dsanexo : string read Fdsanexo write Fdsanexo;
    function Insert(boscript:boolean=false): String;
    class procedure registrar_log_email(dsmensagem_, dsdestinatario_, dscc_, dstitulo_, dsanexo_, nmtabela, codigo:string);
  end;
  TEnviarEmail = class
  private
    Fnmusuario: string;
    Ftpenvio: string;
    Fdstitulo: string;
    Fdsdestinatario: string;
    Fbotexto: boolean;
    Fcodigo: string;
    Fnmtabela: string;
    Fdscc: string;
    Fdsanexo: TStrings;
    Fdssenha: string;
    Fnmremetente: string;
    Fboanexo: TStrings;
    Fboexcluir_arquivo: Boolean;
    Fdsmensagem: string;
    function get_dsanexo:string;
    function Enviar_outlook:boolean;
    Function Enviar_Gmail:boolean;
    procedure Setboanexo(const Value: TStrings);
    procedure Setboexcluir_arquivo(const Value: Boolean);
    procedure Setbotexto(const Value: boolean);
    procedure Setcodigo(const Value: string);
    procedure Setdsanexo(const Value: TStrings);
    procedure Setdscc(const Value: string);
    procedure Setdsdestinatario(const Value: string);
    procedure Setdsmensagem(const Value: string);
    procedure Setdssenha(const Value: string);
    procedure Setdstitulo(const Value: string);
    procedure Setnmremetente(const Value: string);
    procedure Setnmtabela(const Value: string);
    procedure Setnmusuario(const Value: string);
    procedure Settpenvio(const Value: string);
  public
    property botexto:boolean read Fbotexto write Setbotexto;
    property boexcluir_arquivo:Boolean read Fboexcluir_arquivo write Setboexcluir_arquivo;
    property dsanexo: TStrings read Fdsanexo write Setdsanexo;
    property boanexo:TStrings read Fboanexo write Setboanexo;
    property dsdestinatario: string read Fdsdestinatario write Setdsdestinatario;
    property dscc: string read Fdscc write Setdscc;
    property dstitulo : string read Fdstitulo write Setdstitulo;
    property dsmensagem:string read Fdsmensagem write Setdsmensagem;
    property nmremetente:string read Fnmremetente write Setnmremetente;
    property nmusuario : string read Fnmusuario write Setnmusuario;
    property dssenha:string read Fdssenha write Setdssenha;
    property tpenvio:string read Ftpenvio write Settpenvio;
    property nmtabela:string read Fnmtabela write Setnmtabela;
    property codigo:string read Fcodigo write Setcodigo;
    constructor create;
    function enviar_email:boolean;
  end;
  TEnviarGmail = class(TComponent)
  private
    mail : TACBrMail;
    StreamNFe : TStringStream;
    dsmensagem1, sCC: TStrings;
    Fusuarioemail: string;
    FPedeConfirma: boolean;
    Ftpenvio: string;
    Fdstitulo: string;
    Fdsdestinatario: string;
    Fbotexto: boolean;
    FNomeRemetente: String;
    FAguardarEnvio: Boolean;
    Fdscc: string;
    Fdsanexo: TStrings;
    Fsenhaemail: string;
    FTLS: Boolean;
    Fboanexo: TStrings;
    Fboexcluir_arquivo: Boolean;
    Fdsmensagem: string;
    procedure adicionar_anexos;
    procedure excluir_arquivo_de_anexo;
    procedure SetAguardarEnvio(const Value: Boolean);
    procedure Setboanexo(const Value: TStrings);
    procedure Setboexcluir_arquivo(const Value: Boolean);
    procedure Setbotexto(const Value: boolean);
    procedure Setdsanexo(const Value: TStrings);
    procedure Setdscc(const Value: string);
    procedure Setdsdestinatario(const Value: string);
    procedure Setdsmensagem(const Value: string);
    procedure Setdstitulo(const Value: string);
    procedure SetNomeRemetente(const Value: String);
    procedure SetPedeConfirma(const Value: boolean);
    procedure Setsenhaemail(const Value: string);
    procedure SetTLS(const Value: Boolean);
    procedure Settpenvio(const Value: string);
    procedure Setusuarioemail(const Value: string);
    procedure SmtpUol;
    procedure SmtpGmail;
    procedure SmtpLive;
    procedure SmtpEmpresa;
    procedure ConfigurarSmtp;
    Function ObterFromName:string;
    Function ObterFrom:string;
    Function ObterUserName:string;
    function ObterPassword:string;
    procedure AdicionarCC;
  public
    property botexto : boolean read Fbotexto write Setbotexto;
    property boexcluir_arquivo: Boolean read Fboexcluir_arquivo write Setboexcluir_arquivo;
    property dsanexo : TStrings read Fdsanexo write Setdsanexo;
    property boanexo: TStrings read Fboanexo write Setboanexo;
    property dsdestinatario : string read Fdsdestinatario write Setdsdestinatario;
    property dscc : string read Fdscc write Setdscc;
    property dstitulo : string read Fdstitulo write Setdstitulo;
    property dsmensagem: string read Fdsmensagem write Setdsmensagem;
    property PedeConfirma : boolean read FPedeConfirma write SetPedeConfirma;
    property AguardarEnvio: Boolean read FAguardarEnvio write SetAguardarEnvio;
    property NomeRemetente: String read FNomeRemetente write SetNomeRemetente;
    property TLS: Boolean read FTLS write SetTLS;
    property usuarioemail : string read Fusuarioemail write Setusuarioemail;
    property senhaemail : string read Fsenhaemail write Setsenhaemail;
    property tpenvio: string read Ftpenvio write Settpenvio;
    function enviar_gmail:boolean;
    constructor create;
    destructor destroy;
  end;
  TEnviarOutlook = class
  private
    vMailItem: variant;
    Fdstitulo: string;
    Fdsdestinatario: string;
    Fdscc: string;
    Fdsanexo: TStrings;
    Fboanexo: TStrings;
    Fboexcluir_arquivo: Boolean;
    Fdsmensagem: string;
    procedure anexar_arquivos;
    procedure excluir_arquivo_de_anexo;
    procedure Setboanexo(const Value: TStrings);
    procedure Setboexcluir_arquivo(const Value: Boolean);
    procedure Setdsanexo(const Value: TStrings);
    procedure Setdscc(const Value: string);
    procedure Setdsdestinatario(const Value: string);
    procedure Setdsmensagem(const Value: string);
    procedure Setdstitulo(const Value: string);
  public
    property boexcluir_arquivo: Boolean read Fboexcluir_arquivo write Setboexcluir_arquivo;
    property dsanexo: TStrings read Fdsanexo write Setdsanexo;
    property boanexo: TStrings read Fboanexo write Setboanexo;
    property dsdestinatario: string read Fdsdestinatario write Setdsdestinatario;
    property dscc : string read Fdscc write Setdscc;
    property dstitulo : string read Fdstitulo write Setdstitulo;
    property dsmensagem: string read Fdsmensagem write Setdsmensagem;
    function enviar_outlook:boolean;
  end;

implementation

uses classeusuario, classegerar;

function TLogEmail.Insert(boscript: boolean): String;
begin
  cdempresa := empresa.cdempresa;
  cdlogemail := qgerar.GerarCodigo(_log+_email);
  cdusuario := usuario.cdusuario;
  cdcomputador := strtoint(vgcdcomputador);
  tsregistro := tsbanco;
  result := inherited insert(boscript);
end;

class procedure TLogEmail.registrar_log_email(dsmensagem_, dsdestinatario_, dscc_, dstitulo_, dsanexo_, nmtabela, codigo: string);
var
  logemail : TLogemail;
begin
  logemail := tlogemail.Create;
  try
    logemail.dsmensagem     := dsmensagem_;
    logemail.dsdestinatario := dsdestinatario_;
    logemail.dscc           := dscc_;
    logemail.dstitulo       := dstitulo_;
    logemail.dsanexo        := dsanexo_;
    if (nmtabela = _tarefa) and (codigo <> '') then
    begin
      logemail.cdtarefa := strtoint(codigo);
    end;
    logemail.insert;
  finally
    freeandnil(logemail);
  end;
end;

procedure TEmail_.SetAssunto(const Value: string);
begin
  FAssunto := Value;
end;

procedure TEmail_.Setbopdf(const Value: Boolean);
begin
  Fbopdf := Value;
end;

procedure TEmail_.SetboSSL(const Value: Boolean);
begin
  FboSSL := Value;
end;

procedure TEmail_.Setmsg(const Value: string);
begin
  Fmsg := Value;
end;

procedure TEmail_.SetSmtpHost(const Value: string);
begin
  FSmtpHost := Value;
end;

procedure TEmail_.SetSmtpPass(const Value: string);
begin
  FSmtpPass := Value;
end;

procedure TEmail_.SetSmtpPort(const Value: string);
begin
  FSmtpPort := Value;
end;

procedure TEmail_.SetSmtpUser(const Value: string);
begin
  FSmtpUser := Value;
end;

procedure TEmail_.Settpenvio(const Value: Integer);
begin
  Ftpenvio := Value;
end;

{ TEnviarOutlook }

procedure TEnviarOutlook.anexar_arquivos;
var
  i : Integer;
begin
  for i := 0 to dsanexo.Count - 1 do
  begin
    vMailItem.Attachments.Add(dsanexo[i]);
  end;
end;

function TEnviarOutlook.enviar_outlook: boolean;
const
  olMailItem = 0;
var
  Outlook: OleVariant;
  i : Integer;
  lstemail:tstrings;
begin
  try
    Outlook := GetActiveOleObject(_Outlook_Application);
  except
    Outlook := CreateOleObject(_Outlook_Application);
  end;
  vMailItem := Outlook.CreateItem(olMailItem);

  lstemail := TStringList.Create;
  try
    prepararlista(lstemail, dsdestinatario, ';');
    if lstemail.count > 1 then
    begin
      dsdestinatario := lstemail[0];
    end;
    prepararlista(lstemail, dscc, ';');
    if lstemail.count = 1 then
    begin
      lstemail.Delete(0);
    end;
    for i := 0 to lstemail.count - 1 do
    begin
      vMailItem.Recipients.Add(lstemail[i]);
    end;
  finally
    FreeAndNil(lstemail);
  end;

  vMailItem.Recipients.Add(dsdestinatario);
  vMailItem.Subject  := dstitulo;
  vMailItem.htmlBody := dsmensagem;

  anexar_arquivos;
  vMailItem.Send;
  VarClear(Outlook);
  excluir_arquivo_de_anexo;
  result := true;
end;

procedure TEnviarOutlook.excluir_arquivo_de_anexo;
var
  i : Integer;
begin
  if not boexcluir_arquivo then
  begin
    Exit;
  end;
  for i := 0 to dsanexo.Count - 1 do
  begin
    if lowercase(boanexo[i]) = _sim then
    begin
      DeleteFile(dsanexo[i]);
    end;
  end;
end;

procedure TEnviarOutlook.Setboanexo(const Value: TStrings);
begin
  Fboanexo := Value;
end;

procedure TEnviarOutlook.Setboexcluir_arquivo(const Value: Boolean);
begin
  Fboexcluir_arquivo := Value;
end;

procedure TEnviarOutlook.Setdsanexo(const Value: TStrings);
begin
  Fdsanexo := Value;
end;

procedure TEnviarOutlook.Setdscc(const Value: string);
begin
  Fdscc := Value;
end;

procedure TEnviarOutlook.Setdsdestinatario(const Value: string);
begin
  Fdsdestinatario := Value;
end;

procedure TEnviarOutlook.Setdsmensagem(const Value: string);
begin
  Fdsmensagem := Value;
end;

procedure TEnviarOutlook.Setdstitulo(const Value: string);
begin
  Fdstitulo := Value;
end;

{ TEnviarGmail }

procedure TEnviarGmail.adicionar_anexos;
var
  i : Integer;
begin
  if dsanexo = nil then
  begin
    Exit;
  end;
  if dsanexo.Count = 0 then
  begin
    Exit;
  end;
  for i := 0 to dsanexo.Count - 1 do
  begin
    mail.AddAttachment(dsanexo[i]);
  end;
end;

constructor TEnviarGmail.create;
begin
  sCC         := TStringList.Create;
  dsmensagem1 := TStringList.Create;
  mail        := TACBrMail.Create(nil) ;  // Não Libera, pois usa FreeOnTerminate := True ;
  StreamNFe   := TStringStream.Create('');

  PedeConfirma := False;
  AguardarEnvio := False;
  NomeRemetente := '';
  TLS := True;
  usuarioemail := '';
  senhaemail := '';
  tpenvio := '';
end;

destructor TEnviarGmail.destroy;
begin
  StreamNFe.Free ;
  FreeAndNil(sCC);
  FreeAndNil(dsmensagem1);
end;

procedure TEnviarGmail.AdicionarCC;
var
  i: Integer;
begin
  if sCC.Text <> '' then
  begin
    for i := 0 to scc.Count - 1 do
    begin
      mail.AddCC(sCC[i]);
    end;
  end;
end;

procedure TEnviarGmail.ConfigurarSmtp;
begin
  if tpenvio = '' then
  begin
    if Empresa = nil then
    begin
      SmtpGmail;
    end
    else if empresa.emailE.envio = _g then
    begin
      SmtpGmail;
    end
    else if Empresa.emailE.envio = _u then
    begin
      SmtpUol;
    end
    else if empresa.emaile.envio = _z then
    begin
      SmtpEmpresa;
    end
    else if empresa.emaile.envio = _h then
    begin
      SmtpLive;
    end;
  end
  else if tpenvio = _1 then
  begin
    SmtpGmail;
  end
  else if tpenvio = _3 then
  begin
    SmtpUol;
  end
  else
  begin
    SmtpLive;
  end;
end;

procedure TEnviarGmail.SmtpEmpresa;
begin
  mail.Host := empresa.emaile.smtp;
  mail.Port := inttostr(empresa.emaile.nuporta);
  mail.SetSSL := empresa.emaile.bossl;
  mail.SetTLS := not empresa.emaile.bossl;
end;

procedure TEnviarGmail.SmtpLive;
begin
  mail.Host := _smtp_live_com;
  mail.Port := _587;
  mail.SetSSL := false;
  mail.SetTLS := true;
end;

procedure TEnviarGmail.SmtpGmail;
begin
  mail.Host := _smtp_gmail_com;
  mail.Port := _465;
  mail.SetSSL := true;
  mail.SetTLS := TLS;
end;

procedure TEnviarGmail.SmtpUol;
begin
  mail.Host := _smtp_uol_com_br;
  mail.Port := _587;
  mail.SetSSL := false;
  mail.SetTLS := true;
end;

function TEnviarGmail.enviar_gmail: boolean;
begin
  prepararlista(sCC, dsdestinatario, ';');
  if scc.count > 1 then
  begin
    dsdestinatario := scc[0];
  end;
  prepararlista(sCC, dscc, ';');
  if scc.count = 1 then
  begin
    scc.Delete(0);
  end;
  //mail.Body.Text := dsmensagem;
  //mail.IsHTML := not botexto;
  dsmensagem1.Text := dsmensagem;
  if dsmensagem1.Text <> '' then
  begin
    mail.Body.Text := dsmensagem1.Text;
    mail.IsHTML := not botexto;
  end;
  adicionar_anexos;
  mail.FromName := ObterFromName;
  mail.Subject := dstitulo;
  mail.ReadingConfirmation := PedeConfirma;
  mail.From := ObterFrom;
  mail.AddAddress(dsdestinatario);
  AdicionarCC;
  mail.UserName := ObterUserName;
  mail.Password := ObterPassword;
  ConfigurarSmtp;
  mail.send;
  excluir_arquivo_de_anexo;
  result := true;
end;

procedure TEnviarGmail.excluir_arquivo_de_anexo;
var
  i : Integer;
begin
  if not boexcluir_arquivo then
  begin
    Exit;
  end;
  if dsanexo = nil then
  begin
    Exit;
  end;
  for i := 0 to dsanexo.Count - 1 do
  begin
    if  boanexo[i] <> __nao then
    begin
      DeleteFile(dsanexo[i]);
    end;
  end;
end;

function TEnviarGmail.ObterFrom: string;
begin
  if usuarioemail <> '' then
  begin
    result := usuarioemail;
  end
  else
  begin
    result := usuario.email_.SmtpUser;
  end;
end;

function TEnviarGmail.ObterFromName: string;
begin
  if Trim(NomeRemetente) <> '' then
  begin
    result := NomeRemetente;
  end
  else
  begin
    result := usuario.nmusuario;
  end;
end;

function TEnviarGmail.ObterPassword: string;
begin
  if usuarioemail <> '' then
  begin
    result := senhaemail;
  end
  else
  begin
    result := usuario.email_.SmtpPass;
  end;
end;

function TEnviarGmail.ObterUserName: string;
begin
  if usuarioemail <> '' then
  begin
    result := usuarioemail;
  end
  else
  begin
    result := usuario.email_.SmtpUser;
  end;
end;

procedure TEnviarGmail.SetAguardarEnvio(const Value: Boolean);
begin
  FAguardarEnvio := Value;
end;

procedure TEnviarGmail.Setboanexo(const Value: TStrings);
begin
  Fboanexo := Value;
end;

procedure TEnviarGmail.Setboexcluir_arquivo(const Value: Boolean);
begin
  Fboexcluir_arquivo := Value;
end;

procedure TEnviarGmail.Setbotexto(const Value: boolean);
begin
  Fbotexto := Value;
end;

procedure TEnviarGmail.Setdsanexo(const Value: TStrings);
begin
  Fdsanexo := Value;
end;

procedure TEnviarGmail.Setdscc(const Value: string);
begin
  Fdscc := Value;
end;

procedure TEnviarGmail.Setdsdestinatario(const Value: string);
begin
  Fdsdestinatario := Value;
end;

procedure TEnviarGmail.Setdsmensagem(const Value: string);
begin
  Fdsmensagem := Value;
end;

procedure TEnviarGmail.Setdstitulo(const Value: string);
begin
  Fdstitulo := Value;
end;

procedure TEnviarGmail.SetNomeRemetente(const Value: String);
begin
  FNomeRemetente := Value;
end;

procedure TEnviarGmail.SetPedeConfirma(const Value: boolean);
begin
  FPedeConfirma := Value;
end;

procedure TEnviarGmail.Setsenhaemail(const Value: string);
begin
  Fsenhaemail := Value;
end;

procedure TEnviarGmail.SetTLS(const Value: Boolean);
begin
  FTLS := Value;
end;

procedure TEnviarGmail.Settpenvio(const Value: string);
begin
  Ftpenvio := Value;
end;

procedure TEnviarGmail.Setusuarioemail(const Value: string);
begin
  Fusuarioemail := Value;
end;

{ TEnviarEmail }

constructor TEnviarEmail.create;
begin
  nmremetente := '';
  nmusuario := '';
  dssenha := '';
  tpenvio :='';
  nmtabela :='';
  codigo := '';
end;

function TEnviarEmail.enviar_email: boolean;
begin
  if tpenvio = _0 then
  begin
    result := enviar_outlook
  end
  else if (tpenvio = _1) or (tpenvio = _2) then
  begin
    result := enviar_gmail;
  end
  else if empresa.emailE.envio = _o then
  begin
    result := enviar_outlook
  end
  else
  begin
    tpenvio := '';
    result := enviar_gmail;
  end;
  if result = true then
  begin
     tlogemail.registrar_log_email(dsmensagem, dsdestinatario, dscc, dstitulo, get_dsanexo, nmtabela, codigo);
  end;
end;

function TEnviarEmail.Enviar_Gmail: boolean;
var
  EnviarGmail : TEnviarGmail;
begin
  enviargmail := tenviargmail.create;
  try
    enviargmail.botexto := botexto;
    enviargmail.boexcluir_arquivo := boexcluir_arquivo;
    enviargmail.dsanexo := dsanexo;
    enviargmail.boanexo := boanexo;
    enviargmail.dsdestinatario := dsdestinatario;
    enviargmail.dscc := dscc;
    enviargmail.dstitulo := dstitulo;
    enviargmail.dsmensagem := dsmensagem;
    enviargmail.PedeConfirma := False;
    enviargmail.AguardarEnvio := false;
    enviargmail.NomeRemetente := nmremetente;
    enviargmail.TLS := true;
    enviargmail.usuarioemail := nmusuario;
    enviargmail.senhaemail := dssenha;
    enviargmail.tpenvio := tpenvio;
    result := enviargmail.enviar_gmail
  finally
    freeandnil(enviargmail);
  end;
end;

function TEnviarEmail.Enviar_outlook: boolean;
var
  EnviarOutlook: TEnviarOutlook;
begin
  EnviarOutlook := TEnviarOutlook.Create;
  try
    EnviarOutlook.boexcluir_arquivo := boexcluir_arquivo;
    EnviarOutlook.dsanexo := dsanexo;
    EnviarOutlook.boanexo := boanexo;
    EnviarOutlook.dsdestinatario := dsdestinatario;
    EnviarOutlook.dscc := dscc;
    EnviarOutlook.dstitulo := dstitulo;
    EnviarOutlook.dsmensagem := dsmensagem;
    result := EnviarOutlook.enviar_outlook
  finally
    freeandnil(EnviarOutlook);
  end;
end;

function TEnviarEmail.get_dsanexo: string;
begin
  result := '';
  if dsanexo <> nil then
  begin
    result := dsanexo.text;
  end;
end;

procedure TEnviarEmail.Setboanexo(const Value: TStrings);
begin
  Fboanexo := Value;
end;

procedure TEnviarEmail.Setboexcluir_arquivo(const Value: Boolean);
begin
  Fboexcluir_arquivo := Value;
end;

procedure TEnviarEmail.Setbotexto(const Value: boolean);
begin
  Fbotexto := Value;
end;

procedure TEnviarEmail.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
end;

procedure TEnviarEmail.Setdsanexo(const Value: TStrings);
begin
  Fdsanexo := Value;
end;

procedure TEnviarEmail.Setdscc(const Value: string);
begin
  Fdscc := Value;
end;

procedure TEnviarEmail.Setdsdestinatario(const Value: string);
begin
  Fdsdestinatario := Value;
end;

procedure TEnviarEmail.Setdsmensagem(const Value: string);
begin
  Fdsmensagem := Value;
end;

procedure TEnviarEmail.Setdssenha(const Value: string);
begin
  Fdssenha := Value;
end;

procedure TEnviarEmail.Setdstitulo(const Value: string);
begin
  Fdstitulo := Value;
end;

procedure TEnviarEmail.Setnmremetente(const Value: string);
begin
  Fnmremetente := Value;
end;

procedure TEnviarEmail.Setnmtabela(const Value: string);
begin
  Fnmtabela := Value;
end;

procedure TEnviarEmail.Setnmusuario(const Value: string);
begin
  Fnmusuario := Value;
end;

procedure TEnviarEmail.Settpenvio(const Value: string);
begin
  Ftpenvio := Value;
end;

end.
