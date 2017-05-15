unit uimp_inventario_estoque;

interface

uses
  System.Actions, System.UITypes,
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  db,
  uRegistro, ustrings, uprogressbar, uconstantes, udatahora,
  classeconta, classeretornasql, classeempresa, classeAplicacao, classequery, classeproduto;

procedure imp_inventario_estoque(mtbl: TDataClient; sqlwhere, sqlwhere2: string);

implementation

Type TReport = class
  private
    q : TClasseQuery;
    mtbl: TDataClient;
    cdreport, situacao, sqlwhere, sqlwhere2 : string;
    recno : Integer;
    procedure criar_fields;
    procedure Exibir_gauge;
    procedure processar_gauge;
    procedure inserir_registro;
  public
    constructor create(mtbl_: TDataClient; sqlwhere_, sqlwhere2_: string);
    procedure   gerar;
  end;

procedure imp_inventario_estoque(mtbl: TDataClient; sqlwhere, sqlwhere2: string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, sqlwhere, sqlwhere2);
  try
    rpt.gerar;
  finally
    freeandnil(rpt.q);
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl_: TDataClient; sqlwhere_, sqlwhere2_: string);
var
  texto : TStrings;
begin
  texto := TStringList.Create;
  try
    texto.text := sqlwhere_;
    sqlwhere   := texto[0];
    situacao   := texto[1];
    cdreport   := texto[2];
  finally
    texto.Free;
  end;
  sqlwhere2    := sqlwhere2_;
  q := TClasseQuery.Create;
  mtbl         := mtbl_;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_cdproduto   , ftInteger);
  mtbl.m.FieldDefs.Add(_nmproduto   , ftString, 250);
  mtbl.m.FieldDefs.Add(_nuclfiscal  , ftString, 20);
  mtbl.m.FieldDefs.Add(_nmgrupo     , ftString, 100);
  mtbl.m.FieldDefs.Add(_qtestoque   , ftFloat);
  mtbl.m.FieldDefs.Add(_qtestmin    , ftFloat);
  mtbl.m.FieldDefs.Add(_nmunidade   , ftString, 100);
  mtbl.m.FieldDefs.Add(_vlcompra    , ftCurrency);
  mtbl.m.FieldDefs.Add(_vlcustomedio, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlsaldo     , ftCurrency);
  mtbl.m.FieldDefs.Add(_nunivel     , ftString, 100);
  mtbl.m.CreateDataSet;
end;

procedure TReport.Exibir_gauge;
begin
  frmprogressbar.Show;
  frmprogressbar.pnl.Caption := 'Lendo registros. Aguarde...';
  Application.ProcessMessages;
end;

procedure TReport.gerar;
begin
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    criar_fields;
    Exibir_gauge;
    inserir_registro;
  finally
    frmprogressbar.Free;
  end;
end;

procedure TReport.inserir_registro;
  function get_situacao(tabela:string):string;
  begin
    if situacao = 'Completo' then
    begin
      Exit;
    end;
    Result := ' and '+tabela+'.qtestoque';
         if situacao = 'Estoque'       then result := Result +'>0'
    else if situacao = 'Zerado'        then result := result + '=0'
    else if situacao = 'Negativo'      then result := result + '<0'
    else if situacao = 'Mínimo'        then result := result +'<=produto.qtestmin and produto.qtestmin>0';
  end;
  function makesql:string;
  var
    sql : TStrings;
  begin
    sql := TStringList.Create;
    try
      getsqlcommandText(UpperCase(NomedoCodigo(_report, cdreport, _ds+_relatorio)), sql);
      if sqlwhere2 = FormatDateTime(_mm_dd_yyyy, DtBanco) then
      begin
        Result := StringParametro(sql[0], sqlwhere+' '+get_situacao(_produto));
      end
      else
      begin
        MessageDlg('O custo médio deve estar atualizado para relatório de inventário de estoque retroativo.'#13'Em caso de dúvida recalcule o custo médio.', mtInformation, [mbOK], 0);
        result := StringParametro(sql[1], quotedstr(sqlwhere2), UpperCase(':'+_where+_2));
        result := StringParametro(result, sqlwhere+' '+get_situacao(_hcustomedio));
      end;
    finally
      sql.Free;
    end;
  end;
begin
  q.q.Close;
  q.q.SQL.Text := makesql;
  q.q.Open;
  recno := 0;
  frmprogressbar.gau.MaxValue := 100;
  while not q.q.Eof do
  begin
    processar_gauge;
    mtbl.m.Append;
    mtbl.m.FieldByName(_cdproduto).AsInteger       := q.q.fieldbyname(_cdproduto).AsInteger;
    mtbl.m.FieldByName(_nmproduto).AsString        := q.q.fieldbyname(_nmproduto).AsString;
    mtbl.m.FieldByName(_nuclfiscal).AsString       := q.q.fieldbyname(_nuclfiscal).AsString;
    mtbl.m.FieldByName(_nmgrupo).AsString          := q.q.fieldbyname(_nmgrupo).AsString;
    mtbl.m.FieldByName(_qtestoque).AsFloat         := q.q.fieldbyname(_qtestoque).AsFloat;
    mtbl.m.FieldByName(_qtestmin).AsFloat          := q.q.fieldbyname(_qtestmin).AsFloat;
    mtbl.m.FieldByName(_nmunidade).AsString        := q.q.fieldbyname(_nmunidade).AsString;
    mtbl.m.FieldByName(_vlsaldo).AsCurrency        := q.q.fieldbyname(_vlcustomedio).AsCurrency * q.q.fieldbyname(_qtestoque).AsFloat;
    mtbl.m.FieldByName(_vlcusto+_medio).AsCurrency := q.q.fieldbyname(_vlcustomedio).AsCurrency;
    mtbl.m.FieldByName(_vlcompra).AsCurrency       := tproduto.getVlUltimaCompra(q.q.fieldbyname(_cdproduto).AsInteger, sqlwhere2);
    mtbl.m.FieldByName(_nunivel).AsString          := q.q.fieldbyname(_nunivel).AsString;
    mtbl.m.Insert;
    q.q.Next;
  end;
end;

procedure TReport.processar_gauge;
begin
  Inc(recno);
  frmprogressbar.pnl.Caption  := 'Processando... Registro '+inttostr(q.q.RecNo);
  frmprogressbar.gau.Progress := recno;
  application.ProcessMessages;
  if recno = 100 then
  begin
    recno := 0;
  end;
end;


end.
