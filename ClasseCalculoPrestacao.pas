unit ClasseCalculoPrestacao;

interface

uses sysutils, math, controls, 
  classeperiodicidade,
  uconstantes, udatahora;

type
  TCalculoPrestacao = class
  private
    Fprjuros: double;
    Fcdperiodicidade: integer;
    Fqttamanholote: double;
    Fvlmetroquadrado: currency;
    Fvlimovel: currency;
    fvlentrada: currency;
    fqtparcelas: integer;
    fvlfinanciamento: currency;
    fvlparcelaperiodica: currency;
    fvlparcelamensal: currency;
    fqtparcelaperiodica: integer;
    fprperiodicidade: double;
    fdtprimeiramensal: TDate;
    fdtprimeiraperiodica: TDate;
    fdtemissao: TDate;
    fvlperiodicidade: currency;
    fperiodicidade: TPeriodicidade;
    function get_prperiodicidade:double;
  public
    property periodicidade : TPeriodicidade read fperiodicidade write fperiodicidade;
    property dtemissao : TDate read fdtemissao write fdtemissao;
    property prjuros : double read Fprjuros write fprjuros;
    property vlmetroquadrado : currency read Fvlmetroquadrado write fvlmetroquadrado;
    property qttamanholote : double read Fqttamanholote write fqttamanholote;
    property vlimovel : currency read fvlimovel write fvlimovel;
    property cdperiodicidade : integer read Fcdperiodicidade write fcdperiodicidade;
    property vlentrada : currency read fvlentrada write fvlentrada;
    property qtparcelas : integer read fqtparcelas write fqtparcelas;
    property vlfinanciamento : currency read fvlfinanciamento write fvlfinanciamento;
    property prperiodicidade : double read fprperiodicidade write fprperiodicidade;
    property vlperiodicidade : currency read fvlperiodicidade write fvlperiodicidade;
    property vlparcelamensal : currency read fvlparcelamensal write fvlparcelamensal;
    property qtparcelaperiodica : integer read fqtparcelaperiodica write fqtparcelaperiodica;
    property vlparcelaperiodica : currency read fvlparcelaperiodica write fvlparcelaperiodica;
    property dtprimeiramensal : TDate read fdtprimeiramensal write fdtprimeiramensal;
    property dtprimeiraperiodica : TDate read fdtprimeiraperiodica write fdtprimeiraperiodica;
    procedure setvlimovel;
    function CalcularParcelaMensal(valor: currency; qtparcela: integer):currency;
    function CalcularValorPeriodica: currency;
    function getqtparcelaperiodica:integer;
    constructor create;
    destructor destroy;
    procedure processar;
  end;

implementation

function TCalculoPrestacao.CalcularValorPeriodica: currency;
var
  taxa : double;
begin
  taxa := trunc((Power(1+(prjuros/100), periodicidade.numes)-1) * 10000)/10000;
  result := PresentValue(taxa, qtparcelaperiodica, vlparcelaperiodica, 0, ptEndOfPeriod);
  result := result * -1;
end;

constructor TCalculoPrestacao.create;
begin
  inherited;
  fperiodicidade := tperiodicidade.create;
end;

procedure TCalculoPrestacao.processar;
begin
  periodicidade.Select(cdperiodicidade);
  vlimovel            := vlmetroquadrado * qttamanholote;
  qtparcelaperiodica  := getqtparcelaperiodica;
  vlperiodicidade     := CalcularValorPeriodica;
  vlfinanciamento     := vlimovel - vlentrada - vlperiodicidade;
  vlparcelamensal     := CalcularParcelaMensal(vlfinanciamento, qtparcelas);
  prperiodicidade     := get_prperiodicidade;
  dtprimeiramensal    := IncMonth(dtemissao);
  dtprimeiraperiodica := incmonth(dtemissao, periodicidade.numes);
end;

destructor TCalculoPrestacao.destroy;
begin
  freeandnil(fperiodicidade);
  inherited;
end;

function TCalculoPrestacao.getqtparcelaperiodica: integer;
var
  i : integer;
begin
  result := 0;
  if (periodicidade.numes = 0) or (periodicidade.numes > qtparcelas) then
  begin
    exit;
  end;
  i := 0;
  repeat
    i := i + periodicidade.numes;
    result := result + 1;
  until qtparcelas < (i + periodicidade.numes);
end;

function TCalculoPrestacao.get_prperiodicidade: double;
begin
  if vlperiodicidade = 0 then
  begin
    result := 0;
  end
  else
  begin
    result := vlperiodicidade / vlimovel * 100;
  end;
end;

function TCalculoPrestacao.CalcularParcelaMensal(valor: currency; qtparcela: integer):currency;
var
  vparc : currency;
  expo : Double;
begin
  result := 0;
  if prjuros = 0 then
  begin
    if qtparcela = 0 then
    begin
      result := 0;
      exit;
    end;
    result := valor / qtparcela;
    exit;
  end;
  expo := Math.Power((1+(prjuros/100)), qtparcela);
  vparc := prjuros*expo;
  expo := expo-1;
  if expo = 0 then
  begin
    result := 0;
    exit;
  end;
  if vparc <> 0 then
  begin
    result := vparc/expo;
  end;
  result := (100*valor*result)/10000;
end;

procedure TCalculoPrestacao.setvlimovel;
begin
  fvlimovel := qttamanholote * vlmetroquadrado;
end;

end.
