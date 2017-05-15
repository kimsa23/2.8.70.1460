unit ufaturamentogerarprodutomensalidade;

interface

uses
  forms, sysutils, classes, Controls,
  umontarsql, uprogressbar, uconstantes, uregistro, ustrings, udatahora,
  classeaplicacao, classeempresa, classeretornasql, classeregistrainformacao, classeexecutasql,
  classegerar, classequery;

function GerarProdutoMensalidade(cdfaturamento:integer; cdproduto, cdtpcliente, cdtpclientemensalidade, cdcontrato:TStrings; cdclientei, cdclientef, dtcadastrosocio:string):boolean;

implementation

function GerarProdutoMensalidade(cdfaturamento:integer; cdproduto, cdtpcliente, cdtpclientemensalidade, cdcontrato:TStrings; cdclientei, cdclientef, dtcadastrosocio:string):boolean;
  function get_cdtpclientemensalidade:string;
  var
    i : Integer;
  begin
    if cdtpclientemensalidade.Count = 0 then
    begin
      Exit;
    end;
    result := 'and cdtpclientemensalidade in (';
    for i := 0 to cdtpclientemensalidade.count - 1 do
    begin
      if i > 0 then
      begin
        result := result + ',';
      end;
      result := Result + cdtpclientemensalidade[i];
    end;
    result := result + ')';
  end;
  function get_cdcontrato(result_atual:string):string;
  var
    i : Integer;
  begin
    result := result_atual;
    if cdcontrato.Count = 0 then
    begin
      Exit;
    end;
    result := result + ' and cdcontrato in (';
    for i := 0 to cdcontrato.count - 1 do
    begin
      if i > 0 then
      begin
        result := result + ',';
      end;
      result := Result + cdcontrato[i];
    end;
    result := result + ')';
  end;
  function get_cdtpcliente(result_atual:string):string;
  var
    i : Integer;
  begin
    result := result_atual;
    if cdtpcliente.Count = 0 then
    begin
      Exit;
    end;
    result := result + ' and cdtpcliente in (';
    for i := 0 to cdtpcliente.count - 1 do
    begin
      if i > 0 then
      begin
        result := result + ',';
      end;
      result := Result + cdtpcliente[i];
    end;
    result := result + ')';
  end;
  function makesql:string;
    function sqlwhere:string;
    begin
      result := '';
      if (cdtpclientemensalidade.Count > 0) or (cdcontrato.count > 0) or (cdtpcliente.count > 0) then
      begin
        Result := get_cdtpclientemensalidade;
        result := get_cdcontrato(Result);
        result := get_cdtpcliente(Result);
      end;
      if cdclientei      <> _0          then
      begin
        Result := Result + ' and cdcliente between '+cdclientei+' and '+cdclientef+' ';
      end;
      if dtcadastrosocio <> _00_00_0000 then
      begin
        Result := Result + ' and dtcadastrosocio<='+quotedstr(dtcadastrosocio);
      end;
    end;
  begin
    result := 'select cdcliente from cliente where cdempresa='+empresa.cdempresa.tostring+' '+sqlwhere;
  end;
var
  c : TClasseQuery;
  dtemissao : TDate;
  cdstpedido, cdstitpedido : integer;
  sqlregistra_, vlproduto, cdtppedido, cditpedido, cdpedido : string;
  i : integer;
  sql, vlunitario: TStrings;
  valor, vltotal : currency;
  procedure inserir_pedido;
  begin
    cdpedido := GerarCodigo(_pedido);
    sql.Add('insert into pedido(cdpedido,nupedido,cdtppedido,cdstpedido,prcomissao,cdcliente,vltotal,vlproduto,psbruto,dtemissao,'+_sqlreg+
                    cdpedido+','+cdpedido+','+cdtppedido+','+cdstpedido.tostring+',0,'+c.q.fieldbyname(_cdcliente).asstring+','+
                    vlproduto+','+vlproduto+','+inttostr(cdproduto.count)+','+GetDtBanco(dtemissao)+','+sqlregistra_+';');
  end;
  procedure inserir_itpedido;
  var
    i : Integer;
  begin
    for i := 0 to cdproduto.count - 1 do
    begin
      cditpedido := GerarCodigo(_itpedido);
      sql.Add('insert into itpedido'+
                       '(cdpedido,cditpedido,cdstitpedido,cdproduto,cddigitado,qtitem,qtatendida,vlunitario,vltotal,'+_sqlreg+
                       cdpedido+','+cditpedido+','+cdstitpedido.tostring+','+cdproduto[i]+','+cdproduto[i]+',1,0,'+vlunitario[i]+','+
                       vlunitario[i]+','+sqlregistra_+';');
    end;
  end;
begin
  sqlregistra_   := sqlregistra;
  dtemissao      := qregistro.DatadoCodigo(_faturamento, cdfaturamento, _DTFATURAMENTO);
  c              := TClasseQuery.Create;
  vlunitario     := TStringlist.create;
  sql            := TStringList.Create;
  frmprogressbar := tfrmprogressbar.create(nil);
  try
    cdstpedido   := qregistro.Codigo_status_novo(_pedido);
    cdstitpedido := qregistro.Codigo_status_novo(_itpedido);
    // carregar valor unitário de produto
    vltotal := 0;
    for i := 0 to cdproduto.count - 1 do
    begin
      valor   := ValordoCodigo(_produto, cdproduto[i], _vlvenda);
      vltotal := vltotal + valor;
      vlunitario.add(getcurrencys(valor));
    end;
    vlproduto  := getcurrencys(vltotal);
    cdtppedido := RetornaSQLString('select cdtppedidoarquivo '+
                                   'from tpfaturamento t '+
                                   'left join faturamento f on f.cdtpfaturamento=t.cdtpfaturamento and t.cdempresa=f.cdempresa '+
                                   'where t.cdempresa='+empresa.cdempresa.tostring+' and cdfaturamento='+cdfaturamento.ToString);
    c.q.sql.Text   := makesql;
    c.q.open;
    frmprogressbar.gau.maxvalue := c.q.recordcount;
    frmprogressbar.Show;
    while not c.q.eof do
    begin
      frmprogressbar.pnl.Caption  := 'Processando registro '+inttostr(c.q.recno)+' de '+inttostr(frmprogressbar.gau.maxvalue)+' - Cliente '+c.q.fieldbyname(_cdcliente).asstring;
      frmprogressbar.gau.progress := c.q.recno;
      application.ProcessMessages;

      inserir_pedido;
      inserir_itpedido;
      // insere item do pedido no faturamento
      sql.Add('insert into itfatpedido(cdfaturamento,cdpedido,nupedido,'+_sqlreg+cdfaturamento.ToString+','+cdpedido+','+cdpedido+','+sqlregistra_+';');
      c.q.next;
    end;
    result := ExecutaScript(sql);
  finally
    freeandnil(c);
    freeandnil(sql);
    freeandnil(vlunitario);
    freeandnil(frmprogressbar);
  end;
end;

end.
