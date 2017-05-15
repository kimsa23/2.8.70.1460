unit classelocacao;

interface

uses
  Controls, SysUtils, Classes, Contnrs, dialogs, system.UITypes,
  DB,
  uRegistro, udatahora, ustrings, uConstantes,
  classeaplicacao, classeequipamento, classeregistrainformacao, classeretornasql,
  classequery, classeexecutasql, classecopiarregistro, classegerar, classeempresa,
  classedao, classecliente;

type
  TStLocacao = class(TPersintentObject)
  private
    Fnucor: integer;
    Fboexcluir: string;
    Fnmstlocacao: string;
    Fbogerarinfo: string;
    Fbonovo: string;
    Fbogerarsaida: string;
    Fcdstlocacao: integer;
    Fboalterar: string;
  public
    [keyfield]
    property cdstlocacao : integer read Fcdstlocacao write fcdstlocacao;
    property nmstlocacao : string read Fnmstlocacao write fnmstlocacao;
    property bonovo : string read Fbonovo write fbonovo;
    property boalterar : string read Fboalterar write fboalterar;
    property boexcluir : string read Fboexcluir write fboexcluir;
    property bogerarinfo : string read Fbogerarinfo write fbogerarinfo;
    property nucor : integer read Fnucor write fnucor;
    property bogerarsaida : string read Fbogerarsaida write fbogerarsaida;
  end;
  TLocacaoPeriodo = class(TRegistroQuipos)
  private
    Fvlequipamento: currency;
    Fdtprevista: TDate;
    Fcdlocacao: integer;
    Fqtitem: integer;
    Fvllocacao: currency;
    Fnudias: integer;
    Fcdlocacaoperiodo: integer;
    Fdtemissao: TDate;
    Fdtinicio: TDate;
  public
    [keyfield]
    property cdlocacaoperiodo : integer read Fcdlocacaoperiodo write fcdlocacaoperiodo;
    [fk]
    property cdlocacao : integer read Fcdlocacao write fcdlocacao;
    property dtemissao : TDate read Fdtemissao write fdtemissao;
    property dtprevista : TDate read Fdtprevista write fdtprevista;
    property nudias : integer read Fnudias write fnudias;
    property dtinicio : TDate read Fdtinicio write fdtinicio;
    property qtitem : integer read Fqtitem write fqtitem;
    property vllocacao : currency read Fvllocacao write fvllocacao;
    property vlequipamento : currency read Fvlequipamento write fvlequipamento;
    function Insert(boscript:boolean=false): String;
  end;
  TLocacaoPeriodoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TLocacaoPeriodo;
    procedure SetItem(Index: Integer; const Value: TLocacaoPeriodo);
  public
    function New: TLocacaoPeriodo;
    property Items[Index: Integer]: TLocacaoPeriodo read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(dataset:TDataset):boolean;overload;
    function Delete:boolean;
    function IndiceAntePenultimo:integer;
  end;
  THStLocacao = class(TRegistroQuipos)
  private
    Fcdlocacao: integer;
    Fcdstlocacao: integer;
    Fdsjustificativa: string;
    Fcdhstlocacao: integer;
  public
    [keyfield]
    property cdhstlocacao : integer read Fcdhstlocacao write fcdhstlocacao;
    [fk]
    property cdlocacao : integer read Fcdlocacao write fcdlocacao;
    [fk]
    property cdstlocacao : integer read Fcdstlocacao write fcdstlocacao;
    property dsjustificativa : string read Fdsjustificativa write fdsjustificativa;
    function Insert(boscript:boolean=false): String;
  end;
  THstLocacaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): THstLocacao;
    procedure SetItem(Index: Integer; const Value: THstLocacao);
  public
    function New: THstLocacao;
    property Items[Index: Integer]: THstLocacao read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
  end;
  TLocacaoDevolucao = class(TRegistroQuipos)
  private
    Fnfdevolucao: integer;
    Fhrentrega: TTime;
    Fcdlocacao: integer;
    Fvlunitario: currency;
    Fdsobservacao: string;
    Fqtitem: integer;
    Fvltotal: currency;
    Fnudias: integer;
    Fdtentrega: TDate;
    Fcdlocacaodevolucao: integer;
  public
    [keyfield]
    property cdlocacaodevolucao : integer read Fcdlocacaodevolucao write fcdlocacaodevolucao;
    [fk]
    property cdlocacao : integer read Fcdlocacao write fcdlocacao;
    property qtitem : integer read Fqtitem write fqtitem;
    property vlunitario : currency read Fvlunitario write fvlunitario;
    property vltotal : currency read Fvltotal write fvltotal;
    property nudias : integer read Fnudias write fnudias;
    property dtentrega : TDate read Fdtentrega write fdtentrega;
    property hrentrega : TTime read Fhrentrega write fhrentrega;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property nfdevolucao : integer read Fnfdevolucao write fnfdevolucao;
    function Insert(boscript:boolean=false): String;
  end;
  TLocacaoDevolucaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TLocacaoDevolucao;
    procedure SetItem(Index: Integer; const Value: TLocacaoDevolucao);
  public
    function New: TLocacaoDevolucao;
    property Items[Index: Integer]: TLocacaoDevolucao read GetItem write SetItem;
    function Ler(codigo:Integer; boaberta:boolean=false):Boolean;overload;
    function Ler(dataset:TDataset):boolean;overload;
  end;
  TTpLocacao = class(TRegistroQuipos)
  private
    Fborecebido: string;
    Fborenovarcontrato: string;
    Fboassociarfuncionariotroca: string;
    Fbocoresponsavel: string;
    Fbonmacessorio: string;
    Fboequipamentosaldo: string;
    Fboentregaparcial: string;
    Fdslayoutequipamento: string;
    Fbovlacrescimo: string;
    Fbodtprevista: string;
    Fnmtplocacao: string;
    Fbousuarioentregue: string;
    Fbovlcaucao: string;
    Fcdproduto: integer;
    Fboentregue: string;
    Fcdtpcliente: integer;
    Fnudiainicial: integer;
    Fbovlacessorio: string;
    Fcdtplocacao: integer;
    fbooperador: string;
  public
    [keyfield]
    property cdtplocacao : integer read Fcdtplocacao write fcdtplocacao;
    [fk]
    property cdproduto : integer read Fcdproduto write fcdproduto;
    [fk]
    property cdtpcliente : integer read Fcdtpcliente write fcdtpcliente;
    property nmtplocacao : string read Fnmtplocacao write fnmtplocacao;
    property dslayoutequipamento : string read Fdslayoutequipamento write fdslayoutequipamento;
    property bovlcaucao : string read Fbovlcaucao write fbovlcaucao;
    property bovlacessorio : string read Fbovlacessorio write fbovlacessorio;
    property bovlacrescimo : string read Fbovlacrescimo write fbovlacrescimo;
    property bonmacessorio : string read Fbonmacessorio write fbonmacessorio;
    property bocoresponsavel : string read Fbocoresponsavel write fbocoresponsavel;
    property bodtprevista : string read Fbodtprevista write fbodtprevista;
    property boentregaparcial : string read Fboentregaparcial write fboentregaparcial;
    property borenovarcontrato : string read Fborenovarcontrato write fborenovarcontrato;
    property boequipamentosaldo : string read Fboequipamentosaldo write fboequipamentosaldo;
    property boassociarfuncionariotroca : string read Fboassociarfuncionariotroca write fboassociarfuncionariotroca;
    property bousuarioentregue : string read Fbousuarioentregue write fbousuarioentregue;
    property boentregue : string read Fboentregue write fboentregue;
    property borecebido : string read Fborecebido write fborecebido;
    property nudiainicial : integer read Fnudiainicial write fnudiainicial;
    property booperador : string read fbooperador write fbooperador;
  end;
  TLocacao = class(TRegistroQuipos)
  private
    Fnmcontato: string;
    Fcdcliente: LargeInt;
    Fnunfdevolucao: integer;
    Fdsendereco: string;
    Fvlacrescimo: currency;
    Fvldesconto: currency;
    Fvlequipamento: currency;
    Fdtprevista: TDate;
    Fcdfuncionarioentregue: integer;
    Fvlcaucao: currency;
    Fcdlocacao: integer;
    Fnufax: string;
    Fcdmunicipio: integer;
    Fdsobservacao: string;
    Fdtfinal: TDate;
    Fqtitem: integer;
    Fnunfsaida: integer;
    Fvllocacao: currency;
    Fhrinicio: TTime;
    Fnmbairro: string;
    Fvlbaixa: currency;
    Fqtsaldo: integer;
    Fnucep: string;
    Fvlacessorio: currency;
    Fnudias: integer;
    Fvlabatimento: currency;
    Fcdlocacaoanterior: integer;
    Fvldevolucao: currency;
    Fdsnumero: string;
    Fvlrecebido: currency;
    Fhrfinal: TTime;
    Fnufone2: string;
    Fvlsaldo: currency;
    Fcdequipamento: integer;
    Fnufone3: string;
    Fcdfuncionario: integer;
    Fcdclientecoresponsavel: LargeInt;
    Fnufone1: string;
    Fnucxpostal: string;
    Fdscomplemento: string;
    Fcdstlocacao: integer;
    Fvldeducao: currency;
    Fcdtplocacao: integer;
    Fdtemissao: TDate;
    Fcduf: integer;
    Fdtinicio: TDate;
    ftplocacao: ttplocacao;
    fequipamento: tequipamento;
    flocacaoperiodo: tlocacaoperiodoList;
    fstlocacao: tstlocacao;
    flocacaodevolucao: tlocacaodevolucaoList;
    fhstlocacao: thstlocacaolist;
    Fcliente: TCliente;
    Fclienteresponsavel: TCliente;
    fcdoperador: integer;
    procedure atualizar_valor_locacao;
    function  get_dtfinal(cdstatus:Integer):TDate;
    function  get_hrfinal(cdstatus:Integer):TTime;
    procedure Setcliente(const Value: TCliente);
    procedure Setclienteresponsavel(const Value: TCliente);
  public
    property hstlocacao : thstlocacaolist read fhstlocacao write fhstlocacao;
    property stlocacao : tstlocacao read fstlocacao write fstlocacao;
    property locacaodevolucao : tlocacaodevolucaoList read flocacaodevolucao write flocacaodevolucao;
    property locacaoperiodo : tlocacaoperiodoList read flocacaoperiodo write flocacaoperiodo;
    property equipamento : tequipamento read fequipamento write fequipamento;
    property tplocacao : ttplocacao read ftplocacao write ftplocacao;
    property cliente : TCliente read Fcliente write Setcliente;
    property clienteresponsavel : TCliente read Fclienteresponsavel write Setclienteresponsavel;
    [keyfield]
    property cdlocacao : integer read Fcdlocacao write fcdlocacao;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write fcdcliente;
    [fk]
    property cdequipamento : integer read Fcdequipamento write fcdequipamento;
    [fk]
    property cdstlocacao : integer read Fcdstlocacao write fcdstlocacao;
    [fk]
    property cdtplocacao : integer read Fcdtplocacao write fcdtplocacao;
    [fk]
    property cduf : integer read Fcduf write fcduf;
    [fk]
    property cdmunicipio : integer read Fcdmunicipio write fcdmunicipio;
    [fk]
    property cdclientecoresponsavel : LargeInt read Fcdclientecoresponsavel write fcdclientecoresponsavel;
    [fk]
    property cdfuncionario : integer read Fcdfuncionario write fcdfuncionario;
    [fk]
    property cdfuncionarioentregue : integer read Fcdfuncionarioentregue write fcdfuncionarioentregue;
    [fk]
    property cdlocacaoanterior : integer read Fcdlocacaoanterior write fcdlocacaoanterior;
    [fk]
    property cdoperador : integer read fcdoperador write fcdoperador;
    property vllocacao : currency read Fvllocacao write fvllocacao;
    property vlbaixa : currency read Fvlbaixa write fvlbaixa;
    property vlsaldo : currency read Fvlsaldo write fvlsaldo;
    property vlrecebido : currency read Fvlrecebido write fvlrecebido;
    property vlacessorio : currency read Fvlacessorio write fvlacessorio;
    property vlequipamento : currency read Fvlequipamento write fvlequipamento;
    property vldesconto : currency read Fvldesconto write fvldesconto;
    property vldevolucao : currency read Fvldevolucao write fvldevolucao;
    property vlabatimento : currency read Fvlabatimento write fvlabatimento;
    property vldeducao : currency read Fvldeducao write fvldeducao;
    property vlacrescimo : currency read Fvlacrescimo write fvlacrescimo;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property dtinicio : TDate read Fdtinicio write fdtinicio;
    property dtprevista : TDate read Fdtprevista write fdtprevista;
    property dtfinal : TDate read Fdtfinal write fdtfinal;
    property hrinicio : TTime read Fhrinicio write fhrinicio;
    property hrfinal : TTime read Fhrfinal write fhrfinal;
    property nudias : integer read Fnudias write fnudias;
    property dsendereco : string read Fdsendereco write fdsendereco;
    property dsnumero : string read Fdsnumero write fdsnumero;
    property dscomplemento : string read Fdscomplemento write fdscomplemento;
    property nucxpostal : string read Fnucxpostal write fnucxpostal;
    property nmbairro : string read Fnmbairro write fnmbairro;
    property nucep : string read Fnucep write fnucep;
    property nmcontato : string read Fnmcontato write fnmcontato;
    property vlcaucao : currency read Fvlcaucao write fvlcaucao;
    property nunfdevolucao : integer read Fnunfdevolucao write fnunfdevolucao;
    property nunfsaida : integer read Fnunfsaida write fnunfsaida;
    property nufone1 : string read Fnufone1 write fnufone1;
    property nufone2 : string read Fnufone2 write fnufone2;
    property nufone3 : string read Fnufone3 write fnufone3;
    property nufax : string read Fnufax write fnufax;
    property qtitem : integer read Fqtitem write fqtitem;
    [AObrigatorio]
    property qtsaldo : integer read Fqtsaldo write fqtsaldo;
    property dtemissao : TDate read Fdtemissao write fdtemissao;
    function BoAlterarValor : boolean;
    function BoTrocar : boolean;
    function AdicionarDevolucao:string;
    function copiar(codigo:integer):integer;
    constructor create;
    destructor destroy; override;
    function ExcluirDevolucao(cdlocacaodevolucao:integer):Boolean;
    function ExisteDevolucao: Boolean;
    function ExisteFaturamento(cditsaida:string=''):Boolean;
    function ExisteSaldoLocacaoEquipamento(cdequipamento:string; qtitem: integer):Boolean;
    function ObterCdstatus(qtitem: Integer; boadicao:boolean=false):Integer;
    function ObterPrecoLocacao(cdequipamento, nudias, qtitem : integer):Currency;
    function ObterVlequipamento(cdequipamento: integer; qtitem:integer): Currency;
    function ObterVllocacao:Currency;
    function ObterVlUltimaDevolucao:Currency;
    function RegistrarMudancaStatus(cdstlocacao: Integer;boscript:boolean=false): string;
    procedure RegistrarPeriodo;
    function renovar  (nudias: Integer):integer;
    function getStatusAnteriorAtual(qt: string='2';cdstatus:string=''):integer;
    function DesfazerRenovacao:boolean;
  end;

implementation

function TLocacao.AdicionarDevolucao:string;
var
  sql : TStrings;
begin
  sql := TStringList.Create;
  try
    sql.Add(locacaodevolucao.items[locacaodevolucao.Count-1].insert(true));
    sql.add(equipamento.AcrescentarSaldo(cdequipamento, locacaodevolucao.items[locacaodevolucao.Count-1].qtitem, true));
    cdstlocacao := ObterCdstatus(locacaodevolucao.items[locacaodevolucao.Count-1].qtitem);
    qtsaldo     := qtsaldo - locacaodevolucao.items[locacaodevolucao.Count-1].qtitem;
    vlrecebido  := vlrecebido + locacaodevolucao.items[locacaodevolucao.Count-1].vltotal;
    dtfinal     := get_dtfinal(ObterCdstatus(locacaodevolucao.items[locacaodevolucao.Count-1].qtitem));
    hrfinal     := get_hrfinal(ObterCdstatus(locacaodevolucao.items[locacaodevolucao.Count-1].qtitem));
    sql.add(Update(true));
    RegistrarMudancaStatus(cdstlocacao);
    ExecutaScript(sql);
    result := inttostr(locacaodevolucao.items[locacaodevolucao.Count-1].cdlocacaodevolucao);
  finally
    freeandnil(sql);
  end;
end;

procedure TLocacao.atualizar_valor_locacao;
begin
  Select(cdlocacao);
  vllocacao := ObterVllocacao;
  Update;
end;

function TLocacao.BoAlterarValor: boolean;
begin
  result := CDSTLOCACAO = 9;
end;

function TLocacao.BoTrocar: boolean;
begin
  result := (cdstLOCACAO = 1) or (cdstLOCACAO = 3) or (cdstLOCACAO = 4) or (cdstLOCACAO = 8) or (cdstLOCACAO = 6) or (cdstLOCACAO = 7) or (cdstLOCACAO = 9);
end;

function TLocacao.copiar(codigo: integer): integer;
begin
  Select(codigo);
  result := Copiar_Registro(_locacao, codigo);
  Select(result);
  vllocacao  := ObterVllocacao;
  vlrecebido := vlacrescimo + ObterVllocacao;
  Update;
  equipamento.Select(cdequipamento);
  equipamento.qtsaldo := equipamento.qtsaldo - qtitem;
  equipamento.Update;
end;

constructor TLocacao.create;
begin
  inherited;
  fcliente := tcliente.create;
  fclienteresponsavel := tcliente.create;
  fhstlocacao := thstlocacaolist.Create;
  flocacaodevolucao := tlocacaodevolucaolist.Create;
  fstlocacao := tstlocacao.Create;
  flocacaoperiodo := TLocacaoPeriodoList.create;
  fequipamento := tequipamento.create;
  ftplocacao := ttplocacao.create;
end;

function TLocacao.DesfazerRenovacao: boolean;
var
  sql : TStrings;
  cditsaida, x : integer;
begin
  result := false;
  sql := TStringList.Create;
  try
    cditsaida := qregistro.CodigodoInteiro(_itsaida, locacaoperiodo.Items[locacaoperiodo.Count-1].cdlocacaoperiodo, _cdlocacaoperiodo);
    if cditsaida <> 0 then
    begin
      messagedlg('Não foi registrado a mudança de status no faturamento.'#13'O sistema vai corrigir, favor tentar novamente.', mtinformation, [mbok], 0);
      cdstlocacao := 8;
      sql.add(update(true));
      sql.add(Registrarmudancastatus(cdstlocacao, true));
    end
    else
    begin
      cdstlocacao := getstatusanterioratual;
      nudias      := locacaoperiodo.Items[locacaoperiodo.IndiceAntePenultimo].nudias;
      vllocacao   := locacaoperiodo.Items[locacaoperiodo.IndiceAntePenultimo].VLLOCACAO;
      dtinicio    := locacaoperiodo.Items[locacaoperiodo.IndiceAntePenultimo].DTINICIO;
      dtprevista  := locacaoperiodo.Items[locacaoperiodo.IndiceAntePenultimo].DTPREVISTA;
      sql.add(update(true));
      sql.add(locacaoperiodo.Items[locacaoperiodo.Count-1].Delete(true));
      //sql.add(Registrarmudancastatus(8, true));
      sql.add(Registrarmudancastatus(cdstlocacao, true));
    end;
    if sql.Count > 0 then
    begin
      result := ExecutaScript(sql);
    end;
  finally
    freeandnil(sql);
  end;
end;

destructor TLocacao.destroy;
begin
  freeandnil(fclienteresponsavel);
  freeandnil(fcliente);
  freeandnil(fhstlocacao);
  freeandnil(flocacaodevolucao);
  freeandnil(fstlocacao);
  freeandnil(flocacaoperiodo);
  freeandnil(fequipamento);
  freeandnil(ftplocacao);
  inherited;
end;

function TLocacao.ExcluirDevolucao(cdlocacaodevolucao: integer): Boolean;
var
  locacaodevolucao : tlocacaodevolucao;
  sql : TStrings;
begin
  sql := TStringlist.Create;
  locacaodevolucao := tlocacaodevolucao.create;
  try
    locacaodevolucao.Select(cdlocacaodevolucao);
    sql.add(locacaodevolucao.Delete(true));
    Select(cdlocacao);
    cdstlocacao := ObterCdstatus(locacaodevolucao.qtitem, true);
    qtsaldo     := qtsaldo + locacaodevolucao.qtitem;
    vlrecebido  := vlrecebido - locacaodevolucao.vltotal;
    sql.add(Update(true));
    equipamento.Select(cdequipamento);
    equipamento.qtsaldo := equipamento.qtsaldo - locacaodevolucao.qtitem;
    sql.add(equipamento.Update(true));
    sql.add(RegistrarMudancaStatus(cdstlocacao, true));
    result:= ExecutaScript(sql);
  finally
    freeandnil(locacaodevolucao);
    freeandnil(sql);
  end;
end;

function TLocacao.ExisteFaturamento(cditsaida:string=''): Boolean;
begin
  result :=  CodigodoCampo(_itsaida, inttostr(cdlocacao), _cdlocacao, cditsaida) <> '';
end;

function TLocacao.ExisteDevolucao: Boolean;
begin
  result := CodigodoCampo(_locacaodevolucao, inttostr(cdlocacao), _cdlocacao) <> '';
end;

function TLocacao.ExisteSaldoLocacaoEquipamento(cdequipamento:string; qtitem: integer): Boolean;
begin
  result := InteirodoCodigo(_equipamento, cdequipamento, _qtsaldo)>=qtitem;
end;

function TLocacao.ObterCdstatus(qtitem: Integer; boadicao:boolean=false): integer;
var
  qtsaldo_ : integer;
begin
  qtsaldo_ := qtsaldo;
  if boadicao then
  begin
    qtsaldo_ := qtsaldo_ + qtitem
  end
  else
  begin
    qtsaldo_ := qtsaldo_ - qtitem;
  end;
  if qtsaldo_ = qtitem then
  begin
    if ExisteFaturamento then
    begin
      result := getStatusAnteriorAtual
    end
    else if cdstlocacao = 5 then
    begin
      result := 4;
    end
    else if cdstlocacao = 6 then
    begin
      result := 4;
    end
    else if cdstlocacao = 4 then
    begin
      result := 6;
    end;
  end
  else if qtsaldo_ = 0 then
  begin
    if cdstlocacao in [4, 7, 6, 9] then
    begin
      result := 5;
    end
    else
    begin
      result := 2;
    end;
  end
  else if cdstlocacao = 6 then
  begin
    result := 6;
    if self.qtitem = qtsaldo_ then
    begin
      result := getStatusAnteriorAtual(_1, _6);
    end;
  end
  else if cdstlocacao in [4, 7, 9] then
  begin
    result := 6
  end
  else if (cdstlocacao = 5) then
  begin
    result := 6
  end
  else if (cdstlocacao = 8) then
  begin
    result := 7;
  end;
end;

function TLocacao.get_dtfinal(cdstatus: integer): TDate;
begin
  if cdstatus = 2 then
  begin
    result := DtBanco
  end
  else
  begin
    result := 0;
  end;
end;

function TLocacao.get_hrfinal(cdstatus: Integer): TTime;
begin
  if cdstatus = 2 then
  begin
    result := HrBanco
  end
  else
  begin
    result := 0;
  end;
end;

function TLocacao.ObterVllocacao: Currency;
var
  tpequipamentopreco : ttpequipamentopreco;
begin
  if (CDequipamento = 0) or (NUDIAS = 0) then
  begin
    result := 0;
    Exit;
  end;
  tpequipamentopreco := ttpequipamentopreco.create;
  try
    equipamento.Select(cdequipamento);
    tpequipamentopreco.Select(_cdtpequipamento+'='+inttostr(equipamento.cdtpequipamento)+' and '+ _nudias+'='+inttostr(nudias));
    result := QTITEM * tpequipamentopreco.vlpreco;
    if tpequipamentopreco.vlpreco = 0 then
    begin
      tpequipamentopreco.Select(_cdtpequipamento+'='+inttostr(equipamento.cdtpequipamento)+' and '+ _nudias+'=1');
      result := NUDIAS * QTITEM * tpequipamentopreco.vlpreco;
    end;
  finally
    freeandnil(tpequipamentopreco);
  end;
end;

function TLocacao.renovar(nudias: Integer): integer;
var
  cdlocacaoanterior: integer;
begin
  cdlocacaoanterior := cdlocacao;
  Select(cdlocacao);
  result := copiar(cdlocacao);
  Select(cdlocacaoanterior);
  with locacaodevolucao.New do
  begin
    dtentrega    := DtBanco;
    hrentrega    := HrBanco;
    qtitem       := qtsaldo;
    vlunitario   := 0;
    vltotal      := 0;
    dsobservacao := 'Contrato renovado';
    AdicionarDevolucao;
  end;
  Select(result);
  atualizar_valor_locacao;
end;

procedure TLocacao.Setcliente(const Value: TCliente);
begin
  Fcliente := Value;
end;

procedure TLocacao.Setclienteresponsavel(const Value: TCliente);
begin
  Fclienteresponsavel := Value;
end;

function TLocacao.RegistrarMudancaStatus(cdstlocacao: integer;boscript:boolean=false): string;
var
  hstlocacao : thstlocacao;
begin
  hstlocacao := thstlocacao.create;
  try
    hstlocacao.cdlocacao := cdlocacao;
    hstlocacao.cdstlocacao := cdstlocacao;
    hstlocacao.dsjustificativa := '';
    result := hstlocacao.Insert(boscript);
  finally
    freeandnil(hstlocacao);
  end;
end;

procedure TLocacao.RegistrarPeriodo;
var
  locacaoperiodo : tlocacaoperiodo;
begin
  Select(cdlocacao);
  locacaoperiodo := tlocacaoperiodo.create;
  try
    locacaoperiodo.cdlocacao := cdlocacao;
    locacaoperiodo.dtinicio := dtinicio;
    locacaoperiodo.dtemissao := dtemissao;
    locacaoperiodo.dtprevista := dtprevista;
    locacaoperiodo.nudias := nudias;
    locacaoperiodo.qtitem := qtitem;
    locacaoperiodo.vllocacao := vllocacao;
    locacaoperiodo.vlequipamento := vlequipamento;
    locacaoperiodo.Insert;
  finally
    freeandnil(locacaoperiodo);
  end;
end;

function TLocacao.ObterPrecoLocacao(cdequipamento, nudias, qtitem: integer): Currency;
var
  vlpreco : Currency;
  cdtpequipamento : string;
  function makesql:string;
  begin
    result := 'select vlpreco from tpequipamentopreco where cdempresa='+empresa.cdempresa.ToString+' and cdtpequipamento='+cdtpequipamento+' and nudias=';
  end;
begin
  if (cdequipamento = 0) or (nudias = 0) then
  begin
    result := 0;
    Exit;
  end;
  cdtpequipamento := NomedoCodigo(_equipamento, inttostr(cdequipamento), _cdtpequipamento);
  vlpreco := RetornaSQLCurrency(makesql+inttostr(NUDIAS));
  if vlpreco = 0 then
  begin
    vlpreco := RetornaSQLCurrency(makesql+_1);
    result  := nudias * qtitem * vlpreco;
  end
  else
  begin
    result := qtitem *  vlpreco;
  end;
end;

function TLocacao.ObterVlequipamento(cdequipamento: integer; qtitem:integer): Currency;
var
  equipamento : TEquipamento;
begin
  if cdequipamento = 0 then
  begin
    result := 0;
    Exit;
  end;
  equipamento := tequipamento.create;
  try
    equipamento.Select(cdequipamento);
    result := equipamento.vlequipamento * qtitem;
  finally
    equipamento.destroy;
  end;
end;

function TLocacao.ObterVlUltimaDevolucao: Currency;
begin
  result := RetornaSQLCurrency('select first 1 vltotal '+
                               'from locacaodevolucao '+
                               'where cdempresa='+cdempresa.ToString+' and cdlocacao='+inttostr(cdlocacao)+' '+
                               'order by cdlocacaodevolucao desc');
end;

function TLocacao.getStatusAnteriorAtual(qt: string='2';cdstatus:string=''):integer;
  function makesql:string;
  begin
    result := 'select first '+qt+' cdstlocacao '+
              'from hstlocacao '+
              'where cdempresa='+empresa.cdempresa.ToString+' and cdlocacao='+inttostr(cdlocacao)+' ';
    if cdstatus <> '' then
    begin
      result := result + 'and cdstlocacao<>'+cdstatus;
    end;
    result := result +
              'order by cdhstlocacao desc';
  end;
var
  q : TClasseQuery;
begin
  result := 0;
  q := TClasseQuery.create(makesql);
  try
    while not q.q.Eof do
    begin
      if q.q.RecNo = strtoint(qt) then
      begin
        result := q.q.fields[0].asinteger;
      end;
      q.q.Next;
    end;
  finally
    freeandnil(q);
  end;
end;

function TLocacaoDevolucaoList.GetItem(Index: Integer): TLocacaoDevolucao;
begin
  Result := TLocacaoDevolucao(Inherited Items[Index]);
end;

function TLocacaoDevolucaoList.Ler(codigo: Integer; boaberta:boolean=false): Boolean;
var
  q : TClasseQuery;
begin
  if boaberta then
  begin
    q := tclassequery.create('select l.* '+
                             'from locacaodevolucao l '+
                             'left join itsaida i on i.cdempresa=l.cdempresa and i.cdlocacaodevolucao=l.cdlocacaodevolucao '+
                             'where i.cdlocacaodevolucao is null and l.cdempresa='+empresa.cdempresa.ToString+' and l.cdlocacao='+inttostr(codigo));
  end
  else
  begin
    q := TClasseQuery.create(QRetornaSQL.get_select_from(_LocacaoDevolucao, codigo, _cdlocacao));
  end;
  try
    ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TLocacaoDevolucaoList.Ler(dataset: TDataset): boolean;
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

function TLocacaoDevolucaoList.New: TLocacaoDevolucao;
begin
  Result := TLocacaoDevolucao.Create;
  Add(Result);
end;

procedure TLocacaoDevolucaoList.SetItem(Index: Integer; const Value: TLocacaoDevolucao);
begin
  Put(Index, Value);
end;

function TLocacaoPeriodoList.Delete: boolean;
var
  i : integer;
begin
  for i := 0 to count -1 do
  begin
    items[i].Delete;
  end;
  clear;
end;

function TLocacaoPeriodoList.GetItem(Index: Integer): TLocacaoPeriodo;
begin
  Result := TLocacaoPeriodo(Inherited Items[Index]);
end;

function TLocacaoPeriodoList.IndiceAntePenultimo: integer;
begin
  result := Count-1;
  if result > 0 then
  begin
    result := result -1;
  end;
end;

function TLocacaoPeriodoList.Ler(dataset: TDataset): boolean;
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

function TLocacaoPeriodoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_LocacaoPeriodo, codigo, _cdlocacao));
  try
    ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TLocacaoPeriodoList.New: TLocacaoPeriodo;
begin
  Result := TLocacaoPeriodo.Create;
  Add(Result);
end;

procedure TLocacaoPeriodoList.SetItem(Index: Integer; const Value: TLocacaoPeriodo);
begin
  Put(Index, Value);
end;

function THstLocacaoList.GetItem(Index: Integer): THstLocacao;
begin
  Result := THstLocacao(Inherited Items[Index]);
end;

function THstLocacaoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_hstlocacao, codigo, _cdlocacao));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      //thstlocacaodao.read(new, q.q.fieldbyname(_cdhstlocacao).AsInteger);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function THstLocacaoList.New: THstLocacao;
begin
  Result := THstLocacao.Create;
  Add(Result);
end;

procedure THstLocacaoList.SetItem(Index: Integer; const Value: THstLocacao);
begin
  Put(Index, Value);
end;

function TLocacaoPeriodo.Insert(boscript: boolean): String;
begin
  if cdlocacaoperiodo = 0 then
  begin
    cdlocacaoperiodo := qgerar.GerarCodigo(_locacaoperiodo);
  end;
  result := inherited insert(boscript);
end;

function THStLocacao.Insert(boscript: boolean): String;
begin
  if cdhstlocacao = 0 then
  begin
    cdhstlocacao := qgerar.GerarCodigo(_hstlocacao);
  end;
  result := inherited insert(boscript);
end;

function TLocacaoDevolucao.Insert(boscript: boolean): String;
begin
  if cdlocacaodevolucao = 0 then
  begin
    cdlocacaodevolucao := qgerar.GerarCodigo(_locacaodevolucao);
  end;
  result := inherited insert(boscript);
end;

end.
