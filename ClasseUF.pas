unit ClasseUF;

interface

uses
  System.Classes,
  SysUtils, controls, Contnrs,
  classedao, classequery, classeretornasql,
  uConstantes, ustrings;

type
  TUFLimite = class(TPersintentObject)
  private
    fcduflimite: integer;
    fcduf: integer;
  public
   [KeyField]
   property cduf : integer read fcduf write fcduf;
   [KeyField]
   property cduflimite : integer read fcduflimite write fcduflimite;
  end;
  TUFLimiteList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TUFLimite;
    procedure SetItem(Index: Integer; const Value: TUFLimite);
  public
    function New: TUFLimite;
    property Items[Index: Integer]: TUFLimite read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
    function Elimite(cduf:Integer):boolean;
  end;
  TUFOrigemDestino = class(TPersintentObject)
  protected
    Falicms: double;
    Fcdufdestino: integer;
    Fcduf: integer;
  public
    [keyfield]
    property cduf : integer read Fcduf write fcduf;
    [keyfield]
    property cdufdestino : integer read Fcdufdestino write fcdufdestino;
    [AObrigatorio]
    property alicms : double read Falicms write falicms;
  end;
  TUFOrigemDestinoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TUFOrigemDestino;
    procedure SetItem(Index: Integer; const Value: TUFOrigemDestino);
  public
    function New: TUFOrigemDestino;
    property Items[Index: Integer]: TUFOrigemDestino read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
  end;
  TUF = class(TPersintentObject)
  private
    fuflimite: TUFLimiteList;
  protected
    fuforigemdestino: tuforigemdestinolist;
    Falipi: double;
    Fsguf: string;
    Fnmuf: string;
    Falicms: double;
    Fbodigito9: String;
    Fcduf: integer;
  public
    property uflimite : TUFLimiteList read fuflimite write fuflimite;
    property uforigemdestino : tuforigemdestinolist read fuforigemdestino write fuforigemdestino;
    [keyfield]
    property cduf : integer read Fcduf write fcduf;
    [AObrigatorio]
    property nmuf : string read Fnmuf write fnmuf;
    [AObrigatorio]
    property sguf : string read Fsguf write fsguf;
    [AObrigatorio]
    property alicms : double read Falicms write falicms;
    [AObrigatorio]
    property alipi : double read Falipi write falipi;
    property bodigito9 : string read Fbodigito9 write fbodigito9;
    constructor create;
    destructor destroy; override;
    class function SiglaParaCodigo(sigla:string):integer;
  end;

implementation

uses uRegistro;

function TUFOrigemDestinoList.GetItem(Index: Integer): TUFOrigemDestino;
begin
  Result := TUFOrigemDestino(Inherited Items[Index]);
end;

function TUFOrigemDestinoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_UFOrigemDestino, codigo, _cduf));
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

function TUFOrigemDestinoList.New: TUFOrigemDestino;
begin
  Result := TUFOrigemDestino.Create;
  Add(Result);
end;

procedure TUFOrigemDestinoList.SetItem(Index: Integer; const Value: TUFOrigemDestino);
begin
  Put(Index, Value);
end;

constructor TUF.create;
begin
  inherited;
  fuforigemdestino := tuforigemdestinolist.create;
  fuflimite := tuflimitelist.create;
end;

destructor TUF.destroy;
begin
  freeandnil(fuforigemdestino);
  freeandnil(fuflimite);
  inherited;
end;

class function TUF.SiglaParaCodigo(sigla: string): integer;
begin
  result := qregistro.codigodostring(_uf, sigla, _sguf);
end;

function TUFLimiteList.Elimite(cduf: Integer): boolean;
var
  I: Integer;
begin
  result := False;
  for I := 0 to Count - 1 do
  begin
    if Items[i].cduflimite = cduf then
    begin
      result := True;
      Break;
    end;
  end;
end;

function TUFLimiteList.GetItem(Index: Integer): TUFLimite;
begin
  Result := TUFLimite(Inherited Items[Index]);
end;

function TUFLimiteList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_uflimite, codigo, _cduf));
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

function TUFLimiteList.New: TUFLimite;
begin
  Result := TUFLimite.Create;
  Add(Result);
end;

procedure TUFLimiteList.SetItem(Index: Integer; const Value: TUFLimite);
begin
  Put(Index, Value);
end;

end.
