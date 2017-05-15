unit classepedido;

interface

uses
  system.UITypes, System.Actions,
  Forms, Classes, sysutils, Controls, Dialogs, Contnrs,
  DB, DBClient,
  uRotinas, uprogressbar, uRegistro, uconstantes, udatahora, ustrings, uSelecionarEntrada,
  classeordproducao, classeempresa, classeregistrainformacao, classegerar, classeproduto,
  classequery, classeaplicacao, classeexecutasql, classecondpagto, classetpcobranca, classecliente,
  classefuncionario, classetpfrete, classeretornasql, classedao;

Type
  TPedidoDuplicata = class(TRegistroQuipos)
  private
    Fcdpedidoduplicata: integer;
    Fnuduplicata: string;
    Fdsobservacao: string;
    Fvlpedidoduplicata: currency;
    Fvlsaldo: currency;
    Fdtprorrogacao: TDate;
    Fcdpedido: integer;
    Fdtemissao: TDate;
  public
    [keyfield]
    property cdpedidoduplicata : integer read Fcdpedidoduplicata write fcdpedidoduplicata;
    [fk]
    property cdpedido : integer read Fcdpedido write fcdpedido;
    property vlpedidoduplicata : currency read Fvlpedidoduplicata write fvlpedidoduplicata;
    property dtprorrogacao : TDate read Fdtprorrogacao write fdtprorrogacao;
    property dtemissao : TDate read Fdtemissao write fdtemissao;
    property vlsaldo : currency read Fvlsaldo write fvlsaldo;
    property nuduplicata : string read Fnuduplicata write fnuduplicata;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
  end;
  TPedidoDuplicataList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TPedidoDuplicata;
    procedure SetItem(Index: Integer; const Value: TPedidoDuplicata);
  public
    function New: TPedidoDuplicata;
    property Items[Index: Integer]: TPedidoDuplicata read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):Boolean;overload;
  end;
  TItPedidoEstrutura = class(TRegistroQuipos)
  private
    Fbofaturado: String;
    Fcditpedidoestrutura: integer;
    Fcditpedido: Integer;
    Fnuestrutural: string;
  public
    [keyfield]
    property cditpedidoestrutura : integer read Fcditpedidoestrutura write Fcditpedidoestrutura;
    [fk]
    property cditpedido : Integer read Fcditpedido write Fcditpedido;
    property nuestrutural : string read Fnuestrutural write Fnuestrutural;
    property bofaturado : string read Fbofaturado write Fbofaturado;
  end;
  TitpedidoestruturaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Titpedidoestrutura;
    procedure SetItem(Index: Integer; const Value: Titpedidoestrutura);
  public
    function New: Titpedidoestrutura;
    property Items[Index: Integer]: Titpedidoestrutura read GetItem write SetItem;
    function Ler(codigo:Integer):boolean;
  end;
  TITPedido = class(TRegistroQuipos)
  private
    fstate : TDataSetState;
    fcditpedido : Integer;
    fcdpedido : integer;
    fcdproduto : Integer;
    fcdtpgradevalor : Integer;
    fcdstitpedido : Integer;
    fcditorcamento : Integer;
    fcdtpicms : Integer;
    fcdprodutoembalagem : Integer;
    fcdtpipi : Integer;
    fcdprofissional : Integer;
    fcdfornecedor : LargeInt;
    fqtitem : Double;
    fvlunitario : Double;
    fqtatendida : Double;
    fcddigitado : string;
    fvltotal : Currency;
    fvlipi : Currency;
    falipi : Double;
    fvltotalcipi : Currency;
    fdtprventrega : TDate;
    fqtlargura1 : Double;
    fqtlargura2 : Double;
    fqtaltura1 : Double;
    fqtaltura2 : Double;
    fqtcomprimento1 : Double;
    fqtcomprimento2 : Double;
    fqtdiametroexterno : Double;
    fqtdiametroexterno2 : Double;
    fqtdiametrofuro : Double;
    fqtcomprimento3 : Double;
    fqtdiametrocorpo : Double;
    fdsformula : string;
    fqtpeso : Double;
    fvlquilo : Currency;
    fdsdesenho : string;
    fvlmaquina : Currency;
    fvlpeca : Currency;
    falmva : Double;
    fvlicmssubtrib : Currency;
    fvlfrete : Currency;
    fvldesconto : Currency;
    falicms : Double;
    falicmssubtrib : Double;
    fnucotacao : string;
    fnuitem : string;
    fvlicms : Currency;
    fqtpeca : Double;
    fdsobservacao : string;
    fdsdesenhoposicao : string;
    fdsdesenhorevisao : string;
    fprlucro : Double;
    fdsposicaodesenho : string;
    fnurevisaodesenho : string;
    fnudiasentrega : Integer;
    falpis : Double;
    fvlpis : Currency;
    falcofins : Double;
    fvlcofins : Currency;
    falcsll : Double;
    fvlcsll : Currency;
    falirpj : Double;
    fvlirpj : Currency;
    fvlproducao : Currency;
    fvlmaterial : Currency;
    fvlcusto : Currency;
    fvlpreparacao : Currency;
    fvloperacao : Currency;
    fqtoperacao : Double;
    fqtpreparacao : Double;
    fqthora : Double;
    fvlproducaop : Currency;
    fvlmaterialp : Currency;
    fvlcustop : Currency;
    fvlpreparacaop : Currency;
    fvloperacaop : Currency;
    fqtpreparacaop : Double;
    fqtoperacaop : Double;
    fqthorap : Double;
    fvlpisp : Currency;
    fvlcofinsp : Currency;
    fvlcsllp : Currency;
    fvlirpjp : Currency;
    fvlicmsp : Currency;
    fvlipip : Currency;
    fnuprazoentrega : Integer;
    fdtaprovacao : TDate;
    fvllucro : Currency;
    fvllucrop : Currency;
    faliss : Double;
    fvlissp : Currency;
    fvliss : Currency;
    fvlimpostop : Currency;
    fvlimposto : Currency;
    fvlvendaliquidap : Currency;
    fvlvendaliquida : Currency;
    fvllucrobrutop : Currency;
    fvllucrobruto : Currency;
    fvldespesa : Currency;
    fvldespesap : Currency;
    fvldespesaadministrativa : Currency;
    fvldespesaadministrativap : Currency;
    fvldespesafretep : Currency;
    fvldespesafrete : Currency;
    fvldespesacomercialp : Currency;
    fvldespesacomercial : Currency;
    fvldespesaembalagemp : Currency;
    fvldespesaembalagem : Currency;
    fvldespesasegurop : Currency;
    fvldespesaseguro : Currency;
    fvllucroircsp : Currency;
    fvllucroircs : Currency;
    fprdespesaadministrativa : Double;
    fprdespesafrete : Double;
    fprdespesacomercial : Double;
    fprdespesaembalagem : Double;
    fprdespesaseguro : Double;
    fvlircsllp : Currency;
    fvlircsll : Currency;
    falcpp : double;
    fvlcppp : Double;
    fvlcpp : Double;
    falsimples : Double;
    fvlsimplesp : Currency;
    fvlsimples : Currency;
    fvlsimplessp : Currency;
    fvlrecursop : Currency;
    fvlrecurso : Currency;
    fboipibcicms : String;
    fnuitpedido : Integer;
    fprdesconto : Double;
    fqtconferencia : Double;
    fcddigitadoembalagem : string;
    fdtrevisao : TDate;
    fcdstembarque : Integer;
    fnurevisao : Integer;
    fcdtprevisaocomercial : Integer;
    fdtembarque : TDate;
    fhrembarque : TTime;
    fdtdesembarque : TDate;
    fcdtpvolume : Integer;
    fqtvolume : Integer;
    fcdtransportadora : largeint;
    fvlacrescimo : Currency;
    fdtemissao : TDate;
    fqtpecaatendida : Double;
    fcdtpitpedido : Integer;
    fproduto: TProduto;
    fordproducao: TOrdProducao;
    fitpedidoestrutura : TitpedidoestruturaList;
  public
    property itpedidoestrutura : TitpedidoestruturaList read fitpedidoestrutura write fitpedidoestrutura;
    property ordproducao : TOrdProducao read fordproducao write fordproducao;
    property produto: TProduto read fproduto write fproduto;
    property state : TDataSetState read fstate write fstate;
    [keyfield]
    property cditpedido : Integer read fcditpedido write fcditpedido;
    [fk]
    property cdpedido : integer read fcdpedido write fcdpedido;
    [fk]
    property cdproduto : Integer read fcdproduto write fcdproduto;
    [fk]
    property cdtpgradevalor : Integer read fcdtpgradevalor write fcdtpgradevalor;
    [fk]
    property cdstitpedido : Integer read fcdstitpedido write fcdstitpedido;
    [fk]
    property cditorcamento : Integer read fcditorcamento write fcditorcamento;
    [fk]
    property cdtpicms : Integer read fcdtpicms write fcdtpicms;
    [fk]
    property cdprodutoembalagem : Integer read fcdprodutoembalagem write fcdprodutoembalagem;
    [fk]
    property cdtpipi : Integer read fcdtpipi write fcdtpipi;
    [fk]
    property cdprofissional : Integer read fcdprofissional write fcdprofissional;
    [fk]
    property cdfornecedor : LargeInt read fcdfornecedor write fcdfornecedor;
    property qtitem : Double read fqtitem write fqtitem;
    property vlunitario : Double read fvlunitario write fvlunitario;
    property qtatendida : Double read fqtatendida write fqtatendida;
    property cddigitado : string read fcddigitado write fcddigitado;
    property vltotal : Currency read fvltotal write fvltotal;
    property vlipi : Currency read fvlipi write fvlipi;
    property alipi : Double read falipi write falipi;
    property vltotalcipi : Currency read fvltotalcipi write fvltotalcipi;
    property dtprventrega : TDate read fdtprventrega write fdtprventrega;
    property qtlargura1 : Double read fqtlargura1 write fqtlargura1;
    property qtlargura2 : Double read fqtlargura2 write fqtlargura2;
    property qtaltura1 : Double read fqtaltura1 write fqtaltura1;
    property qtaltura2 : Double read fqtaltura2 write fqtaltura2;
    property qtcomprimento1 : Double read fqtcomprimento1 write fqtcomprimento1;
    property qtcomprimento2 : Double read fqtcomprimento2 write fqtcomprimento2;
    property qtdiametroexterno : Double read fqtdiametroexterno write fqtdiametroexterno;
    property qtdiametroexterno2 : Double read fqtdiametroexterno2 write fqtdiametroexterno2;
    property qtdiametrofuro : Double read fqtdiametrofuro write fqtdiametrofuro;
    property qtcomprimento3 : Double read fqtcomprimento3 write fqtcomprimento3;
    property qtdiametrocorpo : Double read fqtdiametrocorpo write fqtdiametrocorpo;
    property dsformula : string read fdsformula write fdsformula;
    property qtpeso : Double read fqtpeso write fqtpeso;
    property vlquilo : Currency read fvlquilo write fvlquilo;
    property dsdesenho : string read fdsdesenho write fdsdesenho;
    property vlmaquina : Currency read fvlmaquina write fvlmaquina;
    property vlpeca : Currency read fvlpeca write fvlpeca;
    property almva : Double read falmva write falmva;
    property vlicmssubtrib : Currency read fvlicmssubtrib write fvlicmssubtrib;
    property vlfrete : Currency read fvlfrete write fvlfrete;
    property vldesconto : Currency read fvldesconto write fvldesconto;
    property alicms : Double read falicms write falicms;
    property alicmssubtrib : Double read falicmssubtrib write falicmssubtrib;
    property nucotacao : string read fnucotacao write fnucotacao;
    property nuitem : string read fnuitem write fnuitem;
    property vlicms : Currency read fvlicms write fvlicms;
    property qtpeca : Double read fqtpeca write fqtpeca;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    property dsdesenhoposicao : string read fdsdesenhoposicao write fdsdesenhoposicao;
    property dsdesenhorevisao : string read fdsdesenhorevisao write fdsdesenhorevisao;
    property prlucro : Double read fprlucro write fprlucro;
    property dsposicaodesenho : string read fdsposicaodesenho write fdsposicaodesenho;
    property nurevisaodesenho : string read fnurevisaodesenho write fnurevisaodesenho;
    property nudiasentrega : Integer read fnudiasentrega write fnudiasentrega;
    property alpis : Double read falpis write falpis;
    property vlpis : Currency read fvlpis write fvlpis;
    property alcofins : Double read falcofins write falcofins;
    property vlcofins : Currency read fvlcofins write fvlcofins;
    property alcsll : Double read falcsll write falcsll;
    property vlcsll : Currency read fvlcsll write fvlcsll;
    property alirpj : Double read falirpj write falirpj;
    property vlirpj : Currency read fvlirpj write fvlirpj;
    property vlproducao : Currency read fvlproducao write fvlproducao;
    property vlmaterial : Currency read fvlmaterial write fvlmaterial;
    property vlcusto : Currency read fvlcusto write fvlcusto;
    property vlpreparacao : Currency read fvlpreparacao write fvlpreparacao;
    property vloperacao : Currency read fvloperacao write fvloperacao;
    property qtoperacao : Double read fqtoperacao write fqtoperacao;
    property qtpreparacao : Double read fqtpreparacao write fqtpreparacao;
    property qthora : Double read fqthora write fqthora;
    property vlproducaop : Currency read fvlproducaop write fvlproducaop;
    property vlmaterialp : Currency read fvlmaterialp write fvlmaterialp;
    property vlcustop : Currency read fvlcustop write fvlcustop;
    property vlpreparacaop : Currency read fvlpreparacaop write fvlpreparacaop;
    property vloperacaop : Currency read fvloperacaop write fvloperacaop;
    property qtpreparacaop : Double read fqtpreparacaop write fqtpreparacaop;
    property qtoperacaop : Double read fqtoperacaop write fqtoperacaop;
    property qthorap : Double read fqthorap write fqthorap;
    property vlpisp : Currency read fvlpisp write fvlpisp;
    property vlcofinsp : Currency read fvlcofinsp write fvlcofinsp;
    property vlcsllp : Currency read fvlcsllp write fvlcsllp;
    property vlirpjp : Currency read fvlirpjp write fvlirpjp;
    property vlicmsp : Currency read fvlicmsp write fvlicmsp;
    property vlipip : Currency read fvlipip write fvlipip;
    property nuprazoentrega : Integer read fnuprazoentrega write fnuprazoentrega;
    property dtaprovacao : TDate read fdtaprovacao write fdtaprovacao;
    property vllucro : Currency read fvllucro write fvllucro;
    property vllucrop : Currency read fvllucrop write fvllucrop;
    property aliss : Double read faliss write faliss;
    property vlissp : Currency read fvlissp write fvlissp;
    property vliss : Currency read fvliss write fvliss;
    property vlimpostop : Currency read fvlimpostop write fvlimpostop;
    property vlimposto : Currency read fvlimposto write fvlimposto;
    property vlvendaliquidap : Currency read fvlvendaliquidap write fvlvendaliquidap;
    property vlvendaliquida : Currency read fvlvendaliquida write fvlvendaliquida;
    property vllucrobrutop : Currency read fvllucrobrutop write fvllucrobrutop;
    property vllucrobruto : Currency read fvllucrobruto write fvllucrobruto;
    property vldespesa : Currency read fvldespesa write fvldespesa;
    property vldespesap : Currency read fvldespesap write fvldespesap;
    property vldespesaadministrativa : Currency read fvldespesaadministrativa write fvldespesaadministrativa;
    property vldespesaadministrativap : Currency read fvldespesaadministrativap write fvldespesaadministrativap;
    property vldespesafretep : Currency read fvldespesafretep write fvldespesafretep;
    property vldespesafrete : Currency read fvldespesafrete write fvldespesafrete;
    property vldespesacomercialp : Currency read fvldespesacomercialp write fvldespesacomercialp;
    property vldespesacomercial : Currency read fvldespesacomercial write fvldespesacomercial;
    property vldespesaembalagemp : Currency read fvldespesaembalagemp write fvldespesaembalagemp;
    property vldespesaembalagem : Currency read fvldespesaembalagem write fvldespesaembalagem;
    property vldespesasegurop : Currency read fvldespesasegurop write fvldespesasegurop;
    property vldespesaseguro : Currency read fvldespesaseguro write fvldespesaseguro;
    property vllucroircsp : Currency read fvllucroircsp write fvllucroircsp;
    property vllucroircs : Currency read fvllucroircs write fvllucroircs;
    property prdespesaadministrativa : Double read fprdespesaadministrativa write fprdespesaadministrativa;
    property prdespesafrete : Double read fprdespesafrete write fprdespesafrete;
    property prdespesacomercial : Double read fprdespesacomercial write fprdespesacomercial;
    property prdespesaembalagem : Double read fprdespesaembalagem write fprdespesaembalagem;
    property prdespesaseguro : Double read fprdespesaseguro write fprdespesaseguro;
    property vlircsllp : Currency read fvlircsllp write fvlircsllp;
    property vlircsll : Currency read fvlircsll write fvlircsll;
    property alcpp : double read falcpp write falcpp;
    property vlcppp : Double read fvlcppp write fvlcppp;
    property vlcpp : Double read fvlcpp write fvlcpp;
    property alsimples : Double read falsimples write falsimples;
    property vlsimplesp : Currency read fvlsimplesp write fvlsimplesp;
    property vlsimples : Currency read fvlsimples write fvlsimples;
    property vlsimplessp : Currency read fvlsimplessp write fvlsimplessp;
    property vlrecursop : Currency read fvlrecursop write fvlrecursop;
    property vlrecurso : Currency read fvlrecurso write fvlrecurso;
    property boipibcicms : String read fboipibcicms write fboipibcicms;
    property nuitpedido : Integer read fnuitpedido write fnuitpedido;
    property prdesconto : Double read fprdesconto write fprdesconto;
    property qtconferencia : Double read fqtconferencia write fqtconferencia;
    property cddigitadoembalagem : string read fcddigitadoembalagem write fcddigitadoembalagem;
    property dtrevisao : TDate read fdtrevisao write fdtrevisao;
    property cdstembarque : Integer read fcdstembarque write fcdstembarque;
    property nurevisao : Integer read fnurevisao write fnurevisao;
    property cdtprevisaocomercial : Integer read fcdtprevisaocomercial write fcdtprevisaocomercial;
    property dtembarque : TDate read fdtembarque write fdtembarque;
    property hrembarque : TTime read fhrembarque write fhrembarque;
    property dtdesembarque : TDate read fdtdesembarque write fdtdesembarque;
    [fk]
    property cdtpvolume : Integer read fcdtpvolume write fcdtpvolume;
    property qtvolume : Integer read fqtvolume write fqtvolume;
    [fk]
    property cdtransportadora : largeint read fcdtransportadora write fcdtransportadora;
    property vlacrescimo : Currency read fvlacrescimo write fvlacrescimo;
    property dtemissao : TDate read fdtemissao write fdtemissao;
    property qtpecaatendida : Double read fqtpecaatendida write fqtpecaatendida;
    [fk]
    property cdtpitpedido : Integer read fcdtpitpedido write fcdtpitpedido;
    constructor create;
    destructor destroy; override;
    function Gerar_Ordem_Producao(cdtpordproducao: Integer):Integer;
  end;
  tstpedido = class(TRegistroQuipos)
  private
    Fboexcluir: string;
    Fbogerarsaida: string;
    Fbogerarinfo: string;
    Fbonovo: string;
    Fbogerarordproducao: string;
    Fbogerartransporte: string;
    Fboalterar: string;
    Fnucor: Integer;
    Fcdstpedido: Integer;
    Fnmstpedido: string;
    Fboestoquedisponivel: string;
  public
    [keyfield]
    property cdstpedido : Integer read Fcdstpedido write Fcdstpedido;
    property nmstpedido : string read Fnmstpedido write Fnmstpedido;
    property nucor : Integer read Fnucor write Fnucor;
    property bonovo : string read Fbonovo write Fbonovo;
    property boalterar : string read Fboalterar write Fboalterar;
    property boexcluir : string read Fboexcluir write Fboexcluir;
    property bogerarinfo : string read Fbogerarinfo write Fbogerarinfo;
    property bogerarsaida : string read Fbogerarsaida write Fbogerarsaida;
    property bogerartransporte : string read Fbogerartransporte write Fbogerartransporte;
    property bogerarordproducao : string read Fbogerarordproducao write Fbogerarordproducao;
    property boestoquedisponivel : string read Fboestoquedisponivel write Fboestoquedisponivel;
  end;
  TTPPedido = class(TRegistroQuipos)
  private
    fboitemdsproduto : String;
    fboitemexibirtag2 : String;
    fboitemconferencia : String;
    fboitemtp : String;
    fboitemprecoprazo : String;
    fboitemdtemissao : String;
    fboitemacrescimo : String;
    fbonuestrutural : String;
    fboitemvlunitariomaiorvenda : String;
    fboitemvlminimo : String;
    fboitemdescontomaximo : String;
    fboitemchecknuclfiscal : String;
    fboitemvlunitarionegativo : String;
    fboitemproducao : String;
    fboitemrevisao : String;
    fboitemvlunitariozerado : String;
    fboitemobservacao : String;
    fboitemobservacaoinfadicional : String;
    fboitemdesconto : String;
    fboitemfornecedor : String;
    fboitemprofissional : String;
    fboitemembarque : String;
    fboitemfrete : String;
    fboitemtprevisaocomercial : String;
    fboitemformula : String;
    Fboitemobservacaointerna: String;
    fcdprofissional : Integer;
    fcdtpordproducao : integer;
    fcdtpfrete : String;
    fnmcditpedido : string;
    femailcopia : string;
    fdsassunto : string;
    fcdtppedido : integer;
    fcdtpsaida : integer;
    fnmtppedido : string;
    fdstitulo : string;
    fprdescontomaximo : Double;
    fboinfadicionalordcompra : String;
    fboacrescimo : String;
    fboinfadicionalformula : String;
    fboobservacaocopiarsaida : String;
    fbofornecedor : String;
    fboordproducaogerarautomatico : String;
    fbodescontoassinatura : String;
    fboorcamento : String;
    fboarquivo : String;
    fboduplicata : String;
    fboredespacho : String;
    fbocomissao : String;
    fborepresentante : String;
    fboestoque : String;
    fboprfretecidade : String;
    fboavisotarefa : String;
    fboordproducao : String;
    fboordproducaoqtitem : String;
    fboalterarvaloritem : String;
    fboreportmodotexto : String;
    fboreportmodotexto2 : String;
    fboreportorcamento : String;
    fboreportvenda : String;
    fboreportvendasimples : String;
    fboclienteentrega : String;
    fboicmssubtrib : String;
    fbomadeira : String;
    fborepresentanteusuario : String;
    fbofuncionariousuario : String;
    fbofrete : String;
    fbotransportadora : String;
    fbotransportadoraobrigatorio : String;
    fbofuncionario : String;
    fbonudias : String;
    fboicms : String;
    fboipi : String;
    fbodesconto : String;
    fbotpcobranca : String;
    fbodescontocomissao : String;
    fbotpgrade : String;
    fbodtprventregaitem : String;
    fbocotacao : String;
    fbocotacaoobrigatorio : String;
    fbonuitem : String;
    fbocertificado : String;
    fbocotacaoitem : String;
    fbocotacaoitemobrigatorio : String;
    fbodsdesenho : String;
    fboclienteatraso : String;
    fboitcontcliente : String;
    fboreportordemproducao : String;
    fbodsobservacaocliente : String;
    fboclienteconsistir : String;
    fboprofissional : String;
    fboprodutoembalagem : String;
    fnudiasentrega : integer;
    Fbodsreferenciaobrigatorio: String;
    fbopaciente: String;
    fbopacientealterarprofissao: String;
    fbopacientedtdemissao: String;
    fcdstpaciente : integer;
    fcdfaturista: integer;
    fboiss: String;
    Fbotpfreteobrigatorio: String;
    fboitemvlunitariotpcobranca: String;
    Fbofretentotal: String;
    Fborepresentanteobrigatorio: string;
    Fbocondpagtoobrigatorio: string;
    Fbotpcobrancaobrigatorio: string;
    fbodtentregaobrigatorio: string;
    fbodtentregavazio: string;
  public
    [keyfield]
    property cdtppedido : integer read fcdtppedido write fcdtppedido;
    [fk]
    property cdfaturista : integer read fcdfaturista write fcdfaturista;
    property bopaciente: String read fbopaciente write fbopaciente;
    property bopacientealterarprofissao: String read fbopacientealterarprofissao write fbopacientealterarprofissao;
    property bopacientedtdemissao: String read fbopacientedtdemissao write fbopacientedtdemissao;
    [fk]
    property cdstpaciente : integer read fcdstpaciente write fcdstpaciente;
    property boitemdsproduto : String read fboitemdsproduto write fboitemdsproduto;
    property boitemexibirtag2 : String read fboitemexibirtag2 write fboitemexibirtag2;
    property boitemconferencia : String read fboitemconferencia write fboitemconferencia;
    property boitemtp : String read fboitemtp write fboitemtp;
    property boitemprecoprazo : String read fboitemprecoprazo write fboitemprecoprazo;
    property boitemdtemissao : String read fboitemdtemissao write fboitemdtemissao;
    property boitemacrescimo : String read fboitemacrescimo write fboitemacrescimo;
    property bonuestrutural : String read fbonuestrutural write fbonuestrutural;
    property boitemvlunitariomaiorvenda : String read fboitemvlunitariomaiorvenda write fboitemvlunitariomaiorvenda;
    property boitemvlminimo : String read fboitemvlminimo write fboitemvlminimo;
    property boitemdescontomaximo : String read fboitemdescontomaximo write fboitemdescontomaximo;
    property boitemchecknuclfiscal : String read fboitemchecknuclfiscal write fboitemchecknuclfiscal;
    property boitemvlunitarionegativo : String read fboitemvlunitarionegativo write fboitemvlunitarionegativo;
    property boitemproducao : String read fboitemproducao write fboitemproducao;
    property boitemrevisao : String read fboitemrevisao write fboitemrevisao;
    property boitemvlunitariozerado : String read fboitemvlunitariozerado write fboitemvlunitariozerado;
    property boitemobservacao : String read fboitemobservacao write fboitemobservacao;
    property boitemobservacaoinfadicional : String read fboitemobservacaoinfadicional write fboitemobservacaoinfadicional;
    property boitemdesconto : String read fboitemdesconto write fboitemdesconto;
    property boitemfornecedor : String read fboitemfornecedor write fboitemfornecedor;
    property boitemprofissional : String read fboitemprofissional write fboitemprofissional;
    property boitemembarque : String read fboitemembarque write fboitemembarque;
    property boitemfrete : String read fboitemfrete write fboitemfrete;
    property boitemtprevisaocomercial : String read fboitemtprevisaocomercial write fboitemtprevisaocomercial;
    property boitemformula : String read fboitemformula write fboitemformula;
    property boitemobservacaointerna : String read Fboitemobservacaointerna write Fboitemobservacaointerna;
    [fk]
    property cdprofissional : Integer read fcdprofissional write fcdprofissional;
    [fk]
    property cdtpordproducao : integer read fcdtpordproducao write fcdtpordproducao;
    [fk]
    property cdtpfrete : String read fcdtpfrete write fcdtpfrete;
    property nmcditpedido : string read fnmcditpedido write fnmcditpedido;
    property emailcopia : string read femailcopia write femailcopia;
    property dsassunto : string read fdsassunto write fdsassunto;
    property cdtpsaida : integer read fcdtpsaida write fcdtpsaida;
    property nmtppedido : string read fnmtppedido write fnmtppedido;
    property dstitulo : string read fdstitulo write fdstitulo;
    property prdescontomaximo : Double read fprdescontomaximo write fprdescontomaximo;
    property boinfadicionalordcompra : String read fboinfadicionalordcompra write fboinfadicionalordcompra;
    property boacrescimo : String read fboacrescimo write fboacrescimo;
    property boinfadicionalformula : String read fboinfadicionalformula write fboinfadicionalformula;
    property boobservacaocopiarsaida : String read fboobservacaocopiarsaida write fboobservacaocopiarsaida;
    property bofornecedor : String read fbofornecedor write fbofornecedor;
    property boordproducaogerarautomatico : String read fboordproducaogerarautomatico write fboordproducaogerarautomatico;
    property bodescontoassinatura : String read fbodescontoassinatura write fbodescontoassinatura;
    property boorcamento : String read fboorcamento write fboorcamento;
    property boarquivo : String read fboarquivo write fboarquivo;
    property boduplicata : String read fboduplicata write fboduplicata;
    property boredespacho : String read fboredespacho write fboredespacho;
    property bocomissao : String read fbocomissao write fbocomissao;
    property borepresentante : String read fborepresentante write fborepresentante;
    property boestoque : String read fboestoque write fboestoque;
    property boprfretecidade : String read fboprfretecidade write fboprfretecidade;
    property boavisotarefa : String read fboavisotarefa write fboavisotarefa;
    property boordproducao : String read fboordproducao write fboordproducao;
    property boordproducaoqtitem : String read fboordproducaoqtitem write fboordproducaoqtitem;
    property boalterarvaloritem : String read fboalterarvaloritem write fboalterarvaloritem;
    property boreportmodotexto : String read fboreportmodotexto write fboreportmodotexto;
    property boreportmodotexto2 : String read fboreportmodotexto2 write fboreportmodotexto2;
    property boreportorcamento : String read fboreportorcamento write fboreportorcamento;
    property boreportvenda : String read fboreportvenda write fboreportvenda;
    property boreportvendasimples : String read fboreportvendasimples write fboreportvendasimples;
    property boclienteentrega : String read fboclienteentrega write fboclienteentrega;
    property boicmssubtrib : String read fboicmssubtrib write fboicmssubtrib;
    property bomadeira : String read fbomadeira write fbomadeira;
    property borepresentanteusuario : String read fborepresentanteusuario write fborepresentanteusuario;
    property bofuncionariousuario : String read fbofuncionariousuario write fbofuncionariousuario;
    property bofrete : String read fbofrete write fbofrete;
    property botransportadora : String read fbotransportadora write fbotransportadora;
    property botransportadoraobrigatorio : String read fbotransportadoraobrigatorio write fbotransportadoraobrigatorio;
    property bofuncionario : String read fbofuncionario write fbofuncionario;
    property bonudias : String read fbonudias write fbonudias;
    property boicms : String read fboicms write fboicms;
    property boipi : String read fboipi write fboipi;
    property bodesconto : String read fbodesconto write fbodesconto;
    property botpcobranca : String read fbotpcobranca write fbotpcobranca;
    property bodescontocomissao : String read fbodescontocomissao write fbodescontocomissao;
    property botpgrade : String read fbotpgrade write fbotpgrade;
    property bodtprventregaitem : String read fbodtprventregaitem write fbodtprventregaitem;
    property bocotacao : String read fbocotacao write fbocotacao;
    property bocotacaoobrigatorio : String read fbocotacaoobrigatorio write fbocotacaoobrigatorio;
    property bonuitem : String read fbonuitem write fbonuitem;
    property bocertificado : String read fbocertificado write fbocertificado;
    property bocotacaoitem : String read fbocotacaoitem write fbocotacaoitem;
    property bocotacaoitemobrigatorio : String read fbocotacaoitemobrigatorio write fbocotacaoitemobrigatorio;
    property bodsdesenho : String read fbodsdesenho write fbodsdesenho;
    property boclienteatraso : String read fboclienteatraso write fboclienteatraso;
    property boitcontcliente : String read fboitcontcliente write fboitcontcliente;
    property boreportordemproducao : String read fboreportordemproducao write fboreportordemproducao;
    property bodsobservacaocliente : String read fbodsobservacaocliente write fbodsobservacaocliente;
    property boclienteconsistir : String read fboclienteconsistir write fboclienteconsistir;
    property boprofissional : String read fboprofissional write fboprofissional;
    property boprodutoembalagem : String read fboprodutoembalagem write fboprodutoembalagem;
    property nudiasentrega : integer read fnudiasentrega write fnudiasentrega;
    property bodsreferenciaobrigatorio : String read Fbodsreferenciaobrigatorio write Fbodsreferenciaobrigatorio;
    property boiss : String read fboiss write fboiss;
    property botpfreteobrigatorio : String read Fbotpfreteobrigatorio write Fbotpfreteobrigatorio;
    property boitemvlunitariotpcobranca : String read fboitemvlunitariotpcobranca write fboitemvlunitariotpcobranca;
    property bofretentotal : String read Fbofretentotal write Fbofretentotal;
    property borepresentanteobrigatorio : string read Fborepresentanteobrigatorio write Fborepresentanteobrigatorio;
    property bocondpagtoobrigatorio : string read Fbocondpagtoobrigatorio write Fbocondpagtoobrigatorio;
    property botpcobrancaobrigatorio : string read Fbotpcobrancaobrigatorio write Fbotpcobrancaobrigatorio;
    property bodtentregaobrigatorio : string read fbodtentregaobrigatorio write fbodtentregaobrigatorio;
    property bodtentregavazio : string read fbodtentregavazio write fbodtentregavazio;
  end;
  TITPedidoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TITPedido;
    procedure SetItem(Index: Integer; const Value: TITPedido);
  public
    function New: TItPedido;
    property Items[Index: Integer]: TItPedido read GetItem write SetItem;
    function Insert(cdpedido:integer): TItPedido;
    function sql_insert:string;
    function Ler(codigo:Integer):boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
    function VlTotal:currency;
    procedure ZerarVlTotalUnitario;
    function sqlUpdate:string;
    function Indice(cdproduto, cdtpgradevalor: integer):integer;
  end;
  TPedido = class(TRegistroQuipos)
  private
    FItPedido : TItpedidoList;
    ftppedido : TTPPedido;
    fcdpedido : Integer;
    fcdstpedido : integer;
    fcdcondpagto : Integer;
    fcdtpfrete : String;
    fcdcliente : LargeInt;
    fcdrepresentante : Integer;
    fcdtppedido : Integer;
    fcdtpcobranca : Integer;
    fcdfuncionario : Integer;
    fcdtransportadora : largeint;
    fcdpaciente : integer;
    fcdusuariol : Integer;
    fcdcomputadorl : Integer;
    fcdclienteentrega : LargeInt;
    fcditcontcliente : Integer;
    fcdfornecedor : LargeInt;
    fcdmunicipio : Integer;
    fcduf : integer;
    fcdorcamento : Integer;
    fcdprofissional : Integer;
    fnupedido : string;
    fdtemissao : TDate;
    fprcomissao : Double;
    fdtfechamento : TDate;
    fdtprventrega : TDate;
    fvltotal : Currency;
    fvlipi : Currency;
    fvltotalcipi : Currency;
    fvldesconto : Currency;
    fprdesconto : Double;
    fpsbruto : Double;
    fvlproduto : Currency;
    fdsobservacao : string;
    fdsobsinterna : string;
    fnucotacao : string;
    fbocertificado : String;
    fnudias : integer;
    fvlfrete : Currency;
    fvlicmssubtrib : Currency;
    fqtpedido : Double;
    fqtatendido : Double;
    fvlcomissao : Currency;
    fvlicms : Currency;
    fdsreferencia : string;
    ftsliberado : TDateTime;
    fnmredespacho : string;
    fdsendereco : string;
    fdsnumero : string;
    fnmbairro : string;
    fnucxpostal : string;
    fnucep : string;
    fnufone : string;
    fnufax : string;
    fnmcontato : string;
    fdscomplemento : string;
    fcdprofissionalcoordenador : Integer;
    fboapto : String;
    fcdtpcredito : Integer;
    fcdtpcomercial : Integer;
    fvlacrescimo : Currency;
    fstpedido: tstpedido;
    fPedidoDuplicata: TPedidoDuplicataList;
    fcondpagto: tcondpagto;
    ftpcobranca: ttpcobranca;
    fCliente: TCliente;
    fclienteentrega: TCliente;
    ffuncionario: tfuncionario;
    ftpfrete: ttpfrete;
  public
    [keyfield]
    property cdpedido : Integer read fcdpedido write fcdpedido;
    [fk]
    property cdstpedido : integer read fcdstpedido write fcdstpedido;
    [fk]
    property cdcondpagto : Integer read fcdcondpagto write fcdcondpagto;
    [fk]
    property cdtpfrete : String read fcdtpfrete write fcdtpfrete;
    [fk]
    property cdcliente : LargeInt read fcdcliente write fcdcliente;
    [fk]
    property cdrepresentante : Integer read fcdrepresentante write fcdrepresentante;
    [fk]
    property cdtppedido : Integer read fcdtppedido write fcdtppedido;
    [fk]
    property cdtpcobranca : Integer read fcdtpcobranca write fcdtpcobranca;
    [fk]
    property cdfuncionario : Integer read fcdfuncionario write fcdfuncionario;
    [fk]
    property cdtransportadora : largeint read fcdtransportadora write fcdtransportadora;
    [fk]
    property cdpaciente : integer read fcdpaciente write fcdpaciente;
    [fk]
    property cdusuariol : Integer read fcdusuariol write fcdusuariol;
    [fk]
    property cdcomputadorl : Integer read fcdcomputadorl write fcdcomputadorl;
    [fk]
    property cdclienteentrega : LargeInt read fcdclienteentrega write fcdclienteentrega;
    [fk]
    property cditcontcliente : Integer read fcditcontcliente write fcditcontcliente;
    [fk]
    property cdfornecedor : LargeInt read fcdfornecedor write fcdfornecedor;
    [fk]
    property cdmunicipio : Integer read fcdmunicipio write fcdmunicipio;
    [fk]
    property cduf : integer read fcduf write fcduf;
    [fk]
    property cdorcamento : Integer read fcdorcamento write fcdorcamento;
    [fk]
    property cdprofissional : Integer read fcdprofissional write fcdprofissional;
    property funcionario : tfuncionario read ffuncionario write ffuncionario;
    property clienteentrega : TCliente read fclienteentrega write fclienteentrega;
    property cliente : TCliente read fCliente write fCliente;
    property tpcobranca : ttpcobranca read ftpcobranca write ftpcobranca;
    property tpfrete : ttpfrete read ftpfrete write ftpfrete;
    property stpedido : tstpedido read fstpedido write fstpedido;
    property tppedido : TTPPedido read ftppedido write ftppedido;
    property itpedido : TItPedidoList read FItPedido write FItPedido;
    property condpagto : tcondpagto read fcondpagto write fcondpagto;
    property pedidoduplicata : TPedidoDuplicataList read fPedidoDuplicata write FPedidoDuplicata;
    property nupedido : string read fnupedido write fnupedido;
    property dtemissao : TDate read fdtemissao write fdtemissao;
    property prcomissao : Double read fprcomissao write fprcomissao;
    property dtfechamento : TDate read fdtfechamento write fdtfechamento;
    property dtprventrega : TDate read fdtprventrega write fdtprventrega;
    property vltotal : Currency read fvltotal write fvltotal;
    property vlipi : Currency read fvlipi write fvlipi;
    property vltotalcipi : Currency read fvltotalcipi write fvltotalcipi;
    property vldesconto : Currency read fvldesconto write fvldesconto;
    property prdesconto : Double read fprdesconto write fprdesconto;
    property psbruto : Double read fpsbruto write fpsbruto;
    property vlproduto : Currency read fvlproduto write fvlproduto;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    property dsobsinterna : string read fdsobsinterna write fdsobsinterna;
    property nucotacao : string read fnucotacao write fnucotacao;
    property bocertificado : String read fbocertificado write fbocertificado;
    property nudias : integer read fnudias write fnudias;
    property vlfrete : Currency read fvlfrete write fvlfrete;
    property vlicmssubtrib : Currency read fvlicmssubtrib write fvlicmssubtrib;
    property qtpedido : Double read fqtpedido write fqtpedido;
    property qtatendido : Double read fqtatendido write fqtatendido;
    property vlcomissao : Currency read fvlcomissao write fvlcomissao;
    property vlicms : Currency read fvlicms write fvlicms;
    property dsreferencia : string read fdsreferencia write fdsreferencia;
    property tsliberado : TDateTime read ftsliberado write ftsliberado;
    property nmredespacho : string read fnmredespacho write fnmredespacho;
    property dsendereco : string read fdsendereco write fdsendereco;
    property dsnumero : string read fdsnumero write fdsnumero;
    property nmbairro : string read fnmbairro write fnmbairro;
    property nucxpostal : string read fnucxpostal write fnucxpostal;
    property nucep : string read fnucep write fnucep;
    property nufone : string read fnufone write fnufone;
    property nufax : string read fnufax write fnufax;
    property nmcontato : string read fnmcontato write fnmcontato;
    property dscomplemento : string read fdscomplemento write fdscomplemento;
    property cdprofissionalcoordenador : Integer read fcdprofissionalcoordenador write fcdprofissionalcoordenador;
    property boapto : String read fboapto write fboapto;
    property cdtpcredito : Integer read fcdtpcredito write fcdtpcredito;
    property cdtpcomercial : Integer read fcdtpcomercial write fcdtpcomercial;
    property vlacrescimo : Currency read fvlacrescimo write fvlacrescimo;
    constructor create;
    destructor destroy; override;
    function ajustarqtpedido:Boolean;
    function copiar(nupedido:string=''):integer;
    function getprfrete(cdtransportadora, cdcliente:string):Double;
    function getcditpedido(cdpedido, cdproduto:integer):integer;
    procedure gerarparcelas;
    function excluir_ordem_producao:Boolean;
    class function Quantidade_pedido_aguardando_aprovacao:integer;
  end;
  TPedidoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TPedido;
    procedure SetItem(Index: Integer; const Value: TPedido);
  public
    function New: TPedido;
    property Items[Index: Integer]: TPedido read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function Ler(sqlwhere: string):Boolean;overload;
  end;

implementation


procedure Tpedido.gerarparcelas;
var
  i: Integer;
begin
  PedidoDuplicata.Clear;
  condpagto.GerarParcela(dtprventrega, vltotal);
  if (cdcondpagto = 0) or (vltotal = 0) or (condpagto.itcondpagto.Count = 0) then
  begin
    Exit;
  end;
  for i := 0 to condpagto.parcela.Count - 1 do
  begin
    pedidoduplicata.New;
    pedidoduplicata.Items[i].cdpedido          := cdpedido;
    PedidoDuplicata.Items[i].dtprorrogacao     := condpagto.parcela.Items[i].dtvencimento;
    PedidoDuplicata.Items[i].dtemissao         := dtprventrega;
    PedidoDuplicata.Items[i].vlsaldo           := condpagto.parcela.Items[i].valor;
    PedidoDuplicata.Items[i].vlpedidoduplicata := condpagto.parcela.Items[i].dtvencimento;
  end;
end;

constructor TPedido.create;
begin
  inherited;
  fcondpagto := tcondpagto.create;
  ftpfrete := ttpfrete.create;
  ffuncionario := tfuncionario.create;
  fclienteentrega := tcliente.create;
  fcliente := tcliente.create;
  ftpcobranca := ttpcobranca.create;
  FItPedido := TItPedidoList.Create;
  fPedidoDuplicata := tPedidoDuplicataList.create;
  ftppedido := TTPPedido.create;
  fstpedido := tstpedido.create;
end;

function TPedido.getcditpedido(cdpedido, cdproduto: integer): integer;
begin
  result := RetornaSQLInteger('select cditpedido from itpedido where cdempresa='+empresa.cdempresa.ToString+' and cdproduto='+cdproduto.ToString+' and cdpedido='+cdpedido.ToString);
  if RetornaSQLInteger('select count(*) from itpedido where cdempresa='+empresa.cdempresa.ToString+' and cdproduto='+cdproduto.ToString+' and cdpedido='+cdpedido.ToString) > 0 then
  begin
    result := selecionar_Entrada(_itpedido, cdpedido.ToString, cdproduto);
  end;
end;

function TPedido.getprfrete(cdtransportadora, cdcliente: string): Double;
var
  cdmunicipio : string;
begin
  result := 0;
  if (cdtransportadora = '') or (cdcliente = '') or (tppedido.boprfretecidade <> _s) then
  begin
    Exit;
  end;
  cdmunicipio := NomedoCodigo(_cliente, cdcliente, _cdmunicipio);
  if cdmunicipio = '' then
  begin
    messagedlg('Município não preenchido no cadastro do Cliente.'#13'Altere o cadastro do cliente para poder continuar.', mtinformation, [mbok], 0);
    Abort;
  end;
  if RetornaSQLInteger('select count(*) from transportadoramunicipio where cdempresa='+empresa.cdempresa.ToString+' and cdtransportadora='+cdtransportadora+' and cdmunicipio='+cdmunicipio) = 0 then
  begin
    messagedlg('Município '+nomedocodigo(_municipio, cdmunicipio)+' do Cliente não está definido o frete para a Transportadora selecionada.'#13'Adicione o município ao frete da Transportadora para poder continuar.', mtinformation, [mbok], 0);
    Abort;
  end;
  result := RetornaSQLCurrency('select prfrete from transportadoramunicipio where cdempresa='+empresa.cdempresa.ToString+' and cdtransportadora='+cdtransportadora+' and cdmunicipio='+cdmunicipio);
end;

function TPedido.ajustarqtpedido: Boolean;
begin
  result := ExecutaSQL('UPDATE PRODUTO SET QTDISPONIVEL=QTESTOQUE where cdempresa='+empresa.cdempresa.ToString);
  if not result then
  begin
    Exit;
  end;
  result := ExecutaSQL('update produto ' +
                       'set qtpedido=coalesce((SELECT SUM(I.qtitem-I.qtatendida) '+
                                              'FROM PEDIDO P '+
                                              'LEFT JOIN ITPEDIDO I ON I.CDPEDIDO=P.CDPEDIDO and i.cdempresa=p.cdempresa '+
                                              'left join stpedido s on s.cdstpedido=p.cdstpedido and s.cdempresa=p.cdempresa '+
                                              'WHERE p.cdempresa='+empresa.cdempresa.ToString+' and s.boestoquedisponivel=''S'' AND I.qtatendida<I.QTITEM '+
                                              'and i.cdproduto=produto.cdproduto), 0) '+
                       'where cdempresa='+empresa.cdempresa.ToString);
  if not result then
  begin
    Exit;
  end;
  result := ExecutaSQL('UPDATE PRODUTO SET QTDISPONIVEL=QTESTOQUE-QTPEDIDO where cdempresa='+empresa.cdempresa.ToString);
end;

function TPedido.copiar(nupedido:string=''): integer;
var
  s, sit, sequipamento, sduplicata, cpedido, citpedido, citpedidoequipamento, cpedidoduplicata : TClasseQuery;
  procedure insert_pedido;
  var
    i : Integer;
  begin
    cpedido.q.Insert;
    for i := 0 to cpedido.q.FieldCount - 1 do
    begin
      qregistro.set_field_type_assign(s.q, cpedido.q, i);
    end;
    RegistraInformacao_(cpedido.q);
    result := qgerar.GerarCodigo(_pedido);
    cpedido.q.FieldByName(_cdpedido).asinteger  := result;
    if nupedido = '' then
    begin
      cpedido.q.FieldByName(_NUPEDIDO).Asstring := GerarCodigo(_nupedido)
    end
    else
    begin
      cpedido.q.FieldByName(_NUPEDIDO).Asstring := nupedido;
    end;
    cpedido.q.FieldByName(_cdstpedido).AsInteger := qregistro.Codigo_status_novo(_pedido);
    cpedido.q.FieldByName(_dtfechamento).Clear;
    aplicacao.aplyupdates(cpedido.q);
  end;
  procedure insert_duplicata;
  var
    i : Integer;
  begin
    while not sduplicata.q.Eof do
    begin
      cpedidoduplicata.q.Insert;
      for i := 0 to cpedidoduplicata.q.FieldCount - 1 do
      begin
        qregistro.set_field_type_assign(sduplicata.q, cpedidoduplicata.q, i);
      end;
      RegistraInformacao_(cpedidoduplicata.q);
      cpedidoduplicata.q.FieldByName(_cdpedido).AsInteger            := result;
      cpedidoduplicata.q.FieldByName(_cdpedido+_duplicata).AsString := GerarCodigo(_pedido+_duplicata);
      aplicacao.aplyupdates(cpedidoduplicata.q);
      sduplicata.q.Next;
    end;
  end;
  procedure insert_item;
  var
    i : Integer;
  begin
    while not sit.q.Eof do
    begin
      citpedido.q.Insert;
      for i := 0 to citpedido.q.FieldCount - 1 do
      begin
        qregistro.set_field_type_assign(sit.q, citpedido.q, i);
      end;
      RegistraInformacao_(citpedido.q);
      citpedido.q.FieldByName(_cdpedido).AsInteger     := result;
      citpedido.q.FieldByName(_cditpedido).AsString   := GerarCodigo(_itpedido);
      citpedido.q.FieldByName(_qtatendida).AsFloat    := 0;
      citpedido.q.FieldByName(_QTCONFERENCIA).AsFloat := 0;
      sequipamento.q.Close;
      sequipamento.q.sql.text := QRetornaSQL.get_select_from(_itpedido+_equipamento, sit.q.fieldbyname(_cditpedido).AsString, _cditpedido);
      sequipamento.q.Open;
      while not sequipamento.q.Eof do
      begin
        citpedidoequipamento.q.Insert;
        for i := 0 to citpedidoequipamento.q.FieldCount - 1 do
        begin
          qregistro.set_field_type_assign(sequipamento.q, citpedidoequipamento.q, i);
        end;
        RegistraInformacao_(citpedidoequipamento.q);
        citpedidoequipamento.q.FieldByName(_cditpedido).AsString              := citpedido.q.FieldByName(_cditpedido).AsString;
        citpedidoequipamento.q.FieldByName(_cditpedido+_equipamento).AsString := GerarCodigo(_itpedido+_equipamento);
        sequipamento.q.Next;
      end;
      sit.q.Next;
    end;
    aplicacao.aplyupdates(citpedido.q);
  end;
begin
  s                    := TClasseQuery.Create(QRetornaSQL.get_select_from(_pedido, cdpedido));
  sit                  := TClasseQuery.Create(QRetornaSQL.get_select_from(_itpedido, cdpedido, _cdpedido));
  sequipamento         := TClasseQuery.Create;
  sduplicata           := TClasseQuery.Create(QRetornaSQL.get_select_from(_pedidoduplicata, cdpedido, _cdpedido));

  cpedido              := TClasseQuery.Create(QRetornaSQL.get_select_from(_pedido, _0), true);
  citpedido            := TClasseQuery.Create(QRetornaSQL.get_select_from(_itpedido, _0), true);
  citpedidoequipamento := TClasseQuery.Create(QRetornaSQL.get_select_from(_itpedidoequipamento, _0), true);
  cpedidoduplicata     := TClasseQuery.Create(QRetornaSQL.get_select_from(_pedidoduplicata, _0), true);
  try
    insert_pedido;
    insert_duplicata;
    insert_item;
  finally
    freeandnil(s);
    freeandnil(sit);
    freeandnil(sequipamento);
    freeandnil(sduplicata);
    freeandnil(cpedido);
    freeandnil(citpedido);
    freeandnil(citpedidoequipamento);
    freeandnil(cpedidoduplicata);
  end;
end;

function TPedido.excluir_ordem_producao:boolean;
var
  nmstpedidonew: string;
  cdstpedidonew: integer;
  q : TClasseQuery;
  sql : TStrings;
begin
  cdstpedidonew := qregistro.InteirodoCodigo(_pedido, cdpedido, _cdstpedido);
  nmstpedidonew := qregistro.NomedoCodigo(_stpedido, cdstpedidonew);
  if (cdstpedido = cdstpedidonew) or (nmstpedidonew <> UpperCase(_cancelado)) then
  begin
    Result := False;
    Exit;
  end;
  q      := TClasseQuery.create;
  result := false;
  sql    := TStringList.Create;
  try
    q.q.Open('select o.cdempresa'+
                    ',o.cdordproducao'+
                    ',o.tsinclusao'+
                    ',o.tsalteracao '+
              'from ordproducao o '+
              'inner join itpedido i on i.cdempresa=o.cdempresa and i.cditpedido=o.cditpedido '+
              'where i.cdpedido='+inttostr(cdpedido)+' and i.cdempresa='+empresa.cdempresa.ToString);
    while not q.q.Eof do
    begin
      if q.q.FieldByName(_tsinclusao).AsString <> q.q.FieldByName(_tsalteracao).AsString then
      begin
        result := False;
        Break;
      end;
      result := true;
      sql.Add('delete from ordproducao where cdempresa='+empresa.cdempresa.ToString+' and cdordproducao='+q.q.fieldbyname(_cdordproducao).asstring+';');
      q.q.Next;
    end;
    if result then
    begin
      ExecutaScript(sql);
    end;
  finally
    freeandnil(q);
    freeandnil(sql);
  end;
end;

function TITPedidoList.GetItem(Index: Integer): TITPedido;
begin
  Result := TItPedido(Inherited Items[Index]);
end;

function TITPedidoList.Indice(cdproduto, cdtpgradevalor: integer): integer;
var
  I: Integer;
begin
  result := -1;
  for I := 0 to count - 1 do
  begin
    if (items[i].cdproduto = cdproduto) and (items[i].cdtpgradevalor = cdtpgradevalor) then
    begin
      result := i;
      break;
    end;
  end;
end;

function TITPedidoList.Insert(cdpedido: integer): TItPedido;
begin
  result            := new;
  result.state      := dsInsert;
  Result.cdpedido   := cdpedido;
  Result.cditpedido := QGerar.GerarCodigo(_itpedido);
end;

function TITPedidoList.Ler(Dataset: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not Dataset.Eof do
  begin
    new.Select(Dataset);
    Dataset.Next;
    result := true;
  end;
end;

function TITPedidoList.New: TItPedido;
begin
  Result := TItPedido.Create;
  Add(Result);
  result.qtatendida := 0;
  result.qtitem := 1;
end;

function TITPedidoList.Ler(codigo: Integer):boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itpedido, codigo, _cdpedido));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

procedure TITPedidoList.SetItem(Index: Integer; const Value: TITPedido);
begin
  Put(Index, Value);
end;

destructor TPedido.destroy;
begin
  FreeAndNil(FItpedido);
  freeandnil(ftpfrete);
  freeandnil(ffuncionario);
  freeandnil(fclienteentrega);
  freeandnil(fcliente);
  freeandnil(ftpcobranca);
  freeandnil(fcondpagto);
  freeandnil(fpedidoduplicata);
  FreeAndNil(ftppedido);
  FreeAndNil(fstpedido);
  inherited;
end;

function TITPedidoList.sqlUpdate: string;
var
  i : integer;
begin
  result := '';
  for I := 0 to count - 1 do
  begin
    result := result + items[i].Update(true)+#13;
  end;
end;

function TITPedidoList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    if Items[i].state = dsinsert then
    begin
      result := result + Items[i].Insert(True)+#13;
    end;
  end;
end;

function TITPedidoList.VlTotal: currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to count - 1 do
  begin
    result := result + items[i].vltotal;
  end;
end;

procedure TITPedidoList.ZerarVlTotalUnitario;
var
  I: Integer;
begin
  for I := 0 to count - 1 do
  begin
    items[i].vlunitario := 0;
    items[i].vltotal := 0;
  end;
end;

constructor TITPedido.create;
begin
  inherited;
  fproduto := tproduto.create;
  fordproducao := tordproducao.create;
  fitpedidoestrutura := TitpedidoestruturaList.create;
end;

destructor TITPedido.destroy;
begin
  FreeAndNil(fproduto);
  freeandnil(fordproducao);
  FreeAndNil(fitpedidoestrutura);
  inherited;
end;

function TITPedido.Gerar_Ordem_Producao(cdtpordproducao: Integer): Integer;
  function Gerar: integer;
  var
    qtd, qttotal, qtunidade : Double;
    ordproducao : TOrdProducao;
  begin
    frmprogressbar := Tfrmprogressbar.Create(nil);
    try
      qtd := qtitem;
      qttotal := qtitem;
      if produto.tpqtitem = _s then
      begin
        qtd := 1;
      end;
      qtunidade := 0;
      frmprogressbar.gau.MaxValue := Trunc(qttotal);
      frmprogressbar.Show;
      repeat
        frmprogressbar.gau.Progress := Trunc(qtunidade);
        Application.ProcessMessages;
        ordproducao := TOrdProducao.create;
        try
          result := ordproducao.GerarOrdProducaoPedido(cditpedido, cdtpordproducao, qtd);
        finally
          FreeAndNil(ordproducao);
        end;
        qtunidade := qtunidade + qtd;
      until qtunidade >= qttotal;
    finally
      FreeAndNil(frmprogressbar);
    end;
  end;
begin
  result := 0;
  if not Tordproducao.JaExisteOrdproducao(_pedido, cditpedido) then
  begin
    produto.Select(cdproduto);
    result := Gerar;
  end;
end;

function TitpedidoestruturaList.GetItem(Index: Integer): Titpedidoestrutura;
begin
  Result := Titpedidoestrutura(Inherited Items[Index]);
end;

function TitpedidoestruturaList.Ler(codigo: Integer): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itpedidoestrutura, codigo, _cditpedido));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TitpedidoestruturaList.New: Titpedidoestrutura;
begin
  Result := Titpedidoestrutura.Create;
  Add(Result);
end;

procedure TitpedidoestruturaList.SetItem(Index: Integer; const Value: Titpedidoestrutura);
begin
  Put(Index, Value);
end;

class function TPedido.Quantidade_pedido_aguardando_aprovacao: integer;
begin
  result := RetornaSQLInteger('select count(*) from pedido where cdstpedido<>4 and cdtpcredito=1 and cdtpcomercial=1 and cdempresa='+empresa.cdempresa.ToString);
end;

function TPedidoDuplicataList.GetItem(Index: Integer): TPedidoDuplicata;
begin
  Result := TPedidoDuplicata(Inherited Items[Index]);
end;

function TPedidoDuplicataList.Ler(Dataset: TDataset): Boolean;
begin
  clear;
  result := False;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := True;
  end;
end;

function TPedidoDuplicataList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_PedidoDuplicata, codigo, _cdpedido));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TPedidoDuplicataList.New: TPedidoDuplicata;
begin
  Result := TPedidoDuplicata.Create;
  Add(Result);
end;

procedure TPedidoDuplicataList.SetItem(Index: Integer; const Value: TPedidoDuplicata);
begin
  Put(Index, Value);
end;

function TPedidoList.GetItem(Index: Integer): TPedido;
begin
  Result := TPedido(Inherited Items[Index]);
end;

function TPedidoList.Ler(DataSet: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TPedidoList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_Pedido, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TPedidoList.New: TPedido;
begin
  Result := TPedido.Create;
  Add(Result);
end;

procedure TPedidoList.SetItem(Index: Integer; const Value: TPedido);
begin
  Put(Index, Value);
end;

function TPedidoList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_Pedido, sqlwhere));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

end.
