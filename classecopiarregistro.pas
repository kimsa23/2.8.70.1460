unit classecopiarregistro;

interface

uses
  SysUtils, Classes,
  sqlexpr, db,
  uRegistro, udatahora, uConstantes, uinterbase,
  classeretornasql, classeregistrainformacao, classeempresa, classegerar,
  classeaplicacao, classequery;

function Copiar_Registro(tbl: string; codigo:Integer):Integer;overload;
function copiar_registro(codigoantigo: integer; tabela, cdconexao: string; cdnovo: integer; cdfieldclear, cdfieldzero:string):integer;overload;

implementation

Type
  TCopiarRegistro = class(tobject)
  private
    s2, c : TClasseQuery;
    codigonovo: integer;
    codigo: integer;
    codigonovofilho: integer;
    codigofilho: integer;
    tbl, tblfilha, tblneta : string;
    function  MakeSQL:string;
    function  MakeSQLNovo:string;
    function  MakeSQLFilhaNovo: string;
    function  MakeSQLNetaNovo:string;
    function  MakeSQLFilha: string;
    function  MakeSQLNeta:string;
    procedure inserir_tabela_filha;
    procedure Inserir_Tabela_Neta;
    procedure inserir_registro(bofilho, boneto:Boolean);
    procedure inserir_registro_pai;
  public
    constructor create;
    destructor destroy; override;
    function copiar:integer;
  end;

function copiar_registro(codigoantigo: integer; tabela, cdconexao: string; cdnovo: integer; cdfieldclear, cdfieldzero:string):integer;
var
  sfonte, cdestino : TClasseQuery;
  fieldzero, fieldclear : TStrings;
  procedure copiar_campo_a_campo;
  var
    x, i : Integer;
  begin
    for i := 0 to cdestino.q.FieldCount - 1 do
    begin
      qregistro.set_field_type_assign(sfonte.q, cdestino.q, i);
      if cdestino.q.Fields[i].FieldName = UpperCase(_cdst+tabela) then
      begin
        cdestino.q.FieldByName(_cdst+tabela).AsInteger := qregistro.Codigo_status_novo(tabela);
      end;
      for x := 0 to fieldclear.Count - 1 do
      begin
        if cdestino.q.Fields[i].FieldName = UpperCase(fieldclear[x]) then
        begin
          cdestino.q.Fields[i].Clear;
        end;
      end;
      for x := 0 to fieldzero.Count - 1 do
      begin
        if cdestino.q.Fields[i].FieldName = UpperCase(fieldzero[x]) then
        begin
          cdestino.q.Fields[i].AsString := _0;
        end;
      end;
    end;
  end;
  procedure atribuir_nome_tabela_mais_o_codigo;
  var
    i : Integer;
  begin
    for i := 0 to cdestino.q.Fields.Count - 1 do
    begin
      if cdestino.q.Fields[i].FieldName = UpperCase(_nm+tabela) then
      begin
        cdestino.q.FieldByName(_nm+tabela).AsString  := cdestino.q.FieldByName(_nm+tabela).AsString +cdestino.q.FieldByName(_cd+tabela).AsString;
        Break;
      end;
    end;
  end;
  procedure gerar_codigo_copia;
  begin
    if cdnovo <> 0 then
    begin
      cdestino.q.FieldByName(cdconexao).AsInteger := cdnovo
    end
    else
    begin
      cdestino.q.FieldByName(cdconexao).AsInteger := qgerar.GerarCodigo(tabela);
    end;
    if cdconexao <> _cd+tabela then
    begin
      cdestino.q.FieldByName(_cd+tabela).AsInteger := qgerar.GerarCodigo(tabela);
    end;
  end;
begin
  sfonte     := TClasseQuery.Create(QRetornaSQL.get_select_from(tabela, codigoantigo, cdconexao));
  cdestino   := TClasseQuery.Create(QRetornaSQL.get_select_from(tabela, _0), true);
  fieldclear := TStringList.Create;
  fieldzero  := TStringList.Create;
  try
    fieldclear.Text := cdfieldclear;
    fieldzero.Text  := cdfieldzero;
    while not sfonte.q.Eof do
    begin
      cdestino.q.Insert;
      copiar_campo_a_campo;
      RegistraInformacao_(cdestino.q);
      gerar_codigo_copia;
      result := cdestino.q.FieldByName(_cd+tabela).asinteger;
      if (tabela = _tpsaida) or (tabela = _tpentrada) then
      begin
        cdestino.q.FieldByName(_nmreduzido).AsString := cdestino.q.FieldByName(_nmreduzido).AsString+cdestino.q.FieldByName(_cd+tabela).AsString;
      end;
      atribuir_nome_tabela_mais_o_codigo;
      //cdestino.q.Post;
      aplicacao.aplyupdates(cdestino.q);
      sfonte.q.Next;
    end;
  finally
    freeandnil(sfonte);
    freeandnil(cdestino);
    freeandnil(fieldclear);
    freeandnil(fieldzero);
  end;
end;

function Copiar_Registro(tbl:string; codigo:Integer):Integer;
var
  copiarRegistro : TCopiarRegistro;
begin
  copiarRegistro := TCopiarRegistro.create;
  try
    copiarRegistro.tbl    := tbl;
    copiarRegistro.codigo := codigo;
    result := copiarRegistro.copiar;
  finally
    copiarRegistro.destroy;
  end;
end;

function TCopiarRegistro.copiar: integer;
begin
  inserir_registro_pai;
  if LowerCase(tbl) = _locacao then
  begin
    tblfilha := _ITLOCACAOACESSORIO;
    inserir_tabela_filha;
  end
  else if LowerCase(tbl) = _formulacao then
  begin
    tblfilha := _Itformulacao;
    inserir_tabela_filha;
    tblfilha := _PRODUTOFORMULACAO;
    inserir_tabela_filha;
  end
  else if LowerCase(tbl) = _regrast then
  begin
    tblfilha := _ITregrast;
    inserir_tabela_filha;
  end
  else if LowerCase(tbl) = _requisicaoproducao then
  begin
    tblfilha := _itrequisicaoproducao;
    inserir_tabela_filha;
  end
  else if LowerCase(tbl) = _cte then
  begin
    tblfilha := _cteremetentenota;
    inserir_tabela_filha;

    tblfilha := _cteqtdcarga;
    inserir_tabela_filha;

    tblfilha := _ctevlprestacao;
    inserir_tabela_filha;

    tblfilha := _cteinformacaoseguro;
    inserir_tabela_filha;

    tblfilha := _ctetransportadora;
    inserir_tabela_filha;
  end;
  result := codigonovo;
end;

constructor TCopiarRegistro.create;
begin
  s2 := TClasseQuery.Create;
  c := TClasseQuery.Create('', true);
end;

destructor TCopiarRegistro.destroy;
begin
  freeandnil(s2);
  freeandnil(c);
  inherited;
end;

procedure TCopiarRegistro.inserir_registro(bofilho, boneto:Boolean);
  function existe_campo(nmcampo:string):Boolean;
  var
    i : Integer;
  begin
    result := False;
    for i := 0 to c.q.FieldCount - 1 do
    begin
      if c.q.Fields[i].FieldName = UpperCase(nmcampo) then
      begin
        result := True;
        Break;
      end;
    end;
  end;
var
  i : Integer;
begin
  c.q.Open;
  s2.q.Open;
  while not s2.q.Eof do
  begin
    c.q.Insert;
    for i := 0 to c.q.FieldCount - 1 do
    begin
      qregistro.set_field_type_assign(s2.q, c.q, i);
    end;
    if bofilho then
    begin
      RegistraInformacao_(c.q);
      c.q.fieldbyname(_cd+tbl).asinteger := codigonovo;
      if Existe_Campo(_cd+tblfilha) then
      begin
        c.q.FieldByName(_cd+tblfilha).AsInteger := qgerar.GerarCodigo(tblfilha);
        codigonovofilho := c.q.FieldByName(_cd+tblfilha).asinteger;
        codigofilho     := s2.q.fieldbyname(_cd+tblfilha).asinteger;
      end;
      if lowercase(tblfilha) = _ctetransportadora then
      begin
        c.q.fieldbyname(_cdautpagto).clear;
      end;
      if lowercase(tblfilha) = _itrequisicaoproducao then
      begin
        c.q.fieldbyname(_qtproducao).AsFloat := 0;
      end;
      aplicacao.aplyupdates(c.q);
      if LowerCase(tblfilha) = _itregrast then
      begin
        tblneta := _ITregrastmva;
        Inserir_Tabela_Neta;
      end
      else if LowerCase(tblfilha) = _itformulacao then
      begin
        tblneta := _itformulacaosubstituto;
        Inserir_Tabela_Neta;
      end;
    end;
    if boneto then
    begin
      RegistraInformacao_(c.q);
      c.q.fieldbyname(_cd+tblfilha).AsInteger := codigonovofilho;
      c.q.FieldByName(_cd+tblneta).AsInteger := qgerar.GerarCodigo(tblneta);
      c.q.Post;
    end;
    s2.q.next;
  end;
end;

procedure TCopiarRegistro.inserir_registro_pai;
begin
  s2.q.sql.text := makesql;
  c.q.sql.text  := makesqlnovo;
  inserir_registro(False, false);
  codigonovo                       := qGerar.GerarCodigo(tbl);
  c.q.FieldByName(_cd+tbl).asInteger := codigonovo;
  if tbl = _locacao then
  begin
    c.q.FieldByName(_qtitem).AsInteger    := c.q.fieldbyname(_qtsaldo).AsInteger;
    c.q.FieldByName(_dtinicio).AsDateTime := DtBanco;
    c.q.FieldByName(_hrinicio).AsDateTime := HrBanco;
    c.q.FieldByName(_cdst+tbl).AsInteger   := qregistro.Codigo_status_novo(tbl);
    c.q.FieldByName(_dtfinal).Clear;
    c.q.FieldByName(_hrfinal).Clear;
    c.q.FieldByName(_cdlocacaoanterior).clear;
  end;
  if tbl = _requisicaoproducao then
  begin
    c.q.FieldByName(_qtproducao).AsFloat := 0;
  end;
  if tbl = _cte then
  begin
    c.q.FieldByName(_nuchavenfe).clear;
    c.q.FieldByName(_dsxml).Clear;
    c.q.FieldByName(_dsxmlcancel).Clear;
    c.q.FieldByName(_nuprotocolo).Clear;
    c.q.FieldByName(_cdstcte).AsString     := _1;
    c.q.FieldByName(_dtemissao).AsDateTime := DtBanco;
    c.q.FieldByName(_hremissao).AsDateTime := HrBanco;
  end;
  RegistraInformacao_(c.q);
  aplicacao.aplyupdates(c.q);
end;

procedure TCopiarRegistro.inserir_tabela_filha;
begin
  c.q.Close;
  s2.q.Close;
  c.q.sql.text  := makesqlfilhanovo;
  s2.q.sql.text := makesqlfilha;
  inserir_registro(True, false);
end;

function TCopiarRegistro.MakeSQL: string;
begin
  result := QRetornaSQL.get_select_from(tbl, codigo);
end;

function TCopiarRegistro.MakeSQLFilha: string;
begin
  result := QRetornaSQL.get_select_from(tblfilha, codigo, _cd+tbl);
end;

function TCopiarRegistro.MakeSQLNovo: string;
begin
  result := QRetornaSQL.get_select_from(tbl, _0);
end;

function TCopiarRegistro.MakeSQLFilhaNovo: string;
begin
  result := QRetornaSQL.get_select_from(tblfilha, _0, _cd+tbl);
end;

procedure TCopiarRegistro.Inserir_Tabela_Neta;
var
  so, cn : TClasseQuery;
  i : Integer;
begin
  cn := TClasseQuery.Create(MakeSQLNetaNovo, true);
  so := TClasseQuery.Create(MakeSQLNeta);
  try
    while not so.q.Eof do
    begin
      cn.q.Insert;
      for i := 0 to cn.q.FieldCount - 1 do
      begin
        qregistro.set_field_type_assign(so.q, cn.q, i);
      end;
      RegistraInformacao_(cn.q);
      cn.q.fieldbyname(_cd+tblfilha).asInteger := codigonovofilho;
      cn.q.FieldByName(_cd+tblneta).asInteger := qgerar.GerarCodigo(tblneta);
      so.q.next;
    end;
    if cn.q.recordcount > 0 then
    begin
      aplicacao.aplyupdates(cn.q);
    end;
  finally
    freeandnil(cn);
    freeandnil(so);
  end;
end;

function TCopiarRegistro.MakeSQLNeta: string;
begin
  result := QRetornaSQL.get_select_from(tblneta, codigofilho, _cd+tblfilha);
end;

function TCopiarRegistro.MakeSQLNetaNovo: string;
begin
  result := QRetornaSQL.get_select_from(tblneta, _0, _cd+tblfilha);
end;

end.
