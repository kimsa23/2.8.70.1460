unit uimpmapafretemensal;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeconta, classeretornasql, classeempresa, classeAplicacao, classequery;

procedure imp_mapafretemensal(mtbl: TDataClient; sql:string);

implementation

Type TReport = class
  private
    mtbl: TDataClient;
    c : TClasseQuery;
    Sql, nmtransportadora, nucpf : string;
    mes, nudependentes : integer;
    vlfrete: array [1..13] of currency;
    procedure criar_fields;
    procedure inserir_registro;
    procedure ZerarVetor;
  public
    constructor create(mtbl_: TDataClient; sql_:string);
    procedure   gerar;
  end;

procedure imp_mapafretemensal(mtbl: TDataClient; sql:string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, sql);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl_: TDataClient; sql_:string);
begin
  mtbl := mtbl_;
  sql  :=  sql_;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_nmtransportadora, ftString, 100);
  mtbl.m.FieldDefs.Add(_nucpf           , ftString, 20);
  mtbl.m.FieldDefs.Add(_nudependentes   , ftinteger);
  mtbl.m.FieldDefs.Add(_vl+_janeiro       , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_fevereiro     , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_marco         , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_abril         , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_maio          , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_junho         , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_julho         , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_agosto        , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_setembro      , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_outubro       , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_novembro      , ftCurrency);
  mtbl.m.FieldDefs.Add(_vl+_dezembro      , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal           , ftCurrency);

  mtbl.m.CreateDataSet;

  with mtbl.m.Indexes.Add do
  begin
    Name   := _pk;
    Fields := _nmtransportadora;
    Active := True;
  end;
  mtbl.m.IndexesActive := True;
  mtbl.m.IndexName     := _pk;
end;

procedure TReport.gerar;
begin
  zerarvetor;
  nudependentes := 0;
  c := TClasseQuery.Create;
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    criar_fields;
    frmprogressbar.Show;
    c.q.sql.text := sql;
    c.q.Open;
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    while not c.q.Eof do
    begin
      frmprogressbar.gau.Progress := c.q.RecNo;
      Application.ProcessMessages;
      if nmtransportadora <> c.q.fieldbyname(_nmtransportadora).AsString then
      begin
        if nmtransportadora <> '' then
        begin
          inserir_registro;
        end;
        nmtransportadora := c.q.fieldbyname(_nmtransportadora).AsString;
        nucpf            := c.q.fieldbyname(_nucpf).AsString;
        nudependentes    := c.q.fieldbyname(_nu+_dependente+_s).AsInteger;
        zerarvetor;
      end;
      mes          := strtoint(FormatDateTime(_mm, c.q.fieldbyname(_dtemissao).Asdatetime));
      vlfrete[mes] := vlfrete[mes] + c.q.fieldbyname(_vlfrete).AsCurrency;
      c.q.Next;
    end;
    inserir_registro;
  finally
    freeandnil(c);
    freeandnil(frmprogressbar);
  end;
end;

procedure TReport.inserir_registro;
begin
  mtbl.m.Append;
  mtbl.m.Fieldbyname(_nmtransportadora).Asstring := nmtransportadora;
  mtbl.m.fieldbyname(_nucpf).Asstring            := nucpf;
  mtbl.m.fieldbyname(_nudependentes).Asinteger   := nudependentes;
  mtbl.m.Fieldbyname(_vl+_janeiro).AsCurrency    := vlfrete[1];
  mtbl.m.Fieldbyname(_vl+_fevereiro).AsCurrency  := vlfrete[2];
  mtbl.m.Fieldbyname(_vl+_marco).AsCurrency      := vlfrete[3];
  mtbl.m.Fieldbyname(_vl+_abril).AsCurrency      := vlfrete[4];
  mtbl.m.Fieldbyname(_vl+_maio).AsCurrency       := vlfrete[5];
  mtbl.m.Fieldbyname(_vl+_junho).AsCurrency      := vlfrete[6];
  mtbl.m.Fieldbyname(_vl+_julho).AsCurrency      := vlfrete[7];
  mtbl.m.Fieldbyname(_vl+_agosto).AsCurrency     := vlfrete[8];
  mtbl.m.Fieldbyname(_vl+_setembro).AsCurrency   := vlfrete[9];
  mtbl.m.Fieldbyname(_vl+_outubro).AsCurrency    := vlfrete[10];
  mtbl.m.Fieldbyname(_vl+_novembro).AsCurrency   := vlfrete[11];
  mtbl.m.Fieldbyname(_vl+_dezembro).AsCurrency   := vlfrete[12];
  mtbl.m.Fieldbyname(_vltotal).AsCurrency        := vlfrete[1] + vlfrete[2] + vlfrete[3] + vlfrete[4] + vlfrete[5] + vlfrete[6] + vlfrete[7] + vlfrete[8] + vlfrete[9] + vlfrete[10] + vlfrete[11] + vlfrete[12];
  mtbl.m.Post;
end;

procedure TReport.ZerarVetor;
var
  i : integer;
begin
  for i := 1 to 13 do
  begin
    vlfrete[i] := 0;
  end;
end;

end.
