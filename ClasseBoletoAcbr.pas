unit ClasseBoletoAcbr;

interface

uses
  Forms, Dialogs, Classes, SysUtils, system.UITypes,
  ACBrUtil, ACBrBoletoFCFR, ACBrBoleto,
  udatahora, ustrings, uRegistro, uRotinas, uConstantes, uprogressbar,
  classeRetornaSql, classeempresa, classeaplicacao, classeregistrainformacao,
  classecliente, classegerar, classequery,classecobranca, classeduplicata, classeconta;

type
  TBoletoAcbr = class
  private
    function  ObterCodigoTransmissao:string;
    function  ObterTpcobranca:TACBrTipoCobranca;
    function  ObterLayout:TACBrLayoutRemessa;
    function  ObterRespEmissao(cdrespemissao:integer):TACBrResponEmissao;
    function  ObterCaracTitulo(cdcaractitulo:integer):TACBrCaracTitulo;
    function  ObterTipoCarteira(cdtpcarteiraboleto:integer):TACBrTipoCarteira;
    function  AdicionarTitulo(cdsetboleto: integer; duplicata: TDuplicata; parcela:integer=1; totalparcelas:integer=1):boolean;
    function  AdicionarTituloRemessa(cobranca: TCobranca):Boolean;
    function  imprimir:boolean;
    function  GerarPDFBoletoInterno(duplicata: TDuplicata):string;
    function  GerarPDFCarneInterno:string;
    procedure ConfigurarImpressao(cdtipo:string);
    function  ValidarArquivo(filename:string):boolean;
    procedure salvar_boleto(cdtipo: string);
  public
    setboleto : TSetBoleto;
    conta     : TConta;
    ACBrBoleto : TACBrBoleto;
    ACBrBoletoFCFR : TACBrBoletoFCFR;
    constructor create;
    destructor destroy;
    procedure ConfigurarCedente;
    procedure Configurarbanco;
    class function ImprimirBoleto(cdsetboleto:integer; duplicataList: TDuplicataList):boolean;overload;
    class function ImprimirBoleto(duplicata: TDuplicata):boolean;overload;
    class function Imprimir_carne(cdsetboleto: integer; duplicatalist: TDuplicataList):boolean;
    class function GerarPDFCarne (cdsetboleto: integer; duplicataList:TDuplicataList):string;
    class function GerarPDFBoleto(cdsetboleto: integer; duplicata:TDuplicata):string;
    class function GerarArquivoRemessa  (cobranca: TCobranca):string;
    class function ReceberArquivoRetorno(cdsetboleto:integer; filename :string):integer;
  end;


implementation

class function TBoletoAcbr.GerarArquivoRemessa(cobranca: TCobranca):string;
var
  diretorio : string;
  boleto : TBoletoAcbr;
begin
  boleto := TBoletoAcbr.Create;
  try
    boleto.setboleto.select(cobranca.cdsetboleto);
    boleto.conta.select(boleto.setboleto.cdconta);
    boleto.ConfigurarImpressao(_DSBOLETO);
    boleto.Configurarbanco;
    boleto.ConfigurarCedente;
    if boleto.AdicionarTituloRemessa(cobranca) then
    begin
      if boleto.setboleto.dspathremessa = '' then
      begin
        diretorio := QRotinas.getdiretorio;
        if diretorio = '' then
        begin
          Exit;
        end;
        boleto.ACBrBoleto.DirArqRemessa := diretorio;
      end;
      result := boleto.ACBrBoleto.GerarRemessa(cobranca.cdcobranca);
    end;
  finally
    freeandnil(boleto);
  end;
end;

class function TBoletoAcbr.ReceberArquivoRetorno(cdsetboleto: integer; filename :string):integer;
var
  boletoAcbr : TBoletoAcbr;
  i : Integer;
  sqlbaixa, sql : TStrings;
  vllancamento : Currency;
  qmovbancario, qbaixa : TClasseQuery;
  procedure inserir_movbancario;
  var
    arquivo : TStrings;
  begin
    arquivo := tstringlist.Create;
    try
      arquivo.LoadFromFile(filename);
      qmovbancario.q.Insert;
      qmovbancario.q.FieldByName(_cdmovbancario).AsString    := gerarcodigo(_movbancario);
      qmovbancario.q.FieldByName(_arquivo+_retorno).AsString := arquivo.Text;
      qmovbancario.q.FieldByName(_vldeposito).AsCurrency     := 0;
      qmovbancario.q.FieldByName(_vlpagamento).AsCurrency    := 0;
      qmovbancario.q.FieldByName(_vllancamento).AsCurrency   := 0;
      qmovbancario.q.FieldByName(_boconciliado).AsString     := _n;
      qmovbancario.q.FieldByName(_cdnatureza).AsString       := _c;
      qmovbancario.q.FieldByName(_cdmovimentacao).AsString   := _3;
      qmovbancario.q.FieldByName(_cdconta).AsInteger         := boletoAcbr.conta.cdconta;
      qmovbancario.q.FieldByName(_dtemissao).AsDateTime      := boletoAcbr.ACBrBoleto.ListadeBoletos[0].DataOcorrencia;
      RegistraInclusao(qmovbancario.q);
      aplicacao.aplyupdates(qmovbancario.q);
    finally
      freeandnil(arquivo);
    end;
  end;
  procedure insert_baixa;
  var
    nunossonumero, nubaixa, cdduplicata : string;
    vlcomissao, vldevolucao, vlliquido, vlbaixa, vljuro, vldesconto, vlabatimento, vlmulta : Currency;
    function getcdduplicata:string;
      function get_nunossonumero:string;
      begin
        result := nunossonumero;
        if (boletoAcbr.ACBrBoleto.Banco.TipoCobranca = cobSantander) and (boletoAcbr.ACBrBoleto.LayoutRemessa = c240) then
        begin
          result := Copy(nunossonumero, 1, length(nunossonumero)-1);
        end;
        if (boletoAcbr.ACBrBoleto.Banco.TipoCobranca = cobBancoob) and (boletoAcbr.ACBrBoleto.LayoutRemessa = c240) then
        begin
          result := nunossonumero+'-';
        end;
      end;
      function makesql:string;
      begin
        result := 'select cdduplicata from duplicata where cdstduplicata=1 and cdempresa='+empresa.cdempresa.ToString+' and (nuduplicata='+quotedstr(nubaixa)+' ';
        if boletoAcbr.ACBrBoleto.Banco.TipoCobranca = cobBancoob then
        begin
          result := result + 'or nunossonumero like '+quotedstr(RemoverCaracterInicio(get_nunossonumero, _0)+'%')+')';
        end
        else
        begin
          result := result + 'or nunossonumero='+quotedstr(RemoverCaracterInicio(get_nunossonumero, _0))+')';
        end;
      end;
    begin
      result := RetornaSQLString(makesql);
    end;
  begin
    if boletoAcbr.ACBrBoleto.ListadeBoletos[i].OcorrenciaOriginal.Tipo = toRetornoRegistroRecusado then
    begin
      messagedlg('O boleto do nosso número '+boletoAcbr.ACBrBoleto.ListadeBoletos[i].NossoNumero+' e documento '+boletoAcbr.ACBrBoleto.ListadeBoletos[i].NumeroDocumento+#13'deu retorno de registro recusado.', mtinformation, [mbok], 0);
      exit;
    end;
    if (boletoAcbr.ACBrBoleto.ListadeBoletos[i].OcorrenciaOriginal.Tipo <> toRetornoLiquidado) and
       (boletoAcbr.ACBrBoleto.ListadeBoletos[i].OcorrenciaOriginal.Tipo <> toRetornoLiquidadoAposBaixaOuNaoRegistro) and
       (boletoAcbr.ACBrBoleto.ListadeBoletos[i].OcorrenciaOriginal.Tipo <> toRetornoBaixaSimples) and
       (boletoAcbr.ACBrBoleto.ListadeBoletos[i].OcorrenciaOriginal.Tipo <> toRetornoLiquidadosemregistro) and
       (boletoAcbr.ACBrBoleto.ListadeBoletos[i].OcorrenciaOriginal.Tipo <> toRetornoLiquidadoEmCartorio) then
    begin
      Exit;
    end;
    nunossonumero := boletoAcbr.ACBrBoleto.ListadeBoletos[i].NossoNumero;
    if boletoAcbr.ACBrBoleto.Banco.TipoCobranca = cobSantander then
    begin
      nubaixa := RemoverCaracterInicio(Trim(boletoAcbr.ACBrBoleto.ListadeBoletos[i].SeuNumero), _0);
    end
    else
    begin
      nubaixa := Trim(boletoAcbr.ACBrBoleto.ListadeBoletos[i].NumeroDocumento);
    end;
    cdduplicata   := getcdduplicata;
    if cdduplicata = '' then
    begin
      MessageDlg('Não foi encontrato o documento '+nubaixa+' com o'#13+
                 'nosso número '+nunossonumero+#13+
                 'com valor '+getcurrencys(boletoAcbr.ACBrBoleto.ListadeBoletos[i].ValorRecebido)+#13+
                 'para realizar a baixa.',mtInformation, [mbOK], 0);
      exit;
    end;
    if nubaixa = '' then
    begin
      nubaixa := NomedoCodigo(_duplicata, cdduplicata, _nuduplicata);
    end;
    vlbaixa       := boletoAcbr.ACBrBoleto.ListadeBoletos[i].ValorRecebido -
                     boletoAcbr.ACBrBoleto.ListadeBoletos[i].ValorMoraJuros +
                     boletoAcbr.ACBrBoleto.ListadeBoletos[i].ValorDesconto +
                     boletoAcbr.ACBrBoleto.ListadeBoletos[i].ValorAbatimento;
    vljuro        := boletoAcbr.ACBrBoleto.ListadeBoletos[i].ValorMoraJuros;
    vldesconto    := boletoAcbr.ACBrBoleto.ListadeBoletos[i].ValorDesconto;
    vlabatimento  := boletoAcbr.ACBrBoleto.ListadeBoletos[i].ValorAbatimento;
    vlmulta       := 0;
    if (boletoAcbr.ACBrBoleto.ListadeBoletos[i].OcorrenciaOriginal.Tipo = toRetornoLiquidadoEmCartorio) or
       ((boletoAcbr.setboleto.bodespesaretornoliquidado = _s) and
       (boletoAcbr.ACBrBoleto.ListadeBoletos[i].OcorrenciaOriginal.Tipo = toRetornoLiquidado)) then
    begin
      vlbaixa := vlbaixa + boletoAcbr.ACBrBoleto.ListadeBoletos[i].ValorDespesaCobranca;
    end;
    vldevolucao   := 0;
    vlliquido     := vlbaixa + vljuro - vldesconto - vlabatimento + vlmulta;
    vllancamento  := vllancamento + vlliquido;
    vlcomissao    := (vlbaixa - vldesconto - vlabatimento) * 100 / ValordoCodigo(_duplicata, cdduplicata, _vlduplicata) * ValordoCodigo(_duplicata, cdduplicata, _vlcomissao) / 100;
    if qbaixa.q.RecordCount = 0 then
    begin
      inserir_movbancario;
    end;
    qbaixa.q.Insert;
    qbaixa.q.FieldByName(_vlcomissao).AsCurrency   := vlcomissao;
    qbaixa.q.FieldByName(_cdbaixa).AsString        := GerarCodigo(_baixa);
    qbaixa.q.FieldByName(_dtbaixa).AsDateTime      := boletoAcbr.ACBrBoleto.ListadeBoletos[i].DataOcorrencia;
    qbaixa.q.FieldByName(_cdmovbancario).AsString  := qmovbancario.q.FieldByName(_cdmovbancario).AsString;
    qbaixa.q.FieldByName(_nubaixa).AsString        := nubaixa;
    qbaixa.q.FieldByName(_cdduplicata).AsString    := cdduplicata;
    qbaixa.q.FieldByName(_vlbaixa).AsCurrency      := vlbaixa;
    qbaixa.q.FieldByName(_vljuro).AsCurrency       := vljuro;
    qbaixa.q.FieldByName(_vldesconto).AsCurrency   := vldesconto;
    qbaixa.q.FieldByName(_vlabatimento).AsCurrency := vlabatimento;
    qbaixa.q.FieldByName(_vlmulta).AsCurrency      := vlmulta;
    qbaixa.q.FieldByName(_vldevolucao).AsCurrency  := vldevolucao;
    qbaixa.q.FieldByName(_vlliquido).AsCurrency    := vlliquido;
    RegistraInclusao(qbaixa.q);
    aplicacao.aplyupdates(qbaixa.q);
  end;
begin
  result       := 0;
  boletoAcbr   := TBoletoAcbr.Create;
  sql          := TStringList.Create;
  sqlbaixa     := TStringList.Create;
  qmovbancario := TClasseQuery.Create(QRetornaSQL.get_select_from(_movbancario, _0), true);
  qbaixa       := TClasseQuery.Create(QRetornaSQL.get_select_from(_baixa, _0), true);
  try
    boletoAcbr.setboleto.select(cdsetboleto);
    boletoAcbr.conta.select(boletoAcbr.setboleto.cdconta);
    boletoAcbr.ConfigurarImpressao(_DS+_BOLETO);
    boletoAcbr.Configurarbanco;
    boletoAcbr.ConfigurarCedente;
    //if (boletoAcbr.ACBrBoleto.Banco.TipoCobranca = cobBradesco) and (boletoAcbr.ACBrBoleto.LayoutRemessa = c400) then
    //begin
      //boletoAcbr.ACBrBoleto.Cedente.CodigoCedente := boletoAcbr.setboleto.nuconvenio;
    //end;
    boletoAcbr.ACBrBoleto.NomeArqRetorno := ExtractFileName(filename);
    boletoAcbr.ACBrBoleto.DirArqRetorno  := Copy(ExtractFilePath(filename), 1, Length(ExtractFilePath(filename))-1);
    if not boletoAcbr.ValidarArquivo(filename) then
    begin
      exit;
    end;
    boletoAcbr.ACBrBoleto.LerRetorno;
    if boletoAcbr.ACBrBoleto.ListadeBoletos.Count = 0 then
    begin
      Exit;
    end;
    vllancamento := 0;
    for i := 0 to boletoAcbr.ACBrBoleto.ListadeBoletos.Count - 1 do
    begin
      insert_baixa;
    end;
    if qmovbancario.q.RecordCount = 0 then
    begin
      Exit;
    end;
    qmovbancario.q.Edit;
    qmovbancario.q.FieldByName(_vllancamento).AsCurrency := vllancamento;
    aplicacao.aplyupdates(qmovbancario.q);
    MessageDlg('Importação do arquivo de retorno de cobrança'#13'realizado com a data de '+GetDtAbrev(boletoAcbr.ACBrBoleto.ListadeBoletos[0].DataOcorrencia)+'.', mtInformation, [mbOK], 0);
    result := qmovbancario.q.FieldByName(_cdmovbancario).asinteger;
  finally
    freeandnil(boletoAcbr);
    freeandnil(qmovbancario);
    freeandnil(qbaixa);
    freeandnil(sql);
    freeandnil(sqlbaixa);
  end;
end;

class function TBoletoAcbr.ImprimirBoleto(cdsetboleto: integer; duplicataList: TDuplicataList):boolean;
var
  i : integer;
  boletoAcbr : TBoletoAcbr;
begin
  frmprogressbar := tfrmprogressbar.create(nil);
  boletoAcbr := TBoletoAcbr.Create;
  try
    boletoAcbr.setboleto.select(cdsetboleto);
    boletoAcbr.ConfigurarImpressao(_DSBOLETO);
    boletoAcbr.conta.cdconta := boletoAcbr.setboleto.cdconta;
    boletoAcbr.conta.select(boletoAcbr.setboleto.cdconta);
    if boletoAcbr.conta.cdbanco <> 237 then
    begin
      boletoAcbr.Configurarbanco;
      boletoAcbr.ConfigurarCedente;
    end
    else
    begin
      boletoAcbr.ConfigurarCedente;
      boletoAcbr.Configurarbanco;
    end;
    frmprogressbar.gau.MaxValue := duplicatalist.Count;
    frmprogressbar.Show;
    for i := 0 to duplicatalist.Count - 1 do
    begin
      frmprogressbar.pnl.caption := 'Processando registro '+inttostr(i+ 1)+' de '+frmprogressbar.gau.MaxValue.ToString;
      frmprogressbar.gau.Progress := i + 1;
      Application.ProcessMessages;
      if not boletoAcbr.AdicionarTitulo(cdsetboleto, duplicatalist.items[i]) then
      begin
        result := false;
        exit;
      end;
    end;
    result := boletoAcbr.imprimir;
  finally
    freeandnil(boletoAcbr);
    freeandnil(frmprogressbar);
  end;
end;

class function TBoletoAcbr.ImprimirBoleto(duplicata: TDuplicata):boolean;
var
  boletoAcbr : TBoletoAcbr;
begin
  boletoAcbr   := TBoletoAcbr.Create;
  try
    boletoAcbr.setboleto.Select(duplicata.cdsetboleto);
    boletoAcbr.ConfigurarImpressao(_DSBOLETO);
    boletoAcbr.conta.cdconta := boletoAcbr.setboleto.cdconta;
    boletoAcbr.conta.select(boletoAcbr.setboleto.cdconta);
    if boletoAcbr.conta.cdbanco <> 237 then
    begin
      boletoAcbr.Configurarbanco;
      boletoAcbr.ConfigurarCedente;
    end
    else
    begin
      boletoAcbr.ConfigurarCedente;
      boletoAcbr.Configurarbanco;
    end;
    if not boletoAcbr.AdicionarTitulo(duplicata.cdsetboleto, duplicata) then
    begin
      result := false;
      exit;
    end;
    result := boletoAcbr.imprimir;
  finally
    freeandnil(boletoAcbr);
  end;
end;

class function TBoletoAcbr.GerarPDFCarne(cdsetboleto: integer; duplicataList:TDuplicataList):string;
var
  i : integer;
  boletoAcbr : TBoletoAcbr;
begin
  boletoAcbr := TBoletoAcbr.Create;
  try
    boletoAcbr.setboleto.Select(cdsetboleto);
    boletoAcbr.ConfigurarImpressao(_DSBOLETOCARNE);
    boletoAcbr.conta.select(boletoAcbr.setboleto.cdconta);
    if boletoAcbr.conta.cdbanco <> 237 then
    begin
      boletoAcbr.Configurarbanco;
      boletoAcbr.ConfigurarCedente;
    end
    else
    begin
      boletoAcbr.ConfigurarCedente;
      boletoAcbr.Configurarbanco;
    end;
    for i := 0 to duplicatalist.count - 1 do
    begin
      boletoAcbr.AdicionarTitulo(cdsetboleto, duplicatalist.Items[i], i+ 1, duplicatalist.count);
    end;
    result := boletoAcbr.GerarPDFCarneInterno;
  finally
    freeandnil(boletoAcbr);
  end;
end;

class function TBoletoAcbr.GerarPDFBoleto(cdsetboleto: integer; duplicata:TDuplicata):string;
var
  boletoAcbr : TBoletoAcbr;
begin
  boletoAcbr := TBoletoAcbr.Create;
  try
    boletoAcbr.setboleto.Select(cdsetboleto);
    boletoAcbr.ConfigurarImpressao(_DSBOLETO);
    boletoAcbr.conta.select(boletoAcbr.setboleto.cdconta);
    if boletoAcbr.conta.cdbanco <> 237 then
    begin
      boletoAcbr.Configurarbanco;
      boletoAcbr.ConfigurarCedente;
    end
    else
    begin
      boletoAcbr.ConfigurarCedente;
      boletoAcbr.Configurarbanco;
    end;
    if boletoAcbr.AdicionarTitulo(cdsetboleto, duplicata) then
    begin
      result := boletoAcbr.GerarPDFBoletoInterno(duplicata);
    end;
  finally
    freeandnil(boletoAcbr);
  end;
end;

function TBoletoAcbr.AdicionarTitulo(cdsetboleto: integer; duplicata: TDuplicata; parcela:integer=1; totalparcelas:integer=1):boolean;
var
  Titulo_acbr : TACBrTitulo;
  cliente : tcliente;
  function GetCNPJCPF:string;
  begin
    if cliente.tppessoa = _f then
    begin
      result := OnlyNumber(cliente.nucpf);
    end
    else
    begin
      result := OnlyNumber(cliente.nucnpj);
    end;
  end;
  function getboaceite:TACBrAceiteTitulo;
  begin
    if setboleto.boaceite = _s then
    begin
      result := atSim;
    end
    else
    begin
      result := atNao;
    end;
  end;
  function GetLogradouro:string;
  begin
    if cliente.dsendcbrnc <> '' then
    begin
      result := cliente.dsendcbrnc;
    end
    else
    begin
      result := cliente.dsendereco;
    end;
  end;
  function GetNumero:string;
  begin
    if cliente.dsnumcbrnc <> '' then
    begin
      result := cliente.dsnumcbrnc;
    end
    else
    begin
      result := cliente.dsnumero;
    end;
  end;
  function GetBairro:string;
  begin
    if cliente.nmbaicbrnc <> '' then
    begin
      result := cliente.nmbaicbrnc;
    end
    else
    begin
      result := cliente.nmbairro;
    end;
  end;
  function GetCidade:string;
  begin
    if cliente.cdmunicipiocbrnc <> 0 then
    begin
      result := qregistro.nomedocodigo(_municipio, cliente.cdmunicipiocbrnc);
    end
    else
    begin
      result := qregistro.nomedocodigo(_municipio, cliente.cdmunicipio);
    end;
  end;
  function GetUF:string;
  begin
    if cliente.cdufcbrnc <> 0 then
    begin
      result := qregistro.Stringdocodigo(_uf, cliente.cdufcbrnc, _sguf);
    end
    else
    begin
      result := qregistro.Stringdocodigo(_uf, cliente.cduf, _sguf);
    end;
  end;
  function GetCEP:string;
  begin
    if OnlyNumber(cliente.nucepcbrnc) <> '' then
    begin
      result := OnlyNumber(cliente.nucepcbrnc);
    end
    else
    begin
      result := OnlyNumber(cliente.nucep);
    end;
  end;
  function GetPessoa:TACBrPessoa;
  begin
    if Length(Titulo_acbr.Sacado.CNPJCPF) = 11 then
    begin
      result := pFisica;
    end
    else if Length(Titulo_acbr.Sacado.CNPJCPF) = 14 then
    begin
      result := pJuridica;
    end
    else
    begin
      result := pOutras;
    end;
  end;
begin
  cliente := tcliente.create;
  try
    cliente.select(duplicata.cdcliente);
    cliente.ConsistirDadosparaBoleto;
    Titulo_acbr := ACBrBoleto.CriarTituloNaLista;
    if duplicata.nunossonumero = '' then
    begin
      duplicata.nunossonumero := IntToStr(setboleto.nuboleta_inc);
      duplicata.cdsetboleto := cdsetboleto;
      duplicata.update;
    end;
    Titulo_acbr.Parcela       := parcela;
    Titulo_acbr.TotalParcelas := totalparcelas;
    Titulo_acbr.Vencimento    := duplicata.dtprorrogacao;
    titulo_acbr.DataBaixa     := duplicata.dtprorrogacao;
    if setboleto.nudiasprotesto > 0 then
    begin
      Titulo_acbr.DataProtesto := duplicata.dtprorrogacao + setboleto.nudiasprotesto;
    end;
    Titulo_acbr.DataProcessamento := tsBanco;
    Titulo_acbr.DataDocumento     := duplicata.dtemissao;
    Titulo_acbr.SeuNumero      := duplicata.nuduplicata;
    Titulo_acbr.Carteira       := setboleto.nucarteira;
    Titulo_acbr.EspecieDoc     := setboleto.dsespecie;
    Titulo_acbr.EspecieMod     := 'R$';
    Titulo_acbr.NossoNumero    := duplicata.nunossonumero;
    Titulo_acbr.Mensagem.Text  := duplicata.dsobservacaoboleto+setboleto.dsinstrucaoboleta;
    Titulo_acbr.Instrucao1     := PadLeft(trim(setboleto.dsinstrucao1), 2, _0);
    Titulo_acbr.Instrucao2     := PadLeft(trim(setboleto.dsinstrucao2), 2, _0);
    Titulo_acbr.LocalPagamento := setboleto.dslocalpagamento;
    Titulo_acbr.Aceite         := GetBoAceite;
    Titulo_acbr.ValorDocumento := duplicata.vlsaldo;
    Titulo_acbr.ValorMoraJuros := 0;
    if duplicata.prmoradiaria > 0 then
    begin
      Titulo_acbr.DataMoraJuros := duplicata.dtprorrogacao + 1;
      Titulo_acbr.ValorMoraJuros := duplicata.getvalormorajuros;
    end;
    Titulo_acbr.ValorDesconto     := 0;
    Titulo_acbr.ValorAbatimento   := 0;
    Titulo_acbr.PercentualMulta   := duplicata.prmulta;
    Titulo_acbr.Sacado.NomeSacado := cliente.rzsocial;
    Titulo_acbr.Sacado.CNPJCPF    := GetCNPJCPF;
    Titulo_acbr.Sacado.Logradouro := getLogradouro;
    Titulo_acbr.Sacado.Numero     := getNumero;
    Titulo_acbr.Sacado.Bairro     := getBairro;
    Titulo_acbr.Sacado.Cidade     := GetCidade;
    Titulo_acbr.Sacado.UF         := getUF;
    Titulo_acbr.Sacado.CEP        := GetCEP;
    Titulo_acbr.Sacado.Pessoa     := GetPessoa;
    Titulo_acbr.NumeroDocumento   := Titulo_acbr.SeuNumero;
    if conta.cdbanco = 33 then
    begin
      Titulo_acbr.Instrucao2 := setboleto.dsinstrucao2;
      //Titulo_acbr.NumeroDocumento := formatartextoesquerda(Titulo_acbr.SeuNumero,  6, _0);
      Titulo_acbr.SeuNumero := formatartextoesquerda(Titulo_acbr.SeuNumero, 10, _0);
    end;
    result := True;
  finally
    freeandnil(cliente);
  end;
end;

function TBoletoAcbr.AdicionarTituloRemessa(cobranca: TCobranca): Boolean;
var
  duplicata : TDuplicata;
  i : integer;
begin
  result := False;
  duplicata := tduplicata.create;
  try
    for i := 0 to cobranca.itcobranca.Count - 1 do
    begin
      duplicata.Select(cobranca.itcobranca.Items[i].cdduplicata);
      result := AdicionarTitulo(cobranca.cdsetboleto, duplicata);
      if not result then
      begin
        break;
      end;
    end;
  finally
    freeandnil(duplicata);
  end;
end;

constructor TBoletoAcbr.create;
begin
  setboleto      := Tsetboleto.create;
  conta          := TCONTA.create;
  ACBrBoleto     := TACBrBoleto.Create(nil);
  ACBrBoletoFCFR := TACBrBoletoFCFR.Create(nil);
end;

destructor TBoletoAcbr.destroy;
begin
  freeandnil(ACBrBoleto);
  freeandnil(ACBrBoletoFCFR);
  freeandnil(setboleto);
  freeandnil(conta);
end;

function TBoletoAcbr.ObterCaracTitulo(cdcaractitulo: integer): TACBrCaracTitulo;
begin
       if cdcaractitulo = 1 then result := tcSimples
  else if cdcaractitulo = 2 then result := tcVinculada
  else if cdcaractitulo = 2 then result := tcCaucionada
  else if cdcaractitulo = 2 then result := tcDescontada
  else                           result := tcVendor;
end;

function TBoletoAcbr.ObterCodigoTransmissao: string;
begin
  result := ACBrBoleto.Cedente.Agencia +
            ACBrBoleto.Cedente.AgenciaDigito +
            ACBrBoleto.Cedente.CodigoCedente +
            ACBrBoleto.Cedente.Conta;
  if ACBrBoleto.Banco.TipoCobranca = cobSantander then
  begin
    if ACBrBoleto.LayoutRemessa = c240 then
    begin
      result := ACBrBoleto.Cedente.Agencia +
                //ACBrBoleto.Cedente.AgenciaDigito +
                FormatarTextoEsquerda(ACBrBoleto.Cedente.CodigoCedente, 11, _0);
    end
    else if ACBrBoleto.LayoutRemessa = c400 then
    begin
      result := ACBrBoleto.Cedente.Agencia +
                ACBrBoleto.Cedente.AgenciaDigito +
                ACBrBoleto.Cedente.CodigoCedente +
                copy(ACBrBoleto.Cedente.Conta, 3, 8);
    end;
  end;
end;

function TBoletoAcbr.ObterLayout: TACBrLayoutRemessa;
begin
  if setboleto.tparquivocobranca = _400 then
  begin
    result := c400
  end
  else
  begin
    result := c240;
  end;
end;

function TBoletoAcbr.ObterRespEmissao(cdrespemissao:integer): TACBrResponEmissao;
begin
       if cdrespemissao = 1 then result := tbCliEmite
  else if cdrespemissao = 2 then result := tbBancoEmite
  else if cdrespemissao = 3 then result := tbBancoReemite
  else  result := tbBancoNaoReemite;
end;

function TBoletoAcbr.ObterTipoCarteira(cdtpcarteiraboleto: integer): TACBrTipoCarteira;
begin
  if cdtpcarteiraboleto = 1 then
  begin
    result := tctRegistrada
  end
  else
  begin
    result := tctSimples;
  end;
end;

function TBoletoAcbr.ObterTpcobranca: TACBrTipoCobranca;
begin
       if conta.cdbanco = 1   then result := cobBancoDoBrasil
  else if conta.cdbanco = 4   then result := cobBancoDoNordeste
  else if conta.cdbanco = 21  then result := cobBanestes
  else if conta.cdbanco = 33  then result := cobSantander
  else if conta.cdconta = 41  then result := cobBanrisul
  else if conta.cdconta = 70  then result := cobBRB
  else if conta.cdconta = 85  then result := cobBancoCECRED
  else if conta.cdbanco = 104 then result := cobCaixaEconomica
  else if conta.cdbanco = 237 then result := cobBradesco
  else if conta.cdbanco = 341 then result := cobItau
  else if conta.cdbanco = 389 then result := cobBancoMercantil
  else if conta.cdbanco = 399 then result := cobHSBC
  else if conta.cdbanco = 422 then result := cobBancoSafra
  else if conta.cdbanco = 748 then result := cobSicred
  else if conta.cdbanco = 756 then result := cobBancoob;
end;

function TBoletoAcbr.imprimir:boolean;
begin
  ACBrBoleto.Imprimir;
  result := True;
end;

function TBoletoAcbr.GerarPDFCarneInterno: string;
begin
  ACBrBoletoFCFR.NomeArquivo := _carne+'.'+_PDF;
  ACBrBoleto.GerarPDF;
  result := ACBrBoletoFCFR.NomeArquivo;
end;

function TBoletoAcbr.GerarPDFBoletoInterno(duplicata: TDuplicata):string;
begin
  ACBrBoletoFCFR.NomeArquivo := _BOLETO+' '+substituir(duplicata.nuduplicata, '/', '-')+'.'+_PDF;
  ACBrBoleto.GerarPDF;
  result := ACBrBoletoFCFR.NomeArquivo;
end;

procedure TBoletoAcbr.Configurarbanco;
begin
  ACBrBoleto.Banco.TipoCobranca := ObterTpcobranca;
  ACBrBoleto.LayoutRemessa      := ObterLayout;
  if setboleto.dspathremessa <> '' then
  begin
    ACBrBoleto.DirArqRemessa      := setboleto.dspathremessa;
  end;
end;

procedure TBoletoAcbr.ConfigurarCedente;
var
  nuconta : string;
begin
  ACBrBoleto.Cedente.Nome              := empresa.rzsocial;
  ACBrBoleto.Cedente.CodigoCedente     := setboleto.cdcedente;
  ACBrBoleto.Cedente.Agencia           := Copy(conta.nuagencia, 1, Pos('-', conta.nuagencia)-1);
  if ACBrBoleto.Cedente.Agencia = '' then
  begin
    ACBrBoleto.Cedente.Agencia := conta.nuagencia;
  end;
  ACBrBoleto.Cedente.AgenciaDigito     := Copy(conta.nuagencia, Pos('-', conta.nuagencia)+1, 1);
  nuconta := Copy(conta.nuconta, 1, Pos('-', conta.nuconta)-1);
  ACBrBoleto.Cedente.Conta             := nuconta;
  ACBrBoleto.Cedente.ContaDigito       := Copy(conta.nuconta, Pos('-', conta.nuconta)+1, 1);
  ACBrBoleto.Cedente.Modalidade        := setboleto.dsmodalidade;
  ACBrBoleto.Cedente.Convenio          := setboleto.nuconvenio;
  ACBrBoleto.Cedente.ResponEmissao     := ObterRespEmissao(setboleto.cdsetboletorespemissao);
  ACBrBoleto.Cedente.CaracTitulo       := ObterCaracTitulo(setboleto.cdsetboletocaractitulo);
  ACBrBoleto.Cedente.TipoCarteira      := ObterTipoCarteira(setboleto.cdtpcarteiraboleto);
  ACBrBoleto.Cedente.CNPJCPF           := empresa.nucnpj;
  ACBrBoleto.Cedente.TipoInscricao     := pJuridica;
  ACBrBoleto.Cedente.Logradouro        := empresa.endereco.dsendereco;
  ACBrBoleto.Cedente.NumeroRes         := empresa.endereco.dsnumero;
  ACBrBoleto.Cedente.Complemento       := Empresa.endereco.dscomplemento;
  ACBrBoleto.Cedente.Bairro            := empresa.endereco.nmbairro;
  ACBrBoleto.Cedente.Cidade            := empresa.endereco.nmmunicipio;
  ACBrBoleto.Cedente.UF                := empresa.endereco.sguf;
  ACBrBoleto.Cedente.CEP               := Empresa.endereco.nucep;
  ACBrBoleto.Cedente.CodigoTransmissao := ObterCodigoTransmissao;
end;

procedure TBoletoAcbr.salvar_boleto(cdtipo: string);
var
  arquivo : TStrings;
begin
  arquivo := TStringList.Create;
  try
    arquivo.Text := RetornaSQLBlobText(_setboleto, cdtipo, inttostr(setboleto.cdsetboleto));
    if arquivo.text = '' then
    begin
      messagedlg('Não está configurado a impressão do boleto.', mtinformation, [mbok], 0);
      abort;
    end;
    arquivo.SaveToFile(ExtractFilePath(Application.ExeName)+cdtipo+'.fr3');
  finally
    freeandnil(arquivo);
  end;
end;

procedure TBoletoAcbr.ConfigurarImpressao(cdtipo: string);
begin
  salvar_boleto(cdtipo);
  ACBrBoletoFCFR.FastReportFile := ExtractFilePath(Application.ExeName)+cdtipo+'.fr3';
  ACBrBoleto.ACBrBoletoFC       := ACBrBoletoFCFR;
  ACBrBoletoFCFR.ACBrBoleto     := ACBrBoleto;
end;

function TBoletoAcbr.ValidarArquivo(filename: string):boolean;
var
  SlRetorno: TStringList;
  NomeArq  : String;
begin
  SlRetorno:= TStringList.Create;
  try
    NomeArq := filename;

    if not FilesExists( NomeArq ) then
    begin
      messagedlg(ACBrStr('Arquivo não encontrado:'+sLineBreak+NomeArq), mtinformation, [mbok], 0);
      abort;
    end;

    SlRetorno.LoadFromFile( NomeArq );

    if SlRetorno.Count < 1 then
    begin
      messagedlg(ACBrStr('O Arquivo de Retorno:'+sLineBreak+NomeArq + sLineBreak+'está vazio.'+sLineBreak+' Não há dados para processar'), mtinformation, [mbok], 0);
      abort;
    end;
    case Length(SlRetorno.Strings[0]) of
      240 :
      begin
        if Copy(SlRetorno.Strings[0],143,1) <> '2' then
        begin
          messagedlg(ACBrStr( NomeArq + sLineBreak +'Não é um arquivo de Retorno de cobrança com layout CNAB240'), mtinformation, [mbok], 0);
          abort;
        end;
        if ACBrBoleto.LayoutRemessa = C400 then
        begin
          messagedlg('Está configurado o layout como 400 mas o arquivo é de 240.'#13'Favor alterar na configuração do boleto na conta.', mtinformation, [mbok], 0);
          abort;
        end;
      end;
      400 :
      begin
        if (Copy(SlRetorno.Strings[0],1,9) <> '02RETORNO')   then
        begin
          messagedlg(ACBrStr( NomeArq + sLineBreak +'Não é um arquivo de Retorno de cobrança com layout CNAB400'), mtinformation, [mbok], 0);
          abort;
        end;
        if ACBrBoleto.LayoutRemessa = C240 then
        begin
          messagedlg('Está configurado o layout como 240 mas o arquivo é de 400.'#13'Favor alterar na configuração do boleto na conta.', mtinformation, [mbok], 0);
          abort;
        end;
      end;
      else
      begin
        messagedlg(ACBrStr( NomeArq + sLineBreak+'Não é um arquivo de  Retorno de cobrança CNAB240 ou CNAB400'), mtinformation, [mbok], 0);
        abort;
      end;
    end;
    result := true;
  finally
    SlRetorno.Free;
  end;
end;

class function TBoletoAcbr.Imprimir_carne(cdsetboleto: integer; duplicatalist: TDuplicataList):boolean;
var
  i : integer;
  boletoAcbr : TBoletoAcbr;
begin
  boletoAcbr := TBoletoAcbr.Create;
  try
    boletoAcbr.setboleto.Select(cdsetboleto);
    boletoAcbr.ConfigurarImpressao(_DSBOLETOCARNE);
    boletoAcbr.conta.select(boletoAcbr.setboleto.cdconta);
    if boletoAcbr.conta.cdbanco <> 237 then
    begin
      boletoAcbr.Configurarbanco;
      boletoAcbr.ConfigurarCedente;
    end
    else
    begin
      boletoAcbr.ConfigurarCedente;
      boletoAcbr.Configurarbanco;
    end;
    for i := 0 to duplicatalist.count - 1 do
    begin
      boletoAcbr.AdicionarTitulo(cdsetboleto, duplicatalist.Items[i], i+ 1, duplicatalist.count);
    end;
    result := boletoAcbr.imprimir;
  finally
    freeandnil(boletoAcbr.setboleto);
    freeandnil(boletoAcbr.conta);
    freeandnil(boletoAcbr);
  end;
end;

end.
