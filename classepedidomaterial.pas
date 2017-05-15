unit classepedidomaterial;

interface

uses
  sysutils, Controls, Contnrs, DB, Classes,
  ustrings, uConstantes, uRegistro, udatahora,
  udlgjustificativa,
  classequery, classeaplicacao, classeempresa, classeretornasql,
  classegerar, classeusuario, classeexecutasql, classeproduto, classedao;

type
  THStPedidoMaterial = class(TPersintentObject)
  private
    Fcdempresa: Largeint;
    Fcdcomputador: integer;
    Fcdusuario: integer;
    Fcdstpedidomaterial: integer;
    Fcdhstpedidomaterial: integer;
    Ftshistorico: TDateTime;
    Fdsjustificativa: string;
    Fcdpedidomaterial: integer;
  public
    [keyfield]
    property cdempresa : Largeint read Fcdempresa write Fcdempresa;
    [keyfield]
    property cdhstpedidomaterial : integer read Fcdhstpedidomaterial write Fcdhstpedidomaterial;
    [fk]
    property cdpedidomaterial : integer read Fcdpedidomaterial write Fcdpedidomaterial;
    [fk]
    property cdstpedidomaterial : integer read Fcdstpedidomaterial write Fcdstpedidomaterial;
    [fk]
    property cdusuario : integer read Fcdusuario write Fcdusuario;
    [fk]
    property cdcomputador : integer read Fcdcomputador write Fcdcomputador;
    property tshistorico : TDateTime read Ftshistorico write Ftshistorico;
    property dsjustificativa : string read Fdsjustificativa write Fdsjustificativa;
  end;
  TStPedidoMaterial = class(TPersintentObject)
  private
    Fnucor: integer;
    Fnmstpedidomaterial: string;
    Fboexcluir: string;
    Fbonovo: string;
    Fcdstpedidomaterial: integer;
    Fboalterar: string;
  public
    [keyfield]
    property cdstpedidomaterial : integer read Fcdstpedidomaterial write Fcdstpedidomaterial;
    property nmstpedidomaterial : string read Fnmstpedidomaterial write Fnmstpedidomaterial;
    property bonovo : string read Fbonovo write Fbonovo;
    property boalterar : string read Fboalterar write Fboalterar;
    property boexcluir : string read Fboexcluir write Fboexcluir;
    property nucor : integer read Fnucor write Fnucor;
  end;
  TTpPedidoMaterial = class(TRegistroQuipos)
  private
    Fboqtitem: string;
    Fboaplicacaodigitar: string;
    Fbofinalidade: string;
    Fboemergencia: string;
    Fbocntcustoobrigatorio: string;
    Fbovendedor: string;
    Fboitemqtpeca: string;
    Fbotpfornecedor: string;
    Fbocomprador: string;
    Fbofornecedorexclusivo: string;
    Fboordproducao: string;
    Fvllimite: Currency;
    Fcdtppedidomaterial: Integer;
    Fqtfornecedor: Integer;
    Fnmtppedidomaterial: string;
    Fdsmensagem: string;
    Fbojustificarmudancastatus: string;
  public
    [keyfield]
    property cdtppedidomaterial : Integer read Fcdtppedidomaterial write fcdtppedidomaterial;
    property nmtppedidomaterial : string read Fnmtppedidomaterial write fnmtppedidomaterial;
    property vllimite : Currency read Fvllimite write fvllimite;
    property qtfornecedor : Integer read Fqtfornecedor write fqtfornecedor;
    property bofornecedorexclusivo : string read Fbofornecedorexclusivo write fbofornecedorexclusivo;
    property boaplicacaodigitar : string read Fboaplicacaodigitar write fboaplicacaodigitar;
    property dsmensagem : string read Fdsmensagem write fdsmensagem;
    property boqtitem : string read Fboqtitem write fboqtitem;
    property bofinalidade : string read Fbofinalidade write fbofinalidade;
    property botpfornecedor : string read Fbotpfornecedor write fbotpfornecedor;
    property bocomprador : string read Fbocomprador write fbocomprador;
    property bovendedor : string read Fbovendedor write fbovendedor;
    property bocntcustoobrigatorio : string read Fbocntcustoobrigatorio write fbocntcustoobrigatorio;
    property boitemqtpeca : string read Fboitemqtpeca write fboitemqtpeca;
    property boordproducao : string read Fboordproducao write fboordproducao;
    property boemergencia : string read Fboemergencia write fboemergencia;
    property bojustificarmudancastatus : string read Fbojustificarmudancastatus write Fbojustificarmudancastatus;
  end;
  TStpedidomaterialList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TStpedidomaterial;
    procedure SetItem(Index: Integer; const Value: TStpedidomaterial);
  public
    function New: TStpedidomaterial;
    property Items[Index: Integer]: TStpedidomaterial read GetItem write SetItem;
    function Ler(sqlwhere:string):Boolean;
  end;
  TPedidoMaterialFornecedor = class(TRegistroQuipos)
  private
    Fnucotacao: Integer;
    Fcdpedidomaterialfornecedor: Integer;
    Fcditcontfornecedor: Integer;
    Fcdpedidomaterial: Integer;
    Fcdordcompra: Integer;
    Fcdcondpagto: Integer;
    Fcdfornecedor: LargeInt;
    Fcdclfornecedor: Integer;
    Fnmitcontfornecedor: string;
    Fdtprventrega: TDate;
    Fdtcotacao: TDate;
  public
    [keyfield]
    property cdpedidomaterialfornecedor : Integer read Fcdpedidomaterialfornecedor write Fcdpedidomaterialfornecedor;
    [fk]
    property cdpedidomaterial : Integer read Fcdpedidomaterial write Fcdpedidomaterial;
    [fk]
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    [fk]
    property cdordcompra : Integer read Fcdordcompra write Fcdordcompra;
    [fk]
    property cdcondpagto : Integer read Fcdcondpagto write Fcdcondpagto;
    [fk]
    property cditcontfornecedor : Integer read Fcditcontfornecedor write Fcditcontfornecedor;
    property nucotacao : Integer read Fnucotacao write Fnucotacao;
    property dtcotacao : TDate read Fdtcotacao write Fdtcotacao;
    property dtprventrega : TDate read Fdtprventrega write Fdtprventrega;
    property nmitcontfornecedor : string read Fnmitcontfornecedor write Fnmitcontfornecedor;
    [fk]
    property cdclfornecedor : Integer read Fcdclfornecedor write Fcdclfornecedor;
  end;
  TItPedidoMaterialFornecedor = Class(TRegistroQuipos)
  private
    Fborecuperaipi: string;
    Fborecuperaicms: string;
    Fbovencedor: string;
    Fvlfinal: currency;
    Fvlicmsdifaliquota: currency;
    Fvlipi: currency;
    Fvlfrete: currency;
    Fvlicmssubtrib: currency;
    Fvlreal: currency;
    Fvltotal: currency;
    Fvlunitario: currency;
    Fvlicms: currency;
    Fvldesconto: currency;
    Falipi: double;
    Falicms: double;
    Falicmsdifaliquota: double;
    Fqtitem: double;
    Fcdtpaprovacaocotacao: integer;
    Fcditpedidomaterial: integer;
    Fcdforencedor: Largeint;
    Fdtpreventrega: TDate;
  public
    [keyfield]
    property cditpedidomaterial : integer read Fcditpedidomaterial write Fcditpedidomaterial;
    [keyfield]
    property cdforencedor : Largeint read Fcdforencedor write Fcdforencedor;
    [fk]
    property cdtpaprovacaocotacao : integer read Fcdtpaprovacaocotacao write Fcdtpaprovacaocotacao;
    property vlunitario : currency read Fvlunitario write Fvlunitario;
    property vltotal : currency read Fvltotal write Fvltotal;
    property bovencedor :  string read Fbovencedor write Fbovencedor;
    property qtitem : double read Fqtitem write Fqtitem;
    property dtpreventrega : TDate read Fdtpreventrega write Fdtpreventrega;
    property alicms : double read Falicms write Falicms;
    property alipi : double read Falipi write Falipi;
    property vlfrete : currency read Fvlfrete write Fvlfrete;
    property vlicmsdifaliquota : currency read Fvlicmsdifaliquota write Fvlicmsdifaliquota;
    property vldesconto : currency read Fvldesconto write Fvldesconto;
    property vlfinal : currency read Fvlfinal write Fvlfinal;
    property borecuperaicms : string read Fborecuperaicms write Fborecuperaicms;
    property borecuperaipi : string read Fborecuperaipi write Fborecuperaipi;
    property alicmsdifaliquota : double read Falicmsdifaliquota write Falicmsdifaliquota;
    property vlreal : currency read Fvlreal write Fvlreal;
    property vlicms : currency read Fvlicms write Fvlicms;
    property vlipi : currency read Fvlipi write Fvlipi;
    property vlicmssubtrib : currency read Fvlicmssubtrib write Fvlicmssubtrib;
  end;
  TItPedidoMaterial = class(TRegistroQuipos)
  private
    Fbocertificado: string;
    Fqtatendida: Double;
    Fqtsolicitada: Double;
    Fqtpeca: Double;
    Fqtpesounitario: Double;
    Fqtestoque: Double;
    Fcdordproducao: Integer;
    Fcdcntcusto: Integer;
    Fcditpedidomaterial: Integer;
    Fcdproduto: Integer;
    Fcdpedidomaterial: Integer;
    Fcdrim: Integer;
    Fdsobservacao: string;
    Fcddigitado: string;
    Fdsformula: string;
    Fcditordproducaomaterial: Integer;
    Fcditrim: Integer;
    Fproduto: TProduto;
    procedure Setcdproduto(const Value: Integer);
  public
    property produto : TProduto read Fproduto write Fproduto;
    [keyfield]
    property cditpedidomaterial : Integer read Fcditpedidomaterial write Fcditpedidomaterial;
    [fk]
    property cditordproducaomaterial : Integer read Fcditordproducaomaterial write Fcditordproducaomaterial;
    [fk]
    property cditrim : Integer read Fcditrim write Fcditrim;
    [fk]
    property cdpedidomaterial : Integer read Fcdpedidomaterial write Fcdpedidomaterial;
    [fk]
    property cdproduto : Integer read Fcdproduto write Setcdproduto;
    [fk]
    property cdcntcusto : Integer read Fcdcntcusto write Fcdcntcusto;
    [fk]
    property cdordproducao : Integer read Fcdordproducao write Fcdordproducao;
    property cddigitado : string read Fcddigitado write Fcddigitado;
    property qtsolicitada : Double read Fqtsolicitada write Fqtsolicitada;
    property qtestoque : Double read Fqtestoque write Fqtestoque;
    property qtatendida : Double read Fqtatendida write Fqtatendida;
    property qtpeca : Double read Fqtpeca write Fqtpeca;
    property qtpesounitario : Double read Fqtpesounitario write Fqtpesounitario;
    property dsformula : string read Fdsformula write Fdsformula;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property bocertificado : string read Fbocertificado write Fbocertificado;
    [fk]
    property cdrim : Integer read Fcdrim write Fcdrim;
    constructor create;
    destructor  destroy; override;
  end;
  TitpedidomaterialList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Titpedidomaterial;
    procedure SetItem(Index: Integer; const Value: Titpedidomaterial);
  public
    function  New: Titpedidomaterial;
    property  Items[Index: Integer]: Titpedidomaterial read GetItem write SetItem;
    function  Insert(cdpedidomaterial:integer): Titpedidomaterial;
    function  sql_insert:string;
    function Ler(codigo:Integer):boolean;overload;
    function Ler(dataset:TDataset):boolean;overload;
    class function existe_cotacao(nmfield:string; codigo:Integer):boolean;
    class function getcdpedidomaterial(nmfield: string; codigo:Integer):integer;
  end;
  TPedidoMaterialFornecedorList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TPedidoMaterialFornecedor;
    procedure SetItem(Index: Integer; const Value: TPedidoMaterialFornecedor);
  public
    function  New: TPedidoMaterialFornecedor;
    property  Items[Index: Integer]: TPedidoMaterialFornecedor read GetItem write SetItem;
    function  Insert(cdpedidomaterial:integer): TPedidoMaterialFornecedor;
    function  sql_insert:string;
    function Ler(codigo:Integer):boolean; overload;
    function Ler(Dataset:TDataset):boolean; overload;
  end;
  TPedidoMaterial = class(TRegistroQuipos)
  private
    Fboexclusivo: String;
    Fbosemcotacao: String;
    Fvltotal: Currency;
    Fcdstpedidomaterial: integer;
    Fcdfuncionariocomprador: Integer;
    Fcdtppedidomaterial: Integer;
    Fcdtpaplicacao: Integer;
    Fcdpedidomaterial: Integer;
    Fcdfuncionariosolicitante: Integer;
    Fcdfinalidadeordcompra: Integer;
    Fcdtpfornecedor: Integer;
    Fdsaplicacao: string;
    Fdsobservacaointerna: string;
    Fdsobservacao: string;
    Fdtemprego: TDate;
    Fdtemissao: TDate;
    Ftppedidomaterial: TTpPedidoMaterial;
    FItPedidoMaterial : TItPedidoMaterialList;
    FPedidoMaterialFornecedor : TPedidoMaterialFornecedorList;
    Fstpedidomaterial: tstpedidomaterial;
    Fcdusuarioaprovador: integer;
  public
    property tppedidomaterial : ttppedidomaterial read Ftppedidomaterial write Ftppedidomaterial;
    property stpedidomaterial : tstpedidomaterial read Fstpedidomaterial write Fstpedidomaterial;
    property ItPedidoMaterial : TItPedidoMaterialList read FItPedidoMaterial write FItPedidoMaterial;
    property PedidoMaterialFornecedor : TPedidoMaterialFornecedorList read FPedidoMaterialFornecedor write FPedidoMaterialFornecedor;
    [keyfield]
    property cdpedidomaterial : Integer read Fcdpedidomaterial write Fcdpedidomaterial;
    [fk]
    property cdtppedidomaterial : Integer read Fcdtppedidomaterial write Fcdtppedidomaterial;
    [fk]
    property cdstpedidomaterial : integer read Fcdstpedidomaterial write Fcdstpedidomaterial;
    [fk]
    property cdfuncionariosolicitante : Integer read Fcdfuncionariosolicitante write Fcdfuncionariosolicitante;
    [fk]
    property cdtpaplicacao : Integer read Fcdtpaplicacao write Fcdtpaplicacao;
    [fk]
    property cdfinalidadeordcompra : Integer read Fcdfinalidadeordcompra write Fcdfinalidadeordcompra;
    [fk]
    property cdtpfornecedor : Integer read Fcdtpfornecedor write Fcdtpfornecedor;
    [fk]
    property cdfuncionariocomprador : Integer read Fcdfuncionariocomprador write Fcdfuncionariocomprador;
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property dtemprego : TDate read Fdtemprego write Fdtemprego;
    property vltotal : Currency read Fvltotal write Fvltotal;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property dsaplicacao : string read Fdsaplicacao write Fdsaplicacao;
    property boexclusivo : String read Fboexclusivo write Fboexclusivo;
    property bosemcotacao : String read Fbosemcotacao write Fbosemcotacao;
    property dsobservacaointerna : string read Fdsobservacaointerna write Fdsobservacaointerna;
    property cdusuarioaprovador : integer read Fcdusuarioaprovador write Fcdusuarioaprovador;
    constructor create;
    destructor destroy; override;
    procedure Insert;
    procedure new;
    function Enviar_Email_Cotacao(cdfornecedor:string):boolean;
    function SetStatus(cdstatus: integer): Boolean;
    function RegistrarMudancaStatus(cdstatus: integer): boolean;
  end;

implementation

uses udlgRichEdit, uAssinaturaDigital;

constructor TPedidoMaterial.create;
begin
  inherited;
  fstpedidomaterial := tstpedidomaterial.create;
  ftppedidomaterial := ttppedidomaterial.create;
  FItPedidoMaterial := TitpedidomaterialList.create;
  FPedidoMaterialFornecedor := TPedidoMaterialFornecedorList.Create;
end;

destructor TPedidoMaterial.destroy;
begin
  freeandnil(fstpedidomaterial);
  FreeAndNil(ftppedidomaterial);
  FreeAndNil(fitpedidomaterial);
  FreeAndNil(fpedidomaterialfornecedor);
  inherited;
end;

function TPedidoMaterial.Enviar_Email_Cotacao(cdfornecedor: string): boolean;
var
  texto : TStrings;
  procedure cabecalho;
  begin
    texto.add('À');
    texto.add(nomedocodigo(_fornecedor, cdfornecedor));
    texto.add('Departamento de Vendas');
    texto.add('');
    texto.add('Vimos por meio desta solicitar a cotação de preços dos materiais que constam na relação abaixo, tanto preços à vista quanto as condições de parcelamento disponíveis, assim como prazos de entrega.');
  end;
  procedure corpo;
  var
    i : integer;
  begin
    texto.add('');
    texto.add('Quantidade  Produto');
    for i := 0 to ItPedidoMaterial.Count - 1 do
    begin
      if itpedidomaterial.Items[i].produto.cdproduto = 0 then
      begin
        itpedidomaterial.Items[i].produto.Select(itpedidomaterial.Items[i].cdproduto);
      end;
      texto.add(FormatarTextoDireita(formatfloat(__moedadec3, itpedidomaterial.items[i].qtsolicitada), 16)+FormatarTextoDireita(itpedidomaterial.Items[i].produto.nmproduto, 100));
    end;
    texto.add('');
  end;
  procedure rodape;
  begin
    texto.add('Agradecemos antecipadamente pela presteza e aguardamos sua cotação.');
    texto.add('');
    texto.add('Atenciosamente,');
    texto.add('');
    texto.add(usuario.nmusuario);
    texto.add(empresa.nmempresa);
    texto.add(empresa.nufone1);
    texto.add(usuario.email);
  end;
begin
  texto := TStringlist.create;
  try
    cabecalho;
    corpo;
    rodape;
    // chamar o tela de envio de email
    Formatar_Email(False, 'Cotação '+inttostr(cdpedidomaterial), texto.text, '', '', '', '', '', '', 'Cotação', inttostr(cdpedidomaterial));
    result := true;
  finally
    freeandnil(texto);
  end;
end;

procedure TPedidoMaterial.Insert;
begin
  new;
  dtemissao          := DtBanco;
  dtemprego          := dtemissao;
  cdstpedidomaterial := 1;
  cdtppedidomaterial := 1;
  vltotal            := 0;
  if usuario.funcionario.cdfuncionario > 0 then
  begin
    cdfuncionariosolicitante := usuario.funcionario.cdfuncionario;
  end;
end;

procedure TPedidoMaterial.new;
begin
  state            := dsinsert;
  cdpedidomaterial := QGerar.GerarCodigo(_pedidomaterial);
end;

function TPedidoMaterial.RegistrarMudancaStatus(cdstatus: integer): boolean;
var
  hstpedidomaterial : thstpedidomaterial;
  dsjustificativa : string;
begin
  hstpedidomaterial := thstpedidomaterial.create;
  try
    if cdstatus = 7 then
    begin
      cdusuarioaprovador := AssinaturaDigital(3);
      if cdusuarioaprovador = 0 then
      begin
        result := false;
        exit;
      end;
    end;
    if tppedidomaterial.bojustificarmudancastatus = _s then
    begin
      dialogojustificativa('Justificar mudança de status', dsjustificativa);
    end;
    hstpedidomaterial.cdhstpedidomaterial := qgerar.GerarCodigo(_hstpedidomaterial);
    hstpedidomaterial.cdpedidomaterial := cdpedidomaterial;
    hstpedidomaterial.cdstpedidomaterial := cdstatus;
    hstpedidomaterial.cdusuario := usuario.cdusuario;
    hstpedidomaterial.cdcomputador := strtoint(vgcdcomputador);
    hstpedidomaterial.cdempresa := Empresa.cdempresa;
    hstpedidomaterial.tshistorico := tsBanco;
    hstpedidomaterial.dsjustificativa := dsjustificativa;
    result := ExecutaSQL(hstpedidomaterial.Insert(true));
  finally
    freeandnil(hstpedidomaterial);
  end;
end;

function TPedidoMaterial.SetStatus(cdstatus: Integer): Boolean;
begin
  cdstpedidomaterial := cdstatus;
  result := Registrarmudancastatus(cdstpedidomaterial);
  if result then
  begin
    Update;
  end;
end;

class function TitpedidomaterialList.existe_cotacao(nmfield:string; codigo: Integer): boolean;
begin
  result := RetornaSQLInteger('select count(*) from itpedidomaterial where cdempresa='+empresa.cdempresa.ToString+' and '+nmfield+'='+inttostr(codigo))>0;
end;

class function TitpedidomaterialList.getcdpedidomaterial(nmfield: string; codigo:Integer):integer;
begin
  result := RetornaSQLInteger('select first 1 cdpedidomaterial from itpedidomaterial where cdempresa='+empresa.cdempresa.ToString+' and '+nmfield+'='+inttostr(codigo));
end;

function TitpedidomaterialList.GetItem(Index: Integer): Titpedidomaterial;
begin
  Result := Titpedidomaterial(Inherited Items[Index]);
end;

function TitpedidomaterialList.Insert(cdpedidomaterial: integer): Titpedidomaterial;
begin
  result := new;
  result.state              := dsInsert;
  Result.cdpedidomaterial   := cdpedidomaterial;
  Result.cditpedidomaterial := QGerar.GerarCodigo(_itpedidomaterial);
end;

function TitpedidomaterialList.Ler(dataset: TDataset): boolean;
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

function TitpedidomaterialList.Ler(codigo: Integer):boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itpedidomaterial, codigo, _cdpedidomaterial));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TitpedidomaterialList.New: Titpedidomaterial;
begin
  Result := TItpedidomaterial.Create;
  Add(Result);
end;

procedure TitpedidomaterialList.SetItem(Index: Integer; const Value: Titpedidomaterial);
begin
  Put(Index, Value);
end;

function TitpedidomaterialList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    if Items[i].state = dsinsert then
    begin
      result := result + Items[i].Insert(True)+#13;
    end;
  end;
end;

function TPedidoMaterialFornecedorList.GetItem(Index: Integer): TPedidoMaterialFornecedor;
begin
  Result := Tpedidomaterialfornecedor(Inherited Items[Index]);
end;

function TPedidoMaterialFornecedorList.Insert(
  cdpedidomaterial: integer): TPedidoMaterialFornecedor;
begin
  result := new;
  result.state     := dsInsert;
  Result.cdpedidomaterial   := cdpedidomaterial;
  Result.cdpedidomaterialfornecedor := QGerar.GerarCodigo(_pedidomaterialfornecedor);
end;

function TPedidoMaterialFornecedorList.Ler(Dataset: TDataset): boolean;
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

function TPedidoMaterialFornecedorList.Ler(codigo: Integer):boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_pedidomaterialfornecedor, codigo, _cdpedidomaterial));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TPedidoMaterialFornecedorList.New: TPedidoMaterialFornecedor;
begin
  Result := Tpedidomaterialfornecedor.Create;
  Add(Result);
end;

procedure TPedidoMaterialFornecedorList.SetItem(Index: Integer; const Value: TPedidoMaterialFornecedor);
begin
  Put(Index, Value);
end;

function TPedidoMaterialFornecedorList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    if Items[i].state = dsinsert then
    begin
      result := result + Items[i].Insert(True)+#13;
    end;
  end;
end;

constructor TItPedidoMaterial.create;
begin
  inherited;
  fproduto := TProduto.create;
end;

destructor TItPedidoMaterial.destroy;
begin
  FreeAndNil(fproduto);
  inherited;
end;

procedure TItPedidoMaterial.Setcdproduto(const Value: Integer);
begin
  Fcdproduto := Value;
  if state = dsinsert then
  begin
    produto.Select(value);
    qtestoque := produto.qtestoque;
  end;
end;

function TStpedidomaterialList.GetItem(Index: Integer): TStpedidomaterial;
begin
  Result := TSTpedidomaterial(Inherited Items[Index]);
end;

function TStpedidomaterialList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_stpedidomaterial, sqlwhere));
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

function TStpedidomaterialList.New: TStpedidomaterial;
begin
  Result := TSTpedidomaterial.Create;
  Add(Result);
end;

procedure TStpedidomaterialList.SetItem(Index: Integer; const Value: TStpedidomaterial);
begin
  Put(Index, Value);
end;

end.
