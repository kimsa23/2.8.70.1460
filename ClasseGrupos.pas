unit ClasseGrupos;

interface

uses
  System.Classes,
  SysUtils, controls, Contnrs,
  classequery, classeretornasql, classedao,
  uConstantes;

type
  TGrupos = class(TPersintentObject)
  private
    Fcdgrupos: Integer;
    Fnmgrupos: string;
  public
    [keyfield]
    property cdgrupos : Integer read Fcdgrupos write Fcdgrupos;
    property nmgrupos : string read Fnmgrupos write Fnmgrupos;
  end;
  TgruposList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Tgrupos;
    procedure SetItem(Index: Integer; const Value: Tgrupos);
  public
    function New: Tgrupos;
    property Items[Index: Integer]: Tgrupos read GetItem write SetItem;
    function Ler(nmcdfield: string; codigo:Integer):Boolean;overload;
  end;

implementation

function TgruposList.GetItem(Index: Integer): Tgrupos;
begin
  Result := Tgrupos(Inherited Items[Index]);
end;

function TgruposList.Ler(nmcdfield: string; codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_grpusu, codigo, nmcdfield));
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

function TgruposList.New: Tgrupos;
begin
  Result := Tgrupos.Create;
  Add(Result);
end;

procedure TgruposList.SetItem(Index: Integer; const Value: Tgrupos);
begin
  Put(Index, Value);
end;

end.
