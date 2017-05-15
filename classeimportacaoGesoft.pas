unit classeimportacaoGesoft;

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
  TImportacaoGesoft = class
  private
    conexao : TFDConnection;
    concep  : TFDConnection;
    boupdate : boolean;
    dti, dtf : TDate;
    function formartarTelefone(nufone:string):string;
    function FormatarCep(nucep:string):string;
    function TratarSTICMS(nusticms:string):string;
    procedure ImportarProduto;
    procedure ImportarFornecedor;
    procedure ImportarItCondPagto;
    procedure ImportarCondpagto;
    procedure ImportarCliente;
    procedure ImportarEntrada;
    procedure ImportarItEntrada(id_entrada:string);
    procedure ImportarSaida;
    procedure ImportarItSaida(id_nf:string);
    //procedure ImportarDuplicata;
  public
    constructor create;
    destructor destroy; override;
    class procedure SequenciaImportacao(tbl:string='');
  end;

implementation

constructor TImportacaoGesoft.create;
var
  nmbanco : string;
begin
  conexao := TFDConnection.Create(nil);
  concep  := TFDConnection.Create(nil);
  frmprogressbar := tfrmprogressbar.create(nil);
  if not QRotinas.getfilename(nmbanco) then
  begin
    exit;
  end;
  conexao.params.text := aplicacao.confire.params.text;
  conexao.params[2] := 'Database='+nmbanco;
  conexao.LoginPrompt := false;
  conexao.open;

  concep.params.text := aplicacao.confire.params.text;
  concep.params[2] := 'Database='+ExtractFilePath(nmbanco)+'\db_cep.fdb';
  concep.LoginPrompt := false;
  concep.open;

  frmprogressbar.Show;
end;

destructor TImportacaoGesoft.destroy;
begin
  freeandnil(conexao);
  freeandnil(frmprogressbar);
  inherited;
end;

function TImportacaoGesoft.formartarTelefone(nufone: string): string;
begin
  result := COPY(nufone, 1, 14);
end;

function TImportacaoGesoft.FormatarCep(nucep: string): string;
begin
  result := nucep;
end;

procedure TImportacaoGesoft.ImportarCliente;
var
  cliente : Tcliente;
  qc, qe, q : tclassequery;
begin
  q := TClasseQuery.create;
  qe := TClasseQuery.create;
  qc := TClasseQuery.create;
  try
    q.q.Connection  := conexao;
    qe.q.Connection := conexao;
    qc.q.Connection := concep;
    q.q.Open('select * from CLI_CLIENTE WHERE CLI_TCL_ID=1 AND CLI_ID<>0');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'cliente - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      cliente := tcliente.create;
      try
        boupdate            := cliente.select(q.q.fieldbyname('CLI_ID').AsInteger);
        cliente.cdcliente   := q.q.fieldbyname('CLI_ID').AsInteger;
        cliente.rzsocial    := q.q.fieldbyname('CLI_NOME').AsString;
        cliente.nmcliente   := q.q.fieldbyname('CLI_APELIDO').AsString;
        if cliente.nmcliente = '' then
        begin
          cliente.nmcliente := cliente.rzsocial;
        end;
        cliente.email        := q.q.fieldbyname('CLI_EMAIL').asstring;
        cliente.nuinscest    := q.q.fieldbyname('CLI_INS_ESTADUAL').asstring;
        cliente.dtcadastro   := q.q.FieldByName('CLI_DATA_CADASTRO').AsDateTime;
        cliente.homepage     := q.q.fieldbyname('CLI_SITE').asstring;
        cliente.dsobservacao := q.q.fieldbyname('CLI_OBS').asstring;
        cliente.cdstcliente  := 1;
        if q.q.fieldbyname('CLI_FIS_JUR').AsString = 'J' then
        begin
          cliente.tppessoa := _j;
          cliente.cdsexo   := '';
          cliente.nucnpj   := formatarcnpj(q.q.fieldbyname('CLI_CNPJ').AsString);
          cliente.nucpf    := '';
        end
        else
        begin
          cliente.tppessoa  := _f;
          cliente.cdsexo    := q.q.fieldbyname('CLI_SEXO').AsString;
          cliente.nucpf     := formatarCPF(q.q.fieldbyname('CLI_CPF').AsString);
          cliente.nuidentid := q.q.fieldbyname('CLI_RG').AsString;
          cliente.nucnpj    := '';
          cliente.nmpai     := q.q.fieldbyname('CLI_NOME_PAI').AsString;
          cliente.nmmae     := q.q.fieldbyname('CLI_NOME_MAE').AsString;
          cliente.dtnascimento := q.q.fieldbyname('CLI_DAT_NASC').AsDateTime;
        end;
        qe.q.Close;
        qe.q.Open('select * from end_endereco where end_cli_id='+q.q.fieldbyname('CLI_ID').asstring);
        if qe.q.RecordCount > 0 then
        begin
          cliente.dsendereco     := qe.q.fieldbyname('END_LOGRADOURO').asstring;
          cliente.dsnumero       := qe.q.fieldbyname('END_NR').asstring;
          cliente.dscomplemento  := copy(qe.q.fieldbyname('END_COMPLEMENTO').asstring, 1, 20);
          cliente.nmbairro       := qe.q.fieldbyname('END_BAIRRO').asstring;
          cliente.nucep          := FormatarCep(qe.q.fieldbyname('END_CEP').asstring);
          cliente.cdpais         := qe.q.fieldbyname('END_COD_PAIS').AsInteger;
          cliente.nufax          := formartarTelefone(qe.q.fieldbyname('END_TEL_FAX').asstring);
          cliente.nufone1        := formartarTelefone(qe.q.fieldbyname('END_TEL_COM').asstring);
          qc.q.close;
          qc.q.Open('select * from CID_CIDADE where cid_id='+qe.q.fieldbyname('END_CID_ID').AsString);
          if qc.q.RecordCount > 0 then
          begin
            cliente.cdmunicipio    := qc.q.fieldbyname('CID_COD_MINIC_NFE').AsInteger;
            cliente.cduf           := copy(qc.q.fieldbyname('CID_COD_MINIC_NFE').AsString, 1, 2).ToInteger;
          end;
        end;
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
    FreeAndNil(qe);
    FreeAndNil(qc);
  end;
end;

procedure TImportacaoGesoft.ImportarCondpagto;
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

procedure TImportacaoGesoft.ImportarEntrada;
var
  entrada: tentrada;
  q : tclassequery;
begin
  aplicacao.confire.ExecSQL('alter trigger ITENTRADA_AI2_SALDOVALORPRODUTO inactive');
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from NTF_NOTA_FISCAL WHERE NTF_TIPO_ENT_SAI=''E'' AND NTF_DAT_EMISSAO BETWEEN '+GetDtBanco(dti)+' and '+getdtbanco(dtf));
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    Application.Title :=q.q.fieldbyname('NTF_CFO_ID').asstring;
    Application.ProcessMessages;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Nota Fiscal - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.Title := q.q.fieldbyname('NTF_CFO_ID').asstring;
      Application.ProcessMessages;
      if copy(RemoverChar(q.q.fieldbyname('NTF_CFO_ID').AsString, '.'), 1, 4) = '8101' then
      begin
        q.q.next;
        continue;
      end;
      entrada := tentrada.create;
      try
        boupdate            := entrada.select(q.q.fieldbyname('NTF_ID').asinteger);
        entrada.cdentrada   := q.q.fieldbyname('NTF_ID').asinteger;
        //entrada.cdserie   := 1;
        entrada.cdtpentrada := 1;
        entrada.cdcfop    := q.q.fieldbyname('NTF_CFO_ID').AsInteger;
        entrada.nuentrada   := q.q.fieldbyname('NTF_NUM_NOTA').asinteger;
        //entrada.tpentsai  := q.q.fieldbyname('NTF_TIPO_ENT_SAI').AsString;
        entrada.dtemissao := q.q.fieldbyname('NTF_DAT_EMISSAO').AsDateTime;
        entrada.dtsaida   := q.q.fieldbyname('NTF_DAT_ENTRADA_SAIDA').AsDateTime;
        if entrada.dtsaida = 0 then
        begin
          entrada.dtsaida := entrada.dtemissao;
        end;
        entrada.nudocfiscalicms := q.q.fieldbyname('NTF_MODELO').asString;
        entrada.vlcofins        := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_COFINS').AsCurrency;
        entrada.vlpis           := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_PIS').AsCurrency;
        entrada.nuchavenfe      := q.q.fieldbyname('NTF_NFE_CHAVE').AsString;
        entrada.vldesconto      := q.q.fieldbyname('NTF_DESC_TOTAL_NOTA').AsCurrency;
        entrada.vloutdespesa    := q.q.fieldbyname('NTF_CALC_IMPO_OUTRAS').AsCurrency; // NTF_ACRESC_TOTAL_NOTA    // NTF_CALC_IMPO_OUT_DESP_ACESSOR
        //entrada.psbruto         := q.q.fieldbyname('NTF_TRANSP_PESO_BRUTO').AsFloat;
        //entrada.psliquido       := q.q.fieldbyname('NTF_TRANSP_PESO_LIQ').AsFloat;
        //entrada.dsmarca         := q.q.fieldbyname('NTF_TRANSP_MARCA').AsString;
        //entrada.dsespecie       := q.q.fieldbyname('NTF_TRANSP_ESPECIE').AsString;
        entrada.vltotal         := q.q.fieldbyname('NTF_VALOR_TOTAL_NOTA').AsCurrency;
        entrada.vlservico       := q.q.fieldbyname('NTF_VALOR_TOTAL_SERV').AsCurrency;
        entrada.vlproduto       := q.q.fieldbyname('NTF_VALOR_TOTAL_ITENS').AsCurrency;
        entrada.vlipi           := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_TOT_IPI').AsCurrency;
        entrada.vlseguro        := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_SEGURO').AsCurrency;
        entrada.vlfrete                 := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_FRETE').AsCurrency;
        entrada.vlicmssubtrib           := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_ICMS_SUB').AsCurrency;
        entrada.vliss                   := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_TOT_ISS').AsCurrency;
        entrada.vlbaseicmssubtrib       := q.q.fieldbyname('NTF_CALC_IMPO_BSE_C_ICMS_SUB').AsCurrency;
        entrada.vlicms                  := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_ICMS').AsCurrency;
        entrada.vlbaseicms              := q.q.fieldbyname('NTF_CALC_IMPO_BASE_CALC_ICMS').AsCurrency;
        //entrada.hrentrada   := q.q.fieldbyname('NTF_HOTA_entrada').AsDateTime;
        entrada.nustdocumento           := _00; //q.q.fieldbyname('STATUS_NFE').AsString;
        entrada.cdfornecedor := q.q.fieldbyname('NTF_CLI_ID').AsInteger;
        application.title             := entrada.nuentrada.tostring;
        application.ProcessMessages;
        if boupdate then
        begin
          entrada.update;
        end
        else
        begin
          entrada.insert;
        end;
        if entrada.nustdocumento = _00 then
        begin
          ImportarItentrada(entrada.cdentrada.ToString);
        end;
      finally
        freeandnil(entrada);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
    aplicacao.confire.ExecSQL('alter trigger ITENTRADA_AI2_SALDOVALORPRODUTO active');
  end;
end;

procedure TImportacaoGesoft.ImportarFornecedor;
var
  fornecedor : TFornecedor;
  qc, qe, q : tclassequery;
begin
  q := TClasseQuery.create;
  qe := TClasseQuery.create;
  qc := TClasseQuery.create;
  try
    q.q.Connection  := conexao;
    qe.q.Connection := conexao;
    qc.q.Connection := concep;
    q.q.Open('select * from CLI_CLIENTE WHERE CLI_TCL_ID=2');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Fornecedor - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      fornecedor := tfornecedor.create;
      try
        boupdate := fornecedor.select(q.q.fieldbyname('CLI_ID').AsInteger);
        fornecedor.cdfornecedor   := q.q.fieldbyname('CLI_ID').AsInteger;
        fornecedor.rzsocial       := q.q.fieldbyname('CLI_NOME').AsString;
        fornecedor.nmfornecedor   := q.q.fieldbyname('CLI_APELIDO').AsString;
        if fornecedor.nmfornecedor = '' then
        begin
          fornecedor.nmfornecedor := fornecedor.rzsocial;
        end;
        fornecedor.email          := q.q.fieldbyname('CLI_EMAIL').asstring;
        fornecedor.nuinscest      := q.q.fieldbyname('CLI_INS_ESTADUAL').asstring;
        fornecedor.dtcadastro     := q.q.FieldByName('CLI_DATA_CADASTRO').AsDateTime;
        fornecedor.homepage       := q.q.fieldbyname('CLI_SITE').asstring;
        fornecedor.dsobservacao   := q.q.fieldbyname('CLI_OBS').asstring;
        fornecedor.cdstfornecedor := 1;
        if q.q.fieldbyname('CLI_FIS_JUR').AsString = 'J' then
        begin
          fornecedor.tppessoa := _j;
          fornecedor.cdsexo   := '';
          fornecedor.nucnpj   := formatarcnpj(q.q.fieldbyname('CLI_CNPJ').AsString);
          fornecedor.nucpf    := '';
        end
        else
        begin
          fornecedor.tppessoa  := _f;
          fornecedor.cdsexo    := q.q.fieldbyname('CLI_SEXO').AsString;
          fornecedor.nucpf     := formatarCPF(q.q.fieldbyname('CLI_CPF').AsString);
          fornecedor.nuidentid := q.q.fieldbyname('CLI_RG').AsString;
          fornecedor.nucnpj    := '';
          fornecedor.nmpai     := q.q.fieldbyname('CLI_NOME_PAI').AsString;
          fornecedor.nmmae     := q.q.fieldbyname('CLI_NOME_MAE').AsString;
          fornecedor.dtnascimento := q.q.fieldbyname('CLI_DAT_NASC').AsDateTime;
        end;
        qe.q.Close;
        qe.q.Open('select * from end_endereco where end_cli_id='+q.q.fieldbyname('CLI_ID').asstring);
        if qe.q.RecordCount > 0 then
        begin
          fornecedor.dsendereco     := qe.q.fieldbyname('END_LOGRADOURO').asstring;
          fornecedor.dsnumero       := qe.q.fieldbyname('END_NR').asstring;
          fornecedor.dscomplemento  := copy(qe.q.fieldbyname('END_COMPLEMENTO').asstring, 1, 20);
          fornecedor.nmbairro       := qe.q.fieldbyname('END_BAIRRO').asstring;
          fornecedor.nucep          := FormatarCep(qe.q.fieldbyname('END_CEP').asstring);
          fornecedor.cdpais         := qe.q.fieldbyname('END_COD_PAIS').AsInteger;
          fornecedor.nufax          := formartarTelefone(qe.q.fieldbyname('END_TEL_FAX').asstring);
          fornecedor.nufone1        := formartarTelefone(qe.q.fieldbyname('END_TEL_COM').asstring);
          qc.q.close;
          qc.q.Open('select * from CID_CIDADE where cid_id='+qe.q.fieldbyname('END_CID_ID').AsString);
          if qc.q.RecordCount > 0 then
          begin
            fornecedor.cdmunicipio    := qc.q.fieldbyname('CID_COD_MINIC_NFE').AsInteger;
            fornecedor.cduf           := copy(qc.q.fieldbyname('CID_COD_MINIC_NFE').AsString, 1, 2).ToInteger;
          end;
        end;
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
      finally
        freeandnil(fornecedor);
      end;
      q.q.next;
    end;
  finally
    FreeAndNil(q);
    FreeAndNil(qe);
    FreeAndNil(qc);
  end;
end;

procedure TImportacaoGesoft.ImportarItCondPagto;
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

procedure TImportacaoGesoft.ImportarItEntrada(id_entrada:string);
var
  itentrada : titentrada;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from INP_ITENS_NOTA_PRODUTO where INP_NTF_ID='+id_entrada);
    while not q.q.eof do
    begin
      itentrada := titentrada.create;
      try
        boupdate           := itentrada.select(q.q.fieldbyname('INP_ID').asinteger);
        itentrada.cditentrada  := q.q.fieldbyname('INP_ID').asinteger;
        itentrada.cdentrada    := q.q.fieldbyname('INP_NTF_ID').asinteger;
        itentrada.cdproduto  := q.q.fieldbyname('INP_PRO_ID').AsInteger;
        itentrada.qtitem     := q.q.fieldbyname('INP_QTDE').AsFloat;
        itentrada.vlunitario := q.q.fieldbyname('INP_VALOR_UNIT').AsCurrency;
        itentrada.vldesconto := q.q.fieldbyname('INP_DESC').AsCurrency;
        itentrada.vltotal    := q.q.fieldbyname('INP_VALOR_TOTAL').AsCurrency;
        itentrada.alicms     := q.q.fieldbyname('INP_ICMS').AsCurrency;
        itentrada.alipi      := q.q.fieldbyname('INP_IPI').AsFloat;
        itentrada.prdesconto := q.q.fieldbyname('INP_PERC_DESC').AsFloat;
        itentrada.alicmsred  := q.q.fieldbyname('INP_REDUCAO_BASE_CALC').AsFloat;
        //itentrada.aliss      := q.q.fieldbyname('INP_REDUCAO_BASE_CALC').AsFloat;
        itentrada.cdcfop     := q.q.fieldbyname('INP_CFO_ID').AsInteger;
        itentrada.vlipi      := q.q.fieldbyname('INP_IPI_VLR_CUSTO').AsCurrency;
        itentrada.prcomissao := q.q.fieldbyname('INP_PERC_COMISSAO').AsFloat;
        itentrada.alicmssubtrib  := q.q.fieldbyname('INP_ICMS_SAI_SUBST').AsFloat;
        //itentrada.nustipi        := q.q.fieldbyname('INP_CST_IPI').AsString;
        //itentrada.nustcofins     := q.q.fieldbyname('INP_CST_COFINS').AsString;
        //itentrada.nustpis        := q.q.fieldbyname('INP_CST_PIS').AsString;
        itentrada.alpis          := q.q.fieldbyname('INP_PIS').AsFloat;
        itentrada.alcofins       := q.q.fieldbyname('INP_COFINS').AsFloat;
        itentrada.prmrgvladicionadoicmssubtrib  := q.q.fieldbyname('INP_MVA').AsFloat;
        itentrada.nusticms       := TratarSTICMS(q.q.fieldbyname('INP_SIT_TRIBUTARIA').AsString);
        itentrada.vlicms     := q.q.fieldbyname('INP_ICMS').AsCurrency;
        itentrada.cddigitado := q.q.fieldbyname('INP_PRO_ID').AsString;

        {
        itentrada.vlbaseicms := q.q.fieldbyname('BASE_ICMS').AsCurrency;
        itentrada.vlbaseipi  := q.q.fieldbyname('BASE_IPI').AsCurrency;
        itentrada.vlbaseicmssubtrib  := q.q.fieldbyname('BASE_ICMSSUBST').AsCurrency;
        itentrada.vlicmssubtrib  := q.q.fieldbyname('VL_ICMSSUBST').AsCurrency;
        itentrada.vlpis          := q.q.fieldbyname('VL_PIS').AsCurrency;
        }
        {
        itentrada.vlbasecofins   := q.q.fieldbyname('BASE_COFINS').AsCurrency;
        itentrada.vlcofins       := q.q.fieldbyname('VL_COFINS').AsCurrency;
        itentrada.psbruto        := q.q.fieldbyname('PESO_BRUTO').AsFloat;
        itentrada.psliquido      := q.q.fieldbyname('PESO_LIQUIDO').Asfloat;
        itentrada.vlfrete        := q.q.fieldbyname('VL_FRETE').AsCurrency;
        itentrada.vloutdespesa   := q.q.fieldbyname('VL_OUTRAS').AsCurrency;
        itentrada.vlseguro       := q.q.fieldbyname('VL_SEGURO').AsCurrency;
        }
       {
        INP_CALSS_FISCAL          CHAR(250),
                CHAR(3) DEFAULT '000',

        INP_FUN_ID_VEND_EXT       INTEGER,
        INP_UNIDADE               CHAR(3),
        INP_NUM_NOTA_BL           VARCHAR(20),
        INP_DATA_NOTA_BL          DATE,

        INP_CUSTO_UNIT            DOUBLE PRECISION,
        INP_TIPO                  VARCHAR(2),
        INP_CUSTO_CONTABIL        DOUBLE PRECISION,

        INP_ICMS_ENT_SUBST        DOUBLE PRECISION,

        INP_LSV_ID                INTEGER,
        INP_VALOR_ST              DOUBLE PRECISION,
        INP_ALIQUOTA_IBPT         DOUBLE PRECISION,
        INP_DATA_DEV              DATE,
        INP_PRO_ALIQ_IMP_FIS      VARCHAR(3),
        INP_PRO_PRECO1            DOUBLE PRECISION,
        INP_CUSTO_CMV             DOUBLE PRECISION,
        INP_ST_VLR_UNID           DOUBLE PRECISION,
        INP_IPI_VLR               DOUBLE PRECISION,
        INP_ALIQ_COMBATE_MISERIA  DOUBLE PRECISION
        }
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

procedure TImportacaoGesoft.ImportarItSaida(id_nf:string);
var
  itsaida : titsaida;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from INP_ITENS_NOTA_PRODUTO where INP_NTF_ID='+id_nf);
    while not q.q.eof do
    begin
      itsaida := titsaida.create;
      try
        boupdate           := itsaida.select(q.q.fieldbyname('INP_ID').asinteger);
        itsaida.cditsaida  := q.q.fieldbyname('INP_ID').asinteger;
        itsaida.cdsaida    := q.q.fieldbyname('INP_NTF_ID').asinteger;
        itsaida.cdproduto  := q.q.fieldbyname('INP_PRO_ID').AsInteger;
        itsaida.qtitem     := q.q.fieldbyname('INP_QTDE').AsFloat;
        itsaida.vlunitario := q.q.fieldbyname('INP_VALOR_UNIT').AsCurrency;
        itsaida.vldesconto := q.q.fieldbyname('INP_DESC').AsCurrency;
        itsaida.vltotal    := q.q.fieldbyname('INP_VALOR_TOTAL').AsCurrency;
        itsaida.alicms     := q.q.fieldbyname('INP_ICMS').AsCurrency;
        itsaida.alipi      := q.q.fieldbyname('INP_IPI').AsFloat;
        itsaida.prdesconto := q.q.fieldbyname('INP_PERC_DESC').AsFloat;
        itsaida.alicmsred  := q.q.fieldbyname('INP_REDUCAO_BASE_CALC').AsFloat;
        itsaida.aliss      := q.q.fieldbyname('INP_REDUCAO_BASE_CALC').AsFloat;
        itsaida.cdcfop     := q.q.fieldbyname('INP_CFO_ID').AsInteger;
        itsaida.vlipi      := q.q.fieldbyname('INP_IPI_VLR_CUSTO').AsCurrency;
        itsaida.prcomissao := q.q.fieldbyname('INP_PERC_COMISSAO').AsFloat;
        itsaida.alicmssubtrib  := q.q.fieldbyname('INP_ICMS_SAI_SUBST').AsFloat;
        //itsaida.nustipi        := q.q.fieldbyname('INP_CST_IPI').AsString;
        //itsaida.nustcofins     := q.q.fieldbyname('INP_CST_COFINS').AsString;
        //itsaida.nustpis        := q.q.fieldbyname('INP_CST_PIS').AsString;
        itsaida.alpis          := q.q.fieldbyname('INP_PIS').AsFloat;
        itsaida.alcofins       := q.q.fieldbyname('INP_COFINS').AsFloat;
        itsaida.prmrgvladicionadoicmssubtrib  := q.q.fieldbyname('INP_MVA').AsFloat;
        itsaida.nusticms       := TratarSTICMS(q.q.fieldbyname('INP_SIT_TRIBUTARIA').AsString);
        itsaida.vlicms     := q.q.fieldbyname('INP_ICMS').AsCurrency;
        itsaida.cddigitado := q.q.fieldbyname('INP_PRO_ID').AsString;

        {
        itsaida.vlbaseicms := q.q.fieldbyname('BASE_ICMS').AsCurrency;
        itsaida.vlbaseipi  := q.q.fieldbyname('BASE_IPI').AsCurrency;
        itsaida.vlbaseicmssubtrib  := q.q.fieldbyname('BASE_ICMSSUBST').AsCurrency;
        itsaida.vlicmssubtrib  := q.q.fieldbyname('VL_ICMSSUBST').AsCurrency;
        itsaida.vlpis          := q.q.fieldbyname('VL_PIS').AsCurrency;
        }
        {
        itsaida.vlbasecofins   := q.q.fieldbyname('BASE_COFINS').AsCurrency;
        itsaida.vlcofins       := q.q.fieldbyname('VL_COFINS').AsCurrency;
        itsaida.psbruto        := q.q.fieldbyname('PESO_BRUTO').AsFloat;
        itsaida.psliquido      := q.q.fieldbyname('PESO_LIQUIDO').Asfloat;
        itsaida.vlfrete        := q.q.fieldbyname('VL_FRETE').AsCurrency;
        itsaida.vloutdespesa   := q.q.fieldbyname('VL_OUTRAS').AsCurrency;
        itsaida.vlseguro       := q.q.fieldbyname('VL_SEGURO').AsCurrency;
        }
       {
        INP_CALSS_FISCAL          CHAR(250),
                CHAR(3) DEFAULT '000',

        INP_FUN_ID_VEND_EXT       INTEGER,
        INP_UNIDADE               CHAR(3),
        INP_NUM_NOTA_BL           VARCHAR(20),
        INP_DATA_NOTA_BL          DATE,

        INP_CUSTO_UNIT            DOUBLE PRECISION,
        INP_TIPO                  VARCHAR(2),
        INP_CUSTO_CONTABIL        DOUBLE PRECISION,

        INP_ICMS_ENT_SUBST        DOUBLE PRECISION,

        INP_LSV_ID                INTEGER,
        INP_VALOR_ST              DOUBLE PRECISION,
        INP_ALIQUOTA_IBPT         DOUBLE PRECISION,
        INP_DATA_DEV              DATE,
        INP_PRO_ALIQ_IMP_FIS      VARCHAR(3),
        INP_PRO_PRECO1            DOUBLE PRECISION,
        INP_CUSTO_CMV             DOUBLE PRECISION,
        INP_ST_VLR_UNID           DOUBLE PRECISION,
        INP_IPI_VLR               DOUBLE PRECISION,
        INP_ALIQ_COMBATE_MISERIA  DOUBLE PRECISION
        }
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

procedure TImportacaoGesoft.ImportarProduto;
var
  produto : TProduto;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from PRO_PRODUTO');
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Produto - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      produto := tproduto.create;
      try
        boupdate                := produto.select(q.q.fieldbyname('PRO_ID').asinteger);
        produto.cdproduto       := q.q.fieldbyname('PRO_ID').asinteger;
        produto.cdalternativo   := q.q.fieldbyname('PRO_CODIGO').asstring;
        produto.nmproduto       := q.q.fieldbyname('PRO_DESCRICAO').AsString;
        produto.cdcodfornecedor := q.q.FieldByName('PRO_COD_PRO_FORNEC').AsString;
        produto.cean            := q.q.FieldByName('PRO_COD_BARRAS').AsString;
        produto.cdunidade       := qregistro.CodigodoNomeInteiro(_unidade, q.q.fieldbyname('PRO_TIPO_UNIDADE').AsString);
        produto.vlvenda         := q.q.fieldbyname('PRO_PRECO1').AsCurrency;
        produto.nuclfiscal      := removercaracteres(q.q.fieldbyname('PRO_CLASS_FISCAL').AsString);
        produto.nusticms        := TratarSTICMS(q.q.fieldbyname('PRO_COD_TRIB').AsString);
        produto.vlcusto         := q.q.fieldbyname('PRO_CUSTO_TOTAL').AsCurrency;

        produto.cdtpproduto    := 1;
        produto.cdtpitem       := _07;
        produto.nunivel        := _07;
        produto.cdgrupo        := 8;
        produto.cdorigem       := _0;
        //produto.cdcodfornecedor := q.q.fieldbyname('CODIGO_BARRAS').AsString;
        //produto.cdanp      := q.q.fieldbyname('COD_ANP').AsString;
        {
          vlvendaminimo   => PRO_PRECO_MINIMO            DOUBLE PRECISION,
          qtembalagem     => PRO_QTDE_EMBALAGEM          DOUBLE PRECISION,
          PRO_DESP_ACESSORIA          DOUBLE PRECISION DEFAULT 0,
          PRO_DIF_ICMS                DOUBLE PRECISION DEFAULT 0,
          PRO_DAE                     DECIMAL(3,2) DEFAULT 0,
          PRO_DARF                    DECIMAL(3,2) DEFAULT 0,
          PRO_PERC_BASE_CALC          DECIMAL(3,2),
          PRO_SUBIST_TRIB             DECIMAL(3,2) DEFAULT 0,
          PRO_BLOQ_LST_PRECO          CHAR(3),
          PRO_JUROS_MES               DECIMAL(3,2) DEFAULT 0,
          PRO_PIS_SAIDA               DECIMAL(3,2),
          PRO_PIS                     DECIMAL(3,2) DEFAULT 0,
          PRO_COFINS_SAIDA            DECIMAL(3,2),
          PRO_COFINS                  DECIMAL(3,2) DEFAULT 0,
          PRO_LUCRO_SOBRE_CUSTO       DECIMAL(3,3),
          PRO_MARGEM_LIQ              DECIMAL(3,3) DEFAULT 0,
          PRO_LUCRO_DESEJADO          DECIMAL(3,2),
          PRO_CUSTOS_OPERACAO         DECIMAL(3,2) DEFAULT 0,
          PRO_MARKUP                  DECIMAL(3,2),
          PRO_LUCRO_REAL              DECIMAL(3,2),
          SIMPLES                     DECIMAL(3,2) DEFAULT 0,
          PRO_COMPLEM_DESC_VENDA      CHAR(1) DEFAULT 'N',
          PRO_OBS                     VARCHAR(1000),
          PRO_INATIVO                 CHAR(3) DEFAULT 'NAO',
          PRO_TAB_PRECO               CHAR(3) DEFAULT 'SIM',
          PRO_DAT_CRI                 DATE DEFAULT current_date NOT NULL,
          PRO_DAT_ALT                 DATE DEFAULT current_date NOT NULL,
          PRO_USU_CRI                 INTEGER DEFAULT 1 NOT NULL,
          PRO_USU_ALT                 INTEGER DEFAULT 1 NOT NULL,
          PRO_EMP_ID                  INTEGER DEFAULT 1 NOT NULL,
          PRO_CLI_ID_FABRIC           INTEGER,
          PRO_SETOR_ECOMERCE_ID       INTEGER,
          PRO_SUBSETOR_ECOMERCE_ID    INTEGER,
          PRO_REVIEW                  VARCHAR(20),
          PRO_LOCALIZACAO             VARCHAR(250),
          PRO_LUCRO_PRESUMIDO         DOUBLE PRECISION,
          PRO_PESADO                  CHAR(1),
          PRO_BALANCA_COD_PRO         VARCHAR(10),
          PRO_BALANCA_TIPO            CHAR(1),
          PRO_BALANCA_VAL             INTEGER,
          PRO_BALANCA_RECEITA         VARCHAR(250),
          PRO_BALANCA_SETOR           VARCHAR(20),
          PRO_BALANCA_INDICE          VARCHAR(10),
          PRO_BALANCA_TCL_ASSOC       VARCHAR(10),
          PRO_MATERIA_PRIMA           CHAR(1) DEFAULT 'N',
          PRO_ICMS_ENT_SUBST          DECIMAL(3,2),
          PRO_ICMS_SAI_SUBST          DECIMAL(3,2),
          PRO_ESTOQ_SEGURANCA         DOUBLE PRECISION,
          PRO_INTERVALO_RESUPRIMENTO  DOUBLE PRECISION,
          PRO_CLASSE_ABC              CHAR(1),
          PRO_TIPO_UNIDADE_ENTRADA    VARCHAR(3),
          PRO_TRIBUT_MONOFASICA       CHAR(1),
          PRO_APLICACAO               VARCHAR(250),
          PRO_PATH_FOTO               VARCHAR(100),
          PRO_SIMILAR                 VARCHAR(250),
          PRO_INTEGRACAO              INTEGER,
          PRO_DESTAQUE_SITE           INTEGER,
          PRO_KIT                     CHAR(1) DEFAULT 'N',
          PRO_KIT_DINAMICO            CHAR(1) DEFAULT 'N',
          PRO_COD_AUXILIAR            VARCHAR(50),
          PRO_MGZ_ID                  INTEGER,
          PRO_DESCRICAO_RESUMIDA      VARCHAR(100),
          PRO_PRODUCAO_PROPRIA        CHAR(1),
          PRO_TRUNC_ARRE              CHAR(1),
          PRO_VALIDACAO               VARCHAR(500),
          PRO_DAT_EXPORTACAO          DATE,
          PRO_DAT_IMPORTACAO          DATE,
          PRO_CST_IPI                 INTEGER,
          PRO_CST_PIS                 INTEGER,
          PRO_CST_COFINS              INTEGER,
          PRO_CST_PIS_ENT             INTEGER,
          PRO_CST_COFINS_ENT          INTEGER,
          PRO_PRECO4                  DOUBLE PRECISION,
          PRO_DAT_PRECO4              TIMESTAMP,
          PRO_TIPO                    CHAR(2),
          PRO_ANP                     VARCHAR(9),
          PRO_IPI_VLR_UNID            DOUBLE PRECISION,
          PRO_PIS_VLR_UNID            DOUBLE PRECISION,
          PRO_COFINS_VLR_UNID         DOUBLE PRECISION,
          PRO_ST_VLR_UNID             DOUBLE PRECISION,
          PRO_ALIQUOTA_IBPT           DOUBLE PRECISION,
          PRO_USO_CONSUMO             CHAR(1),
          PRO_CUSTO_CMV               DOUBLE PRECISION,
          PRO_CEST                    VARCHAR(7),
          PRO_ACRESCIMO_ICMS          CHAR(1),
          PRO_ALIQ_COMBATE_MISERIA    FLOAT
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

procedure TImportacaoGesoft.ImportarSaida;
var
  saida: tsaida;
  q : tclassequery;
begin
  q := TClasseQuery.create;
  try
    q.q.Connection := conexao;
    q.q.Open('select * from NTF_NOTA_FISCAL WHERE NTF_TIPO_ENT_SAI=''S'' AND NTF_DAT_EMISSAO BETWEEN '+GetDtBanco(dti)+' and '+getdtbanco(dtf));
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    Application.Title :=q.q.fieldbyname('NTF_CFO_ID').asstring;
    Application.ProcessMessages;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption := 'Nota Fiscal - Registro '+q.q.recno.tostring+' de '+q.q.recordcount.tostring;
      frmprogressbar.gau.Progress := q.q.recno;
      Application.ProcessMessages;
      saida := tsaida.create;
      try
        boupdate        := saida.select(q.q.fieldbyname('NTF_ID').asinteger);
        saida.cdsaida   := q.q.fieldbyname('NTF_ID').asinteger;
        saida.cdserie   := 1;
        saida.cdtpsaida := 1;
        saida.cdcfop    := q.q.fieldbyname('NTF_CFO_ID').AsInteger;
        saida.nusaida   := q.q.fieldbyname('NTF_NUM_NOTA').asinteger;
        saida.tpentsai  := q.q.fieldbyname('NTF_TIPO_ENT_SAI').AsString;
        saida.dtemissao := q.q.fieldbyname('NTF_DAT_EMISSAO').AsDateTime;
        saida.dtsaida   := q.q.fieldbyname('NTF_DAT_ENTRADA_SAIDA').AsDateTime;
        saida.nudocfiscalicms := q.q.fieldbyname('NTF_MODELO').asString;
        saida.vlcofins        := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_COFINS').AsCurrency;
        saida.vlpis           := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_PIS').AsCurrency;
        saida.nuchavenfe      := q.q.fieldbyname('NTF_NFE_CHAVE').AsString;
        saida.vldesconto      := q.q.fieldbyname('NTF_DESC_TOTAL_NOTA').AsCurrency;
        saida.vloutdespesa    := q.q.fieldbyname('NTF_CALC_IMPO_OUTRAS').AsCurrency; // NTF_ACRESC_TOTAL_NOTA    // NTF_CALC_IMPO_OUT_DESP_ACESSOR
        //saida.psbruto         := q.q.fieldbyname('NTF_TRANSP_PESO_BRUTO').AsFloat;
        //saida.psliquido       := q.q.fieldbyname('NTF_TRANSP_PESO_LIQ').AsFloat;
        saida.dsmarca         := q.q.fieldbyname('NTF_TRANSP_MARCA').AsString;
        saida.dsespecie       := q.q.fieldbyname('NTF_TRANSP_ESPECIE').AsString;
        saida.vltotal         := q.q.fieldbyname('NTF_VALOR_TOTAL_NOTA').AsCurrency;
        saida.vlservico       := q.q.fieldbyname('NTF_VALOR_TOTAL_SERV').AsCurrency;
        saida.vlproduto       := q.q.fieldbyname('NTF_VALOR_TOTAL_ITENS').AsCurrency;
        saida.vlipi           := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_TOT_IPI').AsCurrency;
        saida.vlseguro        := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_SEGURO').AsCurrency;
        saida.vlfrete                 := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_FRETE').AsCurrency;
        saida.vlicmssubtrib           := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_ICMS_SUB').AsCurrency;
        saida.vliss                   := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_TOT_ISS').AsCurrency;
        saida.vlbaseicmssubtrib       := q.q.fieldbyname('NTF_CALC_IMPO_BSE_C_ICMS_SUB').AsCurrency;
        saida.vlicms                  := q.q.fieldbyname('NTF_CALC_IMPO_VALOR_ICMS').AsCurrency;
        saida.vlbaseicms              := q.q.fieldbyname('NTF_CALC_IMPO_BASE_CALC_ICMS').AsCurrency;
        //saida.hrsaida   := q.q.fieldbyname('NTF_HOTA_SAIDA').AsDateTime;
        saida.nustdocumento           := _00; //q.q.fieldbyname('STATUS_NFE').AsString;
        if q.q.fieldbyname('NTF_CLI_ID').AsString <> '' then
        begin
          saida.cdcliente := qregistro.CodigodoString(_cliente, q.q.fieldbyname('NTF_CLI_ID').AsString, _nucnpj);
          if saida.cdcliente = 0 then
          begin
            saida.cdcliente := qregistro.CodigodoString(_cliente, q.q.fieldbyname('NTF_CLI_ID').AsString, _nucpf);
          end;
        end
        else
        begin
          saida.cdcliente := qregistro.CodigodoString(_cliente, q.q.fieldbyname('NTF_CLI_ID').AsString, _nucnpj);
          if saida.cdcliente = 0 then
          begin
            saida.cdfornecedor := qregistro.CodigodoString(_fornecedor, q.q.fieldbyname('NTF_CLI_ID').AsString, _nucpf);
          end;
        end;
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

class procedure TImportacaoGesoft.SequenciaImportacao(tbl:string='');
var
  Importacao : TImportacaoGesoft;
begin
  importacao := TImportacaoGesoft.create;
  try
    if tbl = '' then
    begin
      importacao.ImportarCondpagto;
      importacao.ImportarItCondPagto;
      importacao.ImportarFornecedor;
      importacao.importarCliente;
      importacao.ImportarProduto;
      importacao.ImportarEntrada;
      importacao.ImportarSaida;
    end;
    if tbl = _produto then
    begin
      importacao.ImportarProduto;
    end;
    if tbl = _fornecedor then
    begin
      importacao.ImportarFornecedor;
    end;
    if tbl = _cliente then
    begin
      Importacao.ImportarCliente;
    end;
    if tbl = _saida then
    begin
      if not dlgDataInicioFinal(importacao.dti, importacao.dtf, true, 'Faixa de data para importação') then
      begin
        exit;
      end;
      Importacao.ImportarSaida;
    end;
    if tbl = _entrada then
    begin
      if not dlgDataInicioFinal(importacao.dti, importacao.dtf, true, 'Faixa de data para importação') then
      begin
        exit;
      end;
      Importacao.ImportarEntrada;
    end;
  finally
    importacao.free;
  end;
end;

function TImportacaoGesoft.TratarSTICMS(nusticms: string): string;
begin
  result := nusticms;
  if nusticms = '060' then
  begin
    result := _60;
  end;
  if nusticms = '000' then
  begin
    result := _00;
  end;
  if nusticms = '040' then
  begin
    result := _40;
  end;
  if nusticms = '020' then
  begin
    result := _20;
  end;
end;

end.
