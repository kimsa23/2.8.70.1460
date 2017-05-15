unit ClasseGerarDuplicata;

interface

uses
  Controls, SysUtils, Math,
  classeaplicacao, classegerar, classeretornasql, classeempresa, classequery, classesaida, classeduplicata,
  unumero, ustrings, uConstantes, uregistro;

type
  TGerarDuplicata = class(tobject)
  private
    saida : TSaida;
    procedure Gerar;
  public
    constructor create(saida_:TSaida);overload;
    class procedure GerarDuplicata   (saida_: TSaida);
  end;

implementation

class procedure TGerarDuplicata.GerarDuplicata(saida_: TSaida);
var
  gerarduplicata : TGerarDuplicata;
begin
  gerarduplicata := TGerarDuplicata.create(saida_);
  try
    gerarduplicata.Gerar;
  finally
    freeandnil(gerarduplicata);
  end;
end;

procedure TGerarDuplicata.Gerar;
end;

constructor TGerarDuplicata.create(saida_: TSaida);
begin
  saida := Saida_;
end;

end.

