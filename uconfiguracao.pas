unit uconfiguracao;

interface

uses
  System.Actions, System.UITypes,
  Forms, Windows, SysUtils, Registry, StdCtrls, ExtCtrls, Classes, Controls,
  dialogs,
  sqlexpr,
  usystem, uConstantes, ustrings,
  classeexecutasql, classeaplicacao;

type
  TfrmConfiguracao = class(TForm)
    Bevel1: TBevel;
    Label5: TLabel;
    Label4: TLabel;
    btncancelar: TButton;
    edtCaminho: TEdit;
    edtServidor: TEdit;
    btnok: TButton;
    Label1: TLabel;
    edtusuario: TEdit;
    Label2: TLabel;
    edtsenha: TEdit;
    procedure btnokClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private    { Private declarations }
    procedure Ler;
    procedure LimparControles;
    procedure AtribuirControles;
    procedure AplicarQuiposINI;
  public { Public declarations }
  end;

function Configurar:boolean;

var
  frmConfiguracao: TfrmConfiguracao;

implementation

{$R *.DFM}

uses uProtector;

function Configurar:boolean;
begin
  frmConfiguracao := TfrmConfiguracao.Create(nil);
  try
    frmConfiguracao.ShowModal;
    result := frmConfiguracao.ModalResult = mrOk;
  finally
    freeandnil(frmConfiguracao);
  end;
end;

procedure TFrmConfiguracao.AtribuirControles;
begin
  aplicacao.conexao.LerArquivoINI;
  edtServidor.text := aplicacao.conexao.Servidor;
  edtCaminho.text := aplicacao.conexao.Caminho;
  edtUsuario.text := aplicacao.conexao.usuario;
  edtSenha.text := aplicacao.conexao.senha;
end;

procedure TFrmConfiguracao.Ler;
begin
  if FileExists(aplicacao.conexao.chave) then
  begin
    AtribuirControles
  end
  else
  begin
    LimparControles;
  end;
end;

procedure TfrmConfiguracao.LimparControles;
begin
  edtusuario.clear;
  edtsenha.clear;
  edtservidor.clear;
  edtcaminho.clear;
end;

procedure TfrmConfiguracao.AplicarQuiposINI;
begin
  aplicacao.conexao.Servidor := edtServidor.text;
  aplicacao.conexao.Caminho := edtcaminho.Text;
  aplicacao.conexao.usuario := edtusuario.Text;
  aplicacao.conexao.senha := edtsenha.Text;
  aplicacao.conexao.GravarINI;
end;

procedure TfrmConfiguracao.btnokClick(Sender: TObject);
begin
  AplicarQuiposINI;
  aplicacao.ConfigurarCon2;
  if check_conexao then
  begin
    ModalResult := mrOk;
    Close;
    Exit;
  end;
  if messagedlg('As informações de configuração de conexão não estão corretas.'#13'Você gostaria de executar o Suporte Remoto?', mtConfirmation, [mbyes, mbno], 0) = mryes then
  begin
    executar_suporte_remoto;
  end;
end;

procedure TfrmConfiguracao.btncancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConfiguracao.FormShow(Sender: TObject);
begin
  Ler;
  edtservidor.SetFocus;
end;

end.
