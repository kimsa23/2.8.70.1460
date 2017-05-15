unit classerecalculocustomedio;

interface

uses
  System.Actions, System.UITypes,
  forms, dialogs, gauges, classes, sysutils, controls, windows,
  DB, dbclient,
  ustrings, uprogressbar, uregistro, udatahora, uconstantes, unumero,
  classeempresa, classeretornasql,
  classeaplicacao, classeusuario, classeexecutasql, classequery;

type
  TRecalculoCustoMedio = class(TObject)
  private
    e, s, t, m : TClasseQuery;
    h, p : tclientdataset;
    sql : tstrings;
    dti, dtf : TDate;
    hrinclusao, sqlwhere, tpdata : string;
    bonflivro:boolean;
    procedure AlterarStatusTriggers(tipo:string);
    procedure criar;
    procedure destruir;
    procedure excluir_registro_historico_acima_data_inicial;
    function  makesqlentrada   :string;
    function  makesqlmovto     :string;
    function  makesqlsaida     :string;
    procedure makeupdatehcustomedio;
    procedure makeupdateproduto;
    procedure posicionar_estoque_customedio_produto_data_ultimo_historico(cdgrupo, cdproduto: TStrings);
    procedure processar_entrada;
    procedure Processar_Movto(linha:TStrings);
    procedure Processar_Saida;
    procedure setClientHCustoMedio;
    procedure setClientProduto;
    procedure setquery;
    function  SetSqlwhere(cdgrupo, cdproduto: TStrings):string;
    procedure zerar_estoque_customedio_saldovalor_produto;
  public
    constructor create;
    function Executar(linha : TStrings; cdproduto, cdgrupo:TStrings; di, df: TDate; tpdt :string; trigger:boolean=true;mesames:boolean=false;bonflivrop:boolean=false):boolean;
  end;

implementation

procedure TRecalculoCustoMedio.AlterarStatusTriggers(tipo:string);
begin
  sql.add('alter trigger itentrada_after_delete '+tipo);
  sql.add('alter trigger ITENTRADA_AI0_VALORVENDAPRODUTO '+tipo);
  sql.add('alter trigger ITENTRADA_AI1_BAIXASUBPRODUTO '  +tipo);
  sql.add('alter trigger ITENTRADA_AI2_SALDOVALORPRODUTO '+tipo);
  sql.add('alter trigger ITENTRADA_AI3_DEVOLUCAO '        +tipo);
  sql.add('alter trigger ITENTRADA_AI4_LOTE '             +tipo);
  sql.add('alter trigger ITENTRADA_AI5_ATUALIZARORDCOMPR '+tipo);
  sql.add('alter trigger ITENTRADA_AU0_VALORVENDAPRODUTO '+tipo);
  sql.add('alter trigger ITENTRADA_AU1_BAIXASUBPRODUTO '+tipo);
  sql.add('alter trigger ITENTRADA_AU2_SALDOVALORPRODUTO '+tipo);
  sql.add('alter trigger ITENTRADA_AU3_DEVOLUCAO '+tipo);
  sql.add('alter trigger ITENTRADA_AU4_LOTE '+tipo);
  sql.add('alter trigger ITENTRADA_AU5_ATUALIZARORDCOMPR '+tipo);
  //
  sql.add('alter trigger itmovto_after_delete '+tipo);
  sql.add('alter trigger itmovto_after_insert '+tipo);
  sql.add('alter trigger itmovto_after_update '+tipo);
  //
  sql.add('alter trigger itsaida_after_delete '+tipo);
  sql.add('alter trigger itsaida_after_insert '+tipo);
  sql.add('alter trigger itsaida_after_update '+tipo);
end;

procedure TRecalculoCustoMedio.zerar_estoque_customedio_saldovalor_produto;
begin
  p.First;
  frmprogressbar.gau.MaxValue := p.RecordCount;
  while not p.Eof do
  begin
    frmprogressbar.gau.Progress := p.RecNo;
    frmprogressbar.pnl.Caption := 'Zerar Estoque Médio... Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
    application.ProcessMessages;
    if p.FieldByName(_tsinclusao).AsDateTime >= dti then
    begin
      p.Edit;
      p.FieldByName(_qtestoque).AsCurrency    := 0;
      p.FieldByName(_vlcustomedio).AsCurrency := 0;
      p.fieldbyname(_vlsaldovalor).AsCurrency := 0;
      p.Post;
    end;
    p.Next;
  end;
end;

procedure TRecalculoCustoMedio.excluir_registro_historico_acima_data_inicial;
var
  s : string;
begin
  s := 'delete from hcustomedio where cdempresa='+empresa.cdempresa.ToString+' and dthistorico>='+getdtbanco(dti)+' ';
  if sqlwhere <> '' then
  begin
    s := s + 'and cdproduto in (select cdproduto from produto P where p.cdempresa='+empresa.cdempresa.ToString+' and '+sqlwhere+')';
  end;
  s := s + ';';
  sql.add(s);
end;

function TRecalculoCustoMedio.SetSqlwhere(cdgrupo, cdproduto: TStrings):string;
var
  nunivel : string;
  q : TClasseQuery;
  i : integer;
begin
  result := '';
  if cdgrupo.count > 0 then
  begin
    if cdproduto.count > 0 then
    begin
      result := '( ';
    end;
    result := result + 'p.cdgrupo in (';
    q := TClasseQuery.create;
    try
      for I := 0 to cdgrupo.Count - 1 do
      begin
        if i <> 0 then
        begin
          result := result + ', ';
        end;
        result := result + ' '+cdgrupo[i];
        nunivel := nomedocodigo(_grupo, cdgrupo[i], _nunivel); // verificar se é subgrupo
        if (length(nunivel) = 4) or (length(nunivel) = 1) then
        begin
          q.q.close;
          q.q.open('select cdgrupo from grupo where cdempresa='+empresa.cdempresa.ToString+' and nunivel like '''+nunivel+'%''');
          while not q.q.eof do
          begin
            result := result + ', '+q.q.fields[0].asstring;
            q.q.next;
          end;
        end;
      end;
    finally
      freeandnil(q);
    end;
    result := result + ') ';
  end;

  if cdproduto.count > 0 then
  begin
    if cdgrupo.Count > 0 then
    begin
      result := result + ' or ';
    end;
    result := result + 'p.cdproduto in (';
    for I := 0 to cdproduto.Count - 1 do
    begin
      if i <> 0 then
      begin
        result := result + ', ';
      end;
      result := result + ' '+cdproduto[i]
    end;
    result := result + ') ';
  end;
  if (cdproduto.count > 0) and (cdgrupo.count > 0) then
  begin
    result := result + ')';
  end;
end;

procedure TRecalculoCustoMedio.posicionar_estoque_customedio_produto_data_ultimo_historico(cdgrupo, cdproduto: TStrings);
var
  qh : TClasseQuery;
begin
  qh   := TClasseQuery.create;
  try
    frmprogressbar.gau.MaxValue := p.RecordCount;
    p.First;
    while not p.eof do
    begin
      frmprogressbar.gau.Progress := p.RecNo;
      frmprogressbar.pnl.Caption  := 'Posicionar Custo Médio... Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
      application.ProcessMessages;
      {if p.fieldbyname(_tsinclusao).AsDateTime >= dti then
      begin
        p.Next;
        continue;
      end;}
      if formatdatetime(_dd_mm_yyyy, p.fieldbyname(_dthistorico).AsDateTime) = _30_12_1899 then
      begin
        p.Edit;
        p.FieldByName(_qtestoque).AsCurrency    := 0;
        p.FieldByName(_vlcustomedio).AsCurrency := 0;
        p.FieldByName(_vlsaldovalor).AsCurrency := 0;
        p.Post;
      end
      else
      begin
        qh.q.close;
        qh.q.Open('select qtestoque'+
                                ',vlcustomedio'+
                                ',vlsaldovalor'+
                                ',cdproduto'+
                                ',dthistorico '+
                          'from hcustomedio '+
                          'where cdempresa='+empresa.cdempresa.ToString+' and cdproduto='+p.fieldbyname(_cdproduto).asstring+' and dthistorico='+getdtbanco(p.fieldbyname(_dthistorico).asdatetime)+';');
        if (p.fieldbyname(_qtestoqueh   ).ascurrency<>qh.q.fieldbyname(_qtestoque).Ascurrency) or
           (p.fieldbyname(_vlcustomedioh).asstring  <>qh.q.fieldbyname(_vlcustomedio).AsString) or
           (p.fieldbyname(_vlsaldovalorh).asstring  <>qh.q.fieldbyname(_vlsaldovalor).AsString) then
        begin
          showmessage('Produto: '     +p.fieldbyname (_cdproduto).asstring+#13+
                      'qtestoque: '   +p.fieldbyname (_qtestoqueh).asstring+#13+
                      'historico: '   +qh.q.fieldbyname(_qtestoque).AsString+#13+
                      'vlcustomedio: '+p.fieldbyname (_vlcustomedioh).asstring+#13+
                      'historico: '   +qh.q.fieldbyname(_vlcustomedio).AsString+#13+
                      'vlsaldovalor: '+p.fieldbyname (_vlsaldovalorh).asstring+#13+
                      'historico: '   +qh.q.fieldbyname(_vlsaldovalor).AsString);
        end;
        p.Edit;
        p.FieldByName(_qtestoque).AsCurrency    := qh.q.fieldbyname(_qtestoque).AsCurrency;
        p.fieldbyname(_vlcustomedio).AsCurrency := qh.q.fieldbyname(_vlcustomedio).AsCurrency;
        p.FieldByName(_vlsaldovalor).AsCurrency := qh.q.fieldbyname(_vlsaldovalor).AsCurrency;
        p.Post;
      end;
      p.next;
    end;
  finally
    freeandnil(qh);
  end;
end;

function TRecalculoCustoMedio.makesqlentrada:string;
begin
  result := 'select i.cdproduto'+
                  ',i.qtitem'+
                  ',i.vltotal'+
                  ',i.vlcofins'+
                  ',i.vlpis'+
                  ',i.vlicms'+
                  ',i.vlipi'+
                  ',i.tsinclusao'+
                  ',i.vlcustomedio'+
                  ',i.cdentrada'+
                  ',i.cditentrada'+
                  ',i.vlunitario'+
                  ',i.vlfrete'+
                  ',i.vldesconto'+
                  ',i.vlsaldovalor'+
                  ',i.borecuperaipi'+
                  ',i.borecuperaicms'+
                  ',i.borecuperapis'+
                  ',i.borecuperacofins'+
                  ',i.vloutdespesa' +
                  ',i.vlseguro'+
                  ',i.vlicmssubtrib' +
                  ',e.nuentrada'+
                  ',e.dtsaida '+
            'from itentrada i '+
            'inner join entrada e on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
            'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=e.cdempresa '+
            'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
            'inner join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and tp.cdempresa=p.cdempresa ' +
            'where i.cdempresa='+empresa.cdempresa.ToString+' and t.boestoque=''S'' and tp.boestoque=''S'' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
  if sqlwhere <> '' then
  begin
    result := result + ' and ' + sqlwhere;
  end;
  result := result + ' order by e.dtsaida,e.nuentrada,i.cditentrada';
end;

function TRecalculoCustoMedio.makesqlsaida:string;
begin
  result := 'select t.tpentsai'+
                  ',i.cdproduto'+
                  ',i.qtitem'+
                  ',i.vltotal'+
                  ',i.vlcofins'+
                  ',i.vlpis'+
                  ',i.vlicms'+
                  ',i.vlipi'+
                  ',i.tsinclusao'+
                  ',i.vlcustomedio'+
                  ',i.cdsaida'+
                  ',i.cditsaida'+
                  ',i.vlunitario'+
                  ',i.vlfrete'+
                  ',i.vldesconto'+
                  ',i.vlsaldovalor'+
                  ',i.vloutdespesa'+
                  ',i.vlseguro'+
                  ',i.vlicmssubtrib'+
                  ',i.borecuperaicms'+
                  ',i.borecuperapis'+
                  ',i.borecuperacofins'+
                  ',i.borecuperaipi'+
                  ',s.nusaida'+
                  ',s.'+tpdata+' dtsaida'+
                  ',s.boimportacao '+
            'from itsaida i '+
            'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
            'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
            'inner join cfop c on c.cdcfop=i.cdcfop '+
            'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
            'inner join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and tp.cdempresa=p.cdempresa ' +
            'where i.cdempresa='+empresa.cdempresa.ToString+' and s.'+tpdata+' between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and (s.nustdocumento<>''02'') and (i.cdstitsaida<>2 or i.cdstitsaida is null) and t.boestoque=''S'' and tp.boestoque=''S'' ';
  if sqlwhere <> '' then
  begin
    result := result + ' and ' + sqlwhere;
  end;
  if bonflivro then
  begin
    sqlwhere := sqlwhere + _and+' c.BOLIVROPRODUCAO=''S'' ';
  end;
  result := result + ' order by s.'+tpdata+',nusaida,i.cditsaida';
end;

function TRecalculoCustoMedio.makesqlmovto:string;
begin
  result := 'select tpmovto'+
                  ',i.cdproduto'+
                  ',i.qtitem'+
                  ',i.tsinclusao'+
                  ',i.cdmovto'+
                  ',i.vlunitario'+
                  ',i.vlsaldovalor'+
                  ',i.vltotal'+
                  ',m.dtemissao'+
                  ',i.cditmovto'+
                  ',t.bovalor '+
            'from itmovto i '+
            'inner join movto m on m.cdmovto=i.cdmovto and i.cdempresa=m.cdempresa '+
            'inner join tpmovto t on t.cdtpmovto=m.cdtpmovto and t.cdempresa=m.cdempresa '+
            'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
            'inner join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and tp.cdempresa=p.cdempresa ' +
            'where i.cdempresa='+empresa.cdempresa.ToString+' and tp.boestoque=''S'' and m.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' ';
  if sqlwhere <> '' then
  begin
    result := result + ' and ' + sqlwhere;
  end;
  result := result + ' order by m.dtemissao,t.tpmovto,i.cdmovto,i.cditmovto';
end;

procedure TRecalculoCustoMedio.makeupdatehcustomedio;
begin
  h.First;
  frmprogressbar.gau.MaxValue := h.RecordCount;
  while not h.Eof do
  begin
    frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
    frmprogressbar.pnl.Caption := 'Atualizando Produtos... Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
    Application.ProcessMessages;
    sql.add('insert into hcustomedio(cdempresa,cdproduto,dthistorico,vlcustomedio,qtestoque,vlsaldovalor)values('+
            empresa.cdempresa.ToString+','+
            h.fieldbyname(_cdproduto).AsString+','+
            getdtbanco(h.fieldbyname(_dthistorico).Asdatetime)+','+
            getcurrencys(h.fieldbyname(_vlcustomedio).AsCurrency)+','+
            getcurrencys(h.fieldbyname(_qtestoque).AsCurrency)+','+
            getcurrencys(h.fieldbyname(_vlsaldovalor).AsCurrency)+');');
    h.Next;
  end;
end;

procedure TRecalculoCustoMedio.makeupdateproduto;
begin
  p.First;
  frmprogressbar.gau.MaxValue := p.RecordCount;
  while not p.Eof do
  begin
    frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
    frmprogressbar.pnl.Caption := 'Atualizando Produtos... Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
    Application.ProcessMessages;
    sql.add('update produto '+
            'set qtestoque='+getcurrencys(p.fieldbyname(_qtestoque).ascurrency)+
            ',vlcustomedio='+getcurrencys(p.fieldbyname(_vlcustomedio).ascurrency)+
            ',vlsaldovalor='+getcurrencys(p.fieldbyname(_vlsaldovalor).ascurrency)+' '+
            'where cdempresa='+empresa.cdempresa.ToString+' and cdproduto='+p.fieldbyname(_cdproduto).AsString+';');
    p.Next;
  end;
end;

procedure TRecalculoCustoMedio.processar_entrada;
  function vltotal:Currency;
  begin
    result := e.q.fieldbyname(_vltotal).ascurrency      + e.q.fieldbyname(_vlfrete).ascurrency -
              e.q.fieldbyname(_vldesconto).ascurrency   + e.q.fieldbyname(_vlipi).ascurrency   +
              e.q.fieldbyname(_vloutdespesa).ascurrency + e.q.fieldbyname(_vlseguro).ascurrency+
              e.q.fieldbyname(_vlicmssubtrib).ascurrency;
    if e.q.FieldByName(_borecuperaicms).AsString   = _S then result := result - e.q.fieldbyname(_vlicms).ascurrency;
    if e.q.FieldByName(_borecuperapis).AsString    = _S then result := result - e.q.fieldbyname(_vlpis).ascurrency;
    if e.q.FieldByName(_borecuperacofins).AsString = _S then result := result - e.q.fieldbyname(_vlcofins).ascurrency;
    if e.q.fieldbyname(_borecuperaipi).asstring    = _S then result := result - e.q.fieldbyname(_vlipi).ascurrency;
  end;
begin
  while not e.q.eof do
  begin
    if e.q.fieldbyname(_dtsaida).AsDateTime > dti then
    begin
      break;
    end;
    if not p.FindKey([e.q.fieldbyname(_cdproduto).asstring]) then
    begin
      break;
    end;
    frmprogressbar.pnl.Caption  := 'Tabela Compra '+FormatDateTime(_dd_mm_yyyy, dti)+' Registro '+inttostr(m.q.RecNo)+' de '+inttostr(m.q.RecordCount);
    application.ProcessMessages;
    p.Edit;
    p.FieldByName(_qtestoque).Ascurrency := p.fieldbyname(_qtestoque).Ascurrency + e.q.fieldbyname(_qtitem).Ascurrency;
    p.fieldbyname(_vlsaldovalor).ascurrency := p.fieldbyname(_vlsaldovalor).ascurrency + vltotal;
    if p.fieldbyname(_qtestoque).ascurrency <= 0 then
    begin
      p.fieldbyname(_vlsaldovalor).AsCurrency := 0;
    end
    else
    begin
      p.fieldbyname(_vlcustomedio).ascurrency := p.fieldbyname(_vlsaldovalor).ascurrency / p.fieldbyname(_qtestoque).ascurrency;
    end;
    sql.add('update itentrada '+
            'set vlcustomedio='+getcurrencys(p.fieldbyname(_vlcustomedio).Ascurrency)+
            ',vlsaldovalor='  +getcurrencys(p.fieldbyname(_vlsaldovalor).ascurrency)+' '+
            'where cdempresa='+empresa.cdempresa.ToString+' '+
            'and cdentrada='+e.q.fieldbyname(_cdentrada).asstring+' '+
            'and cditentrada='+e.q.fieldbyname(_cditentrada).asstring+';');
    p.Post;
    if h.FindKey([e.q.fieldbyname(_cdproduto).asstring, e.q.fieldbyname(_dtsaida).AsDateTime]) then
    begin
      h.Edit
    end
    else
    begin
      h.Insert;
      h.fieldbyname(_cdproduto).asinteger    := e.q.fieldbyname(_cdproduto).asinteger;
      h.fieldbyname(_dthistorico).AsDateTime := e.q.fieldbyname(_dtsaida).AsDateTime;
    end;
    h.fieldbyname(_qtestoque).AsCurrency    := p.fieldbyname(_qtestoque).AsCurrency;
    h.fieldbyname(_vlcustomedio).AsCurrency := p.fieldbyname(_vlcustomedio).Ascurrency;
    h.fieldbyname(_vlsaldovalor).ascurrency := p.fieldbyname(_vlsaldovalor).ascurrency;
    h.post;
    e.q.Next;
  end;
end;

procedure TRecalculoCustoMedio.Processar_Saida;
  function vltotal:currency;
  begin
    result := s.q.fieldbyname(_vltotal     ).ascurrency + s.q.fieldbyname(_vlfrete      ).ascurrency -
              s.q.fieldbyname(_vldesconto  ).ascurrency + s.q.fieldbyname(_vlipi        ).ascurrency   +
              s.q.fieldbyname(_vloutdespesa).ascurrency + s.q.fieldbyname(_vlseguro     ).ascurrency   +
              s.q.fieldbyname(_vlicmssubtrib).ascurrency;
    if s.q.FieldByName(_borecuperaicms  ).AsString = _S then result := result - s.q.fieldbyname(_vlicms  ).ascurrency;
    if s.q.FieldByName(_borecuperapis   ).AsString = _S then result := result - s.q.fieldbyname(_vlpis   ).ascurrency;
    if s.q.FieldByName(_borecuperacofins).AsString = _S then result := result - s.q.fieldbyname(_vlcofins).ascurrency;
    if s.q.fieldbyname(_borecuperaipi   ).asstring = _S then result := result - s.q.fieldbyname(_vlipi   ).ascurrency;
  end;
begin
  while not s.q.eof do
  begin
    if (s.q.fieldbyname(_dtsaida).AsDateTime > dti) or (not p.FindKey([s.q.fieldbyname(_cdproduto).asstring])) then
    begin
      break;
    end;
    frmprogressbar.pnl.Caption  := 'Tabela Nota Fiscal '+FormatDateTime(_dd_mm_yyyy, dti)+' Registro '+inttostr(m.q.RecNo)+' de '+inttostr(m.q.RecordCount);
    application.ProcessMessages;
    p.Edit;
    if s.q.FieldByName(_tpentsai).AsString = _S then
    begin
      p.FieldByName(_qtestoque).Ascurrency := p.fieldbyname(_qtestoque).Ascurrency - s.q.fieldbyname(_qtitem).Ascurrency;
      p.fieldbyname(_vlsaldovalor).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency - (p.fieldbyname(_vlcustomedio).AsCurrency * s.q.fieldbyname(_qtitem).AsCurrency);
      if p.Fieldbyname(_qtestoque).AsCurrency <= 0 then
      begin
        p.fieldbyname(_vlsaldovalor).AsCurrency := 0;
      end;
      sql.add('update itsaida '+
              'set vlcustomedio='+getcurrencys(p.fieldbyname(_vlcustomedio).AsCurrency)+
              ',vlsaldovalor='  +getcurrencys(p.fieldbyname(_vlsaldovalor).AsCurrency)+' '+
              'where cdempresa='+empresa.cdempresa.ToString+' '+
              'and cditsaida='  +s.q.fieldbyname(_cditsaida).Asstring+';')
    end
    else if s.q.fieldbyname(_tpentsai).Asstring = _E then
    begin
      p.fieldbyname(_qtestoque).AsCurrency    := p.fieldbyname(_qtestoque).AsCurrency + s.q.fieldbyname(_qtitem).AsCurrency;
      if (s.q.fieldbyname(_boimportacao).Asstring = _S) or (p.fieldbyname(_vlcustomedio).AsCurrency = 0) then
      begin
        p.fieldbyname(_vlsaldovalor).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency + vltotal;
        if p.fieldbyname(_qtestoque).AsCurrency = 0 then
        begin
          messagedlg('O produto '+s.q.fieldbyname(_cdproduto).Asstring+' está negativo.'#13'Verifique a ficha de movimentação e corrija o estoque antes de continuar.', mtInformation, [mbOK], 0);
          Abort;
        end;
        p.fieldbyname(_vlcustomedio).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency / p.fieldbyname(_qtestoque).AsCurrency;
      end
      else
      begin
        p.fieldbyname(_vlsaldovalor).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency + (p.fieldbyname(_vlcustomedio).AsCurrency *
                                                                                                s.q.fieldbyname(_qtitem).AsCurrency);
      end;
      sql.add('update itsaida '+
              'set vlcustomedio='+getcurrencys(p.fieldbyname(_vlcustomedio).AsCurrency)+
              ',vlsaldovalor='  +getcurrencys(p.fieldbyname(_vlsaldovalor).AsCurrency)+' '+
              'where cdempresa='+empresa.cdempresa.ToString+' '+
              'and cditsaida='  +s.q.fieldbyname(_cditsaida).Asstring+';');
    end;
    p.Post;
    if h.FindKey([s.q.fieldbyname(_cdproduto).Asstring, s.q.fieldbyname(_dtsaida).AsDateTime]) then
    begin
      h.Edit
    end
    else
    begin
      h.Insert;
      h.fieldbyname(_cdproduto).Asstring   := s.q.fieldbyname(_cdproduto).Asstring;
      h.fieldbyname(_dthistorico).Asstring := s.q.fieldbyname(_dtsaida).Asstring;
    end;
    h.fieldbyname(_qtestoque).AsCurrency    := p.fieldbyname(_qtestoque).AsCurrency;
    h.fieldbyname(_vlcustomedio).AsCurrency := p.fieldbyname(_vlcustomedio).AsCurrency;
    h.fieldbyname(_vlsaldovalor).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency;
    h.post;
    s.q.Next;
  end;
end;

procedure TRecalculoCustoMedio.Processar_Movto;
var
  vltotal : Currency;
  {
  frequency : Int64;
  startTime : Int64;
  endTime   : Int64;
  delta     : Extended;
  }
begin
  while not m.q.Eof do
  begin
    if (m.q.fieldbyname(_dtemissao).AsDateTime > dti) or (not p.FindKey([m.q.fieldbyname(_cdproduto).Asstring])) then
    begin
      break;
    end;
    frmprogressbar.pnl.Caption := 'Tabela Movimentação de Estoque '+FormatDateTime(_dd_mm_yyyy, dti)+' Registro '+inttostr(m.q.RecNo)+' de '+inttostr(m.q.RecordCount);
    application.ProcessMessages;
    {
    QueryPerformanceFrequency(frequency);
    QueryPerformanceCounter(startTime);
    }
    p.edit;
    if m.q.Fieldbyname(_tpmovto).AsString = _S then
    begin
      if m.q.Fieldbyname(_bovalor).Asstring = _S then // alterar valor unitario e valor total do movimento
      begin
        sql.add('update itmovto '+
                'set vlunitario='+getcurrencys(p.fieldbyname(_vlcustomedio).AsCurrency)+' '+
                ',vltotal='     +getcurrencys(m.q.fieldbyname(_qtitem).AsCurrency * p.fieldbyname(_vlcustomedio).AsCurrency)+' '+
                'where cdempresa='+empresa.cdempresa.ToString+' and cdmovto='+m.q.fieldbyname(_cd+_movto).Asstring+' and cditmovto='+m.q.fieldbyname(_cditmovto).Asstring+';');
        p.fieldbyname(_vlsaldovalor).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency - (m.q.fieldbyname(_qtitem).AsCurrency * p.fieldbyname(_vlcustomedio).AsCurrency);
      end
      else
      begin
        p.fieldbyname(_vlsaldovalor).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency - m.q.fieldbyname(_vltotal).AsCurrency;
      end;
      p.fieldbyname(_qtestoque).AsCurrency := p.fieldbyname(_qtestoque).AsCurrency - m.q.fieldbyname(_qtitem).AsCurrency;
      if p.fieldbyname(_qtestoque).AsCurrency <= 0 then
      begin
        p.Fieldbyname(_vlsaldovalor).AsCurrency := 0;
      end;
      if p.fieldbyname(_qtestoque).AsCurrency < 0 then
      begin
        linha.add(FormatarTextoEsquerda(m.q.fieldbyname(_cd+_movto).Asstring, 6)+' '+
                  p.fieldbyname(_qtestoque).Asstring+' '+
                  FormatarDataAbreviada(m.q.fieldbyname(_dtemissao).AsDateTime, 10)+' '+
                  FormatarTextoEsquerda(m.q.fieldbyname(_qtitem).Asstring, 14)+' '+
                  FormatarTextoEsquerda(m.q.fieldbyname(_cdproduto).Asstring, 6)+' '+
                  NomedoCodigo(_produto, m.q.fieldbyname(_cdproduto).Asstring));
      end;
    end
    else if m.q.fieldbyname(_tpmovto).Asstring = _E then
    begin
      vltotal := m.q.fieldbyname(_vltotal).AsCurrency; // alterar valor unitario e valor total do movimento
      if (p.Fieldbyname(_qtestoque).AsFloat < 0) and (p.fieldbyname(_qtestoque).AsFloat + m.q.fieldbyname(_qtitem).AsFloat>0) then
      begin
        vltotal := m.q.fieldbyname(_vlunitario).AsCurrency * (p.fieldbyname(_qtestoque).AsFloat + m.q.fieldbyname(_qtitem).AsFloat);
      end;
      p.Fieldbyname(_qtestoque).AsCurrency := p.fieldbyname(_qtestoque).AsCurrency + m.q.fieldbyname(_qtitem).AsCurrency;
      if m.q.Fieldbyname(_bovalor).Asstring = _S then
      begin
        sql.add('update itmovto '+
                'set vlunitario='+getcurrencys(p.fieldbyname(_vlcustomedio).AsCurrency)+',vltotal='+getcurrencys(m.q.fieldbyname(_qtitem).AsCurrency * p.fieldbyname(_vlcustomedio).AsCurrency)+' '+
                'where cdempresa='+empresa.cdempresa.ToString+' and cdmovto='+m.q.fieldbyname(_cd+_movto).Asstring+' and cditmovto='+m.q.fieldbyname(_cditmovto).Asstring+';');

        p.fieldbyname(_vlsaldovalor).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency + (m.q.fieldbyname(_qtitem).AsCurrency * p.fieldbyname(_vlcustomedio).AsCurrency);
      end
      else
      begin
        p.fieldbyname(_vlsaldovalor).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency + vltotal;
        if p.fieldbyname(_qtestoque).AsCurrency <= 0 then p.fieldbyname(_vlsaldovalor).AsCurrency := 0
                                                     else p.fieldbyname(_vlcustomedio).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency / p.fieldbyname(_qtestoque).AsCurrency;
      end;
    end;
    {
    QueryPerformanceCounter(endTime);
    delta := (endTime - startTime) / frequency;
    ShowMessage(FloatToStr(delta)+' p.edit');
    QueryPerformanceFrequency(frequency);
    QueryPerformanceCounter(startTime);
    }
    p.Post;
    {
    QueryPerformanceCounter(endTime);
    delta := (endTime - startTime) / frequency;
    ShowMessage(FloatToStr(delta)+' p.post');
    QueryPerformanceFrequency(frequency);
    QueryPerformanceCounter(startTime);
    }
    sql.add('update itmovto set vlsaldovalor='+getcurrencys(p.fieldbyname(_vlsaldovalor).AsCurrency)+' where cdempresa='+empresa.cdempresa.ToString+' and cdmovto='+m.q.fieldbyname(_cd+_movto).Asstring+' and cditmovto='+m.q.fieldbyname(_cditmovto).Asstring+';');
    if h.FindKey([m.q.fieldbyname(_cdproduto).Asstring, m.q.fieldbyname(_dtemissao).AsDateTime]) then
    begin
      h.Edit
    end
    else
    begin
      h.Insert;
      h.fieldbyname(_cdproduto).Asstring   := m.q.fieldbyname(_cdproduto).Asstring;
      h.fieldbyname(_dthistorico).Asstring := m.q.fieldbyname(_dtemissao).Asstring;
    end;
    h.fieldbyname(_qtestoque).AsCurrency    := p.fieldbyname(_qtestoque).AsCurrency;
    h.fieldbyname(_vlcustomedio).AsCurrency := p.fieldbyname(_vlcustomedio).AsCurrency;
    h.fieldbyname(_vlsaldovalor).AsCurrency := p.fieldbyname(_vlsaldovalor).AsCurrency;
    h.post;
    {
    QueryPerformanceCounter(endTime);
    delta := (endTime - startTime) / frequency;
    ShowMessage(FloatToStr(delta)+' h.post');
    }
    m.q.next;
  end;
end;

function TRecalculoCustoMedio.Executar(linha : TStrings; cdproduto, cdgrupo:TStrings; di, df: TDate; tpdt :string; trigger:boolean=true;mesames:boolean=false;bonflivrop:boolean=false):boolean;
var
  mes: string;
  dtia, dtfa: TDate;
begin
  dti        := di;
  dtf        := df;
  tpdata     := tpdt;
  bonflivro  := bonflivrop;
  hrinclusao := HrServer;
  criar;
  try
    frmprogressbar.Show;
    if trigger then
    begin
      AlterarStatusTriggers('inactive');
    end;
    sqlwhere := setsqlwhere(cdgrupo, cdproduto);
    setClientProduto;
    setClienthcustomedio;
    zerar_estoque_customedio_saldovalor_produto;
    posicionar_estoque_customedio_produto_data_ultimo_historico(cdgrupo, cdproduto);
    excluir_registro_historico_acima_data_inicial;
    dtia := dti;
    dtfa := dtf;
    repeat
      if mesames then
      begin
        dti := dtia;
        mes := formatdatetime(_mm, dtia);
        while (mes = formatdatetime(_mm, dtia)) or (dtia <= dtfa) do
        begin
          dtia := dtia + 1;
        end;
        if dtia > dtfa then
        begin
          mesames := false;
        end;
        dtf := dtia - 1;
      end;
      setquery;
      frmprogressbar.gau.MaxValue := diferencadias(dtf, dti);;
      frmprogressbar.gau.Progress := 0;
      while dti <= dtf do
      begin
        frmprogressbar.pnl.Caption  := 'Tabela Compra '+FormatDateTime(_dd_mm_yyyy, dti);
        frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
        application.ProcessMessages;
        processar_entrada;
        frmprogressbar.pnl.Caption  := 'Tabela Nota Fiscal '+FormatDateTime(_dd_mm_yyyy, dti);
        application.ProcessMessages;
        processar_saida;
        frmprogressbar.pnl.Caption  := 'Tabela Movimentação de Estoque '+FormatDateTime(_dd_mm_yyyy, dti);
        application.ProcessMessages;
        processar_movto(linha);
        dti := dti + 1;
      end;
    until not mesames;
    makeupdateproduto;
    makeupdatehcustomedio;
    if trigger then
    begin
      AlterarStatusTriggers('active');
    end;
    ExecutaScript(sql);
    result := true;
  finally
    destruir;
  end;
end;

procedure TRecalculoCustoMedio.criar;
begin
  sql := TStringList.create;

  t   := TClasseQuery.create;
  e   := TClasseQuery.create;
  m   := TClasseQuery.create;
  s   := TClasseQuery.create;

  p   := TClientDataSet.create(nil);
  h   := TClientDataSet.create(nil);
  frmprogressbar := TFrmProgressbar.create(nil);
end;

procedure TRecalculoCustoMedio.destruir;
begin
  freeandnil(sql);
  freeandnil(t);
  freeandnil(e);
  freeandnil(m);
  freeandnil(p);
  freeandnil(s);
  freeandnil(h);
  freeandnil(frmprogressbar);
end;

procedure TRecalculoCustoMedio.setquery;
begin
  e.q.Close;
  s.q.Close;
  m.q.close;
  frmprogressbar.pnl.Caption := 'Abrindo a tabela de Compra';
  Application.ProcessMessages;
  e.q.open(makesqlentrada);
  frmprogressbar.pnl.Caption := 'Abrindo a tabela de Nota Fiscal';
  Application.ProcessMessages;
  s.q.open(makesqlsaida);
  frmprogressbar.pnl.Caption := 'Abrindo a tabela de Movimentação de Estoque';
  Application.ProcessMessages;
  m.q.open(makesqlmovto);
end;

procedure TRecalculoCustoMedio.setClientProduto;
  procedure SetClient;
  begin
    p.FieldDefs.Add(_cdproduto       , ftinteger);
    p.FieldDefs.Add(_qtestoque       , ftcurrency);
    p.FieldDefs.Add(_qtestoqueh      , ftcurrency);
    p.FieldDefs.Add(_vlcustomedio    , ftcurrency);
    p.FieldDefs.Add(_vlcustomedioh   , ftcurrency);
    p.FieldDefs.Add(_vlsaldovalor    , ftcurrency);
    p.FieldDefs.Add(_vlsaldovalorh   , ftcurrency);
    p.FieldDefs.Add(_borecuperaipi   , ftstring, 1);
    p.FieldDefs.Add(_borecuperaicms  , ftstring, 1);
    p.FieldDefs.Add(_borecuperapis   , ftstring, 1);
    p.FieldDefs.Add(_borecuperacofins, ftstring, 1);
    p.FieldDefs.Add(_tsinclusao      , ftDateTime);
    p.FieldDefs.Add(_dthistorico     , ftdate);
    p.CreateDataSet;
    p.Open;
    p.AddIndex(_pk, _cdproduto, [ixunique, ixprimary]);
    p.IndexName := _pk;
  end;
  procedure Inserir_Registros;
  var
    c : TClassequery;
    function makesql:string;
    begin
      result := 'select p.cdproduto'+
                      ',p.qtestoque'+
                      ',p.vlcustomedio'+
                      ',p.vlsaldovalor'+
                      ',p.borecuperaipi'+
                      ',p.borecuperaicms'+
                      ',p.borecuperapis'+
                      ',p.borecuperacofins'+
                      ',p.tsinclusao'+
                      ',h.qtestoque qtestoqueh'+
                      ',h.vlcustomedio vlcustomedioh'+
                      ',h.vlsaldovalor vlsaldovalorh'+
                      ',h.dthistorico '+
                'from produto p '+
                'left join hcustomedio h on p.cdempresa=h.cdempresa and h.cdproduto=p.cdproduto '+
                                       'and h.dthistorico=(select max(dthistorico) '+
                                                          'from hcustomedio '+
                                                          'where hcustomedio.cdempresa=p.cdempresa '+
                                                          'and hcustomedio.cdproduto=p.cdproduto '+
                                                          'and dthistorico<'+getdtbanco(dti)+') '+
                'where p.cdempresa='+empresa.cdempresa.ToString;
      if sqlwhere <> '' then
      begin
        result := result + ' and '+sqlwhere;
      end;
    end;
  begin
    c := TClasseQuery.Create(makesql);
    try
      frmprogressbar.gau.Progress := 0;
      frmprogressbar.gau.MaxValue := c.q.RecordCount;
      while not C.q.eof do
      begin
        frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
        frmprogressbar.pnl.Caption := 'Carregando Produtos... Registro '+inttostr(frmprogressbar.gau.Progress)+' de '+inttostr(frmprogressbar.gau.MaxValue);
        Application.ProcessMessages;
        p.Insert;
        p.Fieldbyname(_cdproduto).AsInteger       := c.q.fieldbyname(_cdproduto).AsInteger;
        p.Fieldbyname(_qtestoque).AsCurrency      := c.q.fieldbyname(_qtestoque).AsCurrency;
        p.Fieldbyname(_qtestoqueh).AsCurrency     := c.q.fieldbyname(_qtestoqueh).AsCurrency;
        p.Fieldbyname(_vlcustomedio).AsCurrency   := c.q.fieldbyname(_vlcustomedio).AsCurrency;
        p.Fieldbyname(_vlcustomedioh).AsCurrency  := c.q.fieldbyname(_vlcustomedioh).AsCurrency;
        p.fieldbyname(_vlsaldovalor).AsCurrency   := c.q.fieldbyname(_vlsaldovalor).AsCurrency;
        p.fieldbyname(_vlsaldovalorh).AsCurrency  := c.q.fieldbyname(_vlsaldovalorh).AsCurrency;
        p.Fieldbyname(_borecuperaipi).AsString    := c.q.fieldbyname(_borecuperaipi).AsString;
        p.Fieldbyname(_borecuperaicms).AsString   := c.q.fieldbyname(_borecuperaicms).AsString;
        p.Fieldbyname(_borecuperacofins).AsString := c.q.fieldbyname(_borecuperacofins).AsString;
        p.fieldbyname(_tsinclusao).AsDateTime     := c.q.fieldbyname(_tsinclusao).AsDateTime;
        p.fieldbyname(_dthistorico).AsDateTime    := c.q.fieldbyname(_dthistorico).AsDateTime;
        p.Post;
        c.q.next;
      end;
    finally
      freeandnil(c);
    end;
  end;
begin
  setclient;
  Inserir_Registros;
end;

procedure TRecalculoCustoMedio.setClientHCustoMedio;
begin
  h.FieldDefs.Add(_cdproduto       , ftinteger);
  h.FieldDefs.Add(_dthistorico     , ftdate);
  h.FieldDefs.Add(_vlcustomedio    , ftcurrency);
  h.FieldDefs.Add(_qtestoque       , ftcurrency);
  h.FieldDefs.Add(_vlsaldovalor    , ftcurrency);
  h.CreateDataSet;
  h.Open;
  h.AddIndex(_pk, _cdproduto+';'+_dthistorico, [ixunique, ixprimary]);
  h.IndexName := _pk;
end;

constructor TRecalculoCustoMedio.create;
begin
end;

end.
