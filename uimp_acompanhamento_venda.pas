unit uimp_acompanhamento_venda;

interface

uses
  Forms, Classes, Dialogs, SysUtils, Variants, Controls,
  DB,
  umontarsql, ustrings, uprogressbar, uconstantes, udatahora,
  classeretornasql, classeaplicacao, classeempresa, classeQuery;

procedure Report308AcompanhamentoVenda(mtbl: TDataClient; sqlwhere:TStrings);

implementation

Type
  TReport = class
  private
    q, qq, qi:TClasseQuery;
    mtbl: TDataClient;
    sqlwhere: TStrings;
    cdcliente, nmcontato, tipo : string;
    procedure criar_fields;
    procedure Exibir_gauge;
    function  getnum(recno:Integer):string;
    procedure inserir_cabecalho;
    procedure inserir_datas;
    procedure inserir_produto(dtemissao:string; recno: integer);
    procedure Selecionar_datas;
    procedure processar_gauge;
  public
    constructor create(mtbl2: TDataClient; sqlwhere_:TStrings);
    procedure   gerar;
  end;

procedure Report308AcompanhamentoVenda(mtbl: TDataClient; sqlwhere:TStrings);
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, sqlwhere);
  try
    rpt.gerar;
  finally
    rpt.sqlwhere.Free;
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient; sqlwhere_: TStrings);
begin
  mtbl          := mtbl2;
  sqlwhere      := TStringList.Create;
  sqlwhere.Text := sqlwhere_.Text;
  tipo          := sqlwhere[3]; 
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_rzsocial       , ftString, 100);
  mtbl.m.FieldDefs.Add(_nmcliente      , ftString, 100);
  mtbl.m.FieldDefs.Add(_dsendereco     , ftString, 100);
  mtbl.m.FieldDefs.Add(_dsnumero       , ftString, 10);
  mtbl.m.FieldDefs.Add(_dscomplemento  , ftString, 10);
  mtbl.m.FieldDefs.Add(_nmbairro       , ftString, 100);
  mtbl.m.FieldDefs.Add(_nmmunicipio    , ftString, 100);
  mtbl.m.FieldDefs.Add(_nm+_representante, ftString, 100);
  mtbl.m.FieldDefs.Add(_email, ftString, 100);
  mtbl.m.FieldDefs.Add(_sguf           , ftString, 2);
  mtbl.m.FieldDefs.Add(_nucnpj         , ftString, 20);
  mtbl.m.FieldDefs.Add(_nufone1        , ftString, 14);
  mtbl.m.FieldDefs.Add(_nufone3        , ftString, 14);
  mtbl.m.FieldDefs.Add(_nuinscest      , ftString, 20);
  mtbl.m.FieldDefs.Add(_nmcontato      , ftString, 100);
  mtbl.m.FieldDefs.Add(_NMPRODUTO      , ftString, 100);
  mtbl.m.FieldDefs.Add(_qtitem+_01  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_02  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_03  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_04  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_05  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_06  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_07  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_08  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_09  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_10  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_11  , ftFloat);
  mtbl.m.FieldDefs.Add(_qtitem+_12  , ftFloat);
  mtbl.m.FieldDefs.Add(_vltotal+_01  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_02  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_03  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_04  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_05  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_06  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_07  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_08  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_09  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_10  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_11  , ftCurrency);
  mtbl.m.FieldDefs.Add(_vltotal+_12  , ftCurrency);
  mtbl.m.FieldDefs.Add(_cdcliente , ftBCD);
  mtbl.m.FieldDefs.Add(_cdsaida , ftInteger);
  mtbl.m.FieldDefs.Add(_dtemissao+_01 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_02 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_03 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_04 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_05 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_06 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_07 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_08 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_09 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_10 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_11 , ftString, 20);
  mtbl.m.FieldDefs.Add(_dtemissao+_12 , ftString, 20);
  mtbl.m.IndexDefs.Add(_pk, _CDCLIENTE+';'+_NMPRODUTO, [ixPrimary]);
  mtbl.m.IndexName := _pk;
  mtbl.m.CreateDataSet;
end;

procedure TReport.Exibir_gauge;
begin
  frmprogressbar.Show;
  frmprogressbar.pnl.Caption := 'Lendo registros. Aguarde...';
  Application.ProcessMessages;
end;

procedure TReport.gerar;
  function makesql: string;
  begin
    result := 'select cliente.cdempresa,cliente.rzsocial'+
                    ',cliente.nmcliente'+
                    ',cliente.email'+
                    ',representante.nmrepresentante'+
                    ',cliente.dsendereco'+
                    ',cliente.dsnumero'+
                    ',cliente.dscomplemento'+
                    ',cliente.nmbairro'+
                    ',municipio.nmmunicipio'+
                    ',uf.sguf'+
                    ',cliente.nucnpj'+
                    ',cliente.nufone1'+
                    ',cliente.nufone3'+
                    ',cliente.nuinscest'+
                    ',saida.cdcliente '+
              'from saida '+
              'inner join tpsaida on tpsaida.cdempresa=saida.cdempresa and tpsaida.cdtpsaida=saida.cdtpsaida '+
              'INNER join cliente on cliente.cdcliente=saida.cdcliente and saida.cdempresa=cliente.cdempresa '+
              'INNER JOIN ITSAIDA ON ITSAIDA.CDSAIDA=SAIDA.CDSAIDA AND ITSAIDA.CDEMPRESA=SAIDA.CDEMPRESA '+
              'inner join produto on produto.cdproduto=itsaida.cdproduto and produto.cdempresa=itsaida.cdempresa '+
              'left join municipio on municipio.cdmunicipio=cliente.cdmunicipio '+
              'left join representante on representante.cdrepresentante=cliente.cdrepresentante and representante.cdempresa=cliente.cdempresa '+
              'left join uf on uf.cduf=cliente.cduf '+
              sqlwhere[0]+' and tpsaida.boduplicata=''S'' '+
              'GROUP BY cliente.cdempresa,cliente.rzsocial'+
                      ',cliente.nmcliente'+
                      ',cliente.email'+
                      ',representante.nmrepresentante'+
                      ',cliente.dsendereco'+
                      ',cliente.dsnumero'+
                      ',cliente.dscomplemento'+
                      ',cliente.nmbairro'+
                      ',municipio.nmmunicipio'+
                      ',uf.sguf'+
                      ',cliente.nucnpj'+
                      ',cliente.nufone1'+
                      ',cliente.nufone3'+
                      ',cliente.nuinscest'+
                      //',cliente.nmcontato'+
                      ',saida.cdcliente '+
              'order by saida.CDCLIENTE';
  end;
begin
  q  := TClasseQuery.Create;
  qq := TClasseQuery.Create;
  qi := TClasseQuery.Create;
  frmprogressbar := Tfrmprogressbar.Create(nil);
  try
    criar_fields;
    Exibir_gauge;
    q.q.SQL.Text    := makesql;
    q.q.Open;
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.Eof do
    begin
      if cdcliente <> q.q.FieldByName(_cdcliente).asstring then
      begin
        cdcliente := q.q.fieldbyname(_cdcliente).asstring;
        nmcontato := retornasqlstring('select first 1 nmitcontcliente from itcontcliente where cdcliente='+cdcliente+' and cdempresa='+q.q.fieldbyname(_cdempresa).asstring);
      end;
      processar_gauge;
      Selecionar_datas;
      q.q.Next;
    end;
    mtbl.m.Filtered := False;
  finally
    freeandnil(q);
    freeandnil(qq);
    freeandnil(qi);
    FreeAndNil(frmprogressbar);
  end;
end;

procedure TReport.inserir_cabecalho;
begin
  mtbl.m.Fieldbyname(_cdcliente).AsString         := q.q.fieldbyname(_cdcliente).AsString;
  mtbl.m.Fieldbyname(_rzsocial).AsString          := q.q.fieldbyname(_rzsocial).AsString;
  mtbl.m.Fieldbyname(_nmcliente).AsString         := q.q.fieldbyname(_nmcliente).AsString;
  mtbl.m.Fieldbyname(_dsendereco).AsString        := q.q.fieldbyname(_dsendereco).AsString;
  mtbl.m.Fieldbyname(_dsnumero).AsString          := q.q.fieldbyname(_dsnumero).AsString;
  mtbl.m.Fieldbyname(_dscomplemento).AsString     := q.q.fieldbyname(_dscomplemento).AsString;
  mtbl.m.Fieldbyname(_nmbairro).AsString          := q.q.fieldbyname(_nmbairro).AsString;
  mtbl.m.Fieldbyname(_nmmunicipio).AsString       := q.q.fieldbyname(_nmmunicipio).AsString;
  mtbl.m.Fieldbyname(_nm+_representante).AsString := q.q.fieldbyname(_nm+_representante).AsString;
  mtbl.m.Fieldbyname(_email).AsString             := q.q.fieldbyname(_email).AsString;
  mtbl.m.Fieldbyname(_sguf).AsString              := q.q.fieldbyname(_sguf).AsString;
  mtbl.m.Fieldbyname(_nucnpj).AsString            := q.q.fieldbyname(_nucnpj).AsString;
  mtbl.m.Fieldbyname(_nufone1).AsString           := q.q.fieldbyname(_nufone1).AsString;
  mtbl.m.Fieldbyname(_nufone3).AsString           := q.q.fieldbyname(_nufone3).AsString;
  mtbl.m.Fieldbyname(_nuinscest).AsString         := q.q.fieldbyname(_nuinscest).AsString;
  mtbl.m.Fieldbyname(_nmcontato).AsString         := nmcontato;
  inserir_datas;
end;

procedure TReport.Selecionar_datas;
  function makesql:string;
  begin
         if tipo = _anual  then result := 'select first 12 EXTRACT(YEAR FROM saida.dtemissao) dtemissao '
    else if tipo = _mensal then result := 'select first 12 MES.NUMES||''/''||EXTRACT(YEAR FROM saida.dtemissao) dtemissao '
                           else result := 'select first 12 saida.dtemissao ';
    result := Result +
              'from saida '+
              'inner join itsaida on itsaida.cdempresa=saida.cdempresa and itsaida.cdsaida=saida.cdsaida '+
              'inner join produto on produto.cdempresa=itsaida.cdempresa and produto.cdproduto=itsaida.cdproduto '+
              'left join representante on representante.cdrepresentante=saida.cdrepresentante and representante.cdempresa=saida.cdempresa '+
              'left join cliente on cliente.cdcliente=saida.cdcliente and saida.cdempresa=cliente.cdempresa '+
              'left join municipio on municipio.cdmunicipio=cliente.cdmunicipio '+
              'left join uf on uf.cduf=cliente.cduf ';
    if tipo = _mensal then
    begin
      result := result +
              'left join mes on mes.cdmes=EXTRACT(month FROM saida.dtemissao) ';
    end;
    result := result + sqlwhere[1]+' and saida.cdcliente='+q.q.fieldbyname(_cdcliente).asstring+' ';
    if tipo = _anual then
    begin
      result := result + 'group by EXTRACT(YEAR FROM saida.dtemissao) '+
                         'order by EXTRACT(YEAR FROM saida.dtemissao) desc';
    end
    else if tipo = _mensal then
    begin
      result := result + 'group by MES.NUMES||''/''||EXTRACT(YEAR FROM saida.dtemissao) '+
                         'order by MES.NUMES||''/''||EXTRACT(YEAR FROM saida.dtemissao) desc';
    end
    else
    begin
      result := result + 'group by saida.dtemissao '+
                         'order by saida.dtemissao desc';
    end;
  end;
begin
  qq.q.Close;
  qq.q.SQL.Text := makesql;
  qq.q.Open;
  while not qq.q.Eof do
  begin
   if tipo <> _data then inserir_produto(QuotedStr (qq.q.fieldbyname(_dtemissao).Asstring)  , qq.q.RecNo)
                    else inserir_produto(getdtbanco(qq.q.fieldbyname(_dtemissao).AsDateTime), qq.q.RecNo);
    qq.q.Next;
  end;
end;

procedure TReport.inserir_produto(dtemissao:string; recno: integer);
  function makesql:string;
  begin
    //result := 'select Grupo.NMGRUPO nmproduto'+
    result := 'select produto.nmproduto'+
                    ',sum(itsaida.vltotal) vltotal'+
                    ',sum(itsaida.qtitem) qtitem '+
              'from saida '+
              'inner join itsaida on itsaida.cdsaida=saida.cdsaida and saida.cdempresa=itsaida.cdempresa '+
              'inner join produto on produto.cdproduto=itsaida.cdproduto and produto.cdempresa=itsaida.cdempresa '+
              'INNER JOIN GRUPO ON Grupo.CDGRUPO=Produto.CDGRUPO and produto.cdempresa=grupo.cdempresa '+
              'left join representante on representante.cdrepresentante=saida.cdrepresentante and representante.cdempresa=saida.cdempresa ';
    if tipo = _mensal then
    begin
      result := result + 'inner join mes on mes.cdmes=extract(month from saida.dtemissao) ';
    end;
    result := result +
              sqlwhere[2]+' and saida.cdcliente='+q.q.fieldbyname(_cdcliente).asstring+' and ';
         if tipo = _anual  then result := result +' EXTRACT(YEAR FROM saida.dtemissao)='+dtemissao
    else if tipo = _mensal then result := result +' mes.numes||''/''||EXTRACT(YEAR FROM saida.dtemissao)='+dtemissao
                           else result := result +' saida.dtemissao='+dtemissao;
    //Result := result + ' group by grupo.nmgrupo';
    Result := result + ' group by produto.nmproduto';
  end;
begin
  qi.q.Close;
  qi.q.SQL.Text := makesql;
  qi.q.Open;
  while not qi.q.Eof do
  begin
    if mtbl.m.LocateEx(_NMPRODUTO+'='+quotedstr(qi.q.fieldbyname(_NMPRODUTO).AsString)+' AND '+_CDCLIENTE+'='+q.q.fieldbyname(_cdcliente).AsString, []) then
    begin
      mtbl.m.Edit;
    end
    else
    begin
      mtbl.m.Append;
      inserir_cabecalho;
      mtbl.m.Fieldbyname(_NMPRODUTO).AsString := qi.q.fieldbyname(_NMPRODUTO).AsString;
    end;
    mtbl.m.Fieldbyname(_qtitem+getnum(recno)).AsFloat     := qi.q.fieldbyname(_qtitem).AsFloat;
    mtbl.m.Fieldbyname(_vltotal+getnum(recno)).AsCurrency := qi.q.fieldbyname(_vltotal).AsCurrency;
    mtbl.m.Post;
    qi.q.Next;
  end;
end;

procedure TReport.processar_gauge;
begin
  frmprogressbar.pnl.Caption  := 'Processando...';
  frmprogressbar.gau.Progress := q.q.RecNo;
  application.ProcessMessages;
end;

procedure TReport.inserir_datas;
var
  mc : TDataClient;
begin
  mc := TDataClient.Create;
  try
    mc.m.Data := qq.q.Data;
    mc.m.First;
    while not mc.m.Eof do
    begin
      if tipo <> _data then mtbl.m.Fieldbyname(_dtemissao+getnum(mc.m.RecNo)).AsString := mc.m.fieldbyname(_dtemissao).AsSTRING
                       else mtbl.m.Fieldbyname(_dtemissao+getnum(mc.m.RecNo)).AsString := FormatDateTime(_dd_mm_yyyy, mc.m.fieldbyname(_dtemissao).AsDateTime);
      mc.m.Next;
    end;
  finally
    freeandnil(mc);
  end;
end;

function TReport.getnum(recno:Integer):string;
begin
  result := FormatarTextoEsquerda(inttostr(recno), 2, _0);
end;

end.
