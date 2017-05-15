unit ClasseImportacaoXML;

interface

uses forms, System.SysUtils, Data.DB, dialogs, classes, system.UITypes,
  ACBrNFe, pcnConversao, pcnNFe,
  uprogressbar, uRegistro, uConstantes, ustrings, uRotinas, udatahora,
  classesaida, classeretornasql, classeempresa, classegerar, classeexecutasql, classecliente, classefornecedor, classetransportadora,
  classequery, classeAplicacao, classeregistrainformacao, classeproduto;

type
  TImportacaoXML = class
  private
    diretorio : string;
    Arquivo : TStrings;
    nfe: TACBrNFe;
    tpsaidaList : ttpsaidalist;
    procedure AtualizarDuplicata(saida:TSaida);
    procedure AtualizarItSaida(saida:TSaida);
    procedure AtribuirDadosDuplicata(x:Integer; saida:TSaida);
    procedure AtribuirDadosItsaida(x:Integer; saida:tsaida);
    procedure AtribuirDadosSaida(Saida:TSaida);
    function  ObterCodigoTransportadora(transportadora:TTransportadora):Largeint;
    function  AtualizarSaida(saida:TSaida):Boolean;
    function  CarregarXML(nmfile:string):boolean;
    function  cdtpsaidadocfop(cdcfop:Integer):Integer;
    function  ConsistirXML:Boolean;
    function  ImportarArquivoXML(nmfile:string): integer;
    function  ImportarDiretorioxml: boolean;
    function  InserirCliente(cliente:Tcliente):Largeint;
    procedure InserirDuplicata(saida:TSaida);
    function  InserirFornecedor(fornecedor: Tfornecedor):Largeint;
    procedure InserirItSaida(saida: TSaida);
    function  InserirProduto(x: Integer; saida: TSaida):integer;
    function  InserirSaida(saida : TSaida):boolean;
    function  InserirTransportadora(transportadora:TTransportadora):Largeint;
    function  Obtercdproduto(x: Integer; saida: tsaida):Integer;
    Function  ObterCodigoDestinatario(pessoa:string):Largeint;
    function  ProcessarXMLparaNFE(nmfile: string):integer;
  public
    constructor Create;
    destructor destroy; override;
    class Function ImportarDiretorioNFE:boolean;
    class Function ImportarArquivoNFE:integer;
  end;

implementation

uses
  classeACBR;

class function TImportacaoXML.ImportarArquivoNFE: integer;
var
  importar : TImportacaoXML;
begin
  importar := TImportacaoXML.Create;
  try
    result := importar.ImportarArquivoxml('');
  finally
    FreeAndNil(importar);
  end;
end;

function TImportacaoXML.ImportarArquivoXML(nmfile:string): integer;
begin
  if (nmfile = '') and (QRotinas.getfilename(nmfile) = False) then
  begin
    Exit;
  end;
  result := ProcessarXMLparaNFE(nmfile);
end;

class function TImportacaoXML.ImportarDiretorioNFE: boolean;
var
  importar : TImportacaoXML;
begin
  importar := TImportacaoXML.Create;
  try
    result := importar.ImportarDiretorioxml;
  finally
    FreeAndNil(importar);
  end;
end;

function TImportacaoXML.ImportarDiretorioxml: boolean;
var
  i : Integer;
begin
  result := False;
  diretorio := QRotinas.getdiretorio(diretorio);
  if diretorio = '' then
  begin
    exit;
  end;
  QRotinas.ListarArquivo(diretorio, arquivo);
  frmprogressbar.Show;
  frmprogressbar.gau.MaxValue := Arquivo.Count-1;
  for i := 0 to Arquivo.Count - 1 do
  begin
    frmprogressbar.pnl.Caption := ExtractFileName(Arquivo[i]);
    frmprogressbar.gau.Progress := i;
    application.ProcessMessages;
    ProcessarXMLparaNFE(Arquivo[i]);
  end;
  result := True;
end;

function TImportacaoXML.InserirCliente(cliente:Tcliente): Largeint;
begin
  cliente.cdcliente        := removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF).ToInt64;
  cliente.nmcliente        := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.xNome));
  cliente.rzsocial         := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.xNome));
  cliente.nufone1          := nfe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
  cliente.dsendereco       := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr));
  cliente.dsnumero         := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro));
  cliente.dscomplemento    := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl));
  cliente.nucep            := Copy(IntToStr(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP), 1, 5)+'-'+ Copy(IntToStr(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP), 6, 3);
  cliente.nmbairro         := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro));
  cliente.cdmunicipio      := qregistro.CodigodoNomeInteiro(_municipio, UpperCase(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun)));
  cliente.cduf             := qregistro.CodigodoString(_uf, RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF), _SGUF);
  cliente.nufone1cbrnc     := nfe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
  cliente.dsendcbrnc       := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr));
  cliente.dsnumcbrnc       := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro));
  cliente.dscomcbrnc       := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl));
  cliente.nucepcbrnc       := Copy(IntToStr(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP), 1, 5)+'-'+ Copy(IntToStr(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP), 6, 3);
  cliente.nmbaicbrnc       := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro));
  cliente.cdmunicipiocbrnc := qregistro.CodigodoNomeInteiro(_municipio, UpperCase(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun)));
  cliente.cdufcbrnc        := qregistro.CodigodoString(_uf, RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF), _SGUF);
  if Length(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF)) = 14 then
  begin
    cliente.tppessoa := _J;
    cliente.nucnpj   := FormatarCNPJ(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF));
  end
  else if Length(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF)) = 11 then
  begin
    cliente.tppessoa := _F;
    cliente.nucpf    := formatarCPF(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF));
  end;
  cliente.nuinscest   := nfe.NotasFiscais.Items[0].NFe.Dest.IE;
  cliente.Insert;
  Result := cliente.cdcliente;
end;

function TImportacaoXML.InserirFornecedor(fornecedor: Tfornecedor): Largeint;
begin
  fornecedor.cdfornecedor     := removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF).ToInt64;
  fornecedor.nmfornecedor     := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.xNome));
  fornecedor.rzsocial         := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.xNome));
  fornecedor.nufone1          := nfe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone;
  fornecedor.dsendereco       := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xLgr));
  fornecedor.dsnumero         := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.nro));
  fornecedor.dscomplemento    := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xCpl));
  fornecedor.nucep            := Copy(IntToStr(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP), 1, 5)+'-'+ Copy(IntToStr(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.CEP), 6, 3);
  fornecedor.nmbairro         := UPPERCASE(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xBairro));
  fornecedor.cdmunicipio      := qregistro.CodigodoNomeInteiro(_municipio, UpperCase(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.xMun)));
  fornecedor.cduf             := qregistro.CodigodoString(_uf, RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF), _SGUF);
  if Length(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF)) = 14 then
  begin
    fornecedor.tppessoa := _J;
    fornecedor.nucnpj   := FormatarCNPJ(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF));
  end
  else if Length(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF)) = 11 then
  begin
    fornecedor.tppessoa := _F;
    fornecedor.nucpf    := formatarCPF(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF));
  end;
  fornecedor.nuinscest   := nfe.NotasFiscais.Items[0].NFe.Dest.IE;
  fornecedor.Insert;
  Result := fornecedor.cdfornecedor;
end;

function TImportacaoXML.InserirSaida(saida : TSaida):Boolean;
begin
  saida.cdsaida           := qgerar.GerarCodigo(_saida);
  AtribuirDadosSaida(saida);
  InserirItSaida(saida);
  InserirDuplicata(saida);
  saida.InserirTudo(false);
  result := True;
end;

function TImportacaoXML.InserirTransportadora(transportadora: TTransportadora): Largeint;
begin
  transportadora.cdtransportadora := removercaracteres(nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF).ToInt64;
  if nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF.Length = 14  then
  begin
    transportadora.tppessoa := _J;
    transportadora.nucnpj   := nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
  end
  else
  begin
    transportadora.tppessoa := _F;
    transportadora.nucpf    := nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
  end;
  transportadora.rzsocial    := nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome;
  transportadora.nuinscest   := nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.IE;
  transportadora.dsendereco  := nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder;
  transportadora.cdmunicipio := qregistro.CodigodoNomeInteiro(_municipio, uppercase(RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun)));
  transportadora.cduf        := qregistro.CodigodoString(_uf, nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.UF, _sguf);
  transportadora.Insert;
  result := transportadora.cdtransportadora;
end;

function TImportacaoXML.ProcessarXMLparaNFE(nmfile: string): integer;
var
  saida : TSaida;
begin
  result := 0;
  if not CarregarXML(nmfile) then
  begin
    Exit;
  end;
  if not ConsistirXML then
  begin
    Exit;
  end;
  saida := tsaida.create;
  try
    saida.tpsaida.cdtpsaida := cdtpsaidadocfop(nfe.NotasFiscais.Items[0].NFe.Det[0].Prod.CFOP.ToInteger);
    if saida.tpsaida.cdtpsaida = 0 then
    begin
      MessageDlg('Não existe tipo de nota fiscal configurado para o cfop '+nfe.NotasFiscais.Items[0].NFe.Det[0].Prod.CFOP+'.', mtInformation, [mbOK], 0);
      Abort;
    end;
    saida.tpsaida.Select(saida.tpsaida.cdtpsaida);
    saida.tpsaida.serie.Select(saida.tpsaida.cdserie);
    if saida.tpsaida.serie.nuserie <> nfe.NotasFiscais.Items[0].NFe.Ide.serie.ToString then
    begin
      MessageDlg('Número de série ('+nfe.NotasFiscais.Items[0].NFe.Ide.serie.ToString+') '+
                 'da nota '+nfe.NotasFiscais.Items[0].NFe.Ide.nNF.ToString+' '+
                 'diferente da série '+saida.tpsaida.serie.nuserie+' do tipo de nota fiscal de acordo com o cfop.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if not saida.Select('cdserie='+saida.tpsaida.cdserie.ToString+' and nusaida='+nfe.NotasFiscais.Items[0].NFe.Ide.nNF.ToString) then
    begin
      InserirSaida(saida);
    end
    else
    begin
      AtualizarSaida(saida);
    end;
    result := saida.cdsaida;
  finally
    FreeAndNil(saida);
  end;
end;

procedure TImportacaoXML.AtribuirDadosDuplicata(x: Integer; saida: TSaida);
begin
  saida.duplicata.items[x].cdcliente     := saida.cdcliente;
  saida.duplicata.items[x].nuduplicata   := nfe.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].nDup;
  saida.duplicata.items[x].dtemissao     := nfe.NotasFiscais.Items[0].NFe.Ide.dEmi;
  saida.duplicata.items[x].dtentrada     := nfe.NotasFiscais.Items[0].NFe.Ide.dEmi;
  saida.duplicata.items[x].dtvencimento  := nfe.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].dVenc;
  saida.duplicata.items[x].dtprorrogacao := nfe.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].dVenc;
  if saida.duplicata.Items[x].vlsaldo = saida.duplicata.Items[x].vlduplicata then
  begin
    saida.duplicata.items[x].vlsaldo := nfe.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].vDup;
  end;
  saida.duplicata.items[x].vlduplicata   := nfe.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].vDup;
end;

procedure TImportacaoXML.AtribuirDadosItsaida(x: Integer; saida: tsaida);
begin
  saida.itsaida.items[x].cdproduto      := Obtercdproduto(x, saida);
  saida.itsaida.items[x].cddigitado     := nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.cProd;
  saida.itsaida.items[x].cdcfop         := nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.CFOP.ToInteger;
  saida.itsaida.items[x].qtitem         := nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.qCom;
  saida.itsaida.items[x].vlunitario     := nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.vUnCom;
  saida.itsaida.items[x].vltotal        := nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.vProd;
  saida.itsaida.items[x].dsinfadicional := nfe.NotasFiscais.Items[0].NFe.Det[x].infAdProd;
  saida.itsaida.items[x].cdmodbcicms    := TAcbr.SetModBC(nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.modBC);
  saida.itsaida.items[x].nusticms       := TAcbr.convertercsticms(nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.CST);
  saida.itsaida.items[x].vlbaseicms     := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.vBC;
  saida.itsaida.items[x].alicms         := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.pICMS;
  saida.itsaida.items[x].vlicms         := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.vICMS;
  saida.itsaida.Items[x].vltotaltributo := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.vTotTrib;
  saida.itsaida.items[x].prredbcicms    := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.pRedBC;
  saida.itsaida.items[x].vlicmscredito  := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.vCredICMSSN;
  saida.itsaida.items[x].alicmscredito  := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.pCredSN;

  saida.itsaida.items[x].prredbcicmssubtrib := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.pRedBCST;
  saida.itsaida.items[x].vlbaseicmssubtrib  := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.vBCST;
  saida.itsaida.items[x].alicmssubtrib      := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.pICMSST;
  saida.itsaida.items[x].vlicmssubtrib      := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.vICMSST;
  saida.itsaida.items[x].prmrgvladicionadoicmssubtrib := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ICMS.pMVAST;

  saida.itsaida.items[x].nustipi        := TAcbr.convertercstipi(nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.IPI.CST);
  saida.itsaida.items[x].vlbaseipi      := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ipi.vBC;
  saida.itsaida.items[x].alipi          := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ipi.pipi;
  saida.itsaida.items[x].vlipi          := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.ipi.vipi;
  saida.itsaida.items[x].nustcofins     := TAcbr.convertercstcofins(nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.COFINS.CST);
  saida.itsaida.items[x].vlbasecofins   := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.cofins.vBC;
  saida.itsaida.items[x].alcofins       := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.cofins.pcofins;
  saida.itsaida.items[x].vlcofins       := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.cofins.vcofins;
  saida.itsaida.items[x].nustpis        := TAcbr.convertercstpis(nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.PIS.CST);
  saida.itsaida.items[x].vlbasepis      := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.pis.vBC;
  saida.itsaida.items[x].alpis          := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.pis.ppis;
  saida.itsaida.items[x].vlpis          := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.pis.vpis;
  saida.itsaida.Items[x].vlfrete        := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vFrete;
  saida.itsaida.Items[x].dsinfadicional := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].infAdProd;
  saida.itsaida.Items[x].vlseguro       := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vSeg;
  saida.itsaida.Items[x].vldesconto     := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vDesc;
  saida.itsaida.Items[x].vloutdespesa   := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vOutro;
  if nfe.NotasFiscais.Items[0].NFe.Det.Items[x].prod.xPed <> '' then
  begin
    saida.itsaida.items[x].nucotacao := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].prod.xPed;
    saida.itsaida.items[x].nuitem    := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].prod.nItemPed;
  end;

  saida.itsaida.Items[x].vlbasedifal    := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMSUFDest.vBCUFDest;
  saida.itsaida.Items[x].pFCPUFDest     := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMSUFDest.pFCPUFDest;
  saida.itsaida.Items[x].pICMSUFDest    := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMSUFDest.pICMSUFDest;
  saida.itsaida.Items[x].alicms         := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMSUFDest.pICMSInter;
  saida.itsaida.Items[x].pICMSInterPart := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMSUFDest.pICMSInterPart;
  saida.itsaida.Items[x].vFCPUFDest     := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMSUFDest.vFCPUFDest;
  saida.itsaida.Items[x].vICMSUFDest    := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMSUFDest.vICMSUFDest;
  saida.itsaida.Items[x].vICMSUFRemet   := nfe.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMSUFDest.vICMSUFRemet;
end;

procedure TImportacaoXML.AtribuirDadosSaida(Saida: TSaida);
begin
  if nfe.NotasFiscais.Items[0].NFe.Ide.indFinal = cfConsumidorFinal then
  begin
    Saida.boconsumidorfinal := _S;
  end
  else
  begin
    Saida.boconsumidorfinal := _N;
  end;
  saida.cdnfefinalidade := TAcbr.getcdnfefinalidade(nfe.NotasFiscais.Items[0].NFe.Ide.finNFe);
  saida.cdindpres       := TAcbr.getcdindpres(nfe.NotasFiscais.Items[0].NFe.Ide.indPres);
  saida.cdtpsaida         := saida.tpsaida.cdtpsaida;
  saida.cdserie           := saida.tpsaida.cdserie;
  saida.nudocfiscalicms   := _55;
  saida.NUSTDOCUMENTO     := _00;
  saida.dtemissao         := nfe.NotasFiscais.Items[0].NFe.Ide.dEmi;
  saida.nusaida           := nfe.NotasFiscais.Items[0].NFe.Ide.nNF;
  saida.cnf               := nfe.NotasFiscais.Items[0].NFe.Ide.cNF;
  saida.cdcfop            := nfe.NotasFiscais.Items[0].NFe.Det[0].Prod.CFOP.ToInteger;
  saida.dsxml             := nfe.NotasFiscais.Items[0].XML;

  saida.nuprotocoloautorizacao := nfe.NotasFiscais.Items[0].NFe.procNFe.nProt;
  saida.TSPROTOCOLOAUTORIZACAO := nfe.NotasFiscais.Items[0].NFe.procNFe.dhRecbto;

  saida.nuchavenfe        := nfe.NotasFiscais.Items[0].NFe.procNFe.chNFe;
  saida.vltotal           := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
  saida.vlbaseicms        := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
  saida.vlicms            := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
  saida.vlbaseicmssubtrib := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
  saida.vlicmssubtrib     := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
  saida.vlproduto         := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
  saida.vlfrete           := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
  saida.vlseguro          := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
  saida.vldesconto        := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
  saida.vlipi             := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;
  saida.vlpis             := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
  saida.vlcofins          := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;
  saida.vloutdespesa      := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
  saida.VLSERVICO         := nfe.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vServ;
  saida.VLBASEISS         := nfe.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vBC;
  saida.VLISS             := nfe.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vISS;
  if nfe.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vPIS > 0 then
  begin
    saida.vlpis          := nfe.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vPIS;
  end;
  if nfe.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vCOFINS > 0 then
  begin
    saida.vlcofins       := nfe.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vCOFINS;
  end;
  saida.cdtpfrete         := TAcbr.ConverterTpfrete(nfe.NotasFiscais.Items[0].NFe.Transp.modFrete);
  saida.nuplaca           := nfe.NotasFiscais.Items[0].NFe.Transp.veicTransp.placa;
  if nfe.NotasFiscais.Items[0].NFe.Transp.veicTransp.UF <> '' then
  begin
    saida.cduf := CodigodoCampo(_uf, nfe.NotasFiscais.Items[0].NFe.Transp.veicTransp.UF, _sguf).ToInteger;
  end;

  if nfe.NotasFiscais.items[0].NFe.Transp.Vol.Count > 0 then
  begin
    saida.qtvolume          := nfe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol;
    saida.dsespecie         := nfe.NotasFiscais.items[0].NFe.Transp.Vol.Items[0].esp;
    saida.nuvolume          := nfe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].nVol;
    saida.dsmarca           := nfe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].marca;
    saida.psliquido         := nfe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL;
    saida.psbruto           := nfe.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB;
  end;
  saida.dsobservacao      := nfe.NotasFiscais.items[0].NFe.InfAdic.infCpl;
  Saida.vlii              := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
  saida.vltotaltributo    := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vTotTrib;
  saida.VFCPUFDEST        := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.VFCPUFDEST;
  saida.VICMSUFDEST       := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.VICMSUFDEST;
  saida.VICMSUFREMET      := nfe.NotasFiscais.Items[0].NFe.Total.ICMSTot.VICMSUFREMET;
  //
  saida.VLPISRET        := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vRetPIS;
  saida.VLCOFINSRET     := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vRetCOFINS;
  saida.VLCONTRIBSOCIAL := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vRetCSLL;
  saida.VLBASEIRRF      := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vBCIRRF;
  saida.VLIRRF          := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vIRRF;

  if saida.tpsaida.tpforncliente = _c then
  begin
    saida.cdcliente := ObterCodigoDestinatario(_cliente);
    if saida.cdcliente = 0 then
    begin
      saida.cdcliente := InserirCliente(saida.cliente);
    end;
  end
  else
  begin
    saida.cdfornecedor := ObterCodigoDestinatario(_fornecedor);
    if saida.cdfornecedor = 0 then
    begin
      saida.cdfornecedor := InserirFornecedor(saida.fornecedor);
    end;
  end;
  saida.cdtransportadora := ObtercodigoTransportadora(Saida.transportadora);

  if formatdatetime(_mm_dd_yyyy, nfe.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> _12_30_1899 then
  begin
    saida.dtsaida := nfe.NotasFiscais.Items[0].NFe.Ide.dSaiEnt;
    saida.hrSAIDA := nfe.NotasFiscais.Items[0].NFe.Ide.dSaiEnt;
  end
  else
  begin
    saida.dtsaida := nfe.NotasFiscais.Items[0].NFe.Ide.dEmi;
    saida.hrsaida := strtotime('10:00:00');
  end;

  if nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vRetPIS > 0 then
  begin
    saida.boretencaopis := _S;
    saida.VLPISRET      := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vRetPIS;
  end;
  if nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vRetCOFINS > 0 then
  begin
    saida.boretencaocofins := _S;
    saida.vlcofinsret      := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vRetCOFINS;
  end;
  if nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vRetCSLL > 0 then
  begin
    saida.boretencaocontribsocial := _S;
    saida.vlcontribsocial         := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vRetCSLL;
  end;
  if nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vBCIRRF > 0 then
  begin
    saida.boretencaoirrf  := _S;
    saida.vlbaseirrf      := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vBCIRRF;
    saida.vlirrf          := nfe.NotasFiscais.Items[0].NFe.Total.retTrib.vIRRF;
  end;
  saida.BOENVIADO    := _S;
  saida.TPENTSAI     := saida.tpsaida.tpentsai;
end;

procedure TImportacaoXML.AtualizarDuplicata(saida: TSaida);
var
  x : Integer;
begin
  saida.duplicata.Ler(saida.cdsaida);
  for x := 0 to nfe.NotasFiscais.Items[0].NFe.Cobr.Dup.Count - 1 do
  begin
    if x > saida.duplicata.Count - 1 then
    begin
      saida.duplicata.New;
      saida.duplicata.Items[x].cdsaida   := saida.cdsaida;
      saida.duplicata.Items[x].cdduplicata := QGerar.GerarCodigo(_duplicata);
    end;
    AtribuirDadosduplicata(x, saida);
    saida.duplicata.Items[x].Update;
  end;
  if nfe.NotasFiscais.Items[0].NFe.Cobr.Dup.Count < saida.duplicata.Count then
  begin
    for x := 0 to saida.duplicata.Count - 1 do
    begin
      if x > nfe.NotasFiscais.Items[0].NFe.Det.Count -1 then
      begin
        saida.duplicata.Items[x].Delete;
      end;
    end;
  end;
end;

procedure TImportacaoXML.AtualizarItSaida(saida: TSaida);
var
  x : Integer;
begin
  saida.itsaida.Ler(saida.cdsaida);
  for x := 0 to nfe.NotasFiscais.Items[0].NFe.Det.Count - 1 do
  begin
    if x > saida.itsaida.Count - 1 then
    begin
      saida.itsaida.New;
      saida.itsaida.Items[x].cdsaida   := saida.cdsaida;
      saida.itsaida.Items[x].cditsaida := QGerar.GerarCodigo(_itsaida);
    end;
    AtribuirDadosItsaida(x, saida);
    saida.itsaida.Items[x].Update;
  end;
  if nfe.NotasFiscais.Items[0].NFe.Det.Count < saida.itsaida.Count then
  begin
    for x := 0 to saida.itsaida.Count - 1 do
    begin
      if x > nfe.NotasFiscais.Items[0].NFe.Det.Count -1 then
      begin
        saida.itsaida.Items[x].Delete;
      end;
    end;
  end;
end;

function TImportacaoXML.AtualizarSaida(saida: TSaida): Boolean;
begin
  AtribuirDadosSaida(saida);
  saida.Update;
  AtualizarItsaida(saida);
  AtualizarDuplicata(saida);
  result := True;
end;

function TImportacaoXML.CarregarXML(nmfile: string):boolean;
var
  texto : TStringStream;
  arquivo_ : TStrings;
begin
  texto    := TStringStream.Create('');
  arquivo_ := TStringList.Create;
  try
    nfe.NotasFiscais.Clear;
    arquivo_.LoadFromFile(nmfile);
    texto.WriteString(UTF8Encode(arquivo_.text));
    try
      nfe.NotasFiscais.LoadFromStream(texto);
      result := True;
    except
      result := False;
    end;
  finally
    freeandnil(texto);
    FreeAndNil(arquivo_);
  end;
end;

function TImportacaoXML.cdtpsaidadocfop(cdcfop: Integer): Integer;
var
  I: Integer;
begin
  if tpsaidaList.Count = 0 then
  begin
    tpsaidalist.Ler('cdempresa='+empresa.cdempresa.ToString);
  end;
  result := 0;
  for I := 0 to tpsaidaList.Count - 1 do
  begin
    if (tpsaidaList.Items[i].cdcfopduf = cdcfop) or
       (tpsaidaList.Items[i].cdcfopfuf = cdcfop) or
       (tpsaidaList.Items[i].cdcfopfufsubtrib = cdcfop) or
       (tpsaidaList.Items[i].cdcfopdufsubtrib = cdcfop) or
       (tpsaidaList.Items[i].cdcfopdufoutro = cdcfop) or
       (tpsaidaList.Items[i].cdcfopfufoutro = cdcfop) or
       (tpsaidaList.Items[i].cdcfopfufsubtriboutro = cdcfop) or
       (tpsaidaList.Items[i].cdcfopdufsubtriboutro = cdcfop) then
    begin
      result := tpsaidaList.Items[i].cdtpsaida;
    end;
  end;
end;

function TImportacaoXML.ConsistirXML: Boolean;
var
  i : Integer;
begin
  result := True;
  if nfe.NotasFiscais.Items[0].NFe.Ide.tpAmb = taHomologacao then
  begin
    MessageDlg('Nota '+inttostr(nfe.NotasFiscais.Items[0].NFe.Ide.nNF)+' enviada no ambiente de homologação.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if nfe.NotasFiscais.Items[0].NFe.procNFe.chNFe = '' then
  begin
    MessageDlg('Nota '+nfe.NotasFiscais.Items[0].NFe.Ide.nNF.ToString+' não possui a autorização da SEFAZ.', mtInformation, [mbOK], 0);
    Abort;
  end;
  for I := 0 to nfe.NotasFiscais.Items[0].NFe.Det.Count - 1 do
  begin
    if not CodigoExiste(_cfop, nfe.NotasFiscais.Items[0].NFe.Det[i].Prod.CFOP) then
    begin
      ShowMessage('Cfop '+nfe.NotasFiscais.Items[0].NFe.Det[i].Prod.CFOP+' inexistente na nota '+inttostr(nfe.NotasFiscais.Items[0].NFe.Ide.nNF));
      Abort;
    end;
  end;
end;

constructor TImportacaoXML.Create;
begin
  Arquivo        := TStringList.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  tpsaidaList    := TTPSaidaList.Create;
  nfe            := TACBrNFe.Create(nil);
end;

destructor TImportacaoXML.destroy;
begin
  FreeAndNil(tpsaidaList);
  FreeAndNil(Arquivo);
  FreeAndNil(frmprogressbar);
  FreeAndNil(nfe);
  inherited;
end;

procedure TImportacaoXML.InserirDuplicata(saida:TSaida);
var
  x : Integer;
begin
  if nfe.NotasFiscais.Items[0].NFe.Cobr.Dup.Count = 0 then
  begin
    Exit;
  end;
  for x := 0 to nfe.NotasFiscais.Items[0].NFe.Cobr.Dup.Count - 1 do
  begin
    saida.duplicata.new;
    saida.duplicata.items[x].cdsaida       := saida.cdsaida;
    saida.duplicata.items[x].cdduplicata   := qgerar.GerarCodigo(_duplicata);
    AtribuirDadosDuplicata(x, saida);
  end;
end;

procedure TImportacaoXML.InserirItSaida(saida: TSaida);
var
  x : Integer;
begin
  for x := 0 to nfe.NotasFiscais.Items[0].NFe.Det.Count - 1 do
  begin
    saida.itsaida.new;
    saida.itsaida.items[x].cdsaida   := saida.cdsaida;
    saida.itsaida.items[x].cditsaida := qgerar.GerarCodigo(_itsaida);
    AtribuirdadosItSaida(x, saida);
  end;
end;

function TImportacaoXML.InserirProduto(x: Integer; saida:TSaida): integer;
var
  cdproduto : string;
begin
  cdproduto := RemoverCaracterInicio(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.cProd), _0);
  if (Length(cdproduto) = 11) or (Length(cdproduto) = 12) then
  begin
    saida.itsaida.Items[x].produto.cdalternativo := cdproduto;
  end;
  saida.itsaida.Items[x].produto.cdproduto  := Copy(cdproduto, 1, 9).ToInteger;
  saida.itsaida.Items[x].produto.nmproduto  := RetiraAcentos(nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.xProd);
  saida.itsaida.Items[x].produto.cdunidade  := TUnidade.CodigodoNome(nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.uCom);
  saida.itsaida.Items[x].produto.nuclfiscal := nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.NCM;
  saida.itsaida.Items[x].produto.cean       := nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.cEAN;
  saida.itsaida.Items[x].produto.clenq      := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.IPI.clEnq;
  saida.itsaida.Items[x].produto.nucnpj     := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.IPI.CNPJProd;
  saida.itsaida.Items[x].produto.cdenq      := nfe.NotasFiscais.Items[0].NFe.Det[x].Imposto.IPI.cEnq;
  saida.itsaida.Items[x].produto.boentrada  := _S;
  saida.itsaida.Items[x].produto.bosaida    := _S;
  saida.itsaida.Items[x].produto.boordcompra:= _S;
  saida.itsaida.Items[x].produto.boordserv  := _S;
  saida.itsaida.Items[x].produto.bopedido   := _S;
  saida.itsaida.Items[x].produto.bopedidomaterial  := _S;
  saida.itsaida.Items[x].produto.bomovto    := _S;
  saida.itsaida.Items[x].produto.bopedido   := _S;
  saida.itsaida.Items[x].produto.bopedido   := _S;
  saida.itsaida.Items[x].produto.Insert;
  Result := saida.itsaida.Items[x].produto.cdproduto;
end;

function TImportacaoXML.Obtercdproduto(x: Integer; saida: TSaida): Integer;
var
  codigo : string;
begin
  result := qregistro.CodigodoString(_produto, nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.cProd, _cdalternativo);
  if result > 0 then
  begin
    Exit;
  end;
  result := qregistro.CodigodoString(_produto, nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.cProd, _cdcodfornecedor);
  if result > 0 then
  begin
    Exit;
  end;
  codigo := RemoverCaracterInicio(nfe.NotasFiscais.Items[0].NFe.Det[x].Prod.cProd, _0);
  if codigo <> removercaracteres(codigo) then
  begin
    MessageDlg('A nota '+saida.nusaida.ToString+' possui o produto '+codigo+' inexistente no seu banco de dados.'#13'Favor cadastrar o produto antes de continuar.', mtInformation, [mbOK], 0);
    Abort;
    //InserirProduto(x, saida);
  end;
  if qregistro.CodigoExiste(_produto, codigo.ToInteger) then
  begin
    result := codigo.ToInteger;
  end
  else
  begin
    result := InserirProduto(x, saida);
  end;
end;

function TImportacaoXML.ObterCodigoDestinatario(pessoa:string): Largeint;
begin
  result := removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF).ToInt64;
  if not qregistro.CodigoExiste(pessoa, result) then
  begin
    result := QRegistro.CodigodoString(pessoa, FormatarCNPJ(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF)), _nucnpj);
    if result = 0 then
    begin
      result := QRegistro.CodigodoString(pessoa, formatarCPF(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Dest.CNPJCPF)), _nucpf);
    end;
  end;
end;

function TImportacaoXML.ObterCodigoTransportadora(transportadora:TTransportadora): Largeint;
begin
  if nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF = '' then
  begin
    result := 0;
    Exit;
  end;
  result := removercaracteres(nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF).ToInt64;
  if not qregistro.CodigoExiste(_transportadora, result) then
  begin
    result := QRegistro.CodigodoString(_transportadora, FormatarCNPJ(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF)), _nucnpj);
    if result = 0 then
    begin
      result := QRegistro.CodigodoString(_transportadora, formatarCPF(removercaracteres(nfe.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF)), _nucpf);
    end;
  end;
  if result = 0 then
  begin
    result := InserirTransportadora(transportadora)
  end;
end;

end.
