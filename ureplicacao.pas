unit ureplicacao;

interface

uses
  classes, dialogs, sysutils, idglobal,
  DB,
  uRotinas, uconstantes, ustrings, uregistro,
  classeaplicacao, classeretornasql, classequery;

function Replicacao_Exportar(tbl, cdtabela:string; cdfields:tstrings):boolean;

implementation

uses uDtmMain;

function Inserir_registro(var arquivo: TStrings; tbl, cdtbl: string; cdfields : tstrings; boinsert:Boolean=True; boupdate:boolean=true;botabela:Boolean=true):boolean;
  function inserirTabela(var arquivo:TStrings; tbl:string):boolean;
  begin
    if botabela then
    begin
      arquivo.Add(tbl);
    end;
    result := true;
  end;
  function campo_fixo_1(nmfield:string):Boolean;
  begin
    nmfield := LowerCase(nmfield);
    result := (nmfield = _cdusuarioi) or (nmfield = _cdusuarioa) or (nmfield = _cdcomputadori) or (nmfield = _cdcomputadora);
  end;
  function inserirChave(arquivo:TStrings; tbl, cdtbl: string):boolean;
  var
    y, x, I, posicaoTabela : integer;
    text, letra, texto, sql, linha : string;
    s : TClasseQuery;
    bosair : Boolean;
  begin
    s := TClasseQuery.create;
    try
      posicaoTabela   := arquivo.IndexOf(tbl);
      linha           := linha + 'CD'+tbl+'='+cdtbl+';';
      if botabela then
      begin
        Inc(posicaoTabela);
        arquivo.Insert(posicaotabela, linha);
      end;
      s.q.open(QRetornaSQL.get_select_from(tbl, cdtbl));
      while not s.q.Eof do
      begin
        bosair := False;
        if boinsert then
        begin
          sql := 'insert into '+tbl+'(';
          x   := 0;
          for I := 0 to s.q.FieldCount - 1 do
          begin
            if x > 0 then
            begin
              sql := sql + ', ';
            end;
            x   := x + 1;
            sql := sql + s.q.fields[i].FieldName;
          end;
          sql := sql + ')values(';
          x   := 0;
          for I := 0 to s.q.FieldCount - 1 do
          begin
            if x > 0 then
            begin
              sql := sql + ', ';
            end;
            x := x + 1;
            if s.q.Fields[i].IsNull then
            begin
              sql := sql + 'null '
            end
            else
            begin
              if campo_fixo_1(s.q.fields[i].FieldName) then
              begin
                sql := sql + _1;
              end
              else if s.q.Fields[i].DataType = ftString then
              begin
                texto := s.q.Fields[i].AsString;
                while ExisteString(texto, '''') do
                begin
                  texto := RemoverChar(texto, '''')
                end;
                sql := sql + quotedstr(texto)
              end
              else if s.q.Fields[i].DataType = ftTimeStamp then
              begin
                sql := sql + quotedstr(FormatDateTime(__tsbanco, s.q.fields[i].AsDateTime));
              end
              else if s.q.Fields[i].DataType = ftDateTime then
              begin
                if copy(s.q.fields[i].FieldName, 1, 2) = 'DT' then
                begin
                  sql := sql + getdtbanco(s.q.fields[i].asdatetime)
                end
                else
                begin
                  sql := sql + quotedstr(s.q.fields[i].asstring);
                end;
              end
              else if s.q.Fields[i].DataType = ftCurrency then
              begin
                sql := sql + substituir(s.q.fields[i].AsString, ',', '.')
              end
              else if s.q.Fields[i].DataType = ftBlob then
              begin
                texto := s.q.Fields[i].AsString;
                text  := '';
                for y := 1 to length(texto) do
                begin
                  letra := texto[y];
                  if texto[y] = '''' then
                  begin
                    letra := ''''+'''';
                  end;
                  text := text + letra;
                end;
                sql := sql + quotedstr(text)
              end
              else
              begin
                sql := sql + s.q.fields[i].AsString;
              end;
            end;
          end;
          sql := sql + ')';
          Inc(posicaoTabela);
          arquivo.Insert(posicaotabela, sql+';');
        end;
        if boupdate then
        begin
          sql := 'update '+tbl+' set ';
          x   := 0;
          for I := 0 to s.q.FieldCount - 1 do
          begin
            if bosair then
            begin
              Break;
            end;
            if 'CD'+uppercase(tbl)=s.q.fields[i].FieldName then
            begin
              Continue;
            end;
            if (cdfields.Count >0) and (cdfields.IndexOf(s.q.fields[i].FieldName) = -1) then
            begin
              Continue;
            end;
            if x > 0 then
            begin
              sql := sql + ', ';
            end;
            x   := x + 1;
            sql := sql + s.q.fields[i].FieldName+' = ';
            if s.q.Fields[i].IsNull then
            begin
              sql    := sql + 'null ';
              bosair := True;
              Continue;
            end
            else
            begin
              if s.q.Fields[i].DataType = ftString then
              begin
                texto := s.q.Fields[i].AsString;
                while ExisteString(texto, '''') do
                begin
                  texto := RemoverChar(texto, '''')
                end;
                sql := sql + quotedstr(texto)
              end
              else if s.q.Fields[i].DataType = ftTimeStamp then
              begin
                sql := sql + quotedstr(FormatDateTime(__tsbanco, s.q.fields[i].AsDateTime));
              end
              else if s.q.Fields[i].DataType = ftDateTime then
              begin
                if copy(s.q.fields[i].FieldName, 1, 2) = 'DT' then
                begin
                  sql := sql + GetDtBanco(s.q.fields[i].asdatetime)
                end
                else
                begin
                  sql := sql + quotedstr(s.q.fields[i].asstring);
                end;
              end
              else if s.q.Fields[i].DataType = ftCurrency then
              begin
                sql := sql + substituir(s.q.fields[i].AsString, ',', '.')
              end
              else if s.q.Fields[i].DataType = ftBlob then
              begin
                texto := s.q.Fields[i].AsString;
                text := '';
                for y := 1 to length(texto) do
                begin
                  letra := texto[y];
                  if texto[y] = '''' then
                  begin
                    letra := ''''+'''';
                  end;
                  text := text + letra;
                end;
                sql := sql + quotedstr(text)
              end
              else
              begin
                sql := sql + s.q.fields[i].AsString;
              end;
            end;
          end;
          if bosair then
          begin
            s.q.Next;
            Continue;
          end;
          sql := sql + ' where CD'+tbl+'='+s.q.fieldbyname(_cd+tbl).AsString;
          Inc(posicaoTabela);
          arquivo.Insert(posicaotabela, sql+';');
        end;
        s.q.Next;
      end;
      result := true;
    finally
      freeandnil(s);
    end;
  end;
begin
  result := true;
  inserirTabela(arquivo, tbl);
  inserirChave(arquivo, tbl, cdtbl);
end;

function Replicacao_Exportar(tbl, cdtabela: string; cdfields:TStrings):boolean;
var
  seqtabela, arquivo : TStrings;
  diretorio : string;
begin
  arquivo   := TStringList.create;
  seqtabela := TStringList.create;
  try
    inserir_registro(arquivo, tbl, cdtabela, cdfields, true, false, false);
    diretorio := QRotinas.getdiretorio;
    if diretorio = '' then
    begin
      result := False;
      Exit;
    end;
    arquivo.text := 'delete from '+tbl+' where cd'+tbl+'='+cdtabela+';'#13+arquivo.Text;
    arquivo.SaveToFile(diretorio+'\'+tbl+' '+cdtabela+'.rep');
    result := true;
  finally
    freeandnil(arquivo);
    freeandnil(seqtabela);
  end;
end;

end.
