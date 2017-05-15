unit classerecalcularpiscofins;

interface

uses
  Forms, SysUtils, Classes, Controls, Math,
  uRegistro, ustrings, uConstantes, uProgressBar,
  classequery, classeexecutasql, classeempresa;

function Recalcular_pis_cofins(dti, dtf: TDate):boolean;

implementation

type
  TRecalcular = class(tobject)
  private
    sql : TStrings;
    procedure processar_duplicata(cdsaida:string; vltotal, vlpis, vlcofins: Currency);
    procedure processar_baixa(cdduplicata:string; vlduplicata, vlpis, vlcofins:Currency);
  public
    constructor create;overload;
    destructor destroy; override;
    function   Calcular(dti, dtf:TDate):Boolean;
  end;

function Recalcular_pis_cofins(dti, dtf: TDate):boolean;
var
  Recalcular : TRecalcular;
begin
  Recalcular := TRecalcular.create;
  try
    result := Recalcular.Calcular(dti, dtf)
  finally
    Recalcular.Free;
  end;
end;

function TRecalcular.calcular(dti, dtf: TDate):boolean;
var
  c : TClasseQuery;
begin
  result := false;
  c := TClasseQuery.create;
  try
    c.q.open('select cdsaida,vlpis,vlcofins,vltotal from saida where cdempresa='+empresa.cdempresa.ToString+' and dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf));
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    frmprogressbar.Show;
    while not c.q.eof do
    begin
      frmprogressbar.gau.Progress := c.q.recno;
      application.ProcessMessages;
      processar_duplicata(c.q.fieldbyname(_cdsaida).Asstring, c.q.fieldbyname(_vltotal).AsCurrency, c.q.fieldbyname(_vlpis).AsCurrency, c.q.fieldbyname(_vlcofins).AsCurrency);
      c.q.Next;
    end;
  finally
    FreeAndNil(c);
  end;
  if sql.count > 0 then
  begin
    result := ExecutaScript(sql);
  end;
end;

constructor TRecalcular.create;
begin
  sql   := TStringList.Create;
  frmprogressbar := tfrmprogressbar.Create(nil);
end;

destructor TRecalcular.destroy;
begin
  FreeAndNil(sql);
  FreeAndNil(frmprogressbar);
  inherited;
end;

procedure TRecalcular.processar_duplicata(cdsaida:string; vltotal, vlpis, vlcofins: Currency);
var
  vloriginalpis, vloriginalcofins : Currency;
  c3 : TClasseQuery;
  procedure update_sql(vlpis, vlcofins:string);
  begin
    sql.Add('update duplicata set vlpis='+vlpis+',vlcofins='+vlcofins+' where cdempresa='+empresa.cdempresa.ToString+' and cdduplicata='+c3.q.fieldbyname(_cdduplicata).AsString+';');
  end;
  function get_valor_rateado(valor: currency): currency;
  begin
    result := RoundTo(c3.q.fieldbyname(_vlduplicata).AsCurrency * 100 / vltotal/ 100 * valor, -2);
  end;
begin
  vloriginalpis    := vlpis;
  vloriginalcofins := vlcofins;
  c3 := TClasseQuery.create;
  try
    c3.q.open('select cdduplicata,vlduplicata from duplicata where cdempresa='+empresa.cdempresa.ToString+' and cdsaida='+cdsaida+' order by cdduplicata');
    while not c3.q.eof do
    begin
      if c3.q.RecNo = c3.q.RecordCount then
      begin
        update_sql     (getcurrencys(vloriginalpis), getcurrencys(vloriginalcofins));
        processar_baixa(c3.q.fieldbyname(_cdduplicata).AsString, c3.q.fieldbyname(_vlduplicata).ascurrency, vloriginalpis, vloriginalcofins);
      end
      else
      begin
        vloriginalpis    := vloriginalpis    - get_valor_rateado(vlpis);
        vloriginalcofins := vloriginalcofins - get_valor_rateado(vlcofins);
        update_sql     (getcurrencys(get_valor_rateado(vlpis)), getcurrencys(get_valor_rateado(vlcofins)));
        processar_baixa(c3.q.fieldbyname(_cdduplicata).AsString, c3.q.fieldbyname(_vlduplicata).ascurrency, get_valor_rateado(vlpis)              , get_valor_rateado(vlcofins));
      end;
      c3.q.Next;
    end;
  finally
    FreeAndNil(c3);
  end;
end;

procedure TRecalcular.processar_baixa(cdduplicata:string; vlduplicata, vlpis, vlcofins:Currency);
var
  vloriginalpis, vloriginalcofins : Currency;
  c4 : TClasseQuery;
  procedure update_sql(vlpis, vlcofins:string);
  begin
    sql.Add('update baixa set vlpis='+vlpis+',vlcofins='+vlcofins+' where cdempresa='+empresa.cdempresa.ToString+' and cdbaixa='+c4.q.fieldbyname(_cdbaixa).AsString+';');
  end;
  function get_valor_rateado(vlcomissao: currency):currency;
  begin
    result := c4.q.fieldbyname(_vlbaixa).AsCurrency * 100 / vlduplicata / 100 * vlcomissao;
  end;
begin
  vloriginalpis    := vlpis;
  vloriginalcofins := vlcofins;
  c4 := TClasseQuery.create;
  try
    c4.q.Open('select cdbaixa,vlbaixa from baixa where cdempresa='+empresa.cdempresa.ToString+' and cdduplicata='+cdduplicata);
    while not c4.q.Eof do
    begin
      if c4.q.RecNo = c4.q.RecordCount then
      begin
        update_sql(getcurrencys(vloriginalpis),getcurrencys(vloriginalcofins));
      end
      else
      begin
        vloriginalpis    := vloriginalpis    - get_valor_rateado(vlpis);
        vloriginalcofins := vloriginalcofins - get_valor_rateado(vlcofins);
        update_sql(getcurrencys(get_valor_rateado(vlpis)), getcurrencys(get_valor_rateado(vlcofins)));
      end;
      c4.q.Next;
    end;
  finally
    FreeAndNil(c4);
  end;
end;

end.
