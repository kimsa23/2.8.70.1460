unit classenfe;

interface

uses
  System.Actions, System.UITypes,
  sysutils, classes, dialogs, Controls, forms, IniFiles, Math,
  DB,
  urotinas, ustrings, uConstantes, uvalidadocumento, udatahora, uregistro,
  classeaplicacao, classeACBR, classeempresa, classeretornasql, classequery,
  classesaida, classecliente, classefornecedor, classetransportadora, classeproduto,
  classeentrada, classemunicipio, classeuf, classeEndereco,
  ACBrValidador, ACBrNFe, pcnConversao, pcnConversaoNFe, pcnNFe, ACBrNFeNotasFiscais;

type
  TNFE = class(TObject)
    nfea: TACBrNFe;
    cDV: string;
    nmcertificado : Widestring;
    isencaoicms:string[6];
    private
      saida : TSaida;
      function getTpregimetribuario:TpcnCRT;
      function getindiedest(codigo:Integer):TpcnindIEDest;
      function MontarLinha(linha:string):string;
      procedure setdestinatario;
      procedure setduplicata;
      procedure setemitente;
      procedure SetInfNFE;
      procedure SetPadrao;
      procedure SetProduto;
      procedure setprodutocofins(i:integer);
      procedure Setprodutoicms(i: Integer);
      procedure setprodutoicmsdest(i: integer);
      procedure Setprodutoimportacao(cditsaida: integer; i: integer);
      procedure SetProdutoIPI(i:integer);
      procedure Setprodutopis(i:integer);
      procedure setreferenciada;
      procedure SaidaReferenciadaCupom(i:integer);
      procedure SaidaReferenciadaNotaFiscalNaoNFE(i: integer);
      procedure SaidaRefenciadaCompraNaoNFE(i:integer);
      procedure settotal;
      procedure settransportadora;
      procedure setCliente;
      procedure setFornecedor;
      function getIddest:TpcnDestinoOperacao;
    public
      constructor create;
      destructor destroy; override;
      function Gerar(codigo: Integer; acbrnfe1: TACBrNFe):boolean;
      class function gerarNFE(cdsaida: Integer; acbrnfe1: tacbrnfe):boolean;
  end;

implementation

class function TNFE.gerarNFE(cdsaida: Integer; acbrnfe1: tacbrnfe):boolean;
var
  nfe: tnfe;
begin
  nfe := Tnfe.Create;
  try
    result := nfe.Gerar(cdsaida, acbrnfe1);
  finally
    freeandnil(nfe);
  end;
end;

procedure TNFE.setemitente;
begin
  nfea.NotasFiscais.Add.NFe.Emit.xNome := empresa.rzsocial;
  if empresa.endereco.cduf = 0 then
  begin
    MessageDlg('Unidade Federativa não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if empresa.endereco.cdmunicipio = 0 then
  begin
    MessageDlg('Município não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if Empresa.nucnpj = '' then
  begin
    MessageDlg('CNPJ não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if Empresa.nmempresa = '' then
  begin
    MessageDlg('Nome da empresa não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if empresa.endereco.dsendereco = '' then
  begin
    MessageDlg('Endereço não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if empresa.endereco.dsnumero = '' then
  begin
    MessageDlg('Número do endereço não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if empresa.endereco.nmbairro = '' then
  begin
    MessageDlg('Nome do bairro não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if empresa.endereco.nucep = '' then
  begin
    MessageDlg('CEP não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if empresa.nufone1 = '' then
  begin
    MessageDlg('Telefone não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if empresa.nuinscest = '' then
  begin
    MessageDlg('Inscrição Estadual não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if empresa.nucnae = '' then
  begin
    MessageDlg('CNAE não informado no cadastro da empresa.', mtInformation, [mbOK], 0);
    Abort;
  end;
  nfea.NotasFiscais.Items[0].NFe.Ide.cUF                := empresa.endereco.cduf;
  nfea.NotasFiscais.Items[0].NFe.Ide.cMunFG             := empresa.endereco.cdmunicipio;
  nfea.NotasFiscais.Items[0].NFe.Emit.CNPJCPF           := Empresa.nucnpj_;
  nfea.NotasFiscais.Items[0].NFe.Emit.xFant             := empresa.nmempresa;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr    := empresa.endereco.dsendereco;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro     := empresa.endereco.dsnumero;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl    := empresa.endereco.dscomplemento;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro := empresa.endereco.nmbairro;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun    := empresa.endereco.cdmunicipio;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun    := empresa.endereco.nmmunicipio;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF      := empresa.endereco.sguf;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP     := strtoint(removercaracteres(empresa.endereco.nucep));
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais   := _nscpais;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais   := _nspais;
  nfea.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone    := empresa.nufone1_;
  nfea.NotasFiscais.Items[0].NFe.Emit.IE                := empresa.nuinscest_;
  nfea.NotasFiscais.Items[0].NFe.Emit.IM                := removercaracteres(empresa.nuinscmunicipal);
  nfea.NotasFiscais.Items[0].NFe.Emit.CNAE              := removercaracteres(empresa.nucnae);
  nfea.NotasFiscais.Items[0].NFe.Emit.CRT               := getTpregimetribuario;
end;

procedure TNFE.setdestinatario;
begin
  nfea.NotasFiscais.Items[0].NFe.Ide.modelo := StrToInt(saida.nudocfiscalicms);
  nfea.NotasFiscais.Items[0].NFe.Ide.serie  := StrToInt(saida.serie.nuserie);
   { TODO -oPaulo -cClasse : Criar uma classe ancestora de fornecedor e cliente : TPessoa }
  if saida.cdcliente <> 0 then
  begin
    setCliente;
  end
  else if saida.fornecedor.cdfornecedor <> 0 then
  begin
    setFornecedor;
  end;
end;

procedure TNFE.settransportadora;
begin
  nfea.NotasFiscais.Items[0].NFe.Transp.modFrete := TAcbr.SetModFrete(saida.cdtpfrete);
  if saida.transportadora.tppessoa = _J then
  begin
    nfea.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF := removercaracteres(saida.transportadora.nucnpj)
  end
  else
  begin
    nfea.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF := removercaracteres(saida.transportadora.nucpf);
  end;
  nfea.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome := saida.transportadora.rzsocial;
  if saida.nmredespacho <> '' then
  begin
    nfea.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome := nfea.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome + '/'+ saida.nmredespacho;
  end;
  nfea.NotasFiscais.Items[0].NFe.Transp.Transporta.IE      := removercaracteres(saida.transportadora.nuinscest);
  nfea.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder  := saida.transportadora.dsendereco;
  nfea.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun    := qregistro.nomedocodigo(_municipio, saida.transportadora.cdmunicipio);
  nfea.NotasFiscais.Items[0].NFe.Transp.Transporta.UF      := qregistro.StringdoCodigo(_uf, saida.transportadora.cduf, _sguf);
  nfea.NotasFiscais.Items[0].NFe.Transp.veicTransp.placa   := RemoverEspacosVazios(saida.nuplaca);
  saida.uf.Select(saida.cduf);
  nfea.NotasFiscais.Items[0].NFe.Transp.veicTransp.UF      := saida.uf.sguf;
  nfea.NotasFiscais.Items[0].NFe.Transp.Vol.Add.qVol       := saida.qtvolume;
  nfea.NotasFiscais.items[0].NFe.Transp.Vol.Items[0].esp   := saida.dsespecie;
  nfea.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].marca := saida.dsmarca;
  nfea.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL := saida.psliquido;
  nfea.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB := saida.psbruto;
  nfea.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].nVol  := saida.nuvolume;
end;

procedure TNFe.settotal;
begin
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC     := saida.vlbaseicms;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS   := saida.vlicms;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST   := saida.vlbaseicmssubtrib;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST     := saida.vlicmssubtrib;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd   := saida.vlproduto;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete  := saida.vlfrete;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg    := saida.vlseguro;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc   := saida.vldesconto;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII     := saida.vlii;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI    := saida.vlipi;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS    := saida.vlpis;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS := saida.vlcofins;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro  := saida.vloutdespesa;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF     := saida.vltotal;
  nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vTotTrib:= saida.vltotaltributo;
  if saida.aNotaEDifal then
  begin
    nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.VFCPUFDEST:= saida.VFCPUFDEST;
    nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.VICMSUFDEST:= saida.VICMSUFDEST;
    nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.VICMSUFREMET:= saida.VICMSUFREMET;
  end;
  //
  nfea.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vServ   := saida.VLSERVICO;
  nfea.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vBC     := saida.VLBASEISS;
  nfea.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vISS    := saida.VLISS;
  nfea.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vPIS    := saida.VLPISRET;
  nfea.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vCOFINS := saida.VLCOFINSRET;
  if saida.boretencaopis = _s then
  begin
    nfea.NotasFiscais.Items[0].NFe.Total.retTrib.vRetPIS := saida.VLPISRET;
  end;
  if saida.boretencaocofins = _s then
  begin
    nfea.NotasFiscais.Items[0].NFe.Total.retTrib.vRetCOFINS := saida.VLCOFINSRET;
  end;
  if saida.boretencaocontribsocial = _s then
  begin
    nfea.NotasFiscais.Items[0].NFe.Total.retTrib.vRetCSLL := saida.VLCONTRIBSOCIAL;
  end;
  if saida.boretencaoirrf = _s then
  begin
    nfea.NotasFiscais.Items[0].NFe.Total.retTrib.vBCIRRF := saida.VLBASEIRRF;
    nfea.NotasFiscais.Items[0].NFe.Total.retTrib.vIRRF := saida.VLIRRF;
  end;
  if saida.cdufembarque > 0 then
  begin
    saida.ufembarque.Select(saida.cdufembarque);
    nfea.NotasFiscais.Items[0].NFe.exporta.UFembarq := saida.ufembarque.sguf;
    nfea.NotasFiscais.Items[0].NFe.exporta.xLocEmbarq := saida.dslocalembarque;
    saida.ufsaida.Select(saida.cdufsaida);
    nfea.NotasFiscais.Items[0].NFe.exporta.UFSaidaPais := saida.ufsaida.sguf;
    nfea.NotasFiscais.Items[0].NFe.exporta.xLocExporta := saida.dslocalexporta;
    nfea.NotasFiscais.Items[0].NFe.exporta.xLocDespacho := saida.dslocaldespacho;
  end;
end;

function TNFE.MontarLinha(linha:string):string;
const
  p = 59;
  p2 = 125;
var
  lt : TStrings;
  x, p1, i : integer;
  tx : string;
begin
  x := 0;
  lt := TStringList.create;
  try
    lt.Text := linha;
    for i := 0 to lt.count - 1 do
    begin
      tx := lt[i];
      if x < 8 then p1 := p
               else p1 := p2;
      while length(tx) > p1 do
      begin
        inc(x);
        result := result + copy(tx, 1, p1);
        Delete(tx, 1, p1);
      end;
      inc(x);
      result := result + FormatarTextoDireita(tx, p1, ' ');
    end;
  finally
    freeandnil(lt);
  end;
end;

procedure TNFE.SetPadrao;
Var
  IniFile: String;
  Ini: TIniFile;
  Ok: Boolean;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.'+_ini) ;
  Ini     := TIniFile.Create(IniFile);
  try
    nfea.NotasFiscais.Items[0].NFe.Ide.tpImp := StrToTpImp(OK,IntToStr(Ini.ReadInteger('Geral','DANFE',0)+1));
  finally
    freeandnil(Ini);
  end;
  if empresa.endereco.cduf = 29 then
  begin
    nfea.NotasFiscais.Items[0].NFe.autXML.Add.CNPJCPF := Empresa.contador.nucpf_;
  end;
  nfea.Configuracoes.Geral.VersaoDF           := ve310; //nfea.NotasFiscais.Items[0].NFe.Ide.verProc := '2.0';

  nfea.NotasFiscais.Items[0].NFe.Ide.tpEmis   := nfea.Configuracoes.Geral.FormaEmissao; //teNormal; // (teNormal, teContingencia, teSCAN, teDPEC, teFSDA)
  nfea.NotasFiscais.Items[0].NFe.Ide.tpAmb    := nfea.Configuracoes.WebServices.Ambiente;
  nfea.NotasFiscais.Items[0].NFe.Ide.finNFe   := TAcbr.getNFEFinalidade(saida.cdnfefinalidade);
  nfea.NotasFiscais.Items[0].NFe.Ide.procEmi  := peAplicativoContribuinte; // (peAplicativoContribuinte, peAvulsaFisco, peAvulsaContribuinte, peContribuinteAplicativoFisco) _3;
  nfea.NotasFiscais.Items[0].NFe.Ide.verProc  := empresa.nuversao;
  nfea.NotasFiscais.Items[0].NFe.Ide.indFinal := cfNao; //    TpcnConsumidorFinal = (cfNao, cfConsumidorFinal);
  if saida.boconsumidorfinal = _s then
  begin
    nfea.NotasFiscais.Items[0].NFe.Ide.indFinal := cfConsumidorFinal;
  end;
  nfea.NotasFiscais.Items[0].NFe.Ide.indPres  := acbr.getIndPress(saida.cdindpres);
end;

procedure TNFe.SetInfNFE;
begin
  if (nfea.Configuracoes.Geral.FormaEmissao = teContingencia) or
     (nfea.Configuracoes.Geral.FormaEmissao = teSCAN) or
     (nfea.Configuracoes.Geral.FormaEmissao = teSVCAN) or
     (nfea.Configuracoes.Geral.FormaEmissao = teSVCRS) or
     (nfea.Configuracoes.Geral.FormaEmissao = teSVCSP) or
     (nfea.Configuracoes.Geral.FormaEmissao = teDPEC) then
  begin
    nfea.NotasFiscais.Items[0].NFe.Ide.xJust  := acbr.geral.dscontingencia;
    nfea.NotasFiscais.Items[0].NFe.Ide.dhCont := saida.tsalteracao;
  end;
  nfea.NotasFiscais.Items[0].NFe.Ide.cNF     := -1;//StrToInt(StrZero(Random(999999999),9,0));
  nfea.NotasFiscais.Items[0].NFe.Ide.dEmi    := saida.dtemissao;
  //nfea.NotasFiscais.Items[0].NFe.Ide.dhSaiEnt := saida.dtsaida;
  nfea.NotasFiscais.Items[0].NFe.Ide.dSaiEnt := saida.dtsaida + saida.hrsaida;
  nfea.NotasFiscais.Items[0].NFe.Ide.hSaiEnt := saida.hrsaida;
  nfea.NotasFiscais.Items[0].NFe.Ide.nNF     := saida.nusaida;
  nfea.NotasFiscais.Items[0].NFe.Ide.natOp   := copy(saida.cfop.nmcfop, 1, 60);
  if saida.tpentsai = _E then
  begin
    nfea.NotasFiscais.Items[0].NFe.Ide.tpNF := tnEntrada
  end
  else if saida.tpentsai = _S then
  begin
    nfea.NotasFiscais.Items[0].NFe.Ide.tpNF := tnSaida;
  end;
end;

procedure TNFE.Setprodutoicms(i: Integer);
begin
  if saida.itsaida.items[i].nusticms = '' then
  begin
    MessageDlg('O produto '+saida.itsaida.items[i].cddigitado+' - '+saida.itsaida.items[i].produto.nmproduto+#13+
               'não está configurado a situação tributária do ICMS para o CFOP '+inttostr(saida.itsaida.items[i].cdcfop)+#13+
               'Altere a regra de situação tributária do produto no seu cadastro '#13+
               'ou configure diretamente no item da nota exibindo os campos necessários do imposto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (saida.itsaida.items[i].cdtpregimeicms = 2) and (Length(saida.itsaida.items[i].nusticms) = 2) then
  begin
    MessageDlg('O produto '+saida.itsaida.items[i].cddigitado+' - '+saida.itsaida.items[i].produto.nmproduto+#13+
               'está com o tipo de regime como "Simples Nacional" mas a situação tributária do ICMS é do regime "Normal".', mtInformation, [mbOK], 0);
    Abort;
  end;
  if (saida.itsaida.items[i].cdtpregimeicms = 1) and (Length(saida.itsaida.items[i].nusticms) = 3) then
  begin
    MessageDlg('O produto '+saida.itsaida.items[i].cddigitado+' - '+saida.itsaida.items[i].produto.nmproduto+#13+
               'está com o tipo de regime como "Normal" mas a situação tributária do ICMS é do regime "Simples Nacional".', mtInformation, [mbOK], 0);
    Abort;
  end;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.orig     := acbr.GetOrigem(saida.itsaida.items[i].produto.cdorigem);
  if saida.itsaida.items[i].cdtpregimeicms = 2 then
  begin
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.CSOSN       := acbr.GetCSOSNIcms(saida.itsaida.items[i].nusticms);
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vCredICMSSN := saida.itsaida.items[i].vlicmscredito;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pCredSN     := saida.itsaida.items[i].alicmscredito;
  end
  else
  begin
    nfea.NotasFiscais.Items[0].NFe.Emit.CRT := crtRegimeNormal;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.CST      := acbr.GetICMSCST(saida.itsaida.items[i].nusticms);
    saida.itsaida.items[i].produto.modbcicms.Select(saida.itsaida.items[i].produto.cdmodbcicms);
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.modBC    := acbr.getModBC(saida.itsaida.items[i].produto.modbcicms.numodbcicms);
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pRedBC   := saida.itsaida.items[i].prredbcicms;
  end;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBC      := saida.itsaida.items[i].vlbaseicms;
  if saida.itsaida.items[i].cdtpregimeicms = 2 then
  begin
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMS := 0;
    if saida.itsaida.items[i].vlicms  > 0 then
    begin
      MessageDlg('O produto '+saida.itsaida.items[i].cddigitado+' - '+saida.itsaida.items[i].produto.nmproduto+#13+
                 'está configurado o tipo de regime ICMS como simples nacional mas está com destaque de imposto.'#13+
                 'Altere o tipo de regime de ICMS para tributação normal ou retire o destaque de ICMS da nota.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end
  else
  begin
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMS := saida.itsaida.items[i].alicms;
  end;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS      := saida.itsaida.items[i].vlicms;

  saida.itsaida.items[i].produto.modbcsticms.Select(saida.itsaida.items[i].produto.cdmodbcsticms);
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.modBCST    := acbr.GetModBCSt(saida.itsaida.items[i].produto.modbcsticms.numodbcsticms);
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pMVAST     := saida.itsaida.items[i].prmrgvladicionadoicmssubtrib;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pRedBCST   := saida.itsaida.items[i].prredbcicmssubtrib;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBCST      := saida.itsaida.items[i].vlbaseicmssubtrib;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMSST    := saida.itsaida.items[i].alicmssubtrib;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST    := saida.itsaida.items[i].vlicmssubtrib;
  if saida.aNotaEDifal then //and (saida.itsaida.Items[i].vlbasedifal >0) then
  begin
    setprodutoicmsdest(i);
  end;
end;

procedure TNFe.SetProdutoIPI(i:integer);
begin
  if saida.itsaida.Items[i].nustipi = '' then
  begin
    MessageDlg('O produto '+saida.itsaida.Items[i].cddigitado+' - '+saida.itsaida.Items[i].produto.nmproduto+#13+
               'não está configurado a situação tributária do IPI para o CFOP '+inttostr(saida.itsaida.Items[i].cdcfop)+#13+
               'Altere a regra de situação tributária do produto no seu cadastro '#13+
               'ou configure diretamente no item da nota exibindo os campos necessários do imposto.', mtInformation, [mbOK], 0);
  end;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.clEnq    := saida.itsaida.items[i].produto.clenq;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.CNPJProd := removercaracteres(saida.itsaida.items[i].produto.nucnpj);
  if (removercaracteres(saida.itsaida.items[i].produto.nucnpj) <> '') and (removercaracteres(saida.itsaida.items[i].produto.cdenq) = '') then
  begin
    MessageDlg('O produto '+saida.itsaida.items[i].cddigitado+' - '+saida.itsaida.items[i].produto.nmproduto+#13+
               'não está configurado o código de enquadramento.', mtInformation, [mbOK], 0);
    Abort;
  end;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.cEnq     := saida.itsaida.items[i].produto.cdenq;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.CST      := acbr.GetIPICST(saida.itsaida.items[i].nustipi);
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vBC      := saida.itsaida.items[i].vlbaseipi;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.pIPI     := saida.itsaida.items[i].alipi;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI     := saida.itsaida.items[i].vlipi;
end;

procedure TNFE.SetProduto;
var
  i : integer;
begin
  for I := 0 to saida.itsaida.count - 1 do
  begin
    saida.itsaida.Items[i].produto.Select(saida.itsaida.Items[i].cdproduto);
    if Length(saida.itsaida.Items[i].dsinfadicional) > 500 then
    begin
      MessageDlg('O item '+inttostr(i+1)+' de código '+saida.itsaida.Items[i].cddigitado+' - '+saida.itsaida.Items[i].produto.nmproduto+#13+
                'excedeu o limite de 500 caracteres na informação adicional.', mtinformation, [mbok], 0);
      abort;
    end;
    saida.itsaida.Items[i].cfop.Select(saida.itsaida.Items[i].cdcfop);
    if (saida.itsaida.Items[i].cfop.bodevolucao = _s)and (nfea.NotasFiscais.Items[0].NFe.Ide.finNFe <> fnDevolucao) then
    begin
      MessageDlg('O item '+inttostr(i+1)+' de código '+saida.itsaida.Items[i].cddigitado+' - '+saida.itsaida.Items[i].produto.nmproduto+#13+
                 'está com um cfop de devolução mas a nota não está configurado com a finalidade de emissão "Devolução/Retorno".', mtinformation, [mbok], 0);
      abort;
    end;
    if Length(saida.itsaida.Items[i].produto.nmproduto) > 120 then
    begin
      MessageDlg('Nome do produto '+saida.itsaida.Items[i].produto.nmproduto+#13+
                 'não pode ser maior do que 120 caracteres.'#13'Atualmente tem '+inttostr(Length(saida.itsaida.Items[i].produto.nmproduto))+'.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if saida.itsaida.Items[i].produto.nuclfiscal = '' then
    begin
      messagedlg('O produto '+saida.itsaida.Items[i].produto.nmproduto+' não está preenchido o NCM.', mtinformation, [mbok], 0);
      abort;
    end;
    nfea.NotasFiscais.Items[0].NFe.Det.Add.Prod.nItem        := i + 1;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].infAdProd    := saida.itsaida.Items[i].dsinfadicional;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd   := saida.itsaida.Items[i].cddigitado;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.xProd   := saida.itsaida.Items[i].produto.nmproduto;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.NCM     := saida.itsaida.Items[i].produto.nuclfiscal;
    //nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CEST    := q.q.fieldbyname(_nucest).asstring;
    if saida.itsaida.Items[i].produto.cean <> '' then
    begin
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cEAN := saida.itsaida.Items[i].produto.cean;
    end;
    if saida.itsaida.Items[i].produto.cdanp <> '' then
    begin
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.comb.cProdANP := StrToInt(saida.itsaida.Items[i].produto.cdanp);
      saida.itsaida.Items[i].produto.uf.Select(saida.itsaida.Items[i].produto.cduf);
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.comb.UFcons   := saida.itsaida.Items[i].produto.uf.sguf;
    end;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP    := IntToStr(saida.itsaida.Items[i].cdcfop);
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom    := qregistro.nomedocodigo(_unidade, saida.itsaida.Items[i].produto.cdunidade);
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uTrib   := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom;

    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qCom    := saida.itsaida.Items[i].qtitem;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qTrib   := saida.itsaida.Items[i].qtitem;

    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnTrib := saida.itsaida.Items[i].vlunitario;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom  := saida.itsaida.Items[i].vlunitario;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vProd   := saida.itsaida.Items[i].vltotal;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vFrete  := saida.itsaida.Items[i].vlfrete;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vSeg    := saida.itsaida.Items[i].vlseguro;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vOutro  := saida.itsaida.Items[i].vloutdespesa;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vDesc   := saida.itsaida.Items[i].vldesconto;
    if saida.itsaida.Items[i].nucotacao <> '' then
    begin
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].prod.xPed     := saida.itsaida.Items[i].nucotacao;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].prod.nItemPed := saida.itsaida.Items[i].nuitem;
    end;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.IndTot      := itSomaTotalNFe;
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.vTotTrib := saida.itsaida.Items[i].vltotaltributo;
    setprodutoicms(i);
    setprodutoimportacao(saida.itsaida.Items[i].cditsaida, i);
    setprodutoipi(i);
    setprodutopis(i);
    setprodutocofins(i);
  end;
end;

procedure TNFe.setprodutocofins(i:integer);
begin
  if saida.itsaida.items[i].nustcofins = '' then
  begin
    MessageDlg('O produto '+saida.itsaida.items[i].cddigitado+' - '+saida.itsaida.items[i].produto.nmproduto+#13+
               'não está configurado a situação tributária do Cofins para o CFOP '+inttostr(saida.itsaida.items[i].cdcfop)+#13+
               'Altere a regra de situação tributária do produto no seu cadastro '#13+
               'ou configure diretamente no item da nota exibindo os campos necessários do imposto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.CST     := acbr.GetCofinsCST(saida.itsaida.items[i].nustcofins);
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vBC     := saida.itsaida.items[i].vlbasecofins;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.pCOFINS := saida.itsaida.items[i].alcofins;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vCOFINS := saida.itsaida.items[i].vlcofins;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.qBCProd := saida.itsaida.items[i].qtitem;
end;

procedure TNFE.Setprodutopis(i:integer);
begin
  if saida.itsaida.items[i].nustpis = '' then
  begin
    MessageDlg('O produto '+saida.itsaida.items[i].cddigitado+' - '+saida.itsaida.items[i].produto.nmproduto+#13+
               'não está configurado a situação tributária do PIS para o CFOP '+inttostr(saida.itsaida.items[i].cdcfop)+#13+
               'Altere a regra de situação tributária do produto no seu cadastro '#13+
               'ou configure diretamente no item da nota exibindo os campos necessários do imposto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.CST     := acbr.GetPisCST(saida.itsaida.items[i].nustpis);
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vBC     := saida.itsaida.items[i].vlbasepis;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.pPIS    := saida.itsaida.items[i].alpis;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vPIS    := saida.itsaida.items[i].vlpis;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.qBCProd := saida.itsaida.items[i].qtitem;
end;

procedure TNFe.setduplicata;
var
  i : integer;
begin
  if saida.duplicata.Count > 0 then
  begin
    if saida.duplicata.Count = 1 then
    begin
      if saida.duplicata.Items[0].dtvencimento = saida.dtemissao then
      begin
        nfea.NotasFiscais.Items[0].NFe.Ide.indPag := ipVista;
      end
      else
      begin
        nfea.NotasFiscais.Items[0].NFe.Ide.indPag := ipPrazo;
      end;
    end
    else
    begin
      nfea.NotasFiscais.Items[0].NFe.Ide.indPag := ipPrazo;
    end;
    nfea.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat  := IntToStr(saida.nusaida);
    nfea.NotasFiscais.Items[0].NFe.Cobr.Fat.vOrig := saida.vltotal+saida.vldesconto;
    nfea.NotasFiscais.Items[0].NFe.Cobr.Fat.vDesc := saida.vldesconto;
    nfea.NotasFiscais.Items[0].NFe.Cobr.Fat.vLiq  := saida.vltotal;
  end
  else
  begin
    nfea.NotasFiscais.Items[0].NFe.Ide.indPag := ipOutras;
  end;
  for I := 0 to saida.duplicata.Count - 1 do
  begin
    nfea.NotasFiscais.Items[0].NFe.Cobr.Dup.Add.nDup       := saida.duplicata.Items[i].nuduplicata;
    nfea.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].dVenc := saida.duplicata.Items[i].dtvencimento;
    nfea.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[i].vDup  := saida.duplicata.Items[i].vlduplicata;
  end;
  if nfea.NotasFiscais.Items[0].NFe.Cobr.Fat.nFat = '' then
  begin
    exit;
  end;
end;

function TNFE.Gerar(codigo: Integer; acbrnfe1: TACBrNFe):boolean;
var
  nustdocumento : string;
begin
  saida.select(codigo);
  saida.duplicata.Ler(saida.cdsaida, _cdsaida);
  saida.itsaida.Ler(saida.cdsaida);
  saida.cliente.select(saida.cdcliente);
  saida.fornecedor.select(saida.cdfornecedor);
  saida.transportadora.Select(saida.cdtransportadora);
  saida.serie.Select(saida.cdserie);
  saida.cfop.Select(saida.cdcfop);
  nfea           := acbrnfe1;
  nfea.NotasFiscais.Clear;
  setemitente;
  nustdocumento := saida.nustdocumento;
  setpadrao;
  setreferenciada;
  setinfnfe;
  setdestinatario;
  settotal;
  settransportadora;
  if nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vTotTrib > 0 then
  begin
    nfea.NotasFiscais.items[0].NFe.InfAdic.infCpl := 'Val Aprox Tributos '+
                                                     FormatarMoedaRs(nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vTotTrib)+
                                                     '('+FormatarMoeda(nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vTotTrib*100/nfea.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd)+'%) Fonte: IBPT';
  end;
  IF (nfea.NotasFiscais.items[0].NFe.InfAdic.infCpl <> '') and (saida.dsobservacao <> '') then
  begin
    nfea.NotasFiscais.items[0].NFe.InfAdic.infCpl := nfea.NotasFiscais.items[0].NFe.InfAdic.infCpl + #13;
  end;
  nfea.NotasFiscais.items[0].NFe.InfAdic.infCpl := nfea.NotasFiscais.items[0].NFe.InfAdic.infCpl + montarlinha(saida.dsobservacao);
  //
  setproduto;
  setduplicata;
  result := true;
end;

function TNFE.getTpregimetribuario: TpcnCRT;
begin
       if empresa.cdtpregimetributario = _0 then result := crtSimplesNacional
  else if empresa.cdtpregimetributario = _1 then result := crtSimplesExcessoReceita
  else //if empresa.cdtpregimetributario = _2 then
       result := crtRegimeNormal;
end;

procedure TNFE.Setprodutoimportacao(cditsaida: integer; i: integer);
var
  x : integer;
  municipio : tmunicipio;
  uf : tuf;
  y: Integer;
begin
  { TODO 2 -oPaulo -cRefatoracao : Reftorar esta classe, tela e tabela para ficar igual ao padrão do ACBR }
  saida.itsaida.Items[i].itsaidaimportacao.Ler(saida.itsaida.Items[i].cditsaida);
  for x := 0 to saida.itsaida.Items[i].itsaidaimportacao.Count - 1 do
  begin
    if x = 0 then
    begin
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.II.vBc               := saida.itsaida.Items[i].itsaidaimportacao.Items[x].vlbaseii;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.II.vDespAdu          := saida.itsaida.Items[i].itsaidaimportacao.Items[x].vldespesaaduaneira;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.II.vII               := saida.itsaida.Items[i].itsaidaimportacao.Items[x].vlii;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.II.vIOF              := saida.itsaida.Items[i].itsaidaimportacao.Items[x].vliof;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Add;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].nDi         := saida.itsaida.Items[i].itsaidaimportacao.Items[x].nudocimportacao;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].dDi         := saida.itsaida.Items[i].itsaidaimportacao.Items[x].dtdocimportacao;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].dDesemb     := saida.itsaida.Items[i].itsaidaimportacao.Items[x].dtdesembaraco;
      municipio := tmunicipio.create;
      uf := tuf.create;
      try
        municipio.Select(saida.itsaida.Items[i].itsaidaimportacao.Items[x].cdmunicipio);
        nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].xLocDesemb  := municipio.nmmunicipio;
        uf.Select(municipio.cduf);
        nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].UFDesemb    := uf.sguf;
      finally
        freeandnil(municipio);
        freeandnil(uf);
      end;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].cExportador := saida.itsaida.Items[i].itsaidaimportacao.Items[x].cdexportador;
    end;
    saida.itsaida.Items[i].itsaidaimportacao.Items[x].AdicaoImportacao.Ler(saida.itsaida.Items[i].itsaidaimportacao.Items[x].cditsaidaimportacao);
    for y := 0 to saida.itsaida.Items[i].itsaidaimportacao.Items[x].AdicaoImportacao.count -1 do
    begin
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].adi.Add;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].adi[y].nAdicao     := saida.itsaida.Items[i].itsaidaimportacao.Items[x].AdicaoImportacao.items[y].nuadicao;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].adi[y].nSeqAdi     := saida.itsaida.Items[i].itsaidaimportacao.Items[x].AdicaoImportacao.items[y].nusequencia;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].adi[y].cFabricante := saida.itsaida.Items[i].itsaidaimportacao.Items[x].AdicaoImportacao.items[y].cdfabricante;
      nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.DI.Items[0].adi[y].vDescDI     := saida.itsaida.Items[i].itsaidaimportacao.Items[x].AdicaoImportacao.items[y].vldesconto;
    end;
  end;
end;

procedure TNFE.SaidaReferenciadaCupom(i:integer);
var
  saidar : TSaida;
begin
  nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Add;
  saidar := tsaida.create;
  try
    saidar.select(saida.SaidaReferenciada.Items[i].cdsaidaorigem);
    saidar.tpsaida.select(saida.cdtpsaida);
    nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefECF.nECF := IntToStr(saidar.tpsaida.nucaixa);
  finally
    FreeAndNil(saidar);
  end;
  nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefECF.nCOO   := IntToStr(saida.SaidaReferenciada.Items[i].nudocumento);
  nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefECF.modelo := ECFModRef2D;
end;

procedure TNFE.SaidaReferenciadaNotaFiscalNaoNFE(i: integer);
var
  saidar : TSaida;
begin
  saidar := TSaida.create;
  try
    saidar.select(saida.SaidaReferenciada.Items[i].cdsaidaorigem);
    if saidar.nudocfiscalicms = _01 then
    begin
      if saidar.cdcliente <> 0 then
      begin
        saidar.cliente.select(saidar.cdcliente);
        nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.cUF := saidar.cliente.cduf;
        if saida.cliente.tppessoa = _J then
        begin
          nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.CNPJ := removercaracteres(saida.cliente.nucnpj);
        end;
      end
      else
      begin
        saidar.fornecedor.select(saidar.cdfornecedor);
        nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.cUF := saidar.fornecedor.cduf;
        if saida.fornecedor.tppessoa = _J then
        begin
          nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.CNPJ := removercaracteres(saida.fornecedor.nucnpj);
        end;
      end;
      nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.AAMM   := FormatDateTime(_yymm, saidar.dtemissao);
      nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.modelo := strtoint(saidar.nudocfiscalicms);
      saidar.serie.Select(saidar.cdserie);
      nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.serie  := StrToInt(saidar.serie.nuserie);
      nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.nNF    := saida.SaidaReferenciada.Items[i].nudocumento;
    end;
  finally
    FreeAndNil(saidar);
  end;
end;

procedure TNFE.SaidaRefenciadaCompraNaoNFE(i:integer);
var
  entradar : TEntrada;
begin
  entradar := Tentrada.create;
  try
    entradar.select(saida.SaidaReferenciada.Items[i].cdentradaorigem);
    if entradar.nudocfiscalicms = _01 then
    begin
      if entradar.cdcliente <> 0 then
      begin
        entradar.cliente.select(entradar.cdcliente);
        nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.cUF := entradar.cliente.cduf;
        if saida.cliente.tppessoa = _J then
        begin
          nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.CNPJ := removercaracteres(saida.cliente.nucnpj);
        end;
      end
      else
      begin
        entradar.fornecedor.select(entradar.cdfornecedor);
        nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.cUF := entradar.fornecedor.cduf;
        if saida.fornecedor.tppessoa = _J then
        begin
          nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.CNPJ := removercaracteres(saida.fornecedor.nucnpj);
        end;
      end;
      nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.AAMM   := FormatDateTime(_yymm, entradar.dtemissao);
      nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.modelo := Integer(entradar.nudocfiscalicms);
      nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.serie  := Integer(entradar.nuserie);
      nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].RefNF.nNF    := saida.saidareferenciada.Items[i].nudocumento;
    end;
  finally
    FreeAndNil(entradar);
  end;
end;

procedure TNFE.setreferenciada;
var
  i : integer;
begin
  saida.SaidaReferenciada.Ler(saida.cdsaida);
  for i := 0 to saida.SaidaReferenciada.Count - 1 do
  begin
    if saida.tpdevolucao = _c then
    begin
      SaidaReferenciadaCupom(i);
    end
    else
    begin
      nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Add;
      if saida.SaidaReferenciada.Items[i].nuchavenfe <> '' then
      begin
        nfea.NotasFiscais.Items[0].NFe.Ide.NFref.Items[i].refNFe := saida.SaidaReferenciada.Items[i].nuchavenfe;
      end
      else if saida.SaidaReferenciada.Items[i].cdsaidaorigem > 0 then
      begin
        SaidaReferenciadaNotaFiscalNaoNFE(i);
      end
      else if saida.SaidaReferenciada.Items[i].cdentradaorigem > 0 then
      begin
        SaidaRefenciadaCompraNaoNFE(i);
      end;
    end;
  end;
  if (nfea.NotasFiscais.Items[0].NFe.Ide.finNFe = fnDevolucao) and (saida.SaidaReferenciada.Count = 0) then
  begin
    MessageDlg('Para a nota fiscal de devolução deve haver uma alguma nota fiscal referenciada.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

constructor TNFE.create;
begin
  inherited create;
  saida := tsaida.create;
end;

destructor TNFE.destroy;
begin
  FreeAndNil(saida);
  inherited destroy;
end;

function TNFE.getindiedest(codigo: Integer): TpcnindIEDest;
begin
  case codigo of
    1 : result := inContribuinte;
    2 : result := inIsento;
    //3 : result := inNaoContribuinte;
    else result := inNaoContribuinte;
  end;
end;

procedure TNFe.setCliente;
begin
  if saida.cliente.cdsuframa <> 0 then
  begin
    nfea.NotasFiscais.items[0].NFe.Dest.ISUF := IntToStr(saida.cliente.cdsuframa);
  end;
  if saida.cliente.boicms = _s then
  begin
    isencaoicms := UpperCase(_ISENTO);
  end;
  if removercaracteres(saida.cliente.nucep) = ''then
  begin
    MessageDlg('CEP do destinatário não está preenchido.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if RemoverEspacosVazios(saida.cliente.dsnumero) = '' then
  begin
    MessageDlg('Número do Endereço do destinatário não está preenchido.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if RemoverEspacosVazios(saida.cliente.dsendereco) = '' then
  begin
    MessageDlg('Endereço do destinatário não está preenchido.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if qregistro.Stringdocodigo(_uf, saida.cliente.cduf, _sguf) <> 'EX' then
  begin
    if saida.cliente.tppessoa = _J then
    begin
      if removercaracteres(saida.cliente.nucnpj) = '' then
      begin
        MessageDlg('Para emissão de Nota Fiscal é obrigatório o preenchimento do cnpj.', mtInformation, [mbOK], 0);
        Abort;
      end;
      nfea.NotasFiscais.items[0].NFe.Dest.CNPJCPF := removercaracteres(saida.cliente.nucnpj);
    end
    else
    begin
      if removercaracteres(saida.cliente.nucpf) = '' then
      begin
        MessageDlg('Para emissão de Nota Fiscal é obrigatório o preenchimento do cpf.', mtInformation, [mbOK], 0);
        Abort;
      end;
      nfea.NotasFiscais.items[0].NFe.Dest.CNPJCPF := removercaracteres(saida.cliente.nucpf);
    end;
  end;
  nfea.NotasFiscais.items[0].NFe.Dest.xNome             := Copy(saida.cliente.rzsocial, 1, 60);
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xLgr    := saida.cliente.dsendereco;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.nro     := saida.cliente.dsnumero;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xCpl    := saida.cliente.dscomplemento;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xBairro := saida.cliente.nmbairro;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.cMun    := saida.cliente.cdmunicipio;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xMun    := Maiuscula(qregistro.nomedocodigo(_municipio, saida.cliente.cdmunicipio));
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.UF      := qregistro.Stringdocodigo(_uf, saida.cliente.cduf, _sguf);
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.CEP     := strtoint(removercaracteres(saida.cliente.nucep));
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.cPais   := saida.cliente.cdpais;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xPais   := qregistro.nomedocodigo(_pais, saida.cliente.cdpais);
  if Length(removercaracteres(saida.cliente.nufone1)) <> 0 then
  begin
    if qregistro.booleandocodigo(_uf, saida.cliente.cduf, _bodigito9) and (Length(removercaracteres(saida.cliente.nufone1)) <> 11) then
    begin
      MessageDlg('Número do Telefone do destinatário deve ter o dígito 9.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (not qregistro.booleandocodigo(_uf, saida.cliente.cduf, _bodigito9)) and (Length(removercaracteres(saida.cliente.nufone1)) <> 10) then
    begin
      MessageDlg('Número do Telefone do destinatário não deve ter o dígito 9.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  {
  if (not ((saida.cliente.tppessoa = _F) and (saida.cliente.nuinscest = ''))) and
     (ValidarIE(saida.cliente.nuinscest, saida.cliente.uf.sguf) <> '') then
  begin
    MessageDlg('Número da Inscrição Estadual inválida do destinatário.'#13'Altere o cadastro antes de continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  }
  nfea.NotasFiscais.items[0].NFe.Dest.indIEDest := getindiedest(saida.cliente.cdindiedest);
  if saida.cliente.nuinscest <> UpperCase(_isento) then
  begin
    nfea.NotasFiscais.items[0].NFe.Dest.IE := removercaracteres(saida.cliente.nuinscest);
  end
  else
  begin
    nfea.NotasFiscais.items[0].NFe.Dest.IE := saida.cliente.nuinscest;
  end;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.fone := removercaracteres(saida.cliente.nufone1);
  nfea.NotasFiscais.Items[0].NFe.Ide.idDest          := getIddest;
end;

procedure TNFe.setFornecedor;
begin
  if removercaracteres(saida.fornecedor.nucep) = ''then
  begin
    MessageDlg('CEP do destinatário não está preenchido.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if RemoverEspacosVazios(saida.fornecedor.dsnumero) = '' then
  begin
    MessageDlg('Número do Endereço do destinatário não está preenchido.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if RemoverEspacosVazios(saida.fornecedor.dsendereco) = '' then
  begin
    MessageDlg('Endereço do destinatário não está preenchido.', mtInformation, [mbOK], 0);
    Abort;
  end;
  saida.fornecedor.uf.Select(saida.fornecedor.cduf);
  if saida.fornecedor.uf.sguf <> 'EX' then
  begin
    if saida.fornecedor.tppessoa = _J then
    begin
      if removercaracteres(saida.fornecedor.nucnpj) = '' then
      begin
        MessageDlg('Para emissão de Nota Fiscal é obrigatório o preenchimento do cnpj.', mtInformation, [mbOK], 0);
        Abort;
      end;
      nfea.NotasFiscais.items[0].NFe.Dest.CNPJCPF := removercaracteres(saida.fornecedor.nucnpj);
    end
    else
    begin
      if removercaracteres(saida.fornecedor.nucpf) = '' then
      begin
        MessageDlg('Para emissão de Nota Fiscal é obrigatório o preenchimento do cpf.', mtInformation, [mbOK], 0);
        Abort;
      end;
      nfea.NotasFiscais.items[0].NFe.Dest.CNPJCPF := removercaracteres(saida.fornecedor.nucpf);
    end;
  end;
  nfea.NotasFiscais.items[0].NFe.Dest.xNome             := Copy(saida.fornecedor.rzsocial, 1, 60);
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xLgr    := saida.fornecedor.dsendereco;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.nro     := saida.fornecedor.dsnumero;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xCpl    := saida.fornecedor.dscomplemento;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xBairro := saida.fornecedor.nmbairro;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.cMun    := saida.fornecedor.cdmunicipio;
  saida.fornecedor.municipio.Select(saida.fornecedor.cdmunicipio);
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xMun    := Maiuscula(saida.fornecedor.municipio.nmmunicipio);
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.UF      := saida.fornecedor.uf.sguf;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.CEP     := strtoint(removercaracteres(saida.fornecedor.nucep));
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.cPais   := saida.fornecedor.cdpais;
  saida.fornecedor.pais.Select(saida.fornecedor.cdpais);
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.xPais   := saida.fornecedor.pais.nmpais;
  if Length(removercaracteres(saida.fornecedor.nufone1)) <> 0 then
  begin
    if (saida.fornecedor.uf.bodigito9 = _s) and (Length(removercaracteres(saida.fornecedor.nufone1)) <> 11) then
    begin
      MessageDlg('Número do Telefone do destinatário deve ter o dígito 9.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if (saida.fornecedor.uf.bodigito9 <> _s) and (Length(removercaracteres(saida.fornecedor.nufone1)) <> 10) then
    begin
      MessageDlg('Número do Telefone do destinatário não deve ter o dígito 9.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  if (not ((saida.fornecedor.tppessoa = _F) and (saida.fornecedor.nuinscest = ''))) and (ValidarIE(saida.fornecedor.nuinscest, saida.fornecedor.uf.sguf) <> '') then
  begin
    MessageDlg('Número da Inscrição Estadual inválida do destinatário.'#13'Altere o cadastro antes de continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
  nfea.NotasFiscais.items[0].NFe.Dest.indIEDest := getindiedest(saida.fornecedor.cdindiedest);
  if saida.fornecedor.nuinscest <> UpperCase(_isento) then
  begin
    nfea.NotasFiscais.items[0].NFe.Dest.IE := removercaracteres(saida.fornecedor.nuinscest);
  end
  else
  begin
    nfea.NotasFiscais.items[0].NFe.Dest.IE := saida.fornecedor.nuinscest;
  end;
  nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.fone := removercaracteres(saida.fornecedor.nufone1);
  nfea.NotasFiscais.Items[0].NFe.Ide.idDest          := getIddest;
end;

function TNFE.getIddest:TpcnDestinoOperacao;
begin
  if nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.UF = empresa.endereco.sguf then
  begin
    result := doInterna
  end
  else if nfea.NotasFiscais.items[0].NFe.Dest.EnderDest.UF = 'EX' then
  begin
    result := doExterior
  end
  else
  begin
    result := doInterestadual;
  end;
end;

procedure TNFE.setprodutoicmsdest(i: integer);
  { TODO -oPaulo -cDifal : Criar uma tabela de data para a % de dfial quando o mudar o ano }
  { TODO -oPaulo -cDifal : Alterar no código a % da difal porque hoje está fixa no código }
  { TODO -oPaulo -cDifal :
Calcular o tamanho da descrição da difal na informação adicional
do item }
   { TODO -oPaulo -cErro :
Erro: Ao retirar a outras despesas não mudou a base de calculo do icms,
aconteceu com o banco da formare na última nota }
    { TODO -oPaulo -cErro :
Ao consultar a nota mudar a mensagem para algo mais claro do que
simplesmente trazer o xml da nota }
  function getDescricaoDifal:string;
  begin
    result := ' DIFAL EC 87/2015 - '+
              'BC DIFAL='+getmoeda(saida.itsaida.Items[i].vlbasedifal)+ ' '+
              'FCP='+getfloats(saida.itsaida.Items[i].pFCPUFDest)+'%('+
              getmoeda(saida.itsaida.Items[i].vFCPUFDest)+') '+
              'Valor DIFAL='+getmoeda(saida.itsaida.Items[i].vldifal)+' '+
              '40%UF Origem='+getmoeda(saida.itsaida.Items[i].vICMSUFRemet)+' '+
              '60%UF Destino='+getmoeda(saida.itsaida.Items[i].vICMSUFDest)+' ';
  end;
begin
{
Passo 1 - calcular a base de cálculo do ICMS
Base do ICMS = Valor do produto + Frete + Outras Despesas Acessórias - Descontos + IPI
Base do ICMS = 1.000,00 + 0,00 + 0,00 - 0,00 + 50,00
Base do ICMS = 1.050,00

Passo 2 - calcular o Fundo de Combate à Pobreza
FCP = Base do ICMS * (%FCP / 100)
FCP = 1.050,00 * (2,00% / 100)
FCP = 1.050,00 * 0,02
FCP = 21,00

Passo 3 - calcular o DIFAL
DIFAL = Base do ICMS * ((%Alíquota do ICMS Intra - %Alíquota do ICMS Inter) / 100)
DIFAL = 1.050,00 * ((18,00% - 12,00%) / 100)
DIFAL = 1.050,00 * (6,00% / 100)
DIFAL = 1.050,00 * 0,06
DIFAL = 63,00

Passo 4 - efetuar a partilha do DIFAL
Parte que compete a MG - estado de origem:
Parte UF Origem = Valor do DIFAL * (%Origem / 100)
Parte MG = 63,00 * (60,00% / 100)
Parte MG = 63,00 * 0,60
Parte MG = 37,80

Parte que compete a SE - estado de destino:
Parte UF Destino = Valor do DIFAL * (%Destino / 100)
Parte SE = 63,00 * (40,00% / 100)
Parte SE = 63,00 * 0,40
Parte SE = 25,20

Se somarmos o FCP:
Parte SE = 25,20 + Valor FCP
Parte SE = 25,20 + 21,00
Parte SE = 46,20

Dica: a versão 1.60 da Nota Técnica 2015/003 passou a indicar que o valor do FCP
      não deve ser somado no total da parte que compete ao estado de destino no
      XML da NF-e, mas mesmo assim este valor deve ser considerado ao efetuar o recolhimento.

Preenchimento do arquivo XML da NF-e conforme o exemplo

ICMSUFDest - Grupo de Tributação do ICMS para a UF de destino
Tag	Valor	Descrição
vBCUFDest	1.050,00	Valor da BC do ICMS na UF de destino
pFCPUFDest	2,00	Percentual do ICMS relativo ao Fundo de Combate à Pobreza (FCP) na UF de destino
pICMSUFDest	18,00	Alíquota interna da UF de destino
pICMSInter	12,00	Alíquota interestadual das UF envolvidas
pICMSInterPart	40,00	Percentual provisório de partilha do ICMS Interestadual
vFCPUFDest	21,00	Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino
vICMSUFDest	25,20	Valor do ICMS Interestadual para a UF de destino
vICMSUFRemet	37,80	Valor do ICMS Interestadual para a UF do remetente

CMSTot - Total da Nota Fiscal
Tag	Valor	Descrição
vFCPUFDest	21,00	Valor total do ICMS relativo Fundo de Combate à Pobreza (FCP) da UF de destino
vICMSUFDest	25,20	Valor total do ICMS Interestadual para a UF de destino
vICMSUFRemet	37,80	Valor total do ICMS Interestadual para a UF do remetente

vBCUFDest	1.050,00	Valor da BC do ICMS na UF de destino
pFCPUFDest	2,00	Percentual do ICMS relativo ao Fundo de Combate à Pobreza (FCP) na UF de destino
pICMSUFDest	18,00	Alíquota interna da UF de destino
pICMSInter	12,00	Alíquota interestadual das UF envolvidas
pICMSInterPart	40,00	Percentual provisório de partilha do ICMS Interestadual
vFCPUFDest	21,00	Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino
vICMSUFDest	25,20	Valor do ICMS Interestadual para a UF de destino
vICMSUFRemet	37,80	Valor do ICMS Interestadual para a UF do remetente
}
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMSUFDest.vBCUFDest      := saida.itsaida.Items[i].vlbasedifal;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMSUFDest.pFCPUFDest     := saida.itsaida.Items[i].pFCPUFDest;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMSUFDest.pICMSUFDest    := saida.itsaida.Items[i].pICMSUFDest;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMSUFDest.pICMSInter     := saida.itsaida.Items[i].alicms;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMSUFDest.pICMSInterPart := saida.itsaida.Items[i].pICMSInterPart;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMSUFDest.vFCPUFDest     := saida.itsaida.Items[i].vFCPUFDest;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMSUFDest.vICMSUFDest    := saida.itsaida.Items[i].vICMSUFDest;
  nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMSUFDest.vICMSUFRemet   := saida.itsaida.Items[i].vICMSUFRemet;

  if saida.itsaida.Items[i].vlbasedifal > 0 then
  begin
    nfea.NotasFiscais.Items[0].NFe.Det.Items[i].infAdProd := nfea.NotasFiscais.Items[0].NFe.Det.Items[i].infAdProd + getDescricaoDifal;
  end;

  //nfea.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMSUFDest.pICMSInter := 12;
{
<ICMSUFDest>
   <vBCUFDest>1000.00</vBCUFDest>
   <pFCPUFDest>0.00</pFCPUFDest>
   <pICMSUFDest>17.00</pICMSUFDest>
   <pICMSInter>12.00</pICMSInter>
   <pICMSInterPart>40.00</pICMSInterPart>
   <vFCPUFDest>0.00</vFCPUFDest>
   <vICMSUFDest>20.00</vICMSUFDest>
   <vICMSUFRemet>30.00</vICMSUFRemet>
</ICMSUFDest>
}
end;

end.
