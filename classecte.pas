unit classecte;

interface

uses
  System.Actions, System.UITypes,
  Forms, Classes, SysUtils, Dialogs, dbclient, Controls, db, Contnrs,
  ACBrCTe, ACBrCTeDACTEFR, pcnConversao, pcteConversaoCTe,
  udatahora, uRegistro, uprogressbar, ustrings, uconstantes,
  classecopiarregistro, classeexecutasql, classeempresa, classeregistrainformacao,
  classegerar, classeretornasql, classequery, classeaplicacao, classedao, classeautpagto,
  classetransportadora, classeduplicata, classecliente, classecondpagto;

type
  Tctetpmedida = class(TRegistroQuipos)
  private
    fnmctetpmedida: string;
    fcdctetpmedida: integer;
  public
    [keyfield]
    property cdctetpmedida : integer read fcdctetpmedida write fcdctetpmedida;
    property nmctetpmedida : string read fnmctetpmedida write fnmctetpmedida;
    class function InserirRegistro(nome:string):integer;
  end;
  TCTETPVLPRESTACAO = class(TRegistroQuipos)
  private
    fnmctetpvlprestacao: string;
    fbotributa: string;
    fcdctetpvlprestacao: integer;
  public
    [keyfield]
    property cdctetpvlprestacao : integer read fcdctetpvlprestacao write fcdctetpvlprestacao;
    property nmctetpvlprestacao : string read fnmctetpvlprestacao write fnmctetpvlprestacao;
    property botributa : string read fbotributa write fbotributa;
    class function InserirRegistro(nome:string):integer;
  end;
  TItCartaCorrecaoCte = class(TRegistroQuipos)
  private
    Fdsitcartacorrecaocte: string;
    Fcdcartacorrecaocteitem: integer;
    Fnuitem: integer;
    Fcdcartacorrecaoctegrupo: integer;
    Fcditcartacorrecaocte: integer;
    Fcdcartacorrecaocte: integer;
  public
    [keyfield]
    property cditcartacorrecaocte : integer read Fcditcartacorrecaocte write Fcditcartacorrecaocte;
    [fk]
    property cdcartacorrecaocte : integer read Fcdcartacorrecaocte write Fcdcartacorrecaocte;
    [fk]
    property cdcartacorrecaoctegrupo : integer read Fcdcartacorrecaoctegrupo write Fcdcartacorrecaoctegrupo;
    [fk]
    property cdcartacorrecaocteitem : integer read Fcdcartacorrecaocteitem write Fcdcartacorrecaocteitem;
    property nuitem : integer read Fnuitem write Fnuitem;
    property dsitcartacorrecaocte : string read Fdsitcartacorrecaocte write Fdsitcartacorrecaocte;
  end;
  TItCartaCorrecaoCteList = class(TObjectList)
  private
    function GetItem(Index: Integer): TItCartaCorrecaoCte;
    procedure SetItem(Index: Integer; const Value: TItCartaCorrecaoCte);
  public
    function New: TItCartaCorrecaoCte;
    property Items[Index: Integer]: TItCartaCorrecaoCte read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
  end;
  TCTEInutilizacao = class(TRegistroQuipos)
  private
    Fcdcteinutilizacao: integer;
    Fdsxml: string;
    Fcdctefinal: integer;
    Fcdcteinicial: integer;
    Fnuprotocolo: string;
    Fdsjustificativa: string;
    Fdtemissao: TDate;
  public
    [keyfield]
    property cdcteinutilizacao : integer read Fcdcteinutilizacao write Fcdcteinutilizacao;
    property cdcteinicial : integer read Fcdcteinicial write Fcdcteinicial;
    property cdctefinal : integer read Fcdctefinal write Fcdctefinal;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property dsjustificativa : string read Fdsjustificativa write Fdsjustificativa;
    property dsxml : string read Fdsxml write Fdsxml;
    property nuprotocolo : string read Fnuprotocolo write Fnuprotocolo;
  end;
  TCTEVlPrestacao = class(TRegistroQuipos)
  private
    Fprprestacao: double;
    Fcdcte: integer;
    Fcdctetpvlprestacao: integer;
    Fvlprestacao: currency;
    Fcdctevlprestacao: integer;
  public
    [keyfield]
    property cdctevlprestacao : integer read Fcdctevlprestacao write Fcdctevlprestacao;
    [fk]
    property cdcte : integer read Fcdcte write Fcdcte;
    [fk]
    property cdctetpvlprestacao : integer read Fcdctetpvlprestacao write Fcdctetpvlprestacao;
    property vlprestacao : currency read Fvlprestacao write Fvlprestacao;
    property prprestacao : double read Fprprestacao write Fprprestacao;
  end;
  TCTEVlPrestacaoList = class(TObjectList)
  private
    function GetItem(Index: Integer): TCTEVlPrestacao;
    procedure SetItem(Index: Integer; const Value: TCTEVlPrestacao);
  public
    function New: TCTEVlPrestacao;
    property Items[Index: Integer]: TCTEVlPrestacao read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
    function Excluir(boscript:boolean=false):string;
  end;
  TCTEInformacaoSeguro = class(TRegistroQuipos)
  private
    Fcdcteinformacaoseguro: integer;
    Fnuapolice: string;
    Fcdcte: integer;
    Fcdfornecedor: LargeInt;
    Fnuaverbacao: string;
    Fcdtpcteresponsavelseguro: integer;
    Fvlcarga: currency;
  public
    [keyfield]
    property cdcteinformacaoseguro : integer read Fcdcteinformacaoseguro write Fcdcteinformacaoseguro;
    [fk]
    property cdcte : integer read Fcdcte write Fcdcte;
    [fk]
    property cdtpcteresponsavelseguro : integer read Fcdtpcteresponsavelseguro write Fcdtpcteresponsavelseguro;
    [fk]
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    property nuapolice : string read Fnuapolice write Fnuapolice;
    property nuaverbacao : string read Fnuaverbacao write Fnuaverbacao;
    property vlcarga : currency read Fvlcarga write Fvlcarga;
  end;
  TCTEInformacaoSeguroList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TCTEInformacaoSeguro;
    procedure SetItem(Index: Integer; const Value: TCTEInformacaoSeguro);
  public
    function New: TCTEInformacaoSeguro;
    property Items[Index: Integer]: TCTEInformacaoSeguro read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
    function Excluir(boscript:boolean=false):string;
  end;
  TItCTEDocumentoAnterior = class(TRegistroQuipos)
  private
    Fcditctedocumentoanterior: integer;
    Fcdctedocumentoanterior: integer;
    Fnuctetpdocumentoanterior: string;
    Fnusubserie: string;
    Fnuserie: string;
    Fnudocumento: integer;
    Fnuchave: string;
    Fdtemissao: TDate;
  public
    [keyfield]
    property cditctedocumentoanterior : integer read Fcditctedocumentoanterior write Fcditctedocumentoanterior;
    [fk]
    property cdctedocumentoanterior : integer read Fcdctedocumentoanterior write Fcdctedocumentoanterior;
    property nuctetpdocumentoanterior : string read Fnuctetpdocumentoanterior write Fnuctetpdocumentoanterior;
    property nuserie : string read Fnuserie write Fnuserie;
    property nusubserie : string read Fnusubserie write Fnusubserie;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property nudocumento : integer read Fnudocumento write Fnudocumento;
    property nuchave : string read Fnuchave write Fnuchave;
  end;
  TItCTeDocumentoAnteriorList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItCTeDocumentoAnterior;
    procedure SetItem(Index: Integer; const Value: TItCTeDocumentoAnterior);
  public
    function New: TItCTeDocumentoAnterior;
    property Items[Index: Integer]: TItCTeDocumentoAnterior read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
  end;
  TCTEDocumentoAnterior = class(TRegistroQuipos)
  private
    Fcdcliente: LargeInt;
    Fcdctedocumentoanterior: integer;
    Fcdcte: integer;
    Fitctedocumentoanterior: TItCTEDocumentoAnteriorList;
  public
   [keyfield]
    property cdctedocumentoanterior : integer read Fcdctedocumentoanterior write Fcdctedocumentoanterior;
    [fk]
    property cdcte : integer read Fcdcte write Fcdcte;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write Fcdcliente;
    property itctedocumentoanterior : TItCTEDocumentoAnteriorList read Fitctedocumentoanterior write Fitctedocumentoanterior;
    constructor create;
    destructor destroy;
  end;
  TCTeDocumentoAnteriorList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TCTeDocumentoAnterior;
    procedure SetItem(Index: Integer; const Value: TCTeDocumentoAnterior);
  public
    function New: TCTeDocumentoAnterior;
    property Items[Index: Integer]: TCTeDocumentoAnterior read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
    function Ler(Dataset, itdataset: TDataset):boolean;overload;
  end;
  TCartaCorrecaoCTE = class(TRegistroQuipos)
  private
    Fdsxml: string;
    Fcdcte: integer;
    Ftsemissao: TDateTime;
    Fnuprotocolo: string;
    Fcdcartacorrecaocte: integer;
    Fnseqevento: integer;
  public
    [keyfield]
    property cdcartacorrecaocte : integer read Fcdcartacorrecaocte write Fcdcartacorrecaocte;
    [fk]
    property cdcte : integer read Fcdcte write Fcdcte;
    property dsxml : string read Fdsxml write Fdsxml;
    property tsemissao : TDateTime read Ftsemissao write Ftsemissao;
    property nuprotocolo : string read Fnuprotocolo write Fnuprotocolo;
    property nseqevento : integer read Fnseqevento write Fnseqevento;
  end;
  TCartaCorrecaoCTEList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TCartaCorrecaoCTE;
    procedure SetItem(Index: Integer; const Value: TCartaCorrecaoCTE);
  public
    function New: TCartaCorrecaoCTE;
    property Items[Index: Integer]: TCartaCorrecaoCTE read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
  end;
  TCTETransportadora = class(TRegistroQuipos)
  private
    Fvlacrescimo: currency;
    Fvldesconto: currency;
    Fnuseguradora: string;
    Fcdveiculocarreta: integer;
    Fvladiantamento: currency;
    Fvlservico: currency;
    Fdsobservacao: string;
    Fcdcte: integer;
    Fcdautpagto: integer;
    Fvlsestsenat: currency;
    Fcdproprietario: LargeInt;
    Fcdveiculo: integer;
    Fvlpedagio: currency;
    Fvlinss: currency;
    Fvlsaldo: currency;
    Fvlirrf: currency;
    Fvlfrete: currency;
    Fcdveiculocarreta2: integer;
    Fcdtransportadora: largeint;
    Fvlfretepeso: currency;
    Fveiculocarreta2: tveiculo;
    Fveiculocarreta: tveiculo;
    Fveiculo: tveiculo;
  public
    [keyfield]
    property cdcte : integer read Fcdcte write Fcdcte;
    [keyfield]
    property cdtransportadora : largeint read Fcdtransportadora write Fcdtransportadora;
    [fk]
    property cdveiculo : integer read Fcdveiculo write Fcdveiculo;
    [fk]
    property cdveiculocarreta : integer read Fcdveiculocarreta write Fcdveiculocarreta;
    [fk]
    property cdautpagto : integer read Fcdautpagto write Fcdautpagto;
    [fk]
    property cdveiculocarreta2 : integer read Fcdveiculocarreta2 write Fcdveiculocarreta2;
    [fk]
    property cdproprietario : LargeInt read Fcdproprietario write Fcdproprietario;
    property vlservico : currency read Fvlservico write Fvlservico;
    property vlfrete : currency read Fvlfrete write Fvlfrete;
    property vlpedagio : currency read Fvlpedagio write Fvlpedagio;
    property vladiantamento : currency read Fvladiantamento write Fvladiantamento;
    property vlinss : currency read Fvlinss write Fvlinss;
    property vlsestsenat : currency read Fvlsestsenat write Fvlsestsenat;
    property vldesconto : currency read Fvldesconto write Fvldesconto;
    property vlsaldo : currency read Fvlsaldo write Fvlsaldo;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property vlacrescimo : currency read Fvlacrescimo write Fvlacrescimo;
    property vlirrf : currency read Fvlirrf write Fvlirrf;
    property nuseguradora : string read Fnuseguradora write Fnuseguradora;
    property vlfretepeso : currency read Fvlfretepeso write Fvlfretepeso;
    property veiculo : tveiculo read Fveiculo write Fveiculo;
    property veiculocarreta : tveiculo read Fveiculocarreta write Fveiculocarreta;
    property veiculocarreta2 : tveiculo read Fveiculocarreta2 write Fveiculocarreta2;
    function GetVlAutpagto:currency;
    function GearAutpagto(cdfornecedor:largeint):boolean;
    function GetQtEixos:integer;
    constructor create;
    destructor destroy;
  end;
  TCTETransportadoraList = class(TObjectList)
  private
    function GetItem(Index: Integer): TCTETransportadora;
    procedure SetItem(Index: Integer; const Value: TCTETransportadora);
  public
    function New: TCTETransportadora;
    property Items[Index: Integer]: TCTETransportadora read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
    function ExcluirAutpagto(boscript:boolean=false):string;
    function Excluir(boscript:boolean=false):string;
    function CheckBaixaAutpagto:boolean;
  end;
  TCTERemetenteNota = class(TRegistroQuipos)
  private
    Fvlproduto: currency;
    Fdsxml: string;
    Fvlicmssubtrib: currency;
    Fpsliquido: double;
    Fnuromaneio: String;
    Fcdcfop: integer;
    Fvlicms: currency;
    Fnupedido: String;
    Fcdcte: integer;
    Fcdcteremetentenota: integer;
    Fdtprevisao: TDate;
    Fvltotal: currency;
    Fpsbruto: double;
    Fnuserie: String;
    Fnunota: String;
    Fnuctetpdocoutros: string;
    Fdsoutros: string;
    Fnuchavenfe: string;
    Fvlbaseicmssubtrib: currency;
    Fvlfrete: currency;
    Fnudocfiscalicms: string;
    Fdtemissao: TDate;
    Fnupin: integer;
    Fvlbaseicms: currency;
  public
    [keyfield]
    property cdcteremetentenota : integer read Fcdcteremetentenota write Fcdcteremetentenota;
    [fk]
    property cdcte : integer read Fcdcte write Fcdcte;
    [fk]
    property cdcfop : integer read Fcdcfop write Fcdcfop;
    property nuctetpdocoutros : string read Fnuctetpdocoutros write Fnuctetpdocoutros;
    property nuserie : String read Fnuserie write Fnuserie;
    property nunota : String read Fnunota write Fnunota;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property nuromaneio : String read Fnuromaneio write Fnuromaneio;
    property nupedido : String read Fnupedido write Fnupedido;
    property vlbaseicms : currency read Fvlbaseicms write Fvlbaseicms;
    property vlicms : currency read Fvlicms write Fvlicms;
    property vlbaseicmssubtrib : currency read Fvlbaseicmssubtrib write Fvlbaseicmssubtrib;
    property vlicmssubtrib : currency read Fvlicmssubtrib write Fvlicmssubtrib;
    property nupin : integer read Fnupin write Fnupin;
    property vlproduto : currency read Fvlproduto write Fvlproduto;
    property vltotal : currency read Fvltotal write Fvltotal;
    property nuchavenfe : string read Fnuchavenfe write Fnuchavenfe;
    property psliquido : double read Fpsliquido write Fpsliquido;
    property psbruto : double read Fpsbruto write Fpsbruto;
    property nudocfiscalicms : string read Fnudocfiscalicms write Fnudocfiscalicms;
    property dsoutros : string read Fdsoutros write Fdsoutros;
    property dtprevisao : TDate read Fdtprevisao write Fdtprevisao;
    property vlfrete : currency read Fvlfrete write Fvlfrete;
    property dsxml : string read Fdsxml write Fdsxml;
    class function ObterCTEdeNFERepetido(nuchave:string; codigo:integer):string;
  end;
  TCTERemetenteNotaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TCTERemetenteNota;
    procedure SetItem(Index: Integer; const Value: TCTERemetenteNota);
  public
    function New: TCTERemetenteNota;
    property Items[Index: Integer]: TCTERemetenteNota read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
    function Excluir(boscript:boolean=false):string;
  end;
  TCTEQTDCarga = class(TRegistroQuipos)
  private
    Fcdcte: integer;
    Fqtitem: double;
    Fcdunidade: integer;
    Fcdcteqtdcarga: integer;
    Fcdctetpmedida: integer;
  public
    [keyfield]
    property cdcteqtdcarga : integer read Fcdcteqtdcarga write Fcdcteqtdcarga;
    [fk]
    property cdcte : integer read Fcdcte write Fcdcte;
    [fk]
    property cdunidade : integer read Fcdunidade write Fcdunidade;
    [fk]
    property cdctetpmedida : integer read Fcdctetpmedida write Fcdctetpmedida;
    property qtitem : double read Fqtitem write Fqtitem;
  end;
  TCTEQTDCargaList = class(TObjectList)
  private
    function GetItem(Index: Integer): TCTEQTDCarga;
    procedure SetItem(Index: Integer; const Value: TCTEQTDCarga);
  public
    function New: TCTEQTDCarga;
    property Items[Index: Integer]: TCTEQTDCarga read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
    function excluir(boscript:boolean=false):string;
  end;
  TCte = class(TRegistroQuipos)
  private
    Fcteremetentenota: TCteremetentenotaList;
    Fctetransportadora: TCteTransportadoraList;
    Fcteqtdcarga: tcteqtdcargaList;
    Fcartacorrecaocte: tcartacorrecaocteList;
    FCTEDocumentoAnterior: TCTEDocumentoAnteriorList;
    FCTEInformacaoSeguro: TCTEInformacaoSeguroList;
    FCTEVlPrestacao: TCTEVlPrestacaoList;
    Fpradvalorem: double;
    Fnuchavecteanulacao: string;
    Fnukmdia: double;
    Fdtemissaocteanulacao: TDate;
    Fdsxml: string;
    Fcdctetpinformacaoremetente: integer;
    Fcdcondpagto: integer;
    Fcdctetpremetenteinformacao: integer;
    Falpis: double;
    Fcdserie: integer;
    Fcdcteformaimpressao: integer;
    Falcofins: double;
    Fdsobservacaofiscal: string;
    Fhrprevisaof: TTime;
    Fnuchavenfereferenciado: string;
    Fcdctetpservico: integer;
    Fnustdocumento: string;
    Fcdcfop: integer;
    Fcdctetpprevisaoentrega: integer;
    Fdshistorico: string;
    Fvlservico: currency;
    Fcdtpfrete: String;
    Fdscontingencia: string;
    Fvlreceber: currency;
    Fcdremetente: LargeInt;
    Fnudocumentotransporte: string;
    Fdsobservacao: string;
    Fvlicms: currency;
    Fcdcte: integer;
    Falredicms: double;
    Fcdplconta: integer;
    Fcdctetpprevisaoentregah: integer;
    Fvlbasepis: currency;
    Fnuprotocolo: string;
    Fvlbasecofins: currency;
    Fcditcontcliente: integer;
    Fnuciot: string;
    Fhremissao: TTime;
    Fdtprevisaoi: TDate;
    Fcdrecebedor: LargeInt;
    Fnukmviagem: double;
    Fcdtomador: LargeInt;
    Fcdctemodal: integer;
    Fnucontrato: string;
    Fcdveiculo: integer;
    Fcdctefinalidadeemissao: String;
    Fcdcteformapagamento: integer;
    Fcduftermino: integer;
    Fvlpedagio: currency;
    Fvladvalorem: currency;
    Fdsxmlcancel: string;
    Fvlmercadoria: currency;
    Fcdexpedidor: LargeInt;
    Fcdcteformaemissao: integer;
    Fcdufemissao: integer;
    Fvlpis: currency;
    Fcddestinatariodiferente: LargeInt;
    Fcdufinicio: integer;
    Fvlcofins: currency;
    Fnucte: integer;
    Fdtprevisaoentrega: TDate;
    Fcdtpcobranca: integer;
    Fnuplconta: string;
    Fcdproduto: integer;
    FdtprevisaoF: TDate;
    Ftptomadoricms: string;
    Ftscontingencia: TDateTime;
    Fnurntrc: string;
    Falicms: double;
    Fcdctetptomador: integer;
    Fcddestinatario: LargeInt;
    Fcdmunicipiotermino: integer;
    Fnuchavenfe: string;
    Fvloutro: currency;
    Fvlfrete: currency;
    Fnudiasentrega: integer;
    FhrprevisaoI: TTime;
    Fcdmunicipioemissao: integer;
    Fdsjustificativa: string;
    Fcdmunicipioinicio: integer;
    Fdsoutrascaracteristicas: string;
    Fboremetente: String;
    Fcdstcte: integer;
    Fnseqevento: integer;
    Fdtemissao: TDate;
    Fvlcreditooutogardo: currency;
    Fnusticms: string;
    Fcdtpcte: integer;
    Fboindicadorlotacao: String;
    Fvlbaseicms: currency;
    Fboimpressaorpa: String;
    Fduplicata: TDuplicataList;
    Fdestinatario: TCliente;
    Fremetente: TCliente;
    Frecebedor: TCliente;
    Ftomador: TCliente;
    Fexpedidor: TCliente;
    fvlseguro: Currency;
    fvlicmsservico: Currency;
    fnuchavecontingencia: string;
    fcondpagto: tcondpagto;
  public
    property condpagto: tcondpagto read fcondpagto write fcondpagto;
    [keyfield]
    property cdcte : integer read Fcdcte write Fcdcte;
    [fk]
    property cdmunicipioemissao : integer read Fcdmunicipioemissao write Fcdmunicipioemissao;
    [fk]
    property cdmunicipiotermino : integer read Fcdmunicipiotermino write Fcdmunicipiotermino;
    [fk]
    property cdmunicipioinicio : integer read Fcdmunicipioinicio write Fcdmunicipioinicio;
    [fk]
    property cduftermino : integer read Fcduftermino write Fcduftermino;
    [fk]
    property cdufinicio : integer read Fcdufinicio write Fcdufinicio;
    [fk]
    property cdufemissao : integer read Fcdufemissao write Fcdufemissao;
    [fk]
    property cdcteformaimpressao : integer read Fcdcteformaimpressao write Fcdcteformaimpressao;
    [fk]
    property cdcteformaemissao : integer read Fcdcteformaemissao write Fcdcteformaemissao;
    [fk]
    property cdcteformapagamento : integer read Fcdcteformapagamento write Fcdcteformapagamento;
    [fk]
    property cdctefinalidadeemissao : String read Fcdctefinalidadeemissao write Fcdctefinalidadeemissao;
    [fk]
    property cdctetpservico : integer read Fcdctetpservico write Fcdctetpservico;
    [fk]
    property cdctemodal : integer read Fcdctemodal write Fcdctemodal;
    [fk]
    property cdctetptomador : integer read Fcdctetptomador write Fcdctetptomador;
    [fk]
    property cdctetpprevisaoentrega : integer read Fcdctetpprevisaoentrega write Fcdctetpprevisaoentrega;
    [fk]
    property cdctetpprevisaoentregah : integer read Fcdctetpprevisaoentregah write Fcdctetpprevisaoentregah;
    [fk]
    property cdctetpremetenteinformacao : integer read Fcdctetpremetenteinformacao write Fcdctetpremetenteinformacao;
    [fk]
    property cdremetente : LargeInt read Fcdremetente write Fcdremetente;
    [fk]
    property cdtomador : LargeInt read Fcdtomador write Fcdtomador;
    [fk]
    property cdexpedidor : LargeInt read Fcdexpedidor write Fcdexpedidor;
    [fk]
    property cdrecebedor : LargeInt read Fcdrecebedor write Fcdrecebedor;
    [fk]
    property cddestinatario : LargeInt read Fcddestinatario write Fcddestinatario;
    [fk]
    property cdproduto : integer read Fcdproduto write Fcdproduto;
    [fk]
    property cddestinatariodiferente : LargeInt read Fcddestinatariodiferente write Fcddestinatariodiferente;
    [fk]
    property cdveiculo : integer read Fcdveiculo write Fcdveiculo;
    [fk]
    property cdtpcte : integer read Fcdtpcte write Fcdtpcte;
    [fk]
    property cdstcte : integer read Fcdstcte write Fcdstcte;
    [fk]
    property cdcfop : integer read Fcdcfop write Fcdcfop;
    [fk]
    property cdserie : integer read Fcdserie write Fcdserie;
    [fk]
    property cdcondpagto : integer read Fcdcondpagto write Fcdcondpagto;
    [fk]
    property cdctetpinformacaoremetente : integer read Fcdctetpinformacaoremetente write Fcdctetpinformacaoremetente;
    [fk]
    property cdtpcobranca : integer read Fcdtpcobranca write Fcdtpcobranca;
    [fk]
    property nustdocumento : string read Fnustdocumento write Fnustdocumento;
    [fk]
    property cdplconta : integer read Fcdplconta write Fcdplconta;
    [fk]
    property nusticms : string read Fnusticms write Fnusticms;
    [fk]
    property cditcontcliente : integer read Fcditcontcliente write Fcditcontcliente;
    [fk]
    property cdtpfrete : String read Fcdtpfrete write Fcdtpfrete;
    property nuchavenfereferenciado : string read Fnuchavenfereferenciado write Fnuchavenfereferenciado;
    property boremetente : String read Fboremetente write Fboremetente;
    property dtprevisaoi : TDate read Fdtprevisaoi write Fdtprevisaoi;
    property dtprevisaoF : TDate read FdtprevisaoF write FdtprevisaoF;
    property hrprevisaoI : TTime read FhrprevisaoI write FhrprevisaoI;
    property hrprevisaof : TTime read Fhrprevisaof write Fhrprevisaof;
    property vlservico : currency read Fvlservico write Fvlservico;
    property vlreceber : currency read Fvlreceber write Fvlreceber;
    property vlbaseicms : currency read Fvlbaseicms write Fvlbaseicms;
    property vlicms : currency read Fvlicms write Fvlicms;
    property alicms : double read Falicms write Falicms;
    property alredicms : double read Falredicms write Falredicms;
    property vlcreditooutogardo : currency read Fvlcreditooutogardo write Fvlcreditooutogardo;
    property vlmercadoria : currency read Fvlmercadoria write Fvlmercadoria;
    property boindicadorlotacao : String read Fboindicadorlotacao write Fboindicadorlotacao;
    property dtprevisaoentrega : TDate read Fdtprevisaoentrega write Fdtprevisaoentrega;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property hremissao : TTime read Fhremissao write Fhremissao;
    property nucte : integer read Fnucte write Fnucte;
    property dsobservacaofiscal : string read Fdsobservacaofiscal write Fdsobservacaofiscal;
    property nurntrc : string read Fnurntrc write Fnurntrc;
    property dsxml : string read Fdsxml write Fdsxml;
    property nuchavenfe : string read Fnuchavenfe write Fnuchavenfe;
    property dsoutrascaracteristicas : string read Fdsoutrascaracteristicas write Fdsoutrascaracteristicas;
    property dshistorico : string read Fdshistorico write Fdshistorico;
    property vlpis : currency read Fvlpis write Fvlpis;
    property vlcofins : currency read Fvlcofins write Fvlcofins;
    property vlbasecofins : currency read Fvlbasecofins write Fvlbasecofins;
    property vlbasepis : currency read Fvlbasepis write Fvlbasepis;
    property alpis : double read Falpis write Falpis;
    property alcofins : double read Falcofins write Falcofins;
    property tscontingencia : TDateTime read Ftscontingencia write Ftscontingencia;
    property dscontingencia : string read Fdscontingencia write Fdscontingencia;
    property nukmviagem : double read Fnukmviagem write Fnukmviagem;
    property nukmdia : double read Fnukmdia write Fnukmdia;
    property nudiasentrega : integer read Fnudiasentrega write Fnudiasentrega;
    property dsxmlcancel : string read Fdsxmlcancel write Fdsxmlcancel;
    property dsjustificativa : string read Fdsjustificativa write Fdsjustificativa;
    property nseqevento : integer read Fnseqevento write Fnseqevento;
    property nuplconta : string read Fnuplconta write Fnuplconta;
    property nuprotocolo : string read Fnuprotocolo write Fnuprotocolo;
    property nuciot : string read Fnuciot write Fnuciot;
    property nucontrato : string read Fnucontrato write Fnucontrato;
    property nudocumentotransporte : string read Fnudocumentotransporte write Fnudocumentotransporte;
    property nuchavecteanulacao : string read Fnuchavecteanulacao write Fnuchavecteanulacao;
    property dtemissaocteanulacao : TDate read Fdtemissaocteanulacao write Fdtemissaocteanulacao;
    property vlfrete : currency read Fvlfrete write Fvlfrete;
    property vladvalorem : currency read Fvladvalorem write Fvladvalorem;
    property vlicmsservico : Currency read fvlicmsservico write fvlicmsservico;
    property vlseguro : Currency read fvlseguro write fvlseguro;
    property vloutro : currency read Fvloutro write Fvloutro;
    property vlpedagio : currency read Fvlpedagio write Fvlpedagio;
    property pradvalorem : double read Fpradvalorem write Fpradvalorem;
    property boimpressaorpa : String read Fboimpressaorpa write Fboimpressaorpa;
    property tptomadoricms : string read Ftptomadoricms write Ftptomadoricms;
    property CTEVlPrestacao : TCTEVlPrestacaoList read FCTEVlPrestacao write FCTEVlPrestacao;
    property CTEInformacaoSeguro : TCTEInformacaoSeguroList read FCTEInformacaoSeguro write FCTEInformacaoSeguro;
    property CTEDocumentoAnterior : TCTEDocumentoAnteriorList read FCTEDocumentoAnterior write FCTEDocumentoAnterior;
    property cartacorrecaocte : tcartacorrecaocteList read Fcartacorrecaocte write Fcartacorrecaocte;
    property cteqtdcarga : tcteqtdcargaList read Fcteqtdcarga write Fcteqtdcarga;
    property cteremetentenota : TCteremetentenotaList read Fcteremetentenota write Fcteremetentenota;
    property ctetransportadora : TCteTransportadoraList read Fctetransportadora write Fctetransportadora;
    property duplicata : TDuplicataList read Fduplicata write Fduplicata;
    property remetente  : TCliente read Fremetente write Fremetente;
    property destinatario : TCliente read Fdestinatario write Fdestinatario;
    property expedidor : TCliente read Fexpedidor write Fexpedidor;
    property recebedor : TCliente read Frecebedor write Frecebedor;
    property tomador : TCliente read Ftomador write Ftomador;
    property nuchavecontingencia : string read fnuchavecontingencia write fnuchavecontingencia;
    constructor create;
    destructor destroy; override;
    procedure numeroINSSpreenchidoProprietarioSeguradora;
    function Copiar:integer;
    function exportarpdf(path:string; dti, dtf:TDate; pessoa:string; codigo:string=''):Boolean;overload;
    function Exportarxml(path: string; lista: TStrings): Boolean;
    function gerarAutpagto:boolean;
    function GerarPDF(path: string; lista: TStrings): Boolean;
    function getQtdcarga:double;
    function gettpcarroceria(cdtpcarroceria:string):TpcteTipoCarroceria;
    function getCTErespseg(nmcodigo:string):TpcteRspSeg;
    function getUnidmed(nmcodigo:string):TUnidMed;
    function Imprimir(bomostrarpreview:Boolean=true): Boolean;
    function Cancelar:boolean;
    procedure VerificarSePodeCancelar;
    function GerarMDFE:integer;
    function get_cdcliente:LargeInt;
    procedure GerarDuplicata;
  end;
  TCTEList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TCte;
    procedure SetItem(Index: Integer; const Value: TCte);
  public
    function New: TCte;
    property Items[Index: Integer]: TCte read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;
  end;

implementation

uses uctereport, classemdfe;

constructor TCte.create;
begin
  inherited;
  fremetente  := TCliente.create;
  fcondpagto := TCondpagto.create;
  fdestinatario := TCliente.create;
  fexpedidor := TCliente.create;
  frecebedor := TCliente.create;
  ftomador := TCliente.create;
  fduplicata := tduplicatalist.create;
  fCTEVlPrestacao := TCTEVlPrestacaoList.Create;
  fCTEDocumentoAnterior := TCTEDocumentoAnteriorList.Create;
  fCTEInformacaoSeguro := TCTEInformacaoSeguroList.Create;
  fcteqtdcarga := tcteqtdcargalist.Create;
  fcartacorrecaocte := tcartacorrecaoCTElist.create;
  fcteremetentenota := tcteremetentenotalist.Create;
  fctetransportadora := tctetransportadoralist.Create;
end;

function TCte.exportarpdf(path:string; dti, dtf: TDate; pessoa, codigo: string): Boolean;
  function makesql:string;
  begin
    Result := 'select dsxml,cdstcte '+
              'from cte '+
              'where cdempresa='+empresa.cdempresa.tostring+' and dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf);
    if (pessoa = _cliente) and (codigo <> '') then
    begin
      result := result + ' and (('+_cdremetente   +'='+codigo+' and cdctetptomador=1) or '+
                               '('+_cddestinatario+'='+codigo+' and cdctetptomador=4) or '+
                               '('+_cdtomador     +'='+codigo+' and cdctetptomador=5) or '+
                               '('+_cdrecebedor   +'='+codigo+' and cdctetptomador=3) or '+
                               '('+_cdexpedidor   +'='+codigo+' and cdctetptomador=2))';
    end;
    result := Result +' order by cdcte';
  end;
var
  q : TClasseQuery;
  ACBrCTe : TACBrCTe;
begin
  frmprogressbar := Tfrmprogressbar.Create(nil);
  q := tclassequery.create;
  ACBrCTe := TACBrCTe.Create(nil);
  try
    q.q.open(makesql);
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    frmprogressbar.Show;
    while not q.q.eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      frmprogressbar.pnl.Caption :='Exportando registro '+inttostr(q.q.RecNo)+' de '+inttostr(q.q.RecordCount);
      application.ProcessMessages;
      CTEGerarPDF(ACBrCTe, q.q.FieldByName(_dsxml).AsString, q.q.FieldByName(_cdstcte).asinteger=2, path);
      q.q.next;
    end;
    result := True;
  finally
    FreeAndNil(ACBrCTe);
    FreeAndNil(q);
    FreeAndNil(frmprogressbar);
  end;
end;

function TCte.gettpcarroceria(cdtpcarroceria: string): TpcteTipoCarroceria;
begin
  if cdtpcarroceria = _00 then
  begin
    result := tcNaoAplicavel
  end
  else if cdtpcarroceria = _01 then
  begin
    result := tcAberta
  end
  else if cdtpcarroceria = _02 then
  begin
    result := tcFechada
  end
  else if cdtpcarroceria = _03 then
  begin
    result := tcGraneleira
  end
  else if cdtpcarroceria = _04 then
  begin
    result := tcPortaContainer
  end
  else if cdtpcarroceria = _05 then
  begin
    result := tcSider
  end
  else
  begin
    messagedlg('Tipo de Carroceria não está definido no cadastro do veículo.', mtInformation, [mbok], 0);
    abort;
  end;
end;

function TCte.getCTErespseg(nmcodigo:string):TpcteRspSeg;
begin
  if nmcodigo = _0 then
  begin
    result := rsRemetente
  end
  else if nmcodigo = _1 then
  begin
    result := rsExpedidor
  end
  else if nmcodigo = _2 then
  begin
    result := rsRecebedor
  end
  else if nmcodigo = _3 then
  begin
    result := rsDestinatario
  end
  else if nmcodigo = _4 then
  begin
    result := rsEmitenteCTe
  end
  else if nmcodigo = _5 then
  begin
    result := rsTomadorServico;
  end;
end;

function TCte.getQtdcarga: double;
var
  i : integer;
begin
  result := 0;
  for i := 0 to cteqtdcarga.Count - 1 do
  begin
    if empresa.faturamento.cte.nmunidade = qregistro.NomedoCodigo(_unidade, cteQtdCarga.Items[i].cdunidade) then
    begin
      result := result + cteQtdCarga.Items[i].qtitem;
    end;
  end;
end;

function TCte.getUnidmed(nmcodigo:string):TUnidMed;
begin
  if nmcodigo = 'M3' then
  begin
    result := uM3
  end
  else if nmcodigo = 'KG' then
  begin
    result := uKG
  end
  else if nmcodigo = 'TN' then
  begin
    result := uTON
  end
  else if nmcodigo = 'UN' then
  begin
    result := uUNIDADE
  end
  else if nmcodigo = 'LT' then
  begin
    result := uLITROS
  end
  else
  begin
    MessageDlg('Código de Unidade '+nmcodigo+' não identificado.', mtInformation, [mbok], 0);
    Abort;
  end;
end;

function TCte.get_cdcliente: LargeInt;
begin
  case CDCTETPTOMADOR of
    1: result := CDREMETENTE;
    2: result := CDEXPEDIDOR;
    3: result := CDRECEBEDOR;
    4: result := CDDESTINATARIO;
    5: result := CDTOMADOR;
  end;
end;

destructor TCte.destroy;
begin
  freeandnil(fremetente);
  FreeAndNil(fcondpagto);
  freeandnil(fdestinatario);
  freeandnil(fexpedidor);
  freeandnil(frecebedor);
  freeandnil(ftomador);
  freeandnil(fduplicata);
  freeandnil(fctevlprestacao);
  freeandnil(fctedocumentoanterior);
  freeandnil(fCteInformacaoSeguro);
  freeandnil(fcartacorrecaocte);
  freeandnil(fcteqtdcarga);
  freeandnil(fcteremetentenota);
  freeandnil(fctetransportadora);
  inherited;
end;

function TCte.gerarAutpagto: boolean;
var
  transportadora : TTransportadora;
begin
  if ctetransportadora.Items[0].vlfrete = 0 then
  begin
    result := false;
    Exit;
  end;
  transportadora := ttransportadora.Create;
  try
    transportadora.Select(ctetransportadora.Items[0].cdproprietario);
    result := ctetransportadora.Items[0].GearAutpagto(transportadora.codigo_transportadora_como_fornecedor.ToInt64());
  finally
    freeandnil(transportadora);
  end;
end;

function TCte.Exportarxml(path: string; lista: TStrings): Boolean;
var
  y, qtd1500, inicio, final : integer;
  function get_cdcte(inicio, final:integer):string;
  var
    i : Integer;
  begin
    result := '';
    for i := inicio to final do
    begin
      if result <> '' then
      begin
        result := result + ',';
      end;
      Result := result + lista[i];
    end;
  end;
  procedure processar_dados(inicio, final:Integer);
  var
    q : TClasseQuery;
    arquivo : tstrings;
  begin
    q := TClasseQuery.Create('select nuchavenfe,dsxml,cdcte,dtemissao '+
                             'from cte '+
                             'where dsxml is not null and nustdocumento=''00'' '+
                             'and cdempresa='+empresa.cdempresa.tostring+' and cdcte in ('+get_cdcte(inicio, final)+')');
    arquivo := tstringlist.create;
    frmprogressbar := tfrmprogressbar.Create(nil);
    try
      frmprogressbar.pnl.Caption  := 'Lendo registros. Aguarde...';
      frmprogressbar.Show;
      Application.ProcessMessages;
      frmprogressbar.gau.MaxValue := q.q.RecordCount;
      while not q.q.eof do
      begin
        frmprogressbar.pnl.Caption  := 'Processando...';
        frmprogressbar.gau.Progress := q.q.RecNo;
        Application.ProcessMessages;
        arquivo.Text := q.q.fieldbyname(_dsxml).asstring;
        if q.q.fieldbyname(_nuchavenfe).AsString <> '' then
        begin
          arquivo.SaveToFile(path+'\'+q.q.fieldbyname(_nuchavenfe).AsString+'.'+_xml);
        end
        else
        begin
          arquivo.SaveToFile(path+'\NF '+q.q.fieldbyname(_cdcte).AsString+' - Emissao '+FormatDateTime('DD-MM-YYYY', q.q.fieldbyname(_dtemissao).AsDateTime)+'.'+_xml);
        end;
        q.q.next;
        result := true;
      end;
    finally
      freeandnil(q);
      freeandnil(arquivo);
      FreeAndNil(frmprogressbar);
    end;
  end;
begin
  result  := false;
  qtd1500 := lista.Count div 1500;
  if qtd1500 * 1500 < lista.Count then
  begin
    qtd1500 := qtd1500 + 1;
  end;
  for y := 1 to qtd1500 do
  begin
    inicio := 1 + ((y-1) * 1500);
    final  := 1500 * y;
    if final > lista.Count then
    begin
      final := lista.Count;
    end;
    processar_dados(inicio -1, final - 1);
  end;
end;

function TCte.Imprimir(bomostrarpreview:Boolean=true): Boolean;
var
  ACBrCTe1 : TACBrCTe;
begin
  if dsxml = '' then
  begin
    exit;
  end;
  ACBrCTe1 := TACBrCTe.Create(nil);
  try
    CTEImprimir(ACBrCTe1, dsxml, cdstcte = 2, bomostrarpreview);
    result := True;
  finally
    freeandnil(ACBrCTe1);
  end;
end;

procedure TCte.GerarDuplicata;
var
  I: Integer;
begin
  condpagto.GerarParcela(dtemissao, vlreceber);
  duplicata.Clear;
  for I := 0 to condpagto.parcela.Count - 1 do
  begin
    duplicata.New;
    duplicata.Items[i].cdcte         := cdcte;
    duplicata.Items[i].cdduplicata   := QGerar.GerarCodigo(_duplicata);
    duplicata.Items[i].cdtpcobranca  := cdtpcobranca;
    duplicata.Items[i].cdcliente     := get_cdcliente;
    duplicata.Items[i].dtemissao     := dtemissao;
    duplicata.Items[i].dtentrada     := dtemissao;
    duplicata.Items[i].dtvencimento  := condpagto.parcela.Items[i].dtvencimento;
    duplicata.Items[i].dtprorrogacao := condpagto.parcela.Items[i].dtvencimento;
    duplicata.Items[i].vlduplicata   := condpagto.parcela.Items[i].valor;
    duplicata.Items[i].vlsaldo       := condpagto.parcela.Items[i].valor;
    duplicata.Items[i].dsparcela     := inttostr(i+1)+'/'+condpagto.itcondpagto.Count.ToString;
    duplicata.Items[i].nuduplicata   := cdcte.ToString;
    if condpagto.itcondpagto.Count > 1 then
    begin
      duplicata.Items[i].nuduplicata := duplicata.Items[i].nuduplicata+'/'+char(i+65)
    end;
  end;
end;

function TCte.GerarMDFE: integer;
var
  mdfe : TMDFE;
  I: Integer;
  sql : TStrings;
begin
  result := 0;
  if registroexiste(_mdfecte, _cdcte+'='+inttostr(cdcte)) then
  begin
    result := -1;
    exit;
  end;
  mdfe := tmdfe.create;
  sql := TStringList.Create;
  try
    mdfe.cdmdfe    := qgerar.GerarCodigo(_mdfe);
    mdfe.dtemissao := dtbanco;
    mdfe.hremissao := hrbanco;
    mdfe.cdtpmdfe  := 1;

    mdfe.tpmdfe.Select(mdfe.cdtpmdfe);
    //mdfe.serie.select(mdfe.tpmdfe.cdserie);
    mdfe.cdserie   := mdfe.tpmdfe.cdserie;
    //mdfe.serie.nusequencia := mdfe.serie.nusequencia + 1;
    //sql.add(mdfe.Serie.Update(true));
    //mdfe.numdfe := mdfe.serie.nusequencia;

    mdfe.numdfe := qgerar.GerarCodigo(_serie, IntToStr(mdfe.tpmdfe.cdserie), 0, _mdfe);

    mdfe.cduf   := empresa.endereco.cduf;
    mdfe.cdmdfetpemitente := 1;
    mdfe.cdmdfemodalidade := 1;
    mdfe.cdmdfeformaemissao := 1;
    mdfe.cdstmdfe   := 1;
    mdfe.cdveiculo  := ctetransportadora.Items[0].cdveiculo;
    if ctetransportadora.Items[0].cdveiculocarreta > 0 then
    begin
      with mdfe.mdfeveiculo.New do
      begin
        cdmdfe    := mdfe.cdmdfe;
        cdveiculo := ctetransportadora.Items[0].cdveiculocarreta;
      end;
    end;
    if ctetransportadora.Items[0].cdveiculocarreta2 > 0 then
    begin
      with mdfe.mdfeveiculo.New do
      begin
        cdmdfe    := mdfe.cdmdfe;
        cdveiculo := ctetransportadora.Items[0].cdveiculocarreta2;
      end;
    end;
    mdfe.cdufinicio := cdufinicio;
    mdfe.cduffim    := cduftermino;
    mdfe.qtcte      := 1;
    mdfe.qtnfe := 0;
    mdfe.vlcarga := vlmercadoria;
    if cteqtdcarga.Count > 0 then
    begin
      if qregistro.NomedoCodigo(_unidade, cteqtdcarga.Items[0].cdunidade) = 'TN' then
      begin
        mdfe.cdunidade := qregistro.CodigodoNomeInteiro(_unidade, 'TON');
        if MDFE.cdunidade = 0 then
        begin
          MessageDlg('Unidade "TON" não cadastrada.', mtInformation, [mbOK], 0);
          Abort;
        end;
      end
      else
      begin
        mdfe.cdunidade := cteqtdcarga.Items[0].cdunidade;
      end;
      mdfe.qtcarga   := cteqtdcarga.Items[0].qtitem;
    end;
    sql.Add(mdfe.Insert(true));

    mdfe.mdfecarregamento.New.cdmunicipio := cdmunicipioinicio;
    mdfe.mdfecarregamento.items[0].cdmdfe := mdfe.cdmdfe;
    sql.Add(mdfe.mdfecarregamento.items[0].insert(true));

    mdfe.mdfedescarregamento.New.cdmunicipio := cdmunicipiotermino;
    mdfe.mdfedescarregamento.Items[0].cdmdfe := mdfe.cdmdfe;
    mdfe.mdfedescarregamento.Items[0].qtcte  := 1;
    //mdfe.mdfedescarregamento.Items[0].qtnfe := cteremetentenota.Count;
    mdfe.mdfedescarregamento.Items[0].vlcarga := vlmercadoria;
    mdfe.mdfedescarregamento.Items[0].qtcarga := mdfe.qtcarga;
    sql.Add(mdfe.mdfedescarregamento.Items[0].insert(true));

    mdfe.mdfedescarregamento.Items[0].mdfecte.new.cdmdfe           := mdfe.cdmdfe;
    mdfe.mdfedescarregamento.Items[0].mdfecte.items[0].cdmunicipio := cdmunicipiotermino;
    mdfe.mdfedescarregamento.Items[0].mdfecte.items[0].cdcte       := cdcte;
    mdfe.mdfedescarregamento.Items[0].mdfecte.items[0].vlcarga     := vlmercadoria;
    mdfe.mdfedescarregamento.Items[0].mdfecte.items[0].qtcarga     := mdfe.qtcarga;
    sql.Add(mdfe.mdfedescarregamento.Items[0].mdfecte.items[0].insert(true));

    {for I := 0 to cteremetentenota.Count - 1 do
    begin
      mdfe.mdfedescarregamento.Items[0].mdfenfe.new.cdmdfe := mdfe.cdmdfe;
      mdfe.mdfedescarregamento.Items[0].mdfenfe.items[i].cdmunicipio := cdmunicipiotermino;
      mdfe.mdfedescarregamento.Items[0].mdfenfe.items[i].cdcteremetentenota := cteremetentenota.Items[i].cdcteremetentenota;
      mdfe.mdfedescarregamento.Items[0].mdfenfe.items[i].nuchavenfe := cteremetentenota.Items[i].nuchavenfe;
      sql.Add(mdfe.mdfedescarregamento.Items[0].mdfenfe.items[i].insert(true));
    end;}

    mdfe.mdfetransportadora.New.cdmdfe := mdfe.cdmdfe;
    mdfe.mdfetransportadora.Items[0].cdtransportadora := ctetransportadora.Items[0].cdtransportadora;
    sql.Add(mdfe.mdfetransportadora.Items[0].insert(true));
    for I := 0 to mdfe.mdfeveiculo.Count - 1 do
    begin
      sql.Add(mdfe.mdfeveiculo.Items[i].Insert(true));
    end;
    if ExecutaScript(sql) then
    begin
      result := mdfe.cdmdfe;
    end;
    //mdfe.cdmdfe := q
    {
    ciot
    uf carregamento
    uf deslocamento
    local de carregamento <>
    uf´s do percurso <>
    informacoes do documento <>
    condutor <>
    reboque <>
    vale pedagio <>
    }
  finally
    freeandnil(mdfe);
  end;
end;

function TCte.GerarPDF(path: string; lista: TStrings): Boolean;
var
  y, qtd1500, inicio, final : integer;
  function get_cdcte(inicio, final:integer):string;
  var
    i : Integer;
  begin
    result := '';
    for i := inicio to final do
    begin
      if result <> '' then
      begin
        result := result + ',';
      end;
      Result := result + lista[i];
    end;
  end;
  procedure processar_dados(inicio, final:Integer);
  var
    q : TClasseQuery;
    arquivo : tstrings;
    ACBrCTe : TACBrCTe;
  begin
    q := TClasseQuery.Create('select dsxml,cdstcte '+
                             'from cte '+
                             'where dsxml is not null and nustdocumento=''00'' and cdempresa='+empresa.cdempresa.tostring+' and cdcte in ('+get_cdcte(inicio, final)+')');
    arquivo := tstringlist.create;
    frmprogressbar := tfrmprogressbar.Create(nil);
    ACBrCTe := TACBrCTe.Create(nil);
    try
      frmprogressbar.pnl.Caption  := 'Lendo registros. Aguarde...';
      frmprogressbar.Show;
      Application.ProcessMessages;
      frmprogressbar.gau.MaxValue := q.q.RecordCount;
      while not q.q.eof do
      begin
        frmprogressbar.pnl.Caption  := 'Processando...';
        frmprogressbar.gau.Progress := q.q.RecNo;
        Application.ProcessMessages;
        CTEGerarPDF(ACBrCTe, q.q.fieldbyname(_dsxml).asstring, q.q.fieldbyname(_cdstcte).asInteger=2, path);
        q.q.next;
        result := true;
      end;
    finally
      freeandnil(q);
      freeandnil(ACBrCTe);
      freeandnil(arquivo);
      freeandnil(frmprogressbar);
    end;
  end;
begin
  result  := false;
  qtd1500 := lista.Count div 1500;
  if qtd1500 * 1500 < lista.Count then
  begin
    qtd1500 := qtd1500 + 1;
  end;
  for y := 1 to qtd1500 do
  begin
    inicio := 1 + ((y-1) * 1500);
    final  := 1500 * y;
    if final > lista.Count then
    begin
      final := lista.Count;
    end;
    processar_dados(inicio -1, final - 1);
  end;
end;

function TCte.Cancelar: boolean;
begin
  ctetransportadora.excluirAutpagto;
  ctetransportadora.excluir;
  cteqtdcarga.excluir;
  cteremetentenota.Excluir;
  ctevlprestacao.excluir;
  duplicata.excluir;
  cteinformacaoseguro.excluir;
  cdmunicipioemissao := 0;
  cdtpcobranca := 0;
  cdmunicipiotermino := 0;
  cdmunicipioinicio := 0;
  cduftermino := 0;
  cdufinicio := 0;
  cdufemissao := 0;
  cdcteformaimpressao := 0;
  cdcteformaemissao := 0;
  cdcteformapagamento := 0;
  cdctetpservico := 0;
  cdctemodal := 0;
  cdctetpprevisaoentrega := 0;
  cdctetpprevisaoentregah := 0;
  cdctetpremetenteinformacao := 0;
  nusticms := '';
  cdproduto := 0;
  cddestinatariodiferente := 0;
  cdveiculo := 0;
  cdtpcte := 0;
  cdstcte := 2;
  nustdocumento := '02';
  cdcondpagto := 0;
  cdctetpinformacaoremetente := 0;
  dtprevisaoi := 0;
  dtprevisaof := 0;
  hrprevisaoi := 0;
  hrprevisaof := 0;
  vlservico := 0;
  vlreceber := 0;
  vlfrete := 0;
  vlbaseicms := 0;
  vlicms := 0;
  alicms := 0;
  alredicms := 0;
  vlcreditooutogardo := 0;
  vlmercadoria := 0;
  boindicadorlotacao := _n;
  dtprevisaoentrega := 0;
  dsobservacao := '';
  hremissao := 0;
  dsobservacaofiscal := '';
  nurntrc := '';
  dsoutrascaracteristicas := '';
  update;
  result := TRUE;
end;

function TCte.Copiar: integer;
begin
  result := Copiar_Registro(_cte, cdcte);
end;

procedure TCte.VerificarSePodeCancelar;
var
  mdfecte : tmdfecte;
begin
  if ctetransportadora.CheckBaixaAutpagto then
  begin
    messagedlg('Não é possível cancelar porque existe baixa do contas a pagar frete do motorista.', mtinformation, [mbok], 0);
    abort;
  end;
  if duplicata.CheckBaixa then
  begin
    messagedlg('Não é possível cancelar porque existe baixa do contas a receber.', mtinformation, [mbok], 0);
    abort;
  end;
  if cartacorrecaocte.Count > 0 then
  begin
    messagedlg('Não é possível cancelar porque existe Carta de Correção.', mtinformation, [mbok], 0);
    abort;
  end;
  mdfecte := tmdfecte.Create;
  try
    if mdfecte.Select(_cdcte+'='+inttostr(cdcte)) then
    begin
      messagedlg('Não é possível cancelar porque CTE faz parte do MDFE '+inttostr(qregistro.InteirodoCodigo(_mdfe, mdfecte.cdmdfe, _numdfe))+'.', mtinformation, [mbok], 0);
      abort;
    end;
  finally
    freeandnil(mdfecte);
  end;
end;

procedure TCte.numeroINSSpreenchidoProprietarioSeguradora;
  function makesql:string;
  begin
    result := 'select ctetransportadora.nuseguradora,transportadora.tppessoa,transportadora.nuinss '+
              'from ctetransportadora '+
              'inner join transportadora on transportadora.cdempresa=ctetransportadora.cdempresa and transportadora.cdtransportadora=ctetransportadora.cdproprietario '+
              'where ctetransportadora.cdempresa='+empresa.cdempresa.tostring+' and ctetransportadora.cdcte='+inttostr(cdcte);
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.open(makesql);
    if (q.q.FieldByName(_tppessoa).AsString = _F) and (q.q.FieldByName(_nuinss).AsString = '') then
    begin
      MessageDlg('Número do INSS não está preenchido no Proprietário.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if empresa.faturamento.cte.boseguradora and (q.q.FieldByName(_NUSEGURADORA).asstring = '') then
    begin
      MessageDlg('Número da seguradora é um campo obrigatório na guia Rodoviário.', mtInformation, [mbOK], 0);
      Abort;
    end;
  finally
    freeandnil(q);
  end;
end;

class function TCTERemetenteNota.ObterCTEdeNFERepetido(nuchave: string; codigo: integer): string;
begin
  result := retornasqlstring('select cdcte from cteremetentenota where cdempresa='+empresa.cdempresa.tostring+' and nuchavenfe='+quotedstr(NUCHAVE)+' and cdcteremetentenota<>'+inttostr(codigo));
end;

function TCTERemetenteNotaList.Excluir(boscript: boolean): string;
var
  I: Integer;
begin
  for I := 0 to count - 1 do
  begin
    result := result + items[i].delete(boscript)+#13;
  end;
end;

function TCTERemetenteNotaList.GetItem(Index: Integer): TCTERemetenteNota;
begin
  Result := TCTERemetenteNota(Inherited Items[Index]);
end;

function TCTERemetenteNotaList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_CTERemetenteNota, codigo, _cdCTE));
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

function TCTERemetenteNotaList.Ler(Dataset: TDataset): boolean;
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

function TCTERemetenteNotaList.New: TCTERemetenteNota;
begin
  Result := TCTERemetenteNota.Create;
  Add(Result);
end;

procedure TCTERemetenteNotaList.SetItem(Index: Integer; const Value: TCTERemetenteNota);
begin
  Put(Index, Value);
end;

constructor TCTETransportadora.create;
begin
  inherited;
  fveiculo := tveiculo.Create;
  fveiculocarreta := tveiculo.Create;
  fveiculocarreta2 := tveiculo.Create;
end;

destructor TCTETransportadora.destroy;
begin
  freeandnil(fveiculo);
  freeandnil(fveiculocarreta);
  freeandnil(fveiculocarreta2);
end;

function TCTETransportadora.GearAutpagto(cdfornecedor:largeint): boolean;
var
  autpagto : tautpagto;
begin
  autpagto := tautpagto.Create;
  try
    autpagto.cdcntcusto   := empresa.financeiro.rpa.cdcntcusto;
    autpagto.cdplconta    := empresa.financeiro.rpa.cdplconta;
    autpagto.cdfornecedor := cdfornecedor;
    autpagto.vlautpagto   := GetVlAutpagto;
    autpagto.dshistorico  := 'Pagto de Frete do CTE '+inttostr(cdcte);
    if empresa.faturamento.cte.nucntcusto <> '' then
    begin
      autpagto.nucntcusto := empresa.faturamento.cte.nucntcusto;
      autpagto.cdcntcusto := empresa.faturamento.cte.cdcntcusto;
    end;
    if empresa.faturamento.cte.nuplconta <> '' then
    begin
      autpagto.nuplconta := empresa.faturamento.cte.nuplconta;
      autpagto.cdplconta := empresa.faturamento.cte.cdplconta;
    end;
    autpagto.Insert;
    cdautpagto := autpagto.cdautpagto;
    Update;
    result := True;
  finally
    freeandnil(autpagto);
  end;
end;

function TCTETransportadora.GetQtEixos: integer;
begin
  result := veiculo.nueixos + veiculocarreta.nueixos + veiculocarreta2.nueixos;
end;

function TCTETransportadora.GetVlAutpagto: currency;
begin
  result := vlfrete - vldesconto + vlpedagio + vlacrescimo - vlirrf - vlinss - vlsestsenat
end;

function TCTETransportadoraList.CheckBaixaAutpagto: boolean;
var
  I: Integer;
begin
  result := False;
  for I := 0 to count - 1 do
  begin
    result := (items[i].cdautpagto <> 0) and RegistroExiste(_baixa, _cdautpagto+'='+inttostr(items[i].cdautpagto));
    if result then
    begin
      break;
    end;
  end;
end;

function TCTETransportadoraList.Excluir(boscript: boolean): string;
var
  I: Integer;
begin
  for I := 0 to count - 1 do
  begin
    result := result + items[i].delete(boscript)+#13;
  end;
end;

function TCTETransportadoraList.ExcluirAutpagto(boscript: boolean): string;
var
  i : integer;
  autpagto : tautpagto;
begin
  for I := 0 to Count - 1 do
  begin
    autpagto := tautpagto.Create;
    try
      if (Items[i].cdautpagto <> 0) and autpagto.Select(Items[i].cdautpagto) then
      begin
        result := result + autpagto.Delete(boscript)+#13;
      end;
    finally
      freeandnil(autpagto);
    end;
  end;
end;

function TCTETransportadoraList.GetItem(Index: Integer): TCTETransportadora;
begin
  Result := TCTETransportadora(Inherited Items[Index]);
end;

function TCTETransportadoraList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_CTETransportadora, codigo, _cdCTE));
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

function TCTETransportadoraList.Ler(Dataset: TDataset): boolean;
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

function TCTETransportadoraList.New: TCTETransportadora;
begin
  Result := TCTETransportadora.Create;
  Add(Result);
end;

procedure TCTETransportadoraList.SetItem(Index: Integer; const Value: TCTETransportadora);
begin
  Put(Index, Value);
end;

function TCTEQTDCargaList.excluir(boscript: boolean): string;
var
  I: Integer;
begin
  for I := 0 to count - 1 do
  begin
    result := result + items[i].Delete(boscript)+#13;
  end;
end;

function TCTEQTDCargaList.GetItem(Index: Integer): TCTEQTDCarga;
begin
  Result := TCTEQTDCarga(Inherited Items[Index]);
end;

function TCTEQTDCargaList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_CTEQTDCarga, codigo, _cdCTE));
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

function TCTEQTDCargaList.Ler(Dataset: TDataset): boolean;
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

function TCTEQTDCargaList.New: TCTEQTDCarga;
begin
  Result := TCTEQTDCarga.Create;
  Add(Result);
end;

procedure TCTEQTDCargaList.SetItem(Index: Integer; const Value: TCTEQTDCarga);
begin
  Put(Index, Value);
end;

function TCartaCorrecaoCTEList.GetItem(Index: Integer): TCartaCorrecaoCTE;
begin
  Result := TCartaCorrecaoCTE(Inherited Items[Index]);
end;

function TCartaCorrecaoCTEList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_CartaCorrecaoCTE, codigo, _cdCTE));
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

function TCartaCorrecaoCTEList.Ler(Dataset: TDataset): boolean;
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

function TCartaCorrecaoCTEList.New: TCartaCorrecaoCTE;
begin
  Result := TCartaCorrecaoCTE.Create;
  Add(Result);
end;

procedure TCartaCorrecaoCTEList.SetItem(Index: Integer; const Value: TCartaCorrecaoCTE);
begin
  Put(Index, Value);
end;

constructor TCTEDocumentoAnterior.create;
begin
  inherited;
  fitctedocumentoanterior := titctedocumentoanteriorlist.create;
end;

destructor TCTEDocumentoAnterior.destroy;
begin
  freeandnil(fitctedocumentoanterior);
  inherited;
end;

function TCTeDocumentoAnteriorList.GetItem(Index: Integer): TCTeDocumentoAnterior;
begin
  Result := TCTeDocumentoAnterior(Inherited Items[Index]);
end;

function TCTeDocumentoAnteriorList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_CTeDocumentoAnterior, codigo, _cdCTE));
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

function TCTeDocumentoAnteriorList.Ler(Dataset: TDataset): boolean;
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

function TCTeDocumentoAnteriorList.New: TCTeDocumentoAnterior;
begin
  Result := TCTeDocumentoAnterior.Create;
  Add(Result);
end;

procedure TCTeDocumentoAnteriorList.SetItem(Index: Integer; const Value: TCTeDocumentoAnterior);
begin
  Put(Index, Value);
end;

function TCTEInformacaoSeguroList.Excluir(boscript: boolean): string;
var
  I: Integer;
begin
  for I := 0 to count - 1 do
  begin
    result := result + items[i].Delete(boscript)+#13;
  end;
end;

function TCTEInformacaoSeguroList.GetItem(Index: Integer): TCTEInformacaoSeguro;
begin
  Result := TCTEInformacaoSeguro(Inherited Items[Index]);
end;

function TCTEInformacaoSeguroList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_CTEInformacaoSeguro, codigo, _cdCTE));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TCTEInformacaoSeguroList.Ler(Dataset: TDataset): boolean;
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

function TCTEInformacaoSeguroList.New: TCTEInformacaoSeguro;
begin
  Result := TCTEInformacaoSeguro.Create;
  Add(Result);
end;

procedure TCTEInformacaoSeguroList.SetItem(Index: Integer; const Value: TCTEInformacaoSeguro);
begin
  Put(Index, Value);
end;

function TCTEVlPrestacaoList.Excluir(boscript: boolean): string;
var
  I: Integer;
begin
  for I := 0 to count - 1 do
  begin
    result := result + items[i].delete(boscript)+#13;
  end;
end;

function TCTEVlPrestacaoList.GetItem(Index: Integer): TCTEVlPrestacao;
begin
  Result := TCTEVlPrestacao(Inherited Items[Index]);
end;

function TCTEVlPrestacaoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_CTEVlPrestacao, codigo, _cdCTE));
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

function TCTEVlPrestacaoList.New: TCTEVlPrestacao;
begin
  Result := TCTEVlPrestacao.Create;
  Add(Result);
end;

procedure TCTEVlPrestacaoList.SetItem(Index: Integer; const Value: TCTEVlPrestacao);
begin
  Put(Index, Value);
end;

function TCTEList.GetItem(Index: Integer): TCte;
begin
  Result := TCte(Inherited Items[Index]);
end;

function TCTEList.Ler(codigo: Integer; cdfield:string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_CTE, codigo, cdfield));
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

function TCTEList.New: TCte;
begin
  Result := TCte.Create;
  Add(Result);
end;

procedure TCTEList.SetItem(Index: Integer; const Value: TCte);
begin
  Put(Index, Value);
end;

{ TCTEInutilizacao }

function TItCartaCorrecaoCteList.GetItem(Index: Integer): TItCartaCorrecaoCte;
begin
  Result := TItCartaCorrecaoCte(Inherited Items[Index]);
end;

function TItCartaCorrecaoCteList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_ItCartaCorrecaoCte, codigo, _cdcartacorrecaoCTE));
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

function TItCartaCorrecaoCteList.New: TItCartaCorrecaoCte;
begin
  Result := TItCartaCorrecaoCte.Create;
  Add(Result);
end;

procedure TItCartaCorrecaoCteList.SetItem(Index: Integer; const Value: TItCartaCorrecaoCte);
begin
  Put(Index, Value);
end;

{ TItCTEDocumentoAnterior }

function TItCTeDocumentoAnteriorList.GetItem(Index: Integer): TItCTeDocumentoAnterior;
begin
  Result := TItCTeDocumentoAnterior(Inherited Items[Index]);
end;

function TItCTeDocumentoAnteriorList.Ler(Dataset: TDataset): boolean;
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

function TItCTeDocumentoAnteriorList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itCTeDocumentoAnterior, codigo, _cdCTEdocumentoanterior));
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

function TItCTeDocumentoAnteriorList.New: TItCTeDocumentoAnterior;
begin
  Result := TItCTeDocumentoAnterior.Create;
  Add(Result);
end;

procedure TItCTeDocumentoAnteriorList.SetItem(Index: Integer; const Value: TItCTeDocumentoAnterior);
begin
  Put(Index, Value);
end;

function TCTeDocumentoAnteriorList.Ler(Dataset, itdataset: TDataset): boolean;
begin
  clear;
  result := Dataset.RecordCount > 0;
  if not result then
  begin
    Exit;
  end;
  while not Dataset.Eof do
  begin
    with new do
    begin
      Select(Dataset);
      itctedocumentoanterior.Ler(itdataset);
    end;
    Dataset.Next;
  end;
end;

{ TCTETPVLPRESTACAO }

class function TCTETPVLPRESTACAO.InserirRegistro(nome: string): integer;
var
  tipo : TCTETPVLPRESTACAO;
begin
  tipo := TCTETPVLPRESTACAO.create;
  try
    tipo.cdctetpvlprestacao := qgerar.GerarCodigo(_CTETPVLPRESTACAO);
    tipo.nmctetpvlprestacao := nome;
    tipo.botributa := _n;
    tipo.insert;
    result := tipo.cdctetpvlprestacao;
  finally
    freeandnil(tipo);
  end;
end;

{ Tctetpmedida }

class function Tctetpmedida.InserirRegistro(nome: string): integer;
var
  tipo : Tctetpmedida;
begin
  tipo := Tctetpmedida.create;
  try
    tipo.cdctetpmedida := qgerar.GerarCodigo(_ctetpmedida);
    tipo.nmctetpmedida := nome;
    tipo.insert;
    result := tipo.cdctetpmedida;
  finally
    freeandnil(tipo);
  end;
end;

end.
