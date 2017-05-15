unit uimp_cntcusto_consumo_semestral;

interface

uses
  Forms, Dialogs, SysUtils, Variants, Controls, Classes,
  db,
  umontarsql, ustrings, uprogressbar, uconstantes, udatahora,
  classeempresa, classeAplicacao, classequery;

procedure imp_cntcusto_consumo_semestral(mtbl: TDataClient; dti: Tdate; numes:integer; sqlwhere:string);

implementation

Type TReport = class
  private
    mes:Integer;
    dti_ : TDate;
    mtbl: TDataClient;
    q : TClasseQuery;
    makesql, nmfield:string;
    procedure criar_fields;
  public
    constructor create(mtbl2: TDataClient; dti: TDate; sql:string; numes_:integer);
    procedure   gerar;
  end;

procedure imp_cntcusto_consumo_semestral(mtbl: TDataClient; dti: TDate; numes:integer; sqlwhere : string);
  function makesql: string;
  begin
    result := 'select grupo.nmgrupo,cntcusto.nmcntcusto';
    if numes in [6, 4, 3] then result := result + ',fornecedor.nmfornecedor,produto.nmproduto'
                          else result := result + ',produto.nmproduto nmfornecedor,fornecedor.nmfornecedor nmproduto';
    result := result +
                   ',extract(month from entrada.dtsaida) mes'+
                   ',extract(year from entrada.dtsaida) ano'+
                   ',sum(itentrada.qtitem) qtitem'+
                   ',avg(itentrada.vlunitario) vlunitario'+
                   ',sum(itentrada.vltotal) vltotal '+
              'from entrada '+
              'inner join fornecedor on fornecedor.cdfornecedor=entrada.cdfornecedor and entrada.cdempresa=fornecedor.cdempresa '+
              'inner join itentrada on itentrada.cdentrada=entrada.cdentrada and entrada.cdempresa=itentrada.cdempresa '+
              'inner join produto on produto.cdproduto=itentrada.cdproduto and produto.cdempresa=itentrada.cdempresa '+
              'inner join grupo on grupo.cdgrupo=produto.cdgrupo and produto.cdempresa=grupo.cdempresa '+
              'inner join cntcusto on cntcusto.cdcntcusto=itentrada.cdcntcusto and cntcusto.cdempresa=itentrada.cdempresa '+
              sqlwhere+' '+
              'group by grupo.nmgrupo,cntcusto.nmcntcusto';
    if numes in [6, 4, 3] then result := result + ',fornecedor.nmfornecedor,produto.nmproduto'
                          else result := result + ',produto.nmproduto,fornecedor.nmfornecedor';
    Result := Result + ',extract(month from entrada.dtsaida),extract(year from entrada.dtsaida)';
  end;
var
  rpt : TReport;
begin
  rpt := TReport.create(mtbl, dti, makesql, numes);
  try
    if numes in [6, 4, 3] then rpt.nmfield := _nmproduto
                          else rpt.nmfield := _nmfornecedor;
    rpt.gerar;
  finally
    FreeAndNil(rpt);
  end;
end;

constructor TReport.create(mtbl2: TDataClient; dti: TDate; sql:string; numes_:integer);
begin
  mtbl     := mtbl2;
  makesql := sql;
  dti_    := dti;
  if numes_ > 10 then
  begin
    numes_ := numes_ - 10;
  end;
  mes     := numes_;
end;

procedure TReport.criar_fields;
begin
  mtbl.m.FieldDefs.Clear;
  mtbl.m.FieldDefs.Add(_nmgrupo     , ftString, 100);
  mtbl.m.FieldDefs.Add(_nmcntcusto  , ftString, 100);
  mtbl.m.FieldDefs.Add(_nmfornecedor, ftString, 100);
  mtbl.m.FieldDefs.Add(_nmproduto   , ftString, 100);
  mtbl.m.FieldDefs.Add('nmmes1'      , ftString, 10);
  mtbl.m.FieldDefs.Add('nmmes2'      , ftString, 10);
  mtbl.m.FieldDefs.Add('nmmes3'      , ftString, 10);
  mtbl.m.FieldDefs.Add('dsano'       , ftString, 4);
  mtbl.m.FieldDefs.Add('qtitem1'     , ftCurrency);
  mtbl.m.FieldDefs.Add('qtitem2'     , ftCurrency);
  mtbl.m.FieldDefs.Add('qtitem3'     , ftCurrency);
  mtbl.m.FieldDefs.Add('qtmedia'     , ftCurrency);
  mtbl.m.FieldDefs.Add('qttotal'     , ftCurrency);
  mtbl.m.FieldDefs.Add('vlunitario1' , ftCurrency);
  mtbl.m.FieldDefs.Add('vlunitario2' , ftCurrency);
  mtbl.m.FieldDefs.Add('vlunitario3' , ftCurrency);
  mtbl.m.FieldDefs.Add('vltotal1'    , ftCurrency);
  mtbl.m.FieldDefs.Add('vltotal2'    , ftCurrency);
  mtbl.m.FieldDefs.Add('vltotal3'    , ftCurrency);
  if mes > 3 then
  begin
    mtbl.m.FieldDefs.Add('nmmes4'      , ftString, 10);
    mtbl.m.FieldDefs.Add('qtitem4'     , ftCurrency);
    mtbl.m.FieldDefs.Add('vlunitario4' , ftCurrency);
    mtbl.m.FieldDefs.Add('vltotal4'    , ftCurrency);
    if mes > 4 then
    begin
      mtbl.m.FieldDefs.Add('nmmes5'      , ftString, 10);
      mtbl.m.FieldDefs.Add('nmmes6'      , ftString, 10);
      mtbl.m.FieldDefs.Add('qtitem5'     , ftCurrency);
      mtbl.m.FieldDefs.Add('qtitem6'     , ftCurrency);
      mtbl.m.FieldDefs.Add('vlunitario5' , ftCurrency);
      mtbl.m.FieldDefs.Add('vlunitario6' , ftCurrency);
      mtbl.m.FieldDefs.Add('vltotal5'    , ftCurrency);
      mtbl.m.FieldDefs.Add('vltotal6'    , ftCurrency);
    end;
  end;
  mtbl.m.FieldDefs.Add(_vltotal     , ftCurrency);
  mtbl.m.FieldDefs.Add(_vlmedia     , ftCurrency);
  mtbl.m.IndexDefs.Add(_pk, 'nmgrupo;nmcntcusto;nmfornecedor;nmproduto', []);
  mtbl.m.IndexName := _pk;
  mtbl.m.CreateDataSet;
end;

procedure TReport.gerar;
  function nmmes(numes:Integer):string;
  begin
    result := FormatDateTime(_mmmm, Ultimo_Dia_Mes(Primeiro_dia_mes_anterior(dti_))+1+((numes-1)*31));
  end;
  procedure set_mes;
  var
    i : Integer;
  begin
    for i := 1 to mes do
    begin
      mtbl.m.Fieldbyname(_nm+_mes+inttostr(i)).AsString := nmmes(i);
    end;
  end;
  function fmes:string;
  begin
    result := IntToStr(StrToInt(q.q.fieldbyname(_ano).asstring+
                       FormatarTextoEsquerda(q.q.fieldbyname(_mes).asstring, 2, _0))-
                       strtoint(FormatDateTime(_yyyymm, dti_))+1);
  end;
begin
  frmprogressbar := tfrmprogressbar.Create(nil);
  criar_fields;
  q := TClasseQuery.Create(makesql);
  try
    frmprogressbar.Show;
    frmprogressbar.pnl.Caption := 'Acessando os dados...';
    application.ProcessMessages;
    frmprogressbar.gau.MaxValue := q.q.RecordCount;
    while not q.q.Eof do
    begin
      frmprogressbar.pnl.Caption := 'Processando. Registro '+inttostr(q.q.RecNo)+' de '+inttostr(frmprogressbar.gau.MaxValue);
      frmprogressbar.gau.Progress := q.q.RecNo;
      Application.ProcessMessages;
      if mtbl.m.FieldByName(nmfield).AsString <> q.q.FieldByName(nmfield).AsString then
      begin
        if mtbl.m.State = dsinsert then
        begin
          mtbl.m.Fieldbyname(_qt+_media).AsCurrency := mtbl.m.Fieldbyname(_qt+_total).AsCurrency / mes;
          mtbl.m.Fieldbyname(_vlmedia).AsCurrency := mtbl.m.Fieldbyname(_vltotal).AsCurrency / mes;
          mtbl.m.Post;
        end;
        mtbl.m.Insert;
        mtbl.m.Fieldbyname(_nmgrupo).AsString      := q.q.fieldbyname(_nmgrupo).AsString;
        mtbl.m.Fieldbyname(_nmcntcusto).AsString   := q.q.fieldbyname(_nmcntcusto).AsString;
        mtbl.m.Fieldbyname(_nmfornecedor).AsString := q.q.fieldbyname(_nmfornecedor).AsString;
        mtbl.m.Fieldbyname(_nmproduto).AsString    := q.q.fieldbyname(_nmproduto).AsString;
        set_mes;
        mtbl.m.Fieldbyname(_ds+_ano).AsString        := FormatDateTime(_YYYY, dti_);
      end;
      //showmessage(fmes);
      mtbl.m.Fieldbyname(_qtitem    +fmes).AsCurrency := q.q.fieldbyname(_qtitem).AsCurrency;
      mtbl.m.Fieldbyname(_vlunitario+fmes).AsCurrency := q.q.fieldbyname(_vlunitario).AsCurrency;
      mtbl.m.Fieldbyname(_vltotal   +fmes).AsCurrency := q.q.fieldbyname(_vltotal).AsCurrency;
      mtbl.m.Fieldbyname(_vltotal).AsCurrency         := mtbl.m.Fieldbyname(_vltotal).AsCurrency + q.q.fieldbyname(_vltotal).AsCurrency;
      mtbl.m.Fieldbyname(_qt+_total).AsCurrency       := mtbl.m.Fieldbyname(_qt+_total).AsCurrency + q.q.fieldbyname(_qtitem).AsCurrency;
      q.q.Next;
    end;
    if mtbl.m.State = dsinsert then
    begin
      mtbl.m.Fieldbyname(_qt+_media).AsCurrency := mtbl.m.Fieldbyname(_qt+_total).AsCurrency / mes;
      mtbl.m.Fieldbyname(_vlmedia).AsCurrency   := mtbl.m.Fieldbyname(_vltotal).AsCurrency / mes;
      mtbl.m.Post;
    end;
  finally
    FreeAndNil(q);
    FreeAndNil(frmprogressbar);
  end;
end;

end.
