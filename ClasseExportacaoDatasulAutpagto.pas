unit ClasseExportacaoDatasulAutpagto;

interface

uses
  system.UITypes,
  Forms, Dialogs, SysUtils, Classes, Controls,
  ACBrValidador,
  udlgdatabalanco, uRichEdit, uProgressBar, uRegistro, ustrings,
  uRotinas, uConstantes, udatahora,
  classeregistrainformacao, classeexecutasql, classeempresa, classeaplicacao, classequery;

function ExportacaoAutPagto:Boolean;

implementation

type
  TLote = record                       // Registro do Lote de Implantação de Títulos
    cdtpregistro :string;              // Tipo de Registro	Deve ser 100	Int	999	3	1	3	Sim	100
    dsbranco1 : string;                // Brancos	Brancos	Char	X(03)	3	4	6	Não
    cdreferencia : string;             // cod_refer	Referência	Char	x(10)	10	7	16	Sim	Data do transação invertida mais letras.
    dttransacao : string;              // dat_transacao	Data de Transação	date	DDMMAAAA	8	17	24	Sim	Data da geração do arquivo.
    vllote : string;                   // val_tot_lote_impl_tit_acr	Valor Total do Lote	Int	99999999999dd	14	25	38	Sim	Valor total dos lotes
    cdestabelecimento : string;        // cod_estab	Estabelecimento	Char	x(05)	5	39	43	Sim	501
    cdestabelecimentoexterno : string; // cod_estab_ext	Estabelecimento Externo	Char	x(05)	5	44	48	Não
  end;
  TItem = record                     // Registro do Item do Lote de Implantação de Títulos
    cdtpregistro :string;            // Tipo de Registro  Deve ser 200	Int	999	3	1	3	Sim	200
    cdn_fornecedor: string;          // Código do Fornecedor 	Int	999999999	9	4	12	Sim	Codigo do Fornecedor (Prestador)
    cod_espec_docto : string;        // Código Espécie Documento	Char	X(03)	3	13	15	Sim	NM
    cod_ser_docto : string;          // Código Série Documento (*)	Char	X(03)	3	16	18	Sim	Serie do RPA
    cod_tit_acr   : string;          // Código do Documento (*)	Char	x(10)	10	19	28	Sim	RPA + Numero RPA
    cod_parcela   : string;          // Código da Parcela	Char	x(02)	2	29	30	Sim	01
    dat_emis_docto : string;         // Data de Emissão do Documento	date	DDMMAAAA	8	31	38	Sim	Data emissão do RPA
    dat_vencto_tit_acr: string;      // Data de Vencimento do Documento	date	DDMMAAAA	8	39	46	Sim	Data de vencimento do RPA
    dat_prev_liquidac: string;       // Data Prevista de Pagamento	date	DDMMAAAA	8	47	54	Não	Data de vencimento do RPA
    cod_finalid_econ_ext: string;    // Finalidade Econômica Externa	Char	x(10)	10	55	64	Não
    val_tit_acr: string;             // Valor do Documento	Decim	999999999dd	11	65	75	Sim	Valor total do RPA
    dat_desconto: string;            // Data do Desconto	date	DDMMAAAA	8	76	83	Não
    val_desconto: string;            // Valor do Desconto	Decim	999999999dd	11	84	94	Não
    val_perc_desc: string;           // Valor Percentual do Desconto	Decim	99dd	4	95	98	Não
    num_dias_atraso: string;         // Número de Dias de Atraso	Int	99	2	99	100	Não
    val_jur_dia_atraso: string;      // Valor Juros por Dia Atraso	Decim	999999999dd	11	101	111	Não
    val_perc_jur_dia_atraso: string; // Percentual de Juros por Dia de Atraso	Decim	99dd	4	112	115	Não
    val_perc_multa_atraso: string;   // Valor Percentual Multa Atraso	Decim	99dd	4	116	119	Não
    cod_portad_ext : string;         // Código do Portador Externo	Char	x(10)	10	120	129	Não
    cod_modalidade_ext: string;      // Código da Modalidade Externa	Char	x(02)	2	130	131	Não
    cod_apol_segur: string;          // Codigo da Apólice de Seguro	Char	x(12)	12	132	143	Não
    cod_seguradora: string;          // Código da Seguradora 	Char	x(12)	12	144	155	Não
    cod_arrendador: string;          // Código do Arrendador	Char	x(06)	6	156	161	Não
    cod_contrat_leas: string;        // Código Contrato de Leasing	Char	x(12)	12	162	173	Não
    cod_portador: string;            // Código do Portador	Char	x(05)	5	174	178	Não	23700
    cod_indic_econ: string;          // Código do Indicador Econômico	Char	x(08)	8	179	186	Não
    cod_forma_pagto: string;         // Código da Forma de Pagamento	Char	X(03)	3	187	189	Não
    des_histor_padr: string;         // Descrição do Histórico Padrão	Char	x(200)	200	190	389	Não
    val_cotac_indic_econ: string;    // Valor Cotação em Moeda Corrente	Decim	9999999dddddddddd	17	390	406	Não
    num_ord_invest: string;          // Indicar Ordem Investimento Integração com o EMS 2	Int	99999999	8	407	414	Não
    branco : string;                 // Branco	Char	x(8)	8	415	422	Não
    cod_ser_docto2: string;          // Código Série Documento (*)	Char	x(05)	5	423	427	Sim	Serie do RPA
    cod_tit_acr2: string;            // Código do Documento (*)	Char	X(16)	16	428	443	Sim	RPA + Numero RPA
  end;
  TImposto = record
    cdtpregistro : string;      // Tipo de Registro	Deve ser 300	Int	999	3	1	3	Sim	300
    cod_pais_ext : string;      // País Externo	Char	x(20)	20	4	23	Não
    cod_unid_federac : string;  // Unidade da Federação	Char	x(03)	3	24	26	Não
    cod_imposto : string;       // Código do Imposto	Char	x(05)	5	27	31	Sim	>>2100 = INSS RETIDO PF<< ou >> 2119 = SEST/SENAT<< ou >> 0588 - Imposto Renda<<
    cod_classif_impto : string; // Código da Classificação do Imposto 	Char	x(05)	5	32	36	Sim	>>2100 = INSS RETIDO PF<< ou >> 2119 = SEST/SENAT<< ou >> 0588 - Imposto Renda<<
    cod_espec_docto : string;   // Espécie de Documento Imposto	Char	x(03)	3	37	39	Não	>>RN = INSS RETIDO PF<< ou >> RE = SEST/SENAT<< ou >> RI - Imposto Renda<<
    cod_parcela : string;       // Código Parcela Documento Imposto	Char	x(02)	2	40	41	Não	01
    val_rendto_tribut : string; // Valor do Rendimento Tributável	Decim	999999999dd	11	42	52	Sim	Valor a Pagar (Valor total RPA)
    val_aliq_impto : string;    // Percentual de Aliquota do Imposto	Decim	99dd	4	53	56	Sim	Percentual de Aliquota do Imposto
    val_imposto : string;       // Valor do Imposto	Decim	999999999dd	11	57	67	Sim	Valor imposto
    dat_vencto_impto : string;  // Data de Vencimento do Imposto	date	DDMMAAAA	8	68	75	Não
    cod_pais : string;          // Código do País	Char	x(03)	3	76	78	Não	BRA
    des_histor_imp : string;    // Descrição do Histórico do Imposto	Char	X(2000)	2000	79	2078	Não
  end;
  TContabil = record                     // Registro das Aprop Contábeis do Item do Lote Impl de Títulos
    cdtpregistro: string;             // Tipo de Registro	Deve ser 600	Int	999	3	1	3	Sim	400
    cod_tip_fluxo_financ_ext: string; // Tipo Fluxo Financeiro Externo	Char	x(20)	20	4	23	Não
    cod_cta_ctbl_ext: string;         // Conta Contábil Externa	Char	X(20)	20	24	43	Não
    cod_sub_cta_ctbl_ext: string;     // Sub Conta Contábil Externa	Char	x(15)	15	44	58	Não
    cod_ccusto_ext: string;           // Centro de Custo Externo 	Char	x(08)	8	59	66	Não
    cod_unid_negoc_ext: string;       // Unidade de Negócio Externa	Char	x(08)	8	67	74	Não
    val_aprop_ctbl: string;           // Valor Apropiação Contábil	Decim	999999999dd	11	75	85	Sim	Valor a Pagar (Valor total RPA)
    cod_plano_cta_ctbl: string;       // Código do Plano da Conta Contábil 	Char	x(08)	8	86	93	Não	PADRAO
    cod_cta_ctbl: string;             // Código da Conta Contábil	Char	x(20)	20	94	113	Não	33127102
    cod_plano_ccusto: string;         // Código do Plano de Centro de Custo	Char	x(08)	8	114	121	Não
    cod_ccusto: string;               // Centro de Custo (**)	Char	x(11)	11	122	132	Não
    cod_unid_negoc: string;           // Código da Unidade de Negócio	Char	X(03)	3	133	135	Não	LOG
    cod_tip_fluxo_financ: string;     // Tipo de Fluxo Financeiro	Char	X(12)	12	136	147	Não	2801
    cod_ccusto2: string;               // Centro de Custo (**)	Char	X(20)	5	148	152	Não
  end;
  TExportacao  = class(tobject)
    lote : TLote;
    item_antecipacao : TItem;
    item_saldo : TItem;
    item_pedagio : TItem;
    imposto_inss : TImposto;
    imposto_sest : TImposto;
    imposto_ir : TImposto;
    contabil_antecipacao : TContabil;
    contabil_saldo : TContabil;
    contabil_pedagio : TContabil;
    dti, dtf: TDate;
    q: TClasseQuery;
    s_contabil_antecipacao, s_item_antecipacao, s_item_saldo, s_item_pedagio, s_imposto_inss, s_imposto_sest,
    s_imposto_ir, s_contabil_saldo, s_contabil_pedagio, arquivo : TStrings;
    codigoi, codigof, nome_arquivo: string;
    vllote : Currency;
    private
      function  makesql:string;
      function  selecionar_dados:boolean;
      procedure gerar_arquivo;
      procedure get_hearder;

      procedure get_item_antecipacao;
      procedure get_item_saldo;

      procedure get_item_pedagio;
      procedure set_item_pedagio;
      procedure get_contabil_pedagio;
      procedure set_contabil_pedagio;

      procedure get_contabil_antecipacao;
      procedure get_contabil_saldo;

      procedure get_imposto_inss;
      procedure get_imposto_sest;
      procedure get_imposto_ir;

      procedure set_contabil_antecipacao;
      procedure set_contabil_saldo;

      procedure set_item_antecipacao;
      procedure set_item_saldo;

      procedure set_imposto_inss;
      procedure set_imposto_sest;
      procedure set_imposto_ir;

      procedure set_hearder;
    public
      constructor Create;
      destructor  destroy; override;
      function    Exportar:Boolean;
  end;

function ExportacaoAutPagto:Boolean;
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
  vllote         := 0;
  arquivo        := TStringList.Create;
  s_contabil_antecipacao := TStringList.create;
  s_item_antecipacao     := TStringList.Create;
  s_item_saldo           := TStringList.Create;
  s_item_pedagio         := TStringList.Create;
  s_imposto_inss         := TStringList.Create;
  s_imposto_sest         := TStringList.Create;
  s_imposto_ir           := TStringList.Create;
  s_contabil_antecipacao := TStringList.Create;
  s_contabil_saldo       := TStringList.Create;
  s_contabil_pedagio     := TStringList.Create;
  q := TClasseQuery.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  frmprogressbar.setgau1;
end;

destructor TExportacao.destroy;
begin
  FreeAndNil(arquivo);
  FreeAndNil(s_contabil_antecipacao);
  FreeAndNil(s_item_antecipacao);
  FreeAndNil(s_item_saldo);
  FreeAndNil(s_item_pedagio);
  FreeAndNil(s_imposto_inss);
  FreeAndNil(s_imposto_sest);
  FreeAndNil(s_imposto_ir);
  FreeAndNil(s_contabil_saldo);
  FreeAndNil(s_contabil_pedagio);
  FreeAndNil(frmprogressbar);
  FreeAndNil(q);
end;

procedure TExportacao.gerar_arquivo;
var
  i : Integer;
begin
  get_hearder;
  set_hearder;
  for I := 0 to q.q.RecordCount - 1 do
  begin
    arquivo.add(s_item_antecipacao[i]);
    if s_imposto_inss[i] <> '' then arquivo.add(s_imposto_inss[i]);
    if s_imposto_sest[i] <> '' then arquivo.add(s_imposto_sest[i]);
    if s_imposto_ir[i]   <> '' then arquivo.add(s_imposto_ir[i]);
    arquivo.add(s_contabil_antecipacao[i]);
    arquivo.add(s_item_saldo[i]);
    arquivo.add(s_contabil_saldo[i]);

    if s_item_pedagio[i]     <> '' then arquivo.add(s_item_pedagio[i]);
    if s_contabil_pedagio[i] <> '' then arquivo.add(s_contabil_pedagio[i]);
  end;
end;

function TExportacao.makesql: string;
begin
  result := 'select r.*,p.tppessoa,p.cdtransportadora cdtransportadorap '+
            'from rpa r '+
            'inner join transportadora p on p.cdempresa=r.cdempresa and p.cdtransportadora=r.cdproprietario '+
            'where r.cdempresa='+empresa.cdempresa.tostring+' and r.cdrpa between '+codigoi+' and '+codigof+' '+
            'and r.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
            'order by r.dtemissao,r.cdrpa';
end;

function TExportacao.Exportar: Boolean;
var
  diretorio : string;
begin
  codigoi := '1';
  codigof := '999999';
  if not dlgDataInicioFinal(dti, dtf, codigoi, codigof, 'RPA') then
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
  gerar_arquivo;
  arquivo.SaveToFile(diretorio+'\'+'PAGAR_'+formatdatetime('YYYY-MM-DD', DtBanco)+'_'+formatdatetime('h-n-s', hrbanco)+'.txt');
  result := true;
end;

function TExportacao.selecionar_dados:boolean;
begin
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

    get_item_antecipacao;
    get_imposto_inss;
    get_imposto_sest;
    get_imposto_ir;
    get_contabil_antecipacao;
    get_item_saldo;
    get_contabil_saldo;

    set_item_antecipacao;
    set_imposto_inss;
    set_imposto_sest;
    set_imposto_ir;
    set_contabil_antecipacao;
    set_item_saldo;
    set_contabil_saldo;
    get_item_pedagio;
    get_contabil_pedagio;
    set_item_pedagio;
    set_contabil_pedagio;
    q.q.Next;
  end;
  result := true;
end;

procedure TExportacao.set_contabil_antecipacao;
begin
  s_contabil_antecipacao.add(contabil_antecipacao.cdtpregistro             +
                             contabil_antecipacao.cod_tip_fluxo_financ_ext +
                             contabil_antecipacao.cod_cta_ctbl_ext         +
                             contabil_antecipacao.cod_sub_cta_ctbl_ext     +
                             contabil_antecipacao.cod_ccusto_ext           +
                             contabil_antecipacao.cod_unid_negoc_ext       +
                             contabil_antecipacao.val_aprop_ctbl           +
                             contabil_antecipacao.cod_plano_cta_ctbl       +
                             contabil_antecipacao.cod_cta_ctbl             +
                             contabil_antecipacao.cod_plano_ccusto         +
                             contabil_antecipacao.cod_ccusto               +
                             contabil_antecipacao.cod_unid_negoc           +
                             contabil_antecipacao.cod_tip_fluxo_financ     +
                             contabil_antecipacao.cod_ccusto2);
end;

procedure TExportacao.set_contabil_pedagio;
begin
  if q.q.fieldbyname(_vl+_pedagio).ascurrency = 0 then
  begin
    s_contabil_pedagio.add('');
    exit;
  end;
  s_contabil_pedagio.Add(contabil_pedagio.cdtpregistro             +
                         contabil_pedagio.cod_tip_fluxo_financ_ext +
                         contabil_pedagio.cod_cta_ctbl_ext         +
                         contabil_pedagio.cod_sub_cta_ctbl_ext     +
                         contabil_pedagio.cod_ccusto_ext           +
                         contabil_pedagio.cod_unid_negoc_ext       +
                         contabil_pedagio.val_aprop_ctbl           +
                         contabil_pedagio.cod_plano_cta_ctbl       +
                         contabil_pedagio.cod_cta_ctbl             +
                         contabil_pedagio.cod_plano_ccusto         +
                         contabil_pedagio.cod_ccusto               +
                         contabil_pedagio.cod_unid_negoc           +
                         contabil_pedagio.cod_tip_fluxo_financ     +
                         contabil_pedagio.cod_ccusto2);
end;

procedure TExportacao.set_contabil_saldo;
begin
  s_contabil_saldo.Add(contabil_saldo.cdtpregistro             +
                       contabil_saldo.cod_tip_fluxo_financ_ext +
                       contabil_saldo.cod_cta_ctbl_ext         +
                       contabil_saldo.cod_sub_cta_ctbl_ext     +
                       contabil_saldo.cod_ccusto_ext           +
                       contabil_saldo.cod_unid_negoc_ext       +
                       contabil_saldo.val_aprop_ctbl           +
                       contabil_saldo.cod_plano_cta_ctbl       +
                       contabil_saldo.cod_cta_ctbl             +
                       contabil_saldo.cod_plano_ccusto         +
                       contabil_saldo.cod_ccusto               +
                       contabil_saldo.cod_unid_negoc           +
                       contabil_saldo.cod_tip_fluxo_financ     +
                       contabil_saldo.cod_ccusto2);
end;

procedure TExportacao.set_hearder;
begin
  arquivo.Add(lote.cdtpregistro             +
              lote.dsbranco1                +
              lote.cdreferencia             +
              lote.dttransacao              +
              lote.vllote                   +
              lote.cdestabelecimento        +
              lote.cdestabelecimentoexterno);
end;

procedure TExportacao.set_imposto_inss;
begin
  if q.q.FieldByName(_VL+_INSS).AsCurrency = 0 then
  begin
    s_imposto_inss.add('');
    exit;
  end;
  s_imposto_inss.Add(imposto_inss.cdtpregistro      +
                     imposto_inss.cod_pais_ext      +
                     imposto_inss.cod_unid_federac  +
                     imposto_inss.cod_imposto       +
                     imposto_inss.cod_classif_impto +
                     imposto_inss.cod_espec_docto   +
                     imposto_inss.cod_parcela       +
                     imposto_inss.val_rendto_tribut +
                     imposto_inss.val_aliq_impto    +
                     imposto_inss.val_imposto       +
                     imposto_inss.dat_vencto_impto  +
                     imposto_inss.cod_pais          +
                     imposto_inss.des_histor_imp);
end;

procedure TExportacao.set_imposto_ir;
begin
  if q.q.FieldByName(_VLIRRF).AsCurrency = 0 then
  begin
    s_imposto_ir.add('');
    exit;
  end;
  s_imposto_ir.Add(imposto_ir.cdtpregistro      +
                   imposto_ir.cod_pais_ext      +
                   imposto_ir.cod_unid_federac  +
                   imposto_ir.cod_imposto       +
                   imposto_ir.cod_classif_impto +
                   imposto_ir.cod_espec_docto   +
                   imposto_ir.cod_parcela       +
                   imposto_ir.val_rendto_tribut +
                   imposto_ir.val_aliq_impto    +
                   imposto_ir.val_imposto       +
                   imposto_ir.dat_vencto_impto  +
                   imposto_ir.cod_pais          +
                   imposto_ir.des_histor_imp);
end;

procedure TExportacao.set_imposto_sest;
begin
  if q.q.FieldByName(_VL+_SESTSENAT).AsCurrency = 0 then
  begin
    s_imposto_sest.add('');
    exit;
  end;
  s_imposto_sest.Add(imposto_sest.cdtpregistro      +
                     imposto_sest.cod_pais_ext      +
                     imposto_sest.cod_unid_federac  +
                     imposto_sest.cod_imposto       +
                     imposto_sest.cod_classif_impto +
                     imposto_sest.cod_espec_docto   +
                     imposto_sest.cod_parcela       +
                     imposto_sest.val_rendto_tribut +
                     imposto_sest.val_aliq_impto    +
                     imposto_sest.val_imposto       +
                     imposto_sest.dat_vencto_impto  +
                     imposto_sest.cod_pais          +
                     imposto_sest.des_histor_imp);
end;

procedure TExportacao.set_item_antecipacao;
begin
  s_item_antecipacao.Add(item_antecipacao.cdtpregistro            +
                         item_antecipacao.cdn_fornecedor          +
                         item_antecipacao.cod_espec_docto         +
                         item_antecipacao.cod_ser_docto           +
                         item_antecipacao.cod_tit_acr             +
                         item_antecipacao.cod_parcela             +
                         item_antecipacao.dat_emis_docto          +
                         item_antecipacao.dat_vencto_tit_acr      +
                         item_antecipacao.dat_prev_liquidac       +
                         item_antecipacao.cod_finalid_econ_ext    +
                         item_antecipacao.val_tit_acr             +
                         item_antecipacao.dat_desconto            +
                         item_antecipacao.val_desconto            +
                         item_antecipacao.val_perc_desc           +
                         item_antecipacao.num_dias_atraso         +
                         item_antecipacao.val_jur_dia_atraso      +
                         item_antecipacao.val_perc_jur_dia_atraso +
                         item_antecipacao.val_perc_multa_atraso   +
                         item_antecipacao.cod_portad_ext          +
                         item_antecipacao.cod_modalidade_ext      +
                         item_antecipacao.cod_apol_segur          +
                         item_antecipacao.cod_seguradora          +
                         item_antecipacao.cod_arrendador          +
                         item_antecipacao.cod_contrat_leas        +
                         item_antecipacao.cod_portador            +
                         item_antecipacao.cod_indic_econ          +
                         item_antecipacao.cod_forma_pagto         +
                         item_antecipacao.des_histor_padr         +
                         item_antecipacao.val_cotac_indic_econ    +
                         item_antecipacao.num_ord_invest          +
                         item_antecipacao.branco                  +
                         item_antecipacao.cod_ser_docto2          +
                         item_antecipacao.cod_tit_acr2               );
end;

procedure TExportacao.set_item_pedagio;
begin
  if q.q.fieldbyname(_vl+_pedagio).ascurrency = 0 then
  begin
    s_item_pedagio.add('');
    exit;
  end;
  s_item_pedagio.Add(item_pedagio.cdtpregistro            +
                     item_pedagio.cdn_fornecedor          +
                     item_pedagio.cod_espec_docto         +
                     item_pedagio.cod_ser_docto           +
                     item_pedagio.cod_tit_acr             +
                     item_pedagio.cod_parcela             +
                     item_pedagio.dat_emis_docto          +
                     item_pedagio.dat_vencto_tit_acr      +
                     item_pedagio.dat_prev_liquidac       +
                     item_pedagio.cod_finalid_econ_ext    +
                     item_pedagio.val_tit_acr             +
                     item_pedagio.dat_desconto            +
                     item_pedagio.val_desconto            +
                     item_pedagio.val_perc_desc           +
                     item_pedagio.num_dias_atraso         +
                     item_pedagio.val_jur_dia_atraso      +
                     item_pedagio.val_perc_jur_dia_atraso +
                     item_pedagio.val_perc_multa_atraso   +
                     item_pedagio.cod_portad_ext          +
                     item_pedagio.cod_modalidade_ext      +
                     item_pedagio.cod_apol_segur          +
                     item_pedagio.cod_seguradora          +
                     item_pedagio.cod_arrendador          +
                     item_pedagio.cod_contrat_leas        +
                     item_pedagio.cod_portador            +
                     item_pedagio.cod_indic_econ          +
                     item_pedagio.cod_forma_pagto         +
                     item_pedagio.des_histor_padr         +
                     item_pedagio.val_cotac_indic_econ    +
                     item_pedagio.num_ord_invest          +
                     item_pedagio.branco                  +
                     item_pedagio.cod_ser_docto2          +
                     item_pedagio.cod_tit_acr2               );
end;

procedure TExportacao.set_item_saldo;
begin
  s_item_saldo.Add(item_saldo.cdtpregistro            +
                   item_saldo.cdn_fornecedor          +
                   item_saldo.cod_espec_docto         +
                   item_saldo.cod_ser_docto           +
                   item_saldo.cod_tit_acr             +
                   item_saldo.cod_parcela             +
                   item_saldo.dat_emis_docto          +
                   item_saldo.dat_vencto_tit_acr      +
                   item_saldo.dat_prev_liquidac       +
                   item_saldo.cod_finalid_econ_ext    +
                   item_saldo.val_tit_acr             +
                   item_saldo.dat_desconto            +
                   item_saldo.val_desconto            +
                   item_saldo.val_perc_desc           +
                   item_saldo.num_dias_atraso         +
                   item_saldo.val_jur_dia_atraso      +
                   item_saldo.val_perc_jur_dia_atraso +
                   item_saldo.val_perc_multa_atraso   +
                   item_saldo.cod_portad_ext          +
                   item_saldo.cod_modalidade_ext      +
                   item_saldo.cod_apol_segur          +
                   item_saldo.cod_seguradora          +
                   item_saldo.cod_arrendador          +
                   item_saldo.cod_contrat_leas        +
                   item_saldo.cod_portador            +
                   item_saldo.cod_indic_econ          +
                   item_saldo.cod_forma_pagto         +
                   item_saldo.des_histor_padr         +
                   item_saldo.val_cotac_indic_econ    +
                   item_saldo.num_ord_invest          +
                   item_saldo.branco                  +
                   item_saldo.cod_ser_docto2          +
                   item_saldo.cod_tit_acr2               );
end;

procedure TExportacao.get_contabil_antecipacao;
begin
  contabil_antecipacao.cdtpregistro             := '400';
  contabil_antecipacao.cod_tip_fluxo_financ_ext := StringOfChar(' ', 20);
  contabil_antecipacao.cod_cta_ctbl_ext         := StringOfChar(' ', 20);
  contabil_antecipacao.cod_sub_cta_ctbl_ext     := StringOfChar(' ', 15);
  contabil_antecipacao.cod_ccusto_ext           := StringOfChar(' ', 08);
  contabil_antecipacao.cod_unid_negoc_ext       := StringOfChar(' ', 08);
  contabil_antecipacao.val_aprop_ctbl           := FormatarMoedaSPonto_(q.q.FieldByName(_vl+_adiantamento).AsCurrency+
                                                                       q.q.FieldByName(_vlinss).AsCurrency+
                                                                       q.q.FieldByName(_vl+_sestsenat).AsCurrency+
                                                                       q.q.FieldByName(_vlirrf).AsCurrency, 11);


  contabil_antecipacao.cod_plano_cta_ctbl       := 'PADRAO  ';
  if q.q.fieldbyname(_tppessoa).asstring = _f then
    contabil_antecipacao.cod_cta_ctbl := '32215002            '
  else
    contabil_antecipacao.cod_cta_ctbl := '32215001            ';
  //contabil_antecipacao.cod_plano_ccusto         := StringOfChar(' ', 08);
  contabil_antecipacao.cod_plano_ccusto         := 'PADRAO  '; //StringOfChar(' ', 08);
  contabil_antecipacao.cod_ccusto               := '501601     ';
  contabil_antecipacao.cod_unid_negoc           := 'LOG';
  contabil_antecipacao.cod_tip_fluxo_financ     := '2.8.01      ';
  contabil_antecipacao.cod_ccusto2              := StringOfChar(' ', 05);
end;

procedure TExportacao.get_contabil_pedagio;
begin
  if q.q.fieldbyname(_vl+_pedagio).ascurrency = 0 then
  begin
    exit;
  end;
  contabil_pedagio.cdtpregistro             := '400';
  contabil_pedagio.cod_tip_fluxo_financ_ext := StringOfChar(' ', 20);
  contabil_pedagio.cod_cta_ctbl_ext         := StringOfChar(' ', 20);
  contabil_pedagio.cod_sub_cta_ctbl_ext     := StringOfChar(' ', 15);
  contabil_pedagio.cod_ccusto_ext           := StringOfChar(' ', 08);
  contabil_pedagio.cod_unid_negoc_ext       := StringOfChar(' ', 08);
  contabil_pedagio.val_aprop_ctbl           := FormatarMoedaSPonto_(q.q.FieldByName(_vl+_pedagio).AsCurrency, 11);
  contabil_pedagio.cod_plano_cta_ctbl       := 'PADRAO  ';
  if q.q.fieldbyname(_tppessoa).asstring = _f then
    contabil_pedagio.cod_cta_ctbl := '21111006            '
  else
    contabil_pedagio.cod_cta_ctbl := '21111006            ';
  contabil_pedagio.cod_plano_ccusto         := StringOfChar(' ', 08);
  //contabil_pedagio.cod_plano_ccusto         := 'PADRAO  ';
  contabil_pedagio.cod_ccusto               := StringOfChar(' ', 11);
  contabil_pedagio.cod_unid_negoc           := 'LOG';
  contabil_pedagio.cod_tip_fluxo_financ     := '2.8.01      ';
  contabil_pedagio.cod_ccusto2              := StringOfChar(' ', 05);
end;

procedure TExportacao.get_contabil_saldo;
begin
  contabil_saldo.cdtpregistro             := '400';
  contabil_saldo.cod_tip_fluxo_financ_ext := StringOfChar(' ', 20);
  contabil_saldo.cod_cta_ctbl_ext         := StringOfChar(' ', 20);
  contabil_saldo.cod_sub_cta_ctbl_ext     := StringOfChar(' ', 15);
  contabil_saldo.cod_ccusto_ext           := StringOfChar(' ', 08);
  contabil_saldo.cod_unid_negoc_ext       := StringOfChar(' ', 08);
  contabil_saldo.val_aprop_ctbl           := FormatarMoedaSPonto_(q.q.FieldByName(_vlfrete).AsCurrency -
                                                                q.q.FieldByName(_vl+_adiantamento).AsCurrency -
                                                                q.q.FieldByName(_vlinss).AsCurrency-
                                                                q.q.FieldByName(_vl+_sestsenat).AsCurrency-
                                                                q.q.FieldByName(_vlirrf).AsCurrency, 11);

  contabil_saldo.cod_plano_cta_ctbl       := 'PADRAO  ';
  if q.q.fieldbyname(_tppessoa).asstring = _f then
    contabil_saldo.cod_cta_ctbl := '32215002            '
  else
    contabil_saldo.cod_cta_ctbl := '32215001            ';
  //contabil_saldo.cod_plano_ccusto         := StringOfChar(' ', 08);
  contabil_saldo.cod_plano_ccusto         := 'PADRAO  '; //StringOfChar(' ', 08);
  contabil_saldo.cod_ccusto               := '501601     ';
  contabil_saldo.cod_unid_negoc           := 'LOG';
  contabil_saldo.cod_tip_fluxo_financ     := '2.8.01      ';
  contabil_saldo.cod_ccusto2              := StringOfChar(' ', 05);
end;

procedure TExportacao.get_hearder;
begin
  lote.cdtpregistro             := '100';
  lote.dsbranco1                := StringOfChar(' ', 3);
  lote.cdreferencia             := FormatDateTime(_YYMMDD, DtBanco)+FormatDateTime(_hhmm, tsBanco);
  lote.dttransacao              := FormatDateTime(_DDMMYYYY, q.q.fieldbyname(_dtemissao).asdatetime);
  lote.vllote                   := FormatarMoedaSPonto_(vllote, 14);
  lote.cdestabelecimento        := '501  ';
  lote.cdestabelecimentoexterno := StringOfChar(' ', 05);
end;

procedure TExportacao.get_imposto_inss;
begin
  if q.q.FieldByName(_VL+_INSS).AsCurrency = 0 then
  begin
    exit;
  end;
  imposto_inss.cdtpregistro      := '300';
  imposto_inss.cod_pais_ext      := stringofchar(' ', 20);
  imposto_inss.cod_unid_federac  := stringofchar(' ', 03);
  imposto_inss.cod_imposto       := '2100 ';
  imposto_inss.cod_classif_impto := '2100 ';
  imposto_inss.cod_espec_docto   := 'RN ';
  imposto_inss.cod_parcela       := '01';
  imposto_inss.val_rendto_tribut := FormatarMoedaSPonto_(q.q.FieldByName(_vlfrete).AsCurrency, 11);
  imposto_inss.val_aliq_impto    := FormatarMoedaSPonto_(11, 04);
  imposto_inss.val_imposto       := FormatarMoedaSPonto_(q.q.FieldByName(_VL+_INSS).AsCurrency, 11);
  imposto_inss.dat_vencto_impto  := stringofchar(' ', 08);
  imposto_inss.cod_pais          := 'BRA';
  imposto_inss.des_histor_imp    := stringofchar(' ', 2000);
end;

procedure TExportacao.get_imposto_ir;
begin
  if q.q.FieldByName(_VLIRRF).AsCurrency = 0 then
  begin
    exit;
  end;
  imposto_ir.cdtpregistro      := '300';
  imposto_ir.cod_pais_ext      := stringofchar(' ', 20);
  imposto_ir.cod_unid_federac  := stringofchar(' ', 03);
  imposto_ir.cod_imposto       := '0588 ';
  imposto_ir.cod_classif_impto := '0588 ';
  imposto_ir.cod_espec_docto   := 'RI ';
  imposto_ir.cod_parcela       := '01';
  imposto_ir.val_rendto_tribut := FormatarMoedaSPonto_(q.q.FieldByName(_vlfrete).AsCurrency, 11);
  imposto_ir.val_aliq_impto    := FormatarMoedaSPonto_(0, 04);
  imposto_ir.val_imposto       := FormatarMoedaSPonto_(q.q.FieldByName(_VLIRRF).AsCurrency, 11);
  imposto_ir.dat_vencto_impto  := stringofchar(' ', 08);
  imposto_ir.cod_pais          := 'BRA';
  imposto_ir.des_histor_imp    := stringofchar(' ', 2000);
end;

procedure TExportacao.get_imposto_sest;
begin
  if q.q.FieldByName(_VL+_SESTSENAT).AsCurrency = 0 then
  begin
    exit;
  end;
  imposto_sest.cdtpregistro      := '300';
  imposto_sest.cod_pais_ext      := stringofchar(' ', 20);
  imposto_sest.cod_unid_federac  := stringofchar(' ', 03);
  imposto_sest.cod_imposto       := '2119 ';
  imposto_sest.cod_classif_impto := '2119 ';
  imposto_sest.cod_espec_docto   := 'RE ';
  imposto_sest.cod_parcela       := '01';
  imposto_sest.val_rendto_tribut := FormatarMoedaSPonto_(q.q.FieldByName(_vlfrete).AsCurrency, 11);
  imposto_sest.val_aliq_impto    := FormatarMoedaSPonto_(2.5, 04);
  imposto_sest.val_imposto       := FormatarMoedaSPonto_(q.q.FieldByName(_VL+_SESTSENAT).AsCurrency, 11);
  imposto_sest.dat_vencto_impto  := stringofchar(' ', 08);
  imposto_sest.cod_pais          := 'BRA';
  imposto_sest.des_histor_imp    := stringofchar(' ', 2000);
end;

procedure TExportacao.get_item_antecipacao;
begin
  vllote := vllote + q.q.FieldByName(_vl+_adiantamento).AsCurrency;
  item_antecipacao.cdtpregistro            := '200';
  item_antecipacao.cdn_fornecedor          := FormatarTextoEsquerda(q.q.FieldByName(_cdtransportadora+_P).AsString, 9, _0);
  item_antecipacao.cod_espec_docto         := 'NM ';
  item_antecipacao.cod_ser_docto           := '  1';

  if q.q.fieldbyname(_tppessoa).asstring = _f then
    item_antecipacao.cod_tit_acr := 'RPA'+FormatarTextoEsquerda(q.q.FieldByName(_cd+_rpa).AsString, 6, _0)+'A'
  else
    item_antecipacao.cod_tit_acr := 'CPJ'+FormatarTextoEsquerda(q.q.FieldByName(_cd+_rpa).AsString, 6, _0)+'A';

  item_antecipacao.cod_parcela             := '01';
  item_antecipacao.dat_emis_docto          := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item_antecipacao.dat_vencto_tit_acr      := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item_antecipacao.dat_prev_liquidac       := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item_antecipacao.cod_finalid_econ_ext    := StringOfChar(' ', 10);
  item_antecipacao.val_tit_acr             := FormatarMoedaSPonto_(q.q.FieldByName(_vl+_adiantamento).AsCurrency+
                                                                       q.q.FieldByName(_vlinss).AsCurrency+
                                                                       q.q.FieldByName(_vl+_sestsenat).AsCurrency+
                                                                       q.q.FieldByName(_vlirrf).AsCurrency, 11);
  item_antecipacao.dat_desconto            := StringOfChar(' ', 08);
  item_antecipacao.val_desconto            := StringOfChar(' ', 11);
  item_antecipacao.val_perc_desc           := StringOfChar(' ', 04);
  item_antecipacao.num_dias_atraso         := StringOfChar(' ', 02);
  item_antecipacao.val_jur_dia_atraso      := StringOfChar(' ', 11);
  item_antecipacao.val_perc_jur_dia_atraso := StringOfChar(' ', 04);
  item_antecipacao.val_perc_multa_atraso   := StringOfChar(' ', 04);
  item_antecipacao.cod_portad_ext          := StringOfChar(' ', 10);
  item_antecipacao.cod_modalidade_ext      := StringOfChar(' ', 02);
  item_antecipacao.cod_apol_segur          := StringOfChar(' ', 12);
  item_antecipacao.cod_arrendador          := StringOfChar(' ', 06);
  item_antecipacao.cod_contrat_leas        := StringOfChar(' ', 12);
  item_antecipacao.cod_seguradora          := StringOfChar(' ', 12);
  item_antecipacao.cod_portador            := '23700';
  item_antecipacao.cod_indic_econ          := 'REAL    ';
  item_antecipacao.cod_forma_pagto         := 'CRD';
  item_antecipacao.des_histor_padr         := formatartextodireita('ANTECIPACAO', 200);
  item_antecipacao.val_cotac_indic_econ    := StringOfChar(' ', 17);
  item_antecipacao.num_ord_invest          := StringOfChar(' ', 08);
  item_antecipacao.branco                  := StringOfChar(' ', 08);
  item_antecipacao.cod_ser_docto2          := '     ';
  item_antecipacao.cod_tit_acr2            := StringOfChar(' ', 16);
end;

procedure TExportacao.get_item_pedagio;
begin
  if q.q.fieldbyname(_vl+_pedagio).ascurrency = 0 then
  begin
    exit;
  end;
  vllote := vllote + q.q.FieldByName(_vl+_pedagio).AsCurrency;
  item_pedagio.cdtpregistro            := '200';
  item_pedagio.cdn_fornecedor          := FormatarTextoEsquerda(q.q.FieldByName(_cdtransportadora+_p).AsString, 9, _0);
  item_pedagio.cod_espec_docto         := 'VP ';
  item_pedagio.cod_ser_docto           := '  1';

  if q.q.fieldbyname(_tppessoa).asstring = _f then
    item_pedagio.cod_tit_acr := 'RPA'+FormatarTextoEsquerda(q.q.FieldByName(_cd+_rpa).AsString, 6, _0)+'C'
  else
    item_pedagio.cod_tit_acr := 'CPJ'+FormatarTextoEsquerda(q.q.FieldByName(_cd+_rpa).AsString, 6, _0)+'C';

  item_pedagio.cod_parcela             := '01';
  item_pedagio.dat_emis_docto          := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item_pedagio.dat_vencto_tit_acr      := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item_pedagio.dat_prev_liquidac       := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item_pedagio.cod_finalid_econ_ext    := StringOfChar(' ', 10);
  item_pedagio.val_tit_acr             := FormatarMoedaSPonto_(q.q.FieldByName(_vl+_pedagio).AsCurrency, 11);
  item_pedagio.dat_desconto            := StringOfChar(' ', 08);
  item_pedagio.val_desconto            := StringOfChar(' ', 11);
  item_pedagio.val_perc_desc           := StringOfChar(' ', 04);
  item_pedagio.num_dias_atraso         := StringOfChar(' ', 02);
  item_pedagio.val_jur_dia_atraso      := StringOfChar(' ', 11);
  item_pedagio.val_perc_jur_dia_atraso := StringOfChar(' ', 04);
  item_pedagio.val_perc_multa_atraso   := StringOfChar(' ', 04);
  item_pedagio.cod_portad_ext          := StringOfChar(' ', 10);
  item_pedagio.cod_modalidade_ext      := StringOfChar(' ', 02);
  item_pedagio.cod_apol_segur          := StringOfChar(' ', 12);
  item_pedagio.cod_seguradora          := StringOfChar(' ', 12);
  item_pedagio.cod_arrendador          := StringOfChar(' ', 06);
  item_pedagio.cod_contrat_leas        := StringOfChar(' ', 12);
  item_pedagio.cod_portador            := '23700';
  item_pedagio.cod_indic_econ          := 'REAL    ';
  item_pedagio.cod_forma_pagto         := 'CRD';
  item_pedagio.des_histor_padr         := formatartextodireita('PEDAGIO', 200);
  item_pedagio.val_cotac_indic_econ    := StringOfChar(' ', 17);
  item_pedagio.num_ord_invest          := StringOfChar(' ', 08);
  item_pedagio.branco                  := StringOfChar(' ', 08);
  item_pedagio.cod_ser_docto2          := '     ';
  item_pedagio.cod_tit_acr2            := StringOfChar(' ', 16);
end;

procedure TExportacao.get_item_saldo;
begin
  vllote := vllote + q.q.FieldByName(_vlfrete).AsCurrency - q.q.FieldByName(_vl+_adiantamento).AsCurrency;
  item_saldo.cdtpregistro            := '200';
  item_saldo.cdn_fornecedor          := FormatarTextoEsquerda(q.q.FieldByName(_cdtransportadora+_P).AsString, 9, _0);
  item_saldo.cod_espec_docto         := 'NN ';
  item_saldo.cod_ser_docto           := '  1';

  if q.q.fieldbyname(_tppessoa).asstring = _f then
    item_saldo.cod_tit_acr := 'RPA'+FormatarTextoEsquerda(q.q.FieldByName(_cd+_rpa).AsString, 6, _0)+'B'
  else
    item_saldo.cod_tit_acr := 'CPJ'+FormatarTextoEsquerda(q.q.FieldByName(_cd+_rpa).AsString, 6, _0)+'B';

  item_saldo.cod_parcela             := '01';
  item_saldo.dat_emis_docto          := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item_saldo.dat_vencto_tit_acr      := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item_saldo.dat_prev_liquidac       := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item_saldo.cod_finalid_econ_ext    := StringOfChar(' ', 10);

  item_saldo.val_tit_acr             := FormatarMoedaSPonto_(q.q.FieldByName(_vlfrete).AsCurrency -
                                                             q.q.FieldByName(_vl+_adiantamento).AsCurrency -
                                                             q.q.FieldByName(_vlinss).AsCurrency-
                                                             q.q.FieldByName(_vl+_sestsenat).AsCurrency-
                                                             q.q.FieldByName(_vlirrf).AsCurrency, 11);

  item_saldo.dat_desconto            := StringOfChar(' ', 08);
  item_saldo.val_desconto            := StringOfChar(' ', 11);
  item_saldo.val_perc_desc           := StringOfChar(' ', 04);
  item_saldo.num_dias_atraso         := StringOfChar(' ', 02);
  item_saldo.val_jur_dia_atraso      := StringOfChar(' ', 11);
  item_saldo.val_perc_jur_dia_atraso := StringOfChar(' ', 04);
  item_saldo.val_perc_multa_atraso   := StringOfChar(' ', 04);
  item_saldo.cod_portad_ext          := StringOfChar(' ', 10);
  item_saldo.cod_modalidade_ext      := StringOfChar(' ', 02);
  item_saldo.cod_apol_segur          := StringOfChar(' ', 12);
  item_saldo.cod_seguradora          := StringOfChar(' ', 12);
  item_saldo.cod_arrendador          := StringOfChar(' ', 06);
  item_saldo.cod_contrat_leas        := StringOfChar(' ', 12);
  item_saldo.cod_portador            := '23700';
  item_saldo.cod_indic_econ          := 'REAL    ';
  item_saldo.cod_forma_pagto         := 'CRD';
  item_saldo.des_histor_padr         := formatartextodireita('SALDO', 200);
  item_saldo.val_cotac_indic_econ    := StringOfChar(' ', 17);
  item_saldo.num_ord_invest          := StringOfChar(' ', 08);
  item_saldo.branco                  := StringOfChar(' ', 08);
  item_saldo.cod_ser_docto2          := '     ';
  item_saldo.cod_tit_acr2            := StringOfChar(' ', 16);
end;

end.
