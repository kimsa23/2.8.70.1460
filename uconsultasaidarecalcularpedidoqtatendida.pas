unit uconsultasaidarecalcularpedidoqtatendida;

interface

uses
  forms, sysutils, controls,
  sqlexpr,
  uregistro, ustrings, uprogressbar, unumero, uconstantes,
  classeaplicacao, classeempresa, classeretornasql, classeexecutasql, classequery;

function RecalcularPedidoQtAtendida(dti, dtf: TDate):boolean;

implementation

function RecalcularPedidoQtAtendida(dti, dtf: TDate):boolean;
var
  q2, q : TClasseQuery;
  r : integer;
begin
  q  := TClasseQuery.create('select i.cdpedido' +
                              ',i.cdproduto'+
                              ',i.qtitem'+
                              ',i.cdsaida' +
                              ',i.cditsaida ' +
                        'from itsaida i '+
                        'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa ' +
                        'where i.cdempresa='+empresa.cdempresa.tostring+' and cdpedido is not null and dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf));
  q2 := TClasseQuery.create;
  frmprogressbar := tfrmprogressbar.create(nil);
  try
    frmprogressbar.gau.MaxValue := RetornaSQLInteger('select count(*) '+
                                                     'from itsaida i '+
                                                     'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa ' +
                                                     'where i.cdempresa='+empresa.cdempresa.tostring+' and cdpedido is not null and dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf));

    frmprogressbar.show;
    r := 0;
    while not q.q.eof do
    begin
      inc(r);
      frmprogressbar.gau.Progress := r;
      application.ProcessMessages;
      q2.q.close;
      q2.q.sql.text := 'select sum(qtitem) qtitem '+
                        'from itsaida '+
                        'where cdempresa='+empresa.cdempresa.tostring+' and cdproduto='+q.q.fieldbyname(_cdproduto).Asstring+' '+
                        'and cdpedido='+q.q.fieldbyname(_cdpedido).Asstring+' '+
                        'and cdsaida<>'+q.q.fieldbyname(_cdsaida).Asstring+' '+
                        'and cditsaida<>'+q.q.fieldbyname(_cditsaida).AsString;
      q2.q.open;
      ExecutaSQL('update itpedido '+
                         'set qtatendida='+getcurrencys(q.q.fieldbyname(_qtitem).AsCurrency + q2.q.fieldbyname(_qtitem).AsCurrency)+' '+
                         'where cdempresa='+empresa.cdempresa.tostring+' and cdpedido='+q.q.fieldbyname(_cdpedido).Asstring+' and cdproduto='+q.q.fieldbyname(_cdproduto).Asstring);
      q.q.Next;
    end;
    result := true;
  finally
    freeandnil(q);
    freeandnil(q2);
    freeandnil(frmprogressbar);
  end;
end;

end.
