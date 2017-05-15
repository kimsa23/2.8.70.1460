unit uctereport;

interface

uses
  System.Actions, System.UITypes, data.db,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  IniFiles, Dialogs,
  SqlExpr,
  ACBrCTe, ACBrCTeDACTEClass, ACBrCTeDACTEFR, pcnConversao,
  classeemail, classeretornasql, classecliente, classeempresa, classesaida,
  urotinas, udatahora, ustrings, uconstantes, uregistro;

type
  Tfrmctereport = class(TForm)
    dacte2: TACBrCTeDACTEFR;
    procedure FormCreate(Sender: TObject);
  private { Private declarations }
    function carregarxml(ACBrCTe1: TACBrCTe; xml:string): Boolean;
  public { Public declarations }
  end;

var
  frmctereport: Tfrmctereport;

function  CTEGerarPDF(cte1:TACBrCTe; dsxml:string; bonfecancelada:boolean=false; path:string=''):boolean;
function  CTEImprimir(ACBrCTe:TACBrCTe; dsxml: string; bonfecancelada:boolean=false; bomostrarpreview:Boolean=true):Boolean;
function  CTEEnviarEmail(cte1:TACBrCTe; email: temail_):Boolean;
procedure CTEEnviarDestinatario(cte1:TACBrCTe; email: temail_; cdcliente:LargeInt);
function  CTEImprimirCartaCorrecao(cte1:TACBrCTe; bomostrarpreview:Boolean=true):Boolean;
function  GerarPDFCartaCorrecao(cte1:TACBrCTe; bomostrarpreview:Boolean=true):Boolean;

implementation

uses uDtmMain;

{$R *.dfm}

function GerarPDFCartaCorrecao(cte1:TACBrCTe; bomostrarpreview:Boolean=true):Boolean;
  function arquivo_impressao_existe(nmfile:string):Boolean;
  begin
    Result := FileExists(ExtractFilePath(Application.ExeName)+'\'+nmfile+'.fr3');
  end;
var
  diretorio : string;
begin
  result := False;
  frmctereport := Tfrmctereport.Create(nil);
  try
    if not arquivo_impressao_existe('DACTE_EVENTOS') then
    begin
      MessageDlg('Arquivo DACTE_EVENTOS.fr3 não está disponível no diretório do executável.'#13'Restaure o arquivo para realizar a impressão.', mtInformation, [mbOK], 0);
      Exit;
    end;
    frmctereport.dacte2.MostrarPreview := bomostrarpreview;
    frmctereport.dacte2.FastFileEvento := ExtractFilePath(Application.ExeName)+'\'+'DACTE_EVENTOS'+'.fr3';
    cte1.DACTe                         := frmctereport.dacte2;
    cte1.DACTe.TipoDACTE               := cte1.Conhecimentos.Items[0].CTe.Ide.tpImp;
    if cte1.Conhecimentos.Items[0].CTe.procCTe.nProt = '' then
    begin
      cte1.Conhecimentos.Items[0].CTe.Ide.tpAmb := taHomologacao;
    end;
    diretorio := QRotinas.getdiretorio(diretorio);
    if diretorio <> '' then
    begin
      cte1.DACTe.PathPDF := diretorio;
    end;
    cte1.ImprimirEventoPDF;
    result := True;
  finally
    freeandnil(frmctereport);
  end;
end;

function CTEImprimirCartaCorrecao(cte1:TACBrCTe; bomostrarpreview:Boolean=true):Boolean;
  function arquivo_impressao_existe(nmfile:string):Boolean;
  begin
    Result := FileExists(ExtractFilePath(Application.ExeName)+'\'+nmfile+'.fr3');
  end;
begin
  result := False;
  frmctereport := Tfrmctereport.Create(nil);
  try
    if not arquivo_impressao_existe('DACTE_EVENTOS') then
    begin
      MessageDlg('Arquivo DACTE_EVENTOS.fr3 não está disponível no diretório do executável.'#13'Restaure o arquivo para realizar a impressão.', mtInformation, [mbOK], 0);
      Exit;
    end;
    frmctereport.dacte2.MostrarPreview := bomostrarpreview;
    frmctereport.dacte2.FastFileEvento := ExtractFilePath(Application.ExeName)+'\'+'DACTE_EVENTOS'+'.fr3';
    cte1.DACTe                         := frmctereport.dacte2;
    cte1.DACTe.TipoDACTE               := cte1.Conhecimentos.Items[0].CTe.Ide.tpImp;
    if cte1.Conhecimentos.Items[0].CTe.procCTe.nProt = '' then
    begin
      cte1.Conhecimentos.Items[0].CTe.Ide.tpAmb := taHomologacao;
    end;
    cte1.ImprimirEvento;
    result := True;
  finally
    freeandnil(frmctereport);
  end;
end;

procedure CTEEnviarDestinatario(cte1:TACBrCTe; email: temail_; cdcliente:LargeInt);
var
  email1 : string;
  msg, lstemail : TStrings;
  cliente : TCliente;
  bopdf : Boolean;
begin
  lstemail     := TStringList.Create;
  msg          := TStringList.Create;
  frmctereport := tfrmctereport.Create(nil);
  try
    cliente := tcliente.create;
    try
      if cdcliente = 0 then
      begin
        Exit;
      end;
      cliente.select(cdcliente);
      cliente.listaemail(lstemail);
      if lstemail.Count = 0 then
      begin
        email1 := cliente.email;
      end
      else
      begin
        email1 := lstemail[0];
        lstemail.Delete(0);
      end;
      if (email1 = '') and (lstemail.Count = 0) then
      begin
        MessageDlg('Destinatário não possui e-mail para envio automático.'#13'Adicione um e-mail para envio da Nota Fiscal Eletrônica.', mtInformation, [mbOK], 0);
        Exit;
      end;
      msg.Text   := email.msg;
      cte1.DACTe := frmctereport.dacte2;
      cte1.DACTe.PathPDF := cte1.Configuracoes.Arquivos.PathSalvar;
      bopdf      := email.bopdf;
      if cliente.bonenviarpdf = _s then
      begin
        bopdf := False;
      end;
      //@CTe1.Conhecimentos.Items[0].EnviarEmail(email.SmtpHost, email.SmtpPort, email.SmtpUser, email.SmtpPass, empresa.rzsocial, email1, email.Assunto, msg, email.boSSL, bopdf, lstemail, nil, false);
      CTe1.Conhecimentos.Items[0].EnviarEmail(email1, email.Assunto, msg, bopdf, lstemail, nil);
    finally
      freeandnil(cliente);
    end;
  finally
    FreeAndNil(lstemail);
    FreeAndNil(msg);
    freeandnil(frmctereport);
  end;
end;

function CTEEnviarEmail(cte1:TACBrCTe; email: temail_):Boolean;
var
  email1 : String;
  msg, lstemail : TStrings;
begin
  email1 := InputBox('Enviar e-mail', 'Digite o e-mail para envio da CTe', '');
  if email1 = '' then
  begin
    messagedlg('E-mail não informado.', mtinformation, [mbok], 0);
    result := False;
    exit;
  end;
  lstemail := TStringList.Create;
  msg      := TStringList.Create;
  frmctereport := tfrmctereport.Create(nil);
  try
    msg.Text   := email.msg;
    cte1.DACTe := frmctereport.dacte2;
    cte1.DACTe.PathPDF := cte1.Configuracoes.Arquivos.PathSalvar;
    CTe1.Conhecimentos.Items[0].EnviarEmail(email1, email.Assunto, msg, email.bopdf, nil, nil);
    result := True;
  finally
    FreeAndNil(lstemail);
    FreeAndNil(msg);
    freeandnil(frmctereport);
  end;
end;

function CTEImprimir(ACBrCTe:TACBrCTe; dsxml: string; bonfecancelada:boolean=false; bomostrarpreview:Boolean=true):Boolean;
  function arquivo_impressao_existe:Boolean;
  begin
    Result := FileExists(ExtractFilePath(Application.ExeName)+'\dacte.fr3');
  end;
begin
  result := False;
  frmctereport := tfrmctereport.Create(nil);
  try
    if not arquivo_impressao_existe then
    begin
      MessageDlg('Arquivo Dacte.fr3 não está disponível no diretório do executável.'#13'Restaure o arquivo para realizar a impressão.', mtInformation, [mbOK], 0);
      Exit;
    end;
    frmctereport.carregarxml(ACBrCTe, dsxml);
    ACBrCTe.DACTe := frmctereport.dacte2;
    ACBrCTe.DACTe.MostrarPreview := bomostrarpreview;
    ACBrCTe.DACTe.MostrarStatus  := bomostrarpreview;
    ACBrCTe.DACTe.CTeCancelada   := bonfecancelada;
    ACBrCTe.conhecimentos.Items[0].Imprimir;
    result := True;
  finally
    freeandnil(frmctereport);
  end;
end;

function CTEGerarPDF(cte1:TACBrCTe; dsxml:string; bonfecancelada:boolean=false; path:string=''):Boolean;
var
  diretorio : string;
begin
  frmctereport := tfrmctereport.Create(nil);
  try
    if path <> '' then
    begin
      diretorio := path;
    end
    else
    begin
      diretorio := QRotinas.getdiretorio(frmctereport.dacte2.PathPDF);
      if diretorio = '' then
      begin
        result := False;
        Exit;
      end;
    end;
    frmctereport.dacte2.PathPDF := diretorio;
    cte1.DACTe := frmctereport.dacte2;
    cte1.DACTe.CTeCancelada := bonfecancelada;
    frmctereport.carregarxml(cte1, dsxml);
    cte1.conhecimentos.Items[0].ImprimirPDF;
    result := True;
  finally
    freeandnil(frmctereport);
  end;
end;

function Tfrmctereport.carregarxml(ACBrCTe1: TACBrCTe; xml: string): Boolean;
var
  texto : TStringStream;
begin
  texto := TStringStream.Create('');
  try
    ACBrCTe1.Conhecimentos.Clear;
    texto.WriteString(xml);
    ACBrCTe1.Conhecimentos.LoadFromStream(texto);
    result := True;
  finally
    freeandnil(texto);
  end;
end;

procedure Tfrmctereport.FormCreate(Sender: TObject);
  procedure salvar_dacte;
  var
    arquivo : TStrings;
  begin
    arquivo := TStringList.Create;
    try
      arquivo.Text := ReportScript(510);
      if arquivo.text <> '' then
      begin
        arquivo.SaveToFile(ExtractFilePath(Application.ExeName)+'DACTE.fr3');
      end;
    finally
      arquivo.Free;
    end;
  end;
Var
  IniFile: String;
  Ini: TIniFile;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.'+_ini) ;
  Ini     := TIniFile.Create(IniFile);
  try
    dacte2.Logo       := Ini.ReadString( 'Geral','LogoMarca','');
  finally
    freeandnil(Ini);
  end;
  salvar_dacte;
  dacte2.FastFile := ExtractFilePath(Application.ExeName)+'DACTE.fr3';
end;

end.
