unit ClasseManagerAutpagto;

interface
uses
  System.UITypes,
  forms, Graphics, Classes, Dialogs, ActnList, variants, ActnMan, windows, StdCtrls,
  Controls, ComCtrls, ToolWin, ExtCtrls, SysUtils, Menus,
  DB,
  uconstantes, ustrings,
  classeempresa, classeretornasql, classequery,
  XPStyleActnCtrls, cxClasses, cxGraphics, cxControls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TGerenciador = class(TObject)
  private
  public
    c:TFDMemTable;
    tpdata : string;
    dti : TDate;
    dtf : TDate;
    tpgrafico : string;
    tpfaixa : string;
    tpvalor : string;
    bosaldoconta : string;
    bopedidoordcompra : string;
    status : string;
    tbl : string;
    vlsaldoconta : currency;
    constructor create;
    destructor destroy;
    procedure AdicionarCampo;
    function getnmdata(nmdata:string):string;
    function getdata:string;
    function getSaldo:Currency;
    function makesqlduplicata:string;
    function makesqlautpagto:string;
    function makesqlgrafico(tabela:string):string;
    function makesqlgraficodiarioDuplicata: string;
    function makesqlgraficodiarioAutpagto: string;
    function makesqlgraficodiarioOrdcompraAutpagto:string;
    function makesqlgraficodiarioPedidoDuplicata: string;
    function makesqlgraficomensal(tabela:string):string;
    procedure preencher_tabela_grafico;
    procedure SetTpFaixaDiario;
    procedure SetTpFaixaMes;
    function graficoUm: Boolean;
    function graficoDois: Boolean;
    procedure processar_autpagto ;
    procedure processar_ordcompra;
    procedure processar_pedido;
    procedure graficoAcumulado;
    procedure SetDataSet;
    procedure GraficoDespesa;
    procedure graficoReceita;
    procedure Processar_Duplicata;
  end;

implementation

procedure TGerenciador.AdicionarCampo;
begin
  if tpfaixa = 'Diário' then
  begin
    c.FieldDefs.Add(_dia, ftDateTime)
  end
  else
  begin
    c.FieldDefs.Add(_dia, ftString, 30);
  end;
  c.FieldDefs.Add(_valor, ftCurrency);
  c.FieldDefs.Add(_vlreceita, ftCurrency);
  c.FieldDefs.Add(_vldespesa, ftCurrency);
  c.FieldDefs.Add(_vlautpagto, ftCurrency);
  c.FieldDefs.Add(_vlduplicata, ftCurrency);
  c.FieldDefs.Add(_vlpedido, ftCurrency);
  c.FieldDefs.Add(_vlordcompra, ftCurrency);
end;

constructor TGerenciador.create;
begin
  c := TFDMemTable.create(nil);
end;

destructor TGerenciador.destroy;
begin
  freeandnil(c);
end;

function TGerenciador.getdata: string;
begin
  if formatdatetime(_mm_dd_yyyy, dtf) = _00_00_0000 then
  begin
    result := '= '+getdtbanco(dti)
  end
  else
  begin
    result := ' '+_between+' '+getdtbanco(dti)+' '+_and+' '+getdtbanco(dtf);
  end;
end;

function TGerenciador.getnmdata(nmdata: string): string;
begin
  if nmdata = Maiuscula(__emissao) then
  begin
    result := _dtemissao
  end
  else if nmdata = Maiuscula(_Baixa) then
  begin
    result := _dtbaixa
  end
  else if nmdata = Maiuscula(_Vencimento) then
  begin
    result := _dtprorrogacao;
  end;
end;

function TGerenciador.getSaldo: Currency;
var
  s : TClasseQuery;
begin
  s := TClasseQuery.Create('select c.cdconta,max(h.dthcontasaldo) dthcontasaldo '+
                           'from conta c '+
                           'inner join hcontasaldo h on h.cdconta=c.cdconta and c.cdempresa=h.cdempresa '+
                           'where h.cdempresa='+empresa.cdempresa.tostring+' and h.dthcontasaldo<='+getdtbanco(dti)+' '+
                           'group by c.cdconta');
  try
    result := 0;
    while not s.q.Eof do
    begin
      result := result + RetornaSQLCurrency('select sum(vlsaldo) '+
                                            'from hcontasaldo '+
                                            'where cdempresa='+empresa.cdempresa.tostring+' and cdconta='+s.q.fieldbyname(_cdconta).AsString+' and dthcontasaldo='+getdtbanco(s.q.fieldbyname(_dthcontasaldo).AsDateTime));
      s.q.Next;
    end;
  finally
    FreeAndNil(s);
  end;
end;

function TGerenciador.graficoDois: Boolean;
begin
  result := (tpgrafico = 'Receitas') or
            (tpgrafico = 'Receitas X Despesas') or
            (tpgrafico = 'Saldo (Receitas - Despesas)') or
            (tpgrafico = 'Acumulado (Receita - Despesa)');
end;

function TGerenciador.graficoUm:Boolean;
begin
  result := (tpgrafico = 'Despesas') or
            (tpgrafico = 'Receitas X Despesas') or
            (tpgrafico = 'Saldo (Receitas - Despesas)') or
            (tpgrafico = 'Acumulado (Receita - Despesa)');
end;

function TGerenciador.makesqlautpagto: string;
begin
  result := 'SELECT autpagto.CDautpagto'+
                  ',autpagto.CDfornecedor'+
                  ',autpagto.nuautpagto nuduplicata'+
                  ',autpagto.dshistorico'+
                  ',fornecedor.RZSOCIAL'+
                  ',autpagto.DTEMISSAO'+
                  ',autpagto.dtbaixa'+
                  ',autpagto.PRMORADIARIA'+
                  ',autpagto.PRMULTA'+
                  ',autpagto.dtprorrogacao DTVENCIMENTO'+
                  ',autpagto.DTPRORROGACAO'+
                  ',autpagto.vlautpagto'+
                  ',autpagto.VLSALDO'+
                  ',autpagto.VLBAIXA'+
                  ',autpagto.VLMULTA'+
                  ',autpagto.VLJUROS'+
                  ',autpagto.cdplconta'+
                  ',autpagto.cdcntcusto'+
                  ',autpagto.VLDESCONTO'+
                  ',autpagto.VLDEVOLUCAO'+
                  ',autpagto.VLABATIMENTO'+
                  ',autpagto.VLRECEBIDO'+
                  ',STautpagto.NUCOR'+
                  ',conta.nucor nucorconta'+
                  ',TPCOBRANCA.NMTPCOBRANCA'+
                  ',STautpagto.cdstautpagto'+
                  ',STautpagto.NMSTAUTPAGTO'+
                  ',usuario.nmusuario'+
                  ',autpagto.tsaprovacao '+
            'FROM autpagto '+
            'left join usuario on usuario.cdusuario=autpagto.cdusuarioaprovacao '+
            'LEFT JOIN fornecedor ON fornecedor.CDfornecedor=autpagto.CDfornecedor and fornecedor.cdempresa=autpagto.cdempresa '+
            'LEFT JOIN TPCOBRANCA ON TPCOBRANCA.CDTPCOBRANCA=autpagto.cdtpcobranca and TPCOBRANCA.cdempresa=autpagto.cdempresa '+
            'left join conta on conta.cdempresa=autpagto.cdempresa and conta.cdconta=autpagto.cdconta '+
            'LEFT JOIN STautpagto ON STautpagto.CDSTautpagto=autpagto.CDSTautpagto '+
            'where autpagto.cdempresa='+empresa.cdempresa.tostring+' '+
            'and autpagto.'+getnmdata(tpdata)+getdata+' ';
  if uppercase(status) <> uppercase(_todos) then
  begin
    result := result + 'and stautpagto.nmstautpagto='+quotedstr(uppercase(status))+' ';
  end;
  result := result +
            'ORDER BY autpagto.'+getnmdata(tpdata);
end;

function TGerenciador.makesqlduplicata: string;
begin
  result := 'SELECT duplicata.CDduplicata cdautpagto'+
                  ',duplicata.CDcliente'+
                  ',duplicata.cdduplicata'+
                  ',duplicata.nuduplicata nuduplicata'+
                  ',duplicata.dshistorico'+
                  ',cliente.RZSOCIAL'+
                  ',duplicata.DTEMISSAO'+
                  ',duplicata.dtbaixa'+
                  ',duplicata.PRMORADIARIA'+
                  ',duplicata.PRMULTA'+
                  ',duplicata.dtprorrogacao DTVENCIMENTO'+
                  ',duplicata.DTPRORROGACAO'+
                  ',duplicata.VLduplicata vlautpagto'+
                  ',duplicata.VLSALDO'+
                  ',duplicata.VLBAIXA'+
                  ',duplicata.VLMULTA'+
                  ',duplicata.VLJUROS'+
                  ',duplicata.cdplconta'+
                  ',duplicata.cdcntcusto'+
                  ',duplicata.VLDESCONTO'+
                  ',duplicata.VLDEVOLUCAO'+
                  ',duplicata.VLABATIMENTO'+
                  ',duplicata.VLRECEBIDO'+
                  ',STduplicata.NUCOR'+
                  ',conta.nucor nucorconta'+
                  ',TPCOBRANCA.NMTPCOBRANCA'+
                  ',STduplicata.cdstduplicata'+
                  ',STduplicata.NMSTduplicata NMSTAUTPAGTO '+
            'FROM duplicata '+
            'LEFT JOIN cliente ON cliente.CDcliente=duplicata.CDcliente and cliente.cdempresa=duplicata.cdempresa '+
            'LEFT JOIN TPCOBRANCA ON TPCOBRANCA.CDTPCOBRANCA=duplicata.cdtpcobranca and TPCOBRANCA.cdempresa=duplicata.cdempresa '+
            'left join conta on conta.cdempresa=duplicata.cdempresa and conta.cdconta=duplicata.cdconta '+
            'LEFT JOIN STduplicata ON STduplicata.CDSTduplicata=duplicata.CDSTduplicata '+
            'where duplicata.cdempresa='+empresa.cdempresa.tostring+' '+
            'and duplicata.'+getnmdata(tpdata)+getdata+' ';
  if uppercase(status) <> uppercase(_todos) then
  begin
    result := result + 'and stduplicata.nmstduplicata='+quotedstr(uppercase(status))+' ';
  end;
  result := result +
            'ORDER BY duplicata.'+getnmdata(tpdata);
end;

function TGerenciador.makesqlgrafico(tabela:string): string;
begin
  if tpfaixa = 'Diário' then
  begin
    if tabela = _duplicata then
    begin
      result := makesqlgraficodiarioDuplicata;
    end
    else if tabela = _autpagto then
    begin
      result := makesqlgraficodiarioAutpagto;
    end
    else if tabela = _ordcompraautpagto then
    begin
      result := makesqlgraficodiarioOrdcompraAutpagto;
    end
    else if tabela = _pedidoduplicata then
    begin
      result := makesqlgraficodiarioPedidoDuplicata;
    end;
  end
  else
  begin
    result := makesqlgraficomensal(tabela);
  end;
end;

function TGerenciador.makesqlgraficodiarioDuplicata: string;
begin
  result := 'select duplicata.'+getnmdata(tpdata)+' dia';
  if tpvalor = 'Saldo' then
  begin
    result := result + ',sum(duplicata.vlsaldo) valor '
  end
  else
  begin
    result := result + ',sum(duplicata.vlduplicata) valor ';
  end;
  result := result +
            'from duplicata '+
            'where duplicata.cdempresa='+empresa.cdempresa.tostring+' and duplicata.'+getnmdata(tpdata)+getdata+' '+
            'group by duplicata.'+getnmdata(tpdata)+' '+
            'order by duplicata.'+getnmdata(tpdata);
end;

function TGerenciador.makesqlgraficodiarioOrdcompraAutpagto: string;
begin
  result := 'select ordcompraautpagto.'+getnmdata(tpdata)+' dia';
  if tpvalor = 'Saldo' then
  begin
    result := result + ',sum(ordcompraautpagto.vlsaldo) valor '
  end
  else
  begin
    result := result + ',sum(ordcompraautpagto.vlordcompraautpagto) valor ';
  end;
  result := result +
            'from ordcompraautpagto '+
            'left join ordcompra o on o.cdordcompra=ordcompraautpagto.cdordcompra and o.cdempresa=ordcompraautpagto.cdempresa '+
            'where ordcompraautpagto.cdempresa='+empresa.cdempresa.tostring+' and ordcompraautpagto.'+getnmdata(tpdata)+getdata+' and o.cdstordcompra=1 '+
            'group by ordcompraautpagto.'+getnmdata(tpdata)+' '+
            'order by ordcompraautpagto.'+getnmdata(tpdata);
end;

function TGerenciador.makesqlgraficodiarioPedidoDuplicata: string;
begin
  result := 'select pedidoduplicata.'+getnmdata(tpdata)+' dia';
  if tpvalor = 'Saldo' then
  begin
    result := result + ',sum(pedidoduplicata.vlsaldo) valor '
  end
  else
  begin
    result := result + ',sum(pedidoduplicata.vlpedidoduplicata) valor ';
  end;
  result := result +
            'from pedidoduplicata '+
            'left join pedido on pedido.cdpedido=pedidoduplicata.cdpedido and pedido.cdempresa=pedidoduplicata.cdempresa '+
            'left join stpedido on stpedido.cdstpedido=pedido.cdstpedido and stpedido.cdempresa=pedido.cdempresa '+
            'where pedidoduplicata.cdempresa='+empresa.cdempresa.tostring+' and pedidoduplicata.'+getnmdata(tpdata)+getdata+' and stpedido.bogerarsaida=''S'' '+
            'group by pedidoduplicata.'+getnmdata(tpdata)+' '+
            'order by pedidoduplicata.'+getnmdata(tpdata);
end;

function TGerenciador.makesqlgraficodiarioAutpagto: string;
begin
  result := 'select autpagto.'+getnmdata(tpdata)+' dia';
  if tpvalor = 'Saldo' then
  begin
    result := result + ',sum(autpagto.vlsaldo) valor '
  end
  else
  begin
    result := result + ',sum(autpagto.vlautpagto) valor ';
  end;
  result := result +
            'from autpagto '+
            'where autpagto.cdempresa='+empresa.cdempresa.tostring+' and autpagto.'+getnmdata(tpdata)+getdata+' '+
            'group by autpagto.'+getnmdata(tpdata)+' '+
            'order by autpagto.'+getnmdata(tpdata);
end;

function TGerenciador.makesqlgraficomensal(tabela: string): string;
begin
  result := 'select extract(year FROM ' +tabela+'.'+getnmdata(tpdata)+') year1,m.nmmes dia'+
                  ',extract(month FROM '+tabela+'.'+getnmdata(tpdata)+') MES1';
  if tpvalor = 'Saldo' then
  begin
    result := result + ',sum('+tabela+'.vlsaldo) valor '
  end
  else
  begin
    result := result + ',sum('+tabela+'.vl'+tabela+') valor ';
  end;
  result := result +
            'from '+tabela+' ';
  if tabela = _ordcompra+_autpagto then
  begin
    result := result + 'left join ordcompra o on o.cdordcompra='+_ordcompra+_autpagto+'.cdordcompra and o.cdempresa='+_ordcompra+_autpagto+'.cdempresa ';
  end;
  if tabela = _pedidoduplicata then
  begin
    result := result + 'left join pedido on pedido.cdempresa='+tabela+'.cdempresa and pedido.cdpedido='+tabela+'.cdpedido '+
                       'left join stpedido on stpedido.cdempresa=pedido.cdempresa and stpedido.cdstpedido=pedido.cdstpedido ';
  end;
  result := Result + 'LEFT JOIN MES M ON M.CDMES=extract(month FROM '+tabela+'.'+getnmdata(tpdata)+') '+
            'where '+tabela+'.cdempresa='+empresa.cdempresa.tostring+' and '+tabela+'.'+getnmdata(tpdata)+getdata+' ';
  if tabela = _pedidoduplicata then
  begin
    result := result + 'and stpedido.bogerarsaida=''S'' ';
  end;
  if tabela = _ordcompra+_autpagto then
  begin
    result := result + 'and o.cdstordcompra=1 ';
  end;
  result := result +
            'group by extract(YEAR FROM '+tabela+'.'+getnmdata(tpdata)+'),extract(month FROM '+tabela+'.'+getnmdata(tpdata)+'),M.NMMES '+
            'order by extract(YEAR FROM '+tabela+'.'+getnmdata(tpdata)+'),extract(month FROM '+tabela+'.'+getnmdata(tpdata)+'),M.NMMES';
end;

procedure TGerenciador.preencher_tabela_grafico;
begin
  if tpfaixa = 'Diário' then
  begin
    SetTpFaixaDiario;
  end
  else
  begin
    SetTpFaixaMes;
  end;
end;

procedure TGerenciador.processar_autpagto;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(makesqlgrafico(_autpagto));
  try
    while not q.q.Eof do
    begin
      if tpfaixa = 'Mensal' then
      begin
        if c.Locate(_dia, Copy(q.q.fieldbyname(_dia).AsString, 1, 3)+'/'+q.q.fieldbyname(_YEAR+_1).AsString,[]) then
        begin
          c.Edit;
          c.FieldByName(_vlautpagto).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
          if (tpgrafico = 'Saldo (Receitas - Despesas)') or (tpgrafico = 'Acumulado (Receita - Despesa)') then
          begin
            c.FieldByName(_valor).AsCurrency := c.FieldByName(_valor).AsCurrency - q.q.fieldbyname(_valor).AsCurrency
          end
          else
          begin
            c.FieldByName(_vldespesa).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
          end;
          c.Post;
        end;
      end
      else if c.Locate(_dia, q.q.fieldbyname(_dia).AsString,[]) then
      begin
        c.Edit;
        c.FieldByName(_vlautpagto).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
        if (tpgrafico = 'Saldo (Receitas - Despesas)') or (tpgrafico = 'Acumulado (Receita - Despesa)') then
        begin
          c.FieldByName(_valor).AsCurrency := c.FieldByName(_valor).AsCurrency - q.q.fieldbyname(_valor).AsCurrency
        end
        else
        begin
          c.FieldByName(_vldespesa).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
        end;
        c.Post;
      end;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TGerenciador.Processar_Duplicata;
var
  q : tclassequery;
begin
  q := tclassequery.create(makesqlgrafico(_duplicata));
  try
    while not q.q.Eof do
    begin
      if tpfaixa <> 'Diário' then
      begin
        if c.Locate(_dia, Copy(q.q.fieldbyname(_dia).AsString, 1, 3)+'/'+q.q.fieldbyname(_YEAR+_1).AsString,[]) then
        begin
          c.Edit;
          c.FieldByName(_vlduplicata).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
          if (tpgrafico = 'Saldo (Receitas - Despesas)') or (tpgrafico = 'Acumulado (Receita - Despesa)') then
          begin
            c.FieldByName(_valor).AsCurrency := c.FieldByName(_valor).AsCurrency + q.q.fieldbyname(_valor).AsCurrency
          end
          else
          begin
            c.FieldByName(_vlreceita).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
          end;
          c.Post;
        end;
      end
      else if c.Locate(_dia, q.q.fieldbyname(_dia).AsString,[]) then
      begin
        c.Edit;
        c.FieldByName(_vlduplicata).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
        if (tpgrafico = 'Saldo (Receitas - Despesas)') or (tpgrafico = 'Acumulado (Receita - Despesa)') then
        begin
          c.FieldByName(_valor).AsCurrency := c.FieldByName(_valor).AsCurrency + q.q.fieldbyname(_valor).AsCurrency
        end
        else
        begin
          c.FieldByName(_vlreceita).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
        end;
        c.Post;
      end;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TGerenciador.processar_ordcompra;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(makesqlgrafico(_ordcompra+_autpagto));
  try
    while not q.q.Eof do
    begin
      if tpfaixa = 'Mensal' then
      begin
        if c.Locate(_dia, Copy(q.q.fieldbyname(_dia).AsString, 1, 3)+'/'+q.q.fieldbyname(_YEAR+_1).AsString,[]) then
        begin
          c.Edit;
          c.FieldByName(_vlordcompra).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
          if (tpgrafico = 'Saldo (Receitas - Despesas)') or (tpgrafico = 'Acumulado (Receita - Despesa)') then
          begin
            c.FieldByName(_valor).AsCurrency := c.FieldByName(_valor).AsCurrency - q.q.fieldbyname(_valor).AsCurrency
          end
          else
          begin
            c.FieldByName(_vldespesa).AsCurrency := c.FieldByName(_vldespesa).AsCurrency + q.q.fieldbyname(_valor).AsCurrency;
          end;
          c.Post;
        end;
      end
      else if c.Locate(_dia, q.q.fieldbyname(_dia).AsString,[]) then
      begin
        c.Edit;
        c.FieldByName(_vlordcompra).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
        if (tpgrafico = 'Saldo (Receitas - Despesas)') or (tpgrafico = 'Acumulado (Receita - Despesa)') then
        begin
          c.FieldByName(_valor).AsCurrency := c.FieldByName(_valor).AsCurrency - q.q.fieldbyname(_valor).AsCurrency
        end
        else
        begin
          c.FieldByName(_vldespesa).AsCurrency := c.FieldByName(_vldespesa).AsCurrency + q.q.fieldbyname(_valor).AsCurrency;
        end;
        c.Post;
      end;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TGerenciador.processar_pedido;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create(makesqlgrafico(_pedidoduplicata));
  try
    while not q.q.Eof do
    begin
      if tpfaixa <> 'Diário' then
      begin
        if c.Locate(_dia, Copy(q.q.fieldbyname(_dia).AsString, 1, 3)+'/'+q.q.fieldbyname(_YEAR+_1).AsString,[]) then
        begin
          c.Edit;
          c.FieldByName(_vlpedido).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
          if (tpgrafico = 'Saldo (Receitas - Despesas)') or (tpgrafico = 'Acumulado (Receita - Despesa)') then
          begin
            c.FieldByName(_valor).AsCurrency := c.FieldByName(_valor).AsCurrency + q.q.fieldbyname(_valor).AsCurrency
          end
          else
          begin
            c.FieldByName(_vlreceita).AsCurrency := c.FieldByName(_vlreceita).AsCurrency + q.q.fieldbyname(_valor).AsCurrency;
          end;
          c.Post;
        end;
      end
      else if c.Locate(_dia, q.q.fieldbyname(_dia).AsString,[]) then
      begin
        c.Edit;
        c.FieldByName(_vlpedido).AsCurrency := q.q.fieldbyname(_valor).AsCurrency;
        if (tpgrafico = 'Saldo (Receitas - Despesas)') or (tpgrafico = 'Acumulado (Receita - Despesa)') then
        begin
          c.FieldByName(_valor).AsCurrency := c.FieldByName(_valor).AsCurrency + q.q.fieldbyname(_valor).AsCurrency
        end
        else
        begin
          c.FieldByName(_vlreceita).AsCurrency := c.FieldByName(_vlreceita).AsCurrency + q.q.fieldbyname(_valor).AsCurrency;
        end;
        c.Post;
      end;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TGerenciador.SetDataSet;
begin
  c.close;
  c.FieldDefs.clear;
  c.IndexDefs.clear;
  AdicionarCampo;
  c.IndexDefs.Add(_pk, _dia, [ixPrimary]);
  c.IndexName := _pk;
  c.CreateDataSet;
  c.Open;
  preencher_tabela_grafico;
  if graficoUm then
  begin
    GraficoDespesa;
  end;
  if graficoDois then
  begin
    graficoReceita;
  end;
  if tpgrafico = 'Acumulado (Receita - Despesa)' then
  begin
    graficoAcumulado;
  end;
end;

procedure TGerenciador.SetTpFaixaDiario;
var
  dti_ : TDate;
begin
  dti_ := dti;
  while dti_ <= dtf do
  begin
    c.Insert;
    if graficoUm then
    begin
      c.FieldByName(_valor).AsCurrency := 0;
    end;
    if (tpgrafico = 'Receitas') or (tpgrafico = 'Receitas X Despesas') then
    begin
      c.FieldByName(_vlduplicata).AsCurrency := 0;
    end;
    c.FieldByName(_dia).AsDateTime := dti_;
    c.Post;
    dti_ := dti_ + 1;
  end;
end;

procedure TGerenciador.SetTpFaixaMes;
var
  dti_ : TDate;
  mes : string;
begin
  dti_ := dti;
  mes := '';
  while dti_ <= dtf do
  begin
    if mes <> UpperCase(RetiraAcentos(FormatDateTime(_mmm+'/'+_YYYY, dti_))) then
    begin
      c.Append;
      if graficoUm then
      begin
        c.FieldByName(_valor).AsCurrency := 0;
      end;
      if (tpgrafico = 'Receitas') or (tpgrafico = 'Receitas X Despesas') then
      begin
        c.FieldByName(_vlduplicata).AsCurrency := 0;
      end;
      c.FieldByName(_dia).Asstring := UpperCase(RetiraAcentos(FormatDateTime(_mmm+'/'+_YYYY, dti_)));
      c.Post;
      mes := UpperCase(RetiraAcentos(FormatDateTime(_mmm+'/'+_YYYY, dti_)));
    end;
    dti_ := dti_ + 1;
  end;
end;

procedure TGerenciador.graficoAcumulado;
begin
  c.First;
  if bosaldoconta = _S then
  begin
    vlsaldoconta := getSaldo;
  end
  else
  begin
    vlsaldoconta := 0;
  end;
  while not c.Eof do
  begin
    vlsaldoconta := vlsaldoconta + c.fieldbyname(_valor).ascurrency;
    c.Edit;
    c.fieldbyname(_valor).ascurrency := vlsaldoconta;
    c.Post;
    c.Next;
  end;
end;

procedure TGerenciador.GraficoDespesa;
begin
  processar_autpagto;
  if bopedidoordcompra = _S then
  begin
    processar_ordcompra;
  end;
end;

procedure TGerenciador.graficoReceita;
begin
  processar_duplicata;
  if bopedidoordcompra = _S then
  begin
    processar_pedido;
  end;
end;

end.
