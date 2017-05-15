unit classeorcamento;

interface

uses
  Contnrs, sysutils, ExtCtrls, Controls, Menus, ActnList, Classes, System.Math,
  DB,
  uRegistro, uconstantes, udatahora, ustrings, uSelecionarEntrada,
  udlgjustificativa,
  classeaplicacao, classeempresa, classeusuario, classegerar, classeregistrainformacao,
  classequery, classeexecutasql, classeretornasql, classeproduto,
  classecliente, ClasseFormulacao, classepedidomaterial, classetpcobranca,
  classecondpagto, classedao;

Type
  TStOrcamento = class(TRegistroQuipos)
  private
    Fboanalisecritica: String;
    Fnmstorcamento: string;
    Fnucor: integer;
    Fboexcluir: String;
    Fcdstorcamento: integer;
    Fbogerarinfo: String;
    Fbonovo: String;
    Fnuordem: integer;
    Fboalterar: String;
  public
    [keyfield]
    property cdstorcamento : integer read Fcdstorcamento write Fcdstorcamento;
    property nmstorcamento : string read Fnmstorcamento write Fnmstorcamento;
    property nucor : integer read Fnucor write Fnucor;
    property bonovo : String read Fbonovo write Fbonovo;
    property boalterar : String read Fboalterar write Fboalterar;
    property boexcluir : String read Fboexcluir write Fboexcluir;
    property bogerarinfo : String read Fbogerarinfo write Fbogerarinfo;
    property nuordem : integer read Fnuordem write Fnuordem;
    property boanalisecritica : String read Fboanalisecritica write Fboanalisecritica;
  end;
  TStOrcamentoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TStOrcamento;
    procedure SetItem(Index: Integer; const Value: TStOrcamento);
  public
    function New: TStOrcamento;
    property Items[Index: Integer]: TStOrcamento read GetItem write SetItem;
    function Ler(sqlwhere:string):Boolean;
  end;
  titorcamentocusto = class(TRegistroQuipos)
  private
    Fvltotal: Currency;
    Fvlfinal: Currency;
    Fvlunitario: Currency;
    Fqtitem: Double;
    Fnufator: Double;
    Fcdproduto: Integer;
    Fcdunidade: Integer;
    Fcditorcamento: Integer;
    Fcditorcamentocusto: Integer;
    Fcddigitado: string;
    Fdsobservacao: string;
  public
    [keyfield]
    property cditorcamentocusto : Integer read Fcditorcamentocusto write fcditorcamentocusto;
    [fk]
    property cditorcamento : Integer read Fcditorcamento write fcditorcamento;
    [fk]
    property cdproduto : Integer read Fcdproduto write fcdproduto;
    property vltotal : Currency read Fvltotal write fvltotal;
    property cddigitado : string read Fcddigitado write fcddigitado;
    property qtitem : Double read Fqtitem write fqtitem;
    property vlunitario : Currency read Fvlunitario write fvlunitario;
    property cdunidade : Integer read Fcdunidade write fcdunidade;
    property nufator : Double read Fnufator write fnufator;
    property vlfinal : Currency read Fvlfinal write fvlfinal;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
  end;
  TitorcamentocustoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Titorcamentocusto;
    procedure SetItem(Index: Integer; const Value: Titorcamentocusto);
  public
    function New: Titorcamentocusto;
    property Items[Index: Integer]: Titorcamentocusto read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
  end;
  titorcamentomaterial = class(TRegistroQuipos)
  private
    Fborecuperapis: String;
    Fborecuperaicms: String;
    Fborecuperaipi: String;
    Fborecuperacofins: String;
    Fvlfrete: Currency;
    Fvlfinal: Currency;
    Fvlcofins: Currency;
    Fvlipi: Currency;
    Fvlunitario: Currency;
    Fvlicms: Currency;
    Fvltotal: Currency;
    Fvlpis: Currency;
    Fqtitem: Double;
    Fnufator: Double;
    Falicms: Double;
    Fqtpesounitario: Double;
    Falipi: Double;
    Falcofins: Double;
    Fqtpeca: Double;
    Falpis: Double;
    Fcdmaterial: Integer;
    Fcditorcamentomaterial: integer;
    Fcdforma: Integer;
    Fcdproduto: Integer;
    Fcditorcamento: integer;
    Fdsobservacao: string;
    Fdsposicao: string;
    Fcddigitado: string;
    Fdsformula: string;
  public
    [keyfield]
    property cditorcamentomaterial : integer read Fcditorcamentomaterial write fcditorcamentomaterial;
    [fk]
    property cditorcamento : integer read Fcditorcamento write fcditorcamento;
    [fk]
    property cdproduto : Integer read Fcdproduto write fcdproduto;
    [fk]
    property cdmaterial : Integer read Fcdmaterial write fcdmaterial;
    property qtitem : Double read Fqtitem write fqtitem;
    property qtpesounitario : Double read Fqtpesounitario write fqtpesounitario;
    property qtpeca : Double read Fqtpeca write fqtpeca;
    property vlunitario : Currency read Fvlunitario write fvlunitario;
    property vltotal : Currency read Fvltotal write fvltotal;
    property cddigitado : string read Fcddigitado write fcddigitado;
    property dsposicao : string read Fdsposicao write fdsposicao;
    property alicms : Double read Falicms write falicms;
    property alipi : Double read Falipi write falipi;
    property borecuperaicms : String read Fborecuperaicms write fborecuperaicms;
    property borecuperaipi : String read Fborecuperaipi write fborecuperaipi;
    property vlicms : Currency read Fvlicms write fvlicms;
    property vlipi : Currency read Fvlipi write fvlipi;
    property vlfrete : Currency read Fvlfrete write fvlfrete;
    property vlfinal : Currency read Fvlfinal write fvlfinal;
    property alpis : Double read Falpis write falpis;
    property alcofins : Double read Falcofins write falcofins;
    property vlpis : Currency read Fvlpis write fvlpis;
    property vlcofins : Currency read Fvlcofins write fvlcofins;
    property borecuperapis : String read Fborecuperapis write fborecuperapis;
    property borecuperacofins : String read Fborecuperacofins write fborecuperacofins;
    property dsformula : string read Fdsformula write fdsformula;
    property nufator : Double read Fnufator write fnufator;
    [fk]
    property cdforma : Integer read Fcdforma write fcdforma;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
  end;
  TitorcamentomaterialList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Titorcamentomaterial;
    procedure SetItem(Index: Integer; const Value: Titorcamentomaterial);
  public
    function New: Titorcamentomaterial;
    property Items[Index: Integer]: Titorcamentomaterial read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
  end;
  TItorcamentoRecurso = class(TRegistroQuipos)
  private
    Fvltotal: Currency;
    Fvltotalpreparacao: Currency;
    Fvlpreparacao: Currency;
    Fvltotaloperacao: Currency;
    Fvloperacao: Currency;
    Fqtpreparacao: Double;
    Fqtoperacao: Double;
    Fcdtpduracao: integer;
    Fcdtpequipamento: Integer;
    Fcditorcamentorecurso: integer;
    Fcditorcamento: Integer;
    Fnusequencia: Integer;
    Fdsobservacao: string;
  public
    [keyfield]
    property cditorcamentorecurso : integer read Fcditorcamentorecurso write fcditorcamentorecurso;
    property cditorcamento : Integer read Fcditorcamento write fcditorcamento;
    property cdtpequipamento : Integer read Fcdtpequipamento write fcdtpequipamento;
    property cdtpduracao : integer read Fcdtpduracao write fcdtpduracao;
    property qtpreparacao : Double read Fqtpreparacao write fqtpreparacao;
    property qtoperacao : Double read Fqtoperacao write fqtoperacao;
    property vlpreparacao : Currency read Fvlpreparacao write fvlpreparacao;
    property vloperacao : Currency read Fvloperacao write fvloperacao;
    property vltotaloperacao : Currency read Fvltotaloperacao write fvltotaloperacao;
    property vltotalpreparacao : Currency read Fvltotalpreparacao write fvltotalpreparacao;
    property vltotal : Currency read Fvltotal write fvltotal;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property nusequencia : Integer read Fnusequencia write fnusequencia;
  end;
  TitorcamentorecursoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Titorcamentorecurso;
    procedure SetItem(Index: Integer; const Value: Titorcamentorecurso);
  public
    function New: Titorcamentorecurso;
    property Items[Index: Integer]: Titorcamentorecurso read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
  end;
  TITorcamento = class(TRegistroQuipos)
  private
    Fbocertificado: String;
    Fboinftecnica: String;
    Fvldespesacomercialp: Currency;
    Fvldespesaadministrativa: Currency;
    Fvldespesacomercial: Currency;
    Fvlsimples: Currency;
    Fvlvendaliquida: Currency;
    Fvltotalcipi: Currency;
    Fvlicmssubtrib: Currency;
    Fvllucro: Currency;
    Fvllucroircsp: Currency;
    Fvlipi: Currency;
    Fvldescontoproducao: Currency;
    Fvldespesafretep: Currency;
    Fvlpreparacao: Currency;
    Fvlsimplesp: Currency;
    Fvloperacao: Currency;
    Fvlcustop: Currency;
    Fvlirpj: Currency;
    Fvlircsllp: Currency;
    Fvlpreparacaop: Currency;
    Fvlcsllp: Currency;
    Fvlircsll: Currency;
    Fvllucrobruto: Currency;
    Fvldespesa: Currency;
    Fvlmaterialp: Currency;
    Fvllucrobrutop: Currency;
    Fvldesconto: Currency;
    Fvlfrete: Currency;
    Fvloperacaop: Currency;
    Fvlpisp: Currency;
    Fvliss: Currency;
    Fvlacrescimo: Currency;
    Fvltotal: Currency;
    Fvlmaterial: Currency;
    Fvlcofinsp: Currency;
    Fvldespesaembalagem: Currency;
    Fvldespesap: Currency;
    Fvlproducao: Currency;
    Fvlirpjp: Currency;
    Fvlcofins: Currency;
    Fvlissp: Currency;
    Fvlicms: Currency;
    Fvldespesaembalagemp: Currency;
    Fvlipip: Currency;
    Fvldespesaadministrativap: Currency;
    Fvlpis: Currency;
    Fvlcusto: Currency;
    Fvllucrop: Currency;
    Fvlcsll: Currency;
    Fvlvendaliquidap: Currency;
    Fvldespesasegurop: Currency;
    Fvllucroircs: Currency;
    Fvltotalsdesconto: Currency;
    Fvlunitario: Currency;
    Fvldespesafrete: Currency;
    Fvlimposto: currency;
    Fvldespesaseguro: Currency;
    Fvlicmsp: Currency;
    Fvlrecurso: Currency;
    Fvlimpostop: Currency;
    Fvlproducaop: Currency;
    Fvlrecursop: Currency;
    Falicms: Double;
    Fqtaprovado: Double;
    Fqtpreparacaop: double;
    Fqtcomprimento1: Double;
    Fprdespesafrete: Double;
    Fprdesconto: Double;
    Fqtitem: Double;
    Falmva: Double;
    Falsimples: Double;
    Fprdespesacomercial: Double;
    Fprdespesaadministrativa: Double;
    Falcofins: Double;
    Fprdespesaseguro: Double;
    Fqtoperacaop: Double;
    Fqtoperacao: Double;
    Fqthorap: Double;
    Fprlucro: Double;
    Falicmssubtrib: Double;
    Falipi: Double;
    Falcsll: Double;
    Falpis: Double;
    Fqtlargura1: Double;
    Faliss: Double;
    Fprdespesaembalagem: Double;
    Falirpj: Double;
    Fqtaltura1: Double;
    Fqtpreparacao: Double;
    Fqthora: Double;
    Fqtpeca: Double;
    Fnudiasentrega: Integer;
    Fcdtpitorcamento: Integer;
    Fcdperiodicidade: integer;
    Fcdtpipi: Integer;
    Fcdtpicms: Integer;
    Fcdproduto: integer;
    Fcdorcamento: Integer;
    Fcdstitorcamento: Integer;
    Fcdcondpagto: Integer;
    Fnusequencia: Integer;
    Fcdprodutoembalagem: Integer;
    Fnuprazoentrega: Integer;
    Fcdtpgradevalor: Integer;
    Fcditorcamento: Integer;
    Fcddigitadoembalagem: string;
    Fdsdesenhorevisao: string;
    Fnucotacao: string;
    Fnuitem: string;
    Fdsdesenhoposicao: string;
    Fnurevisaodesenho: string;
    Fdsobservacao: string;
    Fdsposicaodesenho: string;
    Fdsdesenho: string;
    Fdsproduto: string;
    Fcddigitado: string;
    Fdsformula: string;
    Fdtprventrega: TDate;
    Fdtaprovacao: TDate;
    Fitorcamentorecurso: TitorcamentorecursoList;
    Fitorcamentomaterial: TitorcamentomaterialList;
    Fitorcamentocusto: TitorcamentocustoList;
    FProduto: TProduto;
    Fnuperiodicidade: integer;
  public
    property itorcamentomaterial : TitorcamentomaterialList read Fitorcamentomaterial write Fitorcamentomaterial;
    property itorcamentocusto : TitorcamentocustoList read Fitorcamentocusto write Fitorcamentocusto;
    property itorcamentorecurso : TitorcamentorecursoList read Fitorcamentorecurso write Fitorcamentorecurso;
    property produto : TProduto read FProduto write FProduto;
    [keyfield]
    property cditorcamento : Integer read Fcditorcamento write fcditorcamento;
    [FK]
    property cdorcamento : Integer read Fcdorcamento write fcdorcamento;
    [FK]
    property cdproduto : integer read Fcdproduto write fcdproduto;
    [FK]
    property cdtpicms : Integer read Fcdtpicms write fcdtpicms;
    [FK]
    property cdtpipi : Integer read Fcdtpipi write fcdtpipi;
    [FK]
    property cdtpgradevalor : Integer read Fcdtpgradevalor write fcdtpgradevalor;
    [FK]
    property cdprodutoembalagem : Integer read Fcdprodutoembalagem write fcdprodutoembalagem;
    [FK]
    property cdtpitorcamento : Integer read Fcdtpitorcamento write fcdtpitorcamento;
    [FK]
    property cdperiodicidade : integer read Fcdperiodicidade write fcdperiodicidade;
    [FK]
    property cdcondpagto : Integer read Fcdcondpagto write fcdcondpagto;
    property qtitem : Double read Fqtitem write fqtitem;
    property qtaprovado : Double read Fqtaprovado write fqtaprovado;
    property vlunitario : Currency read Fvlunitario write fvlunitario;
    property vltotal : Currency read Fvltotal write fvltotal;
    property prlucro : Double read Fprlucro write fprlucro;
    property alicms : Double read Falicms write falicms;
    property vlicms : Currency read Fvlicms write fvlicms;
    property alipi : Double read Falipi write falipi;
    property vlipi : Currency read Fvlipi write fvlipi;
    property dsdesenho : string read Fdsdesenho write fdsdesenho;
    property dsposicaodesenho : string read Fdsposicaodesenho write fdsposicaodesenho;
    property nurevisaodesenho : string read Fnurevisaodesenho write fnurevisaodesenho;
    property nudiasentrega : Integer read Fnudiasentrega write fnudiasentrega;
    property cddigitado : string read Fcddigitado write fcddigitado;
    property vltotalcipi : Currency read Fvltotalcipi write fvltotalcipi;
    property dtprventrega : TDate read Fdtprventrega write fdtprventrega;
    property qtlargura1 : Double read Fqtlargura1 write fqtlargura1;
    property qtaltura1 : Double read Fqtaltura1 write fqtaltura1;
    property qtcomprimento1 : Double read Fqtcomprimento1 write fqtcomprimento1;
    property dsformula : string read Fdsformula write fdsformula;
    property almva : Double read Falmva write falmva;
    property vlicmssubtrib : Currency read Fvlicmssubtrib write fvlicmssubtrib;
    property vlfrete : Currency read Fvlfrete write fvlfrete;
    property vldesconto : Currency read Fvldesconto write fvldesconto;
    property alicmssubtrib : Double read Falicmssubtrib write falicmssubtrib;
    property nucotacao : string read Fnucotacao write fnucotacao;
    property nuitem : string read Fnuitem write fnuitem;
    property qtpeca : Double read Fqtpeca write fqtpeca;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property dsdesenhoposicao : string read Fdsdesenhoposicao write fdsdesenhoposicao;
    property dsdesenhorevisao : string read Fdsdesenhorevisao write fdsdesenhorevisao;
    property alpis : Double read Falpis write falpis;
    property vlpis : Currency read Fvlpis write fvlpis;
    property alcofins : Double read Falcofins write falcofins;
    property vlcofins : Currency read Fvlcofins write fvlcofins;
    property alcsll : Double read Falcsll write falcsll;
    property vlcsll : Currency read Fvlcsll write fvlcsll;
    property alirpj : Double read Falirpj write falirpj;
    property vlirpj : Currency read Fvlirpj write fvlirpj;
    property vlproducao : Currency read Fvlproducao write fvlproducao;
    property vlmaterial : Currency read Fvlmaterial write fvlmaterial;
    property vlcusto : Currency read Fvlcusto write fvlcusto;
    property vlpreparacao : Currency read Fvlpreparacao write fvlpreparacao;
    property vloperacao : Currency read Fvloperacao write fvloperacao;
    property qtoperacao : Double read Fqtoperacao write fqtoperacao;
    property qtpreparacao : Double read Fqtpreparacao write fqtpreparacao;
    property qthora : Double read Fqthora write fqthora;
    property vlproducaop : Currency read Fvlproducaop write fvlproducaop;
    property vlmaterialp : Currency read Fvlmaterialp write fvlmaterialp;
    property vlcustop : Currency read Fvlcustop write fvlcustop;
    property vlpreparacaop : Currency read Fvlpreparacaop write fvlpreparacaop;
    property vloperacaop : Currency read Fvloperacaop write fvloperacaop;
    property qtpreparacaop : double read Fqtpreparacaop write fqtpreparacaop;
    property qtoperacaop : Double read Fqtoperacaop write fqtoperacaop;
    property qthorap : Double read Fqthorap write fqthorap;
    property vlpisp : Currency read Fvlpisp write fvlpisp;
    property vlcofinsp : Currency read Fvlcofinsp write fvlcofinsp;
    property vlcsllp : Currency read Fvlcsllp write fvlcsllp;
    property vlirpjp : Currency read Fvlirpjp write fvlirpjp;
    property vlicmsp : Currency read Fvlicmsp write fvlicmsp;
    property vlipip : Currency read Fvlipip write fvlipip;
    property nuprazoentrega : Integer read Fnuprazoentrega write fnuprazoentrega;
    property dtaprovacao : TDate read Fdtaprovacao write fdtaprovacao;
    property vllucro : Currency read Fvllucro write fvllucro;
    property vllucrop : Currency read Fvllucrop write fvllucrop;
    property aliss : Double read Faliss write faliss;
    property vlissp : Currency read Fvlissp write fvlissp;
    property vliss : Currency read Fvliss write fvliss;
    property vlimpostop : Currency read Fvlimpostop write fvlimpostop;
    property vlimposto :currency read Fvlimposto write fvlimposto;
    property vlvendaliquidap : Currency read Fvlvendaliquidap write fvlvendaliquidap;
    property vlvendaliquida : Currency read Fvlvendaliquida write fvlvendaliquida;
    property vllucrobrutop : Currency read Fvllucrobrutop write fvllucrobrutop;
    property vllucrobruto : Currency read Fvllucrobruto write fvllucrobruto;
    property vldespesa : Currency read Fvldespesa write fvldespesa;
    property vldespesap : Currency read Fvldespesap write fvldespesap;
    property vldespesaadministrativa : Currency read Fvldespesaadministrativa write fvldespesaadministrativa;
    property vldespesaadministrativap : Currency read Fvldespesaadministrativap write fvldespesaadministrativap;
    property vldespesafretep : Currency read Fvldespesafretep write fvldespesafretep;
    property vldespesafrete : Currency read Fvldespesafrete write fvldespesafrete;
    property vldespesacomercialp : Currency read Fvldespesacomercialp write fvldespesacomercialp;
    property vldespesacomercial : Currency read Fvldespesacomercial write fvldespesacomercial;
    property vldespesaembalagemp : Currency read Fvldespesaembalagemp write fvldespesaembalagemp;
    property vldespesaembalagem : Currency read Fvldespesaembalagem write fvldespesaembalagem;
    property vldespesasegurop : Currency read Fvldespesasegurop write fvldespesasegurop;
    property vldespesaseguro : Currency read Fvldespesaseguro write fvldespesaseguro;
    property vllucroircsp : Currency read Fvllucroircsp write fvllucroircsp;
    property vllucroircs : Currency read Fvllucroircs write fvllucroircs;
    property prdespesaadministrativa : Double read Fprdespesaadministrativa write fprdespesaadministrativa;
    property prdespesafrete : Double read Fprdespesafrete write fprdespesafrete;
    property prdespesacomercial : Double read Fprdespesacomercial write fprdespesacomercial;
    property prdespesaembalagem : Double read Fprdespesaembalagem write fprdespesaembalagem;
    property prdespesaseguro : Double read Fprdespesaseguro write fprdespesaseguro;
    property vlircsllp : Currency read Fvlircsllp write fvlircsllp;
    property vlircsll : Currency read Fvlircsll write fvlircsll;
    property alsimples : Double read Falsimples write falsimples;
    property vlsimplesp : Currency read Fvlsimplesp write fvlsimplesp;
    property vlsimples : Currency read Fvlsimples write fvlsimples;
    property vlrecursop : Currency read Fvlrecursop write fvlrecursop;
    property vlrecurso : Currency read Fvlrecurso write fvlrecurso;
    property prdesconto : Double read Fprdesconto write fprdesconto;
    property vltotalsdesconto : Currency read Fvltotalsdesconto write fvltotalsdesconto;
    property nusequencia : Integer read Fnusequencia write fnusequencia;
    property dsproduto : string read Fdsproduto write fdsproduto;
    property cdstitorcamento : Integer read Fcdstitorcamento write fcdstitorcamento;
    property bocertificado : String read Fbocertificado write fbocertificado;
    property boinftecnica : String read Fboinftecnica write fboinftecnica;
    property vldescontoproducao : Currency read Fvldescontoproducao write fvldescontoproducao;
    property cddigitadoembalagem : string read Fcddigitadoembalagem write fcddigitadoembalagem;
    property vlacrescimo : Currency read Fvlacrescimo write fvlacrescimo;
    property nuperiodicidade : integer read Fnuperiodicidade write fnuperiodicidade;
    constructor create;
    destructor destroy; override;
  end;
  TItorcamentoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItorcamento;
    procedure SetItem(Index: Integer; const Value: TItorcamento);
  public
    function New: TItorcamento;
    property Items[Index: Integer]: TItorcamento read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function indice(codigo:integer):integer;
    function excluir(codigo:integer):boolean;
    procedure Limpar;
    function GetVl(nmfield:string):currency;
    function GetQt(nmfield:string):Double;
    procedure CalcularICMS(boicmssubtrib:String);
    procedure RatearFrete(valor:currency; boexibirfrete: string);
    procedure RatearDesconto(valor: currency; boitemdesconto:String);
    procedure RatearAcrescimo(valor:currency; boitemacrescimo:String);
  end;
  TTPOrcamento = class(TRegistroQuipos)
  private
    fbomarkupdespesacomercial : String;
    fbomarkupfrete : String;
    fbomarkupembalagem : String;
    fbomarkupseguro : String;
    fbomarkupdespesaadministrativa : String;
    fprmarkupembalagem : Double;
    fprmarkupfrete : Double;
    fprmarkupseguro : Double;
    fprmarkupdespesaadministrativa : Double;
    fprmarkupdespesacomercial : Double;
    fprmarkuplucro : Double;
    fprmarkupircs : double;
    fboitemtp : String;
    fboitemanalisecritica : String;
    fboitemacrescimo : String;
    fboitemdsproduto : String;
    fboitemdesenhoanterior : String;
    fboitemdescricao : String;
    fboitemvlminimo : String;
    fboitemdescontomaximo : String;
    fboitemdesconto : String;
    fboitemmaterialpis : String;
    fboitemmaterialcofins : String;
    fboitemnuclfiscal : String;
    fboitemdtaprovacao : String;
    fboitemnuprazoentrega : String;
    fboitemtpicms : String;
    fboitemtpipi : String;
    fboitemformula : String;
    fboitemmaterial : String;
    fboitemmaterialformula : String;
    fboitemcusto : String;
    fboitemdesenhoposicao : String;
    fboitemdesenhorevisao : String;
    fboitemrecurso : String;
    fboitemrecursoalteravalor : String;
    fboitemrecursooperacao : String;
    fboitemrecursopreparacao : String;
    fboitemcondpagto : String;
    fboitemalterarvalor : String;
    fboitemperiodicidade: String;
    fboitemcdperiodicidade: String;
    fboacrescimo : String;
    fboprodutoembalagem: String;
    fbocopiardiasemana : String;
    fboproduto : String;
    fbogerarrequisicaoproducao : String;
    fbocontrato: String;
    fboreportanalitico: String;
    fboreportorcamento: String;
    fboobservacao: String;
    fboobservacaocopiar: String;
    fboobservacaointerna: String;
    fboclienteentrega: String;
    fborepresentante: String;
    fboclientereferencia: String;
    fbodsobservacaocliente: String;
    fboexibirnmcliente: String;
    fboexibirfrete: String;
    fboicmssubtrib: String;
    fbodsobservacaoitem: String;
    fbomadeira: String;
    fbofrete: String;
    fbotransportadora: String;
    fbofuncionario: String;
    fbofuncionarioorcamentista: String;
    fbocertificado: String;
    fboinftecnica: String;
    fbocaldeiraria: String;
    fbofuncionariousuario: String;
    fbonudias: String;
    fbonusequencia: String;
    fboicms: String;
    fboipi: String;
    fbodesconto: String;
    fbotpcobranca: String;
    fbotpgrade: String;
    fbodtprventregaitem: String;
    fbocalculo: String;
    fbocotacao: String;
    fbonuitem: String;
    fboitcontcliente: String;
    fboanalisecritica: String;
    fbocomercial: String;
    fbocotacaoitem: String;
    fbodsdesenho: String;
    fboarquivo: String;
    femailcopia : string;
    fcdtpipi : integer;
    fdsobservacao : string;
    fcdtpfrete : String;
    ftpdata : string;
    fdstitulodimensional : string;
    faliss : Double;
    falicms : Double;
    falpisservico : Double;
    falpis : Double;
    falipi : Double;
    falcofinsservico : Double;
    falcofins : Double;
    falirpj : Double;
    falirpjservico : Double;
    falcsll : Double;
    falcsllservico : Double;
    falsimples : Double;
    falsimplesservico : Double;
    fnudiasentrega : Integer;
    fnudiasvalidade : Integer;
    Fboprmulta: String;
    Fboprmoradiaria: String;
    Fbonudiasrescisao: String;
    Fbodstag2: String;
    Fbonudiasmedicao: String;
    Fbodstag: String;
    Fbodstag3: String;
    Fbodstag4: String;
    Fnmdstag3: string;
    Fnmdstag: string;
    Fnmdstag2: string;
    Fnmdstag4: string;
    fcdtppedidomaterial: Integer;
    fboiss: String;
    fbojustificarmudancastatus: String;
    fboitemvlunitariotpcobranca: String;
    Fnmperiodicidade: string;
    Fdsnudias: string;
    Fdsreferencia: string;
    Fdsorcamentista: string;
    Fdsrepresentante: string;
    Fdsresponsavel: string;
    Fbodstag5: String;
    Fnmdstag5: string;
    Fcdtporcamento: integer;
    fnmtporcamento : string;
    Fbomarkupcpp: string;
    Fdsassuntoemail: string;
    Fboexibiralternativo: string;
    Fdstituloemail: string;
    Fboitemperfil: string;
    Fboitemetapa: string;
    Fbocriterioorcamento: string;
    Fbofuncionariovendedor: string;
  public
    [keyfield]
    property cdtporcamento : integer read Fcdtporcamento write Fcdtporcamento;
    property cdtpipi : integer read fcdtpipi write fcdtpipi;
    property cdtpfrete : string read fcdtpfrete write fcdtpfrete;
    property cdtppedidomaterial : Integer read fcdtppedidomaterial write fcdtppedidomaterial;
    property nmtporcamento : string read fnmtporcamento write fnmtporcamento;
    property boicms: String read fboicms write fboicms;
    property boipi: String read fboipi write fboipi;
    property bodesconto: String read fbodesconto write fbodesconto;
    property botpcobranca: String read fbotpcobranca write fbotpcobranca;
    property botpgrade: String read fbotpgrade write fbotpgrade;
    property bocotacao: String read fbocotacao write fbocotacao;
    property bodtprventregaitem: String read fbodtprventregaitem write fbodtprventregaitem;
    property bocalculo: String read fbocalculo write fbocalculo;
    property bofuncionariovendedor : string read Fbofuncionariovendedor write Fbofuncionariovendedor;
    property bofuncionarioorcamentista: String read fbofuncionarioorcamentista write fbofuncionarioorcamentista;
    property bonudias: String read fbonudias write fbonudias;
    property bofrete: String read fbofrete write fbofrete;
    property botransportadora: String read fbotransportadora write fbotransportadora;
    property boicmssubtrib: String read fboicmssubtrib write fboicmssubtrib;
    property bodsdesenho: String read fbodsdesenho write fbodsdesenho;
    property boexibiralternativo : string read Fboexibiralternativo write Fboexibiralternativo;
    property bocotacaoitem : String read fbocotacaoitem write fbocotacaoitem;
    property bonuitem: String read fbonuitem write fbonuitem;
    property bomadeira: String read fbomadeira write fbomadeira;
    property nudiasentrega : Integer read fnudiasentrega write fnudiasentrega;
    property boexibirnmcliente: String read fboexibirnmcliente write fboexibirnmcliente;
    property boexibirfrete: String read fboexibirfrete write fboexibirfrete;
    property bofuncionario: String read fbofuncionario write fbofuncionario;
    property bofuncionariousuario: String read fbofuncionariousuario write fbofuncionariousuario;
    property bodsobservacaoitem: String read fbodsobservacaoitem write fbodsobservacaoitem;
    property boitemalterarvalor : String read fboitemalterarvalor write fboitemalterarvalor;
    property bodsobservacaocliente: String read fbodsobservacaocliente write fbodsobservacaocliente;
    property boitemtpicms : String read fboitemtpicms write fboitemtpicms;
    property boitemtpipi : String read fboitemtpipi write fboitemtpipi;
    property boitemdesenhoposicao : String read fboitemdesenhoposicao write fboitemdesenhoposicao;
    property boitemdesenhorevisao : String read fboitemdesenhorevisao write fboitemdesenhorevisao;
    property boitemformula : String read fboitemformula write fboitemformula;
    property boitemmaterial : String read fboitemmaterial write fboitemmaterial;
    property boitemcusto : String read fboitemcusto write fboitemcusto;
    property boitemrecurso : String read fboitemrecurso write fboitemrecurso;
    property boclientereferencia: String read fboclientereferencia write fboclientereferencia;
    property boitemperfil : string read Fboitemperfil write Fboitemperfil;
    property borepresentante: String read fborepresentante write fborepresentante;
    property boclienteentrega: String read fboclienteentrega write fboclienteentrega;
    property boobservacao: String read fboobservacao write fboobservacao;
    property boobservacaointerna: String read fboobservacaointerna write fboobservacaointerna;
    property nudiasvalidade : Integer read fnudiasvalidade write fnudiasvalidade;
    property boitemnuprazoentrega : String read fboitemnuprazoentrega write fboitemnuprazoentrega;
    property boitemdtaprovacao : String read fboitemdtaprovacao write fboitemdtaprovacao;
    property boitemnuclfiscal : String read fboitemnuclfiscal write fboitemnuclfiscal;
    property boitemmaterialcofins : String read fboitemmaterialcofins write fboitemmaterialcofins;
    property boitemmaterialpis : String read fboitemmaterialpis write fboitemmaterialpis;
    property prmarkupfrete : Double read fprmarkupfrete write fprmarkupfrete;
    property prmarkupembalagem : Double read fprmarkupembalagem write fprmarkupembalagem;
    property prmarkupseguro : Double read fprmarkupseguro write fprmarkupseguro;
    property prmarkupdespesaadministrativa : Double read fprmarkupdespesaadministrativa write fprmarkupdespesaadministrativa;
    property prmarkupdespesacomercial : Double read fprmarkupdespesacomercial write fprmarkupdespesacomercial;
    property prmarkuplucro : Double read fprmarkuplucro write fprmarkuplucro;
    property prmarkupircs : double read fprmarkupircs write fprmarkupircs;
    property bomarkupfrete : String read fbomarkupfrete write fbomarkupfrete;
    property bomarkupembalagem : String read fbomarkupembalagem write fbomarkupembalagem;
    property bomarkupseguro : String read fbomarkupseguro write fbomarkupseguro;
    property bomarkupdespesaadministrativa : String read fbomarkupdespesaadministrativa write fbomarkupdespesaadministrativa;
    property bomarkupdespesacomercial : String read fbomarkupdespesacomercial write fbomarkupdespesacomercial;
    property bomarkupcpp : string read Fbomarkupcpp write Fbomarkupcpp;
    property aliss : Double read faliss write faliss;
    property alicms : Double read falicms write falicms;
    property alpisservico : Double read falpisservico write falpisservico;
    property alpis : Double read falpis write falpis;
    property alcofinsservico : Double read falcofinsservico write falcofinsservico;
    property alcofins : Double read falcofins write falcofins;
    property alirpj : Double read falirpj write falirpj;
    property alirpjservico : Double read falirpjservico write falirpjservico;
    property alcsll : Double read falcsll write falcsll;
    property alcsllservico : Double read falcsllservico write falcsllservico;
    property alsimples : Double read falsimples write falsimples;
    property alsimplesservico : Double read falsimplesservico write falsimplesservico;
    property alipi : Double read falipi write falipi;
    property boitemrecursoalteravalor : String read fboitemrecursoalteravalor write fboitemrecursoalteravalor;
    property boitemrecursopreparacao : String read fboitemrecursopreparacao write fboitemrecursopreparacao;
    property boitemrecursooperacao : String read fboitemrecursooperacao write fboitemrecursooperacao;
    property tpdata : string read ftpdata write ftpdata;
    property boitcontcliente: String read fboitcontcliente write fboitcontcliente;
    property boanalisecritica: String read fboanalisecritica write fboanalisecritica;
    property boitemdesconto : String read fboitemdesconto write fboitemdesconto;
    property bonusequencia: String read fbonusequencia write fbonusequencia;
    property dstituloemail : string read Fdstituloemail write Fdstituloemail;
    property dsassuntoemail : string read Fdsassuntoemail write Fdsassuntoemail;
    property emailcopia : string read femailcopia write femailcopia;
    property boitemdescricao : String read fboitemdescricao write fboitemdescricao;
    property bocomercial: String read fbocomercial write fbocomercial;
    property bocaldeiraria: String read fbocaldeiraria write fbocaldeiraria;
    property bocertificado: String read fbocertificado write fbocertificado;
    property boinftecnica: String read fboinftecnica write fboinftecnica;
    property boitemetapa : string read Fboitemetapa write Fboitemetapa;
    property boreportanalitico: String read fboreportanalitico write fboreportanalitico;
    property boreportorcamento: String read fboreportorcamento write fboreportorcamento;
    property boitemmaterialformula : String read fboitemmaterialformula write fboitemmaterialformula;
    property boitemcondpagto : String read fboitemcondpagto write fboitemcondpagto;
    property boobservacaocopiar: String read fboobservacaocopiar write fboobservacaocopiar;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    property boitemvlminimo : String read fboitemvlminimo write fboitemvlminimo;
    property boitemdescontomaximo : String read fboitemdescontomaximo write fboitemdescontomaximo;
    property bocontrato: String read fbocontrato write fbocontrato;
    property boitemdesenhoanterior : String read fboitemdesenhoanterior write fboitemdesenhoanterior;
    property boitemdsproduto : String read fboitemdsproduto write fboitemdsproduto;
    property boarquivo : String read fboarquivo write fboarquivo;
    property boprodutoembalagem: String read fboprodutoembalagem write fboprodutoembalagem;
    property bocopiardiasemana : String read fbocopiardiasemana write fbocopiardiasemana;
    property bogerarrequisicaoproducao : String read fbogerarrequisicaoproducao write fbogerarrequisicaoproducao;
    property boitemanalisecritica : String read fboitemanalisecritica write fboitemanalisecritica;
    property boacrescimo : String read fboacrescimo write fboacrescimo;
    property boitemacrescimo : String read fboitemacrescimo write fboitemacrescimo;
    property dstitulodimensional : string read fdstitulodimensional write fdstitulodimensional;
    property boproduto : String read fboproduto write fboproduto;
    property boitemtp : String read fboitemtp write fboitemtp;
    property boprmulta : String read Fboprmulta write fboprmulta;
    property boprmoradiaria : String read Fboprmoradiaria write fboprmoradiaria;
    property boitemperiodicidade : String read Fboitemperiodicidade write Fboitemperiodicidade;
    property bonudiasrescisao : String read Fbonudiasrescisao write Fbonudiasrescisao;
    property boitemcdperiodicidade : String read Fboitemcdperiodicidade write Fboitemcdperiodicidade;
    property bodstag : String read Fbodstag write Fbodstag;
    property bodstag2 : String read Fbodstag2 write Fbodstag2;
    property bodstag3 : String read Fbodstag3 write Fbodstag3;
    property bonudiasmedicao : String read Fbonudiasmedicao write Fbonudiasmedicao;
    property nmdstag : string read Fnmdstag write Fnmdstag;
    property nmdstag2 : string read Fnmdstag2 write Fnmdstag2;
    property nmdstag3 : string read Fnmdstag3 write Fnmdstag3;
    property bodstag4 : String read Fbodstag4 write Fbodstag4;
    property nmdstag4 : string read Fnmdstag4 write Fnmdstag4;
    property bocriterioorcamento : string read Fbocriterioorcamento write Fbocriterioorcamento;
    property boiss : String read fboiss write fboiss;
    property bojustificarmudancastatus : String read fbojustificarmudancastatus write fbojustificarmudancastatus;
    property boitemvlunitariotpcobranca : String read fboitemvlunitariotpcobranca write fboitemvlunitariotpcobranca;
    property nmperiodicidade : string read Fnmperiodicidade write Fnmperiodicidade;
    property dsnudias : string read Fdsnudias write Fdsnudias;
    property dsreferencia : string read Fdsreferencia write Fdsreferencia;
    property dsorcamentista : string read Fdsorcamentista write Fdsorcamentista;
    property dsrepresentante : string read Fdsrepresentante write Fdsrepresentante;
    property dsresponsavel : string read Fdsresponsavel write Fdsresponsavel;
    property nmdstag5 : string read Fnmdstag5 write Fnmdstag5;
    property bodstag5 : String read Fbodstag5 write Fbodstag5;
  end;
  TOrcamento = class(TRegistroQuipos)
  private
    ftporcamento : TTPOrcamento;
    fcdorcamento : Integer;
    fcdtporcamento : integer;
    fcdproduto : Integer;
    fcddigitado : string;
    fcliente : TCliente;
    fcdcliente : LargeInt;
    Fboitemdesconto: String;
    Fvltotalcipi: Currency;
    Fvldespesa: Currency;
    Fvlcofins: Currency;
    Fvldespesaseguro: Currency;
    Fvlpis: Currency;
    Fvlirpj: Currency;
    Fvlfrete: Currency;
    Fvltotalsdesconto: Currency;
    Fvliss: Currency;
    Fvlcomissao: Currency;
    Fvllucro: Currency;
    Fvllucrobruto: Currency;
    Fvlmaterial: Currency;
    Fvlicmssubtrib: Currency;
    Fvlacrescimo: Currency;
    Fvlircsll: Currency;
    Fvloperacao: Currency;
    Fvllucroir: Currency;
    Fvlsimples: Currency;
    Fvldesconto: Currency;
    Fvlproducao: Currency;
    Fvlpreparacao: Currency;
    Fvlimposto: Currency;
    Fvlproduto: Currency;
    Fvlcsll: Currency;
    Fvldespesaadministrativa: Currency;
    Fvltotal: Currency;
    Fvlrecurso: Currency;
    Fvlipi: Currency;
    Fvlcpp: Currency;
    Fvlcusto: Currency;
    Fvlicms: Currency;
    Fvldespesaembalagem: Currency;
    Fvldespesacomercial: Currency;
    Fvlvendaliquida: Currency;
    Fvldespesafrete: currency;
    Fqthora: Double;
    Falicms: Double;
    Fqtpreparacao: Double;
    Fqtoperacao: Double;
    Fprmulta: Double;
    Fprmoradiaria: Double;
    Fpsbruto: Double;
    Fqtaprovado: Double;
    Fqtitem: Double;
    Fprdesconto: Double;
    Fcduf: Integer;
    Fcdrepresentante: Integer;
    Fnuperiodicidade: Integer;
    Fcdtpfrete: String;
    Fcdmunicipio: Integer;
    Fcdfuncionariovendedor: Integer;
    Fcdclienteentrega: Integer;
    Fcdtpcobranca: Integer;
    Fcdorcamentoatravesde: Integer;
    Fcdfuncionarioorcamentista: Integer;
    Fcditcontcliente: Integer;
    Fcdstorcamento: Integer;
    Fcdperiodicidade: Integer;
    Fcdcondpagto: integer;
    Fcdfuncionario: Integer;
    Fnucontrato: string;
    Fnmcontato: string;
    Fnufone: string;
    Fdsobservacao: string;
    Fnmbairro: string;
    Fdsendereco: string;
    Fnufax: string;
    Fcdclienteliberado: LargeInt;
    Fdsnumero: string;
    Fdsreferencia: string;
    Fdscomplemento: string;
    Fcdtransportadora: largeint;
    Fnucep: string;
    Fnucxpostal: string;
    Fdsobsinterna: string;
    Fnucotacao: string;
    Fdtprorrogacao: TDate;
    Fdtemissao: TDate;
    Fdtprventrega: TDate;
    Fdtvalidade: TDate;
    Fdtfechamento: TDate;
    Fdtresposta: TDate;
    Fhrrespostafinal: TTime;
    Fhrresposta: TTime;
    Fnudiasrescisao: Integer;
    Fnudias: integer;
    Fnudiasmedicao: integer;
    Fdstag2: string;
    Fdstag4: string;
    Fdstag5: string;
    Fdstag3: string;
    Fdstag: string;
    Fitorcamento: TItorcamentoList;
    Fboalmoco: String;
    Fbomanutencao: String;
    Fcditcontclienteresponsavel: Integer;
    Fhrfim: TTime;
    Fhrinicio: TTime;
    Fnuperiodicidadeatendimento: Integer;
    Fcdperiodicidadeatendimento: Integer;
    ftpcobranca: ttpcobranca;
    fcondpagto: tcondpagto;
    Fstorcamento: tstorcamento;
    fdtemail: TDate;
    procedure Setstorcamento(const Value: tstorcamento);
  public
    property storcamento : tstorcamento read Fstorcamento write Setstorcamento;
    property itorcamento : TItorcamentoList read Fitorcamento write Fitorcamento;
    property tpcobranca : ttpcobranca read ftpcobranca write ftpcobranca;
    property condpagto : tcondpagto read fcondpagto write fcondpagto;
    property tporcamento : ttporcamento read ftporcamento write ftporcamento;
    property cliente : TCliente read fcliente write fcliente;
    [keyfield]
    property cdorcamento : integer read fcdorcamento write fcdorcamento;
    [FK]
    property cdtporcamento : Integer read fcdtporcamento write fcdtporcamento;
    [FK]
    property cdproduto : Integer read fcdproduto write fcdproduto;
    property cddigitado : string read fcddigitado write fcddigitado;
    [FK]
    property cdcliente : LargeInt read fcdcliente write fcdcliente;
    [FK]
    property cdstorcamento : Integer read Fcdstorcamento write Fcdstorcamento;
    [FK]
    property cdcondpagto : integer read Fcdcondpagto write Fcdcondpagto;
    [FK]
    property cdtpfrete : String read Fcdtpfrete write Fcdtpfrete;
    [FK]
    property cdrepresentante : Integer read Fcdrepresentante write Fcdrepresentante;
    [FK]
    property cdfuncionariovendedor : Integer read Fcdfuncionariovendedor write Fcdfuncionariovendedor;
    [FK]
    property cdfuncionarioorcamentista : Integer read Fcdfuncionarioorcamentista write Fcdfuncionarioorcamentista;
    [FK]
    property cdclienteliberado : LargeInt read Fcdclienteliberado write Fcdclienteliberado;
    [FK]
    property cdtpcobranca : Integer read Fcdtpcobranca write Fcdtpcobranca;
    [FK]
    property cdtransportadora : largeint read Fcdtransportadora write Fcdtransportadora;
    [FK]
    property cdfuncionario : Integer read Fcdfuncionario write Fcdfuncionario;
    [FK]
    property cduf : Integer read Fcduf write Fcduf;
    [FK]
    property cdclienteentrega : Integer read Fcdclienteentrega write Fcdclienteentrega;
    [FK]
    property cdmunicipio : Integer read Fcdmunicipio write Fcdmunicipio;
    [FK]
    property cditcontcliente : Integer read Fcditcontcliente write Fcditcontcliente;
    [FK]
    property cdorcamentoatravesde : Integer read Fcdorcamentoatravesde write Fcdorcamentoatravesde;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property dtprventrega : TDate read Fdtprventrega write Fdtprventrega;
    property dtvalidade : TDate read Fdtvalidade write Fdtvalidade;
    property dtprorrogacao : TDate read Fdtprorrogacao write Fdtprorrogacao;
    property nucotacao : string read Fnucotacao write Fnucotacao;
    property vltotal : Currency read Fvltotal write Fvltotal;
    property vlproduto : Currency read Fvlproduto write Fvlproduto;
    property vlicms : Currency read Fvlicms write Fvlicms;
    property prdesconto : Double read Fprdesconto write Fprdesconto;
    property vldesconto : Currency read Fvldesconto write Fvldesconto;
    property vltotalsdesconto : Currency read Fvltotalsdesconto write Fvltotalsdesconto;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property dsobsinterna : string read Fdsobsinterna write Fdsobsinterna;
    property vlfrete : Currency read Fvlfrete write Fvlfrete;
    property qtitem : Double read Fqtitem write Fqtitem;
    property qtaprovado : Double read Fqtaprovado write Fqtaprovado;
    property dtfechamento : TDate read Fdtfechamento write Fdtfechamento;
    property alicms : Double read Falicms write Falicms;
    property vlipi : Currency read Fvlipi write Fvlipi;
    property vltotalcipi : Currency read Fvltotalcipi write Fvltotalcipi;
    property psbruto : Double read Fpsbruto write Fpsbruto;
    property vlicmssubtrib : Currency read Fvlicmssubtrib write Fvlicmssubtrib;
    property dsreferencia : string read Fdsreferencia write Fdsreferencia;
    property dtresposta : TDate read Fdtresposta write Fdtresposta;
    property dtemail : TDate read fdtemail write fdtemail;
    property vlpis : Currency read Fvlpis write Fvlpis;
    property vlcofins : Currency read Fvlcofins write Fvlcofins;
    property vlcsll : Currency read Fvlcsll write Fvlcsll;
    property vlirpj : Currency read Fvlirpj write Fvlirpj;
    property vlproducao : Currency read Fvlproducao write Fvlproducao;
    property vlmaterial : Currency read Fvlmaterial write Fvlmaterial;
    property vlcusto : Currency read Fvlcusto write Fvlcusto;
    property vlpreparacao : Currency read Fvlpreparacao write Fvlpreparacao;
    property vloperacao : Currency read Fvloperacao write Fvloperacao;
    property qtoperacao : Double read Fqtoperacao write Fqtoperacao;
    property qtpreparacao : Double read Fqtpreparacao write Fqtpreparacao;
    property qthora : Double read Fqthora write Fqthora;
    property vllucro : Currency read Fvllucro write Fvllucro;
    property vliss : Currency read Fvliss write Fvliss;
    property vlimposto : Currency read Fvlimposto write Fvlimposto;
    property vlvendaliquida : Currency read Fvlvendaliquida write Fvlvendaliquida;
    property vllucrobruto : Currency read Fvllucrobruto write Fvllucrobruto;
    property vldespesa : Currency read Fvldespesa write Fvldespesa;
    property vldespesaadministrativa : Currency read Fvldespesaadministrativa write Fvldespesaadministrativa;
    property vldespesafrete : currency read Fvldespesafrete write Fvldespesafrete;
    property vldespesacomercial : Currency read Fvldespesacomercial write Fvldespesacomercial;
    property vldespesaembalagem : Currency read Fvldespesaembalagem write Fvldespesaembalagem;
    property vldespesaseguro : Currency read Fvldespesaseguro write Fvldespesaseguro;
    property vllucroir : Currency read Fvllucroir write Fvllucroir;
    property vlircsll : Currency read Fvlircsll write Fvlircsll;
    property vlcpp : Currency read Fvlcpp write Fvlcpp;
    property vlsimples : Currency read Fvlsimples write Fvlsimples;
    property vlrecurso : Currency read Fvlrecurso write Fvlrecurso;
    property vlcomissao : Currency read Fvlcomissao write Fvlcomissao;
    property hrresposta : TTime read Fhrresposta write Fhrresposta;
    property hrrespostafinal : TTime read Fhrrespostafinal write Fhrrespostafinal;
    property boitemdesconto : String read Fboitemdesconto write Fboitemdesconto;
    property dsendereco : string read Fdsendereco write Fdsendereco;
    property dsnumero : string read Fdsnumero write Fdsnumero;
    property nmbairro : string read Fnmbairro write Fnmbairro;
    property nucxpostal : string read Fnucxpostal write Fnucxpostal;
    property nucep : string read Fnucep write Fnucep;
    property nufone : string read Fnufone write Fnufone;
    property nufax : string read Fnufax write Fnufax;
    property nmcontato : string read Fnmcontato write Fnmcontato;
    property dscomplemento : string read Fdscomplemento write Fdscomplemento;
    property nucontrato : string read Fnucontrato write Fnucontrato;
    [FK]
    property cdperiodicidade : Integer read Fcdperiodicidade write Fcdperiodicidade;
    property nuperiodicidade : Integer read Fnuperiodicidade write Fnuperiodicidade;
    property vlacrescimo : Currency read Fvlacrescimo write Fvlacrescimo;
    property prmulta : Double read Fprmulta write Fprmulta;
    property prmoradiaria : Double read Fprmoradiaria write Fprmoradiaria;
    property nudiasrescisao : Integer read Fnudiasrescisao write Fnudiasrescisao;
    property nudias : integer read Fnudias write Fnudias;
    property dstag : string read Fdstag write Fdstag;
    property dstag2 : string read Fdstag2 write Fdstag2;
    property dstag3 : string read Fdstag3 write Fdstag3;
    property nudiasmedicao : integer read Fnudiasmedicao write Fnudiasmedicao;
    property dstag4 : string read Fdstag4 write Fdstag4;
    property dstag5 : string read Fdstag5 write Fdstag5;
    [FK]
    property cditcontclienteresponsavel : Integer read Fcditcontclienteresponsavel write fcditcontclienteresponsavel;
    property boalmoco : String read Fboalmoco write fboalmoco;
    property hrinicio : TTime read Fhrinicio write fhrinicio;
    property hrfim : TTime read Fhrfim write fhrfim;
    property bomanutencao : String read Fbomanutencao write fbomanutencao;
    property nuperiodicidadeatendimento : Integer read Fnuperiodicidadeatendimento write Fnuperiodicidadeatendimento;
    [FK]
    property cdperiodicidadeatendimento : Integer read Fcdperiodicidadeatendimento write Fcdperiodicidadeatendimento;
    constructor create; overload;
    destructor destroy; override;
    procedure calcular_acrescimo_analise_critica(cditorcamento:string);
    function getcditorcamento(cdorcamento, cdproduto:integer):integer;
    function copiar:integer;
    function RegistrarMudancaStatus(cdstorcamento: string; texto:string=''): boolean;
    function AnaliseCriticaItemFoiFeito(cditorcamento:string):Boolean;
    function AnaliseCriticaItemRestrita(cditorcamento:string):Boolean;
    function SetStatus(cdstorcamento: string): Boolean;
    function GerarCotacao:Boolean;
    procedure AlterarVlUnitarioProdutodeAcordocomTipoCobranca;
    procedure Totalizar;
  end;

implementation

uses uanalisecritica, classeorcamentocopiar;

constructor TOrcamento.create;
begin
  inherited create;
  fstorcamento := tstorcamento.create;
  fcondpagto := tcondpagto.create;
  ftporcamento := ttporcamento.create;
  ftpcobranca := ttpcobranca.create;
  fcliente := TCliente.create;
  Fitorcamento := TItorcamentoList.Create;
end;

function TOrcamento.getcditorcamento(cdorcamento, cdproduto: integer): integer;
begin
  result := RetornaSQLInteger('select cditorcamento from itorcamento where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto.tostring+' and cdorcamento='+cdorcamento.tostring);
  if RetornaSQLInteger('select count(*) from itorcamento where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto.tostring+' and cdorcamento='+cdorcamento.tostring) > 0 then
  begin
    result := selecionar_Entrada(_itorcamento, cdorcamento.tostring, cdproduto);
  end;
end;

function TOrcamento.copiar: integer;
var
  orcamentocopiar : TOrcamentoCopiar;
begin
  orcamentocopiar := TOrcamentoCopiar.create;
  try
    result := orcamentocopiar.executar(cdorcamento);
  finally
    orcamentocopiar.destroy;
  end;
end;

function TOrcamento.SetStatus(cdstorcamento: string): Boolean;
begin
  Result := False;
  if (tporcamento.boanalisecritica = _s) and BooleandoCodigo(_storcamento, cdstorcamento, _boanalisecritica) and (not Analise_Critica(IntToStr(cdorcamento))) then
  begin
    Exit;
  end;
  result := ExecutaSQL('update orcamento set cdstorcamento='+cdstorcamento+' where cdempresa='+empresa.cdempresa.tostring+' and cdorcamento='+IntToStr(cdorcamento));
  if result then
  begin
    RegistrarMudancaStatus(cdstorcamento);
  end;
end;

function Torcamento.RegistrarMudancaStatus(cdstorcamento: string; texto:string=''): boolean;
var
  dsjustificativa : string;
  function makesql:string;
  begin
    result := 'insert into hstorcamento'+
              '(CDHSTorcamento,CDorcamento,CDSTorcamento,CDUSUARIO,CDCOMPUTADOR,CDEMPRESA,TSHISTORICO,DSJUSTIFICATIVA)values('+
                GerarCodigo(_hstorcamento)+','+
                IntToStr(cdorcamento)+','+
                cdstorcamento+','+
                inttostr(usuario.cdusuario)+','+
                vgcdcomputador+','+
                Empresa.cdempresa.tostring+','+
                quotedstr(tsBancos)+','+
                getnull(dsjustificativa, _string)+')';
  end;
begin
  if texto <> '' then
  begin
    dsjustificativa := texto;
  end;
  if (tporcamento.bojustificarmudancastatus = _s) and (texto = '') then
  begin
    DialogoJustificativa('Justificar mudança de status', dsjustificativa);
  end;
  result := ExecutaSQL(makesql);
end;

procedure TOrcamento.Setstorcamento(const Value: tstorcamento);
begin
  Fstorcamento := Value;
end;

procedure TOrcamento.Totalizar;
//var
  //i : integer;
begin
  VLPRODUTO := itorcamento.getvl(_vltotal);
  vlipi := itorcamento.getvl(_vlipi);
  vltotalcipi := itorcamento.getvl(_vltotalcipi);
  psbruto := itorcamento.getqt(_qtitem);
  itorcamento.ratearFrete(vlfrete, tporcamento.boexibirfrete);
  itorcamento.ratearDesconto(vldesconto, tporcamento.boitemacrescimo);
  itorcamento.ratearAcrescimo(vlacrescimo, tporcamento.boitemdesconto);
  if tporcamento.boitemacrescimo = _s then
  begin
    VLACRESCIMO := itorcamento.getvl(_vlacrescimo);
  end;
  itorcamento.CalcularICMS(tporcamento.boicmssubtrib);
  if tporcamento.boitemdesconto = _s then
  begin
    VLDESCONTO := itorcamento.getvl(_vldesconto);
  end;
  if tporcamento.boexibirfrete = _s then
  begin
    vlfrete := itorcamento.getvl(_vlfrete);
  end;
  vlicmssubtrib := itorcamento.getvl(_vlicmssubtrib);
  VLTOTAL := VLPRODUTO - VLDESCONTO + VLFRETE + VLICMSSUBTRIB + VLACRESCIMO;
  if VLPRODUTO = 0 then
  begin
    PRDESCONTO := 0
  end
  else
  begin
    PRDESCONTO := VLDESCONTO * 100 / VLPRODUTO;
  end;
end;

procedure TOrcamento.AlterarVlUnitarioProdutodeAcordocomTipoCobranca;
begin
  //
end;

function TOrcamento.AnaliseCriticaItemFoiFeito(cditorcamento:string):Boolean;
begin
  result := retornasqlinteger('select count(*) '+
                              'from analisecritica '+
                              'where cdempresa='+empresa.cdempresa.tostring+' and cditorcamento='+cditorcamento) > 0;
end;

procedure TOrcamento.calcular_acrescimo_analise_critica(cditorcamento: string);
  function makesql:string;
  begin
    result := 'select itorcamento.vlacrescimo'+
                    ',itorcamento.cdorcamento'+
                    ',analisecritica.cdstanalisecritica'+
                    ',sum(itanalisecriticaresposta.vlunitario) vlunitario '+
              'from itorcamento '+
              'left join analisecritica on analisecritica.cdempresa=itorcamento.cdempresa and analisecritica.cditorcamento=itorcamento.cditorcamento '+
              'left join itanalisecritica on itanalisecritica.cdempresa=analisecritica.cdempresa and itanalisecritica.cdanalisecritica=analisecritica.cdanalisecritica '+
              'left join itanalisecriticaresposta on itanalisecriticaresposta.cdempresa=itanalisecritica.cdempresa and itanalisecriticaresposta.cditanalisecritica=itanalisecritica.cditanalisecritica '+
              'where itorcamento.cdempresa='+empresa.cdempresa.tostring+' and itorcamento.cditorcamento='+cditorcamento+' '+
              'group by itorcamento.vlacrescimo'+
                      ',itorcamento.cdorcamento'+
                      ',analisecritica.cdstanalisecritica';
  end;
var
  q : TClassequery;
  sql : tstrings;
begin
  sql := TStringList.Create;
  q   := TClasseQuery.create;
  try
    q.q.SQL.Text := makesql;
    q.q.open;
    sql.Add('update orcamento set vltotal=vltotal-'+getcurrencys(q.q.fieldbyname(_vlacrescimo).AsCurrency)+' where cdempresa='+empresa.cdempresa.tostring+' and cdorcamento='+q.q.fieldbyname(_cdorcamento).AsString+';');
    if q.q.FieldByName(_cdstanalisecritica).AsString = _3 then
    begin
      Exit;
    end;
    sql.Add('update itorcamento set vlacrescimo='+getcurrencys(q.q.fieldbyname(_vlunitario).AsCurrency)+' where cdempresa='+empresa.cdempresa.tostring+' and cditorcamento='+cditorcamento+';');
    sql.Add('update orcamento set vltotal=vltotal+'+getcurrencys(q.q.fieldbyname(_vlunitario).AsCurrency)+' where cdempresa='+empresa.cdempresa.tostring+' and cdorcamento='+q.q.fieldbyname(_cdorcamento).AsString+';');
    ExecutaScript(sql);
  finally
    sql.Free;
    q.Free;
  end;
end;

function TOrcamento.AnaliseCriticaItemRestrita(cditorcamento: string): Boolean;
begin
  result := retornasqlinteger('select count(*) from analisecritica where cdstanalisecritica=3 and cdempresa='+empresa.cdempresa.tostring+' and cditorcamento='+cditorcamento) > 0;
end;

destructor TOrcamento.destroy;
begin
  freeandnil(fcondpagto);
  freeandnil(fstorcamento);
  FreeAndNil(ftporcamento);
  freeandnil(ftpcobranca);
  FreeAndNil(fcliente);
  FreeAndNil(fitorcamento);
  inherited;
end;

constructor TITorcamento.create;
begin
  inherited;
  Fitorcamentorecurso := TitorcamentorecursoList.create;
  Fitorcamentomaterial := TitorcamentomaterialList.create;
  Fitorcamentocusto := TitorcamentocustoList.create;
  fproduto := tproduto.create;
end;

destructor TITorcamento.destroy;
begin
  FreeAndNil(fitorcamentorecurso);
  FreeAndNil(fitorcamentomaterial);
  FreeAndNil(fitorcamentocusto);
  FreeAndNil(fproduto);
  inherited;
end;

procedure TItorcamentoList.CalcularICMS(boicmssubtrib:String);
var
  i : integer;
  vlbase : currency;
begin
  for I := 0 to count-1 do
  begin
    if items[i].CDSTITORCAMENTO <> 4 then
    begin
      vlbase := items[i].VLTOTAL + items[i].VLFRETE;
      items[i].VLICMS := vlbase * items[i].ALICMS / 100;
      if (boicmssubtrib = _s) and (items[i].ALMVA>0) then
      begin
        vlbase := (vlbase + items[i].VLIPI) * ((items[i].ALMVA / 100)+1);
        items[i].VLICMSSUBTRIB := RoundTo((vlbase * items[i].ALICMSSUBTRIB / 100) - items[i].VLICMS, -2);
      end;
    end
    else
    begin
      items[i].VLICMSSUBTRIB := 0;
    end;
  end;
end;

function TItorcamentoList.excluir(codigo: integer):boolean;
var
  i : integer;
begin
  i := indice(codigo);
  result := i > -1;
  if result then
  begin
    Delete(i);
  end;
end;

function TItorcamentoList.GetItem(Index: Integer): TItorcamento;
begin
  Result := TItorcamento(Inherited Items[Index]);
end;

function TItorcamentoList.GetQt(nmfield: string): Double;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to count - 1 do
  begin
    if items[i].cdstitorcamento = 4 then
    begin
      continue;
    end;
    if nmfield = _qtitem then
    begin
      result := result + items[i].qtitem;
    end;
  end;
end;

function TItorcamentoList.GetVl(nmfield: string): currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to count - 1 do
  begin
    if items[i].cdstitorcamento = 4 then
    begin
      continue;
    end;
    if nmfield = _vldesconto then
    begin
      result := result + items[i].vldesconto;
    end;
    if nmfield = _vlfrete then
    begin
      result := result + items[i].vlfrete;
    end;
    if nmfield = _vlacrescimo then
    begin
      result := result + items[i].vlacrescimo;
    end;
    if nmfield = _vlicmssubtrib then
    begin
      result := result + items[i].vlicmssubtrib;
    end;
    if nmfield = _vltotal then
    begin
      result := result + items[i].vltotal;
    end;
    if nmfield = _vlipi then
    begin
      result := result + items[i].vlipi;
    end;
    if nmfield = _vltotalcipi then
    begin
      if items[i].CDTPIPI = 1 then
      begin
        result := result + items[i].VLTOTALCIPI
      end
      else
      begin
        result := result + items[i].VLTOTAL;
      end;
    end;
  end;
end;

function TItorcamentoList.indice(codigo: integer): integer;
var
  I: Integer;
begin
  result := -1;
  for I := 0 to count - 1 do
  begin
    if codigo = items[i].cditorcamento then
    begin
      result := i;
      break;
    end;
  end;
end;

function TItorcamentoList.Ler(DataSet: TDataset):boolean;
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

procedure TItorcamentoList.Limpar;
//var
  //i: Integer;
begin
  if count = 0 then
  begin
    exit;
  end;
  repeat
    delete(0);
  until count = 0;
end;

function TItorcamentoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itorcamento, codigo, _cdorcamento));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TItorcamentoList.New: TItorcamento;
begin
  Result := TItorcamento.Create;
  Add(Result);
end;

procedure TItorcamentoList.RatearAcrescimo(valor: currency; boitemacrescimo:String);
var
  I: Integer;
begin
  for I := 0 to count-1 do
  begin
    if (items[i].CDSTITORCAMENTO <> 4) and (getqt(_vltotal) <> 0) and (boitemacrescimo <> _s) then
    begin
      items[i].VLACRESCIMO := RoundTo(((items[i].QTITEM * items[i].VLUNITARIO) / getqt(_vltotal)) * valor, -2);
    end;
  end;
end;

procedure TItorcamentoList.RatearDesconto(valor: currency; boitemdesconto:string);
var
  I: Integer;
begin
  for I := 0 to count-1 do
  begin
    if (getqt(_vltotal) <> 0) and (boitemdesconto <> _s) then
    begin
      if items[i].CDSTITORCAMENTO <> 4 then
      begin
        items[i].vldesconto := RoundTo(((items[i].QTITEM * items[i].VLUNITARIO) / getqt(_vltotal)) * valor, -2);
      end
      else
      begin
        items[i].VLDESCONTO := 0;
      end;
    end;
  end;
end;

procedure TItorcamentoList.RatearFrete(valor: currency; boexibirfrete: string);
var
  I: Integer;
begin
  for I := 0 to count-1 do
  begin
    if items[i].CDSTITORCAMENTO <> 4 then
    begin
      if boexibirfrete <> _s then
      begin
        if (valor = 0) or (getqt(_qtitem) * items[i].QTITEM = 0) then
        begin
          items[i].VLFRETE := 0;
        end
        else
        begin
          items[i].VLFRETE := valor / getqt(_qtitem) * items[i].QTITEM;
        end;
      end;
    end
    else
    begin
      items[i].VLFRETE := 0;
    end;
  end;
end;

procedure TItorcamentoList.SetItem(Index: Integer; const Value: TItorcamento);
begin
  Put(Index, Value);
end;

{ TItorcamentoRecurso }

function TitorcamentorecursoList.GetItem(Index: Integer): Titorcamentorecurso;
begin
  Result := Titorcamentorecurso(Inherited Items[Index]);
end;

function TitorcamentorecursoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itorcamentorecurso, codigo, _cditorcamento));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TitorcamentorecursoList.Ler(DataSet: TDataset):boolean;
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

function TitorcamentorecursoList.New: Titorcamentorecurso;
begin
  Result := Titorcamentorecurso.Create;
  Add(Result);
end;

procedure TitorcamentorecursoList.SetItem(Index: Integer; const Value: Titorcamentorecurso);
begin
  Put(Index, Value);
end;
function TitorcamentomaterialList.GetItem(Index: Integer): Titorcamentomaterial;
begin
  Result := Titorcamentomaterial(Inherited Items[Index]);
end;

function TitorcamentomaterialList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itorcamentomaterial, codigo, _cditorcamento));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TitorcamentomaterialList.Ler(DataSet: TDataset):boolean;
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

function TitorcamentomaterialList.New: Titorcamentomaterial;
begin
  Result := Titorcamentomaterial.Create;
  Add(Result);
end;

procedure TitorcamentomaterialList.SetItem(Index: Integer; const Value: Titorcamentomaterial);
begin
  Put(Index, Value);
end;

{ TItorcamentoRecurso }

function TitorcamentocustoList.GetItem(Index: Integer): Titorcamentocusto;
begin
  Result := Titorcamentocusto(Inherited Items[Index]);
end;

function TitorcamentocustoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itorcamentocusto, codigo, _cditorcamento));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TitorcamentocustoList.Ler(DataSet: TDataset):boolean;
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

function TitorcamentocustoList.New: Titorcamentocusto;
begin
  Result := Titorcamentocusto.Create;
  Add(Result);
end;

procedure TitorcamentocustoList.SetItem(Index: Integer; const Value: Titorcamentocusto);
begin
  Put(Index, Value);
end;

function TOrcamento.GerarCotacao: Boolean;
var
  f, p, x, i : Integer;
  produtoList : TProdutoList;
  itformulacao : TItformulacaoList;
  pedidomaterial : TPedidoMaterial;
begin
  produtoList := TProdutoList.Create;
  itformulacao := TItformulacaoList.Create;
  try
    itorcamento.Ler(cdorcamento);
    for i := 0 to itorcamento.Count - 1 do
    begin
      itorcamento.Items[i].produto.Select(itorcamento.Items[i].cdproduto);
      itorcamento.Items[i].produto.itprodutomaterial.Ler(itorcamento.Items[i].cdproduto);
      for x := 0 to itorcamento.Items[i].produto.itprodutomaterial.Count - 1 do
      begin
        p := produtoList.getIndiceProduto(itorcamento.Items[i].produto.itprodutomaterial.Items[x].cdproduto);
        if p = - 1 then
        begin
          produtoList.New;
          p := produtoList.Count - 1;
        end;
        produtoList.Items[p].qtpedido := produtoList.Items[p].qtpedido + (itorcamento.Items[i].produto.itprodutomaterial.Items[x].qtitem * itorcamento.Items[i].qtitem); // acumular produto
      end;
      itorcamento.Items[i].produto.produtoformulacao.Ler(itorcamento.Items[i].cdproduto);
      for x := 0 to itorcamento.Items[i].produto.produtoformulacao.Count - 1 do
      begin
        itformulacao.Ler(itorcamento.Items[i].produto.produtoformulacao.Items[x].cdformulacao);
        for f := 0 to itformulacao.Count - 1 do
        begin
          p := produtoList.getIndiceProduto(itformulacao.Items[f].cdproduto);
          if p = - 1 then
          begin
            produtoList.New;
            p := produtoList.Count - 1;
            produtoList.Items[p].cdproduto := itformulacao.Items[f].cdproduto;
          end;
          produtoList.Items[p].qtpedido := produtoList.Items[p].qtpedido + (itformulacao.Items[f].qtitem * itorcamento.Items[i].qtitem); // acumular produto
        end;
      end;
    end;
    for p := 0 to produtoList.Count - 1 do
    begin
      pedidomaterial := TPedidoMaterial.create;
      try
        pedidomaterial.cdstpedidomaterial := 1;
        pedidomaterial.cdtppedidomaterial := tporcamento.cdtppedidomaterial;
        pedidomaterial.cdpedidomaterial   := qgerar.GerarCodigo(_pedidomaterial);
        pedidomaterial.dtemissao          := DtBanco;
        pedidomaterial.dtemprego          := pedidomaterial.dtemissao;
        pedidomaterial.insert;
        pedidomaterial.ItPedidoMaterial.New;
        pedidomaterial.ItPedidoMaterial.Items[0].qtsolicitada       := produtolist.items[p].qtpedido;
        pedidomaterial.ItPedidoMaterial.Items[0].cditpedidomaterial := QGerar.GerarCodigo(_itpedidomaterial);
        pedidomaterial.ItPedidoMaterial.Items[0].cdproduto          := produtoList.Items[p].cdproduto;
        pedidomaterial.ItPedidoMaterial.Items[0].cdpedidomaterial   := pedidomaterial.cdpedidomaterial;
        pedidomaterial.ItPedidoMaterial.Items[0].cddigitado         := IntToStr(produtoList.Items[p].cdproduto);
        pedidomaterial.ItPedidoMaterial.Items[0].insert;
      finally
        FreeAndNil(pedidomaterial);
      end;
    end;
    result := True;
  finally
    FreeAndNil(produtoList);
    FreeAndNil(itformulacao);
  end;
end;

function TStOrcamentoList.GetItem(Index: Integer): TStOrcamento;
begin
  Result := TSTorcamento(Inherited Items[Index]);
end;

function TStOrcamentoList.Ler(sqlwhere:string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_storcamento, sqlwhere));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.select(q.q.fieldbyname(_cdstorcamento).AsInteger);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TStOrcamentoList.New: TStOrcamento;
begin
  Result := TSTorcamento.Create;
  Add(Result);
end;

procedure TStOrcamentoList.SetItem(Index: Integer; const Value: TStOrcamento);
begin
  Put(Index, Value);
end;

end.
