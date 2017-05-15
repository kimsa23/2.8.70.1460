unit classeadntclienterecalculosaldo;

interface

uses
  Forms, variants, Classes, Dialogs, SysUtils, Controls,
  DB,
  uregistro, umontarsql, ustrings, uprogressbar, uconstantes, udatahora,
  classeaplicacao, classeretornasql, classeempresa, classequery;

procedure Recalcular_saldo_adntcliente(dti, dtf: TDate; cdcliente: tstrings);

implementation

uses classeregistrainformacao;

Type TRecalcularSaldo = class
  private
    cds, c : TClasseQuery;
    cdcliente: TStrings;
    vlsaldo : Currency;
    procedure Exibir_gauge;
    procedure inserir_registro;
    function  makesql:string;
    procedure processar_gauge(c:TClasseQuery);
  public
    constructor create;
    procedure   gerar;
  end;

procedure Recalcular_saldo_adntcliente(dti, dtf: TDate; cdcliente: tstrings);
var
  rpt : TRecalcularSaldo;
begin
  rpt := TRecalcularSaldo.create;
  try
    rpt.cdcliente := cdcliente;
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TRecalcularSaldo.create;
begin
end;

procedure TRecalcularSaldo.Exibir_gauge;
begin
  frmprogressbar.Show;
  frmprogressbar.pnl.Caption := 'Lendo registros. Aguarde...';
  Application.ProcessMessages;
end;

procedure TRecalcularSaldo.gerar;
var
  codigo: string;
begin
  c   := TClasseQuery.Create;
  cds := TClasseQuery.Create('', true);
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    Exibir_gauge;
    cds.q.sql.text   := QRetornaSQL.get_select_from(_h+_adntcliente, empresa.cdempresa, _cd+_empresa);
    cds.q.Open;
    frmprogressbar.gau.MaxValue := cds.q.RecordCount;
    while not cds.q.Eof do
    begin
      processar_gauge(cds);
      cds.q.Delete;
    end;
    c.q.sql.Text   := makesql;
    c.q.Open;
    frmprogressbar.gau.MaxValue := c.q.RecordCount;
    codigo  := c.q.fieldbyname(_cdcliente).asstring;
    vlsaldo := 0;
    while not c.q.Eof do
    begin
      processar_gauge(c);
      if codigo <> c.q.Fieldbyname(_cdcliente).asString then
      begin
        codigo  := c.q.fieldbyname(_cdcliente).asstring;
        vlsaldo := 0;
      end;
      if c.q.fieldbyname(_nuduplicata).IsNull then vlsaldo := 0 + c.q.fieldbyname(_vlliquido).asCurrency
                                            else vlsaldo := 0 - c.q.fieldbyname(_vlliquido).asCurrency;
      inserir_registro;
      c.q.Next;
    end;
    frmprogressbar.pnl.Caption := 'Atualizando base de dados. Aguarde.';
    application.ProcessMessages;
    cds.q.ApplyUpdates(0);
  finally
    freeandnil(c);
    freeandnil(cds);
    FreeAndNil(frmprogressbar);
  end;
end;

procedure TRecalcularSaldo.inserir_registro;
begin
  if not cds.q.Locate(_cdcliente+';'+_dt+_adntcliente, vararrayof([c.q.fieldbyname(_cdcliente).asString, c.q.fieldbyname(_dtbaixa).asDateTime]), []) then
  begin
    cds.q.Insert;
    cds.q.Fieldbyname(_cdcliente).AsLargeInt        := c.q.fieldbyname(_cdcliente).AsLargeInt;
    cds.q.Fieldbyname(_dt+_adntcliente).asDateTime := c.q.fieldbyname(_dtbaixa).asDateTime;
    cds.q.Fieldbyname(_vlsaldo).asCurrency         := vlsaldo;
  end
  else
  begin
    cds.q.Edit;
    cds.q.Fieldbyname(_vlsaldo).asCurrency := vlsaldo;
  end;
  RegistraInformacao_(cds.q);
  cds.q.Post;
end;

function TRecalcularSaldo.makesql: string;
begin
  result := 'select d.nuduplicata'+
                  ',b.vlliquido'+
                  ',a.cdcliente'+
                  ',b.dtbaixa '+
            'from adntcliente a '+
            'left join cliente c on c.q.cdcliente=a.cdcliente and a.cdempresa=c.q.cdempresa '+
            'left join baixa b on b.cdadntcliente=a.cdadntcliente and a.cdempresa=b.cdempresa '+
            'left join duplicata d on d.cdduplicata=b.cdduplicata and b.cdempresa=d.cdempresa '+
            'left join movbancario m on m.cdmovbancario=b.cdmovbancario and b.cdempresa=m.cdempresa '+
            'where a.cdempresa='+empresa.cdempresa.tostring+' and (not (a.vlsaldo=0 and a.vlutilizado=0)) ';
  sqlmontarlista(cdcliente, _a, _cdcliente, result);
  result := result +
            'order by c.q.cdcliente,b.dtbaixa,b.cdmovbancario,b.cdduplicata';
end;

procedure TRecalcularSaldo.processar_gauge(c:TClasseQuery);
begin
  frmprogressbar.pnl.Caption := 'Processando... registro '+inttostr(c.q.recno)+' de '+inttostr(c.q.recordcount);
  frmprogressbar.gau.Progress := c.q.RecNo;
  application.ProcessMessages;
end;

end.

 