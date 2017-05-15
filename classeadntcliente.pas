unit classeadntcliente;

interface

uses
  Controls, SysUtils, classes, data.db,
  sqlexpr,
  uregistro, uconstantes, ustrings,
  classeaplicacao, classeempresa, classeregistrainformacao, classeexecutasql, classequery,
  classeretornasql, classegerar, classedao;

type
  TAdntCliente = class(TRegistroQuipos)
  private
    Fcdcliente: LargeInt;
    Fprcomissao: double;
    Fvladntcliente: currency;
    Fdshistorico: string;
    Fdsobservacao: string;
    Fcdstadntcliente: integer;
    Fvlutilizado: currency;
    Fdtentrada: TDate;
    Fvlcomissao: currency;
    Fcdadntclienteorigem: integer;
    Fcdrepresentante: integer;
    Fcdadntcliente: integer;
    Fvlsaldo: currency;
    Fdtbaixa: TDate;
    Fcdmovbancario: integer;
    Fdtemissao: TDate;
  public
    [keyfield]
    property cdadntcliente : integer read Fcdadntcliente write Fcdadntcliente;
    [AObrigatorio]
    property cdcliente : LargeInt read Fcdcliente write Fcdcliente;
    [Fk]
    property cdmovbancario  : integer read Fcdmovbancario write Fcdmovbancario;
    [AObrigatorio]
    property cdstadntcliente : integer read Fcdstadntcliente write Fcdstadntcliente;
    property cdadntclienteorigem : integer read Fcdadntclienteorigem write Fcdadntclienteorigem;
    property cdrepresentante : integer read Fcdrepresentante write Fcdrepresentante;
    [AObrigatorio]
    property dtemissao : TDate read Fdtemissao write Fdtemissao;
    property dtbaixa : TDate read Fdtbaixa write Fdtbaixa;
    property dtentrada : TDate read Fdtentrada write Fdtentrada;
    [AObrigatorio]
    property vladntcliente : currency read Fvladntcliente write Fvladntcliente;
    property dshistorico : string read Fdshistorico write Fdshistorico;
    [AObrigatorio]
    property vlsaldo : currency read Fvlsaldo write Fvlsaldo;
    [AObrigatorio]
    property vlutilizado : currency read Fvlutilizado write Fvlutilizado;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property prcomissao : double read Fprcomissao write Fprcomissao;
    property vlcomissao : currency read Fvlcomissao write Fvlcomissao;
    class function ClientePossuiAdiantamento(codigo : string; var cdadiantamento, valor:TStrings):boolean;overload;
    class function ClientePossuiAdiantamento(codigo : string):boolean;overload;
  end;

implementation

class function TAdntCliente.ClientePossuiAdiantamento(codigo : string):boolean;
begin
  result := RetornaSQLInteger('select count(*) from adntcliente where cdempresa='+empresa.cdempresa.tostring+' and vlsaldo>0 and cdcliente='+codigo) > 0;
end;

class function TAdntCliente.ClientePossuiAdiantamento(codigo : string; var cdadiantamento, valor:TStrings):boolean;
var
  q : TClasseQuery;
begin
  result := false;
  if (codigo = '') or (RetornaSQLInteger('select count(*) from adntcliente where cdempresa='+empresa.cdempresa.tostring+' and vlsaldo>0 and cdcliente='+codigo) <= 0) then
  begin
    exit;
  end;
  q := TClassequery.create;
  try
    q.q.open('select cdadntcliente,vlsaldo from adntcliente where cdempresa='+empresa.cdempresa.tostring+' and vlsaldo>0 and cdcliente='+codigo+' order by cdadntcliente');
    while not q.q.eof do
    begin
      cdadiantamento.add(q.q.fields[0].asstring);
      valor.add(formatfloat(__moeda, q.q.fields[1].ascurrency));
      q.q.next;
    end;
    result := true;
  finally
    freeandnil(q);
  end;
end;

end.
