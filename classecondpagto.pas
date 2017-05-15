unit classecondpagto;

interface

uses
  system.Classes, db, System.Math,
  SysUtils, Contnrs,
  SqlExpr,
  uRegistro, uConstantes,
  classeempresa, classeaplicacao, classeretornasql, classequery, classedao;

type
 TParcela = class
 private
    fvalor: currency;
    fdtvencimento: TDate;
    fvlcomissao: Currency;
 public
   property dtvencimento : TDate read fdtvencimento write fdtvencimento;
   property valor: currency read fvalor write fvalor;
   property vlcomissao: Currency read fvlcomissao write fvlcomissao;
 end;
  TParcelaList = class(TObjectList)
  private
    fvalor: Currency;
    fnuparcela: Integer;
    fvlcomissao: Currency;
    function  GetItem(Index: Integer): TParcela;
    procedure SetItem(Index: Integer; const Value: TParcela);
  public
    function New: TParcela;
    property Items[Index: Integer]: TParcela read GetItem write SetItem;
    property valor: Currency read fvalor write fvalor;
    property vlcomissao: Currency read fvlcomissao write fvlcomissao;
    property nuparcela: Integer read fnuparcela write fnuparcela;
    procedure calculaValorParcelas;
    procedure ColocarParcelaICMSSubTribPrimeiro;
 end;
 TItcondpagto = class(TRegistroQuipos)
  private
    fcditcondpagto : Integer;
    fcdcondpagto : Integer;
    fnudias : Integer;
  public
    [keyfield]
    property cditcondpagto : Integer read fcditcondpagto write fcditcondpagto;
    property cdcondpagto : Integer read fcdcondpagto write fcdcondpagto;
    property nudias : Integer read fnudias write fnudias;
  end;
  TItcondpagtoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItcondpagto;
    procedure SetItem(Index: Integer; const Value: TItcondpagto);
  public
    function New: TItcondpagto;
    property Items[Index: Integer]: TItcondpagto read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
    function getNudiasAcumulado:string;
  end;
  TStcondpagto = class(TPersintentObject)
  private
    Fbogerarentrada: string;
    Fnucor: integer;
    Fbogerarpedido: string;
    Fnmstcondpagto: string;
    Fboexcluir: string;
    Fbogerarinfo: string;
    Fbonovo: string;
    Fcdstcondpagto: integer;
    Fbogerarsaida: string;
    Fboalterar: string;
  public
    [keyfield]
    property cdstcondpagto : integer read Fcdstcondpagto write Fcdstcondpagto;
    property nmstcondpagto : string read Fnmstcondpagto write Fnmstcondpagto;
    property bonovo : string read Fbonovo write Fbonovo;
    property boalterar : string read Fboalterar write Fboalterar;
    property boexcluir : string read Fboexcluir write Fboexcluir;
    property bogerarinfo : string read Fbogerarinfo write Fbogerarinfo;
    property bogerarpedido : string read Fbogerarpedido write Fbogerarpedido;
    property bogerarsaida : string read Fbogerarsaida write Fbogerarsaida;
    property bogerarentrada : string read Fbogerarentrada write Fbogerarentrada;
    property nucor : integer read Fnucor write Fnucor;
  end;
  TCondpagto = class(TRegistroQuipos)
  private
    Fcdcondpagto: Integer;
    Fstcondpagto: TStCondpagto;
    Fnucor: Integer;
    Fbosaida: string;
    Fitcondpagto: TItcondpagtoList;
    Fboentrada: string;
    Fnudias: Integer;
    Fpracrescimo: Double;
    Fnmcondpagto: string;
    Fcdstcondpagto: Integer;
    Fbocte: string;
    fparcela: TParcelaList;
  public
    property parcela: TParcelaList read fparcela write fparcela;
    property itcondpagto : TItcondpagtoList read Fitcondpagto write Fitcondpagto;
    property stcondpagto : TStCondpagto read Fstcondpagto write Fstcondpagto;
    [keyfield]
    property cdcondpagto : Integer read Fcdcondpagto write Fcdcondpagto;
    property nmcondpagto : string read Fnmcondpagto write Fnmcondpagto;
    property cdstcondpagto : Integer read Fcdstcondpagto write Fcdstcondpagto;
    property pracrescimo : Double read Fpracrescimo write Fpracrescimo;
    property nudias : Integer read Fnudias write Fnudias;
    property boentrada : string read Fboentrada write Fboentrada;
    property bosaida : string read Fbosaida write Fbosaida;
    property bocte : string read Fbocte write Fbocte;
    property nucor : Integer read Fnucor write Fnucor;
    constructor create;
    destructor destroy; override;
    function isaprazo:boolean;
    function Insert(boscript:boolean=false): String;
    procedure GerarParcela(dtemissao: TDate; valor:Currency; vlcomissao: Currency=0; vlicmssubtrib:Currency=0);
  end;

implementation

constructor TCondpagto.create;
begin
  inherited;
  fstcondpagto := tstcondpagto.create;
  Fitcondpagto := TItcondpagtoList.Create;
  fparcela     := TParcelaList.Create;
end;

destructor TCondpagto.destroy;
begin
  freeandnil(fstcondpagto);
  FreeAndNil(fitcondpagto);
  FreeAndNil(fparcela);
  inherited;
end;

procedure TCondpagto.GerarParcela(dtemissao: TDate; valor: Currency; vlcomissao: Currency=0; vlicmssubtrib:Currency=0);
var
  I: Integer;
begin
  parcela.Clear;
  parcela.nuparcela  := itcondpagto.Count;
  parcela.valor      := valor;
  parcela.vlcomissao := vlcomissao;
  parcela.calculaValorParcelas;
  dtemissao := dtemissao + nudias;
  for I := 0 to parcela.Count - 1 do
  begin
    parcela.Items[i].dtvencimento := dtemissao + itcondpagto.Items[i].nudias;
  end;
  if vlicmssubtrib > 0 then
  begin
    parcela.New;
    parcela.Items[parcela.Count-1].dtvencimento := parcela.Items[0].dtvencimento;
    parcela.Items[parcela.Count-1].valor        := vlicmssubtrib;
    parcela.ColocarParcelaICMSSubTribPrimeiro;
  end;
end;

function TCondpagto.Insert(boscript: boolean): String;
begin
  if cdstcondpagto = 0 then
  begin
    cdstcondpagto := 1;
  end;
  if boentrada = '' then
  begin
    boentrada := _s;
  end;
  if bosaida = '' then
  begin
    bosaida := _s;
  end;
  if bocte = '' then
  begin
    bocte := _s;
  end;
  if nucor = 0 then
  begin
    nucor := 1;
  end;
  result := inherited insert(boscript);
end;

function TCondpagto.isaprazo: boolean;
begin
  result := itcondpagto.Count>1;
  if not result then
  begin
    result := itcondpagto.Items[0].nudias > 0;
  end;
end;

function TItcondpagtoList.GetItem(Index: Integer): TItcondpagto;
begin
  Result := TItcondpagto(Inherited Items[Index]);
end;

function TItcondpagtoList.getNudiasAcumulado: string;
var
  I: Integer;
begin
  result := '';
  for I := 0 to count - 1 do
  begin
    if result <> '' then
    begin
      result := result + ',';
    end;
    result := result + inttostr(items[i].nudias);
  end;
end;

function TItcondpagtoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itcondpagto, codigo, _cdcondpagto));
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

function TItcondpagtoList.New: TItcondpagto;
begin
  Result := TItcondpagto.Create;
  Add(Result);
end;

procedure TItcondpagtoList.SetItem(Index: Integer; const Value: TItcondpagto);
begin
  Put(Index, Value);
end;

procedure TParcelaList.calculaValorParcelas;
var
  j : Integer;
  vlparcela, vloriginal, vltotal : currency;
  vlparcelacomissao, vloriginalcomissao, vltotalcomissao : Currency;
begin
  vltotal            := valor;
  vloriginal         := vltotal;
  vlparcela          := RoundTo(vltotal / nuparcela, -2);
  vltotalcomissao    := vlcomissao;
  vloriginalcomissao := vlcomissao;
  vlparcelacomissao  := RoundTo(vltotalcomissao / nuparcela, -2);
  for j := 0 to nuparcela - 1 do
  begin
    new;
    if j = nuparcela - 1 then
    begin
      Items[j].valor      := vloriginal;
      Items[j].vlcomissao := vloriginalcomissao;
      Exit;
    end;
    Items[j].valor      := vlparcela;
    Items[j].vlcomissao := vlparcelacomissao;
    vloriginal          := vloriginal - Items[j].valor;
    vloriginalcomissao  := vloriginalcomissao - Items[j].vlcomissao;
  end;
end;

procedure TParcelaList.ColocarParcelaICMSSubTribPrimeiro;
var
  parcela : TParcela;
  I: Integer;
begin
  parcela := TParcela.Create;
  try
    for I := count-1 downto 0 do
    begin
      if i = 0 then
      begin
        Break;
      end;
      parcela.dtvencimento := Items[i-1].dtvencimento;
      parcela.valor        := Items[i-1].valor;
      parcela.vlcomissao   := Items[i-1].vlcomissao;

      Items[i-1].dtvencimento := Items[i].dtvencimento;
      Items[i-1].valor        := Items[i].valor;
      Items[i-1].vlcomissao   := Items[i].vlcomissao;

      Items[i].dtvencimento := parcela.dtvencimento;
      Items[i].valor        := parcela.valor;
      Items[i].vlcomissao   := parcela.vlcomissao;
    end;
  finally
    FreeAndNil(parcela);
  end;
end;

function TParcelaList.GetItem(Index: Integer): TParcela;
begin
  Result := TParcela(Inherited Items[Index]);
end;

function TParcelaList.New: TParcela;
begin
  Result := TParcela.Create;
  Add(Result);
end;

procedure TParcelaList.SetItem(Index: Integer; const Value: TParcela);
begin
  Put(Index, Value);
end;

end.
