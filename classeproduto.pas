unit classeproduto;

interface

uses
  System.Actions, System.UITypes,
  forms, gauges, classes,ComCtrls, controls, sysutils, dialogs, Contnrs,
  Math, db,
  ustrings, unumero, uregistro,
  uconstantes, udatahora, uprogressbar,
  classecalculopeso,
  classeempresa,
  classeretornasql,
  classegerar,
  classerecalculocustomedio,
  classeregistrainformacao,
  classequery,
  classeaplicacao,
  ClasseCest,
  classeuf,
  classedao;

type
  THCustoMedio = class(TPersintentObject)
  private
    fqtestoque: Double;
    fvlcustomedio: Currency;
    fcdempresa: Largeint;
    fdthistorico: TDate;
    fcdproduto: Integer;
    fvlsaldovalor: Currency;
  public
    [KeyField]
    property cdempresa : Largeint read fcdempresa write fcdempresa;
    [keyfield]
    property cdproduto : Integer read fcdproduto write fcdproduto;
    [AObrigatorio]
    property dthistorico : TDate read fdthistorico write fdthistorico;
    property vlcustomedio : Currency read fvlcustomedio write fvlcustomedio;
    property qtestoque : Double read fqtestoque write fqtestoque;
    property vlsaldovalor : Currency read fvlsaldovalor write fvlsaldovalor;
  end;
  TItGradeValor = class(TRegistroQuipos)
  private
    fcditgradevalor: integer;
    fvlgradevalor: currency;
    fnufaixafinal: double;
    fnufaixainicial: double;
    fcdproduto: integer;
    fcdtpgradevalor: integer;
  public
    [keyfield]
    property cditgradevalor : integer read fcditgradevalor write fcditgradevalor;
    [fk]
    property cdproduto : integer read fcdproduto write fcdproduto;
    [fk]
    property cdtpgradevalor : integer read fcdtpgradevalor write fcdtpgradevalor;
    property nufaixainicial : double read fnufaixainicial write fnufaixainicial;
    property nufaixafinal : double read fnufaixafinal write fnufaixafinal;
    property vlgradevalor : currency read fvlgradevalor write fvlgradevalor;
  end;
  TItGradeValorList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItGradeValor;
    procedure SetItem(Index: Integer; const Value: TItGradeValor);
  public
    function New: TItGradeValor;
    property Items[Index: Integer]: TItGradeValor read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function Valor(cdproduto: integer; qtitem:Double):Currency;
  end;
  TTpGradeValor = class(TRegistroQuipos)
  private
    fnmtpgradevalor: string;
    fcdtpgradevalor: integer;
    fitgradevalor: TItGradeValorList;
  public
    property itgradevalor : TItGradeValorList read fitgradevalor write fitgradevalor;
    [keyfield]
    property cdtpgradevalor : integer read fcdtpgradevalor write fcdtpgradevalor;
    property nmtpgradevalor : string read fnmtpgradevalor write fnmtpgradevalor;
    constructor create;
    destructor destroy;
  end;
  TTpGradeValorList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TTpGradeValor;
    procedure SetItem(Index: Integer; const Value: TTpGradeValor);
  public
    function New: TTpGradeValor;
    property Items[Index: Integer]: TTpGradeValor read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function Indice(cdtpgradevalor:integer):integer;
  end;
  TUnidade = class(TRegistroQuipos)
  private
    fcdunidade : Integer;
    fnmunidade : string;
    fsgunidade : string;
    fbomdfe : String;
    fbocte : String;
  public
    [keyfield]
    property cdunidade : Integer read fcdunidade write fcdunidade;
    property nmunidade : string read fnmunidade write fnmunidade;
    property sgunidade : string read fsgunidade write fsgunidade;
    property bomdfe : String read fbomdfe write fbomdfe;
    property bocte : String read fbocte write fbocte;
    function Insert(boscript:boolean=false): String;
    class function CodigodoNome(nome:string):Integer;
  end;
  TNorma = class(TRegistroQuipos)
  private
    fcdnorma : integer;
    fnmnorma : string;
  public
    [keyfield]
    property cdnorma : integer read fcdnorma write fcdnorma;
    property nmnorma : string read fnmnorma write fnmnorma;
  end;
  TForma = class(TPersintentObject)
  private
    fcdforma : integer;
    fnmforma : string;
  public
    [keyfield]
    property cdforma : integer read fcdforma write fcdforma;
    property nmforma : string read fnmforma write fnmforma;
  end;
  TMaterial = class(TRegistroQuipos)
  private
    fcdmaterial : Integer;
    fnmmaterial : string;
    fqtpesoespecifico : Double;
    fnumultiplicar : Double;
  public
    [keyfield]
    property cdmaterial : Integer read fcdmaterial write fcdmaterial;
    property nmmaterial : string read fnmmaterial write fnmmaterial;
    property qtpesoespecifico : Double read fqtpesoespecifico write fqtpesoespecifico;
    property numultiplicar : Double read fnumultiplicar write fnumultiplicar;
  end;
  TGrupo = class(TRegistroQuipos)
  private
    fcdgrupo : integer;
    fcdorigem : string;
    fcdtpproduto : Integer;
    fcdgrupopai : Integer;
    fcdtpitem : string;
    fcdunidade : integer;
    fnusticms : string;
    fcdmaterial : Integer;
    fcdnaturezaconta : string;
    fcdindicadortpconta : string;
    fcdregrast : integer;
    fcdtpcomissaoproduto : Integer;
    fcdforma : Integer;
    fcdnorma : integer;
    fnmgrupo : string;
    fnunivel : string;
    fcditem : integer;
    fborecuperaipi : string;
    fborecuperaicms : string;
    fborecuperapis : string;
    fborecuperacofins : string;
    fboipi : string;
    fboicms : string;
    fbopis : string;
    fbocofins : string;
    falipi : double;
    falicms : double;
    falpis : double;
    falcofins : double;
    fbogerarlivroproducao : string;
    fnuclfiscal : string;
    fnucontaestoque : integer;
    fbopdv : string;
    fnucontaativo : integer;
    fcdcontaativo : string;
    fnmcontaativo : string;
    fbocomissao : string;
    fprcomissao : double;
    fboproduto : string;
    fbompdobem : string;
    fvlmpdobem : Currency;
    fbosaida : string;
    fboentrada : string;
    fboordcompra : string;
    fbopedido : string;
    fboorcamento : string;
    fboordserv : string;
    fbomovto : string;
    fbopedidomaterial : string;
    fnudiasvencimento : Integer;
    fbodesativarprodutozerado : string;
    fcdbccalculocredito: string;
    fnustpis: string;
    fnustcofins: string;
  public
    [keyfield]
    property cdgrupo : integer read fcdgrupo write fcdgrupo;
    [fk]
    property cdorigem : string read fcdorigem write fcdorigem;
    [fk]
    property cdtpproduto : Integer read fcdtpproduto write fcdtpproduto;
    [fk]
    property cdgrupopai : Integer read fcdgrupopai write fcdgrupopai;
    [fk]
    property cdtpitem : string read fcdtpitem write fcdtpitem;
    [fk]
    property cdunidade : integer read fcdunidade write fcdunidade;
    [fk]
    property nusticms : string read fnusticms write fnusticms;
    [fk]
    property cdmaterial : Integer read fcdmaterial write fcdmaterial;
    [fk]
    property cdnaturezaconta : string read fcdnaturezaconta write fcdnaturezaconta;
    [fk]
    property cdindicadortpconta : string read fcdindicadortpconta write fcdindicadortpconta;
    [fk]
    property cdregrast : integer read fcdregrast write fcdregrast;
    [fk]
    property cdtpcomissaoproduto : Integer read fcdtpcomissaoproduto write fcdtpcomissaoproduto;
    [fk]
    property cdforma : Integer read fcdforma write fcdforma;
    [fk]
    property cdnorma : integer read fcdnorma write fcdnorma;
    [FK]
    property cdbccalculocredito : string read fcdbccalculocredito write fcdbccalculocredito;
    [FK]
    property nustpis : string read fnustpis write fnustpis;
    [FK]
    property nustcofins : string read fnustcofins write fnustcofins;
    property nmgrupo : string read fnmgrupo write fnmgrupo;
    property nunivel : string read fnunivel write fnunivel;
    property cditem : integer read fcditem write fcditem;
    property borecuperaipi : string read fborecuperaipi write fborecuperaipi;
    property borecuperaicms : string read fborecuperaicms write fborecuperaicms;
    property borecuperapis : string read fborecuperapis write fborecuperapis;
    property borecuperacofins : string read fborecuperacofins write fborecuperacofins;
    property boipi : string read fboipi write fboipi;
    property boicms : string read fboicms write fboicms;
    property bopis : string read fbopis write fbopis;
    property bocofins : string read fbocofins write fbocofins;
    property alipi : double read falipi write falipi;
    property alicms : double read falicms write falicms;
    property alpis : double read falpis write falpis;
    property alcofins : double read falcofins write falcofins;
    property bogerarlivroproducao : string read fbogerarlivroproducao write fbogerarlivroproducao;
    property nuclfiscal : string read fnuclfiscal write fnuclfiscal;
    property nucontaestoque : integer read fnucontaestoque write fnucontaestoque;
    property bopdv : string read fbopdv write fbopdv;
    property nucontaativo : integer read fnucontaativo write fnucontaativo;
    property cdcontaativo : string read fcdcontaativo write fcdcontaativo;
    property nmcontaativo : string read fnmcontaativo write fnmcontaativo;
    property bocomissao : string read fbocomissao write fbocomissao;
    property prcomissao : double read fprcomissao write fprcomissao;
    property boproduto : string read fboproduto write fboproduto;
    property bompdobem : string read fbompdobem write fbompdobem;
    property vlmpdobem : Currency read fvlmpdobem write fvlmpdobem;
    property bosaida : string read fbosaida write fbosaida;
    property boentrada : string read fboentrada write fboentrada;
    property boordcompra : string read fboordcompra write fboordcompra;
    property bopedido : string read fbopedido write fbopedido;
    property boorcamento : string read fboorcamento write fboorcamento;
    property boordserv : string read fboordserv write fboordserv;
    property bomovto : string read fbomovto write fbomovto;
    property bopedidomaterial : string read fbopedidomaterial write fbopedidomaterial;
    property nudiasvencimento : Integer read fnudiasvencimento write fnudiasvencimento;
    property bodesativarprodutozerado : string read fbodesativarprodutozerado write fbodesativarprodutozerado;
  end;
  TModbcsticms = class(TPersintentObject)
  protected
    Fnumodbcsticms: Integer;
    Fnmmodbcsticms: string;
    Fcdmodbcsticms: Integer;
  public
    [keyfield]
    property cdmodbcsticms : Integer read Fcdmodbcsticms write fcdmodbcsticms;
    property nmmodbcsticms : string read Fnmmodbcsticms write fnmmodbcsticms;
    property numodbcsticms : Integer read Fnumodbcsticms write fnumodbcsticms;
  end;
  TModbcicms = class(TPersintentObject)
  protected
    Fnumodbcicms: Integer;
    Fnmmodbcicms: string;
    Fcdmodbcicms: Integer;
  public
    [keyfield]
    property cdmodbcicms : Integer read Fcdmodbcicms write fcdmodbcicms;
    property nmmodbcicms : string read Fnmmodbcicms write fnmmodbcicms;
    property numodbcicms : Integer read Fnumodbcicms write fnumodbcicms;
  end;
  TProdutoFornecedor = class(TRegistroQuipos)
  private
    Fcdprodutofornecedor: integer;
    Fcdproduto: integer;
    Fcdprodutofornecedorinterno: string;
    Fcdfornecedor: Largeint;
  public
    [keyfield]
    property cdprodutofornecedor : integer read Fcdprodutofornecedor write Fcdprodutofornecedor;
    [fk]
    property cdproduto : integer read Fcdproduto write Fcdproduto;
    [fk]
    property cdfornecedor : largeint read Fcdfornecedor write Fcdfornecedor;
    property cdprodutofornecedorinterno : string read Fcdprodutofornecedorinterno write Fcdprodutofornecedorinterno;
  end;
  titprodutocusto = class(TRegistroQuipos)
  private
    Fqtitem: Double;
    Fcditprodutocusto: Integer;
    Fcdproduto: Integer;
    Fcdprodutocusto: Integer;
    Fcddigitado: string;
  public
    [keyfield]
    property cditprodutocusto : Integer read Fcditprodutocusto write fcditprodutocusto;
    property cdproduto : Integer read Fcdproduto write fcdproduto;
    property cdprodutocusto : Integer read Fcdprodutocusto write fcdprodutocusto;
    property qtitem : Double read Fqtitem write fqtitem;
    property cddigitado : string read Fcddigitado write fcddigitado;
  end;
  TitprodutocustoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Titprodutocusto;
    procedure SetItem(Index: Integer; const Value: Titprodutocusto);
  public
    function New: Titprodutocusto;
    property Items[Index: Integer]: Titprodutocusto read GetItem write SetItem;
    function Ler(codigo:Integer):boolean;
  end;
  TProdutoFormulacao = class(TRegistroQuipos)
  private
    Fboquociente: String;
    Fbometodoprocesso: String;
    Fcdtpequipamento: Integer;
    Fcdproduto: Integer;
    Fcdformulacao: Integer;
  public
    [keyfield]
    property cdproduto : Integer read Fcdproduto write fcdproduto;
    [keyfield]
    property cdformulacao : Integer read Fcdformulacao write fcdformulacao;
    [fk]
    property cdtpequipamento : Integer read Fcdtpequipamento write fcdtpequipamento;
    property boquociente : String read Fboquociente write fboquociente;
    property bometodoprocesso : String read Fbometodoprocesso write fbometodoprocesso;
  end;
  TprodutoformulacaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Tprodutoformulacao;
    procedure SetItem(Index: Integer; const Value: Tprodutoformulacao);
  public
    function New: Tprodutoformulacao;
    property Items[Index: Integer]: Tprodutoformulacao read GetItem write SetItem;
    function Ler(codigo:Integer):boolean;overload;
    function Ler(sqlwhere:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function ListaProduto:string;
  end;
  TItProdutoRecurso = class(TRegistroQuipos)
  private
    Fboativado: String;
    Fqtpreparacao: Double;
    Fqtoperacao: Double;
    Fqtliberacao: Double;
    Fnusequencia: Integer;
    Fcdproduto: Integer;
    Fcdtpduracaoliberacao: Integer;
    Fcdformulacao: Integer;
    Fcdtpequipamento: Integer;
    Fcdtpduracao: Integer;
    Fcditprodutorecurso: Integer;
    Fdsobservacao: string;
  public
    [keyfield]
    property cditprodutorecurso : Integer read Fcditprodutorecurso write Fcditprodutorecurso;
    [fk]
    property cdproduto : Integer read Fcdproduto write Fcdproduto;
    [fk]
    property cdtpequipamento : Integer read Fcdtpequipamento write Fcdtpequipamento;
    [fk]
    property cdtpduracao : Integer read Fcdtpduracao write Fcdtpduracao;
    [fk]
    property cdtpduracaoliberacao : Integer read Fcdtpduracaoliberacao write Fcdtpduracaoliberacao;
    [fk]
    property cdformulacao : Integer read Fcdformulacao write Fcdformulacao;
    property qtpreparacao : Double read Fqtpreparacao write Fqtpreparacao;
    property qtoperacao : Double read Fqtoperacao write Fqtoperacao;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property nusequencia : Integer read Fnusequencia write Fnusequencia;
    property boativado : String read Fboativado write Fboativado;
    property qtliberacao : Double read Fqtliberacao write Fqtliberacao;
  end;
  TitprodutorecursoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Titprodutorecurso;
    procedure SetItem(Index: Integer; const Value: Titprodutorecurso);
  public
    function New: Titprodutorecurso;
    property Items[Index: Integer]: Titprodutorecurso read GetItem write SetItem;
    function Ler(codigo:Integer):boolean;
  end;
  TItProdutoMaterial = class(TREgistroQuipos)
  private
    Fboconsumoautomatico: String;
    Fborecuperaicms: String;
    Fborecuperapis: String;
    Fborecuperaipi: String;
    Fborecuperacofins: String;
    Fqtfaixaf: Double;
    Fqtpeca: Double;
    Falipi: Double;
    Falpis: Double;
    Falcofins: Double;
    Falicms: Double;
    Fqtitem: Double;
    Fqtfaixai: Double;
    Fqtitem2: Double;
    Fqtpesounitario: Double;
    Fcdformulacao: Integer;
    Fcdtpequipamento: Integer;
    Fcdprodutomaterial: Integer;
    Fcdforma: Integer;
    Fcdproduto: integer;
    Fcditprodutomaterial: Integer;
    Fcdmaterial: Integer;
    Fdsposicao: string;
    Fcddigitado: string;
    Fdsobservacao: string;
    Fdsformula: string;
    procedure Setqtitem2(const Value: double);
  public
    [keyfield]
    property cditprodutomaterial : Integer read Fcditprodutomaterial write Fcditprodutomaterial;
    [fk]
    property cdproduto : integer read Fcdproduto write Fcdproduto;
    [fk]
    property cdmaterial : Integer read Fcdmaterial write Fcdmaterial;
    [fk]
    property cdprodutomaterial : Integer read Fcdprodutomaterial write Fcdprodutomaterial;
    [fk]
    property cdtpequipamento : Integer read Fcdtpequipamento write Fcdtpequipamento;
    [fk]
    property cdforma : Integer read Fcdforma write Fcdforma;
    [fk]
    property cdformulacao : Integer read Fcdformulacao write Fcdformulacao;
    property qtitem : Double read Fqtitem write Fqtitem;
    property qtpesounitario : Double read Fqtpesounitario write Fqtpesounitario;
    property qtpeca : Double read Fqtpeca write Fqtpeca;
    property cddigitado : string read Fcddigitado write Fcddigitado;
    property dsposicao : string read Fdsposicao write Fdsposicao;
    property alicms : Double read Falicms write Falicms;
    property alipi : Double read Falipi write Falipi;
    property alpis : Double read Falpis write Falpis;
    property alcofins : Double read Falcofins write Falcofins;
    property borecuperaicms : String read Fborecuperaicms write Fborecuperaicms;
    property borecuperaipi : String read Fborecuperaipi write Fborecuperaipi;
    property borecuperapis : String read Fborecuperapis write Fborecuperapis;
    property borecuperacofins : String read Fborecuperacofins write Fborecuperacofins;
    property dsformula : string read Fdsformula write Fdsformula;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property qtfaixai : Double read Fqtfaixai write Fqtfaixai;
    property qtfaixaf : Double read Fqtfaixaf write Fqtfaixaf;
    property boconsumoautomatico : String read Fboconsumoautomatico write Fboconsumoautomatico;
    property qtitem2 : double read Fqtitem2 write Setqtitem2;
  end;
  TitprodutomaterialList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Titprodutomaterial;
    procedure SetItem(Index: Integer; const Value: Titprodutomaterial);
  public
    function New: Titprodutomaterial;
    property Items[Index: Integer]: Titprodutomaterial read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string=_cdproduto):boolean;
  end;
  TTPProduto = class(TRegistroQuipos)
  private
    fcdtpproduto : integer;
    fnmtpproduto : string;
    fbounidade2 : string;
    fboimovel : string;
    fbofabricante : string;
    fbocodigofornecedor : string;
    fboproducao : string;
    fboservico : string;
    fbotributacao : string;
    fboarquivo : string;
    fbovalor : string;
    fbocritico : string;
    fboestoque : string;
    fbofornecedorexclusivo : string;
    fbocaracteristicas : string;
    fbodimensional : string;
    fbogerarnomeautomatico : string;
    fbometodoprocesso : string;
    fbotpcliente : string;
    fbodiasgarantia : string;
    fbolocalizacao : string;
    fbocomposto : string;
    fbolote : string;
    fboloteimei : string;
    fbocontabilidade : string;
    fbocombustivel : string;
    fbogradevalor : string;
    fboacabado : string;
    fbomultiplo : string;
    fbocomissao : string;
    fbost : string;
    fbobaixasubprodutovenda : string;
    fboprodutoacabado : string;
    fbobaixaxsubprodutoproducao : string;
    fbocustomediosubproduto: string;
    Fbocomposicaoquimica: string;
    Fbopropriedadefisica: string;
    Fboembalagemtpequipamento: string;
    Fboembalagemformulacao: string;
    Fbometodoprocessoembalagem: string;
    fbometodoprocessotpduracao: string;
    fborecursoformulacao: string;
    fbometodoprocessopreparacao: string;
    fbometodoprocessoformulacao : string;
    fbometodoprocessoquociente : string;
    fbometodoprocessotpequipamento : string;
    fbometodoprocessonuclfiscal : string;
    fbometodoprocessoposicao : string;
    fbometodoprocessoqtpeca : string;
    fbometodoprocessopsunitario : string;
    fbometodoprocessomedida : string;
    fbometodoprocessoicms : string;
    fbometodoprocessofaixa : string;
    fbometodoprocessoipi : string;
    fbometodoprocessopis : string;
    fbometodoprocessocofins : string;
  public
    [keyfield]
    property cdtpproduto : integer read fcdtpproduto write fcdtpproduto;
    property nmtpproduto : string read fnmtpproduto write fnmtpproduto;
    property bocomposicaoquimica : string read Fbocomposicaoquimica write Fbocomposicaoquimica;
    property bopropriedadefisica : string read Fbopropriedadefisica write Fbopropriedadefisica;
    property bounidade2 : string read fbounidade2 write fbounidade2;
    property boimovel : string read fboimovel write fboimovel;
    property bofabricante : string read fbofabricante write fbofabricante;
    property bocodigofornecedor : string read fbocodigofornecedor write fbocodigofornecedor;
    property boproducao : string read fboproducao write fboproducao;
    property boservico : string read fboservico write fboservico;
    property botributacao : string read fbotributacao write fbotributacao;
    property boarquivo : string read fboarquivo write fboarquivo;
    property bovalor : string read fbovalor write fbovalor;
    property bocritico : string read fbocritico write fbocritico;
    property boestoque : string read fboestoque write fboestoque;
    property bofornecedorexclusivo : string read fbofornecedorexclusivo write fbofornecedorexclusivo;
    property bocaracteristicas : string read fbocaracteristicas write fbocaracteristicas;
    property bodimensional : string read fbodimensional write fbodimensional;
    property bogerarnomeautomatico : string read fbogerarnomeautomatico write fbogerarnomeautomatico;
    property bometodoprocesso : string read fbometodoprocesso write fbometodoprocesso;
    property botpcliente : string read fbotpcliente write fbotpcliente;
    property bodiasgarantia : string read fbodiasgarantia write fbodiasgarantia;
    property bolocalizacao : string read fbolocalizacao write fbolocalizacao;
    property bocomposto : string read fbocomposto write fbocomposto;
    property bolote : string read fbolote write fbolote;
    property boloteimei : string read fboloteimei write fboloteimei;
    property bocontabilidade : string read fbocontabilidade write fbocontabilidade;
    property bocombustivel : string read fbocombustivel write fbocombustivel;
    property bogradevalor : string read fbogradevalor write fbogradevalor;
    property boacabado : string read fboacabado write fboacabado;
    property bomultiplo : string read fbomultiplo write fbomultiplo;
    property bocomissao : string read fbocomissao write fbocomissao;
    property bost : string read fbost write fbost;
    property bobaixasubprodutovenda : string read fbobaixasubprodutovenda write fbobaixasubprodutovenda;
    property boprodutoacabado : string read fboprodutoacabado write fboprodutoacabado;
    property bobaixaxsubprodutoproducao : string read fbobaixaxsubprodutoproducao write fbobaixaxsubprodutoproducao;
    property bocustomediosubproduto: string read fbocustomediosubproduto write fbocustomediosubproduto;
    property bometodoprocessoembalagem: string read Fbometodoprocessoembalagem write Fbometodoprocessoembalagem;
    property boembalagemformulacao: string read Fboembalagemformulacao write Fboembalagemformulacao;
    property boembalagemtpequipamento: string read Fboembalagemtpequipamento write Fboembalagemtpequipamento;
    property bometodoprocessotpduracao: string read fbometodoprocessotpduracao write fbometodoprocessotpduracao;
    property borecursoformulacao: string read fborecursoformulacao write fborecursoformulacao;
    property bometodoprocessopreparacao: string read fbometodoprocessopreparacao write fbometodoprocessopreparacao;
    property bometodoprocessoformulacao : string read fbometodoprocessoformulacao write fbometodoprocessoformulacao;
    property bometodoprocessoquociente : string read fbometodoprocessoquociente write fbometodoprocessoquociente;
    property bometodoprocessotpequipamento : string read fbometodoprocessotpequipamento write fbometodoprocessotpequipamento;
    property bometodoprocessonuclfiscal : string read fbometodoprocessonuclfiscal write fbometodoprocessonuclfiscal;
    property bometodoprocessoposicao : string read fbometodoprocessoposicao write fbometodoprocessoposicao;
    property bometodoprocessoqtpeca : string read fbometodoprocessoqtpeca write fbometodoprocessoqtpeca;
    property bometodoprocessopsunitario : string read fbometodoprocessopsunitario write fbometodoprocessopsunitario;
    property bometodoprocessomedida : string read fbometodoprocessomedida write fbometodoprocessomedida;
    property bometodoprocessoicms : string read fbometodoprocessoicms write fbometodoprocessoicms;
    property bometodoprocessofaixa : string read fbometodoprocessofaixa write fbometodoprocessofaixa;
    property bometodoprocessoipi : string read fbometodoprocessoipi write fbometodoprocessoipi;
    property bometodoprocessopis : string read fbometodoprocessopis write fbometodoprocessopis;
    property bometodoprocessocofins : string read fbometodoprocessocofins write fbometodoprocessocofins;
    function get_widthunidade2: Integer;
  end;
  TProduto = class(TRegistroQuipos)
  private
    fuf: tuf;
    ftpproduto : TTPProduto;
    fmaterial : TMaterial;
    fnorma : TNorma;
    fforma : TForma;
    fgrupo : TGrupo;
    fcdproduto : integer;
    fcdunidade : Integer;
    fcdtpproduto : Integer;
    fcdgrupo : integer;
    fcdorigem : string;
    fcdfornecedor : LargeInt;
    fcdcor : Integer;
    fcdtamanho : Integer;
    fcdtpitem : string;
    fcdmodbcicms : integer;
    fcdgrade : integer;
    fcdfabricante : Integer;
    fcdmodbcsticms : integer;
    fcdplconta : Integer;
    fcdmaterial : Integer;
    fcdcntcusto : Integer;
    fcdforma : Integer;
    fcdtpcomissaoproduto : Integer;
    fcdregrast : Integer;
    fcduf : Integer;
    fcdindicadortpconta : string;
    fcdnaturezaconta : string;
    fnusticms : string;
    fcditentrada : Integer;
    fnustpis : string;
    fnustcofins : string;
    fcdbccalculocredito : string;
    fcdnorma : Integer;
    fnmproduto : string;
    fcdalternativo : string;
    fcditem : Integer;
    fqtestoque : Double;
    fqtestmin : Double;
    fqtestmax : Double;
    fqtestprev : Double;
    fborecuperaicms : string;
    fborecuperaipi : string;
    fborecuperapis : string;
    fborecuperacofins : string;
    falipi : Double;
    falicms : Double;
    falpis : Double;
    falcofins : Double;
    fboipi : string;
    fboicms : string;
    fbopis : string;
    fbocofins : string;
    fvlcustomedio : Currency;
    fvlvenda : Currency;
    fvlcusto : Currency;
    fprlucro : Double;
    fdsproduto : string;
    fvlsaldovalor : Currency;
    fbocomissao : string;
    fprcomissao : Double;
    fdsobservacao : string;
    fcdprodutosistemaantigo : Integer;
    fbogerarlivroproducao : string;
    fpsliquido : Double;
    fpsbruto : Double;
    fnunivel : string;
    fdslocalizacao : string;
    fnudiasgarantia : Integer;
    fvllucro : Currency;
    ffoto : string;
    ffilenamefoto : string;
    fvlatacado : Currency;
    fvlespecial : Currency;
    fdsespecificacaotecnica : string;
    fcdcodfornecedor : string;
    fprlucroatacado : Double;
    fprlucroespecial : Double;
    ftpbslucro : string;
    ftpbslucroatacado : string;
    ftpbslucroespecial : string;
    fnucnpj : string;
    fclenq : string;
    fcdenq : string;
    fnuclfiscal : string;
    fnucontaestoque : Integer;
    fnuplconta : string;
    falmva : Double;
    fvlcustoproducao : Currency;
    fvlcustoproducaototal : Currency;
    falicmsred : Double;
    fboativar : string;
    fbosincronizado : string;
    fqtespessura : Double;
    fqtlargura : Double;
    fqtkilometro : Double;
    fqtpedido : Double;
    fboitemvenda : string;
    fboitemestoque : string;
    fboitemcompra : string;
    fqtdisponivel : Double;
    fdsfuncaobem : string;
    fnuvidautil : Integer;
    fnucntcusto : string;
    fnucontaativo : integer;
    fcdcontaativo : string;
    fnmcontaativo : string;
    fcdanp : string;
    fbocritico : string;
    fqtmultiplo : Double;
    fvlminimo : Currency;
    fprdescontomaximo : Double;
    fdsdesenho : string;
    fdspolegada : string;
    fqtcomprimento : Double;
    fdstag1 : string;
    fdstag2 : string;
    fbosaida : string;
    fboentrada : string;
    fboordcompra : string;
    fbopedido : string;
    fboorcamento : string;
    fboordserv : string;
    fbomovto : string;
    fbopedidomaterial : string;
    fvlprazo : Currency;
    ftpbslucroprazo : string;
    fprlucroprazo : Double;
    fcean : string;
    ftpqtitem : string;
    fcdunidade2 : Integer;
    fqtestoque2 : Double;
    fprunidade : Double;
    fbodividir : string;
    fdsarea : string;
    fdslote : string;
    fdsquadra : string;
    fdsfrente : string;
    fdsesquerda : string;
    fdsdireita : string;
    fdsfundo : string;
    fnmconfrontantefrente : string;
    fnmconfrontantedireita : string;
    fnmconfrontanteesquerda : string;
    fnmconfrontantefundo : string;
    Fprqtitem: double;
    Fnucest: string;
    fitprodutomaterial: TitprodutomaterialList;
    fitprodutocusto: TitprodutocustoList;
    fitprodutorecurso: TitprodutorecursoList;
    Fprodutoformulacao: TprodutoformulacaoList;
    fdsmaterial: string;
    fdsarmazenamento: string;
    fcdfuncionario: integer;
    fmodbcsticms: TModbcsticms;
    fmodbcicms: TModbcicms;
    Frecalculocustomedio: TRecalculoCustoMedio;
    fnucntcustosaida: string;
    fcdcntcustosaida: Integer;
    fnuplcontasaida: string;
    fcdplcontasaida: Integer;
    function VerificarTblOrigem(codigo:integer; tblorigem:string):boolean;
  public
    property recalculocustomedio: TRecalculoCustoMedio read Frecalculocustomedio write Frecalculocustomedio;
    property modbcicms : TModbcicms read fmodbcicms write fmodbcicms;
    property modbcsticms : TModbcsticms read fmodbcsticms write fmodbcsticms;
    property uf : tuf read fuf write fuf;
    property produtoformulacao : TprodutoformulacaoList read Fprodutoformulacao write Fprodutoformulacao;
    property itprodutorecurso : TitprodutorecursoList read fitprodutorecurso write fitprodutorecurso;
    property itprodutomaterial : TitprodutomaterialList read fitprodutomaterial write fitprodutomaterial;
    property itprodutocusto : TitprodutocustoList read fitprodutocusto write fitprodutocusto;
    property tpproduto : TTPProduto read ftpproduto write ftpproduto;
    property material : TMaterial read fmaterial write fmaterial;
    property norma : TNorma read fnorma write fnorma;
    property forma : TForma read fforma write fforma;
    property grupo : TGrupo read fgrupo write fgrupo;
    [keyfield]
    property cdproduto : integer read fcdproduto write fcdproduto;
    [fk]
    property cdunidade : Integer read fcdunidade write fcdunidade;
    [fk]
    property cdtpproduto : Integer read fcdtpproduto write fcdtpproduto;
    [fk]
    property cdgrupo : integer read fcdgrupo write fcdgrupo;
    [fk]
    property cdorigem : string read fcdorigem write fcdorigem;
    [fk]
    property cdfornecedor : LargeInt read fcdfornecedor write fcdfornecedor;
    [fk]
    property cdcor : Integer read fcdcor write fcdcor;
    [fk]
    property cdtamanho : Integer read fcdtamanho write fcdtamanho;
    [fk]
    property cdmodbcicms : integer read fcdmodbcicms write fcdmodbcicms;
    [fk]
    property cdgrade : integer read fcdgrade write fcdgrade;
    property cdfabricante : Integer read fcdfabricante write fcdfabricante;
    [fk]
    property cdmodbcsticms : integer read fcdmodbcsticms write fcdmodbcsticms;
    [fk]
    property cdplconta : Integer read fcdplconta write fcdplconta;
    [fk]
    property cdplcontasaida : Integer read fcdplcontasaida write fcdplcontasaida;
    [fk]
    property cdmaterial : Integer read fcdmaterial write fcdmaterial;
    [fk]
    property cdcntcusto : Integer read fcdcntcusto write fcdcntcusto;
    [fk]
    property cdcntcustosaida : Integer read fcdcntcustosaida write fcdcntcustosaida;
    [fk]
    property cdforma : Integer read fcdforma write fcdforma;
    [fk]
    property cdtpcomissaoproduto : Integer read fcdtpcomissaoproduto write fcdtpcomissaoproduto;
    [fk]
    property cdregrast : Integer read fcdregrast write fcdregrast;
    [fk]
    property cduf : Integer read fcduf write fcduf;
    [fk]
    property cdindicadortpconta : string read fcdindicadortpconta write fcdindicadortpconta;
    [fk]
    property cdnaturezaconta : string read fcdnaturezaconta write fcdnaturezaconta;
    [fk]
    property nusticms : string read fnusticms write fnusticms;
    [fk]
    property cditentrada : Integer read fcditentrada write fcditentrada;
    [fk]
    property nustpis : string read fnustpis write fnustpis;
    [fk]
    property nustcofins : string read fnustcofins write fnustcofins;
    [fk]
    property cdbccalculocredito : string read fcdbccalculocredito write fcdbccalculocredito;
    [fk]
    property cdnorma : Integer read fcdnorma write fcdnorma;
    [fk]
    property cdfuncionario : integer read fcdfuncionario write fcdfuncionario;
    [fk]
    property cdunidade2 : Integer read fcdunidade2 write fcdunidade2;
    [fk]
    property cdtpitem : string read fcdtpitem write fcdtpitem;
    property nmproduto : string read fnmproduto write fnmproduto;
    property cdalternativo : string read fcdalternativo write fcdalternativo;
    property cditem : Integer read fcditem write fcditem;
    property qtestoque : Double read fqtestoque write fqtestoque;
    property qtestmin : Double read fqtestmin write fqtestmin;
    property qtestmax : Double read fqtestmax write fqtestmax;
    property qtestprev : Double read fqtestprev write fqtestprev;
    property borecuperaicms : string read fborecuperaicms write fborecuperaicms;
    property borecuperaipi : string read fborecuperaipi write fborecuperaipi;
    property borecuperapis : string read fborecuperapis write fborecuperapis;
    property borecuperacofins : string read fborecuperacofins write fborecuperacofins;
    property alipi : Double read falipi write falipi;
    property alicms : Double read falicms write falicms;
    property alpis : Double read falpis write falpis;
    property alcofins : Double read falcofins write falcofins;
    property boipi : string read fboipi write fboipi;
    property boicms : string read fboicms write fboicms;
    property bopis : string read fbopis write fbopis;
    property bocofins : string read fbocofins write fbocofins;
    property vlcustomedio : Currency read fvlcustomedio write fvlcustomedio;
    property vlvenda : Currency read fvlvenda write fvlvenda;
    property vlcusto : Currency read fvlcusto write fvlcusto;
    property prlucro : Double read fprlucro write fprlucro;
    property dsproduto : string read fdsproduto write fdsproduto;
    property vlsaldovalor : Currency read fvlsaldovalor write fvlsaldovalor;
    property bocomissao : string read fbocomissao write fbocomissao;
    property prcomissao : Double read fprcomissao write fprcomissao;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    property cdprodutosistemaantigo : Integer read fcdprodutosistemaantigo write fcdprodutosistemaantigo;
    property bogerarlivroproducao : string read fbogerarlivroproducao write fbogerarlivroproducao;
    property psliquido : Double read fpsliquido write fpsliquido;
    property psbruto : Double read fpsbruto write fpsbruto;
    property nunivel : string read fnunivel write fnunivel;
    property dslocalizacao : string read fdslocalizacao write fdslocalizacao;
    property nudiasgarantia : Integer read fnudiasgarantia write fnudiasgarantia;
    property vllucro : Currency read fvllucro write fvllucro;
    property foto : string read ffoto write ffoto;
    property filenamefoto : string read ffilenamefoto write ffilenamefoto;
    property vlatacado : Currency read fvlatacado write fvlatacado;
    property vlespecial : Currency read fvlespecial write fvlespecial;
    property dsespecificacaotecnica : string read fdsespecificacaotecnica write fdsespecificacaotecnica;
    property cdcodfornecedor : string read fcdcodfornecedor write fcdcodfornecedor;
    property prlucroatacado : Double read fprlucroatacado write fprlucroatacado;
    property prlucroespecial : Double read fprlucroespecial write fprlucroespecial;
    property tpbslucro : string read ftpbslucro write ftpbslucro;
    property tpbslucroatacado : string read ftpbslucroatacado write ftpbslucroatacado;
    property tpbslucroespecial : string read ftpbslucroespecial write ftpbslucroespecial;
    property nucnpj : string read fnucnpj write fnucnpj;
    property clenq : string read fclenq write fclenq;
    property cdenq : string read fcdenq write fcdenq;
    property nuclfiscal : string read fnuclfiscal write fnuclfiscal;
    property nucontaestoque : Integer read fnucontaestoque write fnucontaestoque;
    property nuplconta : string read fnuplconta write fnuplconta;
    property nuplcontasaida : string read fnuplcontasaida write fnuplcontasaida;
    property almva : Double read falmva write falmva;
    property vlcustoproducao : Currency read fvlcustoproducao write fvlcustoproducao;
    property vlcustoproducaototal : Currency read fvlcustoproducaototal write fvlcustoproducaototal;
    property alicmsred : Double read falicmsred write falicmsred;
    property boativar : string read fboativar write fboativar;
    property bosincronizado : string read fbosincronizado write fbosincronizado;
    property qtespessura : Double read fqtespessura write fqtespessura;
    property qtlargura : Double read fqtlargura write fqtlargura;
    property qtkilometro : Double read fqtkilometro write fqtkilometro;
    property qtpedido : Double read fqtpedido write fqtpedido;
    property boitemvenda : string read fboitemvenda write fboitemvenda;
    property boitemestoque : string read fboitemestoque write fboitemestoque;
    property boitemcompra : string read fboitemcompra write fboitemcompra;
    property qtdisponivel : Double read fqtdisponivel write fqtdisponivel;
    property dsfuncaobem : string read fdsfuncaobem write fdsfuncaobem;
    property nuvidautil : Integer read fnuvidautil write fnuvidautil;
    property nucntcusto : string read Fnucntcusto write Fnucntcusto;
    property nucntcustosaida: string read fnucntcustosaida write fnucntcustosaida;
    property nucontaativo : integer read fnucontaativo write fnucontaativo;
    property cdcontaativo : string read fcdcontaativo write fcdcontaativo;
    property nmcontaativo : string read fnmcontaativo write fnmcontaativo;
    property cdanp : string read fcdanp write fcdanp;
    property bocritico : string read fbocritico write fbocritico;
    property qtmultiplo : Double read fqtmultiplo write fqtmultiplo;
    property vlminimo : Currency read fvlminimo write fvlminimo;
    property prdescontomaximo : Double read fprdescontomaximo write fprdescontomaximo;
    property dsdesenho : string read fdsdesenho write fdsdesenho;
    property dspolegada : string read fdspolegada write fdspolegada;
    property qtcomprimento : Double read fqtcomprimento write fqtcomprimento;
    property dstag1 : string read fdstag1 write fdstag1;
    property dstag2 : string read fdstag2 write fdstag2;
    property bosaida : string read fbosaida write fbosaida;
    property boentrada : string read fboentrada write fboentrada;
    property boordcompra : string read fboordcompra write fboordcompra;
    property bopedido : string read fbopedido write fbopedido;
    property boorcamento : string read fboorcamento write fboorcamento;
    property boordserv : string read fboordserv write fboordserv;
    property bomovto : string read fbomovto write fbomovto;
    property bopedidomaterial : string read fbopedidomaterial write fbopedidomaterial;
    property vlprazo : Currency read fvlprazo write fvlprazo;
    property tpbslucroprazo : string read ftpbslucroprazo write ftpbslucroprazo;
    property prlucroprazo : Double read fprlucroprazo write fprlucroprazo;
    property cean : string read fcean write fcean;
    property tpqtitem : string read ftpqtitem write ftpqtitem;
    property qtestoque2 : Double read fqtestoque2 write fqtestoque2;
    property prunidade : Double read fprunidade write fprunidade;
    property bodividir : string read fbodividir write fbodividir;
    property dsarea : string read fdsarea write fdsarea;
    property dslote : string read fdslote write fdslote;
    property dsquadra : string read fdsquadra write fdsquadra;
    property dsfrente : string read fdsfrente write fdsfrente;
    property dsesquerda : string read fdsesquerda write fdsesquerda;
    property dsdireita : string read fdsdireita write fdsdireita;
    property dsfundo : string read fdsfundo write fdsfundo;
    property nmconfrontantedireita : string read fnmconfrontantedireita write fnmconfrontantedireita;
    property nmconfrontanteesquerda : string read fnmconfrontanteesquerda write fnmconfrontanteesquerda;
    property nmconfrontantefundo : string read fnmconfrontantefundo write fnmconfrontantefundo;
    property nmconfrontantefrente : string read fnmconfrontantefrente write fnmconfrontantefrente;
    property prqtitem : double read Fprqtitem write Fprqtitem;
    property nucest : string read Fnucest write Fnucest;
    property dsmaterial : string read fdsmaterial write fdsmaterial;
    property dsarmazenamento : string read fdsarmazenamento write fdsarmazenamento;
    constructor create;
    destructor destroy; override;
    function AceitaBaixa(cdproduto:string):boolean;
    procedure CheckDados(bonuclfiscal:boolean=true);
    function checkContaAtivo(bomensagem:boolean=false):string;
    procedure Checkboativar;
    procedure Checkcdgrupo;
    procedure Checkcdtpitem;
    procedure Checkcdtpproduto;
    procedure Checkcdtpitemnuclfiscal(bocheck:boolean=true);
    procedure Checknuclfiscaltamanho;
    //function codigoitemgrupo(cdgrupo:string):string;
    function CodigoProdutoDigitado(codigo, tblorigem:string): integer;
    function ObterCddigitado(codigo:string): string;
    function copiar:integer;
    function CustoMedioNoDia(cdproduto:string; data: TDate):currency;
    function EstoqueRealNaData(cdproduto:integer; dtbaixa:TDate):currency;
    function EstoqueRealParabaixa(cdproduto:integer; dtbaixa:TDate):currency;
    function Existecodigoitemgrupo(cdgrupo, cditem:string):boolean;
    function existeNomeProduto(nome, codigo:string):Boolean;
    function GetValorGrade(cdtpgradevalor: integer; cdcliente:string; qtitem:double):currency;
    function podeAdicionarProdutoGrupo(nunivel:string):Boolean;
    function QtEstoqueNaData(cdproduto:integer; data: TDate; var dtestoque : TDate):extended;overload;
    function QtEstoqueNaData(cdproduto:integer; data: TDate):extended;overload;
    function QtEstoqueNoDia(cdproduto:integer; data: TDate; var dtestoque : TDate):extended;overload;
    function QtEstoqueNoDia(cdproduto:integer; data: TDate):currency;overload;
    function qtmovimentacao(cdproduto, tbl:string; dti, dtf:TDate):extended;
    function RepeteCdProdFabrica(cdprodfabrica, cdproduto:string; var mensagem:string):boolean;
    function RepeteCdDigitado(cddigitado, cdproduto:string; var mensagem:string):boolean;
    function SaldoValorNoDia(cdproduto:string; data: TDate):currency;
    //function ConfigurarCdItem(cdgrupo, cdgrupoold:string; cditem:integer):string;
    function VLCustoMedioNaData(cdproduto:string; data: TDate):currency;
    function VlSaldoValorProdutoNaData(cdproduto:string; data: TDate):currency;
    //class function ExcluirRepetido:boolean;
    procedure AplicarConfiguracaoGrupo;
    function embalagemFazParteProduto(cdproduto, cdembalagem:integer):Boolean;
    //function juntarLoteRepetido:Boolean;
    //class function AjustarEstoqueLote:Boolean;
    //procedure UppercaseNUIMEI;
    procedure GerarNomeAutomaticamente(bobeneficiado:boolean=false);
    function PesoTeorico:Double;
    procedure calcularPesoChapa;
    function copiarPlaca(cdproduto1: Integer; qtespessura1, qtlargura1, qtcomprimento1: double):string;
    procedure checkCodigoCEST;
    class function getVlUltimaCompra(codigo: integer; data:string):currency;
    class function VerificarComissao(cdproduto: string; prcomissao: double): double;
    class function possuiFormulacao(codigo:integer):Boolean;
    class function ObterPrtotaltributo(cdcfop:Integer; nuclfiscal, cdorigem:string):Double;
    function CalcularQtItem2(qtitem, prunidade: double):double;
    function CalcularQtitem(qtitem2, prunidade: double):double;
    function Insert(boscript:boolean=false): String;
    function RecriarOrdProducaoAberto:boolean;
  end;
  TProdutoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TProduto;
    procedure SetItem(Index: Integer; const Value: TProduto);
  public
    function New: TProduto;
    property Items[Index: Integer]: TProduto read GetItem write SetItem;
    function Ler(nmcdfield: string; codigo:Integer):Boolean;overload;
    function Ler(sqlwhere: string; bocompleto:boolean=true):Boolean;overload;
    procedure AtualizarCest;
    function getIndiceProduto(codigo:Integer):Integer;
    //function CorrigirQTitem2:boolean;
    function Indice(cdproduto:integer):integer;
  end;

implementation

uses udlgselecionarlista, classeordproducao;

resourcestring
  StrProdutoSSEstaDesativado = 'Produto %s - %s'#13'está desativado.';

function get_nmtabela(tblorigem:string):string;
begin
  if tblorigem = _bosaida then
  begin
    result := 'nota fiscal'
  end
  else if tblorigem = _boentrada then
  begin
    result := 'compra'
  end
  else if tblorigem = _bopedido then
  begin
    result := 'pedido'
  end
  else if tblorigem = _boordcompra then
  begin
    result := 'ordem de compra'
  end
  else if tblorigem = _boorcamento then
  begin
    result := 'orçamento'
  end
  else if tblorigem = _bopedidomaterial then
  begin
    result := 'cotação'
  end
  else if tblorigem = _boordserv then
  begin
    result := 'ordem de serviço'
  end
  else if tblorigem = _bomovto then
  begin
    result := 'movimentação de estoque'
  end;
end;

function tproduto.VerificarTblOrigem(codigo:integer; tblorigem:string):boolean;
begin
  result := true;
  if tblorigem = '' then
  begin
    Exit;
  end;
  if not qregistro.BooleandoCodigo(_produto, codigo, tblorigem) then
  begin
    MessageDlg('Produto não está liberado para '+get_nmtabela(tblorigem)+'.', mtInformation, [mbOK], 0);
    result := false;
  end;
end;

function tproduto.CodigoProdutoDigitado(codigo, tblorigem:string): integer;
begin
  result := 0;
  if codigo = '' then
  begin
    Exit;
  end;
  if CodigoExiste(_produto, _cdcodfornecedor, _string, codigo) then
  begin
    result := QRegistro.CodigodoString(_produto, codigo, _cdcodfornecedor);
  end
  else if codigoexiste(_produto, codigo) then
  begin
    result := StrToInt(codigo);
  end
  else if CodigoExiste(_produto, _cdalternativo, _string, codigo) then
  begin
    result := QRegistro.CodigodoString(_produto, codigo, _cdalternativo);
  end;
  if result = 0 then
  begin
    MessageDlg(Format(_msg_codigo_inexistente_na_tabela, [codigo, maiuscula(_produto)]), mterror, [mbok], 0);
    Abort;
  end;
  if (result <> 0) and (not VerificarTblOrigem(result, tblorigem)) then
  begin
    abort
  end;
end;

function tproduto.ObterCddigitado(codigo:string): string;
begin
  result := NomedoCodigo(_produto, codigo, _cdcodfornecedor);
  if result <> '' then
  begin
    Exit;
  end;
  result := NomedoCodigo(_produto, codigo, _cdalternativo);
  if result <> '' then
  begin
    Exit;
  end;
  if result = '' then
  begin
    result := codigo;
  end;
end;

class function TProduto.VerificarComissao(cdproduto: string; prcomissao: double): double;
var
  porcentagem : double;
begin
  result := 0;
  if not BooleandoCodigo(_produto, cdproduto, _BOCOMISSAO) then
  begin
    exit;
  end;
  porcentagem := CurrencydoCodigo(_produto, cdproduto, _prcomissao);
  if porcentagem = 0 then
  begin
    result := prcomissao
  end
  else
  begin
    result := porcentagem;
  end;
end;

function TProduto.SaldoValorNoDia(cdproduto:string; data: TDate):currency;
begin
  result := RetornaSQLCurrency('select vlsaldovalor '+
                               'from hcustomedio '+
                               'where dthistorico between ''12/31/2003'' and '+getdtbanco(data)+' and cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto+'  '+
                               'order by dthistorico desc');
end;

function TProduto.CustoMedioNoDia(cdproduto:string; data: TDate):currency;
begin
  result := RetornaSQLCurrency('select vlcustomedio '+
                               'from hcustomedio '+
                               'where dthistorico between ''12/31/2003'' and '+getdtbanco(data)+' and cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto+' '+
                               'order by dthistorico desc');
end;

function TProduto.QtEstoqueNoDia(cdproduto:integer; data: TDate; var dtestoque : TDate):extended;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.open('select qtestoque,dthistorico '+
              'from hcustomedio '+
              'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto.tostring+' and dthistorico<='+getdtbanco(data)+' '+
              'order by dthistorico desc');
    result       := q.q.fields[0].ascurrency;
    dtestoque    := q.q.fields[1].AsDateTime;
  finally
    freeandnil(q);
  end;
end;

function TProduto.QtEstoqueNoDia(cdproduto:integer; data: TDate):currency;
begin
  result := 0;
  if cdproduto = 0 then
  begin
    Exit;
  end;
  result := RetornaSQLCurrency('select qtestoque '+
                               'from hcustomedio '+
                               'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto.tostring+' and dthistorico<='+getdtbanco(data)+' '+
                               'order by dthistorico desc');
end;

function TProduto.AceitaBaixa(cdproduto:string):boolean;
begin
  result := RetornaSQLInteger('select count(*) '+
                              'from produto p '+
                              'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
                              'where t.boservico<>''S'' and t.boestoque=''S'' '+
                              'and p.cdempresa='+empresa.cdempresa.tostring+' and p.cdproduto='+cdproduto) = 1;
end;

function TProduto.GetValorGrade(cdtpgradevalor:Integer; cdcliente:string; qtitem:double):currency;
var
  sql : string;
  prvenda : double;
  cdgrade1 : Integer;
begin
  if cdproduto = 0 then
  begin
    result := 0;
    exit;
  end;
  if tpproduto.cdtpproduto = 0 then
  begin
    tpproduto.select(cdtpproduto);
  end;
  // Preço de acordo com o tipo de cliente, acrescimo de porcentagem, implementacao para a dubarte
  if (tpproduto.bogradevalor <> _s) and (tpproduto.botpcliente = _s) and (cdcliente <> '') then
  begin
    result := vlvenda;
    prvenda := RetornaSQLCurrency('select p.prvenda '+
                                  'from produtotpcliente p '+
                                  'inner join cliente c on c.cdtpcliente=p.cdtpcliente and c.cdempresa=p.cdempresa '+
                                  'where p.cdempresa='+empresa.cdempresa.tostring+' '+
                                  'and c.cdcliente='+cdcliente+' '+
                                  'and p.cdproduto='+cdproduto.tostring);
    if prvenda = 0 then
    begin
      prvenda := RetornaSQLCurrency('select g.prvenda '+
                                    'from grupotpcliente g '+
                                    'inner join produto p on p.cdempresa=g.cdempresa and p.cdgrupo=g.cdgrupo '+
                                    'inner join cliente c on c.cdtpcliente=g.cdtpcliente and c.cdempresa=g.cdempresa '+
                                    'where g.cdempresa='+empresa.cdempresa.tostring+' '+
                                    'and c.cdcliente='+cdcliente+' '+
                                    'and p.cdproduto='+cdproduto.tostring);
      if prvenda = 0 then
      begin
        prvenda := RetornaSQLCurrency('select t.prvenda '+
                                      'from tpcliente t '+
                                      'inner join cliente c on c.cdtpcliente=t.cdtpcliente and c.cdempresa=t.cdempresa '+
                                      'where t.cdempresa='+empresa.cdempresa.tostring+' and c.cdcliente='+cdcliente);
      end;
    end;
    Result := result * ((prvenda / 100)+1);
    exit;
  end;
  if cdcliente <> '' then // valor do contrato
  begin
    //{a tabela itclienteproduto será removida do banco de dados
    result := RetornaSQLCurrency('select vlvenda '+
                                 'from itclienteproduto '+
                                 'where cdempresa='+empresa.cdempresa.tostring+' '+
                                 'and cdcliente='+cdcliente+' '+
                                 'and cdproduto='+cdproduto.ToString);
    if result <> 0 then
    begin
      Exit;
    end;
    cdgrade1 := RetornaSQLInteger('select cdgrade '+
                                 'from itclienteproduto '+
                                 'where cdempresa='+empresa.cdempresa.tostring+' '+
                                 'and cdcliente='+cdcliente+' '+
                                 'and cdproduto='+cdproduto.tostring);
    if cdgrade1 <> 0 then
    begin
      result := RetornaSQLCurrency('select vlgradevalor '+
                                   'from itgrade '+
                                   'where cdempresa='+empresa.cdempresa.tostring+' '+
                                   'and cdgrade='+cdgrade1.tostring+' '+
                                   'and '+FormatFloat(__integerpuro, qtitem)+'>=nufaixainicial '+
                                   'and '+FormatFloat(__integerpuro, qtitem)+'<=nufaixafinal');
      exit;
    end;
    result := RetornaSQLCurrency('select i.vlunitario '+
                                 'from contrato c '+
                                 'inner join itcontrato i on i.cdempresa=c.cdempresa and i.cdcontrato=c.cdcontrato '+
                                 'inner join stcontrato s on s.cdempresa=c.cdempresa and s.cdstcontrato=c.cdstcontrato '+
                                 'where s.bogerarinfo=''S'' '+
                                 'and i.cdempresa='+empresa.cdempresa.tostring+' '+
                                 'and c.cdcliente='+cdcliente+' '+
                                 'and i.cdproduto='+cdproduto.tostring);
    if result <> 0 then
    begin
      Exit;
    end;
  end;
  if cdtpgradevalor <> 0 then
  begin
    if cdgrade = 0 then
    begin
      sql := 'select vlgradevalor '+
             'from itgradevalor '+
             'where cdempresa='+empresa.cdempresa.tostring+' '+
             'and cdproduto='+cdproduto.tostring+' '+
             'and cdtpgradevalor='+cdtpgradevalor.tostring+' '+
             'and '+FormatFloat(__integerpuro, qtitem)+'>=nufaixainicial '+
             'and '+FormatFloat(__integerpuro, qtitem)+'<=nufaixafinal'
    end
    else
    begin
      sql := 'select vlgradevalor '+
             'from itgrade '+
             'where cdempresa='+empresa.cdempresa.tostring+' '+
             'and cdgrade='+cdgrade.tostring+' '+
             'and cdtpgradevalor='+cdtpgradevalor.tostring+' '+
             'and '+FormatFloat(__integerpuro, qtitem)+'>=nufaixainicial '+
             'and '+FormatFloat(__integerpuro, qtitem)+'<=nufaixafinal';
    end;
  end
  else if cdgrade = 0 then
  begin
    sql := 'select vlgradevalor '+
           'from itgradevalor '+
           'where cdempresa='+empresa.cdempresa.tostring+' '+
           'and cdproduto='+cdproduto.tostring+' '+
           'and '+FormatFloat(__integerpuro, qtitem)+'>=nufaixainicial '+
           'and '+FormatFloat(__integerpuro, qtitem)+'<=nufaixafinal';
    result := RetornaSQLCurrency(sql);
    if result > 0 then
    begin
      exit;
    end;
    result := vlvenda;
    exit;
  end
  else
  begin
    sql := 'select vlgradevalor '+
           'from itgrade '+
           'where cdempresa='+empresa.cdempresa.tostring+' '+
           'and cdgrade='+cdgrade.ToString+' '+
           'and '+FormatFloat(__integerpuro, qtitem)+'>=nufaixainicial '+
           'and '+FormatFloat(__integerpuro, qtitem)+'<=nufaixafinal';
  end;
  result := RetornaSQLCurrency(sql);
end;

function TProduto.qtmovimentacao(cdproduto, tbl:string; dti, dtf:TDate):extended;
begin
  result := RetornaSQLCurrency('select sum(qtitem) '+
                               'from it'+tbl+' i '+
                               'inner join '+tbl+' p on p.cd'+tbl+'=i.cd'+tbl+' and i.cdempresa=p.cdempresa '+
                               'inner join tp'+tbl+' t on t.cdtp'+tbl+'=p.cdtp'+tbl+' and t.cdempresa=p.cdempresa '+
                               'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto='+cdproduto+' and dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf));
end;

function TProduto.VlSaldoValorProdutoNaData(cdproduto:string; data: TDate):currency;
begin
  result := RetornaSQLCurrency('select vlsaldovalor '+
                               'from hcustomedio '+
                               'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto+' and dthistorico between ''12/31/2003'' and '+getdtbanco(data)+' '+
                               'order by dthistorico desc');
end;

function TProduto.EstoqueRealParabaixa(cdproduto:integer; dtbaixa:TDate):currency;
var
  dt, dtestoque : TDate;
  qtestoqueatual : currency;
begin
  qtestoqueatual := qregistro.ValordoCodigo(_produto, cdproduto, _qtestoque);
  result         := QtEstoqueNaData(cdproduto, dtbaixa, dtestoque); // estoque de acordo com a ficha de movimentação
  dt             := dtbanco;
  if dtestoque = 0 then
  begin
    dtestoque := dt
  end
  else
  begin
    dtestoque := dtestoque + 1;
  end;
  if dtestoque > Dt then
  begin
    exit
  end;
  if dtestoque < dt then
  begin
    dt := dtbaixa;
  end;
  result := result + RetornaSQLCurrency('select sum(i.qtitem) '+ // movimentacao de entrada
                                        'from entrada e '+
                                        'inner join itentrada i on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
                                        'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto='+cdproduto.ToString+' and e.dtsaida between '+getdtbanco(dtestoque)+' and '+getdtbanco(Dt));
  result := result + RetornaSQLCurrency('select sum(i.qtitem) '+ // movimentacao de saida
                                        'from saida s '+
                                        'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
                                        'inner join itsaida i on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                                        'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto='+cdproduto.ToString+' and s.tpentsai=''E'' and t.boestoque=''S'' and s.dtsaida between '+getdtbanco(dtestoque)+' and '+getdtbanco(Dt));
  result := result - RetornaSQLCurrency('select sum(i.qtitem) '+
                                        'from saida s '+
                                        'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
                                        'inner join itsaida i on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                                        'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto='+cdproduto.ToString+' and s.tpentsai=''S'' and t.boestoque=''S'' and s.dtsaida between '+getdtbanco(dtestoque)+' and '+getdtbanco(Dt));
  result := result + RetornaSQLCurrency('select sum(i.qtitem) '+ // movimentacao de movto
                                        'from movto m '+
                                        'inner join itmovto i on m.cdmovto=i.cdmovto and m.cdempresa=i.cdempresa '+
                                        'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and t.cdempresa=m.cdempresa '+
                                        'where m.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto='+cdproduto.ToString+' and t.tpmovto=''E'' and m.dtemissao between '+getdtbanco(dtestoque)+' and '+getdtbanco(Dt));
  result := result - RetornaSQLCurrency('select sum(i.qtitem) '+
                                        'from movto m '+
                                        'inner join itmovto i on m.cdmovto=i.cdmovto and i.cdempresa=m.cdempresa '+
                                        'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and t.cdempresa=m.cdempresa '+
                                        'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdproduto='+cdproduto.ToString+' and t.tpmovto=''S'' and m.dtemissao between '+getdtbanco(dtestoque)+' and '+getdtbanco(Dt));
  if qtestoqueatual < result then
  begin
    result := qtestoqueatual;
  end;
end;

function TProduto.QtEstoqueNaData(cdproduto:integer; data: TDate; var dtestoque : TDate):extended;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.open('select qtestoque,dthistorico '+
              'from hcustomedio h '+
              'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto.ToString+' and dthistorico<='+getdtbanco(data)+' '+
              'order by dthistorico desc');
    result    := q.q.fields[0].ascurrency;
    dtestoque := q.q.fields[1].AsDateTime;
  finally
    q.free;
  end;
end;

function TProduto.QtEstoqueNaData(cdproduto:integer; data: TDate):extended;
begin
  result := RetornaSQLCurrency('select qtestoque from hcustomedio where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto.ToString+' and dthistorico<='+getdtbanco(data)+' order by dthistorico desc');
end;

function TProduto.EstoqueRealNaData(cdproduto:integer; dtbaixa:TDate):currency;
var
  dtestoque : TDate;
begin
  result    := QtEstoqueNaData(cdproduto, dtbaixa, dtestoque); // estoque de acordo com a ficha de movimentação
  dtestoque := dtestoque + 1;
  if dtestoque > dtbaixa then // loop da data inicial até a data final
  begin
    exit;
  end;
  result := result + RetornaSQLCurrency('select sum(i.qtitem) '+ // movimentacao de entrada
                                        'from entrada e '+
                                        'inner join itentrada i on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
                                        'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=e.cdempresa '+
                                        'where i.cdempresa='+empresa.cdempresa.tostring+' and t.boestoque=''S'' and i.cdproduto='+cdproduto.ToString+' and e.dtsaida between '+getdtbanco(dtestoque)+' and '+getdtbanco(dtbaixa));
  result := result + RetornaSQLCurrency('select sum(i.qtitem) '+ // movimentacao de saida
                                        'from saida s '+
                                        'inner join itsaida i on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                                        'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
                                        'where s.cdempresa='+empresa.cdempresa.tostring+' and s.tpentsai=''E'' and t.boestoque=''S'' and i.cdproduto='+cdproduto.ToString+' and s.dtsaida between '+getdtbanco(dtestoque)+' and '+getdtbanco(dtbaixa));
  result := result - RetornaSQLCurrency('select sum(i.qtitem) '+
                                        'from saida s '+
                                        'inner join itsaida i on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
                                        'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
                                        'where s.cdempresa='+empresa.cdempresa.tostring+' and s.tpentsai=''S'' and t.boestoque=''S'' and i.cdproduto='+cdproduto.ToString+' and s.dtsaida between '+getdtbanco(dtestoque)+' and '+getdtbanco(dtbaixa));
  result := result + RetornaSQLCurrency('select sum(i.qtitem) '+ // movimentacao de movto
                                        'from movto m '+
                                        'inner join itmovto i on m.cdmovto=i.cdmovto and m.cdempresa=i.cdempresa '+
                                        'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and t.cdempresa=m.cdempresa '+
                                        'where i.cdempresa='+empresa.cdempresa.tostring+' and t.tpmovto=''E'' and i.cdproduto='+cdproduto.ToString+' and m.dtemissao between '+getdtbanco(dtestoque)+' and '+getdtbanco(dtbaixa));
  result := result - RetornaSQLCurrency('select sum(i.qtitem) '+
                                        'from movto m '+
                                        'inner join itmovto i on m.cdmovto=i.cdmovto and i.cdempresa=m.cdempresa '+
                                        'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and t.cdempresa=m.cdempresa '+
                                        'where i.cdempresa='+empresa.cdempresa.tostring+' and t.tpmovto=''S'' and i.cdproduto='+cdproduto.ToString+' and m.dtemissao between '+getdtbanco(dtestoque)+' and '+getdtbanco(dtbaixa));
end;

function TProduto.VLCustoMedioNaData(cdproduto:string; data: TDate):currency;
begin
  result := RetornaSQLCurrency('select vlcustomedio from hcustomedio where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto+' and dthistorico between ''12/31/2003'' and '+getdtbanco(data)+' order by dthistorico desc');
end;

{
function TProduto.ConfigurarCdItem(cdgrupo, cdgrupoold:string; cditem:integer):string;
begin
  result := inttostr(cditem);
  if ((cdgrupo <> '') and (cditem = 0)) or (cdgrupo <> cdgrupoold) then
  begin
    result := codigoitemgrupo(cdgrupo)
  end;
end;
}

procedure TProduto.AplicarConfiguracaoGrupo;
var
  grupo : TGrupo;
begin
  grupo := tgrupo.create;
  try
    grupo.Select(cdgrupo);
    if grupo.cdgrupo = 0 then
    begin
      Exit;
    end;
    boentrada        := grupo.boentrada;
    bomovto          := grupo.bomovto;
    bosaida          := grupo.bosaida;
    boordcompra      := grupo.boordcompra;
    bopedido         := grupo.bopedido;
    boorcamento      := grupo.boorcamento;
    boordserv        := grupo.boordserv;
    bopedidomaterial := grupo.bopedidomaterial;
    nuclfiscal       := grupo.nuclfiscal;
  finally
    grupo.Free;
  end;
end;

function TProduto.Existecodigoitemgrupo(cdgrupo, cditem:string):boolean;
begin
  result := RegistroExiste(_produto, _cdgrupo+'='+cdgrupo+' and '+_cditem+'='+cditem);
end;

{
function TProduto.codigoitemgrupo(cdgrupo:string):string;
var
  cditem : integer;
begin
  if cdgrupo = '' then
  begin
    result := '';
    Exit;
  end;
  cditem := RetornaSQLInteger('select cditem from grupo where cdempresa='+empresa.cdempresa.tostring+' and cdgrupo='+cdgrupo) + 1;
  while existecodigoitemgrupo(cdgrupo, inttostr(cditem)) do
  begin
    inc(cditem);
  end;
  ExecutaSQL('update grupo set cditem='+inttostr(cditem)+' where cdempresa='+empresa.cdempresa.tostring+' and cdgrupo='+cdgrupo);
  result := inttostr(cditem);
end;
}

function TProduto.RecriarOrdProducaoAberto: boolean;
var
  ordproducao : tordproducaolist;
  I: Integer;
begin
  result := false;
  ordproducao := tordproducaolist.Create;
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    ordproducao.Ler(_cdproduto+'='+inttostr(cdproduto)+' and '+_cdstordproducao+'=1 and '+_cdtpordproducao+'=1');
    frmprogressbar.gau.MaxValue := ordproducao.Count;
    frmprogressbar.Show;
    for I := 0 to ordproducao.count - 1do
    begin
      frmprogressbar.pnl.Caption := 'Registro '+inttostr(i)+' de '+inttostr(ordproducao.count);
      frmprogressbar.gau.Progress := i;
      application.ProcessMessages;
      ordproducao.Items[i].Apontamento.Ler(_cdordproducao, ordproducao.Items[i].cdordproducao);
      if ordproducao.Items[i].Apontamento.Count > 0 then
      begin
        continue;
      end;
      ordproducao.Items[i].RecriarOPdoMetodoProcessodoProduto;
      result := true;
    end;
  finally
    freeandnil(ordproducao);
    freeandnil(frmprogressbar);
  end;
end;

function TProduto.RepeteCdDigitado(cddigitado, cdproduto:string; var mensagem:string):boolean;
var
  q : TClasseQuery;
begin
  result := false;
  q := TClasseQuery.create;
  try
    q.q.open('select cdproduto,nmproduto from produto where cdempresa='+empresa.cdempresa.tostring+' and cdalternativo='+quotedstr(cddigitado)+' and cdproduto<>'+cdproduto);
    if q.q.fieldbyname(_cdproduto).asinteger > 0 then
    begin
      mensagem := 'Código Alternativo igual ao produto '#13+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+'.'#13'Digite um código alternativo diferente para prosseguir.';
      result   := true;
      Exit;
    end;
    q.q.Close;
    q.q.open('select cdproduto,nmproduto from produto where cdempresa='+empresa.cdempresa.tostring+' and CDPRODFABRICA='+quotedstr(cddigitado)+' and cdproduto<>'+cdproduto);
    if q.q.fieldbyname(_cdproduto).asinteger > 0 then
    begin
      mensagem := 'Código Alternativo igual ao código de fábrica no produto '#13+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+'.'#13'Digite um código alternativo diferente para prosseguir.';
      result   := true;
      Exit;
    end;
    if isInteger(cddigitado)then
    begin
      q.q.Close;
      q.q.open('select cdproduto,nmproduto from produto where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cddigitado+' and cdproduto<>'+cdproduto);
      if q.q.fieldbyname(_cdproduto).asinteger > 0 then
      begin
        mensagem := 'Código Alternativo igual ao código do produto '#13+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+'.'#13'Digite um código alternativo diferente para prosseguir.';
        result   := true;
      end;
    end;
  finally
    q.free;
  end;
end;

function TProduto.RepeteCdProdFabrica(cdprodfabrica, cdproduto:string; var mensagem:string):boolean;
var
  q : TClasseQuery;
begin
  result := false;
  q      := TClasseQuery.create;
  try
    q.q.open('select cdproduto,nmproduto from produto where cdempresa='+empresa.cdempresa.tostring+' and cdprodfabrica='+quotedstr(cdprodfabrica)+' and cdproduto<>'+cdproduto);
    if q.q.fieldbyname(_cdproduto).asinteger > 0 then
    begin
      mensagem := 'Código de Fábrica igual ao produto'#13+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+'.'#13'Digite um código fábrica diferente para prosseguir.';
      result   := true;
      Exit;
    end;
    q.q.Close;
    q.q.open('select cdproduto,nmproduto from produto where cdempresa='+empresa.cdempresa.tostring+' and CDalternativo='+quotedstr(cdprodfabrica)+' and cdproduto<>'+cdproduto);
    if q.q.fieldbyname(_cdproduto).asinteger > 0 then
    begin
      mensagem := 'Código de Fábrica igual ao código alternativo no produto'#13+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+'.'#13'Digite um código de fábrica diferente para prosseguir.';
      result   := true;
      Exit;
    end;
    if isInteger(cdprodfabrica)then
    begin
      q.q.Close;
      q.q.open('select cdproduto,nmproduto from produto where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdprodfabrica+' and cdproduto<>'+cdproduto);
      if q.q.fieldbyname(_cdproduto).asinteger > 0 then
      begin
        mensagem := 'Código de fábrica igual ao código do produto'#13+q.q.fieldbyname(_cdproduto).asstring+' - '+q.q.fieldbyname(_nmproduto).asstring+'.'#13'Digite um código de fábrica diferente para prosseguir.';
        result   := true;
      end;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TProduto.Checkcdtpitemnuclfiscal(bocheck:boolean=true);
begin
  if not bocheck then
  begin
    exit;
  end;
  if (cdtpitem = _00) and
     ((nuclfiscal = '') or ((Length(nuclfiscal) < 8) and (nuclfiscal<>_00))) then
  begin
    messagedlg('NCM é um campo obrigatório no cadastro do produto'#13'quando o tipo de item for "0".'#13'Favor alterar o produto '+inttostr(cdproduto)+' - '+nmproduto+#13'para poder continuar.', mtInformation, [mbok], 0);
    abort;
  end;
  if (nuclfiscal <> _00) and (nuclfiscal = StringOfChar(_0, 8)) then
  begin
    messagedlg('Conteúdo '+StringOfChar(_0, 8)+' não é permitido na NCM.', mtInformation, [mbok], 0);
    abort;
  end;
end;

procedure TProduto.Checkcdtpitem;
begin
  if cdtpitem = '' then
  begin
    messagedlg('Produto '+inttostr(cdproduto)+' - '+nmproduto+#13'tipo de item é um campo obrigatório no cadastro de produto.'#13'Altere o cadastro do produto para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

procedure TProduto.Checkcdgrupo;
begin
  if cdgrupo = 0 then
  begin
    messagedlg('Produto '+inttostr(cdproduto)+' - '+nmproduto+#13'Grupo é um campo obrigatório no cadastro de produto.'#13'Altere o cadastro do produto para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

function TProduto.CalcularQtitem(qtitem2, prunidade: double): double;
begin
  if bodividir = _s then
  begin
    result := qtitem2 * prunidade;
  end
  else
  begin
    result := qtitem2 / prunidade;
  end;
end;

function TProduto.CalcularQtItem2(qtitem, prunidade: double): double;
begin
  if bodividir = _s then
  begin
    result := qtitem / prunidade;
  end
  else
  begin
    result := qtitem * prunidade;
  end;
end;

procedure TProduto.Checkboativar;
begin
  if boativar <> _s then
  begin
    MessageDlg(format(StrProdutoSSEstaDesativado, [inttostr(cdproduto), nmproduto]), mtInformation, [mbOK], 0);
    Abort;
  end;
end;

function TProduto.embalagemFazParteProduto(cdproduto, cdembalagem: integer): Boolean;
begin
  result := RetornaSQLInteger('select count(*) from itprodutoembalagem where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+inttostr(cdproduto)+' and cdprodutoembalagem='+inttostr(cdembalagem)) > 0;
end;

constructor TProduto.create;
begin
  inherited create;
  fmodbcsticms := tmodbcsticms.create;
  fmodbcicms := tmodbcicms.create;
  fuf := TUF.create;
  frecalculocustomedio      := TRecalculoCustoMedio.Create;
  fmaterial  := tmaterial.create;
  ftpproduto := TTPProduto.create;
  fgrupo     := tgrupo.create;
  fnorma     := TNorma.create;
  fforma     := TForma.create;
  fitprodutomaterial := TitprodutomaterialList.Create;
  fitprodutorecurso  := TitprodutorecursoList.Create;
  Fprodutoformulacao := TprodutoformulacaoList.Create;
  fitprodutocusto    := TitprodutocustoList.Create;
end;

destructor TProduto.destroy;
begin
  freeandnil(fmodbcsticms);
  freeandnil(fmodbcicms);
  FreeAndNil(fuf);
  FreeAndNil(frecalculocustomedio);
  FreeAndNil(fmaterial);
  FreeAndNil(fgrupo);
  FreeAndNil(ftpproduto);
  FreeAndNil(fnorma);
  FreeAndNil(fforma);
  FreeAndNil(fitprodutomaterial);
  FreeAndNil(fitprodutocusto);
  FreeAndNil(fitprodutorecurso);
  FreeAndNil(fprodutoformulacao);
  inherited;
end;

function TProduto.Insert(boscript: boolean): String;
begin
  cdalternativo := Copy(cdalternativo, 1, 30);
  if cdtpproduto = 0 then
  begin
    cdtpproduto := 1;
  end;
  if borecuperaicms = '' then
  begin
    borecuperaicms := _N;
  end;
  if borecuperaipi = '' then
  begin
    borecuperaipi := _N;
  end;
  if borecuperapis = '' then
  begin
    borecuperapis := _N;
  end;
  if borecuperacofins = '' then
  begin
    borecuperacofins := _N;
  end;
  if cdorigem = '' then
  begin
    cdorigem := _0;
  end;
  boativar := _s;
  result := inherited insert(boscript);
end;

function TProduto.existeNomeProduto(nome, codigo: string): Boolean;
begin
  if codigo = '' then
  begin
    result := qregistro.codigodonome(_produto, nome) <> ''
  end
  else
  begin
    result := RetornaSQLInteger('select count(*) from produto where cdempresa='+empresa.cdempresa.tostring+' and boativar=''S'' and cdproduto<>'+codigo+' and nmproduto='+quotedstr(nome)) > 0;
  end;
end;

procedure TProduto.Checknuclfiscaltamanho;
begin
  if (length(removercaracteres(nuclfiscal)) <> 8) and (length(nuclfiscal) <> 0) and (nuclfiscal <> _00) then
  begin
    messagedlg('O NCM deve ter 8 caracteres se for preenchido.'#13'Altere o cadastro do produto para poder continuar.', mtinformation, [mbok], 0);
    abort;
  end;
  if (nuclfiscal <> _00) and (nuclfiscal = StringOfChar(_0, 8)) then
  begin
    messagedlg('Conteúdo '+StringOfChar(_0, 8)+' não é permitido na NCM.', mtInformation, [mbok], 0);
    abort;
  end;
end;

procedure TProduto.CheckDados(bonuclfiscal:boolean=true);
begin
  Checkboativar;
  Checkcdtpitem;
  Checkcdtpitemnuclfiscal(bonuclfiscal);
  Checknuclfiscaltamanho;
  checkcdtpproduto;
  checkcdgrupo;
end;

{
class function TProduto.ExcluirRepetido: boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('SELECT CDPRODUTO FROM PRODUTO WHERE cdempresa='+empresa.cdempresa.tostring);
  try
    while not q.q.Eof do
    begin
      try
        ExecutaSQL('delete from produto where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+q.q.fieldbyname(_cdproduto).AsString);
      except
      end;
      q.q.next;
    end;
    result := true;
    showmessage('Produtos Excluídos!');
  finally
    freeandnil(q)
  end;
end;
}

class function TProduto.getVlUltimaCompra(codigo: integer; data: string): currency;
begin
  result := RetornaSQLCurrency('select first 1 itentrada.vlunitario '+
                               'from entrada '+
                               'inner join itentrada on itentrada.cdempresa=entrada.cdempresa and itentrada.cdentrada=entrada.cdentrada '+
                               'inner join cfop on cfop.cdcfop=itentrada.cdcfop and cfop.bocompra=''S'' '+
                               'where itentrada.cdproduto='+inttostr(codigo)+' and entrada.dtsaida<='+quotedstr(data)+' '+
                               'order by entrada.dtsaida desc');
end;

procedure TProduto.Checkcdtpproduto;
begin
  if cdtpproduto = 0 then
  begin
    messagedlg('Produto '+inttostr(cdproduto)+' - '+nmproduto+#13+
               'tipo de produto é um campo obrigatório no cadastro de produto.'#13+
               'Altere o cadastro do produto para continuar.', mtInformation, [mbOK], 0);
    Abort;
  end;
end;

function TProduto.podeAdicionarProdutoGrupo(nunivel: string): Boolean;
var
  cdgrupo : string;
begin
  cdgrupo := CodigodoCampo(_grupo, nunivel, _nunivel);
  if cdgrupo = '' then
  begin
    cdgrupo := nunivel;
  end;
  result := BooleandoCodigo(_grupo, cdgrupo, _boproduto);
end;

class function TProduto.ObterPrtotaltributo(cdcfop:Integer; nuclfiscal, cdorigem: string): Double;
var
  tipo :string;
begin
  if not QRegistro.BooleandoCodigo(_cfop, cdcfop, _boCALCULARIBPT) then
  begin
    result := 0;
    Exit;
  end;
  tipo := _nacional;
  if cdorigem <> _0 then
  begin
    tipo := _importada;
  end;
  result := RetornaSQLCurrency('select al'+tipo+' from indiceibpt where nuncm='+quotedstr(nuclfiscal));
end;

function TProduto.copiar: integer;
var
  s, sit, sitprod, sprodcli, cproduto, citgradevalor, citproduto  , cprodutotpcliente : TClasseQuery;
  i : integer;
begin
  s        := TClasseQuery.Create(QRetornaSQL.get_select_from(_produto, IntToStr(cdproduto)));
  sit      := TClasseQuery.Create(QRetornaSQL.get_select_from(_itgradevalor, IntToStr(cdproduto), _cdproduto));
  sitprod  := TClasseQuery.Create(QRetornaSQL.get_select_from(_itproduto, IntToStr(cdproduto), _cdproduto));
  sprodcli := TClasseQuery.Create(QRetornaSQL.get_select_from(_produtotpcliente, IntToStr(cdproduto), _cdproduto));
  cproduto          := TClasseQuery.Create(QRetornaSQL.get_select_from(_produto, _0), true);
  citgradevalor     := TClasseQuery.Create(QRetornaSQL.get_select_from(_it+_grade+_valor, _0), true);
  citproduto        := TClasseQuery.Create(QRetornaSQL.get_select_from(_itproduto, _0, _cdproduto), true);
  cprodutotpcliente := TClasseQuery.Create(QRetornaSQL.get_select_from(_produto+_tpcliente, _0), true);
  try
    cproduto.q.Insert;
    for i := 0 to cproduto.q.FieldCount - 1 do
    begin
      qregistro.set_field_type_assign(s.q, cproduto.q, i);
    end;
    RegistraInformacao_(cproduto.q);
    result                                     := qgerar.GerarCodigo(_produto);
    cproduto.q.FieldByName(_cdproduto).AsInteger  := result;
    cproduto.q.FieldByName(_qtestoque).AsString  := _0;
    aplicacao.aplyupdates(cproduto.q);

    while not sprodcli.q.Eof do
    begin
      cprodutotpcliente.q.Insert;
      for i := 0 to cprodutotpcliente.q.FieldCount - 1 do
      begin
        qregistro.set_field_type_assign(sprodcli.q, cprodutotpcliente.q, i);
      end;
      RegistraInformacao_(cprodutotpcliente.q);
      cprodutotpcliente.q.FieldByName(_cdproduto).AsInteger            := result;
      cprodutotpcliente.q.FieldByName(_cdproduto+_tpcliente).AsString := GerarCodigo(_produto+_tpcliente);
      aplicacao.aplyupdates(cprodutotpcliente.q);
      sprodcli.q.Next;
    end;

    while not sit.q.Eof do
    begin
      citgradevalor.q.Insert;
      for i := 0 to citgradevalor.q.FieldCount - 1 do
      begin
        qregistro.set_field_type_assign(sit.q, citgradevalor.q, i);
      end;
      RegistraInformacao_(citgradevalor.q);
      citgradevalor.q.FieldByName(_cdproduto).AsInteger            := result;
      citgradevalor.q.FieldByName(_cdproduto+_tpcliente).AsString := GerarCodigo(_itgradevalor);
      aplicacao.aplyupdates(citgradevalor.q);
      sit.q.Next;
    end;

    while not sitprod.q.Eof do
    begin
      citproduto.q.Insert;
      for i := 0 to citproduto.q.FieldCount - 1 do
      begin
        qregistro.set_field_type_assign(sitprod.q, citproduto.q, i);
      end;
      RegistraInformacao_(citgradevalor.q);
      citproduto.q.FieldByName(_cdproduto).Asinteger            := result;
      aplicacao.aplyupdates(citproduto.q);
      sitprod.q.Next;
    end;
  finally
    freeandnil(s);
    freeandnil(sit);
    freeandnil(sitprod);
    freeandnil(sprodcli);
    freeandnil(cproduto);
    freeandnil(citgradevalor);
    freeandnil(citproduto);
    freeandnil(cprodutotpcliente);
  end;
end;

class function TProduto.possuiFormulacao(codigo: integer): Boolean;
begin
  result := RetornaSQLInteger('select count(*) '+
                              'from produtoformulacao '+
                              'inner join formulacao on formulacao.cdempresa=produtoformulacao.cdempresa and formulacao.cdformulacao=produtoformulacao.cdformulacao '+
                              'where formulacao.cdstformulacao=1 and produtoformulacao.cdempresa='+empresa.cdempresa.tostring+' and produtoformulacao.cdproduto='+inttostr(codigo))>0;
end;

{
function TProduto.juntarLoteRepetido: Boolean;
  function makesqll(cdproduto, nuimei:string):string;
  begin
    result := 'select cditlote from itlote where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+cdproduto+' and nuimei='+quotedstr(nuimei);
  end;
var
  q, ql : TClasseQuery;
  cditlote : string;
  sql : TStrings;
begin
  q   := TClasseQuery.create;
  ql  := TClasseQuery.create;
  sql := TStringList.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    q.q.Open('select cdproduto,nuimei,count(*) from itlote where cdempresa='+empresa.cdempresa.tostring+' group by cdproduto,nuimei having count(*)>1');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    frmprogressbar.Show;
    while not q.q.Eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      ql.q.Close;
      ql.q.Open(makesqll(q.q.fieldbyname(_cdproduto).AsString, q.q.fieldbyname(_nuimei).AsString));
      cditlote := '';
      while not ql.q.Eof do
      begin
        if ql.q.RecNo = 1 then
        begin
          cditlote := ql.q.fieldbyname(_cditlote).AsString;
        end
        else
        begin
          sql.add('update itentradalote set cditlote='+cditlote+' where cdempresa='+empresa.cdempresa.tostring+' and cditlote='+ql.q.FieldByName(_cditlote).AsString);
          sql.add('update itsaidalote set cditlote='+cditlote+' where cdempresa='+empresa.cdempresa.tostring+' and cditlote='+ql.q.FieldByName(_cditlote).AsString);
          sql.add('update itpedidolote set cditlote='+cditlote+' where cdempresa='+empresa.cdempresa.tostring+' and cditlote='+ql.q.FieldByName(_cditlote).AsString);
          sql.add('delete from itlote where cdempresa='+empresa.cdempresa.tostring+' and cditlote='+ql.q.FieldByName(_cditlote).AsString);
        end;
        ql.q.Next;
      end;
      q.q.Next;
    end;
    if sql.Count > 0 then
    begin
      ExecutaScript(sql)
    end;
    result := True;
  finally
    FreeAndNil(q);
    FreeAndNil(ql);
    FreeAndNil(sql);
    FreeAndNil(frmprogressbar);
  end;
end;
}

{
class function TProduto.AjustarEstoqueLote: Boolean;
  function makesql:string;
  begin
    result := 'select cditlote from itlote where cdempresa='+empresa.cdempresa.tostring+' order by cditlote';
  end;
  function makesqle:string;
  begin
    result := 'select cditlote from itentradalote where cdempresa='+empresa.cdempresa.tostring+' order by cditlote';
  end;
  function makesqls:string;
  begin
    result := 'select l.cditlote '+
              'from itsaidalote l '+
              'inner join itsaida i on i.cdempresa=l.cdempresa and i.cditsaida=l.cditsaida '+
              'inner join saida s on s.cdempresa=i.cdempresa and s.cdsaida=i.cdsaida '+
              'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
              'where l.cdempresa='+empresa.cdempresa.tostring+' and t.tpentsai=''S'' '+
              'order by cditlote';
  end;
  function makesqlse:string;
  begin
    result := 'select l.cditlote '+
              'from itsaidalote l '+
              'inner join itsaida i on i.cdempresa=l.cdempresa and i.cditsaida=l.cditsaida '+
              'inner join saida s on s.cdempresa=i.cdempresa and s.cdsaida=i.cdsaida '+
              'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
              'where l.cdempresa='+empresa.cdempresa.tostring+' and t.tpentsai=''E'' '+
              'order by cditlote';
  end;
var
  q, qe, qs, qse : TClasseQuery;
  sql : TStrings;
  procedure zerar_lote;
  begin
    sql.Add('update itlote set qtestoque=0');
  end;
  procedure criar_objetos;
  begin
    q   := TClasseQuery.create;
    qe  := TClasseQuery.create;
    qs  := TClasseQuery.create;
    qse := TClasseQuery.create;
    frmprogressbar := Tfrmprogressbar.Create(nil);
    sql            := TStringList.Create;
  end;
  procedure destruir_objetos;
  begin
    FreeAndNil(q);
    FreeAndNil(qe);
    FreeAndNil(qs);
    FreeAndNil(qse);
    freeandnil(sql);
    freeandnil(frmprogressbar);
  end;
  procedure selecionar_registros;
  begin
    q.q.open(makesql); // selecionar registro de lote
    qe.q.open(makesqle); // ler os registros de entrada
    qs.q.open(makesqls); // ler os registros de saida
    qse.q.open(makesqlse); // ler os registros de saida de entrada
  end;
  procedure filtrar_registros;
  begin
    qe.q.Filtered := False;
    qe.q.Filter   := 'CDITLOTE='+q.q.fieldbyname(_cditlote).AsString;
    qe.q.Filtered := true;

    qs.q.Filtered := False;
    qs.q.Filter   := 'CDITLOTE='+q.q.fieldbyname(_cditlote).AsString;
    qs.q.Filtered := true;

    qse.q.Filtered := False;
    qse.q.Filter   := 'CDITLOTE='+q.q.fieldbyname(_cditlote).AsString;
    qse.q.Filtered := true;
  end;
  procedure contar_registros;
  var
    i : integer;
  begin
    i := 0;
    i := i + qe.q.RecordCount - qs.q.RecordCount + qse.q.RecordCount;
    sql.Add('update itlote set qtestoque='+inttostr(i)+' where cdempresa='+empresa.cdempresa.tostring+' and cditlote='+q.q.fieldbyname(_cditlote).AsString)
  end;
begin
  criar_objetos;
  try
    zerar_lote;
    selecionar_registros;
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    frmprogressbar.Show;
    while not q.q.eof do // loop do lote
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      filtrar_registros;
      contar_registros;
      q.q.next;
    end;
    ExecutaScript(sql);
    result := True;

    // adicionar a entrada
    // subtrair a saida de acordo com o cfop
    // adicionar a saida de acordo com o cfop
    // registrar lote não processado
    // registrar entrada não processada
    // registrar saida não processada
    // executar script
  finally
    destruir_objetos;
  end;
end;
}

{
procedure TProduto.UppercaseNUIMEI;
var
  q : TClasseQuery;
  sql : TStrings;
begin
  q   := TClasseQuery.create;
  sql := TStringList.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    q.q.Open('select cditlote,nuimei from itlote where cdempresa='+empresa.cdempresa.tostring);
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    frmprogressbar.Show;
    while not q.q.Eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      if Trim(q.q.fieldbyname(_nuimei).AsString) = '' then
      begin
        q.q.Next;
        Continue;
      end;
      sql.add('update itlote set nuimei='+quotedstr(q.q.fieldbyname(_nuimei).AsString)+' where cdempresa='+empresa.cdempresa.tostring+' and cditlote='+q.q.fieldbyname(_cditlote).AsString);
      q.q.Next;
    end;
    if sql.Count > 0 then
    begin
      ExecutaScript(sql);
    end;
  finally
    FreeAndNil(q);
    FreeAndNil(sql);
    FreeAndNil(frmprogressbar);
  end;
end;
}

procedure TProduto.GerarNomeAutomaticamente(bobeneficiado:boolean=false);
  function get_cdalternativo:string;
  var
    p : integer;
  begin
    result  := material.nmmaterial;
    p := pos(' BENEF - ', nmproduto);
    if bobeneficiado or (p > 0) then
    begin
      result := result + ' BENEF - ';
    end;
    result := result +' '+IntToStr(cdnorma)+'-'+IntToStr(cdproduto);
  end;
  function get_dsproduto:string;
  begin
    result  := material.nmmaterial+
               ' '+IntToStr(cdnorma)+
               '-'+IntToStr(cdproduto)+
               ' - ESP ' +floattostr(qtespessura)+
               ' X LARG '+floattostr(qtlargura)+
               ' X COMP '+floattostr(qtcomprimento)+
               ' = PESO '+floattostr(psliquido)+
               ' '+qregistro.nomedocodigo(_unidade, cdunidade)+
               ' - '+norma.nmnorma;
    if dstag1 <> '' then
    begin
      result := result + ' - '+dstag1;
    end;
    if dstag2 <> '' then
    begin
      result := result + ' - '+dstag2;
    end;
  end;
begin
  if tpproduto.bogerarnomeautomatico <> _s then
  begin
    exit;
  end;
  material.Select(cdmaterial);
  norma.Select(cdnorma);
  cdalternativo := get_cdalternativo;
  nmproduto     := cdalternativo;
  dsproduto     := get_dsproduto;
end;

procedure TProduto.calcularPesoChapa;
begin
  if cdmaterial = 0 then
  begin
    Exit;
  end;
  psliquido := PesoTeorico;
  psbruto   := psliquido;
end;

function TProduto.PesoTeorico: Double;
var
  calculoPeso : TCalculoPeso;
begin
  if cdmaterial = 0 then
  begin
    result := 0;
    Exit;
  end;
  calculoPeso := TCalculoPeso.Create;
  try
    calculoPeso.largura          := qtlargura;
    calculopeso.espessura        := qtespessura;
    calculoPeso.comprimento      := qtcomprimento;
    calculoPeso.qtpesoespecifico := DoubledoCodigo(_material, IntToStr(cdmaterial), _qtpesoespecifico);
    calculoPeso.numultiplicar    := DoubledoCodigo(_material, IntToStr(cdmaterial), _numultiplicar);
    calculoPeso.nmforma          := LowerCase(forma.nmforma);
    result                       := Roundto(calculoPeso.get_calculo_peso, -3);
  finally
    calculoPeso.Free;
  end;
end;

function TProduto.copiarPlaca(cdproduto1: Integer; qtespessura1,qtlargura1, qtcomprimento1: double): string;
begin
  Select(cdproduto1);
  tpproduto.Select(cdtpproduto);
  qtespessura   := qtespessura1;
  qtlargura     := qtlargura1;
  qtcomprimento := qtcomprimento1;
  cdproduto     := qgerar.GerarCodigo(_produto);
  qtestoque     := 0;
  vlcustomedio  := 0;
  GerarNomeAutomaticamente(true);
  forma.Select(cdforma);
  psliquido := PesoTeorico;
  psbruto   := psliquido;
  result := Insert(true);
end;

procedure TProduto.checkCodigoCEST;
var
  Cest : TCestList;
  i : integer;
  bopassou : boolean;
begin
  Exit;
  cest := tcestlist.create;
  try
    if TCestDAO.Read(nuclfiscal, cest) then
    begin
      if cest.Count = 1 then
      begin
        nucest := cest.Items[0].nucest;
      end
      else
      begin
        bopassou := false;
        for i := 0 to cest.count - 1 do
        begin
          if nucest = cest.Items[i].nucest then
          begin
            bopassou := true;
            break;
          end;
        end;
        if not bopassou then
        begin
          nucest := dlgSelecionarListaCest(cest, self);
          if nucest = '' then
          begin
            abort;
          end;
        end;
      end;
    end
    else
    begin
      nucest := '';
    end;
  finally
    freeandnil(cest);
  end;
end;

function TProduto.checkContaAtivo(bomensagem:boolean=false):string;
var
  msgerro : string;
  retorno : TStrings;
begin
  msgerro := ' no produto'#13+inttostr(cdproduto)+' - '+nmproduto+'.';
  grupo.Select(cdgrupo);
  retorno := TStringList.Create;
  try
    if (cdcontaativo = '') and (grupo.cdcontaativo = '') then
    begin
      retorno.Add('Obrigatório o preencimento do campo Conta Ativo'+msgerro);
      if not bomensagem then
      begin
        messagedlg(retorno[retorno.Count-1], mtinformation, [mbok], 0);
        abort;
      end;
    end;
    if (nucontaativo = 0) and (grupo.nucontaativo = 0) then
    begin
      retorno.Add('Obrigatório o preencimento do campo Nível da Conta Ativo'+msgerro);
      if not bomensagem then
      begin
        messagedlg(retorno[retorno.Count-1] , mtinformation, [mbok], 0);
        abort;
      end;
    end;
    if (nmcontaativo = '') and (grupo.nmcontaativo = '') then
    begin
      retorno.Add('Obrigatório o preencimento do campo Nome da Conta Ativo'+msgerro);
      if not bomensagem then
      begin
        messagedlg(retorno[retorno.Count-1], mtinformation, [mbok], 0);
        abort;
      end;
    end;
    if (cdnaturezaconta = '') and (grupo.cdnaturezaconta = '') then
    begin
      retorno.Add('Obrigatório o preencimento do campo Natureza da Conta'+msgerro);
      if not bomensagem then
      begin
        messagedlg(retorno[retorno.Count-1], mtinformation, [mbok], 0);
        abort;
      end;
    end;
    if (cdindicadortpconta = '') and (grupo.cdindicadortpconta = '') then
    begin
      retorno.Add('Obrigatório o preencimento do campo Indicador do Tipo de Conta'+msgerro);
      if not bomensagem then
      begin
        messagedlg(retorno[retorno.Count-1], mtinformation, [mbok], 0);
        abort;
      end;
    end;
    if cdcntcusto = 0 then
    begin
      retorno.Add('Obrigatório o preencimento do campo Centro de Custo'+msgerro);
      if not bomensagem then
      begin
        messagedlg(retorno[retorno.Count-1], mtinformation, [mbok], 0);
        abort;
      end;
    end;
    if nuvidautil = 0 then
    begin
      retorno.Add('Obrigatório o preencimento do campo Vida Util'+msgerro);
      if not bomensagem then
      begin
        messagedlg(retorno[retorno.Count-1], mtinformation, [mbok], 0);
        abort;
      end;
    end;
    if dsfuncaobem = '' then
    begin
      retorno.Add('Obrigatório o preencimento do campo Função do Bem'+msgerro);
      if not bomensagem then
      begin
        messagedlg(retorno[retorno.Count-1], mtinformation, [mbok], 0);
        abort;
      end;
    end;
    result := retorno.Text;
  finally
    freeandnil(retorno);
  end;
end;

procedure TProdutoList.AtualizarCest;
var
  i : integer;
begin
  ler('cdproduto>-1 and nucest is null and nuclfiscal is not null ', false);
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := count;
    frmprogressbar.Show;
    for i := 0 to count - 1 do
    begin
      frmprogressbar.gau.Progress := i + 1;
      frmprogressbar.pnl.Caption := 'Atualizando registros... '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
      application.ProcessMessages;
      Items[i].checkCodigoCEST;
      items[i].Update;
    end;
  finally
    freeandnil(frmprogressbar);
  end;
end;

{
function TProdutoList.CorrigirQTitem2: boolean;
var
  sql : tstrings;
  I, x: Integer;
  itprodutomaterial : titprodutomateriallist;
  qtd : double;
begin
  sql := tstringlist.create;
  itprodutomaterial := titprodutomaterialList.create;
  ler(_bodividir+'='+quotedstr(_s));
  try
    for I := 0 to count - 1 do
    begin
      itprodutomaterial.ler(items[i].cdproduto, _CDPRODUTOMATERIAL);
      for x := 0 to itprodutomaterial.count - 1 do
      begin
        qtd := itprodutomaterial.Items[x].qtitem;
        itprodutomaterial.Items[x].qtitem := itprodutomaterial.Items[x].qtitem2;
        itprodutomaterial.Items[x].qtitem2 := qtd;
        sql.add(itprodutomaterial.Items[x].update(true));
      end;
    end;
    result := ExecutaScript(sql);
  finally
    freeandnil(sql);
    freeandnil(itprodutomaterial);
  end;
end;
}

function TProdutoList.GetItem(Index: Integer): TProduto;
begin
  Result := TProduto(Inherited Items[Index]);
end;

function TProdutoList.Indice(cdproduto: integer): integer;
var
  I: Integer;
begin
  result := -1;
  for I := 0 to count - 1 do
  begin
    if cdproduto = items[i].cdproduto then
    begin
      result := i;
      break;
    end;
  end;
end;

function TProdutoList.Ler(nmcdfield: string; codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_produto, codigo, nmcdfield));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      New.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TProdutoList.getIndiceProduto(codigo: Integer): Integer;
var
  i : Integer;
begin
  result := -1;
  for i := 0 to Count - 1 do
  begin
    if Items[i].cdproduto = codigo then
    begin
      result := i;
    end;
  end;
end;

function TProdutoList.Ler(sqlwhere: string; bocompleto:boolean=true): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_produto, sqlwhere));
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    frmprogressbar.Show;
    while not q.q.Eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      frmprogressbar.pnl.Caption := 'Lendo registros... '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
      application.ProcessMessages;
      New.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
    freeandnil(frmprogressbar);
  end;
end;

function TProdutoList.New: TProduto;
begin
  Result := TProduto.Create;
  Add(Result);
end;

procedure TProdutoList.SetItem(Index: Integer; const Value: TProduto);
begin
  Put(Index, Value);
end;

function TTPProduto.get_widthunidade2:Integer;
begin
  result := 318;
  if bounidade2 = _s then
  begin
    result := 80;
  end;
end;

function TitprodutomaterialList.GetItem(Index: Integer): Titprodutomaterial;
begin
  Result := Titprodutomaterial(Inherited Items[Index]);
end;

function TitprodutomaterialList.Ler(codigo: Integer; cdfield:string=_cdproduto): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itprodutomaterial, codigo, cdfield));
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

function TitprodutomaterialList.New: Titprodutomaterial;
begin
  Result := Titprodutomaterial.Create;
  Add(Result);
end;

procedure TitprodutomaterialList.SetItem(Index: Integer; const Value: Titprodutomaterial);
begin
  Put(Index, Value);
end;

procedure TItProdutoMaterial.Setqtitem2(const Value: double);
begin
  Fqtitem2 := Value;
end;

function TitprodutorecursoList.GetItem(Index: Integer): Titprodutorecurso;
begin
  Result := Titprodutorecurso(Inherited Items[Index]);
end;

function TitprodutorecursoList.Ler(codigo: Integer): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itprodutorecurso, codigo, _cdproduto));
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

function TitprodutorecursoList.New: Titprodutorecurso;
begin
  Result := Titprodutorecurso.Create;
  Add(Result);
end;

procedure TitprodutorecursoList.SetItem(Index: Integer; const Value: Titprodutorecurso);
begin
  Put(Index, Value);
end;

function TprodutoformulacaoList.GetItem(Index: Integer): Tprodutoformulacao;
begin
  Result := Tprodutoformulacao(Inherited Items[Index]);
end;

function TprodutoformulacaoList.Ler(codigo: Integer): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_produtoformulacao, codigo, _cdproduto));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TprodutoformulacaoList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_produtoformulacao, sqlwhere));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TprodutoformulacaoList.ListaProduto: string;
var
  I: Integer;
begin
  result := '';
  for I := 0 to count -1 do
  begin
    if result <> '' then
    begin
      result := result + #13;
    end;
    result := result + Items[i].cdproduto.ToString;
  end;
end;

function TprodutoformulacaoList.New: Tprodutoformulacao;
begin
  Result := Tprodutoformulacao.Create;
  Add(Result);
end;

procedure TprodutoformulacaoList.SetItem(Index: Integer; const Value: Tprodutoformulacao);
begin
  Put(Index, Value);
end;

function TitprodutocustoList.GetItem(Index: Integer): Titprodutocusto;
begin
  Result := Titprodutocusto(Inherited Items[Index]);
end;

function TitprodutocustoList.Ler(codigo: Integer): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itprodutocusto, codigo, _cdprodutocusto));
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

function TitprodutocustoList.New: Titprodutocusto;
begin
  Result := Titprodutocusto.Create;
  Add(Result);
end;

procedure TitprodutocustoList.SetItem(Index: Integer; const Value: Titprodutocusto);
begin
  Put(Index, Value);
end;

class function TUnidade.CodigodoNome(nome: string): Integer;
var
  unidade : TUnidade;
begin
  result := qregistro.CodigodoNomeInteiro(_unidade, nome);
  if result = 0 then
  begin
    unidade := TUnidade.Create;
    try
      unidade.nmunidade := nome;
      unidade.Insert;
      result := unidade.cdunidade;
    finally
      FreeAndNil(unidade);
    end;
  end;
end;

function TUnidade.Insert(boscript: boolean): String;
begin
  if cdunidade = 0 then
  begin
    cdunidade := qgerar.GerarCodigo(_unidade);
  end;
  result := inherited insert(boscript);
end;

{ TItGradeValorList }

function TItGradeValorList.GetItem(Index: Integer): TItGradeValor;
begin
  Result := TItGradeValor(Inherited Items[Index]);
end;

function TItGradeValorList.Ler(DataSet: TDataset): boolean;
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

function TItGradeValorList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_ItGradeValor, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TItGradeValorList.New: TItGradeValor;
begin
  Result := TItGradeValor.Create;
  Add(Result);
end;

procedure TItGradeValorList.SetItem(Index: Integer; const Value: TItGradeValor);
begin
  Put(Index, Value);
end;

function TItGradeValorList.Valor(cdproduto: integer; qtitem: Double): Currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to count - 1 do
  begin
    if (items[i].cdproduto = cdproduto) and (qtitem >= items[i].nufaixainicial) and (qtitem <= Items[i].nufaixafinal) then
    begin
      result := items[i].vlgradevalor;
      break;
    end;
  end;
end;

constructor TTpGradeValor.create;
begin
  inherited;
  fitgradevalor := titgradevalorlist.create;
end;

destructor TTpGradeValor.destroy;
begin
  freeandnil(fitgradevalor);
  inherited;
end;

function TTpGradeValorList.GetItem(Index: Integer): TTpGradeValor;
begin
  Result := TTpGradeValor(Inherited Items[Index]);
end;

function TTpGradeValorList.Indice(cdtpgradevalor: integer): integer;
var
  I: Integer;
begin
  result := -1;
  for I := 0 to count - 1 do
  begin
    if cdtpgradevalor = items[i].cdtpgradevalor then
    begin
      result := i;
      break;
    end;
  end;
end;

function TTpGradeValorList.Ler(DataSet: TDataset): boolean;
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

function TTpGradeValorList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_TpGradeValor, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TTpGradeValorList.New: TTpGradeValor;
begin
  Result := TTpGradeValor.Create;
  Add(Result);
end;

procedure TTpGradeValorList.SetItem(Index: Integer; const Value: TTpGradeValor);
begin
  Put(Index, Value);
end;

function TprodutoformulacaoList.Ler(DataSet: TDataset): boolean;
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

end.
