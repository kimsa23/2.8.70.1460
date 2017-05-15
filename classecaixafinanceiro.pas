unit classecaixafinanceiro;

interface

uses
  Controls, sysutils,
  FireDAC.Comp.Client,
  classeaplicacao, classeempresa, classequery,
  ustrings, uconstantes;

type
  TCaixaFinanceiro = class(tobject)
  private
    qry : TFDQuery;
  public
    constructor create(qry_: TFDQuery);
    function    ListaConta:string;
    procedure   Ler(nmconta:string; dti, dtf:TDate);
  end;

implementation

constructor TCaixaFinanceiro.create(qry_: TFDQuery);
begin
  qry  := qry_;
end;

function TCaixaFinanceiro.ListaConta: string;
var
  q : TClasseQuery;
begin
  q := TClasseQuery.create('select nmconta from conta where cdempresa='+empresa.cdempresa.tostring);
  try
    while not q.q.eof do
    begin
      if result <> '' then
      begin
        result := result + #13;
      end;
      result := result + q.q.fieldbyname(_nmconta).asstring;
      q.q.next;
    end;
  finally
    freeandnil(q);
  end;
end;

procedure TCaixaFinanceiro.Ler(nmconta: string; dti, dtf: TDate);
begin
  qry.close;
  if nmconta = '' then
  begin
    exit;
  end;
  qry.Open('SELECT M.DTEMISSAO'+
                          ',M.VLPAGAMENTO'+
                          ',M.VLSALDO'+
                          ',M.VLDEPOSITO'+
                          ',M.DSHISTORICO'+
                          ',M.CDMOVBANCARIO'+
                          ',MO.NMMOVIMENTACAO '+
                     'FROM MOVBANCARIO M '+
                     'left JOIN MOVIMENTACAO MO on mo.cdmovimentacao=m.cdmovimentacao and m.cdempresa=mo.cdempresa '+
                     'LEFT JOIN CONTA C ON C.CDCONTA=M.CDCONTA and c.cdempresa=m.cdempresa ' +
                     'WHERE m.cdempresa='+empresa.cdempresa.tostring+' and C.NMCONTA='+quotedstr(nmconta)+' and M.DTEMISSAO BETWEEN '+getdtbanco(dti)+' and '+getdtbanco(dtf)+' '+
                     'order by m.dtemissao,m.cdmovbancario');
end;

end.

