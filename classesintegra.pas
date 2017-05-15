unit classesintegra;

interface

uses
  System.Actions, System.UITypes,
  forms, controls, dialogs, sysutils, classes, gauges,
  uRichEdit, uprogressbar, ustrings, uconstantes, uregistro,
  classequery, classeaplicacao, classeretornasql, classeempresa;

type
  TImposto = record
    vl, al, vlbase, vlisentas, vloutras: currency;
  end;
  TNota = record
    ipicfop, icmscfop, stcfop, icms, st, ipi: timposto;
    vltotal, vlproduto, vldesconto, vlfrete, vlseguro, vloutdespesa : Currency;
  end;
  TDado = record
    cddocumento  : string;
    nudocumento  : string;
    nuserie      : string;
    cdcfop       : string;
    dtemissao    : string;
    nuseriefrete : string;
    tpemitente   : string;
    nusubserie   : string;
    cdtpfrete    : string;
    nudocfiscalicms : string;
    tpsaidaentrada  : string;
  end;
  TItem = record
    cdproduto : string;
    qtitem    : string;
    nucst     : string;
  end;
  TSintegra = class(tobject)
  private
    dado : TDado;
    item : TItem;
    nota : tnota;
    dti, dtf : TDate;
    erro, linha, reg61, reg61r, reg60m, reg50, reg51, reg53, reg54, reg70, reg71, reg74, reg75 : TStrings;
    c, ccte, cit, csaida, centrada : TClasseQuery;
    cdlp1a : string;
    cdprodutoanterior: string;
    nucnpj : string;
    nuinscest : string;
    sguf : string;
    cdcfopanterior: string;
    reg90 : string;
    vlbaseicmssubtribs : string;
    vltotalcfop : currency;
    i : Integer;
    totalitens : Integer;
    procedure Registro10;
    procedure Registro11;
    procedure Registro50(cdcfop:string);
    procedure Registro51(cdcfop:string);
    procedure Registro53(cdcfop:string);
    procedure Registro54;
    procedure Registro70(cdcfop:string);
    procedure Registro7071;
    procedure Registro74;
    procedure Registro75;
    procedure Registro60a(dtemissao:TDate; nuserie:string);
    procedure Registro60m;
    procedure Registro61;
    procedure Registro61r;
    function  FormatarDecimal (valor : Extended; Tamanho: Integer): String; // Formata o valor decimal com 3 casas para string
    function  FormatarMoeda   (valor : Currency; Tamanho: Integer): String; // Formata o valor moeda para string
    function  FormatarAliquota(valor : Currency; Tamanho: Integer): String; // Formata o valor de aliquota para string
    function  SelecionarQuery: TClasseQuery; // Seleciona a query com a data mais recente
    procedure DefinirSQLItem(codigo: String); // Define o select para o tipo de documento
    function  makesqlsaida:string;
    function  makesqlentrada:string;
    procedure zerar_valores;
    procedure inicializar_contadores;
    procedure setreg90;
    procedure Salvar_arquivo;
    procedure set_progressbar;
    procedure Nota_fiscal_cancelada;
    procedure Set_nota_Dados;
    procedure set_nota_emitente;
    procedure processar_itens;
    function  nota_cancelada:Boolean;
    function  nota_conhecimento_transporte:Boolean;
    function get_nucst: string;
    function get_nudocumento: string;
    function get_nusubserie: string;
    function aliquota(tp: string): string;
    function itemexiste(cdproduto: string): boolean;
  public
    constructor create(datai, dataf: TDate);
    destructor  destroy; override;
    function    gerar:boolean;
  end;

Function Gerar_Sintegra(cdlp1a:string; dti, dtf: TDate):boolean;

implementation

Function Gerar_Sintegra(cdlp1a:string; dti, dtf: TDate):boolean;
var
  sintegra : TSintegra;
begin
  result   := False;
  sintegra := TSintegra.create(dti, dtf);
  try
    sintegra.cdlp1a := cdlp1a;
    if sintegra.gerar then
    begin
      sintegra.Salvar_arquivo;
      result := True;
    end;
  finally
    sintegra.Destroy;
  end;
end;

procedure TSintegra.setreg90;
begin
  reg90 := _90+FormatarTextoDireita (removercaracteres(empresa.nucnpj), 14)+FormatarTextoDireita (removercaracteres(empresa.nuinscest), 14)+
           _50+FormatarTextoEsquerda(inttostr(reg50.Count), 8, _0)+
           _51+FormatarTextoEsquerda(inttostr(reg51.Count), 8, _0)+
           _53+formatartextoesquerda(IntToStr(reg53.count), 8, _0)+
           _54+FormatarTextoEsquerda(inttostr(reg54.Count), 8, _0);
  if reg60m.count > 0 then
  begin
    reg90 := reg90 + _60+FormatarTextoEsquerda(inttostr(reg60m.Count), 8, _0);
  end;
  if reg61.Count  > 0 then
  begin
    reg90 := reg90 + _61+formatartextoesquerda(IntToStr(reg61.Count+reg61R.Count), 8, _0);
  end;
  reg90 := reg90 + _70+FormatarTextoEsquerda(inttostr(reg70.Count), 8, _0);
  if reg71.count > 0 then
  begin
    reg90 := reg90 + _71+formatartextoesquerda(IntToStr(reg71.Count), 8, _0);
  end;
  if reg74.Count > 0 then
  begin
    reg90 := reg90 + _74+FormatarTextoEsquerda(inttostr(reg74.Count), 8, _0);
  end;
  reg90 := reg90 + _75+FormatarTextoEsquerda(inttostr(reg75.Count), 8, _0);
  if Length(reg90) = 120 then
  begin
    reg90 := reg90 + espaco(5)+_2;
    linha.add(reg90);
    reg90 := _90+FormatarTextoDireita (removercaracteres(empresa.nucnpj), 14)+FormatarTextoDireita (removercaracteres(empresa.nuinscest), 14)+
             _99+FormatarTextoEsquerda(inttostr(reg50.count+
                                                reg51.count+
                                                reg53.count+
                                                reg54.count+
                                                reg60m.count+
                                                reg61.Count+
                                                reg61r.Count+
                                                reg70.Count+
                                                reg71.count+
                                                reg74.count+
                                                reg75.count+4), 8, _0)+
                 espaco(85)+_2;
    linha.add(reg90);
  end
  else
  begin
    reg90 := reg90 + _99+FormatarTextoEsquerda(inttostr(reg50.count+
                                                      reg51.count+
                                                      reg53.count+
                                                      reg54.count+
                                                      reg60m.count+
                                                      reg61.Count+
                                                      reg61r.Count+
                                                      reg70.Count+
                                                      reg71.count+
                                                      reg74.count+
                                                      reg75.count+3), 8, _0);
    reg90 := reg90 + espaco(125-Length(reg90))+_1;
    linha.add(reg90);
  end;
end;

procedure TSintegra.inicializar_contadores;
begin
  zerar_valores;
  nota.icmscfop.al := 0;
  if cit.q.RecordCount > 0 then
  begin
    cdcfopanterior := '';
    exit;
  end;
  vltotalcfop          := c.q.fieldbyname(_vltotal).AsCurrency;
  nota.icmscfop.vlbase := c.q.fieldbyname(_vlbaseicms).AsCurrency;
  nota.icmscfop.vl     := c.q.fieldbyname(_vlicms).AsCurrency;
  nota.icmscfop.al     := c.q.fieldbyname(_alicms).AsCurrency;

  nota.stcfop.vlbase   := c.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency;
  nota.stcfop.vl       := c.q.fieldbyname(_vlicmssubtrib).AsCurrency;
  nota.stcfop.vloutras := c.q.fieldbyname(_vlfrete).AsCurrency+
                          c.q.fieldbyname(_vloutdespesa).AsCurrency+
                          c.q.fieldbyname(_vlseguro).AsCurrency;
  nota.stcfop.al       := c.q.fieldbyname(_alicmssubtrib).AsCurrency;

  nota.ipicfop.vlbase    := c.q.fieldbyname(_vlbaseipi).AsCurrency;
  nota.ipicfop.vl        := c.q.fieldbyname(_vlipi).AsCurrency;
  nota.ipicfop.vloutras  := c.q.fieldbyname(_vloutipi).AsCurrency;
end;

procedure TSintegra.zerar_valores;
begin
  vltotalcfop            := 0;

  nota.icmscfop.vlbase   := 0;
  nota.icmscfop.vl       := 0;
  nota.icmscfop.vloutras := 0;
  nota.icmscfop.vlisentas:= 0;

  nota.stcfop.vlbase   := 0;
  nota.stcfop.vl       := 0;
  nota.stcfop.vloutras := 0;

  nota.ipicfop.vlbase    := 0;
  nota.ipicfop.vl        := 0;
  nota.ipicfop.vloutras  := 0;
end;

function TSintegra.makesqlentrada:string;
begin
  result := 'select e.cdentrada cddocumento'+
                  ',e.nuentrada nudocumento'+
                  ', ''00'' nustdocumento'+
                  ',e.dtsaida dtemissao'+
                  ',e.nudocfiscalicms'+
                  ',e.vltotal'+
                  ',e.vlfrete'+
                  ',e.vlseguro'+
                  ',e.vloutdespesa'+
                  ',e.vldesconto'+
                  ',e.vlbaseicms'+
                  ',e.vlicms'+
                  ',e.vlipi'+
                  ',e.vlbaseipi'+
                  ',e.vlbaseicmssubtrib'+
                  ',e.vlicmssubtrib'+
                  ',e.nuserie'+
                  ',e.nusubserie'+
                  ',e.cdtpfrete'+
                  ',e.cdcfop'+
                  ',e.cdfornecedor'+
                  ',f.nucnpj nucnpjf'+
                  ',f.nuinscest nuinscestf'+
                  ',f.tppessoa tppessoaf'+
                  ',f.nucpf nucpff'+
                  ',uff.sguf sguff'+
                  ',e.cdcliente'+
                  ',c.nucnpj nucnpjc'+
                  ',c.nuinscest nuinscestc'+
                  ',c.tppessoa tppessoac'+
                  ',c.nucpf nucpfc'+
                  ',ufc.sguf sgufc'+
                  ',sum(i.vltotal) vltotalit '+
             'from entrada e '+
             'left join tpentrada tp on tp.cdtpentrada=e.cdtpentrada and e.cdempresa=tp.cdempresa '+
             'left join fornecedor f on e.cdfornecedor=f.cdfornecedor and e.cdempresa=f.cdempresa '+
             'left join uf uff on uff.cduf=f.cduf '+
             'left join cliente c on e.cdcliente=c.cdcliente and e.cdempresa=c.cdempresa '+
             'left join uf ufc on ufc.cduf=c.cduf '+
             'left join itentrada i on e.cdentrada=i.cdentrada and e.cdempresa=i.cdempresa '+
             'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
             'left join tpproduto t on t.cdtpproduto=p.cdtpproduto and p.cdempresa=t.cdempresa '+
             'where t.boservico<>''S'' and e.nudocfiscalicms<>''29'' and e.nudocfiscalicms<>''21'' '+
             'and e.cdempresa='+empresa.cdempresa.tostring+' '+
             'and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
             'group by e.cdentrada'+
                     ',e.cdtpentrada'+
                     ',e.nuentrada'+
                     ',e.dtsaida'+
                     ',e.nudocfiscalicms'+
                     ',e.vltotal'+
                     ',e.vlfrete'+
                     ',e.vlseguro'+
                     ',e.vloutdespesa'+
                     ',e.vldesconto'+
                     ',e.vlbaseicms'+
                     ',e.vlicms'+
                     ',e.vlipi'+
                     ',e.vlbaseipi'+
                     ',e.vlbaseicmssubtrib'+
                     ',e.vlicmssubtrib'+
                     ',e.nuserie'+
                     ',e.nusubserie'+
                     ',e.cdtpfrete'+
                     ',e.cdcfop'+
                     ',e.cdfornecedor'+
                     ',f.nucnpj'+
                     ',f.nuinscest'+
                     ',f.tppessoa'+
                     ',f.nucpf'+
                     ',uff.sguf'+
                     ',e.cdcliente'+
                     ',c.nucnpj'+
                     ',c.nuinscest'+
                     ',c.tppessoa'+
                     ',c.nucpf'+
                     ',ufc.sguf '+
                'order By e.dtsaida,e.nuentrada';
end;

function TSintegra.makesqlsaida:string;
begin
  result := 'select s.cdsaida cddocumento'+
                  ',s.nusaida nudocumento'+
                  ',s.nustdocumento'+
                  ',s.dtemissao'+
                  ',s.nudocfiscalicms'+
                  ',s.tpentsai'+
                  ',s.vltotal'+
                  ',s.vlfrete'+
                  ',s.vlseguro'+
                  ',s.vloutdespesa'+
                  ',s.vldesconto'+
                  ',s.vlbaseicms'+
                  ',s.vlicms'+
                  ',s.vlisentaicms'+
                  ',s.vlouticms'+
                  ',s.vlbaseicmsred'+
                  ',s.vlipi'+
                  ',s.vlbaseipi'+
                  ',s.vlbaseicmssubtrib'+
                  ',s.vlicmssubtrib'+
                  ',se.nuserie nuserie' +
                  ',0 nusubserie'+
                  ',s.cdtpfrete'+
                  ',s.cdcfop'+
                  ',s.cdfornecedor'+
                  ',f.nucnpj nucnpjf'+
                  ',f.nuinscest nuinscestf'+
                  ',f.tppessoa tppessoaf'+
                  ',f.nucpf nucpff'+
                  ',uff.sguf sguff'+
                  ',s.cdcliente'+
                  ',c.nucnpj nucnpjc'+
                  ',c.nuinscest nuinscestc'+
                  ',c.tppessoa tppessoac'+
                  ',c.nucpf nucpfc'+
                  ',ufc.sguf sgufc'+
                  ',sum(i.vltotal) vltotalit '+
             'from saida s '+
             'inner join serie se on se.cdserie=s.cdserie and s.cdempresa=se.cdempresa '+
             'left join fornecedor f on s.cdfornecedor=f.cdfornecedor and f.cdempresa=s.cdempresa '+
             'left join uf uff on uff.cduf=f.cduf '+
             'left join cliente c on s.cdcliente=c.cdcliente and c.cdempresa=s.cdempresa '+
             'left join uf ufc on ufc.cduf=c.cduf '+
             'left join itsaida i on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
             'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
             'left join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
             'where S.cdempresa='+empresa.cdempresa.tostring+' '+
             'and (t.boservico<>''S'' or t.boservico is null) '+
             'and s.nustdocumento<>''05'' '+
             'and s.nustdocumento<>''04'' '+
             'and se.nudocfiscalicms<>''2D'' '+
             'and se.nudocfiscalicms<>''02'' '+
             'and se.boservico<>''S'' '+
             'and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
             'group by s.cdsaida'+
                    ',s.cdtpsaida'+
                    ',s.nusaida'+
                    ',s.nustdocumento'+
                    ',s.dtemissao'+
                    ',s.nudocfiscalicms'+
                    ',s.tpentsai'+
                    ',s.vltotal'+
                    ',s.vlfrete'+
                    ',s.vlseguro'+
                    ',s.vloutdespesa'+
                    ',s.vldesconto'+
                    ',s.vlbaseicms'+
                    ',s.vlbaseicmsred'+
                    ',s.vlicms'+
                    ',s.vlipi'+
                    ',s.vlbaseipi'+
                    ',s.vlisentaicms'+
                    ',s.vlouticms'+
                    ',s.vlisentaipi'+
                    ',s.vloutipi'+
                    ',s.vlbaseicmssubtrib'+
                    ',s.vlicmssubtrib'+
                    ',se.nuserie'+
                    ',s.cdtpfrete'+
                    ',s.cdcfop '+
                    ',s.cdfornecedor'+
                    ',f.nucnpj'+
                    ',f.nuinscest'+
                    ',f.tppessoa'+
                    ',f.nucpf'+
                    ',uff.sguf'+
                    ',s.cdcliente'+
                    ',c.nucnpj'+
                    ',c.nuinscest'+
                    ',c.tppessoa'+
                    ',c.nucpf'+
                    ',ufc.sguf '+
                 'order by s.dtemissao,s.nusaida';
end;

procedure TSintegra.Registro60m;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.sql.text   := QRetornaSQL.get_select_from(_reg+_60+_m)+' where cdempresa='+empresa.cdempresa.tostring+' and dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' order by nuserie,dtemissao';
    q.q.open;
    while not q.q.Eof do
    begin
      if q.q.fieldbyname(_cooinicial).asstring = _0 then
      begin
        erro.Add('Registro 60M está com o COO inicial igual a 0 no dia '+formatdatetime(_dd_mm_yyyy, q.q.fieldbyname(_dtemissao).AsDatetime)+'.');
      end;
      if q.q.fieldbyname(_coofinal).asstring = _0 then
      begin
        erro.Add('Registro 60M está com o COO final igual a 0 no dia '+formatdatetime(_dd_mm_yyyy, q.q.fieldbyname(_dtemissao).AsDatetime)+'.');
      end;
      reg60m.add(_60+_M+
                  FormatDateTime       (_YYYYMMDD, q.q.fieldbyname(_dtemissao).AsDatetime){data emissao}+
                  FormatarTextoDireita (q.q.fieldbyname(_nuserie    ).AsString, 20){numero série}+
                  FormatarTextoEsquerda(q.q.fieldbyname(_nuordseq   ).AsString, 3, _0){número ordem sequencia}+
                  FormatarTextoDireita (q.q.fieldbyname(_mddocfiscal).asstring, 2     ){modelo documento fiscal}+
                  FormatarTextoEsquerda(q.q.fieldbyname(_cooinicial ).asstring, 6, _0){Número Contador Ordem Operação no início dia}+
                  FormatarTextoEsquerda(q.q.fieldbyname(_coofinal   ).asstring, 6, _0){Número Contador Ordem Operação no final dia}+
                  FormatarTextoEsquerda(q.q.fieldbyname(_nureducaoz ).asstring, 6, _0){Número Contador Redução Z}+
                  FormatarTextoEsquerda(q.q.fieldbyname(_nucro      ).asstring, 3, _0){Contador Reinício Operação}+
                  FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, q.q.fieldbyname(_vlbruta).AsCurrency)), 16, _0){Valor da Venda Bruta}+
                  FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, q.q.fieldbyname(_vlequipamento).AsCurrency)), 16, _0){Valor do Totalizador Geral do equipamento}+
                  espaco(37)){brancos};
      Registro60a(q.q.fieldbyname(_dtemissao).AsDatetime, q.q.fieldbyname(_nuserie).asstring);
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TSintegra.Registro60a(dtemissao:TDate; nuserie:string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.open(QRetornaSQL.get_select_from(_reg+_60+_a)+' where cdempresa='+empresa.cdempresa.tostring+' and dtemissao='+getdtbanco(dtemissao)+' and nuserie='+quotedstr(nuserie));
    while not q.q.Eof do
    begin
      reg60m.add(_60A+
                 FormatDateTime       (_YYYYMMDD, q.q.fieldbyname(_dtemissao).AsDatetime){data emissao}+
                 FormatarTextoDireita (q.q.fieldbyname(_nuserie   ).AsString, 20)         {numero série}+
                 FormatarTextoDireita (q.q.fieldbyname(_staliquota).AsString,  4)         {Situação tributaria - aliquota}+
                 FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, q.q.fieldbyname(_vltotalparcial).AsCurrency)), 12, _0){Valor Acumulado no totalizador parcial}+
                 espaco(79)){brancos};
      q.q.next;
    end;
  finally
    q.free;
  end;
end;

procedure TSintegra.DefinirSQLItem(codigo: String);
  function makesql:string;
  var
    tbl: String;
  begin
    if dado.tpsaidaentrada = _S then
    begin
      tbl := _saida
    end
    else if dado.tpsaidaentrada = _E then
    begin
      tbl := _entrada;
    end;
    result := 'select i.cdit'+tbl+
                    ',i.cdproduto'+
                    ',i.qtitem'+
                    ',i.vltotal'+
                    ',i.vldesconto'+
                    ',i.vlbaseicms'+
                    ',i.vlicms'+
                    ',i.alicms'+
                    ',i.vlbaseicmssubtrib'+
                    ',i.vlicmssubtrib'+
                    ',i.alicmssubtrib'+
                    ',i.vlbaseipi'+
                    ',i.vlipi'+
                    ',i.alipi'+
                    ',i.vlfrete'+
                    ',i.vlseguro'+
                    ',i.vloutdespesa'+
                    ',i.borecuperaicms'+
                    ',i.borecuperaipi';
    if tbl = _entrada then
    begin
      result := result + ',i.borecuperaipiespecial';
    end;
    result := result +     ',i.nusticms'+
                           ',p.cdorigem'+
                           ',i.cdcfop '+
                      'from it'+tbl+' i '+
                      'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                      'left join tpproduto t on t.cdtpproduto=p.cdtpproduto and p.cdempresa=t.cdempresa '+
                      'where i.cdempresa='+empresa.cdempresa.tostring+' and t.boservico<>''S'' and cd'+tbl+'='+codigo+' '+
                      'order by i.alicms desc,i.cdcfop';

  end;
begin
  cit.q.close;
  cit.q.sql.text := makesql;
  cit.q.Open;
end;

function TSintegra.SelecionarQuery: TClasseQuery; // Seleciona a query com a data mais recente
begin
  if csaida.q.Eof then
  begin
    dado.tpsaidaentrada := _E;
    result              := centrada;
    exit;
  end;
  if centrada.q.Eof then
  begin
    dado.tpsaidaentrada := _S;
    result              := csaida;
    exit;
  end;
  if csaida.q.FieldByName(_dtemissao).AsDateTime <= centrada.q.FieldByName(_dtemissao).AsDateTime then
  begin
    dado.tpsaidaentrada := _S;
    result              := csaida;
  end
  else
  begin
    dado.tpsaidaentrada := _E;
    result              := centrada;
  end;
end;

function TSintegra.FormatarAliquota(valor : Currency; Tamanho: Integer): String; // Formata o valor de aliquota para string
begin
  result := removerchar(removerchar(formatfloat(__moeda, valor), '.'), ',');
  if valor < 10 then
  begin
    result := _0+result;
  end;
  while length(result) < Tamanho do
  begin
    result := result + _0;
  end;
end;

function TSintegra.FormatarMoeda(valor : Currency; Tamanho: Integer): String; // Formata o valor moeda para string
begin
  result := removerchar(removerchar(formatfloat(__moeda, valor), '.'), ',');
  while length(result) < Tamanho do
  begin
    result := _0 + result;
  end;
end;

function TSintegra.itemexiste(cdproduto:string):boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to reg75.count - 1 do
  begin
    if copy(reg75[i], 19, 14) = FormatarTextoEsquerda(cdproduto, 14, _0) then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TSintegra.Registro74;
var
  c : TClasseQuery;
  procedure adicionar_item;
  var
    alipis, alicmss : string;
  begin
    if c.q.fieldbyname(_alipi).AsCurrency < 10 then
    begin
      alipis := _0 + c.q.fieldbyname(_alipi).asstring
    end
    else
    begin
      alipis := c.q.fieldbyname(_alipi).asstring;
    end;
    if c.q.fieldbyname(_alicms).AsCurrency < 10 then
    begin
      alicmss := _0 + c.q.fieldbyname(_alicms).asstring
    end
    else
    begin
      alicmss := c.q.fieldbyname(_alicms).asstring;
    end;
    if c.q.fieldbyname(_nmunidade).asstring = '' then
    begin
      MessageDlg('Unidade não preenchida no produto '+c.q.fieldbyname(_cdproduto).asstring+' - '+c.q.fieldbyname(_nmproduto).asstring+'.', mtInformation, [mbOK], 0);
      abort;
    end;
    reg75.add(_75+
              formatdatetime(_YYYYMMDD, dti)+
              formatdatetime(_YYYYMMDD, dtf)+
              FormatarTextoEsquerda(c.q.fieldbyname(_cdproduto).asstring, 14, _0)+
              FormatarTextoEsquerda(removercaracteres(c.q.fieldbyname(_NUCLFISCAL).asstring), 8, _0)+ //nmncm
              formatartextodireita (c.q.fieldbyname(_nmproduto).asstring, 53)+
              FormatarTextoDireita (c.q.fieldbyname(_nmunidade).asstring, 6)+
              FormatarTextoDireita (removerchar(removerchar(alipis , '.'), ','), 5, _0)+
              FormatarTextoDireita (removerchar(removerchar(alicmss, '.'), ','), 8, _0)+
              {vlbaseicmssubtribs}stringofchar(_0,14));
  end;
begin
  if formatdatetime(_mm, dti) <> _02 then
  begin
    exit;
  end;
  c := TClasseQuery.create;
  try
    c.q.open('select p.cdproduto'+
                    ',p.nmproduto'+
                    ',p.cdunidade'+
                    ',u.nmunidade'+
                    ',p.alicms'+
                    ',p.alipi'+
                    ',p.cdtpitem'+
                    ',p.nuclfiscal'+
                    ',h.qtestoque'+
                    ',h.vlcustomedio'+
                    ',h.vlsaldovalor '+
               'from produto p '+
               'inner join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
               'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and p.cdempresa=t.cdempresa '+
               'inner join hcustomedio h on h.cdproduto=p.cdproduto and p.cdempresa=h.cdempresa '+
               'and h.dthistorico=(select max(dthistorico) '+
                                  'from hcustomedio h1 '+
                                  'where h1.cdempresa=p.cdempresa and h1.cdproduto=p.cdproduto '+
                                  'and h1.dthistorico<='+quotedstr('12/31/'+inttostr(strtoint(formatdatetime(_YYYY, dti))-1))+') '+
               'where p.cdempresa='+empresa.cdempresa.tostring+' and t.boestoque=''S'' and h.qtestoque>0 and h.vlsaldovalor>=0 and h.vlcustomedio>=0 '+
               'and h.dthistorico<='+quotedstr('12/31/'+inttostr(strtoint(formatdatetime(_YYYY, dti))-1))+' '+
               'order by p.cdproduto');
    frmprogressbar.gau.MaxValue := c.q.recordcount;
    while not c.q.eof do
    begin
      frmprogressbar.gau.Progress := c.q.recno;
      Application.ProcessMessages;
      if not itemExiste(c.q.fieldbyname(_cdproduto).asstring) then
      begin
        adicionar_item;
      end;
      reg74.Add(_74+
                inttostr(strtoint(formatdatetime(_YYYY, dti))-1)+_1231                + // Data do inventário no formato AAAAMMDD
                FormatarTextoEsquerda(c.q.fieldbyname(_cdproduto).asstring     , 14, _0)+ // Código do produto do informante
                FormatarDecimal      (c.q.fieldbyname(_qtestoque).AsCurrency   , 13)    + // Quantidade do produto (com 3 decimais)
                FormatarMoeda        (c.q.fieldbyname(_vlsaldovalor).ascurrency, 13)    + // Valor bruto do produto (valor unitário multiplicado por quantidade) - com 2 decimais
                _1                                                                    + // Código de posse das mercadorias inventariadas
                FormatarTextoDireita (removercaracteres(empresa.nucnpj), 14)          + // CNPJ do possuidor/ proprietário
                espaco(14)                                                            + // Inscrição estadual do possuidor / proprietário
                espaco(2)                                                             + // UF do possuidor/ proprietário
                espaco(45));// Brancos
      c.q.next;
    end;
  finally
    freeandnil(c);
  end;
end;

function TSintegra.FormatarDecimal(valor : Extended; Tamanho: Integer): String; // Formata o valor decimal com 3 casas para string
begin
  result := removerchar(removerchar(formatfloat(__decimal3, valor), '.'), ',');
  while length(result) < Tamanho do
  begin
    result := _0 + result;
  end;
end;

function TSintegra.gerar:boolean;
begin
  Registro10;
  Registro11;
  csaida.q.Open(makesqlsaida);
  centrada.q.Open(makesqlentrada);
  ccte.q.Open('select c.CDCTETPTOMADOR'+
                    ',c.dtemissao'+
                    ',c.cdcte'+
                    ',C.NUSTDOCUMENTO'+
                    ',c.cdcfop'+
                    ',c.vlreceber'+
                    ',c.vlbaseicms'+
                    ',c.vlicms'+
                    ',c.CDCTEFORMAPAGAMENTO'+
                    ',c.cdstcte'+
                    ',cr.nucnpj nucnpjr'+
                    ',cr.nucpf nucpfr'+
                    ',cr.nuinscest nuinscestr'+
                    ',ur.sguf sgufr'+
                    ',cd.nucnpj nucnpjd'+
                    ',cd.nucpf nucpfd'+
                    ',cd.nuinscest nuinscestd'+
                    ',ud.sguf sgufd'+
                    ',ce.nucnpj nucnpje'+
                    ',ce.nucpf nucpfe'+
                    ',ce.nuinscest nuinsceste'+
                    ',ue.sguf sgufe'+
                    ',cb.nucnpj nucnpjb'+
                    ',cb.nucpf nucpfb'+
                    ',cb.nuinscest nuinscestb'+
                    ',ub.sguf sgufb'+
                    ',ct.nucnpj nucnpjt'+
                    ',ct.nucpf nucpft'+
                    ',ct.nuinscest nuinscestt'+
                    ',ut.sguf sguft'+
                    ',n.dtemissao dtemissaon'+
                    ',n.nunota'+
                    ',n.nuserie'+
                    ',n.nudocfiscalicms'+
                    ',c.nusticms'+
                    ',''0'' cdorigem'+
                    ',n.vltotal '+
              'from cte c '+
              'left join cliente cr on cr.cdcliente=c.cdremetente and c.cdempresa=cr.cdempresa '+
              'left join cliente cd on cd.cdcliente=c.cddestinatario and c.cdempresa=cd.cdempresa '+
              'left join cliente ce on ce.cdcliente=c.cdexpedidor and c.cdempresa=ce.cdempresa '+
              'left join cliente cb on cb.cdcliente=c.cdrecebedor and c.cdempresa=cb.cdempresa '+
              'left join cliente ct on ct.cdcliente=c.cdtomador and c.cdempresa=ct.cdempresa '+
              'left join uf ur on ur.cduf=cr.cduf '+
              'left join uf ud on ud.cduf=cd.cduf '+
              'left join uf ue on ue.cduf=ce.cduf '+
              'left join uf ub on ub.cduf=cb.cduf '+
              'left join uf ut on ut.cduf=ct.cduf '+
              'left join cteremetentenota n on n.cdcte=c.cdcte and c.cdempresa=n.cdempresa '+
              'where c.cdempresa='+empresa.cdempresa.tostring+' and c.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf));
  totalitens := csaida.q.RecordCount + centrada.q.RecordCount;
  i          := 0;
  set_progressbar;
  while i < totalitens do
  begin
    frmprogressbar.gau.Progress := i + 1;
    application.ProcessMessages;
    c := SelecionarQuery;
    set_nota_dados;
    // Verifica se a nota fiscal está cancelada ou é de entrada de terceiros
    if nota_cancelada then
    begin
      Nota_Fiscal_cancelada;
    end
    else
    begin
      set_nota_emitente;
      vlbaseicmssubtribs := FormatarMoeda(c.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency ,12);
      processar_itens;
      if nota_conhecimento_transporte then
      begin
        Registro70(dado.cdcfop);
      end
      else
      begin
        Registro50(dado.cdcfop);
        Registro51(dado.cdcfop);
        if (nota.stcfop.vl > 0) then // and (nudocfiscalicms = '55') and (dado.tpsaidaentrada = _S) then
        begin
          Registro53(cdcfopanterior);
        end;
      end;
    end;
    inc(i);
    c.q.next;
  end;
  Registro7071;
  Registro75;
  Registro74;
  Registro60m;
  if empresa.livro.bosintegraecfitem then
  begin
    Registro61;
    Registro61r;
  end;
  linha.Text := linha.text+ reg50.Text+ reg51.text+ reg53.Text+ reg54.Text+ reg60m.text+ reg61.text+ reg61r.text+ reg70.Text+ reg71.Text+ reg74.text+ reg75.text;
  setreg90;
  if erro.Count > 0 then
  begin
    ExibirSaidaVideo(erro);
  end;
  result := true;
end;

constructor TSintegra.create(datai, dataf: TDate);
begin
  dti := datai;
  dtf := dataf;

  cit      := TClasseQuery.Create;
  ccte     := TClasseQuery.Create;
  csaida   := TClasseQuery.Create;
  centrada := TClasseQuery.Create;

  erro   := TStringList.create;
  linha  := TStringList.create;
  reg50  := TStringList.Create;
  reg51  := TStringList.Create;
  reg53  := TStringList.Create;
  reg54  := TStringList.Create;
  reg60m := TStringList.create;
  reg61  := TStringlist.Create;
  reg61r := TStringList.Create;
  reg70  := TStringList.Create;
  reg71  := TStringList.Create;
  reg74  := TStringList.Create;
  reg75  := TStringList.Create;
  frmprogressbar := TFrmprogressbar.create(nil);
end;

procedure TSintegra.Salvar_arquivo;
var
  savedialog : TSaveDialog;
begin
  savedialog := tsavedialog.Create(nil);
  try
    savedialog.FileName := _sintegra+' '+empresa.nmempresa+' '+FormatDateTime(_yyyymm, dti)+'.'+_txt;
    if savedialog.Execute then
    begin
      linha.SaveToFile(savedialog.FileName);
    end;
  finally
    FreeAndNil(savedialog);
  end;
end;

destructor TSintegra.destroy;
begin
  FreeAndNil(cit);
  FreeAndNil(ccte);
  FreeAndNil(csaida);
  FreeAndNil(centrada);
  FreeAndNil(linha);
  FreeAndNil(erro);
  FreeAndNil(reg50);
  FreeAndNil(reg51);
  FreeAndNil(reg53);
  FreeAndNil(reg54);
  FreeAndNil(reg60m);
  FreeAndNil(reg61);
  FreeAndNil(reg61r);
  FreeAndNil(reg70);
  FreeAndNil(reg71);
  FreeAndNil(reg74);
  FreeAndNil(reg75);
  FreeAndNil(frmprogressbar);
  inherited;
end;

procedure TSintegra.Registro10;
begin
  linha.add(_10+FormatarTextoDireita  (empresa.nucnpj_   , 14)+
                 FormatarTextoDireita (empresa.nuinscest_, 14)+
                 FormatarTextoDireita (empresa.rzsocial  , 35)+
                 FormatarTextoDireita (empresa.endereco.nmmunicipio, 30)+empresa.endereco.sguf+
                 FormatarTextoEsquerda(empresa.nufax_, 10, _0)+
                 formatdatetime       (_YYYYMMDD, dti)+
                 formatdatetime       (_YYYYMMDD, dtf)+
                 {cdconvenio}_3+
                 {cdnatop}_3+
                 {cdfinalidade}_1);
end;

procedure TSintegra.Registro11;
begin
  if empresa.endereco.dsendereco = '' then
  begin
    erro.Add('Endereço da empresa não está preenchido.');
  end;
  if empresa.endereco.dsnumero = '' then
  begin
    erro.Add('Número do Endereço da empresa não está preenchido.');
  end;
  if empresa.contador.nmcontador = '' then
  begin
    erro.Add('Contador da empresa não está preenchido.');
  end;
  linha.add(_11+FormatarTextoDireita (empresa.endereco.dsendereco    , 34)+
                FormatarTextoEsquerda(removercaracteres(empresa.endereco.dsnumero),  5, _0)+
                FormatarTextoDireita (empresa.endereco.dscomplemento, 22)+
                FormatarTextoDireita (empresa.endereco.nmbairro     , 15)+
                FormatarTextoDireita (removercaracteres(empresa.endereco.nucep),  8)+
                FormatarTextoDireita (empresa.contador.nmcontador   , 28)+
                FormatarTextoEsquerda(empresa.nufone1_              , 12, _0));
end;

procedure TSintegra.set_progressbar;
begin
  frmprogressbar.Show;
  frmprogressbar.gau.Visible  := true;
  frmprogressbar.gau.MaxValue := totalitens;
end;

procedure TSintegra.Nota_fiscal_cancelada;
begin
  reg50.add(_50+
            {nucnpj}       FormatarTextoEsquerda('', 14, _0)+
            {nuinscest}    FormatarTextoEsquerda('', 14, _0)+
            dado.dtemissao+
            {sguf} espaco(2)+
            dado.nudocfiscalicms+
            dado.nuserie+
            dado.nudocumento+
            {cdcfop}       FormatarTextoEsquerda('', 4, _0)+
            dado.tpemitente+
            {vltotals}     FormatarMoeda(0, 13)+
            {vlbaseicmss}  FormatarMoeda(0, 13)+
            {vlicmss}      FormatarMoeda(0, 13)+
            {vlisentaicmss}FormatarMoeda(0, 13)+
            {vlouticmss}   FormatarMoeda(0, 13)+
            {alicmss}      FormatarAliquota(0, 4)+
            {nustdocumento}_S);
end;

procedure TSintegra.Registro70(cdcfop:string);
begin
  reg70.add(_70+
            FormatarTextoEsquerda(trim(nucnpj), 14, _0)+
            FormatarTextoDireita(nuinscest, 14)+
            dado.dtemissao+
            FormatarTextoDireita(sguf, 2)+
            dado.nudocfiscalicms+
            dado.nuseriefrete+
            dado.nusubserie+
            dado.nudocumento+
            cdcfop+
            FormatarMoeda   (vltotalcfop         , 13)+_0+
            FormatarMoeda   (nota.icmscfop.vlbase, 13)+_0+
            FormatarMoeda   (nota.icmscfop.vl    , 13)+_0+
            FormatarMoeda   (nota.icmscfop.vlisentas, 13)+_0+
            FormatarMoeda   (nota.icmscfop.vloutras, 13)+
            dado.cdtpfrete+
//          FormatarMoeda   (nota.icmscfop.vloutras - nota.icmscfop.vlisentas, 13)+cdtpfrete+
             {nustdocumento}_N);
end;

procedure TSintegra.Registro54;
begin
  if (dado.nudocfiscalicms = _06) or (dado.nudocfiscalicms = _22) then
  begin
    Exit;
  end;
  reg54.add(_54+
            FormatarTextoEsquerda(trim(nucnpj), 14, _0)+
            dado.nudocfiscalicms+
            dado.nuserie+
            dado.nudocumento+
            dado.cdcfop+
            item.nucst+
            FormatarTextoEsquerda(IntToStr(cit.q.recno), 3, _0)+
            item.cdproduto+
            item.qtitem+
            FormatarMoeda   (nota.vlproduto  , 12)+
            FormatarMoeda   (nota.vldesconto , 12)+
            FormatarMoeda   (nota.icms.vlbase, 12)+
            FormatarMoeda   (nota.st.vlbase  , 12)+
            FormatarMoeda   (nota.ipi.vl     , 12)+
            FormatarAliquota(nota.icms.al    , 4));
end;

procedure TSintegra.Registro50(cdcfop:string);
begin
  reg50.add(_50+
            FormatarTextoEsquerda(trim(nucnpj), 14, _0)+
            nuinscest+
            dado.dtemissao+
            sguf+
            dado.nudocfiscalicms+
            dado.nuserie+
            dado.nudocumento+
            cdcfop+
            dado.tpemitente+
            FormatarMoeda   (vltotalcfop            , 13)+
            FormatarMoeda   (nota.icmscfop.vlbase   , 13)+
            FormatarMoeda   (nota.icmscfop.vl       , 13)+
            FormatarMoeda   (nota.icmscfop.vlisentas, 13)+
            FormatarMoeda   (nota.icmscfop.vloutras , 13)+
            FormatarAliquota(nota.icmscfop.al       ,  4)+
            {cdstdocumento}_N);
end;

procedure TSintegra.Registro51(cdcfop:string);
begin
  if (dado.nudocfiscalicms = _06) or (dado.nudocfiscalicms = _22) then
  begin
    Exit;
  end;
  reg51.add(_51+
            FormatarTextoEsquerda(trim(nucnpj), 14, _0)+
            nuinscest+
            dado.dtemissao+
            sguf+
            dado.nuserie+
            dado.nudocumento+
            cdcfop+
            FormatarMoeda(vltotalcfop          , 13)+
            FormatarMoeda(nota.ipicfop.vl      , 13)+
            FormatarMoeda(0                    , 13)+ // vlisentaipis
            FormatarMoeda(nota.ipicfop.vloutras, 13)+
            espaco(20)+
            {cdstdocumento}_N);
end;

procedure TSintegra.Registro53(cdcfop:string);
begin
  if (dado.nudocfiscalicms = _06) or (dado.nudocfiscalicms = _22) then
  begin
    Exit;
  end;
  reg53.Add(_53+
            FormatarTextoEsquerda(trim(nucnpj), 14, _0)+
            nuinscest+
            dado.dtemissao+
            sguf+
            dado.nudocfiscalicms+
            dado.nuserie+
            dado.nudocumento+
            cdcfop+
            dado.tpemitente+
            FormatarMoeda   (nota.stcfop.vlbase  , 13)+
            FormatarMoeda   (nota.stcfop.vl      , 13)+
            FormatarMoeda   (nota.stcfop.vloutras, 13)+
            _N+_1+espaco(29));
end;

function TSintegra.aliquota(tp:string):string;
begin
  if csaida.q.fieldbyname(_al+tp).AsCurrency < 10 then
  begin
    result := _0 + csaida.q.fieldbyname(_al+tp).asstring
  end
  else
  begin
    result := csaida.q.fieldbyname(_al+tp).asstring;
  end;
end;

procedure TSintegra.Registro75;
begin
  csaida.q.close;
  csaida.q.Open('select distinct i.cdproduto'+
                             ',p.nmproduto'+
                             ',u.nmunidade'+
                             ',p.alipi'+
                             ',p.nuclfiscal'+
                             ',p.alicms '+
              'from saida s '+
              'inner join itsaida i on s.cdsaida=i.cdsaida and s.cdempresa=i.cdempresa '+
              'left join serie se on se.cdserie=s.cdserie and s.cdempresa=se.cdempresa '+
              'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
              'left join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
              'left join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
              'where s.cdempresa='+empresa.cdempresa.tostring+' '+
              'and t.boservico<>''S'' '+
              'and se.nudocfiscalicms<>''2D'' '+
              'and s.nustdocumento<>''03'' '+
              'and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
              'union '+
              'select distinct i.cdproduto'+
                    ',p.nmproduto'+
                    ',u.nmunidade'+
                    ',p.alipi'+
                    ',p.nuclfiscal'+
                    ',p.alicms '+
               'from itentrada i '+
               'inner join entrada e on e.cdentrada=i.cdentrada and e.cdempresa=i.cdempresa '+
               'left join tpentrada t on e.cdtpentrada=t.cdtpentrada and e.cdempresa=t.cdempresa '+
               'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
               'left join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
               'left join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and tp.cdempresa=p.cdempresa '+
               'where i.cdempresa='+empresa.cdempresa.tostring+' '+
               'and tp.boservico<>''S'' '+
               'and e.nudocfiscalicms<>''08'' '+
               'and e.nudocfiscalicms<>''07'' '+
               'and e.nudocfiscalicms<>''57'' '+
               'and e.nudocfiscalicms<>''22'' '+
               'and e.nudocfiscalicms<>''06'' '+
               'and e.nudocfiscalicms<>''21'' '+
               'and e.nudocfiscalicms<>''29'' '+
               'and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf));
  cdprodutoanterior := '';
  frmprogressbar.gau.MaxValue := csaida.q.RecordCount;
  while not csaida.q.Eof do
  begin
    frmprogressbar.gau.Progress := csaida.q.RecNo + 1;
    application.ProcessMessages;
    item.cdproduto := csaida.q.fieldbyname(_cdproduto).asstring;
    if item.cdproduto <> cdprodutoanterior then
    begin
      cdprodutoanterior := item.cdproduto;
      reg75.add(_75+
                formatdatetime(_YYYYMMDD, dti)+formatdatetime(_YYYYMMDD, dtf)+
                FormatarTextoEsquerda(item.cdproduto, 14, _0)+
                FormatarTextoEsquerda(csaida.q.fieldbyname(_nuclfiscal).asstring, 8 , _0){nmncm}+
                formatartextodireita(csaida.q.fieldbyname(_nmproduto).asstring, 53)+
                FormatarTextoDireita(csaida.q.fieldbyname(_nmunidade).asstring, 6)+
                FormatarTextoDireita(removerchar(removerchar(aliquota(_ipi ), '.'), ','), 5, _0)+
                FormatarTextoDireita(removerchar(removerchar(aliquota(_icms), '.'), ','), 8, _0)+
                {vlbsreducaos'0000'+}
                FormatarTextoEsquerda('', 14, _0){vlbaseicmssubtribs});
    end;
    csaida.q.next;
  end;
end;

function TSintegra.get_nudocumento:string;
begin
  if Length(c.q.fieldbyname(_nudocumento).asstring) > 6 then
  begin
    result := FormatarTextoEsquerda(Copy(c.q.fieldbyname(_nudocumento).asstring, Length(c.q.fieldbyname(_nudocumento).asstring) - 5, 6), 6, _0)
  end
  else
  begin
    result := FormatarTextoEsquerda(c.q.fieldbyname(_nudocumento).asstring, 6, _0);
  end;
end;

function TSintegra.get_nusubserie:string;
begin
  result := trim(c.q.fieldbyname(_nusubserie).asstring);
  while length(result) < 2 do
  begin
    result := result + ' ';
  end;
end;

procedure TSintegra.Set_nota_Dados;
begin
  dado.cddocumento     := c.q.fieldbyname(_cddocumento).asstring;
  dado.nudocumento     := get_nudocumento;
  dado.nuserie         := FormatarTextoDireita (c.q.fieldbyname(_nuserie    ).asstring, 3);
  dado.cdcfop          := FormatarTextoEsquerda(c.q.fieldbyname(_cdcfop     ).asstring, 4, _0);
  dado.dtemissao       := formatdatetime       (_YYYYMMDD, c.q.fieldbyname(_dtemissao).AsDatetime);
  dado.nuseriefrete    := formatartextoesquerda(trim(dado.nuserie), 1);
  dado.nudocfiscalicms := c.q.fieldbyname(_nudocfiscalicms).AsString;
  if dado.nudocfiscalicms = _1B then
  begin
    dado.nudocfiscalicms := _01;
  end;
  // Define alguns dados de acordo com o tipo de documento
  if dado.tpsaidaentrada = _S then
  begin
    dado.tpemitente := _P;
    dado.cdtpfrete  := '';
    dado.nusubserie := '';
  end
  else
  begin
    dado.tpemitente := _T;
    dado.nusubserie := get_nusubserie;
    dado.cdtpfrete  := _1;
  end;
end;

procedure TSintegra.set_nota_emitente;
begin
  if not c.q.FieldByName(_cdfornecedor).isnull then
  begin
    sguf := c.q.fieldbyname(_sguf+_f).asstring;
    if c.q.fieldbyname(_tppessoa+_f).asstring = _J then
    begin
      nucnpj    := RemoverChar(RemoverChar(RemoverChar(c.q.fieldbyname(_nucnpj+_f).asstring, '.'), '/'), '-');
      nuinscest := c.q.fieldbyname(_nuinscest+_f).asstring;
    end
    else if c.q.fieldbyname(_tppessoa+_f).asstring = _F then
    begin
      nucnpj    := RemoverChar(RemoverChar(RemoverChar(c.q.fieldbyname(_nucpf+_f).asstring, '.'), '/'), '-');
      nuinscest := '';
    end;
  end
  else if not c.q.fieldbyname(_cdcliente).isnull then
  begin
    sguf := c.q.fieldbyname(_sguf+_c).asstring;
    if c.q.fieldbyname(_tppessoa+_c).asstring = _J then
    begin
      nucnpj    := RemoverChar(RemoverChar(RemoverChar(c.q.fieldbyname(_nucnpj+_c).asstring, '.'), '/'), '-');
      nuinscest := c.q.fieldbyname(_nuinscest+_c).asstring;
    end
    else if c.q.fieldbyname(_tppessoa+_c).asstring = _F then
    begin
      nucnpj    := RemoverChar(RemoverChar(RemoverChar(c.q.fieldbyname(_nucpf+_c).asstring, '.'), '/'), '-');
      nuinscest := '';
    end;
  end;
  nuinscest := removercaracteres(removerchar(removerchar(removerchar(removerchar(nuinscest, '.'), '/'), '-'), ' '));
  if (nuinscest = '') or (nuinscest = UpperCase(_ISENTA)) then
  begin
    nuinscest := UpperCase(_ISENTO);
  end;
  nucnpj    := FormatarTextoEsquerda(Trim(nucnpj), 14, _0);
  nuinscest := FormatarTextoDireita (nuinscest, 14);
  sguf      := FormatarTextoEsquerda(sguf, 2);
end;

function TSintegra.get_nucst:string;
begin
  if Length(cit.q.FieldByName(_nusticms).AsString) = 3 then
  begin
    result := cit.q.FieldByName(_cdorigem).AsString+copy(cit.q.FieldByName(_nusticms).AsString, 1, 2);
  end
  else
  begin
    result := cit.q.FieldByName(_cdorigem).AsString+cit.q.FieldByName(_nusticms).AsString;
  end;
end;

procedure TSintegra.processar_itens;
begin
  DefinirSQLItem(dado.cddocumento);
  inicializar_contadores;
  // Percorre todos os itens da nota fiscal
  cit.q.first;
  while not cit.q.eof do
  begin
    dado.cdcfop := cit.q.fieldbyname(_cdcfop).asstring;
    if dado.cdcfop = '' then
    begin
      dado.cdcfop := c.q.fieldbyname(_cdcfop).asstring;
    end;

    item.cdproduto      := FormatarTextoEsquerda(cit.q.fieldbyname(_cdproduto).AsString  , 14, _0);
    item.qtitem         := FormatarDecimal      (cit.q.fieldbyname(_qtitem   ).AsCurrency, 11);

    // Recupera os valores o item da nota fiscal
    nota.vlproduto    := cit.q.fieldbyname(_vltotal).AsCurrency;
    nota.vlfrete      := cit.q.fieldbyname(_vlfrete).AsCurrency;
    nota.vlseguro     := cit.q.fieldbyname(_vlseguro).AsCurrency;
    nota.vloutdespesa := cit.q.fieldbyname(_vloutdespesa).AsCurrency;
    nota.vldesconto   := cit.q.fieldbyname(_vldesconto).AsCurrency;

    nota.st.vl       := cit.q.fieldbyname(_vlicmssubtrib).AsCurrency;
    nota.st.vlbase   := cit.q.fieldbyname(_vlbaseicmssubtrib).AsCurrency;
    nota.st.vloutras := cit.q.fieldbyname(_vlfrete).AsCurrency + cit.q.fieldbyname(_vlseguro).AsCurrency+ cit.q.fieldbyname(_vloutdespesa).AsCurrency;

    nota.ipi.al    := cit.q.fieldbyname(_alipi).AsCurrency;
    nota.ipi.vlbase:= cit.q.fieldbyname(_vlbaseipi).AsCurrency;
    nota.ipi.vl    := cit.q.fieldbyname(_vlipi).AsCurrency;

    nota.vltotal    := nota.vlproduto + nota.vlfrete + nota.vlseguro + nota.vloutdespesa - nota.vldesconto + nota.st.vl;
    if (dado.tpsaidaentrada = _s) or ((dado.tpsaidaentrada = _E) and (cit.q.FieldByName(_borecuperaipiespecial).AsString <> _S)) then
    begin
      nota.vltotal := nota.vltotal + nota.ipi.vl;
    end;

    if (dado.tpsaidaentrada = _E) and (cit.q.fieldbyname(_borecuperaipi).AsString <> _S) then
    begin
      nota.ipi.vlbase := 0;
      nota.ipi.vl     := 0;
    end;
    nota.ipi.vloutras  := nota.vltotal - nota.ipi.vlbase - nota.ipi.vl;
    if nota.ipi.vloutras  < 0 then
    begin
      nota.ipi.vloutras  := 0;
    end;

    nota.icms.al     := cit.q.fieldbyname(_alicms).AsCurrency;
    nota.icms.vlbase := cit.q.fieldbyname(_vlbaseicms).AsCurrency;
    nota.icms.vl     := cit.q.fieldbyname(_vlicms).AsCurrency;
    if (dado.tpsaidaentrada = _E) and (cit.q.fieldbyname(_borecuperaicms).AsString <> _S) then
    begin
      nota.icms.vlbase := 0;
      nota.icms.vl     := 0;
    end;

    if (cit.q.FieldByName(_nusticms).AsString = _30) or (cit.q.FieldByName(_nusticms).AsString = _40) or (cit.q.FieldByName(_nusticms).AsString = _41) then
    begin
      nota.icms.vlisentas := nota.vltotal - nota.icms.vlbase;
      nota.icms.vloutras  := 0;
    end
    else
    begin
      nota.ICMS.vlisentas := 0;
      nota.icms.vloutras := nota.vltotal - nota.icms.vlbase - nota.ipi.vl;
      if nota.icms.vlbase = 0 then
      begin
        nota.icms.vloutras := nota.icms.vloutras + nota.ipi.vl;
      end;
    end;
    if nota.icms.vloutras < 0 then
    begin
      nota.icms.vloutras := 0;
    end;
    // Registra o item da nota  (se não for nota de conhecimento de frete de entrada)
    if (dado.tpsaidaentrada = _S) or (not nota_conhecimento_transporte) then
    begin
      item.nucst := get_nucst;
      Registro54;
    end;
    // Verifica se o cfop é o mesmo do item anterior
    if ((dado.cdcfop <> cdcfopanterior) or (nota.icms.al <> nota.icmscfop.al)) and (cdcfopanterior <> '') then
    begin
      if nota_conhecimento_transporte then
      begin
        Registro70(cdcfopanterior);
      end
      else
      begin
        registro50(cdcfopanterior);
        registro51(cdcfopanterior);
        if (nota.stcfop.vl > 0) then // and (nudocfiscalicms = '55') and (dado.tpsaidaentrada = _S) then
        begin
          Registro53(cdcfopanterior);
        end;
      end;
      zerar_valores;
    end;
    vltotalcfop             := vltotalcfop              + nota.vltotal;
    nota.icmscfop.vlbase    := nota.icmscfop.vlbase     + nota.icms.vlbase;
    nota.icmscfop.vl        := nota.icmscfop.vl         + nota.icms.vl;
    nota.icmscfop.vloutras  := nota.icmscfop.vloutras   + nota.icms.vloutras;
    nota.icmscfop.vlisentas := nota.icmscfop.vlisentas  + nota.icms.vlisentas;
    nota.icmscfop.al        := nota.icms.al;

    nota.stcfop.vlbase   := nota.stcfop.vlbase    + nota.st.vlbase;
    nota.stcfop.vl       := nota.stcfop.vl        + nota.st.vl;
    nota.stcfop.vloutras := nota.stcfop.vloutras  + nota.st.vloutras;
    nota.stcfop.al       := nota.st.al;

    nota.ipicfop.vlbase    := nota.ipicfop.vlbase     + nota.ipi.vlbase;
    nota.ipicfop.vl        := nota.ipicfop.vl         + nota.ipi.vl;
    nota.ipicfop.vloutras  := nota.ipicfop.vloutras   + nota.ipi.vloutras;
    cdcfopanterior         := dado.cdcfop;
    cit.q.next;
  end;
end;

procedure TSintegra.Registro7071;
var
  cdformapagto, nucte, tm, nucnpjr, sguf, sgufr, nuinscestr, nucnpj, nuinscest : string;
  vloutras, vlisenta : Currency;
begin
  nucte := '';
  while not ccte.q.Eof do
  begin
    if nucte <> ccte.q.FieldByName(_cdcte).AsString then
    begin
      if ccte.q.FieldByName(_nustdocumento).AsString = _05 then
      begin
        ccte.q.Next;
        Continue;
      end;
      if ccte.q.FieldByName(_cdstcte).AsInteger = 2 then
      begin
        reg70.Add(_70+
                  FormatarTextoEsquerda('', 14, _0)+
                  FormatarTextoEsquerda('', 14, _0)+
                  FormatDateTime(_YYYYMMDD, ccte.q.fieldbyname(_dtemissao).AsDateTime)+
                  '  '+
                  _57+
                  _1+
                  '  '+
                  FormatarTextoEsquerda(ccte.q.fieldbyname(_cdcte).asstring, 6, _0)+
                  _0+_0+_0+_0+
                  FormatarMoeda(0, 13)+
                  FormatarMoeda(0, 14)+
                  FormatarMoeda(0, 14)+
                  FormatarMoeda(0, 14)+
                  FormatarMoeda(0, 14)+
                  _0+
                  _S);
        ccte.q.Next;
        Continue;
      end;
      case ccte.q.FieldByName(_CDCTETPTOMADOR).AsInteger of
        1 : tm := _r;
        2 : tm := _e;
        3 : tm := _b;
        4 : tm := _d;
        5 : tm := _t;
      end;
      nucnpj    := removercaracteres(ccte.q.fieldbyname(_nucnpj+tm).AsString);
      if nucnpj = '' then
      begin
        nucnpj := removercaracteres(ccte.q.fieldbyname(_nucpf+tm).AsString);
        if nucnpj <> '' then
        begin
          nucnpj := _0+_0+_0+nucnpj;
        end;
      end;
      nuinscest := FormatarTextoDireita(ccte.q.fieldbyname(_nuinscest+tm).AsString, 14, ' ');
      sguf      := ccte.q.fieldbyname(_sguf+tm).AsString;

      nucnpjr    := removercaracteres(ccte.q.fieldbyname(_nucnpj+_r).AsString);
      if nucnpjr = '' then
      begin
        nucnpjr := removercaracteres(ccte.q.fieldbyname(_nucpf+_r).AsString);
        if nucnpjr <> '' then
        begin
          nucnpjr := _0+_0+_0+nucnpjr;
        end;
      end;
      nuinscestr := FormatarTextoDireita(ccte.q.fieldbyname(_nuinscest+_r).AsString, 14, ' ');
      sgufr      := ccte.q.fieldbyname(_sguf+_r).AsString;
      if tm = _r then
      begin
        nucnpjr    := removercaracteres(ccte.q.fieldbyname(_nucnpj+_d).AsString);

        if nucnpjr = '' then
        begin
          nucnpjr := removercaracteres(ccte.q.fieldbyname(_nucpf+_d).AsString);
          if nucnpjr <> '' then
          begin
            nucnpjr := _0+_0+_0+nucnpjr;
          end;
        end;

        nuinscestr := FormatarTextoDireita(ccte.q.fieldbyname(_nuinscest+_d).AsString, 14, ' ');
        sgufr      := ccte.q.fieldbyname(_sguf+_d).AsString
      end;
      vlisenta := 0;
      if ccte.q.FieldByName(_nusticms).AsString = _40 then
      begin
        vlisenta := ccte.q.fieldbyname(_vlreceber).AsCurrency;
      end;
      vloutras := 0;
      if (ccte.q.FieldByName(_cdcfop).AsString = _6932) or (ccte.q.FieldByName(_cdcfop).AsString = _5932) then
      begin
        vloutras := ccte.q.fieldbyname(_vlreceber).AsCurrency;
      end;
      cdformapagto := ccte.q.fieldbyname(_CDCTEFORMAPAGAMENTO).AsString;
      if cdformapagto = _3 then cdformapagto := _1;
      reg70.Add(_70+
                FormatarTextoEsquerda(trim(nucnpj), 14, _0)+
                FormatarTextoDireita(nuinscest, 14)+
                FormatDateTime(_YYYYMMDD, ccte.q.fieldbyname(_dtemissao).AsDateTime)+
                sguf+
                _57+
                _1+
                '  '+
                FormatarTextoEsquerda(ccte.q.fieldbyname(_cdcte).asstring, 6, _0)+
                ccte.q.fieldbyname(_cdcfop).AsString+
                FormatarMoeda(ccte.q.fieldbyname(_vlreceber).AsCurrency , 13)+
                FormatarMoeda(ccte.q.fieldbyname(_vlbaseicms).AsCurrency, 14)+
                FormatarMoeda(ccte.q.fieldbyname(_vlicms).AsCurrency    , 14)+
                FormatarMoeda(vlisenta, 14)+
                FormatarMoeda(vloutras, 14)+
                cdformapagto+
                _N);
      nucte := ccte.q.fieldbyname(_cdcte).AsString;
    end;
    if ccte.q.fieldbyname(_nunota).AsString <> '' then
    begin
      reg71.Add(_71+
                FormatarTextoEsquerda(trim(nucnpj), 14, _0)+
                nuinscest+
                FormatDateTime(_YYYYMMDD, ccte.q.fieldbyname(_dtemissao).AsDateTime)+
                sguf+
                _57+
                _1+
                '  '+
                FormatarTextoEsquerda(ccte.q.fieldbyname(_cdcte).asstring, 6, _0)+
                sgufr+
                nucnpjr+
                nuinscestr+
                FormatDateTime(_YYYYMMDD, ccte.q.fieldbyname(_dtemissao+_n).AsDateTime)+
                ccte.q.fieldbyname(_nudocfiscalicms).AsString+
                FormatarTextoEsquerda(ccte.q.fieldbyname(_nuserie).AsString, 3, _0)+
                FormatarTextoEsquerda(ccte.q.fieldbyname(_nunota).AsString, 6, _0)+
                FormatarMoeda(ccte.q.fieldbyname(_vltotal).AsCurrency, 14)+
                espaco(12));
    end;
    ccte.q.Next;
  end;
end;

procedure TSintegra.Registro61;
var
  q : TClasseQuery;
  vltotal, vlbaseicms, vlicms, vlisenta, vloutras : Currency;
  alicms : Double;
  dtemissao : TDate;
  nusaidai, nusaidaf : string;
  procedure iniciar_valores;
  begin
    dtemissao  := q.q.fieldbyname(_dtemissao).AsDateTime;
    vltotal    := 0;
    vlbaseicms := 0;
    vlicms     := 0;
    vlisenta   := 0;
    vloutras   := 0;
    nusaidai   := q.q.fieldbyname(_nusaida).AsString;
  end;
  procedure inserir_registro;
  begin
    reg61.add(_61+espaco(28)+
                FormatDateTime(_YYYYMMDD, dtemissao){data emissao}+
                q.q.fieldbyname (_nudocfiscalicms).AsString+
                FormatarTextoDireita(q.q.fieldbyname(_nuserie    ).AsString, 3){numero série}+
                FormatarTextoEsquerda('', 2){sub série}+
                FormatarTextoEsquerda(nusaidai, 6, _0){Número Contador Ordem Operação no início dia}+
                FormatarTextoEsquerda(nusaidaf, 6, _0){Número Contador Ordem Operação no final dia}+
                FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, vltotal)), 13, _0){Valor total}+
                FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, vlbaseicms)), 13, _0){Valor base}+
                FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, vlicms)), 12, _0){Valor icms}+
                FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, vlisenta)), 13, _0){Valor isenta}+
                FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, vloutras)), 13, _0){Valor outras}+
                FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, alicms)), 4, _0){aliquota icms }+' ');
  end;
begin
  q := TClasseQuery.create;
  try
    q.q.open('select se.nudocfiscalicms'+
                    ',se.nuserie'+
                    ',s.dtemissao'+
                    ',s.nusaida'+
                    ',i.alicms'+
                    ',sum(i.vltotal) vltotal'+
                    ',sum(i.vlbaseicms) vlbaseicms'+
                    ',sum(i.vlicms) vlicms '+
               'from saida s '+
               'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
               'INNER JOIN SERIE SE ON SE.CDSERIE=S.CDSERIE and s.cdempresa=se.cdempresa '+
               'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nudocfiscalicms=''02'' and S.DTEMISSAO BETWEEN '+GetDtBanco(dti)+' and '+getdtbanco(dtf)+' '+
               'group by se.nudocfiscalicms'+
                       ',se.nuserie'+
                       ',s.dtemissao'+
                       ',s.nusaida'+
                       ',i.alicms');
    iniciar_valores;
    while not q.q.Eof do
    begin
      if dtemissao <> q.q.FieldByName(_dtemissao).AsDateTime then
      begin
        inserir_registro;
        iniciar_valores;
      end;
      vltotal    := vltotal    + q.q.fieldbyname(_vltotal).AsCurrency;
      vlbaseicms := vlbaseicms + q.q.fieldbyname(_vlbaseicms).AsCurrency;
      vlicms     := vlicms     + q.q.fieldbyname(_vlicms).AsCurrency;
      vlisenta   := vlisenta   + 0;
      vloutras   := vloutras   + q.q.fieldbyname(_vltotal).AsCurrency;
      nusaidaf   := q.q.fieldbyname(_nusaida).AsString;
      q.q.next;
    end;
    if q.q.RecordCount > 0 then
    begin
      inserir_registro;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TSintegra.Registro61r;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.open('select EXTRACT(month FROM s.dtemissao)||EXTRACT(year FROM s.dtemissao) dtemissao'+
                    ',i.cdproduto'+
                    ',i.alicms'+
                    ',sum(i.qtitem) qtitem'+
                    ',sum(i.vltotal) vltotal'+
                    ',sum(i.vlbaseicms) vlbaseicms '+
               'from saida s '+
               'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
               'INNER JOIN SERIE SE ON SE.CDSERIE=S.CDSERIE and s.cdempresa=se.cdempresa '+
               'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nudocfiscalicms=''02'' and S.DTEMISSAO BETWEEN '+GetDtBanco(dti)+' and '+getdtbanco(dtf)+' '+
               'group by EXTRACT(month FROM s.dtemissao)||EXTRACT(year FROM s.dtemissao)'+
                       ',i.cdproduto'+
                       ',i.alicms');
    while not q.q.Eof do
    begin
      reg61R.add(_61+_r+
                  FormatarTextoesquerda(q.q.fieldbyname(_dtemissao).AsString, 6, _0){data emissao}+
                  FormatarTextoesquerda(q.q.fieldbyname(_cdproduto).AsString, 14, _0){codigo produto}+
                  FormatarDecimal(q.q.fieldbyname(_qtitem).AsCurrency, 13){quantidade}+
                  FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, q.q.fieldbyname(_vltotal).AsCurrency)), 16, _0){Valor total}+
                  FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, q.q.fieldbyname(_vlbaseicms).AsCurrency)), 16, _0){Valor base icms}+
                  FormatarTextoEsquerda(removercaracteres(FormatFloat(__moedadec, q.q.fieldbyname(_alicms).AsCurrency)), 4, _0){aliquota icms}+
                  espaco(54)){brancos};
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

function TSintegra.nota_conhecimento_transporte: Boolean;
begin
  result := ((dado.nudocfiscalicms = _08) or (dado.nudocfiscalicms = _57) or (dado.nudocfiscalicms = _07)) and
            ((dado.cdcfop = _2353) or (dado.cdcfop = _2352) or (dado.cdcfop = _1353) or (dado.cdcfop = _1352));
end;

function TSintegra.nota_cancelada: Boolean;
begin
  result := (c.q.FieldByName(_nustdocumento).AsString = _02) or (c.q.FieldByName(_nustdocumento).AsString = _03);
end;

end.
