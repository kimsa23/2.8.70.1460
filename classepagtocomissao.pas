unit classepagtocomissao;

interface

uses forms, controls, sysutils,
  DB, sqlexpr,
  uregistro, unumero, uconstantes, ustrings,
  classeempresa, classeretornasql, classeexecutasql;

type TPagtoComissao = class(TObject)
  private
  public
    constructor create;
    procedure   CorrigirComissaoDuplicata(cdrepresentante, dti, dtf:string);
    function    representanteQuantidadeDependentes(cdrepresentante: string):integer;
    function    ultimaDataLimite(cdrepresentante: string): TDate;
  end;

implementation

// este código foi retirado do procedimento processarcomissaopaga colocar este código em consulta representate como função
procedure TPagtoComissao.CorrigirComissaoDuplicata(cdrepresentante, dti, dtf:string);
begin
  ExecutaSQL('update duplicata D '+
                    'set vlcomissao=(select COALESCE(saida.vlcomissao,0)*'+
                                             'COALESCE(duplicata.vlduplicata,0)/'+
                                             'COALESCE(saida.vltotal,0) '+
                                      'from saida '+
                                      'inner join duplicata on saida.cdsaida=duplicata.cdsaida and saida.cdempresa=duplicata.cdempresa '+
                                      'where duplicata.cdempresa=d.cdempresa and cdduplicata=D.cdduplicata '+
                                      'group by saida.vlcomissao,'+
                                               'saida.vltotal,'+
                                               'duplicata.vlduplicata '+
                                      'having saida.vltotal>0) '+
                    'WHERE d.cdempresa='+empresa.cdempresa.tostring+' and D.CDREPRESENTANTE='+cdrepresentante+' '+
                    'and D.DTBAIXA BETWEEN '+quotedstr(dti)+' and '+quotedstr(dtf)+';'+
                    'update duplicata D '+
                    'set vlcomissao=vlcomissao + '+
                                    '(select coalesce(saida.vlcomissao,0)-coalesce(sum(duplicata.vlcomissao),0) '+
                                    'from saida '+
                                    'inner join duplicata on saida.cdsaida=duplicata.cdsaida and duplicata.cdempresa=saida.cdempresa '+
                                    'where saida.cdempresa=d.cdempresa and saida.cdsaida=D.cdsaida '+
                                    'group by saida.cdsaida,saida.vlcomissao) '+
                    'where cdduplicata=(select max(cdduplicata) '+
                                       'from duplicata '+
                                       'where cdempresa=d.cdempresa and cdsaida=D.cdsaida) '+
                    'and duplicata.vlcomissao>0 '+
                    'and duplicata.cdempresa='+empresa.cdempresa.tostring+' '+
                    'and DUPLICATA.CDREPRESENTANTE='+cdrepresentante+' '+
                    'and DUPLICATA.DTBAIXA BETWEEN '+quotedstr(dti)+' and '+quotedstr(dtf)+';');
end;

function Tpagtocomissao.ultimaDataLimite(cdrepresentante: string): TDate;
begin
  result := RetornaSQLData('select dtlimite '+
                                 'from pagtocomissao '+
                                 'where cdempresa='+empresa.cdempresa.tostring+' '+
                                 'and cdrepresentante=(select max(cdrepresentante) '+
                                                      'from pagtocomissao '+
                                                      'where cdempresa='+empresa.cdempresa.tostring+' and cdrepresentante='+cdrepresentante+')');
end;

function Tpagtocomissao.representanteQuantidadeDependentes(cdrepresentante: string):integer;
begin
  result := RetornaSQLInteger('select nudependentes '+
                                    'from representante '+
                                    'where cdempresa='+empresa.cdempresa.tostring+' and cdrepresentante='+cdrepresentante);
end;

constructor TPagtoComissao.create;
begin
end;

end.
