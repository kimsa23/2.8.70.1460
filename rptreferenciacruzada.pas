unit rptreferenciacruzada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  DB, DBClient, sqlexpr,
  classeaplicacao, classeempresa, classequery, 
  ustrings, uconstantes,
  frxCross, frxClass, frxDBSet, frxDesgn, frxExportPDF, frxExportXLS;

type
  Tfrmreferenciacruzada = class(TForm)
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxDesigner1: TfrxDesigner;
    rpt: TfrxReport;
    pip: TfrxDBDataset;
    cds: TClientDataSet;
    cdsnmx: TStringField;
    cdsnmy: TStringField;
    cdsvalor: TCurrencyField;
    cdsnmcoluna: TStringField;
    cdsnmlinha: TStringField;
    cdsdti: TDateField;
    cdsdtf: TDateField;
    cdstitle: TStringField;
    cdsnmydata: TDateField;
  private { Private declarations }
  public { Public declarations }
  end;

var
  frmreferenciacruzada: Tfrmreferenciacruzada;

function reportReferenciaCruzada (titulo, nmcoluna, nmlinha, nmvalor, nmdata, tbl:string; dti, dtf: TDate):boolean;
function reportReferenciaCruzada1(titulo, nmcoluna, nmlinha:string; dti, dtf: TDate):boolean;

implementation

{$R *.dfm}

function reportReferenciaCruzada(titulo, nmcoluna, nmlinha, nmvalor, nmdata, tbl:string; dti, dtf: TDate):boolean;
  function makesql_plconta:string;
  begin
    result :='select nmplconta'+
                   ',nmcntcusto'+
                   ',sum(vlliquido) '+
              'from baixa b '+
              'inner join autpagto a on a.cdautpagto=b.cdautpagto and b.cdempresa=a.cdempresa ' +
              'inner join cntcusto c on c.cdcntcusto=a.cdcntcusto and c.cdempresa=a.cdempresa '+
              'inner join plconta p on p.cdplconta=a.cdplconta and p.cdempresa=a.cdempresa '+
              'where b.cdempresa='+empresa.cdempresa.tostring+' and b.dtbaixa between '+getdtbanco(dti)+' and '+getdtbanco(dtF)+' '+
              'group by nmplconta'+
                      ',nmcntcusto';
  end;
  function makesql_fornecedor_mes:string;
  begin
    result := 'select nmfornecedor'+
                    ',extract(Month from a.dtemissao)'+
                    ',sum('+nmvalor+') '+
              'from autpagto a '+
              'inner join fornecedor f on f.cdfornecedor=a.cdfornecedor and f.cdempresa=a.cdempresa '+
              'where a.cdempresa='+empresa.cdempresa.tostring+' and a.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtF)+' '+
              'group by nmfornecedor,extract(Month from a.dtemissao)'
  end;
  function makesql_fornecedor:string;
  begin
    result := 'select nmfornecedor'+
                    ',nmcntcusto'+
                    ',sum(vlliquido) '+
              'from baixa b '+
              'inner join autpagto a on a.cdautpagto=b.cdautpagto and b.cdempresa=a.cdempresa ' +
              'inner join cntcusto c on c.cdcntcusto=a.cdcntcusto and c.cdempresa=a.cdempresa '+
              'inner join fornecedor f on f.cdfornecedor=a.cdfornecedor and f.cdempresa=a.cdempresa '+
              'where b.cdempresa='+empresa.cdempresa.tostring+' and b.dtbaixa between '+getdtbanco(dti)+' and '+getdtbanco(dtF)+' '+
              'group by nmfornecedor'+
                      ',nmcntcusto'
  end;
  function makesql_representante_ano:string;
  begin
    result := 'select nmrepresentante'+
                    ',extract(year from s.dtemissao)'+
                    ',sum('+nmvalor+') '+
              'from saida s '+
              'inner join representante r on r.cdrepresentante=s.cdrepresentante and s.cdempresa=r.cdempresa '+
              'where s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtF)+' '+
              'group by nmrepresentante,extract(year from s.dtemissao)';
  end;
  function makesql_representante_mes:string;
  begin
    result := 'select nmrepresentante'+
                    ',extract(Month from s.dtemissao)'+
                    ',sum('+nmvalor+') '+
              'from saida s '+
              'inner join representante r on r.cdrepresentante=s.cdrepresentante and s.cdempresa=r.cdempresa '+
              'where s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtF)+' '+
              'group by nmrepresentante,extract(Month from s.dtemissao)';
  end;
  function makesql_representante_dia:string;
  begin
    result := 'select nmrepresentante'+
                    ',s.dtemissao'+
                    ',sum('+nmvalor+') '+
              'from saida s '+
              'inner join representante r on r.cdrepresentante=s.cdrepresentante and s.cdempresa=r.cdempresa '+
              'where s.cdempresa='+empresa.cdempresa.tostring+' and s.dtemissao between '+getdtbanco(dti)+' and '+getdtbanco(dtF)+' '+
              'group by nmrepresentante,s.dtemissao';
  end;
  function makesql:string;
  begin
         if nmlinha = 'Plano Contas'                                 then result := makesql_plconta
    else if (nmlinha = Maiuscula(_Fornecedor)) and (nmcoluna = _Mes) then result := makesql_fornecedor_mes
    else if nmlinha = Maiuscula(_Fornecedor)                         then result := makesql_fornecedor
    else if (nmlinha = _Representante) and (nmcoluna = _Ano)         then result := makesql_representante_ano
    else if (nmlinha = _Representante) and (nmcoluna = _Mes)         then result := makesql_representante_mes
    else if (nmlinha = _Representante) and (nmcoluna = _Dia)         then result := makesql_representante_dia
    else                                                                  abort;
  end;
  procedure processar_dados(c: tclientdataset);
  var
    q : TClasseQuery;
  begin;
    q := TClasseQuery.create(makesql);
    try
      if not c.Active then
      begin
        c.CreateDataSet;
        c.Open;
      end;
      while not q.q.Eof do
      begin
        c.insert;
        c.Fieldbyname(_dti).AsDateTime      := dti;
        c.Fieldbyname(_dtf).AsDateTime      := dtf;
        c.Fieldbyname(_title).AsString      := titulo;
        c.Fieldbyname(_nm+_x).AsString      := copy(q.q.Fields[0].asstring, 1, 20);
             if nmcoluna = _dia then c.Fieldbyname(_nm+_y+_data).AsDateTime := q.q.Fields[1].AsDateTime
        else if nmcoluna = _mes then c.Fieldbyname(_nm+_y).AsString         := FormatarTextoEsquerda(q.q.Fields[1].asstring, 2, _0)
                                else c.Fieldbyname(_nm+_y).AsString         := copy(q.q.Fields[1].asstring, 1, 20);
        c.Fieldbyname(_nm+_coluna).AsString := nmcoluna;
        c.Fieldbyname(_nm+_linha).AsString  := nmlinha;
        c.Fieldbyname(_valor).AsCurrency    := q.q.Fields[2].AsCurrency;
        c.post;
        q.q.Next;
      end;
    finally
      FreeAndNil(q);
    end;
  end;
begin
  frmreferenciacruzada := tfrmreferenciacruzada.create(nil);
  try
    processar_dados(frmreferenciacruzada.cds);
    frmreferenciacruzada.rpt.ShowReport;
    result := true;
  finally
    freeandnil(frmreferenciacruzada);
  end;
end;

function reportReferenciaCruzada1(titulo, nmcoluna, nmlinha:string; dti, dtf: TDate):boolean;
  procedure processar_dados(c: tclientdataset);
    function makesql:string;
    begin
      result := 'select nmplconta'+
                      ',nmcntcusto'+
                      ',sum(vlliquido) '+
                'from baixa b '+
                'inner join autpagto a on a.cdautpagto=b.cdautpagto and b.cdempresa=a.cdempresa ' +
                'inner join cntcusto c on c.cdcntcusto=a.cdcntcusto and c.cdempresa=a.cdempresa '+
                'inner join plconta p on p.cdplconta=a.cdplconta and p.cdempresa=a.cdempresa '+
                'where b.cdempresa='+empresa.cdempresa.tostring+' and b.dtbaixa between '+getdtbanco(dti)+' and '+getdtbanco(dtF)+' '+
                ' group by nmplconta'+
                        ',nmcntcusto'
    end;
  var
    q : TClasseQuery;
  begin;
    q := TClasseQuery.create(makesql);
    try
      if not c.Active then
      begin
        c.CreateDataSet;
        c.Open;
      end;
      while not q.q.Eof do
      begin
        c.insert;
        c.Fieldbyname(_dti).AsDateTime      := dti;
        c.Fieldbyname(_dtf).AsDateTime      := dtf;
        c.Fieldbyname(_title).AsString      := titulo;

        c.Fieldbyname(_nm+_x).AsString      := copy(q.q.Fields[0].asstring, 1, 20);
        c.Fieldbyname(_nm+_y).AsString      := copy(q.q.Fields[1].asstring, 1, 20);
        c.Fieldbyname(_nm+_coluna).AsString := nmcoluna;
        c.Fieldbyname(_nm+_linha).AsString  := nmlinha;
        c.Fieldbyname(_valor).AsCurrency    := q.q.Fields[2].AsCurrency;
        c.post;
        q.q.Next;
      end;
    finally
      FreeAndNil(q);
    end;
  end;
begin
  frmreferenciacruzada := tfrmreferenciacruzada.create(nil);
  try
    processar_dados(frmreferenciacruzada.cds);
    frmreferenciacruzada.rpt.ShowReport;
    result := true;
  finally
    freeandnil(frmreferenciacruzada);
  end;
end;

end.
