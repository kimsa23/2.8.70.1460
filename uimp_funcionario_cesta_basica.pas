unit uimp_funcionario_cesta_basica;

interface

uses Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classefuncionario, classeconta, classeretornasql, classeempresa, classeAplicacao, classequery;

procedure imp_lista_cesta_basica(mtbl, mtbl2: TDataClient; dti, dtf: Tdate; sql:string);

implementation

Type TReport = class
  private
    sql:string;
    dti, dtf: TDate;
    mtbl, mtbl2: TDataClient;
    q : TClasseQuery;
    funcionario : TFuncionario;
    procedure criar_fields;
  public
    constructor create(mtbl_, mtbl2_: TDataClient; dti_, dtf_: TDate; sql_:string);
    procedure   gerar;
  end;

procedure imp_lista_cesta_basica(mtbl, mtbl2: TDataClient; dti, dtf: Tdate; sql:string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, mtbl2, dti, dtf, sql);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl_, mtbl2_: TDataClient; dti_, dtf_: Tdate; sql_:string);
begin
  mtbl  := mtbl_;
  mtbl2 := mtbl2_;
  dti   := dti_;
  dtf   := dtf_;
  sql   := sql_;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_cdfuncionario, ftinteger);
  mtbl.m.FieldDefs.Add(_nmfuncionario, ftString, 100);
  mtbl.m.FieldDefs.Add(_dsendereco   , ftString, 200);
  mtbl.m.CreateDataSet;

  with mtbl.m.Indexes.Add do
  begin
    Name   := _pk;
    Fields := _nmfuncionario;
    Active := True;
  end;
  mtbl.m.IndexesActive := True;
  mtbl.m.IndexName := _pk;

  mtbl2.m.FieldDefs.Clear;
  mtbl2.m.FieldDefs.Add(_cdfuncionario, ftinteger);
  mtbl2.m.FieldDefs.Add(_nmfuncionario, ftString, 100);
  mtbl2.m.FieldDefs.Add(_nmtpabono    , ftString, 100);
  mtbl2.m.CreateDataSet;

  with mtbl2.m.Indexes.Add do
  begin
    Name   := _pk;
    Fields := _nmfuncionario;
    Active := True;
  end;
  mtbl2.m.IndexesActive := True;
  mtbl2.m.IndexName     := _pk;
end;

procedure TReport.gerar;
var
  nmtpabono: string;
begin
  q := TClasseQuery.create(sql);
  funcionario    := TFuncionario.create;
  frmprogressbar := tfrmprogressbar.Create(nil);
  try
    criar_fields;
    frmprogressbar.Show;
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.Eof do
    begin
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      funcionario.cdfuncionario := q.q.FieldByName(_cdfuncionario).AsInteger;
      nmtpabono := funcionario.ObterRestricao(dti, dtf);
      if nmtpabono <> '' then
      begin
        mtbl2.m.Insert;
        mtbl2.m.FieldByName(_cdfuncionario).asstring := q.q.fieldbyname(_cdfuncionario).AsString;
        mtbl2.m.FieldByName(_nmfuncionario).AsString := q.q.fieldbyname(_nmfuncionario).AsString;
        mtbl2.m.FieldByName(_nmtpabono).AsString     := nmtpabono;
        mtbl2.m.Post;
      end
      else
      begin
        mtbl.m.Insert;
        mtbl.m.FieldByName(_cdfuncionario).asstring := q.q.fieldbyname(_cdfuncionario).AsString;
        mtbl.m.FieldByName(_nmfuncionario).AsString := q.q.fieldbyname(_nmfuncionario).AsString;
        if q.q.FieldByName(_dsendereco).AsString <> '' then
        begin
          mtbl.m.FieldByName(_dsendereco).AsString := q.q.fieldbyname(_dsendereco).AsString;
        end;
        if q.q.FieldByName(_dsnumero).AsString <> '' then
        begin
          if mtbl.m.FieldByName(_dsendereco).AsString <> '' then
          begin
            mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + ', ';
          end;
          mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + q.q.fieldbyname(_dsnumero).AsString;
        end;
        if q.q.FieldByName(_dscomplemento).AsString <> '' then
        begin
          if mtbl.m.FieldByName(_dsendereco).AsString <> '' then
          begin
            mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + ', ';
          end;
          mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + q.q.fieldbyname(_dscomplemento).AsString;
        end;
        if q.q.FieldByName(_nmbairro).AsString <> '' then
        begin
          if mtbl.m.FieldByName(_dsendereco).AsString <> '' then
          begin
            mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + ', ';
          end;
          mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + q.q.fieldbyname(_nmbairro).AsString;
        end;
        if q.q.FieldByName(_nmmunicipio).AsString <> '' then
        begin
          if mtbl.m.FieldByName(_dsendereco).AsString <> '' then
          begin
            mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + ', ';
          end;
          mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + q.q.fieldbyname(_nmmunicipio).AsString;
        end;
        if q.q.FieldByName(_sguf).AsString <> '' then
        begin
          if mtbl.m.FieldByName(_dsendereco).AsString <> '' then
          begin
            mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + ', ';
          end;
          mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + q.q.fieldbyname(_sguf).AsString;
        end;
        if q.q.FieldByName(_nucep).AsString <> '' then
        begin
          if mtbl.m.FieldByName(_dsendereco).AsString <> '' then
          begin
            mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + ', ';
          end;
          mtbl.m.FieldByName(_dsendereco).AsString := mtbl.m.FieldByName(_dsendereco).AsString + q.q.fieldbyname(_nucep).AsString;
        end;
      end;
      q.q.next;
    end;
  finally
    freeandnil(q);
    freeandnil(funcionario);
    freeandnil(frmprogressbar);
  end;
end;

end.
