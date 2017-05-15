unit classeentrada;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, Controls, classes, SysUtils, stdctrls, Variants, Contnrs,
  pcnNFe, pcnConversao,
  DB, dbclient,
  ACBrNFe,
  ustrings, udatahora, uRotinas, uRichEdit, uregistro, unumero,
  ulocalizar, uSelecionarEntrada, uvalidadocumento, uProgressBar,
  usystem, uconstantes, ulocalizarproduto,
  classeaplicacao, classeusuario, classeempresa, classegerar, classeuf,
  classeexecutasql, classeretornasql, classeregistrainformacao, classeconsiste, classemovto,
  classeproduto, classeform, classesaida, classecliente, classefornecedor,
  classequery, classeautpagto, classedao, classesticms, classecondpagto;

type
  TITentrada = class(TRegistroQuipos)
  private
    Fborecuperaajusteicms: String;
    Fbobaseipiajuste: String;
    Fborecuperapis: String;
    Fboicmsajuste: String;
    Fbobasepisajuste: String;
    Fborecuperaipiespecial: String;
    Fboajustetotal: String;
    Fbodiferencialaliquota: String;
    Fbobaseicmsajuste: String;
    Fborecuperaicms: String;
    Fborecuperaipi: String;
    Fboajusteipi: String;
    Fborecuperacofins: String;
    Fbondiferencialaliquota: String;
    Fbobasecofinsajuste: String;
    Fvloutdespesa: currency;
    Fvlvenda: currency;
    Fvllucroprazo: currency;
    Fvlseguro: currency;
    Fvlbaseicmssubtrib: currency;
    Fvlicmsred: currency;
    Fvlpis: currency;
    Fvlbaseicms: currency;
    Fvlcustobruto: currency;
    Fvlicmsdifaliquotaitem: currency;
    Fvlprecoprazoanterior: currency;
    Fvlfrete: currency;
    Fvlcustototal: currency;
    Fvlicms: currency;
    Fvlcomissao: currency;
    Fvlicmsdifaliquota: currency;
    Fvlprecoanterior: currency;
    Fvlprecoprazo: currency;
    Fvllucro: currency;
    Fvlsupersimples: currency;
    Fvlespecial: currency;
    Fvlcofins: currency;
    Fvlatacado: currency;
    Fvlbasecofins: currency;
    Fvlunitario: currency;
    Fvldescontoitem: currency;
    Fvlcustomedio: currency;
    Fvlicmssubtribitem: currency;
    Fvlbaseipi: currency;
    Fvldesconto: currency;
    Fvltotal: currency;
    Fvlipiitem: currency;
    Fvlprecovenda: currency;
    Fvlcusto: currency;
    Fvldespesaitem: currency;
    Fvlipi: currency;
    Fvlsaldovalor: currency;
    Fvlicmssubtrib: currency;
    Fvlfreteitem: currency;
    Fvlbasepis: currency;
    Fvloutdespesaitem: currency;
    Fvlcustoliquido: currency;
    Fprcomissao: double;
    Fprlucroatacado: double;
    Fprdesconto: double;
    Falicmsred: double;
    Falsupersimples: double;
    Fpsliquido: double;
    Fprredbcicms: double;
    Falicms: double;
    Fpsbruto: double;
    Falipi: double;
    Fprvigor: double;
    Falcofins: double;
    Falpis: double;
    Fprlucroprazo: double;
    Fqtitem: double;
    Fprlucroespecial: double;
    Fprlucro: double;
    Falicmssubtrib: double;
    Fprmrgvladicionadoicmssubtrib: double;
    Fprcusto: double;
    Fprfrete: double;
    Fprdespesaitem: double;
    Fcdmodbcsticms: integer;
    Fcdproduto: integer;
    Fcditentrada: integer;
    Fcdplconta: integer;
    Fcdordproducao: integer;
    Fcdmodbcicms: integer;
    Fcdentrada: integer;
    Fcdordcompra: integer;
    Fcdcfop: integer;
    Fcdcntcusto: integer;
    Fcditordcompra: integer;
    Fdsitentrada: string;
    Fboalteracustomedio: string;
    Fcddigitado: string;
    Fnustpis: string;
    Fnusticms: string;
    Fcdbccalculocredito: string;
    Fnustcofins: string;
    Fnuplconta: string;
    Fnustipi: string;
    Fdsinfadicional: string;
    Fdtfabricacao: TDate;
    Fdtvalidade: TDate;
    Fnucntcusto: string;
    Fvlretencao: currency;
    fvltotalcompleto: currency;
    fvlbaseicmsntributavel: currency;
    fvlbaseicmsoriginal: currency;
    fvlbaseicmred: currency;
    fproduto: tproduto;
  public
    property produto : tproduto read fproduto write fproduto;
    [fk]
    property cdentrada : integer read Fcdentrada write Fcdentrada;
    [fk]
    property cdproduto : integer read Fcdproduto write Fcdproduto;
    [fk]
    property cdcntcusto : integer read Fcdcntcusto write Fcdcntcusto;
    property nucntcusto : string read Fnucntcusto write Fnucntcusto;
    [fk]
    property cdcfop : integer read Fcdcfop write Fcdcfop;
    property cddigitado : string read Fcddigitado write Fcddigitado;
    property dsitentrada : string read Fdsitentrada write Fdsitentrada;
    property boalteracustomedio : string read Fboalteracustomedio write Fboalteracustomedio;
    property qtitem : double read Fqtitem write Fqtitem;
    property vlunitario : currency read Fvlunitario write Fvlunitario;
    property vltotal : currency read Fvltotal write Fvltotal;
    property prdesconto : double read Fprdesconto write Fprdesconto;
    property vldesconto : currency read Fvldesconto write Fvldesconto;
    property vlbaseicms : currency read Fvlbaseicms write Fvlbaseicms;
    property alicms : double read Falicms write Falicms;
    property vlicms : currency read Fvlicms write Fvlicms;
    property alicmsred : double read Falicmsred write Falicmsred;
    property vlbaseipi : currency read Fvlbaseipi write Fvlbaseipi;
    property alipi : double read Falipi write Falipi;
    property vlipi : currency read Fvlipi write Fvlipi;
    property vlfrete : currency read Fvlfrete write Fvlfrete;
    property vlseguro : currency read Fvlseguro write Fvlseguro;
    property psliquido : double read Fpsliquido write Fpsliquido;
    property psbruto : double read Fpsbruto write Fpsbruto;
    property borecuperaicms : string read Fborecuperaicms write Fborecuperaicms;
    property borecuperaipi : string read Fborecuperaipi write Fborecuperaipi;
    property borecuperapis : string read Fborecuperapis write Fborecuperapis;
    property vlbasepis : currency read Fvlbasepis write Fvlbasepis;
    property alpis : double read Falpis write Falpis;
    property vlpis : currency read Fvlpis write Fvlpis;
    property vlbasecofins : currency read Fvlbasecofins write Fvlbasecofins;
    property alcofins : double read Falcofins write Falcofins;
    property vlcofins : currency read Fvlcofins write Fvlcofins;
    property prcusto : double read Fprcusto write Fprcusto;
    property prvigor : double read Fprvigor write Fprvigor;
    property vloutdespesa : currency read Fvloutdespesa write Fvloutdespesa;
    property vlcustomedio : currency read Fvlcustomedio write Fvlcustomedio;
    property vlcusto : currency read Fvlcusto write Fvlcusto;
    property borecuperacofins : string read Fborecuperacofins write Fborecuperacofins;
    property dtfabricacao : TDate read Fdtfabricacao write Fdtfabricacao;
    property dtvalidade : TDate read Fdtvalidade write Fdtvalidade;
    property vlsaldovalor : currency read Fvlsaldovalor write Fvlsaldovalor;
    property prlucro : double read Fprlucro write Fprlucro;
    property vlicmsred : currency read Fvlicmsred write Fvlicmsred;
    property alicmssubtrib : double read Falicmssubtrib write Falicmssubtrib;
    property vlicmssubtrib : currency read Fvlicmssubtrib write Fvlicmssubtrib;
    property vlbaseicmssubtrib : currency read Fvlbaseicmssubtrib write Fvlbaseicmssubtrib;
    property vlvenda : currency read Fvlvenda write Fvlvenda;
    property prlucroatacado : double read Fprlucroatacado write Fprlucroatacado;
    property prlucroespecial : double read Fprlucroespecial write Fprlucroespecial;
    property vlatacado : currency read Fvlatacado write Fvlatacado;
    property vlespecial : currency read Fvlespecial write Fvlespecial;
    [fk]
    property cdmodbcicms : integer read Fcdmodbcicms write Fcdmodbcicms;
    [fk]
    property cdmodbcsticms : integer read Fcdmodbcsticms write Fcdmodbcsticms;
    property prmrgvladicionadoicmssubtrib : double read Fprmrgvladicionadoicmssubtrib write Fprmrgvladicionadoicmssubtrib;
    property prredbcicms : double read Fprredbcicms write Fprredbcicms;
    property nusticms : string read Fnusticms write Fnusticms;
    property nustipi : string read Fnustipi write Fnustipi;
    property nustcofins : string read Fnustcofins write Fnustcofins;
    property nustpis : string read Fnustpis write Fnustpis;
    property borecuperaajusteicms : string read Fborecuperaajusteicms write Fborecuperaajusteicms;
    property boicmsajuste : string read Fboicmsajuste write Fboicmsajuste;
    property bobaseipiajuste : string read Fbobaseipiajuste write Fbobaseipiajuste;
    property boajustetotal : string read Fboajustetotal write Fboajustetotal;
    property bobaseicmsajuste : string read Fbobaseicmsajuste write Fbobaseicmsajuste;
    property bondiferencialaliquota : string read Fbondiferencialaliquota write Fbondiferencialaliquota;
    property vlicmsdifaliquota : currency read Fvlicmsdifaliquota write Fvlicmsdifaliquota;
    property bodiferencialaliquota : string read Fbodiferencialaliquota write Fbodiferencialaliquota;
    [keyfield]
    property cditentrada : integer read Fcditentrada write Fcditentrada;
    property borecuperaipiespecial : string read Fborecuperaipiespecial write Fborecuperaipiespecial;
    [fk]
    property cditordcompra : integer read Fcditordcompra write Fcditordcompra;
    [fk]
    property cdordcompra : integer read Fcdordcompra write Fcdordcompra;
    property bobasepisajuste : string read Fbobasepisajuste write Fbobasepisajuste;
    property bobasecofinsajuste : string read Fbobasecofinsajuste write Fbobasecofinsajuste;
    property vlcustobruto : currency read Fvlcustobruto write Fvlcustobruto;
    property vlcustoliquido : currency read Fvlcustoliquido write Fvlcustoliquido;
    property prcomissao : double read Fprcomissao write Fprcomissao;
    property alsupersimples : double read Falsupersimples write Falsupersimples;
    property vlsupersimples : currency read Fvlsupersimples write Fvlsupersimples;
    property vlcomissao : currency read Fvlcomissao write Fvlcomissao;
    property vlcustototal : currency read Fvlcustototal write Fvlcustototal;
    property vlprecovenda : currency read Fvlprecovenda write Fvlprecovenda;
    property vlprecoanterior : currency read Fvlprecoanterior write Fvlprecoanterior;
    property prfrete : double read Fprfrete write Fprfrete;
    property vlipiitem : currency read Fvlipiitem write Fvlipiitem;
    property vlfreteitem : currency read Fvlfreteitem write Fvlfreteitem;
    property vlicmssubtribitem : currency read Fvlicmssubtribitem write Fvlicmssubtribitem;
    property vldescontoitem : currency read Fvldescontoitem write Fvldescontoitem;
    property vloutdespesaitem : currency read Fvloutdespesaitem write Fvloutdespesaitem;
    property vlicmsdifaliquotaitem : currency read Fvlicmsdifaliquotaitem write Fvlicmsdifaliquotaitem;
    [fk]
    property cdbccalculocredito : string read Fcdbccalculocredito write Fcdbccalculocredito;
    property prdespesaitem : double read Fprdespesaitem write Fprdespesaitem;
    property vldespesaitem : currency read Fvldespesaitem write Fvldespesaitem;
    property vllucro : currency read Fvllucro write Fvllucro;
    property dsinfadicional : string read Fdsinfadicional write Fdsinfadicional;
    [fk]
    property cdplconta : integer read Fcdplconta write Fcdplconta;
    [fk]
    property cdordproducao : integer read Fcdordproducao write Fcdordproducao;
    property nuplconta : string read Fnuplconta write Fnuplconta;
    property vlprecoprazo : currency read Fvlprecoprazo write Fvlprecoprazo;
    property prlucroprazo : double read Fprlucroprazo write Fprlucroprazo;
    property vlprecoprazoanterior : currency read Fvlprecoprazoanterior write Fvlprecoprazoanterior;
    property vllucroprazo : currency read Fvllucroprazo write Fvllucroprazo;
    property boajusteipi : string read Fboajusteipi write Fboajusteipi;
    property vlretencao : currency read Fvlretencao write Fvlretencao;
    property vlbaseicmsntributavel : currency read fvlbaseicmsntributavel write fvlbaseicmsntributavel;
    property vlbaseicmsoriginal : currency read fvlbaseicmsoriginal write fvlbaseicmsoriginal;
    property vlbaseicmsred : currency read fvlbaseicmred write fvlbaseicmred;
    property vltotalcompleto : currency read fvltotalcompleto write fvltotalcompleto;
    constructor create;
    destructor destroy; override;
  end;
  TItEntradaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItEntrada;
    procedure SetItem(Index: Integer; const Value: TItEntrada);
  public
    function New: TItEntrada;
    property Items[Index: Integer]: TItEntrada read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):Boolean;overload;
    function Ler(sqlwhere:string):boolean;overload;
    procedure VerificarRecuperaoImposto(dataset: TDataset);
    procedure CalcularImpostoIcmsItem;
    class procedure RecalcularBaseICMSnaoTributavel;
  end;
  TTpEntrada = class(TRegistroQuipos)
  private
    Fboipi: String;
    Fbomarkup: String;
    Fboretencaopis: String;
    Fboretencaocofins: String;
    Fboretencaoinss: String;
    Fboretencaoirrf: String;
    Fboplconta: String;
    Fboordproducao: String;
    Fboautpagto: String;
    Fboestoque: String;
    Fboinsercaocdbarra: String;
    Fboicmssubst: String;
    Fbopis: String;
    Fbocalcedtrib: String;
    Fbodescricaoitens: String;
    Fbocofinsret: String;
    Fboretencaoiss: String;
    Fbofrete: String;
    Fbopisret: String;
    Fbodtfabricacao: String;
    Fbocofins: String;
    Fboicms: String;
    Fbocntcusto: String;
    Fbodtvalidade: String;
    Fboipibcicms: String;
    Fbodigitado: String;
    Fbodshistoriconf: String;
    Fboordcompra: String;
    Fboretencaocontribsocial: String;
    Fbolucro: String;
    Fboinfadicional: String;
    Fcdcfopdufsubtrib: integer;
    Fcdcfopduf: integer;
    Fcdtpentrada: integer;
    Fcdcfopfuf: integer;
    Fcdcfopfufsubtrib: integer;
    Ftpforncliente: string;
    Fnmtpentrada: string;
    Fnudocfiscalicms: string;
    Fnmreduzido: string;
  public
    [keyfield]
    property cdtpentrada : integer read Fcdtpentrada write Fcdtpentrada;
    [fk]
    property cdcfopfuf : integer read Fcdcfopfuf write Fcdcfopfuf;
    [fk]
    property cdcfopduf : integer read Fcdcfopduf write Fcdcfopduf;
    [fk]
    property cdcfopfufsubtrib : integer read Fcdcfopfufsubtrib write Fcdcfopfufsubtrib;
    [fk]
    property cdcfopdufsubtrib : integer read Fcdcfopdufsubtrib write Fcdcfopdufsubtrib;
    property nudocfiscalicms : string read Fnudocfiscalicms write Fnudocfiscalicms;
    property nmtpentrada : string read Fnmtpentrada write Fnmtpentrada;
    property nmreduzido : string read Fnmreduzido write Fnmreduzido;
    property boicms : String read Fboicms write Fboicms;
    property boipi : String read Fboipi write Fboipi;
    property tpforncliente : string read Ftpforncliente write Ftpforncliente;
    property boautpagto : String read Fboautpagto write Fboautpagto;
    property boestoque : String read Fboestoque write Fboestoque;
    property bocntcusto : String read Fbocntcusto write Fbocntcusto;
    property boicmssubst : String read Fboicmssubst write Fboicmssubst;
    property bocofins : String read Fbocofins write Fbocofins;
    property bopis : String read Fbopis write Fbopis;
    property bofrete : String read Fbofrete write Fbofrete;
    property bocalcedtrib : String read Fbocalcedtrib write Fbocalcedtrib;
    property bodtfabricacao : String read Fbodtfabricacao write Fbodtfabricacao;
    property bodtvalidade : String read Fbodtvalidade write Fbodtvalidade;
    property bodescricaoitens : String read Fbodescricaoitens write Fbodescricaoitens;
    property bodigitado : String read Fbodigitado write Fbodigitado;
    property boipibcicms : String read Fboipibcicms write Fboipibcicms;
    property bolucro : String read Fbolucro write Fbolucro;
    property bodshistoriconf : String read Fbodshistoriconf write Fbodshistoriconf;
    property boinsercaocdbarra : String read Fboinsercaocdbarra write Fboinsercaocdbarra;
    property boretencaocofins : String read Fboretencaocofins write Fboretencaocofins;
    property boretencaopis : String read Fboretencaopis write Fboretencaopis;
    property boretencaocontribsocial : String read Fboretencaocontribsocial write Fboretencaocontribsocial;
    property boretencaoinss : String read Fboretencaoinss write Fboretencaoinss;
    property boretencaoiss : String read Fboretencaoiss write Fboretencaoiss;
    property boretencaoirrf : String read Fboretencaoirrf write Fboretencaoirrf;
    property bocofinsret : String read Fbocofinsret write Fbocofinsret;
    property bopisret : String read Fbopisret write Fbopisret;
    property boordcompra : String read Fboordcompra write Fboordcompra;
    property bomarkup : String read Fbomarkup write Fbomarkup;
    property boinfadicional : String read Fboinfadicional write Fboinfadicional;
    property boplconta : String read Fboplconta write Fboplconta;
    property boordproducao : String read Fboordproducao write Fboordproducao;
    function getcdcfop(nusticms: string; cduf: integer):integer;
  end;
  TEntrada = class(TRegistroQuipos)
  private
    Fbonarredondarcofins: String;
    Fbocreditosttransporte: String;
    Fboipibcicms: String;
    Fboicmsstitem: String;
    Fbonarredondarpis: String;
    Fboretencaopis: String;
    Fboicmssubtribntotal: String;
    Fbodescontoitem: String;
    Fboretencaocofins: String;
    Fbooptantesimples: String;
    Fboarredondar: String;
    Fboexportado: String;
    Fbopagtovista: String;
    Fbofreteitem: String;
    Fvlipi: currency;
    Fvliss: currency;
    Fvlpis: currency;
    Fvlbasefretesub: currency;
    Fvlbaseipi: currency;
    Fvlcofinssubtrib: currency;
    Fvlicmssubtrib: currency;
    Fvldesconto: currency;
    Fvlliqsdesc: currency;
    Fvlbasecofinssubtrib: currency;
    Fvlisssdesc: currency;                                           
    Fvlbasepissubtrib: currency;
    Fvlliquido: currency;
    Fvlbaseicmssubtrib: currency;
    Fvlfretesub: currency;
    Fvlbasepis: currency;
    Fvltotal: currency;
    Fvlcofinsret: currency;
    Fvlpissubtrib: currency;
    Fvlbasecofins: currency;
    Fvlseguro: currency;
    Fvlinss: currency;
    Fvloutdespesa: currency;
    Fvlpisret: currency;
    Fvlservico: currency;
    Fvlicms: currency;
    Fvlirrf: currency;
    Fvlfrete: currency;
    Fvlicmssfretencontrib: currency;
    Fvlbaseicms: currency;
    Fvlcofins: currency;
    Fvlproduto: currency;
    Fvlcontribsocial: currency;
    Falcofinssubtrib: double;
    Fprdesconto: double;
    Fqtvolume: double;
    Falpissubtrib: double;
    Fprlucro: double;
    Falfretesub: double;
    Fpsliquido: double;
    Fpsbruto: double;
    Fcdentrada: integer;
    Fnuentrada: integer;
    Fcdprotocolo: integer;
    Fnseqevento: integer;
    Fcdsaida: integer;
    Fcdtpcobranca: integer;
    Fcdtpentrada: integer;
    Fcdcfop: integer;
    Fcduf: integer;
    Fcdtpfrete: String;
    Fcdtpligacaoc500: integer;
    Fcdentradact: integer;
    Fcdplconta: integer;
    Fcdcntcusto: integer;
    Fnuentradact: integer;
    Fcdcondpagto: integer;
    Fcdtransportadora: largeint;
    Fnuplaca: string;
    Fnuchavenfse: string;
    Fnmespecievolume: string;
    Fdsobservacao: string;
    Fnustdocumento: string;
    Fnuchavenfe: string;
    Fnusubserie: string;
    Fcdfornecedor: LargeInt;
    Fcdgrupotensaoc500: string;
    Fdshistorico: string;
    Fnmespecie: string;
    Fnuplconta: string;
    Fnuserie: string;
    Fcdcliente: LargeInt;
    Fcdclconsumoenergia: string;
    Fnudocfiscalicms: string;
    Fcdclconsumoagua: string;
    Fdsxml: string;
    Fhrentrada: TDate;
    Fdtentrada: TDate;
    Fdtsaida: TDate;
    Fdtemissao: Tdate;
    Ftpentrada: TTpentrada;
    FItentrada: TItentradaList;
    fcliente: tcliente;
    ffornecedor: tfornecedor;
    Fautpagto: tautpagtolist;
    Fcondpagto: tcondpagto;
    Fnucntcusto: string;
    Fvlretencao: currency;
    fborateiocntcusto: string;
    fborateioplconta: string;
    procedure Setautpagto(const Value: tautpagtolist);
    procedure Setcondpagto(const Value: tcondpagto);
    procedure Setnucntcusto(const Value: string);
    procedure Setvlretencao(const Value: currency);
  public
    property autpagto : tautpagtolist read Fautpagto write Setautpagto;
    property cliente : tcliente read fcliente write fcliente;
    property fornecedor : tfornecedor read ffornecedor write ffornecedor;
    property Itentrada : TItentradaList read FItentrada write FItentrada;
    property tpentrada : TTpentrada read Ftpentrada write Ftpentrada;
    property condpagto : tcondpagto read Fcondpagto write Setcondpagto;
    [keyfield]
    property cdentrada : integer read Fcdentrada write Fcdentrada;
    [fk]
    property cdtpentrada : integer read Fcdtpentrada write Fcdtpentrada;
    [fk]
    property cdcfop : integer read Fcdcfop write Fcdcfop;
    [fk]
    property cduf : integer read Fcduf write Fcduf;
    [fk]
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write Fcdcliente;
    [fk]
    property cdtransportadora : largeint read Fcdtransportadora write Fcdtransportadora;
    [fk]
    property cdcntcusto : integer read Fcdcntcusto write Fcdcntcusto;
    property nucntcusto : string read Fnucntcusto write Setnucntcusto;
    [fk]
    property cdcondpagto : integer read Fcdcondpagto write Fcdcondpagto;
    [fk]
    property cdtpcobranca : integer read Fcdtpcobranca write Fcdtpcobranca;
    [fk]
    property cdplconta : integer read Fcdplconta write Fcdplconta;
    [fk]
    property cdsaida : integer read Fcdsaida write Fcdsaida;
    property nustdocumento : string read Fnustdocumento write Fnustdocumento;
    property nudocfiscalicms : string read Fnudocfiscalicms write Fnudocfiscalicms;
    [fk]
    property cdtpligacaoc500 : integer read Fcdtpligacaoc500 write Fcdtpligacaoc500;
    [fk]
    property cdgrupotensaoc500 : string read Fcdgrupotensaoc500 write Fcdgrupotensaoc500;
    [fk]
    property cdclconsumoagua : string read Fcdclconsumoagua write Fcdclconsumoagua;
    [fk]
    property cdclconsumoenergia : string read Fcdclconsumoenergia write Fcdclconsumoenergia;
    [fk]
    property cdtpfrete : String read Fcdtpfrete write Fcdtpfrete;
    property nuentrada : integer read Fnuentrada write Fnuentrada;
    property dtsaida : TDate read Fdtsaida write Fdtsaida;
    property dtemissao : Tdate read Fdtemissao write Fdtemissao;
    property vltotal : currency read Fvltotal write Fvltotal;
    property vlliquido : currency read Fvlliquido write Fvlliquido;
    property vlliqsdesc : currency read Fvlliqsdesc write Fvlliqsdesc;
    property prdesconto : double read Fprdesconto write Fprdesconto;
    property vldesconto : currency read Fvldesconto write Fvldesconto;
    property vlseguro : currency read Fvlseguro write Fvlseguro;
    property vloutdespesa : currency read Fvloutdespesa write Fvloutdespesa;
    property vlfrete : currency read Fvlfrete write Fvlfrete;
    property vlbaseipi : currency read Fvlbaseipi write Fvlbaseipi;
    property vlipi : currency read Fvlipi write Fvlipi;
    property vlicmssubtrib : currency read Fvlicmssubtrib write Fvlicmssubtrib;
    property vlbaseicmssubtrib : currency read Fvlbaseicmssubtrib write Fvlbaseicmssubtrib;
    property vlbaseicms : currency read Fvlbaseicms write Fvlbaseicms;
    property vlicms : currency read Fvlicms write Fvlicms;
    property vliss  : currency read Fvliss write Fvliss;
    property vlisssdesc : currency read Fvlisssdesc write Fvlisssdesc;
    property vlbasepis : currency read Fvlbasepis write Fvlbasepis;
    property vlpis : currency read Fvlpis write Fvlpis;
    property vlbasecofins : currency read Fvlbasecofins write Fvlbasecofins;
    property vlcofins : currency read Fvlcofins write Fvlcofins;
    property vlirrf : currency read Fvlirrf write Fvlirrf;
    property psliquido : double read Fpsliquido write Fpsliquido;
    property psbruto : double read Fpsbruto write Fpsbruto;
    property hrentrada : TDate read Fhrentrada write Fhrentrada;
    property dtentrada : TDate read Fdtentrada write Fdtentrada;
    property nuplaca : string read Fnuplaca write Fnuplaca;
    property vlproduto : currency read Fvlproduto write Fvlproduto;
    property vlservico : currency read Fvlservico write Fvlservico;
    property qtvolume : double read Fqtvolume write Fqtvolume;
    property nmespecievolume : string read Fnmespecievolume write Fnmespecievolume;
    property boexportado : String read Fboexportado write Fboexportado;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property nmespecie : string read Fnmespecie write Fnmespecie;
    property vlicmssfretencontrib : currency read Fvlicmssfretencontrib write Fvlicmssfretencontrib;
    property dshistorico : string read Fdshistorico write Fdshistorico;
    property nusubserie : string read Fnusubserie write Fnusubserie;
    [fk]
    property cdprotocolo : integer read Fcdprotocolo write Fcdprotocolo;
    property prlucro : double read Fprlucro write Fprlucro;
    property booptantesimples : String read Fbooptantesimples write Fbooptantesimples;
    property nuplconta : string read Fnuplconta write Fnuplconta;
    property dsxml : string read Fdsxml write Fdsxml;
    property bopagtovista : String read Fbopagtovista write Fbopagtovista;
    property vlpissubtrib : currency read Fvlpissubtrib write Fvlpissubtrib;
    property vlbasepissubtrib : currency read Fvlbasepissubtrib write Fvlbasepissubtrib;
    property alpissubtrib : double read Falpissubtrib write Falpissubtrib;
    property vlcofinssubtrib : currency read Fvlcofinssubtrib write Fvlcofinssubtrib;
    property vlbasecofinssubtrib : currency read Fvlbasecofinssubtrib write Fvlbasecofinssubtrib;
    property alcofinssubtrib : double read Falcofinssubtrib write Falcofinssubtrib;
    property nuchavenfe : string read Fnuchavenfe write Fnuchavenfe;
    property boretencaopis : String read Fboretencaopis write Fboretencaopis;
    property boretencaocofins : String read Fboretencaocofins write Fboretencaocofins;
    property vlinss : currency read Fvlinss write Fvlinss;
    property vlcontribsocial : currency read Fvlcontribsocial write Fvlcontribsocial;
    property boipibcicms : String read Fboipibcicms write Fboipibcicms;
    property vlbasefretesub : currency read Fvlbasefretesub write Fvlbasefretesub;
    property alfretesub : double read Falfretesub write Falfretesub;
    property vlfretesub : currency read Fvlfretesub write Fvlfretesub;
    property bocreditosttransporte : String read Fbocreditosttransporte write Fbocreditosttransporte;
    property boicmssubtribntotal : String read Fboicmssubtribntotal write Fboicmssubtribntotal;
    property nuserie : string read Fnuserie write Fnuserie;
    property nuchavenfse : string read Fnuchavenfse write Fnuchavenfse;
    property vlcofinsret : currency read Fvlcofinsret write Fvlcofinsret;
    property vlpisret : currency read Fvlpisret write Fvlpisret;
    [fk]
    property cdentradact : integer read Fcdentradact write Fcdentradact;
    property nuentradact : integer read Fnuentradact write Fnuentradact;
    property bofreteitem : String read Fbofreteitem write Fbofreteitem;
    property nseqevento : integer read Fnseqevento write Fnseqevento;
    property boicmsstitem : String read Fboicmsstitem write Fboicmsstitem;
    property boarredondar : String read Fboarredondar write Fboarredondar;
    property bodescontoitem : String read Fbodescontoitem write Fbodescontoitem;
    property bonarredondarcofins : String read Fbonarredondarcofins write Fbonarredondarcofins;
    property bonarredondarpis : String read Fbonarredondarpis write Fbonarredondarpis;
    property vlretencao : currency read Fvlretencao write Setvlretencao;
    property borateiocntcusto : string read fborateiocntcusto write fborateiocntcusto;
    property borateioplconta : string read fborateioplconta write fborateioplconta;
    constructor create;
    destructor destroy; override;
    function BaixarProdutoData(dti, dtf: TDate; nudias: Integer):boolean;
    function CodigoNotaFiscal(nu:string):integer;
    function Existebaixaautpagto(cdentrada:string):boolean;
    function ExisteBaixaConta(codigo:string):boolean;
    function existeNotaFiscal(codigo, numero, nuserie, nudocfiscalicms, cdfornecedor, cdcliente: string):boolean;
    function gerarDevolucaoSimples(cdsaida, cdtpentrada, cdcfop, nuentrada: integer; nuserie, nudocfiscalicms, nuchavenfe:string; dtemissao: TDate):Integer;
    function nfeCodigoInterno(nfea: TACBrNFe):string;
    function nfeDaDmpresa(nfea: TACBrNFe):boolean;
    function nfeExiste(nfea: TACBrNFe):boolean;
    function setst(dti, dtf: TDate):Boolean;
    function vlpisrecupera : Currency;
    function vlcofinsrecupera: Currency;
    function vlicmsrecupera: Currency;
    function vlbaseicmsrecupera: Currency;
    function vlipirecupera: Currency;
  end;
  TEntradaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TEntrada;
    procedure SetItem(Index: Integer; const Value: TEntrada);
  public
    function New: TEntrada;
    property Items[Index: Integer]: TEntrada read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(Dataset: TDataset):Boolean;overload;
    function Ler(sqlwhere:string):boolean;overload;
  end;
  TTelaentrada = class
  protected
    Ftela: Tentrada;
    Fdados: Tentrada;
    procedure setFieldsItentradaTela(cdsitentrada: TClientDataSet);
  public
    property dados : Tentrada read Fdados write Fdados;
    property tela : Tentrada read Ftela write Ftela;
    constructor create;
    destructor destroy; override;
    procedure setFields(codigo:integer);
    procedure salvar(cds, cdsitentrada: TClientDataSet);
  end;

implementation

uses
  classeregrast;

function TEntrada.existeNotaFiscal(codigo, numero, nuserie, nudocfiscalicms, cdfornecedor, cdcliente: string):boolean;
  function get_pessoa:string;
  begin
    if cdfornecedor <> '' then
    begin
      result := _cdfornecedor+'='+cdfornecedor
    end
    else if cdcliente <> '' then
    begin
      result := _cdcliente   +'='+cdcliente;
    end;
  end;
begin
  result := false;
  if (cdcliente = '') and (cdfornecedor = '') then
  begin
    exit;
  end;
  result := RetornaSQLInteger('select cdentrada '+
                              'from entrada '+
                              'where cdempresa='+empresa.cdempresa.tostring+' and nuentrada='+quotedstr(numero)+' and nuserie='+quotedstr(nuserie)+' and nudocfiscalicms='+quotedstr(nudocfiscalicms)+' '+
                              'and cdentrada<>'+codigo+' and '+get_pessoa)>0;
end;

function TEntrada.CodigoNotaFiscal(nu:string):integer;
var
  cont : integer;
begin
  cont := RetornaSQLInteger('select count(*) from entrada where cdempresa='+empresa.cdempresa.tostring+' and nuentrada='+quotedstr(nu));
  if cont = 0 then
  begin
    exit
  end;
  if cont = 1 then
  begin
    result := RetornaSQLinteger('select cdentrada from entrada where cdempresa='+empresa.cdempresa.tostring+' and nuentrada='+quotedstr(nu))
  end
  else if cont > 1 then
  begin
    result := selecionar_Entrada(_entrada, nu);
    if result = 0 then
    begin
      result := -1;
    end;
  end;
end;

function TEntrada.ExisteBaixaConta(codigo:string):boolean;
begin
  result := RegistroExiste(_baixa, _cdautpagto+'='+codigo);
end;

function TEntrada.Existebaixaautpagto(cdentrada:string):boolean;
begin
  result := RetornaSQLInteger('select count(*) from baixa inner join autpagto on autpagto.cdautpagto=baixa.cdautpagto and baixa.cdempresa=autpagto.cdempresa where baixa.cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+cdentrada) > 0;
end;

constructor TEntrada.create;
begin
  inherited;
  fcondpagto := tcondpagto.create;
  fautpagto := tautpagtolist.Create;
  ftpentrada := TTpentrada.create;
  fitentrada := titentradaList.create;
  ffornecedor := TFornecedor.create;
  fcliente := TCliente.create;
end;

function TEntrada.nfeDaDmpresa(nfea: TACBrNFe):boolean;
begin
  result := removercaracteres(nfea.NotasFiscais.Items[0].NFe.Dest.CNPJCPF) = Empresa.nucnpj_;
end;

function TEntrada.nfeExiste(nfea: TACBrNFe):boolean;
  function tabpessoa:string;
  begin
    if qregistro.stringdocodigo(_tpentrada, cdtpentrada, _TPFORNCLIENTE) = _F then
    begin
      result := _fornecedor
    end
    else
    begin
      result := _cliente;
    end;
  end;
begin
  result := RegistroExiste(_entrada, _cd+tabpessoa+'=' +CodigodoCampo(tabpessoa,Formatacnpj(nfea.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) ,_nucnpj) +' '+
                                           'and nuentrada='+inttostr(nfea.NotasFiscais.Items[0].NFe.Ide.nNF)+' '+
                                           'and dtemissao='+getdtbanco(nfea.NotasFiscais.Items[0].NFe.Ide.dEmi));
end;

function TEntrada.nfeCodigoInterno(nfea: TACBrNFe):string;
var
  cdfornecedor : string;
begin
  cdfornecedor := CodigodoCampo(_fornecedor,Formatacnpj(nfea.NotasFiscais.Items[0].NFe.Emit.CNPJCPF) ,_nucnpj);
  if cdfornecedor = '' then
  begin
    messagedlg('Fornecedor '+nfea.NotasFiscais.Items[0].NFe.Emit.xNome+' do CNPJ '+nfea.NotasFiscais.Items[0].NFe.Emit.CNPJCPF+' não está cadastrado.'#13'Cadastre o fornecedor antes de continuar.', mtinformation, [mbok], 0);
    abort; 
  end;
  result := RetornaSQLString('select cdentrada '+
                                   'from entrada '+
                                   'where cdempresa='+empresa.cdempresa.tostring+' '+
                                   'and cdfornecedor=' +cdfornecedor+' '+
                                   'and nuentrada='+inttostr(nfea.NotasFiscais.Items[0].NFe.Ide.nNF)+' '+
                                   'and dtemissao='+getdtbanco(nfea.NotasFiscais.Items[0].NFe.Ide.dEmi));
end;

function TEntrada.setst(dti, dtf: TDate): Boolean;
var
  q : TClasseQuery;
  nusticms, nustipi, nustpis, nustcofins : string;
  sql, erro : TStrings;
  procedure get_st(var nust:string; imposto, nurecupera:string);
  var
    regrast : TRegraST;
  begin
    regrast := TRegraST.Create;
    try
      nust := regrast.GetST(_entrada, q.q.fieldbyname(_cdproduto).AsInteger, q.q.fieldbyname(_cdcfop).AsInteger, imposto);
    finally
      FreeAndNil(regrast);
    end;
    if (q.q.fieldbyname(_borecupera+imposto).AsString = _S) and (nust <> nurecupera) then
    begin
      if (q.q.fieldbyname(_nuentrada).AsString = '29383') and ((imposto = _pis) or (imposto = _cofins)) then
      begin
        Exit;
      end;
      erro.Add('Nota Fiscal: '+q.q.fieldbyname(_nuentrada).asstring+
               ' - CFOP '+q.q.fieldbyname(_cdcfop).asstring+
               ' - '+imposto+' atual '+q.q.fieldbyname(_nust+imposto).asstring+
               ' - '+imposto+' novo  '+nust+
               ' - Produto: '+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring);
    end;
  end;
begin
  result         := False;
  erro           := TStringList.Create;
  sql            := tstringList.create;
  q              := TClasseQuery.Create('select i.cdentrada'+
                                              ',i.cditentrada'+
                                              ',i.cdproduto'+
                                              ',p.nmproduto'+
                                              ',i.nusticms'+
                                              ',i.nustipi'+
                                              ',i.nustpis'+
                                              ',i.nustcofins'+
                                              ',e.dtsaida'+
                                              ',e.nuentrada'+
                                              ',i.borecuperaicms'+
                                              ',i.borecuperapis'+
                                              ',i.borecuperaipi'+
                                              ',i.borecuperacofins'+
                                              ',e.cdcliente'+
                                              ',e.cdfornecedor'+
                                              ',i.cdcfop '+
                                        'from itentrada i '+
                                        'inner join entrada e on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
                                        'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                                        'where i.cdempresa='+empresa.cdempresa.tostring+' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
                                        'order by e.dtsaida');
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := 100;
    frmprogressbar.Show;
    while not q.q.Eof do
    begin
      frmprogressbar.pnl.Caption := 'Processando dia '+formatdatetime(_dd_mm_yyyy, q.q.fieldbyname(_dtsaida).asdatetime);
      frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
      if frmprogressbar.gau.Progress = 100 then
      begin
        frmprogressbar.gau.Progress := 1;
      end;
      Application.ProcessMessages;
      get_st(nusticms  , _icms  , _00);
      get_st(nustipi   , _ipi   , _00);
      get_st(nustpis   , _pis   , _53);
      get_st(nustcofins, _cofins, _53);
      if (nusticms <> '') and (nustipi <> '') and (nustpis <> '') and (nustcofins <> '') then
      begin
        sql.add('update itentrada '+
                'set nusticms='+quotedstr(nusticms)+
                  ',nustipi='+quotedstr(nustipi)+
                  ',nustpis='+quotedstr(nustpis)+
                  ',nustcofins='+quotedstr(nustcofins)+' '+
                  'where cdempresa='+empresa.cdempresa.tostring+' and cdentrada='+q.q.fieldbyname(_cdentrada).asstring+' and cditentrada='+q.q.fieldbyname(_cditentrada).asstring+';');
      end
      else
      begin
        erro.Add('nusticms='+quotedstr(nusticms)+' - nustipi='+quotedstr(nustipi)+' - '+
                 'nustpis='+quotedstr(nustpis)+' - nustcofins='+quotedstr(nustcofins)+' - '+
                 'Nota Fiscal: '+q.q.fieldbyname(_nuentrada).asstring+
                 ' - Produto: '+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).AsString);

      end;
      q.q.Next;
    end;
    if erro.Count > 0 then
    begin
      ExibirSaidaVideo(erro);
    end
    else
    begin
      ExibirSaidaVideo(sql);
    end;
  finally
    FreeAndNil(q);
    FreeAndNil(frmprogressbar);
    FreeAndNil(erro);
    FreeAndNil(sql);
  end;
end;

procedure TEntrada.Setvlretencao(const Value: currency);
begin
  Fvlretencao := Value;
end;

function TEntrada.vlbaseicmsrecupera: Currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to Itentrada.Count - 1 do
  begin
    if itentrada.Items[i].borecuperaicms = _s then
    begin
      result := result + itentrada.Items[i].vlbaseicms;
    end;
  end;
end;

function TEntrada.vlcofinsrecupera: Currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to Itentrada.Count - 1 do
  begin
    if itentrada.Items[i].borecuperacofins = _s then
    begin
      result := result + itentrada.Items[i].vlcofins;
    end;
  end;
end;

function TEntrada.vlicmsrecupera: Currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to Itentrada.Count - 1 do
  begin
    if itentrada.Items[i].borecuperaicms = _s then
    begin
      result := result + itentrada.Items[i].vlicms;
    end;
  end;
end;

function TEntrada.vlipirecupera: Currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to Itentrada.Count - 1 do
  begin
    if itentrada.Items[i].borecuperaipi = _s then
    begin
      result := result + itentrada.Items[i].vlipi;
    end;
  end;
end;

function TEntrada.vlpisrecupera: Currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to Itentrada.Count - 1 do
  begin
    if itentrada.Items[i].borecuperapis = _s then
    begin
      result := result + itentrada.Items[i].vlpis;
    end;
  end;
end;

function TEntrada.BaixarProdutoData(dti, dtf: TDate; nudias: Integer): boolean;
  function BaixarProduto(cdentrada:string; nudias: Integer=0):boolean;
  var
    q : TClasseQuery;
    sql : TStrings;
    i : integer;
    texto : string;
    procedure gerar_baixa;
      function get_dtemissao:TDate;
      begin
        result := q.q.fieldbyname(_dtsaida).AsDateTime + nudias;
        if FormatDateTime(_mmYYYY, result) <>  FormatDateTime(_mmYYYY, q.q.fieldbyname(_dtsaida).AsDateTime) then
        begin
          result := Ultimo_Dia_Mes(q.q.fieldbyname(_dtsaida).AsDateTime);
        end;
      end;
    var
      movto : TMovto;
    begin
      movto := tmovto.create;
      try
        movto.cdmovto   := QGerar.GerarCodigo(_movto);
        movto.dtemissao := DtBanco;
        movto.cdtpmovto := 1;
        movto.dtemissao := get_dtemissao;
        movto.cditentrada := q.q.fieldbyname(_cditentrada).AsInteger;
        sql.Add(movto.Insert(true));
        movto.ItMovto.New;
        movto.ItMovto.Items[movto.ItMovto.Count-1].cdmovto    := movto.cdmovto;
        movto.ItMovto.Items[movto.ItMovto.Count-1].cditmovto  := QGerar.GerarCodigo(_itmovto);
        movto.ItMovto.Items[movto.ItMovto.Count-1].cdcntcusto := q.q.fieldbyname(_cdcntcusto).AsInteger;
        movto.ItMovto.Items[movto.ItMovto.Count-1].cdproduto  := q.q.fieldbyname(_cdproduto).AsInteger;
        movto.ItMovto.Items[movto.ItMovto.Count-1].qtitem     := q.q.fieldbyname(_qtitem).AsFloat;
        movto.ItMovto.Items[movto.ItMovto.Count-1].cddigitado := q.q.fieldbyname(_cdproduto).AsString;
        sql.Add(movto.ItMovto.Items[movto.ItMovto.count-1].Insert(true));
      finally
        freeandnil(movto);
      end;
    end;
    procedure atualizar_baixa;
    begin
      sql.add('delete from movto where cdempresa='+empresa.cdempresa.tostring+' and cditentrada='+q.q.fieldbyname(_cditentrada).asstring+';');
      gerar_baixa;
    end;
  begin
    sql := tstringlist.create;
    q   := TClasseQuery.create('select i.cdentrada'+
                                     ',i.cditentrada'+
                                     ',i.cdproduto'+
                                     ',i.qtitem'+
                                     ',i.cdcntcusto'+
                                     ',i.tsinclusao'+
                                     ',i.cdusuarioi'+
                                     ',i.cdcomputadori'+
                                     ',i.tsalteracao'+
                                     ',i.cdusuarioa'+
                                     ',i.cdcomputadora'+
                                     ',m.cditentrada cditentrada1'+
                                     ',im.qtitem qtitem1'+
                                     ',e.dtemissao'+
                                     ',I.CDEMPRESA'+
                                     ',e.dtsaida '+
                               'from itentrada i '+
                               'left join entrada e on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
                               'left join cfop c on c.cdcfop=i.cdcfop '+
                               'left join movto m on m.cditentrada=i.cditentrada and i.cdempresa=m.cdempresa '+
                               'left join itmovto im on im.cdmovto=m.cdmovto and im.cdproduto=i.cdproduto and im.cdempresa=m.cdempresa '+
                               'where i.cdempresa='+empresa.cdempresa.tostring+' and c.bolivroproducao=''S'' and i.cdentrada='+cdentrada);
    try
      while not q.q.Eof do
      begin
        if q.q.fieldbyname(_cdentrada).IsNull then
        begin
          gerar_baixa
        end
        else if q.q.fieldbyname(_qtitem).AsInteger <> q.q.fieldbyname(_qtitem+_1).AsInteger then
        begin
          Atualizar_baixa;
        end;
        q.q.next;
      end;
      for i := 0 to sql.count - 1 do
      begin
        texto := sql[i];
        ExecutaSQL(sql[i]);
      end;
      result := true;
    finally
      freeandnil(q);
      freeandnil(sql);
    end;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('select cdentrada from entrada where cdempresa='+empresa.cdempresa.tostring+' and dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf));
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    frmprogressbar.Show;
    while not q.q.Eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      BaixarProduto(q.q.fieldbyname(_cdentrada).AsString, nudias);
      q.q.Next;
    end;
    result := True;
  finally
    FreeAndNil(q);
    FreeAndNil(frmprogressbar);
  end;
end;

function TEntrada.gerarDevolucaoSimples(cdsaida, cdtpentrada, cdcfop, nuentrada: integer; nuserie, nudocfiscalicms, nuchavenfe:string; dtemissao: TDate):Integer;
var
  s, sit, centrada, citentrada: TClasseQuery;
  x, i : integer;
begin
  s          := TClasseQuery.Create('SELECT saida.*,s.nuSerie FROM SAIDA '+
                                    'inner join serie s on s.cdserie=saida.cdserie and s.cdempresa=saida.cdempresa '+
                                    'WHERE s.cdempresa='+empresa.cdempresa.tostring+' and CDSAIDA='+cdsaida.ToString);
  sit        := TClasseQuery.Create(QRetornaSQL.get_select_from(_itsaida, cdsaida, _cdsaida));
  centrada   := TClasseQuery.Create(QRetornaSQL.get_select_from(_entrada, _0), true);
  citentrada := TClasseQuery.Create(QRetornaSQL.get_select_from(_itentrada, _0), true);
  try
    centrada.q.Insert;
    for i := 0 to centrada.q.FieldCount - 1 do
    begin
      for x := 0 to s.q.FieldCount - 1 do
      begin
        if centrada.q.Fields[i].FieldName = s.q.Fields[x].FieldName then
        begin
           if centrada.q.Fields[i].FieldName = uppercase(_cdcfop) then
           begin
             centrada.q.Fields[i].asinteger := cdcfop
           end
           else
           begin
             qregistro.set_field_type_assign(s.q, centrada.q, i)
           end;
        end;
      end;
    end;
    RegistraInformacao_(centrada.q);
    result                                    := qgerar.GerarCodigo(_entrada);
    centrada.q.FieldByName(_cdentrada).AsInteger := result;
    // número de série
    centrada.q.FieldByName(_dtemissao).AsDateTime     := DtBanco;
    centrada.q.FieldByName(_cdtpentrada).asinteger    := cdtpentrada;
    centrada.q.FieldByName(_dtsaida).AsDateTime       := centrada.q.FieldByName(_dtemissao).AsDateTime;
    centrada.q.FieldByName(_nuentrada).asinteger      := nuentrada;
    centrada.q.FieldByName(_nuserie).AsString         := nuserie;
    centrada.q.FieldByName(_nuchavenfe).AsString      := nuchavenfe;
    centrada.q.FieldByName(_nudocfiscalicms).AsString := nudocfiscalicms;
    centrada.q.FieldByName(_dtemissao).AsDateTime     := dtemissao;
    centrada.q.FieldByName(_dtsaida).AsDateTime       := DtBanco;
    aplicacao.aplyupdates(centrada.q);

    while not sit.q.Eof do
    begin
      citentrada.q.Insert;
      for i := 0 to citentrada.q.FieldCount - 1 do
      begin
        for x := 0 to sit.q.FieldCount - 1 do
        begin
          if citentrada.q.Fields[i].FieldName = sit.q.Fields[x].FieldName then
          begin
            if sit.q.Fields[x].FieldName = UpperCase(_cdcfop) then
            begin
              citentrada.q.Fields[i].asinteger := cdcfop
            end
            else
            begin
              qregistro.set_field_type_assign(sit.q, citentrada.q, x, i);
            end;
          end;
        end;
      end;
      RegistraInformacao_(citentrada.q);
      citentrada.q.FieldByName(_cdentrada).asinteger   := result;
      citentrada.q.FieldByName(_cditentrada).AsInteger := QGerar.GerarCodigo(_itentrada);
      aplicacao.aplyupdates(citentrada.q);
      sit.q.Next;
    end;
  finally
    freeandnil(s);
    freeandnil(sit);
    freeandnil(centrada);
    freeandnil(citentrada);
  end;
end;

destructor TEntrada.destroy;
begin
  FreeAndNil(fcondpagto);
  FreeAndNil(fautpagto);
  FreeAndNil(fItentrada);
  FreeAndNil(ftpentrada);
  FreeAndNil(ffornecedor);
  FreeAndNil(fcliente);
  inherited;
end;

procedure TEntrada.Setautpagto(const Value: tautpagtolist);
begin
  Fautpagto := Value;
end;

procedure TEntrada.Setcondpagto(const Value: tcondpagto);
begin
  Fcondpagto := Value;
end;

procedure TEntrada.Setnucntcusto(const Value: string);
begin
  Fnucntcusto := Value;
end;

procedure TItEntradaList.CalcularImpostoIcmsItem;
var
  vlbaseicms : real;
  I: Integer;
  q : tclassequery;
begin
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := count;
    frmprogressbar.Show;
    for I := 0 to count-1 do
    begin
      frmprogressbar.gau.Progress := i + 1;
      frmprogressbar.pnl.Caption := 'Recalculando Base ICMS não tributável - Compra - Registro '+frmprogressbar.gau.Progress.ToString+' de '+frmprogressbar.gau.MaxValue.ToString;
      application.ProcessMessages;
      q := tclassequery.create('select tpentrada.boicms,entrada.boipibcicms,entrada.boarredondar '+
                               'from entrada '+
                               'inner join tpentrada on tpentrada.cdempresa=entrada.cdempresa and tpentrada.cdtpentrada=entrada.cdtpentrada '+
                               'where entrada.cdempresa='+items[i].cdempresa.tostring+' and entrada.cdentrada='+inttostr(items[i].cdentrada));
      try
        if (q.q.FieldByName(_boicms).AsString <> _s) or (items[i].alicms = 0) or (items[i].alicms <= 0) then
        begin
          items[i].vlbaseicmsntributavel := 0;
          items[i].vlbaseicmsoriginal := 0;
        end
        else
        begin
          vlbaseicms := items[i].vltotal - items[i].vldesconto + items[i].vloutdespesa + items[i].vlseguro + items[i].vlfrete;
          if q.q.FieldByName(_boipibcicms).asstring = _S then
          begin
            vlbaseicms := vlbaseicms + items[i].vlipi;
          end;
          vlbaseicms := QRotinas.Roundqp(vlbaseicms, q.q.FieldByName(_boarredondar).asstring=_S);
          items[i].vlbaseicmsoriginal := vlbaseicms;
          items[i].vlbaseicmsntributavel := items[i].vlbaseicmsoriginal - items[i].vlbaseicms;
        end;
      finally
        freeandnil(q);
      end;
      items[i].Update;
    end;
  finally
    freeandnil(frmprogressbar);
  end;
end;

function TItEntradaList.GetItem(Index: Integer): TItEntrada;
begin
  Result := TItEntrada(Inherited Items[Index]);
end;

function TItEntradaList.Ler(Dataset: TDataset): Boolean;
begin
  clear;
  result := False;
  dataset.First;
  while not dataset.Eof do
  begin
    new.select(dataset);
    dataset.Next;
    result := True;
  end;
end;

function TItEntradaList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itEntrada, codigo, _cdEntrada));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TItEntradaList.New: TItEntrada;
begin
  Result := TItEntrada.Create;
  Add(Result);
end;

class procedure TItEntradaList.RecalcularBaseICMSnaoTributavel;
var
  itentrada : titentradalist;
begin
  itentrada := titentradalist.Create;
  try
    itentrada.Ler(_alicmsred+'>'+_0);
    itentrada.CalcularImpostoIcmsItem;
  finally
    freeandnil(itentrada);
  end;
end;

procedure TItEntradaList.SetItem(Index: Integer; const Value: TItEntrada);
begin
  Put(Index, Value);
end;

{function TItEntradaList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    if Items[i].state = dsinsert then
    begin
      result := result + titEntradadao.Insert(Items[i], true)+#13;
    end;
  end;
end;}

procedure TItEntradaList.VerificarRecuperaoImposto(dataset: TDataset);
var
  I: Integer;
begin
  if empresa.tpregime = _s then
  begin
    exit;
  end;
  for I := 0 to count -1 do
  begin
    if (items[i].cdcfop = 1201) and (items[i].borecuperaipi <> _s) then
    begin
      items[i].borecuperaipi := _s;
      if dataset.Locate(_cditentrada, items[i].cditentrada, []) then
      begin
        dataset.Edit;
        dataset.FieldByName(_borecuperaipi).AsString := _s;
        dataset.Post;
      end;
    end;
  end;
end;

constructor TTelaentrada.create;
begin
  inherited;
  fdados := tentrada.create;
  Ftela  := tentrada.create;
end;

destructor TTelaentrada.destroy;
begin
  FreeAndNil(fdados);
  FreeAndNil(ftela);
  inherited;
end;

procedure TTelaentrada.salvar(cds, cdsitentrada: TClientDataSet);
begin
  tela.select(cds);
  setFieldsItentradaTela(cdsitentrada);
end;

procedure TTelaentrada.setFields(codigo: integer);
begin
  dados.select(codigo);
  dados.itentrada.Ler(codigo);
end;

procedure TTelaentrada.setFieldsItentradaTela(cdsitentrada: TClientDataSet);
begin
  tela.itentrada.Ler(cdsitentrada);
end;

function TTpEntrada.getcdcfop(nusticms: string; cduf: integer): integer;
var
  sticms : tsticms;
begin
  result := 0;
  if (nusticms = '') or (cduf = 0) then
  begin
    exit;
  end;
  sticms := tsticms.create;
  try
    if not sticms.select(nusticms) then
    begin
      exit;
    end;
    if cduf = empresa.endereco.cduf then
    begin
      if sticms.boicmssubtrib = _s then
      begin
        result := cdcfopdufsubtrib;
      end
      else
      begin
        result := cdcfopduf;
      end;
    end
    else
    begin
      if sticms.boicmssubtrib = _s then
      begin
        result := cdcfopfufsubtrib;
      end
      else
      begin
        result := cdcfopfuf;
      end;
    end;
  finally
    freeandnil(sticms);
  end;
end;

function TItEntradaList.Ler(sqlwhere: string): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_itentrada, sqlwhere));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

{ TITentrada }

constructor TITentrada.create;
begin
  inherited;
  fproduto := tproduto.create;
end;

destructor TITentrada.destroy;
begin
  freeandnil(fproduto);
  inherited;
end;

{ TEntradaList }

function TEntradaList.GetItem(Index: Integer): TEntrada;
begin
  Result := Tentrada(Inherited Items[Index]);
end;

function TEntradaList.Ler(codigo: Integer; cdfield:string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_entrada, codigo, cdfield));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TEntradaList.Ler(sqlwhere: string): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_entrada, sqlwhere));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TEntradaList.Ler(Dataset: TDataset): Boolean;
begin
  clear;
  result := False;
  dataset.First;
  while not dataset.Eof do
  begin
    new.select(dataset);
    dataset.Next;
    result := True;
  end;
end;

function TEntradaList.New: TEntrada;
begin
  Result := Tentrada.Create;
  Add(Result);
end;

procedure TEntradaList.SetItem(Index: Integer; const Value: TEntrada);
begin
  Put(Index, Value);
end;

end.
