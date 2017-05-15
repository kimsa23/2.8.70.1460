unit uimp_gratico_tpparada;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeconta, classeretornasql, classeempresa, classeAplicacao, classequery;

procedure imp_grafico_barra_tpparada(mtbl: TDataClient; sql, tbl:string);

implementation

Type TReport = class
  private
    mtbl: TDataClient;
    q : TClasseQuery;
    tbl, Sql: string;
    procedure criar_fields;
  public
    constructor create(mtbl_: TDataClient; sql_, tbl_:string);
    procedure   gerar;
  end;

procedure imp_grafico_barra_tpparada(mtbl: TDataClient; sql, tbl:string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, sql, tbl);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl_: TDataClient; sql_, tbl_:string);
begin
  mtbl := mtbl_;
  sql  := sql_;
  tbl  := tbl_;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_nm+tbl, ftString, 100);
  mtbl.m.FieldDefs.Add(_hrduracao, ftTime);
  mtbl.m.CreateDataSet;
  with mtbl.m.Indexes.Add do
  begin
    Name   := _pk;
    Fields := _nm+tbl;
    Active := True;
  end;
  mtbl.m.IndexesActive := True;
  mtbl.m.IndexName     := _pk;
end;

procedure TReport.gerar;
begin
  q := TClasseQuery.Create(sql);
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    criar_fields;
    frmprogressbar.Show;
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.Eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      if not mtbl.m.Locate(_nm+tbl, q.q.fieldbyname(_nm+tbl).asstring, []) then
      begin
        mtbl.m.Insert;
        mtbl.m.FieldByName(_nm+tbl).asstring := q.q.fieldbyname(_nm+tbl).AsString;
      end
      else
      begin
        mtbl.m.Edit;
      end;
      mtbl.m.FieldByName(_hrduracao).AsDateTime := mtbl.m.FieldByName(_hrduracao).AsDateTime + q.q.fieldbyname(_hrduracao).AsDateTime;
      mtbl.m.Post;
      q.q.Next;
    end;
  finally
    freeandnil(frmprogressbar);
    freeandnil(q);
  end;
end;

end.
