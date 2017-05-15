unit classeLivroFiscalDigital;

interface

uses
  System.Actions, System.UITypes,
  forms, ExtCtrls, controls, classes, sysutils, dialogs, gauges, Math, Contnrs,
  DB,
  uRichEdit, uregistro, udatahora, utipo, uconstantes, ustrings,
  uprogressbar, udlgdatabalanco,
  classeaplicacao, classeempresa, classeretornasql, classeendereco, classequery,
  classeentrada, classesaida;

Type
  TE116 = class
  strict private
    Find_proc: string;
    Fdt_vcto: TDate;
    Fcod_or: string;
    Fvl_or: currency;
    Freg: string;
    Fnum_proc: string;
    Fcod_rec: string;
    Ftxt_compl: string;
    Fmes_ref: string;
    Fproc: string;
    procedure Setcod_or(const Value: string);
    procedure Setcod_rec(const Value: string);
    procedure Setdt_vcto(const Value: TDate);
    procedure Setind_proc(const Value: string);
    procedure Setnum_proc(const Value: string);
    procedure Setreg(const Value: string);
    procedure Setvl_or(const Value: currency);
    procedure Setmes_ref(const Value: string);
    procedure Setproc(const Value: string);
    procedure Settxt_compl(const Value: string);
  public
    property reg : string read Freg write Setreg; // 01 REG Texto fixo contendo "E116" C 004 - O
    property cod_or : string read Fcod_or write Setcod_or; // 02 COD_OR Código da obrigação a recolher, conforme a Tabela 5.4 C 003* - O
    property vl_or : currency read Fvl_or write Setvl_or; // 03 VL_OR Valor da obrigação a recolher N - 02 O
    property dt_vcto : TDate read Fdt_vcto write Setdt_vcto; // 04 DT_VCTO Data de vencimento da obrigação N 008* - O
    property cod_rec : string read Fcod_rec write Setcod_rec; // 05 COD_REC Código de receita referente à obrigação, próprio da unidade da federação, conforme legislação estadual. C - - O
    property num_proc : string read Fnum_proc write Setnum_proc; // 06 NUM_PROC Número do processo ou auto de infração ao qual a obrigação está vinculada, se houver. C 015 - OC
    property ind_proc : string read Find_proc write Setind_proc; // 07 IND_PROC Indicador da origem do processo: 0- SEFAZ; 1- Justiça Federal; 2- Justiça Estadual; 9- Outros C 001* - OC
    property proc : string read Fproc write Setproc; // 08 PROC Descrição resumida do processo que embasou o lançamento C - - OC
    property txt_compl : string read Ftxt_compl write Settxt_compl; // 09 TXT_COMPL Descrição complementar das obrigações a recolher. C - - OC
    property mes_ref : string read Fmes_ref write Setmes_ref; // 10 MES_REF* Informe o mês de referência no formato “mmaaaa” N 006* - O
    constructor create;
    destructor destroy;
    function Texto:string;
  end;
  TE116List = class(TObjectList)
  private
    function  GetItem(Index: Integer): TE116;
    procedure SetItem(Index: Integer; const Value: TE116);
  public
    function New: TE116;
    property Items[Index: Integer]: TE116 read GetItem write SetItem;
  end;
  TLivroFiscalDigital = class(TObject)
  private
    bod100, boitem : boolean;
    vlicmscte, vlbcicmsst, vlicmsst : Currency;
    pnl : tpanel;
    gau, gau1 : TGauge;
    rec_0000, rec_0001, rec_0005, rec_0100, rec_0150, rec_0190, rec_0200, rec_0300, rec_0305, rec_0400, rec_0450, rec_0460, rec_0500, rec_0600, rec_0990 : integer;
    rec_c001, rec_c100, rec_c110, rec_c111, rec_c140, rec_c141, rec_c160, rec_c170, rec_c190, rec_c195, rec_c197,
    rec_c300, rec_c310, rec_c320, rec_c321, rec_c350, rec_c370, rec_c390,
    rec_c400, rec_c405, rec_c420, rec_c425, rec_c460, rec_c470, rec_c490,
    rec_c500, rec_c590, rec_c990 : integer;
    rec_d001, rec_d100, rec_d190, rec_d500, rec_d590, rec_d990 : integer;
    rec_1001, rec_1010, rec_1700, rec_1710, rec_1990 : integer;
    rec_e001, rec_e100, rec_e110, rec_e111, rec_e113, rec_e115, rec_e116, rec_e200, rec_e210, rec_e500, rec_e510, rec_e520, rec_e990 : integer;
    rec_g001, Rec_G110, rec_g125, rec_g126, rec_g130, rec_g140, rec_g990: Integer;
    rec_h001, rec_h005, rec_h010, rec_h990 : integer;
    rec_k001, rec_k990 : integer;
    rec_9001, rec_9900, rec_9990, rec_9999 : integer;
    p0190, qt09990, p0200 : integer;
    vlinventarioh : currency;
    arquivoh, arquivo: tstrings;
    dti, dtf : TDate;
    mensagem : tstrings;
    cdlp1a: integer;
    ind_mov : string;
    tpregistro   : string; // identificar o tipo de registro que está sendo processado no momento
    participante : array of TParticipante;
    unidade      : array of TUnidade;
    item         : array of TItem;
    Fe116: Te116List;
    procedure Sete116(const Value: Te116List);
    property e116 : Te116List read Fe116 write Sete116;
    function  itemExiste               (cod_item:string):boolean;
    procedure adicionar_item           (c:TClasseQuery);
    procedure adicionar_item_arquivo   (p_insert:integer=0; boestoque:boolean=false);
    procedure adicionar_unidade_arquivo(p_insert:integer=0);
    function  gettipo(cdctetptomador:integer):string;
    function  get_participante(c:TClasseQuery; tbl:string=''):string;
    function  ParticipanteExiste(nucnpj, nucpf:string):boolean;
    procedure adicionar_participante_arquivo;
    procedure Set_participante(tbl, pessoa:string);
    procedure Adicionar_unidade        (c:TClasseQuery);
    function  set_zero(c:TClasseQuery; nmfield:string; vldefault:string=''):string;overload;
    function  UnidadeExiste(cdunidade:string):boolean;
    procedure Registro0000;
    procedure Registro0001; // Abertura do Bloco
    procedure Registro0005; // Dados Complementares da Entidade
    procedure Registro0100; // Dados do contabilista
    procedure Registro0150; // Tabela de Cadastro de Participante
    procedure Registro0190; // identificacao das unidade de medidas
    procedure Registro0200; // Tabela de Identificacao do item (produto e servicos)
    procedure Registro0300; // Tabela do item do ativo imobilizado
    procedure Registro0400; // Tabela de natureza da operacao / prestacao
    procedure Registro0450; // Tabela de informacao complementar do documento fiscal
    procedure Registro0460; // Tabela de observacoes do lancamento fiscal
    procedure Registro0500; // Plano de Conta Ativo Imobilizado
    procedure Registro0600; // Tabela de Centro de Custo
    procedure Registro0990; // encerramento do Bloco 0
    //
    procedure RegistroC001(bomovimento:string);  // Abertura do Bloco C
    procedure RegistroC100;
    procedure RegistroC110(tbl, codigo:string); // Informacao Complementar da Nota Fiscal (codigo 01, 1B, 04 e 55)
    procedure RegistroC111(tbl, codigo:string); // Processo Referenciado
    procedure RegistroC140(tp, codigo:string); // Fatura
    procedure RegistroC141(tp, codigo:string); // Vencimento da Fatura
    procedure RegistroC165; // Operações com combustiveis
    procedure RegistroC170(var dif_aliq : string; tp_, codigo, nusaida:string); // Itens do documento
    procedure RegistroC190(tp, codigo:string); // Registro Analitico do documento (codigo 01, 1B, 04 e 55)
    procedure RegistroC195(dif_aliq, tbl:string; c:TClasseQuery); // Observacoes do Lancamento Fiscal
    procedure RegistroC300;
    procedure RegistroC310(cdserie:string; dtemissao:TDatetime);
    procedure RegistroC320(cdserie:string; dtemissao:TDatetime);
    procedure RegistroC321(cdserie:string; dtemissao:TDatetime; alicms: double; cdorigem, nusticms, cdcfop:string);
    procedure RegistroC350;
    procedure RegistroC370(cdsaida:string);
    procedure RegistroC390(cdsaida:string);
    procedure RegistroC400;
    procedure RegistroC405(nuserie:string);
    procedure RegistroC420(nuserie:string; dtemissao:TDateTime);
    procedure RegistroC425(nuserie, staliquota:string; dtemissao:TDateTime; vltotal:currency);
    procedure RegistroC460(nuserie:string; dtemissao:TDateTime);
    procedure RegistroC470(cdsaida:string);
    procedure RegistroC490(nuserie:string; dtemissao:TDateTime);
    procedure RegistroC500; // Nota Fiscal / Conta de energia eletrica (codigo 06) e nota fiscal consumo fornecimento de gas (codigo 28)
    procedure RegistroC590(codigo:string); // Registor analitico do documento - nota fiscal/conta de energia eletrica (codigo 06) e nota fiscal consumo fornecimento de gas (codigo 28)
    procedure RegistroC990; // Encerraento do bloco
    //
    procedure RegistroD100; // nota fiscal de servico de transporte (codigo 07) e
                            // conhecimento de tranporte rodoviario de cargas (codigo 08),
                            // conhecimentos de transporte de cargas avulso (codigo 8B),
                            // Aquaviario de cargas (codigo 09),
                            // aereo (codigo 10),
                            // ferroviario de cargas (codigo 11) e
                            // multimodal de cargas (codigo 26) e
                            // nota fiscal de transporte ferroviario de carga (codigo 27)
    procedure RegistroD190(codigo:string); // Registro analitico dos documentos (codigo 07, 08, 8B,09, 10, 11, 26 e 27)
    procedure RegistroD500;
    procedure RegistroD590(codigo:string); // Registro analitico do documento (codigo 21 e 22)
    procedure RegistroD990; // encerramento do bloco
    //
    procedure RegistroE001; // Abertura do bloco
    procedure RegistroE100; // Periodo da apuracao do ICMS
    procedure RegistroE110; // Apuracao do ICMS - operacoes proprias
    procedure RegistroE111; // Ajuste / Beneficio/incentivo da apuracao do icms
    procedure RegistroE113; // informacoes adicionais dos ajustes da apuracao do icms - identificacao dos documentos fiscais
    procedure RegistroE115; // informacoes adicionais da apuracao - valores declaratorios
    procedure RegistroE116; // obrigacoes do icms a recolher - operacoes proprias
    procedure RegistroE200;
    procedure RegistroE500; // periodo da apuracao do ipi
    procedure RegistroE510; // consolidacao dos valores do ipi
    procedure RegistroE520; // apuracao do ipi
    procedure RegistroE990; // encerramento do bloco E
    //
    procedure RegistroG001;
    procedure RegistroG110;
    procedure RegistroG125;
    procedure RegistroG990;
    //
    procedure RegistroH001; // abertura do bloco h
    procedure RegistroH005; // totais do inventario
    procedure RegistroH010; // inventario
    procedure RegistroH990; // encerramento do bloco H
    //
    procedure RegistroK001; // abertura do bloco h
    procedure RegistroK990; // encerramento do bloco H
    //
    procedure Registro1001; // abertura do bloco
    procedure Registro1700; // DOCUMENTOS FISCAIS UTILIZADOS
    procedure Registro1990; // encerramento do bloco
    //
    procedure Registro9001; // abertura do bloco
    procedure Registro9900; // registros do arquivo
    procedure Registro9990; // encerramento do bloco
    procedure Registro9999; // encerramento do arquivo
    procedure zerar_contadores;
  public
    constructor create(linha : tstrings);
    destructor destroy;
    procedure Gerar(codigo:integer; boitem1:boolean=false);
    procedure GerarJuncao(codigo: integer; filename:string);
  end;

implementation

uses StrUtils, classeproduto;

const
  _MES_ESTOQUE = _02;

constructor TLivroFiscalDigital.create(linha: tstrings);
begin
  fe116 := te116list.Create;
  vlicmscte := 0;
  bod100    := false;
  arquivo   := linha;
end;

destructor TLivroFiscalDigital.destroy;
begin
  freeandnil(fe116);
  inherited;
end;

procedure TLivroFiscalDigital.zerar_contadores;
begin
  rec_c001 := 0;
  rec_c100 := 0;
  rec_c110 := 0;
  rec_c111 := 0;
  rec_c140 := 0;
  rec_c141 := 0;
  rec_c160 := 0;
  rec_c170 := 0;
  rec_c190 := 0;
  rec_c195 := 0;
  rec_c197 := 0;
  rec_c300 := 0;
  rec_c310 := 0;
  rec_c320 := 0;
  rec_c321 := 0;
  rec_c350 := 0;
  rec_c370 := 0;
  rec_c390 := 0;
  rec_c990 := 0;
  rec_c590 := 0;
  rec_c400 := 0;
  rec_c405 := 0;
  rec_c420 := 0;
  rec_c425 := 0;
  rec_c460 := 0;
  rec_c470 := 0;
  rec_c490 := 0;
  rec_c500 := 0;
  rec_d001 := 0;
  rec_d100 := 0;
  rec_d190 := 0;
  rec_d500 := 0;
  rec_d590 := 0;
  rec_d990 := 0;
  rec_1001 := 0;
  rec_1010 := 0;
  rec_1700 := 0;
  rec_1710 := 0;
  rec_1990 := 0;
  rec_0000 := 0;
  rec_0001 := 0;
  rec_0005 := 0;
  rec_0100 := 0;
  rec_0150 := 0;
  rec_0190 := 0;
  rec_0200 := 0;
  rec_0300 := 0;
  rec_0305 := 0;
  rec_0400 := 0;
  rec_0450 := 0;
  rec_0460 := 0;
  rec_0500 := 0;
  rec_0600 := 0;
  rec_0990 := 0;
  rec_e001 := 0;
  rec_e100 := 0;
  rec_e110 := 0;
  rec_e111 := 0;
  rec_e113 := 0;
  rec_e115 := 0;
  rec_e116 := 0;
  rec_e200 := 0;
  rec_e210 := 0;
  rec_e500 := 0;
  rec_e510 := 0;
  rec_e520 := 0;
  rec_e990 := 0;
  rec_g001 := 0;
  Rec_G110 := 0;
  rec_g125 := 0;
  rec_g126 := 0;
  rec_g130 := 0;
  rec_g140 := 0;
  rec_g990 := 0;
  rec_h001 := 0;
  rec_h005 := 0;
  rec_h010 := 0;
  rec_h990 := 0;
  rec_k001 := 0;
  rec_k990 := 0;
  rec_9001 := 0;
  rec_9900 := 0;
  rec_9990 := 0;
  rec_9999 := 0;
  p0200    := 0;
  p0190    := 0;
  ind_mov  := _0;
  vlinventarioh := 0;
end;

procedure TLivroFiscalDigital.Gerar(codigo: integer; boitem1:boolean=false);
  procedure set_gauge(registro:string);
  begin
    tpregistro                 := registro;
    frmprogressbar.pnl.Caption := registro;
    gau.Progress               := 0;
    gau1.Progress              := gau1.Progress + 1;
    Application.ProcessMessages;
  end;
begin
  boitem := boitem1;
  zerar_contadores;
  cdlp1a := codigo;
  dti := qregistro.datadocodigo(_lp1a, cdlp1a, _dtinicio);
  dtf := qregistro.datadocodigo(_lp1a, cdlp1a, _dtfinal);
  if empresa.livro.bogerarspedpordata then
  begin
    if not dlgDataInicioFinal(dti, dtf, false) then
    begin
      Abort;
    end;
    if dti < qregistro.datadocodigo(_lp1a, cdlp1a, _dtinicio) then
    begin
      MessageDlg('Data inicial não pode ser menor do que a data do livro fiscal.', mtInformation, [mbOK], 0);
      Abort;
    end;
    if dtf > qregistro.datadocodigo(_lp1a, cdlp1a, _dtfinal) then
    begin
      MessageDlg('Data final não pode ser maior do que a data do livro fiscal.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  frmprogressbar := tfrmprogressbar.create(nil);
  arquivoh       := tstringlist.create;
  mensagem       := tstringlist.Create;
  try
    pnl  := frmprogressbar.pnl;
    gau  := frmprogressbar.gau;
    gau1 := frmprogressbar.gau1;
    frmprogressbar.setgau1;
    frmprogressbar.Show;
    gau1.MaxValue := 48;
    set_gauge('Registro 0000');
    Registro0000;
    set_gauge('Registro 0001');
    Registro0001;
    set_gauge('Registro 0005');
    Registro0005;
    set_gauge('Registro 0100');
    Registro0100;
    set_gauge('Registro 0150');
    Registro0150;
    set_gauge('Registro 0190');
    Registro0190;
    set_gauge('Registro 0200');
    Registro0200;
    set_gauge('Registro 0300');
    Registro0300;
    set_gauge('Registro 0400');
    Registro0400;
    set_gauge('Registro 0450');
    Registro0450;
    set_gauge('Registro 0460');
    Registro0460;
    set_gauge('Registro 0500');
    Registro0500;
    set_gauge('Registro 0600');
    Registro0600;
    set_gauge('Registro 0990');
    Registro0990;
    //
    set_gauge('Registro C100');
    if empresa.livro.borecalcularbasentributavel then
    begin
      titentradalist.RecalcularBaseICMSnaoTributavel;
      titsaidalist.RecalcularBaseICMSnaoTributavel;
      aplicacao.confire.ExecSQL('update empresa set borecalcularbasentributavel=''N'' where cdempresa='+empresa.cdempresa.tostring);
    end;
    registroc100;
    set_gauge('Registro C165');
    registroc165;
    if empresa.livro.cdind_perfil <> _A then
    begin
      set_gauge('Registro C300'); registroc300;
    end
    else
    begin
      set_gauge('Registro C350'); registroc350;
    end;
    set_gauge('Registro C400');
    registroc400;
    set_gauge('Registro C500');
    registroc500;
    set_gauge('Registro C990');
    registroc990;
    //
    set_gauge('Registro D100');
    RegistroD100;
    set_gauge('Registro D500');
    RegistroD500;
    set_gauge('Registro D990');
    RegistroD990;
    //
    set_gauge('Registro E001');
    RegistroE001;
    set_gauge('Registro E100');
    RegistroE100;
    set_gauge('Registro E110');
    RegistroE110;
    set_gauge('Registro E116');
    RegistroE116;
    set_gauge('Registro E200');
    RegistroE200;
    if empresa.livro.cdind_ativ = _0 then
    begin
      set_gauge('Registro E500');
      RegistroE500;
      set_gauge('Registro E510');
      RegistroE510;
      set_gauge('Registro E520');
      RegistroE520;
    end;
    set_gauge('Registro E990');
    RegistroE990;
    //
    set_gauge('Registro G001');
    RegistroG001;
    set_gauge('Registro G990');
    RegistroG990;
    //
    set_gauge('Registro H001');
    RegistroH001;
    set_gauge('Registro H010');
    RegistroH010;
    set_gauge('Registro H005');
    RegistroH005;
    set_gauge('Registro H990');
    RegistroH990;
    //
    set_gauge('Registro K001');
    RegistroK001;
    set_gauge('Registro K990');
    RegistroK990;
    //
    set_gauge('Registro 1001');
    Registro1001;
    set_gauge('Registro 1700');
    Registro1700;
    set_gauge('Registro 1990');
    Registro1990;
    //
    set_gauge('Registro 9001');
    Registro9001;
    set_gauge('Registro 9900');
    Registro9900;
    set_gauge('Registro 9990');
    Registro9990;
    set_gauge('Registro 9999');
    registro9999;
    if (mensagem.Count > 0) and (MessageDlg('Foram encontrados erros ao gerar o arquivo.'#13'Deseja visualizá-los?', mtConfirmation, [mbYes, mbNo], 0) = mryes) then
    begin
      ExibirSaidaVideo(mensagem);
      abort;
    end;
  finally
    freeandnil(frmprogressbar);
    freeandnil(arquivoh);
    freeandnil(mensagem);
  end;
end;

procedure TLivroFiscalDigital.RegistroC100;
  function MakeSQL(tbl, pessoa:string):string;
  begin
    if tbl = _saida then
    begin
      result := 'select s.nudocfiscalicms'+
                      ',s.nustdocumento'+
                      ',0 indemit' +
                      ',se.nuserie'+
                      ',s.nusaida'+
                      ',s.cdsaida codigo'+
                      ',s.nuchavenfe'+
                      ',s.dtemissao'+
                      ',s.dtsaida'+
                      ',s.vltotal'+
                      ',s.vldesconto'+
                      ',s.vlproduto'+
                      ',s.vlservico'+
                      ',s.cdtpfrete'+
                      ',s.vlfrete'+
                      ',s.vloutdespesa'+
                      ',s.vlseguro'+
                      ',s.vlbaseicms'+
                      ',s.vlicms'+
                      ',s.vlbaseicmssubtrib'+
                      ',s.vlicmssubtrib'+
                      ',s.vlipi'+
                      ',s.vlpis'+
                      ',s.vlcofins'+
                      ',s.vlpissubtrib'+
                      ',s.vlcofinssubtrib'+
                      ',s.tpentsai';
      if pessoa <> '' then
      begin
        result := result +
                     ','+pessoa+'.nucnpj'+
                     ','+pessoa+'.nucpf';
      end;
      result := result +
                     ',s.VLBASEFRETESUB'+
                     ',s.ALFRETESUB'+
                     ',s.VLFRETESUB'+
                     ',s.cdsaida codigo '+
                 'from saida s '+
                 'inner join itlp1a i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa ';
      if pessoa <> '' then
      begin
        result := result + 'inner join '+pessoa+' on '+pessoa+'.cd'+pessoa+'=s.cd'+pessoa+' and '+pessoa+'.cdempresa=s.cdempresa ';
      end;
      result := result +
                 'inner join serie SE on se.cdserie=s.cdserie and se.cdempresa=s.cdempresa '+
                 'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nudocfiscalicms in (''01'',''04'',''1B'',''55'') and i.cdtpimposto=1 and i.cdlp1a='+cdlp1a.ToString+' ';
      if pessoa = '' then
      begin
        result := result + 'and s.nustdocumento=''02'' ';
      end;
      if Empresa.livro.bogerarspedpordata then
      begin
        Result := result + 'and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
      end;
      result := result +
                 'group by s.nudocfiscalicms'+
                        ',s.nustdocumento'+
                        ',se.nuserie'+
                        ',s.nusaida'+
                        ',s.cdsaida'+
                        ',s.nuchavenfe'+
                        ',s.dtemissao'+
                        ',s.dtsaida'+
                        ',s.vltotal'+
                        ',s.vldesconto'+
                        ',s.vlproduto'+
                        ',s.vlservico'+
                        ',s.cdtpfrete'+
                        ',s.vlfrete'+
                        ',s.vloutdespesa'+
                        ',s.vlseguro'+
                        ',s.vlbaseicms'+
                        ',s.vlicms'+
                        ',s.vlbaseicmssubtrib'+
                        ',s.vlicmssubtrib'+
                        ',s.vlipi'+
                        ',s.vlpis'+
                        ',s.vlcofins'+
                        ',s.vlpissubtrib'+
                        ',s.vlcofinssubtrib'+
                        ',s.tpentsai';
      if pessoa <> '' then
      begin
        result := result + ','+pessoa+'.nucnpj,'+pessoa+'.nucpf';
      end;
      result := result +
                        ',s.VLBASEFRETESUB'+
                        ',s.ALFRETESUB'+
                        ',s.VLFRETESUB'+
                        ',s.cdsaida';
    end
    else
    begin
      result := 'select e.cdempresa'+
                       ',e.nudocfiscalicms'+
                       ',e.nustdocumento'+
                       ',1 indemit' +
                       ',e.nuserie'+
                       ',e.nuentrada nusaida'+
                       ',e.cdentrada codigo'+
                       ',e.nuchavenfe'+
                       ',e.dtemissao'+
                       ',e.dtsaida'+
                       ',e.vltotal'+
                       ',e.vldesconto'+
                       ',e.vlproduto'+
                       ',e.vlservico'+
                       ',e.cdtpfrete'+
                       ',e.vlfrete'+
                       ',e.vloutdespesa'+
                       ',e.vlseguro'+
                       ',(select sum(vlbaseicms) from itentrada where cdempresa=e.cdempresa and cdentrada=e.cdentrada and borecuperaicmS =''S'') vlbaseicms'+
                       ',(select sum(vlicms) from itentrada where cdempresa=e.cdempresa and cdentrada=e.cdentrada and borecuperaicms=''S'') vlicms'+
                       ',(select sum(vlbaseicmssubtrib) from itentrada where cdempresa=e.cdempresa and cdentrada=e.cdentrada and borecuperaicms=''S'') vlbaseicmssubtrib'+
                       ',(select sum(vlicmssubtrib) from itentrada where cdempresa=e.cdempresa and cdentrada=e.cdentrada and borecuperaicms=''S'') vlicmssubtrib'+
                       ',(select sum(vlipi) from itentrada where cdempresa=e.cdempresa and cdentrada=e.cdentrada and borecuperaipi=''S'') vlipi'+
                       ',e.vlpis'+
                       ',e.vlcofins'+
                       ',e.vlpissubtrib'+
                       ',e.vlcofinssubtrib'+
                       ',''E'' tpentsai'+
                       ','+pessoa+'.nucnpj,'+pessoa+'.nucpf,U.CDUF'+
                       ',e.cdentrada codigo '+
                   'from entrada e '+
                   'inner join '+pessoa+' on '+pessoa+'.cd'+pessoa+'=e.cd'+pessoa+' and '+pessoa+'.cdempresa=e.cdempresa '+
                   'LEFT JOIN UF U ON U.CDUF='+PESSOA+'.CDUF '+
                   'INNER JOIN TPENTRADA T ON T.CDTPENTRADA=E.CDTPENTRADA and t.cdempresa=e.cdempresa '+
                   'inner join itlp1a it on it.cdentrada=e.cdentrada and it.cdempresa=e.cdempresa '+
                   'inner join itentrada on itentrada.cdempresa=e.cdempresa and itentrada.cdentrada=e.cdentrada '+
                   'inner join produto on produto.cdempresa=itentrada.cdempresa and produto.cdproduto=itentrada.cdproduto '+
                   'inner join tpproduto on tpproduto.cdempresa=produto.cdempresa and tpproduto.cdtpproduto=produto.cdtpproduto '+
                   'where e.cdempresa='+empresa.cdempresa.tostring+' and e.nudocfiscalicms in (''01'',''04'',''1B'',''55'') and tpproduto.boservico<>''S'' and it.cdtpimposto=1 and it.cdlp1a='+cdlp1a.ToString+' ';
      if Empresa.livro.bogerarspedpordata then
      begin
        Result := result + 'and e.dtsaida between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
      end;
      result := result +
                   'group by e.cdempresa'+
                          ',e.nudocfiscalicms'+
                          ',e.nustdocumento'+
                          ',e.nuserie'+
                          ',e.nuentrada'+
                          ',e.cdentrada'+
                          ',e.nuchavenfe'+
                          ',e.dtemissao'+
                          ',e.dtsaida'+
                          ',e.vltotal'+
                          ',e.vldesconto'+
                          ',e.vlproduto'+
                          ',e.vlservico'+
                          ',e.cdtpfrete'+
                          ',e.vlfrete'+
                          ',e.vloutdespesa'+
                          ',e.vlseguro'+
                          ',e.vlipi'+
                          ',e.vlpis'+
                          ',e.vlcofins'+
                          ',e.vlpissubtrib'+
                          ',e.vlcofinssubtrib'+
                          ','+pessoa+'.nucnpj,'+pessoa+'.nucpf,U.CDUF'+
                          ',e.cdentrada';
    end;
  end;
  procedure processar(tbl, pessoa:string; var bomovimento:string);
  var
    c : TClasseQuery;
    dtsaida, dif_aliq, linha :string;
    function ind_pagto:string;
    var
      tbl_pagto:string;
      function eh_avista:Boolean;
      begin
        result := RetornaSQLInteger('select count(*) from '+tbl_pagto+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+c.q.fieldbyname(_codigo).asstring+' and dtvencimento='+getdtbanco(c.q.fieldbyname(_dtemissao).asdatetime)) = 1;
      end;
      function eh_aprazo:Boolean;
      begin
        result := RetornaSQLInteger('select count(*) from '+tbl_pagto+' where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+c.q.fieldbyname(_codigo).asstring) > 0;
      end;
    begin
      if tbl = _saida then
      begin
        tbl_pagto := _duplicata
      end
      else
      begin
        tbl_pagto := _autpagto;
      end;
      if eh_avista then
      begin
        result := _0
      end
      else if eh_aprazo then
      begin
        result := _1
      end
      else if dti < strtodate('01/07/2012') then
      begin
        result := _9
      end
      else
      begin
        result := _2;
      end;
    end;
    function ind_oper:string;
    begin
      if c.q.fieldbyname(_tpentsai).AsString = _S then
      begin
        result := _1
      end
      else
      begin
        result := _0;
      end;
    end;
    function nuchavenfe:string;
    begin
      result := c.q.fieldbyname(_nuchavenfe).asstring;
      if dti < StrToDate('01/01/2011') then
      begin
        result := '';
      end;
    end;
    function ind_frt:string;
    begin
      if (c.q.fieldbyname(_cdtpfrete).asstring <> '') and (c.q.fieldbyname(_cdtpfrete).asstring <> ' ') then
      begin
        result := c.q.fieldbyname(_cdtpfrete).asstring
      end
      else
      begin
        result := _9;
      end;
    end;
    function excecao_1:Boolean;
    begin
      Result := (c.q.fieldbyname(_nustdocumento).asstring = _02) // cancelado
             or (c.q.fieldbyname(_nustdocumento).asstring = _03) // cancelado extemporâneo
             or (c.q.fieldbyname(_nustdocumento).asstring = _04) // denegada
             or (c.q.fieldbyname(_nustdocumento).asstring = _05); // inutilizada
    end;
  begin
    c := TClasseQuery.create(makesql(tbl,pessoa));
    try
      gau.MaxValue := c.q.recordcount;
      while not c.q.eof do
      begin
        if bomovimento = '' then
        begin
          registroc001(_0);
          bomovimento := _0;
        end;
        if (tbl = _saida) and (c.q.fieldbyname(_nuchavenfe).asstring = '') and (c.q.fieldbyname(_nudocfiscalicms).asstring = _55) and (c.q.fieldbyname(_nustdocumento).asstring <> _04) then
        begin
          mensagem.Add('Nota fiscal '+c.q.fieldbyname(_nusaida).asstring+' de emissão própria não possui o número da chave da NFE.');
        end;
        if (tbl = _entrada) and (c.q.fieldbyname(_nuchavenfe).asstring = '') and (c.q.fieldbyname(_nudocfiscalicms).asstring = _55) and (c.q.fieldbyname(_dtsaida).AsDateTime > strtodate('31/03/2012')) then
        begin
          mensagem.Add('Compra '+c.q.fieldbyname(_nusaida).asstring+' não possui o número da chave da NFE.');
        end;
        gau.Progress := c.q.recno;
        frmprogressbar.pnl.Caption := tpregistro+' - '+tbl+' - '+pessoa+' - Registro '+inttostr(c.q.recno)+' de '+inttostr(c.q.recordcount);
        Application.ProcessMessages;
        if excecao_1 then
        begin
          linha := '|'+
                   {REG}'C100|'+
                   {IND_OPER     - C004}ind_oper+'|'+
                   {IND_EMIT     - C001}c.q.fieldbyname(_indemit).AsString        +'|'+
                   {COD_PART     - C060}'|'+
                   {COD_MOD      - C002}c.q.fieldbyname(_nudocfiscalicms).asstring+'|'+
                   {COD_SIT      - N002}c.q.fieldbyname(_nustdocumento).asstring  +'|'+
                   {SER          - C003}c.q.fieldbyname(_nuserie).asstring        +'|'+
                   {NUM_DOC      - N009}c.q.fieldbyname(_nusaida).asstring        +'|'+
                   {CHV_NFE      - N044}c.q.fieldbyname(_nuchavenfe).asstring+'|'+
                   {DT_DOC       - N008}'|'+
                   {DT_E_S       - N008}'|'+
                   {VL_DOC       - N   }'|'+
                   {IND_PAGTO    - C001}'|'+
                   {VL_DESC      - N}   '|'+
                   {valor abatimento nao tributado e nao comercial}'|'+
                   {VL_MERC      - N}'|'+
                   {IND_FRT      - C001}'|'+
                   {VL_FRT       - N}'|'+
                   {VL_SEG       - N}'|'+
                   {VL_OUT_DA    - N}'|'+
                   {VL_BC_ICMS   - N}'|'+
                   {VL_ICMS      - N}'|'+
                   {VL_BC_ICMS_ST- N}'|'+
                   {VL_ICMS_ST   - N}'|'+
                   {VL_IPI       - N}'|'+
                   {VL_PIS       - N}'|'+
                   {VL_COFINS    - N}'|'+
                   {VL_PIS_ST    - N}'|'+
                   {VL_COFINS_ST - N}'|';
          arquivo.Add(linha);
          inc(rec_c100);
        end
        else
        begin
          if (tbl = _entrada) and (c.q.fieldbyname(_nuchavenfe).asstring <> '') then
          begin
            if c.q.fieldbyname(_cduf).AsString+
               formatdatetime(_yymm, c.q.fieldbyname(_dtemissao).asdatetime)+
               removercaracteres(c.q.fieldbyname(_nucnpj).AsString)+
               c.q.fieldbyname(_nudocfiscalicms).asstring+
               FormatarTextoEsquerda(c.q.fieldbyname(_nuserie).asstring, 3, _0)+
               FormatarTextoEsquerda(c.q.fieldbyname(_nusaida).asstring, 9,_0) <> copy(c.q.fieldbyname(_nuchavenfe).asstring, 1, 34) then
            begin
              if c.q.fieldbyname(_cduf).AsString <> copy(c.q.fieldbyname(_nuchavenfe).asstring, 1, 2) then
              begin
                mensagem.add('A chave '+c.q.fieldbyname(_nuchavenfe).asstring+' da nota de compra '+c.q.fieldbyname(_nusaida).asstring+' não é uma chave válida. O código da unidade federativa do emitente não confere.');
              end;
              if formatdatetime(_yymm, c.q.fieldbyname(_dtemissao).asdatetime) <> copy(c.q.fieldbyname(_nuchavenfe).asstring, 3, 4) then
              begin
                mensagem.add('A chave '+c.q.fieldbyname(_nuchavenfe).asstring+' da nota de compra '+c.q.fieldbyname(_nusaida).asstring+' não é uma chave válida. O ano e mês da data de emissão da nota não confere.');
              end;
              if removercaracteres(c.q.fieldbyname(_nucnpj).AsString) <> copy(c.q.fieldbyname(_nuchavenfe).asstring, 7, 14) then
              begin
                mensagem.add('A chave '+c.q.fieldbyname(_nuchavenfe).asstring+' da nota de compra '+c.q.fieldbyname(_nusaida).asstring+' não é uma chave válida. O CNPJ do emitente da nota não confere.');
              end;
              if c.q.fieldbyname(_nudocfiscalicms).asstring <> copy(c.q.fieldbyname(_nuchavenfe).asstring, 21, 2) then
              begin
                mensagem.add('A chave '+c.q.fieldbyname(_nuchavenfe).asstring+' da nota de compra '+c.q.fieldbyname(_nusaida).asstring+' não é uma chave válida. O modelo da nota não confere.');
              end;
              if FormatarTextoEsquerda(c.q.fieldbyname(_nuserie).asstring, 3, _0) <> copy(c.q.fieldbyname(_nuchavenfe).asstring, 23, 3) then
              begin
                mensagem.add('A chave '+c.q.fieldbyname(_nuchavenfe).asstring+' da nota de compra '+c.q.fieldbyname(_nusaida).asstring+' não é uma chave válida. A série da nota não confere.');
              end;
              if FormatarTextoEsquerda(c.q.fieldbyname(_nusaida).asstring, 9,_0) <> copy(c.q.fieldbyname(_nuchavenfe).asstring, 26, 9) then
              begin
                mensagem.add('A chave '+c.q.fieldbyname(_nuchavenfe).asstring+' da nota de compra '+c.q.fieldbyname(_nusaida).asstring+' não é uma chave válida. A série da nota não confere.');
              end;
            end;
          end;
          dtsaida := getdtpura(c.q.fieldbyname(_dtsaida).asdatetime);
          if tbl = _saida then
          begin
            if formatdatetime(_yyyymm, c.q.fieldbyname(_dtsaida).asdatetime) > formatdatetime(_yyyymm, c.q.fieldbyname(_dtemissao).asdatetime) then
            begin
              dtsaida := '';
            end;
          end;
          linha := '|'+
                   {REG}'C100|'+
                   {IND_OPER     - C004}ind_oper                                 +'|'+
                   {IND_EMIT     - C001}c.q.fieldbyname(_indemit).AsString        +'|'+
                   {COD_PART     - C060}get_participante(c)+'|'+
                   {COD_MOD      - C002}c.q.fieldbyname(_nudocfiscalicms).asstring+'|'+
                   {COD_SIT      - N002}c.q.fieldbyname(_nustdocumento).asstring  +'|'+
                   {SER          - C003}c.q.fieldbyname(_nuserie).asstring        +'|'+
                   {NUM_DOC      - N009}c.q.fieldbyname(_nusaida).asstring        +'|'+
                   {CHV_NFE      - N044}c.q.fieldbyname(_nuchavenfe).asstring        +'|'+
                   {DT_DOC       - N008}getdtpura(c.q.fieldbyname(_dtemissao).asdatetime)+'|'+
                   {DT_E_S       - N008}dtsaida+'|'+
                   {VL_DOC       - N   }c.q.fieldbyname(_vltotal).asstring   +'|'+
                   {IND_PAGTO    - C001}ind_pagto                           +'|'+
                   {VL_DESC      - N   }c.q.fieldbyname(_vldesconto).AsString+'|'+
                   {valor abatimento nao tributado e nao comercial}'|'+
                   {VL_MERC      - N   }floattostr(c.q.fieldbyname(_vlproduto).ascurrency + c.q.fieldbyname(_vlservico).ascurrency)+'|'+
                   {IND_FRT      - C001}ind_frt+'|'+
                   {VL_FRT       - N}c.q.fieldbyname(_vlfrete).asstring          +'|'+
                   {VL_SEG       - N}c.q.fieldbyname(_vlseguro).asstring         +'|'+
                   {VL_OUT_DA    - N}c.q.fieldbyname(_vloutdespesa).asstring     +'|'+
                   {VL_BC_ICMS   - N}c.q.fieldbyname(_vlbaseicms).asstring       +'|'+
                   {VL_ICMS      - N}c.q.fieldbyname(_vlicms).asstring           +'|';
          if empresa.bosubstituto then
          begin
            linha := linha +
                   {VL_BC_ICMS_ST- N}c.q.fieldbyname(_vlbaseicmssubtrib).asstring+'|'+
                   {VL_ICMS_ST   - N}c.q.fieldbyname(_vlicmssubtrib).asstring    +'|';
          end
          else
          begin
            linha := linha +
                   {VL_BC_ICMS_ST- N}'0|'+
                   {VL_ICMS_ST   - N}'0|';
          end;
          linha := linha + 
                   {VL_IPI       - N}c.q.fieldbyname(_vlipi).asstring            +'|'+
                   {VL_PIS       - N}c.q.fieldbyname(_vlpis).asstring            +'|'+
                   {VL_COFINS    - N}c.q.fieldbyname(_vlcofins).asstring         +'|'+
                   {VL_PIS_ST    - N}c.q.fieldbyname(_vlpissubtrib).asstring     +'|'+
                   {VL_COFINS_ST - N}c.q.fieldbyname(_vlcofinssubtrib).asstring  +'|';
          arquivo.Add(linha);
          inc(rec_c100);
          RegistroC110(tbl, c.q.fieldbyname(_codigo).asstring);
          if c.q.fieldbyname(_nudocfiscalicms).asstring = _01 then
          begin
            RegistroC140(uppercase(copy(tbl, 1, 1)), c.q.fieldbyname(_codigo).asstring);
            RegistroC141(uppercase(copy(tbl, 1, 1)), c.q.fieldbyname(_codigo).asstring);
          end;
          dif_aliq := '';
          if boitem or (tbl = _entrada) or ((tbl = _saida) and (c.q.fieldbyname(_nudocfiscalicms).asstring <> _55)) then
          begin
            RegistroC170(dif_aliq, tbl, c.q.fieldbyname(_codigo).asstring, c.q.fieldbyname(_nusaida).asstring);
          end;
          RegistroC190(lowercase(tbl), c.q.fieldbyname(_codigo).asstring);
          RegistroC195(dif_aliq, tbl, c);
        end;
        c.q.next;
      end;
    finally
      freeandnil(c);
    end;
  end;
var
  bomovimento : string;
begin
  bomovimento := '';
  vlbcicmsst := 0;
  vlicmsst   := 0;
  processar(_entrada, _fornecedor, bomovimento);
  processar(_saida  , _cliente   , bomovimento);
  processar(_saida  , _fornecedor, bomovimento);
  processar(_saida  , ''         , bomovimento);
  processar(_entrada, _cliente   , bomovimento);
  if bomovimento = '' then
  begin
    registroc001(_1);
  end;
end;

procedure TLivroFiscalDigital.RegistroC110(tbl, codigo:string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('select cdefd0450,DSCOMPLEMENTO from '+tbl+'efd0450 where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'='+codigo);
    while not q.q.Eof do
    begin
      inc(rec_c110);
      arquivo.add('|C110|'+q.q.fieldbyname(_cdefd0450).asstring+'|'+q.q.fieldbyname(_dscomplemento).asstring+'|');
      registroc111(tbl, q.q.fieldbyname(_cdefd0450).asstring);
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC111(tbl, codigo:string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create;
  try
    q.q.Open('select nuprocesso,cdtpc111 from '+tbl+'c111 where cdempresa='+empresa.cdempresa.tostring+' and cd'+tbl+'efd0450='+codigo);
    while not q.q.Eof do
    begin
      inc(rec_c111);
      arquivo.add('|C111|'+q.q.fieldbyname(_nuprocesso).asstring+'|'+q.q.fieldbyname(_cdtpc111).asstring+'|');
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC140(tp, codigo:string);
  function MakeSQL:string;
  begin
    if tp = _S then
    begin
      result := 'select s.nusaida nudocumento,sum(d.vlduplicata) vltotal,count(*) qtd '+
                'from saida s '+
                'inner join duplicata d on d.cdsaida=s.cdsaida and s.cdempresa=d.cdempresa '+
                'where s.cdempresa='+empresa.cdempresa.tostring+' and s.cdsaida='+codigo+' and s.dtemissao<>d.dtvencimento '+
                'group by s.nusaida'
    end
    else
    begin
      result := 'select e.nuentrada nudocumento,sum(a.vlautpagto) vltotal,count(*) qtd '+
                'from entrada e '+
                'inner join autpagto a on a.cdentrada=e.cdentrada and e.cdempresa=a.cdempresa '+
                'where e.cdempresa='+empresa.cdempresa.tostring+' and e.cdentrada='+codigo+' and e.dtemissao<>a.dtvencimento '+
                'group by e.nuentrada';
    end;
  end;
var
  q : TClasseQuery;
  procedure set_arquivo(ind_oper:string);
  begin
    while not q.q.eof do
    begin
      arquivo.Add('|C140|'+
                  ind_oper                             +'|'+
                  _00                                 +'|'+
           {descricao complementar do titulo de credito}'|'+
                  q.q.fieldbyname(_nudocumento).asstring+'|'+
                  q.q.fieldbyname(_qtd).asstring        +'|'+
                  q.q.fieldbyname(_vltotal).asstring    +'|');
      inc(rec_c140);
      q.q.next;
    end;
  end;
begin
  q := TClasseQuery.Create(makesql);
  try
    if tp = _S then
    begin
      set_arquivo(_0)
    end
    else
    begin
      set_arquivo(_1);
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC141(tp, codigo:string);
  function MakeSQL:string;
  begin
    if tp = _S then
    begin
      result := 'select d.dtvencimento,d.vlduplicata vldocumento '+
                 'from duplicata d '+
                 'inner join saida s on s.cdsaida=d.cdsaida and s.cdempresa=d.cdempresa '+
                 'where d.cdempresa='+empresa.cdempresa.tostring+' and d.dtvencimento<>s.dtemissao and d.cdsaida='+codigo
    end
    else
    begin
      result := 'select a.dtvencimento,a.vlautpagto vldocumento '+
                 'from autpagto a '+
                 'inner join entrada e on e.cdentrada=a.cdentrada and e.cdempresa=a.cdempresa '+
                 'where a.cdempresa='+empresa.cdempresa.tostring+' and a.dtvencimento<>e.dtemissao and a.cdentrada='+codigo;
    end;
  end;
var
  q : TClasseQuery;
  procedure set_arquivo;
  var
    r : integer;
  begin
    r := 0;
    while not q.q.eof do
    begin
      inc(r);
      arquivo.Add('|C141|'+inttostr(r)+'|'+getdtpura(q.q.fieldbyname(_dtvencimento).asdatetime)+'|'+q.q.fieldbyname(_vldocumento).asstring+'|');
      inc(rec_c141);
      q.q.next;
    end;
  end;
begin
  q := TClasseQuery.Create(makesql);
  try
    set_arquivo;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC165;
begin

end;

function TLivroFiscalDigital.set_zero(c:TClasseQuery; nmfield:string; vldefault:string=''):string;
begin
  result := formatfloat(__moedadec, c.q.fieldbyname(nmfield).AsCurrency);
  if result = '0,0' then
  begin
    if (vldefault = _00) and (c.q.fieldbyname(nmfield).IsNull) then
    begin
      result := ''
    end
    else
    begin
      result := _0;
    end;
  end
  else if result = '' then
  begin
    result := vldefault;
  end
  else if Copy(Result, Length(Result)-1, 2) = ',0' then
  begin
    result := Copy(Result, 1, Length(Result)-2);
  end
  else if (Copy(Result, Length(Result)-2, 1) = ',') and (Copy(Result, Length(Result), 1) = _0) then
  begin
    Result := copy(Result, 1, Length(Result)-1);
    if result = '0,0' then
    begin
      if vldefault = _00 then
      begin
        result := ''
      end
      else
      begin
        result := _0;
      end;
    end
    else if Copy(Result, Length(Result)-1, 2) = ',0' then
    begin
      result := Copy(Result, 1, Length(Result)-2);
    end;
  end;
end;

procedure TLivroFiscalDigital.RegistroC170(var dif_aliq : string; tp_, codigo, nusaida:string);
  function MakeSQL:string;
  begin
    if tp_ = _Saida then
    begin
      result := 'select i.cdproduto'+
                      ',i.qtitem'+
                      ',u.cdunidade'+
                      ',i.vltotal'+
                      ',i.vldesconto'+
                      ',i.nusticms'+
                      ',p.cdorigem'+
                      ',i.cdcfop'+
                      ',i.vlbaseicms'+
                      ',i.alicms'+
                      ',i.vlicms'+
                      ',i.vlbaseicmssubtrib'+
                      ',i.alicmssubtrib'+
                      ',i.vlicmssubtrib'+
                      ',i.borecuperaicms'+
                      ',i.nustipi'+
                      ',i.vlbaseipi'+
                      ',i.alipi'+
                      ',i.vlipi'+
                      ',i.nustpis'+
                      ',i.vlbasepis'+
                      ',i.alpis'+
                      ',i.vlpis'+
                      ',i.nustcofins'+
                      ',i.vlbasecofins'+
                      ',i.alcofins'+
                      ',s.nusaida nudocumento'+
                      ',i.vlcofins '+
                 'from saida s '+
                 'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
                 'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                 'left join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                 'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdsaida='+codigo+' '+
                 'order by i.cdsaida,i.cdproduto';
    end
    else
    begin
      result := 'select i.cdproduto'+
                      ',i.qtitem'+
                      ',i.cdentrada'+
                      ',u.cdunidade'+
                      ',i.vltotal'+
                      ',i.vldesconto'+
                      ',i.nusticms'+
                      ',p.cdorigem'+
                      ',i.cdcfop'+
                      ',i.vlbaseicms'+
                      ',i.alicms'+
                      ',i.vlicms'+
                      ',i.vlbaseicmssubtrib'+
                      ',i.alicmssubtrib'+
                      ',i.vlicmssubtrib'+
                      ',i.borecuperaicms'+
                      ',i.nustipi'+
                      ',i.vlbaseipi'+
                      ',i.alipi'+
                      ',i.vlipi'+
                      ',i.nustpis'+
                      ',i.vlbasepis'+
                      ',i.alpis'+
                      ',i.vlpis'+
                      ',i.nustcofins'+
                      ',i.vlbasecofins'+
                      ',i.alcofins'+
                      ',i.vlcofins'+
                      ',c.bodiferencialaliquota'+
                      ',i.bondiferencialaliquota'+
                      ',i.borecuperaipi'+
                      ',e.nuentrada nudocumento '+
                      ',coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlicmssubtrib,0)+coalesce(i.vlipi,0) vlcontabil '+
                  'from entrada e '+
                  'inner join itentrada i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa '+
                  'INNER JOIN PRODUTO P ON P.CDPRODUTO=i.CDPRODUTO and p.cdempresa=i.cdempresa '+
                  'left join cfop c on c.cdcfop=i.cdcfop '+
                  'left join unidade u on u.cdunidade=P.cdunidade and u.cdempresa=p.cdempresa '+
                  'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' '+
                  'order by i.cdentrada,i.cdproduto';
    end;
  end;
var
  q : TClasseQuery;
  r : integer;
  linha : string;
  procedure linha_pis;
  begin
    if q.q.fieldbyname(_nustpis).asstring <> '' then
    begin
      linha := linha + FormatarTextoEsquerda(q.q.fieldbyname(_nustpis).asstring, 2, _0)+'|'
    end
    else
    begin
      linha := linha + '|';
    end;
    linha := linha +set_zero(q, _vlbasepis,_00)+'|'+q.q.fieldbyname(_alpis).asstring+'|'+
                   {quantidade - base calculo PIS}'|'+
                      {aliquota do PIS - em reais}'|'+
                        set_zero(q, _vlpis, _0)+'|';
  end;
  procedure linha_cofins;
  begin
    if q.q.fieldbyname(_nustcofins).asstring <> '' then
    begin
      linha := linha + FormatarTextoEsquerda(q.q.fieldbyname(_nustcofins).asstring, 2, _0)+'|'
    end
    else
    begin
      linha := linha + '|';
    end;
    linha := linha +set_zero(q, _vlbasecofins,_00)+'|'+
                  q.q.fieldbyname(_alcofins).asstring+'|'+
                   {quantidade - base calculo cofins}'|'+
                      {aliquota do COFINS - em reais}'|'+
                        set_zero(q, _vlcofins, _0)+'|'+
                {COD_CTA - Cd conta analítica contábil debitada/creditada}'|';
  end;
  procedure linha_ipi;
  begin
    linha := linha +{indicador de apuracao do ipi 0 - mensal, 1 - decendial}'|';
    if q.q.fieldbyname(_nustipi).asstring <> '' then
    begin
      linha := linha + FormatarTextoEsquerda(q.q.fieldbyname(_nustipi).asstring, 2, _0)+'|'
    end
    else
    begin
      linha := linha + '|';
    end;
    if tp_ <> _Saida then
    begin
      if q.q.fieldbyname(_borecuperaipi).asstring = _N then
      begin
        linha := linha +{codigo enquadramento legal do ipi, 4.5.3}'||||'
      end
      else
      begin
        linha := linha +{codigo enquadramento legal do ipi, 4.5.3}'|'+
                  set_zero(q, _vlbaseipi)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_alipi).ascurrency)+'|'+
                  set_zero(q, _vlipi)+'|';
      end;
    end
    else
    begin
      linha := linha +{codigo enquadramento legal do ipi, 4.5.3}'|'+set_zero(q, _vlbaseipi)+'|'+
                                                                    qstring.set_zero(q.q.fieldbyname(_alipi).AsCurrency)+'|'+
                                                                    set_zero(q, _vlipi)+'|';
    end;
  end;
  procedure linha_icms;
  begin
    if (q.q.fieldbyname(_borecuperaicms).asstring = _S) and (q.q.fieldbyname(_vlicms).AsCurrency = 0) then
    begin
      mensagem.add('Está marcado como recupera icms mas não há destaque de imposto no produto '+q.q.fieldbyname(_cdproduto).asstring+
                   ' - '+nomedocodigo(_produto, q.q.fieldbyname(_cdproduto).asstring)+'. Altere a nota '+q.q.fieldbyname(_nudocumento).asstring+' para poder continuar.');
    end;
    if  (q.q.fieldbyname(_borecuperaicms).asstring = _S) or
        (((q.q.fieldbyname(_nusticms).AsString = _00) or (q.q.fieldbyname(_nusticms).AsString = _20)) and
        (tp_ = _saida)) then
    begin
      linha := linha + set_zero(q, _vlbaseicms)+'|'+
                       qstring.set_zero(q.q.fieldbyname(_alicms).AsCurrency)+'|'+
                       set_zero(q, _vlicms)+'|'+
                       set_zero(q, _vlbaseicmssubtrib, _00)+'|';
      if empresa.bosubstituto then
      begin
        linha := linha + q.q.fieldbyname(_alicmssubtrib).asstring+'|' + set_zero(q, _vlicmssubtrib,_00)+'|';
      end
      else
      begin
        linha := linha + '0|0|';
      end;
    end
    else
    begin
      linha := linha + '0|0|0|0|0|0|';
    end;
  end;
  procedure consiste_origem;
  begin
    if q.q.fieldbyname(_cdorigem).asstring = '' then
    begin
      mensagem.add('O produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+nomedocodigo(_produto, q.q.fieldbyname(_cdproduto).asstring)+' não foi preenchido a origem.'+
                 ' Altere a nota '+q.q.fieldbyname(_nudocumento).asstring+' para poder continuar.');
    end;
  end;
  function getnmtp(tipo:string):string;
  begin
    if tipo = _saida then
    begin
      result := 'Fiscal'
    end
    else
    begin
      result := 'Compra';
    end;
  end;
begin
  q := TClasseQuery.Create(makesql);
  try
    r          := 0;
    while not q.q.eof do
    begin
      consiste_origem;
      if q.q.fieldbyname(_cdcfop).AsString = '' then
      begin
        mensagem.add('O produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+
                    nomedocodigo(_produto, q.q.fieldbyname(_cdproduto).asstring)+
                   ' não foi preenchido o CFOP. Altere a nota '+q.q.fieldbyname(_nudocumento).asstring+' para poder continuar.');
      end;
      if q.q.fieldbyname(_nusticms).AsString = '' then
      begin
        mensagem.add('O produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+
                    nomedocodigo(_produto, q.q.fieldbyname(_cdproduto).asstring)+' não foi preenchido a Situação Tributária do ICMs.q. Altere a nota '+q.q.fieldbyname(_nudocumento).asstring+' para poder continuar.');
      end;
      if (tp_ = _entrada) and (q.q.fieldbyname(_borecuperaipi).asstring = _s) and (q.q.fieldbyname(_vlipi).AsCurrency = 0) then
      begin
        mensagem.Add('Está marcado Recupera IPI mas não existe valor de IPI em compra '+nusaida+' no produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+nomedocodigo(_produto, q.q.fieldbyname(_cdproduto).asstring));
      end;
      if (tp_ = _entrada) and (q.q.fieldbyname(_borecuperaicms).asstring = _s) and (q.q.fieldbyname(_vlicms).AsCurrency = 0) then
      begin
        mensagem.Add('Está marcado Recupera ICMS mas não existe valor de ICMS em compra '+nusaida+' no produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+nomedocodigo(_produto, q.q.fieldbyname(_cdproduto).asstring));
      end;
      if (tp_ = _Entrada) and (Length(q.q.fieldbyname(_nusticms).asstring) = 3) then
      begin
        mensagem.add('Situação Tributária de ICMS '+q.q.fieldbyname(_nusticms).asstring+' incorreta na nota '+nusaida+' no produto '+q.q.fieldbyname(_cdproduto).asstring+' - '+nomedocodigo(_produto, q.q.fieldbyname(_cdproduto).asstring));
      end;
      inc(r);
      if (q.q.fieldbyname(_nusticms).asstring = _60) and (q.q.fieldbyname(_alicms).AsCurrency > 0) then
      begin
        if tp_ = _saida then
        begin
          mensagem.Add('Produto '+FormatarTextoEsquerda(q.q.fieldbyname(_cdproduto).asstring, 10)+' na nota de '+getnmtp(tp_)+' '+NomedoCodigo(tp_, codigo, _nu+tp_)+' foi lançado com Situação Tributária do ICMS como 60 e destaque de imposto.');
        end;
      end;
      if (q.q.fieldbyname(_nusticms).asstring = _10) and (q.q.fieldbyname(_alicms).AsCurrency > 0) then
      begin
        if tp_ = _saida then
        begin
          mensagem.Add('Produto '+FormatarTextoEsquerda(q.q.fieldbyname(_cdproduto).asstring, 10)+' na nota de '+getnmtp(tp_)+' '+NomedoCodigo(tp_, codigo, _nu+tp_)+' foi lançado com Situação Tributária do ICMS como 10 e destaque de imposto.');
        end;
      end;
      if (q.q.fieldbyname(_nusticms).asstring = _00) and (q.q.fieldbyname(_alicms).AsCurrency = 0) then
      begin
        mensagem.Add('Produto '+FormatarTextoEsquerda(q.q.fieldbyname(_cdproduto).asstring, 10)+' na nota de '+getnmtp(tp_)+' '+NomedoCodigo(tp_, codigo, _nu+tp_)+' foi lançado com Situação Tributária do ICMS como 00 e alíquota de ICMS igual a zero.');
      end;
      linha := '|C170|'+
                inttostr(r)                         +'|'+
                q.q.fieldbyname(_cdproduto).asstring +'|'+
                {descricao complementar do item}     '|'+
                q.q.fieldbyname(_qtitem).asstring    +'|'+
                q.q.fieldbyname(_cdunidade).asstring +'|'+
                set_zero(q, _vltotal)+'|'+
                set_zero(q, _vldesconto, _00)+'|'+
                {movimentacao fisica do item}        '0|'+
                q.q.fieldbyname(_cdorigem).asstring+
                q.q.fieldbyname(_nusticms).asstring+'|'+
                q.q.fieldbyname(_cdcfop).asstring +'|'+
                {codigo natureza operacao 0400}      '|';
      linha_icms;
      linha_ipi;
      linha_pis;
      linha_cofins;
      arquivo.Add(linha);
      inc(rec_c170);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC190(tp, codigo:string);
  function MakeSQL:string;
  begin
    if tp = _saida then
    begin
      if empresa.tpregime = _s then
      begin
        result := 'select i.cdsaida'+
                        ',p.cdorigem'+
                        ',i.nusticms'+
                        ',i.cdcfop'+
                        ',i.alicms'+
                        ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlicmssubtrib,0)+coalesce(i.vlseguro,0)-coalesce(i.vldesconto,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal '+
                        ',sum(i.vlbaseicms) vlbaseicms'+
                        ',sum(i.vlicms) vlicms'+
                        ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib'+
                        ',sum(i.vlicmssubtrib) vlicmssubtrib'+
                        ',sum(i.vlbaseicmsntributavel) vlbaseicmsntributavel'+
                        ',sum(i.vlbaseicmsred) vlbaseicmsred'+
                        ',sum(i.vlipi) vlipi '+
                    'from itsaida i '+
                    'left join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                    'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdsaida='+codigo+' '+
                    'group by i.cdsaida,p.cdorigem,i.nusticms,i.cdcfop,i.alicms'
      end
      else
      begin
        result := 'select i.cdsaida'+
                        ',p.cdorigem'+
                        ',i.nusticms'+
                        ',i.cdcfop'+
                        ',i.alicms'+
                        ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlicmssubtrib,0)+coalesce(i.vlseguro,0)-coalesce(i.vldesconto,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal '+
                        ',sum(i.vlbaseicms) vlbaseicms'+
                        ',sum(i.vlicms) vlicms'+
                        ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib'+
                        ',sum(i.vlicmssubtrib) vlicmssubtrib'+
                        ',sum(i.vlbaseicmsntributavel) vlbaseicmsntributavel'+
                        ',sum(i.vlbaseicmsred) vlbaseicmsred'+
                        ',sum(i.vlipi) vlipi '+
                    'from itsaida i '+
                    'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                    'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdsaida='+codigo+' '+
                    'group by i.cdsaida,p.cdorigem,i.nusticms,i.cdcfop,i.alicms'
      end;
    end
    else
    begin
      result := 'select i.cdempresa,i.cdentrada'+
                      ',p.cdorigem'+
                      ',i.nusticms'+
                      ',i.cdcfop'+
                      ',i.alicms'+
                      ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlicmssubtrib,0)+coalesce(i.vlseguro,0)-coalesce(i.vldesconto,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal'+
                      ',sum(i.vlbaseicms) vlbaseicms'+
                      ',sum(i.vlicms) vlicms'+
                      ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib'+
                      ',sum(i.vlicmssubtrib) vlicmssubtrib'+
                      ',sum(i.vlbaseicmsntributavel) vlbaseicmsntributavel'+
                      ',sum(i.vlbaseicmsred) vlbaseicmsred'+
                      ',coalesce((select sum(ii.vlipi) '+
                                 'from itentrada ii '+
                                 'LEFT JOIN PRODUTO PI ON PI.CDPRODUTO=II.CDPRODUTO and pi.cdempresa=ii.cdempresa '+
                                 'where ii.cdentrada=i.cdentrada and ii.cdempresa=i.cdempresa and ii.alicms=i.alicms and ii.borecuperaipi=''S'' '+
                                 'and ii.borecuperaicms=''S'' AND II.CDCFOP=I.CDCFOP AND II.NUSTICMS=I.NUSTICMS AND PI.CDORIGEM=P.CDORIGEM), 0) vlipi'+
                      ',coalesce((select sum(ii.vlipi) '+
                                 'from itentrada ii '+
                                 'LEFT JOIN PRODUTO PI ON PI.CDPRODUTO=II.CDPRODUTO and pi.cdempresa=ii.cdempresa '+
                                 'where i.cdempresa=ii.cdempresa and ii.cdentrada=i.cdentrada and ii.alicms=i.alicms and ii.borecuperaipi=''S'' '+
                                 'and ii.borecuperaicms=''S'' AND II.CDCFOP=I.CDCFOP and ii.borecuperaipiespecial=''S'' AND II.NUSTICMS=I.NUSTICMS AND PI.CDORIGEM=P.CDORIGEM),0) vlipiespecial '+
                 'from itentrada I '+
                 'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                 'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' and i.borecuperaicms=''S'' '+
                 'group by i.cdempresa,i.cdentrada,p.cdorigem,i.nusticms,i.cdcfop,i.alicms';
    end;
  end;
var
  q : TClasseQuery;
  linha : string;
  function nusticms:string;
  begin
    if Length(q.q.fieldbyname(_nusticms).asstring) = 3 then
    begin
      result := q.q.fieldbyname(_nusticms).asstring
    end
    else
    begin
      result := q.q.fieldbyname(_cdorigem).asstring+q.q.fieldbyname(_nusticms).asstring;
    end;
  end;
  procedure soma_st_icms;
  begin
    if tp <> _saida then
    begin
      Exit;
    end;
    vlbcicmsst := vlbcicmsst + q.q.fieldbyname(_vlbaseicmssubtrib).ascurrency;
    vlicmsst   := vlicmsst   + q.q.fieldbyname(_vlicmssubtrib).ascurrency;
  end;
begin
  q := TClasseQuery.create(makesql);
  try
    while not q.q.eof do
    begin
      if not ((empresa.tpregime = _s) and (tp = _saida)) and (q.q.fieldbyname(_cdorigem).asstring = '') then
      begin
        mensagem.add('A nota '+nomedocodigo(tp, q.q.fieldbyname(_cd+tp).asstring, _nu+tp)+' possui produto(s) com a origem não preenchido.');
      end;
      linha := '|C190|'+nusticms+'|'+
                q.q.fieldbyname(_cdcfop).asstring+'|'+
                qstring.set_zero(q.q.fieldbyname(_alicms).AsCurrency)+'|';
      if tp <> _saida then
      begin
        linha := linha + qstring.set_zero(q.q.fieldbyname(_vltotal).AsCurrency - q.q.fieldbyname(_vlipiespecial).AsCurrency)+'|'
      end
      else
      begin
        linha := linha + set_zero(q, _vltotal          )+'|';
      end;
      linha := linha +
                set_zero(q, _vlbaseicms       )+'|'+
                set_zero(q, _vlicms           )+'|';
      if empresa.bosubstituto then
      begin
        linha := linha +
                set_zero(q, _vlbaseicmssubtrib)+'|'+
                set_zero(q, _vlicmssubtrib    )+'|';
      end
      else
      begin
        linha := linha +
                '0|'+
                '0|';
      end;
      linha := linha +
                set_zero(q, _vlbaseicmsntributavel    )+'|'+
                set_zero(q, _vlipi            )+'||';
      arquivo.Add(linha);
      inc(rec_c190);
      soma_st_icms;
      q.q.next;
    end;
    if tp <> _saida then
    begin
      q.q.close;
      q.q.open('select I.CDEMPRESA,i.cdentrada'+
                    ',p.cdorigem'+
                    ',i.nusticms'+
                    ',i.cdcfop'+
                    ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlicmssubtrib,0)+coalesce(i.vlseguro,0)-coalesce(i.vldesconto,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal'+
                    ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib'+
                    ',sum(i.vlicmssubtrib) vlicmssubtrib'+
                    ',sum(i.vlbaseicmsntributavel) vlbaseicmsntributavel'+
                    ',sum(i.vlbaseicmsred) vlbaseicmsred'+
                    ',coalesce((select sum(ii.vlipi) '+
                               'from itentrada ii '+
                               'LEFT JOIN PRODUTO PI ON PI.CDPRODUTO=II.CDPRODUTO and ii.cdempresa=pi.cdempresa '+
                               'where ii.cdempresa=i.cdempresa and ii.cdentrada=i.cdentrada and ii.borecuperaipi=''S'' and ii.borecuperaicms=''N'' AND II.CDCFOP=I.CDCFOP '+
                               'AND II.NUSTICMS=I.NUSTICMS AND PI.CDORIGEM=P.CDORIGEM), 0) vlipi'+
                    ',coalesce((select sum(ii.vlipi) '+
                               'from itentrada ii '+
                               'LEFT JOIN PRODUTO PI ON PI.CDPRODUTO=II.CDPRODUTO and ii.cdempresa=pi.cdempresa '+
                               'where ii.cdempresa=i.cdempresa and ii.cdentrada=i.cdentrada and ii.borecuperaipi=''S'' and ii.borecuperaicms=''N'' AND II.CDCFOP=I.CDCFOP '+
                               'and ii.borecuperaipiespecial=''S'' AND II.NUSTICMS=I.NUSTICMS AND PI.CDORIGEM=P.CDORIGEM),0) vlipiespecial '+
              'from itentrada i '+
              'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
              'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' and i.borecuperaicms<>''S'' '+
              'GROUP by I.CDEMPRESA,i.cdentrada,p.cdorigem,i.nusticms,i.cdcfop');
      while not q.q.eof do
      begin
        if q.q.fieldbyname(_cdorigem).asstring = '' then
        begin
          mensagem.add('A nota '+nomedocodigo(tp, q.q.fieldbyname(_cd+tp).asstring, _nu+tp)+' possui produto(s) com a origem não preenchido.');
        end;
        linha := '|C190|'+nusticms+'|'+q.q.fieldbyname(_cdcfop).asstring  +'|'+'0|';
        if tp <> _saida then
        begin
          linha := linha + qstring.set_zero(q.q.fieldbyname(_vltotal).AsCurrency - q.q.fieldbyname(_vlipiespecial).AsCurrency)+'|'
        end
        else
        begin
          linha := linha + set_zero(q, _vltotal          )+'|';
        end;
        linha := linha + '0|0|0|0|'+
                set_zero(q, _vlbaseicmsntributavel)+'|'+
                set_zero(q, _vlipi)+'||';
        arquivo.Add(linha);
        inc(rec_c190);
        q.q.next;
      end;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC195(dif_aliq, tbl:string; c:TClasseQuery);
  procedure saida_195;
  var
    q : TClasseQuery;
    texto : tstrings;
    i : Integer;
    function get_valor_fretesub:string;
    begin
      result := RemoverChar(Copy(texto[3], 18, Length(texto[3])-17), '.');
    end;
  begin
    q := TClasseQuery.Create('select dsobservacao from saida where cdempresa='+empresa.cdempresa.tostring+' and cdsaida='+c.q.fieldbyname(_codigo).asstring);
    texto := tstringlist.create;
    try
      texto.text := q.q.fieldbyname(_dsobservacao).asstring;
      if texto.text <> '' then
      begin
        if c.q.fieldbyname(_nustdocumento).asstring = _08 then
        begin
          arquivo.Add('|C195|4|ICMS ST TRANSPORTE|');
          inc(rec_c195);
          arquivo.add('|C197|MG71091014|ICMS ST TRANSPORTE||||'+get_valor_fretesub+'||');
          inc(rec_c197);
          Exit;
        end;
        for i := 0 to texto.Count - 1 do
        begin
          if pos('Reducao a zero da aliquota do IPI', texto[i]) > 0 then
          begin
            arquivo.Add('|C195|2|'+texto[i]+'|');
            inc(rec_c195);
          end;
        end;
      end;
    finally
      freeandnil(q);
      freeandnil(texto);
    end;
    if c.q.fieldbyname(_vlbasefretesub).AsCurrency <= 0 then
    begin
      exit;
    end;
    arquivo.Add('|C195|1|OUTROS CREDITOS - TRANSPORTE|');
    inc(rec_c195);
    arquivo.add('|C197|MG10001014|OUTROS CREDITOS - TRANSPORTE||'+
                qstring.set_zero(c.q.fieldbyname(_vlbasefretesub).ascurrency)+'|'+
                qstring.set_zero(c.q.fieldbyname(_ALFRETESUB).ascurrency)+'|'+
                qstring.set_zero(c.q.fieldbyname(_VLFRETESUB).ascurrency)+'||');
    inc(rec_c197);
  end;
  procedure entrada_195;
  var
    linha : tstrings;
    i : integer;
  begin
    linha := tstringlist.create;
    try
      linha.Text := dif_aliq;
      arquivo.Add(linha[0]);
      inc(rec_c195);
      for i := 0 to linha.Count - 1 do
      begin
        if copy(linha[i], 1, 6) = '|C197|' then
        begin
          arquivo.add(linha[i]);
          inc(rec_c197);
        end;
      end;
    finally
      freeandnil(linha);
    end;
  end;
begin
  if tbl = _saida then
  begin
    saida_195
  end
  else if dif_aliq <> '' then
  begin
    entrada_195;
  end;
end;

procedure TLivroFiscalDigital.RegistroC500;
  function MakeSQL:string;
  begin
    result := 'select e.cdempresa,e.nudocfiscalicms'+
                   ',e.nustdocumento'+
                   ',1 indemit' +
                   ',e.nuserie'+
                   ',e.nusubserie'+
                   ',e.nuentrada nusaida'+
                   ',e.cdentrada codigo'+
                   ',e.nuchavenfe'+
                   ',e.dtemissao'+
                   ',e.dtsaida'+
                   ',e.vltotal'+
                   ',e.vldesconto'+
                   ',e.vlservico,e.vlproduto'+
                   ',e.cdtpfrete'+
                   ',e.vlfrete'+
                   ',e.vloutdespesa'+
                   ',e.vlseguro'+
                   ',(select sum(i.vlbaseicms) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlbaseicms'+
                   ',(select sum(i.vlicms) from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlicms'+
                   ',e.vlbaseicmssubtrib'+
                   ',e.vlicmssubtrib'+
                   ',e.vlipi'+
                   ',e.vlpis'+
                   ',e.vlcofins'+
                   ',e.vlpissubtrib'+
                   ',e.vlcofinssubtrib'+
                   ',''E'' tpentsai'+
                   ',E.CDGRUPOTENSAOC500'+
                   ',E.CDTPLIGACAOC500'+
                   ',E.CDCLCONSUMOAGUA'+
                   ',e.cdclconsumoenergia'+
                   ',f.nucnpj,f.nucpf '+
               'from entrada e '+
               'inner join fornecedor f on f.cdfornecedor=e.cdfornecedor and e.cdempresa=f.cdempresa '+
               'inner join itlp1a i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa '+
               'where e.cdempresa='+empresa.cdempresa.tostring+' and e.nudocfiscalicms in (''28'',''06'',''29'') '+
               'and i.cdtpimposto=1 and i.cdlp1a='+cdlp1a.ToString+' ';
    if Empresa.livro.bogerarspedpordata then
    begin
      Result := result + 'and e.dtsaida between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
    end;
    result := result +
               'group by e.cdempresa,e.nudocfiscalicms,e.nustdocumento,e.nuserie,e.nusubserie'+
                       ',e.nuentrada,e.cdentrada,e.nuchavenfe,e.dtemissao,e.dtsaida,e.vltotal'+
                       ',e.vldesconto,e.vlservico,e.vlproduto,e.cdtpfrete,e.vlfrete,e.vloutdespesa'+
                       ',e.vlseguro,(select sum(i.vlbaseicms) from itentrada i where i.cdentrada=e.cdentrada and i.borecuperaicms=''S'')'+
                       ',(select sum(i.vlicms) from itentrada i where i.cdentrada=e.cdentrada and i.borecuperaicms=''S'')'+
                       ',e.vlbaseicmssubtrib,e.vlicmssubtrib,e.vlipi,e.vlpis,e.vlcofins,e.vlpissubtrib,e.vlcofinssubtrib'+
                       ',E.CDGRUPOTENSAOC500,E.CDTPLIGACAOC500,E.CDCLCONSUMOAGUA,e.cdclconsumoenergia,f.nucnpj,f.nucpf';
  end;
var
  q : TClasseQuery;
  linha : string;
begin
  q     := TClasseQuery.create(makesql);
  try
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      linha := '|'+
              {REG}'C500|'+
              {IND_OPER     - C004}                                        '0|'+
              {IND_EMIT     - C001}q.q.fieldbyname(_indemit).AsString        +'|'+
              {COD_PART     - C060}get_participante(q)+'|'+
              {COD_MOD      - C002}q.q.fieldbyname(_nudocfiscalicms).asstring+'|'+
              {COD_SIT      - N002}q.q.fieldbyname(_nustdocumento).asstring  +'|'+
              {SER          - C004}q.q.fieldbyname(_nuserie).asstring        +'|'+
              {SUB          - N003}q.q.fieldbyname(_nusubserie).asstring     +'|';
                   if q.q.FieldByName(_nudocfiscalicms).AsString = _29 then linha := linha + q.q.fieldbyname(_cdclconsumoagua).AsString+'|'
              else if q.q.FieldByName(_nudocfiscalicms).AsString = _06 then linha := linha + q.q.fieldbyname(_cdclconsumoenergia).AsString+'|'
                                                                     else linha := linha + '|';
              //{COD_CONS     - C003}'|'+
              linha := linha +
              {NUM_DOC      - N009}q.q.fieldbyname(_nusaida).asstring        +'|'+
              {DT_DOC       - N008}getdtpura(q.q.fieldbyname(_dtemissao).asdatetime)+'|'+
              {DT_E_S       - N008}getdtpura(q.q.fieldbyname(_dtsaida).asdatetime)  +'|'+
              {VL_DOC       - N}q.q.fieldbyname(_vltotal).asstring   +'|'+
              {VL_DESC      - N}q.q.fieldbyname(_vldesconto).AsString+'|';
           if q.q.FieldByName(_vlservico).AsCurrency > 0 then linha := linha + {VL_MERC      - N}q.q.fieldbyname(_vlservico).asstring +'|'
      else if q.q.FieldByName(_vlproduto).AsCurrency > 0 then linha := linha + {VL_MERC      - N}q.q.fieldbyname(_vlproduto).asstring +'|';
      linha := linha + 
              {valor total dos servicos nao tributado pelo icms - OC}'|'+
              {valor total cobrado em nome de terceiros - OC}        '|'+
              {VL_OUT_DA    - N}q.q.fieldbyname(_vloutdespesa).asstring     +'|'+
              {VL_BC_ICMS   - N}q.q.fieldbyname(_vlbaseicms).asstring       +'|'+
              {VL_ICMS      - N}q.q.fieldbyname(_vlicms).asstring           +'|'+
              {VL_BC_ICMS_ST- N}q.q.fieldbyname(_vlbaseicmssubtrib).asstring+'|'+
              {VL_ICMS_ST   - N}q.q.fieldbyname(_vlicmssubtrib).asstring    +'|'+
              {COD_INF codigo da informacao complementar do documento fiscal campo 02 do registro 0450}'|'+
              {VL_PIS       - N}q.q.fieldbyname(_vlpis).asstring            +'|'+
              {VL_COFINS    - N}q.q.fieldbyname(_vlcofins).asstring         +'|';
              if q.q.FieldByName(_nudocfiscalicms).asstring = _06 then
              begin
                linha := linha + q.q.fieldbyname(_cdtpligacaoc500).asstring+'|'+
                                 q.q.fieldbyname(_cdgrupotensaoc500).asstring+'|';
              end
              else
              begin
                linha := linha + '||';
              end;
      arquivo.Add(linha);
      inc(rec_c500);
      RegistroC590(q.q.fieldbyname(_codigo).asstring);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC590(codigo:string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select p.cdorigem'+
                                 ',i.nusticms'+
                                 ',i.cdcfop'+
                                 ',i.alicms'+
                                 ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal '+
                                 ',sum(i.vlbaseicms) vlbaseicms '+
                                 ',sum(i.vlicms) vlicms '+
                                 ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib '+
                                 ',sum(i.vlicmssubtrib) vlicmssubtrib '+
                                 ',sum(i.vlbaseicmsred) vlbaseicmsred '+
                                 ',sum(i.vlipi) vlipi '+
                           'from itentrada i '+
                           'left join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                           'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' and i.borecuperaicms=''S'' '+
                           'group by p.cdorigem,i.nusticms,i.cdcfop,i.alicms');
  try
    while not q.q.eof do
    begin
      arquivo.Add('|C590|'+
                q.q.fieldbyname(_cdorigem).asstring+q.q.fieldbyname(_nusticms).asstring+'|'+
                q.q.fieldbyname(_cdcfop).asstring +'|'+
                q.q.fieldbyname(_alicms).asstring   +'|'+
                qstring.set_zero(q.q.fieldbyname(_vltotal).ascurrency   )+'|'+
                qstring.set_zero(q.q.fieldbyname(_vlbaseicms).ascurrency)+'|'+
                qstring.set_zero(q.q.fieldbyname(_vlicms).ascurrency    )+'|'+
                qstring.set_zero(q.q.fieldbyname(_vlbaseicmssubtrib).ascurrency)+'|'+
                qstring.set_zero(q.q.fieldbyname(_vlicmssubtrib).ascurrency)+'|'+
                qstring.set_zero(q.q.fieldbyname(_vlbaseicmsred).ascurrency)+'|'+
                {COD_OBS codigo da observacao do lancamento fiscal campo 02 do registro 0460}'|');
      inc(rec_c590);
      q.q.next;
    end;
    q.q.close;
    q.q.open('select p.cdorigem'+
                   ',i.nusticms'+
                   ',i.cdcfop'+
                   ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal'+
                   ',sum(i.vltotal) vltotal'+
                   ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib'+
                   ',sum(i.vlicmssubtrib) vlicmssubtrib'+
                   ',sum(i.vlbaseicmsred) vlbaseicmsred'+
                   ',sum(i.vlipi) vlipi '+
             'from itentrada i '+
             'left join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
             'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' and i.borecuperaicms=''N'' '+
             'group by p.cdorigem,i.nusticms,i.cdcfop');
    while not q.q.eof do
    begin
      arquivo.Add('|C590|'+
                  q.q.fieldbyname(_cdorigem).asstring+q.q.fieldbyname(_nusticms).asstring+'|'+
                  q.q.fieldbyname(_cdcfop).asstring +'|'+
                  '0|'+
                  qstring.set_zero(q.q.fieldbyname(_vltotal).ascurrency   )+'|'+
                  qstring.set_zero(0)+'|'+
                  qstring.set_zero(0)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicmssubtrib).ascurrency)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlicmssubtrib).ascurrency)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicmsred).ascurrency)+'|'+
                  {COD_OBS codigo da observacao do lancamento fiscal campo 02 do registro 0460}'|');
      inc(rec_c590);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC990;
begin
  inc(rec_c990);
  arquivo.add('|C990|'+inttostr(rec_c001+
                                rec_c100+rec_c110+rec_c111+rec_c140+rec_c141+rec_c160+rec_c170+rec_c190+rec_c195+rec_c197+
                                rec_c300+rec_c310+rec_c320+rec_c321+rec_c350+rec_c370+rec_c390+
                                rec_c400+rec_c405+rec_c420+rec_c425+rec_c460+rec_c470+rec_c490+
                                rec_c500+rec_c590+
                                rec_c990)+'|');
end;

procedure TLivroFiscalDigital.RegistroC001(bomovimento:string);
begin
  inc(rec_c001);
  arquivo.Add('|C001|'+bomovimento+'|');
end;

procedure TLivroFiscalDigital.RegistroD100;
var
  q : TClasseQuery;
  tbl, texto :string;
  function MakeSQL:string;
  begin
    if tbl = _entrada then
    begin
      result := 'select e.nudocfiscalicms'+
                     ',e.nustdocumento'+
                     ',1 indemit' +
                     ',0 IND_OPER'+
                     ',e.nuserie'+
                     ',e.nusubserie'+
                     ',e.nuentrada nusaida'+
                     ',e.cdentrada codigo'+
                     ',e.nuchavenfe'+
                     ',e.dtemissao'+
                     ',e.dtsaida'+
                     ',e.vltotal'+
                     ',e.vldesconto'+
                     ',e.vlproduto'+
                     ',e.cdtpfrete'+
                     ',null nuchavenfereferenciado'+
                     ',null cdctefinalidadeemissao'+
                     ',(select sum(i.vlbaseicms) from itentrada i where e.cdempresa=i.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlbaseicms'+
                     ',(select sum(i.vlicms) from itentrada i where e.cdempresa=i.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlicms'+
                     ',f.nucnpj,f.nucpf '+
                 'from entrada e '+
                 'inner join fornecedor f on f.cdfornecedor=e.cdfornecedor and e.cdempresa=f.cdempresa '+
                 'inner join itlp1a i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa '+
                 'where e.cdempresa='+empresa.cdempresa.tostring+' and ((e.nudocfiscalicms=''08'' or e.nudocfiscalicms=''57'') or (e.nudocfiscalicms=''07'')) and i.cdtpimposto=1 and i.cdlp1a='+cdlp1a.ToString;
      if Empresa.livro.bogerarspedpordata then
      begin
        Result := result + ' and e.dtsaida between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
      end;
    end
    else
    begin
      result := 'select 57 nudocfiscalicms'+
                     ',c.nustdocumento'+
                     ',0 indemit' +
                     ',1 IND_OPER'+
                     ',1 nuserie'+
                     ',1 nusubserie'+
                     ',c.cdcte nusaida'+
                     ',c.cdcte codigo'+
                     ',c.nuchavenfe'+
                     ',c.dtemissao'+
                     ',c.dtemissao dtsaida'+
                     ',c.vlservico vltotal'+
                     ',0 vldesconto'+
                     ',c.vlservico vlproduto'+
                     ',c.cdtpfrete'+
                     ',c.vlbaseicms'+
                     ',c.vlicms'+
                     ',c.nusticms'+
                     ',c.cdcfop'+
                     ',c.alicms'+
                     ',c.nuchavenfereferenciado'+
                     ',c.CDCTEFINALIDADEEMISSAO'+
                     ',''S'' tpentsai'+
                     ',c.cdctetptomador'+
                     ',ce.nucnpj nucnpje'+
                     ',ce.nucpf nucpfe'+
                     ',cd.nucnpj nucnpjd'+
                     ',cd.nucpf nucpfd'+
                     ',cx.nucnpj nucnpjx'+
                     ',cx.nucpf nucpfx'+
                     ',cr.nucnpj nucnpjr'+
                     ',cr.nucpf nucpfr'+
                     ',co.nucnpj nucnpjo'+
                     ',co.nucpf nucpfo '+
                 'from CTE C '+
                 'left join cliente ce on ce.cdcliente=c.cdremetente and c.cdempresa=ce.cdempresa '+
                 'left join cliente cd on cd.cdcliente=c.cddestinatario and c.cdempresa=cd.cdempresa '+
                 'left join cliente cx on cx.cdcliente=c.cdexpedidor and c.cdempresa=cx.cdempresa '+
                 'left join cliente cr on cr.cdcliente=c.cdrecebedor and c.cdempresa=cr.cdempresa '+
                 'left join cliente co on co.cdcliente=c.cdtomador and c.cdempresa=co.cdempresa '+
                 'where c.cdempresa='+empresa.cdempresa.tostring+' and c.dtemissao between '+getdtbanco(qregistro.DatadoCodigo(_lp1a, cdlp1a, _dtinicio))+' and '+getdtbanco(qregistro.datadocodigo(_lp1a, cdlp1a, _dtfinal));
      if Empresa.livro.bogerarspedpordata then
      begin
        Result := result + ' and c.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
      end;
    end;
  end;
  procedure processar;
    var
      vl_nt : Currency;
    function getnusticms(cdcfop, nusticms:string):string;
    begin
      if nusticms = _ss then
      begin
        if cdcfop = _5932 then
        begin
          result := _90
        end
        else if cdcfop = _6932 then
        begin
          result := _90
        end
        else if cdcfop = _5352 then
        begin
          Result := _40
        end
        else if cdcfop = _5353 then
        begin
          result := _40
        end
        else if cdcfop = _6352 then
        begin
          result := _00
        end
        else if cdcfop = _6353 then
        begin
          Result := _00
        end
        else if cdcfop = _6360 then
        begin
          result := _60
        end
        else
        begin
          MessageDlg('CFOP '+cdcfop+' não mapeado para simples nacional. Favor entrar em contato com a Quipos.', mtInformation, [mbOK], 0);
          abort;
        end;
      end
      else if (nusticms = _80) or (nusticms = _81) then
      begin
        result := _90
      end
      else if nusticms = _o90 then
      begin
        result := _90
      end
      else
      begin
        result := nusticms;
      end;
    end;
  begin
    q := TClasseQuery.create(makesql);
    try
      if (not bod100) and (q.q.RecordCount > 0) then
      begin
        inc(rec_d001);
        bod100 := true;
        arquivo.Add('|D001|0|');
      end;
      gau.MaxValue := q.q.recordcount;
      while not q.q.eof do
      begin
        gau.Progress := q.q.recno;
        Application.ProcessMessages;
        if (q.q.fieldbyname(_nudocfiscalicms).AsString = _57) and (q.q.fieldbyname(_nustdocumento).AsString <> _05) and (q.q.fieldbyname(_nuchavenfe).AsString = '') then
        begin
          mensagem.Add('Conhecimento de transporte eletrônico '+q.q.fieldbyname(_nusaida).asstring+' sem chave.');
        end;
        if (q.q.fieldbyname(_nustdocumento).AsString = _02) or (q.q.fieldbyname(_nustdocumento).AsString = _03) or
           (q.q.fieldbyname(_nustdocumento).AsString = _04) or (q.q.fieldbyname(_nustdocumento).AsString = _05) then
        begin
          texto := '|'+
                    {REG}'D100|'+
                    {IND_OPER     - C004}q.q.fieldbyname('IND_OPER').AsString+'|'+
                    {IND_EMIT     - C001}q.q.fieldbyname(_indemit).AsString        +'|'+
                    {COD_PART     - C060}'|'+
                    {COD_MOD      - C002}q.q.fieldbyname(_nudocfiscalicms).asstring+'|'+
                    {COD_SIT      - N002}q.q.fieldbyname(_nustdocumento).asstring  +'|'+
                    {SER          - C004}q.q.fieldbyname(_nuserie).asstring        +'|'+
                    {SUB          - N003}q.q.fieldbyname(_nusubserie).asstring     +'|'+
                    {NUM_DOC      - N009}q.q.fieldbyname(_nusaida).asstring        +'|'+
                    {CHV_CTE      - N044}q.q.fieldbyname(_nuchavenfe).asstring        +'|'+
                    {DT_DOC       - N008}'|'+
                    {DT_E_S       - N008}'|'+
                    {TP_CT-e      - N001}'|'+
                    {CHV_CTE_REF  - N044}'|'+
                    {VL_DOC       - N}'|'+
                    {VL_DESC      - N}'|'+
                    {IND_FRT      - C001}'|'+ // implementar na tela
                    {VL_MERC      - N}'|'+
                    {VL_BC_ICMS   - N}'|'+
                    {VL_ICMS      - N}'|'+
                    {VL_NT        - N}'|'+
                    {COD_INF codigo da informacao complementar do documento fiscal campo 02 do registro 0450 - C006}'|'+
                    {COD_CTA codigo da conta analitica contabil debitada/creditada - C}'|';
        end
        else
        begin
          if (tbl <> _entrada) and q.q.fieldbyname(_cdcte+_finalidade+_emissao).isnull then
          begin
            mensagem.Add('CT-e '+q.q.fieldbyname(_nusaida).asstring+' está com a Finalidade de emissão vazio.');
          end;
          vl_nt := q.q.fieldbyname(_vlproduto).ascurrency - q.q.fieldbyname(_vlbaseicms).ascurrency;
          if vl_nt < 0 then
          begin
            vl_nt := 0;
          end;
          texto := '|'+
                    {REG}'D100|'+ //01 REG Texto fixo contendo "D100" C 004 - O O
                    {IND_OPER     - C004}q.q.fieldbyname('IND_OPER').AsString+'|'+  // 02 IND_OPER Indicador do tipo de operação: 0- Aquisição; 1- Prestação C 001* - O O
                    {IND_EMIT     - C001}q.q.fieldbyname(_indemit).AsString        +'|'+ //03 IND_EMIT Indicador do emitente do documento fiscal: 0- Emissão própria; 1- Terceiros C 001* - O O
                    {COD_PART     - C060}get_participante(q, tbl)+'|'+                 //04 COD_PART Código do participante (campo 02 do Registro 0150): - do prestador de serviço, no caso de aquisição de serviço; - do tomador do serviço, no caso de prestação de serviços. C 060 - O O
                    {COD_MOD      - C002}q.q.fieldbyname(_nudocfiscalicms).asstring+'|'+ //05 COD_MOD Código do modelo do documento fiscal, conforme a Tabela 4.1.1 C 002* - O O
                    {COD_SIT      - N002}q.q.fieldbyname(_nustdocumento).asstring  +'|'+ //06 COD_SIT Código da situação do documento fiscal, conforme a Tabela 4.1.2 N 002* - O O
                    {SER          - C004}q.q.fieldbyname(_nuserie).asstring        +'|'+ //07 SER Série do documento fiscal C 004 - OC OC
                    {SUB          - N003}q.q.fieldbyname(_nusubserie).asstring     +'|'+ //08 SUB Subsérie do documento fiscal C 003 - OC OC
                    {NUM_DOC      - N009}q.q.fieldbyname(_nusaida).asstring        +'|'+ //09 NUM_DOC Número do documento fiscal N 009 - O O
                    {CHV_CTE      - N044}q.q.fieldbyname(_nuchavenfe).asstring        +'|'+ //10 CHV_CTE Chave do Conhecimento de Transporte Eletrônico N 044* - OC OC
                    {DT_DOC       - N008}getdtpura(q.q.fieldbyname(_dtemissao).asdatetime)+'|'+ //11 DT_DOC Data da emissão do documento fiscal N 008* - O O
                    {DT_E_S       - N008}getdtpura(q.q.fieldbyname(_dtsaida).asdatetime)  +'|'+ // 12 DT_A_P Data da aquisição ou da prestação do serviço N 008* - O OC
                    {TP_CT-e      - N001}q.q.fieldbyname(_cdcte+_finalidade+_emissao).Asstring+'|'+ // 13 TP_CT-e Tipo de Conhecimento de Transporte Eletrônico conforme definido no Manual de Integração do CT-e N 001* - OC OC
                    {CHV_CTE_REF  - N044}q.q.fieldbyname(_nuchavenfe+_REFERENCIADO).asstring+'|'+ // 14 CHV_CTE_REF Chave do CT-e de referência cujos valores foram complementados (opção “1” do campo anterior) ou cujo débito foi anulado(opção “2” do campo anterior). N 044* - OC OC
                    {VL_DOC       - N}qstring.set_zero(q.q.fieldbyname(_vltotal).AsCurrency)+'|'+ //15 VL_DOC Valor total do documento fiscal N - 02 O O
                    {VL_DESC      - N}qstring.set_zero(q.q.fieldbyname(_vldesconto).AsCurrency, _00)+'|'+ //16 VL_DESC Valor total do desconto N - 02 OC OC
                    {IND_FRT      - C001}q.q.fieldbyname(_cdtpfrete).asstring+'|'+ // implementar na tela
//17 IND_FRT Indicador do tipo do frete: 0- Por conta de terceiros; 1- Por conta do emitente; 2- Por conta do destinatário; 9- Sem cobrança de frete. C 001* - O O
//Obs.: A partir de 01/07/2012 passará a ser: Indicador do tipo do frete: 0- Por conta do emitente; 1- Por conta do destinatário/remetente; 2- Por conta de terceiros; 9- Sem cobrança de frete.
                    {VL_MERC      - N}qstring.set_zero(q.q.fieldbyname(_vlproduto).AsCurrency)+'|'+ //18 VL_SERV Valor total da prestação de serviço N - 02 O O
                    {VL_BC_ICMS   - N}qstring.set_zero(q.q.fieldbyname(_vlbaseicms).AsCurrency, _00)+'|'+ //19 VL_BC_ICMS Valor da base de cálculo do ICMS N - 02 OC OC
                    {VL_ICMS      - N}qstring.set_zero(q.q.fieldbyname(_vlicms).AsCurrency, _00)+'|'+//20 VL_ICMS Valor do ICMS N - 02 OC OC
                    {VL_NT        - N}qstring.set_zero(vl_nt)+'|'+//21 VL_NT Valor não-tributado N - 02 OC OC
                    {COD_INF codigo da informacao complementar do documento fiscal campo 02 do registro 0450 - C006}'|'+
                    {COD_CTA codigo da conta analitica contabil debitada/creditada - C}'|';
          if tbl = _cte then
          begin
            vlicmscte := vlicmscte + q.q.fieldbyname(_vlicms).AsCurrency;
          end;
        end;
        arquivo.Add(texto);
        inc(rec_D100);
        if tbl = _entrada then
        begin
          RegistroD190(q.q.fieldbyname(_codigo).asstring);
        end
        else
        begin
          if (q.q.fieldbyname(_nustdocumento).AsString <> _02) and (q.q.fieldbyname(_nustdocumento).AsString <> _03) and
             (q.q.fieldbyname(_nustdocumento).AsString <> _04) and (q.q.fieldbyname(_nustdocumento).AsString <> _05) then
          begin
            arquivo.Add('|D190|'+
                        _0+getnusticms(q.q.fieldbyname(_cdcfop).asstring, q.q.fieldbyname(_nusticms).asstring)+'|'+
                        q.q.fieldbyname(_cdcfop).asstring      +'|'+
                        q.q.fieldbyname(_alicms).asstring      +'|'+
                        qstring.set_zero(q.q.fieldbyname(_vltotal).ascurrency)+'|'+
                        qstring.set_zero(q.q.fieldbyname(_vlbaseicms).ascurrency)+'|'+
                        qstring.set_zero(q.q.fieldbyname(_vlicms).ascurrency)+'|'+
                        //set_zero(c.q.fieldbyname(_vlbaseicmsred).ascurrency)
                        _0+'|'+
                        {COD_OBS codigo da observacao do lancamento fiscal campo 02 do registro 0460}'|');
            inc(rec_D190);
          end;
        end;
        q.q.next;
      end;
    finally
      freeandnil(q);
    end;
  end;
begin
  tbl := _entrada;
  processar;
  tbl := _cte;
  processar;
end;

procedure TLivroFiscalDigital.RegistroD190(codigo:string);
var
  q : TClasseQuery;
begin
  q     := TClasseQuery.create('select i.cdentrada'+
                                     ',p.cdorigem'+
                                     ',i.nusticms'+
                                     ',i.cdcfop'+
                                     ',i.alicms'+
                                     ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal '+
                                     ',sum(i.vlbaseicms) vlbaseicms'+
                                     ',sum(i.vlicms) vlicms'+
                                     ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib'+
                                     ',sum(i.vlicmssubtrib) vlicmssubtrib'+
                                     ',sum(i.vlbaseicmsred) vlbaseicmsred'+
                                     ',sum(i.vlipi) vlipi '+
                               'from itentrada i '+
                               'left join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
                               'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' and i.borecuperaicms=''S'' '+
                               'group by i.cdentrada,p.cdorigem,i.nusticms,i.cdcfop,i.alicms');
  try
    while not q.q.eof do
    begin
      if q.q.fieldbyname(_cdorigem).asstring = '' then
      begin
        mensagem.add('A nota '+nomedocodigo(_entrada, q.q.fieldbyname(_cdentrada).asstring, _nuentrada)+' possui produto(s) com a origem não preenchido.');
      end;
      arquivo.Add('|D190|'+
                  q.q.fieldbyname(_cdorigem).asstring+
                  q.q.fieldbyname(_nusticms).asstring+'|'+
                  q.q.fieldbyname(_cdcfop).asstring +'|'+
                  q.q.fieldbyname(_alicms).asstring   +'|'+
                  qstring.set_zero(q.q.fieldbyname(_vltotal).ascurrency   )+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicms).ascurrency)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlicms).ascurrency    )+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicmsred).ascurrency)+'|'+
                  {COD_OBS codigo da observacao do lancamento fiscal campo 02 do registro 0460}'|');
      inc(rec_D190);
      q.q.next;
    end;
    q.q.close;
    q.q.open('select i.cdentrada'+
                    ',p.cdorigem'+
                    ',i.nusticms'+
                    ',i.cdcfop'+
                    ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal'+
                    ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib'+
                    ',sum(i.vlicmssubtrib) vlicmssubtrib'+
                    ',sum(i.vlbaseicmsred) vlbaseicmsred'+
                    ',sum(i.vlipi) vlipi '+
              'from itentrada i '+
              'left join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
              'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' and i.borecuperaicms=''N'' '+
              'group by i.cdentrada,p.cdorigem,i.nusticms,i.cdcfop');
    while not q.q.eof do
    begin
      if q.q.fieldbyname(_cdorigem).asstring = '' then
      begin
        mensagem.add('A nota '+nomedocodigo(_entrada, q.q.fieldbyname(_cdentrada).asstring, _nuentrada)+' possui produto(s) com a origem não preenchido.');
      end;
      arquivo.Add('|D190|'+
                  q.q.fieldbyname(_cdorigem).asstring+
                  q.q.fieldbyname(_nusticms).asstring+'|'+
                  q.q.fieldbyname(_cdcfop).asstring +'|'+
                  '0|'+
                  qstring.set_zero(q.q.fieldbyname(_vltotal).ascurrency   )+'|'+
                  qstring.set_zero(0)+'|'+
                  qstring.set_zero(0)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicmsred).ascurrency)+'|'+
                  {COD_OBS codigo da observacao do lancamento fiscal campo 02 do registro 0460}'|');
      inc(rec_D190);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroD500;
var
  q : TClasseQuery;
  linha :string;
  function MakeSQL:string;
  begin
    result := 'select e.nudocfiscalicms'+
                    ',e.nustdocumento'+
                    ',1 indemit' +
                    ',e.nuserie'+
                    ',e.nusubserie'+
                    ',e.nuentrada nusaida'+
                    ',e.cdentrada codigo'+
                    ',e.dtemissao'+
                    ',e.dtsaida'+
                    ',e.vltotal'+
                    ',e.vldesconto'+
                    ',e.vlservico'+
                    ',e.cdtpfrete'+
                    ',e.vlfrete'+
                    ',e.vloutdespesa'+
                    ',e.vlseguro'+
                    ',(select i.vlbaseicms from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlbaseicms'+
                    ',(select i.vlicms from itentrada i where i.cdempresa=e.cdempresa and i.cdentrada=e.cdentrada and i.borecuperaicms=''S'') vlicms'+
                    ',e.vlbaseicmssubtrib'+
                    ',e.vlicmssubtrib'+
                    ',e.vlipi'+
                    ',e.vlpis'+
                    ',e.vlcofins'+
                    ',e.vlpissubtrib'+
                    ',e.vlcofinssubtrib'+
                    ',''E'' tpentsai'+
                    ',f.nucnpj,f.nucpf '+
               'from entrada e '+
               'inner join fornecedor f on f.cdfornecedor=e.cdfornecedor and e.cdempresa=f.cdempresa '+
               'inner join itlp1a i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa '+
               'where e.cdempresa='+empresa.cdempresa.tostring+' and e.nudocfiscalicms in (''21'',''22'') and i.cdtpimposto=1 and i.cdlp1a='+cdlp1a.ToString;
    if Empresa.livro.bogerarspedpordata then
    begin
      Result := result + ' and e.dtsaida between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
    end;
  end;
  function ind_oper:string;
  begin
    if q.q.fieldbyname(_tpentsai).AsString = _S then
    begin
      result := _1
    end
    else
    begin
      result := _0;
    end;
  end;
begin
  q := TClasseQuery.create(makesql);
  try
    if not bod100 then
    begin
      inc(rec_d001);
      if q.q.RecordCount > 0 then
      begin
        arquivo.Add('|D001|0|')
      end
      else
      begin
        arquivo.Add('|D001|1|');
      end;
    end;
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      linha := '|'+
                  {REG}'D500|'+
                  {IND_OPER     - C004}ind_oper                                 +'|'+
                  {IND_EMIT     - C001}q.q.fieldbyname(_indemit).AsString        +'|'+
                  {COD_PART     - C060}get_participante(q)+'|'+
                  {COD_MOD      - C002}q.q.fieldbyname(_nudocfiscalicms).asstring+'|'+
                  {COD_SIT      - N002}q.q.fieldbyname(_nustdocumento).asstring  +'|'+
                  {SER          - C004}q.q.fieldbyname(_nuserie).asstring        +'|'+
                  {SUB          - N002}q.q.fieldbyname(_nusubserie).asstring     +'|'+
                  {NUM_DOC      - N009}q.q.fieldbyname(_nusaida).asstring        +'|'+
                  {DT_DOC       - N008}getdtpura(q.q.fieldbyname(_dtemissao).asdatetime)+'|'+
                  {DT_E_S       - N008}getdtpura(q.q.fieldbyname(_dtsaida).asdatetime)  +'|'+
                  {VL_DOC       - N}q.q.fieldbyname(_vltotal).asstring   +'|'+
                  {VL_DESC      - N}q.q.fieldbyname(_vldesconto).AsString+'|'+
                  {VL_SERV      - N}q.q.fieldbyname(_vlservico).AsString+'|'+
                  {VL_SERV_NT   - N}'|'+ // ???????????????
                  {VL_TERC      - N}'|'+
                  {VL_DA        - N}q.q.fieldbyname(_vloutdespesa).AsString+'|'+
                  {VL_BC_ICMS   - N}q.q.fieldbyname(_vlbaseicms).AsString+'|'+
                  {VL_ICMS      - N}q.q.fieldbyname(_vlicms).AsString+'|'+
                  {COD_INF      - N}'|'+
                  {VL_PIS       - N}q.q.fieldbyname(_vlpis).asstring            +'|'+
                  {VL_COFINS    - N}q.q.fieldbyname(_vlcofins).asstring         +'|'+
                  {COD_CTA      - N}'|'+
                  {TP_ASSINANTE (1 - COMERCIAL/INDUSTRIAL)}'1|';
      arquivo.Add(linha);
      inc(rec_D500);
      RegistroD590(q.q.fieldbyname(_codigo).asstring);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroD590(codigo:string);
  function MakeSQL:string;
  begin
    result := 'select p.cdorigem'+
                    ',i.nusticms'+
                    ',i.cdcfop'+
                    ',i.alicms'+
                    ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal'+
                    ',sum(i.vlbaseicms) vlbaseicms'+
                    ',sum(i.vlicms) vlicms'+
                    ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib'+
                    ',sum(i.vlicmssubtrib) vlicmssubtrib'+
                    ',sum(i.vlbaseicmsred) vlbaseicmsred'+
                    ',sum(i.vlipi) vlipi '+
               'from itentrada i '+
               'left join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
               'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' and i.borecuperaicms=''S'' '+
               'group by p.cdorigem,i.nusticms,i.cdcfop,i.alicms';
  end;
  function MakeSQL2:string;
  begin
    result := 'select p.cdorigem'+
                    ',i.nusticms'+
                    ',i.cdcfop'+
                    ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal'+
                    ',sum(i.vlbaseicmssubtrib) vlbaseicmssubtrib'+
                    ',sum(i.vlicmssubtrib) vlicmssubtrib'+
                    ',sum(i.vlbaseicmsred) vlbaseicmsred'+
                    ',sum(i.vlipi) vlipi '+
               'from itentrada i '+
               'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
               'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdentrada='+codigo+' and i.borecuperaicms=''N'' '+
               'group by p.cdorigem,i.nusticms,i.cdcfop';
  end;
var
  q : TClasseQuery;
  linha : string;
begin
  q     := TClasseQuery.create(makesql);
  try
    while not q.q.eof do
    begin
      linha := '|D590|'+
                  q.q.fieldbyname(_cdorigem).asstring+q.q.fieldbyname(_nusticms).asstring+'|'+
                  q.q.fieldbyname(_cdcfop).asstring +'|'+
                  q.q.fieldbyname(_alicms).asstring   +'|'+
                  qstring.set_zero(q.q.fieldbyname(_vltotal).ascurrency   )+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicms).ascurrency)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlicms).ascurrency    )+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicmssubtrib).ascurrency)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlicmssubtrib).ascurrency)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicmsred).ascurrency)+'|'+
                  {COD_OBS codigo obseracao campo 02 do registro 0460}'|';
      arquivo.Add(linha);
      inc(rec_D590);
      q.q.next;
    end;
    q.q.close;
    q.q.sql.Text   := makesql2;
    q.q.open;
    while not q.q.eof do
    begin
      linha := '|D590|'+
                  q.q.fieldbyname(_cdorigem).asstring+q.q.fieldbyname(_nusticms).asstring+'|'+
                  q.q.fieldbyname(_cdcfop).asstring +'|'+
                  '0|'+
                  qstring.set_zero(q.q.fieldbyname(_vltotal).ascurrency   )+'|'+
                  qstring.set_zero(0)+'|'+
                  qstring.set_zero(0)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicmssubtrib).ascurrency)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlicmssubtrib).ascurrency)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlbaseicmsred).ascurrency)+'|'+
                  {COD_OBS codigo obseracao campo 02 do registro 0460}'|';
      arquivo.Add(linha);
      inc(rec_D590);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroD990;
begin
  inc(rec_d990);
  arquivo.Add('|D990|'+inttostr(rec_d001+rec_d100+rec_d190+rec_d500+rec_d590+rec_d990)+'|');
end;

procedure TLivroFiscalDigital.Registro1001;
  function get_inutilizadas:string;
    function makesql:string;
    begin
      result := 'select count(*) '+
                'from saida s '+
                'inner join itlp1a i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
                'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nudocfiscalicms=''55'' '+
                'and s.nustdocumento=''05'' and i.cdlp1a='+cdlp1a.ToString;
      if Empresa.livro.bogerarspedpordata then
      begin
        Result := result + ' and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
      end;
    end;
  begin
    if RetornaSQLInteger(makesql) > 0 then
    begin
      result := _s
    end
    else
    begin
      result := _N;
    end;
  end;
  function makesql:string;
  begin
    Result := 'select count(*) '+
              'from saida S '+
              'inner join itlp1a I on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
              'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nustdocumento=''05'' and i.cdlp1a='+cdlp1a.ToString;
    if Empresa.livro.bogerarspedpordata then
    begin
      Result := result + ' and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' ';
    end;
  end;
begin
  inc(rec_1001);
  if dti < strtodate('01/07/2012') then
  begin
    if RetornaSQLInteger(makesql)> 0 then
    begin
      arquivo.Add('|1001|0|')
    end
    else
    begin
      arquivo.Add('|1001|1|');
    end;
  end
  else
  begin
    arquivo.Add('|1001|0|');
    inc(rec_1010);
    arquivo.add('|1010|N|N|N|N|N|N|N|'+get_inutilizadas+'|N|');
  end;
end;

procedure TLivroFiscalDigital.Registro1990;
begin
  inc(rec_1990);
  arquivo.add('|1990|'+inttostr(rec_1001+rec_1010+rec_1700+rec_1710+rec_1990)+'|');
end;

procedure TLivroFiscalDigital.Registro0000;
  function cdversao:string;
  begin
    if dti < StrToDate('01/01/2011') then
    begin
      result := _003
    end
    else if dti < StrToDate('01/01/2012') then
    begin
      result := _004
    end
    else if dti < StrToDate('01/07/2012') then
    begin
      result := _005
    end
    else if dti < StrToDate('01/01/2013') then
    begin
      result := _006
    end
    else if dti < StrToDate('01/01/2014') then
    begin
      result := _007
    end
    else if dti < StrToDate('01/01/2015') then
    begin
      result := _008
    end
    else if dti < StrToDate('01/01/2016') then
    begin
      result := _009
    end
    else if dti < StrToDate('01/01/2017') then
    begin
      result := _010;
    end
    else
    begin
      result := _011;
    end;
  end;
begin
  inc(rec_0000);
  arquivo.add('|'+
              {REG        - Registro                    C004}'0000|'   +
              {COD_VER    - codigo da versao do leiaute N003}cdversao+'|'    + // falta pegar o ato cotepe corretamente
              {COD_FIN    - Codigo Finalidade           N001}'0|'      + // colocar no sistema a finalidade da geracao do arquivo
              {DT_INI     - Data Inicial                N008}getdtpura(dti)+'|'+ // DDMMYYYY
              {DT_FIN     - Data Final                  N008}getdtpura(dtf)+'|'+ // DDMMYYYY
              {NOME       - Nome empresarial entidade   C100}copy(trim(empresa.rzsocial), 1, 100)+'|'+
              {CNPJ       -                             N014}empresa.nucnpj_+'|'+
              {CPF        -                             N011}'|'+
              {UF         - Sigla da unidade federativa C002}empresa.endereco.sguf+'|'+
              {IE         - Inscricao Estadual          C014}empresa.nuinscest_+'|'+
              {COD_MUN    - Codigo municipio IBGE       N007}inttostr(empresa.endereco.cdmunicipio)+'|'+
              {IM         - Inscricao Municipal         C - OC}Empresa.nuinscmunicipal+'|'+
              {SUFRAMA    - Inscricao Suframa           C009}'|'+
              {IND_PERFIL - Perfil Apresentacao A/B/C   C001}empresa.livro.cdind_perfil+'|'+
              {IND_ATIV   - Indicador Tipo Atividade 0/1N001}empresa.livro.cdind_ativ+'|');

end;

procedure TLivroFiscalDigital.Registro0001;
begin
  inc(rec_0001);
  arquivo.Add('|0001|'+ind_mov[1]+'|');// definir no codigo
end;

procedure TLivroFiscalDigital.Registro0005;
begin
  inc(rec_0005);
  arquivo.add('|'+
              {REG      -                                  - C004     }'0005|'+
              {FANTASIA - Nome fantasia                    - C060     }copy(empresa.nmempresa, 1, 60)+'|'+
              {CEP      -                                  - N008     }removercaracteres(empresa.endereco.nucep)+'|'+
              {END      - Logradouro e Endereco do imovel  - C060     }empresa.endereco.dsendereco   +'|'+
              {NUM      - Numero do imovel                 - C        }empresa.endereco.dsnumero     +'|'+
              {COMPL    - Dados complementares             - C060     }empresa.endereco.dscomplemento+'|'+
              {BAIRRO   - Bairro que o imovel está situado - C060     }empresa.endereco.nmbairro     +'|'+
              {FONE     - Número do telefone (DDD+FONE)    - C010 - OC}empresa.nufone1_+'|'+
              {FAX      - Número do fax                    - C010 - OC}empresa.nufax_  +'|'+
              {EMAIL    - endereco de correio eletronico   - C    - OC}empresa.email                 +'|');
end;

procedure TLivroFiscalDigital.Registro0100;
begin
  if removercaracteres(empresa.contador.nucpf) = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__Numero+' '+_do+' '+_CPF+' '+_do+' '+_contador]), mtinformation, [mbok], 0);
  end;
  if empresa.contador.email = '' then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [_Email+' '+_do+' '+_contador]), mtinformation, [mbok], 0);
  end;
  inc(rec_0100);
  arquivo.add('|'+
              {REG     - Texto Fixo contendo 100 - C004   }'0100|'+
              {NOME    - Nome do Contabilista    - C060   }empresa.contador.nmcontador            +'|'+
              {CPF     - CPF Contabilista        - N011   }removercaracteres(empresa.contador.nucpf)+'|'+
              {CRC     - Numero contabilista     - C015   }empresa.contador.nucrc                 +'|'+
              {CNPJ    - CNPJ contabilidade      - N014 OC}removercaracteres(empresa.contador.nucnpj)+'|'+
              {CEP     -                         - N008   }removercaracteres(empresa.contador.endereco.nucep)+'|'+
              {END     - Logradouro e endereco   - C060   }empresa.contador.endereco.dsendereco   +'|'+
              {NUM     - Numero do Imovel        - C    OC}empresa.contador.endereco.dsnumero     +'|'+
              {COMPL   - Dados Complementares    - C060   }empresa.contador.endereco.dscomplemento+'|'+
              {BAIRRO  -                         - C060   }empresa.contador.endereco.nmbairro     +'|'+
              {FONE    -                         - C10    }empresa.contador.nufone_+'|'+
              {FAX     -                         - C10    }empresa.contador.nufax_+'|'+
              {EMAIL   -                         - C    OC}empresa.contador.email                 +'|'+
              {COD_MUN -                         - N007   }inttostr(empresa.contador.endereco.cdmunicipio)+'|');
end;

function TLivroFiscalDigital.ParticipanteExiste(nucnpj, nucpf:string):boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to high(participante) do
  begin
    if nucnpj <> '' then
    begin
      if participante[i].cnpj = nucnpj then
      begin
        result := true;
        break;
      end;
    end
    else if nucpf <> '' then
    begin
      if participante[i].cpf = nucpf then
      begin
        result := true;
        break;
      end;
    end;
  end;
end;

procedure TLivroFiscalDigital.adicionar_participante_arquivo;
var
  i : integer;
begin
  for i := 0 to high(participante) do
  begin
    inc(rec_0150);
    arquivo.Add('|'+
                {REG      - Texto Fixo contendo 150        - C004}'0150|'+
                {COD_PART - Código participante no arquivo - C060}participante[i].cod_part     +'|'+
                {NOME     - Nome do participante           - C100}trim(participante[i].nome)   +'|'+
                {COD_PAIS - Codigo Pais                    - N005}participante[i].cdpais       +'|'+
                {CNPJ     -                                - N014}participante[i].cnpj                  +'|'+
                {CPF      -                                - N011}participante[i].cpf                   +'|'+
                {IE       - Inscricao Estadual             - C014}participante[i].ie                    +'|'+
                {COD_MUN  - Codigo Municipio               - N007}participante[i].cdmunicipio  +'|'+
                {SUFRAMA  - Codigo Suframa                 - C009}participante[i].suframa               +'|'+
                {END      - Logradouro e endereco imovel   - C060}participante[i].dsendereco   +'|'+
                {NUM      - Numero imovel                  -   OC}participante[i].dsnumero     +'|'+
                {COMPL    - Complemento endereco           - C060}participante[i].dscomplemento+'|'+
                {BAIRRO   - Bairro do Imovel               - C060}participante[i].nmbairro     +'|');
  end;
end;

procedure TLivroFiscalDigital.Sete116(const Value: Te116List);
begin
  Fe116 := Value;
end;

procedure TLivroFiscalDigital.Set_participante(tbl, pessoa:string);
  function makesql:string;
  begin
    if (tbl = _entrada) or (tbl = _saida) then
    begin
      result := 'select p.rzsocial'+
                     ',p.tppessoa'+
                     ',p.nucnpj'+
                     ',p.nucpf'+
                     ',p.nuinscest'+
                     ',p.cdmunicipio'+
                     ',p.dsendereco'+
                     ',p.dsnumero'+
                     ',p.dscomplemento'+
                     ',p.nmbairro '+
                 'from '+pessoa+' p '+
                 'inner join '+tbl+' t on t.cd'+pessoa+'=p.cd'+pessoa+' and p.cdempresa=T.cdempresa '+
                 'inner join itlp1a i on i.cd'+tbl+'=t.cd'+tbl+' and i.cdempresa=T.cdempresa '+
                 'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdtpimposto=1 and i.cdlp1a='+cdlp1a.ToString+' and t.nudocfiscalicms<>''02'' and t.nudocfiscalicms<>''2D'' ';
      if Empresa.livro.bogerarspedpordata then
      begin
        if tbl = _saida then
        begin
          Result := result + ' and t.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '
        end
        else
        begin
          result := result + ' and t.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
        end;
      end;
      result := result +
                 'group by p.rzsocial'+
                        ',p.tppessoa'+
                        ',p.nucnpj'+
                        ',p.nucpf'+
                        ',p.nuinscest'+
                        ',p.cdmunicipio'+
                        ',p.dsendereco'+
                        ',p.dsnumero'+
                        ',p.dscomplemento'+
                        ',p.nmbairro';
    end
    else if tbl = _ciapi+_entrada then
    begin
      result := 'select p.rzsocial'+
                      ',p.tppessoa'+
                      ',p.nucnpj'+
                      ',p.nucpf'+
                      ',p.nuinscest'+
                      ',p.cdmunicipio'+
                      ',p.dsendereco'+
                      ',p.dsnumero'+
                      ',p.dscomplemento'+
                      ',p.nmbairro '+
                'from fornecedor p '+
                'inner join lp1aciapi l on l.cdfornecedor=p.cdfornecedor and p.cdempresa=l.cdempresa '+
                'where l.cdempresa='+empresa.cdempresa.tostring+' and l.cdlp1a='+cdlp1a.ToString+' '+
                'group by p.rzsocial'+
                        ',p.tppessoa'+
                        ',p.nucnpj'+
                        ',p.nucpf'+
                        ',p.nuinscest'+
                        ',p.cdmunicipio'+
                        ',p.dsendereco'+
                        ',p.dsnumero'+
                        ',p.dscomplemento'+
                        ',p.nmbairro';
    end
    else if tbl = _ciapi+_saida then
    begin
      result := 'select p.rzsocial'+
                      ',p.tppessoa'+
                      ',p.nucnpj'+
                      ',p.nucpf'+
                      ',p.nuinscest'+
                      ',p.cdmunicipio'+
                      ',p.dsendereco'+
                      ',p.dsnumero'+
                      ',p.dscomplemento'+
                      ',p.nmbairro '+
                'from cliente p '+
                'inner join lp1aciapi l on l.cdcliente=p.cdcliente and p.cdempresa=l.cdempresa '+
                'where l.cdempresa='+empresa.cdempresa.tostring+' and l.cdlp1a='+cdlp1a.ToString+' '+
                'group by p.rzsocial'+
                        ',p.tppessoa'+
                        ',p.nucnpj'+
                        ',p.nucpf'+
                        ',p.nuinscest'+
                        ',p.cdmunicipio'+
                        ',p.dsendereco'+
                        ',p.dsnumero'+
                        ',p.dscomplemento'+
                        ',p.nmbairro';
    end
    else if tbl = _cte then
    begin
      result := 'select ce.rzsocial rzsociale'+
                      ',ce.tppessoa tppessoae'+
                      ',ce.nucnpj nucnpje'+
                      ',ce.nucpf nucpfe'+
                      ',ce.nuinscest nuinsceste'+
                      ',ce.cdmunicipio cdmunicipioe'+
                      ',ce.dsendereco dsenderecoe'+
                      ',ce.dsnumero dsnumeroe'+
                      ',ce.dscomplemento dscomplementoe'+
                      ',ce.nmbairro nmbairroe'+
                      ',cd.rzsocial rzsociald'+
                      ',cd.tppessoa tppessoad'+
                      ',cd.nucnpj nucnpjd'+
                      ',cd.nucpf nucpfd'+
                      ',cd.nuinscest nuinscestd'+
                      ',cd.cdmunicipio cdmunicipiod'+
                      ',cd.dsendereco dsenderecod'+
                      ',cd.dsnumero dsnumerod'+
                      ',cd.dscomplemento dscomplementod'+
                      ',cd.nmbairro nmbairrod'+
                      ',cx.rzsocial rzsocialx'+
                      ',cx.tppessoa tppessoax'+
                      ',cx.nucnpj nucnpjx'+
                      ',cx.nucpf nucpfx'+
                      ',cx.nuinscest nuinscestx'+
                      ',cx.cdmunicipio cdmunicipiox'+
                      ',cx.dsendereco dsenderecox'+
                      ',cx.dsnumero dsnumerox'+
                      ',cx.dscomplemento dscomplementox'+
                      ',cx.nmbairro nmbairrox'+
                      ',cr.rzsocial rzsocialr'+
                      ',cr.tppessoa tppessoar'+
                      ',cr.nucnpj nucnpjr'+
                      ',cr.nucpf nucpfr'+
                      ',cr.nuinscest nuinscestr'+
                      ',cr.cdmunicipio cdmunicipior'+
                      ',cr.dsendereco dsenderecor'+
                      ',cr.dsnumero dsnumeror'+
                      ',cr.dscomplemento dscomplementor'+
                      ',cr.nmbairro nmbairror'+
                      ',co.rzsocial rzsocialo'+
                      ',co.tppessoa tppessoao'+
                      ',co.nucnpj nucnpjo'+
                      ',co.nucpf nucpfo'+
                      ',co.nuinscest nuinscesto'+
                      ',co.cdmunicipio cdmunicipioo'+
                      ',co.dsendereco dsenderecoo'+
                      ',co.dsnumero dsnumeroo'+
                      ',co.dscomplemento dscomplementoo'+
                      ',co.nmbairro nmbairroo'+
                      ',c.cdcte'+
                      ',c.cdctetptomador '+
                'from CTE C '+
                'left join cliente ce on ce.cdcliente=c.cdremetente and c.cdempresa=ce.cdempresa '+
                'left join cliente cd on cd.cdcliente=c.cddestinatario and c.cdempresa=cd.cdempresa '+
                'left join cliente cx on cx.cdcliente=c.cdexpedidor and c.cdempresa=cx.cdempresa '+
                'left join cliente cr on cr.cdcliente=c.cdrecebedor and c.cdempresa=cr.cdempresa '+
                'left join cliente co on co.cdcliente=c.cdtomador and c.cdempresa=co.cdempresa '+
                'where c.cdempresa='+empresa.cdempresa.tostring+' and (not c.nustdocumento in (''02'',''03'',''04'',''05'')) '+
                'and c.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf);
    end;
  end;
var
  c : TClasseQuery;
  tipo : string;
begin
  c     := TClasseQuery.create(makesql);
  try
    pnl.Caption := 'Registro 0150 - Inserindo participante';
    gau.MaxValue := c.q.recordcount;
    while not c.q.eof do
    begin
      tipo := '';
      if tbl = _cte then
      begin
        tipo := gettipo(c.q.fieldbyname(_cdctetptomador).AsInteger);
        if tipo = '' then
        begin
          mensagem.Add('Tomador de servição não definido para o Ct-e '+c.q.fieldbyname(_cdcte).asstring+'.');
          c.q.next;
          continue;
        end;
      end;
      if Copy(c.q.FieldByName(_rzsocial+tipo).AsString, 1, 1) = ' ' then
      begin
        mensagem.add('Possui espaço no inicio do campo o '+pessoa+' '+c.q.fieldbyname(_rzsocial+tipo).asstring+'.');
      end;
      if c.q.FieldByName(_dsendereco+tipo).AsString = '' then
      begin
        mensagem.Add('Está com o endereço vazio o '+pessoa+' '+c.q.fieldbyname(_rzsocial+tipo).asstring+'.')
      end
      else if copy(c.q.fieldbyname(_dsendereco+tipo).asstring, 1, 1) = ' ' then
      begin
        mensagem.Add('Está com o endereço vazio no início o '+pessoa+' '+c.q.fieldbyname(_rzsocial+tipo).asstring+'.');
      end;
      if c.q.FieldByName(_nmbairro+tipo).AsString = '' then
      begin
        mensagem.Add('Está com o bairro vazio o '+pessoa+' '+c.q.fieldbyname(_rzsocial+tipo).asstring+'.')
      end
      else if copy(c.q.fieldbyname(_nmbairro+tipo).asstring, 1, 1) = ' ' then
      begin
        mensagem.Add('Está com o bairro vazio no início o '+pessoa+' '+c.q.fieldbyname(_rzsocial+tipo).asstring+'.');
      end;
      if c.q.fieldbyname(_cdmunicipio+tipo).asstring = '' then
      begin
        mensagem.add('Está com o código da cidade vazio o '+pessoa+' '+c.q.fieldbyname(_rzsocial+tipo).asstring+'.');
      end;
      gau.Progress := c.q.recno;
      Application.ProcessMessages;
      if ParticipanteExiste(removercaracteres(c.q.fieldbyname(_nucnpj+tipo).AsString), removercaracteres(c.q.fieldbyname(_nucpf+tipo).asstring)) then
      begin
        c.q.next;
        continue;
      end;
      if (removercaracteres(c.q.fieldbyname(_nucnpj+tipo).AsString) = '') and (removercaracteres(c.q.fieldbyname(_nucpf+tipo).asstring) = '') then
      begin
        mensagem.add('Participante '+pessoa+' '+c.q.fieldbyname(_rzsocial+tipo).asstring+' sem cnpj e cpf. Favor alterar o cadastro para continuar.')
      end;
      SetLength(participante, High(participante)+2);
      participante[High(participante)].cod_part      := get_participante(c, tbl);
      participante[High(participante)].nome          := c.q.fieldbyname(_rzsocial+tipo).asstring;
      participante[High(participante)].cnpj          := removercaracteres(c.q.fieldbyname(_nucnpj+tipo).AsString);
      participante[High(participante)].cpf           := removercaracteres(c.q.fieldbyname(_nucpf+tipo).asstring);
      participante[High(participante)].ie            := removercaracteres(c.q.fieldbyname(_nuinscest+tipo).asstring);
      participante[High(participante)].suframa       := '';
      participante[High(participante)].dsendereco    := c.q.fieldbyname(_dsendereco+tipo).asstring;
      participante[High(participante)].dsnumero      := c.q.fieldbyname(_dsnumero+tipo).asstring;
      participante[High(participante)].dscomplemento := c.q.fieldbyname(_dscomplemento+tipo).asstring;
      participante[High(participante)].nmbairro      := c.q.fieldbyname(_nmbairro+tipo).asstring;
      participante[High(participante)].cdmunicipio   := c.q.fieldbyname(_cdmunicipio+tipo).asstring;
      participante[High(participante)].cdpais        := _1058;
      c.q.next;
    end;
  finally
    freeandnil(c);
  end;
end;

procedure TLivroFiscalDigital.Registro0150;
begin
  set_participante(_saida  , _cliente);
  set_participante(_saida  , _fornecedor);
  set_participante(_cte, _cliente);
  set_participante(_entrada, _fornecedor);
  set_participante(_entrada, _cliente);
  set_participante(_ciapi+_entrada, _cliente);
  set_participante(_ciapi+_entrada, _fornecedor);
  set_participante(_ciapi+_saida, _cliente);
  set_participante(_ciapi+_saida, _fornecedor);
  adicionar_participante_arquivo;
end;

function TLivroFiscalDigital.UnidadeExiste(cdunidade:string):boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to high(unidade) do
  begin
    if unidade[i].unid = cdunidade then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TLivroFiscalDigital.Adicionar_unidade(c:TClasseQuery);
begin
  SetLength(unidade, High(unidade)+2);
  unidade[High(unidade)].unid  := c.q.fieldbyname(_cdunidade).asstring;
  unidade[High(unidade)].descr := c.q.fieldbyname(_nmunidade).asstring;
end;

procedure TLivroFiscalDigital.adicionar_unidade_arquivo(p_insert:integer=0);
var
  i : integer;
begin
  if p_insert > 0 then
  begin
    inc(rec_0190);
    arquivo.Insert(p_insert,
                  '|'+
                {REG   - Texto Fixo contenco 0190 - C004}'0190|'+
                {UNID  - Codigo unidade de medida - C006}unidade[high(unidade)].unid +'|'+
                {DESCR - Descrição Unidade Medida - C}unidade[high(unidade)].descr+'|');
    inc(p0190);
    arquivo[arquivo.IndexOf('|0990|'+inttostr(rec_0000+rec_0001+rec_0005+rec_0100+rec_0150+rec_0190-1+rec_0200+rec_0300+rec_0305+rec_0400+rec_0450+rec_0460+rec_0500+rec_0600+rec_0990)+'|')] :=
      '|0990|'+inttostr(rec_0000+rec_0001+rec_0005+rec_0100+rec_0150+rec_0190+rec_0200+rec_0300+rec_0305+rec_0400+rec_0450+rec_0460+rec_0500+rec_0600+rec_0990)+'|';
    exit;
  end;
  for i := 0 to high(unidade) do
  begin
    inc(rec_0190);
    arquivo.Add('|'+
                {REG   - Texto Fixo contenco 0190 - C004}'0190|'+
                {UNID  - Codigo unidade de medida - C006}unidade[i].unid +'|'+
                {DESCR - Descrição Unidade Medida - C}unidade[i].descr+'|');
    p0190 := arquivo.Count;
  end
end;

procedure TLivroFiscalDigital.Registro0190;
  procedure Set_unidade(tbl:string);
    function makesql:string;
    begin
      if tbl = _estoque then
      begin
        result := 'select p.cdunidade'+
                       ',u.nmunidade '+
                  'from produto p '+
                  'inner join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                  'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and p.cdempresa=t.cdempresa '+
                  'inner join hcustomedio h on h.cdproduto=p.cdproduto and p.cdempresa=h.cdempresa '+
                  'and h.dthistorico=(select max(dthistorico) '+
                                     'from hcustomedio '+
                                     'where hcustomedio.cdempresa=p.cdempresa and hcustomedio.cdproduto=p.cdproduto) '+
                  'where p.cdempresa='+empresa.cdempresa.tostring+' and t.boestoque=''S'' and h.qtestoque>0 '+
                  'and h.vlsaldovalor>=0 and h.vlcustomedio>=0 and h.dthistorico<='+quotedstr('12/31/'+inttostr(strtoint(formatdatetime(_YYYY, dtf))-1))+' '+
                  'group by p.cdunidade,u.nmunidade'
      end
      else if tbl = _ciapi then
      begin
        result := 'select u.cdunidade,u.nmunidade '+
                  'from lp1aciapi l '+
                  'inner join produto p on p.cdproduto=l.cdproduto and p.cdempresa=l.cdempresa '+
                  'inner join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                  'where l.cdempresa='+empresa.cdempresa.tostring+' and l.cdlp1a='+cdlp1a.ToString+' '+
                  'group by u.cdunidade,u.nmunidade';
      end
      else if tbl = _entrada then
      begin
        result := 'select u.cdunidade,u.nmunidade '+
                  'from entrada e '+
                  'inner join itentrada i on e.cdentrada=i.cdentrada and e.cdempresa=i.cdempresa '+
                  'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=e.cdempresa '+
                  'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                  'inner join tpproduto on tpproduto.cdempresa=p.cdempresa and tpproduto.cdtpproduto=p.cdtpproduto '+
                  'inner join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                  'where e.cdempresa='+empresa.cdempresa.tostring+' '+
                  'and e.dtsaida between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
                  'and (not e.nudocfiscalicms in (''02'',''06'',''22'',''21'',''28'',''08'',''57'',''29'')) '+
                  'and tpproduto.boservico<>''S'' '+
                  'group by u.cdunidade,u.nmunidade';
      end
      else if tbl = _saida then
      begin
        result := 'select u.cdunidade'+
                       ',u.nmunidade '+
                  'from saida s '+
                  'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
                  'inner join itsaida i on s.cdsaida=i.cdsaida and s.cdempresa=i.cdempresa '+
                  'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                  'inner join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                  'inner join itlp1a l on l.cdsaida=s.cdsaida and l.cdempresa=s.cdempresa '+
                  'where s.cdempresa='+empresa.cdempresa.tostring+' '+
                  'and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
                  'and (not s.nudocfiscalicms in (''55'',''06'',''22'',''21'',''28'',''08'',''57'',''29'')) '+
                  'and t.boiss<>''S'' '+
                  'group by u.cdunidade,u.nmunidade';
      end
      else if tbl = _cupom then
      begin
        result := 'select u.cdunidade,u.nmunidade '+
                  'from saida t '+
                  'inner join itsaida i on t.cdsaida=i.cdsaida and t.cdempresa=i.cdempresa '+
                  'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                  'inner join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                  'where t.cdempresa='+empresa.cdempresa.tostring+' and t.nudocfiscalicms in (''02'',''2D'') '+
                  'and t.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
                  'group by u.cdunidade,u.nmunidade';
      end;
    end;
  var
    q : TClasseQuery;
  begin
    q     := TClasseQuery.create(makesql);
    try
      gau.MaxValue := q.q.recordcount;
      while not q.q.eof do
      begin
        gau.Progress := q.q.recno;
        Application.ProcessMessages;
        if UnidadeExiste(q.q.fieldbyname(_cdunidade).AsString) then
        begin
          q.q.next;
          continue;
        end;
        adicionar_unidade(q);
        q.q.next;
      end;
    finally
      freeandnil(q);
    end;
  end;
begin
  frmprogressbar.pnl.Caption := 'Registro 0190 - Nota Fiscal';
  set_unidade(_saida);
  frmprogressbar.pnl.Caption := 'Registro 0190 - Cupom';
  set_unidade(_cupom);
  frmprogressbar.pnl.Caption := 'Registro 0190 - Compra';
  set_unidade(_entrada);
  frmprogressbar.pnl.Caption := 'Registro 0190 - Ciapi';
  set_unidade(_ciapi);
  if formatdatetime(_mm, dti) = _MES_ESTOQUE then
  begin
    set_unidade(_estoque);
  end;
  adicionar_unidade_arquivo;
end;

function TLivroFiscalDigital.itemExiste(cod_item:string):boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to high(item) do
  begin
    if item[i].cod_item = cod_item then
    begin
      result := true;
      break;
    end;
  end;
end;

procedure TLivroFiscalDigital.adicionar_item(c:TClasseQuery);
begin
  if (not c.q.fieldbyname(_nuclfiscal).IsNull) and
     (c.q.fieldbyname(_nuclfiscal).asstring <> _00) and
     (c.q.fieldbyname(_nuclfiscal).asstring <> '') and
     (Length(removercaracteres(c.q.fieldbyname(_nuclfiscal).AsString)) <> 8) then
  begin
    mensagem.add('Produto '+c.q.fieldbyname(_cdproduto).AsString+' - '+c.q.fieldbyname(_nmproduto).AsString+' está com a quantidade de digitos diferente de 8 no NCM.');
  end;
  if ((c.q.fieldbyname(_cdtpitem).asstring = _0) or (c.q.fieldbyname(_cdtpitem).asstring = _4)) and (c.q.fieldbyname(_nuclfiscal).asstring = '') then
  begin
    mensagem.Add('Produto '+c.q.fieldbyname(_cdproduto).AsString+' - '+c.q.fieldbyname(_nmproduto).AsString+' NCM é um campo obrigatório no cadastro deste produto quando o tipo de item for "'+c.q.fieldbyname(_cdtpitem).asstring+'".');
  end;
  if c.q.fieldbyname(_cdtpitem).asstring = '' then
  begin
    mensagem.add('Produto '+c.q.fieldbyname(_cdproduto).AsString+' - '+c.q.fieldbyname(_nmproduto).AsString+' tipo de item é um campo obrigatório no cadastro de produto.');
  end;
  if copy(c.q.fieldbyname(_nmproduto).asstring, 1, 1) = ' ' then
  begin
    mensagem.add('Produto '+c.q.fieldbyname(_cdproduto).AsString+' - '+c.q.fieldbyname(_nmproduto).AsString+' contém espaço no início do nome.');
  end;
  if copy(c.q.fieldbyname(_nmproduto).asstring, length(c.q.fieldbyname(_nmproduto).asstring), 1) = ' ' then
  begin
    mensagem.add('Produto '+c.q.fieldbyname(_cdproduto).AsString+' - '+c.q.fieldbyname(_nmproduto).AsString+' contém espaço no final do nome.');
  end;
  SetLength(item, High(item)+2);
  item[High(item)].cod_item   := c.q.fieldbyname(_cdproduto).asstring;
  item[High(item)].descr_item := c.q.fieldbyname(_nmproduto).asstring;
  item[High(item)].unid_inv   := c.q.fieldbyname(_cdunidade).asstring;
  item[High(item)].tipo_item  := FormatarTextoEsquerda(c.q.fieldbyname(_cdtpitem).asstring, 2, _0);
  item[High(item)].cod_ncm    := removercaracteres(c.q.fieldbyname(_nuclfiscal).asstring);
end;

procedure TLivroFiscalDigital.adicionar_item_arquivo(p_insert:integer=0; boestoque:boolean=false);
var
  x, i : integer;
begin
  if (p_insert > 0) or boestoque then
  begin
    if p_insert = 0 then
    begin
      p_insert := p0190;
      p0200    := p0190;
    end
    else
    begin
      inc(p0200);
    end;
    arquivo.Insert(p_insert,
                  '|'+
                   '0200|'+
                   item[high(item)].cod_item    +'|'+
                   item[high(item)].descr_item  +'|'+
                   item[high(item)].cod_barra   +'|'+
                   item[high(item)].cod_ant_item+'|'+
                   item[high(item)].unid_inv    +'|'+
                   item[high(item)].tipo_item   +'|'+
                   item[high(item)].cod_ncm     +'|'+
                   item[high(item)].ex_ipi      +'|'+
                   item[high(item)].cod_gen     +'|'+
                   item[high(item)].cod_lst     +'|'+
                   item[high(item)].aliq_icms   +'||');
    x          := arquivo.IndexOf('|0990|'+inttostr(rec_0000+rec_0001+rec_0005+rec_0100+rec_0150+rec_0190+rec_0200+rec_0300+rec_0305+rec_0400+rec_0450+rec_0460+rec_0500+rec_0600+rec_0990)+'|');
    inc(rec_0200);
    arquivo[x] := '|0990|'+inttostr(rec_0000+rec_0001+rec_0005+rec_0100+rec_0150+rec_0190+rec_0200+rec_0300+rec_0305+rec_0400+rec_0450+rec_0460+rec_0500+rec_0600+rec_0990)+'|';
  end
  else
  begin
    for i := 0 to high(item) do
    begin
      inc(rec_0200);
      arquivo.Add('|'+
                  '0200|'+
                  item[i].cod_item    +'|'+
                  item[i].descr_item  +'|'+
                  item[i].cod_barra   +'|'+
                  item[i].cod_ant_item+'|'+
                  item[i].unid_inv    +'|'+
                  item[i].tipo_item   +'|'+
                  item[i].cod_ncm     +'|'+
                  item[i].ex_ipi      +'|'+
                  item[i].cod_gen     +'|'+
                  item[i].cod_lst     +'|'+
                  item[i].aliq_icms   +'||');
      p0200 := arquivo.Count;
    end;
  end;
end;

procedure TLivroFiscalDigital.Registro0200;
  procedure Set_item(tbl:string);
    function makesql:string;
    begin
      if tbl = _estoque then
      begin
        result := 'select p.cdproduto '+
                       ',p.nmproduto '+
                       ',p.cdunidade '+
                       ',u.nmunidade '+
                       ',p.alicms '+
                       ',p.cdtpitem '+
                       ',p.nuclfiscal '+
                       ',h.qtestoque '+
                       ',h.vlcustomedio '+
                       ',h.vlsaldovalor '+
                       ',p.cdtpitem '+
                  'from produto p '+
                  'inner join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                  'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and t.cdempresa=p.cdempresa '+
                  'inner join hcustomedio h on h.cdproduto=p.cdproduto and p.cdempresa=h.cdempresa '+
                  'and h.dthistorico=(select max(dthistorico) from hcustomedio where cdempresa=p.cdempresa and cdproduto=p.cdproduto) '+
                  'where p.cdempresa='+empresa.cdempresa.tostring+' and t.boestoque=''S'' and h.qtestoque>0 '+
                  'and h.vlsaldovalor>=0 and h.vlcustomedio>=0 and h.dthistorico<='+getdtbanco(dtf)+' '+
                  'order by p.cdproduto'
      end
      else if tbl = _ciapi then
      begin
        result := 'select p.cdproduto'+
                       ',p.nmproduto'+
                       ',p.cdunidade'+
                       ',p.alicms'+
                       ',p.cdtpitem'+
                       ',p.nuclfiscal'+
                       ',p.cdtpitem '+
                   'from lp1aciapi l '+
                   'inner join produto p on p.cdproduto=l.cdproduto and p.cdempresa=l.cdempresa '+
                   'where l.cdempresa='+empresa.cdempresa.tostring+' and l.cdlp1a='+cdlp1a.ToString+' '+
                   'group by p.cdproduto,p.nmproduto,P.cdunidade,p.alicms,p.cdtpitem,p.nuclfiscal';
      end
      else if tbl = _entrada then
      begin
        result := 'select p.cdproduto'+
                        ',p.nmproduto'+
                        ',p.cdunidade'+
                        ',p.alicms'+
                        ',p.cdtpitem'+
                        ',p.nuclfiscal'+
                        ',p.cdtpitem '+
                   'from entrada e '+
                   'inner join itentrada i on i.cdentrada=e.cdentrada and e.cdempresa=i.cdempresa '+
                   'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=e.cdempresa '+
                   'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                   'inner join tpproduto on tpproduto.cdempresa=p.cdempresa and tpproduto.cdtpproduto=p.cdtpproduto '+
                   'where e.cdempresa='+empresa.cdempresa.tostring+' '+
                   'and e.dtsaida between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' '+
                   'and (not e.nudocfiscalicms in (''06'',''2D'',''28'',''57'',''08'',''07'',''22'',''21'',''02'',''29'')) and tpproduto.boservico<>''S'' '+
                   'group by p.cdproduto,p.nmproduto,P.cdunidade,p.alicms,p.cdtpitem,p.nuclfiscal';
      end
      else if tbl = _saida then
      begin
        result := 'select p.cdproduto'+
                        ',p.nmproduto'+
                        ',p.cdunidade'+
                        ',p.alicms'+
                        ',p.cdtpitem'+
                        ',p.nuclfiscal'+
                        ',p.cdtpitem '+
                   'from saida s '+
                   'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
                   'inner join ITSAIDA i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa '+
                   'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                   'where s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+GetDtBanco(dti)+' and '+GetDtBanco(dtf)+' and t.boiss<>''S'' and (not s.nudocfiscalicms in (''06'',''28'',''57'',''08'',''22'',''21'',''29'')) ';
        if not boitem then
        begin
          result := result + 'and s.nudocfiscalicms <> ''55'' ';
        end;
        result := result + 'group by p.cdproduto,p.nmproduto,P.cdunidade,p.alicms,p.cdtpitem,p.nuclfiscal';
      end
      else if tbl = _cupom then
      begin
        result := 'select p.cdproduto'+
                        ',p.nmproduto'+
                        ',p.cdunidade'+
                        ',p.alicms'+
                        ',p.cdtpitem'+
                        ',p.nuclfiscal'+
                        ',p.cdtpitem '+
                   'from saida t '+
                   'inner join itsaida i on i.cdsaida=t.cdsaida and i.cdempresa=t.cdempresa '+
                   'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                   'inner join serie se on se.cdserie=t.cdserie and se.cdempresa=t.cdempresa '+
                   'where t.cdempresa='+empresa.cdempresa.tostring+' and se.nudocfiscalicms=''2D'' '+
                   'and t.nudocfiscalicms in (''02'',''2D'') '+
                   'and t.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
                   'group by p.cdproduto,p.nmproduto,P.cdunidade,p.alicms,p.cdtpitem,p.nuclfiscal';
      end;
    end;
  var
    q : TClasseQuery;
  begin
    q := TClasseQuery.create(makesql);
    try
      gau.MaxValue := q.q.recordcount;
      while not q.q.eof do
      begin
        gau.Progress := q.q.recno;
        Application.ProcessMessages;
        if itemExiste(q.q.fieldbyname(_cdproduto).AsString) then
        begin
          q.q.next;
          continue;
        end;
        if (q.q.fieldbyname(_cdtpitem).AsString = _1) and (q.q.fieldbyname(_nuclfiscal).AsString = '') then
        begin
          mensagem.add('O tipo de item é matéria-prima mas não está configurado o ncm do produto '+q.q.fieldbyname(_cdproduto).asstring+' '+q.q.fieldbyname(_nmproduto).asstring+'.');
        end;
        adicionar_item(q);
        q.q.next;
      end;
    finally
      freeandnil(q);
    end;
  end;
begin
  frmprogressbar.pnl.Caption := 'Registro 0200 - Nota Fiscal';
  set_item(_saida);
  frmprogressbar.pnl.Caption := 'Registro 0200 - Compra';
  set_item(_entrada);
  frmprogressbar.pnl.Caption := 'Registro 0200 - Ciapi';
  set_item(_ciapi);
  frmprogressbar.pnl.Caption := 'Registro 0200 - Cupom';
  set_item(_cupom);
  //set_item(_estoque);
  adicionar_item_arquivo;
end;

procedure TLivroFiscalDigital.Registro0400;
  procedure processar(tbl:string);
  var
    q : TClasseQuery;
  begin
    q := TClasseQuery.create('select l.cdcfop,c.nmcfop '+
                             'from itlp1a l '+
                             'inner join '+tbl+' t on t.cd'+tbl+'=l.cd'+tbl+' and l.cdempresa=t.cdempresa '+
                             'inner join cfop c on c.cdcfop=l.cdcfop '+
                             'where l.cdempresa='+empresa.cdempresa.tostring+' and l.cdtpimposto=1 and l.cdlp1a='+cdlp1a.ToString+' and t.nudocfiscalicms<>''55'' '+
                             'group by l.cdcfop,c.nmcfop');
    try
      gau.MaxValue := q.q.recordcount;
      while not q.q.eof do
      begin
        gau.Progress := q.q.recno;
        Application.ProcessMessages;
        inc(rec_0400);
        arquivo.Add('|0400|'+q.q.fieldbyname(_cdcfop).asstring+'|'+q.q.fieldbyname(_nmcfop).asstring+'|');
        q.q.next;
      end;
    finally
      freeandnil(q);
    end;
  end;
begin
  exit;
  processar(_entrada);
end;

procedure TLivroFiscalDigital.Registro0450;
  function makesql(tbl:string):string;
  begin
    result := 'select f.cdefd0450,f.nmefd0450 '+
              'from '+tbl+' e '+
              'inner join '+tbl+'efd0450 ef on ef.cd'+tbl+'=e.cd'+tbl+' and e.cdempresa=ef.cdempresa '+
              'inner join efd0450 f on f.cdefd0450=ef.cdefd0450 and f.cdempresa=ef.cdempresa '+
              'inner join itlp1a l on l.cd'+tbl+'=e.cd'+tbl+' and l.cdempresa=e.cdempresa '+
              'where e.cdempresa='+empresa.cdempresa.tostring+' and e.nudocfiscalicms in (''01'',''55'') and l.cdtpimposto=1 and l.cdlp1a='+cdlp1a.ToString+' '+
              'group by f.cdefd0450,f.nmefd0450'
  end;
var
  q : TClasseQuery;
  cdefd0450 : TStrings;
  procedure processar_dataset;
  begin
    while not q.q.Eof do
    begin
      if cdefd0450.IndexOf(q.q.fieldbyname(_cdefd0450).asstring) = -1 then
      begin
        inc(rec_0450);
        cdefd0450.Add(q.q.fieldbyname(_cdefd0450).asstring);
        arquivo.add('|0450|'+q.q.fieldbyname(_cdefd0450).asstring+'|'+q.q.fieldbyname(_nmefd0450).asstring+'|');
      end;
      q.q.Next;
    end;
  end;
begin
  q         := TClasseQuery.create(makesql(_entrada));
  cdefd0450 := TStringList.Create;
  try
    processar_dataset;
    q.q.Close;
    q.q.Open(makesql(_saida));
    processar_dataset;
  finally
    FreeAndNil(q);
    FreeAndNil(cdefd0450);
  end;
end;

procedure TLivroFiscalDigital.Registro0460;
begin
{
  inc(rec_0460);
  arquivo.add('|0460|1|OUTROS CREDITOS - TRANSPORTE|');
  inc(rec_0460);
  arquivo.add('|0460|2|Reducao a zero da aliquota do IPI conforme Decreto 5.697 de 07/02/2006 e Decreto 6.024 de 22/01/2007.|');
  inc(rec_0460);
  arquivo.add('|0460|3|DIFERENCIAL DE ALIQUOTA|');
  inc(rec_0460);
  arquivo.add('|0460|4|ICMS ST TRANSPORTE|');
}
end;

procedure TLivroFiscalDigital.Registro0990;
begin
  inc(rec_0990);
  qt09990 := rec_0000+rec_0001+rec_0005+rec_0100+rec_0150+rec_0190+rec_0200+rec_0300+rec_0305+rec_0400+rec_0450+rec_0460+rec_0500+rec_0600+rec_0990;
  arquivo.Add('|0990|'+inttostr(rec_0000+rec_0001+rec_0005+rec_0100+rec_0150+rec_0190+rec_0200+rec_0300+rec_0305+rec_0400+rec_0450+rec_0460+rec_0500+rec_0600+rec_0990)+'|');
end;

procedure TLivroFiscalDigital.RegistroE001;
begin
  inc(rec_e001);
  arquivo.Add('|E001|'+ind_mov[1]+'|');
end;

procedure TLivroFiscalDigital.RegistroE100;
begin
  inc(rec_e100);
  arquivo.Add('|E100|'+getdtpura(dti)+'|'+getdtpura(dtf)+'|');
end;

procedure TLivroFiscalDigital.RegistroE110;
type
  tE110 = record
    reg : string;                         // 01 REG Texto fixo contendo "E110" C 004 - O
    vl_tot_debitos : currency;            // 02 VL_TOT_DEBITOS Valor total dos débitos por "Saídas e prestações com débito do imposto" N - 02 O
    vl_aj_debitos : currency;             // 03 VL_AJ_DEBITOS Valor total dos ajustes a débito decorrentes do documento fiscal. N - 02 O
    vl_tot_aj_debitos : currency;         // 04 VL_TOT_AJ_DEBITOS Valor total de "Ajustes a débito" N - 02 O
    vl_estornos_cred : currency;          // 05 VL_ESTORNOS_CRED Valor total de Ajustes “Estornos de créditos” N - 02 O
    vl_tot_creditos : currency;           // 06 VL_TOT_CREDITOS Valor total dos créditos por "Entradas e aquisições com crédito do imposto" N - 02 O
    vl_aj_creditos : currency;            // 07 VL_AJ_CREDITOS Valor total dos ajustes a crédito decorrentes do documento fiscal. N - 02 O
    vl_tot_aj_creditos : currency;        // 08 VL_TOT_AJ_CREDITOS Valor total de "Ajustes a crédito" N - 02 O
    vl_estornos_deb : currency;           // 09 VL_ESTORNOS_DEB Valor total de Ajustes “Estornos de Débitos” N - 02 O
    vl_sld_credor_ant : currency;         // 10 VL_SLD_CREDOR_ANT Valor total de "Saldo credor do período anterior" N - 02 O
    vl_sld_apurado : currency;            // 11 VL_SLD_APURADO Valor do saldo devedor apurado N - 02 O
    vl_tot_ded : currency;                // 12 VL_TOT_DED Valor total de "Deduções" N - 02 O
    vl_icms_recolher : currency;          // 13 VL_ICMS_RECOLHER Valor total de "ICMS a recolher (11-12) N - 02 O
    vl_sld_credor_transportar : currency; // 14 VL_SLD_CREDOR_TRANSPORTAR Valor total de "Saldo credor a transportar para o período seguinte” N - 02 O
    deb_esp : currency;                   // 15 DEB_ESP Valores recolhidos ou a recolher, extraapuração. N - 02 O
  end;
var
  q : TClasseQuery;
  linha : string;
  e110 : te110;
begin
  q := TClasseQuery.Create('select * from ITREGAPURACAO where cdempresa='+empresa.cdempresa.tostring+' and cdtpimposto=1 and cdlp1a='+cdlp1a.ToString);
  try
    e110.reg := 'E110';
    e110.vl_tot_debitos    := q.q.fieldbyname(_vldebito).ascurrency;
    e110.vl_aj_debitos     := 0;
    e110.vl_tot_aj_debitos := q.q.fieldbyname(_VLDOUTROS).ascurrency;
    e110.vl_estornos_cred  := q.q.fieldbyname(_vldestorno).ascurrency;
    e110.vl_tot_creditos   := q.q.fieldbyname(_vlcredito).ascurrency;
    e110.vl_aj_creditos    := RetornaSQLCurrency('select sum(itsaidafretesub.vlfretesub) from saida '+
                                                 'inner join itsaidafretesub on itsaidafretesub.cdsaida=saida.cdsaida and itsaidafretesub.cdempresa=saida.cdempresa '+
                                                 'where saida.cdempresa='+empresa.cdempresa.tostring+' and saida.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and saida.tpentsai=''S''');
    e110.vl_tot_aj_creditos := q.q.fieldbyname(_VLCOUTROS).ascurrency+RetornaSQLCurrency('SELECT SUM(VLAJUSTE) FROM LP1ACIAPI WHERE cdempresa='+empresa.cdempresa.tostring+' and CDLP1A='+cdlp1a.ToString);
    e110.vl_estornos_deb    := q.q.fieldbyname(_vlcestorno).ascurrency;
    e110.vl_sld_credor_ant  := q.q.fieldbyname(_VLCSALDOCREDOR).ascurrency;
    e110.vl_sld_apurado     := q.q.fieldbyname(_VLSALDODEVEDOR).AsCurrency;
    if e110.vl_sld_apurado < 0 then
    begin
      e110.vl_sld_apurado := 0;
    end;
    e110.vl_tot_ded := q.q.fieldbyname(_vldeducoes).ascurrency;
    e110.vl_icms_recolher := q.q.fieldbyname(_vlimposto).ascurrency;
    e110.vl_sld_credor_transportar := q.q.fieldbyname(_vlsaldocredor).ascurrency;
    e110.deb_esp := RetornaSQLCurrency('SELECT coalesce(sum(vloutroscreditos),0)-coalesce(sum(vloutrosdebitos),0) vl '+
                                       'FROM ITAPURACAO WHERE cdempresa='+empresa.cdempresa.tostring+' and CDTPIMPOSTO=1 and tpsaient=''E'' and cdlp1a='+cdlp1a.ToString);
    if e110.deb_esp < 0 then
    begin
      e110.deb_esp := e110.deb_esp * -1;
    end;
    linha := '|'+e110.reg+'|'+                             // 01
             qstring.set_zero(e110.vl_tot_debitos)+'|'+            // 02 - valor total dos debitos
             qstring.set_zero(e110.vl_aj_debitos)+'|'+             // 03 - valor ajustes e debitos
             qstring.set_zero(e110.vl_tot_aj_debitos)+'|'+         // 04 - valor total ajustes e debitos
             qstring.set_zero(e110.vl_estornos_cred)+'|'+          // 05
             qstring.set_zero(e110.vl_tot_creditos)+'|'+           // 06
             qstring.set_zero(e110.vl_aj_creditos)+'|'+            // 07 - valor ajustes de creditos
             qstring.set_zero(e110.vl_tot_aj_creditos)+'|'+        // 08 - valor total dos ajustes a credito decorrentes do documento fiscal
             qstring.set_zero(e110.vl_estornos_deb)+'|'+           // 09
             qstring.set_zero(e110.vl_sld_credor_ant)+'|'+         // 10
             qstring.set_zero(e110.vl_sld_apurado)+'|'+            // 11 - valor saldo apuracao
             qstring.set_zero(e110.vl_tot_ded)+'|'+                // 12
             qstring.set_zero(e110.vl_icms_recolher)+'|'+          // 13
             qstring.set_zero(e110.vl_sld_credor_transportar)+'|'+ // 14
             qstring.set_zero(e110.deb_esp)+'|';                   // 15 - valores recolhidos ou a recolher, extra-apuracao
    arquivo.add(linha);
    inc(rec_e110);
    RegistroE111;
    RegistroE115;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroE111;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select sum(vlajuste) vlajuste from LP1ACIAPI where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+cdlp1a.ToString);
  try
    if q.q.fieldbyname(_vlajuste).AsCurrency > 0 then
    begin
      arquivo.Add('|E111|MG029999|ATIVO IMOBILIZADO - CIAPI|'+qstring.set_zero(q.q.fieldbyname(_vlajuste).ascurrency)+'|');
      inc(rec_e111);
      RegistroE113;
    end;
    q.q.Close;
    q.q.open('SELECT vloutrosdebitos '+
              'FROM ITAPURACAO i '+
              'INNER JOIN CFOP c ON c.CDCFOP=I.CDCFOP '+
              'WHERE i.cdempresa='+empresa.cdempresa.tostring+' and I.CDTPIMPOSTO=1 and i.tpsaient=''E'' and c.cdcfop=''2352'' and i.cdlp1a='+cdlp1a.ToString);
    if q.q.FieldByName(_vloutrosdebitos).AsCurrency > 0 then
    begin
      arquivo.Add('|E111|MG059998|ICMS DIFERENCIAL DE ALIQUOTAS FRETE|'+qstring.set_zero(q.q.fieldbyname(_vloutrosdebitos).ascurrency)+'|');
      inc(rec_e111);
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroE113;
  {procedure processar(tbl:string);
    function makesql:string;
    begin
      result := 'select f.nucnpj nucnpjf,f.nucpf nucpff'+
                     ',c.q.nucnpj nucnpjc,c.q.nucpf nucpfc'+
                     ',t.nudocfiscalicms'+
                     ',t.dtemissao'+
                     ',l.nudocumento'+
                     ',l.vlajuste'+
                     ',l.cdproduto '+
                'from LP1ACIAPI l '+
                'inner join '+tbl+' t on t.cd'+tbl+'=l.cd'+tbl+' '+
                'left join fornecedor f on f.cdfornecedor=t.cdfornecedor '+
                'left join cliente c on c.q.cdcliente=t.cdcliente '+
                'where l.cdlp1a='+cdlp1a;
    end;
  var
    s : TClasseQuery;
    function cdparticipante:string;
    begin
           if s.q.fieldbyname(_cdparticipantef).AsString <> '' then result := s.q.fieldbyname(_cdparticipantef).AsString
      else if s.q.fieldbyname(_cdparticipantec).AsString <> '' then result := s.q.fieldbyname(_cdparticipantec).AsString;
    end;
  begin
    s := TClasseQuery.create(nil);
    try
      s.q.Connection := aplicacao.confire;
      s.q.sql.Text   := makesql;
      s.q.Open;
      while not s.q.eof do
      begin
        arquivo.Add('|E113|'+cdparticipante+'|'+s.q.fieldbyname(_nudocfiscalicms).AsString+'|||'+s.q.fieldbyname(_nudocumento).AsString+'|'+
                    getdtpura(s.q.fieldbyname(_dtemissao).asdatetime)+'|'+
                    s.q.fieldbyname(_cdproduto).AsString+'|'+
                    formatfloat(__moedadec, s.q.fieldbyname(_vlajuste).AsCurrency)+'|');
        inc(rec_e113);
        s.q.Next;
      end;
    finally
      freeandnil(s);
    end;
  end;}
begin
  //processar(_entrada);
  //processar(_saida);
end;

procedure TLivroFiscalDigital.RegistroE115;
var
  q : TClasseQuery;
begin
  if empresa.endereco.sguf <> _mg then
  begin
    Exit;
  end;
  q := TClasseQuery.Create('select NUFUNCIONARIOS,VLFOLHAPAGAMENTO,VLCOFINS,QTENERGIA FROM LP1A WHERE cdempresa='+empresa.cdempresa.tostring+' and CDLP1A='+cdlp1a.ToString);
  try
    arquivo.Add('|E115|MG000001|'+q.q.fieldbyname(_nufuncionarios).asstring+'||');               inc(rec_e115);
    arquivo.Add('|E115|MG000002|'+qstring.set_zero(q.q.fieldbyname(_vlfolhapagamento).AsCurrency)+'||'); inc(rec_e115);
    if dti < StrToDate('01/10/2012') then
    begin
      arquivo.Add('|E115|MG000003|'+qstring.set_zero(q.q.fieldbyname(_vlcofins).AsCurrency)+'||');         inc(rec_e115);
    end;
    arquivo.Add('|E115|MG000004|'+qstring.set_zero(q.q.fieldbyname(_QTENERGIA).AsCurrency)+'||');        inc(rec_e115);
  finally
    FreeAndNil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroE116;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('SELECT VLIMPOSTO FROM ITREGAPURACAO WHERE cdempresa='+empresa.cdempresa.tostring+' and CDTPIMPOSTO=1 AND CDLP1A='+cdlp1a.ToString);
  try
    if q.q.FieldByName(_vlimposto).AsCurrency > 0 then
    begin
      e116.New;
      e116.Items[e116.Count-1].cod_or := '000';
      e116.Items[e116.Count-1].vl_or := q.q.fieldbyname(_vlimposto).AsCurrency;
      e116.Items[e116.Count-1].dt_vcto := Primeiro_dia_mes_proximo(dti) + strtoint(empresa.nudiavencimentoicms);
      e116.Items[e116.Count-1].cod_rec := empresa.cdreceitaicms;
      e116.Items[e116.Count-1].num_proc := '';
      e116.Items[e116.Count-1].ind_proc := '';
      e116.Items[e116.Count-1].proc := '';
      e116.Items[e116.Count-1].txt_compl := 'ICMS OPERACOES PROPRIAS';
      e116.Items[e116.Count-1].mes_ref := qdatahora.mesano(dti);
      arquivo.Append(e116.Items[e116.Count-1].texto);
      inc(rec_e116);
    end;
    q.q.Close;
    q.q.Open('SELECT sum(vloutrosdebitos) FROM ITAPURACAO WHERE cdcfop is not null and cdempresa='+empresa.cdempresa.tostring+' and CDTPIMPOSTO=1 and tpsaient=''E'' and cdlp1a='+cdlp1a.ToString);
    if q.q.Fields[0].AsCurrency > 0 then
    begin
      e116.New;
      e116.Items[e116.Count-1].cod_or := '090';
      e116.Items[e116.Count-1].vl_or := q.q.Fields[0].AsCurrency;
      e116.Items[e116.Count-1].dt_vcto := Primeiro_dia_mes_proximo(dti) + strtoint(empresa.nudiavencimentoicms);
      e116.Items[e116.Count-1].cod_rec := '317-8';
      e116.Items[e116.Count-1].num_proc := '';
      e116.Items[e116.Count-1].ind_proc := '';
      e116.Items[e116.Count-1].proc := '';
      e116.Items[e116.Count-1].txt_compl := 'ICMS DIFERENCIAL DE ALIQUOTA';
      e116.Items[e116.Count-1].mes_ref := qdatahora.mesano(dti);
      arquivo.Append(e116.Items[e116.Count-1].texto);
      inc(rec_e116);
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroE500;
begin
  inc(rec_e500);
  arquivo.add('|E500|0|'+getdtpura(dti)+'|'+getdtpura(dtf)+'|');
end;

procedure TLivroFiscalDigital.RegistroE510;
  function makesql_saida:string;
  begin
    result := 'select i.cdcfop'+
                    ',i.nustipi'+
                    ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlicmssubtrib,0)-coalesce(i.vldesconto,0)+coalesce(i.vlipi,0)) vltotal'+
                    ',sum(i.vlbaseipi) vlbaseipi'+
                    ',sum(i.vlipi) vlipi '+
              'from itsaida i '+
              'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa and s.nudocfiscalicms in (''01'',''1B'',''04'',''55'') '+
              'inner join VW_ITLP1A_SAIDA v on v.cdempresa=i.cdempresa and V.cdsaida=i.cdsaida and V.cdlp1a='+cdlp1a.ToString+' '+
              'where i.cdempresa='+empresa.cdempresa.tostring+' and I.CDCFOP<>5933 AND I.CDCFOP<>6933 '+
              'group by i.cdcfop'+
                      ',i.nustipi';
  end;
  function makesql_entrada:string;
  begin
    result := 'select i.cdcfop'+
                    ',i.nustipi'+
                    ',i.borecuperaipi'+
                    ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlseguro,0)+coalesce(i.vloutdespesa,0)-coalesce(i.vldesconto,0)+coalesce(i.vlicmssubtrib,0)+coalesce(i.vlipi,0)) vltotal'+
                    ',sum(i.vlbaseipi) vlbaseipi'+
                    ',sum(i.vlipi) vlipi '+
              'from itentrada i '+
              'left join cfop c on c.cdcfop=i.cdcfop '+
              'inner join entrada e on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
              'where i.cdempresa='+empresa.cdempresa.tostring+' '+
              'and i.cdentrada in (select i1.cdentrada '+
                                    'from itlp1a i1 '+
                                    'inner join entrada e1 on e1.cdentrada=i1.cdentrada and e1.cdempresa=i1.cdempresa '+
                                    'where i1.cdempresa='+empresa.cdempresa.tostring+' and e1.nudocfiscalicms in (''01'',''1B'',''04'',''55'') and i1.cdlp1a='+cdlp1a.ToString+' '+
                                    'group by i1.cdentrada) '+
              'group by i.cdcfop'+
                     ',i.nustipi'+
                     ',i.borecuperaipi';
  end;
var
  cdcfop, nustipi, vltotal, vlbaseipi, vlipi : TStrings;
  procedure processar(tbl, makesql:string);
  var
    q : TClasseQuery;
    cdcfop_, nustipi_ : string;
    vltotal_, vlbaseipi_, vlipi_ : Currency;
    function existe_cfop_nustipi:Integer;
    var
      i : integer;
    begin
      result := -1;
      for i := 0 to cdcfop.Count - 1 do
      begin
        if (cdcfop[i] = cdcfop_) and (nustipi[i] = nustipi_) then
        begin
          result := i;
          Break;
        end;
      end;
    end;
    procedure adicionar_valores;
    var
      i : Integer;
    begin
      i := existe_cfop_nustipi;
      vltotal  [i] := FloatToStr(strtofloat(vltotal  [i])+vltotal_);
      vlbaseipi[i] := FloatToStr(strtofloat(vlbaseipi[i])+vlbaseipi_);
      vlipi    [i] := FloatToStr(strtofloat(vlipi    [i])+vlipi_);
    end;
    procedure inserir_valores;
    begin
      cdcfop.Add   (cdcfop_);
      vltotal.Add  (FloatToStr(vltotal_));
      nustipi.Add  (nustipi_);
      vlbaseipi.Add(FloatToStr(vlbaseipi_));
      vlipi.Add    (FloatToStr(vlipi_));
    end;
  begin
    q := TClasseQuery.create(makesql);
    try
      gau.MaxValue := q.q.recordcount;
      while not q.q.eof do
      begin
        gau.Progress := q.q.recno;
        Application.ProcessMessages;
        cdcfop_    := q.q.fieldbyname(_cdcfop).asstring;
        vltotal_   := q.q.fieldbyname(_vltotal).ascurrency;
        vlbaseipi_ := q.q.fieldbyname(_vlbaseipi).ascurrency;
        vlipi_     := q.q.fieldbyname(_vlipi).ascurrency;
        nustipi_   := q.q.fieldbyname(_nustipi).asstring;
        if tbl = _entrada then
        begin
          if q.q.fieldbyname(_borecuperaipi).AsString = _N then
          begin
            nustipi_ := '49'
          end
          else
          begin
            nustipi_ := '00';
          end;
          if (tbl = _entrada) and (q.q.fieldbyname(_borecuperaipi).AsString = _N) and (q.q.fieldbyname(_vlipi).ascurrency > 0) then
          begin
            vlbaseipi_ := 0;
            vlipi_     := 0;
          end;
        end;
        if existe_cfop_nustipi > -1 then
        begin
          adicionar_valores;
        end
        else
        begin
          inserir_valores;
        end;
        q.q.next;
      end;
    finally
      freeandnil(q);
    end;
  end;
  procedure write_e510;
  var
    i : Integer;
  begin
    for i := 0 to cdcfop.Count - 1 do
    begin
      arquivo.Add('|E510|'+cdcfop[i]+'|'+nustipi[i]+'|'+substituir(vltotal[i], '.', ',')+'|'+substituir(vlbaseipi[i], '.', ',')+'|'+substituir(vlipi[i], '.', ',')+'|');
      inc(rec_e510);
    end;
  end;
begin
  cdcfop    := TStringList.Create;
  nustipi   := TStringList.Create;
  vltotal   := TStringList.Create;
  vlbaseipi := TStringList.Create;
  vlipi     := TStringList.Create;
  try
    processar(_saida, makesql_saida);
    processar(_entrada, makesql_entrada);
    write_e510;
  finally
    freeandnil(cdcfop);
    freeandnil(nustipi);
    freeandnil(vltotal);
    freeandnil(vlbaseipi);
    freeandnil(vlipi);
  end;
end;

procedure TLivroFiscalDigital.RegistroE520;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('select VLCSALDOCREDOR'+
                                 ',VLDEBITO'+
                                 ',VLCREDITO'+
                                 ',COALESCE(VLDOUTROS,0)+COALESCE(VLDRESSARCIMENTO,0) VLDOUTROS'+
                                 ',VLCOUTROS'+
                                 ',VLSALDOCREDOR'+
                                 ',VLSALDODEVEDOR '+
                             'from ITREGAPURACAO '+
                             'where cdempresa='+empresa.cdempresa.tostring+' and cdtpimposto=2 and cdlp1a='+cdlp1a.ToString);
  try
    arquivo.add('|E520|'+
                qstring.set_zero(q.q.fieldbyname(_VLCSALDOCREDOR).ascurrency)+'|'+
                qstring.set_zero(q.q.fieldbyname(_vldebito).ascurrency)+'|'+
                qstring.set_zero(q.q.fieldbyname(_VLCREDITO).ascurrency)+'|'+
                qstring.set_zero(q.q.fieldbyname(_VLDOUTROS).ascurrency)+'|'+
                qstring.set_zero(q.q.fieldbyname(_VLCOUTROS).ascurrency)+'|'+
                qstring.set_zero(q.q.fieldbyname(_VLSALDOCREDOR).ascurrency)+'|'+
                q.q.fieldbyname(_VLSALDODEVEDOR).asstring+'|'); //está indo com o valor negativo igual ao vlsaldocredor, corrigir na geracao do livro
    inc(rec_e520);
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroE990;
begin
  inc(rec_e990);
  arquivo.add('|E990|'+inttostr(rec_e001+rec_e100+rec_e110+rec_e111+rec_e113+rec_e115+rec_e116+rec_e200+rec_e210+rec_e500+rec_e510+rec_e520+rec_e990)+'|');
end;

procedure TLivroFiscalDigital.RegistroH001;
begin
  inc(rec_h001);
  if formatdatetime(_mm, dti) = _MES_ESTOQUE then
  begin
    arquivo.Add('|H001|'+ind_mov[1]+'|')
  end
  else
  begin
    arquivo.Add('|H001|1|');
  end;
end;

procedure TLivroFiscalDigital.RegistroH005;
var
  texto : string;
begin
  if formatdatetime(_mm, dti) <> _MES_ESTOQUE then
  begin
    exit;
  end;
  texto := '|H005|'+
            '3112'+inttostr(strtoint(formatdatetime(_YYYY, dtf))-1)+'|'+ // data do inventario
             FormatFloat(__moedadec, vlinventarioh)+'|';
  if inttostr(strtoint(formatdatetime(_YYYY, dtf))-1) > _2+_0+_1+_1 then
  begin
    texto := texto + '01|';
  end;
  inc(rec_h005);
  arquivo.Add(texto);
  arquivo.text := arquivo.text + arquivoh.text;
end;

procedure TLivroFiscalDigital.RegistroH010;
var
  q : TClasseQuery;
  function nucontaestoque:string;
  begin
    if q.q.fieldbyname(_nu+_conta+_estoque).AsInteger  > 0 then
    begin
      result := q.q.fieldbyname(_nu+_conta+_estoque).AsString
    end
    else if q.q.fieldbyname(_nu+_conta+_estoque+_g).AsInteger > 0 then
    begin
      result := q.q.fieldbyname(_nu+_conta+_estoque+_g).AsString;
    end;
  end;
begin
  if formatdatetime(_mm, dti) <> _MES_ESTOQUE then
  begin
    exit;
  end;
  q := TClasseQuery.create('select p.cdproduto'+
                                 ',p.nmproduto'+
                                 ',p.cdunidade'+
                                 ',u.nmunidade'+
                                 ',p.alicms'+
                                 ',p.cdtpitem'+
                                 ',p.nuclfiscal'+
                                 ',h.qtestoque'+
                                 ',h.vlcustomedio'+
                                 ',h.vlsaldovalor'+
                                 ',P.NUCONTAESTOQUE'+
                                 ',G.NUCONTAESTOQUE NUCONTAESTOQUEG '+
                           'from produto p '+
                           'inner join grupo g on g.cdgrupo=p.cdgrupo and p.cdempresa=g.cdempresa '+
                           'inner join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                           'inner join tpproduto t on t.cdtpproduto=p.cdtpproduto and p.cdempresa=t.cdempresa '+
                           'inner join hcustomedio h on h.cdproduto=p.cdproduto and p.cdempresa=h.cdempresa '+
                           'and h.dthistorico=(select max(dthistorico) from hcustomedio where cdempresa=p.cdempresa and cdproduto=p.cdproduto and dthistorico<='+quotedstr('12/31/'+inttostr(strtoint(formatdatetime(_YYYY, dtf))-1))+') '+
                           'where p.cdempresa='+empresa.cdempresa.tostring+' and t.boestoque=''S'' and h.qtestoque>0 and h.vlsaldovalor>=0 and h.vlcustomedio>=0 '+
                           'and h.dthistorico<='+quotedstr('12/31/'+inttostr(strtoint(formatdatetime(_YYYY, dtf))-1))+' '+
                           'order by p.cdproduto');
  try
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      pnl.Caption := 'Registro H010 - '+inttostr(q.q.recno)+' de '+inttostr(q.q.recordcount);
      Application.ProcessMessages;
      vlinventarioh := vlinventarioh + q.q.fieldbyname(_vlsaldovalor).ascurrency;
      if not UnidadeExiste(q.q.fieldbyname(_cdunidade).asstring) then
      begin
        Adicionar_unidade(q);
        adicionar_unidade_arquivo(p0190);
      end;
      if not itemExiste(q.q.fieldbyname(_cdproduto).asstring) then
      begin
        adicionar_item(q);
        adicionar_item_arquivo(p0200, true);
      end;
      arquivoh.add('|H010|'+q.q.fieldbyname(_cdproduto).asstring+'|'+q.q.fieldbyname(_cdunidade).asstring+'|'+
                  FormatFloat(__moedadec3, q.q.fieldbyname(_qtestoque).ascurrency)+'|'+
                  FormatFloat(__moedadec6, q.q.fieldbyname(_vlcustomedio).ascurrency)+'|'+
                  FormatFloat(__moedadec, q.q.fieldbyname(_vlsaldovalor).ascurrency)+'|'+
                  '0|'+ // indicador de propriedade do item
                  '|'+ // codigo do participante
                  '|'+ // texto complementar
                  nucontaestoque+'||'); // conta analitica contabil debitada/creditada
      inc(rec_h010);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroH990;
begin
  inc(rec_h990);
  arquivo.add('|H990|'+inttostr(rec_h001+rec_h005+rec_h010+rec_h990)+'|');
end;

procedure TLivroFiscalDigital.Registro9001;
begin
  inc(rec_9001);
  arquivo.Add('|9001|0|');
end;

procedure TLivroFiscalDigital.Registro9900;
begin
  inc(rec_9900); arquivo.Add('|9900|0000|'+inttostr(rec_0000)+'|');
  inc(rec_9900); arquivo.Add('|9900|0001|'+inttostr(rec_0001)+'|');
  inc(rec_9900); arquivo.Add('|9900|0005|'+inttostr(rec_0005)+'|');
  inc(rec_9900); arquivo.Add('|9900|0100|'+inttostr(rec_0100)+'|');
  inc(rec_9900); arquivo.Add('|9900|0150|'+inttostr(rec_0150)+'|');
  inc(rec_9900); arquivo.Add('|9900|0190|'+inttostr(rec_0190)+'|');
  inc(rec_9900); arquivo.Add('|9900|0200|'+inttostr(rec_0200)+'|');
  if rec_0300 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|0300|'+inttostr(rec_0300)+'|');
    inc(rec_9900); arquivo.Add('|9900|0305|'+inttostr(rec_0305)+'|');
  end;
  inc(rec_9900); arquivo.Add('|9900|0400|'+inttostr(rec_0400)+'|');
  inc(rec_9900); arquivo.Add('|9900|0450|'+inttostr(rec_0450)+'|');
  inc(rec_9900); arquivo.Add('|9900|0460|'+inttostr(rec_0460)+'|');
  if rec_0500 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|0500|'+inttostr(rec_0500)+'|');
  end;
  if rec_0600 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|0600|'+inttostr(rec_0600)+'|');
  end;
  inc(rec_9900); arquivo.Add('|9900|0990|'+inttostr(rec_0990)+'|');
  inc(rec_9900); arquivo.Add('|9900|1001|'+inttostr(rec_1001)+'|');
  if rec_1010 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|1010|'+inttostr(rec_1010)+'|');
  end;
  if rec_1700 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|1700|'+inttostr(rec_1700)+'|');
    if rec_1710 > 0 then
    begin
      inc(rec_9900); arquivo.Add('|9900|1710|'+inttostr(rec_1710)+'|');
    end;
  end;
  inc(rec_9900); arquivo.Add('|9900|1990|'+inttostr(rec_1990)+'|');
  inc(rec_9900); arquivo.Add('|9900|C001|'+inttostr(rec_c001)+'|');
  inc(rec_9900); arquivo.Add('|9900|C100|'+inttostr(rec_c100)+'|');
  if rec_c300 > 0 then
  begin
    inc(rec_9900);
    arquivo.Add('|9900|C300|'+inttostr(rec_c300)+'|');
  end;
  if rec_c310 > 0 then
  begin
    inc(rec_9900);
    arquivo.Add('|9900|C310|'+inttostr(rec_c310)+'|');
  end;
  if rec_c320 > 0 then
  begin
    inc(rec_9900);
    arquivo.Add('|9900|C320|'+inttostr(rec_c320)+'|');
  end;
  if rec_c321 > 0 then
  begin
    inc(rec_9900);
    arquivo.Add('|9900|C321|'+inttostr(rec_c321)+'|');
  end;
  if rec_c350 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|C350|'+inttostr(rec_c350)+'|');
    inc(rec_9900); arquivo.Add('|9900|C370|'+inttostr(rec_c370)+'|');
    inc(rec_9900); arquivo.Add('|9900|C390|'+inttostr(rec_c390)+'|');
  end;
  if rec_c400 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|C400|'+inttostr(rec_c400)+'|');
    Inc(rec_9900); arquivo.Add('|9900|C405|'+inttostr(rec_c405)+'|');
    if rec_c420 > 0 then
    begin
      Inc(rec_9900); arquivo.Add('|9900|C420|'+inttostr(rec_c420)+'|');
      if rec_c425 > 0 then
      begin
        Inc(rec_9900); arquivo.Add('|9900|C425|'+inttostr(rec_c425)+'|');
      end;
    end;
    if rec_c460 > 0 then
    begin
      Inc(rec_9900); arquivo.Add('|9900|C460|'+inttostr(rec_c460)+'|');
      if rec_c470 > 0 then
      begin
        Inc(rec_9900); arquivo.Add('|9900|C470|'+inttostr(rec_c470)+'|');
      end;
    end;
    if rec_c490 > 0 then
    begin
      Inc(rec_9900); arquivo.Add('|9900|C490|'+inttostr(rec_c490)+'|');
    end;
  end;
  inc(rec_9900); arquivo.Add('|9900|C500|'+inttostr(rec_c500)+'|');
  inc(rec_9900); arquivo.Add('|9900|C590|'+inttostr(rec_c590)+'|');
  if rec_c111 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|C111|'+inttostr(rec_c111)+'|');
  end;
  if rec_c110 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|C110|'+inttostr(rec_c110)+'|');
  end;
  inc(rec_9900); arquivo.Add('|9900|C140|'+inttostr(rec_c140)+'|');
  inc(rec_9900); arquivo.Add('|9900|C141|'+inttostr(rec_c141)+'|');
  inc(rec_9900); arquivo.Add('|9900|C160|'+inttostr(rec_c160)+'|');
  inc(rec_9900); arquivo.Add('|9900|C170|'+inttostr(rec_c170)+'|');
  inc(rec_9900); arquivo.Add('|9900|C190|'+inttostr(rec_c190)+'|');
  inc(rec_9900); arquivo.Add('|9900|C195|'+inttostr(rec_c195)+'|');
  inc(rec_9900); arquivo.Add('|9900|C197|'+inttostr(rec_c197)+'|');
  inc(rec_9900); arquivo.Add('|9900|C990|'+inttostr(rec_c990)+'|');
  inc(rec_9900); arquivo.Add('|9900|D001|'+inttostr(rec_d001)+'|');
  inc(rec_9900); arquivo.Add('|9900|D100|'+inttostr(rec_d100)+'|');
  inc(rec_9900); arquivo.Add('|9900|D190|'+inttostr(rec_d190)+'|');
  inc(rec_9900); arquivo.Add('|9900|D500|'+inttostr(rec_d500)+'|');
  inc(rec_9900); arquivo.Add('|9900|D590|'+inttostr(rec_d590)+'|');
  inc(rec_9900); arquivo.Add('|9900|D990|'+inttostr(rec_d990)+'|');
  inc(rec_9900); arquivo.Add('|9900|E001|'+inttostr(rec_e001)+'|');
  inc(rec_9900); arquivo.Add('|9900|E100|'+inttostr(rec_e100)+'|');
  inc(rec_9900); arquivo.Add('|9900|E110|'+inttostr(rec_e110)+'|');
  inc(rec_9900); arquivo.Add('|9900|E111|'+inttostr(rec_e111)+'|');
  inc(rec_9900); arquivo.Add('|9900|E113|'+inttostr(rec_e113)+'|');
  if rec_e115 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|E115|'+inttostr(rec_e115)+'|');
  end;
  if rec_e116 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|E116|'+inttostr(rec_e116)+'|');
  end;
  if rec_e200 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|E200|'+inttostr(rec_e200)+'|');
    inc(rec_9900); arquivo.Add('|9900|E210|'+inttostr(rec_e210)+'|');
  end;
  inc(rec_9900); arquivo.Add('|9900|E500|'+inttostr(rec_e500)+'|');
  inc(rec_9900); arquivo.Add('|9900|E510|'+inttostr(rec_e510)+'|');
  inc(rec_9900); arquivo.Add('|9900|E520|'+inttostr(rec_e520)+'|');
  inc(rec_9900); arquivo.Add('|9900|E990|'+inttostr(rec_e990)+'|');
  if FormatDateTime(_yyyyddmm, dti) >= '20110101' then
  begin
    inc(rec_9900); arquivo.Add('|9900|G001|'+inttostr(rec_g001)+'|');
    if Rec_G110 > 0 then
    begin
      inc(rec_9900); arquivo.Add('|9900|G110|'+inttostr(rec_g110)+'|');
    end;
    if rec_g125 > 0 then
    begin
      inc(rec_9900); arquivo.Add('|9900|G125|'+inttostr(rec_g125)+'|');
    end;
    if rec_g126 > 0 then
    begin
      inc(rec_9900); arquivo.Add('|9900|G126|'+inttostr(rec_g126)+'|');
    end;
    if rec_g130 > 0 then
    begin
      inc(rec_9900); arquivo.Add('|9900|G130|'+inttostr(rec_g130)+'|');
    end;
    if rec_g140 > 0 then
    begin
      inc(rec_9900); arquivo.Add('|9900|G140|'+inttostr(rec_g140)+'|');
    end;
    inc(rec_9900); arquivo.Add('|9900|G990|'+inttostr(rec_g990)+'|');
  end;
  inc(rec_9900); arquivo.Add('|9900|H001|'+inttostr(rec_h001)+'|');
  if rec_h005 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|H005|'+inttostr(rec_h005)+'|');
  end;
  if rec_h010 > 0 then
  begin
    inc(rec_9900); arquivo.Add('|9900|H010|'+inttostr(rec_h010)+'|');
  end;
  inc(rec_9900); arquivo.Add('|9900|H990|'+inttostr(rec_h990)+'|');
  inc(rec_9900); arquivo.Add('|9900|K001|'+inttostr(rec_k001)+'|');
  inc(rec_9900); arquivo.Add('|9900|K990|'+inttostr(rec_k990)+'|');
  inc(rec_9900); arquivo.Add('|9900|9001|'+inttostr(rec_9001)+'|');
  inc(rec_9900); arquivo.Add('|9900|9990|1|');
  inc(rec_9900); arquivo.Add('|9900|9999|1|');
  inc(rec_9900); arquivo.Add('|9900|9900|'+inttostr(rec_9900)+'|');
end;

procedure TLivroFiscalDigital.Registro9990;
begin
  inc(rec_9990);
  arquivo.add('|9990|'+inttostr(rec_9001+rec_9900+rec_9990+1)+'|');
end;

procedure TLivroFiscalDigital.Registro9999;
begin
  inc(rec_9999);
  arquivo.add('|9999|'+inttostr(rec_0000+rec_0001+rec_0005+rec_0100+rec_0150+rec_0190+rec_0200+rec_0300+rec_0305+rec_0400+rec_0450+rec_0460+rec_0500+rec_0600+rec_0990+
                                rec_1001+rec_1010+rec_1700+rec_1710+rec_1990+
                                rec_c001+rec_c100+rec_c110+rec_c140+rec_c141+rec_c160+rec_c170+rec_c190+rec_c195+rec_c197+
                                rec_c300+rec_c310+rec_c320+rec_c321+rec_c350+rec_c370+rec_c390+
                                rec_c400+rec_c405+rec_c420+rec_c425+rec_c460+rec_c470+rec_c490+rec_c500+rec_c590+rec_c990+
                                rec_d001+rec_d100+rec_d190+rec_d500+rec_d590+rec_d990+
                                rec_e001+rec_e100+rec_e110+rec_e111+rec_e113+rec_e115+rec_e116+rec_e200+rec_e210+rec_e500+rec_e510+rec_e520+rec_e990+
                                rec_g001+Rec_G110+rec_g125+rec_g126+rec_g130+rec_g140+rec_g990+
                                rec_h001+rec_h005+rec_h010+rec_h990+
                                rec_k001+rec_k990+
                                rec_9001+rec_9990+rec_9999+rec_9900)+'|');
end;

procedure TLivroFiscalDigital.Registro1700;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create;
  try
    if dti < StrToDate('01/10/2012') then
    begin
      q.q.sql.Text   := 'select s.nusaida,se.nuserie '+
                         'from saida S '+
                         'inner join itlp1a I on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
                         'inner join serie SE on se.cdserie=s.cdserie and se.cdempresa=s.cdempresa '+
                         'where s.cdempresa='+empresa.cdempresa.tostring+' and i.cdlp1a='+cdlp1a.ToString+' AND s.NUSTDOCUMENTO=''05'' AND I.CDTPIMPOSTO=1 '+
                         'order by s.nusaida';
      q.q.Open;
      while not q.q.Eof do
      begin
        arquivo.Add('|1700|01|55|'+q.q.fieldbyname(_nuserie).asstring+'||'+q.q.fieldbyname(_nusaida).AsString+'|'+q.q.fieldbyname(_nusaida).AsString+'|1698|');
        inc(rec_1700);
        arquivo.Add('|1710|'+q.q.fieldbyname(_nusaida).AsString+'|'+q.q.fieldbyname(_nusaida).AsString+'|');
        inc(rec_1710);
        q.q.Next;
      end;
    end
    else
    begin
      q.q.sql.text   := 'select i.nusaidainicial,i.nusaidafinal,i.nuprotocolo,se.nuserie '+
                         'from saidainutilizacao i '+
                         'inner join saida s on s.cdsaida=i.cdsaidainicial and i.cdempresa=s.cdempresa '+
                         'inner join serie se on se.cdserie=s.cdserie and s.cdempresa=se.cdempresa '+
                         'inner join itlp1a p on p.cdsaida=s.cdsaida and p.cdempresa=s.cdempresa '+
                         'where i.cdempresa='+empresa.cdempresa.tostring+' and p.CDTPIMPOSTO=1 and p.cdlp1a='+cdlp1a.ToString;
      q.q.Open;
      while not q.q.Eof do
      begin
        arquivo.Add('|1700|01|55|'+q.q.fieldbyname(_nuserie).asstring+'||'+
                                   q.q.fieldbyname(_nusaida+_inicial).AsString+'|'+
                                   q.q.fieldbyname(_nusaida+_final).AsString+'|'+
                                   q.q.fieldbyname(_nuprotocolo).AsString+'|');
        inc(rec_1700);
        arquivo.Add('|1710|'+q.q.fieldbyname(_nusaida+_inicial).AsString+'|'+
                             q.q.fieldbyname(_nusaida+_final).AsString+'|');
        inc(rec_1710);
        q.q.Next;
      end;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroG001;
  function getmovimento:string;
  begin
    if RetornaSQLInteger('select count(*) from lp1aciapi where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+cdlp1a.ToString) > 0 then
    begin
      result := _0
    end
    else
    begin
      result := _1;
    end;
  end;
begin
  if FormatDateTime(_yyyyddmm, dti) >= '20110101' then
  begin
    inc(rec_g001);
    arquivo.Add('|G001|'+getmovimento+'|');
    if getmovimento = _0 then
    begin
      RegistroG110;
    end;
  end;
end;

procedure TLivroFiscalDigital.RegistroG990;
begin
  if FormatDateTime(_yyyyddmm, dti) >= '20110101' then
  begin
    inc(rec_g990);
    arquivo.add('|G990|'+inttostr(rec_G001+Rec_G110+rec_g125+rec_g126+rec_g130+rec_g140+rec_g990)+'|');
  end;
end;

function TLivroFiscalDigital.gettipo(cdctetptomador:integer):string;
begin
  case cdctetptomador of
    1 : result := _e;
    2 : result := _x;
    3 : result := _r;
    4 : result := _d;
    5 : result := _o;
  end;
end;

function TLivroFiscalDigital.get_participante(c: TClasseQuery; tbl:string=''): string;
var
  tipo : string;
begin
  tipo := '';
  if tbl = _cte then
  begin
    tipo := gettipo(c.q.fieldbyname(_cdctetptomador).AsInteger);
    if tipo = '' then
    begin
      result := '';
      exit;
    end;
  end;
  if c.q.FieldByName(_nucnpj+tipo).asstring <> '' then
  begin
    result := removercaracteres(c.q.fieldbyname(_nucnpj+tipo).AsString)
  end
  else if c.q.FieldByName(_nucpf+tipo).asstring  <> '' then
  begin
    result := removercaracteres(c.q.fieldbyname(_nucpf+tipo).AsString)
  end
  else
  begin
    result := '';
  end;
end;

procedure TLivroFiscalDigital.RegistroE200;
begin
  if not empresa.bosubstituto then
  begin
    Exit;
  end;
  arquivo.Add('|E200|'+empresa.endereco.sguf+'|'+getdtpura(dti)+'|'+getdtpura(dtf)+'|');
  inc(rec_e200);
  if vlbcicmsst = 0 then
  begin
    inc(rec_e210);
    arquivo.Add('|E210|1|0|0|0|0|0|0|0|0|0|0|0|0|0|');
    Exit;
  end;
  inc(rec_e210);
  arquivo.Add('|E210|0|0|0|0|0|0|'+qstring.set_zero(vlicmsst)+'|0|0|'+qstring.set_zero(vlicmsst)+'|0|'+qstring.set_zero(vlicmsst)+'|0|0|');
end;

procedure TLivroFiscalDigital.RegistroC400;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('select m.nmmodelo,t.nucaixa,t.nuserie,s.nudocfiscalicms '+
                           'from tpsaida T '+
                           'left join serie s on s.cdserie=t.cdserie and t.cdempresa=s.cdempresa '+
                           'left join reg60m r on r.nuserie=t.nuserie and r.cdempresa=t.cdempresa '+
                           'left join modelo m on m.cdmodelo=t.cdmodelo and m.cdempresa=t.cdempresa '+
                           'where t.cdempresa='+empresa.cdempresa.tostring+' '+
                           'and r.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and T.cdmodelo is not null '+
                           'group by m.nmmodelo,t.nucaixa,t.nuserie,s.nudocfiscalicms');
  try
    while not q.q.Eof do
    begin
      Inc(rec_c400);
      arquivo.Add('|C400|'+q.q.fieldbyname(_nudocfiscalicms).AsString+'|'+
                           q.q.fieldbyname(_nmmodelo).asstring+'|'+
                           q.q.fieldbyname(_nuserie).asstring+'|'+
                           q.q.fieldbyname(_nucaixa).asstring+'|');
      RegistroC405(q.q.fieldbyname(_nuserie).asstring);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC405(nuserie: string);
var
  q : TClasseQuery;
  procedure verificar_emissao_cupom;
  var
    q2 : TClasseQuery;
  begin
    q2 := TClasseQuery.Create('select s.dtemissao '+
                              'from saida s '+
                              'left join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
                              'where s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and t.nuserie='+quotedstr(nuserie)+' '+
                              'group by s.dtemissao '+
                              'ORDER BY DTEMISSAO');
    try
      while not q2.q.Eof do
      begin
        if not q.q.Locate(_dtemissao, q2.q.fieldbyname(_dtemissao).AsString, []) then
        begin
          mensagem.Add('Existem cupom emitido para o dia '+FormatDateTime(_dd_mm_yyyy, q2.q.fieldbyname(_dtemissao).AsDateTime)+' mas não existe registro 60M. Insira o registro 60M que está faltando no livro fiscal.');
        end;
        q2.q.Next;
      end;
      q.q.First;
    finally
      freeandnil(q2);
    end;
  end;
begin
  q := TClasseQuery.Create('select dtemissao,nucro,nureducaoz,coofinal,vlequipamento,vlbruta '+
                           'from reg60m '+
                           'where cdempresa='+empresa.cdempresa.tostring+' and dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and nuserie='+quotedstr(nuserie)+' '+
                           'ORDER BY DTEMISSAO');
  try
    verificar_emissao_cupom;
    while not q.q.Eof do
    begin
      Inc(rec_c405);
      arquivo.Add('|C405|'+getdtpura(q.q.fieldbyname(_dtemissao).AsDateTime)+'|'+
                           q.q.fieldbyname(_nucro).asstring+'|'+
                           q.q.fieldbyname(_nureducaoz).asstring+'|'+
                           q.q.fieldbyname(_coofinal).asstring+'|'+
                           q.q.fieldbyname(_vlequipamento).asstring+'|'+
                           q.q.fieldbyname(_vlbruta).asstring+'|');
      if q.q.fieldbyname(_vlbruta).AsCurrency > 0 then
      begin
        registroc420(nuserie, q.q.FieldByName(_dtemissao).AsDateTime);
      end;
      if empresa.livro.cdind_perfil = _A then
      begin
        RegistroC460(nuserie, q.q.FieldByName(_dtemissao).AsDateTime);
      end;
      RegistroC490(nuserie, q.q.FieldByName(_dtemissao).AsDateTime);
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC420(nuserie: string; dtemissao: TDateTime);
var
  q : TClasseQuery;
  nr_tot : Integer;
  staliquota_ : string;
  function nr_tots:string;
  begin
     if staliquota_ = _F then
     begin
       result := ''
     end
     else
     begin
       result := inttostr(nr_tot);
     end;
  end;
  function COD_TOT_PAR(staliquota:string):string;
  begin
    if staliquota = _F then
    begin
      result := _F+inttostr(nr_tot)
    end
    else if staliquota = _I then
    begin
      result := _I+inttostr(nr_tot)
    end
    else if staliquota = '18,0' then
    begin
      result := FormatarTextoEsquerda(inttostr(nr_tot), 2, _0)+'T1800'
    end
    else if staliquota = '1800' then
    begin
      result := FormatarTextoEsquerda(inttostr(nr_tot), 2, _0)+'T1800'
    end
    else if staliquota = '1200' then
    begin
      result := FormatarTextoEsquerda(inttostr(nr_tot), 2, _0)+'T1200'
    end
    else if staliquota = '12,0' then
    begin
      result := FormatarTextoEsquerda(inttostr(nr_tot), 2, _0)+'T1200'
    end
    else if staliquota = 'CANC' then
    begin
      result := 'CAN-T'
    end
    else if staliquota = 'DESC' then
    begin
      result := 'DT';//+inttostr(nr_tot);
    end;
  end;
begin
  q := TClasseQuery.Create('select vltotalparcial,staliquota from reg60a where cdempresa='+empresa.cdempresa.tostring+' and nuserie='+quotedstr(nuserie)+' and dtemissao='+getdtbanco(dtemissao));
  try
    nr_tot := 0;
    while not q.q.Eof do
    begin
      inc(rec_c420);
      staliquota_ := Trim(q.q.fieldbyname(_staliquota).asstring);
      if (staliquota_ <> 'CANC') and (staliquota_ <> 'DESC') then
      begin
        if staliquota_ = 'I' then
        begin
          Inc(nr_tot);
          arquivo.Add('|C420|'+COD_TOT_PAR(staliquota_)+'|'+q.q.fieldbyname(_vltotalparcial).asstring+'|||');
        end
        else
        begin
          Inc(nr_tot);
          arquivo.Add('|C420|'+COD_TOT_PAR(staliquota_)+'|'+q.q.fieldbyname(_vltotalparcial).asstring+'|'+nr_tots+'||');
        end;
        if empresa.livro.cdind_perfil <> _A then
        begin
          RegistroC425(nuserie, staliquota_, dtemissao, q.q.fieldbyname(_vltotalparcial).AsCurrency);
        end;
      end
      else if (staliquota_ = 'DESC') or (staliquota_ <> 'CANC') then
      begin
        arquivo.Add('|C420|'+COD_TOT_PAR(staliquota_)+'|'+q.q.fieldbyname(_vltotalparcial).asstring+'|||')
      end
      else
      begin
        arquivo.Add('|C420|'+COD_TOT_PAR(staliquota_)+'|'+q.q.fieldbyname(_vltotalparcial).asstring+'|||');
      end;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC425(nuserie, staliquota: string; dtemissao: TDateTime; vltotal:currency);
  function alicms:string;
  begin
    if staliquota = _F then
    begin
      result := '((i.alicms is null) or (i.alicms=0)) and ((i.nusticms = ''60'') or (i.nusticms = ''500''))'
    end
    else if staliquota = _i then
    begin
      result := '((i.alicms=0) or (i.alicms is null)) AND ((I.NUSTICMS=''00'') or (I.NUSTICMS=''102'') or (I.NUSTICMS=''40'') or (I.NUSTICMS=''50''))'
    end
    else if (staliquota = '18,0') or (staliquota = '1800') then
    begin
      result := 'i.alicms=18'
    end
    else if (staliquota = '1200') or (staliquota = '12,0') then
    begin
      result := 'i.alicms=12'
    end
    else
    begin
      mensagem.add('Alíquota '+staliquota+' desconhecida no sistema.');
    end;
  end;
var
  q : TClasseQuery;
  valor : currency;
begin
  if alicms = '' then
  begin
    exit;
  end;
  q := TClasseQuery.Create('select i.cdproduto'+
                                 ',p.nmproduto'+
                                 ',p.cdunidade'+
                                 ',sum(i.qtitem) qtitem'+
                                 ',sum(i.vltotal-coalesce(i.vldesconto, 0)+coalesce(i.vloutdespesa, 0)) vltotal '+
                           'from saida s '+
                           'left join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
                           'left join itsaida i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa '+
                           'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                           'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nustdocumento<>''02'' and s.dtemissao='+getdtbanco(dtemissao)+' and t.nuserie='+quotedstr(nuserie)+' and '+alicms+' '+
                           'group by i.cdproduto,p.nmproduto,p.cdunidade');
  try
    valor := 0;
    while not q.q.Eof do
    begin
      valor := valor + q.q.fieldbyname(_vltotal).AsCurrency;
      Inc(rec_c425);
      arquivo.Add('|C425|'+q.q.fieldbyname(_cdproduto).AsString+'|'+
                           q.q.fieldbyname(_qtitem).AsString+'|'+
                           q.q.fieldbyname(_cdunidade).AsString+'|'+
                           q.q.fieldbyname(_vltotal).asstring+'|||');
      q.q.Next;
    end;
    if (valor <> vltotal) and ((vltotal - valor > 1) or (valor - vltotal > 1)) then
    begin
      mensagem.Add('Há uma diferença entre o valor do registro 60A ('+FormatFloat(__moeda, vltotal)+') e a soma do valor dos produtos ('+formatfloat(__moeda, valor)+') para a alíquota '+staliquota+' no dia '+FormatDateTime(_dd_mm_yyyy, dtemissao)+'.');
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC490(nuserie: string; dtemissao: TDateTime);
var
  q : TClasseQuery;
  texto : string;
begin
  q := TClasseQuery.Create('select p.cdorigem,i.nusticms,i.cdcfop,i.alicms,sum(i.vltotal-coalesce(i.vldesconto,0)+coalesce(i.vloutdespesa,0)) vltotal,sum(i.vlbaseicms) vlbaseicms,sum(i.vlicms) vlicms '+
                           'from saida s '+
                           'INNER join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
                           'INNER join itsaida i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa '+
                           'INNER join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                           'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nustdocumento <> ''02'' and s.dtemissao='+getdtbanco(dtemissao)+' and t.nuserie='+quotedstr(nuserie)+' '+
                           'group by p.cdorigem,i.nusticms,i.cdcfop,i.alicms');
  try
    while not q.q.Eof do
    begin
      if q.q.fieldbyname(_cdorigem).AsString = '' then
      begin
        mensagem.Add('Código de Oridem não está preenchido na data '+GetDtAbrev(dtemissao)+' para o cupom fiscal.');
      end;
      Inc(rec_c490);
      texto := '|C490|';
      if Length(q.q.fieldbyname(_nusticms).AsString) = 2 then
      begin
        texto := texto + q.q.fieldbyname(_cdorigem).AsString;
      end;
      texto := texto + q.q.fieldbyname(_nusticms).AsString+'|'+
                       q.q.fieldbyname(_cdcfop).AsString+'|'+
                       q.q.fieldbyname(_alicms).AsString+'|'+
                       q.q.fieldbyname(_vltotal).asstring+'|'+
                       qstring.set_zero(q.q.fieldbyname(_vlbaseicms).AsCurrency, _0)+'|'+
                       qstring.set_zero(q.q.fieldbyname(_vlicms).AsCurrency, _0)+'||';
      arquivo.Add(texto);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroG110;
  function getsaldoanterior:string;
  begin
    result := qstring.set_zero(RetornaSQLCurrency('select sum(VLICMS+VLICMSSUBTRIB+VLICMSFRETE+VLICMSDIFALIQUOTA) from LP1ACIAPI where cdempresa='+empresa.cdempresa.tostring+' and CDTPCIAPI=1 AND cdlp1a='+cdlp1a.ToString), _0);
  end;
  function getsumparcelas:string;
  begin
    result := qstring.set_zero(RetornaSQLCurrency('select sum(vlajuste) from lp1aciapi where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+cdlp1a.ToString), _0);
  end;
  function getvltributada:string;
  begin
    result := qstring.set_zero(RetornaSQLCurrency('select VLTRIBUTADACIAPI from lp1a where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+cdlp1a.ToString), _0);
  end;
  function getvlsaida:string;
  begin
    result := qstring.set_zero(RetornaSQLCurrency('select VLSAIDACIAPI from lp1a where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+cdlp1a.ToString), _0);
  end;
  function getprcoeficiente:string;
  begin
    result := qstring.set_zero(RetornaSQLCurrency('select PRCOEFICIENTECIAPI from lp1a where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+cdlp1a.ToString), _0);
  end;
  function getvlajuste:string;
  begin
    result := qstring.set_zero(RetornaSQLCurrency('select sum(vlajuste) from lp1aciapi where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+cdlp1a.ToString), _0);
  end;
begin
  inc(Rec_G110);
  arquivo.Add('|G110|'+getdtpura(dti)+'|'+getdtpura(dtf)+'|'+
              getsaldoanterior+'|'+
              getsumparcelas+'|'+
              getvltributada+'|'+
              getvlsaida+'|'+
              getprcoeficiente+'|'+
              getvlajuste+'|0|');

//04 SALDO_IN_ICMS  Saldo inicial de ICMS do CIAP, composto por ICMS de bens que entraram anteriormente ao período de apuração (somatório dos campos 05 a 08 dos registros G125) N - 02 O
//05 SOM_PARC       Somatório das parcelas de ICMS passível de apropriação de cada bem (campo 10 do G125) N - 02 O
//06 VL_TRIB_EXP    Valor do somatório das saídas tributadas e saídas para exportação N - 02 O
//07 VL_TOTAL       Valor total de saídas N - 02 O
//08 IND_PER_SAI    Índice de participação do valor do somatório das saídas tributadas e saídas para exportação no valor total de saídas (Campo 06 dividido pelo campo 07) N - 08 O
//09 ICMS_APROP     Valor de ICMS a ser apropriado na apuração do ICMS, correspondente á multiplicação do campo 05 pelo campo 08. N - 02 O
//10 SOM_ICMS_OC    Valor de outros créditos a ser apropriado na Apuração do ICMS, correspondente ao somatório do campo 09 do registro G126. N - 02 O
  RegistroG125;
end;

procedure TLivroFiscalDigital.RegistroG125;
var
  q : TClasseQuery;
  function cdparticipante:string;
  begin
    if removercaracteres(q.q.FieldByName(_nucnpj+_f).AsString) <> '' then
    begin
      result := removercaracteres(q.q.FieldByName(_nucnpj+_f).AsString)
    end
    else if removercaracteres(q.q.FieldByName(_nucnpj+_c).AsString) <> '' then
    begin
      result := removercaracteres(q.q.FieldByName(_nucnpj+_c).AsString)
    end
    else if removercaracteres(q.q.FieldByName(_nucpf +_c).AsString) <> '' then
    begin
      result := removercaracteres(q.q.FieldByName(_nucpf +_c).AsString)
    end
    else if removercaracteres(q.q.FieldByName(_nucpf +_f).AsString) <> '' then
    begin
      result := removercaracteres(q.q.FieldByName(_nucpf +_f).AsString);
    end;
  end;
begin
  q := TClasseQuery.Create('select l.cdproduto'+
                             ',l.dtemissao'+
                             ',t.sgtpciapi'+
                             ',l.vlicmssubtrib'+
                             ',l.vlicmsfrete'+
                             ',l.vlicmsdifaliquota'+
                             ',l.nuitem'+
                             ',l.nuparcela'+
                             ',l.nudocumento'+
                             ',L.NUSERIE'+
                             ',l.nuchavenfe'+
                             ',F.NUCNPJ NUCNPJF'+
                             ',c.NUCNPJ NUCNPJC'+
                             ',F.NUCPF NUCPFF'+
                             ',c.NUCPF NUCPFC'+
                             ',L.CDINDICADOREMITENTE'+
                             ',L.NUDOCFISCALICMS'+
                             ',l.vlajuste'+
                             ',l.vlicms '+
                       'from lp1aciapi l '+
                       'left join tpciapi t on l.cdtpciapi=t.cdtpciapi '+
                       'left join cliente c on c.cdcliente=l.cdcliente and c.cdempresa=l.cdempresa '+
                       'left join fornecedor f on f.cdfornecedor=l.cdfornecedor and f.cdempresa=l.cdempresa '+
                       'where l.cdempresa='+empresa.cdempresa.tostring+' and l.cdlp1a='+cdlp1a.ToString);
  try
    while not q.q.Eof do
    begin
      Inc(rec_g125);
      arquivo.Add('|G125|'+
                  q.q.fieldbyname(_cdproduto).AsString+'|'+
                  getdtpura(q.q.fieldbyname(_dtemissao).AsDateTime)+'|'+
                  q.q.fieldbyname(_sgtpciapi).asstring+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlicms).AsCurrency, _0)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlicmssubtrib).AsCurrency, _0)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlicms+_frete).AsCurrency, _0)+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlicms+_dif+_aliquota).AsCurrency, _0)+'|'+
                  q.q.fieldbyname(_nuparcela).AsString+'|'+
                  qstring.set_zero(q.q.fieldbyname(_vlajuste).AsCurrency, _0)+'|');
      Inc(rec_g130);
      arquivo.Add('|G130|'+
                  q.q.fieldbyname(_cd+_indicador+_emitente).AsString+'|'+
                  cdparticipante+'|'+
                  q.q.fieldbyname(_nudocfiscalicms).AsString+'|'+
                  q.q.fieldbyname(_nuserie).AsString+'|'+
                  q.q.fieldbyname(_nudocumento).AsString+'|'+
                  q.q.fieldbyname(_nuchavenfe).AsString+'|'+
                  getdtpura(q.q.fieldbyname(_dtemissao).AsDateTime)+'|');
      inc(rec_g140);
      arquivo.Add('|G140|'+
                  q.q.fieldbyname(_nuitem).AsString+'|'+
                  q.q.fieldbyname(_cdproduto).AsString+'|');
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC350;
var
  q : TClasseQuery;
begin
  vlbcicmsst := 0;
  vlicmsst   := 0;
  q := TClasseQuery.create('select s.nusaida'+
                                ',se.nuserie'+
                                ',c.nucnpj'+
                                ',c.nucpf'+
                                ',s.dtemissao'+
                                ',s.vltotal'+
                                ',s.vlproduto'+
                                ',s.vldesconto'+
                                ',s.vlpis'+
                                ',s.vlcofins'+
                                ',s.cdsaida codigo '+
                           'from saida s '+
                           'inner join itlp1a i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
                           'inner join cliente c on c.cdcliente=s.cdcliente and c.cdempresa=s.cdempresa '+
                           'inner join serie SE on se.cdserie=s.cdserie and se.cdempresa=s.cdempresa '+
                           'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nudocfiscalicms=''02'' and i.cdtpimposto=1 and i.cdlp1a='+cdlp1a.ToString+' '+
                           'group by s.nusaida'+
                                  ',se.nuserie'+
                                  ',c.nucnpj'+
                                  ',c.nucpf'+
                                  ',s.dtemissao'+
                                  ',s.vltotal'+
                                  ',s.vlproduto'+
                                  ',s.vldesconto'+
                                  ',s.vlpis'+
                                  ',s.vlcofins'+
                                  ',s.cdsaida');
  try
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      frmprogressbar.pnl.Caption := 'Registro '+inttostr(q.q.recno)+' de '+inttostr(q.q.recordcount);
      Application.ProcessMessages;
      arquivo.Add('|'+
               {REG}'C350|'+
               {SER          - C003}'D|'+//c.q.fieldbyname(_nuserie).asstring        +'|'+
               {SUB SER      - C003}'|'+
               {NUM_DOC      - N006}q.q.fieldbyname(_nusaida).asstring        +'|'+
               {DT_DOC       - N008}getdtpura(q.q.fieldbyname(_dtemissao).asdatetime)+'|'+
               {CNPJ_CPF     - C014}get_participante(q)+'|'+
               {VL_MERC      - N   }floattostr(q.q.fieldbyname(_vlproduto).ascurrency)+'|'+
               {VL_DOC       - N   }q.q.fieldbyname(_vltotal).asstring   +'|'+
               {VL_DESC      - N   }q.q.fieldbyname(_vldesconto).AsString+'|'+
               {VL_PIS       - N}q.q.fieldbyname(_vlpis).asstring            +'|'+
               {VL_COFINS    - N}q.q.fieldbyname(_vlcofins).asstring         +'|'+
{12 COD_CTA Código da conta analítica contábil debitada/creditada C - - OC} '|');
      inc(rec_c350);
      RegistroC370(q.q.fieldbyname(_codigo).asstring);
      RegistroC390(q.q.fieldbyname(_codigo).asstring);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC370(cdsaida:string);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('select i.cdproduto'+
                                 ',u.cdunidade'+
                                 ',i.qtitem'+
                                 ',i.vltotal'+
                                 ',i.vldesconto '+
                           'from saida s '+
                           'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
                           'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                           'left join unidade u on u.cdunidade=p.cdunidade and p.cdempresa=u.cdempresa '+
                           'where s.cdempresa='+empresa.cdempresa.tostring+' and i.cdsaida='+cdsaida+' '+
                           'order by i.cdsaida,i.cdproduto');
  try
    while not q.q.eof do
    begin
      arquivo.Add('|C370|'+
                  inttostr(q.q.RecNo)                  +'|'+
                  q.q.fieldbyname(_cdproduto).asstring +'|'+
                  q.q.fieldbyname(_qtitem).asstring    +'|'+
                  q.q.fieldbyname(_cdunidade).asstring +'|'+
                  set_zero(q, _vltotal)+'|'+
                  set_zero(q, _vldesconto, _00)+'|');
      inc(rec_c370);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC390(cdsaida:string);
var
  q : TClasseQuery;
  function nusticms:string;
  begin
    if Length(q.q.fieldbyname(_nusticms).asstring) = 3 then
    begin
      result := q.q.fieldbyname(_nusticms).asstring
    end
    else
    begin
      result := q.q.fieldbyname(_cdorigem).asstring+q.q.fieldbyname(_nusticms).asstring;
    end;
  end;
begin
  q := TClasseQuery.create('select i.cdsaida'+
                                 ',p.cdorigem'+
                                 ',i.nusticms'+
                                 ',i.cdcfop'+
                                 ',i.alicms'+
                                 ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlicmssubtrib,0)+coalesce(i.vlseguro,0)-'+
                                      'coalesce(i.vldesconto,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal '+
                                 ',sum(i.vlbaseicms) vlbaseicms'+
                                 ',sum(i.vlicms) vlicms'+
                                 ',sum(i.vlbaseicmsred) vlbaseicmsred '+
                           'from itsaida i '+
                           'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                           'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdsaida='+cdsaida+' '+
                           'group by i.cdsaida,p.cdorigem,i.nusticms,i.cdcfop,i.alicms');
  try
    while not q.q.eof do
    begin
      if q.q.fieldbyname(_cdorigem).asstring = '' then
      begin
        mensagem.add('A nota '+nomedocodigo(_saida, q.q.fieldbyname(_cdsaida).asstring, _nusaida)+' possui produto(s) com a origem não preenchido.');
      end;
      arquivo.Add('|C390|'+
                  nusticms+'|'+
                  q.q.fieldbyname(_cdcfop).asstring+'|'+
                  q.q.fieldbyname(_alicms).asstring+'|'+
                  set_zero(q, _vltotal)   +'|'+
                  set_zero(q, _vlbaseicms)+'|'+
                  set_zero(q, _vlicms)    +'|'+
                  set_zero(q, _vlbaseicmsred) +'||');
      inc(rec_c390);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC300;
var
  q : TClasseQuery;
  linha :string;
begin
  vlbcicmsst := 0;
  vlicmsst   := 0;
  q          := TClasseQuery.create('select s.cdserie'+
                                          ',se.nuserie'+
                                          ',s.dtemissao'+
                                          ',min(s.nusaida) nusaidai'+
                                          ',max(s.nusaida) nusaidaF'+
                                          ',sum(s.vltotal) vltotal'+
                                          ',sum(s.vlpis) vlpis'+
                                          ',sum(s.vlcofins) vlcofins '+
                                    'from saida s '+
                                    'INNER JOIN SERIE SE ON SE.CDSERIE=s.CDSERIE and s.cdempresa=se.cdempresa '+
                                    'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nudocfiscalicms=''02'' and s.DTEMISSAO BETWEEN '+GetDtBanco(dti)+' and '+getdtbanco(dtf)+' '+
                                    'group by s.cdserie,se.nuserie,s.dtemissao');
  try
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      frmprogressbar.pnl.Caption := 'Registro '+inttostr(q.q.recno)+' de '+inttostr(q.q.recordcount);
      Application.ProcessMessages;
      linha := '|C300|02|'+
               {SER          - C003}q.q.fieldbyname(_nuserie).asstring+'|'+//c.q.fieldbyname(_nuserie).asstring+'|'+
               {SUB SER      - C003}'|'+
               {NUM_DOC      - N006}q.q.fieldbyname(_nusaida+_i).asstring        +'|'+
               {NUM_DOC      - N006}q.q.fieldbyname(_nusaida+_f).asstring        +'|'+
               {DT_DOC       - N008}getdtpura(q.q.fieldbyname(_dtemissao).asdatetime)+'|'+
               {VL_DOC       - N   }q.q.fieldbyname(_vltotal).asstring   +'|'+
               {VL_PIS       - N}   q.q.fieldbyname(_vlpis).asstring            +'|'+
               {VL_COFINS    - N}   q.q.fieldbyname(_vlcofins).asstring         +'||';
      arquivo.Add(linha);
      inc(rec_c300);
      RegistroC310(q.q.fieldbyname(_cdserie).asstring, q.q.fieldbyname(_dtemissao).asdatetime);
      RegistroC320(q.q.fieldbyname(_cdserie).asstring, q.q.fieldbyname(_dtemissao).asdatetime);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC310(cdserie:string; dtemissao:tdatetime);
var
  q : TClasseQuery;
begin
  vlbcicmsst := 0;
  vlicmsst := 0;
  q := TClasseQuery.create('select nusaida from saida where cdempresa='+empresa.cdempresa.tostring+' and cdserie='+cdserie+' and dtemissao='+GetDtBanco(dtemissao)+' and nudocfiscalicms=''02'' and nustdocumento=''02''');
  try
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      frmprogressbar.pnl.Caption := 'Registro '+inttostr(q.q.recno)+' de '+inttostr(q.q.recordcount);
      Application.ProcessMessages;
      arquivo.Add('|C310|'+q.q.fieldbyname(_nusaida).asstring+'|');
      inc(rec_c310);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC320(cdserie:string; dtemissao: TDatetime);
var
  q : TClasseQuery;
  linha : string;
  function nusticms:string;
  begin
    if Length(q.q.fieldbyname(_nusticms).asstring) = 3 then
    begin
      result := q.q.fieldbyname(_nusticms).asstring
    end
    else
    begin
      result := q.q.fieldbyname(_cdorigem).asstring+q.q.fieldbyname(_nusticms).asstring;
    end;
  end;
begin
  q := TClasseQuery.create('select p.cdorigem'+
                                 ',i.nusticms'+
                                 ',i.cdcfop'+
                                 ',i.alicms'+
                                 ',sum(coalesce(i.vltotal,0)+coalesce(i.vlfrete,0)+coalesce(i.vlicmssubtrib,0)+coalesce(i.vlseguro,0)-'+
                                      'coalesce(i.vldesconto,0)+coalesce(i.vloutdespesa,0)+coalesce(i.vlipi,0)) vltotal '+
                                 ',sum(i.vlbaseicms) vlbaseicms'+
                                 ',sum(i.vlicms) vlicms'+
                                 ',sum(i.vlbaseicmsred) vlbaseicmsred '+
                           'from saida s '+
                           'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
                           'left join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                           'where s.cdempresa='+empresa.cdempresa.tostring+' and s.NUDOCFISCALICMS=''02'' AND s.dtemissao='+GetDtBanco(dtemissao)+' and s.cdserie='+cdserie+' '+
                           'group by p.cdorigem,i.nusticms,i.cdcfop,i.alicms');
  try
    while not q.q.eof do
    begin
      if q.q.fieldbyname(_cdorigem).asstring = '' then
      begin
        mensagem.add('Existe Nota Série D na data '+FormatDateTime(_dd_mm_yyyy, dtemissao)+' possui produto(s) com a origem não preenchido.');
        break;
      end;
      if q.q.fieldbyname(_cdcfop).AsString = '' then
      begin
        mensagem.add('Existe Nota Série D na data '+FormatDateTime(_dd_mm_yyyy, dtemissao)+' possui produto(s) com a CFOP não preenchido.');
        break;
      end;
      linha := '|C320|'+
                nusticms+'|'+
                q.q.fieldbyname(_cdcfop).asstring+'|'+
                q.q.fieldbyname(_alicms).asstring+'|'+
                set_zero(q, _vltotal)   +'|'+
                set_zero(q, _vlbaseicms)+'|'+
                set_zero(q, _vlicms)    +'|'+
                set_zero(q, _vlbaseicmsred) +'||';
      arquivo.Add(linha);
      inc(rec_c320);
      registroc321(cdserie, dtemissao, q.q.fieldbyname(_alicms).AsFloat, q.q.fieldbyname(_cdorigem).asstring, q.q.fieldbyname(_nusticms).asstring, q.q.fieldbyname(_cdcfop).asstring);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC321(cdserie:string; dtemissao:TDatetime; alicms:double; cdorigem, nusticms, cdcfop:string);
  function MakeSQL:string;
  begin
    result := 'select i.cdproduto'+
                    ',sum(i.qtitem) qtitem'+
                    ',sum(i.vltotal-COALESCE(I.VLDESCONTO,0)) vltotal'+
                    ',sum(i.vlbaseicms) vlbaseicms'+
                    ',sum(i.vlicms) vlicms'+
                    ',sum(i.vlpis) vlpis'+
                    ',sum(i.vlcofins) vlcofins'+
                    ',sum(i.vldesconto) vldesconto '+
               'from saida s '+
               'inner join itsaida i on i.cdsaida=s.cdsaida and s.cdempresa=i.cdempresa '+
               'where s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao='+GetDtBanco(dtemissao)+' and i.cdcfop='+cdcfop+' and s.cdserie='+cdserie+' and i.nusticms='+quotedstr(nusticms)+' ';
    if alicms = 0 then
    begin
      result := result + 'and ((i.alicms='+getcurrencys(alicms)+') or (i.alicms is null)) '
    end
    else
    begin
      result := result + 'and i.alicms='+getcurrencys(alicms)+' ';
    end;
    result := result +
    'group by i.cdproduto';
  end;
var
  q : TClasseQuery;
  linha : string;
begin
  if nusticms = '' then
  begin
    mensagem.Add('Situação tributária do ICMS não preenchida para Nota Fiscal modelo 02 da data '+formatdatetime(_dd_mm_yyyy, dtemissao)+'.');
    exit;
  end;
  q := TClasseQuery.Create(makesql);
  try
    while not q.q.eof do
    begin
      if NomedoCodigo(_produto, q.q.fieldbyname(_cdproduto).asstring, _cdorigem) <> cdorigem then
      begin
        q.q.next;
        Continue;
      end;
      linha := '|C321|'+
                q.q.fieldbyname(_cdproduto).asstring +'|'+
                q.q.fieldbyname(_qtitem).asstring    +'|'+
                NomedoCodigo(_produto, q.q.fieldbyname(_cdproduto).asstring, _cdunidade)+'|'+
                set_zero(q, _vltotal)+'|'+
                set_zero(q, _vldesconto, _00)+'|'+
                set_zero(q, _vlbaseicms)+'|'+
                set_zero(q, _vlicms)+'|'+
                set_zero(q, _vlpis)+'|'+
                set_zero(q, _vlcofins)+'|';
      arquivo.Add(linha);
      inc(rec_c321);
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.GerarJuncao(codigo: integer; filename: string);
  procedure set_gauge(registro:string);
  begin
    tpregistro                 := registro;
    frmprogressbar.pnl.Caption := registro;
    gau.Progress               := 0;
    gau1.Progress              := gau1.Progress + 1;
    Application.ProcessMessages;
  end;
var
  texto : TStrings;
  bod500 : boolean;
  boadicionar : Boolean;
  procedure excluir_registro_d001_repetido;
  var
    i : Integer;
    n : Integer;
  begin
    n := 0;
    if boadicionar then
    begin
      for i := 0 to arquivo.Count - 1 do
      begin
        if arquivo[i] = '|D001|0|' then
        begin
          Inc(n);
          if n = 2 then
          begin
            arquivo.Delete(i);
            Break;
          end;
        end;
      end;
    end;
  end;
  procedure inserir_abaixo_d100;
  var
    i : integer;
  begin
    bod500 := false;
    for i := 0 to texto.count - 1 do
    begin
      if (copy(texto[i], 1, 6) = '|D500|') or (copy(texto[i], 1, 6) = '|D990|') then
      begin
        bod500 := true;
      end;
      if bod500 then
      begin
        arquivo.add(texto[i]);
      end;
    end;
    excluir_registro_d001_repetido;
  end;
  procedure Adicionar_participante;
  var
    x : integer;
  begin
    for X := 0 to high(participante) do
    begin
      inc(rec_0150);
      arquivo.Add('|'+
                  {REG      - Texto Fixo contendo 150        - C004}'0150|'+
                  {COD_PART - Código participante no arquivo - C060}participante[x].cod_part     +'|'+
                  {NOME     - Nome do participante           - C100}participante[x].nome         +'|'+
                  {COD_PAIS - Codigo Pais                    - N005}participante[x].cdpais       +'|'+
                  {CNPJ     -                                - N014}participante[x].cnpj         +'|'+
                  {CPF      -                                - N011}participante[x].cpf          +'|'+
                  {IE       - Inscricao Estadual             - C014}participante[x].ie           +'|'+
                  {COD_MUN  - Codigo Municipio               - N007}participante[x].cdmunicipio  +'|'+
                  {SUFRAMA  - Codigo Suframa                 - C009}participante[x].suframa      +'|'+
                  {END      - Logradouro e endereco imovel   - C060}participante[x].dsendereco   +'|'+
                  {NUM      - Numero imovel                  -   OC}participante[x].dsnumero     +'|'+
                  {COMPL    - Complemento endereco           - C060}participante[x].dscomplemento+'|'+
                  {BAIRRO   - Bairro do Imovel               - C060}participante[x].nmbairro     +'|');
    end;
  end;
  procedure inserir_entre_0150_d100;
  var
    i : integer;
    bo0190 : Boolean;
    function nao_existe_registro_d000:Boolean;
    begin
      result := (texto[i] = '|D001|1|');
    end;
    function existe_registro_d000_e_este_eh_o_ultivo_d990:Boolean;
    begin
      result := (copy(texto[i], 1, 6) = '|D500|') or (Copy(texto[i], 1, 6) = '|D990|');
      boadicionar := Result;
    end;
  begin
    bo0190 := False;
    for i := 0 to texto.Count - 1 do
    begin
      if (copy(texto[i], 1, 6) = '|0190|') and (not bo0190) then
      begin
        Adicionar_participante;
        bo0190 := true;
      end;
      if (copy(texto[i], 1, 6) = '|0990|') and (not bo0190) then
      begin
        Adicionar_participante;
        bo0190 := true;
      end;
      if Nao_existe_registro_D000 or existe_registro_d000_e_este_eh_o_ultivo_d990 then
      begin
        break;
      end;
      arquivo.Add(texto[i]);
    end;
  end;
  procedure set_rec0190;
  var
    i : integer;
    texto : Tstrings;
  begin
    rec_0150 := 0;
    rec_d990 := 0;
    rec_d100 := 0;
    rec_d190 := 0;
    rec_9900 := 0;
    rec_9990 := 0;
    for i := 0 to arquivo.Count -1 do
    begin
      if copy(arquivo[i], 1, 06) = '|0150|'      then
      begin
        inc(rec_0150);
      end;
      if copy(arquivo[i], 1, 11) = '|9900|0150|' then
      begin
        arquivo[i] := '|9900|0150|'+inttostr(rec_0150)+'|';
      end;
      if copy(arquivo[i], 1, 06) = '|D100|'      then
      begin
        inc(rec_D100);
      end;
      if copy(arquivo[i], 1, 06) = '|D190|'      then
      begin
        inc(rec_D190);
      end;
    end;
    texto := TStringList.create;
    try
      for i := 0 to arquivo.count - 1 do
      begin
        if copy(arquivo[i], 1, 11) = '|9900|D100|' then
        begin
          arquivo[i] := '|9900|D100|'+inttostr(rec_D100)+'|';
        end;
        if copy(arquivo[i], 1, 11) = '|9900|D190|' then
        begin
          arquivo[i] := '|9900|D190|'+inttostr(rec_D190)+'|';
        end;
        texto.add(arquivo[i]);
        if copy(arquivo[i], 1, 11) = '|9900|D001|' then
        begin
          if copy(arquivo[i+1], 1, 11) <> '|9900|D100|' then
          begin
            texto.add('|9900|D100|'+inttostr(rec_D100)+'|');
          end;
          if copy(arquivo[i+2], 1, 11) <> '|9900|D190|' then
          begin
            texto.add('|9900|D190|'+inttostr(rec_D190)+'|');
          end;
        end;
      end;
      arquivo.Text := texto.Text;
    finally
      freeandnil(texto);
    end;
    for i := 0 to arquivo.count - 1 do
    begin
      if copy(arquivo[i], 1, 6) = '|9900|' then
      begin
        inc(rec_9900);
      end;
      if copy(arquivo[i], 1, 2) = '|9' then
      begin
        inc(rec_9990);
      end;
    end;
    for i := 0 to arquivo.count - 1 do
    begin
      if copy(arquivo[i], 1, 11) = '|9900|9900|' then
      begin
        arquivo[i] := '|9900|9900|'+inttostr(rec_9900)+'|';
      end;
      if copy(arquivo[i], 1, 06) = '|0990|' then
      begin
        arquivo[i] := '|0990|'+inttostr(i+1)+'|';
      end;
      if copy(arquivo[i], 1, 06) = '|9999|' then
      begin
        arquivo[i] := '|9999|'+inttostr(i+1)+'|';
      end;
      if copy(arquivo[i], 1, 06) = '|9990|' then
      begin
        arquivo[i] := '|9990|'+inttostr(rec_9990)+'|';
      end;
      if copy(arquivo[i], 1, 02) = '|D' then
      begin
        inc(rec_d990);
      end;
      if copy(arquivo[i], 1, 06) = '|D990|' then
      begin
        arquivo[i] := '|D990|'+inttostr(rec_d990)+'|';
      end;
    end;
  end;
  procedure set_vlicmscte;
  var
    x, i : Integer;
    texto : string;
    arquivoaux, lista : TStrings;
    vlicms, vlsaldocredor : Currency;
  begin
    arquivoaux := tstringlist.Create;
    try
      arquivoaux .text:= arquivo.Text;
      arquivo.clear;
      for i := 0 to arquivoaux.Count - 1 do
      begin
        if copy(arquivoaux[i], 1, 6) = '|E110|' then
        begin
          lista := TStringList.Create;
          try
            texto := arquivoaux[i];
            prepararlista(lista, texto, '|');
            texto := '';
            for x := 0 to lista.Count - 1 do
            begin
              if x in [2, 11, 13] then
              begin
                vlicms   := StrToFloat(lista[x]);
                vlicms   := vlicmscte + vlicms;
                lista[x] := qstring.set_zero(vlicms);
              end;
              if x = 14 then
              begin
                vlsaldocredor := StrToFloat(lista[x]);
                if vlsaldocredor > 0 then
                begin
                  vlsaldocredor := vlsaldocredor - vlicmscte;
                end;
                lista[x] := qstring.set_zero(vlsaldocredor);
              end;
              if x > 0 then
              begin
                texto := texto + '|'+lista[x];
              end;
            end;
            arquivoaux[i] := texto;
            arquivo.Add(arquivoaux[i]);
            RegistroE116;
          finally
            freeandnil(lista);
          end;
        end
        else if copy(arquivoaux[i], 1, 6) = '|E990|' then
        begin
          lista := TStringList.Create;
          try
            texto := arquivoaux[i];
            prepararlista(lista, texto, '|');
            arquivo.Add('|E990|'+inttostr(strtoint(lista[2])+e116.Count)+'|');
          finally
            freeandnil(lista);
          end;
        end
        else if copy(arquivoaux[i], 1, 11) = '|9900|E110|' then
        begin
          arquivo.Add(arquivoaux[i]);
          if e116.Count > 0  then
          begin
            arquivo.Add( '|9900|E116|'+inttostr(e116.Count)+'|');
          end
        end
        else if copy(arquivoaux[i], 1, 11) = '|9900|9900|' then
        begin
          lista := TStringList.Create;
          try
            texto := arquivoaux[i];
            prepararlista(lista, texto, '|');
            arquivo.Add('|9900|9900|'+inttostr(strtoint(lista[3])+1)+'|');
          finally
            freeandnil(lista);
          end;
        end
        else if copy(arquivoaux[i], 1, 6) = '|9990|' then
        begin
          lista := TStringList.Create;
          try
            texto := arquivoaux[i];
            prepararlista(lista, texto, '|');
            arquivo.Add('|9990|'+inttostr(strtoint(lista[2])+1)+'|');
          finally
            freeandnil(lista);
          end;
        end
        else if copy(arquivoaux[i], 1, 6) = '|9999|' then
        begin
          lista := TStringList.Create;
          try
            texto := arquivoaux[i];
            prepararlista(lista, texto, '|');
            arquivo.Add('|9999|'+inttostr(strtoint(lista[2])+2)+'|');
          finally
            freeandnil(lista);
          end;
        end
        else
        begin
          arquivo.Add(arquivoaux[i]);
        end;
      end;
    finally
      freeandnil(arquivoaux);
    end
  end;
  procedure inicializar_dados;
  begin
    cdlp1a := codigo;
    dti    := qregistro.datadocodigo(_lp1a, cdlp1a, _dtinicio);
    dtf    := qregistro.datadocodigo(_lp1a, cdlp1a, _dtfinal);
  end;
  procedure set_barra_progresso;
  begin
    pnl  := frmprogressbar.pnl;
    gau  := frmprogressbar.gau;
    gau1 := frmprogressbar.gau1;
    frmprogressbar.setgau1;
    frmprogressbar.Show;
    gau1.MaxValue := 45;
  end;
begin
  zerar_contadores;
  inicializar_dados;
  frmprogressbar := tfrmprogressbar.create(nil);
  arquivoh       := tstringlist.create;
  mensagem       := tstringlist.Create;
  texto          := tstringlist.create;
  try
    texto.LoadFromFile(filename);
    set_barra_progresso;
    set_participante(_cte, _cliente); // Registro0150;
    inserir_entre_0150_d100;
    set_gauge('Registro D100');
    RegistroD100;
    inserir_abaixo_d100;
    set_rec0190;
    set_vlicmscte;
    if mensagem.Count > 0 then
    begin
      ExibirSaidaVideo(mensagem);
      abort;
    end;
  finally
    freeandnil(frmprogressbar);
    freeandnil(arquivoh);
    freeandnil(texto);
    freeandnil(mensagem);
  end;
end;

procedure TLivroFiscalDigital.RegistroC460(nuserie: string; dtemissao: TDateTime);
var
  q : TClasseQuery;
begin
  q := TClasseQuery.Create('select s.nudocfiscalicms'+
                                 ',s.nustdocumento'+
                                 ',s.nusaida'+
                                 ',s.cdsaida'+
                                 ',s.vltotal'+
                                 ',s.dtemissao'+
                                 ',s.vlpis'+
                                 ',s.vlcofins '+
                           'from saida s '+
                           'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
                           'where s.cdempresa='+empresa.cdempresa.tostring+' and s.nustdocumento<>''02'' and s.dtemissao='+getdtbanco(dtemissao)+' and t.nuserie='+quotedstr(nuserie));
  try
    while not q.q.Eof do
    begin
      Inc(rec_c460);
      arquivo.Add('|C460|'+q.q.fieldbyname(_nudocfiscalicms).AsString+'|'+
                           q.q.fieldbyname(_nustdocumento).AsString+'|'+
                           q.q.fieldbyname(_nusaida).AsString+'|'+
                           getdtpura(q.q.fieldbyname(_dtemissao).AsDateTime)+'|'+
                           q.q.fieldbyname(_vltotal).asstring+'|'+
                           q.q.fieldbyname(_vlpis).asstring+'|'+
                           q.q.fieldbyname(_vlcofins).asstring+'|'+
                           '||');
      {
      09 CPF_CNPJ CPF ou CNPJ do adquirente N 014 - OC
      10 NOM_ADQ Nome do adquirente C 060 - OC
      }
      RegistroC470(q.q.fieldbyname(_cdsaida).AsString);
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.RegistroC470(cdsaida: string);
var
  q : TClasseQuery;
  texto : string;
begin
  q := TClasseQuery.Create('select i.cdproduto'+
                                 ',i.qtitem'+
                                 ',p.cdunidade'+
                                 ',p.cdorigem'+
                                 ',i.vltotal-coalesce(i.vldesconto,0) vltotal'+
                                 ',i.nusticms'+
                                 ',i.cdcfop'+
                                 ',i.alicms'+
                                 ',i.vlpis'+
                                 ',i.vlcofins '+
                           'from itsaida i '+
                           'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                           'where i.cdempresa='+empresa.cdempresa.tostring+' and i.cdsaida='+cdsaida);
  try
    while not q.q.Eof do
    begin
      Inc(rec_c470);
      texto := '|C470|'+q.q.fieldbyname(_cdproduto).AsString+'|'+
                        q.q.fieldbyname(_qtitem).AsString+'|'+
                       {04 QTD_CANC Quantidade cancelada, no caso de cancelamento parcial de item N - 03 OC}'|'+
                        q.q.fieldbyname(_cdunidade).AsString+'|'+
                        q.q.fieldbyname(_vltotal).asstring+'|';
      if Length(q.q.fieldbyname(_nusticms).AsString) = 2 then
      begin
        texto := texto + q.q.fieldbyname(_cdorigem).AsString;
      end;
      texto := texto + q.q.fieldbyname(_nusticms).AsString+'|'+
                       q.q.fieldbyname(_cdcfop).asstring+'|'+
                       q.q.fieldbyname(_alicms).asstring+'|'+
                       q.q.fieldbyname(_vlpis).asstring+'|'+
                       q.q.fieldbyname(_vlcofins).asstring+'|';
      arquivo.add(texto);
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.Registro0300;
var
  q : TClasseQuery;
  function cdcontaativo:string;
  begin
    if q.q.fieldbyname(_cdcontaativo+_p).AsString  <> '' then
    begin
      result := q.q.fieldbyname(_cdcontaativo+_p).AsString
    end
    else if q.q.fieldbyname(_cdcontaativo+_g).AsString  <> '' then
    begin
      result := q.q.fieldbyname(_cdcontaativo+_g).AsString;
    end;
  end;
begin
  frmprogressbar.pnl.Caption := 'Registro 0300 - Ciapi';
  q := TClasseQuery.create('select L.CDTPMERCADORIAATIVO'+
                                 ',p.nmproduto'+
                                 ',P.cdcontaativo cdcontaativop'+
                                 ',p.dsfuncaobem'+
                                 ',p.nuvidautil'+
                                 ',G.cdcontaativo cdcontaativog'+
                                 ',c.nunivel'+
                                 ',L.CDINDIVIDUALBEM '+
                           'from lp1aciapi l '+
                           'inner join produto p on p.cdproduto=l.cdproduto and p.cdempresa=l.cdempresa '+
                           'inner join cntcusto c on c.cdcntcusto=p.cdcntcusto and p.cdempresa=c.cdempresa '+
                           'LEFT JOIN GRUPO G ON G.CDGRUPO=P.CDGRUPO and p.cdempresa=g.cdempresa '+
                           'where l.cdempresa='+empresa.cdempresa.tostring+' and l.cdlp1a='+cdlp1a.ToString);
  try
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      inc(rec_0300);
      arquivo.Add('|0300|'+
                  q.q.fieldbyname(_cdindividualbem).AsString+'|'+
                  q.q.fieldbyname(_cdtpmercadoriaativo).asstring+'|'+
                  q.q.fieldbyname(_nmproduto).AsString+'|'+
                  '|'+ //05 COD_PRNC Código de cadastro do bem principal nos casos em que o bem ou componente ( campo 02) esteja vinculado a um bem principal. C 060 - OC
                  cdcontaativo+'|'+//06 COD_CTA Código da conta analítica de contabilização do bem C 060 - O ou componente (campo 06 do Registro 0500)
                  '48|');//07 NR_PARC Número total de parcelas a serem apropriadas, segundo a legislação de cada unidade federada N 003 - OC
      Inc(rec_0305);
      arquivo.Add('|0305|'+q.q.fieldbyname(_nunivel).AsString+'|'+trim(q.q.fieldbyname(_dsfuncaobem).AsString)+'|'+q.q.fieldbyname(_nuvidaUtil).AsString+'|');
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.Registro0600;
var
  q : TClasseQuery;
begin
  frmprogressbar.pnl.Caption := 'Registro 0600 - Centro Custo';
  q := TClasseQuery.create('select c.nunivel'+
                                 ',c.nmcntcusto '+
                            'from lp1aciapi l '+
                            'inner join produto p on p.cdproduto=l.cdproduto and p.cdempresa=l.cdempresa '+
                            'inner join cntcusto c on c.cdcntcusto=p.cdcntcusto and p.cdempresa=c.cdempresa '+
                            'where l.cdempresa='+empresa.cdempresa.tostring+' and l.cdlp1a='+cdlp1a.ToString+' '+
                            'group by c.nunivel'+
                                    ',c.nmcntcusto');
  try
    gau.MaxValue := q.q.recordcount;
    while not q.q.eof do
    begin
      gau.Progress := q.q.recno;
      Application.ProcessMessages;
      inc(rec_0600);
      arquivo.Add('|0600|'+getdtpura(dti)+'|'+q.q.fieldbyname(_nunivel).asstring+'|'+q.q.fieldbyname(_nmcntcusto).AsString+'|');
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TLivroFiscalDigital.Registro0500;
type
  TItem = Record
    cdcontaativo : string;
    nucontaativo : integer;
    nmcontaativo : string;
    cdnaturezaconta : string;
    cdindicadortpconta :string;
  end;
var
  c : TClasseQuery;
  retorno: string;
  produto : tproduto;
  item : array of TItem;
  function itemExiste(cdcontaativo:string):boolean;
  var
    i : integer;
  begin
    result := false;
    for i := 0 to high(item) do
    begin
      if item[i].cdcontaativo = cdcontaativo then
      begin
        result := true;
        break;
      end;
    end;
  end;
  procedure adicionar_item_arquivo;
  var
    i : Integer;
  begin
    for i := 0 to high(item) do
    begin
      inc(rec_0500);
      arquivo.Add('|'+
                  '0500|'+
                  getdtpura(dti)+'|'+
                  item[i].cdnaturezaconta+'|'+
                  item[i].cdindicadortpconta+'|'+
                  inttostr(item[i].nucontaativo)+'|'+
                  item[i].cdcontaativo+'|'+
                  item[i].nmcontaativo+'|');
    end;
  end;
begin
  frmprogressbar.pnl.Caption := 'Registro 0500 - Plano Conta';
  c := TClasseQuery.create('select cdproduto from lp1aciapi where cdempresa='+empresa.cdempresa.tostring+' and cdlp1a='+cdlp1a.ToString);
  try
    gau.MaxValue := c.q.recordcount;
    while not c.q.eof do
    begin
      gau.Progress := c.q.recno;
      Application.ProcessMessages;
      produto := tproduto.create;
      try
        produto.Select(c.q.FieldByName(_cdproduto).AsInteger);
        retorno := produto.checkContaAtivo(true);
        if retorno <> '' then
        begin
          mensagem.Text := mensagem.Text + retorno;
        end;
        if produto.cdcontaativo <> '' then
        begin
          if itemExiste(produto.cdcontaativo) then
          begin
            c.q.next;
            continue;
          end;
          SetLength(item, High(item)+2);
          item[High(item)].cdcontaativo       := produto.cdcontaativo;
          item[High(item)].nucontaativo       := produto.nucontaativo;
          item[High(item)].nmcontaativo       := produto.nmcontaativo;
          item[High(item)].cdnaturezaconta    := produto.cdnaturezaconta;
          item[High(item)].cdindicadortpconta := produto.cdindicadortpconta;
        end
        else if produto.grupo.cdcontaativo <> '' then
        begin
          if itemExiste(produto.grupo.cdcontaativo) then
          begin
            c.q.next;
            continue;
          end;
          SetLength(item, High(item)+2);
          item[High(item)].cdcontaativo       := produto.grupo.cdcontaativo;
          item[High(item)].nucontaativo       := produto.grupo.nucontaativo;
          item[High(item)].nmcontaativo       := produto.grupo.nmcontaativo;
          item[High(item)].cdnaturezaconta    := produto.grupo.cdnaturezaconta;
          item[High(item)].cdindicadortpconta := produto.grupo.cdindicadortpconta;
        end;
      finally
        freeandnil(produto);
      end;
      c.q.next;
    end;
    adicionar_item_arquivo;
  finally
    freeandnil(c);
  end;
end;

procedure TLivroFiscalDigital.RegistroK001;
begin
  inc(rec_K001);
  arquivo.Add('|K001|1|');
end;

procedure TLivroFiscalDigital.RegistroK990;
begin
  inc(rec_K990);
  arquivo.add('|K990|'+inttostr(rec_k001+rec_k990)+'|');
end;

constructor TE116.create;
begin
  inherited;
end;

destructor TE116.destroy;
begin
  inherited;
end;

procedure TE116.Setcod_or(const Value: string);
begin
  Fcod_or := Value;
end;

procedure TE116.Setcod_rec(const Value: string);
begin
  Fcod_rec := Value;
end;

procedure TE116.Setdt_vcto(const Value: TDate);
begin
  Fdt_vcto := Value;
end;

procedure TE116.Setind_proc(const Value: string);
begin
  Find_proc := Value;
end;

procedure TE116.Setmes_ref(const Value: string);
begin
  Fmes_ref := Value;
end;

procedure TE116.Setnum_proc(const Value: string);
begin
  Fnum_proc := Value;
end;

procedure TE116.Setproc(const Value: string);
begin
  Fproc := Value;
end;

procedure TE116.Setreg(const Value: string);
begin
  Freg := Value;
end;

procedure TE116.Settxt_compl(const Value: string);
begin
  Ftxt_compl := Value;
end;

procedure TE116.Setvl_or(const Value: currency);
begin
  Fvl_or := Value;
end;

function TE116.Texto: string;
begin
  result := '|'+reg+
            '|'+cod_or+
            '|'+qstring.set_zero(vl_or)+
            '|'+formatdatetime(_DDMMYYYY, dt_vcto)+
            '|'+cod_rec+
            '|'+num_proc+
            '|'+ind_proc+
            '|'+proc+
            '|'+txt_compl+
            '|';
  if dt_vcto >= StrToDate('01/01/2011') then
  begin
    result := result + mes_ref+'|';
  end;
end;

function TE116List.GetItem(Index: Integer): TE116;
begin
  Result := TE116(Inherited Items[Index]);
end;

function TE116List.New: TE116;
begin
  Result := TE116.Create;
  Add(Result);
  result.reg := 'E116';
end;

procedure TE116List.SetItem(Index: Integer; const Value: TE116);
begin
  Put(Index, Value);
end;

end.
