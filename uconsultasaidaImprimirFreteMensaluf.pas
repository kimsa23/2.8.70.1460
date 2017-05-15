unit uconsultasaidaImprimirFreteMensaluf;

interface

uses
  Forms, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  ComCtrls, ExtCtrls, Dialogs,
  db,
  umontarsql, ustrings, uregistro, uconstantes, unumero,
  classeaplicacao, classeempresa, classeexecutasql, classeretornasql, classequery,
  frxClass, frxDBSet;

type
  TfrmconsultasaidaImprimirFreteMensaluf = class(TForm)
    dbd1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmconsultasaidaImprimirFreteMensaluf: TfrmconsultasaidaImprimirFreteMensaluf;

function imprimirconsultasaidafretemensaluf(cdcondpagto, cdtpsaida, cduf: TStrings; dti, dtf : TDate):boolean;

implementation

{$R *.dfm}

function imprimirconsultasaidafretemensaluf(cdcondpagto, cdtpsaida, cduf: TStrings; dti, dtf : TDate):boolean;
  function makesql3:string;
  begin
    result := 'select count(*) '+
              'from saida s '+
              'left join cliente c on c.cdcliente=s.cdcliente and s.cdempresa=c.cdempresa '+
              'where s.cdempresa='+empresa.cdempresa.tostring+' '+
              'and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
              'and c.cduf is not null ';
    sqlmontarlista(cdtpsaida  , _s, _cdtpsaida  , result);
    sqlmontarlista(cdcondpagto, _s, _cdcondpagto, result);
    sqlmontarlista(cduf       , _c, _cduf       , result);
  end;
var
  qt : TDataClient;
  q : TClasseQuery;
  dti_, dtf_ : Tdate;
  function makesql:string;
  begin
    result := 'select sum(vlfrete)'+
                   ',sguf'+
                   ',sum(psbruto) ' +
              'from saida s '+
              'left join cliente c on c.cdcliente=s.cdcliente and s.cdempresa=c.cdempresa '+
              'left join uf on uf.cduf=c.cduf '+
              'where s.cdempresa='+empresa.cdempresa.tostring+' '+
              'and c.cduf is not null '+
              'and s.dtemissao between '+getdtbanco(dti_)+' and '+getdtbanco(dtf_)+' ';
    sqlmontarlista(cdtpsaida  , _s, _cdtpsaida  , result);
    sqlmontarlista(cdcondpagto, _s, _cdcondpagto, result);
    sqlmontarlista(cduf       , _c, _cduf       , result);
    result := result + 'group by uf.sguf';
  end;
  procedure criarfields;
  begin
    qt.m.FieldDefs.Clear;
    qt.m.FieldDefs.Add(_ano+_mes, ftString, 6);
    qt.m.FieldDefs.Add(_mes     , ftString, 10);
    qt.m.FieldDefs.Add(_vlfrete , ftcurrency);
    qt.m.FieldDefs.Add(_uf      , ftString, 2);
    qt.m.FieldDefs.Add(_psbruto , ftfloat);
    qt.m.CreateDataSet;
  end;
begin
  result  := false;
  if RetornaSQLInteger(makesql3) = 0 then
  begin
    exit;
  end;
  q     := TClasseQuery.create;
  qt := tdataclient.create;
  try
    criarfields;
    // verifica se existe registro
    dti_ := dti;
    dtf_ := dti;
    while dtf > dti do
    begin
      if formatdatetime(_MM, dtf_) <> formatdatetime(_MM, dti) then // quando virar mes
      begin
        // buscar media do mes
        q.q.close;
        q.q.open(makesql);
        while not q.q.Eof do
        begin
          if q.q.Fields[0].AsCurrency > 0 then
          begin
            qt.m.insert;
            qt.m.fieldbyname(_ano+_mes).asstring := formatdatetime(_YYYYMM, dtf_);
            qt.m.fieldbyname(_mes).asstring := formatdatetime(_mmm_yyyy, dtf_);
            qt.m.fieldbyname(_vlfrete).ascurrency := q.q.fields[0].ascurrency;
            qt.m.fieldbyname(_uf).asstring := q.q.fields[1].asstring;
            qt.m.fieldbyname(_psbruto).asfloat := q.q.fields[2].asfloat;
          end;
          q.q.Next;
        end;
        dti_ := dti; // reinicia os valores internos de data
      end;
      dtf_ := dti;
      dti  := dti + 1; // variar a data de dia a dia
    end;
    dtf_ := dti;
    // última dia da faixa, buscar media do mes
    q.q.close;
    q.q.sql.text := makesql;
    q.q.open;
    while not q.q.Eof do
    begin
      if q.q.fields[0].ascurrency > 0 then
      begin
        qt.m.insert;
        qt.m.fieldbyname(_ano+_mes).asstring  := formatdatetime(_YYYYMM, dtf_);
        qt.m.fieldbyname(_mes).asstring       := formatdatetime(_mmm_yyyy, dtf_);
        qt.m.fieldbyname(_vlfrete).ascurrency := q.q.fields[0].ascurrency;
        qt.m.fieldbyname(_uf).asstring        := q.q.fields[1].asstring;
        qt.m.fieldbyname(_psbruto).asfloat    := q.q.fields[2].asfloat;
      end;
      q.q.Next;
    end;
    // exibir o relatório
    frmconsultasaidaImprimirFreteMensaluf := tfrmconsultasaidaImprimirFreteMensaluf.Create(application);
    try
      with frmconsultasaidaImprimirFreteMensaluf do
      begin
        dbd1.DataSet := qT.m;
        frxReport1.ShowReport;
      end;
    finally
      freeandnil(frmconsultasaidaImprimirFreteMensaluf);
    end;
    result := true;
  finally
    freeandnil(q);
    freeandnil(qt);
  end;
end;

end.
