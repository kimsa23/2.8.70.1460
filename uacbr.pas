{$I ACBr.inc}

unit uacbr;

interface

uses
  System.Actions, System.UITypes,
  IniFiles, ShellAPI,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, OleCtrls, SHDocVw,
  classeempresa,
  uConstantes,
  ACBrNFe, pcnConversao, ACBrNFeDANFEClass, ACBrUtil, ACBrDFeSSL,
  Menus, cxLookAndFeelPainters, cxButtons, cxContainer,
  cxEdit, cxTextEdit, cxPC, cxControls, cxCheckBox, cxGroupBox,
  cxRadioGroup, cxGraphics, cxMaskEdit, cxDropDownEdit, cxMemo,
  cxLookAndFeels, ActnList, cxPCdxBarPopupMenu, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  Tfrmsetacbr = class(TForm)
    OpenDialog1: TOpenDialog;
    btnSalvarConfig: TcxButton;
    act: TActionList;
    actsalvar: TAction;
    gbxcertificado: TcxGroupBox;
    lblcaminho: TLabel;
    Label2: TLabel;
    lblnumserie: TLabel;
    sbtnGetCert: TcxButton;
    sbtnCaminhoCert: TcxButton;
    edtNumSerie: TcxTextEdit;
    edtSenha: TcxTextEdit;
    edtCaminho: TcxTextEdit;
    gbxwebservice1: TcxGroupBox;
    gbxProxy: TcxGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxySenha: TcxTextEdit;
    edtProxyUser: TcxTextEdit;
    edtProxyHost: TcxTextEdit;
    edtProxyPorta: TcxTextEdit;
    gbxemail: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    memEmailMsg: TcxMemo;
    ckbEmailSSL: TcxCheckBox;
    edtEmailAssunto: TcxTextEdit;
    edtSmtpPass: TcxTextEdit;
    edtSmtpUser: TcxTextEdit;
    edtSmtpHost: TcxTextEdit;
    edtSmtpPort: TcxTextEdit;
    ckbenviarpdf: TcxCheckBox;
    rdgtpenvio: TcxRadioGroup;
    Label6: TLabel;
    rdgTipoAmb: TcxRadioGroup;
    ckbVisualizar: TcxCheckBox;
    btncancelar: TcxButton;
    cbxcduf: TcxLookupComboBox;
    cbxformaemissao: TcxComboBox;
    lblformaemissao: TLabel;
    memdscontingencia: TcxMemo;
    lbldscontingencia: TLabel;
    Label7: TLabel;
    edtLogoMarca: TcxTextEdit;
    edtPathLogs: TcxTextEdit;
    btnPathSalvar: TcxButton;
    btnLogoMarca: TcxButton;
    ckbbovtottribitem: TcxCheckBox;
    lbl1: TLabel;
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnLogoMarcaClick(Sender: TObject);
    procedure btnPathSalvarClick(Sender: TObject);
    procedure actsalvarExecute(Sender: TObject);
    procedure cbxformaemissaoPropertiesChange(Sender: TObject);
    procedure rdgtpenvioPropertiesChange(Sender: TObject);
  private { Private declarations }
    procedure GravarConfiguracao ;
    procedure LerConfiguracao ;
  public { Public declarations }
  end;

function dlgsetNFEAcbr:Boolean;

implementation

uses FileCtrl, pcnNFe, ufrmStatus, ACBrNFeNotasFiscais, DateUtils, //@ACBrNFeUtil,
  uDtmMain;

const
  SELDIRHELP = 1000;

var
  frmsetacbr: Tfrmsetacbr;

{$R *.dfm}

function dlgsetNFEAcbr:Boolean;
begin
  result := False;
  frmsetacbr := tfrmsetacbr.create(nil);
  try
    frmsetacbr.cbxcduf.Properties.ListSource := abrir_tabela(_uf);
    frmsetacbr.LerConfiguracao;
    if frmsetacbr.ShowModal = mrok then
    begin
      result := True;
    end;
  finally
    FreeAndNil(frmsetacbr);
  end;
end;

procedure Tfrmsetacbr.GravarConfiguracao;
Var
  IniFile : String ;
  Ini     : TIniFile ;
  StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.'+_ini) ;
  Ini     := TIniFile.Create( IniFile );
  try
    Ini.WriteString('Certificado','Caminho' ,edtCaminho.Text) ;
    Ini.WriteString('Certificado','Senha'   ,edtSenha.Text) ;
    Ini.WriteString('Certificado','NumSerie',edtNumSerie.Text) ;

    Ini.WriteInteger('Geral','DANFE' , 0) ;
    Ini.WriteInteger('Geral','FormaEmissao', cbxformaemissao.ItemIndex);
    Ini.WriteString ('Geral','dscontingencia', memdscontingencia.Lines.Text);
    Ini.WriteString ('Geral','LogoMarca'   ,edtLogoMarca.Text) ;
    //Ini.WriteBool   ('Geral','Salvar'      ,ckbSalvar.Checked) ;
    Ini.WriteBool   ('Geral','ExibirTotTribItem'      ,ckbbovtottribitem.Checked) ;
    Ini.WriteString ('Geral','PathSalvar'  ,edtPathLogs.Text) ;

    Ini.WriteString ('WebService','UF'        ,cbxcduf.Text) ;
    Ini.WriteInteger('WebService','Ambiente'  ,rdgTipoAmb.ItemIndex) ;
    Ini.WriteBool   ('WebService','Visualizar',ckbVisualizar.Checked) ;

    Ini.WriteString('Proxy','Host'   ,edtProxyHost.Text) ;
    Ini.WriteString('Proxy','Porta'  ,edtProxyPorta.Text) ;
    Ini.WriteString('Proxy','User'   ,edtProxyUser.Text) ;
    Ini.WriteString('Proxy','Pass'   ,edtProxySenha.Text) ;

    Ini.WriteString('Email','Host'    ,edtSmtpHost.Text) ;
    Ini.WriteString('Email','Port'    ,edtSmtpPort.Text) ;
    Ini.WriteString('Email','User'    ,edtSmtpUser.Text) ;
    Ini.WriteString('Email','Pass'    ,edtSmtpPass.Text) ;
    Ini.WriteString('Email','Assunto' ,edtEmailAssunto.Text) ;
    Ini.WriteBool  ('Email','SSL'     ,ckbEmailSSL.Checked ) ;
    Ini.WriteBool  ('Email',UpperCase(_PDF)     ,ckbenviarpdf.Checked ) ;
    Ini.WriteInteger('Email', 'Tipo Envio', rdgtpenvio.ItemIndex);
    StreamMemo := TMemoryStream.Create;
    memEmailMsg.Lines.SaveToStream(StreamMemo);
    StreamMemo.Seek(0,soFromBeginning);
    Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo) ;
    StreamMemo.Free;
  finally
     Ini.Free;
  end;
end;

procedure Tfrmsetacbr.LerConfiguracao;
  function set_forma_emissao(nuforma:Integer):integer;
  begin
    result := nuforma;
    if nuforma = 2 then
    begin
      result := 1;
    end;
  end;
Var
  IniFile  : String ;
  Ini     : TIniFile ;
  StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.'+_ini) ;
  Ini := TIniFile.Create( IniFile );
  try
    edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
    //{$IFDEF DFE_SEM_CAPICOM}
      //edtCaminho.Visible  := true;
      //lblcaminho.Visible  := True;
      //edtCaminho.Text     := Ini.ReadString( 'Certificado','Caminho' ,'') ;
      //edtNumSerie.Visible := False;
      //lblnumserie.Visible     := False;
      //sbtnGetCert.Visible := False;
    //{$ELSE}
      edtNumSerie.Text        := Ini.ReadString( 'Certificado','NumSerie','') ;
      lblnumserie.Caption      := 'Informe o número de série do certificado disponível'#13'no Internet Explorer ';
      edtCaminho.Visible      := False;
      sbtnCaminhoCert.Visible := False;
    //{$ENDIF}
    cbxformaemissao.ItemIndex    := set_forma_emissao(Ini.ReadInteger('Geral','FormaEmissao',0));
    memdscontingencia.Lines.Text := Ini.ReadString('Geral','dscontingencia','');
    ckbbovtottribitem.Checked    := Ini.ReadBool('Geral','ExibirTotTribItem',false) ;
    edtPathLogs.Text             := Ini.ReadString( 'Geral','PathSalvar'  ,'') ;

    cbxcduf.Text          := Ini.ReadString('WebService','UF', Empresa.endereco.sguf);
    rdgTipoAmb.ItemIndex  := Ini.ReadInteger('WebService','Ambiente'  ,0) ;
    ckbVisualizar.Checked := Ini.ReadBool   ('WebService','Visualizar',False) ;

    edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
    edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
    edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
    edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;

    edtLogoMarca.Text  := Ini.ReadString ('Geral','LogoMarca','') ;

    edtSmtpHost.Text     := Ini.ReadString('Email','Host'   ,'') ;
    edtSmtpPort.Text     := Ini.ReadString('Email','Port'   ,'') ;
    edtSmtpUser.Text     := Ini.ReadString('Email','User'   ,'') ;
    edtSmtpPass.Text     := Ini.ReadString('Email','Pass'   ,'') ;
    edtEmailAssunto.Text := Ini.ReadString('Email','Assunto','') ;
    ckbEmailSSL.Checked  := Ini.ReadBool  ('Email','SSL'    ,False) ;
    ckbenviarpdf.Checked := Ini.ReadBool  ('Email',UpperCase(_PDF)    ,False) ;
    rdgtpenvio.ItemIndex := Ini.ReadInteger('Email', 'Tipo Envio', 1);

    StreamMemo := TMemoryStream.Create;
    Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
    memEmailMsg.Lines.LoadFromStream(StreamMemo);
    StreamMemo.Free;
  finally
    Ini.Free;
  end;
end;

procedure Tfrmsetacbr.sbtnGetCertClick(Sender: TObject);
var
  ACBrNFe1 : TACBrNFe;
begin
  ACBrNFe1 := TACBrNFe.create(nil);
  try
    ACBrNFe1.Configuracoes.Geral.SSLLib := libCapicom;
    //{$IFNDEF DFE_SEM_CAPICOM}
    try
      edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
    except
    end;
    //{$ENDIF}
  finally
    FreeAndNil(ACBrNFe1);
  end;
end;

procedure Tfrmsetacbr.btnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title      := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter     := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrmsetacbr.btnPathSalvarClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(edtPathLogs.Text) <= 0 then
  begin
    Dir := ExtractFileDir(application.ExeName);
  end
  else
  begin
    Dir := edtPathLogs.Text;
  end;
  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
  begin
    edtPathLogs.Text := Dir;
  end;
end;

procedure Tfrmsetacbr.actsalvarExecute(Sender: TObject);
begin
  if cbxformaemissao.ItemIndex in [1, 5, 6, 7] then
  begin
    if memdscontingencia.Lines.Text = '' then
    begin
      MessageDlg('Justificativa de Contingência é um campo obrigatório'#13'quando forma de emissão for '+cbxformaemissao.Text+'.', mtInformation, [mbok], 0);
      memdscontingencia.SetFocus;
      abort;
    end;
    if Length(memdscontingencia.Lines.Text) < 15 then
    begin
      MessageDlg('Justificativa de Contingência deve ter no mínimo 15 caracteres.'#13'Preencha para poder continuar.', mtInformation, [mbok], 0);
      memdscontingencia.SetFocus;
      abort;
    end;
  end;
  ModalResult := mrOk;
  GravarConfiguracao;
end;

procedure Tfrmsetacbr.cbxformaemissaoPropertiesChange(Sender: TObject);
begin
  lbldscontingencia.Visible := cbxformaemissao.ItemIndex in [1, 2, 5, 6, 7];
  memdscontingencia.Visible := cbxformaemissao.ItemIndex in [1, 2, 5, 6, 7];
  if not (cbxformaemissao.ItemIndex in [1, 2, 5, 6, 7]) then
  begin
    memdscontingencia.Clear;
  end;
end;

procedure Tfrmsetacbr.rdgtpenvioPropertiesChange(Sender: TObject);
begin
  edtSmtpUser.Enabled     := rdgtpenvio.ItemIndex <> 0;
  edtSmtpPass.Enabled     := rdgtpenvio.ItemIndex <> 0;
  edtEmailAssunto.Enabled := rdgtpenvio.ItemIndex <> 0;
  ckbEmailSSL.Enabled     := rdgtpenvio.ItemIndex <> 0;
  ckbenviarpdf.Enabled    := rdgtpenvio.ItemIndex <> 0;
  memEmailMsg.Enabled     := rdgtpenvio.ItemIndex <> 0;
  edtSmtpPort.enabled := (rdgtpenvio.ItemIndex <> 1) and (rdgtpenvio.ItemIndex <> 2) and (rdgtpenvio.ItemIndex <> 3);
  edtSmtpHost.enabled := (rdgtpenvio.ItemIndex <> 1) and (rdgtpenvio.ItemIndex <> 2) and (rdgtpenvio.ItemIndex <> 3);
  if rdgtpenvio.ItemIndex = 1 then
  begin
    edtSmtpPort.Text := _465;
    edtSmtpHost.Text := _smtp_gmail_com;
  end
  else if rdgtpenvio.ItemIndex = 2 then
  begin
    edtSmtpPort.Text := _587;
    edtSmtpHost.Text := _smtp_live_com;
  end
  else if rdgtpenvio.ItemIndex = 3 then
  begin
    edtSmtpPort.Text := _587;
    edtSmtpHost.Text := _smtp_uol_com_br;
  end
  else
  begin
    //edtSmtpPort.Clear;
    //edtSmtpHost.clear;
  end;
end;

end.
