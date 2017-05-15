unit classepaciente;

interface

uses
  forms, sysutils, ComCtrls, classes, StdCtrls, Controls, ExtCtrls, dialogs,
  uRegistro, udatahora, ustrings, uprogressbar, uconstantes,
  classequery, classecopiarregistro, classeempresa, classeregistrainformacao, classegerar,
  classeEndereco, classeexecutasql, classeretornasql, classeaplicacao;

type
  TPaciente = class(tobject)
  private
  public
    nufone1, nucpf, nucpf_, nmstpaciente, hint_nmpaciente, cdpaciente, nmpaciente, email : string;
    bogerarinfo : Boolean;
    endereco : TEndereco;
    constructor create;
    destructor  destroy; override;
    function    Ler(cod: string):boolean;
  end;

implementation

function TPaciente.Ler(cod: string):boolean;
var
  q : Tclassequery;
  function make_hint_paciente:string;
  begin
    result := 'CPF: '+nucpf;
    result := result + #13'Endereço: '+endereco.dsendereco;
    if endereco.dsnumero <> '' then
    begin
      result := result+', '+endereco.dsnumero;
    end;
    if endereco.dscomplemento <> '' then
    begin
      result := result+', '+endereco.dscomplemento;
    end;
    result := result + ' Fone: '+nufone1              +
                   #13'Bairro: '+endereco.nmbairro    +
                     ' Cidade: '+endereco.nmmunicipio +
                         ' UF: '+endereco.sguf        +
                        ' CEP: '+endereco.nucep;
  end;
  function makesql:string;
  begin
    result := 'select p.cdpaciente'+
                    ',p.nmpaciente'+
                    ',uf.sguf'+
                    ',p.nucpf'+
                    ',p.dsendereco'+
                    ',p.dsnumero'+
                    ',p.dscomplemento'+
                    ',p.nucxpostal'+
                    ',p.nufone1'+
                    ',p.nmbairro'+
                    ',m.nmmunicipio'+
                    ',p.nucep'+
                    ',s.bogerarinfo'+
                    ',s.nmstpaciente '+
              'from paciente p '+
              'left join uf on p.cduf=uf.cduf ' +
              'left join municipio m on m.cdmunicipio=p.cdmunicipio '+
              'left join stpaciente s on s.cdstpaciente=p.cdstpaciente and p.cdempresa=s.cdempresa '+
              'where p.cdempresa='+empresa.cdempresa.tostring+' and p.cdfornecedor='+cod;
  end;
begin
  result := false;
  if cod = '' then
  begin
    exit;
  end;
  q := TClasseQuery.create;
  try
    q.q.sql.Text    := makesql;
    q.q.open;
    if q.q.fieldbyname(_cdpaciente).AsCurrency < 1 then
    begin
      exit;
    end;
    nmpaciente             := q.q.fieldbyname(_nmpaciente).asstring;
    cdpaciente             := q.q.fieldbyname(_cdpaciente).asstring;
    bogerarinfo            := q.q.fieldbyname(_bogerarinfo).AsString    = _S;
    nmstpaciente           := q.q.fieldbyname(_nmstpaciente).asstring;
    nucpf_                 := removercaracteres(q.q.fieldbyname(_nucpf).AsString);
    nucpf                  := q.q.fieldbyname(_nucpf).asstring;
    nufone1                := q.q.fieldbyname(_nufone1).asstring;
    endereco.dsendereco    := q.q.fieldbyname(_dsendereco).AsString;
    endereco.dsnumero      := q.q.fieldbyname(_dsnumero).AsString;
    endereco.dscomplemento := q.q.fieldbyname(_dscomplemento).asstring;
    endereco.nucxpostal    := q.q.fieldbyname(_nucxpostal).AsString;
    endereco.nmbairro      := q.q.fieldbyname(_nmbairro).AsString;
    endereco.nmmunicipio   := q.q.fieldbyname(_nmmunicipio).asstring;
    endereco.nucep         := q.q.fieldbyname(_nucep).AsString;
    endereco.sguf          := q.q.fieldbyname(_sguf).asstring;
    hint_nmpaciente        := make_hint_paciente;
    result                 := true;
  finally
    freeandnil(q);
  end;
end;

constructor TPaciente.create;
begin
end;

destructor TPaciente.destroy;
begin
  inherited;
end;

end.
