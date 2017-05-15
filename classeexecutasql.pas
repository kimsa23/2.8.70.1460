unit classeexecutasql;

interface

uses
  System.Actions, System.UITypes,
  FireDAC.Comp.Script, system.SysUtils,
  classes, dialogs, forms, ComCtrls, Controls, Gauges, Math,
  DB, sqlexpr,
  uRichEdit, uinterbase, udatahora, uprogressbar, uconstantes, uregistro,
  classeaplicacao, classeretornasql, classequery;

function  ExecutaSQL   (sql:string):boolean;overload;
function  ExecSQL      (sql:string; bosilencioso:Boolean=false):boolean;
function  ExecutaScript(sql:tstrings; gau: TGauge=nil):boolean;overload;
function  ExecutaScriptFire(sql:tstrings; gau: TGauge=nil; bostep:boolean=true):boolean;overload;
procedure InserirCampo ;
procedure InserirTabela;
function  NomeTabelaTemporaria:string;
function  NomeTemporario:string;
procedure RelacionarTabelaCampo;

implementation

procedure RelacionarTabelaCampo;
var
  q : TClasseQuery;
begin
  inserirtabela;
  inserircampo;
  q := TClasseQuery.create('select tabela.cdtabela,campo.cdcampo  ' +
                           'from rdb$relation_fields ' +
                           'LEFT JOIN TABELA ON TABELA.NMTABELA=rdb$relation_fields.rdb$relation_name ' +
                           'LEFT JOIN CAMPO ON CAMPO.NMCAMPO=rdb$relation_fields.rdb$field_name ' +
                           'left join ittabela on ittabela.cdtabela=tabela.cdtabela and ittabela.cdcampo=campo.cdcampo ' +
                           'WHERE not rdb$relation_fields.rdb$relation_name like ''RDB$%'' and rdb$relation_fields.rdb$view_context is null and (ittabela.cdtabela is null or ittabela.cdcampo is null) ' +
                           'order by rdb$relation_name,rdb$relation_fields.rdb$field_name');
  try
    while not q.q.Eof do
    begin
      ExecutaSQL('insert into ittabela(cdtabela,cdcampo)values('+q.q.fields[0].asstring+','+q.q.fields[1].asstring+')');
      q.q.next;
    end;
    showmessage('Finalizado!');
  finally
    freeandnil(q);
  end;
end;

procedure InserirCampo;
var
  i : integer;
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select rdb$relation_fields.rdb$field_name ' +
                           'from rdb$relation_fields '+
                           'LEFT JOIN campo on campo.nmcampo=rdb$relation_fields.rdb$field_name ' +
                           'WHERE not rdb$relation_fields.rdb$relation_name like ''RDB$%'' and rdb$relation_fields.rdb$view_context is null AND campo.nmcampo IS NULL ' +
                           'group by rdb$relation_fields.rdb$field_name');
  try
    i := RetornaSQLInteger('select max(cdcampo) from campo');
    while not q.q.Eof do
    begin
      inc(i);
      ExecutaSQL('insert into campo(cdcampo,nmcampo)values('+inttostr(i)+','+quotedstr(q.q.fields[0].asstring)+')');
      q.q.next;
    end;
    showmessage('finalizado!');
  finally
    freeandnil(q);
  end;
end;

procedure InserirTabela;
var
  i : integer;
  q : TClasseQuery;
begin
  q := TClasseQuery.create('SELECT rdb$relations.rdb$relation_name ' +
              'FROM rdb$relations ' +
              'LEFT JOIN TABELA ON TABELA.nmtabela=rdb$relations.rdb$relation_name ' +
              'WHERE rdb$relations.rdb$view_blr IS null AND not rdb$relations.rdb$relation_name like ''RDB$%'' ' +
              'AND TABELA.nmtabela IS NULL ' +
              'order by rdb$relations.rdb$relation_name');
  try
    i := RetornaSQLInteger('select max(cdtabela) from tabela');
    while not q.q.Eof do
    begin
      inc(i);
      ExecutaSQL('insert into tabela(cdtabela,nmtabela)values('+inttostr(i)+','+quotedstr(q.q.fieldbyname('rdb$relations.rdb$relation_name').asstring)+')');
      q.q.next;
    end;
    showmessage('Finalizado!');
  finally
    freeandnil(q);
  end;
end;

function NomeTemporario:string;
var
  aleatorio : Integer;
begin
  Randomize;
  result := 'TMP'+Concat(inttostr(Random(aleatorio)), formatdatetime(_YYMMDD, DtBanco), formatdatetime('hnsz', hrbanco))
end;

function NomeTabelaTemporaria:string;
begin
  repeat
    result := NomeTemporario;
  until not ExisteTabela(result);
end;

function ExecutaScript(sql:tstrings; gau: TGauge=nil):boolean;
var
  transdesc : ttransactionDesc;
  i : integer;
  frmpgbsql : Tfrmprogressbar;
  texto : string;
begin
  result := False;
  if sql.Text = '' then
  begin
    exit;
  end;
  result                   := false;
  Randomize;
  transdesc.TransactionID  := RandomRange(1, 999999999);
  transdesc.IsolationLevel := xilreadcommitted;
  aplicacao.con2.StartTransaction(TransDesc);
  frmpgbsql := Tfrmprogressbar.Create(nil);
  try
    try
      if gau = nil then
      begin
        gau := frmpgbsql.gau;
        frmpgbsql.Show;
      end;
      gau.MaxValue := sql.Count;
      for i := 0 to sql.count - 1 do
      begin
        frmpgbsql.pnl.Caption := Format('Executando Script linha %d de %d ', [i+1, sql.count]);
        gau.Progress := i + 1;
        Application.ProcessMessages;
        texto := sql[i];
        aplicacao.con2.ExecuteDirect(sql[i]);
      end;
      aplicacao.con2.Commit(TransDesc);
      result := true;
    except
      if messagedlg('Erro na instrução SQL.'#13+texto+#13'Deseja visualizar a instrução?', mtconfirmation, [mbyes, mbno], 0) = mryes then
      begin
        ExibirSaidaVideo(sql, wsMaximized, true);
      end;
      aplicacao.con2.Rollback(TransDesc);
    end;
  finally
    FreeAndNil(frmpgbsql);
  end;
end;

function ExecutaScriptFire(sql:tstrings; gau: TGauge=nil; bostep:boolean=true):boolean;
var
  i : integer;
  FDScript1: TFDScript;
  frmpgbsql : Tfrmprogressbar;
begin
  result := False;
  if sql.Text = '' then
  begin
    exit;
  end;
  FDScript1 := TFDScript.Create(nil);
  frmpgbsql := Tfrmprogressbar.Create(nil);
  try
    FDScript1.Connection := aplicacao.confire;
    if gau = nil then
    begin
      gau := frmpgbsql.gau;
      frmpgbsql.Show;
    end;
    if bostep then
    begin
      FDScript1.SQLScripts.Clear;
      FDScript1.SQLScripts.Add;
      FDScript1.SQLScripts[0].SQL.Text := sql.Text;
      gau.MaxValue := sql.Count;
      for i := 0 to sql.Count - 1 do
      begin
        frmpgbsql.pnl.Caption := Format('Executando Script linha %d de %d ', [i+1, sql.count]);
        gau.Progress := i + 1;
        Application.ProcessMessages;
        try
          FDScript1.ExecuteStep;
        except
          if messagedlg('Erro na instrução SQL.'#13+sql[i]+#13'Deseja visualizar a instrução?', mtconfirmation, [mbyes, mbno], 0) = mryes then
          begin
            ExibirSaidaVideo(sql, wsMaximized, true);
          end;
          Abort;
        end;
      end;
    end
    else
    begin
      FDScript1.SQLScripts.Clear;
      FDScript1.SQLScripts.Add;
      gau.MaxValue := sql.Count;
      for i := 0 to sql.Count - 1 do
      begin
        frmpgbsql.pnl.Caption := Format('Executando Script linha %d de %d ', [i+1, sql.count]);
        gau.Progress := i + 1;
        Application.ProcessMessages;
        if (i mod _qt_registro_script = 0) and (i >= _qt_registro_script) then
        begin
          FDScript1.ValidateAll;
          FDScript1.ExecuteAll;
          FDScript1.SQLScripts[0].SQL.Clear;
        end;
        FDScript1.SQLScripts[0].SQL.Add(sql[i]);
      end;
      if FDScript1.SQLScripts[0].SQL.Count > 0 then
      begin
        FDScript1.ValidateAll;
        FDScript1.ExecuteAll;
      end;
    end;
    result := True;
  finally
    FDScript1.Free;
    FreeAndNil(frmpgbsql);
  end;
end;

function ExecutaSQL(sql:string):boolean;
  function get_nmtabela(mensagem:string):string;
  var
    p : integer;
    nmexibe : string;
  begin
    p := pos('on table', lowercase(mensagem));
    result := copy(mensagem, p + 10, length(mensagem)-p+11);
    P := pos('"', result);
    result := copy(result, 1, p-1);
    nmexibe := QRegistro.CampodoCampo(_tabela, _nm+_tabela, result, _nm+_exibe, true);
    if nmexibe <> '' then
    begin
      result := nmexibe;
    end;
  end;
var
  transdesc : ttransactionDesc;
begin
  result := false;
  Randomize;
  transdesc.TransactionID  := RandomRange(1, 999999999);
  transdesc.IsolationLevel := xilreadcommitted;
  aplicacao.con2.StartTransaction(TransDesc);
  try
    aplicacao.con2.ExecuteDirect(sql);
    aplicacao.con2.Commit(TransDesc);
    result := true;
  except
    on e : exception do
    begin
      if lowercase(copy(e.Message, 1, 35)) = 'violation of foreign key constraint' then
      begin
        messagedlg('Não pode excluir o registro porque está vinculado com a tabela '+get_nmtabela(e.message)+'.', mtinformation, [mbok], 0);
      end
      else
      begin
        showmessage('Não foi possível executar o comando: '#13+sql);
      end;
      aplicacao.con2.Rollback(TransDesc);
    end;
  end;
end;

function ExecSQL(sql:string; bosilencioso:Boolean=false):boolean;
  function get_nmtabela(mensagem:string):string;
  var
    p : integer;
    nmexibe : string;
  begin
    p := pos('on table', lowercase(mensagem));
    result := copy(mensagem, p + 10, length(mensagem)-p+11);
    P := pos('"', result);
    result := copy(result, 1, p-1);
    nmexibe := QRegistro.CampodoCampo(_tabela, _nm+_tabela, result, _nm+_exibe, true);
    if nmexibe <> '' then
    begin
      result := nmexibe;
    end;
  end;
begin
  result := false;
  try
    aplicacao.confire.StartTransaction;
    aplicacao.confire.ExecSQL(sql);
    aplicacao.confire.CommitRetaining;
    result := true;
  except
    on e : exception do
    begin
      aplicacao.confire.RollbackRetaining;
      if not bosilencioso then
      begin
        if lowercase(copy(e.Message, 1, 35)) = 'violation of foreign key constraint' then
        begin
          messagedlg('Não pode excluir o registro porque está vinculado com a tabela '+get_nmtabela(e.message)+'.', mtinformation, [mbok], 0);
        end
        else
        begin
          showmessage('Erro: '#13#13+e.Message+#13#13'Não foi possível executar o comando: '#13+sql);
        end;
      end
      else
      begin
        raise;
      end;
    end;
  end;
end;

end.
