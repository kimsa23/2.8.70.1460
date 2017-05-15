unit classerecalcularcomissao;

interface

uses
  Forms, SysUtils, Classes, Controls, Math,
  uRegistro, ustrings, uConstantes, uProgressBar,
  classequery, classeexecutasql, classeempresa, classesaida;

function Recalcular_comissao(dti, dtf: TDate):boolean;

implementation

uses DB;

type
  TRecalcularComissao = class(tobject)
  private
    saida : TSaida;
    dti, dtf: TDate;
    qbaixa, qduplicata, qitsaida, qsaida : TClasseQuery;
    sql : TStrings;
    vlfora, vlcomissao : Currency;
    procedure processarItSaida;
    procedure ProcessarDuplicata;
    procedure ProcessarBaixa(vlcomissao1:Currency);
    function vlcomissaoduplicata: currency;
    function vlcomissaobaixa(vlcomissao: currency):Currency;
  public
    constructor create;overload;
    destructor destroy; override;
    function Calcular(dti_, dtf_:TDate):Boolean;
  end;

function Recalcular_comissao(dti, dtf: TDate):boolean;
var
  Recalcular : TRecalcularComissao;
begin
  Recalcular := TRecalcularComissao.create;
  try
    result := Recalcular.Calcular(dti, dtf)
  finally
    Recalcular.Free;
  end;
end;

function TRecalcularComissao.calcular(dti_, dtf_: TDate):boolean;
begin
  result := false;
  dti    := dti_;
  dtf    := dtf_;
  qsaida.q.open('select s.vlicmssubtrib,s.cdrepresentante,s.cdsaida,s.vltotal,s.prcomissao,s.vlicmssubtrib,t.bodescontocomissao,t.BODUPLICATAICMSST '+
                'from saida s '+
                'left join tpsaida t on t.cdtpsaida=s.cdtpsaida and s.cdempresa=t.cdempresa '+
                'where s.cdempresa='+empresa.cdempresa.ToString+' and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf));
  frmprogressbar.gau.MaxValue := qsaida.q.RecordCount;
  frmprogressbar.Show;
  while not qsaida.q.eof do
  begin
    frmprogressbar.gau.Progress := qsaida.q.recno;
    application.ProcessMessages;
    processarItSaida;
    sql.Add('update saida set vlcomissao=(select sum(vlcomissao) from itsaida where cdempresa=saida.cdempresa and cdsaida=saida.cdsaida) where cdempresa='+empresa.cdempresa.ToString+' and cdsaida='+qsaida.q.fieldbyname(_cdsaida).Asstring+';');
    ProcessarDuplicata;
    qsaida.q.Next;
  end;
  if sql.count > 0 then
  begin
    result := ExecutaScript(sql);
  end;
end;

constructor TRecalcularComissao.create;
begin
  saida := tsaida.create;
  sql   := TStringList.Create;
  qsaida     := TClasseQuery.Create;
  qitsaida    := TClasseQuery.Create;
  qduplicata    := TClasseQuery.Create;
  qbaixa    := TClasseQuery.Create;
  frmprogressbar := tfrmprogressbar.Create(nil);
end;

destructor TRecalcularComissao.destroy;
begin
  FreeAndNil(saida);
  FreeAndNil(sql);
  FreeAndNil(qsaida);
  FreeAndNil(qitsaida);
  FreeAndNil(qduplicata);
  FreeAndNil(qbaixa);
  FreeAndNil(frmprogressbar);
  inherited;
end;

procedure TRecalcularComissao.processarItSaida;
  function get_cdtpcomissaoproduto:string;
  begin
    Result := qitsaida.q.fieldbyname(_cdtpcomissaoPRODUTO).AsString;
    if result = '' then
    begin
      result := qitsaida.q.fieldbyname(_cdtpcomissaogrupo).AsString;
    end;
  end;
  function get_cdtpcomissao:string;
  begin
    result := saida.ObterTpComissao(get_cdtpcomissaoproduto,qsaida.q.fieldbyname(_cdrepresentante).AsString);
    if result = '' then
    begin
      result := _null;
    end;
  end;
  function get_prcomissao:Double;
  begin
    if (get_cdtpcomissao <> '') and (get_cdtpcomissao <> _null) then
    begin
      result := DoubledoCodigo(_tpcomissao, get_cdtpcomissao, _prcomissao);
    end
    else
    begin
      result := qitsaida.q.fieldbyname(_prcomissao).AsFloat;
      if result = 0 then
      begin
        result := qitsaida.q.fieldbyname(_prcomissao+_grupo).AsFloat;
      end;
      if result = 0 then
      begin
        result := qsaida.q.fieldbyname(_prcomissao).AsFloat;
      end;
    end;
  end;
  function get_vlbase:Currency;
  begin
    result := qitsaida.q.fieldbyname(_vltotal).AsCurrency;
    if qsaida.q.FieldByName(_bodescontocomissao).AsString = _s then
    begin
      result := result - qitsaida.q.fieldbyname(_vldesconto).AsCurrency
    end;
  end;
  function get_vlcomissaoitem:Currency;
  begin
    result := get_vlbase * (get_prcomissao / 100);
  end;
begin
  qitsaida.q.close;
  qitsaida.q.open('select p.bocomissao'+
                        ',p.prcomissao'+
                        ',g.prcomissao prcomissaogrupo'+
                        ',p.cdtpcomissaoproduto'+
                        ',g.cdtpcomissaoproduto cdtpcomissaogrupo'+
                        ',cditsaida'+
                        ',vldesconto'+
                        ',vltotal '+
                  'from itsaida i '+
                  'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
                  'left join grupo g on g.cdgrupo=p.cdgrupo and p.cdempresa=g.cdempresa '+
                  'where i.cdempresa='+empresa.cdempresa.ToString+' and cdsaida='+qsaida.q.fieldbyname(_cdsaida).Asstring);
  vlcomissao := 0;
  while not qitsaida.q.eof do
  begin
    if qitsaida.q.fieldbyname(_bocomissao).Asstring = _N then
    begin
      sql.Add('update itsaida set bocomissao=''N'',cdtpcomissao=null,prcomissao=0,vlcomissao=0 where cdempresa='+empresa.cdempresa.ToString+' and cditsaida='+qitsaida.q.fieldbyname(_cditsaida).Asstring+';');
      qitsaida.q.Next;
      Continue;
    end;
    vlcomissao := vlcomissao + get_vlcomissaoitem;
    sql.Add('update itsaida set bocomissao=''S'',cdtpcomissao='+get_cdtpcomissao+',vlcomissao='+getcurrencys(RoundTo(get_vlcomissaoitem, -2))+',prcomissao='+getcurrencys(get_prcomissao)+' '+
            'where cdempresa='+empresa.cdempresa.ToString+' and cditsaida='+qitsaida.q.fieldbyname(_cditsaida).Asstring+';');
    qitsaida.q.next;
  end;
end;

procedure TRecalcularComissao.ProcessarDuplicata;
var
  vloriginal : Currency;
begin
  qduplicata.q.close;
  qduplicata.q.open('select cdduplicata,vlduplicata from duplicata where cdempresa='+empresa.cdempresa.ToString+' and cdsaida='+qsaida.q.fieldbyname(_cdsaida).Asstring+' order by cdduplicata');
  vlfora     := 0;
  vloriginal := vlcomissao;
  while not qduplicata.q.eof do
  begin
    if (qsaida.q.FieldByName(_boduplicataicmsst).AsString = _s) and (qduplicata.q.RecNo = 1) and (qsaida.q.FieldByName(_vlicmssubtrib).AsCurrency > 0) then
    begin
      sql.Add('update duplicata set vlcomissao=0 where cdempresa='+empresa.cdempresa.ToString+' and cdduplicata='+qduplicata.q.fieldbyname(_cdduplicata).AsString+';');
      sql.Add('update baixa set vlcomissao=0 where cdempresa='+empresa.cdempresa.ToString+' and cdduplicata='+qduplicata.q.fieldbyname(_cdduplicata).AsString+';');
      vlfora := vlfora + qduplicata.q.fieldbyname(_vlduplicata).AsCurrency;
      qduplicata.q.Next;
      Continue;
    end;
    if qduplicata.q.RecNo = qduplicata.q.RecordCount then
    begin
      sql.Add('update duplicata set vlcomissao='+getcurrencys(vloriginal)+' where cdempresa='+empresa.cdempresa.ToString+' and cdduplicata='+qduplicata.q.fieldbyname(_cdduplicata).AsString+';');
      ProcessarBaixa(vloriginal);
    end
    else
    begin
      vloriginal := vloriginal - vlcomissaoduplicata;
      sql.Add('update duplicata set vlcomissao='+getcurrencys(vlcomissaoduplicata)+' where cdempresa='+empresa.cdempresa.ToString+' and cdduplicata='+qduplicata.q.fieldbyname(_cdduplicata).AsString+';');
      ProcessarBaixa(vlcomissaoduplicata);
    end;
    qduplicata.q.Next;
  end;
end;

function TRecalcularComissao.vlcomissaoduplicata: currency;
begin
  result := RoundTo(qduplicata.q.fieldbyname(_vlduplicata).AsCurrency * 100 / (qsaida.q.fieldbyname(_vltotal).AsCurrency -vlfora)/ 100 * vlcomissao, -2);
end;

function TRecalcularComissao.vlcomissaobaixa(vlcomissao: currency):currency;
begin
  result := (qbaixa.q.fieldbyname(_vlliquido).AsCurrency - qbaixa.q.fieldbyname(_vljuro).AsCurrency) * 100 / qduplicata.q.fieldbyname(_vlduplicata).AsCurrency / 100 * vlcomissao;
end;

procedure TRecalcularComissao.ProcessarBaixa(vlcomissao1:Currency);
var
  vloriginal : Currency;
begin
  qbaixa.q.Close;
  qbaixa.q.Open('select cdbaixa,vlliquido,VLJURO from baixa where cdempresa='+empresa.cdempresa.ToString+' and cdduplicata='+qduplicata.q.fieldbyname(_cdduplicata).asstring);
  vloriginal := vlcomissao1;
  while not qbaixa.q.Eof do
  begin
    if (qbaixa.q.RecNo = qbaixa.q.RecordCount) and (qbaixa.q.RecNo > 1) then
    begin
      sql.Add('update baixa set vlcomissao='+getcurrencys(vloriginal)+' where cdempresa='+empresa.cdempresa.ToString+' and cdbaixa='+qbaixa.q.fieldbyname(_cdbaixa).AsString+';');
    end
    else
    begin
      vloriginal := vloriginal - vlcomissaobaixa(vlcomissao1);
      sql.Add('update baixa set vlcomissao='+getcurrencys(vlcomissaobaixa(vlcomissao1))+' where cdempresa='+empresa.cdempresa.ToString+' and cdbaixa='+qbaixa.q.fieldbyname(_cdbaixa).AsString+';');
    end;
    qbaixa.q.Next;
  end;
end;

end.
