unit classetabirpf;

interface

uses sysutils, Controls, Math, 
  sqlexpr,
  uconstantes, ustrings, unumero,
  classeretornasql;

type TTabIRPF = class(TObject)
  private
  public
    constructor create;
    function Aliquota        (data: TDate; vlbaseirrf: currency):double;
    function Deducao         (data: TDate; vlbaseirrf: currency):double;
    function ValorDependentes(data: TDate):currency;
    function ValorIRRF       (Data:TDate; vlbaseirrf:Currency):currency;
    function ValorMinimo     (data: TDate):currency;
  end;

implementation

function TTabIRPF.ValorIRRF(Data:TDate; vlbaseirrf:Currency):currency;
begin
  result := RoundTo((RoundTo(((vlbaseirrf * Aliquota(data , vlbaseirrf)) / 100), -2) - Deducao(data , vlbaseirrf)), -2);
  if result < 0 then
  begin
    result := 0;
  end;
end;

function TTabIRPF.Deducao(data: TDate; vlbaseirrf: currency):double;
  function makesql:string;
  begin
    result := 'select cdtabirpf '+
              'from tabirpf '+
              'where dtemissao<='+getdtbanco(data)+' '+
              'order by dtemissao desc';
  end;
var
  cdtabirpf : string;
  function makesql2:string;
  begin
    result := 'select vldeducao'+
                    ',min(alittabirpf) '+
              'from ittabirpf '+
              'where cdtabirpf='+cdtabirpf +' and vlittabirpf>'+getcurrencys(vlbaseirrf)+' '+
              'group by vldeducao';
  end;
begin
  result    := 0;
  cdtabirpf := RetornaSQLString(makesql);
  if cdtabirpf <> '' then
  begin
    result := RetornaSQLCurrency( makesql2)
  end;
end;

function TTabIRPF.ValorDependentes(data: TDate):currency;
  function makesql:string;
  begin
    result := 'select vldependente '+
              'from tabirpf '+
              'where dtemissao<='+getdtbanco(data)+' '+
              'order by dtemissao desc';
  end;
begin
  result := RetornaSQLCurrency( makesql);
end;

function TTabIRPF.Aliquota(data: TDate; vlbaseirrf: currency):double;
  function makesql:string;
  begin
    result := 'select cdtabirpf '+
              'from tabirpf '+
              'where dtemissao<='+getdtbanco(data)+' '+
              'order by dtemissao desc'
  end;
var
  cdtabirpf : string;
  function makesql2:string;
  begin
    result := 'select min(alittabirpf) '+
              'from ittabirpf '+
              'where cdtabirpf='+cdtabirpf +' and vlittabirpf>'+getcurrencys(vlbaseirrf)
  end;
begin
  result    := 0;
  cdtabirpf := RetornaSQLString(makesql);
  if cdtabirpf <> '' then
  begin
    result := RetornaSQLCurrency( makesql2)
  end;
end;

function TTabIRPF.ValorMinimo(data:TDate):currency;
  function makesql:string;
  begin
    result := 'select min(i.vlittabirpf) '+
              'from ittabirpf i '+
              'inner join tabirpf t on t.cdtabirpf=i.cdtabirpf '+
              'where t.dtemissao=(select max(dtemissao) '+
                                 'from tabirpf '+
                                 'where dtemissao<'+getdtbanco(data)+')';
  end;
begin
  result := RetornaSQLCurrency(makesql);
end;


constructor TTabIRPF.create;
begin
end;

end.
