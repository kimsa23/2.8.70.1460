unit classeordcompra;

interface

uses
  Forms, Dialogs, ComCtrls, sysutils, ExtCtrls, Controls, Menus, ActnList, Classes, Contnrs,
  DBClient, DB,
  classeexecutasql, classeaplicacao, classecopiarregistro, classeempresa, classegerar,
  classeregistrainformacao, classeretornasql, classequery, classedao,
  classeproduto,
  uRegistro, uprogressbar, ustrings, uconstantes,
  cxCalendar, classecondpagto;

Type
  TOrdcompraAprovacao = class(TRegistroQuipos)
  private
    FcdOrdcompraAprovacao: Integer;
    Fbofinanceiro: String;
    Fboaprovado: String;
    Fcdordcompra: Integer;
    Fcdusuario: Integer;
    Fdsobservacao: string;
  public
    [keyfield]
    property cdordcompraaprovacao : Integer read Fcdordcompraaprovacao write Fcdordcompraaprovacao;
    [FK]
    property cdusuario : Integer read Fcdusuario write Fcdusuario;
    [FK]
    property cdordcompra : Integer read Fcdordcompra write Fcdordcompra;
    property boaprovado : String read Fboaprovado write Fboaprovado;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property bofinanceiro : String read Fbofinanceiro write Fbofinanceiro;
  end;
  TordcompraAprovacaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TordcompraAprovacao;
    procedure SetItem(Index: Integer; const Value: TordcompraAprovacao);
  public
    function bofinanceiro: Boolean;
    function New: TordcompraAprovacao;
    property Items[Index: Integer]: TordcompraAprovacao read GetItem write SetItem;
    function Ler(nmcdfield: string; codigo:Integer):Boolean;overload;
  end;
  TOrdCompraAutpagto = class(TRegistroQuipos)
  private
    fdtprorrogacao: tdate;
    fvlordcompraautpagto: Currency;
    fcdordcompra: integer;
    fvlsaldo: Currency;
    fdtemissao: TDate;
    fcdordcompraautpagto: Integer;
  public
    [KeyField]
    property cdordcompraautpagto: Integer read fcdordcompraautpagto write fcdordcompraautpagto;
    [fk, AObrigatorio]
    property cdordcompra: integer read fcdordcompra write fcdordcompra;
    [AObrigatorio]
    property vlordcompraautpagto: Currency read fvlordcompraautpagto write fvlordcompraautpagto;
    [AObrigatorio]
    property dtprorrogacao: tdate read fdtprorrogacao write fdtprorrogacao;
    [AObrigatorio]
    property dtemissao: TDate read fdtemissao write fdtemissao;
    [AObrigatorio]
    property vlsaldo: Currency read fvlsaldo write fvlsaldo;
  end;
  TOrdCompraAutpagtoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TOrdcompraAutpagto;
    procedure SetItem(Index: Integer; const Value: TOrdcompraAutpagto);
  public
    function New: TOrdcompraAutpagto;
    property Items[Index: Integer]: TOrdcompraAutpagto read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
  end;
  TITordcompra = class(TRegistroQuipos)
  private
    Fboipibcicms: String;
    Fbocertificado: String;
    Fvlicms: Currency;
    Fvlunitario: Currency;
    Fvldesconto: Currency;
    Fvlpeca: Currency;
    Fvlipi: Currency;
    Fvlicmssubtrib: Currency;
    Fvltotal: Currency;
    Fqtpeca: Double;
    Falicms: Double;
    Fqtpesounitario: Double;
    Fqtatendida: double;
    Fqtitem: double;
    Falipi: Double;
    Fnukmatual: Integer;
    Fcdcntcusto: integer;
    Fcditpedido: Integer;
    Fcdproduto: integer;
    Fnuitordcompra: Integer;
    Fcdordproducao: Integer;
    Fcditordcompra: integer;
    Fcdplconta: integer;
    Fcdordcompra: integer;
    Fnukmfinal: Integer;
    Fcdtpaplicacao: Integer;
    Fcddigitado: string;
    Fnuplconta: string;
    Fdsformula: string;
    Fdsobservacao: string;
    Fdtpreventrega: TDate;
    Fproduto: TProduto;
    Fnucntcusto: string;
    fcdorcamento: integer;
  public
    property produto : TProduto read Fproduto write Fproduto;
    [keyfield]
    property cditordcompra : integer read Fcditordcompra write Fcditordcompra;
    [FK]
    property cdordcompra : integer read Fcdordcompra write Fcdordcompra;
    [FK]
    property cdplconta : integer read Fcdplconta write Fcdplconta;
    property nuplconta : string read Fnuplconta write Fnuplconta;
    [FK]
    property cdcntcusto : integer read Fcdcntcusto write Fcdcntcusto;
    property nucntcusto : string read Fnucntcusto write Fnucntcusto;
    [FK]
    property cdproduto : integer read Fcdproduto write Fcdproduto;
    property cddigitado : string read Fcddigitado write Fcddigitado;
    property qtitem: double read Fqtitem write Fqtitem;
    property qtatendida: double read Fqtatendida write Fqtatendida;
    property vlunitario : Currency read Fvlunitario write Fvlunitario;
    [FK]
    property cdtpaplicacao : Integer read Fcdtpaplicacao write Fcdtpaplicacao;
    [fk]
    property cditpedido : Integer read Fcditpedido write Fcditpedido;
    [FK]
    property cdordproducao : Integer read Fcdordproducao write Fcdordproducao;
    [FK]
    property cdorcamento : integer read fcdorcamento write fcdorcamento;
    property vltotal : Currency read Fvltotal write Fvltotal;
    property alicms : Double read Falicms write Falicms;
    property vlicms : Currency read Fvlicms write Fvlicms;
    property alipi : Double read Falipi write Falipi;
    property vlipi : Currency read Fvlipi write Fvlipi;
    property dtpreventrega : TDate read Fdtpreventrega write Fdtpreventrega;
    property dsformula : string read Fdsformula write Fdsformula;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property bocertificado : String read Fbocertificado write Fbocertificado;
    property vldesconto : Currency read Fvldesconto write Fvldesconto;
    property vlicmssubtrib : Currency read Fvlicmssubtrib write Fvlicmssubtrib;
    property boipibcicms : String read Fboipibcicms write Fboipibcicms;
    property qtpeca : Double read Fqtpeca write Fqtpeca;
    property qtpesounitario : Double read Fqtpesounitario write Fqtpesounitario;
    property nuitordcompra : Integer read Fnuitordcompra write Fnuitordcompra;
    property vlpeca : Currency read Fvlpeca write Fvlpeca;
    property nukmatual : Integer read Fnukmatual write Fnukmatual;
    property nukmfinal : Integer read Fnukmfinal write Fnukmfinal;
    constructor create;
    destructor destroy; override;
  end;
  TItOrdCompraList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItOrdCompra;
    procedure SetItem(Index: Integer; const Value: TItOrdCompra);
  public
    function New: TItOrdCompra;
    property Items[Index: Integer]: TItOrdCompra read GetItem write SetItem;
    function sqlInsert:string;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(where:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
  end;
  TTpOrdCompra = class(TRegistroQuipos)
  private
    Fbocertificado: String;
    Fboipi: String;
    Fboitemdsobservacao: String;
    Fbomodelo3: String;
    Fbocntcustoobrigatorio: String;
    Fboaplicacaodigitar: String;
    Fbomodelo1: String;
    Fboiqf: String;
    Fbotpaplicacaoitens: String;
    Fbotransportadora: String;
    Fbolocaldigitar: String;
    Fboitpedido: String;
    Fboitemdsformula: String;
    Fbosolicitantedigitar: String;
    Fboitemcertificado: String;
    Fbomodelo2: String;
    Fboaprovacao: String;
    Fboitemqtpeca: String;
    Fboaprovacaofinanceiro: String;
    Fboitemkm: String;
    Fboobservacaotpordcompra: String;
    Fbomodelo4: String;
    Fboformula: String;
    Fcdtpordcompra: Integer;
    Fdsassuntoemail: string;
    Fdsobservacao: string;
    Fdsversaodocumento: string;
    Fdstituloemail: string;
    Femailcopia: string;
    Fnmtpordcompra: string;
    fboitemnuclfiscal: string;
    fboitemnusticms: string;
    fboitemorcamento: string;
  public
    [keyfield]
    property cdtpordcompra : Integer read Fcdtpordcompra write Fcdtpordcompra;
    property nmtpordcompra : string read Fnmtpordcompra write Fnmtpordcompra;
    property boipi : String read Fboipi write Fboipi;
    property bomodelo1 : String read Fbomodelo1 write Fbomodelo1;
    property bomodelo2 : String read Fbomodelo2 write Fbomodelo2;
    property bomodelo3 : String read Fbomodelo3 write Fbomodelo3;
    property botpaplicacaoitens : String read Fbotpaplicacaoitens write Fbotpaplicacaoitens;
    property boaplicacaodigitar : String read Fboaplicacaodigitar write Fboaplicacaodigitar;
    property dsversaodocumento : string read Fdsversaodocumento write Fdsversaodocumento;
    property bolocaldigitar : String read Fbolocaldigitar write Fbolocaldigitar;
    property bosolicitantedigitar : String read Fbosolicitantedigitar write Fbosolicitantedigitar;
    property boformula : String read Fboformula write Fboformula;
    property boitpedido : String read Fboitpedido write Fboitpedido;
    property bomodelo4 : String read Fbomodelo4 write Fbomodelo4;
    property boaprovacao : String read Fboaprovacao write Fboaprovacao;
    property dstituloemail : string read Fdstituloemail write Fdstituloemail;
    property dsassuntoemail : string read Fdsassuntoemail write Fdsassuntoemail;
    property emailcopia : string read Femailcopia write Femailcopia;
    property bocntcustoobrigatorio : String read Fbocntcustoobrigatorio write Fbocntcustoobrigatorio;
    property bocertificado : String read Fbocertificado write Fbocertificado;
    property boobservacaotpordcompra : String read Fboobservacaotpordcompra write Fboobservacaotpordcompra;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property boiqf : String read Fboiqf write Fboiqf;
    property boitemdsformula : String read Fboitemdsformula write Fboitemdsformula;
    property boitemdsobservacao : String read Fboitemdsobservacao write Fboitemdsobservacao;
    property boitemqtpeca : String read Fboitemqtpeca write Fboitemqtpeca;
    property boitemcertificado : String read Fboitemcertificado write Fboitemcertificado;
    property boitemkm : String read Fboitemkm write Fboitemkm;
    property botransportadora : String read Fbotransportadora write Fbotransportadora;
    property boaprovacaofinanceiro : String read Fboaprovacaofinanceiro write Fboaprovacaofinanceiro;
    property boitemnuclfiscal : string read fboitemnuclfiscal write fboitemnuclfiscal;
    property boitemnusticms : string read fboitemnusticms write fboitemnusticms;
    property boitemorcamento : string read fboitemorcamento write fboitemorcamento;
  end;
  TStOrdCompra = class(TPersintentObject)
  private
    Fbonovo: String;
    Fboexcluir: String;
    Fboalterar: String;
    Fbogerarinfo: String;
    Fboentregue: String;
    Fnucor: integer;
    Fnmstordcompra: string;
    Fcdstordcompra : Integer;
  public
    [keyfield]
    property cdstordcompra : integer read Fcdstordcompra write Fcdstordcompra;
    property nmstordcompra : string read Fnmstordcompra write Fnmstordcompra;
    property bonovo : String read Fbonovo write Fbonovo;
    property boalterar : String read Fboalterar write Fboalterar;
    property boexcluir : String read Fboexcluir write Fboexcluir;
    property bogerarinfo : String read Fbogerarinfo write Fbogerarinfo;
    property boentregue : String read Fboentregue write Fboentregue;
    property nucor : integer read Fnucor write Fnucor;
  end;
  TOrdCompra = class(TRegistroQuipos)
  private
    Fbocertificado: string;
    Fbofinanceiro: string;
    Fvlicmssubtrib: Currency;
    Fvldesconto: Currency;
    Fvltotal: Currency;
    Fvlfrete: Currency;
    Falipi: Double;
    Falicms: Double;
    Fpsfrete: Double;
    Fcdtpcobranca: Integer;
    Fcditcontfornecedor: Integer;
    Fcdtpordcompra: Integer;
    Fcdstordcompra: Integer;
    Fcdfinalidadeordcompra: Integer;
    Fcdtpfrete: String;
    Fcdfuncionariosolicitante: Integer;
    Fcdtpaplicacao: Integer;
    Fcdtpipi: Integer;
    Fcdcntcustoentrega: Integer;
    Fcdfuncionarioaprovacao: Integer;
    Fcdcondpagto: Integer;
    Fcdfuncionariocontato: Integer;
    Fcdtpfornecedor: Integer;
    Fcdpedidomaterial: Integer;
    Fnudias: Integer;
    Fdsaplicacao: string;
    Fdslocal: string;
    Fprentrega: string;
    Fdssolicitante: string;
    Fcdtransportadora: LargeInt;
    Fdsobservacao: string;
    Fcdfornecedortransportadora: LargeInt;
    Fcdordcompra: integer;
    Fcdfornecedor: LargeInt;
    Fnusolicitacao: string;
    Fdtaprovacao: TDate;
    Fdtemissao: TDate;
    Fdtentrega: TDate;
    Fdtfechamento: TDate;
    Ftpordcompra: TTpOrdCompra;
    FItOrdCompra: TItOrdCompraList;
    Fordcompraaprovacao: tordcompraaprovacaoList;
    fstordcompra: TStOrdCompra;
    FOrdCompraAutpagto: TOrdCompraAutpagtoList;
    fcondpagto: tcondpagto;
  public
    property condpagto: tcondpagto read fcondpagto write fcondpagto;
    property stordcompra : TStOrdCompra read fstordcompra write fstordcompra;
    property ordcompraaprovacao : tordcompraaprovacaoList read Fordcompraaprovacao write Fordcompraaprovacao;
    property ItOrdCompra : TItOrdCompraList read FItOrdCompra write FItOrdCompra;
    property OrdCompraAutpagto : TOrdCompraAutpagtoList read FOrdCompraAutpagto write FOrdCompraAutpagto;
    property tpordcompra : TTpOrdCompra read Ftpordcompra write Ftpordcompra;
    [keyfield]
    property cdordcompra : integer read Fcdordcompra write Fcdordcompra;
    [fk]
    property cdstordcompra : Integer read Fcdstordcompra write Fcdstordcompra;
    [fk]
    property cdpedidomaterial : Integer read Fcdpedidomaterial write Fcdpedidomaterial;
    [fk]
    property cdfornecedortransportadora : LargeInt read Fcdfornecedortransportadora write Fcdfornecedortransportadora;
    [fk]
    property cdtpordcompra : Integer read Fcdtpordcompra write Fcdtpordcompra;
    [fl]
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    [fk]
    property cdcondpagto : Integer read Fcdcondpagto write Fcdcondpagto;
    [fk]
    property cdfuncionariosolicitante : Integer read Fcdfuncionariosolicitante write Fcdfuncionariosolicitante;
    [fk]
    property cdfuncionarioaprovacao : Integer read Fcdfuncionarioaprovacao write Fcdfuncionarioaprovacao;
    [fk]
    property cdtpfrete : String read Fcdtpfrete write Fcdtpfrete;
    [fk]
    property cdfuncionariocontato : Integer read Fcdfuncionariocontato write Fcdfuncionariocontato;
    [fk]
    property cdtpaplicacao : Integer read Fcdtpaplicacao write Fcdtpaplicacao;
    [fk]
    property cdtpcobranca : Integer read Fcdtpcobranca write Fcdtpcobranca;
    [fk]
    property cdfinalidadeordcompra : Integer read Fcdfinalidadeordcompra write Fcdfinalidadeordcompra;
    [fk]
    property cdtpfornecedor : Integer read Fcdtpfornecedor write Fcdtpfornecedor;
    [fk]
    property cdcntcustoentrega : Integer read Fcdcntcustoentrega write Fcdcntcustoentrega;
    [fk]
    property cdtpipi : Integer read Fcdtpipi write Fcdtpipi;
    [fk]
    property cditcontfornecedor : Integer read Fcditcontfornecedor write Fcditcontfornecedor;
    [fk]
    property cdtransportadora : LargeInt read Fcdtransportadora write Fcdtransportadora;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property dtentrega : TDate read Fdtentrega write Fdtentrega;
    property dtaprovacao : TDate read Fdtaprovacao write Fdtaprovacao;
    property nudias : Integer read Fnudias write Fnudias;
    property nusolicitacao : string read Fnusolicitacao write Fnusolicitacao;
    property vltotal : Currency read Fvltotal write Fvltotal;
    property prentrega : string read Fprentrega write Fprentrega;
    property alipi : Double read Falipi write Falipi;
    property alicms : Double read Falicms write Falicms;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property vlfrete : Currency read Fvlfrete write Fvlfrete;
    property dsaplicacao : string read Fdsaplicacao write Fdsaplicacao;
    property dslocal : string read Fdslocal write Fdslocal;
    property dssolicitante : string read Fdssolicitante write Fdssolicitante;
    property vldesconto : Currency read Fvldesconto write Fvldesconto;
    property dtfechamento : TDate read Fdtfechamento write Fdtfechamento;
    property vlicmssubtrib : Currency read Fvlicmssubtrib write Fvlicmssubtrib;
    property bocertificado : string read Fbocertificado write Fbocertificado;
    property psfrete : Double read Fpsfrete write Fpsfrete;
    property bofinanceiro : string read Fbofinanceiro write Fbofinanceiro;
    function copiar:integer;
    constructor create;
    destructor destroy; override;
    procedure gerarparcelas;
  end;

implementation

constructor TOrdCompra.create;
begin
  inherited;
  ftpOrdCompra        := TTpOrdCompra.create;
  fOrdCompraAutpagto  := tOrdCompraAutpagtoList.create;
  fitOrdCompra        := titOrdCompraList.create;
  fordcompraaprovacao := TordcompraAprovacaoList.create;
  fstordcompra        := TStOrdCompra.create;
end;

procedure TOrdCompra.gerarparcelas;
var
  i: Integer;
begin
  ordcompraautpagto.Clear;
  condpagto.GerarParcela(dtentrega, vltotal);
  if (cdcondpagto = 0) or (vltotal = 0) or (condpagto.itcondpagto.Count = 0) then
  begin
    Exit;
  end;
  for i := 0 to condpagto.parcela.Count - 1 do
  begin
    ordcompraautpagto.New;
    ordcompraautpagto.Items[i].cdordcompra         := cdordcompra;
    ordcompraautpagto.Items[i].dtprorrogacao       := condpagto.parcela.Items[i].dtvencimento;
    ordcompraautpagto.Items[i].dtemissao           := dtentrega;
    ordcompraautpagto.Items[i].vlsaldo             := condpagto.parcela.Items[i].valor;
    ordcompraautpagto.Items[i].vlordcompraautpagto := condpagto.parcela.Items[i].dtvencimento;
  end;
end;

function TOrdCompra.copiar: integer;
begin
  result := copiar_registro(cdordcompra, _ordcompra        , _cdordcompra,     0, _dtfechamento, '');
            copiar_registro(cdordcompra, _ordcompraautpagto, _cdordcompra, result,            '', '');
            copiar_registro(cdordcompra, _itordcompra      , _cdordcompra, result,            '', _QTATENDIDA);
end;

destructor TOrdCompra.destroy;
begin
  FreeAndNil(ftpOrdCompra);
  FreeAndNil(fItOrdCompra);
  FreeAndNil(fOrdCompraAutpagto);
  FreeAndNil(fordcompraaprovacao);
  FreeAndNil(fstordcompra);
  inherited;
end;

constructor TITordcompra.create;
begin
  inherited;
  fproduto := TProduto.create;
end;

destructor TITordcompra.destroy;
begin
  FreeAndNil(fproduto);
  inherited;
end;

function TItOrdCompraList.GetItem(Index: Integer): TItOrdCompra;
begin
  Result := TItOrdCompra(Inherited Items[Index]);
end;

function TItOrdCompraList.Ler(where: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_itOrdCompra, where));
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

function TItOrdCompraList.Ler(codigo: integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itOrdCompra, codigo, _cdordcompra));
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

function TItOrdCompraList.New: TItOrdCompra;
begin
  Result := TItOrdCompra.Create;
  Add(Result);
end;

procedure TItOrdCompraList.SetItem(Index: Integer; const Value: TItOrdCompra);
begin
  Put(Index, Value);
end;

function TItOrdCompraList.sqlInsert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].Insert(True)+#13;
  end;
end;

function TOrdCompraAutpagtoList.GetItem(Index: Integer): TOrdcompraAutpagto;
begin
  Result := TOrdcompraAutpagto(Inherited Items[Index]);
end;

function TOrdCompraAutpagtoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_OrdCompraAutpagto, codigo, _cdordcompra));
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

function TOrdCompraAutpagtoList.Ler(DataSet: TDataset): boolean;
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

function TOrdCompraAutpagtoList.New: TOrdcompraAutpagto;
begin
  Result := TOrdcompraAutpagto.Create;
  Add(Result);
end;

procedure TOrdCompraAutpagtoList.SetItem(Index: Integer; const Value: TOrdcompraAutpagto);
begin
  Put(Index, Value);
end;

function TItOrdCompraList.Ler(DataSet: TDataset): boolean;
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

function TordcompraAprovacaoList.bofinanceiro: Boolean;
var
  i : Integer;
begin
  result := False;
  for i := 0 to count-1 do
  begin
    if Items[i].bofinanceiro = _s then
    begin
      result := True;
      Break;
    end;
  end;
end;

function TordcompraAprovacaoList.GetItem(Index: Integer): TordcompraAprovacao;
begin
  Result := TordcompraAprovacao(Inherited Items[Index]);
end;

function TordcompraAprovacaoList.Ler(nmcdfield: string; codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_ordcompraAprovacao, codigo, nmcdfield));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      New.Select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TordcompraAprovacaoList.New: TordcompraAprovacao;
begin
  Result := TordcompraAprovacao.Create;
  Add(Result);
end;

procedure TordcompraAprovacaoList.SetItem(Index: Integer; const Value: TordcompraAprovacao);
begin
  Put(Index, Value);
end;

end.
