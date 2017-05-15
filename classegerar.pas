unit classegerar;

interface

uses
  system.UITypes,
  sysutils, classes,
  dbclient, db, sqlexpr, FMTBcd, Dialogs,
  classeempresa, udatahora, uregistro, uconstantes,
  classeretornasql, classeaplicacao,
  ustrings, uinterbase, uprogressbar;

type
  QGerar = class
    class function GerarCodigo(tabela:string; cdregistro:string=''; nugerarcodigo:integer=0; tbldestino:string=_saida):integer;
    class function Gerar_Codigo(tabela:string):integer;
  end;


function Gerar_Codigo   (tabela:string):string;
function GerarCodigo    (tabela:string; cdregistro:string=''):string;overload;
function GerarCodigo    (tabela, nmgenerator, nmfield, tblfonte :string):string;overload;
function GerarCodigo    (tabela, nmfield, tblfonte :string):integer;overload;
function GerarCodigo    (tabela, nmfield:string; nugerarcodigo:integer):string;overload;
function InserirRegistro(tbl, nmtbl:string;boimportacao:Boolean=false;sqlregistrar:string=''):string;overload;
function InserirRegistro(tbl, codigo, nome:string;sqlregistrar:string=''):boolean;overload;


implementation

uses classeusuario, classeregistrainformacao, classeexecutasql;

function Gerar_Codigo(tabela:string):string;
begin
  result := RetornaSQLString('select gen_id('+tabela+'_gen, 1) from rdb$database');
end;

function GerarCodigo(tabela:string; cdregistro:string=''):string;
var
  codigo, nugenerator, cdtabela : string;
  botabelaexiste : boolean;
begin
  if (LowerCase(tabela) = _computador) or (LowerCase(tabela) = _papel) or (LowerCase(tabela) = LowerCase(_grupo+_s)) or (LowerCase(tabela) = _report) then
  begin
    repeat
      result := Gerar_Codigo(_cd+tabela);
    until not CodigoExiste(tabela, result);
    exit;
  end;
  if (LowerCase(tabela) = _serie) and (cdregistro <> '') then
  begin
    nugenerator := RetornaSQLString('select nusequencia from '+tabela+' where cdempresa='+empresa.cdempresa.ToString+' and cd'+tabela+'='+cdregistro);
    repeat
      nugenerator := inttostr(strtoint(nugenerator)+1);
      ExecutaSQL('update '+tabela+' set nusequencia='+nugenerator+' where cdempresa='+empresa.cdempresa.ToString+' and cd'+tabela+'='+cdregistro);
    until RetornaSQLInteger('select count(*) from saida where cdempresa='+empresa.cdempresa.ToString+' and nusaida='+nugenerator+' and cdserie='+cdregistro) = 0;
    result := nugenerator;
    exit;
  end;
  cdtabela := RetornaSQLString('select cdtabela from tabela where nmtabela='+uppercase(quotedstr(tabela)));
  if cdtabela = '' then
  begin
    messagedlg('Tabela '+tabela+' não cadastrada.'#13'Favor entrar em contato com a Quipos.', mtinformation, [mbok], 0);
    Abort;
  end;
  botabelaexiste := ExisteTabela(tabela) or (tabela = _nupedido);
  repeat
    nugenerator := RetornaSQLString('select nugenerator from empresagenerator where cdempresa='+empresa.cdempresa.ToString+' and cdtabela='+cdtabela);
    if nugenerator = '' then
    begin
      if (tabela = _nuordserv) or (tabela = _nupedido) then
      begin
        codigo := RetornaSQLString('select max('+tabela+') from '+copy(tabela, 3, Length(tabela)-2)+' where cdempresa='+empresa.cdempresa.ToString);
      end
      else if botabelaexiste then
      begin
        codigo := RetornaSQLString('select max(cd'+tabela+') from '+tabela+' where cdempresa='+empresa.cdempresa.ToString);
      end
      else
      begin
        codigo := _0;
      end;
      codigo := removercaracteres(codigo);
      if (codigo = _0) or (codigo = '') or (Length(codigo) >= 7) then
      begin
        codigo := _1;
      end;
      ExecutaSQL('insert into empresagenerator(cdempresa,cdtabela,nugenerator,BONRECUPERARCODIGO)values('+empresa.cdempresa.ToString+','+cdtabela+','+codigo+',''N'')');
      //ExecSQL('insert into empresagenerator(cdempresa,cdtabela,nugenerator)values('+empresa.cdempresa.tostring+','+cdtabela+','+codigo+')');
      Result := codigo;
    end
    else
    begin
      result := inttostr(strtoint(nugenerator)+1);
      ExecutaSQL('update empresagenerator set nugenerator='+result+' where cdempresa='+empresa.cdempresa.ToString+' and cdtabela='+cdtabela);
      //ExecSQL('update empresagenerator set nugenerator='+result+' where cdempresa='+empresa.cdempresa.tostring+' and cdtabela='+cdtabela);
      if not botabelaexiste then
      begin
        break;
      end;
    end;
  until not uregistro.CodigoExiste(tabela, result);
end;

function GerarCodigo(tabela, nmgenerator, nmfield, tblfonte :string):string;
begin
  repeat
    result := RetornaSQLString('select gen_id('+nmgenerator+'_gen, 1) from rdb$database');
  until not uregistro.CodigoExiste(tblfonte, nmfield, _integer, result);
end;

function GerarCodigo(tabela, nmfield, tblfonte :string):integer;
begin
  result := RetornaSQLInteger('select '+nmfield+' from '+tblfonte+' where cdempresa='+empresa.cdempresa.ToString) + 1;
  ExecutaSQL('update '+tblfonte+' set '+nmfield+'='+inttostr(result)+' where cdempresa='+empresa.cdempresa.ToString);
end;

function GerarCodigo(tabela, nmfield:string; nugerarcodigo:integer):string;
var
  i : integer;
begin
  repeat
    i := 0;
    repeat
      result := RetornaSQLString('select gen_id('+nmfield+'_gen, 1) from rdb$database');
      inc(i);
    until i = nugerarcodigo;
  until not uregistro.CodigoExiste(tabela, nmfield, _integer, result);
end;

function InserirRegistro(tbl, nmtbl:string;boimportacao:Boolean=false;sqlregistrar:string=''):string;
var
  sql : string;
begin
  result := GerarCodigo(tbl);
  if (sqlregistrar = '') and (lowercase(tbl) <> _tabela) and (lowercase(tbl) <> _computador) then
  begin
    sqlregistrar := sqlregistra;
  end;
       if lowercase(tbl) = _convenio                                   then sql := 'insert into '+tbl+'(cd'+tbl+',nm'+tbl+',cdst'+tbl+','+_sqlreg+result+','+quotedstr(nmtbl)+',1,'+sqlregistrar
  else if (lowercase(tbl) = _tabela) or (lowercase(tbl) = _computador) then sql := 'insert into '+tbl+'(cd'+tbl+',nm'+tbl+')values('+result+','+quotedstr(nmtbl)+')'
  else if LowerCase(tbl) = _cat+_extrato                               then sql := 'insert into '+tbl+'(cd'+tbl+',nm'+tbl+',boativar,'+_sqlreg+result+','+quotedstr(nmtbl)+',''S'','+SQLRegistrar
  else if LowerCase(tbl) = _unidade                                    then sql := 'insert into '+tbl+'(cd'+tbl+',nm'+tbl+','+_sqlreg+result+','+quotedstr(nmtbl)+','+SQLRegistrar
                                                                       else sql := 'insert into '+tbl+'(cd'+tbl+',nm'+tbl+','+_sqlreg+result+','+quotedstr(nmtbl)+','+sqlregistrar;
  ExecutaSQL(sql);
end;

function InserirRegistro(tbl, codigo, nome:string;sqlregistrar:string=''):boolean;
begin
  if (sqlregistrar = '') and (lowercase(tbl) <> _tabela) and (lowercase(tbl) <> _computador) then
  begin
    sqlregistrar := sqlregistra;
  end;
  ExecutaSQL('insert into '+tbl+'(cd'+tbl+',nm'+tbl+','+_sqlreg+codigo+','+quotedstr(nome)+','+sqlregistrar);
  result := True;
end;

class function QGerar.GerarCodigo(tabela:string; cdregistro: string=''; nugerarcodigo:integer=0; tbldestino:string=_saida): integer;
var
  cdtabela : string;
  codigo, nugenerator : Integer;
  botabelaexiste : boolean;
begin
  if (LowerCase(tabela) = _computador) or (LowerCase(tabela) = _papel) or (LowerCase(tabela) = LowerCase(_grupo+_s)) or (LowerCase(tabela) = _report) then
  begin
    repeat
      result := QGerar.Gerar_Codigo(_cd+tabela);
    until not QRegistro.CodigoInteiroExiste(tabela, result);
    exit;
  end;

  if (LowerCase(tabela) = _serie) and (cdregistro <> '') then
  begin
    nugenerator := RetornaSQLInteger('select nusequencia from '+tabela+' where cdempresa='+empresa.cdempresa.ToString+' and cd'+tabela+'='+cdregistro);
    repeat
      Inc(nugenerator);
      ExecutaSQL('update '+tabela+' set nusequencia='+inttostr(nugenerator)+' where cdempresa='+empresa.cdempresa.ToString+' and cd'+tabela+'='+cdregistro);
    until RetornaSQLInteger('select count(*) from '+tbldestino+' where cdempresa='+empresa.cdempresa.ToString+' and nu'+tbldestino+'='+inttostr(nugenerator)+' and cdserie='+cdregistro) = 0;
    result := nugenerator;
    exit;
  end;

  cdtabela := RetornaSQLString('select cdtabela from tabela where nmtabela='+uppercase(quotedstr(tabela)));
  if cdtabela = '' then
  begin
    messagedlg('Tabela '+tabela+' não cadastrada.'#13'Favor entrar em contato com a Quipos.', mtinformation, [mbok], 0);
    Abort;
  end;

  botabelaexiste := ExisteTabela(tabela) or (tabela = _nupedido) or (tabela = _nuordserv);
  repeat
    nugenerator := RetornaSQLInteger('select nugenerator from empresagenerator where cdempresa='+empresa.cdempresa.ToString+' and cdtabela='+cdtabela);
    if (nugenerator = 0) and (RetornaSQLInteger('select count(*) from empresagenerator where cdempresa='+empresa.cdempresa.ToString+' and cdtabela='+cdtabela) =0) then
    begin
      if (tabela = _nuordserv) or (tabela = _nupedido) then
      begin
        codigo := RetornaSQLInteger('select max('+tabela+') from '+copy(tabela, 3, Length(tabela)-2)+' where cdempresa='+empresa.cdempresa.ToString);
      end
      else if botabelaexiste then
      begin
        codigo := RetornaSQLInteger('select max(cd'+tabela+') from '+tabela+' where cdempresa='+empresa.cdempresa.ToString);
      end
      else
      begin
        codigo := 0;
      end;
      if (codigo = 0) or (Length(IntToStr(codigo)) >= 7) then
      begin
        codigo := 1;
      end;
      ExecutaSQL('insert into empresagenerator(cdempresa,cdtabela,nugenerator,BONRECUPERARCODIGO)values('+empresa.cdempresa.ToString+','+cdtabela+','+inttostr(codigo)+',''N'')');
      Result := codigo;
    end
    else
    begin
      result := nugenerator+1;
      if nugerarcodigo > 0 then
      begin
        result := result+nugerarcodigo-1;
      end;
      ExecutaSQL('update empresagenerator set nugenerator='+inttostr(result)+' where cdempresa='+empresa.cdempresa.ToString+' and cdtabela='+cdtabela);
      if not botabelaexiste then
      begin
        break;
      end;
    end;
  until not QRegistro.CodigoInteiroExiste(tabela, result);
end;

class function QGerar.Gerar_Codigo(tabela: string): integer;
begin
  result := RetornaSQLInteger('select gen_id('+tabela+'_gen, 1) from rdb$database');
end;

end.
