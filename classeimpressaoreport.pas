unit classeimpressaoreport;

interface

uses
  System.Actions, System.UITypes, Firedac.Stan.Param,
  Dialogs, Classes, Controls, Windows, Messages, SysUtils, Variants, Graphics,
  Forms,
  DB,
  uprogressbar, unumero, ustrings, uConstantes, uregistro,
  classecliente, classeempresa, classeInstrucaoSQL, classeaplicacao, classequery,
  frxDBSet;

function configuar_impressao_report(mtbl: TDataClient; dts : TDataSource; q1, q2, q3, q4, q5: TClasseQuery; dbd1: TfrxDBDataset; q:TClasseQuery; parBloco: TInstrucaoSQL; cdreport:Integer; where, where2:string; di, df: TDate):boolean;

implementation

uses ClasseReport;

type
  TImp_repor = class(tobject)
  private
    parBloco: TInstrucaoSQL;
    qry1, qry2, qry3, qry4, qry5: TClasseQuery;
    dbd1: TfrxDBDataset;
    mtbl: TDataClient;
    q : TClasseQuery;
    cdfields, sql : TStrings;
    dts : TDataSource;
    nugrupolinha: Integer;
    nulinha: Integer;
    nulinhas: Integer;
    cdreport: Integer;
    cdgrupolinha: string;
    sqlwhere2: string;
    sqlwhere:string;
    dti, dtf: TDate;
    procedure criar_clone;
    function  get_parametro(commando, sqlwhereparametro:string):string;
    procedure Get_numero_linhas;
    procedure inserir_vazios(nuregistro: Integer);
    procedure inserir_registros;
    procedure ConfiguraObjetosDeAcessoAosDados(sql_commando:string; parNumero: integer);
    procedure report_480_atualizar_registro;
    procedure imp_report2(parametro:string);
    function  set_sql_e_dataset:boolean;
    procedure set_numero_linhas;
    procedure set_grupo_numero_linhas;
  public
    constructor create(mtbl_: TDataClient; dts_ : TDataSource; q1_, q2_, q3_, q4_, q5_: TClasseQuery; dbd1_: TfrxDBDataset; q_:TClasseQuery; parBloco_: TInstrucaoSQL; cdreport_:Integer; where_, where2_:string; di_, df_: TDate);
    function configurar:boolean;
    destructor destroy;override;
  end;

function configuar_impressao_report(mtbl: TDataClient; dts : TDataSource; q1, q2, q3, q4, q5: TClasseQuery; dbd1: TfrxDBDataset; q:TClasseQuery; parBloco: TInstrucaoSQL; cdreport:Integer; where, where2:string; di, df: TDate):boolean;
var
  imp_report : TImp_repor;
begin
  imp_report := TImp_repor.create(mtbl, dts, q1, q2, q3, q4, q5, dbd1, q, parBloco, cdreport, where, where2, di, df);
  try
    result := imp_report.configurar;
  finally
    imp_report.Free;
  end;
end;

function Timp_repor.set_sql_e_dataset:boolean;
var
  i : Integer;
  Instrucao_SQL_do_Relatorio : string;
begin
  result := true;
  for i := 0 to sql.Count - 1 do
  begin
    if i = 0 then
    begin
      if parBloco <> nil then
      begin
        parBloco.text := Treport.getsql1(sql[i], sqlwhere);
        parBloco.applyRules;
        Instrucao_SQL_do_Relatorio := parBloco.newText;
      end
      else
      begin
        if Pos('#', sqlwhere) > 0 then
        begin
          Instrucao_SQL_do_Relatorio := get_parametro(sql[i], sqlwhere);
          qry1.q.SQL.Text := Instrucao_SQL_do_Relatorio;
          dbd1.DataSet := qry1.q;
          qry1.q.Open;
          Exit; // se houver # dividir o sqlwhere usar a mesma rotina do report para gerar o commando sql
        end;
        Instrucao_SQL_do_Relatorio := treport.getsql1(sql[i], sqlwhere);
      end;
      Instrucao_SQL_do_Relatorio := treport.SubstituiParametrosSQL (Instrucao_SQL_do_Relatorio, ':WHERE2', sqlwhere2);
      Instrucao_SQL_do_Relatorio := treport.SubstituiParametrosSQL (Instrucao_SQL_do_Relatorio, ':WHERE', sqlwhere);
      if Pos(':', Instrucao_SQL_do_Relatorio)> 0 then
      begin
        Instrucao_SQL_do_Relatorio := StringParametro(Instrucao_SQL_do_Relatorio, sqlwhere);
      end;
      qry1.q.sql.text := Instrucao_SQL_do_Relatorio;
      //qry1.q.sql.SaveToFile('C:\SOFTWARE\SQL.SQL');
      qry1.q.Open;
      if qry1.q.RecordCount = 0 then
      begin
        messagedlg(_msg_Nao_existem_registros_para_este_relatorio, mtInformation, [mbok], 0);
        result := false;
        exit;
      end;
    end
  end;
end;

procedure timp_repor.set_numero_linhas;
var
  linha, nupagina : Integer;
begin
  if nulinhas <= 0 then
  begin
    Exit;
  end;
  if (qry1.q.RecordCount * nulinha) > nulinhas then
  begin
    nulinhas := (((qry1.q.RecordCount * nulinha) div nulinhas) + 1) * nulinhas;
    nupagina := 0;
    if Existe_Campo(qry1.q, _nu+_pagina) then
    begin
      nupagina := qry1.q.fieldbyname(_nu+_pagina).asinteger;
    end;
    inserir_vazios(nulinhas+nupagina-(qry1.q.RecordCount * nulinha));
  end
  else
  begin
    linha := (nulinhas-(qry1.q.RecordCount * nulinha)) div nulinha;
    inserir_vazios(linha);
  end;
end;

function TImp_repor.configurar:boolean;
var
  i : Integer;
begin
  result := true;
  nulinhas := 0;
  if q.q.fieldbyname(_dsrelatorio).AsString = '' then
  begin
    Exit;
  end;
  sql      := TStringList.Create;
  cdfields := TStringList.Create;
  try
    obter_campo_conexao(q.q.fieldbyname(_dsrelatorio).AsString, cdfields);
    getsqlcommandText(q.q.fieldbyname(_dsrelatorio).AsString, sql);
    if not set_sql_e_dataset then
    begin
      result := false;
      exit;
    end;
    if cdfields.Count > 0 then
    begin
      for i := 1 to sql.count - 1 do
      begin
        ConfiguraObjetosDeAcessoAosDados(sql[i], i+1);
      end;
      Exit;
    end;
    imp_report2(sqlwhere);
    Get_numero_linhas;
    // relatorios a serem alterados no cliente 315, 316, 524, 550, 317
    set_numero_linhas;
    set_grupo_numero_linhas;
    if cdreport = 480 then
    begin
      report_480_atualizar_registro;
    end;
  finally
    freeandnil(sql);
    freeandnil(cdfields);
  end;
end;

procedure TImp_repor.Get_numero_linhas;
var
  i : Integer;
begin
  nulinha := 1;
  for i := 0 to qry1.q.fieldcount - 1 do
  begin
    if LowerCase(qry1.q.fields[i].fieldname) = _nulinhas     then
    begin
      nulinhas     := qry1.q.Fields[i].AsInteger;
    end;
    if LowerCase(qry1.q.fields[i].fieldname) = _nulinha      then
    begin
      nulinha      := qry1.q.Fields[i].AsInteger;
    end;
    if LowerCase(qry1.q.fields[i].fieldname) = _nugrupolinha then
    begin
      nugrupolinha := qry1.q.Fields[i].AsInteger;
    end;
    if LowerCase(qry1.q.fields[i].fieldname) = _cdgrupolinha then
    begin
      cdgrupolinha := qry1.q.Fields[i].AsString;
    end;
  end;
end;

procedure TImp_repor.inserir_registros;
begin
  mtbl.CopyDataSet(qry1);
end;

procedure TImp_repor.inserir_vazios(nuregistro: Integer);
var
  i, x : Integer;
begin
  criar_clone;
  inserir_registros;
  for i := 1 to nuregistro do
  begin
    mtbl.m.Append;
    for x := 0 to mtbl.m.FieldCount - 1 do
    begin
      if qry1.q.Fields[x].Required then
      begin
        qregistro.set_field_type_assign(qry1.q, mtbl.m, x);
      end
      else if Copy(qry1.q.Fields[x].FieldName, length(qry1.q.Fields[x].FieldName), 1) = '_' then
      begin
        qregistro.set_field_type_assign(qry1.q, mtbl.m, x);
      end;
    end;
    mtbl.m.Post;
  end;
  mtbl.m.First;
end;

procedure TImp_repor.ConfiguraObjetosDeAcessoAosDados(sql_commando:string; parNumero: integer);
  function configura_indice:string;
  var
    i : Integer;
  begin
    result := '';
    for i := 0 to cdfields.Count - 1 do
    begin
      if i > 0 then
      begin
        result := result + ';';
      end;
      result := result + UpperCase(cdfields[i]);
    end;
  end;
  procedure configura_parametro(c: TClasseQuery);
  var
    i : Integer;
  begin
    for i := 0 to cdfields.Count - 1 do
    begin
      if LowerCase(cdfields[i]) = _cdempresa then
      begin
        c.q.Params[i].DataType := ftFMTBcd
      end
      else
      begin
        c.q.Params[i].DataType := ftInteger;
      end;
    end;
    c.q.IndexFieldNames := configura_indice;
    c.q.MasterFields    := configura_indice;
    C.q.MasterSource    := dts;
    c.q.Open;
  end;
begin
  if parNumero = 1 then
  begin
    if cdfields.Count > 0 then
    begin
      qry1.q.sql.text := sql_commando
    end
    else
    begin
      qry1.q.sql.text := StringParametro(sql_commando, sqlwhere);
    end;
    configura_parametro(qry1);
  end
  else if parNumero = 2 then
  begin
    if cdfields.Count > 0 then
    begin
      qry2.q.sql.text := sql_commando
    end
    else
    begin
      qry2.q.sql.text := StringParametro(sql_commando, sqlwhere);
    end;
    configura_parametro(qry2);
  end
  else if parNumero = 3 then
  begin
    if cdfields.Count > 0 then
    begin
      qry3.q.sql.text := sql_commando
    end
    else
    begin
      qry3.q.sql.text := StringParametro(sql_commando, sqlwhere);
    end;
    configura_parametro(qry3);
  end
  else if parNumero = 4 then
  begin
    if cdfields.Count > 0 then
    begin
      qry4.q.SQL.text := sql_commando
    end
    else
    begin
      qry4.q.sql.text := StringParametro(sql_commando, sqlwhere);
    end;
    configura_parametro(qry4);
  end
  else if parNumero = 5 then
  begin
    if cdfields.Count > 0 then
    begin
      qry5.q.sql.text := sql_commando
    end
    else
    begin
      qry5.q.sql.text := StringParametro(sql_commando, sqlwhere);
    end;
    configura_parametro(qry5);
  end;
end;

procedure TImp_repor.report_480_atualizar_registro;
var
  cliente : tcliente;
begin
  cliente := TCliente.create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    frmprogressbar.gau.MaxValue := qry1.q.RecordCount;
    frmprogressbar.Show;
    qry1.q.First;
    while not qry1.q.Eof do
    begin
      frmprogressbar.gau.Progress := qry1.q.RecNo;
      Application.ProcessMessages;
      qry1.q.edit;
      cliente.cdcliente                                 := qry1.q.fieldbyname(_CDCLIENTE).AsLargeInt;
      qry1.q.fieldbyname(_vl+_maior+_atraso).AsCurrency := cliente.DiasMaiorAtraso(dti, dtf);
      qry1.q.fieldbyname(_vlmedia+_atraso).AsCurrency   := cliente.DiasMedioAtraso(dti, dtf);
      qry1.q.fieldbyname(_vl+_acumulo).AsCurrency       := cliente.vlMaiorAcumulo;
      qry1.q.fieldbyname(_vl+_maior+_fatura).AsCurrency := cliente.VLMaiorFatura;
      qry1.q.Post;
      qry1.q.Next;
    end;
  finally
    freeandnil(cliente);
    frmprogressbar.free;
  end;
end;

constructor TImp_repor.create(mtbl_: TDataClient; dts_ : TDataSource; q1_, q2_, q3_, q4_, q5_: TClasseQuery; dbd1_: TfrxDBDataset; q_:TClasseQuery; parBloco_: TInstrucaoSQL; cdreport_:Integer; where_, where2_:string; di_, df_: TDate);
begin
  mtbl      := mtbl_;
  dts       := dts_;

  qry1      := q1_;
  qry2      := q2_;
  qry3      := q3_;
  qry4      := q4_;
  qry5      := q5_;

  dbd1      := dbd1_;

  q         := q_;

  parbloco  := parBloco_;
  sqlwhere  := where_;
  sqlwhere2 := where2_;
  dti       := di_;
  dtf       := df_;
  cdreport  := cdreport_;
end;

procedure TImp_repor.criar_clone;
begin
  qregistro.clone_fdquery_para_memtable(mtbl, qry1.q);
  dbd1.DataSet := mtbl.m;
end;

procedure TImp_repor.imp_report2(parametro:string);
var
  sql : TStrings;
begin
  sql := TStringList.Create;
  try
    getsqlcommandText(q.q.fieldbyname(_dsrelatorio).AsString, sql);
    if sql.Count > 1 then
    begin
      qry2.q.Connection := aplicacao.confire;
      qry2.q.sql.text   := StringParametro(sql[1], parametro); //StringParametro(getsql2(s.fieldbyname(_dsrelatorio).asstring), parametro);
      qry2.q.Open;
    end;
    if sql.Count > 2 then
    begin
      qry3.q.Connection := aplicacao.confire;
      qry3.q.sql.text   := StringParametro(sql[2], parametro); //StringParametro(getsql2(s.fieldbyname(_dsrelatorio).asstring), parametro);
      qry3.q.Open;
    end;
    if sql.Count > 3 then
    begin
      qry4.q.Connection := aplicacao.confire;
      qry4.q.sql.text   := StringParametro(sql[3], parametro); //StringParametro(getsql2(s.fieldbyname(_dsrelatorio).asstring), parametro);
      qry4.q.Open;
    end;
  finally
    freeandnil(sql);
  end;
end;

destructor TImp_repor.destroy;
begin
  inherited;
end;

function TImp_repor.get_parametro(commando, sqlwhereparametro:string):string;
var
  posicao, x : integer;
  parametro: array of string;
begin
  SetLength(parametro, 5);
  for x := 1 to 4 do
  begin
    parametro[x] := copy(sqlwhereparametro, 1, Pos('#', sqlwhereparametro)-1);
    delete(sqlwhereparametro, 1, Pos('#', sqlwhereparametro));
  end;
  for x := 1 to 4 do
  begin
    posicao := Pos(UpperCase(':'+_where+inttostr(x)), UpperCase(commando));
    if posicao > 0 then
    begin
      while Pos(UpperCase(':'+_where+inttostr(x)), UpperCase(commando)) > 0 do
      begin
        posicao := Pos(UpperCase(':'+_where+inttostr(x)), UpperCase(commando));
        Delete(commando, Pos(UpperCase(':'+_where+inttostr(x)), UpperCase(commando)), 7);
        insert(parametro[x], commando, Posicao);
      end;
    end;
  end;
  if parametro[1] <> '' then
  begin
    result := commando;
    Exit;
  end;
end;

procedure TImp_repor.set_grupo_numero_linhas;
var
  recno : Integer;
  cdatual, codigo : string;
  procedure adicionar_registro(boultimo:Boolean=False);
  var
    x : Integer;
  begin
    if recno >= nugrupolinha then
    begin
      Exit;
    end;
    while recno < nugrupolinha do
    begin
      if boultimo then
      begin
        mtbl.m.Append
      end
      else
      begin
        mtbl.m.insert;
      end;
      for x := 0 to mtbl.m.FieldCount - 1 do
      begin
        if qry1.q.Fields[x].Required then
        begin
          qregistro.set_field_type_assign(qry1.q, mtbl.m, x)
        end
        else if Copy(qry1.q.Fields[x].FieldName, length(qry1.q.Fields[x].FieldName), 1) = '_' then
        begin
          qregistro.set_field_type_assign(qry1.q, mtbl.m, x);
        end;
      end;
      mtbl.m.FieldByName(cdgrupolinha).AsString := codigo;
      mtbl.m.Post;
      if not boultimo then
      begin
        mtbl.m.next;
      end;
      Inc(recno);
    end;
  end;
begin
  if (nugrupolinha = 0) or (cdgrupolinha = '') then
  begin
    Exit;
  end;
  criar_clone;
  inserir_registros;
  recno  := 0;
  codigo := '';
  while not mtbl.m.Eof do
  begin
    if codigo <> mtbl.m.FieldByName(cdgrupolinha).AsString then
    begin
      cdatual := mtbl.m.FieldByName(cdgrupolinha).AsString;
      if codigo <> '' then
      begin
        adicionar_registro;
      end;
      recno  := 0;
      codigo := cdatual;
    end;
    Inc(recno);
    mtbl.m.Next;
  end;
  adicionar_registro(True);
end;

end.
