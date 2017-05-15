unit classeusuario;

interface

uses
  system.UITypes, Rtti, Dialogs, forms, classes, sysutils,
  sqlexpr, data.db,
  LbClass,
  ustrings, uconstantes, udatahora,
  classeexecutasql, classeaplicacao, classeempresa, classeemail, classequery, ClasseTpAprovacao,
  classeretornasql, ClasseGrupos, classefuncionario, classeorm, classedao;

type
  TUsuario = class(TPersintentObject)
  private
    Fbocancelamento: String;
    Fbopedidodesconto: String;
    Fboprodutovlatacado: String;
    Fbotrayicon: String;
    Fboordservdesconto: String;
    Fboprodutovlespecial: String;
    Fcdusuario: integer;
    Fdsskin: string;
    Fgrupos: TGruposList;
    FTpAprovacao: TTpAprovacaoList;
    Fnmusuario: string;
    Femail: string;
    Fusustatus: string;
    Fususenha: string;
    Fcdempresa: string;
    Fusulogin: string;
    Femailsenha: string;
    Ftppermissao: string;
    Ffuncionario: TFuncionario;
    Femail_: TEmail_;
    procedure set_tpaprovacao;
  public
    comdesc : tstrings;
    Formulario : tstrings;
    Componente : tstrings;
    Ativar : tstrings;
    visivel : tstrings;
    property email_ : TEmail_ read Femail_ write Femail_;
    [keyfield]
    property cdusuario: integer read Fcdusuario write Fcdusuario;
    property cdempresa : string read Fcdempresa write Fcdempresa;
    property usulogin : string read Fusulogin write Fusulogin;
    property ususenha : string read Fususenha write Fususenha;
    property usustatus : string read Fusustatus write Fusustatus;
    property nmusuario : string read Fnmusuario write Fnmusuario;
    property tppermissao : string read Ftppermissao write Ftppermissao;
    property dsskin: string read Fdsskin write Fdsskin;
    property boordservdesconto : String read Fboordservdesconto write Fboordservdesconto;
    property bopedidodesconto : String read Fbopedidodesconto write Fbopedidodesconto;
    property bocancelamento : String read Fbocancelamento write Fbocancelamento;
    property boprodutovlatacado : String read Fboprodutovlatacado write Fboprodutovlatacado;
    property boprodutovlespecial : String read Fboprodutovlespecial write Fboprodutovlespecial;
    property email : string read Femail write Femail;
    property emailsenha : string read Femailsenha write Femailsenha;
    property botrayicon : String read Fbotrayicon write Fbotrayicon;
    property TpAprovacao : TTpAprovacaoList read FTpAprovacao write FTpAprovacao;
    property grupos : TGruposList read Fgrupos write Fgrupos;
    property funcionario : TFuncionario read Ffuncionario write Ffuncionario;
    constructor create;
    destructor destroy; override;
    function AcessaAplicacao(Usuario, dsAplicacao:string):boolean;
    function AlterarSenha(usulogin, senha, novasenha, confirmasenha:string):boolean;
    function Ativado(usuario:string):boolean;
    procedure CarregarPermissoes;
    function CodigoUsuarioLogin(login:string):string;
    function decriptarsenha(senha:string):string;
    function encriptarsenha(senha:string):string;
    function ExisteUsuario(usuario:string):boolean;
    function getlogincomputador(cdcomputador:string):string;
    function getcdempresa(nmusuario:string):string;
    function Nucpffuncionariologado:string;
    procedure Permissao_(usulogin, aplexe:string);
    function SenhaCorreta(usuario, senha:string):boolean;
    procedure SetUser(codigo:integer);
    procedure setcomputador(cdcomputador:string);
    procedure setempresa(cdempresa: LargeInt);
    function UsuarioConectado:string;
    procedure ZerarVariaveisConexao;
    procedure set_registro_login;
    function Select(const AValue: Integer):boolean;
  end;
  {TUsuarioDao = class
    class function Read(AUsuario: TUsuario; codigo: integer):boolean;
  end;}

var
  usuario : Tusuario;

implementation

USES classegerar, uRegistro;

procedure TUsuario.Permissao_(usulogin, aplexe:string);
var
  q : TClassequery;
begin
  q := TClassequery.Create('SELECT cr.comform'+
                    ',cr.comnome'+
                    ',cr.comdesc'+
                    ',ca.comvisible'+
                    ',ca.comenabled '+
              'from comreg cr '+
              'inner join comatrib ca on ca.comcod=cr.comcod '+
              'inner join papel p on p.cdpapel=ca.cdpapel '+
              'inner join aplicacao a on a.cdaplicacao=p.cdaplicacao '+
              'inner join grppapel gp on gp.cdpapel=p.cdpapel '+
              'inner join grpusu gu on gp.cdgrupos=gu.cdgrupos '+
              'inner join usuario u on u.cdusuario=gu.cdusuario '+
              'where a.aplexe='+quotedstr(uppercase(aplexe))+' and u.usulogin='+quotedstr(usulogin)+' '+
              'GROUP BY COMFORM,COMNOME,COMDESC,COMENABLED,COMVISIBLE '+
              'ORDER BY COMFORM,COMNOME,COMDESC,COMENABLED,COMVISIBLE');
  try
    while not q.q.eof do
    begin
      formulario.add(trim(q.q.fieldbyname(_comform).asstring));
      componente.add(Trim(q.q.fieldbyname(_comnome).asstring));
      comdesc.add   (Trim(q.q.fieldbyname(_comdesc).asstring));
      ativar.Add    (trim(q.q.fieldbyname(_comenabled).asstring));
      visivel.Add   (trim(q.q.fieldbyname(_comvisible).asstring));
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

function TUsuario.Select(const AValue: Integer): boolean;
begin
  cdusuario := avalue;
  result := inherited select;
  nmusuario := trim(nmusuario);
end;

function TUsuario.SenhaCorreta(usuario, senha:string):boolean;
begin
  result := RetornaSQLInteger('select count(*) from usuario where usulogin='+quotedstr(usuario)+' and ususenha='+quotedstr(encriptarsenha(senha))) > 0;
end;

function TUsuario.CodigoUsuarioLogin(login:string):string;
begin
  result :=  RetornaSQLString('select cdusuario from usuario where usulogin='+quotedstr(login));
end;

function TUsuario.AcessaAplicacao(Usuario, dsAplicacao:string):boolean;
var
  cdusuario, cdaplicacao : string;
begin
  cdusuario   := CodigoUsuarioLogin(usuario);
  cdaplicacao := RetornaSQLString ('select cdaplicacao from aplicacao where aplexe='+quotedstr(dsaplicacao));
  if cdaplicacao = '' then
  begin
    if dsaplicacao = 'QUIPOS.EXE' then
    begin
      ExecutaSQL('update aplicacao set aplexe='+quotedstr(dsaplicacao)+' where aplexe=''ADCONTROL.EXE''');
      cdaplicacao := RetornaSQLString ('select cdaplicacao from aplicacao where aplexe='+quotedstr(dsaplicacao));
    end;
    if cdaplicacao = '' then
    begin
      MessageDlg('Aplicação '+dsaplicacao+' não cadastrada no Gerenciador de Usuários.'#13'Cadastre a aplicação para continuar.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  result      := RetornaSQLInteger('select count(*) from aplusu where cdusuario='+cdusuario+' and cdaplicacao='+cdaplicacao) > 0;
  if not result then result := RetornaSQLInteger('select count(*) from grpusu where cdusuario='  +cdusuario+' and cdgrupos in (select cdgrupos from aplgr where cdaplicacao='+cdaplicacao+')') > 0;
  if not result then result := RetornaSQLInteger('select count(*) from usupapel where cdusuario='+cdusuario+' and cdpapel in (select cdpapel from papel where cdaplicacao='  +cdaplicacao+')') > 0;
  if not result then
  begin
    result := RetornaSQLInteger('select count(*) '+
                                      'from grppapel '+
                                      'where cdgrupos in (select cdgrupos '+
                                                         'from grpusu '+
                                                         'where cdusuario='+cdusuario+') and cdpapel in (select cdpapel '+
                                                                                                        'from papel '+
                                                                                                        'where cdaplicacao='+cdaplicacao+')') > 0;
  end;
end;

function TUsuario.AlterarSenha(usulogin, senha, novasenha, confirmasenha:string):boolean;
var
  objCriptografar : TLbBlowfish;
begin
  result := false;
  if not existeusuario(usulogin) then
  begin
    messagedlg('Usuário '+usulogin+' não cadastrado.', mterror, [mbok], 0);
    exit;
  end;
  if not senhaCorreta(usulogin, senha) then
  begin
    messagedlg('Senha do Usuário não confere.'#13'Troque a senha e tente novamente.', mterror, [mbok], 0);
    exit;
  end;
  if novasenha <> confirmasenha then
  begin
    messagedlg('A nova senha e a senha confirmada não coincidem. Digite-as novamente.', mterror, [mbok], 0);
    exit;
  end;
  result := true;
  objCriptografar := TLbBlowfish.Create(nil);
  try
    ExecutaSQL('update usuario set ususenha='+quotedstr(objCriptografar.EncryptString(novasenha))+' where cdusuario='+codigousuariologin(usulogin));
  finally
    freeandnil(objCriptografar);
  end;
end;

function TUsuario.ExisteUsuario(usuario:string):boolean;
begin
  result := RetornaSQLInteger('select count(*) from usuario where usulogin='+quotedstr(usuario)) > 0;
end;

function TUsuario.Ativado(usuario:string):boolean;
begin
  result := RetornaSQLString('select usustatus from usuario where usulogin='+quotedstr(usuario)) = _A;
end;

procedure TUsuario.SetUser(codigo:integer);
begin
  select(codigo);
  funcionario.Select(QRegistro.CodigodoInteiro(_funcionario, cdusuario, _cdusuario));
  grupos.Ler(_cdusuario, cdusuario);
  email_.SmtpUser := email;
  email_.SmtpPass := emailsenha;
  set_tpaprovacao;
  CarregarPermissoes;
end;

procedure TUsuario.set_registro_login;
begin
  ExecutaSQL('insert into login(CDLOGIN,CDUSUARIO,CDCOMPUTADOR,TSLOGIN)values('+
         gerar_codigo(_login)+','+inttostr(cdusuario)+','+vgcdcomputador+','+gettsbanco(tsbanco)+')');
end;

procedure TUsuario.ZerarVariaveisConexao;
begin
  usulogin := '';
  ususenha := '';
  nmusuario := '';
  cdusuario := 0;
  formulario.clear;
  componente.clear;
  comdesc.Clear;
  ativar.clear;
  visivel.clear;
end;

procedure TUsuario.CarregarPermissoes;
  function makesql:string;
  begin
    result := 'select comform'+
                    ',comnome'+
                    ',comdesc'+
                    ',comenabled'+
                    ',comvisible' +
                    ',u.tppermissao '+
              'from usuario u '+
              'inner join grpusu gu on u.cdusuario=gu.cdusuario '+
              'inner join grppapel gp on gu.cdgrupos=gp.cdgrupos ' +
              'inner join comatrib ca on gp.cdpapel=ca.cdpapel ' +
              'inner join comreg cr on ca.comcod=cr.comcod ' +
              'inner join aplicacao a on cr.cdaplicacao=a.cdaplicacao ' +
              'where usulogin='+QuotedStr(usulogin)+' and aplexe='+QuotedStr(uppercase(ExtractFileName(Application.ExeName)))+' '+
              'order by comform,comnome';
  end;
var
  q : TClasseQuery;
  tppermissao : string;
  chave : TStrings;
  i : integer;
begin
  formulario.clear;
  componente.clear;
  comdesc.Clear;
  ativar.clear;
  visivel.clear;

  q     := TClasseQuery.create;
  chave := TStringlist.Create;
  try
    q.q.open(makesql);
    tppermissao := q.q.fieldbyname(_tppermissao).asstring;
    while not q.q.eof do
    begin
      i := chave.indexof(trim(q.q.fieldbyname(_comform).asstring)+trim(q.q.fieldbyname(_comnome).asstring));
      if (i > -1) and (q.q.fieldbyname(_comnome).asstring <> 'TRV') then // já existe uma inserção desta configuração
      begin
        if q.q.fieldbyname(_comenabled).asstring  = _S then ativar[i]  := _S;
        if q.q.fieldbyname(_comvisible).asstring  = _S then visivel[i] := _S;
        q.q.Next;
        continue;
      end;
      chave.add         (trim(q.q.fieldbyname(_comform).asstring)+trim(q.q.fieldbyname(_comnome).asstring));
      formulario.Add(Trim(q.q.fieldbyname(_comform).asstring));
      componente.add(trim(q.q.fieldbyname(_comnome).asstring));
      comdesc.add(trim(q.q.fieldbyname(_comdesc).asstring));
      ativar.Add    (q.q.fieldbyname(_comenabled).asstring);
      visivel.Add   (q.q.fieldbyname(_comvisible).asstring);
      q.q.next;
    end;
  finally
    freeandnil(q);
    freeandnil(chave);
  end;
end;

function TUsuario.Nucpffuncionariologado:string;
begin
  Result := RetornaSQLString('select nucpf from funcionario where cdempresa='+empresa.cdempresa.toString+' and nmfuncionario='+quotedstr(usuarioconectado));
end;

function TUsuario.UsuarioConectado:string;
begin
  result := RetornaSQLString('select cdfuncionario from funcionario where cdempresa='+empresa.cdempresa.toString+' and nmfuncionario='+quotedstr(nmusuario));
end;

constructor TUsuario.create;
begin
  inherited;
  ffuncionario := tfuncionario.create;
  femail_ := temail_.create;
  Formulario := TStringList.create;
  Componente := TStringList.create;
  comdesc    := tstringlist.Create;
  Ativar     := TStringList.create;
  visivel    := TStringList.Create;
  ftpaprovacao    := ttpaprovacaoList.create;
  fgrupos         := tgruposlist.Create;
end;

destructor TUsuario.destroy;
begin
  freeandnil(ffuncionario);
  freeandnil(femail_);
  freeandnil(Formulario);
  freeandnil(Componente);
  freeandnil(comdesc);
  freeandnil(Ativar);
  freeandnil(visivel);
  FreeAndNil(fgrupos);
  freeandnil(ftpaprovacao);
  inherited;
end;

function TUsuario.decriptarsenha(senha: string): string;
var
   objCriptografar :  TLbBlowfish;
begin
  objCriptografar := TLbBlowfish.Create(nil);
  try
    result := objCriptografar.DecryptString(senha);
  finally
    FreeAndNil(objCriptografar);
  end;
end;

function TUsuario.encriptarsenha(senha: string): string;
var
   objCriptografar :  TLbBlowfish;
begin
  objCriptografar := TLbBlowfish.Create(nil);
  try
    result := objCriptografar.EncryptString(senha);
  finally
    FreeAndNil(objCriptografar);
  end;
end;

procedure TUsuario.setcomputador(cdcomputador: string);
begin
  ExecutaSQL('update computador set cdusuario='+inttostr(cdusuario)+' where cdcomputador='+cdcomputador);
end;

procedure TUsuario.setempresa(cdempresa: LargeInt);
begin
  ExecutaSQL('update usuario set cdempresa='+cdempresa.ToString+' where cdusuario='+inttostr(cdusuario));
end;

function TUsuario.getlogincomputador(cdcomputador: string): string;
var
  cdusuario: string;
begin
  result := '';
  cdusuario := NomedoCodigo(_computador, cdcomputador, _cdusuario);
  if cdusuario <> '' then
  begin
    result := Trim(nomedocodigo(_usuario, cdusuario, _usulogin));
  end;
end;

function TUsuario.getcdempresa(nmusuario: string): string;
begin
  Result := RetornaSQLString('select cdempresa from usuario where nmusuario='+quotedstr(nmusuario));
end;

procedure TUsuario.set_tpaprovacao;
var
  i : Integer;
begin
  TpAprovacao.Clear;
  TpAprovacao.Ler(_cdusuario, cdusuario);
  for i := 0 to grupos.Count - 1 do
  begin
    TpAprovacao.Ler(_cdgrupos, grupos.Items[i].cdgrupos);
  end;
end;

{class function TUsuarioDao.Read(AUsuario: TUsuario; codigo: integer): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_usuario, codigo));
  try
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    AUsuario.cdusuario := q.q.FieldByName(_cdusuario).AsInteger;
    AUsuario.cdempresa := q.q.FieldByName(_cdempresa).AsLargeInt;
    AUsuario.usulogin := q.q.FieldByName(_usulogin).AsString;
    AUsuario.ususenha := q.q.FieldByName(_ususenha).AsString;
    AUsuario.usustatus := q.q.FieldByName(_usustatus).AsString;
    AUsuario.nmusuario := q.q.FieldByName(_nmusuario).AsString;
    AUsuario.bocancelamento := q.q.FieldByName(_bocancelamento).AsString;
    AUsuario.tppermissao := q.q.FieldByName(_tppermissao).AsString;
    AUsuario.boprodutovlespecial := q.q.FieldByName(_boprodutovlespecial).AsString;
    AUsuario.boprodutovlatacado := q.q.FieldByName(_boprodutovlatacado).AsString;
    AUsuario.botrayicon := q.q.FieldByName(_botrayicon).AsString;
    AUsuario.dsskin := q.q.FieldByName(_dsskin).AsString;
    AUsuario.email := q.q.FieldByName(_email).AsString;
    AUsuario.boordservdesconto := q.q.FieldByName(_boordservdesconto).AsString;
    AUsuario.emailsenha := q.q.FieldByName(_emailsenha).AsString;
    AUsuario.bopainelmain := q.q.FieldByName(_bopainelmain).AsString;
    AUsuario.bopedidodesconto := q.q.FieldByName(_bopedidodesconto).AsString;
  finally
    FreeAndNil(q);
  end;
end;}

end.
