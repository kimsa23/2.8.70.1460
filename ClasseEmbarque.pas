unit ClasseEmbarque;

interface

uses
  System.Actions, System.UITypes,
  controls, SysUtils, Contnrs, DB, dialogs,
  classequery, classeRetornaSql, classetransportadora, classeempresa, classedao,
  classegerar, classerota,
  uconstantes, ustrings;

Type
  TItEmbarque = class(TRegistroQuipos)
    private
      Fvlpeso: currency;
      Fvlfrete: currency;
      Fvltotal: currency;
      Fvlpedagio: currency;
      Fpsliquido: double;
      Fpsbruto: double;
      Fnuserie: integer;
      Fcdembarque: integer;
      Fcdcte: integer;
      Fnunota: integer;
      Fcditembarque: integer;
      Fcddestinatario: Largeint;
      Fdsxml: string;
      Fcdremetente: Largeint;
      Fnuchavenfe: string;
      Fdtemissao: TDate;
    public
      [keyfield]
      property cditembarque : integer read Fcditembarque write fcditembarque;
      [fk]
      property cdembarque : integer read Fcdembarque write fcdembarque;
      [fl]
      property cdremetente : Largeint read Fcdremetente write fcdremetente;
      [fk]
      property cddestinatario : Largeint read Fcddestinatario write fcddestinatario;
      [fk]
      property cdcte : integer read Fcdcte write fcdcte;
      property dsxml : string read Fdsxml write fdsxml;
      property nuchavenfe : string read Fnuchavenfe write fnuchavenfe;
      property nuserie : integer read Fnuserie write fnuserie;
      property nunota : integer read Fnunota write fnunota;
      property dtemissao : TDate read Fdtemissao write fdtemissao;
      property vltotal : currency read Fvltotal write fvltotal;
      property psliquido : double read Fpsliquido write fpsliquido;
      property psbruto : double read Fpsbruto write fpsbruto;
      property vlfrete : currency read Fvlfrete write fvlfrete;
      property vlpeso : currency read Fvlpeso write fvlpeso;
      property vlpedagio : currency read Fvlpedagio write fvlpedagio;
  end;
  TTpEmbarque = class(TRegistroQuipos)
  private
    fcdtpembarque : integer;
    fcdctetptomador : integer;
    fcdproduto : integer;
    fcdcondpagto : Integer;
    fcdctetpprevisaoentrega : integer;
    fcdctetpprevisaoentregah : integer;
    fnmtpembarque : string;
  public
    [keyfield]
    property cdtpembarque : integer read fcdtpembarque write fcdtpembarque;
    [fk]
    property cdctetptomador : integer read fcdctetptomador write fcdctetptomador;
    [fk]
    property cdproduto : integer read fcdproduto write fcdproduto;
    [fk]
    property cdcondpagto : Integer read fcdcondpagto write fcdcondpagto;
    [fk]
    property cdctetpprevisaoentrega : integer read fcdctetpprevisaoentrega write fcdctetpprevisaoentrega;
    [fk]
    property cdctetpprevisaoentregah : integer read fcdctetpprevisaoentregah write fcdctetpprevisaoentregah;
    property nmtpembarque : string read fnmtpembarque write fnmtpembarque;
  end;
  TItembarqueList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItembarque;
    procedure SetItem(Index: Integer; const Value: TItembarque);
  public
    function  New: TItembarque;
    property  Items[Index: Integer]: TItembarque read GetItem write SetItem;
    function  Insert(cdembarque:integer): TItembarque;overload;
    procedure Insert(dataset: TDataset);overload;
    procedure Excluir(cditembarque:integer);
    function  sql_insert:string;
    function Ler(codigo:Integer):Boolean; overload;
    function Ler(Dataset: TDataset):boolean; overload;
    function  get_qtembarque: Integer;
    function  get_vlfrete:currency;
    function  get_qtpeso: double;
    function  boctegerado:boolean;
    function  boctesemgerar:boolean;
  end;
  TEmbarque = class(TRegistroQuipos)
    private
      FItembarque: TItembarqueList;
      fmsgerro : string;
      ftransportadora: ttransportadora;
      fvlavgfretepeso : Currency;
      ftpembarque : ttpembarque;
      fcdembarque : Integer;
      fcdtpembarque : Integer;
      fcdstembarque : Integer;
      fcdtransportadora : Largeint;
      fcdrpa : Integer;
      fcdmdfe : Integer;
      fcdrota : Integer;
      fdtemissao : TDate;
      fvlfrete : Currency;
      Fcdveiculo: integer;
      Fqtentrega: integer;
      procedure clear;
      procedure setcdtransportadora(const Value: Largeint);
      function getqtentrega: integer;
    public
      property tpembarque : ttpembarque read ftpembarque write ftpembarque;
      property Itembarque : TItembarqueList read FItembarque write FItembarque;
      property transportadora : ttransportadora read ftransportadora write Ftransportadora;
      property msgerro : string read fmsgerro write fmsgerro;
      [keyfield]
      property cdembarque : Integer read fcdembarque write fcdembarque;
      [fk]
      property cdtpembarque : integer read fcdtpembarque write fcdtpembarque;
      [fk]
      property cdstembarque : Integer read fcdstembarque write fcdstembarque;
      [fk]
      property cdtransportadora : Largeint read fcdtransportadora write setcdtransportadora;
      [fk]
      property cdveiculo : integer read Fcdveiculo write fcdveiculo;
      property qtentrega : integer read getqtentrega write fqtentrega;
      [fk]
      property cdrpa : Integer read fcdrpa write fcdrpa;
      [fk]
      property cdmdfe : Integer read fcdmdfe write fcdmdfe;
      [fk]
      property cdrota : Integer read fcdrota write fcdrota;
      property dtemissao : TDate read fdtemissao write fdtemissao;
      property vlfrete : Currency read fvlfrete write fvlfrete;
      property vlavgfretepeso : Currency read fvlavgfretepeso write fvlavgfretepeso;
      constructor create;
      destructor  destroy; override;
      function    get_vlfretepeso:Currency;
      function    check_campo_obrigatorio:boolean;
      procedure   Novo;
  end;

implementation

uses Classes;

function TEmbarque.check_campo_obrigatorio:boolean;
begin
  result := false;
  if cdtpembarque = 0 then
  begin
    MessageDlg('Tipo é um campo obrigatório.', mtInformation, [mbOK], 0);
    exit;
  end;
  if cdtransportadora = 0 then
  begin
    MessageDlg('Transportadora é um campo obrigatório.', mtInformation, [mbOK], 0);
    exit;
  end;
  result := true;
end;

constructor TEmbarque.create;
begin
  inherited create;
  ftransportadora := ttransportadora.create;
  ftpembarque := TTpEmbarque.create;
  fitembarque := titembarqueList.create;
end;

destructor TEmbarque.destroy;
begin
  FreeAndNil(fItembarque);
  freeandnil(ftransportadora);
  FreeAndNil(ftpembarque);
  inherited;
end;

function TEmbarque.get_vlfretepeso: Currency;
var
  rota : TRota;
begin
  rota := tRota.create;
  try
    rota.cdrota := cdrota;
    result := rota.get_vlfretepeso(qtentrega);
  finally
    freeandnil(rota);
  end;
end;

procedure TEmbarque.setcdtransportadora(const Value: Largeint);
var
  veiculo : tveiculo;
begin
  if (state = dsInsert) or (state = dsedit) then
  begin
    veiculo := tveiculo.create;
    try
      if not transportadora.Select(value) then
      begin
        msgerro := Format(_msg_codigo_inexistente_na_tabela, [value.ToString, maiuscula(_transportadora)]);
        exit;
      end;
      if transportadora.cdveiculo = 0 then
      begin
        msgerro := 'Transportadora não possui veículo cadastrado.';
        exit;
      end;
      veiculo.Select(transportadora.cdveiculo);
      if veiculo.cdtransportadora = 0 then
      begin
        msgerro := 'Veículo da Transportadora não possui proprietário.';
        exit;
      end;
      cdveiculo := transportadora.cdveiculo;
    finally
      freeandnil(veiculo);
    end;
  end;
  fcdtransportadora := value;
end;

function TItembarqueList.boctegerado: boolean;
var
  i : integer;
begin
  result := true;
  for i := 0 to count - 1 do
  begin
    result := items[i].cdcte <> 0;
    if not result then
    begin
      break;
    end;
  end;
end;

function TItembarqueList.boctesemgerar: boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to count - 1 do
  begin
    result := items[i].cdcte = 0;
    if result then
    begin
      break;
    end;
  end;
end;

procedure TItembarqueList.Excluir(cditembarque: integer);
var
  i : integer;
begin
  for i := 0 to count - 1 do
  begin
    if items[i].cditembarque = cditembarque then
    begin
      Delete(i);
      break;
    end;
  end;
end;

function TItembarqueList.GetItem(Index: Integer): TItembarque;
begin
  Result := TItembarque(Inherited Items[Index]);
end;

function TItembarqueList.get_qtembarque: Integer;
var
  i : integer;
  lista : TStrings;
begin
  lista := TStringList.Create;
  try
    for i := 0 to count - 1 do
    begin
      if lista.indexof(items[i].cddestinatario.tostring) = -1 then
      begin
        lista.Add(items[i].cddestinatario.tostring);
      end;
    end;
    result := lista.count;
  finally
    FreeAndNil(lista);
  end;
end;

function TItembarqueList.get_qtpeso: double;
var
  i : integer;
begin
  result := 0;
  for i := 0 to count - 1 do
  begin
    result := result + items[i].psbruto;
  end;
end;

function TItembarqueList.get_vlfrete: currency;
var
  i : integer;
begin
  result := 0;
  for i := 0 to count - 1 do
  begin
    result := result + items[i].vlfrete;
  end;
end;

function TItembarqueList.Insert(cdembarque: integer): TItembarque;
begin
  result := new;
  result.state     := dsInsert;
  Result.cdembarque   := cdembarque;
  Result.cditembarque := QGerar.GerarCodigo(_itembarque);
end;

procedure TItembarqueList.Insert(dataset: TDataset);
var
  i : integer;
begin
  New;
  i := count - 1;
  items[i].Select(dataset);
end;

function TItembarqueList.Ler(Dataset: TDataset): boolean;
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

function TItembarqueList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itembarque, codigo, _cdembarque));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      New.select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TItembarqueList.New: TItembarque;
begin
  Result := TItembarque.Create;
  Add(Result);
end;

procedure TItembarqueList.SetItem(Index: Integer; const Value: TItembarque);
begin
  Put(Index, Value);
end;

function TItembarqueList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    if Items[i].state = dsinsert then
    begin
      result := result + Items[i].insert(true)+#13;
    end;
  end;
end;

function TEmbarque.getqtentrega: integer;
begin
  result := itembarque.get_qtembarque;
end;

procedure TEmbarque.Novo;
begin
  clear;
  itembarque.clear;
  state := dsinsert;
end;

procedure TEmbarque.clear;
begin
  cdusuarioi       := 0;
  cdusuarioa       := 0;
  cdcomputadori    := 0;
  cdcomputadora    := 0;
  tsinclusao       := 0;
  tsalteracao      := 0;
  cdempresa        := 0;
  fcdembarque       := 0;
  fcdtpembarque     := 0;
  fcdstembarque     := 0;
  fcdtransportadora := 0;
  fcdveiculo        := 0;
  fqtentrega        := 0;
  fcdrpa            := 0;
  fcdmdfe           := 0;
  fcdrota           := 0;
  fdtemissao        := 0;
  fvlfrete          := 0;
  fvlavgfretepeso   := 0;
end;

end.
