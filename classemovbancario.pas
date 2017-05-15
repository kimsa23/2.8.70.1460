unit classemovbancario;

interface

uses
  system.UITypes,
  Contnrs,
  StdCtrls, Classes, dialogs, controls, forms, sysutils, comobj, Variants,
  db,
  uXLConst, uregistro, uconstantes, ustrings, udatahora,
  uProgressBar, uDtmMain,
  classeaplicacao, classeretornasql, classeexecutasql, classequery,
  classegerar, classeempresa, classedao, classeconta, classeduplicata;

type
  TPlContaRateio = class(TRegistroQuipos)
  private
    fcdautpagto: Integer;
    fvltotal: Currency;
    fcdsaida: Integer;
    fcdplcontarateio: Integer;
    fcdduplicata: Integer;
    fcdentrada: Integer;
    fcdplconta: Integer;
    fdtemissao: TDateTime;
  public
    [KeyField]
    property cdplcontarateio : Integer read fcdplcontarateio write fcdplcontarateio;
    [fk, AObrigatorio]
    property cdplconta : Integer read fcdplconta write fcdplconta;
    [fk]
    property cdsaida : Integer read fcdsaida write fcdsaida;
    [fk]
    property cdentrada : Integer read fcdentrada write fcdentrada;
    [fk]
    property cdduplicata : Integer read fcdduplicata write fcdduplicata;
    [fk]
    property cdautpagto : Integer read fcdautpagto write fcdautpagto;
    [AObrigatorio]
    property dtemissao : TDateTime read fdtemissao write fdtemissao;
    [AObrigatorio]
    property vltotal : Currency read fvltotal write fvltotal;
  end;
  TPlContaRateioList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TPlContaRateio;
    procedure SetItem(Index: Integer; const Value: TPlContaRateio);
  public
    function New: TPlContaRateio;
    property Items[Index: Integer]: TPlContaRateio read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
  end;
  TPlConta = class(TRegistroQuipos)
  private
    Fcdplconta: integer;
    Fcdplcontapai: integer;
    Fnunivel: string;
    Fvlsaldo: currency;
    Fdsplconta: string;
    Fnmplconta: string;
    fboautpagto: string;
    fboduplicata: string;
    fbovisible: string;
  public
    [keyfield]
    property cdplconta : integer read Fcdplconta write Fcdplconta;
    [fk]
    property cdplcontapai : integer read Fcdplcontapai write Fcdplcontapai;
    property vlsaldo : currency read Fvlsaldo write Fvlsaldo;
    [AObrigatorio]
    property nunivel : string read Fnunivel write Fnunivel;
    [AObrigtorio]
    property nmplconta : string read Fnmplconta write Fnmplconta;
    property dsplconta : string read Fdsplconta write Fdsplconta;
    property boduplicata : string read fboduplicata write fboduplicata;
    property boautpagto : string read fboautpagto write fboautpagto;
    property bovisible : string read fbovisible  write fbovisible;
  end;
  TPlContaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TPlConta;
    procedure SetItem(Index: Integer; const Value: TPlConta);
  public
    function New: TPlConta;
    property Items[Index: Integer]: TPlConta read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function Existe(cdplconta:integer):boolean;
    function IndicePlconta(cdplconta:integer): integer;
  end;
  TCntcustoRateio = class(TRegistroQuipos)
  private
    fcdautpagto: Integer;
    fvltotal: Currency;
    fcdsaida: Integer;
    fcdcntcustorateio: Integer;
    fcdduplicata: Integer;
    fcdentrada: Integer;
    fcdcntcusto: Integer;
    fdtemissao: TDateTime;
  public
    [KeyField]
    property cdcntcustorateio : Integer read fcdcntcustorateio write fcdcntcustorateio;
    [fk, AObrigatorio]
    property cdcntcusto : Integer read fcdcntcusto write fcdcntcusto;
    [fk]
    property cdsaida : Integer read fcdsaida write fcdsaida;
    [fk]
    property cdentrada : Integer read fcdentrada write fcdentrada;
    [fk]
    property cdduplicata : Integer read fcdduplicata write fcdduplicata;
    [fk]
    property cdautpagto : Integer read fcdautpagto write fcdautpagto;
    [AObrigatorio]
    property dtemissao : TDateTime read fdtemissao write fdtemissao;
    [AObrigatorio]
    property vltotal : Currency read fvltotal write fvltotal;
  end;
  TCntCustoRateioList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TCntCustoRateio;
    procedure SetItem(Index: Integer; const Value: TCntCustoRateio);
  public
    function New: TCntCustoRateio;
    property Items[Index: Integer]: TCntCustoRateio read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
  end;
  TCntcusto = class(TRegistroQuipos)
  private
    fnufone: string;
    fcdcntcustopai: integer;
    fdsendereco: string;
    fnucnpj: string;
    fnufax: string;
    fcdmunicipio: integer;
    fnuinscest: string;
    fdscntcusto: string;
    fnmbairro: string;
    fnucep: string;
    fnmcntcusto: string;
    fnunivel: string;
    fdsnumero: string;
    fnucxpostal: string;
    fcduf: integer;
    fcdcntcusto: integer;
    fboautpagto: string;
    fboduplicata: string;
    fbovisible: string;
  public
    [keyfield]
    property cdcntcusto : integer read fcdcntcusto write fcdcntcusto;
    [fk]
    property cdcntcustopai : integer read fcdcntcustopai write fcdcntcustopai;
    [fk]
    property cdmunicipio : integer read fcdmunicipio write fcdmunicipio;
    [fk]
    property cduf : integer read fcduf write fcduf;
    [AObrigatorio]
    property nmcntcusto : string read fnmcntcusto write fnmcntcusto;
    [AObrigatorio]
    property nunivel : string read fnunivel write fnunivel;
    property nucnpj : string read fnucnpj write fnucnpj;
    property dsendereco : string read fdsendereco write fdsendereco;
    property dsnumero : string read fdsnumero write fdsnumero;
    property nmbairro : string read fnmbairro write fnmbairro;
    property nucxpostal : string read fnucxpostal write fnucxpostal;
    property nucep : string read fnucep write fnucep;
    property nufone : string read fnufone write fnufone;
    property nufax : string read fnufax write fnufax;
    property nuinscest : string read fnuinscest write fnuinscest;
    property dscntcusto : string read fdscntcusto write fdscntcusto;
    property boduplicata : string read fboduplicata write fboduplicata;
    property boautpagto : string read fboautpagto write fboautpagto;
    property bovisible : string read fbovisible  write fbovisible;
  end;
  TBaixa = class(TRegistroQuipos)
  private
    Fcdadntfornecedor: integer;
    Fprcomissao: Double;
    Fvldesconto: currency;
    Fcdbaixa: integer;
    Fcdnegociacaoentrada: integer;
    Fvljurosnrecebido: currency;
    Fcdautpagto: integer;
    Fvlbaixa: currency;
    Fnubaixa: string;
    Fvlmulta: currency;
    Fcdadntclientedestino: integer;
    Fvlcomissao: currency;
    Fvlliquido: currency;
    Fvlabatimento: currency;
    Fcdcheque: integer;
    Fvldevolucao: currency;
    Fcdadntcliente: integer;
    Fvljuro: currency;
    Fdtbaixa: TDate;
    Fcdduplicata: integer;
    Fcdtpbaixa: integer;
    Fcdmovbancario: integer;
    Fduplicata: TDuplicata;
  public
    property duplicata : TDuplicata read Fduplicata write Fduplicata;
    [keyfield]
    property cdbaixa : integer read Fcdbaixa write Fcdbaixa;
    property cdmovbancario : integer read Fcdmovbancario write Fcdmovbancario;
    property cdtpbaixa : integer read Fcdtpbaixa write Fcdtpbaixa;
    property cdadntcliente : integer read Fcdadntcliente write Fcdadntcliente;
    property cdautpagto : integer read Fcdautpagto write Fcdautpagto;
    property cdduplicata : integer read Fcdduplicata write Fcdduplicata;
    property cdadntfornecedor : integer read Fcdadntfornecedor write Fcdadntfornecedor;
    property cdcheque : integer read Fcdcheque write Fcdcheque;
    property cdnegociacaoentrada : integer read Fcdnegociacaoentrada write Fcdnegociacaoentrada;
    property cdadntclientedestino : integer read Fcdadntclientedestino write Fcdadntclientedestino;
    property nubaixa : string read Fnubaixa write Fnubaixa;
    property dtbaixa : TDate read Fdtbaixa write Fdtbaixa;
    property vlmulta : currency read Fvlmulta write Fvlmulta;
    property vljuro : currency read Fvljuro write Fvljuro;
    property vlbaixa : currency read Fvlbaixa write Fvlbaixa;
    property vldesconto : currency read Fvldesconto write Fvldesconto;
    property vlabatimento : currency read Fvlabatimento write Fvlabatimento;
    property vldevolucao : currency read Fvldevolucao write Fvldevolucao;
    property vlliquido : currency read Fvlliquido write Fvlliquido;
    property vljurosnrecebido : currency read Fvljurosnrecebido write Fvljurosnrecebido;
    property vlcomissao : currency read Fvlcomissao write Fvlcomissao;
    property prcomissao : Double read Fprcomissao write Fprcomissao;
    constructor create;
    destructor destroy;
    function Insert(boscript:boolean=false): String;
    function ObterVlComissao:currency;
  end;
  TbaixaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Tbaixa;
    procedure SetItem(Index: Integer; const Value: Tbaixa);
  public
    function New: Tbaixa;
    property Items[Index: Integer]: Tbaixa read GetItem write SetItem;
    function sqlInsert:string;
    function sqlDelete:string;
    function Ler(codigo:Integer; cdfield:string=_cdmovbancario):Boolean;
    function Sum(nmfield:string):currency;
    procedure ajustaDataBaixa;
  end;
  TTpModulo = class(TPersintentObject)
  private
    Fcdtpmodulo: integer;
    Fcdnatureza: string;
    Fnmtpmodulo: string;
  public
    [keyfield]
    property cdtpmodulo : integer read Fcdtpmodulo write fcdtpmodulo;
    property nmtpmodulo : string read Fnmtpmodulo write fnmtpmodulo;
    property cdnatureza : string read Fcdnatureza write fcdnatureza;
    function Select(const AValue: Integer):boolean;
  end;
  TMovimentacao = class(TRegistroQuipos)
  private
    Fnmmovimentacao: string;
    Fcdplconta: integer;
    Fcdtpmodulo: integer;
    Fbohistorico: string;
    Fnucntcontabil: string;
    Fboobservacao: String;
    Fcdmovimentacao: integer;
    Fboduplicatanossonumero: String;
    Fcdcntcusto: integer;
    ftpmodulo: ttpmodulo;
  public
    property tpmodulo : ttpmodulo read ftpmodulo write ftpmodulo;
    [keyfield]
    property cdmovimentacao : integer read Fcdmovimentacao write fcdmovimentacao;
    property cdtpmodulo : integer read Fcdtpmodulo write fcdtpmodulo;
    property cdplconta : integer read Fcdplconta write fcdplconta;
    property cdcntcusto : integer read Fcdcntcusto write fcdcntcusto;
    property nmmovimentacao : string read Fnmmovimentacao write fnmmovimentacao;
    property bohistorico : String read Fbohistorico write fbohistorico;
    property boobservacao : String read Fboobservacao write fboobservacao;
    property boduplicatanossonumero : String read Fboduplicatanossonumero write fboduplicatanossonumero;
    property nucntcontabil : string read Fnucntcontabil write fnucntcontabil;
    constructor create;
    destructor destroy; override;
  end;
  TMovBancario = class(TRegistroQuipos)
  private
    Fcdcliente: Largeint;
    Fcdcontadestino: integer;
    Fboconciliado: String;
    Fdsnominal: string;
    Fdshistorico: string;
    Fdsobservacao: string;
    Fnumovbancario: string;
    Fcdplconta: integer;
    Fcdfornecedor: LargeInt;
    Fcdconta: integer;
    Fcdmovimentacao: integer;
    Fvlpagamento: currency;
    Fvldeposito: currency;
    Fcdextrato: integer;
    Fnuplconta: string;
    Fcdmovbancariodestino: integer;
    Fvlsaldo: currency;
    Fcdnatureza: string;
    Fmovimentacao: TMovimentacao;
    Fvllancamento: currency;
    Fcdcntcusto: integer;
    Fcdmovbancario: integer;
    Farquivoretorno: string;
    Fdtemissao: TDate;
    Fbaixa: TBaixaList;
    Fnucntcusto: string;
    Fconta: TConta;
    function get_tpadiantamento: string;
    function adiantamento_utilizado: Boolean;
  public
    property movimentacao : TMovimentacao read Fmovimentacao write fmovimentacao;
    property baixa : TBaixaList read Fbaixa write Fbaixa;
    property conta : TConta read Fconta write Fconta;
    [keyfield]
    property cdmovbancario : integer read Fcdmovbancario write fcdmovbancario;
    property cdextrato : integer read Fcdextrato write fcdextrato;
    property cdfornecedor : LargeInt read Fcdfornecedor write fcdfornecedor;
    property cdconta : integer read Fcdconta write fcdconta;
    property cdcliente : LargeInt read Fcdcliente write fcdcliente;
    property cdmovimentacao : integer read Fcdmovimentacao write fcdmovimentacao;
    property cdplconta : integer read Fcdplconta write fcdplconta;
    property cdcntcusto : integer read Fcdcntcusto write fcdcntcusto;
    property nucntcusto : string read Fnucntcusto write Fnucntcusto;
    property cdmovbancariodestino : integer read Fcdmovbancariodestino write fcdmovbancariodestino;
    property cdcontadestino : integer read Fcdcontadestino write fcdcontadestino;
    property numovbancario : string read Fnumovbancario write fnumovbancario;
    property dtemissao : TDate read Fdtemissao write fdtemissao;
    property vllancamento : currency read Fvllancamento write fvllancamento;
    property cdnatureza : string read Fcdnatureza write fcdnatureza;
    property dshistorico : string read Fdshistorico write fdshistorico;
    property dsnominal : string read Fdsnominal write fdsnominal;
    property boconciliado : String read Fboconciliado write fboconciliado;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property vldeposito : currency read Fvldeposito write fvldeposito;
    property vlsaldo : currency read Fvlsaldo write fvlsaldo;
    property vlpagamento : currency read Fvlpagamento write fvlpagamento;
    property nuplconta : string read Fnuplconta write fnuplconta;
    property arquivoretorno : string read Farquivoretorno write farquivoretorno;
    function Delete(boscript:boolean=false):string;
    constructor create;
    destructor destroy;override;
    procedure AtualizarDataBaixa(cdmovbancario:string; dtemissao: TDate);
    function dtemissaoabaixodatasaldoinicialconta(cdconta, dtemissaos, olddtemissaos:string; dtemissao: TDate):boolean;
    Class function JuroDocumento(dtemissao, dtprorrogacao : TDate; prmoradiaria, vlbaixa:currency):currency;
    function NumeroChequeDuplicado(cdconta, nucheque, cdmovbancario : string):boolean;
    class function vencimentoferiadopagamentoproximodiautil(dtprorrogacao, dtbaixa: TDate): boolean;
    class function ValorSaldoJuros(tipo: string; cddocumento :integer; cdbaixa:string=''): currency;
    function LiberarPlanoContas:Boolean;
    class function CaixaAberto(cdconta: string; dtemissao: TDate):Boolean;
  end;

implementation

destructor TMovBancario.destroy;
begin
  freeandnil(fbaixa);
  freeandnil(fconta);
  freeandnil(fmovimentacao);
  inherited;
end;

function TMovBancario.dtemissaoabaixodatasaldoinicialconta(cdconta, dtemissaos, olddtemissaos:string; dtemissao: TDate):boolean;
var
  dtsaldo : TDate;
begin
  result  := false;
  dtsaldo := RetornaSQLData('select dtsaldo from conta where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+cdconta);
  if (dtemissao < dtsaldo) and (dtemissaos <> olddtemissaos) and (formatdatetime(_dd_mm_yyyy, dtsaldo) <> _30_12_1899) then
  begin
    messagedlg('Data de Emissão abaixo da data do saldo inicial da conta ('+formatdatetime(_dd_mm_yyyy, dtsaldo)+')'#13+
               'Digite uma data igual ou maior do que a data do saldo para continuar.', mtinformation, [mbok], 0);
    result := true;
  end;
end;

function TMovBancario.NumeroChequeDuplicado(cdconta, nucheque, cdmovbancario : string):boolean;
begin
  result := (RetornaSQLInteger('select count(*) '+
                               'from movbancario '+
                               'where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+cdconta+' and numovbancario='+quotedstr(nucheque)+' and cdmovbancario<>'+cdmovbancario) >0);
end;

Class function TMovBancario.vencimentoferiadopagamentoproximodiautil(dtprorrogacao, dtbaixa: TDate): boolean;
  function vencimento_sabado_ou_domingo_e_baixa_segunda:Boolean;
  begin
    result := (DayOfWeek(dtprorrogacao) in [1, 7]) and (DayOfWeek(dtbaixa) = 2) and (dtbaixa - dtprorrogacao < 3);
  end;
  function vencimento_sabado_e_baixa_domingo:Boolean;
  begin
    result := (DayOfWeek(dtprorrogacao) = 7) and (DayOfWeek(dtbaixa) = 1) and (dtbaixa - dtprorrogacao < 2);
  end;
begin
  result := false;
  if DateToStr(dtprorrogacao) = _00_00_0000 then
  begin
    Exit;
  end;
  try
    if vencimento_sabado_ou_domingo_e_baixa_segunda or vencimento_sabado_e_baixa_domingo then
    begin
      result := True;
      Exit;
    end
    else if dtmmain.qryferiado.q.Locate(_dtferiado, dtprorrogacao, []) then
    begin
      if dtprorrogacao + 1 = dtbaixa then
      begin
        result := true;
        exit;
      end;
      if (DayOfWeek(dtprorrogacao) = 6) and (dtprorrogacao + 3 = dtbaixa) then
      begin
        result := true;
        exit;
      end;
      if (DayOfWeek(dtprorrogacao) = 2 )and dtmmain.qryferiado.q.Locate(_dtferiado+';'+_nmtpferiado, varArrayof([dtprorrogacao, uppercase(_carnaval)]), []) and (dtprorrogacao + 2 = dtbaixa) then
      begin
        result := true;
      end;
    end
    else if (DayOfWeek(dtprorrogacao) in [1,7]) and (DayOfWeek(dtbaixa) = 4) then
    begin
      if (((dayofweek(dtprorrogacao) = 7) and (dtprorrogacao + 4 = dtbaixa)) or ((dayofweek(dtprorrogacao) = 1) and (dtprorrogacao + 3 = dtbaixa))) and dtmmain.qryferiado.q.Locate(_dtferiado+';'+_nmtpferiado, varArrayof([dtprorrogacao, uppercase(_carnaval)]), []) then
      begin
        result := true;
      end;
    end;
  except
    ShowMessage('Data de Prorrogação Inválida: '+DateToStr(dtprorrogacao));
  end;
end;

Class function TMovBancario.JuroDocumento(dtemissao, dtprorrogacao : TDate; prmoradiaria, vlbaixa:currency):currency;
var
  nudia : Integer;
begin
  result := 0;
  dtemissao := Trunc(dtemissao);
  if dtemissao <= dtprorrogacao then
  begin
    exit;
  end;
  if vencimentoferiadopagamentoproximodiautil(dtprorrogacao, dtemissao) then
  begin
    exit;
  end;
  if vencimentosabadodomingopagamentosegunda(dtprorrogacao, dtemissao) then
  begin
    if dtprorrogacao + 3 > dtemissao then
    begin
      exit;
    end;
  end;
  nudia  := Round(dtemissao - dtprorrogacao); // calcula o valor de juros a ser cobrado por dia
  result := vlbaixa * prmoradiaria / 100 / 30 * nudia;
end;

class function TMovBancario.ValorSaldoJuros(tipo: string; cddocumento:integer; cdbaixa:string=''): currency;
var
  q : TClasseQuery;
  dtprorrogacao, dtbaixa : TDate;
  vlbaixa, prmoradiaria, vljurodevido, vljuropago, vlsaldojuros : currency;
  function makesql:string;
  begin
    result := QRetornaSQL.get_select_from(_baixa, cddocumento, _cd+tipo);
    if cdbaixa <> '' then
    begin
      result := result + ' and cdbaixa<>'+cdbaixa;
    end;
  end;
begin
  vlsaldojuros := 0;
  q := TClasseQuery.create;
  try
    dtprorrogacao   := qregistro.datadocodigo (tipo, cddocumento, _dtprorrogacao);
    prmoradiaria    := qregistro.valordocodigo(tipo, cddocumento, _prmoradiaria);
    q.q.Open(makesql);
    while not q.q.eof do
    begin
      vlbaixa      := q.q.fieldbyname(_vlbaixa).AsCurrency;
      vljuropago   := q.q.fieldbyname(_vljuro).AsCurrency;
      dtbaixa      := q.q.fieldbyname(_dtbaixa).AsDatetime;
      vljurodevido := JuroDocumento(dtbaixa, dtprorrogacao, prmoradiaria, vlbaixa);
      vlsaldojuros := vlsaldojuros + (vljurodevido - vljuropago);
      q.q.Next;
    end;
    result := vlsaldojuros;
  finally
    freeandnil(q);
  end;
end;

procedure TMovBancario.AtualizarDataBaixa(cdmovbancario:string; dtemissao: TDate);
begin
  ExecutaSQL('update baixa set dtbaixa='+getdtbanco(dtemissao)+' where cdempresa='+empresa.cdempresa.ToString+' and cdmovbancario='+cdmovbancario)
end;

constructor TMovBancario.create;
begin
  inherited;
  fbaixa := tbaixaList.create;
  fmovimentacao := tmovimentacao.create;
  fconta := tconta.create;
end;

function TMovBancario.Delete(boscript: boolean): string;
var
  sql : TStrings;
begin
  sql   := TStringList.Create;
  try
    if (cdmovimentacao = 13) or (cdmovimentacao = 14) then
    begin
      if adiantamento_utilizado then
      begin
        messagedlg('Saldo adiantamento usado.', mtInformation, [mbOK],0);
        Exit;
      end;
      sql.Add('update baixa set cd'+get_tpadiantamento+'=NULL where cdempresa='+cdempresa.ToString+' and cdmovbancario='+inttostr(cdmovbancario));
      sql.Add('delete from '+get_tpadiantamento+' where cdempresa='+cdempresa.ToString+' and cdmovbancario='+inttostr(cdmovbancario));
    end;
    sql.Add(inherited delete(true));
    result := sql.Text;
    if not boscript then
    begin
      ExecutaScript(sql);
    end;
  finally
    FreeAndNil(sql);
  end;
end;

function TMovBancario.LiberarPlanoContas: Boolean;
begin
  result := empresa.financeiro.boplconta and
           ((movimentacao.cdtpmodulo = 8) or
            (movimentacao.cdtpmodulo = 7) or
            (movimentacao.cdtpmodulo = 5) or
            (movimentacao.cdtpmodulo = 6));
end;

Class function TMovBancario.CaixaAberto(cdconta: string; dtemissao: TDate): Boolean;
begin
  result    := True;
  if (cdconta = '') or (dtemissao = 0) then
  begin
    Exit;
  end;
  result := RetornaSQLInteger('select count(*) from contafechada where cdempresa='+empresa.cdempresa.ToString+' and cdconta='+cdconta+' and dtemissao='+getdtbanco(dtemissao)) = 0;
end;

constructor TMovimentacao.create;
begin
  inherited;
  ftpmodulo := ttpmodulo.create;
end;

destructor TMovimentacao.destroy;
begin
  freeandnil(ftpmodulo);
  inherited;
end;

function Tmovbancario.get_tpadiantamento:string;
begin
  if cdmovimentacao = 13 then
  begin
    result := _adntcliente;
  end
  else if cdmovimentacao = 14 then
  begin
    result := _adntfornecedor;
  end;
end;

function TMovbancario.adiantamento_utilizado:Boolean;
begin
  result := RetornaSQLInteger('select count(*) from '+get_tpadiantamento+' where cdempresa='+cdempresa.ToString+' and cdmovbancario='+inttostr(cdmovbancario)+' and vlutilizado>0') >0;
end;

constructor TBaixa.create;
begin
  inherited;
  fduplicata := tduplicata.create;
end;

destructor TBaixa.destroy;
begin
  freeandnil(fduplicata);
  inherited;
end;

function TBaixa.Insert(boscript: boolean=false): String;
begin
  if cdbaixa = 0 then
  begin
    cdbaixa := qgerar.GerarCodigo(_baixa);
  end;
  if cdtpbaixa = 0 then
  begin
    cdtpbaixa := 1;
  end;
  result := inherited insert(boscript);
end;

function TBaixa.ObterVlComissao: currency;
begin
  result := 0;
  if (cdadntcliente <> 0) and (qregistro.inteirodocodigo(_adntcliente, cdadntcliente, _cdrepresentante) <> 0) then
  begin
    exit;
  end;
  if (cdduplicata <> 0) then
  begin
    if (duplicata.cdduplicata <> cdduplicata) and (not duplicata.select(cdduplicata)) then
    begin
      exit;
    end;
    if duplicata.vlcomissao > 0 then
    begin
      result := (vlbaixa - vldesconto - vlabatimento - vldevolucao) * 100 / duplicata.vlduplicata * duplicata.vlcomissao / 100;
    end;
  end;
end;

procedure TbaixaList.ajustaDataBaixa;
var
  I: Integer;
begin
  for I := 0 to count - 1 do
  begin
    if (items[i].dtbaixa = strtodate(_30_12_1899)) and (items[i].cdmovbancario <> 0) then
    begin
      items[i].dtbaixa := qregistro.DatadoCodigo(_movbancario, items[i].cdmovbancario, _dtemissao);
      items[i].Update;
    end;
  end;
end;

function TbaixaList.GetItem(Index: Integer): Tbaixa;
begin
  Result := Tbaixa(Inherited Items[Index]);
end;

function TbaixaList.Ler(codigo: Integer; cdfield:string=_cdmovbancario): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_baixa, codigo, cdfield));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TbaixaList.New: Tbaixa;
begin
  Result := Tbaixa.Create;
  Add(Result);
end;

procedure TbaixaList.SetItem(Index: Integer; const Value: Tbaixa);
begin
  Put(Index, Value);
end;

function TbaixaList.sqlDelete: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].Delete(true)+#13;
  end;
end;

function TbaixaList.sqlInsert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].Insert(true)+#13;
  end;
end;

function TbaixaList.Sum(nmfield: string): currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to count - 1 do
  begin
    if nmfield = _vlbaixa then
    begin
      result := result + items[i].vlbaixa;
    end
    else if nmfield = _vlliquido then
    begin
      result := result + items[i].vlliquido;
    end;
  end;
end;

function TTpModulo.Select(const AValue: Integer): boolean;
begin
  cdtpmodulo := avalue;
  result := inherited select;
end;

function TPlContaList.Existe(cdplconta: integer): boolean;
var
  I: Integer;
begin
  result := false;
  for I := 0 to count - 1 do
  begin
    if items[i].cdplconta = cdplconta then
    begin
      result := true;
      break;
    end;
  end;
end;

function TPlContaList.GetItem(Index: Integer): TPlConta;
begin
  Result := TPlConta(Inherited Items[Index]);
end;

function TPlContaList.IndicePlconta(cdplconta:integer): integer;
var
  I: Integer;
begin
  for I := 0 to count - 1 do
  begin
    if cdplconta = items[i].cdplconta then
    begin
      result := i;
      break;
    end;
  end;
end;

function TPlContaList.Ler(DataSet: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TPlContaList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_plconta, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TPlContaList.New: TPlConta;
begin
  Result := TPlConta.Create;
  Add(Result);
end;

procedure TPlContaList.SetItem(Index: Integer; const Value: TPlConta);
begin
  Put(Index, Value);
end;

function TPlContaRateioList.GetItem(Index: Integer): TPlContaRateio;
begin
  Result := TPlContaRateio(Inherited Items[Index]);
end;

function TPlContaRateioList.Ler(DataSet: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TPlContaRateioList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_plcontarateio, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TPlContaRateioList.New: TPlContaRateio;
begin
  Result := TPlContaRateio.Create;
  Add(Result);
end;

procedure TPlContaRateioList.SetItem(Index: Integer; const Value: TPlContaRateio);
begin
  Put(Index, Value);
end;

function TCntCustoRateioList.GetItem(Index: Integer): TCntCustoRateio;
begin
  Result := TCntCustoRateio(Inherited Items[Index]);
end;

function TCntCustoRateioList.Ler(DataSet: TDataset): boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not dataset.Eof do
  begin
    new.Select(dataset);
    dataset.Next;
    result := true;
  end;
end;

function TCntCustoRateioList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_cntcustorateio, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TCntCustoRateioList.New: TCntCustoRateio;
begin
  Result := TCntCustoRateio.Create;
  Add(Result);
end;

procedure TCntCustoRateioList.SetItem(Index: Integer; const Value: TCntCustoRateio);
begin
  Put(Index, Value);
end;

end.
