{$I ACBr.inc}
unit classeACBR;

interface

uses
  System.Actions, System.UITypes, system.inifiles,
  Forms, Controls, Classes, SysUtils, dialogs,
  DateUtils,
  pcnConversao, ACBrEPCBlocos, ACBrNFe, ACBrDFeSSL, ACBrMail, pcnConversaoNFe,
  ustrings, uconstantes, uRegistro,
  classeaplicacao, classeretornasql, classeempresa, classequery, classeemail;

type
  TProxy = record
    host : string;
    porta : string;
    user : string;
    pass : string;
  end;
  TWebService = record
    uf : string;
    Ambiente : TpcnTipoAmbiente;
    bovisualizar : boolean;
  end;
  TGeral = record
    formaemissao : string;
    dscontingencia : string;
    boexibirtottribitem : boolean;
    bosalvar : boolean;
    pathsalvar : string;
  end;
  TCertificado = record
    senha : string;
    caminho : string;
    numeroserie : string;
    SSLLib : TSSLLib;
  end;
  TAcbr = class(TObject)
  private
  public
    ACBrMail : TACBrMail;
    proxy : TProxy;
    webservice : twebservice;
    geral : TGeral;
    certificado : tcertificado;
    nuserie, nunota : integer;
    nuchavenfe: string;
    cdemitente : string;
    cddestinatario : string;
    dsxml : string;
    rzsocialemitente : string;
    rzsocialdestinatario : string;
    psliquido, psbruto : Double;
    vltotal : Currency;
    vlfrete : Currency;
    dtemissao  : TDateTime;
    email : TEmail_;
    constructor Create;
    destructor destroy; override;
    procedure LerConfiguracao;
    procedure ImprimirBanco(tbl, codigo:string);
    procedure LoadNFE(filename:string);
    class function convertercsticms(CST: TpcnCSTIcms  ):string;
    class function convertercstipi(CST: TpcnCSTIpi):string;
    class function convertercstpis(CST: TpcnCSTPis):string;
    class function convertercstcofins(CST: TpcnCSTCofins):string;
    function get_cdcliente(cnpjcpf:string):string;
    function GetCofinsCST(nustcofins: string): TpcnCstCofins;
    function GetCstCofins(nustcofins:string):TACBrSituacaoTribCOFINS;
    function GetCstICMS(nusticms:string):TACBrSituacaoTribICMS;
    function GetCstIPI(nustipi:string):TACBrSituacaoTribIPI;
    function GetTpEscrituracao(cdtpescrituracao:string):TACBrTipoEscrituracao;
    function getindicadoratividade(cdindicadoratividade:string):TACBrIndicadorAtividade;
    function getindicadorincidencia(cdindicadorincidencia:string):TACBrCodIndIncTributaria;
    function GetIndicadorApropriacao(cdindicadorapropriacao:string):TACBrIndAproCred;
    function GetIndicadorSituacaoEspecial(cdindicadorsituacaoespecial:string):TACBrIndicadorSituacaoEspecial;
    function GetIndicadorPessoaJuridica(cdindicadorpessoajuridica:string):TACBrIndicadorNaturezaPJ;
    function GetIndicadorContribuicao(cdindicadorcontribuicao:string):TACBrCodIndTipoCon;
    function getInd_reg_cum(cdind_reg_cum:string):TACBrCodIndCritEscrit;
    function getcstpis(nustpis:string):TACBrSituacaoTribPIS;
    function GetPisCST(nustpis:string):TpcnCstPis;
    function GetIPICST(nustipi: string): TpcnCstIpi;
    function GetBaseCalculoCredito(cdbccalculocredito:string):TACBrBaseCalculoCredito;
    function GetICMSCST(nusticms: string): TpcnCSTIcms;
    function getind_pagto(tbl, codigo:string; dtemissao:TDate):TACBrTipoPagamento;
    function GetCSOSNIcms(nusticms: string): TpcnCSOSNIcms;
    function GetOrigem(nuorigem: string): TpcnOrigemMercadoria;
    function GetModBCSt(numodbcst: integer): TpcnDeterminacaoBaseIcmsST;
    function getModBC(numodbc: integer): TpcnDeterminacaoBaseIcms;
    function getstdocumento(nustdocumento:string):TACBrCodSit;
    function GetStDocumentocte(nustdocumento:string):TACBrSituacaoDF;
    function GetTpFrete(cdtpfrete:string):TACBrTipoFrete;
    function GetTpItem(cdtpitem:string):TACBrTipoItem;
    function GetCodCont(cdCodCont: string): TACBrCodCont;
    class function SetModBC(modbc: TpcnDeterminacaoBaseIcms): integer;
    function SetModBCSt(modBCST: TpcnDeterminacaoBaseIcmsST; i: Integer): string;
    function SetOrigem(orig: TpcnOrigemMercadoria; i: Integer): string;
    function getIndPress(cdindpres:string):TpcnPresencaComprador;
    class function ConverterTpfrete(modFrete:TpcnModalidadeFrete):string;
    class function getNFEFinalidade(cdnfefinalidade:Integer):TpcnFinalidadeNFe;
    class function getcdindpres(indPres: TpcnPresencaComprador): String;
    class function getcdnfefinalidade(finNFe: TpcnFinalidadeNFe): Integer; static;
    class function SetModFrete(cdtpfrete: string): TpcnModalidadeFrete; static;
  end;

var
  ACBR : TACBR;

implementation

uses pcnNFe, pcnProcNFe, unfereport;

class function TAcbr.convertercstcofins(CST: TpcnCSTCofins):string;
begin
  case CST of
    cof01: result := _01;
    cof02: result := _02;
    cof03: result := _03;
    cof04: result := _04;
    cof05: result := _05;
    cof06: result := _06;
    cof07: result := _07;
    cof08: result := _08;
    cof09: result := _09;
    cof49: result := _49;
    cof50: result := _50;
    cof51: result := _51;
    cof52: result := _52;
    cof53: result := _53;
    cof54: result := _54;
    cof55: result := _55;
    cof56: result := _56;
    cof60: result := _60;
    cof61: result := _61;
    cof62: result := _62;
    cof63: result := _63;
    cof64: result := _64;
    cof65: result := _65;
    cof66: result := _66;
    cof67: result := _67;
    cof70: result := _70;
    cof71: result := _71;
    cof72: result := _72;
    cof73: result := _73;
    cof74: result := _74;
    cof75: result := _75;
    cof98: result := _98;
    cof99: result := _99;
  end;
end;

class function TAcbr.convertercstpis(CST: TpcnCSTPis):string;
begin
  case CST of
    pis01: result := _01;
    pis02: result := _02;
    pis03: result := _03;
    pis04: result := _04;
    pis05: result := _05;
    pis06: result := _06;
    pis07: result := _07;
    pis08: result := _08;
    pis09: result := _09;
    pis49: result := _49;
    pis50: result := _50;
    pis51: result := _51;
    pis52: result := _52;
    pis53: result := _53;
    pis54: result := _54;
    pis55: result := _55;
    pis56: result := _56;
    pis60: result := _60;
    pis61: result := _61;
    pis62: result := _62;
    pis63: result := _63;
    pis64: result := _64;
    pis65: result := _65;
    pis66: result := _66;
    pis67: result := _67;
    pis70: result := _70;
    pis71: result := _71;
    pis72: result := _72;
    pis73: result := _73;
    pis74: result := _74;
    pis75: result := _75;
    pis98: result := _98;
    pis99: result := _99;
  end;
end;

class function TAcbr.convertercstipi(CST: TpcnCSTIpi):string;
begin
  case CST of
    ipi00: result := _00;
    ipi01: result := _01;
    ipi02: result := _02;
    ipi03: result := _03;
    ipi04: result := _04;
    ipi05: result := _05;
    ipi49: result := _49;
    ipi50: result := _50;
    ipi51: result := _51;
    ipi52: result := _52;
    ipi53: result := _53;
    ipi54: result := _54;
    ipi55: result := _55;
    ipi99: result := _99;
  end;
end;

class function TAcbr.convertercsticms(CST: TpcnCSTIcms):string;
begin
  case CST of
    cst00: result := _00;
    cst10: result := _10;
    cst20: result := _20;
    cst30: result := _30;
    cst40: result := _40;
    cst41: result := _41;
    cst45: result := _45;
    cst50: result := _50;
    cst51: result := _51;
    cst60: result := _60;
    cst70: result := _70;
    cst80: result := _80;
    cst81: result := _81;
    cst90: result := _90;
  end;
  { cstPart10, cstPart90, cstRep41, cstVazio, cstICMSOutraUF, cstICMSSN); //80 e 81 apenas para CTe }
end;

function TAcbr.SetOrigem(orig: TpcnOrigemMercadoria; i: Integer): string;
begin
       if orig = oeNacional                    then result := _0
  else if orig = oeEstrangeiraImportacaoDireta then result := _1
  else if orig = oeEstrangeiraAdquiridaBrasil  then result := _2;
end;

class function TAcbr.SetModBC(modbc: TpcnDeterminacaoBaseIcms): integer;
begin
       if modBC = dbiMargemValorAgregado then result := 0
  else if modBC = dbiPauta               then result := 1
  else if modBC = dbiPrecoTabelado       then result := 2
  else
    //if modBC = dbiValorOperacao       then
    result := 3;
end;

function TAcbr.SetModBCSt(modBCST: TpcnDeterminacaoBaseIcmsST; i: Integer): string;
begin
       if modBCST = dbisPrecoTabelado       then result := _0
  else if modBCST = dbisListaNegativa       then result := _1
  else if modBCST = dbisListaPositiva       then result := _2
  else if modBCST = dbisListaNeutra         then result := _3
  else if modBCST = dbisMargemValorAgregado then result := _4
  else if modBCST = dbisPauta               then result := _5;
end;

function TAcbr.getModBC(numodbc: integer): TpcnDeterminacaoBaseIcms;
begin
       if numodbc = 0 then result := dbiMargemValorAgregado
  else if numodbc = 1 then result := dbiPauta
  else if numodbc = 2 then result := dbiPrecoTabelado
  //else if numodbc = 3 then result := dbiValorOperacao;
  else result := dbiValorOperacao;
end;

function TAcbr.GetModBCSt(numodbcst: integer): TpcnDeterminacaoBaseIcmsST;
begin
       if numodbcst = 0 then result := dbisPrecoTabelado
  else if numodbcst = 1 then result := dbisListaNegativa
  else if numodbcst = 2 then result := dbisListaPositiva
  else if numodbcst = 3 then result := dbisListaNeutra
  else if numodbcst = 4 then Result := dbisMargemValorAgregado
  //else if numodbcst = 5 then result := dbisPauta;
  else result := dbisPauta;
end;

class function TAcbr.getcdnfefinalidade(finNFe: TpcnFinalidadeNFe):Integer;
begin
  case finNFe of
    fnNormal       : result := 1;
    fnComplementar : result := 2;
    fnAjuste       : result := 3;
    fnDevolucao    : result := 4;
  end;
end;

class function TAcbr.getNFEFinalidade(cdnfefinalidade: Integer): TpcnFinalidadeNFe;
begin
  case cdnfefinalidade of
    1 : result := fnNormal;
    2 : result := fnComplementar;
    3 : result := fnAjuste;
    4 : result := fnDevolucao;
  end;
end;

function TAcbr.GetOrigem(nuorigem: string): TpcnOrigemMercadoria;
begin
       if nuorigem = _1 then result := oeEstrangeiraImportacaoDireta
  else if nuorigem = _2 then result := oeEstrangeiraAdquiridaBrasil
  else if nuorigem = _3 then result := oeNacionalConteudoImportacaoSuperior40
  else if nuorigem = _4 then result := oeNacionalProcessosBasicos
  else if nuorigem = _5 then result := oeNacionalConteudoImportacaoInferiorIgual40
  else if nuorigem = _6 then result := oeEstrangeiraImportacaoDiretaSemSimilar
  else if nuorigem = _7 then result := oeEstrangeiraAdquiridaBrasilSemSimilar
  else if nuorigem = _8 then result := oeNacionalConteudoImportacaoSuperior70
  else //if nuorigem = _0 then
    result := oeNacional
end;

function TAcbr.GetICMSCST(nusticms: string): TpcnCSTIcms;
begin
       if nusticms = _00 then result := cst00
  else if nusticms = _10 then result := cst10
  else if nusticms = _20 then result := cst20
  else if nusticms = _30 then result := cst30
  else if nusticms = _40 then result := cst40
  else if nusticms = _41 then result := cst41
  else if nusticms = _45 then result := cst45
  else if nusticms = _50 then result := cst50
  else if nusticms = _51 then result := cst51
  else if nusticms = _60 then result := cst60
  else if nusticms = _70 then result := cst70
  else if nusticms = _80 then result := cst80
  else if nusticms = _81 then result := cst81
  else {if nusticms = _90 then} result := cst90;
end;

function TAcbr.GetCSOSNIcms(nusticms: string): TpcnCSOSNIcms;
begin
       if nusticms = _101 then result := csosn101
  else if nusticms = _102 then result := csosn102
  else if nusticms = _103 then result := csosn103
  else if nusticms = _201 then result := csosn201
  else if nusticms = _202 then result := csosn202
  else if nusticms = _203 then result := csosn203
  else if nusticms = _300 then result := csosn300
  else if nusticms = _400 then result := csosn400
  else if nusticms = _500 then result := csosn500
  else if nusticms = _900 then result := csosn900
  else result := csosnVazio;
end;

function TAcbr.GetIPICST(nustipi: string): TpcnCstIpi;
begin
       if nustipi = _00 then result := ipi00
  else if nustipi = _01 then result := ipi01
  else if nustipi = _02 then result := ipi02
  else if nustipi = _03 then result := ipi03
  else if nustipi = _04 then result := ipi04
  else if nustipi = _05 then result := ipi05
  else if nustipi = _49 then result := ipi49
  else if nustipi = _50 then result := ipi50
  else if nustipi = _51 then result := ipi51
  else if nustipi = _52 then result := ipi52
  else if nustipi = _53 then result := ipi53
  else if nustipi = _54 then result := ipi54
  else if nustipi = _55 then result := ipi55
  else {if nustipi = _99 then} result := ipi99;
end;

function TAcbr.GetPisCST(nustpis:string):TpcnCstPis;
begin
       if nustpis = _01 then result := pis01
  else if nustpis = _02 then result := pis02
  else if nustpis = _03 then result := pis03
  else if nustpis = _04 then result := pis04
  else if nustpis = _05 then result := pis05
  else if nustpis = _06 then result := pis06
  else if nustpis = _07 then result := pis07
  else if nustpis = _08 then result := pis08
  else if nustpis = _09 then result := pis09
  else if nustpis = _49 then result := pis49
  else if nustpis = _50 then result := pis50
  else if nustpis = _51 then result := pis51
  else if nustpis = _52 then result := pis52
  else if nustpis = _53 then result := pis53
  else if nustpis = _54 then result := pis54
  else if nustpis = _55 then result := pis55
  else if nustpis = _56 then result := pis56
  else if nustpis = _60 then result := pis60
  else if nustpis = _61 then result := pis61
  else if nustpis = _62 then result := pis62
  else if nustpis = _63 then result := pis63
  else if nustpis = _64 then result := pis64
  else if nustpis = _65 then result := pis65
  else if nustpis = _66 then result := pis66
  else if nustpis = _67 then result := pis67
  else if nustpis = _70 then result := pis70
  else if nustpis = _71 then result := pis71
  else if nustpis = _72 then result := pis72
  else if nustpis = _73 then result := pis73
  else if nustpis = _74 then result := pis74
  else if nustpis = _75 then result := pis75
  else if nustpis = _98 then result := pis98
  else {if nustpis = _99 then} result := pis99;
end;

function TAcbr.getcstpis(nustpis:string):TACBrSituacaoTribPIS;
begin
       if nustpis = _01 then result := stpisValorAliquotaNormal
  else if nustpis = _02 then result := stpisValorAliquotaDiferenciada
  else if nustpis = _03 then result := stpisQtdeAliquotaUnidade
  else if nustpis = _04 then result := stpisMonofaticaAliquotaZero
  else if nustpis = _05 then result := stpisValorAliquotaPorST
  else if nustpis = _06 then result := stpisAliquotaZero
  else if nustpis = _07 then result := stpisIsentaContribuicao
  else if nustpis = _08 then result := stpisSemIncidenciaContribuicao
  else if nustpis = _09 then result := stpisSuspensaoContribuicao
  else if nustpis = _49 then result := stpisOutrasOperacoesSaida
  else if nustpis = _50 then result := stpisOperCredExcRecTribMercInt
  else if nustpis = _51 then result := stpisOperCredExcRecNaoTribMercInt
  else if nustpis = _52 then result := stpisOperCredExcRecExportacao
  else if nustpis = _53 then result := stpisOperCredRecTribNaoTribMercInt
  else if nustpis = _54 then result := stpisOperCredRecTribMercIntEExportacao
  else if nustpis = _55 then result := stpisOperCredRecNaoTribMercIntEExportacao
  else if nustpis = _56 then result := stpisOperCredRecTribENaoTribMercIntEExportacao
  else if nustpis = _60 then result := stpisCredPresAquiExcRecTribMercInt
  else if nustpis = _61 then result := stpisCredPresAquiExcRecNaoTribMercInt
  else if nustpis = _62 then result := stpisCredPresAquiExcExcRecExportacao
  else if nustpis = _63 then result := stpisCredPresAquiRecTribNaoTribMercInt
  else if nustpis = _64 then result := stpisCredPresAquiRecTribMercIntEExportacao
  else if nustpis = _65 then result := stpisCredPresAquiRecNaoTribMercIntEExportacao
  else if nustpis = _66 then result := stpisCredPresAquiRecTribENaoTribMercIntEExportacao
  else if nustpis = _67 then result := stpisOutrasOperacoes_CredPresumido
  else if nustpis = _70 then result := stpisOperAquiSemDirCredito
  else if nustpis = _71 then result := stpisOperAquiComIsensao
  else if nustpis = _72 then result := stpisOperAquiComSuspensao
  else if nustpis = _73 then result := stpisOperAquiAliquotaZero
  else if nustpis = _74 then result := stpisOperAqui_SemIncidenciaContribuicao
  else if nustpis = _75 then result := stpisOperAquiPorST
  else if nustpis = _98 then result := stpisOutrasOperacoesEntrada
  else {if nustpis = _99 then } result := stpisOutrasOperacoes;
end;

function TAcbr.GetCofinsCST(nustcofins: string): TpcnCstCofins;
begin
       if nustcofins = _01 then result := cof01
  else if nustcofins = _02 then result := cof02
  else if nustcofins = _03 then result := cof03
  else if nustcofins = _04 then result := cof04
  else if nustcofins = _05 then result := cof05
  else if nustcofins = _06 then result := cof06
  else if nustcofins = _07 then result := cof07
  else if nustcofins = _08 then result := cof08
  else if nustcofins = _09 then result := cof09
  else if nustcofins = _49 then result := cof49
  else if nustcofins = _50 then result := cof50
  else if nustcofins = _51 then result := cof51
  else if nustcofins = _52 then result := cof52
  else if nustcofins = _53 then result := cof53
  else if nustcofins = _54 then result := cof54
  else if nustcofins = _55 then result := cof55
  else if nustcofins = _56 then result := cof56
  else if nustcofins = _60 then result := cof60
  else if nustcofins = _61 then result := cof61
  else if nustcofins = _62 then result := cof62
  else if nustcofins = _63 then result := cof63
  else if nustcofins = _64 then result := cof64
  else if nustcofins = _65 then result := cof65
  else if nustcofins = _66 then result := cof66
  else if nustcofins = _67 then result := cof67
  else if nustcofins = _70 then result := cof70
  else if nustcofins = _71 then result := cof71
  else if nustcofins = _72 then result := cof72
  else if nustcofins = _73 then result := cof73
  else if nustcofins = _74 then result := cof74
  else if nustcofins = _75 then result := cof75
  else if nustcofins = _98 then result := cof98
  else {if nustcofins = _99 then }result := cof99;
end;

class function TAcbr.SetModFrete(cdtpfrete:string):TpcnModalidadeFrete;
begin
       if cdtpfrete = _0 then result := mfContaEmitente
  else if cdtpfrete = _1 then result := mfContaDestinatario
  else if cdtpfrete = _2 then result := mfContaTerceiros
  else if cdtpfrete = _9 then result := mfSemFrete;
end;

class function TAcbr.ConverterTpfrete(modFrete: TpcnModalidadeFrete): string;
begin
       if modFrete = mfContaEmitente then result := _0
  else if modFrete = mfContaDestinatario then result := _1
  else if modFrete = mfContaTerceiros then result := _2
{ TODO -oACBR -cImportarXML : Verificar o tipo de frete: mfProprioRemetente e mfProprioDestinatario porque não tem no manual }
  else if modfrete = mfProprioRemetente then result := _9
  else if modfrete = mfProprioDestinatario then result := _9
  else if modfrete = mfSemFrete then result := _9;
end;

constructor TAcbr.Create;
begin
  inherited;
  Acbrmail := tacbrmail.create(nil);
  email := temail_.Create;
end;

destructor TAcbr.destroy;
begin
  freeandnil(acbrmail);
  freeandnil(email);
  inherited;
end;

procedure TAcbr.LerConfiguracao;
Var
  IniFile: String;
  Ini: TIniFile;
  Ok: Boolean;
  msg : tstrings;
  StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt(Application.ExeName, '.'+_ini);
  Ini     := TIniFile.Create(IniFile);
  msg     := tstringlist.create;
  StreamMemo := TMemoryStream.Create;
  try
    certificado.senha := Ini.ReadString( 'Certificado','Senha'   ,'');
    //{$IFDEF DFE_SEM_CAPICOM}
      //Certificado.caminho := Ini.ReadString( 'Certificado','Caminho' ,'');
      //Certificado.SSLLib  := libOpenSSL;
  //{$ELSE}
      Certificado.NumeroSerie := Ini.ReadString( 'Certificado','NumSerie','');
      //Certificado.SSLLib  := libWinCrypt;
      Certificado.SSLLib  := libCapicom;
    //{$ENDIF}
    geral.formaemissao := IntToStr(Ini.ReadInteger( 'Geral','FormaEmissao',0)+1);
    geral.dscontingencia := Ini.ReadString('Geral', 'dscontingencia', '');
    geral.boexibirtottribitem := Ini.ReadBool('Geral', 'ExibirTotTribItem', false);
    geral.bosalvar := Ini.ReadBool('Geral', 'Salvar', True);
    geral.pathsalvar := Ini.ReadString('Geral', 'PathSalvar','');

    webservice.uf := Ini.ReadString('WebService','UF','MG');
    webservice.Ambiente := StrToTpAmb(Ok,IntToStr(Ini.ReadInteger( 'WebService','Ambiente'  ,0)+1));
    webservice.boVisualizar := Ini.ReadBool('WebService','Visualizar',False);

    proxy.Host := Ini.ReadString('Proxy','Host','');
    proxy.Porta := Ini.ReadString('Proxy','Porta','');
    proxy.User := Ini.ReadString('Proxy','User','');
    proxy.Pass := Ini.ReadString('Proxy','Pass','');

    ACBrMail.Host      := Ini.ReadString('Email','Host'   ,'');
    ACBrMail.Port      := Ini.ReadString('Email','Port'   ,'');
    ACBrMail.Username  := Ini.ReadString('Email','User'   ,'');
    ACBrMail.Password  := Ini.ReadString('Email','Pass'   ,'');
    ACBrMail.Body.Text := Ini.ReadString('Email','Assunto','');
    ACBrMail.SetSSL    := Ini.ReadBool  ('Email','SSL'    ,False);

    email.SmtpHost := Ini.ReadString('Email','Host'   ,'');
    email.SmtpPort := Ini.ReadString('Email','Port'   ,'');
    email.SmtpUser := Ini.ReadString('Email','User'   ,'');
    email.SmtpPass := Ini.ReadString('Email','Pass'   ,'');
    email.Assunto  := Ini.ReadString('Email','Assunto','');
    email.boSSL    := Ini.ReadBool  ('Email','SSL'    ,False);
    email.bopdf    := Ini.ReadBool  ('Email',UpperCase(_PDF),False);
    email.tpenvio  := ini.ReadInteger('Email','Tipo Envio', 1);
    Ini.ReadBinaryStream('Email','Mensagem',StreamMemo) ;
    msg.LoadFromStream(StreamMemo);
    email.msg := msg.text;
  finally
    freeandnil(Ini);
    freeandnil(msg);
    freeandnil(StreamMemo);
  end;
end;

procedure TAcbr.LoadNFE(filename: string);
var
  nota : TACBrNFe;
  arquivo : TStrings;
  texto : TStringStream;
  dano, dmes, ddia : Word;
begin
  nota    := TACBrNFe.Create(nil);
  arquivo := TStringList.Create;
  texto   := TStringStream.Create('');
  try
    nota.NotasFiscais.Clear;
    arquivo.LoadFromFile(filename);
    texto.WriteString(UTF8Encode(arquivo.text));
    nota.NotasFiscais.LoadFromStream(texto);
    dsxml      := arquivo.text;
    nuchavenfe := nota.NotasFiscais.Items[0].NFe.procNFe.chNFe;
    nuserie    := nota.NotasFiscais.Items[0].NFe.Ide.serie;
    vltotal    := nota.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
    vlfrete    := nota.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
    try
      psliquido  := nota.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL;
    except
      messagedlg('O peso líquido não foi preenchido no xml.', mtinformation, [mbok], 0);
    end;
    try
      psbruto    := nota.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB;
    except
      messagedlg('O peso bruto não foi preenchido no xml.', mtinformation, [mbok], 0);
    end;
    nunota         := nota.NotasFiscais.Items[0].NFe.Ide.nNF;
    cdemitente     := get_cdcliente(nota.NotasFiscais.Items[0].NFe.Emit.CNPJCPF);
    cddestinatario := get_cdcliente(nota.NotasFiscais.Items[0].NFe.Dest.CNPJCPF);
    rzsocialemitente     := nota.NotasFiscais.Items[0].NFe.Emit.xNome;
    rzsocialdestinatario := nota.NotasFiscais.Items[0].NFe.Dest.xNome;
    DecodeDate(nota.NotasFiscais.Items[0].NFe.Ide.dEmi, dano, dmes, ddia);
    dtemissao  := StrToDate(IntToStr(ddia)+'/'+IntToStr(dmes)+'/'+IntToStr(dano));
  finally
    freeandnil(nota);
    freeandnil(arquivo);
    freeandnil(texto);
  end;
end;

procedure TAcbr.ImprimirBanco(tbl, codigo: string);
var
  texto : TStringStream;
  q : TClasseQuery;
  nota : TACBrNFe;
  nucasadecimal, nucasadecimalvlunitario : Integer;
  function makesql:string;
  begin
    result := 'select dsxml'+
                    ',nustdocumento';
    if tbl = _saida then
    begin
      result := result +
               ',tpsaida.nucasadecimalquantidade'+
               ',tpsaida.nucasadecimalvlunitario';
    end;
    result := result + ' '+
              'from '+tbl+' ';
    if tbl = _saida then
    begin
      result := result +
                'inner join tpsaida on tpsaida.cdempresa=saida.cdempresa and tpsaida.cdtpsaida=saida.cdtpsaida ';
    end;
    result := result +
              'where cdempresa='+empresa.cdempresa.ToString+' and cd'+tbl+'='+codigo;
  end;
begin
  texto := TStringStream.Create('');
  q     := TClasseQuery.Create(makesql);
  nota  := TACBrNFe.Create(nil);
  nota.Configuracoes.Arquivos.PathSalvar             := ExtractFilePath(Application.ExeName);
  nota.Configuracoes.WebServices.UF                  := empresa.endereco.sguf;
  nota.Configuracoes.WebServices.AguardarConsultaRet := 0;
  nota.Configuracoes.WebServices.IntervaloTentativas := 0;
  nota.Configuracoes.WebServices.AjustaAguardaConsultaRet := False;
  try
    if q.q.Fields[0].IsNull then
    begin
      messagedlg('XML não encontrado na tabela.', mtinformation, [mbok], 0);
      Exit;
    end;
    texto.WriteString(q.q.FieldByName(_DSXML).asstring);
    nota.NotasFiscais.Clear;
    nota.NotasFiscais.LoadFromStream(texto);
    nucasadecimal := 0;
    if tbl = _saida then
    begin
      nucasadecimal := q.q.fieldbyname(_nucasadecimalquantidade).AsInteger;
    end;
    nucasadecimalvlunitario := 0;
    if tbl = _saida then
    begin
      nucasadecimalvlunitario := q.q.fieldbyname(_nucasadecimalvlunitario).AsInteger;
    end;
    NFEImprimir(nucasadecimal, nucasadecimalvlunitario, nota, q.q.FieldByName(_nustdocumento).AsString = _02, tbl);
  finally
    freeandnil(texto);
    freeandnil(q);
    freeandnil(nota);
  end;
end;

function TAcbr.GetCstCofins(nustcofins: string): TACBrSituacaoTribCOFINS;
begin
       if nustcofins = _01 then result := stcofinsValorAliquotaNormal
  else if nustcofins = _02 then result := stcofinsValorAliquotaDiferenciada
  else if nustcofins = _03 then result := stcofinsQtdeAliquotaUnidade
  else if nustcofins = _04 then result := stcofinsMonofaticaAliquotaZero
  else if nustcofins = _05 then result := stcofinsValorAliquotaPorST
  else if nustcofins = _06 then result := stcofinsAliquotaZero
  else if nustcofins = _07 then result := stcofinsIsentaContribuicao
  else if nustcofins = _08 then result := stcofinsSemIncidenciaContribuicao
  else if nustcofins = _09 then result := stcofinsSuspensaoContribuicao
  else if nustcofins = _49 then result := stcofinsOutrasOperacoesSaida
  else if nustcofins = _50 then result := stcofinsOperCredExcRecTribMercInt
  else if nustcofins = _51 then result := stcofinsOperCredExcRecNaoTribMercInt
  else if nustcofins = _52 then result := stcofinsOperCredExcRecExportacao
  else if nustcofins = _53 then result := stcofinsOperCredRecTribNaoTribMercInt
  else if nustcofins = _54 then result := stcofinsOperCredRecTribMercIntEExportacao
  else if nustcofins = _55 then result := stcofinsOperCredRecNaoTribMercIntEExportacao
  else if nustcofins = _56 then result := stcofinsOperCredRecTribENaoTribMercIntEExportacao
  else if nustcofins = _60 then result := stcofinsCredPresAquiExcRecTribMercInt
  else if nustcofins = _61 then result := stcofinsCredPresAquiExcRecNaoTribMercInt
  else if nustcofins = _62 then result := stcofinsCredPresAquiExcExcRecExportacao
  else if nustcofins = _63 then result := stcofinsCredPresAquiRecTribNaoTribMercInt
  else if nustcofins = _64 then result := stcofinsCredPresAquiRecTribMercIntEExportacao
  else if nustcofins = _65 then result := stcofinsCredPresAquiRecNaoTribMercIntEExportacao
  else if nustcofins = _66 then result := stcofinsCredPresAquiRecTribENaoTribMercIntEExportacao
  else if nustcofins = _67 then result := stcofinsOutrasOperacoes_CredPresumido
  else if nustcofins = _70 then result := stcofinsOperAquiSemDirCredito
  else if nustcofins = _71 then result := stcofinsOperAquiComIsensao
  else if nustcofins = _72 then result := stcofinsOperAquiComSuspensao
  else if nustcofins = _73 then result := stcofinsOperAquiAliquotaZero
  else if nustcofins = _74 then result := stcofinsOperAqui_SemIncidenciaContribuicao
  else if nustcofins = _75 then result := stcofinsOperAquiPorST
  else if nustcofins = _98 then result := stcofinsOutrasOperacoesEntrada
  else {if nustcofins = _99 then } result := stcofinsOutrasOperacoes;
end;

function TAcbr.getstdocumento(nustdocumento: string):TACBrCodSit;
begin
       if nustdocumento = _01 then result := sdExtempRegular
  else if nustdocumento = _02 then result := sdCancelado
  else if nustdocumento = _03 then result := sdCanceladoExtemp
  else if nustdocumento = _04 then result := sdDoctoDenegado
  else if nustdocumento = _05 then result := sdDoctoNumInutilizada
  else if nustdocumento = _06 then result := sdFiscalCompl
  else if nustdocumento = _07 then result := sdExtempCompl
  else if nustdocumento = _08 then result := sdRegimeEspecNEsp
  else //if nustdocumento = _00 then
    result := sdRegular
end;

function TAcbr.getIndPress(cdindpres: string): TpcnPresencaComprador;
begin
       if cdindpres = _0 then result := pcNao
  else if cdindpres = _1 then result := pcPresencial
  else if cdindpres = _2 then result := pcInternet
  else if cdindpres = _3 then result := pcTeleatendimento
  else if cdindpres = _4 then result := pcEntregaDomicilio
  else
    //if cdindpres = _9 then
     result := pcOutros;
end;

class function TAcbr.getcdindpres(indPres: TpcnPresencaComprador):String;
begin
  case indpres of
    pcNao              : result := _0;
    pcPresencial       : result := _1;
    pcInternet         : result := _2;
    pcTeleatendimento  : result := _3;
    pcEntregaDomicilio : result := _4;
    pcOutros           : result := _9;
  end;
end;

function TAcbr.getind_pagto(tbl, codigo:string; dtemissao:TDate):TACBrTipoPagamento;
var
  tbl_pagto:string;
  function eh_avista:Boolean;
  begin
    result := RetornaSQLInteger('select count(*) from '+tbl_pagto+' where cdempresa='+empresa.cdempresa.ToString+' and cd'+tbl+'='+codigo+' and dtvencimento='+getdtbanco(dtemissao)) = 1;
  end;
  function eh_aprazo:Boolean;
  begin
    result := RetornaSQLInteger('select count(*) from '+tbl_pagto+' where cdempresa='+empresa.cdempresa.ToString+' and cd'+tbl+'='+codigo) > 0;
  end;
begin
  if tbl = _saida then
  begin
    tbl_pagto := _duplicata
  end
  else
  begin
    tbl_pagto := _autpagto;
  end;
  if eh_avista then
  begin
    result := tpVista
  end
  else if eh_aprazo then
  begin
    result := tpPrazo
  end
  else
  begin
    result := tpSemPagamento;
  end;
end;

function TAcbr.GetCstICMS(nusticms: string): TACBrSituacaoTribICMS;
begin
  if Length(nusticms) = 4 then Delete(nusticms, 1, 1);
       if nusticms = _000 then result := sticmsTributadaIntegralmente
  else if nusticms = _010 then result := sticmsTributadaComCobracaPorST
  else if nusticms = _020 then result := sticmsComReducao
  else if nusticms = _030 then result := sticmsIsentaComCobracaPorST
  else if nusticms = _040 then result := sticmsIsenta
  else if nusticms = _041 then result := sticmsNaoTributada
  else if nusticms = _050 then result := sticmsSuspensao
  else if nusticms = _051 then result := sticmsDiferimento
  else if nusticms = _060 then result := sticmsCobradoAnteriormentePorST
  else if nusticms = _070 then result := sticmsComReducaoPorST
  else if nusticms = _100 then result := sticmsEstrangeiraImportacaoDiretaTributadaIntegralmente
  else if nusticms = _110 then result := sticmsEstrangeiraImportacaoDiretaTributadaComCobracaPorST
  else if nusticms = _120 then result := sticmsEstrangeiraImportacaoDiretaComReducao
  else if nusticms = _130 then result := sticmsEstrangeiraImportacaoDiretaIsentaComCobracaPorST
  else if nusticms = _140 then result := sticmsEstrangeiraImportacaoDiretaIsenta
  else if nusticms = _141 then result := sticmsEstrangeiraImportacaoDiretaNaoTributada
  else if nusticms = _150 then result := sticmsEstrangeiraImportacaoDiretaSuspensao
  else if nusticms = _151 then result := sticmsEstrangeiraImportacaoDiretaDiferimento
  else if nusticms = _160 then result := sticmsEstrangeiraImportacaoDiretaCobradoAnteriormentePorST
  else if nusticms = _170 then result := sticmsEstrangeiraImportacaoDiretaComReducaoPorST
  else if nusticms = _190 then result := sticmsEstrangeiraImportacaoDiretaOutros
  else if nusticms = _200 then result := sticmsEstrangeiraAdqMercIntTributadaIntegralmente
  else if nusticms = _210 then result := sticmsEstrangeiraAdqMercIntTributadaComCobracaPorST
  else if nusticms = _220 then result := sticmsEstrangeiraAdqMercIntComReducao
  else if nusticms = _230 then result := sticmsEstrangeiraAdqMercIntIsentaComCobracaPorST
  else if nusticms = _240 then result := sticmsEstrangeiraAdqMercIntIsenta
  else if nusticms = _241 then result := sticmsEstrangeiraAdqMercIntNaoTributada
  else if nusticms = _250 then result := sticmsEstrangeiraAdqMercIntSuspensao
  else if nusticms = _251 then result := sticmsEstrangeiraAdqMercIntDiferimento
  else if nusticms = _260 then result := sticmsEstrangeiraAdqMercIntCobradoAnteriormentePorST
  else if nusticms = _270 then result := sticmsEstrangeiraAdqMercIntComReducaoPorST
  else if nusticms = _290 then result := sticmsEstrangeiraAdqMercIntOutros
  else if nusticms = _101 then result := sticmsSimplesNacionalTributadaComPermissaoCredito
  else if nusticms = _102 then result := sticmsSimplesNacionalTributadaSemPermissaoCredito
  else if nusticms = _103 then result := sticmsSimplesNacionalIsencaoPorFaixaReceitaBruta
  else if nusticms = _201 then result := sticmsSimplesNacionalTributadaComPermissaoCreditoComST
  else if nusticms = _202 then result := sticmsSimplesNacionalTributadaSemPermissaoCreditoComST
  else if nusticms = _203 then result := sticmsSimplesNacionalIsencaoPorFaixaReceitaBrutaComST
  else if nusticms = _300 then result := sticmsSimplesNacionalImune
  else if nusticms = _400 then result := sticmsSimplesNacionalNaoTributada
  else if nusticms = _500 then result := sticmsSimplesNacionalCobradoAnteriormentePorST
  else if nusticms = _900 then result := sticmsSimplesNacionalOutros
  else
    //if nusticms = _090 then
      result := sticmsOutros
end;

function TAcbr.GetCstIPI(nustipi: string): TACBrSituacaoTribIPI;
begin
       if nustipi = _00 then result := stipiEntradaRecuperacaoCredito
  else if nustipi = _01 then result := stipiEntradaTributradaZero
  else if nustipi = _02 then result := stipiEntradaIsenta
  else if nustipi = _03 then result := stipiEntradaNaoTributada
  else if nustipi = _04 then result := stipiEntradaImune
  else if nustipi = _05 then result := stipiEntradaComSuspensao
  else if nustipi = _49 then result := stipiOutrasEntradas
  else if nustipi = _50 then result := stipiSaidaTributada
  else if nustipi = _51 then result := stipiSaidaTributadaZero
  else if nustipi = _52 then result := stipiSaidaIsenta
  else if nustipi = _53 then result := stipiSaidaNaoTributada
  else if nustipi = _54 then result := stipiSaidaImune
  else if nustipi = _55 then result := stipiSaidaComSuspensao
  else
    //if nustipi = _99 then
    result := stipiOutrasSaidas;
end;

function TAcbr.GetTpEscrituracao(cdtpescrituracao: string): TACBrTipoEscrituracao;
begin
  if cdtpescrituracao = _1 then
  begin
    result := tpEscrRetificadora
  end
  else //if cdtpescrituracao = _0 then
  begin
    result := tpEscrOriginal
  end;
end;

function TAcbr.GetIndicadorSituacaoEspecial(cdindicadorsituacaoespecial: string): TACBrIndicadorSituacaoEspecial;
begin
       if cdindicadorsituacaoespecial = _0 then Result := indSitAbertura
  else if cdindicadorsituacaoespecial = _1 then result := indSitCisao
  else if cdindicadorsituacaoespecial = _2 then result := indSitFusao
  else if cdindicadorsituacaoespecial = _3 then result := indSitIncorporacao
  else if cdindicadorsituacaoespecial = _4 then result := indSitEncerramento
  //else if cdindicadorsituacaoespecial = _5 then result := indNenhum
  else                                          result := indNenhum;
end;

function TAcbr.GetIndicadorPessoaJuridica(cdindicadorpessoajuridica: string): TACBrIndicadorNaturezaPJ;
begin
       if cdindicadorpessoajuridica = _00 then result := indNatPJSocEmpresariaGeral
  else if cdindicadorpessoajuridica = _01 then result := indNatPJSocCooperativa
  else if cdindicadorpessoajuridica = _02 then result := indNatPJEntExclusivaFolhaSal;
end;

function TAcbr.getindicadoratividade(cdindicadoratividade: string): TACBrIndicadorAtividade;
begin
       if cdindicadoratividade = _0 then result := indAtivIndustrial
  else if cdindicadoratividade = _1 then result := indAtivPrestadorServico
  else if cdindicadoratividade = _2 then result := indAtivComercio
  else if cdindicadoratividade = _3 then result := indAtivoFincanceira
  else if cdindicadoratividade = _4 then result := indAtivoImobiliaria
  else if cdindicadoratividade = _9 then result := indAtivoOutros;
end;

function TAcbr.getindicadorincidencia(cdindicadorincidencia: string): TACBrCodIndIncTributaria;
begin
       if cdindicadorincidencia = _0 then result := codEscrOpIncNaoCumulativo
  else if cdindicadorincidencia = _1 then result := codEscrOpIncCumulativo
  else if cdindicadorincidencia = _2 then result := codEscrOpIncAmbos;         
end;

function TAcbr.GetIndicadorApropriacao(cdindicadorapropriacao: string): TACBrIndAproCred;
begin
       if cdindicadorapropriacao = _0 then result := indMetodoApropriacaoDireta
  else if cdindicadorapropriacao = _1 then result := indMetodoDeRateioProporcional;
end;

function TAcbr.GetIndicadorContribuicao(cdindicadorcontribuicao: string): TACBrCodIndTipoCon;
begin
       if cdindicadorcontribuicao = _1 then result := codIndTipoConExclAliqBasica
  else if cdindicadorcontribuicao = _2 then result := codIndTipoAliqEspecificas;
end;

function TAcbr.GetBaseCalculoCredito(cdbccalculocredito: string): TACBrBaseCalculoCredito;
begin
       if cdbccalculocredito = '' then Result := bccVazio
  else if cdbccalculocredito = _01 then result := bccAqBensRevenda
  else if cdbccalculocredito = _02 then result := bccAqBensUtiComoInsumo
  else if cdbccalculocredito = _03 then result := bccAqServUtiComoInsumo
  else if cdbccalculocredito = _04 then result := bccEnergiaEletricaTermica
  else if cdbccalculocredito = _05 then result := bccAluguelPredios
  else if cdbccalculocredito = _06 then result := bccAluguelMaqEquipamentos
  else if cdbccalculocredito = _07 then result := bccArmazenagemMercadoria
  else if cdbccalculocredito = _08 then result := bccConArrendamentoMercantil
  else if cdbccalculocredito = _09 then result := bccMaqCredDepreciacao
  else if cdbccalculocredito = _10 then result := bccMaqCredAquisicao
  else if cdbccalculocredito = _11 then result := bccAmortizacaoDepreciacaoImoveis
  else if cdbccalculocredito = _12 then result := bccDevolucaoSujeita
  else if cdbccalculocredito = _13 then result := bccOutrasOpeComDirCredito
  else if cdbccalculocredito = _14 then result := bccAtTransporteSubcontratacao
  else if cdbccalculocredito = _15 then result := bccAtImobCustoIncorrido
  else if cdbccalculocredito = _16 then result := bccAtImobCustoOrcado
  else if cdbccalculocredito = _17 then result := bccAtPresServ
  else if cdbccalculocredito = _18 then result := bccEstoqueAberturaBens;
end;

function TAcbr.getstdocumentocte(nustdocumento: string): TACBrSituacaoDF;
begin
       if nustdocumento = _00 then result := sdfRegular
  else if nustdocumento = _01 then result := sdfExtRegular
  else if nustdocumento = _02 then result := sdfCancelado
  else if nustdocumento = _03 then result := sdfExtCancelado
  else if nustdocumento = _04 then result := sdfDenegado
  else if nustdocumento = _05 then result := sdfInutilizado
  else if nustdocumento = _06 then result := sdfComplementar
  else if nustdocumento = _07 then result := sdfExtComplementar
  else if nustdocumento = _08 then result := sdfEspecial;
end;

function TAcbr.GetTpFrete(cdtpfrete: string): TACBrTipoFrete;
begin
       if cdtpfrete = _0 then result := tfPorContaTerceiros
  else if cdtpfrete = _1 then result := tfPorContaEmitente
  else if cdtpfrete = _2 then result := tfPorContaDestinatario
  else if cdtpfrete = _9 then result := tfSemCobrancaFrete
  else if cdtpfrete = '' then result := tfNenhum;
end;

function TAcbr.GetTpItem(cdtpitem: string): TACBrTipoItem;
begin
       if cdtpitem = _00  then result := tiMercadoriaRevenda
  else if cdtpitem = _01  then result := tiMateriaPrima
  else if cdtpitem = _02  then result := tiEmbalagem
  else if cdtpitem = _03  then result := tiProdutoProcesso
  else if cdtpitem = _04  then result := tiProdutoAcabado
  else if cdtpitem = _05  then result := tiSubproduto
  else if cdtpitem = _06  then result := tiProdutoIntermediario
  else if cdtpitem = _07  then result := tiMaterialConsumo
  else if cdtpitem = _08  then result := tiAtivoImobilizado
  else if cdtpitem = _09  then result := tiServicos
  else if cdtpitem = _10 then result := tiOutrosInsumos
  else if cdtpitem = _99 then result := tiOutras;
end;

function TAcbr.GetCodCont(cdCodCont: string): TACBrCodCont;
begin
       if cdCodCont = _01 then result := ccNaoAcumAliqBasica
  else if cdCodCont = _02 then result := ccNaoAcumAliqDiferenciada
  else if cdCodCont = _03 then result := ccNaoAcumAliqUnidProduto
  else if cdCodCont = _04 then result := ccNaoAcumAliqBasicaAtivImobiliaria
  else if cdCodCont = _31 then result := ccApuradaPorST
  else if cdCodCont = _32 then result := ccApuradaPorSTManaus
  else if cdCodCont = _51 then result := ccAcumAliqBasica
  else if cdCodCont = _52 then result := ccAcumAliqDiferenciada
  else if cdCodCont = _53 then result := ccAcumAliqUnidProduto
  else if cdCodCont = _54 then result := ccAcumAliqBasicaAtivImobiliaria
  else if cdCodCont = _70 then result := ccApuradaAtivImobiliaria
  else if cdCodCont = _71 then result := ccApuradaSCPNaoCumulativa
  else if cdCodCont = _72 then result := ccApuradaSCPCumulativa
  else if cdCodCont = _99 then result := ccPISPasepSalarios;
end;

function TAcbr.getInd_reg_cum(cdind_reg_cum: string): TACBrCodIndCritEscrit;
begin
       if cdind_reg_cum = _1 then result := codRegimeCaixa
  else if cdind_reg_cum = _2 then result := codRegimeCompetEscritConsolidada
  else if cdind_reg_cum = _9 then result := codRegimeCompetEscritDetalhada;
end;

function TAcbr.get_cdcliente(cnpjcpf: string): string;
  function get_tipopessoa:string;
  begin
    result := _nucnpj;
    if Length(cnpjcpf) = 11 then
    begin
      result := _nucpf;
    end;
  end;
  function formatar_documento:string;
  begin
    result := FormatarCNPJ(cnpjcpf);
    if get_tipopessoa = _nucpf then
    begin
      result := formatarCPF(cnpjcpf);
    end;
  end;
begin
  result := codigodocampo(_cliente, formatar_documento, get_tipopessoa);
end;

end.
