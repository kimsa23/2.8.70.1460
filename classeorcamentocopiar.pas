unit classeorcamentocopiar;

interface

uses
  sysutils, ExtCtrls, Controls, Menus, ActnList,
  DB,
  uRegistro, uconstantes, udatahora, ustrings, uSelecionarEntrada,
  classeaplicacao, classeempresa, classeusuario, classegerar, classeregistrainformacao,
  classeexecutasql, classeretornasql, classequery;

Type
  TOrcamentoCopiar = class(TObject)
  private
    s, sit, srecurso, scusto, smaterial, corcamento, citorcamento, citorcamentorecurso, citorcamentocusto, citorcamentomaterial : TClasseQuery;
    codigo, cdorcamento : integer;
    procedure set_cacheupdates;
    procedure set_sql;
    procedure set_open;
    procedure inserir_orcamento;
    procedure inserir_itorcamento;
    procedure inserir_recurso;
    procedure inserir_custo;
    procedure inserir_material;
  public
    constructor create;
    function executar(codigo_:integer):Integer;
    destructor destroy; override;
  end;


implementation

constructor TOrcamentoCopiar.create;
begin
  s                    := TClasseQuery.Create;
  sit                  := TClasseQuery.Create;
  srecurso             := TClasseQuery.Create;
  scusto               := TClasseQuery.Create;
  smaterial            := TClasseQuery.Create;
  corcamento           := TClasseQuery.Create;
  citorcamento         := TClasseQuery.Create;
  citorcamentorecurso  := TClasseQuery.Create;
  citorcamentocusto    := TClasseQuery.Create;
  citorcamentomaterial := TClasseQuery.Create;
end;

destructor TOrcamentoCopiar.destroy;
begin
  s.free;
  freeandnil(sit);
  freeandnil(smaterial);
  freeandnil(srecurso);
  freeandnil(scusto);

  freeandnil(corcamento);
  freeandnil(citorcamento);
  freeandnil(citorcamentorecurso);
  freeandnil(citorcamentocusto);
  freeandnil(citorcamentomaterial);
  inherited;
end;

function TOrcamentoCopiar.executar(codigo_: integer): integer;
begin
  codigo := codigo_;
  set_cacheupdates;
  set_sql;
  set_open;
  inserir_orcamento;
  inserir_itorcamento;
  result := cdorcamento;
end;

procedure TOrcamentoCopiar.inserir_custo;
var
  i : integer;
begin
  scusto.q.Close;
  scusto.q.sql.text := QRetornaSQL.get_select_from(_it+_orcamento+_custo, sit.q.fieldbyname(_cditorcamento).AsString, _cd+_it+_orcamento);
  scusto.q.Open;
  while not scusto.q.Eof do
  begin
    citorcamentocusto.q.Insert;
    for i := 0 to citorcamentocusto.q.FieldCount - 1 do
    begin
      qregistro.set_field_type_assign(scusto.q, citorcamentocusto.q, i);
    end;
    RegistraInformacao_(citorcamentocusto.q);
    citorcamentocusto.q.FieldByName(_cditorcamento).AsString        := citorcamento.q.FieldByName(_cditorcamento).AsString;
    citorcamentocusto.q.FieldByName(_cditorcamento+_custo).AsString := GerarCodigo(_itorcamento+_custo);
    aplicacao.aplyupdates(citorcamentocusto.q);
    scusto.q.Next;
  end;
end;

procedure TOrcamentoCopiar.inserir_itorcamento;
var
  i : Integer;
begin
  sit.q.Open;
  while not sit.q.Eof do
  begin
    citorcamento.q.Insert;
    for i := 0 to citorcamento.q.FieldCount - 1 do
    begin
      qregistro.set_field_type_assign(sit.q, citorcamento.q, i);
    end;
    RegistraInformacao_(citorcamento.q);
    citorcamento.q.FieldByName(_cdorcamento).AsInteger := cdorcamento;
    citorcamento.q.FieldByName(_cditorcamento).AsInteger := Qgerar.GerarCodigo(_itorcamento);
    citorcamento.q.FieldByName(_qtaprovado).AsFloat     := 0;
    aplicacao.aplyupdates(citorcamento.q);
    inserir_recurso;
    inserir_custo;
    inserir_material;
    sit.q.Next;
  end;
end;

procedure TOrcamentoCopiar.inserir_material;
var
  i : integer;
begin
  smaterial.q.Close;
  smaterial.q.sql.text := QRetornaSQL.get_select_from(_it+_orcamento+_material, sit.q.fieldbyname(_cditorcamento).AsString, _cd+_it+_orcamento);
  smaterial.q.Open;
  while not smaterial.q.Eof do
  begin
    citorcamentomaterial.q.Insert;
    for i := 0 to citorcamentomaterial.q.FieldCount - 1 do
    begin
      qregistro.set_field_type_assign(smaterial.q, citorcamentomaterial.q, i);
    end;
    RegistraInformacao_(citorcamentomaterial.q);
    citorcamentomaterial.q.FieldByName(_cditorcamento).AsString           := citorcamento.q.FieldByName(_cditorcamento).AsString;
    citorcamentomaterial.q.FieldByName(_cditorcamento+_material).AsString := GerarCodigo(_itorcamento+_material);
    aplicacao.aplyupdates(citorcamentomaterial.q);
    smaterial.q.Next;
  end;
end;

procedure TOrcamentoCopiar.inserir_orcamento;
var
  i : Integer;
begin
  corcamento.q.Insert;
  for i := 0 to corcamento.q.FieldCount - 1 do
  begin
    qregistro.set_field_type_assign(s.q, corcamento.q, i);
  end;
  RegistraInformacao_(corcamento.q);
  cdorcamento := qgerar.GerarCodigo(_orcamento);
  corcamento.q.FieldByName(_cdorcamento).AsInteger := cdorcamento;
  corcamento.q.FieldByName(_cdstorcamento).AsInteger := qregistro.Codigo_status_novo(_orcamento);
  corcamento.q.FieldByName(_dtfechamento).Clear;
  aplicacao.aplyupdates(corcamento.q);
end;

procedure TOrcamentoCopiar.inserir_recurso;
var
  i : Integer;
begin
  srecurso.q.Close;
  srecurso.q.sql.text := QRetornaSQL.get_select_from(_it+_orcamento+_recurso, sit.q.fieldbyname(_cditorcamento).AsString, _cd+_it+_orcamento);
  srecurso.q.Open;
  while not srecurso.q.Eof do
  begin
    citorcamentorecurso.q.Insert;
    for i := 0 to citorcamentorecurso.q.FieldCount - 1 do
    begin
      qregistro.set_field_type_assign(srecurso.q, citorcamentorecurso.q, i);
    end;
    RegistraInformacao_(citorcamentorecurso.q);
    citorcamentorecurso.q.FieldByName(_cditorcamento).AsString          := citorcamento.q.FieldByName(_cditorcamento).AsString;
    citorcamentorecurso.q.FieldByName(_cditorcamento+_recurso).AsString := GerarCodigo(_itorcamento+_recurso);
    aplicacao.aplyupdates(citorcamentorecurso.q);
    srecurso.q.Next;
  end;
end;

procedure TOrcamentoCopiar.set_cacheupdates;
begin
  corcamento.q.CachedUpdates              := true;
  citorcamento.q.CachedUpdates            := true;
  citorcamentorecurso.q.CachedUpdates     := true;
  citorcamentocusto.q.CachedUpdates       := true;
  citorcamentomaterial.q.CachedUpdates    := true;
end;

procedure TOrcamentoCopiar.set_open;
begin
  corcamento.q.open;
  citorcamento.q.open;
  citorcamentorecurso.q.open;
  citorcamentocusto.q.open;
  citorcamentomaterial.q.open;
  s.q.Open;
end;

procedure TOrcamentoCopiar.set_sql;
begin
  corcamento.q.sql.text              := QRetornaSQL.get_select_from(_orcamento, _0);
  citorcamento.q.sql.text            := QRetornaSQL.get_select_from(_it+_orcamento, _0);
  citorcamentorecurso.q.sql.text     := QRetornaSQL.get_select_from(_it+_orcamento+_recurso, _0);
  citorcamentocusto.q.sql.text       := QRetornaSQL.get_select_from(_it+_orcamento+_custo, _0);
  citorcamentomaterial.q.sql.text    := QRetornaSQL.get_select_from(_it+_orcamento+_material, _0);
  s.q.sql.text            := QRetornaSQL.get_select_from(_orcamento, codigo);
  sit.q.sql.text          := QRetornaSQL.get_select_from(_it+_orcamento, codigo, _cd+_orcamento);
end;

end.
