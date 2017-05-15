unit ClasseProdutoFGerarBaixaEstoqueSubProduto;

interface

uses 
  sysutils, classes, forms, 
  classequery, classemovto, classegerar, classeempresa, uregistro,
  udatahora, ustrings, uconstantes, uprogressbar, umontarsql;

type
  TGerarBaixaEstoqueSubProduto = class
  private
    q : TClasseQuery;
    cditsaida : integer;
    cdtpmovtoe : string;
    cdtpmovtos : string;
    cdproduto: TStrings; 
    cdgrupo: TStrings; 
    dti: TDate;
    dtf: TDate;
    function get_cdtpmovto:string;
    function makesql2:string;
    procedure inserir_movto;
    procedure delete_movto(cditsaida:integer);
    function GerarBaixaEstoquesubproduto(cdproduto_, cdgrupo_:TStrings; dti_, dtf_: TDate):boolean;
  public    
    class function Gerar(cdproduto, cdgrupo:TStrings; dti, dtf: TDate):boolean;
  end;


implementation

procedure TGerarBaixaEstoqueSubProduto.delete_movto(cditsaida:integer);
var
  movto : TMovtoList;
  I: Integer;
begin
  movto := TMovtoList.Create;
  try
    movto.Ler(_cditsaida, cditsaida);
    for I := 0 to movto.count - 1 do
    begin
      movto.Items[i].Delete;
    end;
  finally
    FreeAndNil(movto);
  end;
end;

class function TGerarBaixaEstoqueSubProduto.Gerar(cdproduto, cdgrupo: TStrings; dti, dtf: TDate): boolean;
var
  gerar : TGerarBaixaEstoqueSubProduto;
begin
  gerar := TGerarBaixaEstoqueSubProduto.Create;
  try
    gerar.GerarBaixaEstoquesubproduto(cdproduto, cdgrupo, dti, dtf);
  finally
    freeandnil(gerar);
  end;
end;

function TGerarBaixaEstoqueSubProduto.GerarBaixaEstoquesubproduto(cdproduto_, cdgrupo_:TStrings; dti_, dtf_: TDate):boolean;
begin
  dti := dti_;
  dtf := dtf_;
  cdproduto := cdproduto_;
  cdgrupo := cdgrupo_;
  q              := TClasseQuery.Create;
  frmprogressbar := TFrmprogressbar.create(nil);
  try
    cdtpmovtoE := qregistro.codigodonome(_tpmovto, 'ENTRADA DE SUBPRODUTO');
    cdtpmovtoS := qregistro.codigodonome(_tpmovto, 'BAIXA DE SUBPRODUTO');
    frmprogressbar.Show;
    frmprogressbar.pnl.Caption := 'Lendo Registros... Aguarde';
    Application.ProcessMessages;
    q.q.Open(makesql2);
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    frmprogressbar.gau.Progress := 0;
    cditsaida                   := 0;
    while not q.q.eof do
    begin
      frmprogressbar.pnl.Caption  := 'Processando. Registro '+inttostr(q.q.RecNo)+' de '+inttostr(q.q.RecordCount);
      frmprogressbar.gau.Progress := q.q.RecNo;
      application.ProcessMessages;
      if cditsaida <> q.q.fieldbyname(_cditsaida).asInteger then
      begin
        cditsaida := q.q.fieldbyname(_cditsaida).asInteger;
        delete_movto(cditsaida);
      end;
      inserir_movto;
      q.q.next;
    end;
    result := true;
  finally
    FreeAndNil(q);
    FreeAndNil(frmprogressbar);
  end;
end;

function TGerarBaixaEstoqueSubProduto.get_cdtpmovto: string;
begin
  if q.q.fieldbyname(_tpentsai).asstring = _S then
  begin
    result := cdtpmovtoS
  end
  else if q.q.fieldbyname(_tpentsai).asString = _e then
  begin
    result := cdtpmovtoe
  end;
end;

procedure TGerarBaixaEstoqueSubProduto.inserir_movto;
var
  movto : TMovto;
begin
  movto := TMovto.create;
  try
    movto.cdmovto   := QGerar.GerarCodigo(_movto);
    movto.cdtpmovto := StrToInt(get_cdtpmovto);
    movto.dtemissao := q.q.fieldbyname(_dtemissao).asDateTime;
    movto.cditsaida := q.q.fieldbyname(_cditsaida).asinteger;
    movto.Insert;
    movto.itmovto.New;
    movto.itmovto.Items[0].cdmovto    := movto.cdmovto;
    movto.itmovto.Items[0].cditmovto  := QGerar.GerarCodigo(_itmovto);
    movto.itmovto.Items[0].cdproduto  := q.q.fieldbyname(_cdsubproduto).AsInteger;
    movto.itmovto.Items[0].qtitem     := q.q.fieldbyname(_qtitemsubproduto).AsFloat * q.q.fieldbyname(_qtitem).AsFloat;
    movto.itmovto.Items[0].cddigitado := q.q.FieldByName(_cdsubproduto).AsString;
    movto.ItMovto.Items[0].insert;
  finally
    FreeAndNil(movto);
  end;
end;

function TGerarBaixaEstoqueSubProduto.makesql2: string;
begin
  result := 'SELECT S.TPENTSAI' +
                  ',S.DTEMISSAO' +
                  ',ip.cdsubproduto'+
                  ',ip.qtitem qtitemsubproduto'+
                  ',i.qtitem'  +
                  ',i.cditsaida ' +
             'FROM SAIDA s ' +
             'INNER JOIN TPSAIDA t ON T.CDTPSAIDA=S.CDTPSAIDA and T.CDEMPRESA=S.CDEMPRESA ' +
             'inner join itsaida i on i.cdsaida=s.cdsaida and i.cdempresa=s.cdempresa ' +
             'inner join itproduto ip on ip.cdproduto=i.cdproduto and ip.cdempresa=i.cdempresa ' +
             'INNER JOIN PRODUTO p ON P.cdproduto=I.cdproduto and p.cdempresa=I.cdempresa ' +
             'inner join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and tp.cdempresa=p.cdempresa '+
             'WHERE t.boestoque=''S'' and tp.bobaixasubprodutovenda=''S'' and S.CDEMPRESA='+empresa.cdempresa.tostring+' and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf);
  sqlmontarlista(cdproduto, _i, _cdproduto, result);
  sqlmontarlista(cdgrupo  , _p, _cdgrupo  , result);
  Result := result + 'order by i.cditsaida';
end;

end.
