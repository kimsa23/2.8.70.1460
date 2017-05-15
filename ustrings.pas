unit ustrings;

interface

uses
  System.Actions, System.UITypes,
  forms, classes, dialogs, sysutils, variants, controls,
  uconstantes;

type
  QString = class
    class function StrToBoolean(valor:string):boolean;
    class function GetDtAbrev_(dt: TDate):string;
    class function GetNullString(texto:string):string;
    class function set_zero(vl:currency; vldefault:string=''):string;
  end;

procedure ApenasCaracteresAlfaNumericos(var key:char);
procedure ApenasNumericos              (var key:char);
function  BooleanToStr          (bo: boolean):string;
function  CentralizarString     (texto:string; Tamanho:integer;caracter:string=' '):string;
function  espaco                (valor:integer):string;
function  ExisteString          (StrText: string; strChar: char): boolean;
function  FormatarCNPJ          (nucnpj:string):string;
function  formatarCPF           (nucpf:string):string;
function  FormatarDataAbreviada (Data: TDate; tam:integer=8; alin:string=_e; caracter:char=' '):string;
function  FormatarDecimal       (valor: currency; tam:integer;alin:string=_e):string;
function  FormatarDecimal3sponto(valor: currency; tam:integer;alin:string=_e; caracter:string=' '):string;
function  Formatarinteiro       (valor: currency; tam:integer):string;
function  FormatarMoeda         (valor: currency; tam:integer=0;alin:string=_e):string;
function  FormatarMoedaA        (valor: currency; tam:integer=0;alin:string=_e):string;
function  FormatarMoedaRs       (valor: currency; tam:integer=0;alin:string=_e):string;
function  FormatarMoedaSPonto_   (valor: currency; tam:integer=0):string;
function  FormatarTexto             (texto, direcao:string; tam:integer; caracter:string=' '):string;
function  FormatarTextoDireita      (texto: string; tam:integer;caracter:string=' '):string;
function  FormatarTextoEsquerda     (texto: string; tam:integer;caracter:string=' '):string;
function  fSpace                    (Count: Integer): String;
function  LastPos                   (Substr, S : String) : Integer;
function  Maiuscula                 (Texto:String): String;
procedure prepararlista             (lst:tstrings; nm:string; id:char);
function  set_criterio_report       (nm: string):String;
function  getbooleans               (bo:Boolean):string;
function  getmoeda                  (vl:Currency):string;
function  getcurrencys              (vl: currency):string;
function  getfloats                 (qt: double):string;
function  get_aspas                 (texto:string):string;
function  removercaracteres         (texto : string):string;
function  RemoverCaracterInicio     (sTexto:String; sub:char):String;
function  RemoverChar               (texto:string; simbolo : char):string;
function  RemoverEspacosVazios      (Texto:string):string;
function  RemoverEspacosVaziosInicio(sTexto:String):String;
function  getnull                   (texto:string; tipo:string=''):string;
function  getNullBlob               (texto:string):string;
function  getnullcurrencys(vl: currency):string;
function  getNullDouble             (dobro:double):string;
function  getNullInteger            (inteiro:integer):string;
function  GetNullDate               (dt: TDate):string;
function  GetNullts                 (ts: TDateTime):string;
function  GetNullTime               (hr: TTime):string;
function  GetDtBanco                (dt: TDate):string;
function  GethrBanco                (hr: TTime):string;
function  GettsBanco                (dt: TDateTime):string;
function  GetDtAbrev                (dt: TDate):string;
function  getdtpura                 (dt:TDate):string;
function  getdtinterna              (dt:TDate):string;
function  get_ultima_posicao        (substring, texto:string):Integer;
function  RetiraAcentos             (txt: String): String;
function  StringParametro           (texto, parametro:string; bostring:boolean=false):string;overload;
function  StringParametro           (texto, parametro, nmparametro:string; bostring:boolean=false):string;overload;
function  substituir                (texto: string; velho: string; novo: char):string;overload;
function  substituir                (texto, velho, novo: string):string;overload;

implementation

function get_ultima_posicao(substring, texto:string):Integer;
var
  i : Integer;
begin
  result := 0;
  for i := 1 to Length(texto) do
  begin
    if texto[i] = substring then
    begin
      result := i;
    end;
  end;
end;

function get_aspas(texto:string):string;
var
  i : integer;
begin
  for i := 1 to Length(texto) do
  begin
    if texto[i] = '''' then
    begin
      result := result + texto[i] + texto[i];
      Continue;
    end;
    result := Result + texto[i];
  end;
end;

function BooleanToStr(bo: boolean):string;
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

function formatarCPF(nucpf:string):string;
begin
  result := copy(nucpf, 1 , 3)+'.'+ copy(nucpf, 4 , 3)+'.'+ copy(nucpf, 7 , 3)+'-'+ copy(nucpf, 10, 2);
end;

function formatarCNPJ(nucnpj:string):string;
begin
  if nucnpj.Length = 13 then
  begin
    nucnpj := _0 + nucnpj;
  end;
  if nucnpj.Length = 12 then
  begin
    nucnpj := _0 + _0 + nucnpj;
  end;
  result := copy(nucnpj, 1 , 2)+'.'+ copy(nucnpj, 3 , 3)+'.'+ copy(nucnpj, 6 , 3)+'/'+ copy(nucnpj, 9 , 4)+'-'+ copy(nucnpj, 13, 2);
end;

function getmoeda(vl:Currency):string;
begin
  result := FormatFloat(__moeda, vl);
end;

function GetDtBanco(dt: TDate):string;
begin
  result := QuotedStr(FormatDateTime(_mm_dd_yyyy, dt));
end;

function GethrBanco(hr: TTime):string;
begin
  result := QuotedStr(FormatDateTime(_hh_mm_ss, hr));
end;

function GettsBanco(dt: TDateTime):string;
begin
  result := QuotedStr(FormatDateTime(__tsbanco, dt));
end;

function GetDtAbrev(dt: TDate):string;
begin
  result := QuotedStr(FormatDateTime(_dd_mm_yyyy, dt));
end;

function getdtpura(dt:TDate):string;
begin
  result := formatdatetime(_DDMMYYYY, dt);
end;

function getdtinterna(dt:TDate):string;
begin
  result := formatdatetime(_YYYYMMDD, dt);
end;

function getNull(texto:string; tipo:string=''):string;
begin
  result := texto;
  if texto = '' then
  begin
    result := _null
  end
  else if tipo  = _string then
  begin
    result := quotedstr(texto)
  end
  else
  begin
    result := texto;
  end;
end;

function getNullBlob(texto:string):string;
var
  letra : string;
  y : integer;
begin
  result  := '';
  for y := 1 to length(texto) do
  begin
    letra := texto[y];
    if texto[y] = '''' then
    begin
      letra := ''''+'''';
    end;
    result := result + letra;
  end;
  result := quotedstr(result)
end;

function getNullDouble(dobro:double):string;
begin
  result := substituir(floattostr(dobro), ',', '.');
  if dobro = 0 then
  begin
    result := _null;
  end;
end;

function GetNullDate(dt: TDate):string;
begin
  result := QuotedStr(FormatDateTime(_mm_dd_yyyy, dt));
  if dt = 0 then
  begin
    result := _null;
  end;
end;

function GetNullts(ts: TDateTime):string;
begin
  result := QuotedStr(FormatDateTime(__tsbanco, ts));
  if ts = 0 then
  begin
    result := _null;
  end;
end;

function GetNullTime(hr: TTime):string;
begin
  result := QuotedStr(FormatDateTime(_hh_mm_ss, hr));
  if hr = 0 then
  begin
    result := _null;
  end;
end;

function getNullInteger(inteiro:integer):string;
begin
  result := inttostr(inteiro);
  if inteiro = 0 then
  begin
    result := _null;
  end;
end;

function StringParametro(texto, parametro:string; bostring:boolean=false):string;
var
  y, x, i : integer;
begin
  y      := 0;
  Result := texto;
  i      := pos(':', texto);
  if (i = 0)  then
  begin
    exit;
  end;
  if bostring then
  begin
    result := copy(texto, 1, i - 1) + quotedstr(parametro)
  end
  else
  begin
    result := copy(texto, 1, i - 1) + parametro;
  end;
  for x := i to length(texto) do
  begin
    if (texto[x] = ' ') or (texto[x] = #13) then
    begin
      y := x;
      break;
    end;
  end;
  if y > 0 then
  begin
    result := result + copy(texto, y, length(texto) - y + 1);
  end;
  if pos(':', result) > 0 then
  begin
    result := StringParametro(result, parametro, bostring);
  end;
end;

function StringParametro(texto, parametro, nmparametro:string; bostring:boolean=false):string;
var
  y, x, i : integer;
begin
  y      := 0;
  Result := texto;
  i      := pos(nmparametro, texto);
  if (i = 0)  then
  begin
    exit;
  end;
  if bostring then
  begin
    result := copy(texto, 1, i - 1) + quotedstr(parametro)
  end
  else
  begin
    result := copy(texto, 1, i - 1) + parametro;
  end;
  for x := i to length(texto) do
  begin
    if (texto[x] = ' ') or (texto[x] = #13) then
    begin
      y := x;
      break;
    end;
  end;
  if y > 0 then
  begin
    result := result + copy(texto, y, length(texto) - y + 1);
  end;
  if pos(nmparametro, result) > 0 then
  begin
    result := StringParametro(result, parametro, bostring);
  end;
end;

function FormatarDecimal(valor: currency; tam:integer;alin:string=_e):string;
begin
  result := formatfloat(__decimal3, valor);
  if UpperCase(alin) = _e then
  begin
    while length(result) < tam do
    begin
      result := ' '+result
    end
  end
  else
  begin
    while length(result) < tam do
    begin
      result := result + ' ';
    end;
  end;
end;

function FormatarDecimal3sponto(valor: currency; tam:integer;alin:string=_e; caracter:string=' '):string;
begin
  result := substituir(formatfloat(__decimal3, valor), ',', '');
  if UpperCase(alin) = _e then
  begin
    while length(result) < tam do
    begin
      result := caracter+result
    end
  end
  else
  begin
    while length(result) < tam do
    begin
      result := result + caracter;
    end;
  end;
end;

function FormatarMoedaSPonto_(valor: currency; tam:integer=0):string;
begin
  result := substituir(formatfloat(__moedadec, valor), ',', '');
  while length(result) < tam do
  begin
    result := _0+result
  end;
end;

function FormatarMoeda(valor: currency; tam:integer=0;alin:string=_e):string;
begin
  result := formatfloat(__moeda, valor);
  if UpperCase(alin) = _e then
  begin
    while length(result) < tam do
    begin
      result := ' '+result
    end
  end
  else
  begin
    while length(result) < tam do
    begin
      result := result + ' ';
    end;
  end;
end;

function FormatarMoedaRs(valor: currency; tam:integer=0;alin:string=_e):string;
begin
  result := 'R$ '+formatfloat(__moeda, valor);
  if uppercase(alin) = _e then
  begin
    while length(result) < tam do
    begin
      result := ' '+result
    end;
  end
  else
  begin
    while length(result) < tam do
    begin
      result := result + ' ';
    end;
  end;
end;

function FormatarMoedaA(valor: currency; tam:integer=0;alin:string=_e):string;
begin
  result := substituir(formatfloat(__moedadec, valor), ',', '.');
  if tam <= 0 then
  begin
    exit;
  end;
  if UpperCase(alin) = _e then
  begin
    while length(result) < tam do
    begin
      result := ' '+result
    end
  end
  else
  begin
    while length(result) < tam do
    begin
      result := result + ' ';
    end;
  end;
end;

function FormatarTextoEsquerda(texto: string; tam:integer;caracter:string=' '):string;
begin
  result := copy(texto, 1, tam);
  if caracter = ' ' then
  begin
    while length(result) < tam do
    begin
      result := ' '+result
    end;
  end
  else
  begin
    while length(result) < tam do
    begin
      result := caracter+result
    end;
  end;
end;

procedure prepararlista(lst:tstrings; nm:string; id:char);
var
  p1, i : integer;
  item : string;
begin
  if nm = '' then
  begin
    exit;
  end;
  p1 := 1;
  for i := 1 to length(nm) do
  begin
    if nm[i] = id then
    begin
      item := copy(nm, p1, i - p1);
      lst.add(item);
      p1 := i + 1;
    end;
  end;
  item := copy(nm, p1, (length(nm)+1) - p1);
  lst.add(item);
end;

function set_criterio_report(nm:string):String;
var
  p1, i : integer;
  item : string;
  lista : TStrings;
begin
  result := '';
  if nm = '' then
  begin
    exit;
  end;
  lista := TStringList.Create;
  try
    p1 := 1;
    for i := 1 to length(nm) do
    begin
      if nm[i] = '|' then
      begin
        item := copy(nm, p1, i - p1);
        lista.add(item);
        p1 := i + 1;
      end;
    end;
    item := copy(nm, p1, (length(nm)+1) - p1);
    lista.add(item);
    Result := lista.Text;
  finally
    lista.Free;
  end;
end;

function FormatarDataAbreviada(Data: TDate; tam:integer=8; alin:string=_e; caracter:char=' '):string;
begin
  result := FormatDateTime(_dd_mm_yyyy, data);
  if result = _30_12_1899 then
  begin
    result := caracter;
  end;
  if UpperCase(alin) = _e then
  begin
    while length(result) < tam do
    begin
      result := caracter+result
    end;
  end
  else
  begin
    while length(result) < tam do
    begin
      result := result + caracter;
    end;
  end;
end;

function FormatarTextoDireita(texto: string; tam:integer; caracter:string=' '):string;
begin
  result := copy(texto, 1, tam);
  while length(result) < tam do
  begin
    result := result + caracter;
  end;
end;

function Formatarinteiro(valor: currency; tam:integer):string;
begin
  result := formatfloat(__integer, valor);
  while length(result) < tam do
  begin
    result := ' '+result;
  end;
end;

function Maiuscula(Texto:String): String; // Converte a primeira letra do texto especificado para maiuscula e as restantes para minuscula
var
  t, i : integer;
  a, b, aux : string;
begin
  result := '';
  if Texto = '' then
  begin
    exit;
  end;
  t := 0;
  for i := 1 to length(texto) do
  begin
    if texto[i] <> ' ' then
    begin
      aux := aux + texto[i];
      inc(t);
    end
    else
    begin
      a := UpperCase(Copy(Texto,i - t,1))+LowerCase(Copy(Texto,i - t + 1, t - 1));
           if a = 'De'  then a := 'de'
      else if a = 'Do'  then a := 'do'
      else if a = 'Dos' then a := 'dos'
      else if a = 'Das' then a := 'das'
      else if a = 'Da'  then a := 'da';
      result := result + a + ' ';
      t := 0;
    end;
  end;
  a := UpperCase(Copy(Texto, Length(Texto) - t+1,1));
  b := LowerCase(Copy(Texto, Length(Texto) - t + 2, t-1));
  result := result + a + b;
end;

function RemoverEspacosVaziosInicio(sTexto:String):String;
var
  nPos : Integer;
begin
  while Pos(' ',sTexto) > 0 do
  begin
    nPos := Pos(' ',sTexto);
    if npos <> 1 then
    begin
      break;
    end;
    Delete(sTexto,nPos,1);
  end;
  Result := sTexto;
end;

function RemoverCaracterInicio(sTexto:String; sub:char):String;
var
  nPos : Integer;
begin
  while Pos(sub,sTexto) > 0 do
  begin
    nPos := Pos(sub,sTexto);
    if npos <> 1 then
    begin
      break;
    end;
    Delete(sTexto,nPos,1);
  end;
  Result := sTexto;
end;

function LastPos(Substr, S : String) : Integer;
var
  I : Integer;
begin
  Result := 0;
  if length (Substr) = length (S) then
  begin
    if Substr = S then
    begin
      Result := 1
    end
    else
    begin
      Result := 0;
    end;
  end
  else if length (Substr) < length (S) then
  begin
    I := length (S) - length (Substr);
    repeat
      if copy (S, I, length (Substr)) = Substr then
      begin
        Result := I;
      end;
      dec (I);
    until (I = 0) or (Result <> 0);
  end;
end;

function fSpace(Count: Integer): String;
begin
  Result := StringOfChar(' ',Count);
end;

function RemoverEspacosVazios(Texto:string):string;
var
  i : integer;
begin
  result := '';
  for i := 1 to length(texto) do
  begin
    if texto[i] <> ' ' then
    begin
      result := result + texto[i];
    end;
  end;
end;

procedure ApenasCaracteresAlfaNumericos(var key:char);
begin
  if not (key in [_0, _1, _2, _3, _4, _5, _6, _7, _8, _9,
                  _A, _B, _C, _D, _E, _F, _G, _H, _I, _J,_K, _L, _M, _N, _O, _P, _Q, _R, _S, _T,_U, _V, _X, _Z, _W, _Y, '/', '-', '.',
                  'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j','k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't','u', 'v', 'x', 'z', 'w', 'y',
                  char(8), char(13)]) then
  begin
    key := #0;
  end;
  if key in [' '] then
  begin
    key := #0;
  end;
end;

procedure ApenasNumericos(var key:char);
begin
  if not (key in [_0, _1, _2, _3, _4, _5, _6, _7, _8, _9, char(8), char(13)]) then
  begin
    key := #0;
  end;
end;

function removercaracteres(texto : string):string;
var
  i : integer;
begin
  result := '';
  for i := 1 to length(texto) do
  begin
    if texto[i] in [_0, _1, _2, _3, _4, _5, _6, _7, _8, _9] then
    begin
      result := result + texto[i];
    end;
  end;
end;

function RemoverChar (texto:string; simbolo : char):string;
var
  posicao : integer;
begin
  while pos(simbolo, texto) > 0 do
  begin
    posicao := pos(simbolo, texto);
    delete(texto, posicao, 1);
  end;
  result := texto;
end;

function substituir (texto, velho, novo: string):string;
var
  i : integer;
begin
  i := pos(velho, texto);
  delete(texto, i, length(velho));
  Insert(novo, texto, i);
  result := texto;
end;

function substituir (texto: string; velho: string; novo: char):string;
var
  i : integer;
begin
  if texto = '' then
  begin
    exit;
  end;
  for i := 1 to length(texto) do
  begin
    if texto[i] = velho then
    begin
      texto[i] := novo;
    end;
  end;
  result := texto;
end;

function espaco(valor:integer):string;
var
  linha : string;
  i : integer;
begin
  for i := 1 to valor do
  begin
    linha := linha + ' ';
  end;
  result := linha;
end;

function ExisteString(StrText: string; strChar: char): boolean;
var
  i : integer;
begin
  result := false;
  if strtext = '' then
  begin
    exit;
  end;
  for i := 0 to length(strText) do
  begin
    if strText[i] = strChar then
    begin
      result := true;
      exit;
    end;
  end;
end;

function CentralizarString(texto:string; Tamanho:integer;caracter:string=' '):string;
var
  esquerda, direita: string;
begin
  esquerda := stringofchar(caracter[1], (tamanho - length(texto)) div 2);
  direita  := stringofchar(caracter[1], tamanho - length(texto) - (tamanho - length(texto)) div 2);
  result   := esquerda+texto+direita;
end;

function FormatarTextoCentralizado(texto: string; tam:integer;caracter:string=' '):string;
begin
  result := CentralizarString(copy(texto, 1, tam), tam, caracter);
end;

function FormatarTexto(texto, direcao:string; tam:integer; caracter:string=' '):string;
begin
  if UpperCase(direcao) = _E then
  begin
    result := FormatarTextoDireita     (texto, tam, caracter)
  end
  else if UpperCase(direcao) = _D then
  begin
    result := FormatarTextoEsquerda    (texto, tam, caracter)
  end
  else if UpperCase(direcao) = _C then
  begin
    result := FormatarTextoCentralizado(texto, tam, caracter);
  end;
end;

function getcurrencys(vl: currency):string;
begin
  result := substituir(floattostr(vl), ',', '.');
end;

function getfloats(qt: double):string;
begin
  result := substituir(floattostr(qt), ',', '.');
end;

function getbooleans(bo:Boolean):string;
begin
  if bo then
  begin
    result := QuotedStr(_S)
  end
  else
  begin
    result := QuotedStr(_N);
  end;
end;

function getnullcurrencys(vl: currency):string;
begin
  if vl = 0 then
  begin
    result := _null
  end
  else
  begin
    result := getcurrencys(vl);
  end;
end;

function RetiraAcentos(txt: String): String;
var
  i: Integer;
begin
  Result := txt;
  for i := 1 to Length(Result) do
  begin
    case Result[i] of
      'á', 'à', 'â', 'ä', 'ã': Result[i] := 'a';
      'Á', 'À', 'Â', 'Ä', 'Ã': Result[i] := _A;
      'é', 'è', 'ê', 'ë'     : Result[i] := 'e';
      'É', 'È', 'Ê', 'Ë'     : Result[i] := _E;
      'í', 'ì', 'î', 'ï'     : Result[i] := 'i';
      'Í', 'Ì', 'Î', 'Ï'     : Result[i] := _I;
      'ó', 'ò', 'ô', 'ö', 'õ': Result[i] := 'o';
      'Ó', 'Ò', 'Ô', 'Ö', 'Õ': Result[i] := _O;
      'ú', 'ù', 'û', 'ü'     : Result[i] := 'u';
      'Ú', 'Ù', 'Û', 'Ü'     : Result[i] := _U;
      'ç'                    : Result[i] := 'c';
      'Ç'                    : Result[i] := _C;
    end;
  end;
  result := RemoverChar(Result, '|');
  result := RemoverChar(Result, '''');
  result := RemoverEspacosVaziosInicio(result);
end;

class function QString.GetDtAbrev_(dt: TDate): string;
begin
  result := FormatDateTime(_dd_mm_yyyy, dt);
end;

class function QString.GetNullString(texto: string): string;
begin
  if texto = '' then
  begin
    result := _null;
    exit;
  end;
  result := quotedstr(texto);
end;

class function QString.set_zero(vl: currency; vldefault: string): string;
begin
  result := formatfloat(__moedadec, vl);
  if result = '0,0' then
  begin
    if (vldefault = _00) then
    begin
      result := ''
    end
    else
    begin
      result := _0;
    end;
  end
  else if result = '' then
  begin
    result := vldefault
  end
  else if Copy(Result, Length(Result)-1, 2) = ',0' then
  begin
    result := Copy(Result, 1, Length(Result)-2)
  end
  else if (Copy(Result, Length(Result)-2, 1) = ',') and (Copy(Result, Length(Result), 1) = _0) then
  begin
    Result := copy(Result, 1, Length(Result)-1);
    if result = '0,0' then
    begin
      if vldefault = _00 then
      begin
        result := ''
      end
      else
      begin
        result := _0;
      end;
    end
    else if Copy(Result, Length(Result)-1, 2) = ',0' then
    begin
      result := Copy(Result, 1, Length(Result)-2);
    end;
  end;
end;

class function QString.StrToBoolean(valor: string): boolean;
begin
  result := False;
  if valor = _s then
  begin
    result := True;
  end;
end;

end.
