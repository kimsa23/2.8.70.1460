unit uimp_pedidomaterial;

interface

uses
  Forms, Classes, Dialogs, SysUtils, Variants, Controls,
  DB,
  umontarsql, ustrings, uprogressbar, uconstantes, udatahora,
  classeretornasql, classeempresa, classeAplicacao, classequery;

procedure imp_pedidomaterial(mtbl: TDataClient; sqlwhere, sqlwhere2: string);

implementation

uses Math;

Type TReport = class
  private
    c,ci :TClasseQuery;
    mtbl: TDataClient;
    sqlwhere, sqlwhere2: string;
    procedure criar_fields;
    procedure Exibir_gauge;
    procedure inserir_registro;
    procedure set_ultima_compra_produto;
    procedure inserir_fornecedor;
    procedure processar_gauge;
    procedure inserir_vazios(nuregistro: Integer);
  public
    constructor create(mtbl2: TDataClient; sqlwhere_, sqlwhere2_:string);
    procedure   gerar;
  end;

procedure imp_pedidomaterial(mtbl: TDataClient; sqlwhere, sqlwhere2: string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, sqlwhere, sqlwhere2);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient; sqlwhere_, sqlwhere2_:string);
begin
  mtbl      := mtbl2;
  sqlwhere  := sqlwhere_;
  sqlwhere2 := sqlwhere2_;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_nmfuncionario        , ftString, 100);
  mtbl.m.FieldDefs.Add(_nm+_finalidade+_ordcompra, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmcntcusto, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmtpfornecedor, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmunidade, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmtppedidomaterial, ftString, 100);
  mtbl.m.FieldDefs.Add(_ds+_aplicacao, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmproduto, ftString, 250);
  mtbl.m.FieldDefs.Add(_dsformula, ftString, 50);
  mtbl.m.FieldDefs.Add(_cddigitado, ftString, 30);

  mtbl.m.FieldDefs.Add(_nmfornecedor+_1, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmfornecedor+_2, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmfornecedor+_3, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmfornecedor+_4, ftString, 100);

  mtbl.m.FieldDefs.Add(_nmcondpagto+_1, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmcondpagto+_2, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmcondpagto+_3, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmcondpagto+_4, ftString, 100);

  mtbl.m.FieldDefs.Add(_dtprventrega+_1, ftString, 100);
  mtbl.m.FieldDefs.Add(_dtprventrega+_2, ftString, 100);
  mtbl.m.FieldDefs.Add(_dtprventrega+_3, ftString, 100);
  mtbl.m.FieldDefs.Add(_dtprventrega+_4, ftString, 100);

  mtbl.m.FieldDefs.Add(_nmcontato+_1, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmcontato+_2, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmcontato+_3, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmcontato+_4, ftString, 100);

  mtbl.m.FieldDefs.Add(_nufone1+_1, ftString, 14);
  mtbl.m.FieldDefs.Add(_nufone1+_2, ftString, 14);
  mtbl.m.FieldDefs.Add(_nufone1+_3, ftString, 14);
  mtbl.m.FieldDefs.Add(_nufone1+_4, ftString, 14);
  mtbl.m.FieldDefs.Add(_qtsolicitada, ftFloat);

  mtbl.m.FieldDefs.Add(_cdpedidomaterial, ftInteger);
  mtbl.m.FieldDefs.Add(_cditpedidomaterial, ftInteger);
  mtbl.m.FieldDefs.Add(_nuitem, ftInteger);

  mtbl.m.FieldDefs.Add(_vlunitario+_1, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlunitario+_2, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlunitario+_3, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlunitario+_4, ftCurrency);

  mtbl.m.FieldDefs.Add(_vltotal+_1, ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_2, ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_3, ftCurrency);

  mtbl.m.FieldDefs.Add(_vlfinal+_1, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlfinal+_2, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlfinal+_3, ftCurrency);

  mtbl.m.FieldDefs.Add(_vlreal+_1, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlreal+_2, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlreal+_3, ftCurrency);

  mtbl.m.FieldDefs.Add(_vlipi+_1, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlipi+_2, ftCurrency);
  mtbl.m.FieldDefs.Add(_vlipi+_3, ftCurrency);

  mtbl.m.FieldDefs.Add(_dtemissao, ftDate);
  mtbl.m.FieldDefs.Add(_dtemprego, ftDate);
  mtbl.m.FieldDefs.Add(_dtcompra+_4, ftDate);

  mtbl.m.FieldDefs.Add(_LOGOMARCA, ftBlob);
  mtbl.m.FieldDefs.Add(_dsobservacao+'_', ftBlob);

  mtbl.m.IndexDefs.Add(_pk, _cditpedidomaterial, [ixPrimary]);
  mtbl.m.IndexName := _pk;
  mtbl.m.CreateDataSet;
end;

procedure TReport.Exibir_gauge;
begin
  frmprogressbar.Show;
  frmprogressbar.pnl.Caption := 'Lendo registros. Aguarde...';
  Application.ProcessMessages;
end;

procedure TReport.gerar;
  function makesql: string;
  begin
    result := StringParametro(sqlwhere2, sqlwhere);
  end;
var
  i, nulinhas : Integer;
begin
  c  := TClasseQuery.Create;
  ci := TClasseQuery.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    criar_fields;
    Exibir_gauge;
    c.q.sql.text    := makesql;
    c.q.Open;
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    nulinhas                    := c.q.fieldbyname(_nulinhas).AsInteger;
    while not c.q.Eof do
    begin
      processar_gauge;
      mtbl.m.append;
      inserir_registro;
      inserir_fornecedor;
      mtbl.m.FieldByName(_dtcompra+_4).Clear;
      set_ultima_compra_produto;
      if c.q.FieldByName(_cdordproducao).AsString <> '' then
      begin
        mtbl.m.FieldByName(_nmproduto).AsString := c.q.fieldbyname(_nmproduto+_1).AsString;
      end;
      mtbl.m.FieldByName(_nuitem).AsInteger := c.q.RecNo;
      mtbl.m.Post;
      Dec(nulinhas);
      i := Floor(Length(mtbl.m.FieldByName(_nmproduto).AsString) / c.q.fieldbyname(_nu+_letra+_nmproduto).AsInteger);
      if i > 1 then
      begin
        if i * c.q.fieldbyname(_nu+_letra+_nmproduto).AsInteger = Length(mtbl.m.FieldByName(_nmproduto).AsString) then
        begin
          dec(i);
        end;
        nulinhas := nulinhas - i;
      end;
      c.q.Next;
    end;
    inserir_vazios(nulinhas);
  finally
    FreeAndNil(c);
    FreeAndNil(ci);
    FreeAndNil(frmprogressbar);
  end;
end;

procedure TReport.inserir_vazios(nuregistro: Integer);
var
  num, rec_no, i, x: Integer;
begin
  mtbl.m.Last;
  rec_no := mtbl.m.fieldbyname(_cditpedidomaterial).AsInteger;;
  num    := mtbl.m.RecordCount;
  for i := 1 to nuregistro do
  begin
    mtbl.m.Append;
    for x := 0 to mtbl.m.FieldCount - 1 do
    begin
      if Copy(mtbl.m.Fields[x].FieldName, length(mtbl.m.Fields[x].FieldName), 1) = '_' then
      begin
        mtbl.m.Fields[x].AsVariant := c.q.Fieldbyname(mtbl.m.Fields[x].FieldName).AsVariant;
      end;
    end;
    Inc(rec_no);
    Inc(num);
    mtbl.m.FieldByName(_cditpedidomaterial).AsInteger := rec_no;
    mtbl.m.FieldByName(_nuitem).AsInteger             := num;
    mtbl.m.Post;
  end;
  mtbl.m.First;
end;

procedure TReport.inserir_registro;
var
  i, x : Integer;
begin
  for i := 0 to mtbl.m.Fields.Count - 1 do
  begin
    for x := 0 to c.q.Fields.Count - 1 do
    begin
      if UpperCase(mtbl.m.Fields[i].FieldName) = c.q.Fields[x].FieldName then
      begin
        mtbl.m.Fields[i].AsVariant := c.q.Fields[x].AsVariant;
      end;
    end;
  end;
end;

procedure TReport.set_ultima_compra_produto;
var
  cdentrada : string;
  s2 : TClasseQuery;
begin
  cdentrada := RetornaSQLString('select max(cdentrada) from itentrada where cdempresa='+empresa.cdempresa.ToString+' and cdproduto='+c.q.fieldbyname(_cdproduto).AsString);
  if cdentrada = '' then
  begin
    exit;
  end;
  s2 := TClasseQuery.Create;
  try
    s2.q.sql.text   := 'select i.vlunitario,e.dtemissao,f.nmfornecedor,f.nufone1,f.nmcontato '+
                     'from entrada e '+
                     'left join fornecedor f on f.cdfornecedor=e.cdfornecedor and e.cdempresa=f.cdempresa '+
                     'left join itentrada i on i.cdentrada=e.cdentrada and i.cdempresa=e.cdempresa '+
                     'where e.cdempresa='+empresa.cdempresa.ToString+' and i.cdproduto='+c.q.fieldbyname(_cdproduto).AsString+' and i.cdentrada='+cdentrada;
    s2.q.Open;
    mtbl.m.fieldbyname(_vlunitario+_4).AsCurrency := s2.q.fieldbyname(_vlunitario).AsCurrency;
    mtbl.m.FieldByName(_dtcompra+_4).AsDateTime   := s2.q.fieldbyname(_dtemissao).AsDateTime;
    mtbl.m.FieldByName(_nmfornecedor+_4).AsString := s2.q.fieldbyname(_nmfornecedor).AsString;
    mtbl.m.FieldByName(_nmcontato+_4).AsString    := s2.q.fieldbyname(_nmcontato).AsString;
    mtbl.m.FieldByName(_nufone1+_4).AsString      := s2.q.fieldbyname(_nufone1).AsString;
  finally
    freeandnil(s2);
  end;
end;

procedure TReport.inserir_fornecedor;
  function makesql:string;
  begin
    result := 'select f.nmfornecedor'+
                    ',f.nmcontato'+
                    ',f.nufone1'+
                    ',i.vlunitario'+
                    ',i.vlipi'+
                    ',I.VLFINAL'+
                    ',i.vlreal'+
                    ',c.nmcondpagto'+
                    ',P.DTPRVENTREGA'+
                    ',i.vltotal '+
              'from itpedidomaterialfornecedor i '+
              'LEFT JOIN ITPEDIDOMATERIAL IP ON IP.CDITPEDIDOMATERIAL=I.CDITPEDIDOMATERIAL and i.cdempresa=ip.cdempresa '+
              'LEFT JOIN PEDIDOMATERIALFORNECEDOR P ON P.CDFORNECEDOR=I.CDFORNECEDOR AND IP.CDPEDIDOMATERIAL=P.CDPEDIDOMATERIAL and p.cdempresa=ip.cdempresa '+
              'left join fornecedor f on f.cdfornecedor=i.cdfornecedor and i.cdempresa=f.cdempresa '+
              'left join condpagto c on c.cdcondpagto=P.cdcondpagto and c.cdempresa=p.cdempresa '+
              'where i.cdempresa='+empresa.cdempresa.ToString+' and i.cditpedidomaterial='+c.q.fieldbyname(_cditpedidomaterial).AsString+' '+
              'order by f.cdfornecedor';
  end;
begin
  ci.q.Close;
  ci.q.sql.text := makesql;
  ci.q.Open;
  while not ci.q.Eof do
  begin
    if ci.q.RecNo = 4 then
    begin
      Break;
    end;
    mtbl.m.FieldByName(_nmfornecedor+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_nmfornecedor).AsString;
    mtbl.m.FieldByName(_nmcontato+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_nmcontato).AsString;
    mtbl.m.FieldByName(_nufone1+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_nufone1).AsString;
    mtbl.m.FieldByName(_vlunitario+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_vlunitario).AsString;
    mtbl.m.FieldByName(_vltotal+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_vltotal).AsString;
    mtbl.m.FieldByName(_vlfinal+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_vlfinal).AsString;
    mtbl.m.FieldByName(_vlreal+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_vlreal).AsString;
    mtbl.m.FieldByName(_vlipi+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_vlipi).AsString;
    mtbl.m.FieldByName(_nmcondpagto+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_nmcondpagto).AsString;
    mtbl.m.FieldByName(_dtprventrega+inttostr(ci.q.RecNo)).AsString := ci.q.fieldbyname(_dtprventrega).AsString;
    ci.q.Next;
  end;
end;

procedure TReport.processar_gauge;
begin
  frmprogressbar.pnl.Caption := 'Processando...';
  frmprogressbar.gau.Progress := c.q.RecNo;
  application.ProcessMessages;
end;

end.
