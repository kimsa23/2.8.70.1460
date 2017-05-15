unit unumero;

interface

uses sysutils, ustrings, uconstantes;

function apenas_numero (vl:string):boolean;
Function Extenso       (Valor : Extended; Monetario:Boolean; tamanho:integer=120): String;
function IsInteger     (numero:string):boolean;

implementation

function IsInteger(numero:string):boolean; //------------------------- Verifica se o número é do tipo inteiro
begin
  result := true;
  try
    numero := inttostr(StrToInt(numero));
  except on exception do
    result := false;
  end;
end;

Function Extenso(Valor : Extended; Monetario:Boolean; tamanho:integer=120): String;
Var
  Centavos, Centena, Milhar, Milhao, Bilhao, Texto : String;
  X : Byte;
Const
  Unidades: array[1..9] of string[10]=('um', 'dois', 'tres', 'quatro','cinco','seis', 'sete', 'oito','nove');
  Dez     : array[1..9] of string[12]=('onze', 'doze', 'treze','quatorze', 'quinze','dezesseis', 'dezessete','dezoito', 'dezenove');
  Dezenas : array[1..9] of string[12]=('dez', 'vinte', 'trinta','quarenta', 'cinquenta','sessenta', 'setenta','oitenta', 'noventa');
  Centenas: array[1..9] of string[20]=('cento', 'duzentos','trezentos', 'quatrocentos','quinhentos', 'seiscentos','setecentos','oitocentos', 'novecentos');
  Function Ifs( Expressao: Boolean; CasoVerdadeiro, CasoFalso: String): String;
  Begin
    If Expressao then
    begin
      Result := CasoVerdadeiro
    end
    else
    begin
      Result := CasoFalso;
    end;
  end;
  Function MiniExtenso( Valor: String ): String;
  Var
    Unidade, Dezena, Centena: String;
  Begin
    Unidade := '';
    Dezena  := '';
    Centena := '';
    If (Valor[2] = _1) and (Valor[3] <> _0) then
    Begin
      Unidade := Dez[StrToInt(Valor[3])];
      Dezena  := '';
    End
    Else
    Begin
      If Valor[2] <> _0 Then
      begin
        Dezena  := Dezenas[StrToInt(Valor[2])];
      end;
      If Valor[3] <> _0 then
      begin
        Unidade := Unidades[StrToInt(Valor[3])];
      end;
    end;
    If (Valor[1] = _1) and (Unidade = '') and (Dezena = '') then
    begin
      Centena := 'cem'
    end
    Else If Valor[1] <> _0 then
    begin
     Centena := Centenas[StrToInt(Valor[1])]
    end
    Else
    begin
      Centena := '';
    end;
    Result := Centena +
    Ifs((Centena <> '') and ((Dezena <> '') or (Unidade <> '')),' e ', '') + Dezena +
    Ifs((Dezena  <> '') and (Unidade <> ''), ' e ', '') + Unidade;
  end;
Begin
  If Valor = 0 Then
  Begin
    Result := '';
    Exit;
  End;
  Texto    := FormatFloat('000000000000.00', Valor);
  Centavos := MiniExtenso(_0 + Copy(Texto, 14, 2));
  Centena  := MiniExtenso(     Copy(Texto, 10, 3));
  {if Centena = '' then
  begin
    Centena := 'zero ponto';
  end;}
  Milhar   := MiniExtenso(     Copy(Texto,  7, 3));
  If Milhar <> '' then
  begin
    Milhar := Milhar + ' mil';
  end;
  Milhao := MiniExtenso( Copy( Texto, 4, 3 ) );
  If Milhao <> '' then
  begin
    Milhao := Milhao + ifs( Copy( Texto, 4, 3 ) = '001', ' milhao',' milhoes');
  end;
  Bilhao := MiniExtenso( Copy( Texto, 1, 3 ) );
  If Bilhao <> '' then
  begin
    Bilhao := Bilhao + ifs( Copy( Texto, 1, 3 ) = '001', ' bilhao',' bilhoes');
  end;
  If Monetario Then
  Begin
    If (Bilhao <> '') and (Milhao + Milhar + Centena = '') then
    begin
      Result := Bilhao + ' de Reais '
    end
    Else If (Milhao <> '') and (Milhar + Centena = '') then
    begin
      Result := Milhao + ' de Reais '
    end
    Else
    begin
      Result := Bilhao +
                ifs( (Bilhao <> '') and (Milhao + Milhar + Centena <> ''),
                ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ', Milhao + Milhar + Centena ) > 0 ), ', ', ' e '), '') +
                Milhao +
                ifs( (Milhao <> '') and (Milhar + Centena <> ''), ifs((Pos(' e ', Milhao) > 0) or
               (Pos( ' e ', Milhar + Centena ) > 0 ), ', ',' e '), '') +
                Milhar + ifs( (Milhar <> '') and (Centena <> ''),ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '), '') +
                Centena +
                ifs( Int(Valor) = 0, '', (ifs( Int(Valor) = 1, ' Real ', ' Reais ' )));
    end;
    If (Result <> '') and (Centavos <> '') then
    begin
      Result := Result + ' e '
    end
    else
    begin
      Result := Result ;
    end;
    If Centavos <> '' then
    begin
      Result := Result + Centavos + ifs( Copy( Texto, 14, 2 )= '01', ' Centavo ', ' Centavos ' );
    end;
    if tamanho > 0 then
    begin
      For X := 1 To tamanho Do
      begin
        Result := Result + '* ';
      end;
    end;
  End
  Else
  Begin
    Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar + Centena <> ''),
                       ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ', Milhao + Milhar + Centena ) > 0 ), ', ', ' e '), '') +
              Milhao + ifs( (Milhao <> '') and (Milhar + Centena <> ''),
                       ifs((Pos(' e ', Milhao) > 0) or
                          (Pos( ' e ', Milhar + Centena ) > 0 ), ', ',' e '), '') +
              Milhar + ifs( (Milhar <> '') and (Centena <> ''),
                       ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '), '') +
              Centena;
    If Centavos <> '' then
    begin
      Result := Result + ' e ' + Centavos;
    end;
  End;
  if copy(result, 1, 3) = 'um ' then
  begin
    result := 'H'+result
  end
  else
  begin
    result := uppercase(result[1])+copy(result, 2, length(result) -1);
  end;
end;

function apenas_numero(vl:string):boolean;
var
  i : integer;
begin
  result := true;
  for i := 1 to length(vl) do
  begin
    if not (vl[i] in [_0,_1,_2,_3,_4,_5,_6,_7,_8,_9]) then
    begin
      result := false;
      exit;
    end;
  end;
end;

end.


