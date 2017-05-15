unit classeRetornaSql;

interface

uses
  FireDAC.Comp.Client,
  dialogs, classes, controls, sysutils, variants,
  DB, SqlExpr,
  uconstantes, classeAplicacao, classequery;

function get_delete_from    (nmtabela, codigo:string):string;
function RetornaSQLBlobText (tbl, campo, codigo:string; tp:string='codigo'):string;overload;
function RetornaSQLBoolean  (sql:string):boolean;overload;
function RetornaSQLCurrency (sql:string):currency;overload;
function RetornaSQLDouble    (sql:string):double;
function RetornaSQLData     (sql:string):TDate;overload;
function RetornaSQLInteger  (sql:string):Largeint;overload;
function RetornaSQLInteger  (con: TFDConnection; sql:string):integer;overload;
function RetornaSQLIntegerBoolean(sql:string):Boolean;overload;
function RetornaSQLHora     (sql:string):TTime;overload;
function RetornaSQLHora2     (sql:string):TTime;overload;
function RetornaSQLString   (sql:string):string;overload;
function RetornaSQLString   (confire:TFDConnection;  sql:string):string;overload;
function RetornaSQLStrings  (sql:string):string;overload;
function RetornaSQLTimeStamp(sql:string):TDateTime;overload;
function ReportScript       (codigo:integer):string;overload;
function ReportScript       (codigo:integer; nmfield:string):string;overload;
function ReportScript       (nome  :string ):string;overload;
function ReportScript       (codigo:integer; parametro:tstrings):string;overload;
function ReportScript       (codigo:integer; nmfield, parametro:string):string;overload;

type
  QRetornaSQL = class
    class function get_select_from (nmtabela:string; codigo:string=''; nmcodigo:string=''):string;overload;
    class function get_select_from (nmtabela:string; codigo:LargeInt; nmcodigo:string=''; sqlorderby:string=''):string;overload;
    class function get_select_where (nmtabela, sqlwhere:string):string;
    class function get_select_codigo_from_field(nmtabela: string; codigo: Integer; nmcodigo:string):string;
    class function get_select_field_from_field(nmtabela: string; nmfield:string; codigo: Integer; nmcodigo: string): string;
    class function get_delete_from (nmtabela, codigo:string):string;
    class function BlobToText      (tbl, campo, codigo:string; tp:string='codigo'):string;overload;
    class function get_Boolean     (sql:string):boolean;overload;
    class function get_Currency    (sql:string):currency;overload;
    class function get_Data        (sql:string):TDate;overload;
    class function get_Integer     (sql:string):integer;overload;
    class function get_Integer     (con: TFDConnection; sql:string):integer;overload;
    class function IntegerToBoolean(sql:string):Boolean;overload;
    class function get_time        (sql:string):TTime;overload;
    class function get_String      (sql:string):string;overload;
    class function get_String      (confire:TFDConnection;  sql:string):string;overload;
    class function get_Strings     (sql:string):string;overload;
    class function get_TimeStamp   (sql:string):TDateTime;overload;
  end;

implementation

uses classeempresa, uinterbase;

function get_delete_from(nmtabela, codigo:string):string;
begin
  result := 'delete from '+nmtabela+' where cd'+nmtabela+'='+codigo;
  if ExisteCampoNaTabela(nmtabela, _cdempresa) then
  begin
    result := result + ' and cdempresa='+empresa.cdempresa.ToString;
  end;
end;

function RetornaSQLTimeStamp(sql:string):TDateTime;
var
  resultado : Variant;
begin
  result := 0;
  resultado := aplicacao.confire.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLData(sql:string):TDate;
var
  resultado : Variant;
begin
  result := 0;
  resultado := aplicacao.confire.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLHora(sql:string):TTime;
var
  //resultado : Variant;
  q : tsqldataset;
begin
  //result := 0;
  q := tsqldataset.Create(nil);
  try
    q.SQLConnection := aplicacao.con2;
    q.CommandText := sql;
    q.Open;
    result := q.Fields[0].AsDateTime;
    //resultado := aplicacao.confire.ExecSQLScalar(sql);
    //if not varisnull(resultado) then
    //begin
      //result := resultado;
    //end;
  finally
    freeandnil(q);
  end;
end;

function RetornaSQLHora2(sql:string):TTime;
var
  resultado : Variant;
begin
  result := 0;
  resultado := aplicacao.confire.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLInteger(sql:string):Largeint;
var
  resultado : Variant;
begin
  result := 0;
  resultado := aplicacao.confire.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLInteger(con: TFDConnection; sql:string):integer;
var
  resultado : Variant;
begin
  result := 0;
  resultado := con.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLIntegerBoolean(sql:string):Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(sql);
  try
    result := q.q.fields[0].asinteger > 0;
  finally
    FreeAndNil(q);
  end;
end;

function RetornaSQLCurrency(sql:string):currency;
var
  resultado : Variant;
begin
  result := 0;
  resultado := aplicacao.confire.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLDouble(sql:string):Double;
var
  resultado : Variant;
begin
  result := 0;
  resultado := aplicacao.confire.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLBlobText(tbl, campo, codigo:string; tp:string='codigo'):string;
  function makesql:string;
  begin
    {$IFNDEF VER210}
    if ExisteCampoNaTabela(tbl, _cdempresa) then
    begin
      if tp = _codigo then
      begin
        result := 'select '+campo+' from '+tbl+' where cdempresa='+empresa.cdempresa.ToString+' and cd'+tbl+'='+codigo
      end
      else
      begin
        result := 'select '+campo+' from '+tbl+' where cdempresa='+empresa.cdempresa.ToString+' and nm'+tbl+'='+quotedstr(codigo);
      end;
    end
    else
    {$ENDIF}
    if tp = _codigo then
    begin
      result := 'select '+campo+' from '+tbl+' where cd'+tbl+'='+codigo
    end
    else
    begin
      result := 'select '+campo+' from '+tbl+' where nm'+tbl+'='+quotedstr(codigo);
    end;
  end;
var
  resultado : Variant;
begin
  result := '';
  resultado := aplicacao.confire.ExecSQLScalar(makesql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLStrings(sql:string):string;
var
  resultado : Variant;
begin
  result := '';
  resultado := aplicacao.confire.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLString(confire:TFDConnection;  sql:string):string;
var
  resultado : Variant;
begin
  result := '';
  resultado := confire.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado;
  end;
end;

function RetornaSQLString(sql:string):string;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(sql);
  try
    result := q.q.fields[0].AsString;
  finally
    FreeAndNil(q);
  end;
end;

function RetornaSQLBoolean(sql:string):boolean;
var
  resultado : Variant;
begin
  result := false;
  resultado := aplicacao.confire.ExecSQLScalar(sql);
  if not varisnull(resultado) then
  begin
    result := resultado = _s;
  end;
end;

function ReportScript(codigo:integer):string;
begin
  result := RetornaSQLBlobText(_report, _dsscript, inttostr(codigo));
end;

function ReportScript(codigo:integer; nmfield:string):string;
begin
  result := RetornaSQLBlobText(_report, nmfield, inttostr(codigo));
end;

function ReportScript(nome:string):string;
begin
  result := RetornaSQLBlobText(_report, _dsscript, nome, _nome);
end;

function ReportScript(codigo:integer; parametro:tstrings):string;
var
  x, i : integer;
  sql : string;
begin
  x   := 0;
  sql := RetornaSQLBlobText(_report, _dsscript, inttostr(codigo));
  for i := 1 to length(sql) do
  begin
    if sql[i] = ':' then
    begin
      result := result + parametro[x];
      x := x + 1;
    end
    else
    begin
      result := result + sql[i];
    end;
  end;
end;

function ReportScript(codigo:integer; nmfield, parametro:string):string;
var
  x, i : integer;
  sql : string;
  ps:tstrings;
begin
  ps := TStringList.Create;
  try
    ps.Text := parametro;
    x   := 0;
    sql := RetornaSQLBlobText(_report, nmfield, inttostr(codigo));
    for i := 1 to length(sql) do
    begin
      if sql[i] = ':' then
      begin
        result := result + ps[x];
        x := x + 1;
      end
      else
      begin
        result := result + sql[i];
      end;
    end;
  finally
    FreeAndNil(ps);
  end;
end;

class function QRetornaSQL.BlobToText(tbl, campo, codigo, tp: string): string;
  function makesql:string;
  begin
    if ExisteCampoNaTabela(tbl, _cdempresa) then
    begin
      if tp = _codigo then
      begin
        result := 'select '+campo+' from '+tbl+' where cdempresa='+empresa.cdempresa.ToString+' and cd'+tbl+'='+codigo
      end
      else
      begin
        result := 'select '+campo+' from '+tbl+' where cdempresa='+empresa.cdempresa.ToString+' and nm'+tbl+'='+quotedstr(codigo);
      end;
    end
    else if tp = _codigo then
    begin
      result := 'select '+campo+' from '+tbl+' where cd'+tbl+'='+codigo
    end
    else
    begin
      result := 'select '+campo+' from '+tbl+' where nm'+tbl+'='+quotedstr(codigo);
    end;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(makesql);
  try
    result := q.q.Fields[0].AsString;
  finally
    FreeAndNil(q);
  end;
end;

class function QRetornaSQL.get_Boolean(sql: string): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(sql);
  try
    result := q.q.fields[0].asstring = _S;
  finally
    FreeAndNil(q);
  end;
end;

class function QRetornaSQL.get_Currency(sql: string): currency;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(sql);
  try
    result := q.q.fields[0].ascurrency;
  finally
    freeandnil(q);
  end;
end;

class function QRetornaSQL.get_Data(sql: string): TDate;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(sql);
  try
    result := q.q.fields[0].AsDateTime;
  finally
    FreeAndNil(q);
  end;
end;

class function QRetornaSQL.get_delete_from(nmtabela, codigo: string): string;
begin
  result := 'delete from '+nmtabela+' where cd'+nmtabela+'='+codigo;
  if ExisteCampoNaTabela(nmtabela, _cdempresa) then
  begin
    result := result + ' and cdempresa='+empresa.cdempresa.ToString;
  end;
end;

class function QRetornaSQL.get_Integer(con: TFDConnection; sql: string): integer;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(sql);
  try
    if q.q.fields[0].IsNull then
    begin
      result := 0;
    end
    else
    begin
      result := q.q.fields[0].AsInteger;
    end;
  finally
    FreeAndNil(q);
  end;
end;

class function QRetornaSQL.get_Integer(sql: string): integer;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(sql);
  try
    if q.q.fields[0].IsNull then
    begin
      result := 0;
    end
    else
    begin
      result := q.q.fields[0].AsInteger;
    end;
  finally
    FreeAndNil(q);
  end;
end;

class function QRetornaSQL.get_select_codigo_from_field(nmtabela: string; codigo: Integer; nmcodigo: string): string;
begin
  if nmcodigo = '' then
  begin
    nmcodigo := 'CD'+nmtabela
  end;
  result := 'SELECT cd'+nmtabela+' FROM '+nmtabela+' WHERE '+nmcodigo+'='+inttostr(codigo);
  if ExisteCampoNaTabela(nmtabela, _cdempresa) then
  begin
    result := result + ' AND CDEMPRESA='+empresa.cdempresa.ToString;
  end;
  result := UpperCase(result);
end;

class function QRetornaSQL.get_select_field_from_field(nmtabela: string; nmfield:string; codigo: Integer; nmcodigo: string): string;
begin
  result := 'SELECT '+nmfield+' FROM '+nmtabela+' WHERE '+nmcodigo+'='+inttostr(codigo);
  if ExisteCampoNaTabela(nmtabela, _cdempresa) then
  begin
    result := result + ' AND CDEMPRESA='+empresa.cdempresa.ToString;
  end;
  result := UpperCase(result);
end;

class function QRetornaSQL.get_select_from(nmtabela, codigo, nmcodigo: string): string;
begin
  if nmcodigo = '' then
  begin
    nmcodigo := 'CD'+nmtabela
  end;
  result := 'SELECT * FROM '+nmtabela;
  if codigo = '' then
  begin
    Exit;
  end;
  result := result +' WHERE '+nmcodigo+'='+codigo;
  if ExisteCampoNaTabela(nmtabela, _cdempresa) then
  begin
    result := result + ' AND CDEMPRESA='+empresa.cdempresa.ToString;
  end;
  result := UpperCase(result);
end;

class function QRetornaSQL.get_String(sql: string): string;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(sql);
  try
    result := q.q.fields[0].AsString;
  finally
    FreeAndNil(q);
  end;
end;

class function QRetornaSQL.get_select_from(nmtabela: string; codigo: LargeInt; nmcodigo:string=''; sqlorderby:string=''): string;
begin
  if nmcodigo = '' then
  begin
    nmcodigo := 'CD'+nmtabela
  end;
  result := 'SELECT * FROM '+nmtabela;
  result := result +' WHERE '+nmcodigo+'='+codigo.ToString;
  if ExisteCampoNaTabela(nmtabela, _cdempresa) then
  begin
    result := result + ' AND CDEMPRESA='+empresa.cdempresa.ToString;
  end;
  if sqlorderby <> '' then
  begin
    result := result + ' '+sqlorderby;
  end;
  result := UpperCase(result);
end;

class function QRetornaSQL.get_String(confire: TFDConnection; sql: string): string;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(sql);
  try
    result := q.q.fields[0].AsString;
  finally
    freeandnil(q);
  end;
end;

class function QRetornaSQL.get_Strings(sql: string): string;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(sql);
  try
    result := q.q.Fields[0].asstring;
  finally
    FreeAndNil(q);
  end;
end;

class function QRetornaSQL.get_time(sql: string): TTime;
var
  q : TSQLDataSet;
begin
  q := TSQLDataSet.Create(nil);
  try
    q.SQLConnection := aplicacao.con2;
    q.CommandText   := sql;
    q.GetMetadata   := False;
    q.open;
    result := q.fields[0].AsDateTime;
  finally
    freeandnil(q);
  end;
end;

class function QRetornaSQL.get_TimeStamp(sql: string): TDateTime;
var
  q : TClasseQuery;
begin
   q := TClasseQuery.Create(sql);
  try
    result := q.q.fields[0].AsDateTime;
  finally
    FreeAndNil(q);
  end;
end;

class function QRetornaSQL.IntegerToBoolean(sql: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(sql);
  try
    result := q.q.fields[0].asinteger > 0;
  finally
    FreeAndNil(q);
  end;
end;

class function QRetornaSQL.get_select_where(nmtabela, sqlwhere: string): string;
begin
  if sqlwhere='' then
  begin
    Exit;
  end;
  result := 'SELECT * FROM '+nmtabela+' WHERE '+sqlwhere;
  if ExisteCampoNaTabela(nmtabela, _cdempresa) then
  begin
    result := result + ' AND CDEMPRESA='+empresa.cdempresa.ToString;
  end;
  result := UpperCase(result);
end;

end.
