unit ClasseTpAprovacao;

interface

uses
  System.Actions, System.UITypes, System.Classes,
  SysUtils, controls, Contnrs, db,
  classequery, classeretornasql, classegrupos, classedao,
  uConstantes;

type
  TTpAprovacaoUsuarios = class(TRegistroQuipos)
  private
    Fcdtpaprovacao: integer;
    Fcdusuario: integer;
  public
    [keyfield]
    property cdtpaprovacao : integer read Fcdtpaprovacao write Fcdtpaprovacao;
    [keyfield]
    property cdusuario : integer read Fcdusuario write Fcdusuario;
  end;
  TTpAprovacaoUsuariosList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TTpAprovacaoUsuarios;
    procedure SetItem(Index: Integer; const Value: TTpAprovacaoUsuarios);
  public
    function New: TTpAprovacaoUsuarios;
    property Items[Index: Integer]: TTpAprovacaoUsuarios read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function UsuarioNaLista(cdusuario: integer):boolean;
  end;
  TTpAprovacaoGrupos = class(TRegistroQuipos)
  private
    Fcdtpaprovacao: integer;
    Fcdgrupos: integer;
  public
    [keyfield]
    property cdtpaprovacao : integer read Fcdtpaprovacao write Fcdtpaprovacao;
    [keyfield]
    property cdgrupos : integer read Fcdgrupos write Fcdgrupos;
  end;
  TTpAprovacaoGruposList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TTpAprovacaoGrupos;
    procedure SetItem(Index: Integer; const Value: TTpAprovacaoGrupos);
  public
    function New: TTpAprovacaoGrupos;
    property Items[Index: Integer]: TTpAprovacaoGrupos read GetItem write SetItem;
    function Ler(codigo:Integer):Boolean;overload;
    function GruposNaLista(Grupos: TGruposList):boolean;
  end;
  TTpAprovacao = class(TRegistroQuipos)
  private
    Fcdtpprocessointerno: Integer;
    Fcdtpaprovacao: Integer;
    Fnmtpaprovacao: string;
    Ftpaprovacaogrupos: ttpaprovacaogruposlist;
    Ftpaprovacaousuarios: ttpaprovacaousuariosList;
  public
    property tpaprovacaogrupos : ttpaprovacaogruposlist read Ftpaprovacaogrupos write Ftpaprovacaogrupos;
    property tpaprovacaousuarios : ttpaprovacaousuariosList read Ftpaprovacaousuarios write Ftpaprovacaousuarios;
    [keyfield]
    property cdtpaprovacao : Integer read Fcdtpaprovacao write Fcdtpaprovacao;
    [fk]
    property cdtpprocessointerno : Integer read Fcdtpprocessointerno write Fcdtpprocessointerno;
    property nmtpaprovacao : string read Fnmtpaprovacao write Fnmtpaprovacao;
    constructor create;
    destructor destroy; override;
    class function UsuarioPodeAprovar(cdtpprocessointerno_, cdusuario:integer):boolean;
  end;
  TTpaprovacaoList = class(TObjectList)
  private
    function  GetItem(Index: Integer): TTpaprovacao;
    procedure SetItem(Index: Integer; const Value: TTpaprovacao);
  public
    function New: Ttpaprovacao;
    property Items[Index: Integer]: TTpaprovacao read GetItem write SetItem;
    function Ler(nmcdfield: string; codigo:Integer; boclear:Boolean=true):Boolean;overload;
    function Existe_inteiro(nmfield: string; codigo:integer):Boolean;
  end;

implementation

uses classeusuario;

constructor TTpAprovacao.create;
begin
  inherited;
  ftpaprovacaogrupos := ttpaprovacaogruposlist.Create;
  ftpaprovacaousuarios := ttpaprovacaousuariosList.Create;
end;

destructor TTpAprovacao.destroy;
begin
  freeandnil(ftpaprovacaogrupos);
  freeandnil(ftpaprovacaousuarios);
  inherited;
end;

class function TTpAprovacao.UsuarioPodeAprovar(cdtpprocessointerno_, cdusuario: integer): boolean;
var
  tpaprovacaoList : ttpaprovacaolist;
  i : integer;
  usuario : tusuario;
begin
  result := false;
  tpaprovacaolist := ttpaprovacaolist.Create;
  usuario := tusuario.create;
  try
    usuario.Select(cdusuario);
    tpaprovacaolist.Ler(_cdtpprocessointerno, cdtpprocessointerno_);
    for I := 0 to tpaprovacaolist.Count - 1 do
    begin
      tpaprovacaolist.items[i].tpaprovacaousuarios.Ler(tpaprovacaolist.items[i].cdtpaprovacao);
      result := tpaprovacaolist.items[i].tpaprovacaousuarios.usuarioNaLista(cdusuario);
      if not result then
      begin
        tpaprovacaolist.Items[i].tpaprovacaogrupos.Ler(tpaprovacaolist.Items[i].cdtpaprovacao);
        result := tpaprovacaolist.items[i].tpaprovacaoGrupos.GruposNaLista(usuario.grupos);
      end;
      if result then
      begin
        break;
      end;
    end;
  finally
    freeandnil(tpaprovacaolist);
  end;
end;

function TTpaprovacaoList.Existe_inteiro(nmfield: string; codigo: integer): Boolean;
var
  i : Integer;
begin
  result := False;
  for i := 0 to count-1 do
  begin
    if (nmfield = _cdtpaprovacao) and (codigo = Items[i].cdtpaprovacao) then
    begin
      result := True;
      Break;
    end;
    if (nmfield = _cdtpprocessointerno) and (codigo = Items[i].cdtpprocessointerno) then
    begin
      result := True;
      Break;
    end;
  end;
end;

function TTpaprovacaoList.GetItem(Index: Integer): TTpaprovacao;
begin
  Result := TTpaprovacao(Inherited Items[Index]);
end;

function TTpaprovacaoList.Ler(nmcdfield: string; codigo: Integer; boclear:Boolean=true): Boolean;
  function get_tabela:string;
  begin
    result := _tpaprovacaousuarios;
    if nmcdfield = _cdgrupos then
    begin
      result := _tpaprovacaogrupos;
    end;
    if nmcdfield = _cdtpprocessointerno then
    begin
      result := _tpaprovacao;
    end;
  end;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_field_from_field(get_tabela, _cdtpaprovacao, codigo, nmcdfield));
  try
    if boclear then
    begin
      clear;
    end;
    result := q.q.RecordCount > 0;
    if not result then
    begin
      Exit;
    end;
    while not q.q.Eof do
    begin
      if not Existe_inteiro(_cdtpaprovacao, q.q.fieldbyname(_cdTpaprovacao).AsInteger) then
      begin
        new.Select(q.q);
      end;
      q.q.Next;
    end;
  finally
    FreeAndNil(q);
  end;
end;

function TTpaprovacaoList.New: Ttpaprovacao;
begin
  Result := Ttpaprovacao.Create;
  Add(Result);
end;

procedure TTpaprovacaoList.SetItem(Index: Integer; const Value: TTpaprovacao);
begin
  Put(Index, Value);
end;

function TTpAprovacaoGruposList.GetItem(Index: Integer): TTpAprovacaoGrupos;
begin
  Result := TTpAprovacaoGrupos(Inherited Items[Index]);
end;

function TTpAprovacaoGruposList.GruposNaLista(Grupos: TGruposList): boolean;
var
  x, i : integer;
begin
  result := false;
  for i := 0 to count - 1 do
  begin
    for x := 0 to grupos.Count - 1 do
    begin
      result := grupos.items[x].cdgrupos = items[i].cdgrupos;
      if result then
      begin
        break;
      end;
    end;
    if result then
    begin
      break;
    end;
  end;
end;

function TTpAprovacaoGruposList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_tpaprovacaogrupos, codigo, _cdtpaprovacao));
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

function TTpAprovacaoGruposList.New: TTpAprovacaoGrupos;
begin
  Result := TTpAprovacaoGrupos.Create;
  Add(Result);
end;

procedure TTpAprovacaoGruposList.SetItem(Index: Integer; const Value: TTpAprovacaoGrupos);
begin
  Put(Index, Value);
end;

function TTpAprovacaoUsuariosList.GetItem(Index: Integer): TTpAprovacaoUsuarios;
begin
  Result := TTpAprovacaoUsuarios(Inherited Items[Index]);
end;

function TTpAprovacaoUsuariosList.Ler(codigo: Integer): Boolean;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create(QRetornaSQL.get_select_from(_tpaprovacaoUsuarios, codigo, _cdtpaprovacao));
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

function TTpAprovacaoUsuariosList.New: TTpAprovacaoUsuarios;
begin
  Result := TTpAprovacaoUsuarios.Create;
  Add(Result);
end;

procedure TTpAprovacaoUsuariosList.SetItem(Index: Integer; const Value: TTpAprovacaoUsuarios);
begin
  Put(Index, Value);
end;

function TTpAprovacaoUsuariosList.UsuarioNaLista(cdusuario: integer): boolean;
var
  i : integer;
begin
  result := false;
  for i := 0 to count - 1 do
  begin
    result :=cdusuario = items[i].cdusuario;
    if result then
    begin
      break;
    end;
  end;
end;

end.
