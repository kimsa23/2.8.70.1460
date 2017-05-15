unit unfereport;

interface

uses
  System.Actions, System.UITypes, data.db,
  ShellAPI, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  IniFiles, Dialogs,
  comobj, olectrls,
  SqlExpr,
  uRotinas, uConstantes,
  classeemail, classeempresa, classeretornasql, classetransportadora, classefornecedor, classecliente, classesaida, classeacbr,
  ACBrNFeDANFEClass, ACBrNFe, pcnConversao, ACBrNFeDANFEFR, ACBrNFeDANFEFRDM;

type
  Tfrmnfereport = class(TForm)
    danfe: TACBrNFeDANFEFR;
    procedure FormCreate(Sender: TObject);
  private { Private declarations }
    procedure SalvarDANFE;
    procedure ConfigurarCasaDecimal(nucasadecimal, nucasadecimalUnitario: Integer);
  public  { Public declarations }
  end;

var
  frmnfereport: Tfrmnfereport;

function  NFEGerarPDF(nucasadecimal:Integer; nucasadecimalvlunitario:Integer; nfe1:TACBrNFe; path:string=''):string;
function  NFEImprimir(nucasadecimal:Integer; nucasadecimalvlunitario:Integer; nfe1:TACBrNFE; bonfecancelada:boolean; tbl:string=''; boshowdialog:Boolean=True; bomostrarpreview:Boolean=true):Boolean;
function  NFEImprimirCartaCorrecao(nfe1:TACBrNFe; boshowdialog:Boolean=True; bomostrarpreview:Boolean=true):Boolean;
procedure NFEEnviarDestinatario(nucasadecimal:Integer; nucasadecimalvlunitario:Integer; nfe1:TACBrNFe; email: temail_; cdcliente, cdfornecedor, cdtransportadora:LargeInt);
procedure GerarPDF(nucasadecimal:Integer; nucasadecimalUnitario:Integer; nfe1:TACBrNFe);
function  gerarPDFCartaCorrecao(nfe1:TACBrNFe; boshowdialog:Boolean=True; bomostrarpreview:Boolean=true):Boolean;

implementation

uses Math, uDtmMain;

procedure Tfrmnfereport.ConfigurarCasaDecimal(nucasadecimal: Integer; nucasadecimalUnitario: Integer);
begin
  if nucasadecimal > 0 then
  begin
    danfe.CasasDecimais._qCom := nucasadecimal;
  end;
  if nucasadecimalUnitario > 0 then
  begin
    danfe.CasasDecimais._vUnCom := nucasadecimalUnitario;
  end;
end;

{$R *.dfm}

procedure GerarPDF(nucasadecimal:Integer; nucasadecimalUnitario:Integer; nfe1:TACBrNFe);
begin
  frmnfereport := Tfrmnfereport.Create(nil);
  try
    frmnfereport.danfe.ExibirTotalTributosItem := acbr.geral.boExibirTotTribItem;
    nfe1.DANFE                                 := frmnfereport.danfe;
    nfe1.DANFE.TipoDANFE                       := nfe1.NotasFiscais.Items[0].NFe.Ide.tpImp;
    nfe1.DANFE.PathPDF                         := ExtractFilePath(Application.ExeName);
    frmnfereport.ConfigurarCasaDecimal(nucasadecimal, nucasadecimalUnitario);
    nfe1.DANFE.ImprimirDANFEPDF(nfe1.NotasFiscais.Items[0].nfe);
  finally
    freeandnil(frmnfereport);
  end;
end;

function caminho(nfe1:TACBrNFe):string;
begin
  result := ExtractFilePath(Application.ExeName)+inttostr(nfe1.NotasFiscais.Items[0].NFe.Ide.nNF)+'.xml';
end;

function caminhopdf(nfe1:TACBrNFe):string;
begin
  result := ExtractFilePath(Application.ExeName)+StringReplace(NFe1.NotasFiscais.Items[0].NFe.infNFe.ID,'NFe', '', [rfIgnoreCase])+'.'+_pdf;
end;

procedure enviar_outlook(nucasadecimal:Integer; nucasadecimalvlunitario:Integer; nfe1: TACBrNFe; email: TEmail_; email1:string; lstemail:tstrings; bonenviarpdf:boolean);
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
  vMailItem.Body    := email.msg; // Corpo do e-mail
  nfe1.NotasFiscais.Items[0].gravarXML(caminho(nfe1));
  vMailItem.Attachments.Add(caminho(nfe1));
  if bopdf then
  begin
    GerarPDF(nucasadecimal, nucasadecimalvlunitario, nfe1);
    vMailItem.attachments.add(caminhopdf(nfe1));
  end;
  vMailItem.Send;
  VarClear(Outlook);
  DeleteFile(caminho(nfe1));
  if bopdf then
  begin
    deletefile(caminhopdf(nfe1));
  end;
end;

procedure NFEEnviarDestinatario(nucasadecimal:Integer; nucasadecimalvlunitario:Integer; nfe1:TACBrNFe; email: temail_; cdcliente, cdfornecedor, cdtransportadora:Largeint);
var
  email1, email1_transportadora : string;
  msg, lstemail, lstemailt : TStrings;
  cliente : TCliente;
  fornecedor : Tfornecedor;
  transportadora : TTransportadora;
  bonenviarpdf : Boolean;
  procedure enviar_gmail(bonenviarpdf:boolean);
  var
    bopdf : Boolean;
  begin
    bopdf := email.bopdf;
    if bonenviarpdf then
    begin
      bopdf := False;
    end;
    frmnfereport := Tfrmnfereport.Create(nil);
    try
      frmnfereport.danfe.ExibirTotalTributosItem := acbr.geral.boExibirTotTribItem;
      frmnfereport.ConfigurarCasaDecimal(nucasadecimal, nucasadecimalvlunitario);
      msg.Text             := email.msg;
      nfe1.DANFE           := frmnfereport.danfe;
      nfe1.DANFE.TipoDANFE := nfe1.NotasFiscais.Items[0].NFe.Ide.tpImp;
      NFe1.NotasFiscais.Items[0].EnviarEmail(email1, email.Assunto, msg, bopdf, lstemail);
    finally
      freeandnil(frmnfereport);
    end;
  end;
  procedure get_email_cliente;
  begin
    if cdcliente = 0 then
    begin
      exit;
    end;
    cliente.select(cdcliente);
    bonenviarpdf := cliente.bonenviarpdf = _s;
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
  end;
  procedure get_email_fornecedor;
  begin
    if cdfornecedor = 0 then
    begin
      exit;
    end;
    fornecedor.select(cdfornecedor);
    bonenviarpdf := fornecedor.bonenviarpdf = _s;
    fornecedor.listaemail(lstemail);
    if lstemail.Count = 0 then
    begin
      email1 := fornecedor.email;
    end
    else
    begin
      email1 := lstemail[0];
      lstemail.Delete(0);
    end;
  end;
  procedure get_email_transportadora;
  begin
    if cdtransportadora = 0 then
    begin
      exit;
    end;
    transportadora.Select(cdtransportadora);
    bonenviarpdf   := transportadora.bonenviarpdf = _s;
    lstemailt.Text := transportadora.Listaemail(cdtransportadora);
    if lstemailt.Count = 0 then
    begin
      email1_transportadora := transportadora.email;
    end
    else
    begin
      email1_transportadora := lstemailt[0];
      lstemailt.Delete(0);
    end;
  end;
begin
  if (cdcliente = 0) and (cdfornecedor = 0) then
  begin
    Exit;
  end;
  lstemail       := TStringList.Create;
  lstemailt      := TStringList.Create;
  msg            := TStringList.Create;
  cliente        := tcliente.create;
  fornecedor     := tfornecedor.create;
  transportadora := ttransportadora.create;
  try
    get_email_cliente;
    get_email_fornecedor;
    if (email1 = '') and (lstemail.Count = 0) then
    begin
      MessageDlg('Destinatário não possui e-mail para envio automático.'#13'Adicione um e-mail para envio da Nota Fiscal Eletrônica.', mtInformation, [mbOK], 0);
      Exit;
    end;
    if email.tpenvio = 0 then
    begin
      enviar_outlook(nucasadecimal, nucasadecimalvlunitario, nfe1, email, email1, lstemail, bonenviarpdf);
    end
    else
    begin
      enviar_gmail(bonenviarpdf);
    end;
    get_email_transportadora;
    if not ((email1_transportadora = '') and (lstemailt.Count = 0)) then
    begin
      if email.tpenvio = 1 then
      begin
        enviar_gmail(bonenviarpdf);
      end
      else
      begin
        enviar_outlook(nucasadecimal, nucasadecimalvlunitario, nfe1, email, email1_transportadora, lstemailt, bonenviarpdf);
      end;
    end;
  finally
    freeandnil(cliente);
    freeandnil(fornecedor);
    freeandnil(transportadora);
    freeandnil(lstemailt);
    freeandnil(lstemail);
    freeandnil(msg);
  end;
end;

function NFEImprimir(nucasadecimal:Integer; nucasadecimalvlunitario:Integer; nfe1:TACBrNFe; bonfecancelada:boolean; tbl:string=''; boshowdialog:Boolean=True; bomostrarpreview:Boolean=true):Boolean;
  function arquivo_impressao_existe(nmfile:string):Boolean;
  begin
    Result := FileExists(ExtractFilePath(Application.ExeName)+'\'+nmfile+'.fr3');
  end;
begin
  result := False;
  frmnfereport := Tfrmnfereport.Create(nil);
  try
    if not arquivo_impressao_existe('Danfe') then
    begin
      MessageDlg('Arquivo Danfe.fr3 não está disponível no diretório do executável.'#13'Restaure o arquivo para realizar a impressão.', mtInformation, [mbOK], 0);
      Exit;
    end;
    if tbl = _entrada then
    begin
      frmnfereport.danfe.Logo := '';
    end;
    frmnfereport.ConfigurarCasaDecimal(nucasadecimal, nucasadecimalvlunitario);
    frmnfereport.danfe.ExibirTotalTributosItem := acbr.geral.boExibirTotTribItem;
    frmnfereport.danfe.ExibirResumoCanhoto := True;
    frmnfereport.danfe.MostrarPreview := bomostrarpreview;
    frmnfereport.danfe.ShowDialog := boshowdialog;
    frmnfereport.danfe.NFeCancelada := bonfecancelada;
    nfe1.danfe := frmnfereport.danfe;
    nfe1.DANFE.TipoDANFE := nfe1.NotasFiscais.Items[0].NFe.Ide.tpImp;
    if nfe1.NotasFiscais.Items[0].NFe.procNFe.nProt = '' then
    begin
      nfe1.NotasFiscais.Items[0].NFe.Ide.tpAmb := taHomologacao;
    end;
    if bonfecancelada and (nfe1.NotasFiscais.Items[0].NFe.procNFe.cStat = 100) then
    begin
      nfe1.NotasFiscais.Items[0].NFe.procNFe.cStat := 101;
    end;
    nfe1.NotasFiscais.Items[0].Imprimir;
    result := True;
  finally
    freeandnil(frmnfereport);
  end;
end;

function NFEImprimirCartaCorrecao(nfe1:TACBrNFe; boshowdialog:Boolean=True; bomostrarpreview:Boolean=true):Boolean;
  function arquivo_impressao_existe(nmfile:string):Boolean;
  begin
    Result := FileExists(ExtractFilePath(Application.ExeName)+'\'+nmfile+'.fr3');
  end;
begin
  result := False;
  frmnfereport := Tfrmnfereport.Create(nil);
  try
    if not arquivo_impressao_existe('eventos') then
    begin
      MessageDlg('Arquivo eventos.fr3 não está disponível no diretório do executável.'#13'Restaure o arquivo para realizar a impressão.', mtInformation, [mbOK], 0);
      Exit;
    end;
    frmnfereport.danfe.ExibirResumoCanhoto := True;
    frmnfereport.danfe.MostrarPreview := bomostrarpreview;
    frmnfereport.danfe.ShowDialog := boshowdialog;
    nfe1.danfe := frmnfereport.danfe;
    nfe1.DANFE.TipoDANFE := nfe1.NotasFiscais.Items[0].NFe.Ide.tpImp;
    if nfe1.NotasFiscais.Items[0].NFe.procNFe.nProt = '' then
    begin
      nfe1.NotasFiscais.Items[0].NFe.Ide.tpAmb := taHomologacao;
    end;
    nfe1.ImprimirEvento;
    result := True;
  finally
    freeandnil(frmnfereport);
  end;
end;

function gerarPDFCartaCorrecao(nfe1:TACBrNFe; boshowdialog:Boolean=True; bomostrarpreview:Boolean=true):Boolean;
  function arquivo_impressao_existe(nmfile:string):Boolean;
  begin
    Result := FileExists(ExtractFilePath(Application.ExeName)+'\'+nmfile+'.fr3');
  end;
var
  diretorio : string;
begin
  result := False;
  frmnfereport := Tfrmnfereport.Create(nil);
  try
    if not arquivo_impressao_existe('eventos') then
    begin
      MessageDlg('Arquivo eventos.fr3 não está disponível no diretório do executável.'#13'Restaure o arquivo para realizar a impressão.', mtInformation, [mbOK], 0);
      Exit;
    end;
    frmnfereport.danfe.ExibirResumoCanhoto := True;
    frmnfereport.danfe.MostrarPreview := bomostrarpreview;
    frmnfereport.danfe.ShowDialog := boshowdialog;
    nfe1.danfe := frmnfereport.danfe;
    nfe1.DANFE.TipoDANFE := nfe1.NotasFiscais.Items[0].NFe.Ide.tpImp;
    if nfe1.NotasFiscais.Items[0].NFe.procNFe.nProt = '' then
    begin
      nfe1.NotasFiscais.Items[0].NFe.Ide.tpAmb := taHomologacao;
    end;
    diretorio := QRotinas.getdiretorio(diretorio);
    if diretorio <> '' then
    begin
      nfe1.DANFE.PathPDF := diretorio;
    end;
    nfe1.ImprimirEventoPDF;
    result := True;
  finally
    freeandnil(frmnfereport);
  end;
end;

function NFEGerarPDF(nucasadecimal:Integer; nucasadecimalvlunitario:Integer; nfe1:TACBrNFe; path:string=''):string;
var
  nuchave, diretorio : string;
begin
  frmnfereport := tfrmnfereport.Create(nil);
  try
    if path <> '' then
    begin
      diretorio := path;
    end
    else
    begin
      diretorio := QRotinas.getdiretorio(frmnfereport.danfe.PathPDF);
      if diretorio = '' then
      begin
        result := '';
        Exit;
      end;
    end;
    frmnfereport.ConfigurarCasaDecimal(nucasadecimal, nucasadecimalvlunitario);
    frmnfereport.danfe.ExibirTotalTributosItem := acbr.geral.boExibirTotTribItem;
    frmnfereport.DANFE.PathPDF := diretorio;
    NFe1.danfe := frmnfereport.danfe;
    nfe1.DANFE.TipoDANFE := nfe1.NotasFiscais.Items[0].NFe.Ide.tpImp;
    NFe1.NotasFiscais.ImprimirPDF;
    nuchave := NFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
    delete(nuchave, 1, 3);
    result := frmnfereport.DANFE.PathPDF+nuchave+'-nfe.'+_pdf;
  finally
    freeandnil(frmnfereport);
  end;
end;

procedure Tfrmnfereport.SalvarDANFE;
var
  arquivo : TStrings;
begin
  arquivo := TStringList.Create;
  try
    arquivo.Text := ReportScript(508);
    if arquivo.Text <> '' then
    begin
      arquivo.SaveToFile(ExtractFilePath(Application.ExeName)+'DANFE.fr3');
    end;
  finally
    arquivo.Free;
  end;
end;

procedure Tfrmnfereport.FormCreate(Sender: TObject);
Var
  IniFile: String;
  Ini: TIniFile;
  Ok: Boolean;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.'+_ini) ;
  Ini := TIniFile.Create(IniFile);
  try
    DANFE.TipoDANFE := StrToTpImp(OK,IntToStr(Ini.ReadInteger( 'Geral','DANFE',0)+1));
    DANFE.Logo      := Ini.ReadString( 'Geral','LogoMarca'   ,'');
  finally
    freeandnil(Ini);
  end;
  SalvarDANFE;
  danfe.FastFile                  := ExtractFilePath(Application.ExeName)+'DANFE.fr3';
  danfe.FastFileEvento            := ExtractFilePath(Application.ExeName)+'eventos.fr3';
  DANFE.Sistema                   := _www_quipos_inf_br;
  DANFE.PathPDF                   := ExtractFilePath(Application.ExeName)+'\xml\';
  DANFE.MostrarPreview            := True;
  DANFE.dmDanfe.frxReport.PreviewOptions.Zoom := 1.5;
  DANFE.MostrarStatus             := True;
  DANFE.NumCopias                 := 1;
  DANFE.ImprimirDescPorc          := False;
  DANFE.ImprimirTotalLiquido      := False;
  DANFE.MargemInferior            := 0.800000000000000000;
  DANFE.MargemSuperior            := 0.800000000000000000;
  DANFE.MargemEsquerda            := 0.600000000000000000;
  DANFE.MargemDireita             := 0.510000000000000000;
  DANFE.ExibirResumoCanhoto       := False;
  DANFE.FormularioContinuo        := False;
  DANFE.TamanhoFonte_DemaisCampos := 10;
  DANFE.ProdutosPorPagina         := 0;
  DANFE.EspessuraBorda            := 1;
end;

end.
