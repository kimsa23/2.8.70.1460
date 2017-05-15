unit umontarsql;

interface

uses
  sysutils, classes, Dialogs,
  sqlexpr,
  uConstantes,
  classeaplicacao, classeempresa, classeretornasql, classequery;

procedure sqlmontarlistagrupo (lista: TStrings; tabela, campo: string; var sql : string; tsql:integer=0); overload;
procedure sqlmontarlista      (lista: TStrings; tabela, campo: string; var sql : string; tsql : integer=0; boinversa:boolean=false); overload;
procedure sqlmontarlista      (codigo: integer; tabela, campo: string; var sql : string; tsql : integer=0; boinversa:boolean=false); overload;
function  sqlmontarlista      (lista: TStrings; tabela, campo: string; tsql : integer=0; boinversa:boolean=false): string; overload;


implementation

function NomedoCodigo(tbl, codigo, nmfield:string):string;overload;
begin
  result := '';
  if codigo = '' then
  begin
    exit;
  end;
  Result := RetornaSQLString(UpperCase('SELECT '+nmfield+' FROM '+tbl+' WHERE cdempresa='+empresa.cdempresa.ToString+' and CD'+tbl+'='+codigo));
end;

procedure sqlmontarlistagrupo (lista: TStrings; tabela, campo: string; var sql : string; tsql:integer=0);
var
  i : integer;
  qa : TClasseQuery;
  nunivel : string;
  procedure clausulawhere;
  begin
    if tsql = 0 then
    begin
      sql := sql + ' and '
    end
    else if tsql = length(sql) then
    begin
      sql := sql + ' where '
    end
    else
    begin
      sql := sql + ' and ';
    end;
  end;
begin
  if lista.count = 0 then
  begin
    exit;
  end;
  clausulawhere;
  if tabela <> '' then
  begin
    sql := sql + tabela+'.'+campo+' in (';
  end
  else
  begin
    sql := sql + campo+' in (';
  end;
  qa  := TClasseQuery.create;
  try
    for I := 0 to lista.Count - 1 do
    begin
      if i <> 0 then
      begin
        sql := sql + ', ';
      end;
      sql     := sql + ' '+lista[i];
      nunivel := nomedocodigo(copy(campo, 3, length(campo) - 2), lista[i], _nunivel); // verificar se é subgrupo
      qa.q.close;
      qa.q.SQL.Text := 'select '+campo+' from '+copy(campo, 3, length(campo) - 2)+' where cdempresa='+empresa.cdempresa.ToString+' and nunivel like '''+nunivel+'%'' ';
      qa.q.open;
      while not qa.q.eof do
      begin
        sql := sql + ','+qa.q.fields[0].asstring;
        qa.q.next;
      end;
    end;
  finally
    freeandnil(qa);
  end;
  sql := sql + ') ';
end;

procedure sqlmontarlista (lista: TStrings; tabela, campo: string; var sql : string; tsql : integer=0; boinversa:boolean=false);
  procedure clausulawhere;
  begin
    if tsql = 0 then
    begin
      sql := sql + ' and '
    end
    else if tsql = length(sql) then
    begin
      sql := sql + ' where '
    end
    else
    begin
      sql := sql + ' and ';
    end;
  end;
var
  i : integer;
  sa : TClasseQuery;
  nunivel, sql2 : string;
begin
  if lista.Count = 0 THEN
  begin
    Exit;
  end;
  sa := TClasseQuery.Create;
  try
    clausulawhere;
    if lowercase(campo) = _cdrota then
    begin
      if lista.Count > 0 then
      begin
        sql2 := 'select cdcliente from where cdempresa='+empresa.cdempresa.ToString+' and cdrota in (';
        for I := 0 to lista.Count - 1 do
        begin
          if i <> 0 then
          begin
            sql2 := sql2 + ', ';
          end;
          sql2 := sql2 + ' '+lista[i];
        end;
        sql2 := sql2 + ') '+
               'group by cdcliente ';
        sa.q.Close;
        sa.q.SQL.Text := sql2;
        sa.q.open;
        if sa.q.fieldbyname(_cdcliente).AsLargeInt > 0 then
        begin
          if boinversa then
          begin
            sql := sql + ' not ';
          end;
          sql := sql + ' '+tabela+'.'+_cdcliente+' in (';
          i := 0;
          while not sa.q.Eof do
          begin
            inc(i);
            if i > 1 then
            begin
              sql := sql + ', ';
            end;
            sql := sql + ' ' + sa.q.Fields[0].asstring;
            sa.q.next;
          end;
          sql := sql + ') ';
        end;
      end;
    end
    else if (((lowercase(tabela) = _produto) or (lowerCase(tabela) = LowerCase(_p))) and (lowercase(campo) = _cdgrupo)) or (lowercase(campo) = _cdcntcusto) or (lowercase(campo) = _cd+_plconta) then
    begin
      if boinversa then
      begin
        sql := sql + ' not ';
      end;
      sql := sql + tabela+'.'+campo+' in (';
      for I := 0 to lista.Count - 1 do
      begin
        if i <> 0 then
        begin
          sql := sql + ', ';
        end;
        sql := sql + ' '+lista[i];
        nunivel := nomedocodigo(copy(campo, 3, length(campo) - 2), lista[i], _nunivel); // verificar se é subgrupo
        sa.q.close;
        sa.q.SQL.Text := 'select '+campo+' from '+copy(campo, 3, length(campo) - 2)+' where cdempresa='+empresa.cdempresa.ToString+' and nunivel like '''+nunivel+'%''';
        sa.q.open;
        while not sa.q.eof do
        begin
          sql := sql + ', '+sa.q.fields[0].asstring;
          sa.q.next;
        end;
      end;
      sql := sql + ') ';
    end
    else
    begin
      if boinversa then
      begin
        sql := sql + ' not ';
      end;
      sql := sql + tabela+ '.' + campo + ' in (';
      for I := 0 to lista.Count - 1 do
      begin
        if i <> 0 then
        begin
          sql := sql + ', ';
        end;
        if (lowercase(copy(campo, 1, 2)) = 'nm') or (lowercase(copy(campo, 1, 2)) = 'ds') then
        begin
          sql := sql + ' '+quotedstr(lista[i])+' '
        end
        else
        begin
          sql := sql + ' '+lista[i]
        end;
      end;
      sql := sql + ') ';
    end;
  finally
    freeandnil(sa);
  end;
end;

procedure sqlmontarlista (codigo: integer; tabela, campo: string; var sql : string; tsql : integer=0; boinversa:boolean=false);
var
  lista : TStrings;
begin
  if codigo = 0 THEN
  begin
    Exit;
  end;
  lista := tstringlist.create;
  try
    lista.text := inttostr(codigo);
    sqlmontarlista(lista, tabela, campo, sql, tsql, boinversa);
  finally
    freeandnil(lista);
  end;
end;

function sqlmontarlista (lista: TStrings; tabela, campo: string; tsql : integer=0; boinversa:boolean=false): string;
begin
  sqlmontarlista (lista, tabela, campo, Result, tsql, boinversa);
end;

end.
