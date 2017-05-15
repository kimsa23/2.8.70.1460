unit classeexportacaodatasulcte;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  Forms, Dialogs, SysUtils, Classes, Controls,
  ACBrValidador,
  udlgdatabalanco, uRichEdit, uProgressBar, uRegistro, ustrings,
  uRotinas, uConstantes, udatahora,
  classeregistrainformacao, classeexecutasql, classeempresa, classeaplicacao, classeQuery;

function ExportacaoCTE:Boolean;

implementation

type
  TDocumento = record
    codigo_registro : string;        //  1	Código do Registro - 1	1	1	1	Inteiro	9		SIM	1
    serie_documento : string;        //  2	Série do Documento	5	2	6	Caracter	>>>>9		SIM	Seria da Nota Fiscal da CIPALOG
    numero_documento : string;       //  3	Número do Documento	16	7	22	Caracter	9999999		SIM	Numero da Nota Fiscal da CIPALOG
    codigo_emitente : string;        //  4	Código do Emitente	9	23	31	Inteiro	999999999		SIM	000012822 - Codigo da CIPALOG ou Código do Cliente
    natureza_operacao : string;      //  5	Natureza de Operação	6	32	37	Caracter			SIM	136002
    codigo_observacao : string;      //  6	Código de observação da nota fiscal	1	38	38	Inteiro	9		SIM	1
    branco1 : string;                //  7	Branco	3	39	41	Caracter			NÃO
    branco2 : string;                //  8	Branco	3	42	44	Caracter			NÃO
    conta_contabil : string;         //  9	Conta Contábil Transitória	20	45	64	Caracter			SIM	91111001
    centro_custo   : string;         //   	Centro de Custo	20	65	84	Caracter			NÃO
    data_emissao : string;           // 10	Data de Emissão - Formato: ddmmaaaa	8	85	92	Inteiro	ddmmaaaa		SIM	Data Emissão Nota Fiscal da CIPALOG
    data_transacao : string;         // 11	Data de Transação - Formato: ddmmaaaa	8	93	100	Inteiro	ddmmaaaa		SIM	Data Geração do Arquivo
    usuario : string;                // 12	Usuário responsável pela atualizacao do documento	12	101	112	Caracter			SIM	quipos
    unid_federacao : string;         // 13	Unid Federação	4	113	116	Caracter			SIM	MG
    via_transporte : string;         // 14	Via Transporte	1	117	117	Inteiro	9		SIM	1
    modalidade_frete : string;       // 15	Modalidade de frete	2	118	119	Inteiro	99		SIM	Escolhe de acordo com o tipo de frete	Onde:	1 = CIF	2 = FOB	3 = Outros
    nota_fiscal : string;            // 16	Nota Fiscal Fatura	3	120	122	Sim/Nao			SIM	Nao
    peso_total : string;             // 17	Peso Total	14	123	136	Decimal	9999999999DDDD	4	SIM	0
    total_desconto : string;         // 18	Total dos Descontos	13	137	149	Decimal	99999999999DD	2	SIM	Total dos Descontos Nota Fiscal da CIPALOG
    valor_frete : string;            // 19	Valor do Frete	13	150	162	Decimal	99999999999DD	2	SIM	Valor do Frete Nota Fiscal da CIPALOG
    valor_seguro : string;           // 20	Valor da Seguro	13	163	175	Decimal	99999999999DD	2	SIM	Valor da Seguro Nota Fiscal da CIPALOG
    valor_despesa : string;          // 21	Valor de despesas com Embalagem	13	176	188	Decimal	99999999999DD	2	SIM	Valor de despesas com Embalagem Nota Fiscal da CIPALOG
    valor_outras : string;           // 22	Valor de Outras Despesas	13	189	201	Decimal	99999999999DD	2	SIM	Valor de Outras Despesas Nota Fiscal da CIPALOG
    valor_mercadoria : string;       // 23	Valor da Mercadoria	13	202	214	Decimal	99999999999DD	2	SIM	Valor da Mercadoria Nota Fiscal da CIPALOG
    data_ipi: string;                // 24	Data para vencimento do IPI - Formato: ddmmaaaa	8	215	222	Inteiro	ddmmaaaa		SIM	Data Emissão Nota Fiscal da CIPALOG
    data_icms : string;              // 25	Data para vencimento do ICM - Formato: ddmmaaaa	8	223	230	Inteiro	ddmmaaaa		SIM	Data Emissão Nota Fiscal da CIPALOG
    valor_total : string;            // 26	Valor Total da Nota	15	231	245	Decimal	9999999999999DD	2	SIM	Valor Total Nota Fiscal da CIPALOG
    efetua_calculo: string;          // 27	Efetua cálculo do Imposto (0-Não / 1-Sim)	1	246	246	Inteiro	9		SIM	1
    especie_documento : string;      // 28	Espécie do documento	2	247	248	Inteiro	99		SIM	21
    gera_unidade: string;            // 29	Gera Unidade Negócio	1	249	249	Inteiro	9		NÃO	0
    observacao : string;             // 30	Observação	2000	250	2249	Caracter			NÃO
    nome_transportadora : string;    // 31	Nome Abreviado Transportadora	12	2250	2261	Caracter			NÃO
    placa_1 : string;                // 32	Placa 1	7	2262	2268	Caracter			NÃO
    placa_2 : string;                // 33	Placa 2	7	2269	2275	Caracter			NÃO
    placa_3 : string;                // 34	Placa 3	7	2276	2282	Caracter			NÃO
    uf_placa_1 : string;             // 35	UF Placa 1	2	2283	2284	Caracter			NÃO
    uf_placa_2 : string;             // 36	UF Placa 2	2	2285	2286	Caracter			NÃO
    uf_placa_3 : string;             // 37	UF Placa 3	2	2287	2288	Caracter			NÃO
    chave      : string;             // 	Código da Chave de Acesso Nf-e	60	2289	2348	Caracter			SIM	Chave da Nota Fiscal - Numero do codigo de barras
    situacao   : string;             // 	Situação da Nf-e	1	2349	2349	Inteiro			NÃO
    estabelecimento : string;        // 	Estabelecimento 	5	2350	2354	Caracter			SIM	201
    estabelecimento2: string;        // 	Estabelecimento Fiscal	5	2355	2359	Caracter			SIM	201
    modalidade      : string;        // 	Modalidade de Frete	8	2360	2367	Caracter			SIM	1
    tipo : string;                   // 	Tipo CT-e  >>>> 01 = CT-e Normal<<<	2	2368	2369	Inteiro	99		SIM	01
  end;
  TItem = record
    codigo_registro : string;    //  1	Código do Registro - 2	1	1	1	Inteiro	9		SIM	2
    item : string;               //  2	Item	16	2	17	Caracter			SIM	9999010078
    referencia : string;         //  3	Referência	8	18	25	Caracter			NÃO
    numero_ordem : string;       //  4	Numero da Ordem de Compra	8	26	33	Inteiro	99999999		SIM	00000000
    parcela_ordem: string;       //  5	Parcela da Ordem de Compra	5	34	38	Inteiro	99999		SIM	00000
    parcela_encerrada: string;   //  6	Indica se a parcela da ordem de compra será encerrada	3	39	41	Sim/Nao			SIM	NAO
    numero_ord_producao: string; //  7	Número da ordem de produção	9	42	50	Inteiro	999999999		SIM	000000000
    codigo_roteiro: string;      //  8	Código do roteiro	16	51	66	Caracter			NÃO
    codigo_operacao: string;     //  9	Código da operação	4	67	70	Inteiro			NÃO
    item_pai : string;           // 10	Item pai do item desta reserva na estrutura	16	71	86	Caracter			NÃO
    conta_contabil: string;      // 11	Conta Contábil	20	87	106	Caracter			SIM	33127101
    centro_custo: string;        // 	Centro Custo	20	107	126	Caracter			NÃO
    baixa_estoque: string;       // 12	Baixa Estoque	3	127	129	Sim/Nao			SIM	SIM
    qtd_etiqueta: string;        // 13	Quantidade Etiqueta	3	130	132	Inteiro	999		SIM	000
    qtd_unidade: string;         // 14	Quantidade na unidade de medida do emitente	14	133	146	Decimal	9999999999DDDD	4	SIM	000000000000010000
    qtd_unidade2: string;        // 15	Quantidade na nossa unidade de medida	12	147	158	Decimal	99999999DDDD	4	SIM	0000000000010000
    preco_total: string;         // 16	Preço total do item, sem desconto, sem IPI e com ICMS[1]	12	159	170	Decimal	9999999999DD	2	SIM	Valor total do Item sem impostos
    valor_desconto: string;      // 17	Valor do Desconto[1]	12	171	182	Decimal		2	NÃO
    valor_frete: string;         // 18	Valor do Frete	12	183	194	Decimal		2	NÃO
    valor_despesa: string;       // 19	Valor Despesas[1]	12	195	206	Decimal		2	NÃO
    peso_liquido: string;        // 20	Peso Líquido	12	207	218	Decimal	9999999DDDDD	5	SIM	0000000000000
    codigo_deposito: string;     // 21	Código do Depósito	3	219	221	Caracter			SIM	ALM
    localizar_material: string;  // 22	Código da localização do material	10	222	231	Caracter			NÃO
    lote_serie: string;          // 23	Lote ou número de série	10	232	241	Caracter			NÃO
    data_lote: string;           // 24	Data Validate do Lote - Formato: ddmmaaaa	8	242	249	Inteiro			NÃO
    classificacao_fiscal:string; // 25	Classificação Fiscal	8	250	257	Caracter			SIM	00000000
    aliquota_ipi : string;       // 26	Alíquota IPI	5	258	262	Decimal		2	NÃO
    cogigo_ipi: string;          // 27	Código Tributação do IPI	2	263	264	Inteiro	99		SIM	03
    base_IPI: string;            // 28	Base Cálculo IPI	12	265	276	Decimal	9999999999DD	2	SIM	Valor total do Item sem impostos
    valor_ipi: string;           // 29	Valor IPI	12	277	288	Decimal	9999999999DD	2	SIM	Valor do IPI
    aliquota_iss: string;        // 30	Alíquota ISS	5	289	293	Decimal		2	NÃO
    codigo_iss: string;          // 31	Código Tributação do ISS	2	294	295	Inteiro	99		SIM	01
    base_iss: string;            // 32	Base Cálculo ISS	12	296	307	Decimal	9999999999DD	2	SIM	Valor total do Item sem impostos
    valor_iss: string;           // 33	Valor ISS	12	308	319	Decimal	9999999999DD	2	SIM	Valor do ISS
    aliquota_icms: string;       // 34	Alíquota ICMS	5	320	324	Decimal		2	NÃO
    codigo_icms: string;         // 35	Código Tributação do ICMS	2	325	326	Inteiro	99		SIM	01
    base_icms: string;           // 36	Base Cálculo ICM	12	327	338	Decimal	9999999999DD	2	SIM	Valor total do Item sem impostos
    valor_icms: string;          // 37	Valor ICM	12	339	350	Decimal	9999999999DD	2	SIM	Valor do ICM
    base_subtrib: string;        // 38	Base Cálculo Subs	13	351	363	Decimal	99999999999DD	2	SIM	Base Cálculo Subs
    valor_subtrib: string;       // 39	Valor Subs	13	364	376	Decimal	99999999999DD	2	SIM	Valor Subs
    icms_complementar: string;   // 40	ICM Complementar	12	377	388	Decimal	9999999999DD	2	SIM	ICM Complementar
    icms_retido: string;         // 41	ICMS Retido	3	389	391	Sim/Nao			SIM	NAO
    narrativa: string;           // 42	Narrativa	2000	392	2391	Caracter			NÃO
    serie_nf: string;            // 43	Série da NF de Saída	5	2392	2396	Caracter			NÃO
    numero_nf: string;           // 44	Número da NF de Saída	16	2397	2412	Caracter			NÃO
    natureza_nf: string;         // 45	Natureza de Operação da NF de Saída	6	2413	2418	Caracter			NÃO
    branco : string;             // 	Branco	3	2419	2421	Inteiro			NÃO
    data_nf: string;             // 47	Data da NF de Saída - ddmmaaaa	8	2422	2429	Inteiro			NÃO
    valor_icms_outras: string;   // 48	Valor do ICMS Outras	12	2430	2441	Decimal		2	NÃO
    valor_ipi_outras: string;    // 49	Valor do IPI Outras	12	2442	2453	Decimal		2	NÃO
    valor_iss_outras: string;    // 50	Valor do ISS Outras	12	2454	2465	Decimal		2	NÃO
    valor_icms_isento: string;   // 51	Valor do ICMS Isento	12	2466	2477	Decimal		2	NÃO
    valor_ipi_isento: string;    // 52	Valor do IPI Isento	12	2478	2489	Decimal		2	NÃO
    valor_iss_isento: string;    // 53	Valor do ISS Isento	12	2490	2501	Decimal		2	NÃO
    percentual_ipi:string;       // 54	Percentual Redução IPI	7	2502	2508	Decimal		4	NÃO
    percentual_reducao: string;  // 55	Percentual Redução ICMS	7	2509	2515	Decimal		4	NÃO
    fator_concentracao: string;  // 56	Fator Concentração / PPM	11	2516	2526	Decimal		4	NÃO
    unidade_negocio: string;     // 57	Unidade de Negócio	3	2527	2529	Caracter			SIM	ADM
    sequencia_nf : string        // 	Seqüência da NF de Saída	5	2618	2622	Inteiro			NÃO
  end;
  TDuplicata = record
    codigo_registro: string; //  1	Código do Registro - 3	1	1	1	Inteiro	9		SIM	3
    parcela : string;        //  2	Parcela	2	2	3	Caracter			SIM	1
    numero: string;          //  3	Número da Duplicata	16	4	19	Caracter	9999999		SIM	Numero da Nota Fiscal da CIPALOG
    especie: string;         //  4	Espécie do Documento	2	20	21	Caracter			SIM	NF
    tipo_despesa: string;    //  5	Tipo de Despesa	3	22	24	Inteiro	999		SIM	047
    data_vencimento: string; //  6	Data do Vencimento - Formato: ddmmaaaa	8	25	32	Inteiro	ddmmaaaa		SIM	Data Vencimento Nota Fiscal da CIPALOG
    valor_duplicata: string; //  7	Valor da Duplicata	13	33	45	Decimal	99999999999DD	2	SIM	Valor total da nota fiscal da CIPALOG
    valor_desconto: string;  //  8	Valor do Desconto	13	46	58	Decimal	99999999999DD	2	SIM	0000000000000
    data_desconto: string;   //  9	Data do Vencimento Desconto - Formato: ddmmaaaa	8	59	66	Inteiro			NÃO
    codigo_imposto: string;  // 10	Código Retenção Imposto	5	67	71	Inteiro			NÃO
  end;
  TExportacao  = class(tobject)
    documento: TDocumento;
    item : TItem;
    duplicata: TDuplicata;
    dti, dtf: TDate;
    q: TClasseQuery;
    arquivo : TStrings;
    codigoi, codigof, nome_arquivo: string;
    private
      function  makesql:string;
      function selecionar_dados:boolean;
      procedure get_documento;
      procedure get_item;
      procedure get_duplicata;
      procedure set_documento;
      procedure set_item;
      procedure set_duplicata;
    public
      constructor Create;
      destructor  destroy; override;
      function    Exportar:Boolean;
  end;

function ExportacaoCTE:Boolean;
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
  q := TClasseQuery.Create;
  arquivo             := TStringList.Create;
  frmprogressbar      := Tfrmprogressbar.Create(nil);
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
  result := true;
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
  arquivo.SaveToFile(diretorio+'\'+'FISCAL_'+formatdatetime('YYYY-MM-DD', DtBanco)+'_'+formatdatetime('h-n-s', hrbanco)+'.lst');
end;

procedure TExportacao.get_documento;
begin
  documento.codigo_registro        := '1';                    //  1	Código do Registro - 1	1	1	1	Inteiro	9		SIM	1
  documento.serie_documento        := '1    ';                // 2	Série do Documento	5	2	6	Caracter	>>>>9		SIM	Seria da Nota Fiscal da CIPALOG
  documento.numero_documento       := StringOfChar(' ', 9)+FormatarTextoEsquerda(q.q.FieldByName(_cdcte).AsString, 7, _0); // 3	Número do Documento	16	7	22	Caracter	9999999		SIM	Numero da Nota Fiscal da CIPALOG
  documento.codigo_emitente        := '000012822';            // 4	Código do Emitente	9	23	31	Inteiro	999999999		SIM	000012822 - Codigo da CIPALOG ou Código do Cliente
  if q.q.fieldbyname(_alicms).AsFloat = 0 then
  begin
    documento.natureza_operacao      := '135206';               // 5	Natureza de Operação	6	32	37	Caracter			SIM	136002
  end
  else if q.q.fieldbyname(_alicms).AsFloat = 7 then
  begin
    documento.natureza_operacao      := '135214';               // 5	Natureza de Operação	6	32	37	Caracter			SIM	136002
  end
  else if q.q.fieldbyname(_alicms).AsFloat = 12 then
  begin
    documento.natureza_operacao      := '135214';               // 5	Natureza de Operação	6	32	37	Caracter			SIM	136002
  end;
  //documento.natureza_operacao      := '136002';               // 5	Natureza de Operação	6	32	37	Caracter			SIM	136002
  documento.codigo_observacao      := '1';                    // 6	Código de observação da nota fiscal	1	38	38	Inteiro	9		SIM	1
  documento.branco1                := StringOfChar(' ', 3);   // 7	Branco	3	39	41	Caracter			NÃO
  documento.branco2                := StringOfChar(' ', 3);   // 8	Branco	3	42	44	Caracter			NÃO
  documento.conta_contabil         := '91111001            '; // 9	Conta Contábil Transitória	20	45	64	Caracter			SIM	91111001
  documento.centro_custo           := StringOfChar(' ', 20);  //  	Centro de Custo	20	65	84	Caracter			NÃO
  documento.data_emissao           := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime); //10	Data de Emissão - Formato: ddmmaaaa	8	85	92	Inteiro	ddmmaaaa		SIM	Data Emissão Nota Fiscal da CIPALOG
  documento.data_transacao         := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime); //11	Data de Transação - Formato: ddmmaaaa	8	93	100	Inteiro	ddmmaaaa		SIM	Data Geração do Arquivo
  documento.usuario                := 'QUIPOS      ';         //12	Usuário responsável pela atualizacao do documento	12	101	112	Caracter			SIM	quipos
  documento.unid_federacao         := 'MG  ';                 //13	Unid Federação	4	113	116	Caracter			SIM	MG
  documento.via_transporte         := '1';                    //14	Via Transporte	1	117	117	Inteiro	9		SIM	1
  documento.modalidade_frete       := '3 ';                    //15	Modalidade de frete	2	118	119	Inteiro	99		SIM	Escolhe de acordo com o tipo de frete	Onde:	1 = CIF	2 = FOB	3 = Outros
  documento.nota_fiscal            := 'NAO';   // 16	Nota Fiscal Fatura	3	120	122	Sim/Nao			SIM	Nao
  documento.peso_total             := StringOfChar('0', 14);  // 17	Peso Total	14	123	136	Decimal	9999999999DDDD	4	SIM	0
  documento.total_desconto         := StringOfChar('0', 13);  // 18	Total dos Descontos	13	137	149	Decimal	99999999999DD	2	SIM	Total dos Descontos Nota Fiscal da CIPALOG
  documento.valor_frete            := StringOfChar('0', 13);  // 19	Valor do Frete	13	150	162	Decimal	99999999999DD	2	SIM	Valor do Frete Nota Fiscal da CIPALOG
  documento.valor_seguro           := StringOfChar('0', 13);  // 20	Valor da Seguro	13	163	175	Decimal	99999999999DD	2	SIM	Valor da Seguro Nota Fiscal da CIPALOG
  documento.valor_despesa          := StringOfChar('0', 13);  // 21	Valor de despesas com Embalagem	13	176	188	Decimal	99999999999DD	2	SIM	Valor de despesas com Embalagem Nota Fiscal da CIPALOG
  documento.valor_outras           := StringOfChar('0', 13);  // 22	Valor de Outras Despesas	13	189	201	Decimal	99999999999DD	2	SIM	Valor de Outras Despesas Nota Fiscal da CIPALOG
  documento.valor_mercadoria       := StringOfChar('0', 13);  // 23	Valor da Mercadoria	13	202	214	Decimal	99999999999DD	2	SIM	Valor da Mercadoria Nota Fiscal da CIPALOG
  documento.data_ipi               := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);// 24	Data para vencimento do IPI - Formato: ddmmaaaa	8	215	222	Inteiro	ddmmaaaa		SIM	Data Emissão Nota Fiscal da CIPALOG
  documento.data_icms              := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);// 25	Data para vencimento do ICM - Formato: ddmmaaaa	8	223	230	Inteiro	ddmmaaaa		SIM	Data Emissão Nota Fiscal da CIPALOG
  documento.valor_total            := FormatarMoedaSPonto_(q.q.FieldByName(_vlservico).AsCurrency, 15); //26	Valor Total da Nota	15	231	245	Decimal	9999999999999DD	2	SIM	Valor Total Nota Fiscal da CIPALOG
  documento.efetua_calculo         := '1';                     // 27	Efetua cálculo do Imposto (0-Não / 1-Sim)	1	246	246	Inteiro	9		SIM	1
  documento.especie_documento      := '21';                    // 28	Espécie do documento	2	247	248	Inteiro	99		SIM	21
  documento.gera_unidade           := '0';                     // 29	Gera Unidade Negócio	1	249	249	Inteiro	9		NÃO	0
  documento.observacao             := StringOfChar(' ', 2000); // 30	Observação	2000	250	2249	Caracter			NÃO
  documento.nome_transportadora    := StringOfChar(' ', 12);   // 31	Nome Abreviado Transportadora	12	2250	2261	Caracter			NÃO
  documento.placa_1                := StringOfChar(' ', 7);    // 32	Placa 1	7	2262	2268	Caracter			NÃO
  documento.placa_2                := StringOfChar(' ', 7);    // 33	Placa 2	7	2269	2275	Caracter			NÃO
  documento.placa_3                := StringOfChar(' ', 7);    // 34	Placa 3	7	2276	2282	Caracter			NÃO
  documento.uf_placa_1             := StringOfChar(' ', 2);    // 35	UF Placa 1	2	2283	2284	Caracter			NÃO
  documento.uf_placa_2             := StringOfChar(' ', 2);    // 36	UF Placa 2	2	2285	2286	Caracter			NÃO
  documento.uf_placa_3             := StringOfChar(' ', 2);    // 37	UF Placa 3	2	2287	2288	Caracter			NÃO
  documento.chave                  := q.q.fieldbyname(_nu+_chave+_nfe).asstring+StringOfChar(' ', 16); // 38 	Código da Chave de Acesso Nf-e	60	2289	2348	Caracter			SIM	Chave da Nota Fiscal - Numero do codigo de barras
  documento.situacao               := ' ';                     // 38	Situação da Nf-e	1	2349	2349	Inteiro			NÃO
                                                               // 39	Estabelecimento 	5	2350	2354	Caracter			SIM	201
  if q.q.fieldbyname(_cdremetente).asstring = '11946' then
  begin
    documento.estabelecimento  := '203  ';
    documento.estabelecimento2 := '203  ';                 // 40	Estabelecimento Fiscal	5	2355	2359	Caracter			SIM	201
  end
  else if q.q.fieldbyname(_cdremetente).asstring = '370'   then
  begin
    documento.estabelecimento  := '201  ';
    documento.estabelecimento2 := '201  ';                 // 40	Estabelecimento Fiscal	5	2355	2359	Caracter			SIM	201
  end;
  documento.modalidade             := '1       ';              // 41	Modalidade de Frete	8	2360	2367	Caracter			SIM	1
  documento.tipo                   := '01';                    // 42	Tipo CT-e  >>>> 01 = CT-e Normal<<<	2	2368	2369	Inteiro	99		SIM	01
end;

procedure TExportacao.get_duplicata;
begin
  duplicata.codigo_registro := '3';                   //  1	Código do Registro - 3	1	1	1	Inteiro	9		SIM	3
  duplicata.parcela         := FormatarTextoEsquerda(removercaracteres(Copy(q.q.FieldByName(_DSparcela).AsString, 1, 2)), 2); //  2	Parcela	2	2	3	Caracter			SIM	1
  duplicata.numero          := StringOfChar(' ', 9)+FormatarTextoEsquerda(q.q.FieldByName(_cdcte).AsString, 7, _0); //  3	Número da Duplicata	16	4	19	Caracter	9999999		SIM	Numero da Nota Fiscal da CIPALOG
  //FormatarTextoEsquerda(q.q.FieldByName(_nuduplicata).AsString, 16, _0);
  duplicata.especie         := 'NF';                  //  4	Espécie do Documento	2	20	21	Caracter			SIM	NF
  duplicata.tipo_despesa    := '047';                 //  5	Tipo de Despesa	3	22	24	Inteiro	999		SIM	047
  duplicata.data_vencimento := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtvencimento).AsDateTime); //  6	Data do Vencimento - Formato: ddmmaaaa	8	25	32	Inteiro	ddmmaaaa		SIM	Data Vencimento Nota Fiscal da CIPALOG
  duplicata.valor_duplicata := FormatarMoedaSPonto_(q.q.FieldByName(_vlduplicata).AsCurrency, 13);   //  7	Valor da Duplicata	13	33	45	Decimal	99999999999DD	2	SIM	Valor total da nota fiscal da CIPALOG
  duplicata.valor_desconto  := StringOfChar('0', 13); //  8	Valor do Desconto	13	46	58	Decimal	99999999999DD	2	SIM	0000000000000
  duplicata.data_desconto   := StringOfChar(' ', 08); //  9	Data do Vencimento Desconto - Formato: ddmmaaaa	8	59	66	Inteiro			NÃO
  duplicata.codigo_imposto  := StringOfChar(' ', 5);  // 10	Código Retenção Imposto	5	67	71	Inteiro			NÃO
end;

procedure TExportacao.get_item;
begin
  item.codigo_registro      := '2';                   //  1	Código do Registro - 2	1	1	1	Inteiro	9		SIM	2
  if q.q.fieldbyname(_alicms).AsFloat = 0 then
  begin
    item.item                 := '9999010002      ';    //  2	Item	16	2	17	Caracter			SIM	9999010078
    item.aliquota_icms        := StringOfChar(' ', 5);  // 34	Alíquota ICMS	5	320	324	Decimal		2	NÃO
    item.codigo_icms          := '03';                  // 35	Código Tributação do ICMS	2	325	326	Inteiro	99		SIM	01
  end
  else if q.q.fieldbyname(_alicms).AsFloat = 7 then
  begin
    item.item                 := '9999010002      ';    //  2	Item	16	2	17	Caracter			SIM	9999010078
    item.aliquota_icms        := '00700';  // 34	Alíquota ICMS	5	320	324	Decimal		2	NÃO
    item.codigo_icms          := '01';                  // 35	Código Tributação do ICMS	2	325	326	Inteiro	99		SIM	01
  end
  else if q.q.fieldbyname(_alicms).AsFloat = 12 then
  begin
    item.item                 := '9999010078      ';    //  2	Item	16	2	17	Caracter			SIM	9999010078
    item.aliquota_icms        := '01200';  // 34	Alíquota ICMS	5	320	324	Decimal		2	NÃO
    item.codigo_icms          := '01';                  // 35	Código Tributação do ICMS	2	325	326	Inteiro	99		SIM	01
  end;


  item.referencia           := StringOfChar(' ', 8);  //  3	Referência	8	18	25	Caracter			NÃO
  item.numero_ordem         := StringOfChar('0', 8);  //  4	Numero da Ordem de Compra	8	26	33	Inteiro	99999999		SIM	00000000
  item.parcela_ordem        := StringOfChar('0', 5);  //  5	Parcela da Ordem de Compra	5	34	38	Inteiro	99999		SIM	00000
  item.parcela_encerrada    := 'NAO';                 //  6	Indica se a parcela da ordem de compra será encerrada	3	39	41	Sim/Nao			SIM	NAO
  item.numero_ord_producao  := StringOfChar('0', 9);  //  7	Número da ordem de produção	9	42	50	Inteiro	999999999		SIM	000000000
  item.codigo_roteiro       := StringOfChar(' ', 16); //  8	Código do roteiro	16	51	66	Caracter			NÃO
  item.codigo_operacao      := StringOfChar(' ', 4);  //  9	Código da operação	4	67	70	Inteiro			NÃO
  item.item_pai             := StringOfChar(' ', 16); // 10	Item pai do item desta reserva na estrutura	16	71	86	Caracter			NÃO
  item.conta_contabil       := '33127101            ';// 11	Conta Contábil	20	87	106	Caracter			SIM	33127101
  item.centro_custo         := StringOfChar(' ', 20); // 	Centro Custo	20	107	126	Caracter			NÃO
  item.baixa_estoque        := 'SIM';                 // 12	Baixa Estoque	3	127	129	Sim/Nao			SIM	SIM
  item.qtd_etiqueta         := StringOfChar('0', 3);  // 13	Quantidade Etiqueta	3	130	132	Inteiro	999		SIM	000
  item.qtd_unidade          := '00000000010000'; // 14	Quantidade na unidade de medida do emitente	14	133	146	Decimal	9999999999DDDD	4	SIM	000000000000010000
  item.qtd_unidade2         := '000000010000'; // 15	Quantidade na nossa unidade de medida	12	147	158	Decimal	99999999DDDD	4	SIM	0000000000010000
  item.preco_total          := FormatarMoedaSPonto_(q.q.FieldByName(_vlservico).AsCurrency, 12); // 16	Preço total do item, sem desconto, sem IPI e com ICMS[1]	12	159	170	Decimal	9999999999DD	2	SIM	Valor total do Item sem impostos
  item.valor_desconto       := StringOfChar(' ', 12); // 17	Valor do Desconto[1]	12	171	182	Decimal		2	NÃO
  item.valor_frete          := StringOfChar(' ', 12); // 18	Valor do Frete	12	183	194	Decimal		2	NÃO
  item.valor_despesa        := StringOfChar(' ', 12); // 19	Valor Despesas[1]	12	195	206	Decimal		2	NÃO
  item.peso_liquido         := StringOfChar('0', 12); // 20	Peso Líquido	12	207	218	Decimal	9999999DDDDD	5	SIM	0000000000000
  item.codigo_deposito      := 'ALM';                 // 21	Código do Depósito	3	219	221	Caracter			SIM	ALM
  item.localizar_material   := StringOfChar(' ', 10); // 22	Código da localização do material	10	222	231	Caracter			NÃO
  item.lote_serie           := StringOfChar(' ', 10); // 23	Lote ou número de série	10	232	241	Caracter			NÃO
  item.data_lote            := StringOfChar(' ', 8);  // 24	Data Validate do Lote - Formato: ddmmaaaa	8	242	249	Inteiro			NÃO
  item.classificacao_fiscal := StringOfChar('0', 8);  // 25	Classificação Fiscal	8	250	257	Caracter			SIM	00000000
  item.aliquota_ipi         := StringOfChar(' ', 5);  // 26	Alíquota IPI	5	258	262	Decimal		2	NÃO
  item.cogigo_ipi           := '3 ';                  // 27	Código Tributação do IPI	2	263	264	Inteiro	99		SIM	03
  item.base_IPI             := StringOfChar('0', 12); // 28	Base Cálculo IPI	12	265	276	Decimal	9999999999DD	2	SIM	Valor total do Item sem impostos
  item.valor_ipi            := StringOfChar('0', 12); // 29	Valor IPI	12	277	288	Decimal	9999999999DD	2	SIM	Valor do IPI
  item.aliquota_iss         := StringOfChar(' ', 5);  // 30	Alíquota ISS	5	289	293	Decimal		2	NÃO
  item.codigo_iss           := '01';                  // 31	Código Tributação do ISS	2	294	295	Inteiro	99		SIM	01
  item.base_iss             := StringOfChar('0', 12); // 32	Base Cálculo ISS	12	296	307	Decimal	9999999999DD	2	SIM	Valor total do Item sem impostos
  item.valor_iss            := StringOfChar('0', 12); // 33	Valor ISS	12	308	319	Decimal	9999999999DD	2	SIM	Valor do ISS
  item.base_icms            := FormatarMoedaSPonto_(q.q.FieldByName(_vlbaseicms).AsCurrency, 12); // 36	Base Cálculo ICM	12	327	338	Decimal	9999999999DD	2	SIM	Valor total do Item sem impostos
  item.valor_icms           := FormatarMoedaSPonto_(q.q.FieldByName(_vlicms).AsCurrency, 12); // 37	Valor ICM	12	339	350	Decimal	9999999999DD	2	SIM	Valor do ICM
  item.base_subtrib         := StringOfChar('0', 13); // 38	Base Cálculo Subs	13	351	363	Decimal	99999999999DD	2	SIM	Base Cálculo Subs
  item.valor_subtrib        := StringOfChar('0', 13); // 39	Valor Subs	13	364	376	Decimal	99999999999DD	2	SIM	Valor Subs
  item.icms_complementar    := StringOfChar('0', 12); // 40	ICM Complementar	12	377	388	Decimal	9999999999DD	2	SIM	ICM Complementar
  item.icms_retido          := 'NAO';                   // 41	ICMS Retido	3	389	391	Sim/Nao			SIM	NAO
  item.narrativa            := StringOfChar(' ', 2000); // 42	Narrativa	2000	392	2391	Caracter			NÃO
  item.serie_nf             := StringOfChar(' ', 5);  // 43	Série da NF de Saída	5	2392	2396	Caracter			NÃO
  item.numero_nf            := StringOfChar(' ', 16); // 44	Número da NF de Saída	16	2397	2412	Caracter			NÃO
  item.natureza_nf          := StringOfChar(' ', 6);  // 45	Natureza de Operação da NF de Saída	6	2413	2418	Caracter			NÃO
  item.branco               := StringOfChar(' ', 3);  // 	Branco	3	2419	2421	Inteiro			NÃO
  item.data_nf              := StringOfChar(' ', 8);  // 47	Data da NF de Saída - ddmmaaaa	8	2422	2429	Inteiro			NÃO
  item.valor_icms_outras    := StringOfChar(' ', 12); // 48	Valor do ICMS Outras	12	2430	2441	Decimal		2	NÃO
  item.valor_ipi_outras     := StringOfChar(' ', 12); // 49	Valor do IPI Outras	12	2442	2453	Decimal		2	NÃO
  item.valor_iss_outras     := StringOfChar(' ', 12); // 50	Valor do ISS Outras	12	2454	2465	Decimal		2	NÃO
  item.valor_icms_isento    := StringOfChar(' ', 12); // 51	Valor do ICMS Isento	12	2466	2477	Decimal		2	NÃO
  item.valor_ipi_isento     := StringOfChar(' ', 12); // 52	Valor do IPI Isento	12	2478	2489	Decimal		2	NÃO
  item.valor_iss_isento     := StringOfChar(' ', 12); // 53	Valor do ISS Isento	12	2490	2501	Decimal		2	NÃO
  item.percentual_ipi       := StringOfChar(' ', 7);  // 54	Percentual Redução IPI	7	2502	2508	Decimal		4	NÃO
  item.percentual_reducao   := StringOfChar(' ', 7);  // 55	Percentual Redução ICMS	7	2509	2515	Decimal		4	NÃO
  item.fator_concentracao   := StringOfChar(' ', 11); // 56	Fator Concentração / PPM	11	2516	2526	Decimal		4	NÃO
  item.unidade_negocio      := StringOfChar(' ', 3);  // 57	Unidade de Negócio	3	2527	2529	Caracter			SIM	ADM
  item.sequencia_nf         := StringOfChar(' ', 5);  // 	Seqüência da NF de Saída	5	2618	2622	Inteiro			NÃO
end;

function TExportacao.makesql: string;
begin
  result := 'select c.*'+
                  ',d.* '+
            'from cte c '+
            'left join duplicata d on d.cdempresa=c.cdempresa and d.cdcte=c.cdcte '+
            'where c.cdempresa='+empresa.cdempresa.tostring+' '+
            'and c.cdstcte=3 and c.cdctetptomador<>4 '+
            'and C.cdCTE between '+codigoi+' and '+codigof+' '+
            'and C.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf);
end;

function TExportacao.selecionar_dados:boolean;
var
  cdcte : string;
begin
  q.q.Connection := aplicacao.confire;
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
  cdcte := '';
  while not q.q.Eof do
  begin
    frmprogressbar.gau.Progress := q.q.RecNo;
    Application.ProcessMessages;
    if cdcte <> q.q.FieldByName(_cdcte).AsString then
    begin
      get_documento;
      set_documento;
      get_item;
      set_item;
      cdcte := q.q.FieldByName(_cdcte).AsString;
    end;
    get_duplicata;
    set_duplicata;
    q.q.Next;
  end;
  result := true;
end;

procedure TExportacao.set_documento;
begin
  arquivo.Add(documento.codigo_registro        +
              documento.serie_documento        +
              documento.numero_documento       +
              documento.codigo_emitente        +
              documento.natureza_operacao      +
              documento.codigo_observacao      +
              documento.branco1                +
              documento.branco2                +
              documento.conta_contabil         +
              documento.centro_custo           +
              documento.data_emissao           +
              documento.data_transacao         +
              documento.usuario                +
              documento.unid_federacao         +
              documento.via_transporte         +
              documento.modalidade_frete       +
              documento.nota_fiscal            +
              documento.peso_total             +
              documento.total_desconto         +
              documento.valor_frete            +
              documento.valor_seguro           +
              documento.valor_despesa          +
              documento.valor_outras           +
              documento.valor_mercadoria       +
              documento.data_ipi               +
              documento.data_icms              +
              documento.valor_total            +
              documento.efetua_calculo         +
              documento.especie_documento      +
              documento.gera_unidade           +
              documento.observacao             +
              documento.nome_transportadora    +
              documento.placa_1                +
              documento.placa_2                +
              documento.placa_3                +
              documento.uf_placa_1             +
              documento.uf_placa_2             +
              documento.uf_placa_3             +
              documento.chave                  +
              documento.situacao               +
              documento.estabelecimento        +
              documento.estabelecimento2       +
              documento.modalidade             +
              documento.tipo);
end;

procedure TExportacao.set_duplicata;
begin
  arquivo.Add(duplicata.codigo_registro +
              duplicata.parcela         +
              duplicata.numero          +
              duplicata.especie         +
              duplicata.tipo_despesa    +
              duplicata.data_vencimento +
              duplicata.valor_duplicata +
              duplicata.valor_desconto  +
              duplicata.data_desconto   +
              duplicata.codigo_imposto);
end;

procedure TExportacao.set_item;
begin
  arquivo.Add(item.codigo_registro      +
              item.item                 +
              item.referencia           +
              item.numero_ordem         +
              item.parcela_ordem        +
              item.parcela_encerrada    +
              item.numero_ord_producao  +
              item.codigo_roteiro       +
              item.codigo_operacao      +
              item.item_pai             +
              item.conta_contabil       +
              item.centro_custo         +
              item.baixa_estoque        +
              item.qtd_etiqueta         +
              item.qtd_unidade          +
              item.qtd_unidade2         +
              item.preco_total          +
              item.valor_desconto       +
              item.valor_frete          +
              item.valor_despesa        +
              item.peso_liquido         +
              item.codigo_deposito      +
              item.localizar_material   +
              item.lote_serie           +
              item.data_lote            +
              item.classificacao_fiscal +
              item.aliquota_ipi         +
              item.cogigo_ipi           +
              item.base_IPI             +
              item.valor_ipi            +
              item.aliquota_iss         +
              item.codigo_iss           +
              item.base_iss             +
              item.valor_iss            +
              item.aliquota_icms        +
              item.codigo_icms          +
              item.base_icms            +
              item.valor_icms           +
              item.base_subtrib         +
              item.valor_subtrib        +
              item.icms_complementar    +
              item.icms_retido          +
              item.narrativa            +
              item.serie_nf             +
              item.numero_nf            +
              item.natureza_nf          +
              item.branco               +
              item.data_nf              +
              item.valor_icms_outras    +
              item.valor_ipi_outras     +
              item.valor_iss_outras     +
              item.valor_icms_isento    +
              item.valor_ipi_isento     +
              item.valor_iss_isento     +
              item.percentual_ipi       +
              item.percentual_reducao   +
              item.fator_concentracao   +
              item.unidade_negocio      +
              item.sequencia_nf);
end;

end.
