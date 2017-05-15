unit uimp_adntcliente_saldo_diario;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeempresa, classeAplicacao, classequery;

procedure imp_adntcliente_saldo_diario(mtbl: TDataClient; dti, dtf: Tdate);

implementation

Type TReport = class
  private
    dti_, dtf_ : TDate;
    mtbl: TDataClient;
    c : TClasseQuery;
    procedure criar_fields;
    function  makesql(data:Tdate):string;
  public
    constructor create(mtbl2: TDataClient; dti, dtf:Tdate);
    procedure   gerar;
  end;

procedure imp_adntcliente_saldo_diario(mtbl: TDataClient; dti, dtf: Tdate);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, dti, dtf);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient; dti, dtf:Tdate);
begin
  mtbl := mtbl2;
  dti_ := dti;
  dtf_ := dtf;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_vlsaldo, ftCurrency);
  mtbl.m.FieldDefs.Add(_dtsaldo, ftDate);
  mtbl.m.FieldDefs.Add(_dtf    , ftDate);
  mtbl.m.FieldDefs.Add(_dti    , ftDate);
  mtbl.m.IndexDefs.Add(_pk, _dtsaldo, []);
  mtbl.m.IndexName := _pk;
  mtbl.m.CreateDataSet;
end;

procedure TReport.gerar;
var
  vlsaldo, vlsaldo_ : Currency;
begin
  c := TClasseQuery.Create;
  try
    vlsaldo  := 0;
    vlsaldo_ := vlsaldo;
    criar_fields;
    while dti_ <= dtf_ do
    begin
      c.q.Close;
      c.q.sql.text := makesql(dti_);
      c.q.Open;
      while not c.q.Eof do
      begin
        vlsaldo := vlsaldo + c.q.fieldbyname(_vlsaldo).AsCurrency;
        c.q.Next;
      end;
      if vlsaldo <> vlsaldo_ then
      begin
        mtbl.m.Insert;
        mtbl.m.Fieldbyname(_dti).AsDateTime     := dti_;
        mtbl.m.Fieldbyname(_dtf).AsDateTime     := dtf_;
        mtbl.m.Fieldbyname(_dtsaldo).AsDateTime := dti_;
        mtbl.m.Fieldbyname(_vlsaldo).AsCurrency := vlsaldo;
        mtbl.m.Post;
        vlsaldo_ := vlsaldo;
      end;
      dti_ := dti_ + 1;
    end;
  finally
    FreeAndNil(c);
  end;
end;

function TReport.makesql(data:Tdate): string;
begin
  result := 'select vlsaldo '+
            'from (select (select first 1 h.vlsaldo '+
                          'from hadntcliente h '+
                          'where h.cdempresa=h1.cdempresa '+
                          'and h.cdcliente=h1.cdcliente '+
                          'and h.dtadntcliente='+getdtbanco(data)+') vlsaldo '+
                  'from hadntcliente h1 '+
                  'where h1.dtadntcliente='+getdtbanco(data)+') '+
            'group by vlsaldo';
end;

end.

