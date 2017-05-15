unit uimp_ordproducaopesagem;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classequery, classeconta, classeretornasql, classeempresa, classeAplicacao;

procedure imp_ordproducao_pesagem(mtbl: TDataClient; sql:string);

implementation

Type TReport = class
  private
    recno: Integer;
    cdquebra: Integer;
    nuquebra: Integer;
    cdordproducao: Integer;
    cdordproducao1: Integer;
    cdordproducao2: Integer;
    cdordproducao3: Integer;
    cdordproducao4: Integer;
    qtitem : Double;
    mtbl: TDataClient;
    mtblg: TDataClient;
    q : TClasseQuery;
    Sql : string;
    procedure criar_fields(m: TDataClient);
    procedure inserir_registro(m: TDataClient; qtitem:string);
    procedure Inicializar;
    procedure atualizar_codigo_ordproducao;
    procedure adicionar_peso_abaixa_de_1_kilo;
  public
    constructor create(mtbl_: TDataClient; sql_:string);
    destructor  destroy;override;
    procedure   gerar;
  end;

procedure imp_ordproducao_pesagem(mtbl: TDataClient; sql:string);
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
  q              := TClasseQuery.Create(Sql);
  frmprogressbar := tfrmprogressbar.Create(nil);
  mtblg := TDataClient.create;
end;

procedure TReport.criar_fields(m: TDataClient);
begin
  m.m.FieldDefs.Clear;
  m.m.FieldDefs.Add(_cdordproducao+_1 , ftinteger);
  m.m.FieldDefs.Add(_cdordproducao+_2 , ftinteger);
  m.m.FieldDefs.Add(_cdordproducao+_3 , ftinteger);
  m.m.FieldDefs.Add(_cdordproducao+_4 , ftinteger);
  m.m.FieldDefs.Add(_NUGRUPOLINHA     , ftinteger);
  m.m.fieldDefs.add(_dtprventrega, ftDate);
  m.m.FieldDefs.Add(_cdgrupolinha     , ftinteger);
  m.m.FieldDefs.Add(_nmformulacao     , ftString, 100);
  m.m.FieldDefs.Add(_nmproduto        , ftString, 100);
  m.m.FieldDefs.Add(_nurevisao        , ftString, 100);
  m.m.FieldDefs.Add(_nmregiaoaplicacao, ftString, 100);
  m.m.FieldDefs.Add(_cddigitado       , ftString, 30);
  m.m.FieldDefs.Add(_cddigitado+_mp   , ftString, 30);
  m.m.FieldDefs.Add(_qtitem           , ftString, 30);

  m.m.CreateDataSet;

  with m.m.Indexes.Add do
  begin
    Name   := _pk;
    Fields := _cdgrupolinha;
    Active := True;
  end;
  m.m.IndexesActive := True;
  m.m.IndexName     := _pk;
end;

procedure TReport.Inicializar;
begin
  nuquebra       := 1;
  recno          := 0;
  cdordproducao1 := 0;
  cdordproducao2 := 0;
  cdordproducao3 := 0;
  cdordproducao4 := 0;
  qtitem         := 0;
end;

procedure TReport.atualizar_codigo_ordproducao;
begin
  while recno < q.q.fieldbyname(_nugrupolinha).AsInteger do
  begin
    inc(recno);
    mtbl.m.Append;
    mtbl.m.FieldByName(_NUGRUPOLINHA).AsInteger     := q.q.fieldbyname(_nugrupolinha).AsInteger;
    mtbl.m.FieldByName(_cdgrupolinha).asinteger     := cdquebra;
    mtbl.m.FieldByName(_nmformulacao).AsString      := q.q.fieldbyname(_nmformulacao).AsString;
    mtbl.m.FieldByName(_nmproduto).AsString         := q.q.fieldbyname(_nmproduto).AsString;
    mtbl.m.FieldByName(_dtprventrega).AsDateTime    := q.q.fieldbyname(_dtprventrega).AsDateTime;
    mtbl.m.FieldByName(_nurevisao).AsString         := q.q.fieldbyname(_nurevisao).AsString;
    mtbl.m.FieldByName(_nmregiaoaplicacao).AsString := q.q.fieldbyname(_nmregiaoaplicacao).AsString;
    mtbl.m.FieldByName(_cddigitado).AsString        := q.q.fieldbyname(_cddigitado).AsString;
    mtbl.m.Post;
  end;
  mtbl.m.Last;
  while mtbl.m.FieldByName(_cdgrupolinha).asinteger = cdquebra do
  begin
    mtbl.m.Edit;
    mtbl.m.FieldByName(_cdordproducao+_1).AsInteger := cdordproducao1;
    mtbl.m.FieldByName(_cdordproducao+_2).AsInteger := cdordproducao2;
    mtbl.m.FieldByName(_cdordproducao+_3).AsInteger := cdordproducao3;
    mtbl.m.FieldByName(_cdordproducao+_4).AsInteger := cdordproducao4;
    mtbl.m.Post;
    if mtbl.m.RecNo = 1 then
    begin
      Break;
    end;
    mtbl.m.Prior;
  end;
  mtbl.m.Last;
end;

procedure TReport.gerar;
begin
  criar_fields(mtbl);
  criar_fields(mtblg);
  frmprogressbar.Show;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  inicializar;
  cdquebra       := 1;
  cdordproducao  := q.q.fieldbyname(_cdordproducao).AsInteger;
  while not q.q.Eof do
  begin
    frmprogressbar.gau.Progress := q.q.RecNo;
    Application.ProcessMessages;
    if cdordproducao <> q.q.fieldbyname(_cdordproducao).AsInteger then
    begin
      inc(nuquebra);
      if nuquebra > 4 then
      begin
        atualizar_codigo_ordproducao;
        inicializar;
        Inc(cdquebra);
      end;
      cdordproducao := q.q.fieldbyname(_cdordproducao).AsInteger;
    end;

    if nuquebra = 1 then
    begin
      if q.q.fieldbyname(_qtitem).AsFloat >= 1 then
      begin
        qtitem := qtitem + q.q.fieldbyname(_qtitem).AsFloat;
        inserir_registro(mtbl, FormatFloat(__moedadec, qtitem));
      end
      else
      begin
        inserir_registro(mtblg, FormatFloat(__integer, q.q.fieldbyname(_qtitem).AsFloat * 1000)+' Gramas');
      end;
    end;

         if nuquebra = 1 then cdordproducao1 := cdordproducao
    else if nuquebra = 2 then cdordproducao2 := cdordproducao
    else if nuquebra = 3 then cdordproducao3 := cdordproducao
    else if nuquebra = 4 then cdordproducao4 := cdordproducao;

    q.q.Next;
  end;
  adicionar_peso_abaixa_de_1_kilo;
  atualizar_codigo_ordproducao;
end;

destructor TReport.destroy;
begin
  FreeAndNil(q);
  freeandnil(frmprogressbar);
  freeandnil(mtblg);
  inherited;
end;

procedure TReport.inserir_registro(m: TDataClient; qtitem: string);
begin
  inc(recno);
  m.m.Insert;
  m.m.FieldByName(_NUGRUPOLINHA).AsInteger     := q.q.fieldbyname(_nugrupolinha).AsInteger;
  m.m.FieldByName(_cdgrupolinha).asinteger     := cdquebra;
  m.m.FieldByName(_nmformulacao).AsString      := q.q.fieldbyname(_nmformulacao).AsString;
  m.m.FieldByName(_dtprventrega).AsDateTime    := q.q.fieldbyname(_dtprventrega).AsDateTime;
  m.m.FieldByName(_nmproduto).AsString         := q.q.fieldbyname(_nmproduto).AsString;
  m.m.FieldByName(_nurevisao).AsString         := q.q.fieldbyname(_nurevisao).AsString;
  m.m.FieldByName(_nmregiaoaplicacao).AsString := q.q.fieldbyname(_nmregiaoaplicacao).AsString;
  m.m.FieldByName(_cddigitado).AsString        := q.q.fieldbyname(_cddigitado).AsString;
  m.m.FieldByName(_cddigitado+_mp).AsString    := q.q.fieldbyname(_cddigitado+_mp).AsString;
  m.m.FieldByName(_qtitem).AsString            := qtitem;
  m.m.Post;
end;

procedure TReport.adicionar_peso_abaixa_de_1_kilo;
var
  i : integer;
begin
  mtblg.m.first;
  while not mtblg.m.eof do
  begin
    mtbl.m.insert;
    for i := 0 to mtblg.m.FieldCount - 1 do
    begin
      mtbl.m.fields[i].AsVariant := mtblg.m.fields[i].AsVariant;
    end;
    mtbl.m.post;
    mtblg.m.next;
  end;
end;

end.
