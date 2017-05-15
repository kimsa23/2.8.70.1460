unit classeempresa;

interface

uses
  System.Actions, System.UITypes, forms, classes, sysutils, Controls, Dialogs,
  DB,
  classeaplicacao, classeendereco, classequery,
  udatahora, ustrings, uconstantes, classeuf;

Type
  TContaContabilE = record
    cdcreditoadntclientefisica : string;
    cddebitoadntcliente : string;
    cdcreditoadntfornecedorfis : string;
    cddebitoadntfornecedor : string;
    cdcreditoautpagtofisica : string;
    cddebitoautpagtojuros: string;
    cddebitoautpagtomulta : string;
    cddebitoautpagtodesconto : string;
    cdcreditoduplicatafisica : string;
    cdcreditoduplicatajuros : string;
    cdcreditoduplicatamulta : string;
    cdcreditoduplicatadesconto : string;
    cdcreditorecebimento : string;
    cddebitotransferencia : string;
  end;
  TRequisicaoProducaoE = record
    bo : Boolean;
  end;
  TSolicitacaoCompraE = record
    Bo : Boolean;
  end;
  TEmailE = record
    envio: string;
    smtp : string;
    nuporta : integer;
    bossl : boolean;
  end;
  TMetrologiaE = record
    bo: Boolean;
    dspath : string;
  end;
  TClienteE = record
    bocdreduzido, bomensalidade, botpobrigatorio, bormatividade, bormatividadeobrigatorio, boproduto, bocadastro,
    boproprietario, boproprietarioaviso, bofinanceiro,
    booutros, boconsulta, boobservacao, bocnpjobrigatorio, bocpfproprietariodebito, botpcliente,
    boCPFrepetido, boCNPJrepetido, bofuncionariovendedor, boproprietarioobrigato,
    boproprietarioprsocio, boproprietariocpfcnpj, boproprietarionome, bo, bocpfobrigatorio, boenderecoobrigatorio,boemailjuridicaobrigatorio : boolean;
    novopadraotppessoa : string;
  end;
  TPedidoE = record
    botprevisaocomercial, boconferencia, botemporizador, bomanager, bo, bonupedido : boolean;
    qtavalizacao, qtatendido : currency;
    dspath : string;
  end;
  TRepresentante = record
    bo, boobrigatorio : boolean;
    dtduplicatapaga : TDate;
  end;
  TOrcamentoE = record
    bo, bolocalizarhorarioresposta: boolean;
    dspath : string;
  end;
  TComercial = record
    pedido : TPedidoE;
    representante : TRepresentante;
    orcamento : TOrcamentoe;
  end;
  TTransporteE = record
    bo : boolean;
  end;
  TLogisticaE = record
    transporte : ttransportee;
    borota : boolean;
  end;
  TContador = Class(TObject)
    nmcontador, nucpf, nucpf_, nucrc, nucnpj, nucnpj_, nufone, nufone_, nufax, nufax_, email : string;
    endereco : TEndereco;
    procedure Ler(codigo:LargeInt);
  public
    constructor create(codigo:LargeInt; bofields: Boolean=true);
    destructor  Destroy; override;
  end;
  TDuplicataE = record
    bo, bocobranca, bonegociacao, bolimitecredito, bodtagendaobrigato : boolean;
    cdlimitecredito, nudiasvencimento : integer;
    prmoradiaria, prmulta : currency;
    cdeventoemailmanagerduplicata: integer;
    cdeventoemailduplicataboleto : integer;
  end;
  TEntradaE = record
    tpsequencianuautpagto: string;
    bo, boprotocolo : boolean;
  end;
  TMDFEE = record
    Bo : Boolean;
    qtcte: Integer;
    qtnfe: Integer;
    qtcarregamento: Integer;
    qtdescarregamento: Integer;
    qtpercurso: Integer;
    qttransportadora: Integer;
    qtreboque : Integer;
    nudiasencerramento : integer;
  end;
  TCTEE = Record
    nucntcusto : string;
    cdcntcusto : Integer;
    nuplconta : string;
    cdplconta : Integer;
    cdcteformapagamento : integer;
    cdproduto : string;
    nuapolice : string;
    cdfornecedorseguradora : string;
    cdtpcteresponsavelseguro : string;
    nurntrc : string;
    dsobservacaorpa : string;
    cdctetptomador : string;
    nmunidade : string;
    cdctetpprevisaoentrega : string;
    cdctetpprevisaoentregah : string;
    nudiaprevisaoentregacte : integer;
    bo : boolean;
    bovlfretemaior : boolean;
    bosomarpedagiosaldo : boolean;
    bomensagemcontratada : boolean;
    boseguradora : boolean;
    boexcluir : boolean;
    bodigitardtemissao : boolean;
    boimpressaorpa : boolean;
    boremetenteemail :boolean;
    alpis : Double;
    alcofins : Double;
  end;
  TSaidaE = record
    tpsequencianuduplicata: string;
    bo, boobservacao250 : boolean;
  end;
  TFaturamentoE = record
    bo : boolean;
    saida : TSaidaE;
    cte : TCTEE;
    mdfe : TMDFEE;
    boembarque : Boolean;
  end;
  TRpaE = record
    bo : boolean;
    pradiantamento, prinss, prsestsenat : currency;
    cdcntcusto, cdplconta : integer;
  end;
  TAutpagtoE = record
    bo, boaprovacao : boolean;
  end;
  TCheque = record
    bo : boolean;
  end;
  TCaixaFinanceioE = record
    bo : Boolean;
    boignorar : boolean;
    nudiasanterior : Integer;
    nudiasposterior: Integer;
  end;
  TFinanceiroE = record
    caixafinanceiro : TCaixaFinanceioE;
    bocobrancabancaria, boadntcliente, boadntfornecedor,
    bopagtocomissao, bocondpagto, boconta, bocntcusto, boplconta : boolean;
    dsmaskcntcusto, dsmaskplconta : string;
    autpagto    : TAutpagtoE;
    cheque      : TCheque;
    duplicata   : TDuplicataE;
    contacontabil : TContaContabilE;
    rpa : TRpaE;
  end;
  TIQF = record
    bo : Boolean;
    nuavaliacao : Integer;
    dtinicio : TDate;
  end;
  TFornecedorE = record
    IQF : TIQF;
    bopreselecaco, bocdreduzido, bo, bormatividade, bocpfobrigatorio, boconsulta, bocpfrepetido, bocnpjrepetido, bocnpjobrigatorio : boolean;
  end;
  TLogE = record
    bolog  : boolean;
  end;
  TProdutoE = record
    dtestoque : TDate;
    dtrecalculosubproduto : TDate;
    dspath, dsmaskgrupo: string;
    bomapaproducao : Boolean;
    Bo,
    bovlvenda,
    bovlatacado,
    bogrupo,
    bovlespecial,
    bovlcusto,
    bovlcustomedio,
    boprlucro,
    bocdalternativo,
    bodslocalizacao,
    bocdreduzido,
    bocomposto,
    boordservestoquezerado,
    boqtdisponivel,
    boqtestoque2,
    boqtestmin,
    bonmrepetido,
    bocodfornecedor,
    bocodfornecedorunico,
    botag2,
    botag1,
    bodesenho,
    bodsproduto,
    bonuclfiscal,
    bonuimei,
    bovendaestoquezerado : boolean;
    boforma,
    bomaterial,
    bonorma,
    botpitem,
    boespessura,
    bolargura,
    bocomprimento,
    bosimilar,
    bopolegada: Boolean;
    bocdreduzidosearch: boolean;
  end;
  TMovtoE = record
    bo : boolean;
    bosuproduto : Boolean;
  end;
  TMaterialE = record
    produto : TProdutoe;
    movto : TMovtoE;
  end;
  TLivroProducaoE = record
    bo, boalterar : Boolean;
    qtdiaentradaestoque, qtdiasaidaestoque : Integer;
  end;
  TLivroE = record
    bomesatual,
    borecalcularcustomedio,
    boignorarerro,
    bopdv,
    boativopiscofins,
    bosintegraecfitem,
    borecustomedio,
    bolivrofiscal,
    bospedcte,
    bogerarspedpordata,
    bospedctepiscofins,
    bospeditem : boolean;
    borecalcularbasentributavel : boolean;
    dtiniciolivro : Tdate;
    vlsaldocredoripi,
    vlsaldocredor: Currency;
    cdindescrituracao,
    cdalterdata,
    cdind_ativ,
    cdind_perfil : string;
  end;
  TOrdProducaoE = record
    bo, boregiaoaplicacao, boformulacao, bomunicipio, bofuncionario, boprvinstalacao :boolean;
    dspath : string;
  end;
  TProducaoE = record
    ordproducao : TOrdProducaoE;
    requisicaoproducao : TRequisicaoProducaoE;
    boapontamento, boagenda, bocorridaquimica : boolean;
  end;
  TTransportadoraE = record
    bonuinss, bocdreduzido, bobanco, bo : boolean;
  end;
  TWorkBoxE = record
    dsgeral, dspessoal : string;
    bo, bopessoal, boconfirmarmudancaetapa, bofiltrar, boexecucao, boordserv, boresponsavel, bogerente, bomenususpensoetapa : boolean;
    qtfiltro : integer;
  end;
  TOrdservE = record
    bo: Boolean;
    boequipamento : Boolean;
    bopreenchertipo: Boolean;
    boetapa : Boolean;
    bointervencao: Boolean;
    boexibirequipamento: Boolean;
    boexibircliente: Boolean;
    dspathordserv : string;
    workbox : TWorkboxE;
  end;
  TOrdcompraE = record
    bo : boolean;
    dspath : string;
  end;
  TPedidoMaterialE = record
    bo: Boolean;
  end;
  TAquisicaoE = record
    borim : Boolean;
    ordcompra : TOrdcompraE;
    pedidomaterial: TPedidoMaterialE;
    solicitacaocompra : TSolicitacaoCompraE;
  end;
  TEquipamentoE = record
    metrologia    : TMetrologiaE;
    boparada, Bo: boolean;
    dspath, dsnuserie, dsnupatrimonio : string;
  end;
  TProjetoE = record
    dspath : string;
  end;
  TTarefaE = record
    bo, boemailcontato, bolistaverificacao, bodiagnostico : Boolean;
    dspath : string;
  end;
  TFuncionarioE = record
    bo: Boolean;
    bopontotrabalho: Boolean;
    qthoranegativa : TTime;
    dsservidoriponto : string;
    bodespesaconvenio : boolean;
    botreinamento : boolean;
    dspathiponto : string;
    dspath : string;
    dtiniciohoraextra : TDate;
  end;
  TPacienteE = record
   bo: Boolean;
  end;
  TProfissionalE = record
   bo: Boolean;
  end;
  TEmpresa = class
    boaprovacao : Boolean;
    bochaveuso : Boolean;
    nuregistropagina : integer;
    dtchaveuso : TDate;
    prsupersimples, prdespesaoperacional : Double;
    nuversao : string;
    nudiavencimentoicms : string;
    cdreceitaicms : string;
    cdempresa : LargeInt;
    nmempresa : string;
    rzsocial : string;
    nmresponsavel : string;
    email : string;
    emailpedido : string;
    homepage : string;
    nufone1 : string;
    nufone1_ : string;
    cdtpempresa,
    tpregime,
    cdtpregimetributario,
    nmcontato,
    cdind_reg_cum,
    cdindicadorcontribuicao,
    cdindicadorapropriacao,
    cdindicadoratividade,
    cdindicadorincidencia,
    cdnaturezareceita04,
    cdnaturezareceita08,
    cdindicadorpessoajuridica,
    cdsuframa,
    nucnpj,
    nucnpj_,
    nucnae,
    nuinscest,
    nuinscest_,
    nuinscmunicipal,
    nufax,
    nufax_,
    wpath : string;
    boveiculo, bormatividade, bolocacao, bosubstituto, bouf, bocor, bocodigocontabil, bocontrato : boolean;
    funcionario : TFuncionarioE;
    tarefa : TTarefaE;
    projeto : TProjetoE;
    paciente      : TPacienteE;
    profissional  : TProfissionalE;
    emailE        : TEmailE;
    equipamento   : tequipamentoe;
    aquisicao     : TAquisicaoE;
    cliente       : TClienteE;
    entrada       : TEntradaE;
    financeiro    : TFinanceiroE;
    fornecedor    : TFornecedorE;
    livro         : TLivroE;
    livroproducao : TLivroProducaoE;
    log           : Tloge;
    ordserv       : TordservE;
    comercial     : TComercial;
    faturamento   : TFaturamentoE;
    logistica     : TLogisticaE;
    material      : TMaterialE;
    transportadora: TTransportadoraE;
    producao      : TProducaoE;
    endereco      : TEndereco;
    contador      : TContador;
    uf : TUF;
  private
    procedure Ler;
  public
    constructor create(codigo:LargeInt; bofields:Boolean=true);
    destructor  Destroy; override;
    function    get_bloqueado:Boolean;
    function    get_cdtpregimeicms:string;
    function    get_aliquota_destino(cduf: integer): double;
    function    get_ponto_maskara(tp:string):integer;
    procedure   set_ponto_maskara(tp:string; var posicao: array of Integer; var tamanho: array of Integer);
  end;

var
  Empresa : TEmpresa;

implementation

uses uRegistro, classeretornasql;

constructor TContador.create(codigo:LargeInt; bofields: Boolean=true);
begin
  endereco := TEndereco.Create;
  Ler(codigo);
end;

destructor TContador.Destroy;
begin
  freeandnil(endereco);
  inherited;
end;

procedure TContador.Ler;
  function makesql:string;
  begin
    result := 'select f.*'+
                    ',e.nmcontador'+
                    ',e.nucrc'+
                    ',e.nucpfcontador'+
                    ',u.sguf'+
                    ',m.nmmunicipio '+
               'from fornecedor f '+
               'inner join empresa e on e.cdfornecedor=f.cdfornecedor and f.cdempresa=e.cdempresa '+
               'left join municipio m on m.cdmunicipio=e.cdmunicipio '+
               'left join uf u on u.cduf=e.cduf '+
               'where f.cdempresa='+codigo.ToString;
  end;
var
  s : TClasseQuery;
  procedure set_endereco;
  begin
    endereco.cdmunicipio   := s.q.fieldbyname(_cdmunicipio).AsInteger;
    endereco.cduf          := s.q.fieldbyname(_cduf).AsInteger;
    endereco.dsendereco    := s.q.fieldbyname(_dsendereco).AsString;
    endereco.dsnumero      := s.q.fieldbyname(_dsnumero).AsString;
    endereco.dscomplemento := s.q.fieldbyname(_dscomplemento).AsString;
    endereco.nmbairro      := s.q.fieldbyname(_nmbairro).AsString;
    endereco.nmmunicipio   := s.q.fieldbyname(_nmmunicipio).AsString;
    endereco.nucep         := s.q.fieldbyname(_nucep).AsString;
    endereco.sguf          := s.q.fieldbyname(_sguf).AsString;
  end;
  procedure set_cpf;
  begin
    if s.q.fieldbyname(_nucpf).Asstring <> '' then
    begin
      nucpf  := s.q.fieldbyname(_nucpf).Asstring;
      nucpf_ := removercaracteres(s.q.fieldbyname(_nucpf).Asstring);
    end
    else
    begin
      nucpf  := s.q.fieldbyname(_nucpf+_contador).Asstring;
      nucpf_ := removercaracteres(s.q.fieldbyname(_nucpf+_contador).Asstring);
    end;
  end;
  function get_nmcontador:string;
  begin
    if s.q.FieldByName(_nmcontador).AsString <> '' then result := s.q.fieldbyname(_nmcontador).Asstring
                                                 else result := s.q.fieldbyname(_rzsocial).Asstring;
  end;
begin
  s := TClasseQuery.Create(makesql);
  try
    nmcontador := get_nmcontador;
    set_cpf;
    nucrc   := s.q.fieldbyname(_nucrc).Asstring;
    nucnpj  := s.q.fieldbyname(_nucnpj).Asstring;
    nucnpj_ := removercaracteres(s.q.fieldbyname(_nucnpj).Asstring);
    nufone  := s.q.fieldbyname(_nufone1).Asstring;
    email   := s.q.fieldbyname(_email).AsString;
    nufax   := s.q.fieldbyname(_nufax).Asstring;
    nufone_ := removercaracteres(s.q.fieldbyname(_nufone1).Asstring);
    nufax_  := removercaracteres(s.q.fieldbyname(_nufax).Asstring);
    set_endereco;
  finally
    freeandnil(s);
  end;
end;

constructor TEmpresa.create(codigo:LargeInt; bofields:Boolean=true);
begin
  uf := tuf.create;
  cdempresa := codigo;
  endereco  := TEndereco.Create;
  contador  := TContador.Create(codigo, bofields);
  if bofields then
  begin
    Ler;
  end;
  wpath := ExtractFilePath(Application.ExeName);
end;

function TEmpresa.get_aliquota_destino(cduf: integer): double;
begin
  result := 0;
  if cduf = 0 then
  begin
    Exit;
  end;
  if endereco.cduf = cduf then
  begin
    result := RetornaSQLCurrency('select alicms from UF where cduf='+inttostr(cduf))
  end
  else
  begin
    result := RetornaSQLCurrency('select alicms from UFORIGEMDESTINO where cduf='+inttostr(endereco.cduf)+' and cdufdestino='+inttostr(cduf));
  end;
end;


procedure TEmpresa.Ler;
  function makesql:string;
  begin
    result := 'select e.*'+
                    ',u.sguf'+
                    ',m.nmmunicipio '+
              'from empresa e '+
              'left join municipio m on m.cdmunicipio=e.cdmunicipio '+
              'left join uf u on u.cduf=e.cduf '+
              'where e.cdempresa='+cdempresa.ToString;
  end;
var
  q : TClasseQuery;
  procedure set_financeiro_conta_contabil;
  begin
    financeiro.contacontabil.cddebitoadntcliente           := q.q.fieldbyname(_cd+_debito+_adntcliente).AsString;
    financeiro.contacontabil.cdcreditoadntclientefisica    := q.q.fieldbyname(_cd+_credito+_adntcliente+_fisica).AsString;
    financeiro.contacontabil.cdcreditoadntfornecedorfis    := q.q.fieldbyname(_cd+_credito+_adntfornecedor+_fisica).AsString;
    financeiro.contacontabil.cddebitoadntfornecedor        := q.q.fieldbyname(_cd+_debito+_adntfornecedor).AsString;
    financeiro.contacontabil.cdcreditoautpagtofisica       := q.q.fieldbyname(_cd+_credito+_autpagto+_fisica).AsString;
    financeiro.contacontabil.cddebitoautpagtojuros         := q.q.fieldbyname(_cd+_debito+_autpagto+_juros).AsString;
    financeiro.contacontabil.cddebitoautpagtomulta         := q.q.fieldbyname(_cd+_debito+_autpagto+_multa).AsString;
    financeiro.contacontabil.cddebitoautpagtodesconto      := q.q.fieldbyname(_cd+_debito+_autpagto+_desconto).AsString;
    financeiro.contacontabil.cdcreditoduplicatafisica      := q.q.fieldbyname(_cd+_credito+_duplicata+_fisica).AsString;
    financeiro.contacontabil.cdcreditoduplicatajuros       := q.q.fieldbyname(_cd+_credito+_duplicata+_juros).AsString;
    financeiro.contacontabil.cdcreditoduplicatamulta       := q.q.fieldbyname(_cd+_credito+_duplicata+_multa).AsString;
    financeiro.contacontabil.cdcreditoduplicatadesconto    := q.q.fieldbyname(_cd+_credito+_duplicata+_desconto).AsString;
    financeiro.contacontabil.cdcreditorecebimento          := q.q.fieldbyname(_cd+_credito+_recebimento).AsString;
    financeiro.contacontabil.cddebitotransferencia         := q.q.fieldbyname(_cd+_debito+_transferencia).AsString;
  end;
  procedure set_produto;
  begin
    material.produto.dsmaskgrupo        := q.q.fieldbyname(_dsmask+_grupo).AsString;
    material.produto.dspath             := q.q.fieldbyname(_dspath+_produto).AsString;
    material.produto.dtestoque          := q.q.fieldbyname(_dt+_estoque).AsDateTime;
    material.produto.dtrecalculosubproduto := q.q.fieldbyname(_dt+_re+_calculo+_sub+_produto).asdatetime;
    material.produto.bocdreduzido       := setvalorBo(q.q, _boproduto+_cdreduzido);
    material.produto.bocdreduzidosearch := setvalorBo(q.q, _bo+_produto+_cdreduzido+_search);
    material.produto.bodsproduto        := setvalorBo(q.q, _bo+_ds+_produto);
    material.produto.bodesenho          := setvalorBo(q.q, _bo+_produto+_desenho);
    material.produto.botag2             := setvalorBo(q.q, _bo+_produto+_tag+_2);
    material.produto.botag1             := setvalorBo(q.q, _bo+_produto+_tag+_1);
    material.produto.boforma            := setvalorBo(q.q, _bo+_produto+_forma);
    material.produto.bomaterial         := setvalorBo(q.q, _bo+_produto+_material);
    material.produto.bonorma            := setvalorBo(q.q, _bo+_produto+_norma);
    material.produto.botpitem           := setvalorBo(q.q, _bo+_produto+_tpitem);
    material.produto.boespessura        := setvalorBo(q.q, _bo+_produto+_espessura);
    material.produto.bolargura          := setvalorBo(q.q, _bo+_produto+_largura);
    material.produto.bocomprimento      := setvalorBo(q.q, _bo+_produto+_comprimento);
    material.produto.bosimilar          := setvalorbo(q.q, _boprodutosimilar);
    material.produto.bopolegada         := setvalorBo(q.q, _bo+_produto+_polegada);

    material.produto.bodslocalizacao      := setvalorBo(q.q, _boproduto+_dslocalizacao);
    //material.produto.bopesoautomatico     := setvalorBo(q.q, _boproduto+_peso+_automatico);
    material.produto.boqtdisponivel       := setvalorBo(q.q, _boproduto+_qtdisponivel);
    material.produto.boqtestoque2         := setvalorBo(q.q, _boproduto+_qtestoque2);
    material.produto.boqtestmin           := setvalorBo(q.q, _boproduto+_qtestmin);
    material.produto.bonmrepetido         := setvalorBo(q.q, _boproduto+_nmrepetido);
    material.produto.bocdalternativo      := setvalorBo(q.q, _boproduto+_cdalternativo);
    material.produto.bovlespecial         := setvalorBo(q.q, _boproduto+_vlespecial);
    material.produto.bocodfornecedorunico := setvalorBo(q.q, _boproduto+_codfornecedor+_unico);
    material.produto.bocodfornecedor      := setvalorBo(q.q, _boproduto+_codfornecedor);
    material.produto.bogrupo              := setvalorBo(q.q, _boproduto+_grupo);
    material.produto.bonuclfiscal         := setvalorBo(q.q, _boproduto+_nuclfiscal);
    material.produto.bonuimei             := setvalorBo(q.q, _boproduto+_nuimei);
    material.produto.bovlcusto            := setvalorBo(q.q, _boproduto+_vlcusto);
    material.produto.bovlcustomedio       := setvalorBo(q.q, _boproduto+_vlcustomedio);
    material.produto.boprlucro            := setvalorBo(q.q, _boproduto+_prlucro);
    material.produto.bovlatacado          := setvalorBo(q.q, _boproduto+_vlatacado);
    material.produto.bomapaproducao       := setvalorBo(q.q, _boprodutomapaproducao);
    material.produto.bovlvenda            := setvalorBo(q.q, _boproduto+_vlvenda);
  end;
  procedure set_tarefa;
  begin
    tarefa.bo                   := setvalorBo(q.q, _bo+_tarefa);
    tarefa.bodiagnostico        := setvalorBo(q.q, _bo+_tarefa+_diagnostico);
    tarefa.dspath               := q.q.FieldByName(_dspath+_tarefa).AsString;
    tarefa.bolistaverificacao   := setvalorBo(q.q, _bo+_tarefa+_lista+_verificacao);
    tarefa.boemailcontato       := setvalorBo(q.q, _bo+_tarefa+_email+_contato);
    projeto.dspath              := q.q.FieldByName(_dspath+_projeto).AsString;
  end;
  procedure set_aquisicao;
  begin
    aquisicao.borim                := setvalorBo(q.q, _borim);
    aquisicao.ordcompra.bo         := setvalorBo(q.q, _boordcompra);
    aquisicao.ordcompra.dspath     := q.q.FieldByName(_dspath+_ordcompra).AsString;
    aquisicao.pedidomaterial.bo    := setvalorBo(q.q, _bopedidomaterial);
    aquisicao.solicitacaocompra.Bo := setvalorBo(q.q, _bosolicitacaocompra);
  end;
begin
  q := TClasseQuery.Create(makesql);
  try
    if q.q.fieldbyname(_cdempresa).Asstring = '' then
    begin
      messagedlg('Empresa de código '+cdempresa.ToString+' não encontrado', mtinformation, [mbok], 0);
      Abort;
    end;
    set_tarefa;
    set_aquisicao;
    prdespesaoperacional        := q.q.fieldbyname(_prdespesaoperacional).AsFloat;
    prsupersimples              := q.q.fieldbyname(_prsupersimples).AsFloat;
    tpregime                    := q.q.fieldbyname(_tpregime).AsString;
    cdtpempresa                 := q.q.fieldbyname(_cd+_tp+_empresa).AsString;
    nudiavencimentoicms         := q.q.fieldbyname(_nudiavencimento+_icms).AsString;
    nuversao                    := q.q.fieldbyname(_nu+_versao).AsString;
    cdreceitaicms               := q.q.fieldbyname(_cdreceita+_icms).AsString;
    nufone1              := q.q.fieldbyname(_nufone1).Asstring;
    nufone1_             := removercaracteres(q.q.fieldbyname(_nufone1).Asstring);
    nufax                := q.q.fieldbyname(_nufax).Asstring;
    nufax_               := removercaracteres(q.q.fieldbyname(_nufax).Asstring);
    email                := q.q.fieldbyname(_email).Asstring;
    emailpedido := q.q.FieldByName(_emailpedido).AsString;
    cdempresa            := q.q.fieldbyname(_cdempresa).AsLargeInt;
    nmempresa            := q.q.fieldbyname(_nmempresa).Asstring;
    nuinscest            := q.q.fieldbyname(_nuinscest).AsString;
    nuinscest_           := removercaracteres(q.q.fieldbyname(_nuinscest).AsString);
    nuinscmunicipal      := q.q.fieldbyname(_nuinscmunicipal).AsString;
    rzsocial             := q.q.fieldbyname(_rzsocial).Asstring;
    nmresponsavel        := q.q.fieldbyname(_nmresponsavel).Asstring;
    homepage             := q.q.fieldbyname(_homepage).Asstring;
    nmcontato            := q.q.fieldbyname(_nmcontato).Asstring;
    nucnpj               := q.q.fieldbyname(_nucnpj).asstring;
    cdsuframa            := q.q.fieldbyname(_cdsuframa).AsString;
    cdindicadorincidencia      := q.q.fieldbyname(_cdindicadorincidencia).AsString;
    cdindicadorpessoajuridica  := q.q.fieldbyname(_cdindicadorpessoajuridica).AsString;
    cdindicadoratividade       := q.q.fieldbyname(_cdindicadoratividade).AsString;
    cdnaturezareceita04          := q.q.fieldbyname(_cdnaturezareceita+_04).AsString;
    cdnaturezareceita08          := q.q.fieldbyname(_cdnaturezareceita+_08).AsString;
    cdindicadorapropriacao     := q.q.fieldbyname(_cdindicadorapropriacao).AsString;
    cdindicadorcontribuicao    := q.q.fieldbyname(_cdindicadorcontribuicao).AsString;
    cdind_reg_cum              := q.q.fieldbyname(_cd+_ind_reg_cum).AsString;
    nucnpj_                    := removercaracteres(q.q.fieldbyname(_nucnpj).asstring);
    nucnae                     := q.q.fieldbyname(_nucnae).AsString;
    cdtpregimetributario       := q.q.fieldbyname(_cdtpregime+_tributario).AsString;
    material.movto.bo          := setvalorBo(q.q, _bomovto);
    material.movto.bosuproduto := setvalorBo(q.q, _bomovto+_sub+_produto);
    bocodigocontabil           := setvalorBo(q.q, _bocodigocontabil);
    bocor                      := setvalorBo(q.q, _bocor);
    comercial.orcamento.bo     := setvalorBo(q.q, _boorcamento);
    comercial.orcamento.bolocalizarhorarioresposta := setvalorBo(q.q, _boorcamento+_localizar+_horario);
    comercial.orcamento.dspath   := q.q.FieldByName(_dspath+_orcamento).AsString;
    paciente.bo                  := setvalorBo(q.q, _bopaciente);
    profissional.bo              := setvalorBo(q.q, _boprofissional);
    funcionario.bo               := setvalorBo(q.q, _bofuncionario);
    funcionario.bopontotrabalho  := setvalorBo(q.q, _bopontotrabalho);
    funcionario.qthoranegativa   := q.q.fieldbyname(_qthoranegativa).AsDateTime;
    funcionario.dspathiponto     := q.q.fieldbyname(_dspathiponto).AsString;
    funcionario.dspath           := q.q.fieldbyname(_dspath+_funcionario).AsString;
    funcionario.dsservidoriponto := q.q.fieldbyname(_dsservidoriponto).AsString;
    funcionario.bodespesaconvenio := q.q.FieldByName(_bo+_despesaconvenio).AsString = _s;
    funcionario.botreinamento    := q.q.FieldByName(_bo+_treinamento).AsString = _s;
    funcionario.dtiniciohoraextra := q.q.FieldByName(_dtinicio+_hora+_extra).AsDateTime;
    bouf                         := setvalorBo(q.q, _bouf);
    bosubstituto                 := setvalorBo(q.q, _bosubstituto);
    bolocacao                    := setvalorBo(q.q, _bolocacao);
    bormatividade                := setvalorBo(q.q, _bormatividade);
    boveiculo                    := setvalorBo(q.q, _boveiculo);
    boaprovacao                  := setvalorBo(q.q, _boaprovacao);
    nuregistropagina := q.q.FieldByName(_nuregistropagina).AsInteger;
    bocontrato                   := setvalorBo(q.q, _bocontrato);
    emaile.envio                 := q.q.fieldbyname(_TPENVIO+_EMAIL).Asstring;
    emaile.smtp                  := q.q.fieldbyname(_emailsmtp).asstring;
    emaile.nuporta               := q.q.fieldbyname(_emailporta).asinteger;
    emaile.bossl                 := setvalorbo(q.q, _boemailssl);
    financeiro.dsmaskcntcusto    := q.q.fieldbyname(_dsmask+_cntcusto).AsString;
    financeiro.dsmaskplconta     := q.q.fieldbyname(_dsmask+_plconta).AsString;
    financeiro.boplconta               := setvalorBo(q.q, _boplconta);
    financeiro.bocntcusto              := setvalorBo(q.q, _bocntcusto);
    financeiro.bocobrancabancaria      := setvalorBo(q.q, _bocobrancabancaria);
    set_financeiro_conta_contabil;
    cliente.bocpfobrigatorio           := setvalorBo(q.q, _bocliente+_cpf+_obrigatorio);
    cliente.boenderecoobrigatorio      := setvalorBo(q.q, _bocliente+_endereco+_obrigatorio);
    cliente.boemailjuridicaobrigatorio := setvalorBo(q.q, _BOCLIENTE+_EMAIL+_JURIDICA+_OBRIGATO);
    cliente.novopadraotppessoa         := q.q.fieldbyname(_CLIENTE+_novo+_PADRAO+_TPPESSOA).Asstring;
    cliente.bocnpjobrigatorio          := setvalorBo(q.q, _bocliente+_cnpj+_obrigatorio);
    cliente.booutros                   := setvalorBo(q.q, _bocliente+_outro+_s);
    cliente.boproprietarionome         := setvalorBo(q.q, _bocliente+_proprietario+_nome);
    cliente.boproprietarioaviso        := setvalorBo(q.q, _bocliente+_proprietario+_aviso);
    cliente.boproprietariocpfcnpj      := setvalorBo(q.q, _bocliente+_proprietario+_cpf+_cnpj);
    cliente.boproprietarioprsocio      := setvalorBo(q.q, _bocliente+_proprietario+_prsocio);
    cliente.boproprietarioobrigato     := setvalorBo(q.q, _BOCLIENTE+_PROPRIETARIO+_OBrigato);
    cliente.bofuncionariovendedor      := setvalorBo(q.q, _BOCLIENTE+_funcionario+_vendedor);
    cliente.boCNPJrepetido             := setvalorBo(q.q, _BOCLIENTE+_CNPJ+_repetido);
    cliente.boCPFrepetido              := setvalorBo(q.q, _BOCLIENTE+_CPF+_repetido);
    cliente.botpcliente                := setvalorBo(q.q, _bocliente+_tpcliente);
    cliente.bomensalidade              := setvalorBo(q.q, _bocliente+_mensalidade);
    cliente.bo                         := setvalorBo(q.q, _bocliente);
    cliente.bocdreduzido               := setvalorBo(q.q, _BOCLIENTE+_cdreduzido);
    cliente.botpobrigatorio            := setvalorBo(q.q, _BOCLIENTE+_TPCLIENTE+_OBRIGATORIO);
    cliente.bormatividade              := setvalorBo(q.q, _bocliente+_rmatividade);
    cliente.bormatividadeobrigatorio   := setvalorBo(q.q, _bo+_cliente+_rmatividade+_obrigato);
    cliente.bocadastro                 := setvalorBo(q.q, _bocliente+_cadastro);
    cliente.boproprietario             := setvalorBo(q.q, _bocliente+_proprietario);
    cliente.bofinanceiro               := setvalorBo(q.q, _bocliente+_financeiro);
    cliente.boconsulta                 := setvalorBo(q.q, _bocliente+_consulta);
    cliente.boobservacao               := setvalorBo(q.q, _bocliente+_observacao);
    cliente.boproduto                  := setvalorBo(q.q, _bocliente+_produto);
    cliente.bocnpjobrigatorio          := setvalorBo(q.q, _bocliente+_cnpj+_obrigatorio);
    cliente.bocpfproprietariodebito    := setvalorBo(q.q, _bocliente+_cpf+_proprietario+_debito);
    comercial.representante.boobrigatorio    := setvalorBo(q.q, _borepresentante+_obrigatorio);
    comercial.representante.dtduplicatapaga  := q.q.fieldbyname(_dt+_duplicata+_paga).AsDateTime;
    comercial.representante.bo               := setvalorBo(q.q, _borepresentante);
    comercial.pedido.bo                      := setvalorBo(q.q, _bopedido);
    comercial.pedido.qtavalizacao            := q.q.fieldbyname(_QT+_PEDIDOS+_AVALIACAO).AsCurrency;
    comercial.pedido.qtatendido              := q.q.fieldbyname(_qtpedidoatendido).AsCurrency;
    comercial.pedido.bomanager               := setvalorBo(q.q, _bopedido+_manager);
    comercial.pedido.bonupedido              := setvalorBo(q.q, _bonupedido);
    comercial.pedido.botemporizador          := setvalorBo(q.q, _bopedido+_temporizador);
    comercial.pedido.boconferencia           := setvalorBo(q.q, _bo+_conferencia+_pedido);
    comercial.pedido.botprevisaocomercial    := setvalorBo(q.q, _botprevisaocomercial);
    comercial.pedido.dspath                  := q.q.FieldByName(_dspath+_pedido).AsString;
    logistica.borota                         := setvalorBo(q.q, _borota);
    logistica.transporte.bo                  := setvalorBo(q.q, _botransporte);
    entrada.boprotocolo                      := setvalorBo(q.q, _boprotocolo);
    entrada.tpsequencianuautpagto            := q.q.fieldbyname(_tp+_sequencia+_nuautpagto).AsString;
    entrada.bo                               := setvalorBo(q.q, _boentrada);
    faturamento.bo                           := setvalorBo(q.q, _bofaturamento);
    faturamento.saida.bo                     := setvalorBo(q.q, _bosaida);
    faturamento.saida.boobservacao250        := setvalorBo(q.q, _bosaida+_observacao+_250);
    faturamento.saida.tpsequencianuduplicata := q.q.fieldbyname(_tp+_sequencia+_nuduplicata).AsString;
    set_produto;
    faturamento.boembarque                := setvalorBo(q.q, _boembarque);
    faturamento.mdfe.Bo                   := setvalorBo(q.q, _bomdfe);
    faturamento.mdfe.qtcte                := q.q.fieldbyname(_qt+_mdfe+_cte).AsInteger;
    faturamento.mdfe.qtnfe                := q.q.fieldbyname(_qt+_mdfe+_nfe).AsInteger;
    faturamento.mdfe.qtcarregamento       := q.q.fieldbyname(_qt+_mdfe+_carregamento).AsInteger;
    faturamento.mdfe.qtdescarregamento    := q.q.fieldbyname(_qt+_mdfe+_descarregamento).AsInteger;
    faturamento.mdfe.qtpercurso           := q.q.fieldbyname(_qt+_mdfe+_percurso).AsInteger;
    faturamento.mdfe.qttransportadora     := q.q.fieldbyname(_qt+_mdfe+_transportadora).AsInteger;
    faturamento.mdfe.qtreboque            := q.q.fieldbyname(_qt+_mdfe+_reboque).AsInteger;
    faturamento.mdfe.nudiasencerramento   := q.q.fieldbyname(_nudias+_encerramento+_mdfe).AsInteger;
    faturamento.cte.bo                    := setvalorBo(q.q, _bocte);
    faturamento.cte.bomensagemcontratada  := setvalorBo(q.q, _bocte+_mensagem+_contratada);
    faturamento.cte.bosomarpedagiosaldo   := setvalorBo(q.q, _bo+_cte+_somar+_pedagio+_saldo);
    faturamento.cte.bovlfretemaior        := setvalorBo(q.q, _bo+_cte+_vl+_frete+_maior);
    faturamento.cte.boexcluir             := setvalorBo(q.q, _bocte+_excluir);
    faturamento.cte.bodigitardtemissao    := setvalorBo(q.q, _bocte+_digitar+_dtemissao);
    faturamento.cte.cdctetptomador        := q.q.fieldbyname(_cdctetptomador).AsString;
    faturamento.cte.dsobservacaorpa       := q.q.fieldbyname(_ds+_cte+_observacao+_rpa).AsString;
    faturamento.cte.nurntrc               := q.q.fieldbyname(_nurntrc).AsString;
    faturamento.cte.nuapolice                := q.q.fieldbyname(_nu+_apolice).AsString;
    faturamento.cte.cdcteformapagamento := q.q.FieldByName(_cdcteformapagamento).AsInteger;
    faturamento.cte.nucntcusto               := q.q.fieldbyname(_nucntcusto+_cte+_rpa).AsString;
    faturamento.cte.cdcntcusto               := q.q.fieldbyname(_cdcntcusto+_cte+_rpa).Asinteger;
    faturamento.cte.nuplconta                := q.q.fieldbyname(_nuplconta+_cte+_rpa).AsString;
    faturamento.cte.cdplconta                := q.q.fieldbyname(_cdplconta+_cte+_rpa).Asinteger;
    faturamento.cte.cdproduto                := q.q.fieldbyname(_cdproduto+_cte).AsString;
    faturamento.cte.cdfornecedorseguradora   := q.q.fieldbyname(_cdfornecedor+_seguradora).AsString;
    faturamento.cte.cdctetpprevisaoentrega   := q.q.fieldbyname(_cdcte+_tp+_previsao+_entrega).AsString;
    faturamento.cte.cdctetpprevisaoentregah  := q.q.fieldbyname(_cdcte+_tp+_previsao+_entrega+_h).AsString;
    faturamento.cte.nudiaprevisaoentregacte := q.q.FieldByName(_nudiaprevisaoentregacte).AsInteger;
    faturamento.cte.nmunidade                := q.q.fieldbyname(_nmunidade+_cte+_carga).AsString;
    faturamento.cte.cdtpcteresponsavelseguro := q.q.fieldbyname(_cdtp+_cte+_responsavel+_seguro).AsString;
    faturamento.cte.boremetenteemail  := setvalorBo(q.q, _bocte+_REMETENTE+_EMAIL);
    faturamento.cte.boimpressaorpa := setvalorbo(q.q, _bocteimpressaorpa);
    faturamento.cte.boseguradora      := setvalorBo(q.q, _bocte+_seguradora);
    faturamento.cte.alpis             := q.q.fieldbyname(_alpis+_cte).AsFloat;
    faturamento.cte.alcofins          := q.q.fieldbyname(_alcofins+_cte).AsFloat;
    financeiro.rpa.bo                 := setvalorBo(q.q, _borpa);
    financeiro.rpa.cdcntcusto         := q.q.fieldbyname(_cdcntcusto+_rpa).AsInteger;
    financeiro.rpa.cdplconta          := q.q.fieldbyname(_cd+_plconta+_rpa).AsInteger;
    financeiro.rpa.prsestsenat        := q.q.fieldbyname(_PRSESTSENAT).Ascurrency;
    financeiro.rpa.prinss             := q.q.fieldbyname(_PRINSSRPA).Ascurrency;
    financeiro.rpa.pradiantamento     := q.q.fieldbyname(_pradiantamento+_rpa).Ascurrency;
    financeiro.boadntcliente          := setvalorBo(q.q, _boadntcliente);
    financeiro.boadntfornecedor       := setvalorBo(q.q, _boadntfornecedor);
    financeiro.bocondpagto            := setvalorBo(q.q, _bocondpagto);
    financeiro.bopagtocomissao        := setvalorBo(q.q, _bopagtocomissao);
    financeiro.caixafinanceiro.bo     := setvalorBo(q.q, _bocaixafinanceiro);
    financeiro.caixafinanceiro.boignorar := setvalorbo(q.q, _bocaixafinanceiroignorar);
    financeiro.caixafinanceiro.nudiasanterior  := q.q.fieldbyname(_nudias+_anterior+_movbancario).AsInteger;
    financeiro.caixafinanceiro.nudiasposterior := q.q.fieldbyname(_nudias+_posterior+_movbancario).AsInteger;
    financeiro.boconta                := setvalorBo(q.q, _boconta);
    financeiro.cheque.bo              := setvalorBo(q.q, _bocheque);
    financeiro.duplicata.bo           := setvalorBo(q.q, _boduplicata);
    financeiro.duplicata.prmoradiaria := q.q.fieldbyname(_prmoradiaria).Ascurrency;
    financeiro.duplicata.prmulta      := q.q.fieldbyname(_prmulta).Ascurrency;
    financeiro.duplicata.bodtagendaobrigato   := setvalorBo(q.q, _BODUPLICATA+_DTAGENDA+_OBRIGATO);
    financeiro.duplicata.cdlimitecredito      := q.q.fieldbyname(_cdduplicata+_limite+_credito).Asinteger;
    financeiro.duplicata.cdeventoemailmanagerduplicata := q.q.fieldbyname(_cdeventoemail+_manager+_duplicata).AsInteger;
    financeiro.duplicata.cdeventoemailduplicataboleto  := q.q.fieldbyname(_cdeventoemail+_duplicata+_boleto).asinteger;
    financeiro.duplicata.bolimitecredito      := setvalorBo(q.q, _boduplicata+_limite+_credito);
    financeiro.duplicata.bocobranca           := setvalorBo(q.q, _boduplicata+_cobranca);
    financeiro.duplicata.bonegociacao         := setvalorBo(q.q, _boduplicata+_negociacao);
    financeiro.duplicata.nudiasvencimento     := q.q.fieldbyname(_nudias+_vencimento+_duplicata).Asinteger;
    financeiro.autpagto.bo                    := setvalorBo(q.q, _boautpagto);
    financeiro.autpagto.boaprovacao           := setvalorBo(q.q, _boautpagto+_aprovacao);
    fornecedor.bocdreduzido              := setvalorBo(q.q, _BOfornecedor+_cdreduzido);
    fornecedor.bocpfobrigatorio          := setvalorBo(q.q, _bofornecedor+_cpf+_obrigatorio);
    fornecedor.bormatividade             := setvalorBo(q.q, _bofornecedor+_rmatividade);
    fornecedor.boconsulta                := setvalorBo(q.q, _bofornecedor+_consulta);
    fornecedor.bocpfrepetido             := setvalorBo(q.q, _bofornecedor+_cpf+_repetido);
    fornecedor.IQF.bo                    := setvalorBo(q.q, _bofornecedor+_iqf);
    fornecedor.IQF.nuavaliacao           := q.q.fieldbyname(_nu+_iqf+_avaliacao).AsInteger;
    fornecedor.IQF.dtinicio              := q.q.fieldbyname(_dt+_inicio+_iqf).asdatetime;
    fornecedor.bopreselecaco             := setvalorBo(q.q, _bofornecedor+_pre+_selecao);
    fornecedor.bocnpjobrigatorio         := setvalorBo(q.q, _bofornecedor+_cnpj+_obrigatorio);
    fornecedor.bocnpjrepetido            := setvalorBo(q.q, _bofornecedor+_cnpj+_repetido);
    fornecedor.bo                        := setvalorBo(q.q, _bofornecedor);
    livro.bolivrofiscal                  := setvalorBo(q.q, _bolivrofiscal);
    livro.bospeditem                     := setvalorBo(q.q, _bolivrofiscal+_sped+_item);
    livro.borecalcularbasentributavel    := setvalorbo(q.q, _borecalcularbasentributavel);
    livro.bospedcte                      := setvalorBo(q.q, _bo+_sped+_cte);
    livro.bospedctepiscofins             := setvalorBo(q.q, _bo+_sped+_cte+_pis+_cofins);
    livro.bogerarspedpordata             := setvalorBo(q.q, _bo+_gerar+_sped+_por+_data);
    livro.borecustomedio                 := setvalorBo(q.q, _BOLIVRO+_FISCAL+_RE+_CUSTO+_MEDIO);
    livro.bosintegraecfitem              := setvalorBo(q.q, _BOLIVRO+_FISCAL+_sintegra+_ecf+_item);
    livro.boativopiscofins               := setvalorBo(q.q, _bo+_ativo+_pis+_cofins);
    livro.bopdv                          := setvalorBo(q.q, _bo+_pdv);
    livro.boignorarerro                  := setvalorBo(q.q, _bo+_livro+_ignorar+_erro);
    livro.borecalcularcustomedio         := setvalorBo(q.q, _bo+_re+_calcular+_custo+_medio);
    livro.bomesatual                     := setvalorBo(q.q, _bo+_livro+_fiscal+_mes+_atual);
    livro.vlsaldocredor                  := q.q.fieldbyname(_vlsaldocredor).AsCurrency;
    livro.vlsaldocredoripi               := q.q.fieldbyname(_vlsaldocredor+_ipi).AsCurrency;
    livro.cdind_ativ                     := q.q.fieldbyname(_cd+_ind_ativ).AsString;
    livro.cdindescrituracao              := q.q.fieldbyname(_cd+_ind+_escrituracao).AsString;
    livro.cdalterdata                    := q.q.fieldbyname(_cd+_alterdata).AsString;
    livro.cdind_perfil                   := q.q.fieldbyname(_cd+_ind_+_perfil).AsString;
    livroproducao.bo                     := setvalorBo(q.q, _bolivro+_producao);
    livroproducao.boalterar              := setvalorBo(q.q, _bolivro+_producao+_alterar);
    livroproducao.qtdiaentradaestoque    := q.q.fieldbyname(_qt+_dia+_entrada+_estoque+_LIVRO+_P+_R+_O+_D).AsInteger;
    livroproducao.qtdiasaidaestoque      := q.q.fieldbyname(_qt+_dia+_saida+_estoque+_LIVRO+_PRODUCAO).AsInteger;
    livro.dtiniciolivro                  := q.q.fieldbyname(_dtinicio+_livro).AsDateTime;
    log.bolog                            := setvalorBo(q.q, _bolog);
    material.produto.bo                     := setvalorBo(q.q, _boproduto);
    material.produto.bovendaestoquezerado   := setvalorBo(q.q, _boproduto+_venda+_estoque+_zerado);
    material.produto.boordservestoquezerado := setvalorBo(q.q, _BOPRODUTO+_ORDSERV+_ESTOQUE+_ZERADO);
    ordserv.bo                        := setvalorBo(q.q, _boordserv);
    ordserv.bointervencao             := setvalorBo(q.q, _bointervencao);
    ordserv.boetapa                   := setvalorBo(q.q, _boetapa);
    ordserv.boequipamento             := setvalorBo(q.q, _boordserv+_equipamento);
    ordserv.bopreenchertipo           := setvalorBo(q.q, _boordserv+_preencher+_tipo);
    ordserv.boexibircliente           := setvalorBo(q.q, _boexibir+_cliente);
    ordserv.boexibirequipamento       := setvalorBo(q.q, _boexibir+_equipamento);
    ordserv.dspathordserv             := q.q.fieldbyname(_dspath+_ordserv).Asstring;
    equipamento.Bo                    := setvalorBo(q.q, _boequipamento);
    equipamento.dsnuserie             := q.q.fieldbyname(_equipamento+_nuserie+_nome).AsString;
    equipamento.boparada              := setvalorBo(q.q, _boparada);
    equipamento.dspath                := q.q.FieldByName(_dspath+_equipamento).AsString;
    equipamento.dsnupatrimonio        := q.q.fieldbyname(_equipamento+_nu+_patrimonio+_nome).AsString;
    equipamento.metrologia.bo                 := setvalorBo(q.q, _bo+_metrologia);
    equipamento.metrologia.dspath             := q.q.fieldbyname(_dspath+_metrologia).Asstring;
    ordserv.workbox.bofiltrar                 := setvalorBo(q.q, _boworkbox+_filtrar);
    ordserv.workbox.QTFILTRO                  := q.q.fieldbyname(_WORKBOX+_QT+_FILTRO).Asinteger;
    ordserv.workbox.BOMENUSUSPENSOETAPA       := setvalorBo(q.q, _BOWORKBOX+_MENU+_SUSPENSO+_ETAPA);
    ordserv.workbox.bogerente                 := setvalorBo(q.q, _boworkbox+_gerente);
    ordserv.workbox.boordserv                 := setvalorBo(q.q, _boworkbox+_ordserv);
    ordserv.workbox.boresponsavel             := setvalorBo(q.q, _boworkbox+_responsavel);
    ordserv.workbox.boexecucao                := setvalorBo(q.q, _boworkbox+_execucao);
    ordserv.workbox.boconfirmarmudancaetapa   := setvalorBo(q.q, _boworkbox+_confirmar+_mudanca+_etapa);
    ordserv.workbox.bopessoal                 := setvalorBo(q.q, _boworkbox+_pessoal);
    ordserv.workbox.bo                        := setvalorBo(q.q, _boworkbox);
    ordserv.workbox.dspessoal                 := q.q.fieldbyname(_ds+_workbox+_pessoal).AsString;
    ordserv.workbox.dsgeral                   := q.q.fieldbyname(_ds+_workbox+_geral).AsString;
    producao.requisicaoproducao.bo            := setvalorBo(q.q, _borequisicaoproducao);
    producao.bocorridaquimica         := setvalorBo(q.q, _bocorridaquimica);
    producao.ordproducao.bo           := setvalorBo(q.q, _boordproducao);
    producao.ordproducao.bofuncionario:= setvalorBo(q.q, _boordproducao+_funcionario);
    producao.ordproducao.bomunicipio  := setvalorBo(q.q, _boordproducao+_municipio);
    producao.ordproducao.boregiaoaplicacao := setvalorBo(q.q, _boregiaoaplicacao);
    producao.ordproducao.boformulacao      := setvalorBo(q.q, _boformulacao);
    producao.ordproducao.boprvinstalacao := setvalorBo(q.q, _boordproducao+_p+_r+_v+_instalacao);
    producao.ordproducao.dspath       := q.q.FieldByName(_dspath+_ordproducao).AsString;
    producao.boagenda                 := setvalorBo(q.q, _boagenda);
    producao.boapontamento            := setvalorBo(q.q, _boapontamento);
    transportadora.bo                 := setvalorBo(q.q, _botransportadora);
    transportadora.bocdreduzido       := setvalorBo(q.q, _botransportadora+_cdreduzido);
    transportadora.bobanco            := setvalorBo(q.q, _botransportadora+_banco);
    transportadora.bonuinss             := setvalorBo(q.q, _botransportadora+_nuinss);
    endereco.nucep         := q.q.fieldbyname(_nucep).Asstring;
    endereco.dsendereco    := q.q.fieldbyname(_dsendereco).Asstring;
    endereco.dsnumero      := q.q.fieldbyname(_dsnumero).Asstring;
    endereco.dscomplemento := q.q.fieldbyname(_dscomplemento).Asstring;
    endereco.nucxpostal    := q.q.fieldbyname(_nucxpostal).Asstring;
    endereco.nmbairro      := q.q.fieldbyname(_nmbairro).Asstring;
    endereco.cdmunicipio   := q.q.fieldbyname(_cdmunicipio).AsInteger;
    endereco.nmmunicipio   := q.q.fieldbyname(_nmmunicipio).Asstring;
    endereco.sguf          := q.q.fieldbyname(_sguf).Asstring;
    endereco.cduf          := q.q.fieldbyname(_cduf).AsInteger;
    uf.Select(endereco.cduf);
  finally
    freeandnil(q);
  end;
end;

destructor TEmpresa.Destroy;
begin
  freeandnil(uf);
  freeandnil(endereco);
  freeandnil(contador.endereco);
  freeandnil(contador);
  inherited;
end;

function TEmpresa.get_ponto_maskara(tp: string): integer;
var
  maskara : string;
  i : Integer;
begin
  result := 0;
       if tp = _grupo    then maskara := material.produto.dsmaskgrupo
  else if tp = _cntcusto then maskara := financeiro.dsmaskcntcusto
  else if tp = _plconta  then maskara := financeiro.dsmaskplconta;
  for i := 1 to Length(maskara) do
  begin
    if maskara[i] = '.' then
    begin
      inc(Result);
    end;
  end;
  if result > 0 then
  begin
    inc(Result);
  end;
end;

procedure TEmpresa.set_ponto_maskara(tp: string; var posicao, tamanho: array of Integer);
var
  maskara : string;
  p, x, i : Integer;
begin
  if tp = _grupo then
  begin
    maskara := material.produto.dsmaskgrupo
  end
  else if tp = _cntcusto then
  begin
    maskara := financeiro.dsmaskcntcusto
  end
  else if tp = _plconta  then
  begin
    maskara := financeiro.dsmaskplconta;
  end;
  x := 0;
  p := 1;
  for i := 1 to Length(maskara) do
  begin
    if maskara[i] = '.' then
    begin
      posicao[x] := p;
      tamanho[x] := i - p;
      p          := i + 1;
      Inc(x);
    end;
  end;
  posicao[x] := p;
  tamanho[x] := Length(maskara) - p + 1;
end;

function TEmpresa.get_bloqueado: Boolean;
begin
  result := (not empresa.bochaveuso) or (empresa.dtchaveuso < DtBanco) or (empresa.cdtpempresa = _2);
end;

function TEmpresa.get_cdtpregimeicms: string;
begin
  if cdtpregimetributario = _2 then
  begin
    result := _1
  end
  else
  begin
    result := _2;
  end;
end;

end.
