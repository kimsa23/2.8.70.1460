unit classesqlmontar;

interface

uses variants, types, windows, StdCtrls, classes, sysutils, dialogs,
  ustrings, uconstantes;

function  set_sql_and_where(t:Integer; sql:string):string;
procedure sqlmontarcodigo    (codigo: string; tbl, nmcampo:string; var sql : string; t: integer=0);overload;
procedure sqlmontarcodigo    (codigo:variant; tbl, nmcampo:string; var sql : string; t: integer=0;bostring:boolean=false);overload;
procedure sqlmontardata      (edti, edtf, nmtabela, nmcampo:string; var sql:string; t:integer=0);
procedure sqlmontarhora      (edti, edtf, nmtabela, nmcampo:string; var sql:string; t:integer=0);
procedure sqlmontarfonelike  (edt, tbl, nmcampo:string; var sql: string; t:integer=0);
procedure sqlmontarnome      (edt, tbl, nmcampo:string; var sql:string; t:integer=0);
procedure sqlmontarnomedireto(edt, tbl, nmcampo:string; var sql:string; t:integer=0);
procedure sqlmontarstring    (edt, tbl, nmcampo:string; var sql:string; t:integer=0);
procedure sqlmontarnomelike  (edt, tbl, nmcampo: string; var sql : string; t:integer=0; opcao:integer=1);
procedure sqlmontarnomelikeor(edt, tbl, tbl2, nmcampo: string; var sql : string; t:integer=0; opcao:integer=1);
procedure sqlmontartppessoa  (cbx, edt, tbl:string; var sql: string; t:integer=0);
procedure sqlmontaruf        (cbx, tbl:string; var sql:string; t:integer=0);
procedure sqlmontarvalor     (edti, edtf:currency; tbl, nmcampo:string; var sql : string; t: integer=0);
procedure sqlmontarcpf       (edt, tbl:string; var sql: string; t:integer=0);

implementation

function set_sql_and_where(t:Integer; sql:string):string;
begin
  if t = 0 then
  begin
    result := sql + ' and '
  end
  else if t < length(sql) then
  begin
    result := sql + ' and '
  end
  else
  begin
    result := sql + ' where ';
  end;
end;

procedure sqlmontarnome(edt, tbl, nmcampo:string; var sql:string; t:integer=0);
begin
  if RemoverEspacosVazios(edt) = '' then
  begin
    exit;
  end;
  sql := set_sql_and_where(t, sql) + tbl+'.'+nmcampo+' like ''' + edt+ '%'' ';
end;

procedure sqlmontarnomedireto(edt, tbl, nmcampo:string; var sql:string; t:integer=0);
begin
  if RemoverEspacosVazios(edt) = '' then
  begin
    exit;
  end;
  sql := set_sql_and_where(t, sql) + tbl+'.'+nmcampo+'='+quotedstr(edt)+' ';
end;

procedure sqlmontarstring(edt, tbl, nmcampo:string; var sql:string; t:integer=0);
begin
  if RemoverEspacosVazios(edt) = '' then
  begin
    exit;
  end;
  sql := set_sql_and_where(t, sql) + tbl+'.'+nmcampo+'=''' + edt+ ''' ';
end;

procedure sqlmontarcodigo(codigo:string; tbl, nmcampo:string; var sql : string; t: integer=0);
begin
  if (codigo = '') or (codigo = _0) then
  begin
    exit;
  end;
  sql := set_sql_and_where(t, sql) + tbl+'.'+nmcampo+'=' + codigo;
end;

procedure sqlmontarcodigo(codigo:variant; tbl, nmcampo:string; var sql : string; t: integer=0;bostring:boolean=false);
begin
  if codigo = null then
  begin
    exit;
  end;
  if not bostring then
  begin
    if codigo = 0 then
    begin
      exit;
    end;
  end
  else if codigo = _0 then
  begin
    exit;
  end;
  if t = 0 then
  begin
    sql := sql + ' and '
  end
  else if t < length(sql) then
  begin
    sql := sql + ' and '
  end
  else
  begin
    sql := sql + ' where ';
  end;
  if bostring then
  begin
    sql := sql + tbl+'.'+nmcampo+'=' + QuotedStr(String(codigo))
  end
  else
  begin
    sql := sql + tbl+'.'+nmcampo+'=' + String(codigo);
  end;
end;

procedure sqlmontarvalor(edti, edtf:currency; tbl, nmcampo:string; var sql : string; t: integer=0);
begin
  if (edti = 0) and (edtf = 0) then
  begin
    exit;
  end;
  if t = 0 then
  begin
    sql := sql + ' and '
  end
  else if t < length(sql) then
  begin
    sql := sql + ' and '
  end
  else
  begin
    sql := sql + ' where ';
  end;
  if edtf > 0 then
  begin
    if edti < edtf then
    begin
      sql:= sql+ tbl+'.'+nmcampo+' between '+getcurrencys(edti)+' and '+getcurrencys(edtf)+' '
    end
    else
    begin
      sql:= sql+ tbl+'.'+nmcampo+' between '+getcurrencys(edtf)+' and '+getcurrencys(edti)+' '
    end;
  end
  else
  begin
    sql:= sql+ tbl+'.'+nmcampo+'='+getcurrencys(edti)+' ';
  end;
end;

procedure sqlmontarnomelike(edt, tbl, nmcampo: string; var sql : string; t:integer=0; opcao:integer=1);
begin
  if edt = '' then
  begin
    exit;
  end;
  sql := set_sql_and_where(t, sql);
  if opcao = 0 then
  begin
    sql := sql + tbl+'.'+nmcampo+' like ''' + get_aspas(edt)+'%'' '
  end
  else
  begin
    sql := sql + tbl+'.'+nmcampo+' like ''%'+ get_aspas(edt)+'%'' ';
  end;
end;

procedure sqlmontarnomelikeor(edt, tbl, tbl2, nmcampo: string; var sql : string; t:integer=0; opcao:integer=1);
begin
  if edt = '' then
  begin
    exit;
  end;
  if t = 0 then
  begin
    sql := sql + ' and '
  end
  else if t < length(sql) then
  begin
    sql := sql + ' and '
  end
  else
  begin
    sql := sql + ' where ';
  end;
  if opcao = 0 then
  begin
    sql := sql + '('+tbl+'.'+nmcampo+' like ''' + get_aspas(edt)+'%'' or '+tbl2+'.'+nmcampo+' like '''+edt+'%'') '
  end
  else
  begin
    sql := sql + '('+tbl+'.'+nmcampo+' like ''%'+ get_aspas(edt)+'%'' or '+tbl2+'.'+nmcampo+' like ''%'+edt+'%'') ';
  end;
end;

procedure sqlmontartppessoa(cbx, edt, tbl:string; var sql: string; t:integer=0);
var
  i : integer;
  procedure set_sql;
  begin
    if t = 0 then
    begin
      sql := sql + ' and '
    end
    else if t < length(sql) then
    begin
      sql := sql + ' and '
    end
    else
    begin
      sql := sql + ' where ';
    end;
  end;
  procedure set_nudocumento;
  begin
    if edt = '' then
    begin
      exit;
    end;
    i := pos(' ', edt);
    if i > 0 then
    begin
      edt := copy(edt, 1, i-1);
    end;
  end;
begin
  if cbx = '' then
  begin
    exit;
  end;
  set_sql;
  sql := sql + tbl+'.tppessoa='+quotedstr(Copy(cbx, 1, 1))+' ';
  set_nudocumento;
  set_sql;
  if cbx = 'Física' then
  begin
    sql := sql + tbl+'.nucpf like  '''+edt+'%'' '
  end
  else
  begin
    sql := sql + tbl+'.nucnpj like '''+edt+'%'' ';
  end;
end;

procedure sqlmontarcpf(edt, tbl:string; var sql: string; t:integer=0);
var
  nudocumento : string;
  i : integer;
begin
  if edt = '   .   .   -  ' then
  begin
    exit;
  end;
  nudocumento := edt;
  i := pos(' ', nudocumento);
  if i > 0 then
  begin
    nudocumento := copy(nudocumento, 1, i-1);
  end;
  if t = 0 then
  begin
    sql := sql + ' and '
  end
  else if t < length(sql) then
  begin
    sql := sql + ' and '
  end
  else
  begin
    sql := sql + ' where ';
  end;
  sql := sql + tbl+'.nucpf like  '''+nudocumento+'%'' '
end;

procedure sqlmontaruf(cbx, tbl:string; var sql:string; t:integer=0);
begin
  if cbx = '' then
  begin
    exit;
  end;
  if t = 0 then
  begin
    sql := sql + ' and '
  end
  else if t < length(sql) then
  begin
    sql := sql + ' and '
  end
  else
  begin
    sql := sql + ' where ';
  end;
  sql := sql + tbl+'.cduf='+cbx+' ';
end;

procedure sqlmontarfonelike(edt, tbl, nmcampo:string; var sql: string; t:integer=0);
var
  nufone : string;
  lista : TStrings;
  i : integer;
begin
  if edt = '(  )    -    ' then
  begin
    exit;
  end;
  if t = 0 then
  begin
    sql := sql + ' and '
  end
  else if t < length(sql) then
  begin
    sql := sql + ' and '
  end
  else
  begin
    sql := sql + ' where ';
  end;
  nufone := edt;
  if pos(' -', nufone) > 0 then
  begin
    delete(nufone, pos(' -', nufone), 2);
  end;
  nufone := Removerchar(nufone, ' ');
  lista := TStringList.Create;
  try
    lista.Text := nmcampo;
    sql := sql + '(';
    for i := 0 to lista.count - 1 do
    begin
      if i > 0 then
      begin
        sql := sql + ' or '
      end;
      sql := sql + tbl+'.'+lista[i]+' like '''+ nufone+'%'' ';
    end;
    sql := sql + ') ';
  finally
    lista.Free;
  end;
end;

procedure sqlmontardata(edti, edtf, nmtabela, nmcampo:string; var sql:string; t:integer=0);
  function set_data(dt:string):string;
  begin
    if length(dt) = 10 then
    begin
      result := copy(dt, 4, 2)+'/'+copy(dt, 1, 2)+'/'+copy(dt, 7, 4)
    end
    else if length(dt) =  8 then
    begin
      result := copy(dt, 3, 1)+'/'+copy(dt, 1, 1)+'/'+copy(dt, 5, 4)
    end
    else if length(dt) =  9 then
    begin
      if pos('/', dt) = 2 then
      begin
        result := copy(dt, 3, 2)+'/'+copy(dt, 1, 1)+'/'+copy(dt, 6, 4)
      end
      else if pos('/', dt) = 3 then
      begin
        result := copy(dt, 4, 1)+'/'+copy(dt, 1, 2)+'/'+copy(dt, 6, 4)
      end;
    end;
  end;
begin
  if edti = '' then
  begin
    exit;
  end;
  if t = 0 then
  begin
    sql := sql + ' and '
  end
  else if t < length(sql) then
  begin
    sql := sql + ' and '
  end
  else
  begin
    sql := sql + ' where ';
  end;
  if edtf <> '' then
  begin
    sql := sql+ nmtabela+'.'+nmcampo+' between '+quotedstr(set_data(edti))+' and '+quotedstr(set_data(edtf))+' '
  end
  else
  begin
    sql := sql+ nmtabela+'.'+nmcampo+'='+quotedstr(set_data(edti))+' ';
  end;
end;

procedure sqlmontarhora(edti, edtf, nmtabela, nmcampo:string; var sql:string; t:integer=0);
begin
  if edti = _00_00_00 then
  begin
    exit;
  end;
  if t = 0 then
  begin
    sql := sql + ' and '
  end
  else if t < length(sql) then
  begin
    sql := sql + ' and '
  end
  else
  begin
    sql := sql + ' where ';
  end;
  if edtf <> _00_00_00 then
  begin
    sql := sql+ nmtabela+'.'+nmcampo+' between '+quotedstr(edti)+' and '+quotedstr(edtf)+' '
  end
  else
  begin
    sql := sql+ nmtabela+'.'+nmcampo+'='+quotedstr(edti)+' ';
  end;
end;

end.
