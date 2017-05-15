unit uRegistro;

interface

uses
  FireDAC.Comp.Client, system.SysUtils, system.UITypes,
  Dialogs, forms, stdctrls, comctrls, controls, classes, actnlist, ExtCtrls,
  SqlExpr, DB, dbclient,
  cxCalendar,
  ustrings, uconstantes, unumero,
  classeempresa, classeretornasql, classequery;

type
  QRegistro = class
    class function BooleandoCodigo     (tbl: string; codigo: Largeint; nmfield: string): Boolean;overload;
    Class function CodigodoCampoInteiro(tbl: string; vlfield:Largeint; nmfield:string; cdtbldiferente:string=''):string;
    Class function CodigodoInteiro     (tbl: string; vlfield:Largeint; nmfield:string; cdtbldiferente:string=''):Largeint;
    Class function CodigodoNome        (tbl, nome:string):string;
    Class function CodigodoNomeInteiro (tbl, nome:string):Largeint;
    class function CodigoInteiroExiste (tbl:string; vlfield:Largeint):boolean;
    class function CodigodoString      (tbl, vlfield, nmfield:string; cdtbldiferente:string=''):Largeint;
    class function CodigoStatusNovo  (tbl:string):integer;
    class function CodigodoWhere       (tbl: string; sqlwhere:string):Largeint;
    class procedure clone_fdquery_para_memtable(mtb: TDataClient; qry: TDataset);
    class function codigo_do_registro_existe(nmcampo, vlcampo, tbl, codigo:string):string;
    class function Codigo_status_novo     (tbl:string):Integer;overload;
    class function CampodoCampo           (tbl, cdfield, vlfield, nmfield:string; bostring:boolean=false):string;overload;
    class function CodigoExiste(tbl: string; codigo:Largeint):boolean;
    class function DatadoCodigo(tbl: string; codigo: Largeint; nmfield :string):TDate;overload;
    //class function DatadoCodigo(tbl, codigo, nmfield :string):TDate;overload;
    class function DoubledoCodigo      (tbl: string; codigo: Largeint; nmfield:string):double;
    class function get_Hint               (tbl, cd:string):string;
    class function InteirodoCodigo     (tbl: string; codigo: Largeint; nmfield: string): Largeint;overload;
    class function InteirodoCodigo     (tbl: string; codigo: string; nmfield: string): Largeint;overload;
    class function NomedoCodigo        (tbl: string; codigo: Largeint):string;
    class procedure set_field_type_assign  (qorigem: TDataset; qdestino: TDataset; i:integer);overload;
    class procedure set_field_type_assign  (qorigem, qdestino: TDataset; i, x : integer);overload;
    class procedure set_field_type_assign  (qorigem, qdestino: TDataset; nmfield:string; x : integer);overload;
    class function StringdoCodigo      (tbl: string; codigo: Largeint; nmfield: string): string;
    class function ValordoCodigo       (tbl: string; codigo: Largeint; nmfield:string):currency;
  end;

function BooleandoCodigo(tbl, codigo, nmfield :string; cdfield:string=_cd; bostring:Boolean=False):Boolean;
function  BooleanStatus          (tbl, codigo, nmfield :string):Boolean;overload;
function  CodigodoCampo          (tbl, vlfield, nmfield:string; cdtbldiferente:string=''):string;
function  CodigodaData           (tbl, nmfield:string; vlfield : TDate):string;
function  CodigoExiste           (tbl, nmfield, tpfield, vlfield:string):boolean;overload;
function  CodigoExiste           (tbl, vlfield:string):boolean;overload;
function  ConsistirCep           (Sender: TField; bocobranca:Boolean=false):boolean;
function  CurrencydoCodigo       (tbl, codigo, nmfield:string):double;
function  DoubledoCodigo         (tbl, codigo, nmfield:string):double;
function  get_cd_empresa:string;
function  get_sql_where_and      (tsql: Integer; sql:string):string;
function  get_where_cdempresa    (tbl:string; bowhere:Boolean=false):string;
function  get_qtd_registros      (tabela:string):integer;
procedure getsqlcommandText      (dsrelatorio:string; sql:TStrings);
function  getvalorBo             (bo:Boolean):string;
function  Existe_Campo           (c: TDataset; nmfield:string):boolean;
function  ExisteDetailMestre     (tbl, nmfieldmestre, cdmestre, typemestre, nmfielddetail, cddetail, typedetail:string):integer;
function  ExisteItem             (cd, nuit, tbl:string):boolean;overload;
function  get_qtd_registros_nome (tbl, tblrelacionada, nome:string):Integer;
function  HoradoCodigo           (tbl, codigo, nmfield :string; cdfield:string=_cd; bostring:Boolean=False):TTime;
function  IndiceComponenteFormulario(Formulario: TForm; nmcomponente:string):integer;
function  InteirodoCodigo         (tbl, codigo, nmfield:string):integer;overload;
procedure InsercaoDataSQl         (dti, dtf:Tdatetimepicker; var sql : string; nmdata: string; tsql: integer=0);overload;
procedure InsercaoDataSQl         (dti, dtf:Tdate; var sql : string; nmdata: string; tsql: integer=0);overload;
procedure InsercaoDataSQl         (dti, dtf:TcxDateEdit; var sql : string; nmdata: string; tsql: integer=0);overload;
procedure InsercaoDataSQlMonth    (dti, dtf:TcxDateEdit; var sql : string; nmdata: string; tsql: integer=0);
function  InsercaoDataSQlOr       (dti, dtf:Tdatetimepicker; var sql : string; nmdata: string; tsql: integer=0):boolean;
procedure InsercaovalorSQl        (vli, vlf:currency; var sql : string; nmvalor: string; tsql: integer=0);
procedure ListaNome               (tbl:string; trv:TTreeView; nmgrupo:string='');
function  LoadInformation         (codigo:string; cds:tclientdataset; lbl:TLabel; tabela :string = '';form:string=''; boinsertedit:boolean=false):boolean;overload;
function  MemodoCodigo            (tbl, codigo, nmfield :string):string;
function  MontarEndereco          (qry:TDataSet; bosimples:boolean=false; tbl:string=''; tp:integer=0):String;
function  NomedoCampo             (tbl, codigo, tipo, nmfield:string):string;overload;
function  NomedoCodigoNu          (tbl, codigo:string):string;
function  NomedoCodigo            (tbl, codigo:string):string;overload;
function  NomedoCodigo            (tbl, codigo:string; sqlc:tsqlconnection):string;overload;
function  NomedoCodigo            (tbl, codigo, cdfield, nmfield:string):string;overload;
function  NomedoCodigo            (tbl, codigo, nmfield:string; sqlc: tsqlconnection):string;overload;
function  NomedoCodigo            (tbl, codigo, nmfield:string):string;overload;
function  NomedoCodigo            (con:TFDConnection; tbl, codigo, cdfield, nmfield:string):string;overload;
function  NomeRegistroTabela      (tbl:string):string;
procedure obter_campo_conexao     (dsrelatorio:string; cdfield:TStrings);
procedure preencher_lista_registro(tbl:string; lista: TStrings);
function  PrimeiroRegistro        (tbl: string):integer;overload;
function  TSdoCodigo              (tbl, codigo, nmfield :string):TDateTime;
function  RegistroExiste          (tbl, sqlwhere:string):boolean;overload;
function  setvalorBo              (q: TDataset; nmfield:string):boolean;overload;
procedure set_bo_value            (dataset:TDataSet);overload;
function  UltimoRegistro          (tbl: string):integer;overload;
function  ValordoCodigo           (tbl, codigo, nmfield:string):currency;overload;

implementation

uses uinterbase;

procedure set_bo_value(dataset:TDataSet);
var
  i : Integer;
begin
  for i := 0 to dataset.FieldCount - 1 do
  begin
    if lowercase(Copy(dataset.Fields[i].FieldName, 1, 2)) = _bo then
    begin
      dataset.fieldbyname(dataset.Fields[i].FieldName).AsString := _N;
    end;
  end;
end;

class procedure QRegistro.set_field_type_assign(qorigem: TDataset; qdestino: TDataset; i:integer);
begin
  if qorigem.fields[i].DataType = ftLargeint then
  begin
    qdestino.Fields[i].Asstring  := qorigem.Fields[i].Asstring
  end
  else
  begin
    qdestino.Fields[i].AsVariant := qorigem.Fields[i].AsVariant;
  end;
end;

class procedure QRegistro.set_field_type_assign(qorigem, qdestino: TDataset; i, x:integer);
begin
  if qorigem.fields[i].DataType = ftLargeint then
  begin
    qdestino.Fields[x].Asstring  := qorigem.Fields[i].Asstring
  end
  else
  begin
    qdestino.Fields[x].AsVariant := qorigem.Fields[i].AsVariant;
  end;
end;

class procedure QRegistro.set_field_type_assign(qorigem, qdestino: TDataset; nmfield:string; x:integer);
begin
  if qorigem.Fieldbyname(nmfield).DataType = ftLargeint then
  begin
    qdestino.Fields[x].Asstring  := qorigem.Fieldbyname(nmfield).Asstring
  end
  else
  begin
    qdestino.Fields[x].AsVariant := qorigem.Fieldbyname(nmfield).AsVariant;
  end;
end;

class procedure qregistro.clone_fdquery_para_memtable(mtb: TDataClient; qry: TDataset);
var
  i : integer;
begin
  mtb.m.FieldDefs.Clear;
  for i := 0 to qry.FieldCount -1 do
  begin
         if qry.fields[i].DataType = ftdate     then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftdate)
    else if qry.fields[i].DataType = ftcurrency then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftcurrency)
    else if qry.fields[i].DataType = ftInteger  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftInteger)
    else if qry.fields[i].DataType = ftSmallint then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftSmallint)
    else if qry.fields[i].DataType = ftWord     then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftWord)
    else if qry.fields[i].DataType = ftBoolean  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftBoolean)
    else if qry.fields[i].DataType = ftFloat    then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftFloat)
    else if qry.fields[i].DataType = ftBCD      then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftBCD)
    else if qry.fields[i].DataType = ftTime     then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftTime)
    else if qry.fields[i].DataType = ftDateTime then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftDateTime)
    else if qry.fields[i].DataType = ftBytes    then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftBytes)
    else if qry.fields[i].DataType = ftVarBytes then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftVarBytes)
    else if qry.fields[i].DataType = ftAutoInc  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftAutoInc)
    else if qry.fields[i].DataType = ftBlob     then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftBlob)
    else if qry.fields[i].DataType = ftMemo     then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftMemo)
    else if qry.fields[i].DataType = ftGraphic  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftGraphic)
    else if qry.fields[i].DataType = ftFmtMemo  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftFmtMemo)
    else if qry.fields[i].DataType = ftLargeint then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftLargeint)
    else if qry.fields[i].DataType = ftDataSet  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftDataSet)
    else if qry.fields[i].DataType = ftDBaseOle then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftDBaseOle)
    else if qry.fields[i].DataType = ftTypedBinary  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftTypedBinary)
    else if qry.fields[i].DataType = ftCursor   then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftCursor)
    else if qry.fields[i].DataType = ftFixedChar  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftFixedChar)
    else if qry.fields[i].DataType = ftWideString  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftWideString)
    else if qry.fields[i].DataType = ftOraBlob  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftOraBlob)
    else if qry.fields[i].DataType = ftOraClob  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftOraClob)
    else if qry.fields[i].DataType = ftVariant  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftVariant)
    else if qry.fields[i].DataType = ftInterface  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftInterface)
    else if qry.fields[i].DataType = ftIDispatch  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftIDispatch)
    else if qry.fields[i].DataType = ftGuid  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftGuid)
    else if qry.fields[i].DataType = ftTimeStamp  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftTimeStamp)
    else if qry.fields[i].DataType = ftFMTBcd  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftFMTBcd)
    //else if qry.fields[i].DataType = ftFixedWideChar  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftFixedWideChar)
    //else if qry.fields[i].DataType = ftWideMemo  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftWideMemo)
    //else if qry.fields[i].DataType = ftOraTimeStamp  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftOraTimeStamp)
    //else if qry.fields[i].DataType = ftOraInterval  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftOraInterval)
    //else if qry.fields[i].DataType = ftLongWord  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftLongWord)
    //else if qry.fields[i].DataType = ftShortint  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftShortint)
    //else if qry.fields[i].DataType = ftByte  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftByte)
    //else if qry.fields[i].DataType = ftExtended  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftExtended)
    //else if qry.fields[i].DataType = ftConnection  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftConnection)
    //else if qry.fields[i].DataType = ftParams  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftParams)
    //else if qry.fields[i].DataType = ftStream  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftStream)
    //else if qry.fields[i].DataType = ftTimeStampOffset  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftTimeStampOffset)
    //else if qry.fields[i].DataType = ftObject  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftObject)
    //else if qry.fields[i].DataType = ftSingle  then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftSingle)
    else if qry.fields[i].DataType = ftString   then mtb.m.FieldDefs.Add(qry.fields[i].fieldname, ftString, qry.fields[i].Size)
  end;
  mtb.m.CreateDataSet;
end;

function get_cd_empresa:string;
begin
  result := 'cdempresa='+empresa.cdempresa.ToString;
end;

function get_where_cdempresa(tbl:string; bowhere:Boolean=false):string;
begin
  if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
  begin
    result := ' ';
    if bowhere then
    begin
      result := result + _where
    end
    else
    begin
      result := result + _and;
    end;
    result := result + ' '+tbl+'.'+_cdempresa+'='+empresa.cdempresa.ToString;
  end;
end;

function get_qtd_registros(tabela:string):integer;
begin
   result := retornasqlinteger('select count(*) from '+tabela+get_where_cdempresa(tabela, true));
end;

function get_qtd_registros_nome(tbl, tblrelacionada, nome:string):Integer;
begin
  result := RetornaSQLInteger('select count(*) '+
                              'from '+tbl+' '+
                              'inner join '+tblrelacionada+' on '+tblrelacionada+'.'+_cd+tblrelacionada+'='+tbl+'.'+_cd+tblrelacionada+get_where_cdempresa(tblrelacionada)+
                              'where '+tblrelacionada+'.'+_nm+tblrelacionada+'='+quotedstr(nome)+get_where_cdempresa(tblrelacionada));
end;

procedure preencher_lista_registro(tbl:string; lista: TStrings);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('select nm'+tbl+' from '+tbl+get_where_cdempresa(tbl, true));
  try
    lista.Clear;
    while not q.q.Eof do
    begin
      lista.Add(q.q.FieldByName(_nm+tbl).AsString);
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure obter_campo_conexao(dsrelatorio:string; cdfield:TStrings);
var
  linha : TStrings;
  texto : string;
  p1, p2, i : integer;
begin
  linha := TStringList.Create;
  try
    linha.Text := dsrelatorio;
    texto      := linha[0];
    if lowercase(Copy(texto, 1, 14)) <> 'campo conexao=' then
    begin
      Exit;
    end;
    Delete(texto, 1, 14);
    p1 := 1;
    for i := 1 to Length(texto) do
    begin
      if texto[i] = ',' then
      begin
        p2 := i - 1;
        cdfield.Add(Copy(texto, p1, p2));
        p1 := i + 1;
      end;
    end;
    cdfield.Add(Copy(texto, p1, Length(texto)-p1+1));
  finally
    linha.free;
  end;
end;

procedure getsqlcommandText(dsrelatorio:string; sql:TStrings);
var
  p, i : integer;
  linha : TStrings;
  texto : string;
begin
  if dsrelatorio = '' then
  begin
    exit;
  end;
  if Pos(_codigo_quebra_sql_relatorio, dsrelatorio) = 0 then
  begin
    sql.Add(dsrelatorio);
  end;
  linha := TStringList.Create;
  try
    linha.Text := dsrelatorio;
    if LowerCase(Copy(linha[0], 1, 14)) = 'campo conexao=' then
    begin
      linha.Delete(0);
    end;
    texto := linha.Text;
    p     := 1;
    for i := 1 to length(texto) do
    begin
      if Pos(_codigo_quebra_sql_relatorio, copy(texto, i, 5)) > 0 then
      begin
        sql.add(copy(texto, p, i-P));
        p := i+5;
      end;
    end;
  finally
    freeandnil(linha);
  end;
end;

function MemodoCodigo(tbl, codigo, nmfield :string):string;
var
  q : TClasseQuery;
begin
  if codigo = '' then
  begin
    exit;
  end;
  q := TClasseQuery.create('select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo+get_where_cdempresa(tbl));
  try
    result := q.q.Fields[0].AsString;
  finally
    freeandnil(q);
  end;
end;

class function qregistro.get_Hint(tbl, cd:string):string;
  function makesql:string;
  begin
    result := 'select cd'+tbl+',sguf,nucpf,dsendereco,nufone1,nmbairro,nmmunicipio';
    if tbl <> _funcionario then
    begin
      result := Result +',nucnpj,tppessoa,nuinscest';
    end;
    result := result+',nucep '+
             'from '+tbl+' '+
             'inner join uf u on '+tbl+'.cduf=u.cduf ' +
             'left join municipio m on m.cdmunicipio='+tbl+'.cdmunicipio '+
             'where cd'+tbl+'='+cd+get_where_cdempresa(tbl);
  end;
var
  q : TClasseQuery;
begin
  if cd = '' then
  begin
    Exit;
  end;
  q := TClasseQuery.create(makesql);
  try
    if q.q.FieldByName(_cd+tbl).IsNull then
    begin
      result := '';
      Exit;
    end;
    if tbl <> _funcionario then
    begin
      if q.q.fieldbyname(_tppessoa).asstring = _J then
      begin
        result := 'CNPJ: '+q.q.fieldbyname(_nucnpj).asstring+' Inscrição Estadual: '+q.q.fieldbyname(_nuinscest).asstring
      end
      else
      begin
        result := 'CPF: ' +q.q.fieldbyname(_nucpf).asstring;
      end;
    end
    else
    begin
      result := 'CPF: '+q.q.fieldbyname(_nucpf).asstring;
    end;
    result := result + #13'Endereço: '+q.q.fieldbyname(_dsendereco).asstring+
                             ' Fone: '+q.q.fieldbyname(_nufone1).asstring+
                         #13'Bairro: '+q.q.fieldbyname(_nmbairro).asstring+
                        ' Município: '+q.q.fieldbyname(_nmmunicipio).asstring+
                               ' UF: '+q.q.fieldbyname(_sguf).asstring+
                              ' CEP: '+q.q.fieldbyname(_NUCEP).asstring;
  finally
    freeandnil(q);
  end;
end;

function MontarEndereco(qry:TDataSet; bosimples:boolean=false; tbl:string=''; tp:integer=0):String;
  function AdicionarCampo(texto, campo:string):string;
  begin
    result := texto;
    if qry.fieldbyname(campo).AsString <> '' then
    begin
      if (result <> '') then
      begin
        result := result + ', ';
      end;
      result := result + qry.fieldbyname(campo).asstring;
    end;
  end;
begin
  if tp = 0 then
  begin
    result := qry.fieldbyname(_dsendereco+tbl).AsString;
    result := adicionarcampo(result, _dsnumero     +tbl);
    result := adicionarcampo(result, _dscomplemento+tbl);
    if bosimples then
    begin
      exit;
    end;
    result := adicionarcampo(result, _nmbairro+tbl);
    result := adicionarcampo(result, _nmcidade+tbl);
    result := adicionarcampo(result, _sguf    +tbl);
  end
  else if tp = 1 then
  begin
    result := qry.fieldbyname(_dsendcbrnc+tbl).AsString;
    result := adicionarcampo(result, _dsnumcbrnc+tbl);
    result := adicionarcampo(result, _dscomcbrnc+tbl);
    if bosimples then
    begin
      exit;
    end;
    result := adicionarcampo(result, _nmbaicbrnc+tbl);
    result := adicionarcampo(result, _nmcidcbrnc+tbl);
    result := adicionarcampo(result, _sgufcbrnc+tbl);
  end
  else if tp = 2 then
  begin
    result := qry.fieldbyname(_dsendentrega+tbl).AsString;
    result := adicionarcampo(result, _dsnumentrega+tbl);
    result := adicionarcampo(result, _dscomentrega+tbl);
    if bosimples then
    begin
      exit;
    end;
    result := adicionarcampo(result, _nmbaientrega+tbl);
    result := adicionarcampo(result, _nmcidentrega+tbl);
    result := adicionarcampo(result, _sguf+_entrega+tbl);
  end;
end;

procedure ListaNome(tbl:string; trv:TTreeView; nmgrupo:string='');
  function makesql:string;
  begin
    result := 'select nm'+tbl+' from '+tbl+' where ';
    if nmgrupo <> '' then
    begin
      result := result + 'nm'+tbl+' like '''+nmgrupo+'%'' ';
    end;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      if nmgrupo <> '' then
      begin
        result := result + ' and ';
      end;
      result := result + ' cdempresa='+empresa.cdempresa.ToString;
    end;
    if nmgrupo <> '' then
    begin
      result := result + 'order by nm'+tbl
    end
    else
    begin
       result := result + 'group by nm'+tbl;
    end;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(makesql);
  trv.Selected.DeleteChildren;
  try
    while not q.q.eof do
    begin
      trv.items.AddChild(trv.Selected, q.q.fields[0].asstring);
      q.q.next;
    end;
    trv.Selected.Expanded := true;
  finally
    freeandnil(q);
  end;
end;

function existe_campo(c: tdataset; nmfield:string):boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to c.FieldCount - 1 do
  begin
    if uppercase(c.Fields[i].FieldName) = uppercase(nmfield) then
    begin
      result := true;
      break;
    end;
  end;
end;

function NomeRegistroTabela(tbl:string):string;
var
  q    : TClasseQuery;
  lista: tstrings;
begin
  q     := TClasseQuery.create('select nm'+tbl+' from '+tbl+get_where_cdempresa(tbl)+' order by nm'+tbl);
  lista := tstringlist.create;
  try
    while not q.q.eof do
    begin
      lista.Add(q.q.fields[0].asstring);
      q.q.next;
    end;
    result := lista.Text;
  finally
    freeandnil(q);
    freeandnil(lista);
  end;
end;

function setvalorBo(q: TDataset; nmfield:string):boolean;
begin
  result := q.fieldbyname(nmfield).asstring = _S;
end;

function getvalorBo(bo:Boolean):string;
begin
  if bo then
  begin
    result := _S
  end
  else
  begin
    result := _N;
  end;
end;

function nmfieldcidade(suf:string):string;
begin
  if suf = 'cbrnc'  then
  begin
    result := _nmcidcbrnc
  end
  else if suf = _entrega then
  begin
    result := _nmcidentrega
  end
  else
  begin
    result := _nmcidade;
  end;
end;

function ConsistirCep(Sender: TField; bocobranca:Boolean=false):boolean;
  function makesql(nmnucep:string):string;
  begin
    result := 'select c.logradouro'+
                    ',b.nmbairro'+
                    ',cc.nmcidade'+
                    ',u.cduf'+
                    ',u.sguf'+
                    ',m.cdmunicipio'+
                    ',m.nmmunicipio'+
                    ',c.cdcep '+
              'from cep c '+
              'left join bairro b on b.cdbairro=c.cdbairro '+
              'left join cidadecep cc on cc.cdcidade=b.cdcidade '+
              'left join uf u on u.cduf=cc.cduf '+
              'left join municipio m on m.cduf=cc.cduf and m.nmmunicipio=cc.nmcidade '+
              'where c.nucep='+quotedstr(sender.DataSet.fieldbyname(nmnucep).AsString);
  end;
var
  s : TClasseQuery;
  nmnucep, nmcduf, nmcdmunicipio, nmdsendereco, nmbairro, texto1, texto2 : string;
  procedure set_logradouro;
  begin
    if (sender.DataSet.fieldbyname(nmdsendereco).AsString <> s.q.fieldbyname(_logradouro).AsString) and (sender.DataSet.fieldbyname(nmdsendereco).AsString <> '') then
    begin
      texto1 := 'Endereço: '+sender.DataSet.fieldbyname(nmdsendereco).AsString;
      texto2 := 'Endereço: '+s.q.fieldbyname(_logradouro).AsString;
    end
    else
    begin
      sender.DataSet.fieldbyname(nmdsendereco).AsString := s.q.fieldbyname(_logradouro).AsString;
    end;
  end;
  procedure set_bairro;
  begin
    if (sender.DataSet.fieldbyname(nmbairro).AsString <> s.q.fieldbyname(_nmbairro).AsString) and (sender.DataSet.fieldbyname(nmbairro).AsString <> '') then
    begin
      texto1 := texto1 +#13'Bairro      : '+sender.DataSet.fieldbyname(nmbairro).AsString;
      texto2 := texto2 +#13'Bairro      : '+s.q.fieldbyname(_nmbairro).AsString;
    end
    else
    begin
      sender.DataSet.fieldbyname(nmbairro).AsString := s.q.fieldbyname(_nmbairro).AsString;
    end;
  end;
  procedure set_municipio;
  begin
    if (sender.DataSet.fieldbyname(nmcdmunicipio).AsString <> s.q.fieldbyname(_cdmunicipio).AsString) and (sender.DataSet.fieldbyname(nmcdmunicipio).AsString <> '') then
    begin
      texto1 := texto1 +#13'Cidade    : '+NomedoCodigo(_municipio, sender.DataSet.fieldbyname(nmcdmunicipio).AsString);
      texto2 := texto2 +#13'Cidade    : '+s.q.fieldbyname(_nmmunicipio).AsString;
    end
    else
    begin
      sender.DataSet.fieldbyname(nmcdmunicipio).AsString := s.q.fieldbyname(_cdmunicipio).AsString;
    end;
  end;
  procedure set_unidade_federativa;
  begin
    if (sender.DataSet.fieldbyname(nmcduf).AsString <> s.q.fieldbyname(_cduf).AsString) and (sender.DataSet.fieldbyname(nmcduf).AsString <> '') then
    begin
      texto1 := texto1 +#13'UF            : '+NomedoCodigo(_uf, sender.DataSet.fieldbyname(nmcduf).AsString, _sguf);
      texto2 := texto2 +#13'UF            : '+s.q.fieldbyname(_sguf).AsString;
    end
    else
    begin
      sender.DataSet.fieldbyname(nmcduf).AsString := s.q.fieldbyname(_cduf).AsString;
    end;
  end;
begin
  result := false;
  texto1 := '';
  texto2 := '';
  nmdsendereco  := _dsendereco;
  nmbairro      := _nmbairro;
  nmcdmunicipio := _cdmunicipio;
  nmcduf        := _cduf;
  nmnucep       := _nucep;
  if bocobranca then
  begin
    nmdsendereco  := _dsendcbrnc;
    nmbairro      := _nmbaicbrnc;
    nmcdmunicipio := _cdmunicipiocbrnc;
    nmcduf        := _cdufcbrnc;
    nmnucep       := _nucepcbrnc;
  end;
  s := TClasseQuery.create(makesql(nmnucep));
  try
    if s.q.fieldbyname(_cdcep).asinteger = 0 then
    begin
      exit;
    end;
    result := true;
    set_logradouro;
    set_bairro;
    set_municipio;
    set_unidade_federativa;
    // pede a confirmação da mudança quando já existe um endereço preenchido
    if (texto1 = '') or
       (messagedlg('Alterar o endereço de '#13#13+texto1+#13#13'para'#13#13+texto2+'?', mtConfirmation, [mbyes, mbno], 0) = mrno) then
    begin
      Exit;
    end;
    sender.DataSet.fieldbyname(nmdsendereco).AsString  := s.q.fieldbyname(_logradouro).AsString;
    sender.DataSet.fieldbyname(nmbairro).AsString      := s.q.fieldbyname(_nmbairro).AsString;
    sender.DataSet.fieldbyname(nmcduf).AsString        := s.q.fieldbyname(_cduf).asstring;
    sender.DataSet.fieldbyname(nmcdmunicipio).AsString := s.q.fieldbyname(_cdmunicipio).asstring;
    result := True;
  finally
    freeandnil(s);
  end;
end;

function UltimoRegistro(tbl: string):integer;
  function makesql:string;
  begin
    result := 'select max(cd'+tbl+') from '+tbl;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result +' where cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  Result := RetornaSQLInteger(makesql);
end;

function IndiceComponenteFormulario(Formulario: TForm; nmcomponente:string):integer;
var
  i : integer;
begin
  result := -1;
  for i := 0 to formulario.ComponentCount - 1 do
  begin
    if lowercase(formulario.Components[i].Name) = lowercase(nmcomponente) then
    begin
      result := i;
      break;
    end;
  end;
end;

function get_sql_where_and(tsql: Integer; sql:string):string;
begin
  if tsql = length(sql) then
  begin
    result := sql + 'where '
  end
  else
  begin
    result := sql + 'and ';
  end;
end;

procedure InsercaoDataSQl(dti, dtf:TcxDateEdit; var sql : string; nmdata: string; tsql: integer=0);
begin
  if dti.Text = '' then
  begin
    exit;
  end;
  sql := get_sql_where_and(TSQL, sql);
  if dtf.Text <> '' then
  begin
    sql := sql + nmdata+' between '+getdtbanco(dti.Date)+' and '+getdtbanco(dtf.Date)+' '
  end
  else
  begin
    sql := sql + nmdata+'='+getdtbanco(dti.Date)+' ';
  end;
end;

procedure InsercaoDataSQlMonth(dti, dtf:TcxDateEdit; var sql : string; nmdata: string; tsql: integer=0);
begin
  if dti.Text = ''then
  begin
    exit;
  end;
  if dtf.Text = '' then
  begin
    MessageDlg('Data final deve ser preenchida.', mtInformation, [mbOK], 0);
    dtf.SetFocus;
    Abort;
  end;
  sql := get_sql_where_and(TSQL, sql);
  sql := sql + ' EXTRACT(month FROM '+nmdata+')='+formatdatetime(_mm, dti.Date)+' and EXTRACT(day FROM '+nmdata+') between '+formatdatetime(_dd, dti.Date)+' and '+formatdatetime(_dd, dtf.Date)+' ';
end;

procedure InsercaoDataSQl(dti, dtf:Tdatetimepicker; var sql : string; nmdata: string; tsql: integer=0);
begin
  if not dti.Checked then
  begin
    exit;
  end;
  sql := get_sql_where_and(TSQL, sql);
  if dtf.Checked then
  begin
    sql := sql + nmdata+' between '+getdtbanco(dti.Date)+' and '+getdtbanco(dtf.Date)+' '
  end
  else
  begin
    sql := sql + nmdata+'='+getdtbanco(dti.Date)+' ';
  end;
end;

procedure InsercaoDataSQl(dti, dtf:Tdate; var sql : string; nmdata: string; tsql: integer=0);
begin
  sql := get_sql_where_and(TSQL, sql);
  if dtf <> dti then
  begin
    sql := sql + nmdata+' between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '
  end
  else
  begin
    sql := sql + nmdata+'='+getdtbanco(dti)+' ';
  end;
end;

procedure InsercaovalorSQl(vli, vlf:currency; var sql : string; nmvalor: string; tsql: integer=0);
begin
  sql := get_sql_where_and(TSQL, sql);
  if vlf > 0 then
  begin
    if vli < vlf then
    begin
      sql := sql + nmvalor+' between '+getcurrencys(vli)+' and '+getcurrencys(vlf)+' '
    end
    else
    begin
      sql := sql + nmvalor+' between '+getcurrencys(vlf)+' and '+getcurrencys(vli)+' '
    end;
  end
  else
  begin
    sql := sql + 'and '+nmvalor + '=' + getcurrencys(vli)+' ';
  end;
end;

function HoradoCodigo(tbl, codigo, nmfield :string; cdfield:string=_cd; bostring:Boolean=False):TTime;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where '+cdfield+tbl+'=';
    if bostring then
    begin
      result := result + QuotedStr(codigo)
    end
    else
    begin
      result := result + codigo;
    end;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      Result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLHora(makesql);
end;

function NomedoCodigo(tbl, codigo, nmfield:string):string;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := '';
  if codigo = '' then
  begin
    exit;
  end;
  Result := RetornaSQLString(makesql);
end;

function  NomedoCodigo(con:TFDConnection; tbl, codigo, cdfield, nmfield:string):string;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where '+cdfield+'='+codigo;
    if ExisteCampoNaTabela(con, tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := '';
  if codigo = '' then
  begin
    exit;
  end;
  Result := RetornaSQLString(con, makesql);
end;

function NomedoCodigo(tbl, codigo, cdfield, nmfield:string):string;
var
  sql : string;
  cdname, cdvalue : TStrings;
  p1, i : integer;
  boempresa :Boolean;
begin
  result := '';
  if codigo = '' then
  begin
    exit;
  end;
  boempresa := ExisteCampoNaTabela(tbl, _cdempresa);
  sql     := 'select '+nmfield+' from '+tbl;
  if boempresa then
  begin
    result := result +' where cdempresa='+empresa.cdempresa.ToString+' ';
  end;
  cdname  := TStringlist.create;
  cdvalue := TStringList.create;
  try
    p1 := 1;
    for i := 1 to length(codigo) do
    begin
      if codigo[i] = ',' then
      begin
        cdvalue.Add(copy(codigo, p1, i - p1));
        p1 := i + 1;
      end;
    end;
    cdvalue.add(copy(codigo, p1, length(codigo)-p1+1));
    p1 := 1;
    for i := 1 to length(cdfield) do
    begin
      if cdfield[i] = ',' then
      begin
        cdname.Add(copy(cdfield, p1, i - p1));
        p1 := i + 1;
      end;
    end;
    cdname.add(copy(cdfield, p1, length(cdfield)- p1+1));
    if boempresa then
    begin
      sql := sql + ' and '
    end
    else
    begin
      sql := sql + ' where  ';
    end;
    for i := 0 to cdname.Count - 1 do
    begin
      if i > 0 then
      begin
        sql := sql + ' and ';
      end;
      sql := sql + cdname[i] + '=' + cdvalue[i]
    end;
    result := RetornaSQLString(sql);
  finally
    cdname.free;
    cdvalue.free;
  end;
end;

function NomedoCodigo(tbl, codigo, nmfield:string; sqlc: tsqlconnection):string;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := '';
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql);
end;

function InsercaoDataSQlOr(dti, dtf:Tdatetimepicker; var sql : string; nmdata: string; tsql: integer=0):boolean;
begin
  result := false;
  if not dti.Checked then
  begin
    exit;
  end;
  if tsql = length(sql) then
  begin
    sql := sql + 'where '
  end
  else
  begin
    sql := sql + ' or ';
  end;
  if dtf.Checked then
  begin
    sql := sql + nmdata+' between '+getdtbanco(dti.Date)+' and '+getdtbanco(dtf.Date)+' '
  end
  else
  begin
    sql := sql + nmdata+'='+getdtbanco(dti.Date)+' ';
  end;
  result := true;
end;

function NomedoCodigo(tbl, codigo:string):string;
  function makesql:string;
  begin
    result := 'select nm'+tbl+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) and (tbl <> _empresa) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := '';
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql);
end;

function NomedoCodigoNu(tbl, codigo:string):string;
  function makesql:string;
  begin
    result := 'select nm'+tbl+' from '+tbl+' where nu'+tbl+'='+quotedstr(codigo);
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + 'and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := '';
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql);
end;

function NomedoCodigo(tbl, codigo:string; sqlc:tsqlconnection):string;
  function makesql:string;
  begin
    result := 'select nm'+tbl+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := '';
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql);
end;

function CodigoExiste(tbl, vlfield:string):boolean;
  function makesql:string;
  var
    cdfield, tabela : string;
  begin
    tabela  := tbl;
    cdfield := _cd+tbl;
    if tbl = _nuordserv then
    begin
      tabela  := _ordserv;
      cdfield := _nuordserv;
    end
    else if tbl = _nupedido then
    begin
      tabela  := _pedido;
      cdfield := _nupedido;
      vlfield := QuotedStr(vlfield);
    end
    else if (tbl = _sticms) or (tbl = _stcofins) or (tbl = _stipi) or (tbl = _stpis) then
    begin
      cdfield := _nu+tbl;
      vlfield := QuotedStr(vlfield);
    end
    else if tbl = _nupedido then
    begin
      tabela  := _pedido;
      cdfield := _nupedido;
      vlfield := QuotedStr(vlfield);
    end;
    result := 'select count(*) from '+tabela+' where '+cdfield+'='+vlfield;
    if ExisteCampoNaTabela(tabela, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := false;
  if (vlfield = '') or (not apenas_numero(vlfield)) then
  begin
    exit;
  end;
  result := RetornaSQLInteger(makesql) > 0;
end;

class function qregistro.CodigoExiste(tbl: string; codigo:Largeint):boolean;
  function makesql:string;
  begin
    result := 'select count(*) from '+tbl+' where cd'+tbl+'='+codigo.ToString;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := RetornaSQLInteger(makesql) > 0;
end;

function RegistroExiste(tbl, sqlwhere:string):boolean;
  function makesql:string;
  begin
    result := 'select count(*) from '+tbl+' where '+sqlwhere;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) and (tbl <> _reg60a)  and (tbl <> _reg60m) then
    begin
      Result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := false;
  if sqlwhere = '' then
  begin
    exit;
  end;
  result := RetornaSQLInteger(makesql) > 0;
end;

class function Qregistro.codigo_do_registro_existe(nmcampo, vlcampo, tbl, codigo:string):string;
  function sql:string;
  begin
    result := 'select cd'+tbl+' from '+tbl+' where cdempresa='+empresa.cdempresa.ToString+' and '+nmcampo+'='+quotedstr(vlcampo);
    if codigo <> '' then
    begin
      result := result + 'and cd'+tbl+'<>'+codigo;
    end;
  end;
begin
  result := RetornaSQLString(sql);
end;

procedure Carregar_RichEdit(tbl, cd, nmfield_blob:string; rce:TRichEdit);
  function makesql:string;
  begin
    result := 'select '+nmfield_blob+' from '+tbl+' where cd'+tbl+'='+cd;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
var
  s : TClasseQuery;
begin
  s := TClasseQuery.Create(makesql);
  try
    rce.Lines.Text := s.q.fields[0].AsString;
  finally
    freeandnil(s);
  end;
end;

class function QRegistro.Codigo_status_novo(tbl:string):integer;
  function makesql:string;
  begin
    result := 'select cdst'+tbl+' from st'+tbl+' where bonovo=''S'' ';
    if ExisteCampoNaTabela(_ST+tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
    result := result + ' order by cdst'+tbl
  end;
begin
  Result := RetornaSQLInteger(makesql);
end;

function LoadInformation(codigo:string; cds:tclientdataset; lbl:TLabel; tabela :string = '';form:string=''; boinsertedit:boolean=false):boolean;
  function makesql:string;
  begin
    result := 'select cd'+tabela+',nm'+tabela+' from '+tabela+' where cdfuncao=1 and cdstfuncionario=1 and cd'+tabela+'='+codigo;
    if ExisteCampoNaTabela(tabela, _cdempresa) and (tabela <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
  function makesql2:string;
  begin
    result := 'select cd'+tabela+',nm'+tabela+' from '+tabela+' where cd'+tabela+'='+codigo;
    if ExisteCampoNaTabela(tabela, _cdempresa) and (tabela <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
var
  q : TClasseQuery;
  nmcampo : string;
  procedure set_nmcampo;
  begin
    nmcampo := copy(lbl.name, 6, length(lbl.name) - 5);
    if tabela = '' then
    begin
      tabela := copy(lbl.name, 6, length(lbl.name) - 5);
    end;
    if nmcampo = _cor+_veiculo then
    begin
      nmcampo := tabela;
    end;
    if ((lowercase(form) = _frm+_movbancario) and (tabela = _fornecedor)) or ((lowercase(form) = _frm+_rpa) and (tabela = _representante)) then
    begin
      nmcampo := tabela;
    end;
    nmcampo := _cd+nmcampo;
  end;
begin
  result := false;
  if codigo = '' then
  begin
    exit;
  end;
  set_nmcampo;
  q       := TClasseQuery.create;
  try
    if (form  = _requisicao) or (form = _apac) then
    begin
      q.q.sql.text := makesql;
      q.q.open;
      if q.q.fields[0].asinteger < 0 then
      begin
        messagedlg('Funcionário '+codigo+' não possui a função !', mtError, [mbok], 0);
        lbl.Caption := '';
        Result:=true;
        exit;
      end;
    end;
    q.q.close;
    q.q.open(makesql2);
    if q.q.fields[0].asinteger < 0 then
    begin
      exit;
    end;
    lbl.Caption := q.q.fields[1].asstring;
    if (cds.state = dsinsert) or (cds.state = dsedit) or boinsertedit then
    begin
      cds.fieldbyname(nmcampo).asstring  := q.q.fields[0].asstring;
    end;
    result := true;
  finally
    freeandnil(q);
  end;
end;

function PrimeiroRegistro(tbl: string):integer;
  function makesql:string;
  begin
    result := 'select min(cd'+tbl+') from '+tbl;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result +' where cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := RetornaSQLInteger(makesql);
end;

function ExisteItem(cd, nuit, tbl:string):boolean;
  function makesql:string;
  begin
    result := 'select count(*) from It'+tbl+' where cd'+tbl+'='+cd+' and nuit'+tbl+'='+nuit;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := RetornaSQLInteger(makesql) > 0;
end;

function ExisteDetailMestre(tbl, nmfieldmestre, cdmestre, typemestre, nmfielddetail, cddetail, typedetail:string):integer;
  function makesql:string;
  begin
    result := 'select count(*) from '+tbl+' where '+ nmfieldmestre+'=';
    if typemestre = _string then
    begin
      if typedetail = _string then
      begin
        result := result + quotedstr(cdmestre)+' and '+nmfielddetail+'='+quotedstr(cddetail)
      end
      else
      begin
        result := result + quotedstr(cdmestre)+' and '+nmfielddetail+'='+cddetail;
      end;
    end
    else
    begin
      if typedetail = _string then
      begin
        result := result + cdmestre+' and '+nmfielddetail+'='+quotedstr(cddetail)
      end
      else
      begin
        result := result + cdmestre+' and '+nmfielddetail+'='+cddetail;
      end;
    end;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := RetornaSQLInteger(makesql);
end;

function DoubledoCodigo(tbl, codigo, nmfield:string):double;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      Result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLCurrency(makesql);
end;

function CurrencydoCodigo(tbl, codigo, nmfield:string):double;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario)  then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLCurrency(makesql);
end;

function ValordoCodigo(tbl, codigo, nmfield:string):currency;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario)  then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLCurrency(makesql);
end;

function InteirodoCodigo(tbl, codigo, nmfield:string):integer;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario)  then
    begin
      Result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLInteger(makesql);
end;

{
class function QRegistro.DatadoCodigo(tbl, codigo, nmfield :string):TDate;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario)  then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.tostring;
    end;
  end;
begin
  Result := 0;
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLData(makesql);
end;
}

function TSdoCodigo(tbl, codigo, nmfield :string):TDateTime;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario)  then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLTimeStamp(makesql);
end;

function BooleanStatus(tbl, codigo, nmfield :string):Boolean;
  function makesql:string;
  var
    boempresast, boempresa : Boolean;
  begin
    boempresa   := ExisteCampoNaTabela(tbl    , _cdempresa);
    boempresast := ExisteCampoNaTabela(_st+tbl, _cdempresa);
    result := 'select '+nmfield+' from '+tbl+' left join st'+tbl+' on st'+tbl+'.cdst'+tbl+'='+tbl+'.cdst'+tbl+' ';
    if boempresast then
    begin
      result := result +  'and '+tbl+'.cdempresa=st'+tbl+'.cdempresa ';
    end;
    result := Result + 'where '+tbl+'.cdST'+tbl+'='+codigo;
    if boempresa then
    begin
      result := Result + ' and '+tbl+'.cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := false;
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql) = _S;
end;

function NomedoCampo(tbl, codigo, tipo, nmfield:string):string;
  function makesql:string;
  begin
    result := 'select nm'+tbl+' from '+tbl+' where '+nmfield+'=';
    if tipo = _string then
    begin
      result := result + ' '+quotedstr(codigo)
    end
    else
    begin
      result := result + codigo;
    end;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := RetornaSQLString(makesql);
end;

class function QRegistro.CampodoCampo(tbl, cdfield, vlfield, nmfield:string; bostring:boolean=false):string;
var
  sql : string;
  cdname, cdvalue : TStrings;
  p1, i : integer;
  boempresa :Boolean;
begin
  if vlfield = '' then
  begin
    exit;
  end;
  sql       := 'select '+nmfield+' from '+tbl;
  Boempresa := ExisteCampoNaTabela(tbl, _cdempresa);
  if boempresa then
  begin
    sql := sql + ' where cdempresa='+empresa.cdempresa.ToString;
  end;
  cdname  := TStringlist.create;
  cdvalue := TStringList.create;
  try
    p1 := 1;
    for i := 1 to length(vlfield) do
    begin
      if vlfield[i] = ',' then
      begin
        cdvalue.Add(copy(vlfield, p1, i - p1));
        p1 := i + 1;
      end;
    end;
    cdvalue.add(copy(vlfield, p1, length(vlfield)-p1+1));
    p1 := 1;
    for i := 1 to length(cdfield) do
    begin
      if cdfield[i] = ',' then
      begin
        cdname.Add(copy(cdfield, p1, i - p1));
        p1 := i + 1;
      end;
    end;
    cdname.add(copy(cdfield, p1, length(cdfield)- p1+1));
    if boempresa then
    begin
      sql := sql + ' and '
    end
    else
    begin
      sql := sql + ' where ';
    end;
    for i := 0 to cdname.Count - 1 do
    begin
      if i > 0 then
      begin
        sql := sql + ' and ';
      end;
      if bostring then
      begin
        sql := sql + cdname[i] + '='+QuotedStr(cdvalue[i])
      end
      else
      begin
        sql := sql + cdname[i] + '=' + cdvalue[i]
      end;
    end;
    result := RetornaSQLString(sql);
  finally
    freeandnil(cdname);
    freeandnil(cdvalue);
  end;
end;

function CodigodoCampo(tbl, vlfield, nmfield:string; cdtbldiferente:string=''):string;
  function makesql:string;
  begin
    result := 'select cd'+tbl+' from '+tbl+' where '+nmfield+'='+quotedstr(vlfield);
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
    if cdtbldiferente <> '' then
    begin
      result := result + ' and cd'+tbl+'<>'+cdtbldiferente;
    end;
  end;
begin
  if vlfield = '' then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql);
end;

function CodigodaData(tbl, nmfield:string; vlfield : TDate):string;
  function makesql:string;
  begin
    result := 'select cd'+tbl+' from '+tbl+' where '+nmfield+'='+getdtbanco(vlfield);
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := RetornaSQLString(makesql);
end;

function CodigoExiste(tbl, nmfield, tpfield, vlfield:string):boolean;
  function makesql:string;
  begin
    result := 'select count(*) from '+tbl+' where '+nmfield+'=' + vlfield;
    if ExisteCampoNaTabela(tbl, _cdempresa)  and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
  function makesql2:string;
  begin
    result := 'select count(*) from '+tbl+' where '+nmfield+'=' +quotedstr(vlfield);
    if ExisteCampoNaTabela(tbl, _cdempresa)  and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := false;
  if (nmfield = '') or (vlfield = '') then
  begin
    exit;
  end;
  if lowercase(tpfield) <> _string then
  begin
    result := RetornaSQLInteger(makesql) > 0
  end
  else
  begin
    result := RetornaSQLInteger(makesql2) > 0;
  end;
end;

function BooleandoCodigo(tbl, codigo, nmfield :string; cdfield:string=_cd; bostring:Boolean=False):Boolean;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where '+cdfield+tbl+'=';
    if bostring then
    begin
      result := result + QuotedStr(codigo)
    end
    else
    begin
      result := result + codigo;
    end;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      Result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := false;
  if codigo = '' then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql) = _S;
end;

class function QRegistro.BooleandoCodigo(tbl: string; codigo: Largeint; nmfield: string): Boolean;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo.tostring;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      Result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := false;
  if codigo = 0 then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql) = _S;
end;

class function QRegistro.CodigodoNome(tbl, nome: string): string;
  function makesql:string;
  begin
    Result := 'select cd'+tbl+' from '+tbl+' where nm'+tbl+'='+QuotedStr(nome);
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  nome := UpperCase(nome);
  if (length(nome) >= 3) and (copy(nome, length(nome) - 1, 2) = '''''') then
  begin
    delete(nome, length(nome) - 1, 2);
    nome := nome + '"';
  end;
  result := RetornaSQLString(makesql);
end;

class function QRegistro.CodigodoNomeInteiro(tbl, nome: string): Largeint;
  function makesql:string;
  begin
    Result := 'select cd'+tbl+' from '+tbl+' where nm'+tbl+'='+QuotedStr(nome);
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  nome := UpperCase(nome);
  if (length(nome) >= 3) and (copy(nome, length(nome) - 1, 2) = '''''') then
  begin
    delete(nome, length(nome) - 1, 2);
    nome := nome + '"';
  end;
  result := RetornaSQLInteger(makesql);
end;

class function QRegistro.CodigodoString(tbl, vlfield, nmfield, cdtbldiferente: string): Largeint;
  function makesql:string;
  begin
    result := 'select cd'+tbl+' from '+tbl+' where '+nmfield+'='+quotedstr(vlfield);
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
    if cdtbldiferente <> '' then
    begin
      result := result + ' and cd'+tbl+'<>'+cdtbldiferente;
    end;
  end;
begin
  if vlfield = '' then
  begin
    result := 0;
    exit;
  end;
  result := RetornaSQLInteger(makesql);
end;

class function QRegistro.InteirodoCodigo(tbl: string; codigo: Largeint; nmfield: string): Largeint;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo.tostring;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = 0 then
  begin
    exit;
  end;
  Result := RetornaSQLInteger(makesql);
end;

class function QRegistro.CodigoInteiroExiste(tbl: string; vlfield: Largeint): boolean;
  function makesql:string;
  var
    cdfield, tabela : string;
  begin
    tabela  := tbl;
    cdfield := _cd+tbl;
    if tbl = _nuordserv then
    begin
      tabela  := _ordserv;
      cdfield := _nuordserv;
    end
    else if tbl = _nupedido then
    begin
      tabela  := _pedido;
      cdfield := _nupedido;
    end;
    result := 'select count(*) from '+tabela+' where '+cdfield+'='+inttostr(vlfield);
    if ExisteCampoNaTabela(tabela, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := false;
  if vlfield = 0 then
  begin
    exit;
  end;
  result := RetornaSQLInteger(makesql) > 0;
end;

class function QRegistro.NomedoCodigo(tbl: string; codigo: Largeint): string;
  function makesql:string;
  begin
    result := 'select nm'+tbl+' from '+tbl+' where cd'+tbl+'='+codigo.tostring;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) and (tbl <> _empresa) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := '';
  if codigo = 0 then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql);
end;

class function QRegistro.ValordoCodigo(tbl: string; codigo: Largeint; nmfield: string): currency;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo.tostring;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario)  then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = 0 then
  begin
    exit;
  end;
  result := RetornaSQLCurrency(makesql);
end;

class function QRegistro.CodigodoCampoInteiro(tbl: string; vlfield: Largeint; nmfield, cdtbldiferente: string): string;
  function makesql:string;
  begin
    result := 'select cd'+tbl+' from '+tbl+' where '+nmfield+'='+vlfield.tostring;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
    if cdtbldiferente <> '' then
    begin
      result := result + ' and cd'+tbl+'<>'+cdtbldiferente;
    end;
  end;
begin
  if vlfield = 0 then
  begin
    exit;
  end;
  result := RetornaSQLString(makesql);
end;

class function QRegistro.CodigoStatusNovo(tbl: string): integer;
  function makesql:string;
  begin
    result := 'select cdst'+tbl+' from st'+tbl+' where bonovo=''S'' ';
    if ExisteCampoNaTabela(_ST+tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
    result := result + ' order by cdst'+tbl
  end;
begin
  Result := RetornaSQLInteger(makesql);
end;

class function QRegistro.StringdoCodigo(tbl: string; codigo: Largeint; nmfield: string): string;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo.tostring;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := '';
  if codigo = 0 then
  begin
    exit;
  end;
  Result := RetornaSQLString(makesql);
end;

class function QRegistro.DatadoCodigo(tbl: string; codigo: Largeint; nmfield: string): TDate;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo.tostring;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario)  then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  Result := 0;
  if codigo = 0 then
  begin
    exit;
  end;
  result := RetornaSQLData(makesql);
end;

class function QRegistro.CodigodoWhere(tbl, sqlwhere: string): Largeint;
  function makesql:string;
  begin
    result := 'select cd'+tbl+' from '+tbl+' where '+sqlwhere;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  if sqlwhere = '' then
  begin
    result := 0;
    exit;
  end;
  result := RetornaSQLInteger(makesql);
end;

class function QRegistro.CodigodoInteiro(tbl: string; vlfield: Largeint; nmfield, cdtbldiferente: string): Largeint;
  function makesql:string;
  begin
    result := 'select cd'+tbl+' from '+tbl+' where '+nmfield+'='+vlfield.tostring;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
    if cdtbldiferente <> '' then
    begin
      result := result + ' and cd'+tbl+'<>'+cdtbldiferente;
    end;
  end;
begin
  if vlfield = 0 then
  begin
    result := 0;
    exit;
  end;
  result := RetornaSQLInteger(makesql);
end;

class function QRegistro.InteirodoCodigo(tbl, codigo, nmfield: string): Largeint;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario) then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = '' then
  begin
    exit;
  end;
  Result := RetornaSQLInteger(makesql);
end;

class function QRegistro.DoubledoCodigo(tbl: string; codigo: Largeint; nmfield: string): double;
  function makesql:string;
  begin
    result := 'select '+nmfield+' from '+tbl+' where cd'+tbl+'='+codigo.tostring;
    if ExisteCampoNaTabela(tbl, _cdempresa) and (tbl <> _usuario)  then
    begin
      result := result + ' and cdempresa='+empresa.cdempresa.ToString;
    end;
  end;
begin
  result := 0;
  if codigo = 0 then
  begin
    exit;
  end;
  result := RetornaSQLDouble(makesql);
end;

end.
