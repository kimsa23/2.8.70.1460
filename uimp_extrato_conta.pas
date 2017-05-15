unit uimp_extrato_conta;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeconta, classeretornasql, classeempresa, classeAplicacao, classequery;

procedure imp_extrato_Saldo(mtbl: TDataClient; sqlwhere, cdconta: string);

implementation

Type TReport = class
  private
    conta : Tconta;
    boconta : Boolean;
    c :TClasseQuery;
    mtbl: TDataClient;
    cdconta, sqlwhere: string;
    vlsaldoi, vlsaldo : Currency;
    procedure atualizar_post;
    procedure criar_fields;
    procedure Exibir_gauge;
    procedure inserir_registro;
    procedure inserir_registro_vazio;
    function  makesql:string;
    procedure processar_gauge;
    function  dtfsql:TDate;
    function  dtisql:TDate;
  public
    constructor create(mtbl2: TDataClient; sqlwhere2, cdconta2:string);
    procedure   gerar;
  end;

procedure imp_extrato_Saldo(mtbl: TDataClient; sqlwhere, cdconta: string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, sqlwhere, cdconta);
  try
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

procedure TReport.atualizar_post;
begin
  if (mtbl.m.state = dsinsert) or (mtbl.m.State = dsedit) then
  begin
    mtbl.m.post;
  end;
end;

constructor TReport.create(mtbl2: TDataClient; sqlwhere2, cdconta2:string);
begin
  mtbl     := mtbl2;
  sqlwhere := sqlwhere2;
  cdconta  := cdconta2;
  vlsaldo  := 0;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_dti            , ftDate);
  mtbl.m.FieldDefs.Add(_dtf            , ftDate);
  mtbl.m.FieldDefs.Add(_dtemissao      , ftDate);
  mtbl.m.FieldDefs.Add(_cdmovbancario  , ftInteger);
  mtbl.m.FieldDefs.Add(_cdconta        , ftInteger);
  mtbl.m.FieldDefs.Add(_nmconta        , ftString, 100);
  mtbl.m.FieldDefs.Add(_nmbanco        , ftString, 100);
  mtbl.m.FieldDefs.Add(_numovbancario  , ftString, 10);
  mtbl.m.FieldDefs.Add(_nmmovimentacao , ftString, 100);
  mtbl.m.FieldDefs.Add(_dshistorico    , ftString, 100);
  mtbl.m.FieldDefs.Add(_vlsaldo+_i     , ftCurrency);
  mtbl.m.FieldDefs.Add(_vlsaldo+_f     , ftCurrency);
  mtbl.m.FieldDefs.Add(_vlsaldo        , ftCurrency);
  mtbl.m.FieldDefs.Add(_vlpagamento    , ftCurrency);
  mtbl.m.FieldDefs.Add(_vldeposito     , ftCurrency);
  mtbl.m.FieldDefs.Add(_rzsocial       , ftString, 100);
  mtbl.m.FieldDefs.Add(_nubaixa        , ftString, 15);
  mtbl.m.IndexDefs.Add(_pk, _dtemissao+';'+_cdmovbancario, []);
  mtbl.m.IndexName := _pk;
  mtbl.m.CreateDataSet;
end;

procedure TReport.Exibir_gauge;
begin
  frmprogressbar.Show;
  frmprogressbar.pnl.Caption := 'Lendo registros. Aguarde...';
  Application.ProcessMessages;
end;

function TReport.dtisql:TDate;
var
  texto : string;
begin
  texto  := copy(sqlwhere, 22, 10);
  result := StrToDate(Copy(texto, 4, 3)+copy(texto, 1, 3)+copy(texto, 7, 4));
end;

function TReport.dtfsql:TDate;
var
  texto : string;
begin
  texto  := Copy(sqlwhere,39,10);
  result := StrToDate(Copy(texto, 4, 3)+copy(texto, 1, 3)+copy(texto, 7, 4));
end;

procedure TReport.inserir_registro_vazio;
begin
  if mtbl.m.RecordCount = 0 then
  begin
    mtbl.m.Insert;
    mtbl.m.FieldByName(_dti).AsDateTime      := dtisql;
    mtbl.m.FieldByName(_dtf).AsDateTime      := dtfsql;
    mtbl.m.FieldByName(_vlsaldoi).AsCurrency := vlsaldoi;
    mtbl.m.FieldByName(_vlsaldof).AsCurrency := mtbl.m.FieldByName(_vlsaldoi).AsCurrency;
    mtbl.m.FieldByName(_vlsaldo).AsCurrency  := mtbl.m.FieldByName(_vlsaldoi).AsCurrency;
    mtbl.m.Post;
  end;
end;

procedure TReport.gerar;
begin
  c := TClasseQuery.Create;
  conta          := tconta.create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    criar_fields;
    Exibir_gauge;
    c.q.sql.text   := makesql;
    c.q.Open;
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    if Pos(',', cdconta) = 0 then // <> '' then
    begin
      boconta       := True;
      conta.cdconta := strtoint(cdconta);
      vlsaldoi      := conta.ValorSaldoData(dtisql, conta.cdconta);
    end
    else
    begin
      vlsaldoi := conta.ValorSaldoInicial(dtisql);
      boconta  := False;
    end;
    vlsaldo  := vlsaldoi;
    while not c.q.Eof do
    begin
      processar_gauge;
      inserir_registro;
      c.q.Next;
    end;
    Atualizar_Post;
    inserir_registro_vazio;
  finally
    freeandnil(conta);
    freeandnil(c);
    freeandnil(frmprogressbar);
  end;
end;

procedure TReport.inserir_registro;
begin
  mtbl.m.Insert;
  mtbl.m.FieldByName(_dtemissao).AsDateTime     := c.q.fieldbyname(_dtemissao).AsDateTime;
  mtbl.m.FieldByName(_cdmovbancario).AsInteger  := c.q.fieldbyname(_cdmovbancario).AsInteger;
  mtbl.m.FieldByName(_cdconta).AsInteger        := c.q.fieldbyname(_cdconta).AsInteger;
  mtbl.m.FieldByName(_nmconta).AsString         := c.q.fieldbyname(_nmconta).AsString;
  mtbl.m.FieldByName(_numovbancario).AsString   := c.q.fieldbyname(_numovbancario).AsString;
  if not boconta then mtbl.m.FieldByName(_nmmovimentacao).AsString := c.q.fieldbyname(_nuconta).asstring+' '+c.q.fieldbyname(_nmmovimentacao).AsString
                 else mtbl.m.FieldByName(_nmmovimentacao).AsString := c.q.fieldbyname(_nmmovimentacao).AsString;
  mtbl.m.FieldByName(_nmbanco).AsString         := c.q.fieldbyname(_nmbanco).AsString;
  mtbl.m.FieldByName(_dshistorico).AsString     := c.q.fieldbyname(_dshistorico).AsString;
  mtbl.m.FieldByName(_nubaixa).AsString         := c.q.fieldbyname(_nubaixa).AsString;
  if not c.q.FieldByName(_nuautpagto).IsNull then
  begin
    mtbl.m.FieldByName(_nubaixa).AsString := c.q.fieldbyname(_nuautpagto).AsString;
  end;
  if c.q.fieldbyname(_cdnatureza).asstring = _C then
  begin
    if c.q.fieldbyname(_rzsocial+_c).AsString <> '' then
    begin
      mtbl.m.FieldByName(_rzsocial).AsString := c.q.fieldbyname(_rzsocial+_c).AsString;
    end;
    mtbl.m.FieldByName(_vldeposito).AsCurrency := c.q.fieldbyname(_vlliquido).AsCurrency;
    if c.q.fieldbyname(_vlliquido).IsNull then
    begin
      mtbl.m.FieldByName(_vldeposito).AsCurrency := c.q.fieldbyname(_vldeposito).AsCurrency;
      vlsaldo := vlsaldo + c.q.fieldbyname(_vldeposito).AsCurrency;
    end
    else
    begin
      vlsaldo := vlsaldo + c.q.fieldbyname(_vlliquido).AsCurrency;
    end;
  end
  else
  begin
    if c.q.fieldbyname(_rzsocial+_f).AsString <> '' then mtbl.m.FieldByName(_rzsocial).AsString := c.q.fieldbyname(_rzsocial+_f).AsString;
    mtbl.m.FieldByName(_vlpagamento).AsCurrency := c.q.fieldbyname(_vlliquido).AsCurrency;
    if c.q.fieldbyname(_vlliquido).IsNull then
    begin
      mtbl.m.FieldByName(_vlpagamento).AsCurrency := c.q.fieldbyname(_vlpagamento).AsCurrency;
      vlsaldo                                   := vlsaldo - c.q.fieldbyname(_vlpagamento).AsCurrency;
    end
    else
    begin
      vlsaldo := vlsaldo - c.q.fieldbyname(_vlliquido).AsCurrency;
    end;
  end;
  mtbl.m.FieldByName(_dti).AsDateTime      := dtisql;
  mtbl.m.FieldByName(_dtf).AsDateTime      := dtfsql;
  mtbl.m.FieldByName(_vlsaldoi).AsCurrency := vlsaldoi;
  mtbl.m.FieldByName(_vlsaldof).AsCurrency := vlsaldo;
  mtbl.m.FieldByName(_vlsaldo).AsCurrency  := vlsaldo;
  mtbl.m.Post;
end;

function TReport.makesql: string;
begin
  result := StringParametro('select m.cdmovbancario'+
                                  ',m.dtemissao'+
                                  ',m.cdconta'+
                                  ',N.NMCONTA'+
                                  ',n.nuconta'+
                                  ',A.NMBANCO'+
                                  ',m.numovbancario'+
                                  ',v.nmmovimentacao'+
                                  ',m.dshistorico'+
                                  ',m.vlpagamento'+
                                  ',m.vldeposito'+
                                  ',m.vlsaldo'+
                                  ',M.VLLANCAMENTO'+
                                  ',b.nubaixa'+
                                  ',u.nuautpagto'+
                                  ',M.CDNATUREZA'+
                                  ',f.rzsocial rzsocialf'+
                                  ',c.rzsocial rzsocialc'+
                                  ',b.vlliquido '+
                            'from movbancario M '+
                            'LEFT JOIN CONTA N ON N.CDCONTA=M.CDCONTA and m.cdempresa=n.cdempresa '+
                            'LEFT JOIN BANCO A ON A.CDBANCO=n.CDBANCO '+
                            'left join movimentacao V on V.cdmovimentacao=m.cdmovimentacao and m.cdempresa=v.cdempresa '+
                            'left join baixa B on b.cdmovbancario=m.cdmovbancario and m.cdempresa=b.cdempresa '+
                            'left join duplicata D on d.cdduplicata=b.cdduplicata and b.cdempresa=d.cdempresa '+
                            'left join cliente C on c.cdcliente=d.cdcliente and c.cdempresa=d.cdempresa '+
                            'left join autpagto U on U.cdautpagto=b.cdautpagto and u.cdempresa=b.cdempresa '+
                            'left join fornecedor F on f.cdfornecedor=U.cdfornecedor and f.cdempresa=u.cdempresa '+
                            'WHERE m.cdempresa='+empresa.cdempresa.ToString+' and :sqlwhere '+
                            'order by M.DTEMISSAO,m.cdmovbancario', sqlwhere);
end;

procedure TReport.processar_gauge;
begin
  frmprogressbar.pnl.Caption := 'Processando...';
  frmprogressbar.gau.Progress := c.q.RecNo;
  application.ProcessMessages;
end;

end.
