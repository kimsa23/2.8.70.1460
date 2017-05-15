unit ClasseImportacaoDOVerleih;

interface

uses
  sysutils, forms, dialogs, System.Math, system.UITypes,
  classeserie, classeproduto, classefornecedor, classeconta, classecondpagto, classecliente,
  classemovbancario, classeequipamento, classefuncionario, classetransportadora,
  classerepresentante, classeentrada, classesaida,
  classequery, classeaplicacao, classegerar,
  FireDAC.Comp.Client,
  udlgdatabalanco, uRotinas, uconstantes, uregistro, ustrings, uprogressbar;

type
  TImportacaoDOVerleih = class
  private
    conexao : TFDConnection;
    boupdate : boolean;
    dti, dtf : TDate;
    function ObterCdstFornecedor(cdstfornecedor:string):integer;
    function ObterCdStCliente(cdstcliente:string):integer;
    //function ObterCdRepresentante(cdrepresentante:string):integer;
    //function ObterCdMarca(cdmarca:string):integer;
    //function ObterCdModelo(cdmodelo:string):integer;
    //function ObterCdtpEquipamento(cdtpequipamento:string):integer;
    //function ObterCdSetor(cdsetor:string):integer;
    //function ObterCdFuncionario(cdfuncionario : string):integer;
    //function Obtercdproduto(cdproduto:string):integer;
    function ObterCdTPSaida(cdtpsaida:string):integer;
    function formartarTelefone(nufone:string):string;
    function FormatarCep(nucep:string):string;
    procedure ImportarSerie;
    procedure ImportarProduto;
    procedure ImportarServico;
    procedure ImportarProdutoEquipamento;
    //procedure ImportarItContFornecedor;
    procedure ImportarFornecedor;
    //procedure ImportarConta;
    procedure ImportarItCondPagto;
    procedure ImportarCondpagto;
    //procedure ImportarClienteEntrega;
    procedure ImportarCliente;
    //procedure ImportarCntcusto;
    //procedure ImportarEquipamento;
    //procedure ImportarFuncionario;
    procedure Importartransportadora;
    procedure ImportarUnidade;
    //procedure ImportarRepresentante;
    procedure ImportarEntrada;
    procedure ImportarItEntrada(entrada:tentrada);
    procedure ImportarSaida;
    procedure ImportarItSaida(id_nf:string);
    //procedure ImportarDuplicata;
    procedure ImportarAutpagto;
  public
    constructor create;
    destructor destroy; override;
    class procedure SequenciaImportacao;
  end;

implementation

constructor TImportacaoDOVerleih.create;
var
  nmbanco : string;
begin
  conexao := TFDConnection.Create(nil);
  frmprogressbar := tfrmprogressbar.create(nil);
  if not QRotinas.getfilename(nmbanco) then
  begin
    exit;
  end;
  conexao.params.text := aplicacao.confire.params.text;
  conexao.params[2] := 'Database='+nmbanco;
  conexao.LoginPrompt := false;
  conexao.open;
  frmprogressbar.Show;
end;

destructor TImportacaoDOVerleih.destroy;
begin
  freeandnil(conexao);
  freeandnil(frmprogressbar);
  inherited;
end;

function TImportacaoDOVerleih.formartarTelefone(nufone: string): string;
begin
  result := COPY(nufone, 1, 14);
end;

function TImportacaoDOVerleih.FormatarCep(nucep: string): string;
begin
  result := nucep;
end;

procedure TImportacaoDOVerleih.ImportarAutpagto;
begin

end;

procedure TImportacaoDOVerleih.ImportarCliente;
var
  cliente : tcliente;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from cadcliente');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Cliente - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      cliente := tcliente.create;
      try
        boupdate := cliente.select(q.q.fieldbyname('id').asinteger);
        cliente.cdcliente       := q.q.fieldbyname('id').asinteger;
        cliente.rzsocial        := q.q.fieldbyname('RAZAOSOCIAL').AsString;
        cliente.nmcliente       := q.q.fieldbyname('NOMEFANTASIA').AsString;
        cliente.dsendereco      := q.q.fieldbyname('LOGRADOURO').AsString;
        cliente.dsnumero        := q.q.fieldbyname('NRLOGRADOURO').AsString;
        cliente.dscomplemento   := copy(q.q.fieldbyname('COMPLEMENTO').AsString, 1, 20);
        cliente.nmbairro        := q.q.fieldbyname('BAIRRO').AsString;
        cliente.nucep           := formatarcep(q.q.fieldbyname('CEP').AsString);
        cliente.nufone1         := formartarTelefone(q.q.fieldbyname('TELEFONE').AsString);
        cliente.nufax           := formartarTelefone(q.q.fieldbyname('FAX').AsString);
        cliente.email           := q.q.fieldbyname('EMAIL').AsString;
        cliente.homepage        := q.q.fieldbyname('HOMEPAGE').AsString;
        cliente.dtcadastro      := q.q.fieldbyname('DATACADASTRO').AsDateTime;
        cliente.vllimite        := q.q.fieldbyname('LIMITECREDITO').AsCurrency;
        cliente.nucntcontabil   := q.q.fieldbyname('CONTACONTABILCLI').AsString;
        cliente.nuinscest       := q.q.fieldbyname('INSCESTADUAL').AsString;
        cliente.nuinscmunicipal := q.q.fieldbyname('INSCMUNICIPAL').AsString;
        cliente.cdmunicipio     := q.q.fieldbyname('COD_IBGE').AsInteger;
        cliente.nuidentid       := copy(q.q.fieldbyname('RG').AsString, 1, 15);
        cliente.dsobservacao    := q.q.fieldbyname('OBSERVACAO').AsString;
        cliente.cdpais          := q.q.fieldbyname('COD_PAIS').AsInteger;
        cliente.cduf            := copy(q.q.fieldbyname('COD_IBGE').AsString.Trim, 1, 2).ToInteger;
        cliente.cdstcliente     := ObterCdStCliente(q.q.fieldbyname('STATUS').AsString);
        //cliente.cdrepresentante := ObterCdRepresentante(q.q.fieldbyname('COD_VENDEDOR').AsString);
        //cliente.cdsuframa       := q.q.fieldbyname('COD_SUFRAMA').AsInteger;
        if q.q.fieldbyname('TIPOCODIGO').AsString = 'CNPJ' then
        begin
          cliente.tppessoa := _j;
          cliente.nucnpj := q.q.fieldbyname('CODIGO').AsString;
          cliente.nucpf  := '';
        end
        else
        begin
          cliente.tppessoa := _f;
          cliente.nucnpj := '';
          cliente.nucpf  := q.q.fieldbyname('CODIGO').AsString;
        end;
        {
            TRANSPORTADORA        DMCAD_TRANSPORTADORA_CODIGO /* DMCAD_TRANSPORTADORA_CODIGO = VARCHAR(15) */,
            DATACONSTNASC         DMBAS_DATAS /* DMBAS_DATAS = DATE */,
            PRODRURAL             DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            RETISS                DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            RETIRF                DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CONTRIBICMS           DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CONTRIBFEDERAIS       DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            ALIQ_DESCONTO         DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
            RETINSS               DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CONTRATO              DMCAD_CLICONTRATO /* DMCAD_CLICONTRATO = VARCHAR(10) */,
            RET_PISCOFINS         DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        emailnfe	EMAIL_FATNFE          DMBAS_EMAILSUPER /* DMBAS_EMAILSUPER = VARCHAR(1000) */,
            BLOQUEADO             DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            MOTIVO_BLOQUEIO       DMBAS_OBSERVACAOSUPER /* DMBAS_OBSERVACAOSUPER = VARCHAR(500) */,
            COD_USUARIOBLOQUEIO   DMBAS_CODUSUARIO /* DMBAS_CODUSUARIO = VARCHAR(10) */,
            COD_CONDPAGTO         DMCAD_PERIODICIDADE_CODIGO /* DMCAD_PERIODICIDADE_CODIGO = VARCHAR(15) */,
            COD_PERIODICIDADE     DMCAD_PERIODICIDADE_CODIGO /* DMCAD_PERIODICIDADE_CODIGO = VARCHAR(15) */,
            COD_PERIODICIDADEAUX  DMCAD_PERIODICIDADE_CODIGO /* DMCAD_PERIODICIDADE_CODIGO = VARCHAR(15) */,
            COD_FTEPROPAGANDA     DMCAD_FONTEPROPAGANDA_CODIGO /* DMCAD_FONTEPROPAGANDA_CODIGO = VARCHAR(15) */,
            DT_MOVIMENTACAO       DMBAS_DATAS /* DMBAS_DATAS = DATE */,
            MOVIMENTACAO          DMBAS_OBSERVACAO /* DMBAS_OBSERVACAO = VARCHAR(200) */,
            DT_ATUALIZACAO        DMBAS_DATAS /* DMBAS_DATAS = DATE */,
            MULTIPLO_IE           DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */
        }
        application.title := cliente.nmcliente;
        application.ProcessMessages;
        if boupdate then
        begin
          cliente.update;
        end
        else
        begin
          cliente.insert;
        end;
      finally
        freeandnil(cliente);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

{
procedure TImportacaoDOVerleih.ImportarClienteEntrega;
var
  clienteentrega : TClienteEntrega;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADCLIENTEENDERECO');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Cliente Entrega - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      clienteentrega := tclienteentrega.create;
      try
        boupdate := clienteentrega.select(q.q.fieldbyname('ID').asinteger);
        clienteentrega.cdclienteentrega := q.q.fieldbyname('ID').asinteger;
        clienteentrega.cdcliente        := q.q.fieldbyname('ID_CLIENTE').asinteger;
        clienteentrega.dsendereco       := q.q.fieldbyname('LOGRADOURO').AsString;
        clienteentrega.dsnumero         := q.q.fieldbyname('NRLOGRADOURO').AsString;
        clienteentrega.dscomplemento    := q.q.fieldbyname('COMPLEMENTO').asstring;
        clienteentrega.nmbairro         := q.q.fieldbyname('BAIRRO').asstring;
        clienteentrega.nufone           := q.q.fieldbyname('TELEFONE').asstring;
        clienteentrega.nufax            := q.q.fieldbyname('FAX').asstring;
        clienteentrega.nucep            := FormatarCep(q.q.fieldbyname('CEP').asstring);
        clienteentrega.cdmunicipio      := q.q.fieldbyname('COD_IBGE').AsInteger;
        clienteentrega.cduf             := copy(q.q.fieldbyname('COD_IBGE').AsString, 1, 2).tointeger;
          //CODIGO              DMCAD_CLIFOR_CODIGO NOT NULL /* DMCAD_CLIFOR_CODIGO = VARCHAR(20) */,
          //DESCRICAO           DMBAS_RAZAOSOCIAL /* DMBAS_RAZAOSOCIAL = VARCHAR(60) NOT NULL */,
          //CNPJDESTINO         DMCAD_CLIFOR_CODIGO /* DMCAD_CLIFOR_CODIGO = VARCHAR(20) */,
          //IEDESTINO           DMBAS_INSCRICOES /* DMBAS_INSCRICOES = VARCHAR(20) DEFAULT 'ISENTO' */,
          //RAZAOSOCIALDESTINO  DMBAS_RAZAOSOCIALNULL /* DMBAS_RAZAOSOCIALNULL = VARCHAR(60) */,
          //EMAIL               DMBAS_EMAIL /* DMBAS_EMAIL = VARCHAR(50) */,
          //CIDADE              DMBAS_CIDADE NOT NULL /* DMBAS_CIDADE = VARCHAR(40) */,
          //PAIS                DMBAS_PAIS NOT NULL /* DMBAS_PAIS = VARCHAR(15) */,
          //OBSERVACAO          DMBAS_OBSERVACAO /* DMBAS_OBSERVACAO = VARCHAR(200) */,
          //ID_CONTATO          DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
          //CK_OBRA             DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
          //CK_ENTREGA          DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
          //CK_COBRANCA         DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
          //CK_CORRESP          DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
          //ENDERECO_CLIENTE    DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
          //ENDERECO_ATIVO      DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */
        if boupdate then
        begin
          clienteentrega.update;
        end
        else
        begin
          clienteentrega.insert;
        end;
      finally
        freeandnil(clienteentrega);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;
}

{
procedure TImportacaoDOVerleih.ImportarCntcusto;
var
  cntcusto : tcntcusto;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADCENTROCUSTO');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Centro Custo - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      cntcusto := tcntcusto.create;
      try
        boupdate := cntcusto.select(q.q.fieldbyname('id').asinteger);
        cntcusto.cdcntcusto := q.q.fieldbyname('id').asinteger;
        cntcusto.nunivel    := q.q.fieldbyname('id').AsString;
        cntcusto.nmcntcusto := q.q.fieldbyname('CODIGO').AsString;
        cntcusto.dscntcusto := q.q.fieldbyname('DESCRICAO').AsString;
        if boupdate then
        begin
          cntcusto.update;
        end
        else
        begin
          cntcusto.insert;
        end;
      finally
        freeandnil(cntcusto);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;
}

procedure TImportacaoDOVerleih.ImportarCondpagto;
var
  condpagto : tcondpagto;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADCONDPAGTO');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Condição Pagamento - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      condpagto := tcondpagto.create;
      try
        boupdate := condpagto.select(q.q.fieldbyname('id').asinteger);
        condpagto.cdcondpagto := q.q.fieldbyname('id').asinteger;
        condpagto.nmcondpagto := q.q.fieldbyname('DESCRICAO').asstring;
        {
    CODIGO       DMCAD_PERIODICIDADE_CODIGO NOT NULL /* DMCAD_PERIODICIDADE_CODIGO = VARCHAR(15) */,
    TIPO         DMCAD_CONDPAGTO_TIPO NOT NULL /* DMCAD_CONDPAGTO_TIPO = VARCHAR(7) DEFAULT 'CORRIDO' NOT NULL CHECK(VALUE IN ('FIXO','CORRIDO')) */,
    PARCELAS     DMBAS_NUMEROSEQUENCIAL DEFAULT 1 NOT NULL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
    OBSERVACAO   DMBAS_OBSERVACAO /* DMBAS_OBSERVACAO = VARCHAR(200) */,
    DIAS_MINIMO  DMBAS_DIA /* DMBAS_DIA = SMALLINT */
        }
        if boupdate then
        begin
          if condpagto.nucor = 0 then
          begin
            condpagto.nucor := 1;
          end;
          condpagto.update;
        end
        else
        begin
          condpagto.insert;
        end;
      finally
        freeandnil(condpagto);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

{
procedure TImportacaoDOVerleih.ImportarConta;
var
  conta : TConta;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADCONTAS');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Conta - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      conta := tconta.create;
      try
        boupdate := conta.select(q.q.fieldbyname('id').asinteger);
        conta.cdconta   := q.q.fieldbyname('id').asinteger;
        conta.nuagencia := q.q.fieldbyname('AGENCIA').AsString+'-'+q.q.fieldbyname('DIG_AGENCIA').AsString;
        conta.nuconta   := q.q.fieldbyname('CONTA').AsString+'-'+q.q.fieldbyname('DIG_CONTA').AsString;
        conta.nmconta   := conta.nuconta;
        conta.cdbanco   := q.q.fieldbyname('BANCO').AsInteger;
        conta.dtsaldo   := q.q.fieldbyname('DT_SALDO').AsDateTime;
        conta.vlsaldo   := q.q.fieldbyname('VL_SALDO').AsCurrency;
            //RESERVA                   DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            //ATUALIZANDO               DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            //COD_OPERACAOLIQUIDACAO    DMCAD_OPERACAO_CODIGO /* DMCAD_OPERACAO_CODIGO = VARCHAR(20) */,
            //COD_OPERACAODESPBANCARIA  DMCAD_OPERACAO_CODIGO /* DMCAD_OPERACAO_CODIGO = VARCHAR(20) */,
            //COD_OPERACAODESPPROTESTO  DMCAD_OPERACAO_CODIGO /* DMCAD_OPERACAO_CODIGO = VARCHAR(20) */,
            //OBSERVACAO                DMBAS_OBSERVACAO /* DMBAS_OBSERVACAO = VARCHAR(200) */
        if boupdate then
        begin
          conta.update;
        end
        else
        begin
          conta.Insert;
        end;
      finally
        freeandnil(conta);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;
}

{
procedure TImportacaoDOVerleih.ImportarDuplicata;
begin

end;
}

procedure TImportacaoDOVerleih.ImportarEntrada;
var
  entrada : TEntrada;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from ESTOQUEENTRADACONSUMO WHERE DT_ENTRADA BETWEEN '+GetDtBanco(dti)+' and '+getdtbanco(dtf));
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Compra - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      entrada := tentrada.create;
      try
        boupdate := entrada.select(q.q.fieldbyname('ID_ENTRADA').asinteger);
        entrada.cdtpentrada       := 1;
        entrada.cdentrada         := q.q.fieldbyname('ID_ENTRADA').asinteger;
        entrada.cdfornecedor      := qregistro.CodigodoString(_fornecedor, q.q.fieldbyname('COD_FORNECEDOR').AsString, _nucnpj);
        if entrada.cdfornecedor = 0 then
        begin
          entrada.cdfornecedor := qregistro.CodigodoString(_fornecedor, q.q.fieldbyname('COD_FORNECEDOR').AsString, _nucpf);
        end;
        if q.q.fieldbyname('COD_CFOP').AsString = '' then
        begin
          messagedlg('Nota de Compra '+q.q.fieldbyname('NUM_NF').AsString+' não está com cfop vazio.', mtinformation, [mbok], 0);
          q.q.Next;
          continue;
        end;
        entrada.cdcfop            := copy(RemoverChar(q.q.fieldbyname('COD_CFOP').AsString, '.'), 1, 4).ToInteger;
        entrada.nuentrada         := q.q.fieldbyname('NUM_NF').asinteger;
        entrada.dtemissao         := q.q.fieldbyname('DT_EMISSAO').AsDateTime;
        entrada.dtsaida           := q.q.fieldbyname('DT_ENTRADA').AsDateTime;
        entrada.vlbaseicms        := q.q.fieldbyname('BASE_ICMS').AsCurrency;
        entrada.vlicms            := q.q.fieldbyname('VL_ICMS').AsCurrency;
        entrada.vlbaseicmssubtrib := q.q.fieldbyname('BASE_ICMSSUBST').AsCurrency;
        entrada.vlbasepis         := q.q.fieldbyname('BASE_PIS').AsCurrency;
        entrada.vlpis             := q.q.fieldbyname('VL_PIS').AsCurrency;
        entrada.vlicmssubtrib     := q.q.fieldbyname('VL_ICMSSUBST').AsCurrency;
        entrada.vlbasecofins      := q.q.fieldbyname('BASE_COFINS').AsCurrency;
        entrada.vlcofins          := q.q.fieldbyname('VL_COFINS').AsCurrency;
        entrada.vlipi             := q.q.fieldbyname('VL_IPI').AsCurrency;
        entrada.vlfrete           := q.q.fieldbyname('VL_FRETE').AsCurrency;
        entrada.vlseguro          := q.q.fieldbyname('VL_SEGURO').AsCurrency;
        entrada.vloutdespesa      := q.q.fieldbyname('VL_OUTROS').AsCurrency;
        entrada.vldesconto        := q.q.fieldbyname('VL_DESCONTO').AsCurrency;
        entrada.vliss             := q.q.fieldbyname('VL_ISS').AsCurrency;
        entrada.cdtpfrete         := _9;
        entrada.vlirrf            := q.q.fieldbyname('VL_IRF').AsCurrency;
        entrada.vlinss            := q.q.fieldbyname('VL_INSS').AsCurrency;
        entrada.nuchavenfe        := q.q.fieldbyname('CHAVEACESSONFE').AsString;
        entrada.nustdocumento     := _00;
        entrada.nudocfiscalicms   := q.q.fieldbyname('modelo').AsString;
        if entrada.nudocfiscalicms = _98 then
        begin
          entrada.nudocfiscalicms := _01;
        end;
        entrada.nuserie           := q.q.fieldbyname('cod_serie').AsString;
        entrada.vltotal           := q.q.fieldbyname('vl_nota').AsCurrency;
        entrada.vlproduto         := q.q.fieldbyname('vl_nota').AsCurrency + q.q.fieldbyname('VL_DESCONTO').AsCurrency;
          {
        ESPECIE             DMBAS_ESPECIE NOT NULL /* DMBAS_ESPECIE = VARCHAR(5) */,
        MODELO              DMBAS_MODELO NOT NULL /* DMBAS_MODELO = VARCHAR(2) */,
        COD_SERIE           DMBAS_SERIE /* DMBAS_SERIE = VARCHAR(3) */,
        SUB_SERIE           DMBAS_MODELO /* DMBAS_MODELO = VARCHAR(2) */,
        VL_ISENTOPIS        DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_ISENTOCOFINS     DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_NOTA             DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_CALCIPI          DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        BASE_CALCICMS       DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_CALCICMS         DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        BASE_CALCICMSSUBST  DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_CALCICMSSUBST    DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_CALCTOTAL        DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_CALCDESCONTO     DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_CALCDESPESA      DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_CALCNF           DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        QTDE_ITENS          DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        MULTIPLO_CFOP       DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        FATURA_ITEM         DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        RATEIO_DESCONTO     DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        TIPO_FRETE          DMESTOQ_TIPOFRETE /* DMESTOQ_TIPOFRETE = INTEGER */,}
        application.title := entrada.nuentrada.tostring;
        application.ProcessMessages;
        if boupdate then
        begin
          entrada.update;
        end
        else
        begin
          entrada.insert;
        end;
        ImportarItEntrada(entrada);
      finally
        freeandnil(entrada);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

{
procedure TImportacaoDOVerleih.ImportarEquipamento;
var
  equipamento : TEquipamento;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADEQUIPAMENTOS');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Equipamento - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      equipamento := tequipamento.create;
      try
        boupdate := equipamento.select(q.q.fieldbyname('id').asinteger);
        equipamento.cdequipamento := q.q.fieldbyname('id').asinteger;
        equipamento.nmequipamento := q.q.fieldbyname('DESCRICAO').asstring;
        equipamento.nuserie       := q.q.fieldbyname('CODIGO').asstring;
        equipamento.dtcompra      := q.q.fieldbyname('DATACOMPRA').AsDateTime;
        equipamento.cdmarca       := ObterCdmarca(q.q.fieldbyname('MARCA').asstring);
        equipamento.cdmodelo      := ObterCdmodelo(q.q.fieldbyname('MODELO').asstring);
        equipamento.vlcompra      := q.q.fieldbyname('VLCOMPRA').AsCurrency;
        equipamento.qtsaldo       := q.q.fieldbyname('QTDE_DISPONIVEL').AsInteger;
        equipamento.nunf          := q.q.fieldbyname('NF').AsString;
        equipamento.qtitem        := q.q.fieldbyname('QTDE_TOTAL').AsInteger;
        equipamento.cdtpequipamento := ObterCdtpEquipamento(q.q.fieldbyname('TIPO').AsString);
        //CODSUPERIOR                 DMCAD_EQUIP_CODIGO /* DMCAD_EQUIP_CODIGO = VARCHAR(20) */,
        //CODFORNECEDOR               DMCAD_CLIFOR_CODIGO /* DMCAD_CLIFOR_CODIGO = VARCHAR(20) */,
        //SERIE                       DMCAD_EQUIP_SERIEQUIP /* DMCAD_EQUIP_SERIEQUIP = VARCHAR(30) */,
        //CLASSFISCAL                 DMBAS_CLASSFISCAL /* DMBAS_CLASSFISCAL = VARCHAR(15) */,
        //ALIQICMS                    DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        //ALIQIPI                     DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        //ALIQSUBSTICMS               DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        //REDICMS7                    DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        //REDICMS12                   DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        //REDICMS18                   DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        //EMBALAGEM                   DMBAS_EMBALANGEM /* DMBAS_EMBALANGEM = VARCHAR(15) */,
        //UNIDADE                     DMCAD_UNIDADE_CODIGO /* DMCAD_UNIDADE_CODIGO = VARCHAR(4) */,
        //VLQUEBRA                    DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        //APLICACAO                   DMBAS_OBSERVACAOHIPER /* DMBAS_OBSERVACAOHIPER = VARCHAR(10000) */,
        //CREDITO                     DMBAS_CONTASCT /* DMBAS_CONTASCT = VARCHAR(15) */,
        //DEBITO                      DMBAS_CONTASCT /* DMBAS_CONTASCT = VARCHAR(15) */,
        //CUSTO                       DMBAS_CUSTO /* DMBAS_CUSTO = VARCHAR(30) */,
        //HISTORICO                   DMBAS_HISTORICOCT /* DMBAS_HISTORICOCT = VARCHAR(5) */,
        //PESOBRUTO                   DMCAD_EQUIP_PESOS /* DMCAD_EQUIP_PESOS = DOUBLE PRECISION */,
        //PESOLIQUIDO                 DMCAD_EQUIP_PESOS /* DMCAD_EQUIP_PESOS = DOUBLE PRECISION */,
        //REDIPI                      DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        //CREDICMS                    DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        //CREDIPI                     DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        //QUANTITATIVO                DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        //BASELEGAL                   DMCAD_BCSFHM_CODIGONNULL /* DMCAD_BCSFHM_CODIGONNULL = VARCHAR(15) */,
        //COD_UNIDADELOC              DMCAD_UNIDADE_CODIGO /* DMCAD_UNIDADE_CODIGO = VARCHAR(4) */,
        //VIDA_UTIL                   DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //QTDE_MINFAT                 DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //COD_PERIODICIDADE           DMCAD_PERIODICIDADE_CODIGO /* DMCAD_PERIODICIDADE_CODIGO = VARCHAR(15) */,
        //QTDE_LOCADA                 DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //QTDE_MANUTENCAO             DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //QTDE_TRANSITO               DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //QTDE_EXPEDICAO              DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //QTDE_PATRIMONIO             DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //QTDE_FRANQUIA               DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //QTDE_FILIAL                 DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //QTDE_BAIXA                  DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        //COD_SERVICOLOCACAO          DMCAD_PECA_CODIGO /* DMCAD_PECA_CODIGO = VARCHAR(20) */,
        //NUM_CONTRATO                DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        //STATUS                      DMCAD_EQUIP_STATUS NOT NULL /* DMCAD_EQUIP_STATUS = VARCHAR(10) DEFAULT 'DISPONIVEL' NOT NULL CHECK(VALUE IN ('DISPONIVEL', 'LOCADO', 'MANUTENCAO', 'TRANSITO', 'FILIAL', 'OUTROS', 'BAIXA')) */,
        //INCIDEISS                   DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        //ID_OSPROPRIA                DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        //PRATELEIRA                  DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
        //CAIXA                       DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
        //RUA                         DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
        //COD_PATRIMONIO              DMCAD_EQUIP_CODIGO /* DMCAD_EQUIP_CODIGO = VARCHAR(20) */,
        //TIPO_EQUIPAMENTO            DMCAD_EQUIP_TIPOCONTAINER NOT NULL /* DMCAD_EQUIP_TIPOCONTAINER = VARCHAR(10) DEFAULT 'Patrimônio' CHECK(VALUE IN ('Patrimônio', 'Produto')) */,
        //COD_SITTRIBUTARIAICMS       DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
        //COD_SITTRIBUTARIAIPI        DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
        //COD_SITTRIBUTARIAPIS        DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        //COD_SITTRIBUTARIACOFINS     DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        //CODIGO_BARRAS               DMBAS_CODBARRAS /* DMBAS_CODBARRAS = VARCHAR(20) */,
        //ID_LIBERACAOMOVIMENTO       DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        //ID_RECEPCAOMOVIMENTO        DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        //COD_SITTRIBUTARIAICMSENT    DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
        //COD_SITTRIBUTARIAIPIENT     DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
        //COD_SITTRIBUTARIAPISENT     DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
        //COD_SITTRIBUTARIACOFINSENT  DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        //COD_CREDPISCOFINS           DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        //ALIQ_IMPOSTOTOTAL           DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        //COD_DEPOSITO                DMCAD_DEPOSITO_CODIGONULL /* DMCAD_DEPOSITO_CODIGONULL = VARCHAR(20) */,
        //COD_FILIAL                  DMBAS_CODEMPRESANULL /* DMBAS_CODEMPRESANULL = VARCHAR(20) */,
        //INF_SERIE                   DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        if boupdate then
        begin
          equipamento.update;
        end
        else
        begin
          equipamento.insert;
        end;
      finally
        freeandnil(equipamento);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;
}

procedure TImportacaoDOVerleih.ImportarFornecedor;
var
  fornecedor : TFornecedor;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADFORNECEDOR');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Fornecedor - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      fornecedor := tfornecedor.create;
      try
        boupdate := fornecedor.select(q.q.fieldbyname('id').AsInteger);
        fornecedor.cdfornecedor   := q.q.fieldbyname('id').AsInteger;
        fornecedor.nmfornecedor   := q.q.fieldbyname('NOMEFANTASIA').AsString;
        fornecedor.rzsocial       := q.q.fieldbyname('RAZAOSOCIAL').AsString;
        fornecedor.dsendereco     := q.q.fieldbyname('LOGRADOURO').asstring;
        fornecedor.dsnumero       := q.q.fieldbyname('NRLOGRADOURO').asstring;
        fornecedor.dscomplemento  := copy(q.q.fieldbyname('COMPLEMENTO').asstring, 1, 20);
        fornecedor.nmbairro       := q.q.fieldbyname('BAIRRO').asstring;
        fornecedor.email          := q.q.fieldbyname('EMAIL').asstring;
        fornecedor.nufone1        := formartarTelefone(q.q.fieldbyname('TELEFONE').asstring);
        fornecedor.nufax          := formartarTelefone(q.q.fieldbyname('FAX').asstring);
        fornecedor.homepage       := q.q.fieldbyname('homepage').asstring;
        fornecedor.nuinscest      := q.q.fieldbyname('INSCESTADUAL').asstring;
        fornecedor.dsobservacao   := q.q.fieldbyname('OBSERVACAO').asstring;
        fornecedor.nucep          := FormatarCep(q.q.fieldbyname('CEP').asstring);
        fornecedor.cdstfornecedor := ObterCdstFornecedor(q.q.fieldbyname('STATUS').asstring);
        fornecedor.cdmunicipio    := q.q.fieldbyname('COD_IBGE').AsInteger;
        fornecedor.cduf           := copy(q.q.fieldbyname('COD_IBGE').AsString, 1, 2).ToInteger;
        fornecedor.nuidentid      := q.q.fieldbyname('RG').AsString;
        fornecedor.cdpais         := q.q.fieldbyname('COD_PAIS').AsInteger;
        fornecedor.dtcadastro     := q.q.FieldByName('DATACADASTRO').AsDateTime;
        if q.q.fieldbyname('TIPOCODIGO').AsString = 'CNPJ' then
        begin
          fornecedor.tppessoa := _j;
          fornecedor.nucnpj := q.q.fieldbyname('CODIGO').AsString;
          fornecedor.nucpf  := '';
        end
        else
        begin
          fornecedor.tppessoa := _f;
          fornecedor.nucnpj := '';
          fornecedor.nucpf  := q.q.fieldbyname('CODIGO').AsString;
        end;
        {
            INSCMUNICIPAL     DMBAS_INSCRICOES /* DMBAS_INSCRICOES = VARCHAR(20) DEFAULT 'ISENTO' */,
            TRANSPORTADORA    DMCAD_TRANSPORTADORA_CODIGO /* DMCAD_TRANSPORTADORA_CODIGO = VARCHAR(15) */,
            DATACONSTNASC     DMBAS_DATAS /* DMBAS_DATAS = DATE */,
            PRODRURAL         DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            RETISS            DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            RETIRF            DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CONTRIBICMS       DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CONTACONTABILFOR  DMBAS_CONTASCT /* DMBAS_CONTASCT = VARCHAR(15) */,
            CONTRIBFEDERAIS   DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            RETINSS           DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            RET_PISCOFINS     DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        }
        application.title := fornecedor.nmfornecedor;
        application.ProcessMessages;
        if boupdate then
        begin
          fornecedor.update;
        end
        else
        begin
          fornecedor.insert;
        end;
        //fornecedor.AdicionarEmailNFE(q.q.fieldbyname('EMAIL_FATNFE').AsString;
      finally
        freeandnil(fornecedor);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

{
procedure TImportacaoDOVerleih.ImportarFuncionario;
var
  funcionario : tFuncionario;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADFUNCIONARIO');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Funcionário - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      boupdate := funcionario.select(q.q.fieldbyname('id').asinteger);
      funcionario.cdfuncionario := q.q.fieldbyname('id').asinteger;
      funcionario.nmfuncionario := q.q.fieldbyname('NOME').AsString;
      funcionario.dsobservacao  := q.q.fieldbyname('OBSERVACAO').AsString;
      funcionario.nufone1       := q.q.fieldbyname('TELEFONE').AsString;
      funcionario.nufone2       := q.q.fieldbyname('CELULAR').AsString;
      funcionario.nufone3       := q.q.fieldbyname('NEXTEL').AsString;
      funcionario.email         := q.q.fieldbyname('EMAIL').AsString;
      funcionario.dtnascimento  := q.q.fieldbyname('DT_NASCIMENTO').AsDateTime;
      funcionario.dtadmissao    := q.q.fieldbyname('DT_ADMISSAO').AsDateTime;
      funcionario.dtdemissao    := q.q.fieldbyname('DT_RECISAO').AsDateTime;
      funcionario.cdsetor       := ObtercdSetor(q.q.fieldbyname('COD_DEPARTAMENTO').AsString);

      //CODIGO            DMCAD_VENDEDOR_CODIGO NOT NULL /* DMCAD_VENDEDOR_CODIGO = VARCHAR(10) */,
      //CARGO             DMBAS_DESCRICAO NOT NULL /* DMBAS_DESCRICAO = VARCHAR(40) NOT NULL */,
      //COD_USUARIO       DMCAD_FUNCIONARIO_CODIGO /* DMCAD_FUNCIONARIO_CODIGO = VARCHAR(10) */,
      //ATIVO             DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */

      if boupdate then
      begin
        funcionario.update;
      end
      else
      begin
        funcionario.insert;
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;
}

procedure TImportacaoDOVerleih.ImportarItCondPagto;
var
  itcondpagto : titcondpagto;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADCONDPAGTOPARCELAS');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Item Condição Pagamento - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      itcondpagto := titcondpagto.create;
      try
        boupdate := itcondpagto.select(q.q.fieldbyname('id').AsInteger);
        itcondpagto.cditcondpagto := q.q.fieldbyname('id').AsInteger;
        itcondpagto.cdcondpagto   := q.q.fieldbyname('ID_CONDPAGTO').AsInteger;
        itcondpagto.nudias        := q.q.fieldbyname('DIAS_PARCELA').AsInteger;
        {
            NUM_PARCELA   DMBAS_NUMEROSEQUENCIAL NOT NULL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
            PORC_PARCELA  DMBAS_ALIQUOTAS /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */
        }
        if boupdate  then
        begin
          itcondpagto.update;
        end
        else
        begin
          itcondpagto.insert;
        end;
      finally
        freeandnil(itcondpagto);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

{
procedure TImportacaoDOVerleih.ImportarItContFornecedor;
var
  itcontfornecedor : titcontfornecedor;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADFORNECEDORCONTATO');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Contato Fornecedor - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      itcontfornecedor := titcontfornecedor.create;
      try
        boupdate := itcontfornecedor.select(q.q.fieldbyname('id').AsInteger);
        itcontfornecedor.cditcontfornecedor := q.q.fieldbyname('id').AsInteger;
        itcontfornecedor.cdfornecedor       := q.q.fieldbyname('ID_FORNECEDOR').AsInteger;
        itcontfornecedor.nmitcontfornecedor := q.q.fieldbyname('NOME').AsString;
        itcontfornecedor.nufone1 := formartarTelefone(q.q.fieldbyname('telefone').AsString);
        itcontfornecedor.nufone2 := formartarTelefone(q.q.fieldbyname('celular').AsString);
        itcontfornecedor.email := q.q.fieldbyname('e_mail').AsString;
        itcontfornecedor.nmfuncao := q.q.fieldbyname('CARGO').AsString;
        itcontfornecedor.nmdepartamento := q.q.fieldbyname('DEPARTAMENTO').AsString;
            //NEXTEL           DMBAS_TELEFONE /* DMBAS_TELEFONE = VARCHAR(20) */,
            //DATA_NASCIMENTO  DMBAS_DATAS /* DMBAS_DATAS = DATE */,
            //OBERVACAO        DMBAS_OBSERVACAOHIPER /* DMBAS_OBSERVACAOHIPER = VARCHAR(10000) */,
            //CONTATO_PADRAO   DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */
        if boupdate then
        begin
          itcontfornecedor.update;
        end
        else
        begin
          itcontfornecedor.insert;
        end;
      finally
        freeandnil(itcontfornecedor);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;
}

procedure TImportacaoDOVerleih.ImportarItEntrada(entrada:tentrada);
var
  itentrada : titentrada;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from ESTOQUEENTRADACONSUMOITENS where id_entrada='+entrada.cdentrada.ToString);
    while not q.q.eof do
    begin
      itentrada := titentrada.create;
      try
        boupdate := itentrada.select(q.q.fieldbyname('ID_ENTRADAITENS').asinteger);
        itentrada.cditentrada := q.q.fieldbyname('ID_ENTRADAITENS').asinteger;
        itentrada.cdentrada  := q.q.fieldbyname('ID_ENTRADA').asinteger;

        itentrada.cdproduto  := qregistro.CodigodoString(_produto, q.q.fieldbyname('cod_item').AsString, _cdalternativo);
        itentrada.cddigitado := q.q.fieldbyname('cod_item').AsString;

        itentrada.qtitem     := roundto(q.q.fieldbyname('QTDE').AsFloat, -5);
        itentrada.vlunitario := q.q.fieldbyname('VL_UNITARIO').AsCurrency;
        itentrada.vltotal    := q.q.fieldbyname('VL_TOTAL').AsCurrency;
        itentrada.vldesconto := q.q.fieldbyname('VL_DESCONTO').AsCurrency;
        {
        if q.q.RecNo = q.q.RecordCount then
        begin
          itentrada.vldesconto := entrada.vldesconto - vloriginal;
        end
        else
        begin
          itentrada.vldesconto := q.q.fieldbyname('VL_DESCONTO').AsCurrency;
          if (itentrada.vldesconto = 0) and (entrada.vldesconto > 0) then
          begin
            itentrada.vldesconto :=  (itentrada.vltotal / (entrada.vltotal + entrada.vldesconto)) * entrada.vldesconto;
          end;
          vloriginal := vloriginal + itentrada.vldesconto;
        end;
        if itentrada.vldesconto < 0 then
        begin
          itentrada.vldesconto := 0;
        end;
        }
        itentrada.prdesconto := q.q.fieldbyname('ALIQ_DESCONTO').AsFloat;
        itentrada.vlbaseipi  := q.q.fieldbyname('BASE_IPI').AsCurrency;
        itentrada.vlipi      := q.q.fieldbyname('VL_IPI').AsCurrency;
        itentrada.alipi      := q.q.fieldbyname('ALIQ_IPI').AsFloat;
        itentrada.vlbasepis  := q.q.fieldbyname('BASE_PIS').AsCurrency;
        itentrada.vlpis      := q.q.fieldbyname('VL_PIS').AsCurrency;
        itentrada.vlicms     := q.q.fieldbyname('VL_ICMS').AsCurrency;
        itentrada.alicmssubtrib := q.q.fieldbyname('ALIQ_ICMSSUBST').AsFloat;
        itentrada.vlbasecofins  := q.q.fieldbyname('BASE_COFINS').AsCurrency;
        itentrada.vlbaseicms    := q.q.fieldbyname('BASE_ICMS').AsCurrency;
        itentrada.vlbaseicmssubtrib := q.q.fieldbyname('BASE_ICMSSUBST').AsCurrency;
        itentrada.vlfrete       := q.q.fieldbyname('VL_FRETE').AsCurrency;
        itentrada.vloutdespesa  := q.q.fieldbyname('VL_OUTRAS').AsCurrency;
        itentrada.vlseguro      := q.q.fieldbyname('VL_SEGURO').AsCurrency;
        itentrada.prmrgvladicionadoicmssubtrib := q.q.fieldbyname('ALIQ_IVA').AsFloat;
        itentrada.alicms        := q.q.fieldbyname('ALIQ_ICMS').AsFloat;
        itentrada.vlcofins      := q.q.fieldbyname('VL_COFINS').AsCurrency;
        itentrada.cdcfop        := copy(RemoverChar(q.q.fieldbyname('COD_CFOP').AsString, '.'), 1, 4).ToInteger;
        itentrada.nusticms      := Copy(q.q.fieldbyname('COD_SITTRIBUTARIAICMS').AsString, 2, q.q.fieldbyname('COD_SITTRIBUTARIAICMS').AsString.Length-1);
        if (itentrada.nusticms = _101) or
           (itentrada.nusticms = _102) or
           (itentrada.nusticms = _103) or
           (itentrada.nusticms = _201) or
           (itentrada.nusticms = _202) or
           (itentrada.nusticms = _203) or
           (itentrada.nusticms = _400) or
           (itentrada.nusticms = _900)  then
        begin
          itentrada.nusticms := _90;
        end;
        if itentrada.nusticms = _500 then
        begin
          itentrada.nusticms := _60;
        end;
        if itentrada.nusticms = _60 then
        begin
          if itentrada.cdproduto <> 0 then
          begin
            itentrada.produto.Select(itentrada.cdproduto);
            itentrada.produto.nusticms := _60;
            itentrada.produto.update;
          end;
        end;
        if (itentrada.nusticms = _00) and (itentrada.vlicms = 0) then
        begin
          itentrada.nusticms := _90;
        end;
          {
        DATA                     DMBAS_DATAS /* DMBAS_DATAS = DATE */,
        COD_ITEMAUXILIAR         DMCAD_PECA_CODIGO /* DMCAD_PECA_CODIGO = VARCHAR(20) */,
        DESC_ITEM                DMBAS_DESCRICAOITEM NOT NULL /* DMBAS_DESCRICAOITEM = VARCHAR(100) NOT NULL */,
        ALIQ_REDIPI              DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        ALIQ_REDICMS             DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        ALIQ_REDICMSSUBST        DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        VL_ICMSSUBST             DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        ICMSDESTACADO            DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        IPIDESTACADO             DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        IPIBASEICMS              DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        DESC_BASEIPI             DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        VL_ISENTOPIS             DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_ISENTOCOFINS          DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        RECALCULA_ITEM           DMBAS_BOOLEAN DEFAULT 'V' NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        TIPO_CUSTO               DMBAS_TIPOCUSTOCONS /* DMBAS_TIPOCUSTOCONS = VARCHAR(12) */,
        COD_CUSTO                DMCAD_EQUIP_CODIGO /* DMCAD_EQUIP_CODIGO = VARCHAR(20) */,
        NOM_CUSTO                DMBAS_DESCRICAOITEMNULL /* DMBAS_DESCRICAOITEMNULL = VARCHAR(100) */,
        COD_OPERACAO             DMCAD_OPERACAO_CODIGO NOT NULL /* DMCAD_OPERACAO_CODIGO = VARCHAR(20) */,
        CRED_ICMS                DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        CRED_IPI                 DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        ITEM_SERVICO             DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        SUBSTTRIBUTARIA          DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        COD_SITTRIBUTARIAIPI     DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
        COD_SITTRIBUTARIAPIS     DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        COD_SITTRIBUTARIACOFINS  DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        COD_CREDPISCOFINS        DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        ID_PEDIDOCOMPRA          DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        ID_PEDIDOCOMPRAITENS     DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        ALIQ_ISS                 DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        VL_ISS                   DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        INCIDE_ISS               DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        FRETE_BASEIPI            DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        FRETE_BASEICMS           DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        FRETE_BASEPIS            DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        FRETE_BASECOFINS         DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        SEGURO_BASEIPI           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        SEGURO_BASEICMS          DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        SEGURO_BASEPIS           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        SEGURO_BASECOFINS        DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        OUTRAS_BASEIPI           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        OUTRAS_BASEICMS          DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        OUTRAS_BASEPIS           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        OUTRAS_BASECOFINS        DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */}
        if boupdate then
        begin
          itentrada.update;
        end
        else
        begin
          itentrada.insert;
        end;
      finally
        freeandnil(itentrada);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoDOVerleih.ImportarItSaida(id_nf:string);
var
  itsaida : titsaida;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from NOTAPRODUTOS where id_nf='+id_nf);
    while not q.q.eof do
    begin
      if q.q.fieldbyname('COD_CFOP').asstring = '8.101.1' then
      begin
        q.q.next;
        continue;
      end;
      itsaida := titsaida.create;
      try
        boupdate := itsaida.select(q.q.fieldbyname('ID_NFPRODUTO').asinteger);
        itsaida.cditsaida  := q.q.fieldbyname('ID_NFPRODUTO').asinteger;
        itsaida.cdsaida    := q.q.fieldbyname('ID_NF').asinteger;
        itsaida.cdproduto  := qregistro.CodigodoString(_produto, q.q.fieldbyname('COD_PRODUTO').AsString, _cdalternativo);
        if itsaida.cdproduto = 0 then
        begin
          itsaida.produto.cdproduto     := qgerar.GerarCodigo(_produto)+300000;
          itsaida.produto.cdalternativo := q.q.fieldbyname('COD_PRODUTO').AsString;
          itsaida.produto.nmproduto     := q.q.fieldbyname('NOM_PRODUTO').AsString;
          itsaida.produto.nuclfiscal    := removercaracteres(q.q.fieldbyname('CLASS_FISCAL').AsString);
          itsaida.produto.cdunidade     := qregistro.CodigodoNomeInteiro(_unidade, q.q.fieldbyname('COD_UNIDADE').AsString);
          itsaida.produto.nusticms      := Copy(q.q.fieldbyname('COD_SITTRIBUTARIAICMS').AsString, 2, q.q.fieldbyname('COD_SITTRIBUTARIAICMS').AsString.Length-1);
          itsaida.produto.cdtpproduto   := 1;
          itsaida.produto.cdgrupo       := 7;
          itsaida.produto.nunivel       := _08;
          itsaida.produto.insert;
          itsaida.cdproduto := itsaida.produto.cdproduto;
        end;
        itsaida.cddigitado := q.q.fieldbyname('COD_PRODUTO').AsString;
        itsaida.qtitem     := q.q.fieldbyname('QTDE').AsFloat;
        itsaida.vlunitario := q.q.fieldbyname('VL_UNITARIO').AsCurrency;
        itsaida.vltotal    := q.q.fieldbyname('VL_TOTAL').AsCurrency;
        itsaida.vlbaseicms := q.q.fieldbyname('BASE_ICMS').AsCurrency;
        itsaida.alicms     := q.q.fieldbyname('ALIQ_ICMS').AsFloat;
        itsaida.vlicms     := q.q.fieldbyname('VL_ICMS').AsCurrency;
        itsaida.vlbaseipi  := q.q.fieldbyname('BASE_IPI').AsCurrency;
        itsaida.alipi      := q.q.fieldbyname('ALIQ_IPI').AsFloat;
        itsaida.vlipi      := q.q.fieldbyname('VL_IPI').AsCurrency;
        itsaida.alpis      := q.q.fieldbyname('ALIQ_PIS').AsFloat;
        itsaida.prmrgvladicionadoicmssubtrib  := q.q.fieldbyname('ALIQ_IVA').AsFloat;
        itsaida.vlbaseicmssubtrib  := q.q.fieldbyname('BASE_ICMSSUBST').AsCurrency;
        itsaida.alicmssubtrib  := q.q.fieldbyname('ALIQ_ICMSSUBST').AsFloat;
        itsaida.vlicmssubtrib  := q.q.fieldbyname('VL_ICMSSUBST').AsCurrency;
        itsaida.vlpis          := q.q.fieldbyname('VL_PIS').AsCurrency;
        itsaida.alcofins       := q.q.fieldbyname('ALIQ_COFINS').AsFloat;
        itsaida.vlbasecofins   := q.q.fieldbyname('BASE_COFINS').AsCurrency;
        itsaida.vlcofins       := q.q.fieldbyname('VL_COFINS').AsCurrency;
        itsaida.prdesconto     := q.q.fieldbyname('ALIQ_DESCONTO').AsFloat;
        itsaida.vldesconto     := q.q.fieldbyname('VL_DESCONTO').AsCurrency;
        itsaida.cdcfop         := copy(RemoverChar(q.q.fieldbyname('COD_CFOP').AsString, '.'), 1, 4).ToInteger;
        itsaida.psbruto        := q.q.fieldbyname('PESO_BRUTO').AsFloat;
        itsaida.psliquido      := q.q.fieldbyname('PESO_LIQUIDO').Asfloat;
        itsaida.vlfrete        := q.q.fieldbyname('VL_FRETE').AsCurrency;
        itsaida.vloutdespesa   := q.q.fieldbyname('VL_OUTRAS').AsCurrency;
        itsaida.vlseguro       := q.q.fieldbyname('VL_SEGURO').AsCurrency;
        itsaida.nusticms       := Copy(q.q.fieldbyname('COD_SITTRIBUTARIAICMS').AsString, 2, q.q.fieldbyname('COD_SITTRIBUTARIAICMS').AsString.Length-1);
        itsaida.nustipi        := q.q.fieldbyname('COD_SITTRIBUTARIAIPI').AsString;
        itsaida.nustpis        := q.q.fieldbyname('COD_SITTRIBUTARIAPIS').AsString;
        itsaida.nustcofins     := q.q.fieldbyname('COD_SITTRIBUTARIACOFINS').AsString;
       {ITEM_PEDIDOCLIENTE       DMVENDA_NUMPEDIDOITEM /* DMVENDA_NUMPEDIDOITEM = INTEGER */,
        NUM_PEDIDOCLIENTE        DMVENDA_NUMEROPEDIDOCLIENTE /* DMVENDA_NUMEROPEDIDOCLIENTE = VARCHAR(15) */,
        COMPLEMENTO              DMBAS_DESCRICAOITEMNULL /* DMBAS_DESCRICAOITEMNULL = VARCHAR(100) */,
        ALIQ_REDICMS             DMBAS_ALIQUOTAS /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        ALIQ_REDIPI              DMBAS_ALIQUOTAS /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        ALIQ_REDSUBST            DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        BASE_CSLFR               DMBAS_VALORES /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_CSLFR                 DMBAS_VALORES /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        ICMS_DESTACADO           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        IPI_DESTACADO            DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        IPI_BASEICMS             DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        DESC_BASEIPI             DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        QTDE_ENVREC              DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        ENVIADO                  DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        CRED_ICMS                DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        CRED_IPI                 DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        CALC_PIS                 DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        CALC_COFINS              DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        FATURA_ITEM              DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        REVENDA                  DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        COD_CREDPISCOFINS        DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        ALIQ_ICMSSIMPLES         DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        VL_CREDICMSSIMPLES       DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        BASE_ICMSSUBSTRETIDO     DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_ICMSSUBSTRETIDO       DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_INSSFATURAMENTO       DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_TOTALIMPOSTOS         DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        ALIQ_IMPTOTAL            DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        FRETE_BASEIPI            DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        FRETE_BASEICMS           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        FRETE_BASEPIS            DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        FRETE_BASECOFINS         DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        SEGURO_BASEIPI           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        SEGURO_BASEICMS          DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        SEGURO_BASEPIS           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        SEGURO_BASECOFINS        DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        OUTRAS_BASEIPI           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        OUTRAS_BASEICMS          DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        OUTRAS_BASEPIS           DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        OUTRAS_BASECOFINS        DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        EX_TIPI                  DMBAS_EX_TIPI /* DMBAS_EX_TIPI = VARCHAR(3) */,
        BASE_II                  DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_DESPADUANEIRA         DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_II                    DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_IOF                   DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        ID_DI                    DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        BASE_ICMSUFDEST          DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        ALIQ_FCPDEST             DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        ALIQ_ICMSDEST            DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        ALIQ_ICMSINTERDEST       DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        ALIQ_PERCDEST            DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        VL_FCPDEST               DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_ICMSDEST              DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VL_ICMSREMT              DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        CEST                     DMBAS_CEST /* DMBAS_CEST = VARCHAR(7) */}
        if boupdate then
        begin
          itsaida.update;
        end
        else
        begin
          itsaida.insert;
        end;
      finally
        freeandnil(itsaida);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoDOVerleih.ImportarProduto;
var
  produto : TProduto;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADPRODUTO');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Produto - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      produto := tproduto.create;
      try
        boupdate := produto.select(q.q.fieldbyname('id').asinteger);
        produto.cdproduto  := q.q.fieldbyname('id').asinteger;
        produto.cdalternativo  := q.q.fieldbyname('codigo').asstring;
        produto.nmproduto  := q.q.fieldbyname('descricao').AsString;
        produto.nuclfiscal := removercaracteres(q.q.fieldbyname('CLASSFISCAL').AsString);
        produto.cdunidade  := qregistro.CodigodoNomeInteiro(_unidade, q.q.fieldbyname('COD_UNIDADE').AsString);
        produto.psbruto    := q.q.fieldbyname('pesobruto').AsFloat;
        produto.alicms     := q.q.fieldbyname('ALIQ_ICMS').AsFloat;
        produto.alipi      := q.q.fieldbyname('ALIQ_IPI').AsFloat;
        produto.cdtpproduto:= 1;
        produto.qtestmin   := q.q.fieldbyname('ESTOQUEMINIMO').AsFloat;
        produto.psliquido  := q.q.fieldbyname('PESOLIQUIDO').AsFloat;
        produto.cdtpitem   := _07;
        produto.nunivel    := _07;
        produto.cdgrupo    := 8;
        produto.cdorigem   := _0;
        //produto.cdcodfornecedor := q.q.fieldbyname('CODIGO_BARRAS').AsString;
        //produto.cdanp      := q.q.fieldbyname('COD_ANP').AsString;
        {
            CODIGO                           DMCAD_PECA_CODIGO NOT NULL /* DMCAD_PECA_CODIGO = VARCHAR(20) */,
            APLICACAO                        DMBAS_OBSERVACAOHIPER /* DMBAS_OBSERVACAOHIPER = VARCHAR(10000) */,
            PRATELEIRA                       DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
            CAIXA                            DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
            RUA                              DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
            COD_BASELEGAL                    DMCAD_BASELEGAL_CODIGO /* DMCAD_BASELEGAL_CODIGO = VARCHAR(15) */,
            PRODPROPRIA                      DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CRED_IPI                         DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CRED_ICMS                        DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            ALIQICMS_ECF                     DMBAS_ALIQECF /* DMBAS_ALIQECF = VARCHAR(2) */,
            ALIQ_IVA                         DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            RED_ICMS18                       DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            RED_ICMS12                       DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            RED_ICMS7                        DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            RED_IPI                          DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            ESPECIE                          DMBAS_ESPECIE /* DMBAS_ESPECIE = VARCHAR(5) */,
            MARCA                            DMBAS_MARCA /* DMBAS_MARCA = VARCHAR(10) */,
            SUBST_TRIBUTARIA                 DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            DT_INICIOSUBST                   DMBAS_DATAS /* DMBAS_DATAS = DATE */,
            COD_SITTRIBUTARIAICMSENTRADA     DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
            COD_SITTRIBUTARIAICMS            DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
            COD_SITTRIBUTARIAICMSFORAESTADO  DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
            COD_SITTRIBUTARIAIPISAIDA        DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIAPISSAIDA        DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIACOFINSSAIDA     DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIAIPIENTRADA      DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIAPISENTRADA      DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            COD_SITTRIBUTARIACOFINSENTRADA   DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            COD_CREDPISCOFINS                DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            GERAR_PEDIDO                     DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            COD_FORNECEDOR                   DMCAD_CLIFOR_CODIGO /* DMCAD_CLIFOR_CODIGO = VARCHAR(20) */,
            COD_GENERO                       DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
            ICMS_IMPORTADO                   DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            ALIQ_IMPOSTOTOTAL                DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
            LUBRIFICANTE                     DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            CEST                             DMBAS_CEST /* DMBAS_CEST = VARCHAR(7) */
        }
        application.title := produto.nmproduto;
        application.ProcessMessages;
        if boupdate then
        begin
          produto.update;
        end
        else
        begin
          produto.insert;
        end;
      finally
        freeandnil(produto);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoDOVerleih.ImportarProdutoEquipamento;
const
  reg200 = 200000;
var
  produto : TProduto;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADEQUIPAMENTOS');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Produto Equipamento - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      produto := tproduto.create;
      try
        boupdate := produto.select(q.q.fieldbyname('id').asinteger+reg200);
        produto.cdproduto     := q.q.fieldbyname('id').asinteger+reg200;
        produto.cdalternativo := q.q.fieldbyname('CODIGO').AsString;
        produto.nmproduto  := q.q.fieldbyname('descricao').AsString;
        produto.nuclfiscal := removercaracteres(q.q.fieldbyname('CLASSFISCAL').AsString);
        produto.cdunidade  := qregistro.CodigodoNomeInteiro(_produto, q.q.fieldbyname('UNIDADE').AsString);
        if produto.cdunidade = 0 then
        begin
          produto.cdunidade := 1;
        end;
        produto.psbruto    := q.q.fieldbyname('pesobruto').AsFloat;
        produto.psliquido  := q.q.fieldbyname('PESOLIQUIDO').AsFloat;
        produto.alicms     := q.q.fieldbyname('ALIQICMS').AsFloat;
        produto.alipi      := q.q.fieldbyname('ALIQIPI').AsFloat;
        produto.cdtpitem   := _08;
        produto.nunivel    := _08;
        produto.cdgrupo    := 9;
        produto.cdorigem   := _0;
        produto.cdtpproduto:= 1;
        {
        CODSUPERIOR                 DMCAD_EQUIP_CODIGO /* DMCAD_EQUIP_CODIGO = VARCHAR(20) */,
        CODFORNECEDOR               DMCAD_CLIFOR_CODIGO /* DMCAD_CLIFOR_CODIGO = VARCHAR(20) */,
        DATACOMPRA                  DMBAS_DATAS /* DMBAS_DATAS = DATE */,
        MARCA                       DMBAS_MARCA /* DMBAS_MARCA = VARCHAR(10) */,
        MODELO                      DMBAS_MARCA /* DMBAS_MARCA = VARCHAR(10) */,
        NF                          DMBAS_NUMERONF /* DMBAS_NUMERONF = INTEGER */,
        SERIE                       DMCAD_EQUIP_SERIEQUIP /* DMCAD_EQUIP_SERIEQUIP = VARCHAR(30) */,
        ALIQSUBSTICMS               DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        REDICMS7                    DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        REDICMS12                   DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        REDICMS18                   DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        EMBALAGEM                   DMBAS_EMBALANGEM /* DMBAS_EMBALANGEM = VARCHAR(15) */,
        VLCOMPRA                    DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        VLQUEBRA                    DMBAS_VALORES NOT NULL /* DMBAS_VALORES = NUMERIC(15,2) DEFAULT 0 NOT NULL */,
        APLICACAO                   DMBAS_OBSERVACAOHIPER /* DMBAS_OBSERVACAOHIPER = VARCHAR(10000) */,
        CREDITO                     DMBAS_CONTASCT /* DMBAS_CONTASCT = VARCHAR(15) */,
        DEBITO                      DMBAS_CONTASCT /* DMBAS_CONTASCT = VARCHAR(15) */,
        CUSTO                       DMBAS_CUSTO /* DMBAS_CUSTO = VARCHAR(30) */,
        HISTORICO                   DMBAS_HISTORICOCT /* DMBAS_HISTORICOCT = VARCHAR(5) */,
        REDIPI                      DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        CREDICMS                    DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        CREDIPI                     DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        QUANTITATIVO                DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        QTDE_TOTAL                  DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        TIPO                        DMCAD_EQUIP_TIPO NOT NULL /* DMCAD_EQUIP_TIPO = CHAR(2) CHECK(VALUE IN ('GR', 'SG', 'IT')) */,
        BASELEGAL                   DMCAD_BCSFHM_CODIGONNULL /* DMCAD_BCSFHM_CODIGONNULL = VARCHAR(15) */,
        COD_UNIDADELOC              DMCAD_UNIDADE_CODIGO /* DMCAD_UNIDADE_CODIGO = VARCHAR(4) */,
        VIDA_UTIL                   DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        QTDE_MINFAT                 DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        COD_PERIODICIDADE           DMCAD_PERIODICIDADE_CODIGO /* DMCAD_PERIODICIDADE_CODIGO = VARCHAR(15) */,
        QTDE_LOCADA                 DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        QTDE_MANUTENCAO             DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        QTDE_TRANSITO               DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        QTDE_EXPEDICAO              DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        QTDE_PATRIMONIO             DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        QTDE_FRANQUIA               DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        QTDE_FILIAL                 DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        QTDE_BAIXA                  DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
        COD_SERVICOLOCACAO          DMCAD_PECA_CODIGO /* DMCAD_PECA_CODIGO = VARCHAR(20) */,
        NUM_CONTRATO                DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        STATUS                      DMCAD_EQUIP_STATUS NOT NULL /* DMCAD_EQUIP_STATUS = VARCHAR(10) DEFAULT 'DISPONIVEL' NOT NULL CHECK(VALUE IN ('DISPONIVEL', 'LOCADO', 'MANUTENCAO', 'TRANSITO', 'FILIAL', 'OUTROS', 'BAIXA')) */,
        INCIDEISS                   DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        ID_OSPROPRIA                DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        PRATELEIRA                  DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
        CAIXA                       DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
        RUA                         DMCAD_PECA_PRATELEIRACAIXA /* DMCAD_PECA_PRATELEIRACAIXA = VARCHAR(10) */,
        COD_PATRIMONIO              DMCAD_EQUIP_CODIGO /* DMCAD_EQUIP_CODIGO = VARCHAR(20) */,
        TIPO_EQUIPAMENTO            DMCAD_EQUIP_TIPOCONTAINER NOT NULL /* DMCAD_EQUIP_TIPOCONTAINER = VARCHAR(10) DEFAULT 'Patrimônio' CHECK(VALUE IN ('Patrimônio', 'Produto')) */,
        COD_SITTRIBUTARIAICMS       DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
        COD_SITTRIBUTARIAIPI        DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
        COD_SITTRIBUTARIAPIS        DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        COD_SITTRIBUTARIACOFINS     DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        CODIGO_BARRAS               DMBAS_CODBARRAS /* DMBAS_CODBARRAS = VARCHAR(20) */,
        ID_LIBERACAOMOVIMENTO       DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        ID_RECEPCAOMOVIMENTO        DMBAS_NUMEROSEQUENCIAL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
        COD_SITTRIBUTARIAICMSENT    DMCAD_SITTRIB_CODIGO /* DMCAD_SITTRIB_CODIGO = VARCHAR(5) */,
        COD_SITTRIBUTARIAIPIENT     DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
        COD_SITTRIBUTARIAPISENT     DMCAD_SITTRIBIPI_CODIGO /* DMCAD_SITTRIBIPI_CODIGO = VARCHAR(2) */,
        COD_SITTRIBUTARIACOFINSENT  DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        COD_CREDPISCOFINS           DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
        ALIQ_IMPOSTOTOTAL           DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
        COD_DEPOSITO                DMCAD_DEPOSITO_CODIGONULL /* DMCAD_DEPOSITO_CODIGONULL = VARCHAR(20) */,
        COD_FILIAL                  DMBAS_CODEMPRESANULL /* DMBAS_CODEMPRESANULL = VARCHAR(20) */,
        INF_SERIE                   DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
        QTDE_DISPONIVEL             COMPUTED BY ((QTDE_TOTAL - QTDE_LOCADA - QTDE_MANUTENCAO - QTDE_EXPEDICAO - QTDE_BAIXA - QTDE_FILIAL))
        }
        application.title := produto.nmproduto;
        application.ProcessMessages;
        if boupdate then
        begin
          produto.update;
        end
        else
        begin
          produto.insert;
        end;
      finally
        freeandnil(produto);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

{
procedure TImportacaoDOVerleih.ImportarRepresentante;
var
  representante : trepresentante;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from CADVENDEDOR');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Representante - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      representante := trepresentante.create;
      try
        boupdate := representante.select(q.q.fieldbyname('id').asinteger);
        representante.cdrepresentante := q.q.fieldbyname('id').asinteger;
        representante.nmrepresentante := q.q.fieldbyname('NOME').AsString;
        representante.cdfuncionario   := obterCdFuncionario(q.q.fieldbyname('COD_FUNCIONARIO').AsString);
        representante.dsobservacao    := q.q.fieldbyname('OBSERVACAO').AsString;
          //CODIGO                      DMCAD_VENDEDOR_CODIGO NOT NULL /* DMCAD_VENDEDOR_CODIGO = VARCHAR(10) */,
          //TIPO_COMISSAO               DMCAD_VENDEDOR_TIPOCOMISSAO NOT NULL /* DMCAD_VENDEDOR_TIPOCOMISSAO = VARCHAR(11) CHECK(value in ('Faturamento', 'Recebimento')) */,
          //ALIQ_COMISSAOMANUTENCAO     DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
          //ALIQ_DESCONTOMAXMANUTENCAO  DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
          //ALIQ_COMISSAOLOCACAO        DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
          //ALIQ_DESCONTOMAXLOCACAO     DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
          //ALIQ_COMISSAOVENDA          DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
          //ALIQ_DESCONTOMAXVENDA       DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
          //COD_FORNECEDOR              DMCAD_CLIFOR_CODIGO NOT NULL /* DMCAD_CLIFOR_CODIGO = VARCHAR(20) */,
          //DIAS_VCTO                   DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
          //NUM_FATURA                  DMBAS_NUMEROSEQUENCIAL NOT NULL /* DMBAS_NUMEROSEQUENCIAL = INTEGER */,
          //COD_OPERACAO                DMCAD_OPERACAO_CODIGO NOT NULL /* DMCAD_OPERACAO_CODIGO = VARCHAR(20) */,
          //CALC_ISSFONTE               DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
          //CALC_INSSFONTE              DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
          //CALC_IRFONTE                DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
          //CALC_CONTRIBFONTE           DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
          //COD_CENTROCUSTO             DMCAD_BCSFHM_CODIGO NOT NULL /* DMCAD_BCSFHM_CODIGO = VARCHAR(15) */,
          //ALIQ_COMISSAORENOVACAO      DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */

        if boupdate then
        begin
          representante.update;
        end
        else
        begin
          representante.insert;
        end;
      finally
        freeandnil(representante);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;
}

procedure TImportacaoDOVerleih.ImportarSaida;
var
  saida: tsaida;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from NOTACABECALHO WHERE COD_SERIE=''1'' AND DT_EMISSAO BETWEEN '+GetDtBanco(dti)+' and '+getdtbanco(dtf));
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    Application.Title :=q.q.fieldbyname('COD_CFOP').asstring;
    Application.ProcessMessages;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Nota Fiscal - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.Title := q.q.fieldbyname('COD_CFOP').asstring;
      Application.ProcessMessages;
      if copy(RemoverChar(q.q.fieldbyname('COD_CFOP').AsString, '.'), 1, 4) = '8101' then
      begin
        q.q.next;
        continue;
      end;
      saida := tsaida.create;
      try
        boupdate        := saida.select(q.q.fieldbyname('ID_NF').asinteger);
        saida.cdsaida   := q.q.fieldbyname('ID_NF').asinteger;
        saida.nudocfiscalicms := _55;
        saida.cdtpsaida := ObterCdTPSaida(q.q.fieldbyname('TIPO_NF').asString);
        saida.nusaida   := q.q.fieldbyname('NUM_NF').asinteger;
        saida.dtemissao := q.q.fieldbyname('DT_EMISSAO').AsDateTime;
        saida.dtsaida   := q.q.fieldbyname('DT_EMISSAO').AsDateTime;
        saida.hrsaida   := q.q.fieldbyname('HR_ENTSAI').AsDateTime;
        saida.cdserie   := qregistro.CodigodoNome(_serie, q.q.fieldbyname('COD_SERIE').AsString).ToInteger;
        saida.cdserie   := 1;
        if q.q.fieldbyname('COD_CLIENTE').AsString <> '' then
        begin
          saida.cdcliente := qregistro.CodigodoString(_cliente, q.q.fieldbyname('COD_CLIENTE').AsString, _nucnpj);
          if saida.cdcliente = 0 then
          begin
            saida.cdcliente := qregistro.CodigodoString(_cliente, q.q.fieldbyname('COD_CLIENTE').AsString, _nucpf);
          end;
        end
        else
        begin
          saida.cdcliente := qregistro.CodigodoString(_cliente, q.q.fieldbyname('COD_fornecedor').AsString, _nucnpj);
          if saida.cdcliente = 0 then
          begin
            saida.cdfornecedor := qregistro.CodigodoString(_fornecedor, q.q.fieldbyname('COD_fornecedor').AsString, _nucpf);
          end;
          saida.cdtpsaida := 11;
        end;

        saida.cdcfop                  := copy(RemoverChar(q.q.fieldbyname('COD_CFOP').AsString, '.'), 1, 4).ToInteger;
        case saida.cdcfop of
          5949 : saida.cdtpsaida := 8;
          6949 : saida.cdtpsaida := 8;
          1949 : saida.cdtpsaida := 9;
          2949 : saida.cdtpsaida := 9;
          5202 : saida.cdtpsaida := 3;
          5915 : saida.cdtpsaida := 11;
        end;

        saida.tpentsai                := copy(q.q.fieldbyname('TIPO').AsString, 1, 1);
        saida.vlbaseicms              := q.q.fieldbyname('BASE_ICMS').AsCurrency;
        saida.vlfrete                 := q.q.fieldbyname('VL_FRETE').AsCurrency;
        saida.vlbaseipi               := q.q.fieldbyname('BASE_IPI').AsCurrency;
        saida.vlbasepis               := q.q.fieldbyname('BASE_PIS').AsCurrency;
        saida.vlpis                   := q.q.fieldbyname('VL_PIS').AsCurrency;
        saida.vlbaseiss               := q.q.fieldbyname('BASE_ISS').AsCurrency;
        saida.vlproduto               := q.q.fieldbyname('VL_PRODUTOS').AsCurrency;
        saida.vlservico               := q.q.fieldbyname('VL_SERVICOS').AsCurrency;
        saida.vliss                   := q.q.fieldbyname('VL_ISS').AsCurrency;
        saida.vlbaseinss              := q.q.fieldbyname('BASE_INSS').AsCurrency;
        saida.vlcofins                := q.q.fieldbyname('VL_COFINS').AsCurrency;
        saida.vlbasecofins            := q.q.fieldbyname('BASE_COFINS').AsCurrency;
        saida.vlipi                   := q.q.fieldbyname('VL_IPI').AsCurrency;
        saida.vlinss                  := q.q.fieldbyname('VL_INSS').AsCurrency;
        saida.vldesconto              := q.q.fieldbyname('VL_DESCONTO').AsCurrency;
        saida.vlseguro                := q.q.fieldbyname('VL_SEGURO').AsCurrency;
        saida.vloutdespesa            := q.q.fieldbyname('VL_OUTRAS').AsCurrency;
        saida.psbruto                 := q.q.fieldbyname('PESO_BRUTO').AsCurrency;
        saida.psliquido               := q.q.fieldbyname('PESO_LIQUIDO').AsCurrency;
        saida.vlicmssubtrib           := q.q.fieldbyname('VL_SUBST').AsCurrency;
        saida.vlicms                  := q.q.fieldbyname('VL_ICMS').AsCurrency;
        saida.vlbaseicmssubtrib       := q.q.fieldbyname('BASE_SUBST').AsCurrency;
        //saida.cdtransportadora      := q.q.fieldbyname('COD_TRANSPORTADORA').AsInteger;
        //saida.cdcondpagto           := q.q.fieldbyname('COD_CONDPAGTO').AsInteger;
        //saida.cduf                  := q.q.fieldbyname('UF_PLACA').AsInteger;
        //saida.nuplaca               := q.q.fieldbyname('PLACA').AsString;
        saida.dscancelamento          := q.q.fieldbyname('MOTIVO_CANCELAMENTO').AsString;
        saida.vlbaseirrf              := q.q.fieldbyname('BASE_IRF').AsCurrency;
        saida.vlirrf                  := q.q.fieldbyname('VL_IRF').AsCurrency;
        //saida.cdtpfrete             := q.q.fieldbyname('MODALIDADE_FRETE').AsString;
        saida.nuchavenfe              := q.q.fieldbyname('CHAVEACESSO_NFE').AsString;
        saida.nuprotocolocancelamento := q.q.fieldbyname('PROTOCOLO_CANCELAMENTO').AsString;
        saida.nulote                  := q.q.fieldbyname('NUM_LOTE').AsInteger;
        saida.nuprotocoloautorizacao  := q.q.fieldbyname('PROTOCOLO_NFE').AsString;
        saida.nustdocumento           := _00; //q.q.fieldbyname('STATUS_NFE').AsString;
        if q.q.FieldByName('STATUS_NFE').AsString = 'Cancelada' then
        begin
          saida.nustdocumento := _02; //q.q.fieldbyname('STATUS_NFE').AsString;
          saida.cdcliente     := 0;
          saida.cdfornecedor  := 0;
        end;
        saida.vltotal                 := q.q.fieldbyname('VL_NF').AsCurrency;
        application.title             := saida.nusaida.tostring;
        application.ProcessMessages;
        if boupdate then
        begin
          saida.update;
        end
        else
        begin
          saida.insert;
        end;
        if saida.nustdocumento = _00 then
        begin
          ImportarItSaida(saida.cdsaida.ToString);
        end;
      finally
        freeandnil(saida);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoDOVerleih.ImportarSerie;
var
  serie : TSerie;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
  q.q.Open('select * from CADSERIE');
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.eof do
  begin
    frmprogressbar.pnl.Caption := 'Série - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
    frmprogressbar.gau.Progress := q.q.recno;
    Application.ProcessMessages;
    serie := tserie.create;
    try
      boupdate              := serie.Select(q.q.fieldbyname('id').asinteger);
      serie.cdserie         := q.q.fieldbyname('id').asinteger;
      serie.nmserie         := q.q.fieldbyname('CODIGO').AsString;
      serie.nusequencia     := q.q.fieldbyname('NUM_NF').AsInteger;
      serie.nudocfiscalicms := q.q.fieldbyname('MODELO').AsString;
      if boupdate then
      begin
        serie.Update;
      end
      else
      begin
        serie.Insert;
      end;
      {
            DESCRICAO
            MULTIPLOS_FORMS    DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            NF_IGUAL_FORM      DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            LIM_LINHAPRODUTOS  DMBAS_LIMQTDEPRODUTO /* DMBAS_LIMQTDEPRODUTO = INTEGER CHECK(vALUE<=999) */,
            LIM_LINHASERVICOS  DMBAS_LIMQTDEPRODUTO /* DMBAS_LIMQTDEPRODUTO = INTEGER CHECK(vALUE<=999) */,
            SUB_SERIE          DMBAS_SERIE /* DMBAS_SERIE = VARCHAR(3) */,
            MODELO_DES         DMCAD_SERIE_MODELODES /* DMCAD_SERIE_MODELODES = VARCHAR(5) */,
            TIPO               DMCAD_SERIE_NF NOT NULL /* DMCAD_SERIE_NF = VARCHAR(4) DEFAULT 'NF' NOT NULL CHECK(VALUE IN ('NF', 'NFE', 'NFF', 'CF', 'NFS', 'LOC','NFSE', 'NFCE')) */,
            IMPRIME_DANFE      DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            RE_IMPRIMENF       DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
            ARQUIVO_LAYOUTNF   DMBAS_NOMEARQUIVO /* DMBAS_NOMEARQUIVO = VARCHAR(30) */,
            ARQUIVO_LAYOUTNF2  DMBAS_NOMEARQUIVO /* DMBAS_NOMEARQUIVO = VARCHAR(30) */,
            ARQUIVO_LAYOUTNF3  DMBAS_NOMEARQUIVO /* DMBAS_NOMEARQUIVO = VARCHAR(30) */,
            REMOVER_NF         DMBAS_BOOLEAN NOT NULL /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */

            NUSERIE          DMVARCHAR03NOTNULL NOT NULL /* DMVARCHAR03NOTNULL = VARCHAR(3) NOT NULL */,
            BOSERVICO        DMCHAR1 /* DMCHAR1 = CHAR(1) */,
            BOATIVAR         DMCHAR1NOTNULL NOT NULL /* DMCHAR1NOTNULL = CHAR(1) NOT NULL */
      }
    finally
      freeandnil(serie);
    end;
    q.q.next;
  end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoDOVerleih.ImportarServico;
const
  reg300 = 300000;
var
  produto : TProduto;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
  q.q.Open('select * from CADSERVICO');
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.eof do
  begin
    frmprogressbar.pnl.Caption := 'Servico - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
    frmprogressbar.gau.Progress := q.q.recno;
    Application.ProcessMessages;
    produto := tproduto.create;
    try
      boupdate := produto.select(q.q.fieldbyname('id').asinteger+reg300);
      produto.cdproduto  := q.q.fieldbyname('id').asinteger+reg300;
      produto.cdalternativo := q.q.fieldbyname('codigo').asstring;
      produto.nmproduto  := q.q.fieldbyname('descricao').AsString;
      produto.cdunidade  := qregistro.CodigodoNomeInteiro(_unidade, q.q.fieldbyname('COD_UNIDADE').AsString);
      produto.cdtpproduto:= 2;
      produto.cdtpitem   := _09;
      produto.nunivel    := _09;
      produto.cdgrupo    := 10;
      produto.cdorigem   := _0;
      {
      COD_BASELEGAL            DMCAD_BASELEGAL_CODIGO /* DMCAD_BASELEGAL_CODIGO = VARCHAR(15) */,
      RET_INSS                 DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
      RET_IRF                  DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
      RET_ISS                  DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
      RET_CONTRIBFEDERAL       DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
      CALC_ISS                 DMBAS_BOOLEAN /* DMBAS_BOOLEAN = CHAR(1) DEFAULT 'F' NOT NULL CHECK(Value in ('V', 'F')) */,
      CNAE                     DMBAS_CNAE /* DMBAS_CNAE = VARCHAR(7) */,
      COD_SITTRIBUTARIAPIS     DMCAD_SITTRIBPISCOFINS_CODIGO NOT NULL /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
      COD_SITTRIBUTARIACOFINS  DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
      COD_CREDPISCOFINS        DMCAD_SITTRIBPISCOFINS_CODIGO /* DMCAD_SITTRIBPISCOFINS_CODIGO = VARCHAR(2) */,
      ALIQ_ISS                 DMBAS_ALIQUOTAS /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
      ALIQ_ISSECF              DMBAS_ALIQECF /* DMBAS_ALIQECF = VARCHAR(2) */,
      APLICACAO                DMBAS_OBSERVACAOSUPER /* DMBAS_OBSERVACAOSUPER = VARCHAR(500) */,
      ALIQ_IMPOSTOTOTAL        DMBAS_ALIQUOTAS NOT NULL /* DMBAS_ALIQUOTAS = DOUBLE PRECISION DEFAULT 0 NOT NULL */,
      COD_SERVICOPREF          DMCAD_SERVICO_CODPREFEITURA /* DMCAD_SERVICO_CODPREFEITURA = VARCHAR(15) */
      }
      application.title := produto.nmproduto;
      application.ProcessMessages;
      if boupdate then
      begin
        produto.update;
      end
      else
      begin
        produto.insert;
      end;
    finally
      freeandnil(produto);
    end;
    q.q.next;
  end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoDOVerleih.Importartransportadora;
var
  transportadora : TTransportadora;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
  q.q.Open('select * from CADTRANSPORTADORA');
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.eof do
  begin
    frmprogressbar.pnl.Caption := 'Transportadora - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
    frmprogressbar.gau.Progress := q.q.recno;
    Application.ProcessMessages;
    transportadora := ttransportadora.create;
    try
      boupdate := transportadora.select(q.q.fieldbyname('id').asinteger);
      transportadora.cdtransportadora := q.q.fieldbyname('id').asinteger;
      transportadora.rzsocial      := q.q.fieldbyname('RAZAOSOCIAL').AsString;
      transportadora.dsendereco    := q.q.fieldbyname('LOGRADOURO').AsString;
      transportadora.dsnumero      := q.q.fieldbyname('NRLOGRADOURO').AsString;
      transportadora.dscomplemento := q.q.fieldbyname('COMPLEMENTO').AsString;
      transportadora.nmbairro      := q.q.fieldbyname('BAIRRO').AsString;
      transportadora.nufone1       := q.q.fieldbyname('TELEFONE').AsString;
      transportadora.nucep         := q.q.fieldbyname('CEP').AsString;
      transportadora.nufax         := q.q.fieldbyname('FAX').AsString;
      transportadora.nuinscest     := q.q.fieldbyname('INSCESTADUAL').AsString;
      transportadora.nucnpj        := q.q.fieldbyname('CNPJ').AsString;
      transportadora.email         := q.q.fieldbyname('EMAIL').AsString;
      transportadora.tppessoa      := _j;
      transportadora.dsobservacao  := q.q.fieldbyname('OBSERVACAO').AsString;
      {
      CODIGO         DMCAD_TRANSPORTADORA_CODIGO NOT NULL /* DMCAD_TRANSPORTADORA_CODIGO = VARCHAR(15) */,
      CIDADE         DMBAS_CIDADE /* DMBAS_CIDADE = VARCHAR(40) */,
      COD_ESTADO     DMCAD_ESTADO_CODIGO /* DMCAD_ESTADO_CODIGO = VARCHAR(2) */,
      PAIS           DMBAS_PAIS /* DMBAS_PAIS = VARCHAR(15) */,
      CONTATOS       DMBAS_CONTATOS /* DMBAS_CONTATOS = VARCHAR(50) */,
      INSCMUNICIPAL  DMBAS_INSCRICOES /* DMBAS_INSCRICOES = VARCHAR(20) DEFAULT 'ISENTO' */,
      ANTT           DMCAD_TRANSPORTADORA_RNTC /* DMCAD_TRANSPORTADORA_RNTC = VARCHAR(20) */}
      if boupdate then
      begin
        transportadora.update;
      end
      else
      begin
        transportadora.insert;
      end;
    finally
      freeandnil(transportadora);
    end;
    q.q.next;
  end;
  finally
    FreeAndNil(q);
  end;
end;

procedure TImportacaoDOVerleih.ImportarUnidade;
var
  unidade : TUnidade;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
  q.q.Open('select * from CADUNIDADE');
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  while not q.q.eof do
  begin
    frmprogressbar.pnl.Caption := 'Unidade - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
    frmprogressbar.gau.Progress := q.q.recno;
    Application.ProcessMessages;
    unidade := tunidade.create;
    try
      boupdate := unidade.select(q.q.fieldbyname('id').asinteger);
      unidade.cdunidade := q.q.fieldbyname('id').asinteger;
      unidade.nmunidade := q.q.fieldbyname('CODIGO').AsString;
      {
      DESCRICAO
      QTDE        DMBAS_QTDES NOT NULL /* DMBAS_QTDES = FLOAT DEFAULT 0 NOT NULL */,
      OBSERVACAO  DMBAS_OBSERVACAO /* DMBAS_OBSERVACAO = VARCHAR(200) */,
      TIPO        DMCAD_UNIDADE_TIPO NOT NULL /* DMCAD_UNIDADE_TIPO = VARCHAR(4) DEFAULT 'QTDE' NOT NULL CHECK(VALUE IN ('DATA', 'QTDE', 'MES')) */,
      DIRECAO     DMCAD_UNIDADE_DIRECAO NOT NULL /* DMCAD_UNIDADE_DIRECAO = VARCHAR(11) DEFAULT 'CRESCENTE' NOT NULL CHECK(VALUE IN ('CRESCENTE', 'DECRESCENTE')) */}
      if boupdate then
      begin
        unidade.update;
      end
      else
      begin
        unidade.insert;
      end;
    finally
      freeandnil(unidade);
    end;
    q.q.next;
  end;
  finally
    FreeAndNil(q);
  end;
end;

{
function TImportacaoDOVerleih.ObterCdFuncionario(cdfuncionario: string): integer;
begin
  result := 1;
end;
}

{
function TImportacaoDOVerleih.ObterCdRepresentante(cdrepresentante: string): integer;
begin
  result := 1;
end;
}

{
function TImportacaoDOVerleih.ObterCdSetor(cdsetor: string): integer;
begin
  result := 1;
end;
}

function TImportacaoDOVerleih.ObterCdStCliente(cdstcliente: string): integer;
begin
  result := 1;
end;

function TImportacaoDOVerleih.ObterCdstFornecedor(cdstfornecedor: string): integer;
begin
  result := 1;
end;

{
function TImportacaoDOVerleih.ObterCdtpEquipamento(cdtpequipamento: string): integer;
begin
  result := 1;
end;
}

function TImportacaoDOVerleih.ObterCdTPSaida(cdtpsaida: string): integer;
begin
  result := 1;
end;

class procedure TImportacaoDOVerleih.SequenciaImportacao;
var
  Importacao : TImportacaoDOVerleih;
begin
  importacao := TImportacaoDOVerleih.create;
  try
    if not dlgDataInicioFinal(importacao.dti, importacao.dtf, true, 'Faixa de data para importação') then
    begin
      exit;
    end;
    importacao.ImportarSerie;
    //importacao.ImportarConta;
    importacao.ImportarCondpagto;
    importacao.ImportarItCondPagto;
    //importacao.Importarcntcusto;
    importacao.ImportarFornecedor;
    //importacao.ImportarItContFornecedor;
    importacao.importarCliente;
    //importacao.importarclienteentrega;
    importacao.ImportarUnidade;
    importacao.ImportarProduto;
    importacao.ImportarServico;
    importacao.ImportarProdutoEquipamento;
    //importacao.ImportarEquipamento;
    //importacao.ImportarFuncionario;
    importacao.ImportarTransportadora;
    //importacao.ImportarRepresentante;
    importacao.ImportarEntrada;
    //importacao.ImportarItEntrada;
    importacao.ImportarSaida;
    //importacao.ImportarDuplicata;
    importacao.ImportarAutpagto;
  finally
    importacao.free;
  end;
end;

{
function TImportacaoDOVerleih.ObterCdMarca(cdmarca: string): integer;
begin
  result := 1;
end;
}

{
function TImportacaoDOVerleih.ObterCdModelo(cdmodelo: string): integer;
begin
  result := 1;
end;
}

{
function TImportacaoDOVerleih.Obtercdproduto(cdproduto: string): integer;
begin
  result := 1;
end;
}

end.
