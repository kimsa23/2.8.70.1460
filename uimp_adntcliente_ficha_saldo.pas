unit uimp_adntcliente_ficha_saldo;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls,
  DB,
  ustrings, uprogressbar, uconstantes, udatahora,
  classeempresa, classeAplicacao, classequery;

procedure imp_adntcliente_ficha_saldo(mtbl: TDataClient; cdcliente: string);

implementation

Type TReport = class
  private
    c : TClasseQuery;
    mtbl: TDataClient;
    cdcliente, nmreport: string;
    vlsaldo : Currency;
    procedure atualizar_post;
    procedure criar_fields;
    procedure Exibir_gauge;
    procedure inserir_registro;
    function  makesql:string;
    procedure processar_gauge;
  public
    constructor create(mtbl2: TDataClient; cdcliente2:string);
    procedure   gerar;
  end;

procedure imp_adntcliente_ficha_saldo(mtbl: TDataClient; cdcliente: string);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, cdcliente);
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

constructor TReport.create(mtbl2: TDataClient; cdcliente2:string);
begin
  mtbl     := mtbl2;
  cdcliente := cdcliente2;
  vlsaldo := 0;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_nmreport  , ftString, 100);
  mtbl.m.FieldDefs.Add(_cdcliente , ftInteger);
  mtbl.m.FieldDefs.Add(_cdbaixa , ftInteger);
  mtbl.m.FieldDefs.Add(_rzsocial  , ftString, 100);
  mtbl.m.FieldDefs.Add(_cdadntcliente, ftInteger);
  mtbl.m.FieldDefs.Add(_cdmovbancario, ftInteger);
  mtbl.m.FieldDefs.Add(_nuduplicata  , ftString, 10);
  mtbl.m.FieldDefs.Add(_dtemissao    , ftDate);
  mtbl.m.FieldDefs.Add(_dtbaixa      , ftDate);
  mtbl.m.FieldDefs.Add('vladntcliente', ftCurrency);
  mtbl.m.FieldDefs.Add(_vllancamento , ftCurrency);
  mtbl.m.FieldDefs.Add(_vlsaldo      , ftCurrency);
  mtbl.m.FieldDefs.Add(_vlliquido  , ftCurrency);
  mtbl.m.IndexDefs.Add(_pk , 'cdcliente;dtbaixa;cdmovbancario;cdbaixa;nuduplicata', []);
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
begin
  c := TClasseQuery.Create(makesql);
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    criar_fields;
    nmreport := 'Ficha de Saldo de Adiantamento de Cliente';
    Exibir_gauge;
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    while not c.q.Eof do
    begin
      processar_gauge;
      if c.q.fieldbyname(_nuduplicata).isnull then vlsaldo := vlsaldo + c.q.fieldbyname(_vllancamento).AsCurrency
                                             else vlsaldo := vlsaldo - c.q.fieldbyname(_vlliquido).AsCurrency;
      inserir_registro;
      c.q.Next;
    end;
    Atualizar_Post;
  finally
    FreeAndNil(c);
    FreeAndNil(frmprogressbar);
  end;
end;

procedure TReport.inserir_registro;
begin
  mtbl.m.Insert;
  mtbl.m.Fieldbyname(_nm+_report).AsString        := nmreport;
  mtbl.m.Fieldbyname(_cdcliente).AsLargeInt      := c.q.fieldbyname(_cdcliente).AsLargeInt;
  mtbl.m.Fieldbyname(_cdbaixa).AsInteger        := c.q.fieldbyname(_cdbaixa).AsInteger;
  mtbl.m.Fieldbyname(_rzsocial).AsString        := c.q.fieldbyname(_rzsocial).AsString;
  mtbl.m.Fieldbyname(_cdadntcliente).AsInteger  := c.q.fieldbyname(_cdadntcliente).AsInteger;
  mtbl.m.Fieldbyname(_cdmovbancario).AsInteger  := c.q.fieldbyname(_cdmovbancario).AsInteger;
  if c.q.fieldbyname(_nuduplicata).isnull then
  begin
    mtbl.m.Fieldbyname(_vllancamento).AsCurrency  := c.q.fieldbyname(_vllancamento).AsCurrency;
    mtbl.m.Fieldbyname(_vl+_adntcliente).AsCurrency := c.q.fieldbyname(_vl+_adntcliente).AsCurrency;
  end
  else
  begin
    mtbl.m.Fieldbyname(_vlliquido).AsCurrency     := c.q.fieldbyname(_vlliquido).AsCurrency;
  end;
  mtbl.m.Fieldbyname(_dtemissao).AsDateTime     := c.q.fieldbyname(_dtemissao).AsDateTime;
  mtbl.m.Fieldbyname(_dtbaixa).AsDateTime       := c.q.fieldbyname(_dtbaixa).AsDateTime;
  mtbl.m.Fieldbyname(_vlsaldo).AsCurrency       := vlsaldo;
  mtbl.m.Fieldbyname(_nuduplicata).AsString     := c.q.fieldbyname(_nuduplicata).AsString;
  mtbl.m.Post;
end;

function TReport.makesql: string;
begin
  result := 'select a.cdadntcliente'+
                  ',a.dtemissao'+
                  ',a.vladntcliente'+
                  ',m.cdmovbancario'+
                  ',m.vllancamento'+
                  ',d.nuduplicata '+
                  ',b.vlliquido'+
                  ',a.cdcliente'+
                  ',c.q.rzsocial'+
                  ',b.cdbaixa'+
                  ',b.dtbaixa '+
            'from adntcliente a '+
            'left join cliente c on c.q.cdcliente=a.cdcliente and a.cdempresa=c.q.cdempresa '+
            'left join baixa b on b.cdadntcliente=a.cdadntcliente and a.cdempresa=b.cdempresa '+
            'left join movbancario m on m.cdmovbancario=b.cdmovbancario and b.cdempresa=m.cdempresa '+
            'left join duplicata d on d.cdduplicata=b.cdduplicata and b.cdempresa=d.cdempresa '+
            'where a.cdempresa='+empresa.cdempresa.ToString+' and a.cdcliente='+cdcliente+' and not (a.vlsaldo=0 and a.vlutilizado=0) '+
            'order by c.q.cdcliente,b.dtbaixa,b.cdmovbancario,b.cdbaixa,b.cdduplicata';
end;

procedure TReport.processar_gauge;
begin
  frmprogressbar.pnl.Caption := 'Processando...';
  frmprogressbar.gau.Progress := c.q.RecNo;
  application.ProcessMessages;
end;

end.
 