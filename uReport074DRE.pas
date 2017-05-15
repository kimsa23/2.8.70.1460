unit uReport074DRE;

interface

uses
  Classes, SysUtils, DB,
  uconstantes, uregistro,
  classemovbancario, classeQuery, classeretornasql;


procedure Report074DRE(mtbl, mtbl2: TDataClient; sqlwhere:string);

implementation

type
  TReport = class
  private { private declarations }
    plconta : TPlContaList;
    mtbl: TDataClient;
    mtbl2: TDataClient;
    sqlwhere : string;
    procedure CriarFields;
    procedure CriarFields2;
    procedure ProcessarImpostoSaida;
    procedure ProcessarImportoCTE;
    function  makesqlImposto(tbl, imposto:string):String;
    procedure ProcessarItem(makesql: string);
    function  MakesqlNota(tbl:string):string;
    procedure InserirInformaçãoPlConta;
    procedure GerarRegistrosAscendentes;
    procedure inserirRegistroObjetoDataset;
    procedure AdicionarContaPai(cdplcontapai: integer; vlsaldo: currency);
  public
    constructor create(mtbl21, mtbl22: TDataClient; sqlwhere2: string);
    destructor destroy;
    procedure   gerar;
  end;

procedure Report074DRE(mtbl, mtbl2: TDataClient; sqlwhere:string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, mtbl2, sqlwhere);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl21, mtbl22: TDataClient; sqlwhere2: string);
begin
  mtbl     := mtbl21;
  mtbl2    := mtbl22;
  sqlwhere := sqlwhere2;
  plconta  := TPlContaList.create;
end;

procedure TReport.CriarFields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_cdplconta        , ftinteger);
  mtbl.m.FieldDefs.Add(_nunivel+_1       , ftstring, 100);
  mtbl.m.FieldDefs.Add(_nmplconta+_1     , ftstring, 100);
  mtbl.m.FieldDefs.Add(_pr+_plconta+_1   , ftFloat);
  mtbl.m.FieldDefs.Add(_pr+_t+_plconta+_1, ftFloat);
  mtbl.m.FieldDefs.Add(_vl+_plconta+_1   , ftCurrency);

  mtbl.m.FieldDefs.Add(_nunivel+_2       , ftstring, 100);
  mtbl.m.FieldDefs.Add(_nmplconta+_2     , ftstring, 100);
  mtbl.m.FieldDefs.Add(_pr+_plconta+_2   , ftFloat);
  mtbl.m.FieldDefs.Add(_pr+_t+_plconta+_2, ftFloat);
  mtbl.m.FieldDefs.Add(_vl+_plconta+_2   , ftCurrency);

  mtbl.m.FieldDefs.Add(_nunivel+_3       , ftstring, 100);
  mtbl.m.FieldDefs.Add(_nmplconta+_3     , ftstring, 100);
  mtbl.m.FieldDefs.Add(_pr+_plconta+_3   , ftFloat);
  mtbl.m.FieldDefs.Add(_pr+_t+_plconta+_3, ftFloat);
  mtbl.m.FieldDefs.Add(_vl+_plconta+_3   , ftCurrency);

  mtbl.m.FieldDefs.Add(_nunivel+_4       , ftstring, 100);
  mtbl.m.FieldDefs.Add(_nmplconta+_4     , ftstring, 100);
  mtbl.m.FieldDefs.Add(_pr+_plconta+_4   , ftFloat);
  mtbl.m.FieldDefs.Add(_pr+_t+_plconta+_4, ftFloat);
  mtbl.m.FieldDefs.Add(_vl+_plconta+_4   , ftCurrency);

  mtbl.m.IndexDefs.Add(_nunivel, _nunivel+_1+';'+_nunivel+_2+';'+_nunivel+_3+';'+_nunivel+_4, []);
  mtbl.m.IndexName := _nunivel;
  mtbl.m.CreateDataSet;
end;

procedure TReport.CriarFields2;
begin
  mtbl2.m.FieldDefs.Clear;
  mtbl2.m.FieldDefs.Add(_vlicms+_entrada, ftcurrency);
  mtbl2.m.FieldDefs.Add(_vlipi+_entrada, ftcurrency);
  mtbl2.m.FieldDefs.Add(_vlpis+_entrada, ftcurrency);
  mtbl2.m.FieldDefs.Add(_vlcofins+_entrada, ftcurrency);

  mtbl2.m.FieldDefs.Add(_vlicms+_saida, ftcurrency);
  mtbl2.m.FieldDefs.Add(_vlipi+_saida, ftcurrency);
  mtbl2.m.FieldDefs.Add(_vlpis+_saida, ftcurrency);
  mtbl2.m.FieldDefs.Add(_vlcofins+_saida, ftcurrency);
  mtbl2.m.CreateDataSet;
end;

destructor TReport.destroy;
begin
  freeandnil(plconta);
end;

procedure TReport.gerar;
begin
  CriarFields;
  ProcessarItem(MakesqlNota(_entrada));
  processarItem(MakesqlNota(_saida));
  processarItem('select cdplconta,sum(vllancamento) vltotal from movbancario nota '+sqlwhere+' and cdplconta is not null and cdnatureza=''D'' group by cdplconta');
  processarItem('select cdplconta,sum(vllancamento) vltotal from movbancario nota '+sqlwhere+' and cdplconta is not null and cdnatureza=''C'' group by cdplconta');
  processarItem('select cdplconta,sum(vlautpagto) vltotal from autpagto nota '+sqlwhere+' and cdentrada is null and cdplconta is not null group by cdplconta');
  processarItem('select cdplconta,sum(vlduplicata) vltotal from duplicata nota '+sqlwhere+' and cdsaida is null and cdplconta is not null group by cdplconta');
  InserirInformaçãoPlConta;
  GerarRegistrosAscendentes;
  inserirRegistroObjetoDataset;
  mtbl.m.IndexName := _nunivel;
  CriarFields2;
  ProcessarImpostoSaida;
end;

procedure TReport.AdicionarContaPai(cdplcontapai: integer; vlsaldo: currency);
begin
  if cdplcontapai <> 0 then
  begin
    if plconta.Existe(cdplcontapai) then
    begin
      plconta.items[plconta.IndicePlconta(cdplcontapai)].vlsaldo := plconta.items[plconta.IndicePlconta(cdplcontapai)].vlsaldo + vlsaldo;
      AdicionarContaPai(plconta.items[plconta.IndicePlconta(cdplcontapai)].cdplcontapai, vlsaldo);
    end
    else
    begin
      plconta.New;
      plconta.Items[plconta.count-1].Select(cdplcontapai);
      plconta.Items[plconta.count-1].vlsaldo := vlsaldo;
      AdicionarContaPai(plconta.Items[plconta.count-1].cdplcontapai, plconta.Items[plconta.count-1].vlsaldo);
    end;
  end;
end;

procedure TReport.GerarRegistrosAscendentes;
var
  I: Integer;
begin
  for I := 0 to plconta.Count - 1 do
  begin
    AdicionarContaPai(plconta.Items[i].cdplcontapai, plconta.Items[i].vlsaldo);
  end;
end;

procedure TReport.InserirInformaçãoPlConta;
begin
  mtbl.m.First;
  while not mtbl.m.eof do
  begin
    mtbl.m.edit;
    mtbl.m.fieldbyname(_nunivel+_1).asstring := qregistro.StringdoCodigo(_plconta, mtbl.m.fieldbyname(_cdplconta).asinteger, _nunivel);
    mtbl.m.fieldbyname(_nmplconta+_1).asstring := qregistro.NomedoCodigo(_plconta, mtbl.m.fieldbyname(_cdplconta).asinteger);
    mtbl.m.post;
    mtbl.m.next;
  end;
end;

procedure TReport.inserirRegistroObjetoDataset;
var
  z, y, x, I: Integer;
  bo3, bo1, bo2 : boolean;
  procedure AdicionarNivel1;
  begin
    mtbl.m.Insert;
    mtbl.m.fieldbyname(_nunivel+_1).AsString       := plconta.items[i].nunivel;
    mtbl.m.fieldbyname(_nmplconta+_1).AsString     := plconta.items[i].nmplconta;
    mtbl.m.fieldbyname(_vl+_plconta+_1).AsCurrency := plconta.items[i].vlsaldo;
  end;
  procedure AdicionarNivel2;
  begin
    mtbl.m.fieldbyname(_nunivel+_2).AsString       := plconta.items[x].nunivel;
    mtbl.m.fieldbyname(_nmplconta+_2).AsString     := plconta.items[x].nmplconta;
    mtbl.m.fieldbyname(_vl+_plconta+_2).AsCurrency := plconta.items[x].vlsaldo;
    mtbl.m.fieldbyname(_pr+_plconta+_2).AsCurrency := plconta.items[x].vlsaldo / plconta.items[i].vlsaldo * 100;
    mtbl.m.fieldbyname(_pr+_t+_plconta+_2).AsCurrency := plconta.items[x].vlsaldo / plconta.items[i].vlsaldo * 100;
  end;
  procedure AdicionarNivel3;
  begin
    mtbl.m.fieldbyname(_nunivel+_3).AsString       := plconta.items[y].nunivel;
    mtbl.m.fieldbyname(_nmplconta+_3).AsString     := plconta.items[y].nmplconta;
    mtbl.m.fieldbyname(_vl+_plconta+_3).AsCurrency := plconta.items[y].vlsaldo;
    mtbl.m.fieldbyname(_pr+_plconta+_3).AsCurrency := plconta.items[y].vlsaldo / plconta.items[x].vlsaldo * 100;
    mtbl.m.fieldbyname(_pr+_t+_plconta+_3).AsCurrency := plconta.items[y].vlsaldo / plconta.items[i].vlsaldo * 100;
  end;
begin
  for I := 0 to plconta.count - 1 do
  begin
    if plconta.items[i].cdplcontapai <> 0 then
    begin
      continue;
    end;
    bo1 := true;
    for x := 0 to plconta.count -1 do
    begin
      if plconta.items[x].cdplcontapai = plconta.items[i].cdplconta then
      begin
        bo2 := true;
        for y := 0 to plconta.count - 1 do
        begin
          if plconta.items[y].cdplcontapai = plconta.items[x].cdplconta then
          begin
            bo3 := true;
            for z := 0 to plconta.count - 1 do
            begin
              if plconta.items[z].cdplcontapai = plconta.items[y].cdplconta then
              begin
                adicionarNivel1;
                adicionarNivel2;
                AdicionarNivel3;
                mtbl.m.fieldbyname(_nunivel+_4).AsString       := plconta.items[z].nunivel;
                mtbl.m.fieldbyname(_nmplconta+_4).AsString     := plconta.items[z].nmplconta;
                mtbl.m.fieldbyname(_vl+_plconta+_4).AsCurrency := plconta.items[z].vlsaldo;
                mtbl.m.fieldbyname(_pr+_plconta+_4).AsCurrency := plconta.items[z].vlsaldo / plconta.items[y].vlsaldo * 100;
                mtbl.m.fieldbyname(_pr+_t+_plconta+_4).AsCurrency := plconta.items[z].vlsaldo / plconta.items[i].vlsaldo * 100;
                mtbl.m.fieldbyname(_cdplconta).AsInteger := plconta.items[z].cdplconta;
                mtbl.m.post;
                bo3 := false;
              end;
            end;
            if bo3 then
            begin
              adicionarNivel1;
              adicionarNivel2;
              AdicionarNivel3;
              mtbl.m.fieldbyname(_cdplconta).AsInteger := plconta.items[y].cdplconta;
              mtbl.m.post;
            end;
            bo2 := false;
          end;
        end;
        if bo2 then
        begin
          adicionarNivel1;
          adicionarNivel2;
          mtbl.m.fieldbyname(_cdplconta).AsInteger := plconta.items[x].cdplconta;
          mtbl.m.post;
        end;
        bo1 := false;
      end;
    end;
    if bo1 then
    begin
      adicionarNivel1;
      mtbl.m.fieldbyname(_cdplconta).AsInteger := plconta.items[i].cdplconta;
      mtbl.m.post;
    end;
  end;
end;

function TReport.makesqlImposto(tbl, imposto: string): String;
begin
  result := 'select sum(it'+tbl+'.vl'+imposto+') '+
            'from '+tbl+' nota '+
            'inner join it'+tbl+' on it'+tbl+'.cdempresa=nota.cdempresa and nota.cd'+tbl+'=it'+tbl+'.cd'+tbl+' '+
            sqlwhere+' and borecupera'+imposto+'=''S''';
end;

function TReport.MakesqlNota(tbl: string): string;
begin
  result := 'SELECT item.cdplconta'+
                   ',sum(item.VLTOTAL+'+
                        'coalesce(item.vlicmssubtrib,0)+'+
                        'coalesce(item.vlipi,0)+'+
                        'coalesce(item.vlfrete,0)-'+
                        'coalesce(item.vldesconto,0)) vltotal '+
             'FROM '+tbl+' nota  '+
             'inner JOIN it'+tbl+' item on item.cdempresa=nota.cdempresa and item.cd'+tbl+'=nota.cd'+tbl+' and item.cdplconta is not null '+
             sqlwhere+' '+
             'group by item.cdplconta';
end;

procedure TReport.ProcessarImportoCTE;
begin
end;

procedure TReport.ProcessarImpostoSaida;
var
  q : TClasseQuery;
begin
  mtbl2.m.insert;
  mtbl2.m.fieldbyname(_vlicms+_entrada).AsCurrency   := RetornaSQLCurrency(makesqlImposto(_entrada, _icms))   + RetornaSQLCurrency(makesqlImposto(_saida, _icms));
  mtbl2.m.fieldbyname(_vlipi+_entrada).AsCurrency    := RetornaSQLCurrency(makesqlImposto(_entrada, _ipi))    + RetornaSQLCurrency(makesqlImposto(_saida, _ipi));
  mtbl2.m.fieldbyname(_vlpis+_entrada).AsCurrency    := RetornaSQLCurrency(makesqlImposto(_entrada, _pis))    + RetornaSQLCurrency(makesqlImposto(_saida, _pis));
  mtbl2.m.fieldbyname(_vlcofins+_entrada).AsCurrency := RetornaSQLCurrency(makesqlImposto(_entrada, _cofins)) + RetornaSQLCurrency(makesqlImposto(_saida, _cofins));

  q := tclasseQuery.create('select sum(i.vlicms),sum(i.vlipi),sum(i.vlcofins),sum(i.vlpis) from saida nota inner join itsaida i on i.cdempresa=nota.cdempresa and i.cdsaida=nota.cdsaida '+sqlwhere+' and tpentsai=''S''');
  mtbl2.m.fieldbyname(_vlicms+_saida).AsCurrency   := q.q.fields[0].ascurrency + RetornaSQLCurrency('select sum(vlicms) from cte nota '+sqlwhere);
  mtbl2.m.fieldbyname(_vlipi+_saida).AsCurrency    := q.q.fields[1].ascurrency;
  mtbl2.m.fieldbyname(_vlpis+_saida).AsCurrency    := q.q.fields[2].ascurrency;
  mtbl2.m.fieldbyname(_vlcofins+_saida).AsCurrency := q.q.fields[3].ascurrency;
  mtbl2.m.post;
end;

procedure TReport.ProcessarItem(makesql:string);
var
  q : TClasseQuery;
begin
  q := tclassequery.create(makesql);
  try
    while not q.q.eof do
    begin
      if plconta.Existe(q.q.fieldbyname(_cdplconta).asinteger)  then
      begin
        plconta.items[plconta.IndicePlconta(q.q.fieldbyname(_cdplconta).asinteger)].vlsaldo := plconta.items[plconta.IndicePlconta(q.q.fieldbyname(_cdplconta).asinteger)].vlsaldo + q.q.fieldbyname(_vltotal).ascurrency;
      end
      else
      begin
        with plconta.New do
        begin
          Select(q.q.fieldbyname(_cdplconta).asinteger);
          vlsaldo := q.q.fieldbyname(_vltotal).ascurrency;
        end;
      end;
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

end.
