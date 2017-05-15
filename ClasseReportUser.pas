unit ClasseReportUser;

interface

uses sysutils, Contnrs, Classes,
  classequery, classeretornasql, classedao,
  uconstantes, uregistro;

Type
  TReportUser = class(TRegistroQuipos)
  private
    Fcdtpreport: integer;
    Fcdstreport: integer;
    Fcdreportuser: integer;
    Fcdform: integer;
    Fnmreportuser: string;
    Fnusequenciamenu: integer;
    Fdsrelatorio: string;
    Fdsscript: string;
    Fdstitulo: string;
    Fdsopcoes: string;
    Fboimprimirdireto: String;
    Fnucopia: integer;
    procedure Setnucopia(const Value: integer);
  public
    [keyfield]
    property cdreportuser : integer read Fcdreportuser write Fcdreportuser;
    [fk]
    property cdstreport : integer read Fcdstreport write Fcdstreport;
    [fk]
    property cdtpreport : integer read Fcdtpreport write Fcdtpreport;
    [fk]
    property cdform : integer read Fcdform write Fcdform;
    property nmreportuser : string read Fnmreportuser write Fnmreportuser;
    property nusequenciamenu : integer read Fnusequenciamenu write Fnusequenciamenu;
    property dsrelatorio : string read Fdsrelatorio write Fdsrelatorio;
    property dsscript : string read Fdsscript write Fdsscript;
    property dstitulo : string read Fdstitulo write Fdstitulo;
    property dsopcoes : string read Fdsopcoes write Fdsopcoes;
    property boimprimirdireto : String read Fboimprimirdireto write Fboimprimirdireto;
    property nucopia : integer read Fnucopia write Setnucopia;
    function ObterDsopcoes(nmopcao:string):string;
    function ObterDsopcoesParametro:string;
    function ObterNmfield(nmfield:string):string;
    class function getsql1(dsrelatorio, sqlwhere:string):string;
    class function SubstituiParametrosSQL (InstrucaoSQL: string; const Parametro: string; NovoTexto: string):string;
  end;
  TreportuserList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Treportuser;
    procedure SetItem(Index: Integer; const Value: Treportuser);
  public
    function New: Treportuser;
    property Items[Index: Integer]: Treportuser read GetItem write SetItem;
    function Ler(sqlwhere: string):Boolean;
  end;

implementation

Class function TReportUser.getsql1(dsrelatorio, sqlwhere: string): string;
begin
  result := dsrelatorio;
  if Pos(_codigo_quebra_sql_relatorio, result) <= 0 then
  begin
    Exit;
  end;
  if Pos(_codigo_quebra_sql_relatorio, result) = 1 then
  begin
    result := ''
  end
  else
  begin
    result := Copy(Result, 1, Pos(_codigo_quebra_sql_relatorio, Result)-1);
  end;
end;

function TReportUser.ObterDsopcoes(nmopcao: string): string;
var
  i : Integer;
  lista : TStrings;
begin
  result := '';
  lista := tstringlist.Create;
  try
    lista.Text := dsopcoes;
    for i := 0 to lista.Count - 1 do
    begin
      if lowercase(lista[i]) = nmopcao then
      begin
        result := lowercase(lista[i+1]);
      end;
    end;
  finally
    freeandnil(lista);
  end;
end;

function TReportUser.ObterDsopcoesParametro: string;
var
  i : Integer;
  boativar : Boolean;
  lista : TStrings;
begin
  result   := '';
  boativar := False;
  lista := tstringlist.Create;
  try
    lista.Text := dsopcoes;
    for i := 0 to lista.Count - 1 do
    begin
      if lowercase(lista[i]) = '[parametro]' then
      begin
        boativar := True;
        Continue;
      end;
      if boativar then
      begin
        Result := result + Lista[i]+#13;
      end;
    end;
  finally
    freeandnil(lista);
  end;
end;

function TReportUser.ObterNmfield(nmfield: string): string;
var
  p : Integer;
begin
  p := Pos('.', nmfield);
  result := Copy(nmfield, p + 1, Length(nmfield)-p);
end;

procedure TReportUser.Setnucopia(const Value: integer);
begin
  Fnucopia := Value;
end;

class function TReportUser.SubstituiParametrosSQL(InstrucaoSQL: string; const Parametro: string; NovoTexto: string):string;
begin
  result := StringReplace (uppercase(InstrucaoSQL), Parametro, NovoTexto,[rfReplaceAll,rfIgnoreCase]);
end;

function TreportuserList.GetItem(Index: Integer): Treportuser;
begin
  Result := Treportuser(Inherited Items[Index]);
end;

function TreportuserList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_reportuser, sqlwhere));
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

function TreportuserList.New: Treportuser;
begin
  Result := Treportuser.Create;
  Add(Result);
end;

procedure TreportuserList.SetItem(Index: Integer; const Value: Treportuser);
begin
  Put(Index, Value);
end;

end.
