unit classetarefa;

interface

uses
  Controls, SysUtils, classes,
  DB, sqlexpr,
  uregistro, uconstantes, ustrings,
  classeusuario, classeaplicacao, classeempresa, classeregistrainformacao, classeexecutasql, classeretornasql,
  classegerar, classequery;

type
  TTarefa = class(TObject)
  dtemissao : TDate;
  dtprevisao : TDate;
  dttermino : TDate;
  cdtarefa : string;
  cdempresa : LargeInt;
  cdsttarefa : string;
  cdprojeto : string;
  cdprioridade : string;
  cdtptarefa : string;
  cdtptarefa1 : string;
  dstag : string;
  boencaminhamento : Boolean;
  lstcdtarefa : TStrings;
  private
    procedure Exibir_tarefa(tbl:string; dts: TDataSource);
  public
    function set_change_tarefa:boolean;
    constructor create;
    destructor Destroy; override;
  end;

procedure Exibir_tarefa(tbl:string; dts: TDataSource);

implementation

uses udlgavisotarefa;

procedure Exibir_tarefa(tbl:string; dts: TDataSource);
var
  tarefa : ttarefa;
begin
  tarefa := TTarefa.create;
  try
    tarefa.exibir_tarefa(tbl, dts);
  finally
    tarefa.Free;
  end;
end;

constructor TTarefa.create;
begin
  lstcdtarefa := TStringList.Create;
end;

destructor TTarefa.Destroy;
begin
  inherited;
  lstcdtarefa.Free;
end;

procedure TTarefa.Exibir_tarefa(tbl: string; dts: TDataSource);
  function get_cdeventoregistro:string;
  begin
         if dts.State = dsinsert then result := _1
    else if dts.State = dsEdit   then result := _2;
  end;
  function makesql:string;
  begin
    result := 'select cdeventoregistro,cdtptarefa '+
              'from tp'+tbl+'tarefa '+
              'where cdeventoregistro='+get_cdeventoregistro+' '+
              'and cdtp'+tbl+'='+dts.DataSet.fieldbyname(_cd+_tp+tbl).AsString;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(makesql);
  try
    while not q.q.Eof do
    begin
      if q.q.FieldByName(_cd+_evento+_registro).AsString = get_cdeventoregistro then
      begin
        Exibir_aviso_tarefa(dts.DataSet.fieldbyname(_cdcliente).AsString, q.q.fieldbyname(_cd+_tp+_tarefa).AsString);
        Break;
      end;
    end;
  finally
    freeandnil(q);
  end;
  // existe configuracao de tarefa
  // existe configuracao para o evento do registro
  // exibir as tarefas
end;

function TTarefa.set_change_tarefa:boolean;
  function get_set_sql:string;
    function set_sql(var retorno: string; nmfield, vlfield:string):string;
    begin
      if retorno <> '' then
      begin
        retorno := retorno + ',';
      end;
      result := retorno + nmfield+'='+vlfield;
    end;
  begin
    result := '';
    if dtemissao  > 0     then result := set_sql(Result, _dtemissao , GetDtBanco(dtemissao));
    if dtprevisao > 0     then result := set_sql(Result, _dtprevisao, GetDtBanco(dtprevisao));
    if dttermino  > 0     then result := set_sql(Result, _dttermino , GetDtBanco(dttermino));
    if (cdsttarefa   <> '0') and (cdsttarefa   <> '') then result := set_sql(Result, _cdsttarefa, cdsttarefa);
    if (cdprojeto    <> '0') and (cdprojeto    <> '') then result := set_sql(Result, _cdprojeto, cdprojeto);
    if (cdprioridade <> '0') and (cdprioridade <> '') then result := set_sql(Result, _cdprioridade, cdprioridade);
    if (cdtptarefa   <> '0') and (cdtptarefa   <> '') then result := set_sql(Result, _cdtptarefa, cdtptarefa);
    if (cdtptarefa1  <> '0') and (cdtptarefa1  <> '') then result := set_sql(Result, _cdtptarefa1, cdtptarefa1);
    if dstag        <> '' then result := set_sql(Result, _dstag, quotedstr(dstag));
  end;
var
  i : Integer;
  sql : TStrings;
begin
  result := False;
  sql    := TStringList.Create;
  try
    for i := 0 to lstcdtarefa.Count - 1 do
    begin
      if get_set_sql <> '' then
      begin
        sql.Add('update tarefa set '+get_set_sql+' where cdempresa='+cdempresa.tostring+' and cdtarefa='+lstcdtarefa[i]+';');
      end;
      if boencaminhamento then
      begin
        sql.Add('update tarefaacompanhamento set boresolvido=''S'' where cdempresa='+cdempresa.tostring+' and cdtarefa='+lstcdtarefa[i]+' and cdfuncionario='+inttostr(usuario.funcionario.cdfuncionario)+';');
      end;
    end;
    if sql.Count > 0 then
    begin
      result := ExecutaScript(sql);
    end;
  finally
    sql.Free;
  end;
end;

end.
