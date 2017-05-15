unit umdfereport;

interface

uses
  System.Actions, System.UITypes,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  IniFiles, ComObj,
  classeRetornaSql, classeemail, classeempresa,
  uRotinas, uConstantes,
  ACBrMDFe, pcnConversao, ACBrMDFeDAMDFeClass, ACBrMDFeDAMDFEFR;

type
  Tfrmmdfereport = class(TForm)
    DAMDFE: TACBrMDFeDAMDFEFR;
    procedure FormCreate(Sender: TObject);
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmmdfereport: Tfrmmdfereport;

function MDFE_GerarPDF(mdfe1:TACBrMDFE; path:string=''):Boolean;
function MDFE_imprimir(mdfe1:TACBrMDFE; bomdfecancelada:boolean; bomostrarpreview:Boolean=true):Boolean;
function MDFE_enviar_email(mdfe1:TACBrMDFE; email: temail_; listaemail:string=''):Boolean;
procedure gerar_pdf(mdfe1:TACBrMDFE);

implementation

uses uDtmMain;

{$R *.dfm}

procedure gerar_pdf(mdfe1:TACBrMDFE);
begin
  frmmdfereport := tfrmmdfereport.Create(nil);
  try
    mdfe1.DAMDFe := frmmdfereport.DAMDFE;
    mdfe1.DAMDFe.PathPDF := ExtractFilePath(Application.ExeName);
    mdfe1.DAMDFe.ImprimirDAMDFePDF(mdfe1.Manifestos.Items[0].MDFe);
  finally
    freeandnil(frmmdfereport);
  end;
end;

function caminhopdf(mdfe1:TACBrMDFE):string;
begin
  result := ExtractFilePath(Application.ExeName)+StringReplace(mdfe1.Manifestos.Items[0].MDFe.infMDFe.ID,'MDFe', '', [rfIgnoreCase])+'.'+_pdf;
end;

function caminho(mdfe1:TACBrMDFE):string;
begin
  result := ExtractFilePath(Application.ExeName)+inttostr(mdfe1.Manifestos.Items[0].MDFe.Ide.nMDF)+'.'+_xml;
end;

procedure enviar_outlook(mdfe1:TACBrMDFE; email: TEmail_; email1:string; lstemail:tstrings; bonenviarpdf:boolean);
const
  olMailItem = 0;
var
  Outlook: OleVariant;
  vMailItem: variant;
  i : Integer;
  bopdf : Boolean;
begin
  bopdf := email.bopdf;
  if bonenviarpdf then
  begin
    bopdf := False;
  end;
  try
    Outlook := GetActiveOleObject(_Outlook_Application);
  except
    Outlook := CreateOleObject(_Outlook_Application);
  end;
  vMailItem := Outlook.CreateItem(olMailItem);
  vMailItem.Recipients.Add(email1);
  for i := 0 to lstemail.count - 1 do
  begin
    vMailItem.Recipients.Add(lstemail[i]);
  end;
  vMailItem.Subject := email.Assunto; // assunto
  vMailItem.Body := email.msg; // Corpo do e-mail
  mdfe1.Manifestos.Items[0].GravarXML(caminho(mdfe1));
  vMailItem.Attachments.Add(caminho(mdfe1));
  if bopdf then
  begin
    gerar_pdf(mdfe1);
    vMailItem.attachments.add(caminhopdf(mdfe1));
  end;
  vMailItem.Send;
  VarClear(Outlook);
  DeleteFile(caminho(mdfe1));
  if bopdf then
  begin
    deletefile(caminhopdf(mdfe1));
  end;
end;

function MDFE_enviar_email(mdfe1:TACBrMDFE; email: temail_; listaemail:string=''):Boolean;
var
  email1 : String;
  lstemail : TStrings;
  procedure enviar_gmail;
  var
    msg : TStrings;
  begin
    msg := TStringList.Create;
    frmmdfereport := tfrmmdfereport.Create(nil);
    try
      msg.Text := email.msg;
      mdfe1.DAMDFe := frmmdfereport.DAMDFE;
      mdfe1.Manifestos.Items[0].EnviarEmail(email1, email.Assunto, msg, email.bopdf, lstemail);
      result := True;
    finally
      FreeAndNil(msg);
      freeandnil(frmmdfereport);
    end;
  end;
begin
  if listaemail = '' then
  begin
    email1 := InputBox('Enviar e-mail', 'Digite o e-mail para envio da MDFE', '');
    if email1 = '' then
    begin
      messagedlg('E-mail não informado.', mtinformation, [mbok], 0);
      result := False;
      exit;
    end;
  end;
  lstemail := TStringList.Create;
  try
    lstemail.Text := listaemail;
    if listaemail <> '' then
    begin
      email1 := lstemail[0];
      lstemail.Delete(0);
    end;
    if email.tpenvio = 1 then
    begin
      enviar_gmail;
    end
    else
    begin
      enviar_outlook(mdfe1, email, email1, lstemail, false);
    end;
  finally
    FreeAndNil(lstemail);
  end;
end;

function MDFE_imprimir(mdfe1:TACBrMDFE; bomdfecancelada:boolean; bomostrarpreview:Boolean=true):Boolean;
  function arquivo_impressao_existe(nmfile:string):Boolean;
  begin
    Result := FileExists(ExtractFilePath(Application.ExeName)+'\'+nmfile+'.fr3');
  end;
begin
  result := False;
  frmmdfereport := tfrmmdfereport.Create(nil);
  try
    if not arquivo_impressao_existe('damdfe_retrato') then
    begin
      MessageDlg('Arquivo damdfe_retrato.fr3 não está disponível no diretório do executável.'#13'Restaure o arquivo para realizar a impressão.', mtInformation, [mbOK], 0);
      Exit;
    end;
    frmmdfereport.DAMDFE.MostrarPreview := bomostrarpreview;
    frmmdfereport.DAMDFE.MDFeCancelada  := bomdfecancelada;
    mdfe1.DAMDFE := frmmdfereport.DAMDFE;
    if mdfe1.Manifestos.Items[0].MDFe.procMDFe.nProt = '' then
    begin
      mdfe1.Manifestos.Items[0].MDFe.Ide.tpAmb := taHomologacao;
    end;
    mdfe1.Manifestos.Items[0].Imprimir;
    result := True;
  finally
    freeandnil(frmmdfereport);
  end;
end;

function MDFE_GerarPDF(mdfe1:TACBrMDFE; path:string=''):Boolean;
var
  diretorio : string;
begin
  frmmdfereport := tfrmmdfereport.Create(nil);
  try
    if path <> '' then
    begin
      diretorio := path;
    end
    else
    begin
      diretorio := QRotinas.getdiretorio(frmmdfereport.DAMDFE.PathPDF);
      if diretorio = '' then
      begin
        result := False;
        Exit;
      end;
    end;
    frmmdfereport.DAMDFE.PathPDF := diretorio;
    mdfe1.DAMDFe                 := frmmdfereport.DAMDFE;
    mdfe1.Manifestos.ImprimirPDF;
    result := True;
  finally
    freeandnil(frmmdfereport);
  end;
end;

procedure Tfrmmdfereport.FormCreate(Sender: TObject);
Var
  IniFile: String;
  Ini: TIniFile;
  Ok: Boolean;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.'+_ini) ;
  Ini     := TIniFile.Create(IniFile);
  try
    DAMDFE.TipoDAMDFe := StrToTpImp(OK,IntToStr(Ini.ReadInteger( 'Geral','DANFE',0)+1));
    DAMDFE.Logo      := Ini.ReadString( 'Geral','LogoMarca'   ,'');
  finally
    freeandnil(Ini);
  end;
  DAMDFE.FastFile         := ExtractFilePath(Application.ExeName)+'DAMDFe_Retrato.fr3';
  DAMDFE.FastFileEvento   := ExtractFilePath(Application.ExeName)+'EVENTOS_MDFE.fr3';
  DAMDFE.Sistema          := _www_quipos_inf_br;
  DAMDFE.PathPDF          := ExtractFilePath(Application.ExeName)+'\xml\';
  DAMDFE.MostrarPreview   := True;
  DAMDFE.MostrarStatus    := True;
  DAMDFE.NumCopias        := 1;
  DAMDFE.MargemInferior   := 0.800000000000000000;
  DAMDFE.MargemSuperior   := 0.800000000000000000;
  DAMDFE.MargemEsquerda   := 0.600000000000000000;
  DAMDFE.MargemDireita    := 0.510000000000000000;
  DAMDFE.EspessuraBorda   := 1;
end;

end.
