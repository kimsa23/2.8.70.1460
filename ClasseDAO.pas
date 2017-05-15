unit ClasseDAO;

interface

uses
  Vcl.Controls, Vcl.Forms, Rtti, StrUtils, dialogs, Variants, Classes, SysUtils, db, TypInfo,
  udatahora, FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.DApt,
  classeaplicacao, classequery,
  uconstantes, ustrings;

type
  AObrigatorio = class(TCustomAttribute)
  end;
  KeyField = class(TCustomAttribute)
  end;
  FK = class(TCustomAttribute)
  end;
  TPersintentObject = class
  private
    fstate : TDataSetState;
    function GetValue(const ARTP: TRttiProperty): String;
    //procedure SetValue(P: TRttiProperty; S: Variant);
    function GetTableName: String;
    function getSqlWhere: string;
    function CampoChaveEstrangeira(RTP: TRttiProperty):boolean;
    function IgnorarCampos(RTP: TRttiProperty):boolean;
    function PropriedadeECampoChave(RTP: TRttiProperty): boolean;
    function PropriedadeECampoObrigatorio(RTP: TRttiProperty): boolean;
    function ParametroStringNaoPreenchido(TypObj: TRttiType): boolean;
    procedure ObterCampos(campos, valores:TStrings; tipo:string);
    function MontarSQL(tipo:string):string;
    function montarsqlupdate(Campos, valores: TStrings):string;
    function montarsqlInsert(Campos, valores: TStrings):string;
    function TratarValorDoCampo(RTP: TRttiProperty):string;
    procedure ExecutarSQL(boscript:boolean; sql:string);
  public
    property state : TDataSetState read fstate write fstate;
    function Insert(boscript:boolean=false): String;
    function Update(boscript:boolean=false): String;
    function Delete(boscript:boolean=false): String;
    function Select(const AValue: Largeint):boolean; overload;
    function Select: Boolean; overload;
    function Select(const sqlwhere:string):boolean;overload;
    function Select(Dataset: TDataset):boolean; overload;
    function Atribuir(Dataset: TDataset):boolean;
    procedure CopiarObjeto(Source:Tobject);
  end;
  TRegistroQuipos = class(TPersintentObject)
  private
    ftsalteracao: TDateTime;
    Fcdempresa: LargeInt;
    ftsinclusao: TDateTime;
    fcdcomputadori: integer;
    fcdusuarioi: integer;
    fcdcomputadora: Integer;
    fcdusuarioa: integer;
  public
    [keyfield]
    property cdempresa : LargeInt read Fcdempresa write Fcdempresa;
    [FK]
    property cdusuarioi : integer read Fcdusuarioi write Fcdusuarioi;
    [FK]
    property cdusuarioa : integer read Fcdusuarioa write Fcdusuarioa;
    [FK]
    property cdcomputadori : integer read Fcdcomputadori write Fcdcomputadori;
    [FK]
    property cdcomputadora : Integer read Fcdcomputadora write Fcdcomputadora;
    [AObrigatorio]
    property tsinclusao : TDateTime read Ftsinclusao write Ftsinclusao;
    [AObrigatorio]
    property tsalteracao : TDateTime read Ftsalteracao write Ftsalteracao;
    function Insert(boscript:boolean=false): String;
    function Update(boscript:boolean=false): string;
  end;
  TRegistroSanare = class(TPersintentObject)
  private
    Fdtinclusao: TDate;
    Fcompinclusao: string;
    Fusualteracao: string;
    Fhralteracao: TTime;
    Fusuinclusao: string;
    Fhrinclusao: TTime;
    Fdtalteracao: TDate;
    Fcompalteracao: string;
    procedure Setcompalteracao(const Value: string);
    procedure Setcompinclusao(const Value: string);
    procedure Setdtalteracao(const Value: TDate);
    procedure Setdtinclusao(const Value: TDate);
    procedure Sethralteracao(const Value: TTime);
    procedure Sethrinclusao(const Value: TTime);
    procedure Setusualteracao(const Value: string);
    procedure Setusuinclusao(const Value: string);
  public
    property dtinclusao : TDate read Fdtinclusao write Setdtinclusao;
    property hrinclusao : TTime read Fhrinclusao write Sethrinclusao;
    property usuinclusao : string read Fusuinclusao write Setusuinclusao;
    property compinclusao : string read Fcompinclusao write Setcompinclusao;
    property dtalteracao : TDate read Fdtalteracao write Setdtalteracao;
    property hralteracao : TTime read Fhralteracao write Sethralteracao;
    property usualteracao : string read Fusualteracao write Setusualteracao;
    property compalteracao : string read Fcompalteracao write Setcompalteracao;
    function Insert(boscript:boolean=false): String;
    function Update(boscript:boolean=false): string;
  end;

implementation

uses classeexecutasql, classeempresa, classeusuario, uRichEdit;

function TPersintentObject.Atribuir(Dataset: TDataset): boolean;
var
  Ctx: TRttiContext;
  RTT: TRttiType;
  RTP: TRttiProperty;
  i : integer;
  Value : TValue;
begin
  result := true;
  Ctx := TRttiContext.Create;
  try
    RTT := CTX.GetType(ClassType);
    if Assigned(Dataset) then
    begin
      for RTP in RTT.GetProperties do
      begin
        //*****************
        value:= RTP.GetValue(self);
        if not (Value.Kind in [tkUString, tkInteger, tkInt64, tkFloat]) then
        begin
          Continue;
        end;
            {
            case value.Kind of
              tkUString: value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsString;
              tkInteger: value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsInteger;
              tkInt64  : value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsLargeInt;
              tkFloat:
              begin
                if value.TypeInfo=TypeInfo(double)    then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsFloat;
                if value.TypeInfo=TypeInfo(real)      then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsExtended;
                if value.TypeInfo=TypeInfo(currency)  then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsCurrency;
                if value.TypeInfo=TypeInfo(TDate)     then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsDateTime;
                if value.TypeInfo=TypeInfo(TDatetime) then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsDateTime;
                if value.TypeInfo=TypeInfo(Ttime)     then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsDateTime;
              end;
            end;
            }
        if (RTP.GetValue(self).ToString = _0) and
           (Dataset.fieldbyname(Dataset.FieldByName(RTP.Name).FieldName).DataType <> ftstring) and
           (CampoChaveEstrangeira(RTP) or (Dataset.fieldbyname(RTP.Name).DataType in [ftDate, ftDateTime, ftTime, ftTimeStamp])) then
        begin
          Dataset.fieldbyname(Dataset.fieldbyname(RTP.Name).FieldName).clear;
        end
        else if (RTP.GetValue(self).ToString = _30_12_1899) and (Dataset.fieldbyname(RTP.Name).DataType in [ftDate, ftDateTime, ftTime, ftTimeStamp]) then
        begin
          Dataset.fieldbyname(RTP.Name).clear;
        end
        else
        begin
          if (Dataset.fieldbyname(RTP.Name).DataType = ftstring) and (RTP.GetValue(self).ToString = '') then
          begin
            Dataset.fieldbyname(RTP.Name).clear;
          end
          else
          begin
            Dataset.fieldbyname(RTP.Name).AsString := RTP.GetValue(self).ToString;
          end;
        end;
        //*****************
        {
        for I := 0 to Dataset.FieldCount-1 do
        begin
          if Dataset.Fields[i].FieldName = uppercase(RTP.Name) then
          begin
            if (RTP.GetValue(self).ToString = _0) and
               (Dataset.fieldbyname(Dataset.Fields[i].FieldName).DataType <> ftstring) and
               (CampoChaveEstrangeira(RTP) or (Dataset.fieldbyname(Dataset.Fields[i].FieldName).DataType in [ftDate, ftDateTime, ftTime, ftTimeStamp])) then
            begin
              Dataset.fieldbyname(Dataset.Fields[i].FieldName).clear;
            end
            else if (RTP.GetValue(self).ToString = _30_12_1899) and (Dataset.fieldbyname(Dataset.Fields[i].FieldName).DataType in [ftDate, ftDateTime, ftTime, ftTimeStamp]) then
            begin
              Dataset.fieldbyname(Dataset.Fields[i].FieldName).clear;
            end
            else
            begin
              if (Dataset.fieldbyname(Dataset.Fields[i].FieldName).DataType = ftstring) and (RTP.GetValue(self).ToString = '') then
              begin
                Dataset.fieldbyname(Dataset.Fields[i].FieldName).clear;
              end
              else
              begin
                Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsString := RTP.GetValue(self).ToString;
              end;
            end;
          end;
        end;
        }
      end;
    end
    else
    begin
      Result := False;
    end;
  finally
    CTX.free;
  end;
end;

function TPersintentObject.CampoChaveEstrangeira(RTP: TRttiProperty): boolean;
var
  Atributo: TCustomAttribute;
begin
  result := false;
  for Atributo in RTP.GetAttributes do
  begin
    if Atributo is FK then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TPersintentObject.CopiarObjeto(Source: Tobject);
var
  Ctx: TRttiContext;
  Ctx2: TRttiContext;
  RTT: TRttiType;
  RTT2: TRttiType;
  RTP: TRttiProperty;
  RTP2: TRttiProperty;
begin
  Ctx := TRttiContext.Create;
  Ctx2 := TRttiContext.Create;
  try
    RTT := CTX.GetType(self.ClassType);
    RTT2 := CTX2.GetType(Source.ClassInfo);
    for RTP in RTT.GetProperties do
    begin
      if copy(RTP.PropertyType.ToString, 1,1) = _t then
      begin
        continue;
      end;
      for RTP2 in RTT2.GetProperties do
      begin
        if RTP.Name = RTP2.Name then
        begin
          RTP.SetValue(Self,RTP2.GetValue(Source));
        end;
      end;
    end;
  finally
    CTX.free;
    CTX2.free;
  end;
end;

function TPersintentObject.Delete(boscript:boolean=false): String;
begin
  result := 'DELETE FROM ' + GetTableName + getSqlWhere+';';
  executarsql(boscript, result);
end;

procedure TPersintentObject.ExecutarSQL(boscript: boolean; sql: string);
begin
  if boscript then
  begin
    exit;
  end;
  //ExecutaSQL(sql);
  aplicacao.confire.StartTransaction;
  try
    try
      aplicacao.confire.execsql(sql);
    finally
      aplicacao.confire.Commit;
    end;
  except
    aplicacao.confire.Rollback;
    if messagedlg('Erro na instrução SQL.'#13'Deseja visualizar a instrução?', mtconfirmation, [mbyes, mbno], 0) = mryes then
    begin
      ExibirSaidaVideo(sql, wsMaximized, true);
    end;
    raise;
  end;
end;

function TPersintentObject.ParametroStringNaoPreenchido(TypObj: TRttiType):boolean;
var
  Prop: TRttiProperty;
  Atributo: TCustomAttribute;
begin
  result := false;
  for Prop in TypObj.GetProperties do
  begin
    for Atributo in Prop.GetAttributes do
    begin
      if not (Atributo is KeyField) then
      begin
        continue;
      end;
      if (lowercase(Prop.PropertyType.ToString) = _string) then
      begin
        if (Prop.GetValue(self).ToString = '') then
        begin
          result := true;
          break;
        end;
      end;
    end;
  end;
end;

function TPersintentObject.getSqlWhere: string;
var
  Atributo: TCustomAttribute;
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Prop: TRttiProperty;
begin
  result := '';
  Contexto := TRttiContext.Create;
  TypObj := Contexto.GetType(self.ClassInfo);
  if ParametroStringNaoPreenchido(TypObj) then
  begin
    exit;
  end;
  for Prop in TypObj.GetProperties do
  begin
    for Atributo in Prop.GetAttributes do
    begin
      if not (Atributo is KeyField) then
      begin
        continue;
      end;
      if result = '' then
      begin
        result := ' WHERE ';
      end
      else
      begin
        result := result + ' AND ';
      end;
      { TODO -oPaulo -cDAO - ORM : Adicionar o tratamento para tipos LargInt }
      result := result + Prop.Name + '=';
      if lowercase(Prop.PropertyType.ToString) = _string then
      begin
        result := result + quotedstr(Prop.GetValue(self).ToString);
      end
      else
      begin
        result := result + IntToStr(Prop.GetValue(self).AsInt64);
      end;
    end;
  end;
end;

function TPersintentObject.GetTableName: String;
var
  Contexto: TRttiContext;
  TypObj: TRttiType;
begin
  Contexto := TRttiContext.Create;
  TypObj := Contexto.GetType(self.ClassInfo);
  result := copy(typobj.Name, 2, length(typobj.Name)-1);
end;

function TPersintentObject.GetValue(const ARTP: TRttiProperty): String;
begin
  if lowercase(ARTP.PropertyType.ToString) = _tdatetime then
  begin
    result := QuotedStr(copy(ARTP.GetValue(Self).tostring, 04, 3)+
                        copy(ARTP.GetValue(Self).tostring, 01, 3)+
                        copy(ARTP.GetValue(Self).tostring, 07, 4)+
                        copy(ARTP.GetValue(Self).tostring, 11, 9));
  end
  else if lowercase(ARTP.PropertyType.ToString) = _ttime then
  begin
    result := QuotedStr(ARTP.GetValue(Self).ToString);
  end
  else if lowercase(ARTP.PropertyType.ToString) = _tdate then
  begin
    result := copy(ARTP.GetValue(Self).tostring, 4, 3)+copy(ARTP.GetValue(Self).tostring, 1, 3)+copy(ARTP.GetValue(Self).tostring, 7, 4);
    if result = _12_30_1899 then
    begin
      result := _null;
    end
    else
    begin
      result := QuotedStr(result);
    end;
  end
  else
  begin
    case ARTP.PropertyType.TypeKind of
      tkUnknown,
      tkInteger,
      tkInt64       : Result := ARTP.GetValue(Self).ToString;
      tkEnumeration : Result := IntToStr(Integer(ARTP.GetValue(Self).AsBoolean));
      tkChar,
      tkString,
      tkWChar,
      tkLString,
      tkWString,
      tkUString     : Result := QuotedStr(ARTP.GetValue(Self).ToString);
      tkFloat : Result := StringReplace(ARTP.GetValue(Self).ToString,{$IFNDEF VER210}FormatSettings.{$ENDIF}DecimalSeparator,'.',[rfReplaceAll,rfIgnoreCase]);
    end;
  end;
end;

function TPersintentObject.IgnorarCampos(RTP: TRttiProperty): boolean;
begin
  result := (lowercase(copy(RTP.PropertyType.ToString, 1,1)) = lowercase(_t)) and
            (lowercase(RTP.PropertyType.ToString) <> _tdatetime) and
            (lowercase(RTP.PropertyType.ToString) <> _ttime) and
            (lowercase(RTP.PropertyType.ToString) <> _tdate);
end;

function TPersintentObject.MontarSQL(tipo: string): string;
var
  valores, campos: TStrings;
begin
  valores := TStringlist.Create;
  campos := TStringList.Create;
  try
    ObterCampos(campos, valores, tipo);
    if tipo = _update then
    begin
      result := 'UPDATE '+ GetTableName + ' SET ' + montarsqlUpdate(campos, valores)+ getsqlwhere+';';
    end
    else
    begin
      result := 'INSERT INTO '+ GetTableName + montarsqlinsert(campos, valores)+';';
    end;
  finally
    freeandnil(valores);
    freeandnil(campos);
  end;
end;

function TPersintentObject.montarsqlInsert(Campos, valores: TStrings): string;
var
  I: Integer;
  valor, campo : string;
begin
  campo := '';
  for I := 0 to campos.Count - 1 do
  begin
    if campo <> '' then
    begin
      campo := campo + ',';
    end;
    campo := campo + campos[i];
  end;
  valor := '';
  for I := 0 to valores.Count - 1 do
  begin
    if valor <> '' then
    begin
      valor := valor + ',';
    end;
    valor := valor + valores[i];
  end;
  result := '('+campo+')values('+valor+')';
end;

function TPersintentObject.montarsqlupdate(Campos, valores: TStrings): string;
var
  I: Integer;
begin
  result := '';
  for I := 0 to campos.Count - 1 do
  begin
    if result <> '' then
    begin
      result := result + ',';
    end;
    result := result + campos[i]+'='+valores[i];
  end;
end;

procedure TPersintentObject.ObterCampos(campos, valores: TStrings; tipo:string);
var
  Ctx: TRttiContext;
  RTT: TRttiType;
  RTP: TRttiProperty;
begin
  Ctx := TRttiContext.Create;
  try
    RTT := CTX.GetType(ClassType);
    for RTP in RTT.GetProperties do
    begin
      {
      if ignorarCampos(RTP) or ((tipo = _update) and PropriedadeECampoChave(RTP)) then
      begin
        continue;
      end;
      }
      if ignorarCampos(RTP) then
      begin
        continue;
      end;
      if (tipo = _update) and PropriedadeECampoChave(RTP) then
      begin
        continue;
      end;
      campos.add(RTP.Name);
      valores.Add(TratarValordoCampo(RTP));
    end;
  finally
    CTX.Free;
  end;
end;

function TPersintentObject.Select: Boolean;
var
  q : TClasseQuery;
begin
  if getsqlwhere = '' then
  begin
    result := false;
    exit;
  end;
  q := TClasseQuery.create('SELECT * FROM '+GetTableName+getSqlWhere);
  try
    result := Select(q.q);
  finally
    freeandnil(q);
  end;
end;

function TPersintentObject.Select(Dataset: TDataset): boolean;
var
  Ctx: TRttiContext;
  RTT: TRttiType;
  RTP: TRttiProperty;
  i : integer;
  Value   : TValue;
begin
  Ctx := TRttiContext.Create;
  try
    RTT := CTX.GetType(ClassType);
    if Assigned(Dataset) then
    begin
      for RTP in RTT.GetProperties do
      begin
        for I := 0 to Dataset.FieldCount-1 do
        begin
          if Dataset.Fields[i].FieldName = uppercase(RTP.Name) then
          begin
            value:= RTP.GetValue(self);
            case value.Kind of
              tkUString: value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsString;
              tkInteger: value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsInteger;
              tkInt64  : value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsLargeInt;
              tkFloat:
              begin
                if value.TypeInfo=TypeInfo(double)    then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsFloat;
                if value.TypeInfo=TypeInfo(real)      then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsExtended;
                if value.TypeInfo=TypeInfo(currency)  then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsCurrency;
                if value.TypeInfo=TypeInfo(TDate)     then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsDateTime;
                if value.TypeInfo=TypeInfo(TDatetime) then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsDateTime;
                if value.TypeInfo=TypeInfo(Ttime)     then value:= Dataset.fieldbyname(Dataset.Fields[i].FieldName).AsDateTime;
              end;
            end;
            RTP.SetValue(self,value);
          end;
        end;
      end;
      result := Dataset.RecordCount > 0;
    end
    else
    begin
      Result := False;
    end;
  finally
    CTX.free;
  end;
end;

{
procedure TPersintentObject.SetValue(P: TRttiProperty; S: Variant);
var
  V: TValue;
  w: Word;
begin
  w := VarType(S);
  case w of
    8209: v := vartostr(s);
    271 : v := strtodatetime(S); // smallmoney
    273 : v := StrToFloat(S); //smallmoney
    272 : v := StrToDateTime(S); //smalldatetime
     20 : v := StrToInt64(S);
      3 : v := StrToInt(S);
    else
    begin
      P.SetValue(Self,TValue.FromVariant(S));
      exit;
    end;
  end;
  p.SetValue(Self,v);
end;
}

function TPersintentObject.Select(const sqlwhere: string): boolean;
var
  q : TClasseQuery;
begin
  if sqlwhere = '' then
  begin
    result := false;
    exit;
  end;
  q := TClasseQuery.create('SELECT * FROM '+GetTableName+' where '+sqlwhere);
  try
    result := Select(q.q);
  finally
    freeandnil(q);
  end;
end;

function TPersintentObject.Select(const AValue: LargeInt): boolean;
var
  Atributo: TCustomAttribute;
  Contexto: TRttiContext;
  TypObj: TRttiType;
  Prop: TRttiProperty;
begin
  Contexto := TRttiContext.Create;
  TypObj := Contexto.GetType(self.ClassInfo);
  for Prop in TypObj.GetProperties do
  begin
    for Atributo in Prop.GetAttributes do
    begin
      if not (Atributo is KeyField) then
      begin
        continue;
      end;
      if lowercase(prop.Name) = lowercase(_cd+GetTableName) then
      begin
        prop.SetValue(self, avalue);
      end;
      if lowercase(prop.Name) = _cdempresa then
      begin
        prop.SetValue(self, empresa.cdempresa);
      end;
    end;
  end;
  result := select;
end;

function TPersintentObject.TratarValorDoCampo(RTP: TRttiProperty): string;
begin
  if propriedadeECampoObrigatorio(rtp) or
     (not ((((lowercase(RTP.PropertyType.ToString) = _Integer) or (lowercase(RTP.PropertyType.ToString) = _Int64)) and (RTP.GetValue(self).ToString = _0)) or
           ((RTP.PropertyType.ToString = _string) and (RTP.GetValue(self).ToString = '')))) then
  begin
    if RTP.PropertyType.ToString = _string then
    begin
      result := quotedstr(trim(RTP.GetValue(self).ToString));
    end
    else
    begin
      result := GetValue(RTP);
    end;
  end
  else
  begin
    if (RTP.PropertyType.ToString = _string) and (RTP.GetValue(self).ToString = '') and (lowercase(copy(RTP.Name, 1, 2))= _bo) then
    begin
      result := quotedstr(_N);
    end
    else
    begin
      result := _null;
    end;
  end;
end;

function TPersintentObject.PropriedadeECampoChave(RTP: TRttiProperty):boolean;
var
  Atributo: TCustomAttribute;
begin
  result := false;
  for Atributo in RTP.GetAttributes do
  begin
    if Atributo is KeyField then
    begin
      result := true;
      break;
    end;
  end;
end;

function TPersintentObject.PropriedadeECampoObrigatorio(RTP: TRttiProperty): boolean;
var
  Atributo: TCustomAttribute;
begin
  result := false;
  for Atributo in RTP.GetAttributes do
  begin
    if Atributo is AObrigatorio then
    begin
      result := true;
      break;
    end;
  end;
end;

function TPersintentObject.Update(boscript:boolean=false): String;
begin
  result := MontarSQL(_update);
  ExecutarSQL(boscript, result);
end;

function TPersintentObject.Insert(boscript:boolean=false): String;
begin
  result := MontarSQL(_insert);
  executarSQL(boscript, result);
end;

function TRegistroQuipos.Insert(boscript: boolean): String;
begin
{ TODO -oMelhoria -cRefatoração :
Usar RTTI para determinar campos obrigatórios
da mesma forma que usa para determinar campos chaves }
  { TODO -oMelhoria -cRefatoração : Verificar se o campo chave é interiro e zero entao gerar o código para ela }
  if cdempresa = 0 then
  begin
    cdempresa := empresa.cdempresa;
  end;
  if cdusuarioi = 0 then
  begin
    cdusuarioi := usuario.cdusuario;
  end;
  if cdcomputadori = 0 then
  begin
    cdcomputadori := strtoint(vgcdcomputador);
  end;
  if tsinclusao = strtodate(_30_12_1899) then
  begin
    tsinclusao    := tsbanco;
  end;
  if cdusuarioa = 0 then
  begin
    cdusuarioa := usuario.cdusuario;
  end;
  if cdcomputadora = 0 then
  begin
    cdcomputadora := strtoint(vgcdcomputador);
  end;
  if tsalteracao = strtodate(_30_12_1899) then
  begin
    tsalteracao := tsbanco;
  end;
  result := inherited insert(boscript);
end;

function TRegistroQuipos.Update(boscript: boolean): string;
begin
  if cdempresa = 0 then
  begin
    cdempresa := empresa.cdempresa;
  end;
  if cdusuarioi = 0 then
  begin
    cdusuarioi := usuario.cdusuario;
  end;
  if cdcomputadori = 0 then
  begin
    cdcomputadori := strtoint(vgcdcomputador);
  end;
  if tsinclusao = strtodate(_30_12_1899) then
  begin
    tsinclusao    := tsbanco;
  end;
  cdusuarioa := usuario.cdusuario;
  cdcomputadora := strtoint(vgcdcomputador);
  tsalteracao := tsbanco;
  result := inherited update(boscript);
end;

function TRegistroSanare.Insert(boscript: boolean): String;
begin
  {
  if usuinclusao <> '' then
  begin
    usuinclusao := usuario.login;
  end;
  if compinclusao <> '' then
  begin
    compinclusao := __computador;
  end;
  if dtinclusao = strtodate(_30_12_1899) then
  begin
    dtinclusao    := dtbanco;
  end;
  if hrinclusao = 0 then
  begin
    hrinclusao    := hrbanco;
  end;
  if usualteracao <> '' then
  begin
    usualteracao := usuario.login;
  end;
  if compalteracao <> '' then
  begin
    compalteracao := __computador;
  end;
  if dtalteracao = strtodate(_30_12_1899) then
  begin
    dtalteracao := dtbanco;
  end;
  if hralteracao = 0then
  begin
    hralteracao := hrbanco;
  end;
  result := inherited insert(boscript);
  }
end;

procedure TRegistroSanare.Setcompalteracao(const Value: string);
begin
  Fcompalteracao := Value;
end;

procedure TRegistroSanare.Setcompinclusao(const Value: string);
begin
  Fcompinclusao := Value;
end;

procedure TRegistroSanare.Setdtalteracao(const Value: TDate);
begin
  Fdtalteracao := Value;
end;

procedure TRegistroSanare.Setdtinclusao(const Value: TDate);
begin
  Fdtinclusao := Value;
end;

procedure TRegistroSanare.Sethralteracao(const Value: TTime);
begin
  Fhralteracao := Value;
end;

procedure TRegistroSanare.Sethrinclusao(const Value: TTime);
begin
  Fhrinclusao := Value;
end;

procedure TRegistroSanare.Setusualteracao(const Value: string);
begin
  Fusualteracao := Value;
end;

procedure TRegistroSanare.Setusuinclusao(const Value: string);
begin
  Fusuinclusao := Value;
end;

function TRegistroSanare.Update(boscript: boolean): string;
begin
  {
  if usuinclusao <> '' then
  begin
    usuinclusao := usuario.login;
  end;
  if compinclusao <> '' then
  begin
    compinclusao := __computador;
  end;
  if dtinclusao = strtodate(_30_12_1899) then
  begin
    dtinclusao    := dtbanco;
  end;
  if hrinclusao = 0 then
  begin
    hrinclusao    := hrbanco;
  end;
  usualteracao := usuario.login;
  compalteracao := __computador;
  dtalteracao := dtbanco;
  hralteracao := hrbanco;
  result := inherited update(boscript);
  }
end;

end.
