unit classeVersao;

interface

uses
  System.Actions, System.UITypes,
  Forms, ShellAPI, Windows, dialogs, controls, SysUtils, classes,
  sqlexpr, data.db,
  cxMemo,
  usystem, uAssinaturaDigital, ulogin, uinterbase, uConfiguracao, uconstantes,
  uprotector, untversao, uRichEdit, uRotinas,
  classeaplicacao, classeemail, classeempresa, classeusuario, classeexecutasql, classeretornasql;

type
  TVersao = Class(TObject)
  private
    versaobanco, versaoprojeto  : string;
    function  ExecutarArquivo(arq, nmfile:string; erro: tstrings):boolean;
    function  ExecutarScripts  (arquivos, versoes: TStrings; Diretorio, versaobanco:string): boolean;
    procedure ListarArquivos   (arquivos: TStrings; Diretorio: string; Sub: Boolean);
    function  RetiraSqlNmScript(nome: string): string;
    function  TemAtributo      (Attr, Val: Integer): Boolean;
    procedure EnviarEmail(versoes: TStrings; i2: integer);
  public
    function  GetBuildInfo     (valor:integer): string;
    function  VerificarVersao:boolean;
  end;

function LoginBancoDados:integer;
function EfetuarLogin   :boolean;

implementation

uses uregistro, uDtmMain, udownload;

const
  lstversao = '2.5.0.0.sql'#13'2.5.1.0.sql'#13'2.5.2.0.sql'#13'2.5.3.0.sql'#13'2.5.4.0.sql'#13'2.5.5.0.sql'#13+
              '2.5.6.0.sql'#13'2.5.7.0.sql'#13'2.5.8.0.sql'#13'2.5.9.0.sql'#13'2.5.10.0.sql'#13'2.5.11.0.sql'#13'2.5.12.0.sql'#13+
              '2.5.13.0.sql'#13'2.5.14.0.sql'#13'2.5.15.0.sql'#13'2.5.16.0.sql'#13'2.5.17.0.sql'#13'2.5.18.0.sql'#13'2.5.19.0.sql'#13+
              '2.5.20.0.sql'#13'2.5.21.0.sql'#13'2.5.22.0.sql'#13'2.5.23.0.sql'#13'2.5.24.0.sql'#13'2.5.25.0.sql'#13'2.5.26.0.sql'#13+
              '2.5.27.0.sql'#13'2.5.28.0.sql'#13'2.5.29.0.sql'#13'2.5.30.0.sql'#13'2.5.31.0.sql'#13'2.5.32.0.sql'#13'2.5.33.0.sql'#13+
              '2.5.34.0.sql'#13'2.5.35.0.sql'#13'2.5.36.0.sql'#13'2.5.37.0.sql'#13'2.5.38.0.sql'#13'2.5.39.0.sql'#13'2.5.40.0.sql'#13+
              '2.5.41.0.sql'#13'2.5.42.0.sql'#13'2.5.43.0.sql'#13'2.5.44.0.sql'#13'2.5.45.0.sql'#13'2.5.46.0.sql'#13'2.5.47.0.sql'#13+
              '2.5.48.0.sql'#13'2.5.49.0.sql'#13'2.5.50.0.sql'#13'2.5.51.0.sql'#13'2.5.52.0.sql'#13'2.5.53.0.sql'#13'2.5.54.0.sql'#13+
              '2.5.55.0.SQL'#13'2.5.56.0.sql'#13'2.5.57.0.sql'#13'2.5.58.0.sql'#13'2.5.59.0.sql'#13'2.5.60.0.sql'#13'2.5.61.0.sql'#13+
              '2.5.62.0.sql'#13'2.5.63.0.sql'#13'2.5.64.0.sql'#13'2.5.65.0.sql'#13'2.5.66.0.sql'#13'2.5.67.0.sql'#13'2.5.68.0.sql'#13+
              '2.5.69.0.sql'#13'2.5.70.0.sql'#13'2.5.71.0.sql'#13'2.5.72.0.sql'#13'2.5.73.0.sql'#13'2.5.74.0.sql'#13'2.5.75.0.sql'#13+
              '2.5.76.0.SQL'#13'2.5.77.0.SQL'#13'2.5.78.0.SQL'#13'2.5.79.0.SQL'#13'2.5.80.0.sql'#13'2.5.81.0.sql'#13'2.5.82.0.sql'#13+
              '2.5.83.0.sql'#13'2.5.84.0.sql'#13'2.5.85.0.sql'#13'2.5.86.0.sql'#13'2.5.87.0.sql'#13'2.5.88.0.sql'#13'2.5.89.0.sql'#13+
              '2.5.90.0.sql'#13'2.5.91.0.sql'#13'2.5.92.0.sql'#13'2.5.93.0.sql'#13'2.5.94.0.sql'#13'2.5.95.0.sql'#13'2.5.96.0.sql'#13+
              '2.5.97.0.sql'#13'2.5.98.0.sql'#13'2.5.99.0.sql'#13+
              '2.6.0.0.sql'#13'2.6.1.0.sql'#13'2.6.2.0.sql'#13'2.6.3.0.sql'#13'2.6.4.0.sql'#13'2.6.5.0.sql'#13'2.6.6.0.sql'#13+
              '2.6.7.0.sql'#13'2.6.8.0.sql'#13'2.6.9.0.sql'#13'2.6.10.0.sql'#13'2.6.11.0.sql'#13'2.6.12.0.sql'#13'2.6.13.0.sql'#13+
              '2.6.14.0.sql'#13'2.6.15.0.sql'#13'2.6.16.0.sql'#13'2.6.17.0.sql'#13'2.6.18.0.sql'#13'2.6.19.0.sql'#13'2.6.20.0.sql'#13+
              '2.6.21.0.sql'#13'2.6.22.0.sql'#13'2.6.23.0.sql'#13'2.6.24.0.sql'#13'2.6.25.0.sql'#13'2.6.26.0.sql'#13'2.6.27.0.sql'#13+
              '2.6.28.0.sql'#13'2.6.29.0.sql'#13'2.6.30.0.sql'#13'2.6.31.0.sql'#13'2.6.32.0.sql'#13'2.6.33.0.sql'#13'2.6.34.0.sql'#13+
              '2.6.35.0.sql'#13'2.6.36.0.sql'#13'2.6.37.0.sql'#13'2.6.38.0.sql'#13'2.6.39.0.sql'#13'2.6.40.0.sql'#13'2.6.41.0.sql'#13+
              '2.6.42.0.sql'#13'2.6.43.0.sql'#13'2.6.44.0.sql'#13'2.6.45.0.sql'#13'2.6.46.0.sql'#13'2.6.47.0.sql'#13'2.6.48.0.sql'#13+
              '2.6.49.0.sql'#13'2.6.50.0.sql'#13'2.6.51.0.sql'#13'2.6.52.0.sql'#13'2.6.53.0.sql'#13'2.6.54.0.sql'#13'2.6.55.0.sql'#13+
              '2.6.56.0.sql'#13'2.6.57.0.sql'#13'2.6.58.0.sql'#13'2.6.59.0.sql'#13'2.6.60.0.sql'#13'2.6.61.0.sql'#13'2.6.62.0.sql'#13+
              '2.6.63.0.sql'#13'2.6.64.0.sql'#13'2.6.65.0.sql'#13'2.6.66.0.sql'#13'2.6.67.0.sql'#13'2.6.68.0.sql'#13'2.6.69.0.sql'#13+
              '2.6.70.0.sql'#13'2.6.71.0.sql'#13'2.6.72.0.sql'#13'2.6.73.0.sql'#13'2.6.74.0.sql'#13'2.6.75.0.sql'#13'2.6.76.0.sql'#13+
              '2.6.77.0.sql'#13'2.6.78.0.sql'#13'2.6.79.0.sql'#13'2.6.80.0.sql'#13'2.6.81.0.sql'#13'2.6.82.0.sql'#13'2.6.83.0.sql'#13+
              '2.6.84.0.sql'#13'2.6.85.0.sql'#13'2.6.86.0.sql'#13'2.6.87.0.sql'#13'2.6.88.0.sql'#13'2.6.89.0.sql'#13'2.6.90.0.sql'#13+
              '2.6.91.0.sql'#13'2.6.92.0.sql'#13'2.6.93.0.sql'#13'2.6.94.0.sql'#13'2.6.95.0.sql'#13'2.6.96.0.sql'#13'2.6.97.0.sql'#13+
              '2.6.98.0.sql'#13'2.6.99.0.sql'#13+
              '2.7.0.0.sql'#13'2.7.1.0.sql'#13'2.7.2.0.sql'#13'2.7.3.0.sql'#13'2.7.4.0.sql'#13'2.7.5.0.sql'#13'2.7.6.0.sql'#13+
              '2.7.7.0.sql'#13'2.7.8.0.sql'#13'2.7.9.0.sql'#13'2.7.10.0.sql'#13'2.7.11.0.sql'#13'2.7.12.0.sql'#13'2.7.13.0.sql'#13+
              '2.7.14.0.sql'#13'2.7.15.0.sql'#13'2.7.16.0.sql'#13'2.7.17.0.sql'#13'2.7.18.0.sql'#13'2.7.19.0.sql'#13'2.7.20.0.sql'#13+
              '2.7.21.0.sql'#13'2.7.22.0.sql'#13'2.7.23.0.sql'#13'2.7.24.0.sql'#13'2.7.25.0.sql'#13'2.7.26.0.sql'#13'2.7.27.0.sql'#13+
              '2.7.28.0.sql'#13'2.7.29.0.sql'#13'2.7.30.0.sql'#13'2.7.31.0.sql'#13'2.7.32.0.sql'#13'2.7.33.0.sql'#13'2.7.34.0.sql'#13+
              '2.7.35.0.sql'#13'2.7.36.0.sql'#13'2.7.37.0.sql'#13'2.7.38.0.sql'#13'2.7.39.0.sql'#13'2.7.40.0.sql'#13'2.7.41.0.sql'#13+
              '2.7.42.0.sql'#13'2.7.43.0.sql'#13'2.7.44.0.sql'#13'2.7.45.0.sql'#13'2.7.46.0.sql'#13'2.7.47.0.sql'#13'2.7.48.0.sql'#13+
              '2.7.49.0.sql'#13'2.7.50.0.sql'#13'2.7.51.0.sql'#13'2.7.52.0.sql'#13'2.7.53.0.sql'#13'2.7.54.0.sql'#13'2.7.55.0.sql'#13+
              '2.7.56.0.sql'#13'2.7.57.0.sql'#13'2.7.58.0.sql'#13'2.7.59.0.sql'#13'2.7.60.0.sql'#13'2.7.61.0.sql'#13'2.7.62.0.sql'#13+
              '2.7.63.0.sql'#13'2.7.64.0.sql'#13'2.7.65.0.sql'#13'2.7.66.0.sql'#13'2.7.67.0.sql'#13'2.7.68.0.sql'#13'2.7.69.0.sql'#13+
              '2.7.70.0.sql'#13'2.7.71.0.sql'#13'2.7.72.0.sql'#13'2.7.73.0.sql'#13'2.7.74.0.sql'#13'2.7.75.0.sql'#13'2.7.76.0.sql'#13+
              '2.7.77.0.sql'#13'2.7.78.0.sql'#13'2.7.79.0.sql'#13'2.7.80.0.sql'#13'2.7.81.0.sql'#13'2.7.82.0.sql'#13'2.7.83.0.sql'#13+
              '2.7.84.0.sql'#13'2.7.85.0.sql'#13'2.7.86.0.sql'#13'2.7.87.0.sql'#13'2.7.88.0.sql'#13'2.7.89.0.sql'#13'2.7.90.0.sql'#13+
              '2.7.91.0.sql'#13'2.7.92.0.sql'#13'2.7.93.0.sql'#13'2.7.94.0.sql'#13'2.7.95.0.sql'#13'2.7.96.0.sql'#13'2.7.97.0.sql'#13+
              '2.7.98.0.sql'#13'2.7.99.0.sql'#13'2.8.0.0.sql'#13'2.8.1.0.sql'#13'2.8.2.0.sql'#13'2.8.3.0.sql'#13'2.8.4.0.sql'#13+
              '2.8.5.0.sql'#13'2.8.6.0.sql'#13'2.8.7.0.sql'#13'2.8.8.0.sql'#13'2.8.9.0.sql'#13'2.8.10.0.sql'#13'2.8.11.0.sql'#13+
              '2.8.12.0.sql'#13'2.8.13.0.sql'#13'2.8.14.0.sql'#13'2.8.15.0.sql'#13'2.8.16.0.sql'#13'2.8.17.0.sql'#13'2.8.18.0.sql'#13+
              '2.8.19.0.sql'#13'2.8.20.0.sql'#13'2.8.21.0.sql'#13'2.8.22.0.sql'#13'2.8.23.0.sql'#13'2.8.24.0.sql'#13'2.8.25.0.sql'#13+
              '2.8.26.0.sql'#13'2.8.27.0.sql'#13'2.8.28.0.sql'#13'2.8.29.0.sql'#13'2.8.30.0.sql'#13'2.8.31.0.sql'#13'2.8.32.0.sql'#13+
              '2.8.33.0.sql'#13'2.8.34.0.sql'#13'2.8.35.0.sql'#13'2.8.36.0.sql'#13'2.8.37.0.sql'#13'2.8.38.0.sql'#13'2.8.39.0.sql'#13+
              '2.8.40.0.sql'#13'2.8.41.0.sql'#13'2.8.42.0.sql'#13'2.8.43.0.sql'#13'2.8.44.0.sql'#13'2.8.45.0.sql'#13'2.8.46.0.sql'#13+
              '2.8.47.0.sql'#13'2.8.48.0.sql'#13'2.8.49.0.sql'#13'2.8.50.0.sql'#13'2.8.51.0.sql'#13'2.8.52.0.sql'#13'2.8.53.0.sql'#13+
              '2.8.54.0.sql'#13'2.8.55.0.sql'#13'2.8.56.0.sql'#13'2.8.57.0.sql'#13'2.8.58.0.sql'#13'2.8.59.0.sql'#13'2.8.60.0.sql'#13+
              '2.8.61.0.sql'#13'2.8.62.0.sql'#13'2.8.63.0.sql'#13'2.8.64.0.sql'#13'2.8.65.0.sql'#13'2.8.66.0.sql'#13'2.8.67.0.sql'#13+
              '2.8.68.0.sql'#13'2.8.69.0.sql'#13'2.8.70.0.sql';

function EfetuarLogin:boolean;
var
  resposta : integer;
begin
  if usuario = nil then
  begin
    usuario := TUsuario.create;
  end;
  result := true;
  repeat
    resposta := LoginBancoDados;
  until (resposta <> 6) and (resposta <> 4);
  if (resposta = mrno) or (resposta = mrcancel) or (resposta = 5) then
  begin
    if (resposta = mrCancel) and (screen.FormCount > 0) then
    begin
      result := false;
      Exit;
    end;
    aplicacao.con2.Close;
    application.terminate;
    result := false;
  end
  else if resposta = 0 then
  begin
    result := False;
    aplicacao.con2.Close;
  end;
end;

function LoginBancoDados:integer;
var
  versao : TVersao;
  cdempresa : LargeInt;
  resposta : integer;
begin
  versao := TVersao.Create;
  try
    aplicacao.ConfiguraBancoDados;
    if not check_conexao then
    begin
      resposta := messagedlg('As informações de configuração de conexão não estão corretas.'#13'Você gostaria de corrigir as informações agora?', mtConfirmation, [mbyes, mbno], 0);
      if (resposta = mryes) and (not configurar) then
      begin
        result := 5;
        exit;
      end;
    end;
    result := 4;
    if not versao.VerificarVersao then
    begin
      result := mrcancel;
      exit;
    end;
    cdempresa := frmlogin.login;
    if cdempresa = -1 then
    begin
      if Configurar then
      begin
        LoginBancoDados;
      end;
    end
    else
    begin
      if cdempresa = 0 then
      begin
        result := mrcancel;
        exit;
      end;
      if empresa = nil then
      begin
        empresa := TEmpresa.create(cdempresa);
      end;
      result := mrok;
      usuario.setuser(usuario.cdusuario);
      usuario.setcomputador(vgcdcomputador);
      usuario.setempresa(cdempresa);
      usuario.set_registro_login;
    end;
  finally
    freeandnil(versao);
  end;
end;

procedure TVersao.EnviarEmail(versoes: TStrings; i2: integer);
var
  enviargmail : tenviargmail;
  lista_arquivo, erro : TStrings;
begin
  exit;
  enviargmail := tenviargmail.create;
  lista_arquivo := TStringList.Create;
  try
    enviargmail.botexto := true;
    enviargmail.boexcluir_arquivo := false;
    enviargmail.dsanexo := lista_arquivo;
    enviargmail.boanexo := lista_arquivo;
    enviargmail.dsdestinatario := 'error@quipos.inf.br';
    enviargmail.dscc := '';
    enviargmail.dstitulo := RetornaSQLString('select nmempresa from empresa')+' - '+
                            copy(Versoes[i2], 1, Length(Versoes[i2])-6)+' até '+
                            copy(Versoes[Versoes.Count -1], 1, Length(Versoes[Versoes.Count -1])-6)+' - '+
                            qp_nmcomputador;
    enviargmail.dsmensagem := 'Ocorreram erros na atualização '#13+erro.text;
    enviargmail.PedeConfirma := true;
    enviargmail.AguardarEnvio := true;
    enviargmail.NomeRemetente := 'Suporte Quipos';
    enviargmail.TLS := true;
    enviargmail.usuarioemail := 'suporte@quipos.inf.br';
    enviargmail.senhaemail := 'suportequipos2012';
  finally
    freeandnil(enviargmail);
    freeandnil(lista_arquivo);
  end;
end;

function TVersao.ExecutarArquivo(arq, nmfile:string; erro :TStrings):boolean;
var
  sql, arquivo: tstrings;
  y : integer;
  textoold, texto: string;
  acumularlinha, SetTerm : boolean;
begin
  result := False;
  erro.Add('Atualização Executada!');
  arquivo  := tstringlist.Create;
  sql      := tstringlist.Create;
  acumularlinha := False;
  SetTerm       := false;
  try
    Arquivo.LoadFromFile(arq);
    frmVersao.gau1.MaxValue    := 0;
    frmVersao.gau1.MaxValue    := Arquivo.count;
    frmVersao.lbllinha.Visible := true;
    for y := 0 to arquivo.Count - 1 do
    begin
      frmVersao.gau1.Progress := y + 1;
      application.ProcessMessages;
      texto                      := arquivo[y];
      frmVersao.lbllinha.Caption := 'Linha ' + inttostr(y + 1)+' de '+inttostr(arquivo.Count - 1);
      frmVersao.mem.Lines.Text   := texto;
      application.ProcessMessages;
      if (texto = 'SET TERM ^ ;') or (texto = 'SET TERM ^;') then
      begin
        SetTerm       := true;
        acumularlinha := false;
      end
      else if texto = 'SET TERM ; ^' then
      begin
        SetTerm := false
      end
      else if not SetTerm then
      begin
        acumularlinha := false;
        if (texto = '') or (texto[length(texto)] <> ';') then
        begin
          acumularlinha := true;
        end;
      end;
      sql.Add(texto);
      if (not SetTerm) and (not acumularlinha) then
      begin
        try
          if sql[0] = 'SET TERM ^ ;' then
          begin
            sql.Delete(0);
            sql.Delete(sql.Count-1);
            sql.Delete(sql.Count-1);
          end;
          textoold := sql.text;
          aplicacao.con2.ExecuteDirect(sql.Text);
        except
          erro.text := erro.text + 'Arquivo:'+nmfile+' Linha: '+inttostr(y)+#13+textoold+sql.text;
          if Copy(LowerCase(sql.Text), 1, 12) = 'commit work;' then
          begin
            ShowMessage('Erro no arquivo '+nmfile+' na instrução ('+inttostr(y + 1)+'): '#13+textoold+sql.Text+#13'A aplicação será finalizada.'#13'Favor entrar em contato com a Quipos.');
            exit;
          end;
        end;
        sql.Clear;
      end;
    end;
    result := True;
  finally
    freeandnil(arquivo);
    freeandnil(sql);
  end;
end;

function TVersao.ExecutarScripts(arquivos, versoes: TStrings; Diretorio, versaobanco:string): boolean;
var
  i, i2: Integer;
  versao, arq : string;
  executar: Boolean;
  erro : TStrings;
begin
  i2 := 0;
  result    := False;
  executar  := false;
  frmVersao := tfrmVersao.Create(nil);
  erro      := TStringList.Create;
  try
    frmVersao.Show;
    frmVersao.gau.Visible  := true;
    frmVersao.gau1.Visible := true;
    frmVersao.gau.Progress := 0;
    i2                     := versoes.IndexOf(versaobanco);
    frmVersao.gau.MaxValue := Versoes.Count - i2;
    for i := i2 to Versoes.Count -1 do
    begin
      application.title := copy(Versoes.Strings[i], 1, Length(Versoes.Strings[i])-4);
      frmVersao.lblarquivo.Caption := 'Atualizando da versão '+copy(Versoes.Strings[i               ], 1, Length(Versoes.Strings[i               ])-4)+
                                                       ' até '+copy(Versoes.Strings[Versoes.Count -1], 1, Length(Versoes.Strings[Versoes.Count -1])-4);
      frmVersao.lblarquivo.Refresh;
      frmVersao.lblarquivo.Visible := true;
      versao := (Versoes.Strings[i]);
      if executar then
      begin
        arq := Diretorio+'\'+Versoes.Strings[i];
        if arquivos.IndexOf(Versoes.Strings[i]) > -1 then
        begin
          if not executarArquivo(arq, Versoes.Strings[i], erro) then
          begin
            exit;
          end
        end
        else
        begin
          messagedlg('Arquivo '+arq+' não encontrado', mtinformation, [mbok], 0);
        end;
      end;
      if UpperCase(versao) = UpperCase(versaobanco) then
      begin
        executar := true;
      end;
      if executar then
      begin
        frmVersao.gau.Progress := frmVersao.gau.Progress + 1;
      end;
    end;
    result := True;
    Application.Title         := 'Quipos';
  finally
    if (erro.Count > 0) and QRotinas.bosenomecomputadornaosequipos(qp_nmcomputador) then
    begin
      EnviarEmail(versoes, i2);
    end;
    freeandnil(frmVersao);
    freeandnil(erro);
  end;
end;

function TVersao.VerificarVersao:boolean;
var
  nuconexao, i7,i5, i6, i4, i3, i : integer;
  vp, vb, Diretorio : string;
  arquivos, versoes : Tstrings;
  stdiretorio : boolean;
  handle : integer;
begin
  result   := false;
  arquivos := tstringlist.Create;
  versoes  := TStringList.create;
  try
    versaobanco   := RetornaSQLString('select nuversao from empresa')+'.sql';
    // esta muito lento o comando abaixo, verificar o motivo
    versaoprojeto := GetBuildInfo(3)+'.0'+'.sql';
    versoes.Text  := lstversao;
    i5            := versoes.IndexOf(versaobanco);
    i6            := versoes.indexof(versaoprojeto);
    i7            := versoes.IndexOf(versaobanco);
    if (i5 > i6) or (I7 = -1) then
    begin
      vb := versaobanco;
      vp := versaoprojeto;
      delete(vb, length(vb) - 5, 6);
      delete(vp, length(vp) - 5, 6);
      if '2.5.0' > vb then
      begin
        messagedlg('Banco de dados muito antigo ('+vb+').'#13'Favor entrar em contato com a Quipos', mtInformation, [mbOK], 0);
        Abort;
      end;
      if messagedlg('A versão do seu executável ('+vp+') está desatualizada em relação ao Banco de Dados ('+vb+').'#13'Baixar a última versão do site?', mtConfirmation, [mbYes, mbno], 0) = mryes then
      begin
        dlg_atualizaco_quipos;
        //handle := 0;
        //ShellExecute(Handle, _open, _path_download_atualizacao, Nil, Nil, SW_SHOWDEFAULT);
      end
      else if MessageDlg('Você gostaria de executar o Suporte Remoto?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
      begin
        handle := 0;
        if ShellExecute(Handle, nil, PChar(ExtractFilePath(Application.ExeName)+'\TeamViewerQS_pt.exe'), nil, nil, SW_SHOWNORMAL) = ERROR_FILE_NOT_FOUND then
        begin
          if ShellExecute(Handle, nil, PChar(ExtractFilePath(Application.ExeName)+'\TeamViewerQS.exe'), nil, nil, SW_SHOWNORMAL) = ERROR_FILE_NOT_FOUND then
          begin
            if MessageDlg('Arquivo não existe no seu computador.'#13'Baixar o arquivo?', mtConfirmation, [mbYes, mbNo], 0) = mryes then
            begin
              ShellExecute(Handle, _open, 'http://www.teamviewer.com/download/version_7x/TeamViewerQS.exe', Nil, Nil, SW_SHOWDEFAULT);
            end;
          end;
        end;
      end;
    end
    else
    begin
      if versoes.IndexOf(versaoprojeto) = -1 then
      begin
        for i := 0 to versoes.Count do
        begin
          versaoprojeto := versoes.Strings[versoes.count-1];
          if versaoprojeto = versaobanco then
          begin
            Break;
          end;
        end;
      end;
      if versaoprojeto <> versaobanco then
      begin
        if messagedlg('Deseja Atualizar o Banco de dados '#13'da versão       '+RetiraSqlNmScript(versaobanco)+#13'para a versao '  +RetiraSqlNmScript(versaoprojeto)+'?', mtConfirmation, [mbyes, mbno], 0) = mrno then
        begin
          result := False;
          Exit;
        end;
        if ExisteTabela('REPL_CHANGES') then
        begin
          if RetornaSQLInteger('select count(*) from REPL_CHANGES where book is null') > 0 then
          begin
            messagedlg('Atualização não é possível porque existem dados que ainda não foram replicados.'#13'Replique os dados para poder continuar.', mtInformation, [mbOK], 0);
            result := False;
            Exit;
          end;
        end;
        nuconexao := RetornaSQLInteger('select count(*) from mon$attachments');
        if nuconexao > 2 then
        begin
          messagedlg('Não será possível atualizar porque existe(m) '+inttostr(nuconexao-2)+' usuário(s) conectado ao seu banco.'#13'Feche as aplicações que estão conectadas ao seu banco para atualizar.', mtInformation, [mbOK], 0);
          result := False;
          Exit;
        end;
        stdiretorio := true;
        while stdiretorio do
        begin
          Diretorio := ExtractFilePath(Application.ExeName)+'\atualizacao';
          ListarArquivos(arquivos, Diretorio, false);
          i4 := versoes.IndexOf(versaobanco);
          for i := i4 to versoes.Count -1 do
          begin
            i3 := arquivos.IndexOf(Versoes[i]);
            if not i3 > -1 then
            begin
              if messagedlg('Arquivo '+Versoes.Strings[i]+' não encontrado'#13'deseja selecionar outro Diretório?', mtConfirmation, [mbyes, mbno], 0) = mrno then
              begin
                result := false;
                Exit;
              end;
              stdiretorio := true;
              result      := false;
              break;
            end
            else
            begin
              stdiretorio := false;
            end;
          end;
        end;
        ListarArquivos(arquivos, Diretorio, false);
        if ExecutarScripts(arquivos ,versoes, Diretorio,versaobanco) then
        begin
          WinExec(PAnsiChar('quipos.exe n'), 1);
          result := false;
          Application.Terminate;
          exit;
        end
        else
        begin
          Application.Terminate;
        end;
      end
      else
      begin
        result := true;
      end;
    end;
    Application.Title := Application.Title + ' ' + GetBuildInfo(4);
    if pos(' ', application.Title) > -1 then
    begin
      Application.Title := copy(Application.Title, 1, pos(' ', application.title) - 1) + ' ' + GetBuildInfo(4);
    end;
  finally
    freeandnil(arquivos);
    freeandnil(versoes);
  end;
end;

procedure TVersao.ListarArquivos(arquivos: TStrings; Diretorio: string; Sub: Boolean);
var
  F        : TSearchRec;
  Ret      : Integer;
  TempNome : string;
begin
  Ret      := FindFirst(Diretorio+'\*.*', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if TemAtributo(F.Attr, faDirectory) then
      begin
        if (F.Name <> '.') And (F.Name <> '..') and (Sub = True) then
        begin
          TempNome := Diretorio+'\' + F.Name;
          ListarArquivos(arquivos, TempNome, True);
        end;
      end
      else
      begin
        Arquivos.Add(F.Name);
      end;
      Ret := FindNext(F);
    end;
  finally
    FindClose(F);
  end;
end;

function TVersao.GetBuildInfo(valor:integer): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
  Prog : string;
begin
  Prog        := Application.Exename;
  VerInfoSize := GetFileVersionInfoSize(PChar(prog), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;
  FreeMem(VerInfo, VerInfoSize);
  case valor of
    1 : result := inttostr(v1);
    2 : result := inttostr(v1)+ '.' + inttostr(v2);
    3 : result := inttostr(v1)+ '.' + inttostr(v2) + '.' + inttostr(v3);
    4 : result := inttostr(v1)+ '.' + inttostr(v2) + '.' + inttostr(v3)+ '.' + inttostr(v4);
  end;
end;

function TVersao.TemAtributo(Attr, Val: Integer): Boolean;
begin
  Result := Attr and Val = Val;
end;

function TVersao.RetiraSqlNmScript(nome: string): string;
begin
  delete(nome, length(nome) - 3, 4);
  result := nome;
end;

end.

