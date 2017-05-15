unit ClasseLp1a;

interface

uses system.classes, data.db,
  ClasseDao, Contnrs, sysutils;

type
  TLp1aAtivoPisCofins = class(TRegistroQuipos)
  private
    Fnuparcela: integer;
    Fcdativopiscofins: integer;
    Fcdlp1aativopiscofins: integer;
    Fvlbasepis: currency;
    Fvlbasecofins: currency;
    Fvlpis: currency;
    Fvlcofins: currency;
    Fcdlp1a: integer;
    Fvlsaldo: currency;
    Fvldeducao: currency;
  public
    [keyfield]
    property cdlp1aativopiscofins : integer read Fcdlp1aativopiscofins write Fcdlp1aativopiscofins;
    [fk, AObrigatorio]
    property cdlp1a : integer read Fcdlp1a write Fcdlp1a;
    [fk, AObrigatorio]
    property cdativopiscofins : integer read Fcdativopiscofins write Fcdativopiscofins;
    [AObrigatorio]
    property nuparcela : integer read Fnuparcela write Fnuparcela;
    property vlbasepis : currency read Fvlbasepis write Fvlbasepis;
    property vlpis : currency read Fvlpis write Fvlpis;
    property vlbasecofins : currency read Fvlbasecofins write Fvlbasecofins;
    property vlcofins : currency read Fvlcofins write Fvlcofins;
    property vldeducao : currency read Fvldeducao write Fvldeducao;
    property vlsaldo : currency read Fvlsaldo write Fvlsaldo;
  end;
  TLp1aAtivoPisCofinsList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TLp1aAtivoPisCofins;
    procedure SetItem(Index: Integer; const Value: TLp1aAtivoPisCofins);
  public
    function New: TLp1aAtivoPisCofins;
    property Items[Index: Integer]: TLp1aAtivoPisCofins read GetItem write SetItem;
  end;
  TLp1aCiapi = class(TRegistroQuipos)
  private
    Fcdcliente: LargeInt;
    Fnuparcela: integer;
    Fvlicmssubtrib: currency;
    Fvlicmsfrete: currency;
    Fcdtpmercadoriaativo: integer;
    Fcdlp1aciapi: integer;
    Fvlicms: currency;
    Fcdfornecedor: LargeInt;
    Fcddigitado: string;
    Fboativado: string;
    Fvlajuste: currency;
    Fnuserie: string;
    Fcditsaida: integer;
    Fnudocumento: integer;
    Fcdindicadoremitente: integer;
    Fnuitem: integer;
    Fcdproduto: integer;
    Fvlicmsdifaliquota: currency;
    Fcdlp1a: integer;
    Fvlsaldo: currency;
    Fnuchavenfe: string;
    Fcdtpciapi: integer;
    Fcditentrada: integer;
    Fcdindividualbem: string;
    Fvldeducao: currency;
    Fdtemissao: TDate;
    Fnudocfiscalicms: string;
  public
    [keyfield]
    property cdlp1aciapi : integer read Fcdlp1aciapi write Fcdlp1aciapi;
    [fk, AObrigatorio]
    property cdlp1a : integer read Fcdlp1a write Fcdlp1a;
    [fk]
    property cdproduto : integer read Fcdproduto write Fcdproduto;
    [fk]
    property cditsaida : integer read Fcditsaida write Fcditsaida;
    [fk]
    property cditentrada : integer read Fcditentrada write Fcditentrada;
    [fk]
    property cdtpciapi : integer read Fcdtpciapi write Fcdtpciapi;
    [fk, AObrigatorio]
    property cdtpmercadoriaativo : integer read Fcdtpmercadoriaativo write Fcdtpmercadoriaativo;
    [fk, AObrigatorio]
    property cdindicadoremitente : integer read Fcdindicadoremitente write Fcdindicadoremitente;
    [fk, AObrigatorio]
    property nudocfiscalicms : string read Fnudocfiscalicms write Fnudocfiscalicms;
    [AObrigatorio]
    property nuparcela : integer read Fnuparcela write Fnuparcela;
    [AObrigatorio]
    property vlajuste : currency read Fvlajuste write Fvlajuste;
    [AObrigatorio]
    property nudocumento : integer read Fnudocumento write Fnudocumento;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property vlicms : currency read Fvlicms write Fvlicms;
    property vldeducao : currency read Fvldeducao write Fvldeducao;
    property vlsaldo : currency read Fvlsaldo write Fvlsaldo;
    property boativado : string read Fboativado write Fboativado;
    [AObrigatorio]
    property cddigitado : string read Fcddigitado write Fcddigitado;
    [AObrigatorio]
    property vlicmssubtrib : currency read Fvlicmssubtrib write Fvlicmssubtrib;
    [AObrigatorio]
    property vlicmsfrete : currency read Fvlicmsfrete write Fvlicmsfrete;
    [AObrigatorio]
    property vlicmsdifaliquota : currency read Fvlicmsdifaliquota write Fvlicmsdifaliquota;
    [AObrigatorio]
    property nuitem : integer read Fnuitem write Fnuitem;
    [AObrigatorio]
    property cdindividualbem : string read Fcdindividualbem write Fcdindividualbem;
    [fk]
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write Fcdcliente;
    [AObrigatorio]
    property nuserie : string read Fnuserie write Fnuserie;
    property nuchavenfe : string read Fnuchavenfe write Fnuchavenfe;
  end;
  TLp1aCiapiList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TLp1aCiapi;
    procedure SetItem(Index: Integer; const Value: TLp1aCiapi);
  public
    function New: TLp1aCiapi;
    property Items[Index: Integer]: TLp1aCiapi read GetItem write SetItem;
  end;
  TItRegApuracao = class(TRegistroQuipos)
  private
    Fvlsaldodevedor: currency;
    Fvldressarcimento: currency;
    Fvldebito: currency;
    Fdsobservacao: string;
    Fcdtpimposto: integer;
    Fvlsaldocredor: currency;
    Fvlcestorno: currency;
    Fvlcsubtotal: currency;
    Fvldestorno: currency;
    Fvlctotal: currency;
    Fvlcsaldocredor: currency;
    Fcdlp1a: integer;
    Fvldeducoes: currency;
    Fvlcoutros: currency;
    Fvldtotal: currency;
    Fvlcredito: currency;
    Fcditregapuracao: integer;
    Fvlimposto: currency;
    Fvldoutros: currency;
  public
    [keyfield]
    property cditregapuracao : integer read Fcditregapuracao write Fcditregapuracao;
    [fk, AObrigatorio]
    property cdlp1a : integer read Fcdlp1a write Fcdlp1a;
    [fk, AObrigatorio]
    property cdtpimposto : integer read Fcdtpimposto write Fcdtpimposto;
    [AObrigatorio]
    property vldebito : currency read Fvldebito write Fvldebito;
    [AObrigatorio]
    property vldoutros : currency read Fvldoutros write Fvldoutros;
    [AObrigatorio]
    property vldestorno : currency read Fvldestorno write Fvldestorno;
    [AObrigatorio]
    property vldtotal : currency read Fvldtotal write Fvldtotal;
    [AObrigatorio]
    property vlcredito : currency read Fvlcredito write Fvlcredito;
    [AObrigatorio]
    property vlcoutros : currency read Fvlcoutros write Fvlcoutros;
    [AObrigatorio]
    property vlcestorno : currency read Fvlcestorno write Fvlcestorno;
    [AObrigatorio]
    property vlcsubtotal : currency read Fvlcsubtotal write Fvlcsubtotal;
    [AObrigatorio]
    property vlcsaldocredor : currency read Fvlcsaldocredor write Fvlcsaldocredor;
    [AObrigatorio]
    property vlctotal : currency read Fvlctotal write Fvlctotal;
    [AObrigatorio]
    property vlsaldodevedor : currency read Fvlsaldodevedor write Fvlsaldodevedor;
    [AObrigatorio]
    property vldeducoes : currency read Fvldeducoes write Fvldeducoes;
    [AObrigatorio]
    property vlimposto : currency read Fvlimposto write Fvlimposto;
    [AObrigatorio]
    property vlsaldocredor : currency read Fvlsaldocredor write Fvlsaldocredor;
    property vldressarcimento : currency read Fvldressarcimento write Fvldressarcimento;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
  end;
  TItRegApuracaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItRegApuracao;
    procedure SetItem(Index: Integer; const Value: TItRegApuracao);
  public
    function New: TItRegApuracao;
    property Items[Index: Integer]: TItRegApuracao read GetItem write SetItem;
  end;
  TItApuracao = class(TRegistroQuipos)
  private
    Fvlcontabil: currency;
    Fcdcfop: integer;
    Fvloutroscreditos: currency;
    Ftpsaient: string;
    Fcdtpimposto: integer;
    Fvlisentas: currency;
    Fcditapuracao: integer;
    Fvloutrosdebitos: currency;
    Fvlbase: currency;
    Fcdlp1a: integer;
    Fvloutras: currency;
    Fvlimposto: currency;
  public
    [keyfield]
    property cditapuracao : integer read Fcditapuracao write Fcditapuracao;
    [fk, aobrigatorio]
    property cdlp1a : integer read Fcdlp1a write Fcdlp1a;
    [fk, aobrigatorio]
    property cdtpimposto : integer read Fcdtpimposto write Fcdtpimposto;
    [fk]
    property cdcfop : integer read Fcdcfop write Fcdcfop;
    property tpsaient : string read Ftpsaient write Ftpsaient;
    [aobrigatorio]
    property vlcontabil : currency read Fvlcontabil write Fvlcontabil;
    [aobrigatorio]
    property vlbase : currency read Fvlbase write Fvlbase;
    [aobrigatorio]
    property vlimposto : currency read Fvlimposto write Fvlimposto;
    [aobrigatorio]
    property vlisentas : currency read Fvlisentas write Fvlisentas;
    [aobrigatorio]
    property vloutras : currency read Fvloutras write Fvloutras;
    property vloutroscreditos : currency read Fvloutroscreditos write Fvloutroscreditos;
    property vloutrosdebitos : currency read Fvloutrosdebitos write Fvloutrosdebitos;
  end;
  TItApuracaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItApuracao;
    procedure SetItem(Index: Integer; const Value: TItApuracao);
  public
    function New: TItApuracao;
    property Items[Index: Integer]: TItApuracao read GetItem write SetItem;
  end;
  TItApuf = class(TRegistroQuipos)
  private
    Fcditapuf: integer;
    Fvlcontabil: currency;
    Ftpsaient: string;
    Fcdtpimposto: integer;
    Fvlisentas: currency;
    Fvlbase: currency;
    Fcdlp1a: integer;
    Fvloutras: currency;
    Fvlimposto: currency;
  public
   [keyfield]
    property cditapuf : integer read Fcditapuf write Fcditapuf;
    [fk]
    property cdlp1a : integer read Fcdlp1a write Fcdlp1a;
    [fk, aobrigatorio]
    property cdtpimposto : integer read Fcdtpimposto write Fcdtpimposto;
    property tpsaient : string read Ftpsaient write Ftpsaient;
    [aobrigatorio]
    property vlcontabil : currency read Fvlcontabil write Fvlcontabil;
    [aobrigatorio]
    property vlbase : currency read Fvlbase write Fvlbase;
    [aobrigatorio]
    property vlimposto : currency read Fvlimposto write Fvlimposto;
    [aobrigatorio]
    property vlisentas : currency read Fvlisentas write Fvlisentas;
    [aobrigatorio]
    property vloutras : currency read Fvloutras write Fvloutras;
  end;
  TItApufList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItApuf;
    procedure SetItem(Index: Integer; const Value: TItApuf);
  public
    function New: TItApuf;
    property Items[Index: Integer]: TItApuf read GetItem write SetItem;
  end;
  TItUfp1a = class(TRegistroQuipos)
  private
    Fvlcontabil: currency;
    Ftpsaient: string;
    Fvlisentas: currency;
    Fvlbase: currency;
    Fcdlp1a: integer;
    Fvloutras: currency;
    Fcditufp1a: integer;
    Fvlimposto: currency;
    Fcduf: integer;
  public
    [keyfield]
    property cditufp1a : integer read Fcditufp1a write Fcditufp1a;
    [fk, aobrigatorio]
    property cdlp1a : integer read Fcdlp1a write Fcdlp1a;
    [fk, aobrigatorio]
    property cduf : integer read Fcduf write Fcduf;
    property tpsaient : string read Ftpsaient write Ftpsaient;
    [aobrigatorio]
    property vlcontabil : currency read Fvlcontabil write Fvlcontabil;
    [aobrigatorio]
    property vlbase : currency read Fvlbase write Fvlbase;
    [aobrigatorio]
    property vloutras : currency read Fvloutras write Fvloutras;
    [aobrigatorio]
    property vlimposto : currency read Fvlimposto write Fvlimposto;
    [aobrigatorio]
    property vlisentas : currency read Fvlisentas write Fvlisentas;
  end;
  TItUfp1aList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItUfp1a;
    procedure SetItem(Index: Integer; const Value: TItUfp1a);
  public
    function New: TItUfp1a;
    property Items[Index: Integer]: TItUfp1a read GetItem write SetItem;
    function ObterIndice(cduf: integer; tpsaient: string):integer;
  end;
  TItLp1a = class(TRegistroQuipos)
  private
    Fcdcliente: Largeint;
    Fvlicmssubtrib: currency;
    Fvlcontabil: currency;
    Fcdcfop: integer;
    Fdsobservacao: string;
    Ftpsaient: string;
    Fcdcte: integer;
    Fcdtpimposto: integer;
    Fvlisentas: currency;
    Fcdfornecedor: LargeInt;
    Fcdtpop1a: integer;
    Fnuserie: string;
    Fnmespecie: string;
    Fnuemitente: string;
    Fnudocumento: integer;
    Fdtentrada: TDate;
    Fcdsaida: integer;
    Falicmssubtrib: double;
    Faliquota: Double;
    Fcditlp1a: integer;
    Fvlbase: currency;
    Fcdlp1a: integer;
    Fvloutras: currency;
    Fvlbaseicmssubtrib: currency;
    Fcdentrada: integer;
    Fvlimposto: currency;
    Fdtemissao: TDate;
    Fcduf: integer;
  public
    [keyfield]
    property cditlp1a : integer read Fcditlp1a write Fcditlp1a;
    [fk, AObrigatorio]
    property cdlp1a : integer read Fcdlp1a write Fcdlp1a;
    [fk]
    property cdsaida : integer read Fcdsaida write Fcdsaida;
    [fk]
    property cdcfop : integer read Fcdcfop write Fcdcfop;
    [fk]
    property cdtpimposto : integer read Fcdtpimposto write Fcdtpimposto;
    [fk]
    property cdentrada : integer read Fcdentrada write Fcdentrada;
    [fk]
    property cduf : integer read Fcduf write Fcduf;
    [fk]
    property cdtpop1a : integer read Fcdtpop1a write Fcdtpop1a;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write Fcdcliente;
    [fk]
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    [fk]
    property cdcte : integer read Fcdcte write Fcdcte;
    property tpsaient : string read Ftpsaient write Ftpsaient;
    property dtentrada : TDate read Fdtentrada write Fdtentrada;
    property nmespecie : string read Fnmespecie write Fnmespecie;
    property nuserie : string read Fnuserie write Fnuserie;
    property nudocumento : integer read Fnudocumento write Fnudocumento;
    property nuemitente : string read Fnuemitente write Fnuemitente;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property vlcontabil : currency read Fvlcontabil write Fvlcontabil;
    property vlbase : currency read Fvlbase write Fvlbase;
    property aliquota : Double read Faliquota write Faliquota;
    property vlimposto : currency read Fvlimposto write Fvlimposto;
    property vlisentas : currency read Fvlisentas write Fvlisentas;
    property vloutras : currency read Fvloutras write Fvloutras;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property vlbaseicmssubtrib : currency read Fvlbaseicmssubtrib write Fvlbaseicmssubtrib;
    property alicmssubtrib : double read Falicmssubtrib write Falicmssubtrib;
    property vlicmssubtrib : currency read Fvlicmssubtrib write Fvlicmssubtrib;
  end;
  TItlp1aList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItlp1a;
    procedure SetItem(Index: Integer; const Value: TItlp1a);
  public
    function New: TItlp1a;
    property Items[Index: Integer]: TItlp1a read GetItem write SetItem;
  end;
  TLp1a = class(TRegistroQuipos)
  private
    Fcdtpescrituracao: integer;
    Fqtenergia: double;
    Fnureciboanterior: string;
    Fvltributadaciapi: currency;
    Fdtfinal: TDate;
    Fvlsaidaciapi: currency;
    Fprcoeficienteciapi: double;
    Fvlfolhapagamento: currency;
    Fvlcofins: currency;
    Fcdlp1a: integer;
    Fnufuncionarios: integer;
    Fcdindicadorsituacaoespecial: integer;
    Fdtinicio: TDate;
    Fitlp1a: Titlp1alist;
    FItUfp1a: TItUfp1aList;
    FItApuf: TItApufList;
    Fitapuracao: TItapuracaoList;
    Fitregapuracao: titregapuracaolist;
    Flp1aciapi: tlp1aciapilist;
    FLp1aAtivoPisCofins: TLp1aAtivoPisCofinsList;
  public
    property Lp1aAtivoPisCofins : TLp1aAtivoPisCofinsList read FLp1aAtivoPisCofins write FLp1aAtivoPisCofins;
    property lp1aciapi : tlp1aciapilist read Flp1aciapi write Flp1aciapi;
    property itregapuracao : titregapuracaolist read Fitregapuracao write Fitregapuracao;
    property itapuracao : TItapuracaoList read Fitapuracao write Fitapuracao;
    property ItApuf : TItApufList read FItApuf write FItApuf;
    property ItUfp1a : TItUfp1aList read FItUfp1a write FItUfp1a;
    property itlp1a : Titlp1alist read Fitlp1a write Fitlp1a;
    [keyfield]
    property cdlp1a : integer read Fcdlp1a write Fcdlp1a;
    [fk]
    property cdtpescrituracao : integer read Fcdtpescrituracao write Fcdtpescrituracao;
    [fk]
    property cdindicadorsituacaoespecial : integer read Fcdindicadorsituacaoespecial write Fcdindicadorsituacaoespecial;
    property dtinicio : TDate read Fdtinicio write Fdtinicio;
    property dtfinal : TDate read Fdtfinal write Fdtfinal;
    property nufuncionarios : integer read Fnufuncionarios write Fnufuncionarios;
    property vlfolhapagamento : currency read Fvlfolhapagamento write Fvlfolhapagamento;
    property vlcofins : currency read Fvlcofins write Fvlcofins;
    property qtenergia : double read Fqtenergia write Fqtenergia;
    property vltributadaciapi : currency read Fvltributadaciapi write Fvltributadaciapi;
    property vlsaidaciapi : currency read Fvlsaidaciapi write Fvlsaidaciapi;
    property prcoeficienteciapi : double read Fprcoeficienteciapi write Fprcoeficienteciapi;
    property nureciboanterior : string read Fnureciboanterior write Fnureciboanterior;
    constructor create;
    destructor destroy;
  end;

implementation

constructor TLp1a.create;
begin
  inherited;
  fLp1aAtivoPisCofins := TLp1aAtivoPisCofinslist.Create;
  flp1aciapi := tlp1aciapilist.create;
  fitregapuracao := titregapuracaolist.Create;
  fitapuracao := titapuracaolist.Create;
  FItApuf := TItApufList.Create;
  fitlp1a := titlp1alist.Create;
  FItUfp1a := TItUfp1aList.Create;
end;

destructor TLp1a.destroy;
begin
  freeandnil(fLp1aAtivoPisCofins);
  freeandnil(flp1aciapi);
  freeandnil(fitregapuracao);
  freeandnil(fitapuracao);
  freeandnil(FItApuf);
  freeandnil(fitlp1a);
  freeandnil(FItUfp1a);
  inherited;
end;

function TItlp1aList.GetItem(Index: Integer): TItlp1a;
begin
  Result := TItlp1a(Inherited Items[Index]);
end;

function TItlp1aList.New: TItlp1a;
begin
  Result := TItlp1a.Create;
  Add(Result);
end;

procedure TItlp1aList.SetItem(Index: Integer; const Value: TItlp1a);
begin
  Put(Index, Value);
end;

function TItUfp1aList.GetItem(Index: Integer): TItUfp1a;
begin
  Result := TItUfp1a(Inherited Items[Index]);
end;

function TItUfp1aList.New: TItUfp1a;
begin
  Result := TItUfp1a.Create;
  Add(Result);
end;

function TItUfp1aList.ObterIndice(cduf: integer; tpsaient: string): integer;
var
  I: Integer;
begin
  result := -1;
  for I := 0 to count - 1 do
  begin
    if (items[i].cduf = cduf) and (items[i].tpsaient = tpsaient) then
    begin
      result := i;
    end;
  end;
end;

procedure TItUfp1aList.SetItem(Index: Integer; const Value: TItUfp1a);
begin
  Put(Index, Value);
end;

{ TItApufList }

function TItApufList.GetItem(Index: Integer): TItApuf;
begin
  Result := TItApuf(Inherited Items[Index]);
end;

function TItApufList.New: TItApuf;
begin
  Result := TItApuf.Create;
  Add(Result);
end;

procedure TItApufList.SetItem(Index: Integer; const Value: TItApuf);
begin
  Put(Index, Value);
end;

function TItApuracaoList.GetItem(Index: Integer): TItApuracao;
begin
  Result := TItApuracao(Inherited Items[Index]);
end;

function TItApuracaoList.New: TItApuracao;
begin
  Result := TItApuracao.Create;
  Add(Result);
end;

procedure TItApuracaoList.SetItem(Index: Integer; const Value: TItApuracao);
begin
  Put(Index, Value);
end;

function TItRegApuracaoList.GetItem(Index: Integer): TItRegApuracao;
begin
  Result := TItRegApuracao(Inherited Items[Index]);
end;

function TItRegApuracaoList.New: TItRegApuracao;
begin
  Result := TItRegApuracao.Create;
  Add(Result);
end;

procedure TItRegApuracaoList.SetItem(Index: Integer; const Value: TItRegApuracao);
begin
  Put(Index, Value);
end;

function TLp1aCiapiList.GetItem(Index: Integer): TLp1aCiapi;
begin
  Result := TLp1aCiapi(Inherited Items[Index]);
end;

function TLp1aCiapiList.New: TLp1aCiapi;
begin
  Result := TLp1aCiapi.Create;
  Add(Result);
end;

procedure TLp1aCiapiList.SetItem(Index: Integer; const Value: TLp1aCiapi);
begin
  Put(Index, Value);
end;

function TLp1aAtivoPisCofinsList.GetItem(Index: Integer): TLp1aAtivoPisCofins;
begin
  Result := TLp1aAtivoPisCofins(Inherited Items[Index]);
end;

function TLp1aAtivoPisCofinsList.New: TLp1aAtivoPisCofins;
begin
  Result := TLp1aAtivoPisCofins.Create;
  Add(Result);
end;

procedure TLp1aAtivoPisCofinsList.SetItem(Index: Integer; const Value: TLp1aAtivoPisCofins);
begin
  Put(Index, Value);
end;

end.
