unit classeduplicata;

interface

uses
  system.UITypes,
  dialogs, classes, sysutils, Controls, DB, Contnrs,
  umontarsql, udatahora, uconstantes, uRegistro, ustrings, uSelecionarEntrada,
  classequery, classeempresa, classeretornasql, classeexecutasql, classegerar, classedao,
  cxCalendar;

type
  TItRegCobranca = class(TRegistroQuipos)
  private
    fdtagendamento: TDate;
    fdtcontato: TDate;
    fcdstregcobranca: Integer;
    fcditregcobranca: Integer;
    fcdregcobranca: Integer;
    fcdusuario: Integer;
    fvlsaldo: Currency;
    fdscontato: string;
  public
    [KeyField]
    property cditregcobranca : Integer read fcditregcobranca write fcditregcobranca;
    [fk, AObrigatorio]
    property cdregcobranca : Integer read fcdregcobranca write fcdregcobranca;
    [fk]
    property cdusuario : Integer read fcdusuario write fcdusuario;
    [fk]
    property cdstregcobranca : Integer read fcdstregcobranca write fcdstregcobranca;
    property dtcontato : TDate read fdtcontato write fdtcontato;
    property dtagendamento : TDate read fdtagendamento write fdtagendamento;
    property vlsaldo : Currency read fvlsaldo write fvlsaldo;
    property dscontato : string read fdscontato write fdscontato;
  end;
  TDuplicata = class(TRegistroQuipos)
  private
    Fboenviado: String;
    Fboimpressa: String;
    Fvlsaldo: Currency;
    Fvlbaixa: Currency;
    Fvlduplicata: Currency;
    Fvlabatimento: Currency;
    Fvlacrescimo: Currency;
    Fvljuros: Currency;
    Fvlmulta: Currency;
    Fvlcomissao: Currency;
    Fvldesconto: Currency;
    Fvljurosnrecebido: Currency;
    Fvldevolucao: Currency;
    Fvlrecebido: Currency;
    Fvldeducao: Currency;
    Fprmoradiaria: Double;
    Fprmulta: Double;
    Fcdtpduplicata: Integer;
    Fcdsetboleto: Integer;
    Fcdnegociacaosaida: Integer;
    Fcdrepresentante: Integer;
    Fnucaixa: Integer;
    Fcdstduplicata: Integer;
    Fcdconta: Integer;
    Fcdcntcusto: Integer;
    Fcdduplicata: Integer;
    Fcdstregcobranca: integer;
    Fcdplconta: Integer;
    Fcdbancodevolucao: Integer;
    Fcdtppagamento: Integer;
    Fcdcte: Integer;
    Fcdusuariobaixa: Integer;
    Fcdsaida: Integer;
    Fcdcliente: LargeInt;
    Fcdusuariol: Integer;
    Fcdcomputadorl: integer;
    Fcdtpcobranca: integer;
    Fnmemitente: string;
    Fnucpfcnpj2: string;
    Fdsparcela: string;
    Fnunossonumero: string;
    Fnucontacorrente: string;
    Fdsobservacaoboleto: string;
    Fnuduplicata: string;
    Fnuboleta: string;
    Fnmemitente2: string;
    Ftppessoa: string;
    Fnuagencia: string;
    Fdsobservacao: string;
    Fnucpfcnpj: string;
    Fdshistorico: string;
    Fnuplconta: string;
    Fdtvencimento: TDate;
    Fdtprorrogacao: TDate;
    Fdtemissao: TDate;
    Fdtentrada: TDate;
    Fdtbaixa: TDate;
    Ftsliberado: TDateTime;
    Fvlcomissaoaberta: Currency;
    Fcditcontratoparcela: Integer;
    Fnucntcusto: string;
    fborateiocntcusto: string;
    fborateioplconta: string;
    function getvlcomissaoaberta: Currency;
    procedure Setnucntcusto(const Value: string);
  public
    [keyfield]
    property cdduplicata : Integer read Fcdduplicata write Fcdduplicata;
    [fk]
    property cdstduplicata : Integer read Fcdstduplicata write Fcdstduplicata;
    [fk]
    property cdtppagamento : Integer read Fcdtppagamento write Fcdtppagamento;
    [fk]
    property cdrepresentante : Integer read Fcdrepresentante write Fcdrepresentante;
    [fk]
    property cdsaida : Integer read Fcdsaida write Fcdsaida;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write Fcdcliente;
    [fk]
    property cdtpcobranca : integer read Fcdtpcobranca write Fcdtpcobranca;
    [fk]
    property cdplconta : Integer read Fcdplconta write Fcdplconta;
    [fk]
    property cdconta : Integer read Fcdconta write Fcdconta;
    [fk]
    property cdnegociacaosaida : Integer read Fcdnegociacaosaida write Fcdnegociacaosaida;
    [fk]
    property cdcte : Integer read Fcdcte write Fcdcte;
    [fk]
    property cdcntcusto : Integer read Fcdcntcusto write Fcdcntcusto;
    property nucntcusto : string read Fnucntcusto write Setnucntcusto;
    [fk]
    property cdsetboleto : Integer read Fcdsetboleto write Fcdsetboleto;
    [fk]
    property cdusuariobaixa : Integer read Fcdusuariobaixa write Fcdusuariobaixa;
    [fk]
    property cdusuariol : Integer read Fcdusuariol write Fcdusuariol;
    [fk]
    property cdcomputadorl : integer read Fcdcomputadorl write Fcdcomputadorl;
    [fk]
    property cdtpduplicata : Integer read Fcdtpduplicata write Fcdtpduplicata;
    [fk]
    property cdbancodevolucao : Integer read Fcdbancodevolucao write Fcdbancodevolucao;
    [fk]
    property cditcontratoparcela : Integer read Fcditcontratoparcela write Fcditcontratoparcela;
    [fk]
    property cdstregcobranca : integer read Fcdstregcobranca write Fcdstregcobranca;
    property nuduplicata : string read Fnuduplicata write Fnuduplicata;
    property nuagencia : string read Fnuagencia write Fnuagencia;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property dtvencimento : TDate read Fdtvencimento write Fdtvencimento;
    property dtentrada : TDate read Fdtentrada write Fdtentrada;
    property dtprorrogacao : TDate read Fdtprorrogacao write Fdtprorrogacao;
    property vlduplicata : Currency read Fvlduplicata write Fvlduplicata;
    property dshistorico : string read Fdshistorico write Fdshistorico;
    property dtbaixa : TDate read Fdtbaixa write Fdtbaixa;
    property vlbaixa : Currency read Fvlbaixa write Fvlbaixa;
    property vldesconto : Currency read Fvldesconto write Fvldesconto;
    property vldevolucao : Currency read Fvldevolucao write Fvldevolucao;
    property vlabatimento : Currency read Fvlabatimento write Fvlabatimento;
    property prmoradiaria : Double read Fprmoradiaria write Fprmoradiaria;
    property vlsaldo : Currency read Fvlsaldo write Fvlsaldo;
    property vldeducao : Currency read Fvldeducao write Fvldeducao;
    property vlacrescimo : Currency read Fvlacrescimo write Fvlacrescimo;
    property vlrecebido : Currency read Fvlrecebido write Fvlrecebido;
    property prmulta : Double read Fprmulta write Fprmulta;
    property vlmulta : Currency read Fvlmulta write Fvlmulta;
    property vljuros : Currency read Fvljuros write Fvljuros;
    property vlcomissao : Currency read Fvlcomissao write Fvlcomissao;
    property nuboleta : string read Fnuboleta write Fnuboleta;
    property boenviado : String read Fboenviado write Fboenviado;
    property boimpressa : String read Fboimpressa write Fboimpressa;
    property nucaixa : Integer read Fnucaixa write Fnucaixa;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property nunossonumero : string read Fnunossonumero write Fnunossonumero;
    property nuplconta : string read Fnuplconta write Fnuplconta;
    property vljurosnrecebido : Currency read Fvljurosnrecebido write Fvljurosnrecebido;
    property dsparcela : string read Fdsparcela write Fdsparcela;
    property tsliberado : TDateTime read Ftsliberado write Ftsliberado;
    property nucpfcnpj : string read Fnucpfcnpj write Fnucpfcnpj;
    property nucpfcnpj2 : string read Fnucpfcnpj2 write Fnucpfcnpj2;
    property nmemitente : string read Fnmemitente write Fnmemitente;
    property nmemitente2 : string read Fnmemitente2 write Fnmemitente2;
    property nucontacorrente : string read Fnucontacorrente write Fnucontacorrente;
    property tppessoa : string read Ftppessoa write Ftppessoa;
    property dsobservacaoboleto : string read Fdsobservacaoboleto write Fdsobservacaoboleto;
    property vlcomissaoaberta : Currency read getvlcomissaoaberta write Fvlcomissaoaberta;
    property borateiocntcusto : string read fborateiocntcusto write fborateiocntcusto;
    property borateioplconta : string read fborateioplconta write fborateioplconta;
    function CodigoDuplicata(nuduplicata:string):integer;
    function GetVljuros(dthoje:TDate):Currency;
    function getvlatual: Currency;
    function gerarPDFBoletoACBR:string;
    procedure setmoradiariaempresa(cdrepresentante, cdcliente, cdstcliente, cdtpcliente, cdstduplicata, cdtpcobranca, cdrota, cdconta, cdplconta :TStrings; dtei, dtef, dtvi, dtvf, dtbi, dtbf:TcxdateEdit);
    procedure setmultaempresa(cdrepresentante, cdcliente, cdstcliente, cdtpcliente, cdstduplicata, cdtpcobranca, cdrota, cdconta, cdplconta :TStrings; dtei, dtef, dtvi, dtvf, dtbi, dtbf:TcxdateEdit);
    procedure removerdigitonossonumero(dti, dtf: TDate);
    class function verificarSeNota55JaFoiEnviada(cdduplicata:integer):Boolean;
    class function ExisteBaixaConta(codigo:string):boolean;
    function ImprimirBoletoAcbr: Boolean;
    function getValorMoraJuros:currency;
    function Insert(boscript:boolean=false): String;
    function AjustarBaixa:boolean;
    constructor create;
    destructor destroy;
    class function ObterNuduplicata(j, qtparcela: Integer): string;
    class function ObterDsparcela(j, qtparcela: Integer):string;
  end;
  TDuplicataList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TDuplicata;
    procedure SetItem(Index: Integer; const Value: TDuplicata);
  public
    function CheckBaixa:boolean;
    function Excluir(boscript:boolean=false):string;
    function GerarListaPDFBoleto:String;
    function GerarListaPDFCarne:String;
    function GerarPDFBoleto(cdduplicata:integer):String;
    property Items[Index: Integer]: TDuplicata read GetItem write SetItem;
    function ImprimirBoletoAcbr(cdsetboleto: integer = 0): Boolean;
    function ImprimirCarneAcbr: Boolean;
    function Inserir(boscript:Boolean=False):string;
    function Ler(codigo:Integer; cdfield:string=_cdsaida):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function Ler(sqlwhere:string):boolean;overload;
    function New: TDuplicata;
    function ExisteBaixa:boolean;
  end;

implementation

uses uDlgEscolhePedido, classeboletoACBR, classemovbancario;

class function TDuplicata.verificarSeNota55JaFoiEnviada(cdduplicata:integer):Boolean;
var
  cdcte, cdsaida : string;
begin
  result  := false;
  cdsaida := NomedoCodigo(_duplicata, inttostr(cdduplicata), _cdsaida);
  if (cdsaida <> '') and (NomedoCodigo(_saida, cdsaida, _nudocfiscalicms) = _55) and (NomedoCodigo(_saida, cdsaida, _nuchavenfe) <> '') then
  begin
    Result := true;
  end;
  cdcte := NomedoCodigo(_duplicata, inttostr(cdduplicata), _cdcte);
  if (cdcte <> '') and (NomedoCodigo(_cte, cdcte, _nuchavenfe) <> '') then
  begin
    Result := true;
  end;
  if (cdcte = '') or (cdsaida = '') then
  begin
    result := True;
  end;
end;

function TDuplicata.AjustarBaixa: boolean;
var
  baixa: TBaixaList;
begin
  result := false;
  if cdduplicata = 0 then
  begin
    exit;
  end;
  baixa := TBaixaList.create;
  try
    baixa.ler(cdduplicata, _cdduplicata);
    if baixa.count = 0 then
    begin
      vlsaldo := 0;
      cdusuariobaixa := 0;
      dtbaixa := 0;
      vlbaixa := 0;
      vlrecebido := 0;
    end
    else
    begin
      baixa.ajustaDataBaixa;
      vlsaldo := vlduplicata - baixa.sum(_vlbaixa);
      cdusuariobaixa := baixa.items[0].cdusuarioi;
      dtbaixa := baixa.items[0].dtbaixa;
      vlbaixa := baixa.sum(_vlbaixa);
      vlrecebido := baixa.sum(_vlliquido);
    end;
    update;
    result := true;
  finally
    freeandnil(baixa);
  end;
end;

function TDuplicata.CodigoDuplicata(nuduplicata: string): integer;
var
  cont : integer;
begin
  cont := RetornaSQLInteger('select count(*) from duplicata where cdempresa='+empresa.cdempresa.ToString+' and nuduplicata='+quotedstr(nuduplicata));
  if cont = 0 then
  begin
    exit
  end;
  if cont = 1 then
  begin
    result := RetornaSQLInteger('select cdduplicata from duplicata where cdempresa='+empresa.cdempresa.ToString+' and nuduplicata='+quotedstr(nuduplicata))
  end
  else if cont > 1 then
  begin
    result := selecionar_Entrada(_duplicata, nuduplicata);
    if result = 0 then
    begin
      result := -1;
    end;
  end;
end;

constructor TDuplicata.create;
begin
  inherited;
  //fbaixa := tbaixalist.Create;
end;

destructor TDuplicata.destroy;
begin
  //freeandnil(fbaixa);
  inherited;
end;

procedure TDuplicata.setmoradiariaempresa(cdrepresentante, cdcliente, cdstcliente, cdtpcliente, cdstduplicata, cdtpcobranca, cdrota, cdconta, cdplconta :TStrings; dtei, dtef, dtvi, dtvf, dtbi, dtbf:TcxdateEdit);
  function makewhere:string;
  begin
    result := 'where duplicata.cdempresa='+' ';
    InsercaoDataSQl(dtei, dtef, result, _duplicata+'.'+_dtemissao    );
    InsercaoDataSQl(dtbi, dtbf, result, _duplicata+'.'+_dtbaixa      );
    InsercaoDataSQl(dtvi, dtvf, result, _duplicata+'.'+_dtprorrogacao);
    sqlmontarlista(cdrepresentante, _duplicata, _cdrepresentante, result);
    sqlmontarlista(cdcliente      , _duplicata, _cdcliente      , result);
    sqlmontarlista(cdstcliente    , _cliente  , _cdstcliente    , result);
    sqlmontarlista(cdtpcliente    , _cliente  , _cdtpcliente    , result);
    sqlmontarlista(cdconta        , _conta    , _cdconta       , result);
    sqlmontarlista(cdstduplicata  , _duplicata, _cdstduplicata , result);
    sqlmontarlista(cdtpcobranca   , _duplicata, _cdtpcobranca  , result);
    sqlmontarlista(cdrota         , _duplicata, _cdrota        , result);
    sqlmontarlista(cdplconta      , _duplicata, _cdplconta     , result);
  end;
begin
  ExecutaSQL('update duplicata set prmoradiaria='+floattostr(empresa.financeiro.duplicata.prmoradiaria)+' '+makewhere);
end;

procedure TDuplicata.setmultaempresa(cdrepresentante, cdcliente, cdstcliente, cdtpcliente, cdstduplicata, cdtpcobranca, cdrota, cdconta, cdplconta :TStrings; dtei, dtef, dtvi, dtvf, dtbi, dtbf:TcxdateEdit);
  function makewhere:string;
  begin
    result := 'where duplicata.cdempresa='+empresa.cdempresa.ToString+' ';
    InsercaoDataSQl(dtei, dtef, result, _duplicata+'.'+_dtemissao    );
    InsercaoDataSQl(dtbi, dtbf, result, _duplicata+'.'+_dtbaixa      );
    InsercaoDataSQl(dtvi, dtvf, result, _duplicata+'.'+_dtprorrogacao);
    sqlmontarlista(cdrepresentante, _duplicata, _cdrepresentante, result);
    sqlmontarlista(cdcliente      , _duplicata, _cdcliente      , result);
    sqlmontarlista(cdstcliente    , _cliente  , _cdstcliente    , result);
    sqlmontarlista(cdtpcliente    , _cliente  , _cdtpcliente    , result);
    sqlmontarlista(cdconta        , _conta    , _cdconta       , result);
    sqlmontarlista(cdstduplicata  , _duplicata, _cdstduplicata , result);
    sqlmontarlista(cdtpcobranca   , _duplicata, _cdtpcobranca  , result);
    sqlmontarlista(cdrota         , _duplicata, _cdrota        , result);
    sqlmontarlista(cdplconta      , _duplicata, _cdplconta     , result);
  end;
begin
  ExecutaSQL('update duplicata set prmulta='+floattostr(empresa.financeiro.duplicata.prmulta)+' '+makewhere);
end;

procedure TDuplicata.Setnucntcusto(const Value: string);
begin
  Fnucntcusto := Value;
end;

procedure TDuplicata.removerdigitonossonumero(dti, dtf: TDate);
var
  sql : TStrings;
  q : TClasseQuery;
  function nunossonumero : string;
  begin
    result := q.q.FieldByName(_nunossonumero).AsString;
    if pos('-', Result) > 0 then
    begin
      result := Copy(Result, 1, Length(Result)-2);
    end;
  end;
begin
  q := TClasseQuery.create;
  sql := TStringList.Create;
  try
    q.q.open('select cdduplicata,nunossonumero from duplicata where cdempresa='+empresa.cdempresa.ToString+' and nunossonumero like ''%-%'' and dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf));
    while not q.q.Eof do
    begin
      sql.Add('update duplicata set nunossonumero='+quotedstr(nunossonumero)+' where cdempresa='+empresa.cdempresa.ToString+' and cdduplicata='+q.q.FieldByName(_cdduplicata).AsString+';');
      q.q.next;
    end;
    if sql.Count > 0 then
    begin
      if ExecutaScript(sql) then
      begin
        MessageDlg('Sistema atualizado!', mtInformation, [mbOK], 0);
      end;
    end;
  finally
    FreeAndNil(q);
    FreeAndNil(sql);
  end;
end;

{procedure TDuplicata.Setbaixa(const Value: TBaixaList);
begin
  Fbaixa := Value;
end;}

function TDuplicata.GetVljuros(dthoje:TDate): Currency;
var
  nudia : Integer;
  movbancario : tmovbancario;
begin
  result    := 0;
  dtemissao := Trunc(dtemissao);
  movbancario := tmovbancario.create;
  try
    if (dtemissao <= dtprorrogacao) or
       movbancario.vencimentoferiadopagamentoproximodiautil(dtprorrogacao, dtemissao) or
       (((vencimentosabadodomingopagamentosegunda(dtprorrogacao, dtemissao)) and (dtprorrogacao + 3 > dtemissao))) then
    begin
      exit;
    end;
  finally
    movbancario.create;
  end;
  nudia  := round(dtemissao - dtprorrogacao); // calcula o valor de juros a ser cobrado por dia
  result := vlsaldo * prmoradiaria / 100 / 30 * nudia;
end;

function TDuplicata.gerarPDFBoletoACBR:string;
var
  qtsetboleto : Integer;
begin
  result := '';
  if not verificarSeNota55JaFoiEnviada(cdduplicata) then
  begin
    messagedlg('Não é possível emitir boleto de uma nota fiscal eletrônica que não tenha sido enviada.'#13'Favor enviar a nota para depois imprimir o boleto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if cdsetboleto = 0 then
  begin
    if cdstduplicata <> 1 then
    begin
      MessageDlg('Não pode imprimir boleto de Contas a Receber que não está em aberto.', mtInformation, [mbOK], 0);
      Abort;
    end;
    qtsetboleto := RetornaSQLInteger('select count(*) from setboleto where cdempresa='+empresa.cdempresa.ToString);
    if qtsetboleto = 0 then
    begin
      MessageDlg('Náo há impressão de boleto configurado.'#13'Configure as informação em uma conta corrente para imprimir.', mtInformation, [mbOK], 0);
      Exit;
    end;
    if qtsetboleto = 1 then
    begin
      cdsetboleto := RetornaSQLInteger('select cdsetboleto from setboleto where cdempresa='+empresa.cdempresa.ToString+' order by cdsetboleto');
    end
    else
    begin
      cdsetboleto := dlgescolhesetboleto;
    end;
  end;
  if cdsetboleto = 0 then
  begin
    Exit;
  end;
  result := TBoletoAcbr.GerarPDFBoleto(cdsetboleto, self);
end;

function TDuplicataList.ImprimirCarneAcbr: Boolean;
var
  qtsetboleto : Integer;
  cdsetboleto : integer;
  i : integer;
begin
  for i := 0 to count - 1 do
  begin
    if items[i].cdstduplicata <> 1 then
    begin
      MessageDlg('Não pode imprimir boleto de Contas a Receber que não está em aberto.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  cdsetboleto := items[0].cdsetboleto;
  if cdsetboleto = 0 then
  begin
    qtsetboleto := RetornaSQLInteger('select count(*) from setboleto where cdempresa='+empresa.cdempresa.ToString);
    if qtsetboleto = 0 then
    begin
      MessageDlg('Náo há impressão de boleto configurado.'#13'Configure as informação em uma conta corrente para imprimir.', mtInformation, [mbOK], 0);
      result := False;
      Exit;
    end;
    if qtsetboleto = 1 then
    begin
      cdsetboleto := RetornaSQLInteger('select cdsetboleto from setboleto where cdempresa='+empresa.cdempresa.ToString+' order by cdsetboleto');
    end
    else
    begin
      cdsetboleto := dlgescolhesetboleto;
    end;
  end;
  if cdsetboleto = 0 then
  begin
    result := False;
    Exit;
  end;
  TBoletoAcbr.Imprimir_carne(cdsetboleto, self);
  result := True;
end;

function TDuplicataList.Inserir(boscript: Boolean): string;
var
  I: Integer;
begin
  result := '';
  for I := 0 to Count - 1 do
  begin
    result := result + Items[i].Insert(boscript)+#13;
  end;
end;

function TDuplicataList.Ler(sqlwhere: string): boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_duplicata, sqlwhere));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TDuplicataList.Ler(DataSet: TDataset):boolean;
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

function TDuplicata.getvlcomissaoaberta: Currency;
begin
  Result := (((vlduplicata - vlbaixa) * 100) / vlduplicata) * vlcomissao/100;
end;

function TDuplicata.getValorMoraJuros: currency;
begin
  result := (vlsaldo * (1 + prmoradiaria/100)-vlsaldo)/30
end;

function TDuplicata.getvlatual: Currency;
begin
  result := vlsaldo + vljuros
end;

class function TDuplicata.ExisteBaixaConta(codigo: string): boolean;
begin
  result := RetornaSQLInteger('select count(*) from baixa where cdempresa='+empresa.cdempresa.ToString+' and cdduplicata='+codigo) > 0;
end;

function TDuplicataList.CheckBaixa: boolean;
var
  I: Integer;
begin
  result := false;
  for I := 0 to count - 1 do
  begin
    result := RegistroExiste(_baixa, _cdduplicata+'='+inttostr(items[i].cdduplicata));
    if result then
    begin
      break;
    end;
  end;
end;

function TDuplicataList.Excluir(boscript: boolean): string;
var
  I: Integer;
begin
  result := '';
  for I := 0 to count - 1 do
  begin
    if result <> '' then
    begin
      result := result + #13;
    end;
    result := result + items[i].Delete(boscript);
  end;
end;

function TDuplicataList.ExisteBaixa: boolean;
var
  i : integer;
begin
  result := false;
  for I := 0 to count -1 do
  begin
    result := items[i].ExisteBaixaConta(inttostr(items[i].cdduplicata));
    if result then
    begin
      break;
    end;
  end;
end;

function TDuplicataList.GerarListaPDFBoleto: String;
var
  i : integer;
begin
  result := '';
  for i := 0 to count -1 do
  begin
    if result <> '' then
    begin
      result := result + #13;
    end;
    result := result + Items[i].gerarPDFBoletoACBR;
  end;
end;

function TDuplicataList.GerarListaPDFCarne: String;
var
  qtsetboleto, cdsetboleto, i : integer;
begin
  result := '';
  for i := 0 to count - 1 do
  begin
    if items[i].cdstduplicata <> 1 then
    begin
      MessageDlg('Não pode imprimir boleto de Contas a Receber que não está em aberto.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  cdsetboleto := items[0].cdsetboleto;
  if cdsetboleto = 0 then
  begin
    qtsetboleto := RetornaSQLInteger('select count(*) from setboleto where cdempresa='+empresa.cdempresa.ToString);
    if qtsetboleto = 0 then
    begin
      MessageDlg('Náo há impressão de boleto configurado.'#13'Configure as informação em uma conta corrente para imprimir.', mtInformation, [mbOK], 0);
      abort
    end;
    if qtsetboleto = 1 then
    begin
      cdsetboleto := RetornaSQLInteger('select cdsetboleto from setboleto where cdempresa='+empresa.cdempresa.ToString+' order by cdsetboleto');
    end
    else
    begin
      cdsetboleto := dlgescolhesetboleto;
    end;
  end;
  if cdsetboleto = 0 then
  begin
    abort;
  end;
  result := TBoletoAcbr.GerarPDFCarne(cdsetboleto, self);
end;

function TDuplicataList.GerarPDFBoleto(cdduplicata: integer): string;
var
  I: Integer;
begin
  for I := 0 to count -1 do
  begin
    if cdduplicata = items[i].cdduplicata then
    begin
      result := items[i].gerarPDFBoletoACBR;
      break;
    end;
  end;
end;

function TDuplicataList.GetItem(Index: Integer): TDuplicata;
begin
  Result := TDuplicata(Inherited Items[Index]);
end;

function TDuplicataList.Ler(codigo: Integer; cdfield:string=_cdsaida): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_Duplicata, codigo, cdfield));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TDuplicataList.New: TDuplicata;
begin
  Result               := TDuplicata.Create;
  Result.prmoradiaria  := empresa.financeiro.duplicata.prmoradiaria;
  result.prmulta       := empresa.financeiro.duplicata.prmulta;
  result.cdstduplicata := 1;
  result.cdtpduplicata := 1;
  Add(Result);
end;

procedure TDuplicataList.SetItem(Index: Integer; const Value: TDuplicata);
begin
  Put(Index, Value);
end;

function TDuplicataList.ImprimirBoletoAcbr(cdsetboleto : integer = 0): Boolean;
var
  qtsetboleto : Integer;
  i : integer;
begin
  qtsetboleto := RetornaSQLInteger('select count(*) from setboleto where cdempresa='+empresa.cdempresa.ToString);
  if qtsetboleto = 0 then
  begin
    MessageDlg('Náo há impressão de boleto configurado.'#13'Configure as informação em uma conta corrente para imprimir.', mtInformation, [mbOK], 0);
    result := False;
    Exit;
  end;
  for i := 0 to count - 1 do
  begin
    if items[i].cdstduplicata <> 1 then
    begin
      MessageDlg('Não pode imprimir boleto de Contas a Receber que não está em aberto.', mtInformation, [mbOK], 0);
      Abort;
    end;
  end;
  if cdsetboleto = 0 then
  begin
    if qtsetboleto = 1 then
    begin
      cdsetboleto := RetornaSQLInteger('select cdsetboleto from setboleto where cdempresa='+empresa.cdempresa.ToString+' order by cdsetboleto');
    end
    else
    begin
      cdsetboleto := dlgescolhesetboleto;
    end;
  end;
  if cdsetboleto = 0 then
  begin
    result := False;
    Exit;
  end;
  TBoletoAcbr.ImprimirBoleto(cdsetboleto, self);
  result := True;
end;

function TDuplicata.ImprimirBoletoAcbr: Boolean;
var
  qtsetboleto : Integer;
begin
  qtsetboleto := RetornaSQLInteger('select count(*) from setboleto where cdempresa='+empresa.cdempresa.ToString);
  if qtsetboleto = 0 then
  begin
    MessageDlg('Náo há impressão de boleto configurado.'#13'Configure as informação em uma conta corrente para imprimir.', mtInformation, [mbOK], 0);
    result := False;
    Exit;
  end;
  if cdstduplicata <> 1 then
  begin
    MessageDlg('Não pode imprimir boleto de Contas a Receber que não está em aberto.', mtInformation, [mbOK], 0);
    Abort;
  end;
  if cdsetboleto = 0 then
  begin
    if qtsetboleto = 1 then
    begin
      cdsetboleto := RetornaSQLInteger('select cdsetboleto from setboleto where cdempresa='+empresa.cdempresa.ToString+' order by cdsetboleto');
    end
    else
    begin
      cdsetboleto := dlgescolhesetboleto;
    end;
  end;
  if cdsetboleto = 0 then
  begin
    result := False;
    Exit;
  end;
  TBoletoAcbr.ImprimirBoleto(self);
  result := True;
end;

function TDuplicata.Insert(boscript: boolean): String;
begin
  if cdstduplicata = 0 then
  begin
    cdstduplicata := 1;
  end;
  if cdtpduplicata = 0 then
  begin
    cdtpduplicata := 1;
  end;
  if cdduplicata = 0 then
  begin
    cdduplicata := qgerar.GerarCodigo(_duplicata);
  end;
  if nuduplicata = '' then
  begin
    nuduplicata := inttostr(cdduplicata);
  end;
  if (cdplconta <> 0) and (nuplconta = '') then
  begin
    nuplconta  := qregistro.StringdoCodigo(_plconta, cdplconta, _nunivel);
  end;
  if (cdcntcusto <> 0) and (nucntcusto = '') then
  begin
    nucntcusto  := qregistro.StringdoCodigo(_cntcusto, cdcntcusto, _nunivel);
  end;
  if dtemissao = 0 then
  begin
    dtemissao := DtBanco;
  end;
  if dtentrada = 0 then
  begin
    dtentrada := dtemissao;
  end;
  if dtvencimento = 0 then
  begin
    dtvencimento := dtemissao;
  end;
  if dtprorrogacao = 0 then
  begin
    dtprorrogacao := dtvencimento;
  end;
  if dtprorrogacao = 0 then
  begin
    dtprorrogacao := dtemissao;
  end;
  vlsaldo       := vlduplicata;
  vlbaixa       := 0;
  vldesconto    := 0;
  vlmulta       := 0;
  vldevolucao   := 0;
  vlabatimento  := 0;
  vldeducao     := 0;
  vlacrescimo   := 0;
  vljuros       := 0;
  vlrecebido    := 0;
  prmoradiaria  := 0;
  prmulta       := 0;
  cdstduplicata := 1;
  result := inherited insert(boscript);
end;

class function TDuplicata.ObterDsparcela(j, qtparcela: Integer): string;
begin
  if empresa.faturamento.saida.tpsequencianuduplicata = _1 then
  begin
    result := inttostr(j+1)+'/'+inttostr(qtparcela);
  end
  else if empresa.faturamento.saida.tpsequencianuduplicata = _2 then
  begin
    result := inttostr(j+1)+'/'+inttostr(qtparcela);
  end
  else if empresa.faturamento.saida.tpsequencianuduplicata = _3 then
  begin
    result := inttostr(j+1)+'/'+inttostr(qtparcela);
  end
  else if empresa.faturamento.saida.tpsequencianuduplicata = _4 then
  begin
    result := inttostr(j+1)+'/'+inttostr(qtparcela);
  end;
end;

class function TDuplicata.ObterNuduplicata(j, qtparcela: Integer): string;
begin
  result := '';
  if empresa.faturamento.saida.tpsequencianuduplicata = _1 then
  begin
    if qtparcela > 1 then
    begin
      result := '/'+char(j+65)
    end;
  end
  else if empresa.faturamento.saida.tpsequencianuduplicata = _2 then
  begin
    if qtparcela > 1 then
    begin
      result := '/'+inttostr(j+1)
    end;
  end
  else if empresa.faturamento.saida.tpsequencianuduplicata = _3 then
  begin
    if qtparcela > 1 then
    begin
      result := '/'+char(j+65)+'-'+char(64+qtparcela)
    end;
  end
  else if empresa.faturamento.saida.tpsequencianuduplicata = _4 then
  begin
    if qtparcela > 1 then
    begin
      result := '/'+inttostr(j+1)+'-'+qtparcela.ToString
    end;
  end;
end;

end.
