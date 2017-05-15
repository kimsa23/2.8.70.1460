unit classeregistrainformacao;

interface

uses
  sysutils, Classes,
  db,
  udatahora, uinterbase, uregistro, uconstantes,
  classeretornasql, classeempresa, classegerar;

function  Codigo_Computador           (nmcomputador: string):string;
procedure RegistraAlteracao           (ds: TDataSeT);overload;
procedure RegistraInclusao            (ds: TDataSet);overload;
procedure RegistraInformacao_         (ds: TDataset; liberado: boolean=false; user: string ='' );overload;
procedure RegistraLibAssinaturaDigital(ds: TDataSet; cdusuario: string);overload;
function  SQLRegistra                 :string;overload;

implementation

uses classeusuario;

function SQLRegistra:string;
begin
  result := inttostr(usuario.cdusuario)+','+
            inttostr(usuario.cdusuario)+','+
            vgcdcomputador+','+
            vgcdcomputador+','+
            quotedstr(tsbancos)+','+
            quotedstr(tsbancos)+','+
            empresa.cdempresa.tostring+')';
end;

function Codigo_Computador(nmcomputador: string):string;
begin
  result := qregistro.codigodonome(_computador, nmcomputador);
  if result = '' then
  begin
    result := inserirregistro(_computador, nmcomputador);
  end;
end;

procedure RegistraInformacao_(ds : TDataset; liberado: boolean=false; user: string ='' );
begin
  if liberado then
  begin
    RegistraLibAssinaturaDigital(ds, user)
  end
  else
  begin
         if ds.State = dsInsert then RegistraInclusao (ds)
    else if ds.State = dsEdit   then RegistraAlteracao(ds);
  end;
end;

procedure RegistraInclusao(ds: TDataSet);
begin
  ds.fieldbyname(_tsinclusao).AsDateTime  := tsbanco;
  ds.FieldByName(_cdusuarioi).AsInteger := usuario.cdusuario;
  ds.fieldbyname(_cdcomputadori).AsString := vgcdcomputador;
  if Existe_Campo(ds, _cdempresa) then
  begin
    ds.FieldByName(_cdempresa).AsLargeInt := Empresa.cdempresa;
  end;
  RegistraAlteracao(ds);
end;

procedure RegistraAlteracao(ds: TDataSet);
begin
  ds.fieldbyname(_tsalteracao).AsDateTime := tsbanco;
  ds.FieldByName(_cdusuarioa).AsInteger := usuario.cdusuario;
  ds.fieldbyname(_cdcomputadora).AsString := vgcdcomputador;
  if ds.FieldByName(_cdusuarioi).IsNull then RegistraInclusao(ds);
end;

procedure RegistraLibAssinaturaDigital(ds: TDataSet; cdusuario: string);
begin
  ds.FieldByName(_tsliberado).asdatetime  := tsbanco;
  ds.FieldByName(_cdusuariol).asstring    := cdusuario;
  ds.FieldByName(_cdcomputadorl).asstring := vgcdcomputador;
end;

end.
