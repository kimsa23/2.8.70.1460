unit classemovto;

interface

uses
  forms, sysutils, Dialogs, Classes, Controls, DB, Contnrs,
  ustrings, uconstantes, udatahora, uRegistro, uprogressbar,
  classeaplicacao, classeretornasql, classeempresa, classeregistrainformacao,
  classegerar, classeexecutasql, classedao;

type
  TTpMovto = class(TRegistroQuipos)
  private
    fcdtpmovto : Integer;
    fnmtpmovto : string;
    ftpmovto : string;
    fbovalor : string;
    fbovlvenda : string;
  public
    [keyfield]
    property cdtpmovto : Integer read fcdtpmovto write fcdtpmovto;
    property nmtpmovto : string read fnmtpmovto write fnmtpmovto;
    property tpmovto : string read ftpmovto write ftpmovto;
    property bovalor : string read fbovalor write fbovalor;
    property bovlvenda : string read fbovlvenda write fbovlvenda;
  end;
  TItmovto = class(TRegistroQuipos)
  private
    fcditmovto : Integer;
    fcdmovto : Integer;
    fcdcntcusto : integer;
    fcdproduto : integer;
    fcditlote : Integer;
    fqtitem : Double;
    fvlunitario : Currency;
    fvltotal : Currency;
    fcddigitado : string;
    fvlsaldovalor : Currency;
    fdsobservacao : string;
    fqtitem2 : Double;
    fcditordproducaomaterial: integer;
  public
    [keyfield]
    property cditmovto : Integer read fcditmovto write fcditmovto;
    [fk]
    property cditordproducaomaterial : integer read fcditordproducaomaterial write fcditordproducaomaterial;
    [fk]
    property cdmovto : Integer read fcdmovto write fcdmovto;
    [fk]
    property cdcntcusto : integer read fcdcntcusto write fcdcntcusto;
    [fk]
    property cdproduto : integer read fcdproduto write fcdproduto;
    [fk]
    property cditlote : Integer read fcditlote write fcditlote;
    property qtitem : Double read fqtitem write fqtitem;
    property vlunitario : Currency read fvlunitario write fvlunitario;
    property vltotal : Currency read fvltotal write fvltotal;
    property cddigitado : string read fcddigitado write fcddigitado;
    property vlsaldovalor : Currency read fvlsaldovalor write fvlsaldovalor;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    property qtitem2 : Double read fqtitem2 write fqtitem2;
    function Delete(boscript:boolean=false):string;
  end;
  TItMovtoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItMovto;
    procedure SetItem(Index: Integer; const Value: TItMovto);
  public
    function New: TItMovto;
    property Items[Index: Integer]: TItMovto read GetItem write SetItem;
    function sqlInsert:string;
    function sqlDelete:string;
    function Ler(codigo:Integer; cdfield:string=_cdmovto):Boolean;overload;
    function Ler(Dataset: TDataset):boolean;overload;
    function getqtitem:double;
  end;
  TMovto = class(TRegistroQuipos)
  private
    FItMovto: TItMovtoList;
    ftpmovto : TTpMovto;
    fcdmovto : Integer;
    fcdtpmovto : Integer;
    fcditrim : Integer;
    fcditsaida : Integer;
    fcditentrada : Integer;
    fcditordserv : Integer;
    fcditmovtobaixa : Integer;
    fcditlocacaoacessorio : integer;
    fcdordproducao : Integer;
    fcditordproducaorecurso : Integer;
    fcditordproducaomaterial : integer;
    fcditordproducao : integer;
    fcdapontamento : Integer;
    fdtemissao : TDate;
  public
    property tpmovto : TTpMovto read fTpMovto write fTpMovto;
    property ItMovto : TItMovtoList read FItMovto write FItMovto;
    [keyfield]
    property cdmovto : Integer read fcdmovto write fcdmovto;
    [fk]
    property cdtpmovto : Integer read fcdtpmovto write fcdtpmovto;
    [fk]
    property cditrim : Integer read fcditrim write fcditrim;
    [fk]
    property cditsaida : Integer read fcditsaida write fcditsaida;
    [fk]
    property cditentrada : Integer read fcditentrada write fcditentrada;
    [fk]
    property cditordserv : Integer read fcditordserv write fcditordserv;
    [fk]
    property cditmovtobaixa : Integer read fcditmovtobaixa write fcditmovtobaixa;
    [fk]
    property cditlocacaoacessorio : integer read fcditlocacaoacessorio write fcditlocacaoacessorio;
    [fk]
    property cdordproducao : Integer read fcdordproducao write fcdordproducao;
    [fk]
    property cditordproducaorecurso : Integer read fcditordproducaorecurso write fcditordproducaorecurso;
    [fk]
    property cditordproducaomaterial : integer read fcditordproducaomaterial write fcditordproducaomaterial;
    [fk]
    property cditordproducao : integer read fcditordproducao write fcditordproducao;
    [fk]
    property cdapontamento : Integer read fcdapontamento write fcdapontamento;
    [fk]
    property dtemissao : TDate read fdtemissao write fdtemissao;
    constructor create;
    destructor destroy; override;
    function Delete(boscript: boolean=false):string;
    class function GerarMovtoProdutoOP(cdordproducao, cdproduto: integer; cddigitado: string; qtitem: double): string;
    class function GerarBaixa(cdtpmovto1, cdcntcusto1, cdproduto1: integer; qtestoque:double):boolean;
    class function zerarestoque(cdgrupo: integer; bosubsubgrupo: Boolean): Boolean;
  end;
  TMovtoList = class(TObjectList)
  private
    function GetItem(Index: Integer): TMovto;
    procedure SetItem(Index: Integer; const Value: TMovto);
  public
    function New: TMovto;
    property Items[Index: Integer]: TMovto read GetItem write SetItem;
    function Ler(nmcdfield: string; codigo:Integer):Boolean;overload;
    function Ler(sqlwhere: string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
  end;

implementation

uses classequery, classeordproducao;

constructor TMovto.create;
begin
  inherited create;
  ftpmovto := TTpMovto.create;
  fitmovto := titmovtoList.create;
end;

function TMovto.Delete(boscript: boolean): string;
var
  sql : TStrings;
begin
  sql := TStringList.Create;
  try
    ItMovto.Ler(cdmovto);
    sql.Text := ItMovto.sqlDelete + inherited delete(true);
    if not boscript then
    begin
      ExecutaScript(sql);
    end
    else
    begin
      result := sql.Text;
    end;
  finally
    FreeAndNil(sql);
  end;
end;

destructor TMovto.destroy;
begin
  FreeAndNil(fItmovto);
  FreeAndNil(ftpmovto);
  inherited;
end;

class function TMovto.GerarBaixa(cdtpmovto1, cdcntcusto1, cdproduto1: integer; qtestoque: double): boolean;
var
  movto : TMovto;
begin
  movto := tmovto.create;
  try
    if not movto.Select(QRegistro.CodigodoWhere(_movto, _cdtpmovto+'='+inttostr(cdtpmovto1)+' and '+_dtemissao+'='+GetDtBanco(DtBanco))) then
    begin
      movto.cdmovto   := QGerar.GerarCodigo(_movto);
      movto.dtemissao := DtBanco;
      movto.cdtpmovto := cdtpmovto1;
      movto.dtemissao := DtBanco;
      movto.Insert;
    end;
    movto.itmovto.New;
    movto.itmovto.Items[0].cdmovto    := movto.cdmovto;
    movto.itmovto.Items[0].cditmovto  := QGerar.GerarCodigo(_itmovto);
    movto.itmovto.Items[0].qtitem     := qtestoque;
    movto.itmovto.Items[0].cdcntcusto := cdcntcusto1;
    movto.itmovto.Items[0].cdproduto  := cdproduto1;
    movto.itmovto.Items[0].cddigitado := IntToStr(cdproduto1);
    movto.ItMovto.Items[0].insert;
    result := True;
  finally
    FreeAndNil(movto);
  end;
end;

class function TMovto.GerarMovtoProdutoOP(cdordproducao, cdproduto: integer; cddigitado: string; qtitem: double): string;
var
  movto : TMovto;
begin
  result := '';
  movto := tmovto.create;
  try
    movto.cdmovto       := QGerar.GerarCodigo(_movto);
    movto.dtemissao     := DtBanco;
    movto.cdtpmovto     := 1; //TODO - Entrada de estoque - os códigos de tipo de movimentação de estoque devem ser fixo
    movto.cdordproducao := cdordproducao;
    movto.itmovto.New;
    movto.itmovto.Items[0].cdmovto    := movto.cdmovto;
    movto.itmovto.Items[0].cditmovto  := QGerar.GerarCodigo(_itmovto);
    movto.itmovto.Items[0].cdproduto  := cdproduto;
    movto.ItMovto.Items[0].cddigitado := cddigitado;
    movto.ItMovto.Items[0].qtitem     := qtitem;
    result := movto.Insert(true) + #13+ movto.ItMovto.sqlInsert;
  finally
    FreeAndNil(movto);
  end;
end;

class function TMovto.zerarestoque(cdgrupo: integer; bosubsubgrupo: Boolean): Boolean;
var
  c : TClasseQuery;
  function sql_subgrupo:string;
  var
    nunivel : string;
    sa : tClasseQuery;
  begin
    if not bosubsubgrupo then
    begin
      result := ' and cdgrupo='+inttostr(cdgrupo);
    end;
    result := '';
    nunivel          := NomedoCodigo(_grupo, IntToStr(cdgrupo), _nunivel);
    sa := tClasseQuery.Create('select cdgrupo from grupo where cdempresa='+empresa.cdempresa.tostring+' and nunivel like '''+nunivel+'%''');
    try
      while not sa.q.eof do
      begin
        if result = '' then
        begin
          result := ' and cdgrupo in ('+sa.q.fields[0].asstring
        end
        else
        begin
          result := result + ', '+sa.q.fields[0].asstring;
        end;
        sa.q.next;
      end;
      if result <> '' then
      begin
        result := result + ')';
      end;
    finally
      sa.Free;
    end;
  end;
begin
  c := TClasseQuery.Create('select p.cdproduto,p.qtestoque '+
                           'from produto p '+
                           'left join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
                           'where t.BOESTOQUE=''S'' and p.qtestoque<>0 and p.cdempresa='+empresa.cdempresa.tostring+' '+sql_subgrupo);
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    frmprogressbar.Show;
    while not c.q.Eof do
    begin
      frmprogressbar.gau.Progress := c.q.RecNo;
      Application.ProcessMessages;
      if c.q.FieldByName(_qtestoque).AsFloat < 0 then
      begin
        GerarBaixa(2, 0, c.q.fieldbyname(_cdproduto).asInteger, c.q.fieldbyname(_qtestoque).AsFloat* (-1))
      end
      else
      begin
        GerarBaixa(1, 0, c.q.fieldbyname(_cdproduto).asInteger, c.q.fieldbyname(_qtestoque).AsFloat);
      end;
      c.q.Next;
    end;
    result := True;
  finally
    freeandnil(c);
    freeandnil(frmprogressbar);
  end;
end;

function TMovtoList.GetItem(Index: Integer): TMovto;
begin
  Result := TMovto(Inherited Items[Index]);
end;

function TMovtoList.Ler(nmcdfield: string; codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_Movto, codigo, nmcdfield));
  try
    result := ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMovtoList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_Movto, sqlwhere));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TMovtoList.New: TMovto;
begin
  Result := TMovto.Create;
  Add(Result);
end;

procedure TMovtoList.SetItem(Index: Integer; const Value: TMovto);
begin
  Put(Index, Value);
end;

function TItmovto.Delete(boscript: boolean): string;
var
  itordproducaomaterial : TItOrdProducaoMaterial;
  sql : TStrings;
begin
  result := '';
  itordproducaomaterial := TItOrdProducaoMaterial.create;
  sql := TStringList.Create;
  try
    if cditordproducaomaterial > 0 then
    begin
      itordproducaomaterial.Select(cditordproducaomaterial);
      itordproducaomaterial.qtconsumo := itordproducaomaterial.qtconsumo - qtitem;
      sql.Add(itordproducaomaterial.Update(true));
    end;
    sql.Add(inherited delete(true));
    result := sql.Text;
    if not boscript then
    begin
      ExecutaScript(sql);
    end;
  finally
    FreeAndNil(itordproducaomaterial);
    FreeAndNil(sql);
  end;
end;

function TItMovtoList.sqlInsert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].Insert(true)+#13;
  end;
end;

function TItMovtoList.GetItem(Index: Integer): TItMovto;
begin
  Result := TItMovto(Inherited Items[Index]);
end;

function TItMovtoList.getqtitem: double;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to count - 1 do
  begin
    result := result + items[i].qtitem;
  end;
end;

function TItMovtoList.Ler(Dataset: TDataset): boolean;
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

function TItMovtoList.New: TItMovto;
begin
  Result := TItMovto.Create;
  Add(Result);
end;

procedure TItMovtoList.SetItem(Index: Integer; const Value: TItMovto);
begin
  Put(Index, Value);
end;

function TItMovtoList.Ler(codigo: Integer; cdfield:string=_cdmovto):boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itmovto, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TItMovtoList.sqlDelete: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    if result <> '' then
    begin
      result := result + #13;
    end;
    result := result + Items[i].Delete(true);
  end;
end;

function TMovtoList.Ler(DataSet: TDataset): boolean;
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
