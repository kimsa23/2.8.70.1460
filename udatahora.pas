unit udatahora;

interface

uses
  controls, ComCtrls, classes, sysutils, windows, dbctrls, stdctrls, Math, Variants, DateUtils,
  SqlExpr,
  ustrings, uconstantes,
  classeretornasql, classeAplicacao;

Type
  QDataHora = class
    class function Somente_Data(data: TDate):TDate;
    class function mesano(data: TDate):string;
  end;
  TSemestre = record
    Mes, Ano : Word;
  end;

  Semestre = array[0..5] of TSemestre;

procedure AcertaDataHoraSistema(Datastring, Horastring: string);
procedure Adicionarlinhadata   (di, df: TDateTimePicker; nmdata:string; var Linha: TStrings; var l: integer; nucol:integer);
function  AdicionaHora         (TimeAdd: Integer) : String;
function  ajustardata          (data:string):string;
function  Ano_Bissexto         (ano  :integer):boolean;
function  DataExtenso          (Data :TDateTime): String;
function  DiadaSemana          (nmdia: string; data:TDate):boolean;
function  Dia_Data             (data :TDate):integer;
function  DiferencaDias        (dtf, dti: TDate):integer;
procedure DigitaData           (Sender:TObject; var Key: Char);
function  DtBanco              :TDate;overload;
function  DtBancos             :string;overload;
function  DtServer             :string;overload;
function  get_qtduracao        (tsinicio, tsfim: TDateTime):double;
function  get_total_hora_minuto(Tempo:Variant):string;
function  HrBanco              :TTime;
function  HrBanco2:TTime;
function  HrServer             :string;overload;
function  IdadeData            (dt: TDate):integer;
function  IdadeDataAnoMes      (dt: TDate):string; overload;
function  IdadeDataAnoMes      (di, df: TDate):string; overload;
function  isDate               (data:string):Boolean;
function  Mes_data             (data:TDate):integer;
function  NomeMes              (Mes:Word;Abrev:Boolean=true):String;overload;
function  NomeMes              (mes:integer):string;overload;
function  Numero_Mes           (mes:string):string;
function  NumeroMesesEntreData (dti, dtf: TDate):integer;
function  PrimeiroDiaUtil      (Data:TDateTime):TDateTime;
function  Primeiro_dia_mes_anterior(data:TDate):TDate;
function  Primeiro_dia_mes_proximo (data:TDate):TDate;
function  Primeiro_dia_mes      (data : TDate):TDate;overload;
function  Primeiro_Dia_Semana   (Data : TDate) : TDate;
function  ReturnSixMonth        (Actual: TDateTime):Semestre;
function  tsBanco               :TDateTime;overload;
function  TSBancos              :string;overload;
function  Ultimo_Dia_Mes        (data  : TDate):tdate;
function  Ultimo_Dia_Mes_proximo(data:TDate):tdate;
function  Ultima_Dia_Semana     (Data : TDate) : TDate;
function  datafinalmes          (data :TDate):string;
function  VerificarFeriado      (dt: TDate):boolean;
function  vencimentosabadodomingopagamentosegunda (dtprorrogacao, dtbaixa: TDate): boolean;
function  trocar_dt_eua_para_dt_brasil(data:string):string;
function  get_dia_eh_feriado(dt:TDate):string;

Implementation

uses uRegistro;

const
  sql1 = 'select cast(''today'' as date) from rdb$database';
  sql2 = 'select current_time from rdb$database';
  sql3 = 'select current_timestamp from rdb$database';
  cNomeMes : array [1..12] of String[9] = ('JANEIRO','FEVEREIRO','MARÇO','ABRIL', 'MAIO','JUNHO','JULHO','AGOSTO', 'SETEMBRO','OUTUBRO','NOVEMBRO', 'DEZEMBRO');

function get_total_hora_minuto(Tempo:Variant):string;
begin
  if IntToStr(MinuteOfTheDay(tempo) div 60) = _0 then
  begin
    result := IntToStr(MinuteOfTheDay(tempo) div 60)+':'+inttostr(MinuteOfTheDay(tempo) mod 60);
  end
  else
  begin
    result := floatToStr(((tempo*24) div 1)-1)+':'+FormatarTextoEsquerda(inttostr(MinuteOfTheDay(tempo) mod 60), 2, _0);
  end;
end;

function get_dia_eh_feriado(dt:TDate):string;
begin
  if RegistroExiste(_feriado, 'dtferiado='+getdtbanco(dt)) then result := _s
                                                           else result := _N;
end;

function get_qtduracao(tsinicio, tsfim: TDateTime):double;
var
  tsduracao : TDatetime;
begin
  tsduracao := tsfim - tsinicio;
  result := RoundTo(
                    (
                     (StrToInt
                      (FormatDateTime
                                     ('hh', tsduracao)
                       )*60
                      )+
                      StrToInt(
                               FormatDateTime
                                ('nn', tsduracao)
                               )
                     ) * 0.01666666666666667, -2
                    );
  result := result + ((DiferencaDias(tsfim, tsinicio) - 1) * 24);
end;

function trocar_dt_eua_para_dt_brasil(data:string):string;
begin
  result := Copy(data, 4, 3)+Copy(data, 1, 3)+Copy(data, 7, 4);
end;

function ajustardata(data:string):string;
begin
  result := data;
  if result = _30_12_1899 then
  begin
    result := '';
  end;
end;

function Primeiro_dia_mes(data: TDate):TDate;
begin
  result := strtodate('01/'+formatdatetime(_mm, data)+'/'+formatdatetime(_yyyy, data));
end;

function datafinalmes(data:TDate):string;
var
  mes: string;
begin
  mes := formatdatetime(_mm, data);
  while mes = formatdatetime(_mm, data) do
  begin
    data := data + 1;
  end;
  data   := data - 1;
  result := formatdatetime(_mm, data)+'/'+formatdatetime(_dd, data)+'/'+formatdatetime(_yyyy, data);
end;

function vencimentosabadodomingopagamentosegunda(dtprorrogacao, dtbaixa: TDate): boolean;
begin
  result := false;
  if DayOfWeek(dtprorrogacao) in [1,7] then
  begin
    if DayOfWeek(dtbaixa) in [2] then
    begin
      result := True;
    end;
  end;
end;

function Numero_Mes(mes:string):string;
begin
       if mes = 'JAN' then result := '01'
  else if mes = 'FEB' then result := '02'
  else if mes = 'MAR' then result := '03'
  else if mes = 'ABR' then result := '04'
  else if mes = 'MAY' then result := '05'
  else if mes = 'JUN' then result := _06
  else if mes = 'JUL' then result := '07'
  else if mes = 'AGO' then result := '08'
  else if mes = 'SET' then result := '09'
  else if mes = 'OUT' then result := '10'
  else if mes = 'NOV' then result := '11'
  else if mes = 'DEZ' then result := '12';
end;

procedure Adicionarlinhadata(di, df: TDateTimePicker; nmdata:string; var Linha: TStrings; var l: integer; nucol:integer);
begin
  if not di.Checked then
  begin
    exit;
  end;
  if df.Checked then linha.add(CentralizarString('Periodo: '+nmdata+' '+formatdatetime(_dd_mm_yyyy,di.Date)+' a '+formatdatetime(_dd_mm_yyyy,df.Date), nucol))
                else linha.add(CentralizarString('Periodo: '+nmdata+' '+formatdatetime(_dd_mm_yyyy,di.Date)+' a '+formatdatetime(_dd_mm_yyyy,di.date), nucol));
  inc(l);
end;

function VerificarFeriado(dt: TDate):boolean;
begin
  result := RetornaSQLInteger('select count(*) from feriado where dtferiado='+GetDtBanco(dt)) > 0;
end;

function isDate(data:string):Boolean;
begin
  try
    StrToDate(data);
    result := true;
  except
    result := false;
  end;
end;

function TSBancos:string;
begin
  result := formatdatetime(__tsbanco, RetornaSQLTimeStamp(sql3));
end;

function DtBancos:string;
begin
  result := formatdatetime(_mm_dd_yyyy, RetornaSQLData(sql1));
end;

function DtServer:string;
begin
  result := formatdatetime(_dd_mm_yyyy, RetornaSQLData(sql1));
end;

function tsBanco:TDateTime;
begin
  result := RetornaSQLTimeStamp(sql3)
end;

function DtBanco:TDate;
begin
  result := RetornaSQLData(sql1)
end;

function HrServer:string;
begin
  result := RetornaSQLString(sql2);
end;

function HrBanco:TTime;
begin
  result := RetornaSQLHora(sql2)
end;

function HrBanco2:TTime;
begin
  result := RetornaSQLHora2(sql2)
end;

function DiferencaDias(dtf, dti: TDate):integer;
begin
  result := 0;
  while dtf > dti do
  begin
    Inc(result);
    dti := dti + 1;
  end;
end;

function IdadeData(dt: TDate):integer;
var
  mesa, mesb, diaa, diab, idade : integer;
begin
  idade := strtoint(formatdatetime(_YYYY, dtbanco)) - strtoint(formatdatetime(_YYYY, dt));
  mesa  := strtoint(formatdatetime(_MM, dtbanco));
  mesb  := strtoint(formatdatetime(_MM, dt));
  if mesb > mesa then
  begin
    idade := idade - 1
  end
  else if mesa = mesb then
  begin
    diaa := strtoint(formatdatetime(_DD, dtbanco));
    diab := strtoint(formatdatetime(_DD, dt));
    if diab > diaa then
    begin
      idade := idade - 1;
    end;
  end;
  result := idade;
end;

function IdadeDataAnoMes(dt: TDate):string; overload;
var
  mes, mesa, mesb, diaa, diab, idade : integer;
begin
  mes   := 0;
  idade := strtoint(formatdatetime(_YYYY, dtbanco)) - strtoint(formatdatetime(_YYYY, dt));
  mesa  := strtoint(formatdatetime(_MM, dtbanco));
  mesb  := strtoint(formatdatetime(_MM, dt));
  if mesb > mesa then
  begin
    idade := idade - 1;
    mes   := mesa - mesb;
  end
  else if mesa = mesb then
  begin
    diaa := strtoint(formatdatetime(_DD, dtbanco));
    diab := strtoint(formatdatetime(_DD, dt));
    if diab > diaa then
    begin
      idade := idade - 1;
    end;
  end
  else
  begin
    mes := mesa - mesb;
  end;
  result := inttostr(idade) + ' ano';
  if idade > 1 then
  begin
    result := result + 's';
  end;
  if mes > 0 then
  begin
    result := result + ' ' + inttostr(mes) + ' mes';
    if mes > 1 then
    begin
      result := result + 'es';
    end;
  end;
end;

function IdadeDataAnoMes(di, df: TDate):string; overload;
var
  mes, mesa, mesb, diaa, diab, idade : integer;
begin
  mes   := 0;
  idade := strtoint(formatdatetime(_YYYY, df)) - strtoint(formatdatetime(_YYYY, di));
  mesa  := strtoint(formatdatetime(_MM, df));
  mesb  := strtoint(formatdatetime(_MM, di));
  if mesb > mesa then
  begin
    idade := idade - 1;
    mes   := mesa - mesb;
  end
  else if mesa = mesb then
  begin
    diaa := strtoint(formatdatetime(_DD, df));
    diab := strtoint(formatdatetime(_DD, di));
    if diab > diaa then
    begin
      idade := idade - 1;
    end;
  end
  else
  begin
    mes := mesa - mesb;
  end;
  result := inttostr(idade) + ' ano';
  if idade > 1 then
  begin
    result := result + 's';
  end;
  if mes > 0 then
  begin
    result := result + ' ' + inttostr(mes) + ' mes';
    if mes > 1 then
    begin
      result := result + 'es';
    end;
  end;
end;

function NumeroMesesEntreData(dti, dtf: TDate):integer;
var
  mesaux, mes : string;
  numes : integer;
begin
  numes := 0;
  while dti <= dtf do
  begin
    mes := formatdatetime(_MM, dti);
    if mes <> mesaux then
    begin
      numes  := numes + 1;
      mesaux := mes;
    end;
    dti := dti + 1;
  end;
  result := numes;
end;

function Mes_data(data:TDate):integer;
begin
  result := strtoint(formatdatetime(_MM, data));
end;

function Dia_data(data:TDate):integer;
begin
  result := strtoint(formatdatetime(_DD, data));
end;

function AdicionaHora(TimeAdd: Integer) : String; // Adicionando à hora atual, um número determinado de horas.
Var
  Horas,Min,SomaHoras,SomaMin : Integer;
  S, S1 : String;
begin
  somamin   := 0;
  somahoras := 0;
  Horas     := Strtoint(Copy(TimetoStr(Time),1,2))+ TimeAdd;
  Min       := Strtoint(Copy(TimetoStr(Time),4,2))+ TimeAdd ;
  SomaHoras := SomaHoras+Horas;
  SomaMin   := SomaMin + Min;
  If SomaMin > 59 Then
  begin
    if SomaMin mod 60 = 0 Then
    begin
      Somahoras := Somahoras+(Somamin div 60);
      Somamin   := 0;
    end
    else
    begin
      SomaHoras := SomaHoras + (SomaMin div 60);
      SomaMin   := SomaMin mod 60;
    end;
  end;
  If Somamin = 0 Then S := '00'
                 else S := InttoStr(Somamin);
  If Length(InttoStr(SomaHoras)) = 1 Then S1 := Concat(_0,InttoStr(Somahoras))
                                     else S1 := InttoStr(Somahoras);
  Result := Concat(S1,':',S,':00');
end;

{Acertando a data e hora do sistema através do programa
Coloque dois TEdit no form.
Coloque um TButton no form e altere o evento OnClick deste botão como abaixo:
No Edit1 digite a nova data e no Edit2 digite a nova hora.}
procedure AcertaDataHoraSistema(Datastring, Horastring: string);
var
  DataHora: TSystemTime;
  Data, Hora: TDateTime;
  Ano, Mes, Dia,
  H, M, S, Mil: word;
begin
  Data := StrToDate(DataString);
  Hora := StrToTime(HoraString);
  DecodeDate(Data, Ano, Mes, Dia);
  DecodeTime(Hora, H, M, S, Mil);
  with DataHora do
  begin
    wYear   := Ano;
    wMonth  := Mes;
    wDay    := Dia;
    wHour   := H;
    wMinute := M;
    wSecond := S;
    wMilliseconds := Mil;
  end;
  SetLocalTime(DataHora);
end;

function DiadaSemana(nmdia: string; Data : TDate) : boolean; // Verifica se uma data informada cai em um dia da semana
var
  nudia, dia : integer;
begin
  nudia  := 0;
  result := false;
       if  lowercase(nmdia) = _domingo then nudia := 1
  else if (lowercase(nmdia) = _segunda) or (lowercase(nmdia) = 'segunda-feira') then nudia := 2
  else if (lowercase(nmdia) = _terca)   or (lowercase(nmdia) = 'terça') or
                                           (lowercase(nmdia) = 'terca-feira') or
                                           (lowercase(nmdia) = 'terça-feira')   then nudia := 3
  else if (lowercase(nmdia) = _quarta)  or (lowercase(nmdia) = 'quarta-feira')  then nudia := 4
  else if (lowercase(nmdia) = _quinta)  or (lowercase(nmdia) = 'quinta-feira')  then nudia := 5
  else if (lowercase(nmdia) = _sexta)   or (lowercase(nmdia) = 'sexta-feira')   then nudia := 6
  else if (lowercase(nmdia) = _sabado)  or (lowercase(nmdia) = 'sábado')        then nudia := 7;
  dia := DayOfWeek(Data);
  if dia = nudia then
  begin
    result := true;
  end;
end;

function Primeiro_Dia_Semana(Data : TDate) : TDate;
begin
  result := data - (DayOfWeek(Data) - 1);
end;

function Ultima_Dia_Semana(Data : TDate) : TDate;
begin
  result := data + (7 - DayOfWeek(Data));
end;

//-------------- Retorna data do primeiro dia Util do mes, de uma data informada
function PrimeiroDiaUtil(Data:TDateTime):TDateTime;
var
  Ano, Mes, Dia : word;
  DiaDaSemana : Integer;
begin
  DecodeDate (Data, Ano, Mes, Dia);
  Dia         := 1;
  DiaDaSemana := DayOfWeek(Data);
  if DiaDaSemana in [1,7] then
  begin
    Dia := 2;
  end;
  Result := EncodeDate(Ano, Mes, Dia);
end;

function ReturnSixMonth(Actual:TDateTime):Semestre; // Retorna 6 meses atrás da data enviada, de mes em mes
var
  d,m,y : word;
  i : byte;
  Data : TDateTime;
begin
  for i := 6 downto 1 do
  begin
    Data := Actual - (30 * i);
    DecodeDate(Data,y,m,d);
    Result[i].Mes := m;
    Result[i].Ano := y;
  end;
end;

function NomeMes(mes:integer):string;
begin
  case mes of
     1: result:= 'JANEIRO';
     2: result:= 'FEVEREIRO';
     3: result:= 'MARÇO';
     4: result:= 'ABRIL';
     5: result:= 'MAIO';
     6: result:= 'JUNHO';
     7: result:= 'JULHO';
     8: result:= 'AGOSTO';
     9: result:= 'SETEMBRO';
    10: result:= 'OUTUBRO';
    11: result:= 'NOVEMBRO';
    12: result:= 'DEZEMBRO';
  else
    result:= '';
  end;
end;

function NomeMes(Mes:Word;Abrev:Boolean=true):String;
begin
  if (Mes in [1..12]) then
  begin
    if Abrev then Result := Copy(cnomemes[Mes],1,3)
             else Result := cnomemes[Mes];
  end;
end;

function DataExtenso(Data:TDateTime): String;
var
  NoDia : Integer;
  DiaDaSemana : array [1..7] of String;
  Meses : array [1..12] of String;
  Dia, Mes, Ano : Word;
begin
{ Dias da Semana }
  DiaDasemana [1]:= 'Domingo';
  DiaDasemana [2]:= 'Segunda-feira';
  DiaDasemana [3]:= 'Terçafeira';
  DiaDasemana [4]:= 'Quarta-feira';
  DiaDasemana [5]:= 'Quinta-feira';
  DiaDasemana [6]:= 'Sexta-feira';
  DiaDasemana [7]:= 'Sábado';
{ Meses do ano }
  Meses [1] := 'Janeiro';
  Meses [2] := 'Fevereiro';
  Meses [3] := 'Março';
  Meses [4] := 'Abril';
  Meses [5] := 'Maio';
  Meses [6] := 'Junho';
  Meses [7] := 'Julho';
  Meses [8] := 'Agosto';
  Meses [9] := 'Setembro';
  Meses [10]:= 'Outubro';
  Meses [11]:= 'Novembro';
  Meses [12]:= 'Dezembro';

  DecodeDate (Data, Ano, Mes, Dia);
  NoDia  := DayOfWeek (Data);
  Result := DiaDaSemana[NoDia] + ', ' + IntToStr(Dia) + ' de ' + Meses[Mes]+ ' de ' + IntToStr(Ano);
end;

function Ultimo_Dia_Mes(data:TDate):tdate;
var
  i, mes : integer;
begin
  result := 28;
  mes    := strtoint(formatdatetime(_MM, data));
  for i := 1 to 31 do
  begin
    data := data + 1;
    if mes <> strtoint(formatdatetime(_MM, data)) then
    begin
      data   := data - 1;
      result := data;
      break;
    end;
  end;
end;

function Ultimo_Dia_Mes_proximo(data:TDate):tdate;
var
  i, mes : integer;
begin
  mes := strtoint(formatdatetime(_MM, data));
  while mes = strtoint(formatdatetime(_MM, data)) do
  begin
    data := data + 1;
  end;
  mes    := strtoint(formatdatetime(_MM, data));
  result := 28;
  for i := 1 to 31 do
  begin
    data := data + 1;
    if mes <> strtoint(formatdatetime(_MM, data)) then
    begin
      data   := data - 1;
      result := data;
      break;
    end;
  end;
end;

function Ano_Bissexto(ano:integer):boolean;
begin
  result := ((ano div 4) * 4 = ano);
end;

{ Usada no componente TEdit, ou seus descendentes DB, etc.
  passse o parametro Sender e key da seguinte forma:

  procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
  begin
    DigitaData(sender, key);
  end;
  }
procedure DigitaData(Sender:TObject; var Key: Char);
var
  x, numbarras : integer ;
begin
  if key <> #8 then
  begin
    if Sender is Tdbedit then
    begin
      if (length(trim(Tdbedit(sender).text)) >= 10) or (not (Key in [_0.._9, '/', #8])) then
      begin
        Key := #0 ;
        exit ;
      end;
      numbarras := 0 ;
      for x := 1 to length(trim(Tdbedit(sender).text)) do
      begin
        if copy(trim(Tdbedit(sender).text),x,1) = '/' then
        begin
          numbarras := numbarras + 1 ;
        end;
      end;
      if numBarras <2 then
      begin
        if length(trim(Tdbedit(sender).text)) = 2  then
        begin
          Tdbedit(sender).text := Tdbedit(sender).text + '/' ;
          Tdbedit(sender).SelStart := length(trim(Tdbedit(sender).text)) ;
        end;
        if length(trim(Tdbedit(sender).text)) = 5  then
        begin
          Tdbedit(sender).text := Tdbedit(sender).text + '/' ;
          Tdbedit(sender).SelStart := length(trim(Tdbedit(sender).text)) ;
        end;
      end;
      if (copy(Tdbedit(sender).text,length(Tdbedit(sender).text),1) = '/') and (key = '/') then
      begin
        Key := #0;
      end;
      exit;
    end;
    if Sender is Tedit then
    begin
      if (length(trim(Tedit(sender).text)) >= 10) or (not (Key in [_0.._9, '/', #8])) then
      begin
        Key := #0;
        exit;
      end;
      numbarras := 0 ;
      for x := 1 to length(trim(Tedit(sender).text)) do
      begin
        if copy(trim(Tedit(sender).text),x,1) = '/' then
        begin
          numbarras := numbarras + 1 ;
        end;
      end;
      if numBarras <2 then
      begin
        if length(trim(Tedit(sender).text)) = 2  then
        begin
          Tedit(sender).text     := Tedit(sender).text + '/' ;
          Tedit(sender).SelStart := length(trim(Tedit(sender).text)) ;
        end;
        if length(trim(Tedit(sender).text)) = 5  then
        begin
          Tedit(sender).text     := Tedit(sender).text + '/' ;
          Tedit(sender).SelStart := length(trim(Tedit(sender).text)) ;
        end;
      end;
      if (copy(Tedit(sender).text,length(Tedit(sender).text),1) = '/') and (key = '/') then
      begin
        Key := #0;
      end;
    end;
  end;
end;

function Primeiro_dia_mes_anterior(data:TDate):TDate;
var
  i, mes_atual : integer;
begin
  result    := data;
  mes_atual := Mes_data(data);
  for i := 1 to 62 do
  begin
    data := data - 1;
    if (mes_atual <> mes_data(data)) and (dia_data(data) = 1) then
    begin
      result := data;
      break;
    end;
  end;
end;

function Primeiro_dia_mes_proximo(data:TDate):TDate;
var
  i, mes_atual : integer;
begin
  result    := data;
  mes_atual := Mes_data(data);
  for i := 1 to 62 do
  begin
    data := data + 1;
    if (mes_atual <> mes_data(data)) and (dia_data(data) = 1) then
    begin
      result := data;
      break;
    end;
  end;
end;

class function QDataHora.mesano(data: TDate): string;
begin
  result := FormatDateTime(_mmyyyy, Data);
end;

class function QDataHora.Somente_Data(data: TDate): TDate;
var
  ano, mes, dia  : word;
begin
  DecodeDate(data, ano, mes, dia);
  result := EncodeDate(ano, mes, dia);
end;

end.
