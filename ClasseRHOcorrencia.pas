unit ClasseRHOcorrencia;

interface

uses
  System.Actions, System.UITypes, System.Classes,
  sysutils, Contnrs, controls,
  db,
  classequery, classeretornasql, classeexecutasql, classegerar, classedao,
  uconstantes, ustrings, uRegistro;

type
  TRHOcorrencia = class(TRegistroQuipos)
  private
    Fcdtprhocorrencia: integer;
    Fdsobservacao: string;
    Fhremissao: TTime;
    Fcdrhocorrencia: integer;
    Fcdfuncionario: integer;
    Fdtemissao: TDate;
  public
    [keyfield]
    property cdrhocorrencia : integer read Fcdrhocorrencia write fcdrhocorrencia;
    [fk]
    property cdtprhocorrencia : integer read Fcdtprhocorrencia write fcdtprhocorrencia;
    [fk]
    property cdfuncionario : integer read Fcdfuncionario write fcdfuncionario;
    property dtemissao : TDate read Fdtemissao write fdtemissao;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property hremissao : TTime read Fhremissao write fhremissao;
    function Existe: boolean;
  end;
  TRHOcorrenciaList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TRHOcorrencia;
    procedure SetItem(Index: Integer; const Value: TRHOcorrencia);
  public
    function New: TRHOcorrencia;
    property Items[Index: Integer]: TRHOcorrencia read GetItem write SetItem;
    function Ler(nmcdfield: string; codigo:Integer):Boolean;overload;
    function Ler(sqlwhere: string):Boolean;overload;
  end;


implementation

function TRHOcorrenciaList.GetItem(Index: Integer): TRHOcorrencia;
begin
  Result := TRHOcorrencia(Inherited Items[Index]);
end;

function TRHOcorrenciaList.Ler(sqlwhere: string): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_where(_RHOcorrencia, sqlwhere));
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

function TRHOcorrenciaList.Ler(nmcdfield: string; codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_RHOcorrencia, codigo, nmcdfield));
  try
    clear;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      New.select(q.q);
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TRHOcorrenciaList.New: TRHOcorrencia;
begin
  Result := TRHOcorrencia.Create;
  Add(Result);
end;

procedure TRHOcorrenciaList.SetItem(Index: Integer; const Value: TRHOcorrencia);
begin
  Put(Index, Value);
end;

function TRHOcorrencia.Existe: boolean;
begin
  result := registroexiste(_rhocorrencia, _cdfuncionario+'='+cdfuncionario.tostring+' and '+
                                          _cdtprhocorrencia+'='+cdtprhocorrencia.tostring+' and '+
                                          _dtemissao+'='+GetDtBanco(dtemissao)+' and '+
                                          _hremissao+'='+GethrBanco(hremissao));
end;

end.
