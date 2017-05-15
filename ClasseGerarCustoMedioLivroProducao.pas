unit ClasseGerarCustoMedioLivroProducao;

interface

uses forms, classes, System.SysUtils, dialogs, System.Generics.Collections, db, system.Variants,
  classeempresa, classequery, classeretornasql, classeexecutasql, classeproduto,
  umontarsql, uConstantes, ustrings, uprogressbar;

type
  TCustoMedioLivroProducao = class
  private
    cdproduto : TStrings;
    cdgrupo : TStrings;
    dti : TDate;
    dtf : TDate;
    q : TClasseQuery;
    m : TDataClient;
    sql : TStrings;
    dtsaida : TDate;
    codigogrupo : Integer;
    codigo : string;
    qtestoque : currency;
    function sqlwhere:string;
    //function makesql:string;
    function existe_registro_dentro_faixa:boolean;
    procedure setcustoproducao;
    function vlcustoproducao(codigo:integer; dtsaida: TDate):currency;
    procedure Inserir_SCript(codigo : integer; dtsaida: TDate);
    function Gerar(cdproduto_, cdgrupo_: TStrings; datai, dataf: TDate): boolean;
    procedure CriarFields;
    procedure AdicionarHcustoProduto(sql: string; cdgrupo: integer);
    function MakesqlHcustoProducao(tipo: string; cdgrupo: integer):string;
  public
    constructor Create;
    destructor destroy; override;
    class function Processar(cdproduto_, cdgrupo_: TStrings; datai, dataf: TDate): boolean;
  end;

implementation

constructor TCustoMedioLivroProducao.Create;
begin
  inherited;
  q              := TClasseQuery.create;
  sql            := TStringList.Create;
  frmprogressbar := TFrmProgressBar.Create(nil);
  m              := TDataClient.create;
  CriarFields;
end;

procedure TCustoMedioLivroProducao.CriarFields;
begin
  m.m.FieldDefs.Add(_codigo, ftinteger);
  m.m.FieldDefs.Add(_data, ftDate);
  m.m.FieldDefs.Add(_valor, ftCurrency);
  m.m.CreateDataSet;
end;

destructor TCustoMedioLivroProducao.destroy;
begin
  freeandnil(q);
  freeandnil(sql);
  freeandnil(frmprogressbar);
  inherited;
end;

function TCustoMedioLivroProducao.existe_registro_dentro_faixa: boolean;
begin
  result := RetornaSQLInteger('select count(*) '+
                              'from produto p '+
                              'inner join hcustomedio h on h.cdproduto=p.cdproduto and h.cdempresa=p.cdempresa '+
                              'where h.cdempresa='+empresa.cdempresa.tostring+' '+
                              'and h.dthistorico between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and '+sqlwhere) > 0;
end;

function TCustoMedioLivroProducao.Gerar(cdproduto_, cdgrupo_: TStrings; datai, dataf: TDate): boolean;
begin
  cdproduto := cdproduto_;
  cdgrupo   := cdgrupo_;
  dti       := datai;
  dtf       := dataf;
  dtsaida   := 0;
  setcustoproducao;
  if existe_registro_dentro_faixa then
  begin
    sql.add('delete from hcustomedio '+
            'where cdempresa='+empresa.cdempresa.tostring+' '+
            'and dthistorico between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
            'and cdproduto in (select cdproduto from produto P where p.cdempresa='+empresa.cdempresa.tostring+' '+sqlwhere+');');
  end;
  q.q.Open('select i.cdproduto'+
                  ',i.dsespecie'+
                  ',i.dtsaida'+
                  ',i.qtestoque'+
                  ',p.cdgrupo '+
            'from livro l '+
            'inner join itlivro i on i.cdlivro=l.cdlivro and i.cdempresa=l.cdempresa '+
            'inner join produto p on p.cdproduto=i.cdproduto and p.cdempresa=i.cdempresa '+
            'where l.cdempresa='+empresa.cdempresa.tostring+' and i.dsespecie<>''SALD'' '+
            'and l.dtinicio between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' and '+sqlwhere+
            'order by p.cdgrupo,p.cdproduto,i.dtsaida,cditlivro');
  frmprogressbar.gau.MaxValue := q.q.RecordCount;
  frmprogressbar.Show;
  while not q.q.Eof do
  begin
    frmprogressbar.gau.Progress := q.q.RecNo;
    application.ProcessMessages;
    if codigo <> q.q.fieldbyname(_cdproduto).asstring then
    begin
      if codigo <> '' then
      begin
        inserir_script(codigogrupo, dtsaida);
      end;
      codigo  := q.q.fieldbyname(_cdproduto).asstring;
      dtsaida := q.q.fieldbyname(_dtsaida).asdatetime;
    end
    else if dtsaida <> q.q.Fieldbyname(_dtsaida).asdatetime then
    begin
      inserir_script(codigogrupo, dtsaida);
      dtsaida := q.q.fieldbyname(_dtsaida).asdatetime;
    end;
    codigogrupo  := q.q.fieldbyname(_cdgrupo).asInteger;
    qtestoque := q.q.fieldbyname(_qtestoque).ascurrency;
    q.q.next;
  end;
  result := ExecutaScript(sql);
end;

procedure TCustoMedioLivroProducao.Inserir_SCript(codigo: integer; dtsaida: TDate);
var
  hcustomedio : THCustoMedio;
begin
  hcustomedio := THCustoMedio.Create;
  try
    hcustomedio.cdempresa    := empresa.cdempresa;
    hcustomedio.cdproduto    := codigo;
    hcustomedio.dthistorico  := dtsaida;
    hcustomedio.vlcustomedio := vlcustoproducao(codigo, dtsaida);
    hcustomedio.qtestoque    := qtestoque;
    hcustomedio.vlsaldovalor := vlcustoproducao(codigogrupo, dtsaida) * qtestoque;
    sql.Add(hcustomedio.Insert(true));
  finally
    FreeAndNil(hcustomedio);
  end;
end;

class function TCustoMedioLivroProducao.Processar(cdproduto_, cdgrupo_: TStrings; datai, dataf: TDate): boolean;
var
  custo : TCustoMedioLivroProducao;
begin
  custo := TCustoMedioLivroProducao.Create;
  try
    result := custo.Gerar(cdproduto_, cdgrupo_, datai, dataf);
  finally
    FreeAndNil(custo);
  end;
end;

procedure TCustoMedioLivroProducao.AdicionarHcustoProduto(sql: string; cdgrupo:integer);
var
  c : TClasseQuery;
begin
  c := tClasseQuery.create(sql);
  try
    c.q.Open(sql);
    while not c.q.Eof do
    begin
      m.m.Insert;
      m.m.FieldByName(_codigo).AsInteger := cdgrupo;
      m.m.FieldByName(_data).AsDateTime  := c.q.fieldbyname(_dthistorico).asdatetime;
      m.m.FieldByName(_valor).AsCurrency := c.q.fieldbyname(_vlcustoproducao).ascurrency;
      c.q.Next;
    end;
  finally
    freeandnil(c);
  end;
end;

function TCustoMedioLivroProducao.MakesqlHcustoProducao(tipo: string; cdgrupo:integer):string;
var
  c : TClasseQuery;
begin
  if tipo = _d then
  begin
    result := 'select vlcustoproducao,dthistorico '+
               'from hcustoproducao '+
               'where cdempresa='+empresa.cdempresa.tostring+' and cdgrupo='+cdgrupo.ToString+' and dthistorico between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' order by dthistorico asc';
  end
  else
  begin
    result := 'select first 1 vlcustoproducao,dthistorico '+
               'from hcustoproducao '+
               'where cdempresa='+empresa.cdempresa.tostring+' and cdgrupo='+cdgrupo.ToString+' and dthistorico <'+getdtbanco(dti)+' order by dthistorico desc';
  end;
end;

procedure TCustoMedioLivroProducao.setcustoproducao;
var
  s : TClasseQuery;
begin
  s := TClasseQuery.create('select p.cdgrupo from produto P where p.cdempresa='+empresa.cdempresa.tostring+' '+sqlwhere+' group by p.cdgrupo');
  try
    while not s.q.Eof do
    begin
      AdicionarHcustoProduto(MakesqlHcustoProducao(_A, s.q.fieldbyname(_cdgrupo).asinteger), s.q.fieldbyname(_cdgrupo).asinteger); // anterior a faixa
      AdicionarHcustoProduto(MakesqlHcustoProducao(_B, s.q.fieldbyname(_cdgrupo).asinteger), s.q.fieldbyname(_cdgrupo).asinteger); // dentro da faixa
      s.q.Next;
    end;
  finally
    freeandnil(s);
  end;
end;

function TCustoMedioLivroProducao.sqlwhere: string;
begin
  sqlmontarlista(cdproduto, _p, _cdproduto, result);
  sqlmontarlista(cdgrupo  , _p, _cdgrupo  , result);
end;

function TCustoMedioLivroProducao.vlcustoproducao(codigo: integer; dtsaida: TDate): currency;
begin
  result := 0;
  if m.m.Locate('codigo;data', vararrayof([codigo, dtsaida]), []) then
  begin
    result := m.m.FieldByName(_valor).AsCurrency;
  end;
end;

end.
