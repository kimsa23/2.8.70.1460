unit classeEndereco;

interface

uses
  system.UITypes,
  forms, Controls, Classes, SysUtils, Dialogs,
  sqlexpr, db,
  uConstantes, ustrings,
  classeretornasql;

type
  TEndereco = class(tObject)
  private
  public
    nmpais : string;
    dsendereco : string;
    dsnumero : string;
    dscomplemento : string;
    nmbairro : string;
    nmmunicipio : string;
    nucep : string;
    sguf : string;
    nucxpostal: string;
    cdpais : Integer;
    cdmunicipio : Integer;
    cduf : Integer;
  end;
  QEndereco = class
    class function  dsenderecocompleto(endereco: TEndereco): string;
    class procedure check_municipio_obrigatorio(dataset   :TDataset   ; dssufixo:string='');
    class procedure check_municipio_uf         (dataset:TDataset; dssufixo:string='');
    class function  ConsistirMunicipio         (tbl, codigo:string):boolean;
    class function  ConsistirNumero            (tbl, codigo:string):boolean;
    class function  get_cdmunicipio            (sguf, nmcidade:string):string;
  end;


implementation

uses uRegistro, classeempresa;

class procedure QEndereco.check_municipio_obrigatorio(dataset: TDataset; dssufixo: string);
begin
  if not ((dataset.State = dsedit) or (dataset.State = dsinsert)) then
  begin
    exit;
  end;
  if dataset.fieldbyname(_cdmunicipio+dssufixo).isnull then
  begin
    messagedlg(Format(_msg_s_eh_um_campo_obrigatorio, [__municipio]), mtinformation, [mbok], 0);
    dataset.fieldbyname(_cdmunicipio+dssufixo).FocusControl;
    abort;
  end;
end;

class procedure QEndereco.check_municipio_uf(dataset: TDataset; dssufixo: string);
var
  cduf : string;
begin
  if not ((dataset.State = dsedit) or (dataset.State = dsinsert)) then
  begin
    exit;
  end;
  if not dataset.fieldbyname(_cdmunicipio+dssufixo).isnull then
  begin
    cduf := nomedocodigo(_municipio, dataset.fieldbyname(_cdmunicipio+dssufixo).AsString, _cduf);
    if dataset.fieldbyname(_cduf+dssufixo).AsString <> cduf then
    begin
      messagedlg('O município não pertence a Unidade Federativa informada.'#13'Selecione um município de acordo com a unidade federativa.', mtinformation, [mbok], 0);
      dataset.fieldbyname(_cdmunicipio+dssufixo).FocusControl;
      abort;
    end;
  end;
end;

class function QEndereco.ConsistirMunicipio(tbl, codigo: string): boolean;
begin
  result := RetornaSQLString('select cdmunicipio from '+tbl+' where cdempresa='+empresa.cdempresa.toString+' and cd'+tbl+'='+codigo) <> '';
  if result then
  begin
    exit;
  end;
  MessageDlg('Município não digitada no cadastro do '+tbl+'.'#13'Altere o cadastro do '+tbl+' para continuar.', mtinformation, [mbok], 0);
end;

class function QEndereco.ConsistirNumero(tbl, codigo: string): boolean;
begin
  result := RetornaSQLString('select dsnumero from ' +tbl+' where cdempresa='+empresa.cdempresa.toString+' and cd'+tbl+'='+codigo) <> '';
  if result then
  begin
    exit;
  end;
  MessageDlg('Número do Endereço não foi digitada no cadastro do '+tbl+'.'#13'Altere o cadastro do '+tbl+' para continuar.', mtinformation, [mbok], 0);
end;

class function QEndereco.dsenderecocompleto(endereco: TEndereco): string;
begin
  result := endereco.dsendereco;
  if endereco.dsnumero <> '' then
  begin
    if result <> '' then
    begin
      result := result + ', ';
    end;
    result := result + endereco.dsnumero;
  end;
  if endereco.dscomplemento <> '' then
  begin
    if result <> '' then
    begin
      result := result + ', ';
    end;
    result := result + endereco.dscomplemento;
  end;
end;

class function QEndereco.get_cdmunicipio(sguf, nmcidade: string): string;
begin
  result := RetornaSQLString('select cdmunicipio from municipio inner join uf on uf.cduf=municipio.cduf where sguf='+quotedstr(sguf)+' and nmmunicipio='+quotedstr(nmcidade));
end;

end.
