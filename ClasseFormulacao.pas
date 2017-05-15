unit ClasseFormulacao;

interface

uses SysUtils, Classes, Controls, DB, Contnrs,
  classequery, classeretornasql, classedao,
  uRegistro, uconstantes;

Type
  TRegiaoAplicacao = class(TRegistroQuipos)
  private
    Fcdregiaoaplicacao: integer;
    Fnmregiaoaplicacao: string;
    procedure Setcdregiaoaplicacao(const Value: integer);
    procedure Setnmregiaoaplicacao(const Value: string);
  public
    [keyfield]
    property cdregiaoaplicacao : integer read Fcdregiaoaplicacao write Setcdregiaoaplicacao;
    property nmregiaoaplicacao : string read Fnmregiaoaplicacao write Setnmregiaoaplicacao;
  end;
  TItFormulacao = class(TRegistroQuipos)
  private
    Fqtitem: Double;
    Fprpeso: Double;
    Fprerro: Double;
    Fnusequencia: Integer;
    Fcdformulacao: Integer;
    Fcditformulacao: Integer;
    Fcdproduto: Integer;
    Fcddigitado: string;
  public
    [keyfield]
    property cditformulacao : Integer read Fcditformulacao write Fcditformulacao;
    [fk]
    property cdformulacao : Integer read Fcdformulacao write Fcdformulacao;
    [fk]
    property cdproduto : Integer read Fcdproduto write Fcdproduto;
    property cddigitado : string read Fcddigitado write Fcddigitado;
    property qtitem : Double read Fqtitem write Fqtitem;
    property prpeso : Double read Fprpeso write Fprpeso;
    property prerro : Double read Fprerro write Fprerro;
    property nusequencia : Integer read Fnusequencia write Fnusequencia;
  end;
  TItformulacaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItformulacao;
    procedure SetItem(Index: Integer; const Value: TItformulacao);
  public
    function New: TItformulacao;
    property Items[Index: Integer]: TItformulacao read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;
  end;
  TStFormulacao = class(TPersintentObject)
  private
    Fboexcluir: String;
    Fbogerarinfo: String;
    Fboalterar: String;
    Fbonovo: String;
    Fnucor: Integer;
    Fcdstformulacao: Integer;
    Fnmstformulacao: string;
  public
    [keyfield]
    property cdstformulacao : Integer read Fcdstformulacao write Fcdstformulacao;
    property nmstformulacao : string read Fnmstformulacao write Fnmstformulacao;
    property nucor : Integer read Fnucor write Fnucor;
    property bonovo : String read Fbonovo write Fbonovo;
    property boalterar : String read Fboalterar write Fboalterar;
    property boexcluir : String read Fboexcluir write Fboexcluir;
    property bogerarinfo : String read Fbogerarinfo write Fbogerarinfo;
  end;
  TFormulacao = class(TRegistroQuipos)
  private
    Fqtmistura: Double;
    Fqtpeso: Double;
    Fcdformulacao: Integer;
    Fcdregiaoaplicacao: Integer;
    Fcdstformulacao: Integer;
    Fnurevisao: string;
    Fnmformulacao: string;
    Fcdcliente: LargeInt;
    Fdsformulacao: string;
    Fdtrevisao: TDate;
    Fstformulacao: TStFormulacao;
    Fitformulacao: TItformulacaoList;
    Fregiaoaplicacao: TRegiaoAplicacao;
    procedure Setregiaoaplicacao(const Value: TRegiaoAplicacao);
  public
    property itformulacao : TItformulacaoList read Fitformulacao write Fitformulacao;
    property stformulacao : TStFormulacao read Fstformulacao write Fstformulacao;
    property regiaoaplicacao : TRegiaoAplicacao read Fregiaoaplicacao write Setregiaoaplicacao;
    [keyfield]
    property cdformulacao : Integer read Fcdformulacao write Fcdformulacao;
    [fk]
    property cdregiaoaplicacao : Integer read Fcdregiaoaplicacao write Fcdregiaoaplicacao;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write Fcdcliente;
    [fk]
    property cdstformulacao : Integer read Fcdstformulacao write Fcdstformulacao;
    property nmformulacao : string read Fnmformulacao write Fnmformulacao;
    property dsformulacao : string read Fdsformulacao write Fdsformulacao;
    property qtpeso : Double read Fqtpeso write Fqtpeso;
    property qtmistura : Double read Fqtmistura write Fqtmistura;
    property dtrevisao : TDate read Fdtrevisao write Fdtrevisao;
    property nurevisao : string read Fnurevisao write Fnurevisao;
    constructor create;
    destructor destroy; override;
  end;
  TformulacaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): Tformulacao;
    procedure SetItem(Index: Integer; const Value: Tformulacao);
  public
    function New: Tformulacao;
    property Items[Index: Integer]: Tformulacao read GetItem write SetItem;
  end;

implementation

constructor TFormulacao.create;
begin
  inherited;
  fregiaoaplicacao := TRegiaoAplicacao.create;
  Fitformulacao := TItformulacaoList.Create;
  Fstformulacao := TStFormulacao.create;
end;

destructor TFormulacao.destroy;
begin
  FreeAndNil(fregiaoaplicacao);
  FreeAndNil(fstformulacao);
  FreeAndNil(fitformulacao);
  inherited;
end;

procedure TFormulacao.Setregiaoaplicacao(const Value: TRegiaoAplicacao);
begin
  Fregiaoaplicacao := Value;
end;

function TItformulacaoList.GetItem(Index: Integer): TItformulacao;
begin
  Result := TItformulacao(Inherited Items[Index]);
end;

function TItformulacaoList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itformulacao, codigo, _cdformulacao));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      new.select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TItformulacaoList.New: TItformulacao;
begin
  Result := TItformulacao.Create;
  Add(Result);
end;

procedure TItformulacaoList.SetItem(Index: Integer; const Value: TItformulacao);
begin
  Put(Index, Value);
end;

function TformulacaoList.GetItem(Index: Integer): Tformulacao;
begin
  Result := Tformulacao(Inherited Items[Index]);
end;

function TformulacaoList.New: Tformulacao;
begin
  Result := Tformulacao.Create;
  Add(Result);
end;

procedure TformulacaoList.SetItem(Index: Integer; const Value: Tformulacao);
begin
  Put(Index, Value);
end;

{ TRegiaoAplicacao }

procedure TRegiaoAplicacao.Setcdregiaoaplicacao(const Value: integer);
begin
  Fcdregiaoaplicacao := Value;
end;

procedure TRegiaoAplicacao.Setnmregiaoaplicacao(const Value: string);
begin
  Fnmregiaoaplicacao := Value;
end;

end.
