unit classeexportacaodatasulduplicata;

interface

uses
  {$IFNDEF VER210}System.Actions, System.UITypes,{$ENDIF}
  Forms, Dialogs, SysUtils, Classes, Controls,
  ACBrValidador,
  udlgdatabalanco, uRichEdit, uProgressBar, uRegistro, ustrings,
  uRotinas, uConstantes, udatahora,
  classeregistrainformacao, classeexecutasql, classeempresa, classeaplicacao, classequery;

function ExportacaoDuplicata:Boolean;

implementation

type
  TLote = record                       // Registro do Lote de Implantação de Títulos
    cdtpregistro :string;              // 100
    dsbranco1 : string;                // 03
    cdreferencia : string;             // 10
    dttransacao : string;              // DDMMAAAA
    filler : string;                   // 01
    vllote : string;                   // Int   99999999999dd             26    38 Não
    dsbranco2 : string;                // 03
    indicecobranca : string;           // ind_tip_cobr_acr                         Tipo de Cobrança:: Normal/Especial                           Char  x(10)                     42    51 Não
    cdestabelecimentoexterno : string; // 05
    cdestabelecimento : string;        // 05
  end;
  TItem = record                         // Registro do Item do Lote de Implantação de Títulos
    cdtpregistro :string;                // Deve ser 200                                                 Int   999                        1     3 Sim
    Filler  : string;                    // Espaço em Branco                                             Char  x(01)                      4     4 Não
    cdn_cliente : string;                // Código do Cliente                                            Int   999999999                  5    13 Sim
    cod_espec_docto : string;            // Código Espécie Documento                                     Char  X(03)                     14    16 Sim
    cod_ser_docto : string;              // Código Série Documento (*)                                   Char  X(03)                     17    19 Sim
    cod_tit_acr : string;                // Código do Documento (*)                                      Char  x(10)                     20    29 Sim
    cod_indic_econ : string;             // Indicador Econômico                                          Char  x(08)                     30    37 Sim
    cod_parcela : string;                // Código da Parcela                                            Char  x(02)                     38    39 Sim
    dat_emis_docto : string;             // Data de Emissão do Documento                                 date  DDMMAAAA                  40    47 Não
    dat_vencto_tit_acr : string;         // Data de Vencimento do Título                                 date  DDMMAAAA                  48    55 Sim
    dat_prev_liquidac : string;          // Data Prevista de Liquidação                                  date  DDMMAAAA                  56    63 Não
    dat_desconto : string;               // Data do Desconto                                             date  DDMMAAAA                  64    71 Não
    Filler1 : string;                    // Espaço em Branco                                             Char  X(03)                     72    74 Não
    val_tit_acr : string;                // Valor do Documento                                           Int   999999999dd               75    85 Sim
    Filler2 : string;                    // Espaço em Branco                                             Char  X(03)                     86    88 Não
    val_desconto : string;               // Valor do Desconto                                            Int   999999999dd               89    99 Não
    val_perc_desc : string;              // Percentual Desconto                                          Int   99dddd                   100   105 Não
    Filler3 : string;                    // Espaço em Branco                                             Char  x(02)                    106   107 Não
    val_perc_multa_atraso : string;      // Percentual de Multa pelo Atraso                              Int   99dd                     108   111 Não
    qtd_dias_carenc_multa_acr : string;  // Dias Carência Multa                                          Int   999                      112   114 Não
    qtd_dias_carenc_juros_acr : string;  // Dias Carência Juros                                          Int   999                      115   117 Não
    Filler4 : string;                    // Espaço em Branco                                             Char  X(03)                    118   120 Não
    val_liq_tit_acr : string;            // Valor Líquido do Título                                      Int   999999999dd              121   131 Não
    cod_portad_ext : string;             // Código do Portador Externo                                   Char  x(08)                    132   139 Não
    cod_modalidade_ext : string;         // Código da Modalidade Externa                                 Char  x(08)                    140   147 Não
    cdn_repres : string;                 // Código do Representante                                      Int   999999                   148   153 Não
    cod_instruc_bcia_1_movto : string;   // Código da Primeira Instrução Bancária                        Char  x(04)                    154   157 Não
    cod_instruc_bcia_2_movto : string;   // Código da Segunda Instrução Bancária                         Char  x(04)                    158   161 Não
    cod_portador : string;               // Código do Portador                                           Char  x(05)                    162   166 Não
    Filler5 : string;                    // Espaço em Branco                                             Char  x(03)                    167   169 Não
    cod_cart_bcia : string;              // Código da Carteira Bancária                                  Char  X(03)                    170   172 Não
    cod_motiv_movto_tit_acr : string;    // Código do Motivo do Movimento                                Char  x(08)                    173   180 Não
    cod_histor_padr : string;            // Código do Histórico Padrão                                   Char  x(08)                    181   188 Não
    cod_banco : string;                  // Código do Banco                                              Char  x(08)                    189   196 Não
    cod_agencia : string;                // Código da Agência                                            Char  x(10)                    197   206 Não
    cod_cta_corren_bco : string;         // Código da Conta Corrente                                     Char  x(20)                    207   226 Não
    cod_digito_cta_corren : string;      // Dígito da Conta Corrente                                     Char  x(02)                    227   228 Não
    cod_catcred : string;                // Número do Cartão de Crédito                                  Char  x(20)                    229   248 Não
    cod_mes_ano_valid_cartao : string;   // Mês/Ano Validade Cartão Crédito                              date  MMAAAA                   249   254 Não
    cod_autoriz_cartao_cr : string;      // Autorização do Cartão de Crédito                             Char  x(06)                    255   260 Não
    dat_compra_cartao_cr : string;       // Data Efetivação de Venda                                     date  DDMMAAAA                 261   268 Não
    num_ddd_localid_conces : string;     // DDD do Telefone                                              Int   999                      269   271 Não
    num_prefix_localid_conces : string;  // Prefixo do Telefone                                          Int   9999                     272   275 Não
    num_milhar_localid_conces : string;  // Milhar do Telefone                                           Int   9999                     276   279 Não
    log_liquidac_autom : string;         // Liquidação Automática                                        Char  S/N                      280   280 Não
    log_tip_cr_perda_dedut_tit : string; // Crédito com Garantia                                         Char  S/N                      281   281 Não
    cod_cond_cobr : string;              // Código Condição de Cobrança                                  Char  x(08)                    282   289 Não
    Filler6 : string;                    // Espaço em Branco                                             Char  x(01)                    290   290 Não
    ind_ender_cobr : string;             // Indicador Endereço Cobrança: Cliente/Representante/Contato   Char  x(15)                    291   305 Sim
    nom_abrev_contat : string;           // Abreviado Contato                                            Char  x(15)                    306   320 Não
    log_db_autom : string;               // Débito Automático                                            Char  S/N                      321   321 Não
    Filler7 : string;                    // Espaço em Branco                                             Char  x(02)                    322   323 Não
    log_destinac_cobr : string;          // Lógico Destinação Cobrança                                   Char  S/N                      324   324 Não
    Filler8 : string;                    // Espaço em Branco                                             Char  x(02)                    325   326 Não
    ind_sit_bcia_tit_acr : string;       // Situação Bancária: Liberado/Bloqueado/Protesto               Char  x(12)                    327   338 Sim
    ind_sit_tit_acr : string;            // Situação Título: Normal/Antecipado/Devolução                 Char  x(13)                    339   351 Sim
    val_perc_juros_dia_atraso : string;  // Percentual de Juros por Dia de Atraso                        Int   99dddddd                 352   359 Não
    cod_tit_acr_bco : string;            // Número Docto Banco                                           Char  x(20)                    360   379 Não
    dat_abat_tit_acr : string;           // Data de Abatimento                                           date  DDMMAAAA                 380   387 Não
    val_perc_abat_acr : string;          // Percentual de Abatimento                                     Int   999dddd                  388   394 Não
    val_abat_tit_acr : string;           // Valor de Abatimento                                          Int   9999999999dd             395   406 Não
    cod_agenc_cobr_bcia : string;        // Agência Cobrança                                             Char  x(10)                    407   416 Não
    des_obs_cobr : string;               // Descrição Observação de Cobrança                             Char  x(40)                    417   456 Não
    Filler9 : string;                    // Espaço em Branco                                             Char  x(01)                    457   457 Não
    val_cotac_indic_econ : string;       // Valor Cotação em Moeda Corrente                              Int   9999999dddddddddd        458   474 Não
    ind_tip_calc_juros : string;         // Tipo Cálculo Juros                                           Char  x(10)                    475   484 Não
    cod_comprov_vda : string;            // Código do Comprovante de Venda                               Char  x(12)                    485   496 Não
    num_parc_cartcred : string;          // Número de Parcelas no Cartão                                 Int   99                       497   498 Não
    cod_autoriz_bco_emissor : string;    // Código de Autorização                                        Char  x(6)                     499   504 Não
    cod_lote_origin : string;            // Lote Original                                                Char  x(7)                     505   511 Não
    val_cr_pis : string;                 // Valor do PIS que a empresa poderá se creditar                Int   999999999dd              512   522 Não
    val_cr_cofins : string;              // Valor do COFINS que a empresa poderá se creditar             Int   999999999dd              523   533 Não
    val_cr_csll : string;                // Valor do CSLL que a empresa poderá se creditar               Int   999999999dd              534   544 Não
    cod_indic_econ_desemb : string;      // Indicador Econômico Depósito                                 Char  x(8)                     545   552 Não
    vl_base_calculo : string;            // Valor da Base de cálculo dos impostos PIS/COFINS/CSLL        Int   999999999dd              553   563 Sim
    log_retencao : string;               // Indica se o título sofreu retenção na implantação            Char  x(01)                    564   564 Não
    cod_ser_docto1 : string;             // Código Série Documento (*)                                   Char  x(05)                    574   578 Sim
    cod_tit_acr1 : string;               // Código do Documento (*)                                      Char  X(16)                    579   594 Sim
  end;
  TContabil = record                     // Registro das Aprop Contábeis do Item do Lote Impl de Títulos
    cdtpregistro :string;                // Deve ser 300                                                 Int   999                        1     3 Sim
    cod_cta_ctbl_ext : string;           // Conta Contábil Externa                                       Char  x(20)                      4    23 Não
    cod_sub_cta_ctbl_ext : string;       // Sub Conta Contábil Externa                                   Char  x(15)                     24    38 Não
    cod_unid_negoc_ext : string;         // Unidade de Negócio Externa                                   Char  x(08)                     39    46 Não
    cod_fluxo_financ_ext : string;       // Fluxo Financeiro Externo                                     Char  x(20)                     47    66 Não
    val_aprop_ctbl : string;             // Valor Apropiação Contábil                                    Int   999999999dd               67    77 Sim
    Filler : string;                     // Espaço em Branco                                             Char  X(03)                     78    80 Não
    log_impto_val_agreg : string;        // Indica se o Rateio é de IVA                                  Char  S/N                       81    81 Sim
    cod_plano_cta_ctbl : string;         // Código do Plano da Conta Contábil                            Char  x(08)                     82    89 Sim
    cod_cta_ctbl : string;               // Código da Conta Contábil                                     Char  x(20)                     90   109 Não
    cod_unid_negoc : string;             // Código da Unidade de Negócio                                 Char  X(03)                    110   112 Não
    cod_tip_fluxo_financ : string;       // Tipo de Fluxo Financeiro                                     Char  x(12)                    113   124 Não
    cod_plano_ccusto : string;           // Plano de Centro de Custo                                     Char  x(08)                    125   132 Não
    cod_ccusto : string;                 // Centro de Custo (**)                                         Char  x(11)                    133   143 Não
    cod_ccusto_ext : string;             // Centro de Custo Externo                                      Char  x(08)                    144   151 Não
    cod_ccusto1 : string;                 // Centro de Custo (**)                                         Char  x(20)                    152   171 Não
  end;
  TExportacao  = class(tobject)
    lote : TLote;
    item : TItem;
    contabil : TContabil;
    dti, dtf: TDate;
    q: TClasseQuery;
    contabilf, itemf, arquivo : TStrings;
    codigoi, codigof, nome_arquivo: string;
    vllote : Currency;
    private
      function  makesql:string;
      function selecionar_dados:boolean;
      procedure gerar_arquivo;
      procedure get_hearder;
      procedure get_item;
      procedure get_contabil;
      procedure set_item;
      procedure set_hearder;
      procedure set_contabil;
    public
      constructor Create;
      destructor  destroy; override;
      function    Exportar:Boolean;
  end;

function ExportacaoDuplicata:Boolean;
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
  itemf          := TStringList.Create;
  contabilf      := TStringList.Create;
  q := TClasseQuery.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  frmprogressbar.setgau1;
end;

destructor TExportacao.destroy;
begin
  FreeAndNil(arquivo);
  FreeAndNil(contabilf);
  FreeAndNil(itemf);
  FreeAndNil(frmprogressbar);
  FreeAndNil(q);
  inherited;
end;

procedure TExportacao.gerar_arquivo;
var
  i : Integer;
begin
  get_hearder;
  set_hearder;
  for I := 0 to q.q.RecordCount - 1 do
  begin
    arquivo.add(itemf[i]);
    arquivo.add(contabilf[i]);
  end;
end;

function TExportacao.makesql: string;
begin
  result := 'select * '+
            'from duplicata '+
            'where cdempresa='+empresa.cdempresa.tostring+' and cdcte between '+codigoi+' and '+codigof+' '+
            'and dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
            'order by dtemissao,cdcte';
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
  gerar_arquivo;
  arquivo.SaveToFile(diretorio+'\'+'RECEBER_'+formatdatetime('YYYY-MM-DD', DtBanco)+'_'+formatdatetime('h-n-s', hrbanco)+'.txt');
  result := true;
end;

function TExportacao.selecionar_dados:boolean;
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
  while not q.q.Eof do
  begin
    frmprogressbar.gau.Progress := q.q.RecNo;
    Application.ProcessMessages;
    get_item;
    get_contabil;
    set_item;
    set_contabil;
    q.q.Next;
  end;
  result := true;
end;

procedure TExportacao.set_contabil;
begin
  contabilf.Add(contabil.cdtpregistro         +
                contabil.cod_cta_ctbl_ext     +
                contabil.cod_sub_cta_ctbl_ext +
                contabil.cod_unid_negoc_ext   +
                contabil.cod_fluxo_financ_ext +
                contabil.val_aprop_ctbl       +
                contabil.Filler               +
                contabil.log_impto_val_agreg  +
                contabil.cod_plano_cta_ctbl   +
                contabil.cod_cta_ctbl         +
                contabil.cod_unid_negoc       +
                contabil.cod_tip_fluxo_financ +
                contabil.cod_plano_ccusto     +
                contabil.cod_ccusto           +
                contabil.cod_ccusto_ext       +
                contabil.cod_ccusto1);
end;

procedure TExportacao.set_hearder;
begin
  arquivo.Add(lote.cdtpregistro             +
              lote.dsbranco1                +
              lote.cdreferencia             +
              lote.dttransacao              +
              lote.filler                   +
              lote.vllote                   +
              lote.dsbranco2                +
              lote.indicecobranca           +
              lote.cdestabelecimentoexterno +
              lote.cdestabelecimento);
end;

procedure TExportacao.set_item;
begin
  itemf.Add(item.cdtpregistro               +
            item.Filler                     +
            item.cdn_cliente                +
            item.cod_espec_docto            +
            item.cod_ser_docto              +
            item.cod_tit_acr                +
            item.cod_indic_econ             +
            item.cod_parcela                +
            item.dat_emis_docto             +
            item.dat_vencto_tit_acr         +
            item.dat_prev_liquidac          +
            item.dat_desconto               +
            item.Filler1                    +
            item.val_tit_acr                +
            item.Filler2                    +
            item.val_desconto               +
            item.val_perc_desc              +
            item.Filler3                    +
            item.val_perc_multa_atraso      +
            item.qtd_dias_carenc_multa_acr  +
            item.qtd_dias_carenc_juros_acr  +
            item.Filler4                    +
            item.val_liq_tit_acr            +
            item.cod_portad_ext             +
            item.cod_modalidade_ext         +
            item.cdn_repres                 +
            item.cod_instruc_bcia_1_movto   +
            item.cod_instruc_bcia_2_movto   +
            item.cod_portador               +
            item.Filler5                    +
            item.cod_cart_bcia              +
            item.cod_motiv_movto_tit_acr    +
            item.cod_histor_padr            +
            item.cod_banco                  +
            item.cod_agencia                +
            item.cod_cta_corren_bco         +
            item.cod_digito_cta_corren      +
            item.cod_catcred                +
            item.cod_mes_ano_valid_cartao   +
            item.cod_autoriz_cartao_cr      +
            item.dat_compra_cartao_cr       +
            item.num_ddd_localid_conces     +
            item.num_prefix_localid_conces  +
            item.num_milhar_localid_conces  +
            item.log_liquidac_autom         +
            item.log_tip_cr_perda_dedut_tit +
            item.cod_cond_cobr              +
            item.Filler6                    +
            item.ind_ender_cobr             +
            item.nom_abrev_contat           +
            item.log_db_autom               +
            item.Filler7                    +
            item.log_destinac_cobr          +
            item.Filler8                    +
            item.ind_sit_bcia_tit_acr       +
            item.ind_sit_tit_acr            +
            item.val_perc_juros_dia_atraso  +
            item.cod_tit_acr_bco            +
            item.dat_abat_tit_acr           +
            item.val_perc_abat_acr          +
            item.val_abat_tit_acr           +
            item.cod_agenc_cobr_bcia        +
            item.des_obs_cobr               +
            item.Filler9                    +
            item.val_cotac_indic_econ       +
            item.ind_tip_calc_juros         +
            item.cod_comprov_vda            +
            item.num_parc_cartcred          +
            item.cod_autoriz_bco_emissor    +
            item.cod_lote_origin            +
            item.val_cr_pis                 +
            item.val_cr_cofins              +
            item.val_cr_csll                +
            item.cod_indic_econ_desemb      +
            item.vl_base_calculo            +
            item.log_retencao               +
            item.cod_ser_docto1             +
            item.cod_tit_acr1               );
end;

procedure TExportacao.get_contabil;
begin
  contabil.cdtpregistro         := '300';
  contabil.cod_cta_ctbl_ext     := StringOfChar(' ', 20);
  contabil.cod_sub_cta_ctbl_ext := StringOfChar(' ', 15);
  contabil.cod_unid_negoc_ext   := StringOfChar(' ', 08);
  contabil.cod_fluxo_financ_ext := StringOfChar(' ', 20);
  contabil.val_aprop_ctbl       := FormatarMoedaSPonto_(q.q.FieldByName(_vlduplicata).AsCurrency, 11);
  contabil.Filler               := StringOfChar(' ', 03);
  contabil.log_impto_val_agreg  := 'N';
  contabil.cod_plano_cta_ctbl   := 'PADRAO  ';
  contabil.cod_cta_ctbl         := '91111008            ';
  contabil.cod_unid_negoc       := 'LOG';
  contabil.cod_tip_fluxo_financ := '1.1.01      ';
  contabil.cod_plano_ccusto     := StringOfChar(' ', 08);
  contabil.cod_ccusto           := StringOfChar(' ', 11);
  contabil.cod_ccusto_ext       := StringOfChar(' ', 08);
  contabil.cod_ccusto1          := StringOfChar(' ', 20);
end;

procedure TExportacao.get_hearder;
begin
  lote.cdtpregistro             := '100';
  lote.dsbranco1                := StringOfChar(' ', 3);
  lote.cdreferencia             := FormatDateTime(_YYMMDD, DtBanco)+FormatDateTime(_hhmm, tsBanco);
  lote.dttransacao              := FormatDateTime(_DDMMYYYY, q.q.fieldbyname(_dtemissao).asdatetime);
  lote.filler                   := StringOfChar(' ', 01);
  lote.vllote                   := FormatarMoedaSPonto_(vllote, 13);
  lote.dsbranco2                := StringOfChar(' ', 03);
  lote.indicecobranca           := 'NORMAL    ';
  lote.cdestabelecimentoexterno := StringOfChar(' ', 05);
  lote.cdestabelecimento        := '501  ';
end;

procedure TExportacao.get_item;
begin
  vllote := vllote + q.q.FieldByName(_vlduplicata).AsCurrency;
  item.cdtpregistro               := '200';
  item.Filler                     := ' ';
  item.cdn_cliente                := FormatarTextoEsquerda(q.q.FieldByName(_cdcliente).AsString, 9, _0);
  item.cod_espec_docto            := 'DP ';
  item.cod_ser_docto              := '  1';
  item.cod_tit_acr                := FormatarTextoEsquerda(q.q.FieldByName(_nuduplicata).AsString, 10, _0);
  item.cod_indic_econ             := 'REAL    ';
  item.cod_parcela                := '01';
  item.dat_emis_docto             := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item.dat_vencto_tit_acr         := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtvencimento).AsDateTime);
  item.dat_prev_liquidac          := StringOfChar(' ', 08);
  item.dat_desconto               := StringOfChar(' ', 08);
  item.Filler1                    := StringOfChar(' ', 03);
  item.val_tit_acr                := FormatarMoedaSPonto_(q.q.FieldByName(_vlduplicata).AsCurrency, 11);
  item.Filler2                    := StringOfChar(' ', 03);
  item.val_desconto               := StringOfChar(' ', 11);
  item.val_perc_desc              := StringOfChar(' ', 06);
  item.Filler3                    := StringOfChar(' ', 02);
  item.val_perc_multa_atraso      := StringOfChar(' ', 04);
  item.qtd_dias_carenc_multa_acr  := StringOfChar(' ', 03);
  item.qtd_dias_carenc_juros_acr  := StringOfChar(' ', 03);
  item.Filler4                    := StringOfChar(' ', 03);
  item.val_liq_tit_acr            := FormatarMoedaSPonto_(q.q.FieldByName(_vlduplicata).AsCurrency, 11);
  item.cod_portad_ext             := StringOfChar(' ', 08);
  item.cod_modalidade_ext         := StringOfChar(' ', 08);
  item.cdn_repres                 := StringOfChar(' ', 06);
  item.cod_instruc_bcia_1_movto   := StringOfChar(' ', 04);
  item.cod_instruc_bcia_2_movto   := StringOfChar(' ', 04);
  item.cod_portador               := '23700';
  item.Filler5                    := StringOfChar(' ', 03);
  item.cod_cart_bcia              := 'ACR';
  item.cod_motiv_movto_tit_acr    := StringOfChar(' ', 08);
  item.cod_histor_padr            := StringOfChar(' ', 08);
  item.cod_banco                  := StringOfChar(' ', 08);
  item.cod_agencia                := StringOfChar(' ', 10);
  item.cod_cta_corren_bco         := StringOfChar(' ', 20);
  item.cod_digito_cta_corren      := StringOfChar(' ', 02);
  item.cod_catcred                := StringOfChar(' ', 20);
  item.cod_mes_ano_valid_cartao   := StringOfChar(' ', 06);
  item.cod_autoriz_cartao_cr      := StringOfChar(' ', 06);
  item.dat_compra_cartao_cr       := StringOfChar(' ', 08);
  item.num_ddd_localid_conces     := StringOfChar(' ', 03);
  item.num_prefix_localid_conces  := StringOfChar(' ', 04);
  item.num_milhar_localid_conces  := StringOfChar(' ', 04);
  item.log_liquidac_autom         := StringOfChar(' ', 01);
  item.log_tip_cr_perda_dedut_tit := StringOfChar(' ', 01);
  item.cod_cond_cobr              := StringOfChar(' ', 08);
  item.Filler6                    := StringOfChar(' ', 01);
  item.ind_ender_cobr             := 'CLIENTE        ';
  item.nom_abrev_contat           := StringOfChar(' ', 15);
  item.log_db_autom               := StringOfChar(' ', 01);
  item.Filler7                    := StringOfChar(' ', 02);
  item.log_destinac_cobr          := StringOfChar(' ', 01);
  item.Filler8                    := StringOfChar(' ', 02);
  item.ind_sit_bcia_tit_acr       := 'LIBERADO    ';
  item.ind_sit_tit_acr            := 'NORMAL       ';
  item.val_perc_juros_dia_atraso  := StringOfChar(' ', 08);
  item.cod_tit_acr_bco            := StringOfChar(' ', 20);
  item.dat_abat_tit_acr           := StringOfChar(' ', 08);
  item.val_perc_abat_acr          := StringOfChar(' ', 07);
  item.val_abat_tit_acr           := StringOfChar(' ', 12);
  item.cod_agenc_cobr_bcia        := StringOfChar(' ', 10);
  item.des_obs_cobr               := StringOfChar(' ', 40);
  item.Filler9                    := StringOfChar(' ', 01);
  item.val_cotac_indic_econ       := StringOfChar(' ', 17);
  item.ind_tip_calc_juros         := StringOfChar(' ', 10);
  item.cod_comprov_vda            := StringOfChar(' ', 12);
  item.num_parc_cartcred          := StringOfChar(' ', 02);
  item.cod_autoriz_bco_emissor    := StringOfChar(' ', 06);
  item.cod_lote_origin            := StringOfChar(' ', 07);
  item.val_cr_pis                 := StringOfChar(' ', 11);
  item.val_cr_cofins              := StringOfChar(' ', 11);
  item.val_cr_csll                := StringOfChar(' ', 11);
  item.cod_indic_econ_desemb      := StringOfChar(' ', 08);
  item.vl_base_calculo            := StringOfChar(' ', 11);
  item.log_retencao               := StringOfChar(' ', 01);
  item.cod_ser_docto1             := StringOfChar(' ', 05);
  item.cod_tit_acr1               := StringOfChar(' ', 16);
end;

end.
