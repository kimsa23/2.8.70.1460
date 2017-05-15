unit ClasseORM;

interface

uses Rtti, system.SysUtils, classeexecutasql, classequery, System.Variants, data.db;

Type
  TableName = class(TCustomAttribute)
  private
    FName: String;
  public
    property Name: String read FName write FName;
    constructor Create(aName: String);
  end;
  KeyField = class(TCustomAttribute)
  private
    FName: String;
  public
    constructor Create(aName: String);
    property Name: String read FName write FName;
  end;
  TGenericDAO = class
  private
    class function GetTableName<T: class>(Obj: T): String;
    class function getSqlWhere<T: class>(Obj: T): string;
    class procedure SetValue<T: class>(Obj: T; P: TRttiProperty; S: Variant);
  public
    class function Insert<T: class>(Obj: T; boscript: boolean=false):string;
    class function Delete<T: class>(Obj: T; boscript: boolean=false):string;
    class function Update<T: class>(Obj: T; boscript: boolean=false):string;
    class function Select<T: class>(Obj: T):boolean;
  end;

implementation

{ TGenericDAO }

class function TGenericDAO.Insert<T>(Obj: T; boscript: boolean=false):string;
var
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Prop: TRttiProperty;
  strFields, strValues: String;
  Atributo: TCustomAttribute;
  IsKey: Boolean;
begin
  strFields := '';
  strValues := '';
  result := 'INSERT INTO ' + GetTableName(Obj);
  Contexto := TRttiContext.Create;
  TypObj := Contexto.GetType(TObject(Obj).ClassInfo);
  for Prop in TypObj.GetProperties do
  begin
    IsKey := False;
    for Atributo in Prop.GetAttributes do
    begin
      if Atributo is KeyField then
      begin
        IsKey := True;
      end;
    end;
    if not IsKey then
    begin
      strFields := strFields + Prop.Name + ',';
      case Prop.GetValue(TObject(Obj)).Kind of
        tkWChar, tkLString, tkWString, tkString,
        tkChar, tkUString: strValues := strValues + QuotedStr(Prop.GetValue(TObject(Obj)).AsString) + ',';
        tkInteger, tkInt64: strValues := strValues + IntToStr(Prop.GetValue(TObject(Obj)).AsInteger) + ',';
        tkFloat: strValues := strValues + FloatToStr(Prop.GetValue(TObject(Obj)).AsExtended) + ',';
        else
         raise Exception.Create('Type not Supported');
      end;
    end;
  end;
  strFields := Copy(strFields, 1, Length(strFields) - 1);
  strValues := Copy(strValues, 1, Length(strValues) - 1);
  result := result + '(' + strFields + ') VALUES (' + strValues + ')';
  if not boscript then
  begin
    ExecutaSQL(result);
  end;
end;

class function TGenericDAO.Select<T>(Obj: T): boolean;
var
  ctxRtti : TRttiContext;
  typRtti : TRttiType;
  prpRtti : TRttiProperty;
  q : TClasseQuery;
  i : integer;
begin
  q := tclassequery.create('SELECT * FROM '+GetTableName(Obj) +getSqlWhere(Obj));
  ctxRtti := TRttiContext.Create;
  try
    result := q.q.RecordCount>0;
    typRtti := ctxRtti.GetType(obj.classType);
    for prpRtti in typRtti.GetProperties do
    begin
      for I := 0 to q.q.FieldCount-1 do
      begin
        if q.q.Fields[i].FieldName = uppercase(prpRtti.Name) then
        begin
          SetValue(obj, prprtti,q.q.fieldbyname(q.q.Fields[i].FieldName).Value);
        end;
      end;
    end;
  finally
    freeandnil(q);
    ctxRtti.free;
  end;
end;

class procedure TGenericDAO.SetValue<T>(Obj: T; P: TRttiProperty; S: Variant);
var
  V: TValue;
  w: Word;
begin
  w := VarType(S);
  case w of
    271: v := StrToFloat(S); {smallmoney}
    272: v := StrToDateTime(S); {smalldatetime}
    varInt64 :
    begin
      v := VarToStr(s);
      //v :=  StrToInt64(S);
      p.SetValue(pointer(Obj),v);
      exit;
    end;
    3: v := StrToInt(S);
    else
    begin
      P.SetValue(pointer(Obj),TValue.FromVariant(S));
      exit;
    end;
  end;
  p.SetValue(pointer(Obj),v);
end;

class function TGenericDAO.Delete<T>(Obj: T; boscript: boolean=false):string;
begin
  result := 'DELETE ' +
            GetTableName(Obj) +
            getSqlWhere(Obj)+ ';';
  if not boscript then
  begin
    ExecutaSQL(result);
  end;
end;

class function TGenericDAO.GetTableName<T>(Obj: T): String;
var
  Contexto: TRttiContext;
  TypObj: TRttiType;
  strTable: String;
begin
  Contexto := TRttiContext.Create;
  TypObj := Contexto.GetType(TObject(Obj).ClassInfo);
  result := copy(typobj.Name, 2, length(typobj.Name)-1);
end;

class function TGenericDAO.getSqlWhere<T>(Obj: T): string;
var
  Atributo: TCustomAttribute;
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Prop: TRttiProperty;
begin
  Contexto := TRttiContext.Create;
  TypObj := Contexto.GetType(TObject(Obj).ClassInfo);
  for Prop in TypObj.GetProperties do
  begin
    for Atributo in Prop.GetAttributes do
    begin
      if Atributo is KeyField then
      begin
        if result = '' then
        begin
          result := ' WHERE ';
        end
        else
        begin
          result := result + ' AND ';
        end;
        result := result + KeyField(Atributo).Name + '='+ IntToStr(Prop.GetValue(TObject(Obj)).AsInteger);
      end;
    end;
  end;
end;

class function TGenericDAO.Update<T>(Obj: T; boscript: boolean=false):string;
var
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Prop: TRttiProperty;
  sqlwhere, strSet, strKeyField, strKeyValue: String;
begin
  strSet := '';
  sqlwhere := '';
  strKeyField := '';
  strKeyValue := '';
  result := 'UPDATE ' + GetTableName(Obj);
  Contexto := TRttiContext.Create;
  TypObj := Contexto.GetType(TObject(Obj).ClassInfo);
  for Prop in TypObj.GetProperties do
  begin
    strSet := strSet + Prop.Name + ' = ';
    case Prop.GetValue(TObject(Obj)).Kind of
      tkWChar, tkLString, tkWString, tkString, tkChar, tkUString : strSet := strSet + QuotedStr(Prop.GetValue(TObject(Obj)).AsString) + ',';
      tkInteger, tkInt64: strSet                                 := strSet + IntToStr(Prop.GetValue(TObject(Obj)).AsInteger) + ',';
      tkFloat: strSet                                            := strSet + FloatToStr(Prop.GetValue(TObject(Obj)).AsExtended) + ',';
      else
        raise Exception.Create('Type not Supported');
    end;
  end;
  strSet := Copy(strSet, 1, Length(strSet) - 1);
  result := result + ' SET ' + strSet + getSqlWhere(Prop);
  if not boscript then
  begin
    ExecutaSQL(result);
  end;
end;

{ KeyField }

constructor KeyField.Create(aName: String);
begin
  FName := aName;
end;

{ TableName }

constructor TableName.Create(aName: String);
begin
  FName := aName;
end;

end.
