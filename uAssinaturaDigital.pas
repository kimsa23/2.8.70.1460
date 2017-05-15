unit uAssinaturaDigital;

interface

uses
  System.Actions, System.UITypes,
  Forms, Graphics, Menus, StdCtrls, Controls, ExtCtrls, Classes, Dialogs, SysUtils,
  sqlexpr,
  uRegistro, uConstantes,
  classeretornasql, classeusuario,
  cxControls, cxContainer, cxEdit, cxMemo, cxLookAndFeelPainters, cxButtons, cxGraphics,
  cxLookAndFeels, cxTextEdit, cxPC;

type
  TfrmAssinaturaDigital = class(TForm)
    lblusuario: TLabel;
    lblsenha: TLabel;
    Image1: TImage;
    btnok: TcxButton;
    btncancelar: TcxButton;
    edtsenha: TcxTextEdit;
    edtusuario: TcxTextEdit;
    mem: TcxMemo;
    memjustificativa: TcxMemo;
    lbljustificativa: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure edtusuarioPropertiesChange(Sender: TObject);
    procedure edtsenhaPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private    { Private declarations }
    usuario_ : tusuario;
    cdresult, tentativa : integer;
    cdtpassinatura : string;
    function Consiste:boolean;
    procedure exibir_justificativa(bojustificativa:Boolean);
  public     { Public declarations }
  end;

function AssinaturaDigital(cdtpprocessointerno: integer):integer;overload;
function assinaturadigital (texto:String; var nmusuario:string; boenabled :boolean=true; cdtpassinatura:string=''):boolean;overload;
function assinaturadigital_com_justificativa (texto:String; var nmusuario:string; var dsjustificativa:string; boenabled :boolean=true; cdtpassinatura:string=''):boolean;

var
  frmAssinaturaDigital: TfrmAssinaturaDigital;

implementation

{$R *.DFM}

uses ClasseTpAprovacao;

function assinaturadigital_com_justificativa(texto : String; var nmusuario:string; var dsjustificativa:string; boenabled :boolean=true; cdtpassinatura:string=''):boolean;
begin
  result := false;
  frmAssinaturaDigital := TfrmAssinaturaDigital.Create(nil);
  try
    frmAssinaturaDigital.exibir_justificativa(true);
    frmassinaturadigital.tentativa          := 0;
    frmassinaturadigital.edtUsuario.Text    := nmusuario;
    frmassinaturadigital.mem.Text           := texto;
    frmassinaturadigital.edtUsuario.Enabled := boenabled;
    frmassinaturadigital.cdtpassinatura     := cdtpassinatura;
    frmassinaturadigital.ShowModal;
    if frmassinaturadigital.ModalResult = mrok then
    begin
      nmusuario       := CodigodoCampo(_usuario, frmassinaturadigital.edtUsuario.Text, _USULOGIN);
      dsjustificativa := frmAssinaturaDigital.memjustificativa.Text;
      result          := true;
    end;
  finally
    FreeAndNil(frmAssinaturaDigital);
  end;
end;

function assinaturadigital(cdtpprocessointerno: integer):integer;
begin
  result  := 0;
  frmAssinaturaDigital := TfrmAssinaturaDigital.Create(nil);
  try
    frmAssinaturaDigital.exibir_justificativa(False);
    frmassinaturadigital.tentativa          := 0;
    frmassinaturadigital.edtUsuario.Text    := usuario.usulogin;
    frmassinaturadigital.mem.Text           := qregistro.NomedoCodigo(_tpprocessointerno, cdtpprocessointerno);
    frmassinaturadigital.edtUsuario.Enabled := true;
    frmassinaturadigital.ShowModal;
    if frmassinaturadigital.ModalResult = mrok then
    begin
      result := qregistro.codigodostring(_usuario, frmassinaturadigital.edtUsuario.Text, _USULOGIN);
      if not TTpAprovacao.UsuarioPodeAprovar(cdtpprocessointerno, result) then
      begin
        messagedlg('Usuário não pode aprovar '+qregistro.NomedoCodigo(_tpprocessointerno, cdtpprocessointerno)+'.', mtinformation, [mbok], 0);
        result := 0;
      end;
    end;
  finally
    FreeAndNil(frmAssinaturaDigital);
  end;
end;

function assinaturadigital(texto : String; var nmusuario:string; boenabled :boolean=true; cdtpassinatura:string=''):boolean;
begin
  result := false;
  frmAssinaturaDigital := TfrmAssinaturaDigital.Create(nil);
  try
    frmAssinaturaDigital.exibir_justificativa(False);
    frmassinaturadigital.tentativa          := 0;
    frmassinaturadigital.edtUsuario.Text    := nmusuario;
    frmassinaturadigital.mem.Text           := texto;
    frmassinaturadigital.edtUsuario.Enabled := boenabled;
    frmassinaturadigital.cdtpassinatura     := cdtpassinatura;
    frmassinaturadigital.ShowModal;
    if frmassinaturadigital.ModalResult = mrok then
    begin
      nmusuario := CodigodoCampo(_usuario, frmassinaturadigital.edtUsuario.Text, _USULOGIN);
      result  := true;
    end;
  finally
    FreeAndNil(frmAssinaturaDigital);
  end;
end;

function tfrmAssinaturaDigital.Consiste:boolean;
begin
  result := true;
  if edtusuario.text = '' then
  begin
    messagedlg('Nome do Usuário em branco.'#13'Digite o nome do usuário.', mterror, [mbok],0);
    edtusuario.SelectAll;
    edtusuario.SetFocus;
    edtusuario.Style.Color  := clred;
    result := false;
  end
  else if not usuario_.ExisteUsuario(edtusuario.text) then
  begin
    messagedlg('Usuário '+edtusuario.text+' não cadastrado.'#13'Digite outro nome e tente novamente.', mterror, [mbok], 0);
    edtusuario.SelectAll;
    edtusuario.setfocus;
    edtusuario.Style.color := clred;
    result := false;
  end
  else if edtsenha.Text = '' then
  begin
    messagedlg('Senha do usuário obrigatório.'#13'Digite sua senha.', mterror, [mbok], 0);
    edtsenha.SelectAll;
    edtsenha.SetFocus;
    edtsenha.Style.Color := clred;
    result := false;
  end
  else if not usuario_.SenhaCorreta(edtusuario.text, edtsenha.text) then
  begin
    messagedlg('Senha incorreta.'#13'Mude sua senha e tente novamente.', mterror, [mbok], 0);
    edtsenha.SelectAll;
    edtsenha.setfocus;
    result := false;
    exit;
  end;
  if cdtpassinatura = _desconto+_pedido then
  begin
    usuario_.cdusuario := qregistro.CodigodoString(_usuario, edtusuario.Text, _usulogin);
    usuario_.SetUser(usuario_.cdusuario);
    if usuario_.bopedidodesconto = _N then
    begin
      messagedlg('Usuário '+edtusuario.text+' não tem permissão de autorizar desconto.'#13'Digite outro nome e tente novamente.', mterror, [mbok], 0);
      edtusuario.SelectAll;
      edtusuario.setfocus;
      edtusuario.Style.color := clred;
      result := false;
    end;
  end;
end;

procedure TfrmAssinaturaDigital.FormCreate(Sender: TObject);
begin
  usuario_ := TUsuario.create;
end;

procedure TfrmAssinaturaDigital.FormDestroy(Sender: TObject);
begin
  FreeAndNil(usuario_);
end;

procedure TfrmAssinaturaDigital.FormShow(Sender: TObject);
begin
  if edtUsuario.Text <> '' then
  begin
    edtSenha.SetFocus;
  end;
end;

procedure TfrmAssinaturaDigital.btnokClick(Sender: TObject);
begin
  if memjustificativa.Visible and (trim(memjustificativa.Text) = '') then
  begin
    MessageDlg('Justificativa é um campo obrigatório.', mtInformation, [mbOK], 0);
    memjustificativa.SetFocus;
    Abort;
  end;
  inc(tentativa);
  if consiste then
  begin
    cdresult := 1;
    modalresult := mrok;
  end
  else if tentativa = 2 then
  begin
    ShowMessage('Se na terceira vez o login falhar a tela será fechada e as modificações perdidas!');
  end;
  if tentativa = 3 then
  begin
    close;
  end;
end;

procedure TfrmAssinaturaDigital.edtusuarioPropertiesChange(Sender: TObject);
begin
  edtusuario.style.color := clWindow;
end;

procedure TfrmAssinaturaDigital.edtsenhaPropertiesChange(Sender: TObject);
begin
  edtsenha.style.color := clwindow;
end;

procedure TfrmAssinaturaDigital.exibir_justificativa(bojustificativa: Boolean);
begin
  if bojustificativa then
  begin
    exit;
  end;
  Height          := 192;
  lblusuario.Top  := 78;
  edtusuario.top  := 77;
  lblsenha.Top    := 105;
  edtsenha.Top    := 98;
  btnok.Top       := 124;
  btncancelar.Top := 124;
  memjustificativa.Visible := False;
  lbljustificativa.Visible := False;
end;

end.

