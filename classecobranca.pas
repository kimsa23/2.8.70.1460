unit classecobranca;

interface

uses
  controls, classes, sysutils, dialogs, Contnrs, db,
  uRotinas, uprogressbar, usystem, ustrings, udatahora, uregistro,
  uconstantes,
  classeretornasql, classeempresa, classeconta, classeaplicacao, classeregistrainformacao,
  classeexecutasql, classegerar, classequery, classedao;

Type
  TItCobranca = class(TRegistroQuipos)
  private
    Fnuduplicata: string;
    Fcdduplicata: integer;
    Fcditcobranca: integer;
    Fcdcobranca: integer;
  public
    [keyfield]
    property cdcobranca : integer read Fcdcobranca write fcdcobranca;
    property cdduplicata : integer read Fcdduplicata write fcdduplicata;
    property nuduplicata : string read Fnuduplicata write fnuduplicata;
    property cditcobranca : integer read Fcditcobranca write fcditcobranca;
    function Insert(boscript:boolean=false): String;
  end;
  TItCobrancaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItCobranca;
    procedure SetItem(Index: Integer; const Value: TItCobranca);
  public
    function New: TItCobranca;
    property Items[Index: Integer]: TItCobranca read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(DataSet:TDataset):Boolean;overload;
  end;
  TCobranca = class(TRegistroQuipos)
  private
    Fnuremessa: integer;
    Fcdsetboleto: integer;
    Fdtemissao: TDate;
    Fcdcobranca: integer;
    Fitcobranca: titcobrancalist;
  public
    property itcobranca : titcobrancalist read Fitcobranca write fitcobranca;
    [keyfield]
    property cdcobranca : integer read Fcdcobranca write fcdcobranca;
    property nuremessa : integer read Fnuremessa write fnuremessa;
    property dtemissao : TDate read Fdtemissao write fdtemissao;
    [fk]
    property cdsetboleto : integer read Fcdsetboleto write fcdsetboleto;
    constructor create;
    destructor destroy; override;
    function gerar_Cobranca_Faturamento(cdfaturamento:string):boolean;
    function Insert(boscript:boolean=false): String;
  end;

implementation

constructor TCobranca.create;
begin
  inherited;
  fitcobranca := titcobrancalist.create;
end;

destructor TCobranca.destroy;
begin
  freeandnil(fitcobranca);
  inherited;
end;

function TCobranca.gerar_Cobranca_Faturamento(cdfaturamento: string): boolean;
var
  sql : tstringlist;
  q : TClasseQuery;
begin
  sql := tstringlist.create;
  q   := TClasseQuery.Create('select d.cdduplicata,d.nuduplicata '+
                             'from duplicata d '+
                             'inner join itfatsaida i on i.cdsaida=d.cdsaida and d.cdempresa=i.cdempresa '+
                             'where d.cdempresa='+empresa.cdempresa.ToString+' and d.nunossonumero is not null and i.cdfaturamento='+cdfaturamento);
  try
    cdsetboleto := qregistro.InteirodoCodigo(_faturamento, cdfaturamento, _cdsetboleto);
    sql.add(Insert(true));
    while not q.q.Eof do
    begin
      itcobranca.New;
      itcobranca.Items[itcobranca.Count-1].cdcobranca := cdcobranca;
      itcobranca.Items[itcobranca.Count-1].cdduplicata := q.q.fieldbyname(_cdduplicata).asinteger;
      itcobranca.Items[itcobranca.Count-1].nuduplicata := q.q.fieldbyname(_nuduplicata).asstring;
      sql.Add(itcobranca.Items[itcobranca.Count-1].Insert(true));
      q.q.next;
    end;
    result := ExecutaScript(sql);
  finally
    freeandnil(sql);
    freeandnil(q);
  end;
end;

function TCobranca.Insert(boscript: boolean): String;
begin
  if dtemissao = 0 then
  begin
    dtemissao := dtbanco;
  end;
  if cdcobranca = 0 then
  begin
    cdcobranca := QGerar.GerarCodigo(_cobranca);
  end;
  result := inherited insert(boscript);
end;

function TItCobrancaList.GetItem(Index: Integer): TItCobranca;
begin
  Result := TItCobranca(Inherited Items[Index]);
end;

function TItCobrancaList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itcobranca, codigo, _cdcobranca));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TItCobrancaList.Ler(DataSet: TDataset): Boolean;
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

function TItCobrancaList.New: TItCobranca;
begin
  Result := TItCobranca.Create;
  Add(Result);
end;

procedure TItCobrancaList.SetItem(Index: Integer; const Value: TItCobranca);
begin
  Put(Index, Value);
end;

function TItCobranca.Insert(boscript: boolean): String;
begin
  if cditcobranca = 0 then
  begin
    cditcobranca := QGerar.GerarCodigo(_itcobranca);
  end;
  result := inherited insert(boscript);
end;

end.
