unit classeadntfornecedor;

interface

uses
  Controls, SysUtils, classes, data.db,
  sqlexpr,
  uconstantes, ustrings, uregistro,
  classeaplicacao, classeempresa, classeregistrainformacao, classeexecutasql,
  classegerar, classeretornasql, classequery, classedao;

type
  TAdntFornecedor = class(TRegistroQuipos)
  private
    Fcdadntfornecedor: integer;
    Fdshistorico: string;
    Fdsobservacao: string;
    Fcdfornecedor: LargeInt;
    Fvladntfornecedor: currency;
    Fvlutilizado: currency;
    Fdtentrada: TDate;
    Fcdstadntfornecedor: integer;
    Fvlsaldo: currency;
    Fdtbaixa: TDate;
    Fcdmovbancario: integer;
    Fdtemissao: TDate;
  public
    [keyfield]
    property cdadntfornecedor : integer read Fcdadntfornecedor write Fcdadntfornecedor;
    [AObrigatorio]
    [fk]
    property cdfornecedor : LargeInt read Fcdfornecedor write Fcdfornecedor;
    [AObrigatorio]
    property cdstadntfornecedor : integer read Fcdstadntfornecedor write Fcdstadntfornecedor;
    [Fk]
    property cdmovbancario : integer read Fcdmovbancario write Fcdmovbancario;
    [AObrigatorio]
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property dtbaixa : TDate read Fdtbaixa write Fdtbaixa;
    property dtentrada : TDate read Fdtentrada write Fdtentrada;
    [AObrigatorio]
    property vladntfornecedor : currency read Fvladntfornecedor write Fvladntfornecedor;
    property dshistorico : string read Fdshistorico write Fdshistorico;
    [AObrigatorio]
    property vlsaldo : currency read Fvlsaldo write Fvlsaldo;
    property vlutilizado : currency read Fvlutilizado write Fvlutilizado;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    class function FornecedorPossuiAdiantamento(codigo : string; var cdadiantamento, valor:TStrings):boolean;overload;
    class function FornecedorPossuiAdiantamento(codigo : string):boolean;overload;
  end;

implementation

class function TAdntFornecedor.FornecedorPossuiAdiantamento(codigo : string; var cdadiantamento, valor:TStrings):boolean;
var
  q : TClasseQuery;
begin
  result := false;
  if (codigo = '') or (RetornaSQLInteger('select count(*) from adntfornecedor where cdempresa='+empresa.cdempresa.tostring+' and vlsaldo>0 and cdfornecedor='+codigo) = 0) then
  begin
    exit;
  end;
  q := TClasseQuery.create('select cdadntfornecedor,vlsaldo from adntfornecedor where cdempresa='+empresa.cdempresa.tostring+' and vlsaldo>0 and cdfornecedor='+codigo+' order by cdadntfornecedor');
  try
    while not q.q.eof do
    begin
      cdadiantamento.add(q.q.fields[0].asstring);
      valor.add         (formatfloat(__moeda, q.q.fields[1].ascurrency));
      q.q.next;
    end;
    result := true;
  finally
    freeandnil(q);
  end;
end;

class function TAdntFornecedor.FornecedorPossuiAdiantamento(codigo : string):boolean;
begin
  result := RetornaSQLInteger('select count(*) from adntfornecedor where cdempresa='+empresa.cdempresa.tostring+' and vlsaldo>0 and cdfornecedor='+codigo) > 0;
end;

end.
