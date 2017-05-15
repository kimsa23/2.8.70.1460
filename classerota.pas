unit classerota;

interface

uses
  System.Actions, System.UITypes,
  sysutils, ExtCtrls, Controls, Contnrs, Dialogs, db, classes, forms,
  uRegistro, uconstantes, uRotinas, uRichEdit, uprogressbar,
  classegerar, classequery, classeretornasql, classeexecutasql, classedao;

Type
  TItRotaValor = class(TRegistroQuipos)
  private
    Fvlunitario: currency;
    Fcdrota: integer;
    Fqtitem: integer;
    Fcditrotavalor: integer;
  public
    [keyfield]
    property cditrotavalor : integer read Fcditrotavalor write fcditrotavalor;
    [fk]
    property cdrota : integer read Fcdrota write fcdrota;
    property qtitem : integer read Fqtitem write fqtitem;
    property vlunitario : currency read Fvlunitario write fvlunitario;
  end;
  TItRota = class(TRegistroQuipos)
  private
    Fcditrota: integer;
    Fcduf: integer;
    Fnusequencia: integer;
    Fcdrota: integer;
    Fcdmunicipio: integer;
    Fcdcliente: LargeInt;
    Fnmbairro: string;
    Fdsobservacao: string;
  public
    [keyfield]
    property cditrota : integer read Fcditrota write fcditrota;
    [fk]
    property cdrota : integer read Fcdrota write fcdrota;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write fcdcliente;
    [fk]
    property cduf : integer read Fcduf write fcduf;
    [fk]
    property cdmunicipio : integer read Fcdmunicipio write fcdmunicipio;
    property nusequencia : integer read Fnusequencia write fnusequencia;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property nmbairro : string read Fnmbairro write fnmbairro;
  end;
  TTpRota = class(TRegistroQuipos)
  private
    Fbouf: string;
    Fboobservacao: string;
    Fbovalor: string;
    Fbobairro: string;
    Fbomunicipio: string;
    Fboitemcliente: string;
    Fcdtprota: integer;
    Fnmtprota: string;
  public
    [keyfield]
    property cdtprota : integer read Fcdtprota write fcdtprota;
    property nmtprota : string read Fnmtprota write fnmtprota;
    property boitemcliente : string read Fboitemcliente write fboitemcliente;
    property bobairro : string read Fbobairro write fbobairro;
    property bomunicipio : string read Fbomunicipio write fbomunicipio;
    property bouf : string read Fbouf write fbouf;
    property boobservacao : string read Fboobservacao write fboobservacao;
    property bovalor : string read Fbovalor write fbovalor;
  end;
  TItRotaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItRota;
    procedure SetItem(Index: Integer; const Value: TItRota);
  public
    function New: TItRota;
    property Items[Index: Integer]: TItRota read GetItem write SetItem;
    function Insert(cdrota:integer): TItRota;
    function sql_insert:string;
    function Ler(codigo:Integer):Boolean;overload;
    function Ler(Dataset:TDataset):Boolean;overload;
    function ExisteCliente(cdcliente:LargeInt):boolean;
  end;
  TItRotaValorList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TItRotaValor;
    procedure SetItem(Index: Integer; const Value: TItRotaValor);
  public
    function New: TItRotaValor;
    property Items[Index: Integer]: TItRotaValor read GetItem write SetItem;
    function Insert(cdrota:integer): TItRotaValor;
    function sql_insert:string;
    function Ler(codigo:Integer):Boolean;
  end;
  TRota = class(TRegistroQuipos)
  private
    Fcdrepresentante: integer;
    Fcdrota: integer;
    Fcduf: integer;
    Fcdmunicipio: integer;
    Fcdtprota: integer;
    Fnmrota: string;
    Fnmbairro: string;
    Ftprota: TTPRota;
    FItRota: TItRotaList;
    FItRotaValor: TItRotaValorList;
  public
    property tprota : TTPRota read Ftprota write ftprota;
    property ItRota : TItRotaList read FItRota write FItRota;
    property ItRotaValor : TItRotaValorList read FItRotaValor write FItRotaValor;
    [keyfield]
    property cdrota : integer read Fcdrota write fcdrota;
    [fk]
    property cdrepresentante : integer read Fcdrepresentante write fcdrepresentante;
    [fk]
    property cduf : integer read Fcduf write fcduf;
    [fk]
    property cdmunicipio : integer read Fcdmunicipio write fcdmunicipio;
    [fk]
    property cdtprota : integer read Fcdtprota write fcdtprota;
    property nmrota : string read Fnmrota write fnmrota;
    property nmbairro : string read Fnmbairro write fnmbairro;
    constructor create;
    destructor destroy; override;
    function get_vlfretepeso(qtentrega:integer):currency;
    function ImportarCliente:boolean;
  end;

implementation

constructor TRota.create;
begin
  inherited;
  ftprota := ttprota.create;
  fItRota := tItRotaList.create;
  fItRotaValor := tItRotaValorList.create;
end;

destructor TRota.destroy;
begin
  freeandnil(ftprota);
  FreeAndNil(fItRota);
  FreeAndNil(fItRotaValor);
  inherited;
end;

function TRota.get_vlfretepeso(qtentrega: integer): currency;
var
  i : integer;
begin
  result := 0;
  ItRotaValor.Ler(cdrota);
  for i := 0 to ItRotaValor.count -1 do
  begin
    result := itrotavalor.items[i].vlunitario;
    if qtentrega <= itrotavalor.items[i].qtitem then
    begin
      break;
    end;
  end;
end;

function TRota.ImportarCliente: boolean;
var
  erro, arquivo : TStrings;
  filename : string;
  i : integer;
  boadicionar : boolean;
begin
  result := False;
  if not QRotinas.getfilename(filename) then
  begin
    exit;
  end;
  boadicionar := false;
  arquivo := TStringList.create;
  erro    := TStringList.create;
  frmprogressbar := tfrmprogressbar.create(nil);
  try
    arquivo.LoadFromFile(filename);
    frmprogressbar.gau.MaxValue := arquivo.Count;
    frmprogressbar.show;
    for i := 0 to arquivo.count - 1 do
    begin
      frmprogressbar.gau.Progress := i + 1;
      application.processmessages;

      if trim(arquivo[i]) = '' then
      begin
        erro.add('linha '+inttostr(i)+' vazia.');
        continue;
      end;
      if itrota.ExisteCliente(strtoint(arquivo[i])) then
      begin
        erro.add('Código do Cliente: '+inttostr(i)+' repetido.');
        continue;
      end;
      if not RegistroExiste(_cliente, _cdcliente+'='+arquivo[i]) then
      begin
        erro.add('Código do cliente: '+arquivo[i]+' inexistente.');
        continue;
      end;
      itrota.Insert(cdrota);
      itrota.items[itrota.count-1].cdcliente := strtoint64(arquivo[i]);
      boadicionar := true;
    end;
    if (erro.count > 0) and (messagedlg('Existem erro. Gostaria de visualizá-los?', mtconfirmation, [mbyes, mbno], 0) = mryes) then
    begin
      ExibirSaidaVideo(erro);
    end;
    if boadicionar and (messagedlg('Inserir os clientes?', mtconfirmation, [mbyes, mbno], 0) = mryes) then
    begin
      erro.text := itrota.sql_insert;
      ExecutaScript(erro);
      result := True;
    end;
  finally
    freeandnil(arquivo);
    freeandnil(erro);
    freeandnil(frmprogressbar);
  end;
end;

function TItRotaValorList.GetItem(Index: Integer): TItRotaValor;
begin
  Result := TItRotaValor(Inherited Items[Index]);
end;

function TItRotaValorList.Insert(cdrota: integer): TItRotaValor;
begin
  result := new;
  result.state     := dsInsert;
  Result.cdrota    := cdrota;
  Result.cditrotavalor := QGerar.GerarCodigo(_itrotavalor);
end;

function TItRotaValorList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itrotavalor, codigo, _cdrota));
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

function TItRotaValorList.New: TItRotaValor;
begin
  Result := TItRotaValor.Create;
  Add(Result);
end;

procedure TItRotaValorList.SetItem(Index: Integer; const Value: TItRotaValor);
begin
  Put(Index, Value);
end;

function TItRotaValorList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    if Items[i].state = dsinsert then
    begin
      result := result + Items[i].insert(true)+#13;
    end;
  end;
end;

function TItRotaList.ExisteCliente(cdcliente: LargeInt): boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to Count - 1 do
  begin
    if items[i].cdcliente = cdcliente then
    begin
      result := true;
      break;
    end;
  end;
end;

function TItRotaList.GetItem(Index: Integer): TItRota;
begin
  Result := TItRota(Inherited Items[Index]);
end;

function TItRotaList.Insert(cdrota: integer): TItRota;
begin
  result          := new;
  result.state    := dsInsert;
  Result.cdrota   := cdrota;
  Result.cditrota := QGerar.GerarCodigo(_itrota);
  result.nusequencia := count;
end;

function TItRotaList.Ler(Dataset: TDataset): Boolean;
begin
  clear;
  result := false;
  dataset.first;
  while not Dataset.Eof do
  begin
    new.Select(Dataset);
    Dataset.Next;
    result := true;
  end;
end;

function TItRotaList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_itrota, codigo, _cdrota));
  try
    Ler(q.q);
  finally
    FreeAndNil(q);
  end;
end;

function TItRotaList.New: TItRota;
begin
  Result := TItRota.Create;
  Add(Result);
end;

procedure TItRotaList.SetItem(Index: Integer; const Value: TItRota);
begin
  Put(Index, Value);
end;

function TItRotaList.sql_insert: string;
var
  i : Integer;
begin
  Result := '';
  for i := 0 to count-1 do
  begin
    if Items[i].state = dsinsert then
    begin
      result := result + Items[i].insert(true)+#13;
    end;
  end;
end;

end.
