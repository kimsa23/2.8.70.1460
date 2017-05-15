unit uinterbase;

interface

uses
  FireDAC.Comp.Client, system.SysUtils,
  dialogs, classes, variants, controls, forms, windows, registry,
  SqlExpr,
  uprogressbar, ustrings,
  classeretornasql, classeaplicacao, classequery;

function  ExisteCampoNaTabela       (tbl, nmcampo:string):Boolean;overload;
function  ExisteCampoNaTabela       (con: TFDConnection; tbl, nmcampo:string):Boolean;overload;
function  ExisteTabela              (tbl:string):boolean;
function  FirebirdCampoChavePrimaria(tbl:string):string;
function  FirebirdNomeTipoDadosCampo(tbl, nmcampo:string):string;
function  NomeCampoIndice           (erro:string):string;

implementation

function ExisteCampoNaTabela(tbl, nmcampo:string):Boolean;
begin
  result := RetornaSQLInteger('select count(*) from RDB$RELATION_FIELDS where RDB$FIELD_NAME='+quotedstr(UpperCase(nmcampo))+' and RDB$RELATION_NAME='+quotedstr(uppercase(tbl)))>0;
end;

function  ExisteCampoNaTabela       (con: TFDConnection; tbl, nmcampo:string):Boolean;overload;
begin
  result := RetornaSQLInteger(con, 'select count(*) from RDB$RELATION_FIELDS where RDB$FIELD_NAME='+quotedstr(UpperCase(nmcampo))+' and RDB$RELATION_NAME='+quotedstr(uppercase(tbl)))>0;
end;

function FirebirdNomeTipoDadosCampo(tbl, nmcampo:string):string;
begin
  Result := RetornaSQLString('select rdb$types.rdb$type_name ' +
                                   'from rdb$relation_fields ' +
                                   'inner join rdb$fields on rdb$fields.rdb$field_name=rdb$relation_fields.rdb$field_source ' +
                                   'inner join rdb$types on rdb$types.rdb$type=rdb$fields.rdb$field_type ' +
                                   'where rdb$types.rdb$field_name=''RDB$FIELD_TYPE'' and rdb$relation_fields.rdb$relation_name='+QuotedStr(uppercase(tbl))+' and rdb$relation_fields.rdb$field_name='+quotedstr(uppercase(nmcampo)));
end;

function ExisteTabela(tbl:string):boolean;
begin
  result := RetornaSQLInteger('select count(*) from RDB$RELATIONS where RDB$RELATION_NAME='+QuotedStr(uppercase(tbl))) > 0 ;
end;

function NomeCampoIndice(erro:string):string;
var
  nmindice : string;
  p : integer;
begin
  p        := pos('"', erro);
  nmindice := copy(erro, p + 1, length(erro) - 1 - p);
  Result   := RetornaSQLString('select RDB$FIELD_NAME from RDB$INDEX_SEGMENTS where RDB$INDEX_NAME='+quotedstr(nmindice)); // obter o nome do indice do firebird
end;

function FirebirdCampoChavePrimaria(tbl:string):string;
  function makesql:string;
  begin
    result := 'select rdb$index_segments.rdb$field_name ' +
              'from rdb$relation_constraints ' +
              'inner join rdb$index_segments on rdb$index_segments.rdb$index_name=rdb$relation_constraints.rdb$index_name ' +
              'where rdb$relation_constraints.rdb$relation_name='+quotedstr(tbl)+' AND rdb$relation_constraints.rdb$constraint_type=''PRIMARY KEY''';
  end;
var
  q : TClasseQuery;
begin
  tbl := uppercase(tbl);
  q   := TClasseQuery.create(makesql);
  try
    result := '';
    while not q.q.Eof do
    begin
      if result <> '' then
      begin
        result := result + ';';
      end;
      result := result + q.q.fields[0].asstring;
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

end.
