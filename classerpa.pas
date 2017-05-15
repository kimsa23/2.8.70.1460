unit classerpa;

interface

uses
  System.Actions, System.UITypes,
  classes, sysutils, dialogs, controls, math,
  sqlexpr, dbclient,
  unumero, ustrings, udatahora, uconstantes, uregistro,
  classeentrada, classeexecutasql, classegerar, classeempresa, classeretornasql,
  classeregistrainformacao, classeAplicacao, classequery;

type
  TRPA = class(tobject)
  private
  public
    constructor create              ;
    function    gerar_autpagto      (cds: TClientDataSet): boolean;
    function    remover_autpagto    (cdrpa, cdautpagto:string): boolean;
    procedure   setrecord           (codigo:string);
    function    ValordoAdiantamento (cdrpa:string):currency;
    function    ValorINSS           (cdproprietario:string; vlfrete:currency; dtemissao:TDate; codigo, tabela:string; boglobal:boolean=false):currency;
    function    ValorIRRF          (cdproprietario:string; vlfrete:currency; var vlbaseirrf:currency; dtemissao:TDate; codigo, tabela:string):currency;
    function    ValorSestSenat      (vlfrete:currency; dtemissao:TDate):currency;
  end;

implementation

uses DB;

function TRPA.ValorINSS(cdproprietario:string; vlfrete:currency; dtemissao:TDate; codigo, tabela:string; boglobal:boolean=false):currency;
  function makesql:string;
  begin
    if tabela = _rpa then
    begin
      result := 'select sum(r.vlinss) vlinss '+
                'from rpa r '+
                'inner join transportadora t on t.cdtransportadora=r.cdproprietario and r.cdempresa=t.cdempresa '+
                'where r.cdempresa='+empresa.cdempresa.tostring+' '+
                'and t.tppessoa=''F'' and r.cdproprietario='+cdproprietario+' '+
                'and r.dtemissao between '+GetdtBanco(Primeiro_dia_mes(dtemissao))+' and '+GetDtBanco(Ultimo_Dia_Mes(dtemissao))+' '+
                'and r.cdrpa<>'+codigo;
    end
    else if tabela = _cte then
    begin
      result := 'select sum(r.vlinss) vlinss '+
                'from cte c '+
                'inner join ctetransportadora r on r.cdcte=c.cdcte and r.cdempresa=c.cdempresa '+
                'inner join transportadora t on t.cdtransportadora=r.cdproprietario and r.cdempresa=t.cdempresa '+
                'where r.cdempresa='+empresa.cdempresa.tostring+' and t.tppessoa=''F'' and r.cdproprietario='+cdproprietario+' '+
                'and c.dtemissao between '+GetdtBanco(Primeiro_dia_mes(dtemissao))+' and '+GetDtBanco(Ultimo_Dia_Mes(dtemissao))+' '+
                'and r.cdcte<>'+codigo;
    end;
  end;
var
  q : TClasseQuery;
  vlinss_global, vlinss, vlbaseinss : currency;
begin
  result := 0;
  if cdproprietario = '' then
  begin
    Exit;
  end;
  q := TClasseQuery.create('select PRBASEINSS,PRINSS,vlinss from tabirpf where dtemissao<='+getdtbanco(dtemissao)+' order by dtemissao desc');
  try
    vlinss_global := RetornaSQLCurrency(makesql);
    result        := vlinss_global;
    vlbaseinss := vlfrete    * q.q.fieldbyname(_pr+_base+_inss).AsCurrency / 100;
    vlinss     := vlbaseinss * q.q.fieldbyname(_pr+_inss).AsCurrency       / 100;
    if result >= q.q.fieldbyname(_vlinss).AsCurrency then
    begin
      result := 0;
      exit;
    end;
    if result + vlinss = q.q.Fieldbyname(_vlinss).AsCurrency then
    begin
      result := result + vlinss;
      exit;
    end;
    if result + vlinss > q.q.fieldbyname(_vlinss).AsCurrency then
    begin
      result := q.q.fieldbyname(_vlinss).AsCurrency - result
    end
    else
    begin
      result := vlinss;
    end;
    if boglobal then
    begin
      result := result + vlinss_global;
    end;
  finally
    FreeAndNil(q);
    result := RoundTo(result, -2);
  end;
end;

function TRPA.ValorSestSenat(vlfrete:currency; dtemissao:TDate):currency;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select PRBASEINSS,PRSESTSENAT from tabirpf where dtemissao<='+getdtbanco(dtemissao)+' order by dtemissao desc');
  try
    result := RoundTo((vlfrete * q.q.fieldbyname(_pr+_base+_inss).AsFloat / 100) * q.q.fieldbyname(_pr+_sestsenat).AsFloat / 100, -2);
  finally
    freeandnil(q);
  end;
end;

function TRPA.ValorIRRF(cdproprietario:string; vlfrete:currency; var vlbaseirrf:currency; dtemissao:TDate; codigo, tabela:string):currency;
  function ValorIRPF_cte(vlfrete:currency; nudependente: integer; dtemissao:TDate):currency;
  var
    q : TClasseQuery;
    vlbaseirpf, vlinss, vlbasecalculo, vldependente : currency;
    cdtabirpf : string;
  begin
    q := TClasseQuery.create('select cdtabirpf'+
                      ',VLDEPENDENTE'+
                      ',PRBASECALCULOIR '+
                'from tabirpf '+
                'where dtemissao<='+getdtbanco(dtemissao)+' '+
                'order by dtemissao desc');
    try
      vlbasecalculo := vlfrete * q.q.fieldbyname(_pr+_base+_calculo+_ir).AsCurrency / 100;
      vldependente  := q.q.fieldbyname(_vl+_dependente).AsCurrency * nudependente;
      vlinss        := ValorINSS(cdproprietario, vlfrete, dtemissao, codigo, tabela, true);
      vlbaseirpf    := vlbasecalculo - vldependente - vlinss;
      if q.q.fieldbyname(_cd+_tabirpf).Asstring = '' then
      begin
        Result := 0;
        Exit;
      end;
      cdtabirpf  := q.q.fieldbyname(_cd+_tabirpf).Asstring;
      q.q.close;
      q.q.sql.text := 'select alittabirpf,vldeducao from ittabirpf where cdtabirpf='+cdtabirpf+' and vlittabirpf>'+getcurrencys(vlbaseirpf)+' order by vlittabirpf';
      q.q.open;
      if q.q.Fieldbyname(_al+_it+_tabirpf).AsCurrency = 0 then
      begin
        result := 0
      end
      else
      begin
        result := (vlbaseirpf * q.q.fieldbyname(_al+_it+_tabirpf).AsCurrency / 100) - q.q.fieldbyname(_vldeducao).AsCurrency;
      end;
    finally
      freeandnil(q);
    end;
  end;
  function makesql:string;
  begin
    if tabela = _rpa then
    begin
      result := 'select sum(r.vlfrete) vlfrete' +
                      ',sum(r.vlirrf) vlirrf '+
                'from rpa r '+
                'inner join transportadora t on t.cdtransportadora=r.cdproprietario and t.cdempresa=r.cdempresa '+
                'where t.tppessoa=''F'' and r.cdempresa='+empresa.cdempresa.tostring+' and r.cdproprietario='+cdproprietario+' '+
                'and r.dtemissao between '+GetDtBanco(Primeiro_dia_mes(dtemissao))+' and '+GetDtBanco(Ultimo_Dia_Mes(dtemissao))+' '+
                'and r.cdrpa<>'+codigo;
    end
    else if tabela = _cte then
    begin
      result := 'select sum(r.vlfrete) vlfrete' +
                      ',sum(r.vlirrf) vlirrf '+
                'from ctetransportadora r '+
                'inner join cte c on c.cdcte=r.cdcte and c.cdempresa=r.cdempresa '+
                'inner join transportadora t on t.cdtransportadora=r.cdproprietario and t.cdempresa=r.cdempresa '+
                'where t.tppessoa=''F'' and r.cdempresa='+empresa.cdempresa.tostring+' '+
                'and r.cdproprietario='+cdproprietario+' '+
                'and c.dtemissao between '+GetDtBanco(Primeiro_dia_mes(dtemissao))+' and '+GetDtBanco(Ultimo_Dia_Mes(dtemissao))+' '+
                'and r.cdcte<>'+codigo;
    end;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(makesql);
  try
    vlfrete    := vlfrete + q.q.fieldbyname(_vlfrete).AsCurrency;
    result     := ValorIRPF_cte(vlfrete, InteirodoCodigo(_transportadora, cdproprietario, _nudependentes), dtemissao);
    result     := result - q.q.fieldbyname(_vlirrf).AsCurrency;
    vlbaseirrf := vlfrete;
    if result < 0 then
    begin
      result := 0;
    end;
    result := RoundTo(result, -2);
  finally
    freeandnil(q);
  end;
end;

function TRPA.ValordoAdiantamento(cdrpa:string):currency;
begin
  Result := RetornaSQLCurrency('select sum(a.vlautpagto) '+
                                     'from itautrpa i '+
                                     'inner join autpagto a on a.cdautpagto=i.cdautpagto and i.cdempresa=a.cdempresa '+
                                     'where a.cdempresa='+empresa.cdempresa.tostring+' and a.cdfornecedor=5839 and i.cdrpa='+cdrpa);
end;

procedure TRPA.setrecord(codigo: string);
var
  q : TClasseQuery;
begin
  if (codigo = '') or (codigo = _0) then
  begin
    exit;
  end;
  q := TClasseQuery.Create(QRetornaSQL.get_select_from(_tp+_rpa, codigo));
  try
  finally
    freeandnil(q);
  end;
end;

constructor TRPA.create;
begin
end;

function TRPA.gerar_autpagto(cds: TClientDataSet): boolean;
  function codigo_transportadora_como_fornecedor:string;
  var
    nucnpj, nucpf, tppessoa: string;
  begin
    tppessoa := NomedoCodigo(_transportadora, cds.fieldbyname(_cdtransportadora).AsString, _tppessoa);
    if tppessoa = _j then
    begin
      nucnpj := NomedoCodigo(_transportadora, cds.fieldbyname(_cdtransportadora).AsString, _nucnpj);
      result := CodigodoCampo(_fornecedor, nucnpj, _nucnpj);
    end
    else if tppessoa = _F then
    begin
      nucpf  := NomedoCodigo(_transportadora, cds.fieldbyname(_cdtransportadora).AsString, _nucpf);
      result := CodigodoCampo(_fornecedor, nucpf, _nucpf);
    end;
  end;
  function gerar_fornecedor_a_partir_transportadora:string;
  var
    s : TClasseQuery;
    sql : string;
    function get_cdfornecedor:string;
    begin
      if s.q.FieldByName(_nucnpj).AsString <> '' then
      begin
        result := removercaracteres(s.q.fieldbyname(_nucnpj).AsString)
      end
      else if s.q.FieldByName(_nucpf).AsString  <> '' then
      begin
        result := removercaracteres(s.q.fieldbyname(_nucpf).AsString);
      end;
    end;
  begin
    s := TClasseQuery.Create(QRetornaSQL.get_select_from(_transportadora, cds.fieldbyname(_cdtransportadora).AsString));
    try
      result := get_cdfornecedor;
      if result = '' then
      begin
        MessageDlg('CNPJ ou CPF está vazio no cadastro da Transportadora.', mtInformation, [mbOK], 0);
        abort;
      end;
      sql := 'insert into fornecedor(cdfornecedor,CDUF,CDMUNICIPIO,'+
              'NMFORNECEDOR,RZSOCIAL,DSENDERECO,NMBAIRRO,NUCEP,NUCXPOSTAL,NUFONE1,NUFONE2,'+
              'NUFONE3,NUFAX,TPPESSOA,NUINSCEST,NUCNPJ,NUCPF,NUIDENTID,DTNASCIMENTO,CDSEXO,'+
              'CDESTCIVIL,NMMAE,NMPAI,NMCONJUGE,EMAIL,HOMEPAGE,DSOBSERVACAO,DSNUMERO,DSCOMPLEMENTO,'+
              'BONENVIARPDF,CDPAIS,CDSTFORNECEDOR,'+_sqlreg+
        result+','+
        getnull(s.q.fieldbyname(_cduf).AsString)         +','+
        getnull(s.q.fieldbyname(_CDMUNICIPIO).AsString)  +','+
        getnull(s.q.fieldbyname(_nmtransportadora).AsString,_string) +','+
        getnull(s.q.fieldbyname(_RZSOCIAL).AsString,_string)     +','+
        getnull(s.q.fieldbyname(_DSENDERECO).AsString,_string)   +','+
        getnull(s.q.fieldbyname(_NMBAIRRO).AsString,_string)     +','+
        getnull(s.q.fieldbyname(_NUCEP).AsString,_string)        +','+
        getnull(s.q.fieldbyname(_NUCXPOSTAL).AsString,_string)   +','+
        getnull(s.q.fieldbyname(_NUFONE1).AsString,_string)      +','+
        getnull(s.q.fieldbyname(_NUFONE2).AsString,_string)      +','+
        getnull(s.q.fieldbyname(_NUFONE3).AsString,_string)      +','+
        getnull(s.q.fieldbyname(_NUFAX).AsString,_string)        +','+
        getnull(s.q.fieldbyname(_TPPESSOA).AsString,_string)     +','+
        getnull(s.q.fieldbyname(_NUINSCEST).AsString,_string)    +','+
        getnull(s.q.fieldbyname(_NUCNPJ).AsString,_string)       +','+
        getnull(s.q.fieldbyname(_NUCPF).AsString,_string)        +','+
        getnull(s.q.fieldbyname(_NUIDENTID).AsString,_string)    +','+
        GetDtBanco(s.q.fieldbyname(_DTNASCIMENTO).AsDateTime)    +','+
        getnull(s.q.fieldbyname(_CDSEXO).AsString,_string)       +','+
        getnull(s.q.fieldbyname(_CDESTCIVIL).AsString,_string)   +','+
        getnull(s.q.fieldbyname(_NMMAE).AsString,_string)        +','+
        getnull(s.q.fieldbyname(_NMPAI).AsString,_string)        +','+
        getnull(s.q.fieldbyname(_NMCONJUGE).AsString,_string)    +','+
        getnull(s.q.fieldbyname(_EMAIL).AsString,_string)        +','+
        getnull(s.q.fieldbyname(_HOMEPAGE).AsString,_string)     +','+
        getnull(s.q.fieldbyname(_DSOBSERVACAO).AsString,_string) +','+
        getnull(s.q.fieldbyname(_DSNUMERO).AsString,_string)     +','+
        getnull(s.q.fieldbyname(_DSCOMPLEMENTO).AsString,_string)+','+
        getnull(s.q.fieldbyname(_BONENVIARPDF).AsString,_string) +','+
        getnull(s.q.fieldbyname(_CDPAIS).AsString)       +','+
        inttostr(qregistro.Codigo_status_novo(_fornecedor))+','+SQLRegistra;
      ExecutaSQL(sql);
    finally
      freeandnil(s);
    end;
  end;
var
  cdfornecedor : string;
  function gerar_contas_a_pagar:boolean;
  var
    cdautpagto : string;
    valor : Currency;
  begin
    valor      := cds.fieldbyname(_vlsaldo).AsCurrency;
    cdautpagto := GerarCodigo(_autpagto);
    ExecutaSQL('insert into autpagto(CDAUTPAGTO,CDFORNECEDOR,CDSTAUTPAGTO,'+
       'NUAUTPAGTO,DTEMISSAO,DTENTRADA,DTVENCIMENTO,DTPRORROGACAO,'+
       'VLAUTPAGTO,VLSALDO,VLBAIXA,VLPREVISTO,VLDESCONTO,VLMULTA,VLDEVOLUCAO,VLABATIMENTO,VLDEDUCAO,VLACRESCIMO,VLJUROS,VLRECEBIDO,PRMORADIARIA,PRMULTA,'+
       'DSHISTORICO,'+_sqlreg+
       cdautpagto  +','+
       cdfornecedor+','+
       inttostr(qregistro.Codigo_status_novo(_autpagto))+','+
       cdautpagto  +','+
       QuotedStr(DtBancos)+','+
       QuotedStr(DtBancos)+','+
       QuotedStr(DtBancos)+','+
       QuotedStr(DtBancos)+','+
       getcurrencys(valor)+','+
       getcurrencys(valor)+','+
       '0,0,0,0,0,0,0,0,0,0,0,0,'+
       QuotedStr('Pagto de Frete do RPA '+cds.fieldbyname(_cd+_rpa).AsString)+','+SQLRegistra);
    ExecutaSQL('update rpa set cdautpagto='+cdautpagto+',cdstrpa=2 where cdempresa='+empresa.cdempresa.tostring+' and cdrpa='+cds.fieldbyname(_cd+_rpa).AsString);
    result := True;
  end;
begin
  if cds.fieldbyname(_vlfrete).AsCurrency = 0 then
  begin
    result := false;
    Exit;
  end;
  cdfornecedor := codigo_transportadora_como_fornecedor;
  if cdfornecedor = '' then
  begin
    cdfornecedor := gerar_fornecedor_a_partir_transportadora;
  end;
  result := gerar_contas_a_pagar;
end;

function TRPA.remover_autpagto(cdrpa, cdautpagto:string): boolean;
var
  sql : TStrings;
  entrada : TEntrada;
begin
  entrada := tentrada.create;
  sql := TStringList.Create;
  try
    if entrada.ExisteBaixaConta(cdautpagto) then
    begin
      MessageDlg('Existe baixa do contas a Pagar.'#13'Remova a baixa para continuar.', mtInformation, [mbok], 0);
      Abort;
    end;
    sql.Add('update rpa set cdautpagto=null,cdstrpa=1 where cdempresa='+empresa.cdempresa.tostring+' and cdrpa='+cdrpa+';');
    sql.Add('delete from autpagto where cdempresa='+empresa.cdempresa.tostring+' and cdautpagto='+cdautpagto+';');
    result := ExecutaScript(sql);
  finally
    sql.Free;
    entrada.Free;
  end;
end;

end.
