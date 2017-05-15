unit classecontrato;

interface

uses
  sysutils, Controls, Contnrs, Math, Forms, classes, data.db,
  classeempresa, classequery, classeretornasql, classegerar,
  classeduplicata, classeexecutasql, classeproduto, classedao,
  uRegistro, uconstantes, ustrings, uprogressbar;

Type
  TItContratoPaciente = class(TRegistroQuipos)
  private
    Fvltotal: Currency;
    Fvlunitario: Currency;
    Fnupaciente: Integer;
    Fcdcontrato: Integer;
    Fcditcontratopaciente: Integer;
    Fdtemissao: TDateTime;
  public
    [keyfield]
    property cditcontratopaciente : Integer read Fcditcontratopaciente write fcditcontratopaciente;
    [fk]
    property cdcontrato : Integer read Fcdcontrato write fcdcontrato;
    property nupaciente : Integer read Fnupaciente write fnupaciente;
    property dtemissao : TDateTime read Fdtemissao write fdtemissao;
    property vlunitario : Currency read Fvlunitario write fvlunitario;
    property vltotal : Currency read Fvltotal write fvltotal;
  end;
  TItContratoParcela = class(TRegistroQuipos)
  private
    Fvlsaldo: Currency;
    Fvlsaldocorrigido: Currency;
    Fvljuros: Currency;
    Fvlsaldodevedor: Currency;
    Fvlamortizacao: Currency;
    Fvljurosadicional: Currency;
    Fcditcontratonegociacao: Integer;
    Fnuparcela: Integer;
    Fcditcontratoparcela: Integer;
    Fdtparcela: TDate;
    Fvlparcela: Currency;
    Fduplicata: TDuplicata;
    Fprcorrecao: Double;
    Fcdittpcorrecao: Integer;
    Fvlreajuste: Currency;
    Fvlsaldodevedorreajustado: Currency;
  public
    property duplicata : TDuplicata read Fduplicata write fduplicata;
    [keyfield]
    property cditcontratoparcela : Integer read Fcditcontratoparcela write fcditcontratoparcela;
    [fk]
    property cditcontratonegociacao : Integer read Fcditcontratonegociacao write fcditcontratonegociacao;
    property nuparcela : Integer read Fnuparcela write fnuparcela;
    property dtparcela : TDate read Fdtparcela write fdtparcela;
    property vlsaldo : Currency read Fvlsaldo write fvlsaldo;
    property vljuros : Currency read Fvljuros write fvljuros;
    property vljurosadicional : Currency read Fvljurosadicional write fvljurosadicional;
    property vlsaldocorrigido : Currency read Fvlsaldocorrigido write fvlsaldocorrigido;
    property vlamortizacao : Currency read Fvlamortizacao write fvlamortizacao;
    property vlsaldodevedor : Currency read Fvlsaldodevedor write fvlsaldodevedor;
    property vlparcela : Currency read Fvlparcela write fvlparcela;
    property prcorrecao : Double read Fprcorrecao write Fprcorrecao;
    [fk]
    property cdittpcorrecao : Integer read Fcdittpcorrecao write Fcdittpcorrecao;
    property vlsaldodevedorreajustado : Currency read Fvlsaldodevedorreajustado write fvlsaldodevedorreajustado;
    property vlreajuste : Currency read Fvlreajuste write fvlreajuste;
    constructor create;
    destructor  destroy; override;
  end;
  TItContratoParcelaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItContratoParcela;
    procedure SetItem(Index: Integer; const Value: TItContratoParcela);
  public
    function  New: TItContratoParcela;
    property  Items[Index: Integer]: TItContratoParcela read GetItem write SetItem;
    function  Insert(cditcontratonegociacao:integer): TItContratoParcela;
    function  sql_insert:string;
    function  sql_insert_duplicata:string;
    function  Ler(codigo:Integer):Boolean;
    function  indice_parcela_data_superitor(data:TDate):integer;
  end;
  TItContratoNegociacao = class(TRegistroQuipos)
  private
    FItContratoParcela: TItContratoParcelaList;
    Fvlparcela: Currency;
    Fvlsaldo: Currency;
    Fprjuro: Double;
    Fnudia: Integer;
    Fcdcontrato: Integer;
    Fcditcontratonegociacao: Integer;
    Fcdperiodicidade: Integer;
    Fcdtpcorrecao: Integer;
    Fnmitcontratonegociacao: string;
    Fdtemissao: TDate;
    Fnuparcelas: Integer;
    Fboativo: String;
    Fdttermino: TDate;
    function getdtvencimento(dtvencimento: TDate): TDate;
  public
    property ItContratoParcela : TItContratoParcelaList read FItContratoParcela write FItContratoParcela;
    [keyfield]
    property cditcontratonegociacao : Integer read Fcditcontratonegociacao write fcditcontratonegociacao;
    [fk]
    property cdcontrato : Integer read Fcdcontrato write fcdcontrato;
    [fk]
    property cdtpcorrecao : Integer read Fcdtpcorrecao write fcdtpcorrecao;
    [fk]
    property cdperiodicidade : Integer read Fcdperiodicidade write fcdperiodicidade;
    property vlsaldo : Currency read Fvlsaldo write fvlsaldo;
    property nudia : Integer read Fnudia write fnudia;
    property vlparcela : Currency read Fvlparcela write fvlparcela;
    property prjuro : Double read Fprjuro write fprjuro;
    property dtemissao : TDate read Fdtemissao write fdtemissao;
    property nmitcontratonegociacao : string read Fnmitcontratonegociacao write fnmitcontratonegociacao;
    property nuparcelas : Integer read Fnuparcelas write fnuparcelas;
    property dttermino : TDate read Fdttermino write Fdttermino;
    property boativo : String read Fboativo write Fboativo;
    constructor create;
    destructor destroy; override;
    procedure  gerar_parcelas;
    procedure  Gerar_duplicatas;
    function   Salvar:Boolean;
  end;
  TItContrato = class(TRegistroQuipos)
  private
    Fvlexcedente: Currency;
    Fvlunitario: Currency;
    Fvltotal: Currency;
    Fqtitem: double;
    Fcdcontrato: Integer;
    Fcditcontrato: Integer;
    Fcdproduto: Integer;
    Fcddigitado: string;
  public
    [keyfield]
    property cditcontrato : Integer read Fcditcontrato write fcditcontrato;
    [fk]
    property cdproduto : Integer read Fcdproduto write fcdproduto;
    [fk]
    property cdcontrato : Integer read Fcdcontrato write fcdcontrato;
    property cddigitado : string read Fcddigitado write fcddigitado;
    property qtitem : double read Fqtitem write fqtitem;
    property vlunitario : Currency read Fvlunitario write fvlunitario;
    property vltotal : Currency read Fvltotal write fvltotal;
    property vlexcedente  : Currency read Fvlexcedente write fvlexcedente;
  end;
  TTpContrato = class(TRegistroQuipos)
  private
    fboproduto : String;
    fbocliente : String;
    fbovlcontrato : String;
    fbodtiniciofinal : String;
    fboordserv : String;
    fbovlexcedente : String;
    fbocondpagto : String;
    fbopaciente : String;
    fbomensalidade : String;
    fbonegociacao : String;
    Fcdtpcontrato: Integer;
    Fnmtpcontrato: string;
  public
    [keyfield]
    property cdtpcontrato : Integer read Fcdtpcontrato write fcdtpcontrato;
    property nmtpcontrato : string read Fnmtpcontrato write fnmtpcontrato;
    property boproduto : String read Fboproduto write fboproduto;
    property bocliente : String read Fbocliente write fbocliente;
    property bovlcontrato : String read Fbovlcontrato write fbovlcontrato;
    property bodtiniciofinal : String read Fbodtiniciofinal write fbodtiniciofinal;
    property boordserv : String read Fboordserv write fboordserv;
    property bovlexcedente : String read Fbovlexcedente write fbovlexcedente;
    property bocondpagto : String read Fbocondpagto write fbocondpagto;
    property bopaciente : String read Fbopaciente write fbopaciente;
    property bomensalidade : String read Fbomensalidade write fbomensalidade;
    property bonegociacao : String read Fbonegociacao write fbonegociacao;
  end;
  TItContratoPacienteList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItContratoPaciente;
    procedure SetItem(Index: Integer; const Value: TItContratoPaciente);
  public
    function  New: TItContratoPaciente;
    property  Items[Index: Integer]: TItContratoPaciente read GetItem write SetItem;
    function  Insert(cdcontrato:integer): TItContratoPaciente;
    function  sql_insert:string;
    function  Ler(codigo:Integer):Boolean;
  end;
  TItContratoNegociacaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItContratoNegociacao;
    procedure SetItem(Index: Integer; const Value: TItContratoNegociacao);
  public
    function  New: TItContratoNegociacao;
    property  Items[Index: Integer]: TItContratoNegociacao read GetItem write SetItem;
    function  Insert(cdcontrato:integer): TItContratoNegociacao;
    function  sql_insert:string;
    function  Ler(codigo:Integer):Boolean;overload;
    function  Ler(sqlwhere:string):Boolean;overload;
  end;
  TItContratoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Titcontrato;
    procedure SetItem(Index: Integer; const Value: Titcontrato);
  public
    function  New: Titcontrato;
    property  Items[Index: Integer]: Titcontrato read GetItem write SetItem;
    function  Insert(cdcontrato:integer): Titcontrato;
    function  sql_insert:string;
    function  Ler(codigo:Integer):Boolean;
    function VlUnitario(cdproduto:integer):currency;
  end;
  TContrato = class(TRegistroQuipos)
  private
    Fbomensalidade: String;
    Fvlcontrato: Currency;
    Fvlparcela: Currency;
    Fprcomissao: Double;
    Fcdperiodicidade: Integer;
    Fcdprodutoexcedente: Integer;
    Fcdcontrato: Integer;
    Fcdcondpagto: Integer;
    Fcdtpcontrato: Integer;
    Fcdproduto: Integer;
    Fcdstcontrato: Integer;
    Fcdrepresentante: Integer;
    Fnudiapreventiva: Integer;
    Fnuparcelas: integer;
    Fnmcontrato: string;
    Fcdcliente: LargeInt;
    Fdtfinal: TDate;
    Fdtpagamento: TDate;
    Fdtrefinanciamento: TDate;
    Fdtemissao: TDate;
    Fdtinicio: TDate;
    Fhratendimento: TTime;
    Fhrresolucao: TTime;
    Ftpcontrato: TTPContrato;
    FItContrato: TItContratoList;
    FItContratoPaciente: TItContratoPacienteList;
    FItContratoNegociacao: TItContratoNegociacaoList;
  public
    property tpcontrato : TTPContrato read Ftpcontrato write ftpcontrato;
    property ItContrato : TItContratoList read FItContrato write FItContrato;
    property ItContratoPaciente : TItContratoPacienteList read FItContratoPaciente write FItContratoPaciente;
    property ItContratoNegociacao : TItContratoNegociacaoList read FItContratoNegociacao write FItContratoNegociacao;
    [keyfield]
    property cdcontrato : Integer read Fcdcontrato write fcdcontrato;
    [fk]
    property cdstcontrato : Integer read Fcdstcontrato write fcdstcontrato;
    [fk]
    property cdtpcontrato : Integer read Fcdtpcontrato write fcdtpcontrato;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write fcdcliente;
    [fk]
    property cdrepresentante : Integer read Fcdrepresentante write fcdrepresentante;
    [fk]
    property cdperiodicidade : Integer read Fcdperiodicidade write fcdperiodicidade;
    [fk]
    property cdproduto : Integer read Fcdproduto write fcdproduto;
    [fk]
    property cdprodutoexcedente : Integer read Fcdprodutoexcedente write fcdprodutoexcedente;
    [fk]
    property cdcondpagto : Integer read Fcdcondpagto write fcdcondpagto;
    property nmcontrato : string read Fnmcontrato write fnmcontrato;
    property dtinicio : TDate read Fdtinicio write fdtinicio;
    property dtfinal : TDate read Fdtfinal write fdtfinal;
    property nudiapreventiva : Integer read Fnudiapreventiva write fnudiapreventiva;
    property hratendimento : TTime read Fhratendimento write fhratendimento;
    property hrresolucao : TTime read Fhrresolucao write fhrresolucao;
    property vlcontrato : Currency read Fvlcontrato write fvlcontrato;
    property nuparcelas : integer read Fnuparcelas write fnuparcelas;
    property vlparcela : Currency read Fvlparcela write fvlparcela;
    property prcomissao : Double read Fprcomissao write fprcomissao;
    property dtemissao : TDate read Fdtemissao write fdtemissao;
    property dtrefinanciamento : TDate read Fdtrefinanciamento write fdtrefinanciamento;
    property dtpagamento : TDate read Fdtpagamento write fdtpagamento;
    property bomensalidade : String read Fbomensalidade write fbomensalidade;
    constructor create;
    destructor destroy; override;
  end;
  TContratoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TContrato;
    procedure SetItem(Index: Integer; const Value: TContrato);
  public
    function New: TContrato;
    property Items[Index: Integer]: TContrato read GetItem write SetItem;
    function Ler(codigo:Integer; cdfield:string):Boolean;overload;
    function Ler(DataSet: TDataset):boolean;overload;
    function Existe(cdcontrato:integer):boolean;
    function Indice(codigo:integer):integer;
  end;

implementation

constructor TContrato.create;
begin
  inherited create;
  fitcontrato := titcontratoList.create;
  ftpcontrato := ttpcontrato.create;
  fItContratoNegociacao := tItContratoNegociacaoList.create;
  fItContratoPaciente := tItContratoPacienteList.create;
end;

destructor TContrato.destroy;
begin
  FreeAndNil(ftpcontrato);
  FreeAndNil(fitcontrato);
  FreeAndNil(fItContratoNegociacao);
  FreeAndNil(fItContratoPaciente);
  inherited;
end;

function TItContratoList.GetItem(Index: Integer): Titcontrato;
begin
  Result := Titcontrato(Inherited Items[Index]);
end;

function TItContratoList.Insert(cdcontrato: integer): Titcontrato;
begin
  result              := new;
  Result.cdcontrato   := cdcontrato;
  Result.cditcontrato := QGerar.GerarCodigo(_itcontrato);
end;

function TItContratoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itcontrato, codigo, _cdcontrato));
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

function TItContratoList.New: Titcontrato;
begin
  Result := Titcontrato.Create;
  Add(Result);
end;

procedure TItContratoList.SetItem(Index: Integer; const Value: Titcontrato);
begin
  Put(Index, Value);
end;

function TItContratoList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].Insert(True)+#13;
  end;
end;

function TItContratoList.VlUnitario(cdproduto: integer): currency;
var
  I: Integer;
begin
  result := 0;
  for I := 0 to count - 1 do
  begin
    if items[i].cdproduto = cdproduto then
    begin
      result := items[i].vlunitario;
    end;
  end;
end;

function TItContratoNegociacaoList.GetItem(Index: Integer): TItContratoNegociacao;
begin
  Result := TItContratoNegociacao(Inherited Items[Index]);
end;

function TItContratoNegociacaoList.Insert(cdcontrato: integer): TItContratoNegociacao;
begin
  result              := new;
  Result.cdcontrato   := cdcontrato;
  Result.cditcontratonegociacao := QGerar.GerarCodigo(_itcontratonegociacao);
end;

function TItContratoNegociacaoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itcontratoNegociacao, codigo, _cdcontrato));
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

function TItContratoNegociacaoList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_itcontratoNegociacao, sqlwhere));
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

function TItContratoNegociacaoList.New: TItContratoNegociacao;
begin
  Result := TItContratoNegociacao.Create;
  Add(Result);
end;

procedure TItContratoNegociacaoList.SetItem(Index: Integer; const Value: TItContratoNegociacao);
begin
  Put(Index, Value);
end;

function TItContratoNegociacaoList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].Insert(True)+#13;
  end;
end;

function TItContratoPacienteList.GetItem(Index: Integer): TItContratoPaciente;
begin
  Result := TitcontratoPaciente(Inherited Items[Index]);
end;

function TItContratoPacienteList.Insert(cdcontrato: integer): TItContratoPaciente;
begin
  result              := new;
  Result.cdcontrato   := cdcontrato;
  Result.cditcontratopaciente := QGerar.GerarCodigo(_itcontratoPaciente);
end;

function TItContratoPacienteList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itcontratopaciente, codigo, _cdcontrato));
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

function TItContratoPacienteList.New: TItContratoPaciente;
begin
  Result := TItContratoPaciente.Create;
  Add(Result);
end;

procedure TItContratoPacienteList.SetItem(Index: Integer; const Value: TItContratoPaciente);
begin
  Put(Index, Value);
end;

function TItContratoPacienteList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].insert(true)+#13;
  end;
end;

constructor TItContratoNegociacao.create;
begin
  inherited;
  fItContratoParcela := tItContratoParcelaList.create;
end;

destructor TItContratoNegociacao.destroy;
begin
  FreeAndNil(fItContratoParcela);
  inherited;
end;

function TItContratoParcelaList.indice_parcela_data_superitor(data: TDate): integer;
var
  i : Integer;
begin
  result := 0;
  for i := 0 to Count - 2 do
  begin
    if Items[i].dtparcela > data then
    begin
      result := i;
      Break;
    end;
  end;
end;

function TItContratoParcelaList.GetItem(Index: Integer): TItContratoParcela;
begin
  Result := TitcontratoParcela(Inherited Items[Index]);
end;

function TItContratoParcelaList.Insert(cditcontratonegociacao: integer): TItContratoParcela;
begin
  result                        := new;
  Result.cditcontratonegociacao := cditcontratonegociacao;
  Result.cditcontratoparcela    := QGerar.GerarCodigo(_itcontratoParcela);
end;

function TItContratoParcelaList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itcontratoParcela, codigo, _cditcontratonegociacao));
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

function TItContratoParcelaList.New: TItContratoParcela;
begin
  Result := TItContratoParcela.Create;
  Add(Result);
end;

procedure TItContratoParcelaList.SetItem(Index: Integer; const Value: TItContratoParcela);
begin
  Put(Index, Value);
end;

function TItContratoParcelaList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].Insert(True)+#13;
  end;
end;

{Metodologia do Financiamento com Prestações Fixas
Cálculo com juros compostos e capitalização mensal.
Fórmula q0=(((1-(1+j)^-n))/j)*p
Onde:
n = Nº de Meses
j = Taxa de Juros Mensal
p = Valor da Prestação
q0 = Valor Financiado
Obs.: O cálculo da taxa de juros (j) é feito por aproximação do Valor da Prestação (p) com margem de erro sobre p inferior a 0.000001.}
procedure TItContratoNegociacao.gerar_parcelas;
  function get_vlparcela:currency;
  var
    vparc : double;
    expo : Double;
  begin
    expo := Math.Power((1+(prjuro/100)), nuparcelas);
    vparc := prjuro*expo;
    expo   := expo-1;
    result := (100*vlsaldo*(vparc/expo))/10000;
  end;
var
  i : Integer;
  dtvencimento : TDate;
  valor : Currency;
  frmprogressbar : tfrmprogressbar;
begin
  vlparcela      := InterestPayment(0.1, 1, nuparcelas, vlsaldo, 0 , PtStartOfPeriod) * (-1);
  vlparcela      := get_vlparcela;
  valor          := vlsaldo;
  dtvencimento   := dtemissao;
  frmprogressbar := tfrmprogressbar.create(nil);
  try
    frmprogressbar.gau.maxvalue := nuparcelas;
    frmprogressbar.show;
    for i := 1 to nuparcelas do
    begin
      frmprogressbar.pnl.caption  := 'Gerando parcelas... '+inttostr(i)+' de '+inttostr(nuparcelas);
      frmprogressbar.gau.progress := i;
      application.processmessages;
      dtvencimento := getdtvencimento(dtvencimento);
      ItContratoParcela.Insert(cditcontratonegociacao);
      ItContratoParcela.Items[i-1].vlparcela        := vlparcela;
      ItContratoParcela.Items[i-1].nuparcela        := i;
      ItContratoParcela.Items[i-1].dtparcela        := dtvencimento;
      ItContratoParcela.Items[i-1].vlsaldo          := valor;
      ItContratoParcela.Items[i-1].vljuros          := valor * prjuro / 100;
      ItContratoParcela.Items[i-1].vlsaldocorrigido := ItContratoParcela.Items[i-1].vlsaldo + ItContratoParcela.Items[i-1].vljuros;
      ItContratoParcela.Items[i-1].vljurosadicional := 0;
      ItContratoParcela.Items[i-1].vlamortizacao    := ItContratoParcela.Items[i-1].vlparcela;
      ItContratoParcela.Items[i-1].vlsaldodevedor   := ItContratoParcela.Items[i-1].vlsaldocorrigido - vlparcela;
      valor                                         := ItContratoParcela.Items[i-1].vlsaldodevedor;
    end;
    dttermino := ItContratoParcela.Items[ItContratoParcela.count-1].dtparcela;
  finally
    freeandnil(frmprogressbar);
  end;
end;

function TItContratoNegociacao.getdtvencimento(dtvencimento: TDate): TDate;
var
  ano, mes, dia : word;
  book : Boolean;
begin
  result := 0;
  DecodeDate(dtvencimento, ano, mes, dia);
  dia := nudia;
  Inc(mes);
  if mes > 12 then
  begin
    mes := 1;
    Inc(ano);
  end;
  book := False;
  repeat
    try
      result := EncodeDate(ano, mes, dia);
      book := True;
    except
      Dec(dia);
    end;
  until book;
end;

function TItContratoNegociacao.Salvar: Boolean;
var
  sql : TStrings;
begin
  sql := TStringList.Create;
  try
    sql.Add(Insert(true));
    sql.text := sql.text + ItContratoParcela.sql_insert;
    Gerar_duplicatas;
    sql.text := sql.Text + itcontratoparcela.sql_insert_duplicata;
    result := ExecutaScript(sql);
  finally
    FreeAndNil(sql);
  end;
end;

procedure TItContratoNegociacao.Gerar_duplicatas;
var
  cdproduto, i : integer;
  cdcliente : LargeInt;
  frmprogressbar : tfrmprogressbar;
  produto : tproduto;
begin
  cdproduto      := qregistro.InteirodoCodigo(_contrato, cdcontrato, _cdproduto);
  cdcliente      := qregistro.InteirodoCodigo(_contrato, cdcontrato, _cdcliente);
  frmprogressbar := tfrmprogressbar.create(nil);
  produto        := tproduto.create;
  try
    produto.Select(cdproduto);
    frmprogressbar.gau.maxvalue := ItContratoParcela.count;
    frmprogressbar.show;
    for i := 0 to ItContratoParcela.count - 1 do
    begin
      frmprogressbar.gau.progress := i + 1;
      application.processMessages;
      ItContratoParcela.Items[i].duplicata.cdduplicata         := QGerar.GerarCodigo(_duplicata);
      ItContratoParcela.Items[i].duplicata.cdcliente           := cdcliente;
      ItContratoParcela.Items[i].duplicata.cditcontratoparcela := ItContratoParcela.Items[i].cditcontratoparcela;
      ItContratoParcela.Items[i].duplicata.nuduplicata         := IntToStr(cdcontrato)+'-'+inttostr(ItContratoParcela.Items[i].nuparcela)+'/'+inttostr(nuparcelas)+'-'+produto.dsquadra+'/'+produto.dslote;
      ItContratoParcela.Items[i].duplicata.dtemissao           := dtemissao;
      ItContratoParcela.Items[i].duplicata.dtentrada           := dtemissao;
      ItContratoParcela.Items[i].duplicata.dtvencimento        := ItContratoParcela.Items[i].dtparcela;
      ItContratoParcela.Items[i].duplicata.dtprorrogacao       := ItContratoParcela.Items[i].dtparcela;
      ItContratoParcela.Items[i].duplicata.vlduplicata         := ItContratoParcela.Items[i].vlparcela;
      ItContratoParcela.Items[i].duplicata.dsparcela           := inttostr(ItContratoParcela.Items[i].nuparcela)+'/'+inttostr(nuparcelas);
    end;
  finally
    freeandnil(frmprogressbar);
    freeandnil(produto);
  end;
end;

function TItContratoParcelaList.sql_insert_duplicata: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    result := result + Items[i].duplicata.Insert(True)+#13;
  end;
end;

constructor TItContratoParcela.create;
begin
  inherited create;
  fduplicata := TDuplicata.create;
end;

destructor TItContratoParcela.destroy;
begin
  FreeAndNil(fduplicata);
  inherited;
end;

function TContratoList.Existe(cdcontrato: integer): boolean;
var
  I: Integer;
begin
  result := false;
  for I := 0 to count - 1 do
  begin
    if items[i].cdcontrato = cdcontrato then
    begin
      result := true;
      break;
    end;
  end;
end;

function TContratoList.GetItem(Index: Integer): TContrato;
begin
  Result := TContrato(Inherited Items[Index]);
end;

function TContratoList.Indice(codigo: integer): integer;
var
  I: Integer;
begin
  result := -1;
  for I := 0 to count - 1 do
  begin
    if items[i].cdcontrato = codigo then
    begin
      result := i;
      break;
    end;
  end;
end;

function TContratoList.Ler(DataSet: TDataset): boolean;
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

function TContratoList.Ler(codigo: Integer; cdfield: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_Contrato, codigo, cdfield));
  try
    result := Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TContratoList.New: TContrato;
begin
  Result := TContrato.Create;
  Add(Result);
end;

procedure TContratoList.SetItem(Index: Integer; const Value: TContrato);
begin
  Put(Index, Value);
end;

end.
