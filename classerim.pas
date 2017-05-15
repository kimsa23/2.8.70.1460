unit classerim;

interface

uses
  system.UITypes,
  sysutils, Dialogs, Classes, Controls, Contnrs, DB,
  ustrings, uconstantes, udatahora, uRegistro,
  classemovto, classeempresa, classeordproducao, classeproduto,
  classequery, classeexecutasql, classeretornasql, classegerar, classeusuario,
  classepedidomaterial, classedao;

Type
  TItRim = class(TRegistroQuipos)
  private
    fcditrim : Integer;
    fcdrim : integer;
    fcdproduto : Integer;
    fcdordproducao : integer;
    fcditordproducaomaterial : Integer;
    fqtitem : Double;
    fcddigitado : string;
    fqtatendida : Double;
    fdtprevista : TDateTime;
    fqtitem2 : Double;
    Fitordproducaomaterial: TItOrdProducaoMaterial;
    fproduto: TProduto;
  public
    property itordproducaomaterial : TItOrdProducaoMaterial read Fitordproducaomaterial write Fitordproducaomaterial;
    property produto : TProduto read fproduto write fproduto;
    [keyfield]
    property cditrim : Integer read fcditrim write fcditrim;
    [fk]
    property cdrim : integer read fcdrim write fcdrim;
    [fk]
    property cdproduto : Integer read fcdproduto write fcdproduto;
    [fk]
    property cdordproducao : integer read fcdordproducao write fcdordproducao;
    [fk]
    property cditordproducaomaterial : Integer read fcditordproducaomaterial write fcditordproducaomaterial;
    [aobrigatorio]
    property qtitem : Double read fqtitem write fqtitem;
    property cddigitado : string read fcddigitado write fcddigitado;
    [aobrigatorio]
    property qtatendida : Double read fqtatendida write fqtatendida;
    property dtprevista : TDateTime read fdtprevista write fdtprevista;
    property qtitem2 : Double read fqtitem2 write fqtitem2;
    constructor create;
    destructor  destroy; override;
  end;
  TItRimList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItRim;
    procedure SetItem(Index: Integer; const Value: TItRim);
  public
    function  New: TItRim;
    property Items[Index: Integer]: TItRim read GetItem write SetItem;
    function Insert(cdrim:integer): TItrim;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function sql_insert:string;
    function pode_baixar(boconsiste:Boolean=True):Boolean;
    function get_indice(codigo:Integer):Integer;
  end;
  TTpRim = class(TRegistroQuipos)
  private
    fcdtprim : Integer;
    fnmtprim : string;
    fboprodutoexibircdalternativo : String;
    fboprodutoexibirdslocalizacao : String;
    fbocntcustoobrigatorio : String;
    fboordproducao : String;
    fbodtprevista : String;
    fboitemdtprevista : String;
    fboaplicacaodigitar: String;
  public
    [keyfield]
    property cdtprim : Integer read fcdtprim write fcdtprim;
    property nmtprim : string read fnmtprim write fnmtprim;
    property boprodutoexibircdalternativo : String read fboprodutoexibircdalternativo write fboprodutoexibircdalternativo;
    property boprodutoexibirdslocalizacao : String read fboprodutoexibirdslocalizacao write fboprodutoexibirdslocalizacao;
    property bocntcustoobrigatorio : String read fbocntcustoobrigatorio write fbocntcustoobrigatorio;
    property boordproducao : String read fboordproducao write fboordproducao;
    property bodtprevista : String read fbodtprevista write fbodtprevista;
    property boitemdtprevista : String read fboitemdtprevista write fboitemdtprevista;
    property boaplicacaodigitar : String read fboaplicacaodigitar write fboaplicacaodigitar;
  end;
  TRim = class(TRegistroQuipos)
  private
    FItRim : TItRimList;
    ftprim : TTpRim;
    fcdrim : integer;
    fcdstrim : Integer;
    fcdcntcusto : Integer;
    fcdtprim : Integer;
    fcdfuncionario : Integer;
    fcdtpaplicacao : Integer;
    fdtemissao : TDate;
    fdsobservacao : string;
    fdtprevista : TDate;
    fdsaplicacao: string;
  public
    property ItRim : TItRimList read FItRim write FItRim;
    property tprim : TTpRim read ftprim write ftprim;
    [keyfield]
    property cdrim : integer read fcdrim write fcdrim;
    [fk]
    property cdstrim : Integer read fcdstrim write fcdstrim;
    [fk]
    property cdcntcusto : Integer read fcdcntcusto write fcdcntcusto;
    [fk]
    property cdtprim : Integer read fcdtprim write fcdtprim;
    [fk]
    property cdfuncionario : Integer read fcdfuncionario write fcdfuncionario;
    [fk]
    property cdtpaplicacao : Integer read fcdtpaplicacao write fcdtpaplicacao;
    property dtemissao : TDate read fdtemissao write fdtemissao;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    property dtprevista : TDate read fdtprevista write fdtprevista;
    property dsaplicacao : string read fdsaplicacao write fdsaplicacao;
    constructor create;
    destructor destroy; override;
    procedure new;
    function salvar:Boolean;
    function Baixar(cdtpMovto: Integer; data: TDate): boolean;overload;
    function Estornar:boolean;
    function set_cdstrim_:integer;
    function gerar_rim(tabela:string; codigo:Integer):Integer;
    function gerar_rim_pedido(codigo:Integer):Integer;
    function Gerar_Cotacao(codigo:Integer):integer;
  end;

implementation

function TRim.set_cdstrim_:integer;
var
  i, iaberto, iparcial, iatendido : Integer;
begin
  ItRim.Ler(cdrim, _cdrim);
  iaberto   := 0;
  iparcial  := 0;
  iatendido := 0;
  for i := 0 to ItRim.Count - 1 do
  begin
    if ItRim.Items[i].qtatendida = 0 then
    begin
      Inc(iaberto);
    end
    else if ItRim.Items[i].qtatendida > 0 then
    begin
      if itrim.Items[i].qtatendida < itrim.Items[i].qtitem then
      begin
        Inc(iparcial);
      end
      else
      begin
        Inc(iatendido);
      end;
    end;
  end;
  if iparcial > 0 then
  begin
    result := 3;
  end
  else if (iatendido > 0) then
  begin
    if iaberto = 0 then
    begin
      result := 2;
    end
    else
    begin
      result := 3;
    end;
  end
  else
  begin
    result := 1;
  end;
end;

function TRim.Baixar(cdtpMovto: Integer; data: TDate): boolean;
var
  i : Integer;
  movto : TMovto;
begin
  for i := 0 to itrim.count-1 do
  begin
    movto := tmovto.create;
    try
      movto.cdmovto   := QGerar.GerarCodigo(_movto);
      movto.dtemissao := data;
      movto.cdtpmovto := cdtpMovto;
      movto.cditrim   := itrim.Items[i].cditrim;
      movto.cdordproducao := itrim.Items[i].cdordproducao;
      movto.cditordproducaomaterial := ItRim.Items[i].cditordproducaomaterial;
      movto.Insert;

      movto.ItMovto.New;
      movto.ItMovto.Items[0].cdmovto    := movto.cdmovto;
      movto.ItMovto.Items[0].cditmovto  := QGerar.GerarCodigo(_itmovto);
      movto.ItMovto.Items[0].cdcntcusto := cdcntcusto;
      movto.ItMovto.Items[0].cdproduto  := itrim.Items[i].cdproduto;
      movto.ItMovto.Items[0].cddigitado := itrim.Items[i].cddigitado;
      movto.ItMovto.Items[0].qtitem     := itrim.Items[i].qtitem;
      movto.ItMovto.Items[0].Insert;
      itrim.Items[i].qtatendida := itrim.Items[i].qtatendida + itrim.Items[i].qtitem;
      itrim.Items[i].update;
    finally
      FreeAndNil(movto);
    end;
  end;
  cdstrim := set_cdstrim_;
  Update;
  result := true;
end;

function TRim.Estornar:boolean;
var
  i : Integer;
  movto : TMovto;
begin
  for i := 0 to itrim.Count -1 do
  begin
    movto := tmovto.create;
    try
      if movto.Select(qregistro.CodigodoInteiro(_movto, itrim.Items[i].cditrim, _cditrim)) then
      begin
        movto.Delete;
        itrim.Items[i].qtatendida := 0;
        itrim.Items[i].update;
      end;
    finally
      FreeAndNil(movto);
    end;
  end;
  cdstrim := set_cdstrim_;
  Update;
  Result := True;
end;

constructor TRim.create;
begin
  inherited;
  ftprim := TTpRim.create;
  FItRim := TItRimList.Create;
end;

destructor TRim.destroy;
begin
  FreeAndNil(ftprim);
  FreeAndNil(fItRim);
  inherited;
end;

function TRim.gerar_rim(tabela: string; codigo: Integer): Integer;
begin
  result := 0;
  if tabela = _pedido then
  begin
    result := gerar_rim_pedido(codigo);
  end;
end;

function TRim.gerar_rim_pedido(codigo: Integer): Integer;
  function makesql:string;
  begin
    result := 'select ordproducao.cdordproducao '+
              'from ordproducao '+
              'inner join itpedido on itpedido.cdempresa=ordproducao.cdempresa and itpedido.cditpedido=ordproducao.cditpedido '+
              'where itpedido.cdempresa='+empresa.cdempresa.ToString+' and itpedido.cdpedido='+inttostr(codigo);
  end;
var
  itordproducaomaterial : TItOrdProducaoMaterialList;
  i : integer;
  q : tclassequery;
begin
  result := -1;
  q := tclassequery.create(makesql);
  itordproducaomaterial := TItOrdProducaoMaterialList.create;
  try
    while not q.q.eof do
    begin
      if tordproducao.existeRequisicao(q.q.fieldbyname(_cdordproducao).asinteger) then
      begin
        q.q.next;
        continue;
      end;
      itordproducaomaterial.Ler(q.q.fieldbyname(_cdordproducao).asinteger);
      if state <> dsinsert then
      begin
        new;
        dtemissao := DtBanco;
        cdstrim   := 1;
        cdtprim   := 1;
        cdfuncionario := usuario.funcionario.cdfuncionario;
      end;
      for i := 0 to ItOrdProducaoMaterial.Count - 1 do
      begin
        ItRim.Insert(cdrim);
        itrim.Items[itrim.count-1].cdproduto               := ItOrdProducaoMaterial.Items[i].cdproduto;
        itrim.Items[itrim.count-1].cdordproducao           := ItOrdProducaoMaterial.Items[i].cdordproducao;
        itrim.Items[itrim.count-1].qtitem                  := ItOrdProducaoMaterial.Items[i].qtitem;
        itrim.Items[itrim.count-1].cddigitado              := ItOrdProducaoMaterial.Items[i].cddigitado;
        itrim.Items[itrim.count-1].dtprevista              := ItOrdProducaoMaterial.Items[i].dtpreventrega;
        itrim.Items[itrim.count-1].cditordproducaomaterial := ItOrdProducaoMaterial.Items[i].cditordproducaomaterial;
      end;
      q.q.Next;
    end;
    if state = dsinsert then
    begin
      if ItRim.Count = 0 then
      begin
        result := -2;
      end
      else
      begin
        salvar;
        result := cdrim;
      end;
    end;
  finally
    freeandnil(q);
    FreeAndNil(itordproducaomaterial);
  end;
end;

procedure TRim.new;
begin
  state         := dsinsert;
  cdrim         := QGerar.GerarCodigo(_rim);
  cdtprim       := 0;
  cdstrim       := 0;
  cdcntcusto    := 0;
  cdfuncionario := 0;
  cdtpaplicacao := 0;
  dtemissao     := 0;
  dtprevista    := 0;
  dsobservacao  := '';
  itrim.Clear;
end;

function TRim.salvar: Boolean;
var
  sql : TStrings;
begin
  sql := TStringList.Create;
  try
    sql.Add(Self.insert(true));
    sql.text := sql.text + itrim.sql_insert;
    result := ExecutaScript(sql);
  finally
    FreeAndNil(sql);
  end;
end;

function TRim.Gerar_Cotacao(codigo: Integer): integer;
var
  pedidomaterial : TPedidoMaterial;
  i : integer;
begin
  result := 0;
  pedidomaterial := tpedidomaterial.create;
  try
    // carregar itens da matéria-prima
    itrim.Ler(codigo, _cdrim);
    for i := 0 to itrim.Count - 1 do
    begin
      // verificar se o item já foi gerado cotação
      if TitpedidomaterialList.existe_cotacao(_cditrim, itrim.Items[i].cditrim) then
      begin
        Continue;
      end;
      // gerar cotação
      if pedidomaterial.ItPedidoMaterial.Count = 0 then
      begin
        pedidomaterial.Insert;
      end;
      pedidomaterial.ItPedidoMaterial.Insert(pedidomaterial.cdpedidomaterial);
      pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].state          := dsInsert;
      pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].cdproduto      := itrim.Items[i].cdproduto;
      pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].cditrim        := itrim.Items[i].cditrim;
      pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].cdrim          := codigo;
      pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].cdordproducao  := itrim.Items[i].cdordproducao;
      pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].cditordproducaomaterial := itrim.Items[i].cditordproducaomaterial;
      pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].cddigitado     := itrim.Items[i].cddigitado;
      pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].qtsolicitada   := itrim.Items[i].qtitem;
      if itrim.Items[i].cditordproducaomaterial > 0 then
      begin
        itrim.Items[i].itordproducaomaterial.Select(itrim.Items[i].cditordproducaomaterial);
        pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].qtpeca         := itrim.Items[i].itordproducaomaterial.qtpeca;
        pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].qtpesounitario := itrim.Items[i].itordproducaomaterial.qtpesounitario;
        pedidomaterial.ItPedidoMaterial.Items[pedidomaterial.ItPedidoMaterial.Count-1].dsformula      := itrim.Items[i].itordproducaomaterial.dsformula;
      end;
    end;
    if pedidomaterial.ItPedidoMaterial.Count > 0 then
    begin
      pedidomaterial.Insert;
      for I := 0 to pedidomaterial.itpedidomaterial.count-1 do
      begin
        pedidomaterial.itpedidomaterial.items[i].Insert;
      end;
      for I := 0 to pedidomaterial.pedidomaterialfornecedor.count - 1 do
      begin
        pedidomaterial.pedidomaterialfornecedor.items[i].insert;
      end;
      result := pedidomaterial.cdpedidomaterial;
    end;
  finally
    FreeAndNil(pedidomaterial);
  end;
end;

constructor TItRim.create;
begin
  inherited;
  Fitordproducaomaterial := TItOrdProducaoMaterial.create;
  fproduto := tproduto.create;
end;

destructor TItRim.destroy;
begin
  FreeAndNil(fitordproducaomaterial);
  FreeAndNil(fproduto);
  inherited;
end;

function TItRimList.GetItem(Index: Integer): TItRim;
begin
  Result := TItRim(Inherited Items[Index]);
end;

function TItRimList.get_indice(codigo: Integer): Integer;
var
  i : Integer;
begin
  result := -1;
  for i := 0 to Count - 1 do
  begin
    if Items[i].cdrim = codigo then
    begin
      result := i;
      Break;
    end;
  end;
end;

function TItRimList.Insert(cdrim: integer): TItrim;
begin
  result         := new;
  result.state   := dsInsert;
  Result.cdrim   := cdrim;
  Result.cditrim := QGerar.GerarCodigo(_itrim);
end;

function TItRimList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itrim, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TItRimList.Ler(DataSet: TDataset): boolean;
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

function TItRimList.New: TItRim;
begin
  Result := TItRim.Create;
  Add(Result);
end;

function TItRimList.pode_baixar(boconsiste:Boolean=True): Boolean;
var
  i : Integer;
begin
  for i := 0 to Count - 1 do
  begin
    Items[i].produto.Select(Items[i].cdproduto);
    if boconsiste then
    begin
      if Items[i].produto.cdtpitem = '' then
      begin
        MessageDlg('O produto '+items[i].cddigitado+' - '+items[i].produto.nmproduto+' não está preenchido o Tipo de Ítem.', mtInformation, [mbOK], 0);
        Abort;
      end;
      if Items[i].produto.boativar <> _s then
      begin
        MessageDlg('O produto '+items[i].cddigitado+' - '+items[i].produto.nmproduto+' está desativado.', mtInformation, [mbOK], 0);
        Abort;
      end;
      if Items[i].produto.qtestoque - Items[i].qtitem < 0 then
      begin
        messagedlg('Produto '+Items[i].produto.nmproduto+' possui estoque de '+floattostr(Items[i].produto.qtestoque)+' insuficiente para realizar a baixa.', mtinformation,[mbok], 0);
        Abort;
      end;
      if (Items[i].produto.qtestmin > 0) and (Items[i].produto.qtestoque - Items[i].qtitem <= Items[i].produto.qtestmin) then
      begin
        MessageDlg('Produto '+Items[i].produto.nmproduto+' atingiu o estoque mínimo.', mtInformation, [mbOK], 0);
      end;
      if (Items[i].produto.qtestprev > 0) and (Items[i].produto.qtestoque - Items[i].qtitem <= Items[i].produto.qtestprev) then
      begin
        MessageDlg('Produto '+Items[i].produto.nmproduto+' atingiu o estoque de gatilho.', mtInformation, [mbOK], 0);
      end;
    end;
  end;
  result := True;
end;

procedure TItRimList.SetItem(Index: Integer; const Value: TItRim);
begin
  Put(Index, Value);
end;


function TItRimList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    if Items[i].state = dsinsert then
    begin
      result := result + Items[i].insert(True)+#13;
    end;
  end;
end;

end.
