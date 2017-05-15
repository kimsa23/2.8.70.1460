unit ClasseSerie;

interface

uses controls, SysUtils,
  classeRetornaSql, classequery, classeexecutasql, classeempresa,
  uRegistro, uConstantes, classedao;

Type
  TSerie = class(TRegistroQuipos)
  private
    fcdserie : integer;
    fnudocfiscalicms : string;
    fnmserie : string;
    fnuserie : string;
    fnusequencia : integer;
    fboservico : String;
    fboativar : String;
  public
    [keyfield]
    property cdserie : integer read fcdserie write fcdserie;
    property nudocfiscalicms : string read fnudocfiscalicms write fnudocfiscalicms;
    property nmserie : string read fnmserie write fnmserie;
    property nuserie : string read fnuserie write fnuserie;
    property nusequencia : integer read fnusequencia write fnusequencia;
    property boservico : String read fboservico write fboservico;
    property boativar : String read fboativar write fboativar;
    class function Voltar_Numero_Serie(nusequencia, cdserie: integer): boolean;
  end;

implementation

class function TSerie.Voltar_Numero_Serie(nusequencia, cdserie: integer): boolean;
begin
  result := False;
  if cdserie = 0 then
  begin
    Exit;
  end;
  result := ExecutaSQL('update serie set nusequencia='+nusequencia.ToString+' where cdempresa='+empresa.cdempresa.ToString+' and cdserie='+cdserie.ToString+' and nusequencia>'+nusequencia.ToString);
end;

end.
