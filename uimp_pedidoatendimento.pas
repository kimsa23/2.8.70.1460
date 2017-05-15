unit uimp_pedidoatendimento;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeconta, classeretornasql, classeempresa, classeAplicacao, classequery;

procedure imp_pedidoatendimento(mtbl: TDataClient; sql:string);

implementation

Type TReport = class
  private
    mtbl: TDataClient;
    q : TClasseQuery;
    qtc, qta, qtd, qtf, qtn, qts : integer;
    data_banco : TDate;
    Sql : string;
    procedure criar_fields;
    procedure inserir_registro;
  public
    constructor create(mtbl_: TDataClient; sql_:string);
    procedure   gerar;
  end;

procedure imp_pedidoatendimento(mtbl: TDataClient; sql:string);
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
  data_banco := DtBanco;
  qtc := 0;
  qta := 0;
  qts := 0;
  qtd := 0;
  qtf := 0;
  qtn := 0;
  mtbl := mtbl_;
  sql  :=  sql_;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Add('pdentrof'  , ftcurrency);
  mtbl.m.FieldDefs.Add('qdentrof'  , ftcurrency);
  mtbl.m.FieldDefs.Add('pforaf'    , ftcurrency);
  mtbl.m.FieldDefs.Add('qforaf'    , ftcurrency);
  mtbl.m.FieldDefs.Add('pnormal'   , ftcurrency);
  mtbl.m.FieldDefs.Add('qnormal'   , ftcurrency);
  mtbl.m.FieldDefs.Add('patrasada' , ftcurrency);
  mtbl.m.FieldDefs.Add('qatrasada' , ftcurrency);
  mtbl.m.FieldDefs.Add('pNATENDIDA', ftcurrency);
  mtbl.m.FieldDefs.Add('qNATENDIDA', ftcurrency);
  mtbl.m.FieldDefs.Add('qcancel'   , ftcurrency);
  mtbl.m.FieldDefs.Add('qtotal'    , ftcurrency);
  mtbl.m.CreateDataSet;
end;

procedure TReport.gerar;
begin
  q := TclasseQuery.Create(sql);
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    criar_fields;
    frmprogressbar.Show;
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.Eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;

      if q.q.fieldbyname(_porcentagem).Ascurrency >= 85.00 then
      begin
        if q.q.fieldbyname(_nudias).Asinteger < 15 + 1 then inc(qtd)
                                                       else inc(qtf);
      end
      else if q.q.fieldbyname(_porcentagem).Ascurrency > 0.00 then inc(qtf)
      else if q.q.fieldbyname(_cdstpedido).Asinteger = 1 then
      begin
        if data_banco - q.q.fieldbyname(_dtemissao).Asdatetime > 15 then inc(qts)
                                                                    else inc(qtn);
      end
      else if q.q.fieldbyname(_cdstpedido).Asinteger = 4 then inc(qtc)
                                                         else inc(qta);
      q.q.Next;
    end;
    inserir_registro;
  finally
    freeandnil(q);
    freeandnil(frmprogressbar);
  end;
end;

procedure TReport.inserir_registro;
begin
  mtbl.m.Append;
  mtbl.m.fieldbyname('qTOTAL').Ascurrency     := qtd+qtf+qtn+qts+qta;
  mtbl.m.fieldbyname('qDENTROF').Ascurrency   := qtd;
  mtbl.m.Fieldbyname('qFORAF').Ascurrency     := qtf;
  mtbl.m.Fieldbyname('qNORMAL').Ascurrency    := qtn;
  mtbl.m.Fieldbyname('qATRASADA').Ascurrency  := qts;
  mtbl.m.Fieldbyname('qNATENDIDA').Ascurrency := qta;
  mtbl.m.Fieldbyname('qCANCEL').Ascurrency    := qtc;
  if mtbl.m.fieldbyname('qTOTAL').Ascurrency > 0 then
  begin
    mtbl.m.fieldbyname('pdentrof').Ascurrency   := mtbl.m.fieldbyname('qDENTROF').Ascurrency   / mtbl.m.fieldbyname('qTOTAL').Ascurrency * 100;
    mtbl.m.Fieldbyname('pFORAF').Ascurrency     := mtbl.m.fieldbyname('qforaf').Ascurrency     / mtbl.m.fieldbyname('qTOTAL').Ascurrency * 100;
    mtbl.m.Fieldbyname('pNORMAL').Ascurrency    := mtbl.m.fieldbyname('qnormal').Ascurrency    / mtbl.m.fieldbyname('qTOTAL').Ascurrency * 100;
    mtbl.m.Fieldbyname('pATRASADA').Ascurrency  := mtbl.m.fieldbyname('qatrasada').Ascurrency  / mtbl.m.fieldbyname('qTOTAL').Ascurrency * 100;
    mtbl.m.Fieldbyname('pNATENDIDA').Ascurrency := mtbl.m.fieldbyname('qnatendida').Ascurrency / mtbl.m.fieldbyname('qTOTAL').Ascurrency * 100;
  end;
  mtbl.m.Post;
end;

end.
