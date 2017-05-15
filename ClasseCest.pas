unit ClasseCest;

interface

uses
  System.Actions, System.Classes, System.UITypes,
  SysUtils, controls, Contnrs,
  classequery, classeretornasql,
  uRegistro, uConstantes, ustrings;

type
  TCest = class
    nucest : string;
    nuncm : string;
    nmcest : string;
  end;
  TCestList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TCest;
    procedure SetItem(Index: Integer; const Value: TCest);
  public
    function New: TCest;
    property Items[Index: Integer]: TCest read GetItem write SetItem;
  end;
  TCestDAO = class
    class function Read(nuncm: string; ACestList: TCestList): boolean;
  end;

implementation

function TCestList.GetItem(Index: Integer): TCest;
begin
  Result := TCest(Inherited Items[Index]);
end;

function TCestList.New: TCest;
begin
  Result := TCest.Create;
  Add(Result);
end;

procedure TCestList.SetItem(Index: Integer; const Value: TCest);
begin
  Put(Index, Value);
end;

class function TCestDAO.Read(nuncm: string; ACestList: TCestList): boolean;
var
  q : TClasseQuery;
begin
  if nuncm = '' then
  begin
    result := false;
    exit;
  end;
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_cest, nuncm, _nuncm));
  try
    ACestList.Clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      q.q.Close;
      q.q.open(QRetornaSQL.get_select_from(_cest, copy(nuncm, 1, 7), _nuncm));
      result := q.q.RecordCount > 0;
      if not result then
      begin
        q.q.Close;
        q.q.open(QRetornaSQL.get_select_from(_cest, copy(nuncm, 1, 6), _nuncm));
        result := q.q.RecordCount > 0;
        if not result then
        begin
          q.q.Close;
          q.q.open(QRetornaSQL.get_select_from(_cest, copy(nuncm, 1, 5), _nuncm));
          result := q.q.RecordCount > 0;
          if not result then
          begin
            q.q.Close;
            q.q.open(QRetornaSQL.get_select_from(_cest, copy(nuncm, 1, 4), _nuncm));
            result := q.q.RecordCount > 0;
            if not result then
            begin
              q.q.Close;
              q.q.open(QRetornaSQL.get_select_from(_cest, copy(nuncm, 1, 2), _nuncm));
              result := q.q.RecordCount > 0;
              if not result then
              begin
                exit;
              end;
            end;
          end;
        end;
      end;
    end;
    while not q.q.Eof do
    begin
      acestlist.New;
      acestlist.Items[acestlist.Count - 1].nucest := q.q.fieldbyname(_nucest).AsString;
      acestlist.Items[acestlist.Count - 1].nuncm  := q.q.fieldbyname(_nuncm).AsString;
      acestlist.Items[acestlist.Count - 1].nmcest := q.q.fieldbyname(_nmcest).AsString;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

end.
