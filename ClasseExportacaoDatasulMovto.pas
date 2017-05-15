unit ClasseExportacaoDatasulMovto;

interface

uses
  system.UITypes,
  Forms, Dialogs, SysUtils, Classes, Controls,
  ACBrValidador,
  udlgdatabalanco, uRichEdit, uProgressBar, uRegistro, ustrings,
  uRotinas, uConstantes, udatahora,
  classeregistrainformacao, classeexecutasql, classeempresa, classeaplicacao, classequery;

function ExportacaoRPA:Boolean;

implementation

type
  TLote = record
    constante       : string; // 	1	1	1	Caracter		Sim	"
    cdtpregistro    : string; // Tipo Registro Header	1	2	2	Inteiro		Sim	0
    cdproduto       : string; // 3	Codigo Produto Origem	8	3	10	Caracter		Sim	EMS2
    mes_referencia  : string; // Mes Referencia	2	11	12	Inteiro		Sim	Mês Transação
    ano_referencia  : string; // Ano Referencia	4	13	16	Inteiro		Sim	Ano Transação
    cdempresaorigem : string; // Codigo Empresa Origem	3	17	19	Caracter		Sim	500
    cdempresarh     : string; // Codigo Empresa RH	3	20	22	Caracter		Não
    livre           : string; // Livre	177	23	199	Caracter		Não
    constante2      : string; // Constante	1	200	200	Caracter		Sim	"
  end;
  TItem = record                      // Registro do Item do Lote de Implantação de Títulos
    constante               : string; // Constante	1	1	1	Caracter		Sim	"
    cdtpregistro            : string; // Tipo Registro Detalhe	1	2	2	Inteiro		Sim	1
    nusequencia             : string; // Numero Sequencial do Registro	5	3	7	Inteiro		Sim	Sequencial
    cdestabelecimentoorigem : string; // Codigo Estabelecimento Origem	3	8	10	Caracter		Sim	501
    cdestabelecimentorh     : string; // Codigo Estabelecimento RH	3	11	13	Caracter		Não
    nucpf                   : string; // Codigo do CPF	11	14	24	Inteiro		Sim	CPF do Prestador
    nudocumento             : string; // Numero do Documento	7	25	31	Inteiro		Sim	Numero RPA
    nuserie                 : string; // Serie do Documento	3	32	34	Caracter		Sim	Serie RPA
    dtemissao               : string; // Data de Emissao do Documento	8	35	42	DDMMAAAA		Sim	Emissão do Documento
    dtpagamento             : string; // Data de Pagamento do Documento	8	43	50	DDMMAAAA		Sim	Pagamento do Documento
    indicador_calculo       : string; // Indicador de Calculo - S = Ja calculado / N = Nao calculado	1	51	51	Caracter		Sim	S
    indicador_base          : string; // Indicador de Base a Calcular - B = Valor Bruto  / L = Valor Liquido	1	52	52	Caracter		Sim	B
    vlbruto                 : string; // Valor Bruto	11	53	63	Decimal	2	Sim	Valor Bruto
    vldeducaodependente     : string; // Valor Deducao de Dependentes IRF	11	64	74	Decimal	2	Sim	Valor Deducao de Dependentes
    vldeducaoinss           : string; // Valor Deducao INSS	11	75	85	Decimal	2	Sim	Valor Deducao INSS
    vldeducaopensao         : string; // Valor Deducao Pensao IRF	11	86	96	Decimal	2	Sim	Valor Deducao Pensao IRF
    vltributavel            : string; // Valor Tributavel IRF	11	97	107	Decimal	2	Sim	Valor Tributavel IRF
    vlirfretido             : string; // Valor IRF Retido	11	108	118	Decimal	2	Sim	Valor IRF Retido
    vlbaseinss              : string; // Valor Base de Calculo INSS	11	119	129	Decimal	2	Sim	Valor Base de Calculo INSS
    vlinss                  : string; // Valor Encargo INSS	11	130	140	Decimal	2	Sim	Valor Encargo INSS
    vlliquido               : string; // Valor Liquido	11	141	151	Decimal	2	Sim	Valor Liquido
    qtdependente            : string; // Quantidade de Dependentes	2	152	153	Inteiro		Sim	Quantidade de Dependentes
    cdretencaoirf           : string; // Codigo Retencao IRF	4	154	157	Inteiro		Sim	Codigo Retencao IRF
    indicador_inss          : string; // Indicador Recolhimento do INSS	1	158	158	Inteiro		Sim	2
    codigo_cgc              : string; // Código do CGC	14	159	172	Inteiro		Sim	00000000000000
    codigo_centro_custo     : string; // Código do Centro de Custo	8	173	180	Caracter		Sim	501601
    vlsestsenat             : string; // Valor do SEST/SENAT	11	181	191	Decimal	2	Sim	Valor do SEST/SENAT
    vlbaseiss               : string; // Base Cálculo ISS	11	192	202	Decimal	2	Sim	Base Cálculo ISS
    aliss                   : string; // Perc Aliq ISS	6	203	208	Decimal	3	Sim	Perc Aliq ISS
    iss_terceiro            : string; // ISS Terceiro	11	209	219	Decimal	2	Sim	ISS Terceiro
    cdretensaocsll          : string; // Código Retenção CSLL	4	220	223	Inteiro		Sim	Código Retenção CSLL
    alretencaocsll          : string; // Percentual Retenção CSLL	5	224	228	Decimal	2	Sim	Percentual Retenção CSLL
    vlretencaocsll          : string; // Valor Retenção CSLL	8	229	236	Decimal	2	Sim	Valor Retenção CSLL
    cdretencaopis           : string; // Código Retenção PIS	4	237	240	Inteiro	0	Sim	Código Retenção PIS
    alretencaopis           : string; // Percentual Retenção PIS	5	241	245	Decimal	2	Sim	Percentual Retenção PIS
    vlretencaopis           : string; // Valor Retenção PIS	8	246	253	Decimal	2	Sim	Valor Retenção PIS
    cdretencaocofins        : string; // Código Retenção COFINS	4	254	257	Inteiro		Sim	Código Retenção COFINS
    alretencaocofins        : string; // Percentual Retenção COFINS	5	258	262	Decimal	2	Sim	Percentual Retenção COFINS
    vlretencaocofins        : string; // Valor Retenção COFINS	8	263	270	Decimal	2	Sim	Valor Retenção COFINS
    vlbaseinssretido        : string; // Base INSS	11	271	281	Decimal	2	Sim	Base INSS
    vlinssretido            : string; // Valor INSS Retido	11	282	292	Decimal	2	Sim	Valor INSS Retido
    plano_lotacao           : string; // Plano de Lotação	3	293	295	Inteiro		Sim	2
    unidade_lotacao         : string; // Unidade de Lotação	11	296	306	Caracter		Sim	103010100
    unidade_negocio         : string; // Unidade de Negócio	3	307	309	Caracter		Sim	LOG
    tipo_servico_externo    : string; // Tipo Serviço Externo	6	310	315	Inteiro		Não	000000
    mao_de_obra             : string; // Mão de Obra	3	316	318	Caracter		Não
    Desonerado              : string; // Desonerado - S - SIM / N - NÃO	1	319	319	Caracter		Não
    constantes              : string; //Constante	1	320	320	Caracter		Sim	"
  end;
  TExportacao  = class(tobject)
    lote : TLote;
    item : TItem;
    dti, dtf: TDate;
    q: TClasseQuery;
    itemf, arquivo : TStrings;
    codigoi, codigof, nome_arquivo: string;
    private
      function  makesql:string;
      function selecionar_dados:boolean;
      procedure gerar_arquivo;
      procedure get_hearder;
      procedure get_item;
      procedure set_item;
      procedure set_hearder;
    public
      constructor Create;
      destructor  destroy; override;
      function    Exportar:Boolean;
  end;

function ExportacaoRPA:Boolean;
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
  arquivo             := TStringList.Create;
  itemf               := TStringList.Create;
  q := TClasseQuery.Create;
  frmprogressbar      := Tfrmprogressbar.Create(nil);
  frmprogressbar.setgau1;
end;

destructor TExportacao.destroy;
begin
  FreeAndNil(arquivo);
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
  end;
end;

function TExportacao.makesql: string;
begin
  result := 'select r.*'+
                  ',t.NUDEPENDENTES'+
                  ',i.vldependente'+
                  ',t.nucpf '+
            'from rpa r '+
            'INNER join transportadora t on t.cdempresa=r.cdempresa and t.cdtransportadora=r.cdproprietario '+
            'inner join TABIRPF i on EXTRACT(year FROM i.dtemissao)=EXTRACT(year FROM R.dtemissao) or (EXTRACT(year FROM i.dttermino)=EXTRACT(year FROM R.dtemissao)) '+
            'where t.tppessoa=''F'' and r.cdempresa='+empresa.cdempresa.tostring+' and r.cdrpa between '+codigoi+' and '+codigof+' '+
            'and r.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf);
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
  arquivo.SaveToFile(diretorio+'\'+'PRESTADOR_'+formatdatetime('YYYY-MM-DD', DtBanco)+'_'+formatdatetime('h-n-s', hrbanco)+'.lst');

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
    get_item;
    set_item;
    q.q.Next;
  end;
  result := true;
end;

procedure TExportacao.set_hearder;
begin
  arquivo.Add(lote.constante       +
              lote.cdtpregistro    +
              lote.cdproduto       +
              lote.mes_referencia  +
              lote.ano_referencia  +
              lote.cdempresaorigem +
              lote.cdempresarh     +
              lote.livre           +
              lote.constante2);
end;

procedure TExportacao.set_item;
begin
  itemf.Add(item.constante               +
            item.cdtpregistro            +
            item.nusequencia             +
            item.cdestabelecimentoorigem +
            item.cdestabelecimentorh     +
            item.nucpf                   +
            item.nudocumento             +
            item.nuserie                 +
            item.dtemissao               +
            item.dtpagamento             +
            item.indicador_calculo       +
            item.indicador_base          +
            item.vlbruto                 +
            item.vldeducaodependente     +
            item.vldeducaoinss           +
            item.vldeducaopensao         +
            item.vltributavel            +
            item.vlirfretido             +
            item.vlbaseinss              +
            item.vlinss                  +
            item.vlliquido               +
            item.qtdependente            +
            item.cdretencaoirf           +
            item.indicador_inss          +
            item.codigo_cgc              +
            item.codigo_centro_custo     +
            item.vlsestsenat             +
            item.vlbaseiss               +
            item.aliss                   +
            item.iss_terceiro            +
            item.cdretensaocsll          +
            item.alretencaocsll          +
            item.vlretencaocsll          +
            item.cdretencaopis           +
            item.alretencaopis           +
            item.vlretencaopis           +
            item.cdretencaocofins        +
            item.alretencaocofins        +
            item.vlretencaocofins        +
            item.vlbaseinssretido        +
            item.vlinssretido            +
            item.plano_lotacao           +
            item.unidade_lotacao         +
            item.unidade_negocio         +
            item.tipo_servico_externo    +
            item.mao_de_obra             +
            item.Desonerado              +
            item.constantes               );
end;

procedure TExportacao.get_hearder;
begin
  lote.constante       := '"';
  lote.cdtpregistro    := '0';
  lote.cdproduto       := 'EMS2'+StringOfChar(' ', 04);
  lote.mes_referencia  := formatdatetime(_mm, dti);
  lote.ano_referencia  := formatdatetime(_yyyy, dti);
  lote.cdempresaorigem := '500';
  lote.cdempresarh     := StringOfChar(' ', 03);
  lote.livre           := StringOfChar(' ', 177);
  lote.constante2      := '"';
end;

procedure TExportacao.get_item;
begin
  item.constante               := '"';
  item.cdtpregistro            := '1';
  item.nusequencia             := FormatarTextoEsquerda(inttostr(q.q.recno), 5);
  item.cdestabelecimentoorigem := '501';
  item.cdestabelecimentorh     := StringOfChar(' ', 03);
  item.nucpf                   := q.q.FieldByName(_nucpf).AsString;
  item.nudocumento             := FormatarTextoEsquerda(q.q.FieldByName(_cd+_rpa).AsString, 7);
  item.nuserie                 := '1'+StringOfChar(' ', 02);
  item.dtemissao               := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item.dtpagamento             := FormatDateTime(_DDMMYYYY, q.q.FieldByName(_dtemissao).AsDateTime);
  item.indicador_calculo       := _s;
  item.indicador_base          := _B;
  item.vlbruto                 := FormatarMoedaSPonto_(q.q.FieldByName(_vlfrete).AsCurrency, 11);
  item.vldeducaodependente     := FormatarMoedaSPonto_(q.q.FieldByName(_VL+_dependente).AsCurrency, 11);
  item.vldeducaoinss           := FormatarMoedaSPonto_(q.q.FieldByName(_VL+_INSS).AsCurrency, 11);
  item.vldeducaopensao         := FormatarMoedaSPonto_(0, 11);
  if q.q.FieldByName(_VLIRRF).AsCurrency > 0 then
  begin
    item.vltributavel            := FormatarMoedaSPonto_(q.q.FieldByName(_VLBASEIRRF).AsCurrency, 11);
    item.vlirfretido             := FormatarMoedaSPonto_(q.q.FieldByName(_VLIRRF).AsCurrency, 11);
  end
  else
  begin
    item.vltributavel            := StringOfChar('0', 11);
    item.vlirfretido             := StringOfChar('0', 11);
  end;

  item.vlbaseinss              := FormatarMoedaSPonto_(q.q.FieldByName(_vlfrete).AsCurrency * 0.2, 11);
  item.vlinss                  := FormatarMoedaSPonto_(0, 11);

  item.vlliquido               := FormatarMoedaSPonto_(0, 11);
  item.qtdependente            := FormatarTextoEsquerda(q.q.FieldByName(_NUDEPENDENTES).Asstring, 2);
  item.cdretencaoirf           := '0588';
  item.indicador_inss          := _2;
  item.codigo_cgc              := StringOfChar('0', 14);
  item.codigo_centro_custo     := '501601  ';
  item.vlsestsenat             := FormatarMoedaSPonto_(q.q.FieldByName(_VL+_SESTSENAT).AsCurrency, 11);
  item.vlbaseiss               := FormatarMoedaSPonto_(0, 11);
  item.aliss                   := FormatarMoedaSPonto_(0, 06);
  item.iss_terceiro            := FormatarMoedaSPonto_(0, 11);
  item.cdretensaocsll          := StringOfChar('0', 4);
  item.alretencaocsll          := FormatarMoedaSPonto_(0, 05);
  item.vlretencaocsll          := FormatarMoedaSPonto_(0, 08);
  item.cdretencaopis           := StringOfChar('0', 4);
  item.alretencaopis           := FormatarMoedaSPonto_(0, 05);
  item.vlretencaopis           := FormatarMoedaSPonto_(0, 08);
  item.cdretencaocofins        := StringOfChar('0', 4);
  item.alretencaocofins        := FormatarMoedaSPonto_(0, 05);
  item.vlretencaocofins        := FormatarMoedaSPonto_(0, 08);

  item.vlbaseinssretido        := FormatarMoedaSPonto_(q.q.FieldByName(_vlfrete).AsCurrency * 0.2, 11);
  item.vlinssretido            := FormatarMoedaSPonto_(q.q.FieldByName(_VL+_INSS).AsCurrency, 11);

  item.plano_lotacao           := _2+StringOfChar(' ', 02);
  item.unidade_lotacao         := '103010100'+StringOfChar(' ', 02);
  item.unidade_negocio         := 'LOG';
  item.tipo_servico_externo    := StringOfChar('0', 06);
  item.mao_de_obra             := StringOfChar(' ', 03);
  item.Desonerado              := ' ';
  item.constantes              := '"';
end;

end.
