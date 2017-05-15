unit ulogin;

interface

uses
  System.Actions, System.UITypes,
  Forms, Controls, ExtCtrls, ComCtrls, ToolWin, StdCtrls, SysUtils, Classes,
  jpeg, ActnList, Menus, Graphics, Dialogs, data.db,
  uconstantes, usystem, uRotinas, uconfiguracao, uregistro, udatahora,
  classeemail, classeaplicacao, classeregistrainformacao, classeempresa, classeusuario,
  classequery,
  cxControls, cxContainer, cxEdit, cxLookAndFeels, cxGraphics, cxLookAndFeelPainters,
  cxTextEdit, cxPC, cxButtons, cxPCdxBarPopupMenu, cxMaskEdit, cxDropDownEdit, cxClasses,
  dxBarBuiltInMenu;

type
  TfrmLogin = class(TForm)
    act: TActionList;
    actOk: TAction;
    actCancelar: TAction;
    actAlterarSenha: TAction;
    actConfigurar: TAction;
    pnl1: TPanel;
    Image1: TImage;
    LAF: TcxLookAndFeelController;
    Label1: TLabel;
    Label2: TLabel;
    lblnovasenha: TLabel;
    lblconfirma: TLabel;
    lblempresa: TLabel;
    edtusuario: TcxTextEdit;
    edtsenha: TcxTextEdit;
    btnok: TcxButton;
    btncancelar: TcxButton;
    btnalterarsenha: TcxButton;
    edtnovasenha: TcxTextEdit;
    edtconfirmasenha: TcxTextEdit;
    cbxempresa: TcxComboBox;
    procedure actOkExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure actAlterarSenhaExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure edtusuarioPropertiesChange(Sender: TObject);
    procedure edtsenhaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure colorenter(Sender: TObject);
    procedure colorexit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actConfigurarExecute(Sender: TObject);
    procedure actExecute(Action: TBasicAction; var Handled: Boolean);
  private    { Private declarations }
    cdempresa : LargeInt;
    function Consiste(edtuser, edtpassword:TcxtextEdit):boolean;
    procedure ValoresIniciais;
    procedure enviar_email_login;
  public     { Public declarations }
    function Login:LargeInt;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses classeVersao, uprotector, uDtmMain;

{$R *.DFM}

function TfrmLogin.Login:LargeInt;
begin
  result := 0;
  FrmLogin := TFrmLogin.Create(nil);
  try
    FrmLogin.showmodal;
    if FrmLogin.cdempresa = -1 then
    begin
      result := FrmLogin.cdempresa;
    end
    else if FrmLogin.ModalResult = mrok then
    begin
      result := strtoint64(Copy(FrmLogin.cbxempresa.Text, 1, Pos('-', FrmLogin.cbxempresa.Text)-2));
      FrmLogin.enviar_email_login;
    end;
  finally
    FreeAndNil(FrmLogin);
  end;
end;

procedure TfrmLogin.ValoresIniciais;
begin
  Height                   := 235;
  edtusuario.enabled       := true;
  cbxempresa.Enabled       := True;
  edtsenha.enabled         := true;
  actok.enabled            := true;
  actConfigurar.Enabled    := true;
  lblnovasenha.Visible     := False;
  lblconfirma.Visible      := False;
  edtconfirmasenha.Visible := False;
  edtnovasenha.Visible     := False;
end;

function tfrmLogin.Consiste(edtuser, edtpassword:TcxtextEdit):boolean;
begin
  result := true;
  if edtuser.text = '' then
  begin
    messagedlg('Nome do Usuário em branco.'#13'Digite o nome do usuário.', mterror, [mbok],0);
    edtuser.SelectAll;
    edtuser.SetFocus;
    edtuser.style.Color := clred;
    result := false;
    exit;
  end;
  if not usuario.ExisteUsuario(edtuser.text) then
  begin
    messagedlg('Usuário '+edtuser.text+' não cadastrado.'#13'Digite outro nome e tente novamente.', mterror, [mbok], 0);
    edtuser.SelectAll;
    edtuser.setfocus;
    edtuser.style.color := clred;
    result := false;
    exit;
  end;
  if not usuario.ativado(edtuser.Text) then
  begin
    messagedlg('Usuário '+edtuser.text+' não está ativado.'#13'Digite outro nome e tente novamente.', mterror, [mbok], 0);
    edtuser.SelectAll;
    edtuser.setfocus;
    edtuser.style.color := clred;
    result := false;
    exit;
  end;
  if not usuario.AcessaAplicacao(edtuser.text, uppercase(ExtractFileName(application.exename))) then
  begin
    messagedlg('Usuário '+edtuser.text+' não pode acessar esta aplicação.'#13'Entre em contato com o Administrador do Sistema.', mterror, [mbok], 0);
    edtuser.SelectAll;
    edtuser.SetFocus;
    result := false;
    exit;
  end;
  if edtpassword.Text = '' then
  begin
    messagedlg('Senha do usuário obrigatório.'#13'Digite sua senha.', mterror, [mbok], 0);
    edtpassword.SelectAll;
    edtpassword.SetFocus;
    edtpassword.style.Color := clred;
    result := false;
    exit;
  end;
  if not usuario.SenhaCorreta(edtuser.text, edtpassword.text) then
  begin
    messagedlg('Senha incorreta.'#13'Mude sua senha e tente novamente.', mterror, [mbok], 0);
    edtpassword.SelectAll;
    edtpassword.setfocus;
    result := false;
    exit;
  end;
end;

procedure TfrmLogin.actOkExecute(Sender: TObject);
begin
  if consiste(edtusuario, edtsenha) then
  begin
    modalresult      := mrok;
    usuario.usulogin  := edtusuario.Text ;
    usuario.cdusuario := qregistro.CodigodoString(_usuario, usuario.usulogin, _usulogin);
  end;
  usuario.Permissao_(usuario.usulogin, ExtractFileName(application.exename)); // carregar a lista de permissão
end;

procedure TfrmLogin.actCancelarExecute(Sender: TObject);
begin
  if not (Height = 166) then
  begin
    modalresult := mrcancel;
  end
  else
  begin
    ValoresIniciais;
  end;
end;

procedure TfrmLogin.actConfigurarExecute(Sender: TObject);
begin
  cdempresa   := -1;
  ModalResult := mrCancel;
end;

procedure TfrmLogin.actExecute(Action: TBasicAction; var Handled: Boolean);
begin
  dtmmain.LogSiteAction(self.Name, action.Name);
end;

procedure TfrmLogin.actAlterarSenhaExecute(Sender: TObject);
begin
  if Height = 280 then
  begin
    if usuario.AlterarSenha(edtusuario.text, edtsenha.text, edtnovasenha.text, edtconfirmasenha.text) then
    begin
      edtsenha.text := edtnovasenha.text;
      ValoresIniciais;
      messagedlg('Senha alterada com sucesso.', mtinformation, [mbok], 0);
    end;
  end
  else
  begin
    if consiste(edtusuario, edtsenha) then
    begin
      Height := 280;
      actok.enabled         := false;
      actConfigurar.Enabled := false;
      edtusuario.enabled    := false;
      cbxempresa.Enabled    := False;
      edtsenha.enabled      := false;
      lblnovasenha.Visible  := True;
      lblconfirma.Visible   := True;
      edtnovasenha.Visible  := true;
      edtconfirmasenha.Visible := True;;
      edtnovasenha.clear;
      edtconfirmasenha.clear;
      edtnovasenha.setfocus;
    end;
  end;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  cdempresa := 0;
end;

procedure TfrmLogin.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case key of
    13 : actOkExecute(sender);
    27 : actCancelarExecute(sender);
  end;
end;

procedure TfrmLogin.edtusuarioPropertiesChange(Sender: TObject);
begin
  edtusuario.Style.color := clWindow;
end;

procedure TfrmLogin.edtsenhaPropertiesChange(Sender: TObject);
begin
  edtsenha.Style.color := clwindow;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
var
  versao : TVersao;
  cdempresa : string;
  procedure Carregar_Empresa;
  var
    s : TClasseQuery;
  begin
    s := TClasseQuery.Create;
    try
      s.q.Open('select cdempresa,nmempresa from empresa order by cdempresa');
      while not s.q.Eof do
      begin
        cbxempresa.Properties.Items.Add(s.q.fieldbyname(_cdempresa).AsString+' - '+s.q.fieldbyname(_nmempresa).AsString);
        if (cdempresa <> '') and (cdempresa = s.q.FieldByName(_cdempresa).asstring)then
        begin
          cbxempresa.ItemIndex := cbxempresa.Properties.Items.Count - 1;
        end;
        s.q.Next;
      end;
      if cdempresa = '' then
      begin
        cbxempresa.ItemIndex := 0;
      end;
    finally
      S.Free;
    end;
  end;
begin
  versao := tversao.Create;
  try
    caption          := 'Login - '+Versao.GetBuildInfo(4);
    vgcdcomputador := Codigo_Computador(qp_nmcomputador);
    if BooleandoCodigo(_aplicacao, _1, _bo+_exibir+_usuario+_login) then
    begin
      edtusuario.Text  := usuario.getlogincomputador(vgcdcomputador);
      if edtUsuario.Text = '' then
      begin
        edtUsuario.Text  := GetNetworkUsername;
        edtusuario.SetFocus;
        edtusuario.SelectAll;
      end
      else
      begin
        cdempresa := usuario.getcdempresa(edtusuario.Text);
        edtsenha.SetFocus;
      end;
    end
    else
    begin
      edtusuario.setfocus;
    end;
    Carregar_Empresa;
    valoresiniciais;
  finally
    FreeAndNil(versao);
  end;
end;

procedure TfrmLogin.Image1DblClick(Sender: TObject);
begin
  actconfigurarexecute(actconfigurar);
end;

procedure TfrmLogin.colorenter(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_enter;
end;

procedure TfrmLogin.colorexit(Sender: TObject);
begin
  TcxCustomTextEdit(Sender).Style.Color := _color_exit;
end;

procedure TfrmLogin.enviar_email_login;
var
  //lista_arquivo : TStrings;
  versao : TVersao;
begin
  if QRotinas.bosenomecomputadornaosequipos(qp_nmcomputador) then
  begin
    versao := tversao.Create;
    try
      try
        dtmmain.consite.open;
        dtmmain.consite.ExecSQL('INSERT INTO qpLogin'+
                                '(NMEMPRESA,VERSAO,NMUSUARIO,NMCOMPUTADOR)VALUES'+
                                '(:NMEMPRESA,:VERSAO,:NMUSUARIO,:NMCOMPUTADOR)',
                                [Copy(cbxempresa.Text, Pos('-', cbxempresa.Text)+2, length(cbxempresa.Text)-(Pos('-', cbxempresa.Text)+1)),
                                Versao.GetBuildInfo(4),usuario.usulogin,qp_nmcomputador]);
      except

      end;
    finally
      dtmmain.consite.Close;
      freeandnil(versao);
    end;
    {lista_arquivo := TStringList.Create;
    try
      enviar_gmail(True,
                   False,
                   lista_arquivo,
                   lista_arquivo,
                   'login@quipos.inf.br',
                   '',
                   TSBancos+'-'+caption+'-'+cbxempresa.Text+'-'+usuario.usulogin+'-'+qp_nmcomputador,'',
                   True,
                   true,
                   'Suporte Quipos',
                   true,
                   'suporte@quipos.inf.br',
                   'suportequipos2012');
    finally
      lista_arquivo.Free;
    end;}
  end;
end;

end.

