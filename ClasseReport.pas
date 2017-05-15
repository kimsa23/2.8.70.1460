unit ClasseReport;

interface

uses sysutils,
  classequery, classeretornasql, classedao,
  uconstantes, uregistro;

Type
  TReport = class(TPersintentObject)
  private
    Fboimprimirdireto: String;
    Fcdtpreport: integer;
    Fcdform: integer;
    Fcdstreport: integer;
    Fnusequenciamenu: integer;
    Fcdreport: integer;
    Fdsrelatorio: string;
    Fdsopcoes: string;
    Fdstitulo: string;
    Fdsscript: string;
    Fnmreport: string;
    Fnucopia: integer;
    procedure Setnucopia(const Value: integer);
  public
    [KeyField]
    property cdreport : integer read Fcdreport write Fcdreport;
    [FK]
    property cdstreport : integer read Fcdstreport write Fcdstreport;
    [FK]
    property cdtpreport : integer read Fcdtpreport write Fcdtpreport;
    [FK]
    property cdform : integer read Fcdform write Fcdform;
    property nmreport : string read Fnmreport write Fnmreport;
    property nusequenciamenu : integer read Fnusequenciamenu write Fnusequenciamenu;
    property dsrelatorio : string read Fdsrelatorio write Fdsrelatorio;
    property dsscript : string read Fdsscript write Fdsscript;
    property dstitulo : string read Fdstitulo write Fdstitulo;
    property dsopcoes : string read Fdsopcoes write Fdsopcoes;
    property boimprimirdireto : String read Fboimprimirdireto write Fboimprimirdireto;
    property nucopia : integer read Fnucopia write Setnucopia;
    class function getsql1(dsrelatorio, sqlwhere:string):string;
    class function SubstituiParametrosSQL (InstrucaoSQL: string; const Parametro: string; NovoTexto: string):string;
  end;

implementation

Class function TReport.getsql1(dsrelatorio, sqlwhere: string): string;
begin
  result := dsrelatorio;
  if Pos(_codigo_quebra_sql_relatorio, result) <= 0 then
  begin
    Exit;
  end;
  if Pos(_codigo_quebra_sql_relatorio, result) = 1 then
  begin
    result := ''
  end
  else
  begin
    result := Copy(Result, 1, Pos(_codigo_quebra_sql_relatorio, Result)-1);
  end;
end;

procedure TReport.Setnucopia(const Value: integer);
begin
  Fnucopia := Value;
end;

class function TReport.SubstituiParametrosSQL(InstrucaoSQL: string; const Parametro: string; NovoTexto: string):string;
begin
  result := StringReplace (uppercase(InstrucaoSQL), Parametro, NovoTexto,[rfReplaceAll,rfIgnoreCase]);
end;

end.
