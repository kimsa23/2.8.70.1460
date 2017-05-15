unit classerecalculoestoqueterceiro;

interface

uses
  system.UITypes,
  forms, dialogs, gauges, classes, sysutils, controls,
  DB, dbclient,
  ustrings, uprogressbar, uregistro, udatahora, uconstantes, unumero,
  classeretornasql, classeusuario,
  classeempresa, classeexecutasql, classeaplicacao, classequery;

type
  TRecalculoEstoqueTerceiro = class(TObject)
  private
    e, s : TClasseQuery;
    h, p : tclientdataset;
    sql : tstrings;
    dti, dtf : TDate;
    cdproduto, hrinclusao, cdtipo, tipo : string;
    procedure excluir_registro_historico_acima_data_inicial;
    procedure Inserir_Registros;
    function  makesqlentrada   :string;
    function  makesqlsaida     :string;
    procedure makeupdatehcustomedio;
    procedure posicionar_estoque_produto_data_ultimo_historico(gau: TGauge);
    procedure processar_entrada;
    procedure Processar_Saida;
    procedure SetClient;
    procedure setClientHCustoMedio;
    procedure setquery;
    procedure criar;
    function  Executar(linha : TStrings; tp, codigo, cdproduto_: string; di, df: TDate; mesames:boolean=false):boolean;
  public
    constructor Create;
    destructor destroy; override;
    class function Processar(linha : TStrings; tp, codigo, cdproduto_: string; di, df: TDate; mesames:boolean=false):boolean;
  end;

implementation

procedure TRecalculoEstoqueTerceiro.excluir_registro_historico_acima_data_inicial;
begin
  sql.add('delete from hestoque'+tipo+' where cdempresa='+empresa.cdempresa.ToString+' and dthistorico>='+getdtbanco(dti)+' and cdproduto='+cdproduto+';');
end;

procedure TRecalculoEstoqueTerceiro.posicionar_estoque_produto_data_ultimo_historico(gau: TGauge);
var
  qh : TClasseQuery;
begin
  qh   := TClasseQuery.create;
  try
    gau.MaxValue := p.RecordCount;
    p.First;
    while not p.eof do
    begin
      gau.Progress := p.RecNo;
      application.ProcessMessages;
      if formatdatetime(_dd_mm_yyyy, p.fieldbyname(_dthistorico).AsDateTime) = _30_12_1899 then
      begin
        p.Edit;
        p.FieldByName(_qtestoque).AsCurrency    := 0;
        p.Post;
      end
      else
      begin
        qh.q.close;
        qh.q.sql.Text := 'select qtestoque'+
                                ',cdproduto'+
                                ',dthistorico '+
                          'from hcustomedio '+
                          'where cdempresa='+empresa.cdempresa.ToString+' '+
                          'and cdproduto='+p.fieldbyname(_cdproduto).asstring+' '+
                          'and dthistorico='+getdtbanco(p.fieldbyname(_dthistorico).asdatetime)+';';
        qh.q.Open;
        if p.fieldbyname(_qtestoqueh).ascurrency<>qh.q.fieldbyname(_qtestoque).Ascurrency then
        begin
          showmessage('Produto: '  +p.fieldbyname (_cdproduto).asstring+#13+
                      'qtestoque: '+p.fieldbyname (_qtestoqueh).asstring+#13+
                      'historico: '+qh.q.fieldbyname(_qtestoque).AsString);
        end;
        p.Edit;
        p.FieldByName(_qtestoque).AsCurrency    := qh.q.fieldbyname(_qtestoque).AsCurrency;
        p.Post;
      end;
      p.next;
    end;
  finally
    freeandnil(qh);
  end;
end;

class function TRecalculoEstoqueTerceiro.Processar(linha: TStrings; tp, codigo, cdproduto_: string; di, df: TDate; mesames: boolean): boolean;
var
  recalculo : TRecalculoEstoqueTerceiro;
begin
  recalculo := TRecalculoEstoqueTerceiro.Create;
  try
    result := recalculo.Executar(linha, tp, codigo, cdproduto_, di, df, mesames);
  finally
    FreeAndNil(recalculo);
  end;
end;

function TRecalculoEstoqueTerceiro.makesqlentrada:string;
begin
  result := 'select i.cdproduto'+
                  ',i.qtitem'+
                  ',i.cditentrada'+
                  ',e.dtsaida '+
            'from itentrada i '+
            'inner join entrada e on e.cdentrada=i.cdentrada and i.cdempresa=e.cdempresa '+
            'inner join tpentrada t on t.cdtpentrada=e.cdtpentrada and t.cdempresa=e.cdempresa '+
            'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
            'inner join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and tp.cdempresa=p.cdempresa ' +
            'inner join cfop c on c.cdcfop=i.cdcfop '+
            'where e.cdempresa='+empresa.cdempresa.ToString+' and e.dtsaida between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and p.cdproduto='+cdproduto+' and e.cd'+tipo+'='+cdtipo+' and c.boestoqueterceiro=''S'' '+
            'order by e.dtsaida,i.cditentrada';
end;

function TRecalculoEstoqueTerceiro.makesqlsaida:string;
begin
  result := 'select t.tpentsai'+
                  ',i.cdproduto'+
                  ',i.qtitem'+
                  ',i.cditsaida'+
                  ',s.dtemissao dtsaida '+
            'from itsaida i '+
            'inner join saida s on s.cdsaida=i.cdsaida and i.cdempresa=s.cdempresa '+
            'inner join tpsaida t on t.cdtpsaida=s.cdtpsaida and t.cdempresa=s.cdempresa '+
            'inner join produto p on p.cdproduto=i.cdproduto and i.cdempresa=p.cdempresa '+
            'inner join tpproduto tp on tp.cdtpproduto=p.cdtpproduto and p.cdempresa=tp.cdempresa ' +
            'inner join cfop c on c.cdcfop=i.cdcfop '+
            'where s.cdempresa='+empresa.cdempresa.ToString+' and s.dtemissao between '+getdtbanco(dti)+' '+
            'and '+getdtbanco(dtf)+' and s.nustdocumento<>''02'' and (i.cdstitsaida<>2 or i.cdstitsaida is null) and c.boestoqueterceiro=''S'' and p.cdproduto='+cdproduto+' and s.cd'+tipo+'='+cdtipo+' '+
            'order by s.dtemissao,i.cditsaida';
end;

procedure TRecalculoEstoqueTerceiro.makeupdatehcustomedio;
begin
  h.First;
  while not h.Eof do
  begin
    sql.add('insert into hestoque'+tipo+'(cdempresa,cd'+tipo+',cdproduto,dthistorico,qtestoque)values('+
            empresa.cdempresa.ToString+','+cdtipo+','+
            h.fieldbyname(_cdproduto).AsString+','+
            getdtbanco(h.fieldbyname(_dthistorico).asdatetime)+','+
            getcurrencys(h.fieldbyname(_qtestoque).AsCurrency)+');');
    h.Next;
  end;
end;

procedure TRecalculoEstoqueTerceiro.processar_entrada;
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
    p.Edit;
    p.FieldByName(_qtestoque).Ascurrency := p.fieldbyname(_qtestoque).Ascurrency + e.q.fieldbyname(_qtitem).Ascurrency;
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
    h.post;
    e.q.Next;
  end;
end;

procedure TRecalculoEstoqueTerceiro.Processar_Saida;
begin
  while not s.q.eof do
  begin
    if (s.q.fieldbyname(_dtsaida).AsDateTime > dti) or (not p.FindKey([s.q.fieldbyname(_cdproduto).asstring])) then
    begin
      break;
    end;
    p.Edit;
    if s.q.FieldByName(_tpentsai).AsString = _S then
    begin
      p.FieldByName(_qtestoque).Ascurrency := p.fieldbyname(_qtestoque).Ascurrency - s.q.fieldbyname(_qtitem).Ascurrency;
    end
    else if s.q.fieldbyname(_tpentsai).asstring = _E then
    begin
      p.fieldbyname(_qtestoque).Ascurrency := p.fieldbyname(_qtestoque).Ascurrency + s.q.fieldbyname(_qtitem).AsCurrency;
      if p.fieldbyname(_qtestoque).ascurrency = 0 then
      begin
        messagedlg('O produto '+s.q.fieldbyname(_cdproduto).asstring+' está negativo.'#13'Verifique a data das notas de entrada e saída.', mtInformation, [mbOK], 0);
      end;
    end;
    p.Post;
    if h.FindKey([s.q.fieldbyname(_cdproduto).asstring, s.q.fieldbyname(_dtsaida).AsDateTime]) then
    begin
      h.Edit
    end
    else
    begin
      h.Insert;
      h.fieldbyname(_cdproduto).asstring   := s.q.fieldbyname(_cdproduto).asstring;
      h.fieldbyname(_dthistorico).asstring := s.q.fieldbyname(_dtsaida).asstring;
    end;
    h.fieldbyname(_qtestoque).Ascurrency := p.fieldbyname(_qtestoque).Ascurrency;
    h.post;
    s.q.Next;
  end;
end;

function TRecalculoEstoqueTerceiro.Executar(linha : TStrings; tp, codigo, cdproduto_: string; di, df: TDate; mesames:boolean=false):boolean;
var
  mes: string;
  dtia, dtfa: TDate;
begin
  dti        := di;
  dtf        := df;
  tipo       := tp;
  cdtipo     := codigo;
  cdproduto  := cdproduto_;
  hrinclusao := HrServer;
  frmprogressbar.Show;
  setclient;
  Inserir_Registros;
  setClienthcustomedio;
  posicionar_estoque_produto_data_ultimo_historico(frmprogressbar.gau);
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
      frmprogressbar.pnl.Caption  := FormatDateTime(_dd_mm_yyyy, dti);
      frmprogressbar.gau.Progress := frmprogressbar.gau.Progress + 1;
      application.ProcessMessages;
      processar_entrada;
      processar_saida;
      dti := dti + 1;
    end;

  until not mesames;
  makeupdatehcustomedio;
  ExecutaScript(sql);
  result := true;
end;

constructor TRecalculoEstoqueTerceiro.Create;
begin
  sql := TStringList.create;

  e   := TClasseQuery.create;
  s   := TClasseQuery.create;
  p   := TClientDataSet.create(nil);
  h   := TClientDataSet.create(nil);
  frmprogressbar := TFrmProgressbar.create(nil);
end;

procedure TRecalculoEstoqueTerceiro.criar;
begin
end;

destructor TRecalculoEstoqueTerceiro.destroy;
begin
  freeandnil(sql);
  freeandnil(e);
  freeandnil(p);
  freeandnil(s);
  freeandnil(h);
  freeandnil(frmprogressbar);
  inherited;
end;

procedure TRecalculoEstoqueTerceiro.setquery;
begin
  e.q.Close;
  s.q.close;
  e.q.open(makesqlentrada);
  s.q.open(makesqlsaida);;
end;

procedure TRecalculoEstoqueTerceiro.SetClient;
begin
  p.FieldDefs.Add(_cdproduto  , ftinteger);
  p.FieldDefs.Add(_qtestoque  , ftcurrency);
  p.FieldDefs.Add(_qtestoqueh , ftcurrency);
  p.FieldDefs.Add(_dthistorico, ftdate);
  p.CreateDataSet;
  p.Open;
  p.AddIndex(_pk, _cdproduto, [ixunique, ixprimary]);
  p.IndexName := _pk;
end;

procedure TRecalculoEstoqueTerceiro.Inserir_Registros;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select p.cdproduto'+
                             ',h.qtestoque qtestoqueh'+
                             ',h.dthistorico '+
                       'from produto p '+
                       'left join hestoque'+tipo+' h on h.cdproduto=p.cdproduto and h.cdempresa=p.cdempresa '+
                       'and h.dthistorico=(select max(dthistorico) '+
                                          'from hestoque'+tipo+' h2 '+
                                          'where p.cdempresa=h2.cdempresa and h2.cdproduto=p.cdproduto and h2.dthistorico<'+getdtbanco(dti)+') '+
                       'where p.cdempresa='+empresa.cdempresa.ToString+' and p.cdproduto='+cdproduto);
  try
    while not q.q.eof do
    begin
      p.Insert;
      p.FieldByName(_cdproduto).AsInteger    := q.q.fieldbyname(_cdproduto).AsInteger;
      p.FieldByName(_qtestoqueh).AsCurrency  := q.q.fieldbyname(_qtestoqueh).AsCurrency;
      p.fieldbyname(_dthistorico).AsDateTime := q.q.fieldbyname(_dthistorico).AsDateTime;
      p.Post;
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TRecalculoEstoqueTerceiro.setClientHCustoMedio;
begin
  h.FieldDefs.Add(_cdproduto  , ftinteger);
  h.FieldDefs.Add(_dthistorico, ftdate);
  h.FieldDefs.Add(_qtestoque  , ftcurrency);
  h.CreateDataSet;
  h.Open;
  h.AddIndex(_pk, _cdproduto+';'+_dthistorico, [ixunique, ixprimary]);
  h.IndexName := _pk;
end;

end.
