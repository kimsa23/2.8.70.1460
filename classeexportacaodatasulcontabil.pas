unit classeexportacaodatasulcontabil;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  Forms, Dialogs, SysUtils, Classes, Controls,
  ACBrValidador,
  uRichEdit, uProgressBar, uRegistro, ustrings, uRotinas, uConstantes,
  udlgdatabalanco, udatahora,
  classeregistrainformacao, classeexecutasql, classeempresa, classegerar, classeaplicacao, classequery;

function ExportacaoContabil:Boolean;

implementation

uses uDtmMain;

type
  TItem = record
    modulo: string;              // Módulo	Lote	characte	x(3)	3	1	3	FGL
    empresa: string;             // Empresa	Lote	characte	x(5)	5	4	8	500
    numero_lote: string;         // Número do Lote	Lote	integer	999999999	9	9	17	Sequencial Lote
    descricao_lote: string;      // Descrição Lote	Lote	characte	x(40)	40	18	57	Faturamento
    data_lote: string;           // Data Lote	Lote	date	ddmmaaaa	8	58	65	Data do dia da criação do lote
    sequencia: string;           // Número Lançamento	Lançamento	integer	999999999	9	66	74	Sequencial Lançamento
    data: string;                // Data Lançamento	Lançamento	date	ddmmaaaa	8	75	82	Data do dia do faturamento
    cenario: string;             // Cenário Contábil	Lançamento	characte	x(8)	8	83	90
    lancamento: string;          // Lançamento Apuração	Lançamento	logical	Sim/Não	3	91	93	NAO
    sequencia2: string;          // Sequência	Item	integer	99999	5	94	98	Sequencial Item
    plano_contas: string;        // Plano Contas	Item	characte	x(8)	8	99	106	PADRAO
    natureza: string;            // Natureza	Item	characte	X(02)	2	107	108	DB
    estabelecimento: string;     // Estabelecimento	Item	Characte	x(5)	5	109	113	501
    unidade: string;             // Unidade de Negócio	Item	characte	x(3)	3	114	116	LOG
    plano_centro: string;        // Plano Centros Custo	Item	characte	x(8)	8	117	124
    Centro_custo: string;        // Centro de Custo	Item	Characte	x(20)	20	125	144
    conta_contabil: string;      // Conta Contábil	Item	characte	x(20)	20	145	164	91111008
    conta_contra: string;        // Cta Ctbl Contra-Part	Item	characte	x(20)	20	165	184	31114001
    sequencia_contra: string;    // Sequência ContraPart	Item	integer	99999	5	185	189	Sequencial Item + 1
    historico: string;           // Histórico	Item	characte	x(40)	40	190	229	Faturamento nota fiscal 999999
    projeto: string;             // Projeto	Item	characte	x(20)	20	230	249
    moeda: string;               // Moeda	Item	characte	x(8)	8	250	257	Real
    valor: string;               // Valor Lançamento	Item	decimal	99999999999,99	14	258	271	Valor da nota/imposto
    quantidade: string;          // Quantidade	Item	decimal	999999999,99	12	272	283	000000000,00
    codigo_participante: string; // Código Participante	Item	integer	9999999999	10	284	293	0000000000
    codigo_contra: string;       // Cód Partic ContPart	Item	integer	9999999999	10	294	303	0000000000
    moeda2 : string;             // Moeda	Apropriação	characte	x(8)	8	304	311	Real
    valor2 : string;             // Valor Lançamento	Apropriação	decimal	99999999999,99	14	312	325	Valor da nota/imposto
    quantidade2 : string;        // Quantidade	Apropriação	decimal	999999999,99	12	326	337	000000000,00
    data_cotacao : string;       // Data Cotação	Apropriação	date	ddmmaaaa	8	338	345	Data do dia do faturamento
    valor_cotacao : string;      // Valor Cotação	Apropriação	decimal	99999999999,99	14	346	359	00000000001,00
  end;
  TExportacao  = class(tobject)
    cddatasulcontabil : string;
    item : TItem;
    dti, dtf: TDate;
    q: TClasseQuery;
    arquivo : TStrings;
    codigoi, codigof, nome_arquivo: string;
    sitem : integer;
    private
      function  makesql:string;
      function selecionar_dados:boolean;
      procedure get_item(cdtipo:string);
      procedure set_item;
    public
      constructor Create;
      destructor  destroy; override;
      function    Exportar:Boolean;
  end;

function ExportacaoContabil:Boolean;
var
  exportacao : Texportacao;
begin
  exportacao := texportacao.Create;
  try
    result := exportacao.Exportar;
  finally
    exportacao.destroy;
  end;
end;

constructor TExportacao.Create;
begin
  sitem          := 0;
  q              := TClasseQuery.Create;
  arquivo        := TStringList.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  frmprogressbar.setgau1;
end;

destructor TExportacao.destroy;
begin
  FreeAndNil(q);
  FreeAndNil(arquivo);
  FreeAndNil(frmprogressbar);
  inherited;
end;

function TExportacao.Exportar: Boolean;
var
  diretorio : string;
begin
  codigoi := '1';
  codigof := '999999';
  if not dlgDataInicioFinal(dti, dtf, codigoi, codigof, 'CTE') then
  begin
    result := false;
    exit;
  end;

  diretorio := QRotinas.getdiretorio;
  if diretorio = '' then
  begin
    result := false;
    exit;
  end;

  if not selecionar_dados then
  begin
    result := false;
    exit;
  end;
  arquivo.SaveToFile(diretorio+'\'+'CONTABIL_'+formatdatetime('YYYY-MM-DD', DtBanco)+'_'+formatdatetime('h-n-s', hrbanco)+'.txt');
  result := true;
end;

procedure TExportacao.get_item(cdtipo:string);
var
  valor : currency;
begin
  valor := 0;
  inc(sitem);
  item.modulo              := 'FGL';
  item.empresa             := '500  ';
  item.numero_lote         := formatartextoesquerda(cddatasulcontabil, 9, _0);
  item.descricao_lote      := FormatarTextoDireita('FATURAMENTO', 40);
  item.data_lote           := FormatDateTime(_DDMMYYYY, q.q.fieldbyname(_dtemissao).asdatetime);
  item.sequencia           := formatartextoesquerda(cddatasulcontabil, 9, _0);
  item.data                := FormatDateTime(_DDMMYYYY, q.q.fieldbyname(_dtemissao).asdatetime);
  item.cenario             := StringOfChar(' ', 8);
  item.lancamento          := 'NAO';
  item.sequencia2          := FormatarTextoEsquerda(inttostr(sitem), 5);
  item.plano_contas        := 'PADRAO  ';
  item.natureza            := 'DB';
  item.estabelecimento     := '501  ';
  item.unidade             := 'LOG';
  item.plano_centro        := StringOfChar(' ', 8);
  item.Centro_custo        := StringOfChar(' ', 20);
  if cdtipo = _faturamento then
  begin
    item.conta_contabil := '91111008'+StringOfChar(' ', 12);
    item.conta_contra   := '31114001'+StringOfChar(' ', 12);
    valor               := q.q.FieldByName(_vlservico).AsCurrency
  end
  else if cdtipo = _icms then
  begin
    item.conta_contabil := '31211001'+StringOfChar(' ', 12);
    item.conta_contra   := '21132002'+StringOfChar(' ', 12);
    valor               := q.q.FieldByName(_vlicms).AsCurrency
  end
  else if cdtipo = _pis then
  begin
    item.conta_contabil := '31211002'+StringOfChar(' ', 12);
    item.conta_contra   := '21132003'+StringOfChar(' ', 12);
    valor               := q.q.fieldbyname(_vlreceber).AsCurrency * empresa.faturamento.cte.alpis /100;
  end
  else if cdtipo = _cofins then
  begin
    item.conta_contabil := '31211003'+StringOfChar(' ', 12);
    item.conta_contra   := '21132007'+StringOfChar(' ', 12);
    valor               := q.q.fieldbyname(_vlreceber).AsCurrency * empresa.faturamento.cte.alcofins /100;
  end;
  inc(sitem);
  item.sequencia_contra    := FormatarTextoEsquerda(inttostr(sitem), 5);
  item.historico           := FormatarTextoEsquerda('Faturamento nota fiscal '+q.q.FieldByName(_cdcte).AsString, 40);
  item.projeto             := StringOfChar(' ', 20);
  item.moeda               := 'REAL    ';
  item.valor               := FormatarTextoEsquerda(formatfloat(__moedadec, valor), 14);
  item.quantidade          := FormatarTextoEsquerda(formatfloat(__moedadec, 0), 12);
  item.codigo_participante := StringOfChar('0', 10);
  item.codigo_contra       := StringOfChar('0', 10);
  item.moeda2              := 'REAL    ';
  item.valor2              := FormatarTextoEsquerda(formatfloat(__moedadec, valor), 14);
  item.quantidade2         := FormatarTextoEsquerda(formatfloat(__moedadec, 0), 12);
  item.data_cotacao        := FormatDateTime(_DDMMYYYY, q.q.fieldbyname(_dtemissao).asdatetime);
  item.valor_cotacao       := FormatarTextoEsquerda(formatfloat(__moedadec, 1), 14);
end;

function TExportacao.makesql: string;
begin
  result := 'select * '+
            'from cte '+
            'where cdempresa='+empresa.cdempresa.tostring+' '+
            'and cdstcte=3 '+
            'and cdcte between '+codigoi+' and '+codigof+' '+
            'and dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
            'order by dtemissao,cdcte';
end;

function TExportacao.selecionar_dados:boolean;
begin
  cddatasulcontabil := GerarCodigo(_data+_sul+_contabil);
  q.q.SQL.Text   := makesql;
  q.q.Open;
  if q.q.recordcount = 0 then
  begin
    result := false;
    messagedlg('Não existem registros para os critérios selecionados.', mtinformation, [mbok], 0);
    exit;
  end;
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  frmprogressbar.Show;
  while not q.q.Eof do
  begin
    frmprogressbar.gau.Progress := q.q.RecNo;
    Application.ProcessMessages;
    get_item(_faturamento);
    set_item;
    if q.q.fieldbyname(_vlicms).AsCurrency > 0 then
    begin
      get_item(_icms);
      set_item;
    end;
    if q.q.fieldbyname(_vlreceber).AsCurrency > 0 then
    begin
      get_item(_pis);
      set_item;
      get_item(_cofins);
      set_item;
    end;
    q.q.Next;
  end;
  result := true;
end;

procedure TExportacao.set_item;
var
  texto : string;
begin
  texto := item.modulo              +
           item.empresa             +
           item.numero_lote         +
           item.descricao_lote      +
           item.data_lote           +
           item.sequencia           +
           item.data                +
           item.cenario             +
           item.lancamento          +
           item.sequencia2          +
           item.plano_contas        +
           item.natureza            +
           item.estabelecimento     +
           item.unidade             +
           item.plano_centro        +
           item.Centro_custo        +
           item.conta_contabil      +
           item.conta_contra        +
           item.sequencia_contra    +
           item.historico           +
           item.projeto             +
           item.moeda               +
           item.valor               +
           item.quantidade          +
           item.codigo_participante +
           item.codigo_contra       +
           item.estabelecimento     +
           item.unidade             +
           item.moeda2              +
           item.valor2              +
           item.quantidade2         +
           item.data_cotacao        +
           item.valor_cotacao;
  arquivo.Add(texto);
end;

end.
