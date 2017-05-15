unit uimp_adntcliente_saldo;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeempresa, classeAplicacao, classequery;

procedure imp_adntcliente_saldo(mtbl: TDataClient; dt: Tdate);

implementation

Type TReport = class
  private
    dti : TDate;
    mtbl: TDataClient;
    c : TClasseQuery;
    procedure criar_fields;
    function  makesql:string;
  public
    constructor create(mtbl2: TDataClient; dt:Tdate);
    procedure   gerar;
  end;

procedure imp_adntcliente_saldo(mtbl: TDataClient; dt: Tdate);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, dt);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient; dt:Tdate);
begin
  mtbl := mtbl2;
  dti  := dt;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_cdcliente, ftInteger);
  mtbl.m.FieldDefs.Add(_rzsocial , ftString, 100);
  mtbl.m.FieldDefs.Add(_vlsaldo  , ftCurrency);
  mtbl.m.FieldDefs.Add(_dtsaldo  , ftDate);
  mtbl.m.IndexDefs.Add(_pk, _cdcliente, []);
  mtbl.m.IndexName := _pk;
  mtbl.m.CreateDataSet;
end;

procedure TReport.gerar;
var
  i : Integer;
begin
  c := TClasseQuery.Create(makesql);
  try
    criar_fields;
    while not c.q.Eof do
    begin
      mtbl.m.Insert;
      mtbl.m.Fieldbyname(_dtsaldo).AsDateTime := dti;
      for i := 0 to c.q.FieldCount - 1 do
      begin
        mtbl.m.FieldByName(c.q.Fields[i].FieldName).AsVariant := c.q.Fields[i].AsVariant;
      end;
      mtbl.m.Post;
      c.q.Next;
    end;
  finally
    FreeAndNil(c);
  end;
end;

function TReport.makesql: string;
begin
  Result := 'select * from ('+
            'select h.cdcliente'+
            ',c.rzsocial'+
            ',(select first 1 vlsaldo '+
              'from hadntcliente '+
              'where cdempresa=h.cdempresa and cdcliente=h.cdcliente and dtadntcliente<='+getdtbanco(dti)+' '+
              'order by dtadntcliente desc) vlsaldo '+
            'from hadntcliente h '+
            'left join cliente c on c.cdcliente=h.cdcliente and h.cdempresa=c.cdempresa '+
            'where h.cdempresa='+empresa.cdempresa.ToString+' '+
            'and (select first 1 vlsaldo '+
                 'from hadntcliente '+
                 'where cdempresa=h.cdempresa and cdcliente=h.cdcliente and dtadntcliente<='+getdtbanco(dti)+' '+
                 'order by dtadntcliente desc)>0 '+
            ') '+
            'group by cdcliente,rzsocial,vlsaldo';
end;

end.

