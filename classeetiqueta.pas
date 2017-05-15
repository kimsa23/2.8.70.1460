unit classeetiqueta;

interface

uses
  classes, SysUtils,
  SqlExpr,
  uconstantes,
  classeaplicacao, classequery;

function imprimir_etiqueta(cdreport : Integer; makesql: string):Boolean;

implementation

uses udlgetiqueta, ClasseReport, DB, rptestoquecompleto;

type
  TEtiqueta = class(TObject)
  private
    report : TReport;
    mtb: TDataClient;
    q  : TClasseQuery;
    cdreport : Integer;
    codigo : TStrings;
    nusequencia : TStrings;
    qtitem : TStrings;
    makesql: string;
    function imprimir:Boolean;
    function gerar_registros:boolean;
    function imprimir_relatorio_padrao:boolean;
    procedure set_fields_tabela_memoria;
    procedure preencher_lista;
  public
    constructor Create(codigo_: Integer; make_sql:string);
    destructor destroy; override;
  end;

function imprimir_etiqueta(cdreport : Integer; makesql: string):Boolean;
var
  Etiqueta : TEtiqueta;
begin
  Etiqueta := TEtiqueta.Create(cdreport, makesql);
  try
    result := Etiqueta.imprimir;
  finally
    FreeAndNil(etiqueta);
  end;
end;

constructor TEtiqueta.Create(codigo_: Integer; make_sql: string);
begin
  cdreport    := codigo_;
  makesql     := make_sql;
  q           := TClasseQuery.Create;
  nusequencia := tstringlist.create;
  codigo      := tstringlist.create;
  qtitem      := tstringlist.create;
  report      := treport.create;
  mtb         := TDataClient.create;
end;

destructor TEtiqueta.destroy;
begin
  freeandnil(q);
  freeandnil(mtb);
  freeandnil(codigo);
  freeandnil(qtitem);
  freeandnil(nusequencia);
  freeandnil(report);
end;

function TEtiqueta.gerar_registros: boolean;
var
  z, x, i : integer;
begin
  for i := 0 to codigo.Count - 1 do
  begin
    if (qtitem[i] <> _0) and (qtitem[i] <> '')then
    begin
      for x := 1 to strtoint(qtitem[i]) do
      begin
        if q.q.Locate(_cdproduto, codigo[i], []) then
        begin
          mtb.m.Append;
          for z := 0 to q.q.Fieldcount - 1 do
          begin
                 if q.q.fields[z].DataType = ftString   then mtb.m.FieldByName(q.q.Fields[z].FieldName).AsString   := q.q.Fields[z].AsString
            else if q.q.fields[z].DataType = ftInteger  then mtb.m.FieldByName(q.q.Fields[z].FieldName).Asinteger  := q.q.Fields[z].Asinteger
            else if q.q.fields[z].DataType = ftDate     then mtb.m.FieldByName(q.q.Fields[z].FieldName).AsDateTime := q.q.Fields[z].AsDateTime
            else if q.q.fields[z].DataType = ftCurrency then mtb.m.FieldByName(q.q.Fields[z].FieldName).AsCurrency := q.q.Fields[z].AsCurrency
            else if q.q.fields[z].DataType = ftBCD      then mtb.m.FieldByName(q.q.Fields[z].FieldName).AsCurrency := q.q.Fields[z].AsCurrency
                                                        else mtb.m.FieldByName(q.q.Fields[z].FieldName).AsVariant  := q.q.Fields[z].AsVariant;
          end;
          mtb.m.Post;
        end;
      end;
    end;
  end;
end;

function TEtiqueta.imprimir: Boolean;
begin
  report.Select(cdreport);
  q.q.sql.text := treport.SubstituiParametrosSQL(report.dsrelatorio, ':WHERE', makesql);
  q.q.Open;
  set_fields_tabela_memoria;
  preencher_lista;
  result := Gerar_lista_regisro_etiqueta(nusequencia, codigo, qtitem);
  if not result then
  begin
    exit;
  end;
  gerar_registros;
  imprimir_relatorio_padrao;
end;

function TEtiqueta.imprimir_relatorio_padrao: boolean;
begin
  imprimir_relatorio(cdreport,  mtb);
end;

procedure TEtiqueta.preencher_lista;
begin
  while not q.q.eof do
  begin
    nusequencia.Add(inttostr(q.q.RecNo));
    codigo.Add(q.q.FieldByName(_cdproduto).asstring);
    qtitem.add(_1);
    q.q.Next;
  end;
end;

procedure TEtiqueta.set_fields_tabela_memoria;
var
  i : integer;
begin
  for i := 0 to q.q.FieldCount - 1 do
  begin
         if q.q.fields[i].DataType = ftString   then mtb.m.FieldDefs.Add(q.q.fields[i].FieldName, ftString, q.q.fields[i].Size)
    else if q.q.fields[i].DataType = ftInteger  then mtb.m.FieldDefs.Add(q.q.fields[i].FieldName, ftInteger)
    else if q.q.fields[i].DataType = ftDate     then mtb.m.FieldDefs.Add(q.q.fields[i].FieldName, ftDate)
    else if q.q.fields[i].DataType = ftCurrency then mtb.m.FieldDefs.Add(q.q.fields[i].FieldName, ftCurrency)
    else if q.q.fields[i].DataType = ftBCD      then mtb.m.FieldDefs.Add(q.q.fields[i].FieldName, ftCurrency);
    //else if q.q.fields[i].DataType = ftBCD      then mtb.m.FieldDefs.Add(q.q.fields[i].FieldName, ftBCD);
  end;
  mtb.m.CreateDataSet;
end;

end.
