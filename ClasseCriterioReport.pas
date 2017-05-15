unit ClasseCriterioReport;

interface

uses controls, classes, SysUtils,
  uconstantes, udatahora, ustrings, uregistro;

Type
  TCriterioReport= class
  private
    sqlwhere : string;
    sqlwhere2 : string;
    cdreport : integer;
    x : Integer;
    dti : TDate;
    dtf : TDate;
    codigo : tstrings;
    function emissao_menor_igual:string;
    function baixa_menor_igual:string;
    function data_emissao:string;
    function set_data_texto(nmdata, dsdata:string):string;
    function set_nome_tabela(nome_campo_codigo, descricao_campo, tabela: string):string;
  public
    constructor create(cdreport_:integer; sql, sql2:string);
    destructor  destroy; override;
    function    get_criterio:string;
  end;

function get_criterio(cdreport: integer; sqlwhere: string; sqlwhere2:string=''):string;

implementation

function get_criterio(cdreport: integer; sqlwhere: string; sqlwhere2:string=''):string;
var
  CriterioReport : TCriterioReport;
begin
  criterioreport := TCriterioReport.create(cdreport, sqlwhere, sqlwhere2);
  try
    result := QuotedStr(criterioreport.get_criterio);
  finally
    freeandnil(criterioreport);
  end;
end;

function TCriterioReport.baixa_menor_igual:string;
begin
  x := Pos(_dtbaixa+'<=', sqlwhere);
  if x > 0 then
  begin
    dti := StrToDate(trocar_dt_eua_para_dt_brasil(Copy(sqlwhere, x + 10, 10)));
    if result <> '' then
    begin
      result := result + ' e ';
    end;
    result := 'Baixa menor ou igual a '+formatdatetime(_dd_mm_yyyy, dti);
  end;
end;

constructor TCriterioReport.create(cdreport_:integer; sql, sql2:string);
begin
  sqlwhere  := sql;
  sqlwhere2 := sql2;
  cdreport  := cdreport_;
end;

function TCriterioReport.data_emissao:string;
begin
  x := Pos(_dtemissao+' '+_between, sqlwhere);
  if x > 0 then
  begin
    dti := StrToDate(trocar_dt_eua_para_dt_brasil(Copy(sqlwhere, x + 19, 10)));
    dtf := StrToDate(trocar_dt_eua_para_dt_brasil(Copy(sqlwhere, x + 36, 10)));
    result := 'Emissao '+formatdatetime(_dd_mm_yyyy, dti)+' ate '+formatdatetime(_dd_mm_yyyy, dtf);
  end;
end;

destructor TCriterioReport.destroy;
begin

  inherited;
end;

function TCriterioReport.emissao_menor_igual:string;
begin
  x := Pos(_dtemissao+'<=', sqlwhere);
  if x > 0 then
  begin
    dti := StrToDate(trocar_dt_eua_para_dt_brasil(Copy(sqlwhere, x + 12, 10)));
    result := 'Emissao menor ou igual a '+formatdatetime(_dd_mm_yyyy, dti);
  end;
end;

function TCriterioReport.get_criterio: string;
begin
  if (cdreport = 575) or (cdreport = 576) then
  begin
    result := 'Data '+FormatDateTime(_dd_mm_yyyy, strtodate(trocar_dt_eua_para_dt_brasil(sqlwhere2)));
    Exit;
  end;
  result   := '';
  sqlwhere := lowerCase(sqlwhere);
  result := result + emissao_menor_igual;
  result := result + baixa_menor_igual;
  result := result + data_emissao;
  result := result + set_data_texto (_dtprorrogacao   , Maiuscula(_Vencimento));
  result := result + set_data_texto (_dtrealizada     , Maiuscula(_Realizada));
  result := result + set_data_texto (_dtvencimento    , Maiuscula(_Vencimento));
  result := result + set_data_texto (_dtsaida         , maiuscula(__Saida));
  result := result + set_data_texto (_dtentrada       , Maiuscula(_Entrada));
  result := result + set_data_texto (_dttermino       , Maiuscula(__termino));
  result := result + set_data_texto (_dtreferencia    , maiuscula(__Referencia));
  result := result + set_data_texto (_dtbaixa         , Maiuscula(_Baixa));
  result := result + set_data_texto (_dtprventrega    , Maiuscula(__Previsao));
  result := result + set_data_texto (_dtprevista      , Maiuscula(__Previsao));
  result := result + set_data_texto (_dthcontasaldo   , Maiuscula(_Data));
  result := result + set_data_texto (_dtfechamento    , Maiuscula(_Entrega));
  result := result + set_data_texto (_dtentrega       , Maiuscula(_Entrega));
  result := result + set_data_texto (_TSavaliacao     , maiuscula(__Avaliacao));
  result := result + set_nome_tabela(_cdfuncionario   , maiuscula(__Funcionario)    , _funcionario);
  result := result + set_nome_tabela(_cdcliente       , Maiuscula(_Cliente)         , _cliente);
  result := result + set_nome_tabela(_cdtpparada      , Maiuscula(_Tipo+' '+_Parada), _tpparada);
  result := result + set_nome_tabela(_cdtpordproducao , Maiuscula(_Tipo+' '+_Ordem+' '+__producao), _tpordproducao);
  result := result + set_nome_tabela(_cdfornecedor    , Maiuscula(_Fornecedor)      , _fornecedor);
  result := result + set_nome_tabela(_cdproduto       , Maiuscula(_Produto)         , _produto);
  result := result + set_nome_tabela(_cdequipamento   , Maiuscula(_equipamento)     , _equipamento);
  result := result + set_nome_tabela(_cdtpequipamento , Maiuscula(_Tipo+' '+_equipamento), _tpequipamento);
  result := result + set_nome_tabela(_dstag           , Maiuscula(_tag)             , _tag);
  result := result + set_nome_tabela(_cdtransportadora, Maiuscula(_Transportadora)  , _transportadora);
  result := result + set_nome_tabela(_cdrepresentante , Maiuscula(_Representante)   , _representante);
end;

function TCriterioReport.set_data_texto(nmdata, dsdata: string):string;
begin
  x := Pos(nmdata+' '+_between, sqlwhere);
  if x > 0 then
  begin
    dti := StrToDate(trocar_dt_eua_para_dt_brasil(Copy(sqlwhere, x + 10 + Length(nmdata), 10)));
    dtf := StrToDate(trocar_dt_eua_para_dt_brasil(Copy(sqlwhere, x + 27 + Length(nmdata), 10)));
    if result <> '' then
    begin
      result := result + ' e ';
    end;
    result := result + dsdata+' '+formatdatetime(_dd_mm_yyyy, dti)+' ate '+formatdatetime(_dd_mm_yyyy, dtf);
  end;
end;

function TCriterioReport.set_nome_tabela(nome_campo_codigo, descricao_campo, tabela: string):string;
var
  i : Integer;
  texto : string;
begin
  x := Pos(nome_campo_codigo, sqlwhere);
  if x > 0 then
  begin
    codigo := TStringList.Create;
    try
      texto := copy(sqlwhere, x, length(sqlwhere)-X);
      texto := Copy(texto, Pos('(', texto)+1, Pos(')', texto)-Pos('(', texto)-1);
      codigo.Text := StringReplace(texto, ', ', #13, [rfReplaceAll, rfIgnoreCase]);
      for i := 0 to codigo.Count - 1 do
      begin
        if result <> '' then
        begin
          result := result + ' - ';
        end;
        if tabela = _tag then
        begin
          result := Result + descricao_campo+' '+codigo[i]+' '
        end
        else
        begin
          result := Result + descricao_campo+' '+codigo[i]+' '+nomedocodigo(tabela, codigo[i])+' ';
        end;
      end;
    finally
      codigo.Free;
    end;
  end;
end;

end.
