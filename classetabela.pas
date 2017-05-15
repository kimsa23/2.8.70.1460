unit classetabela;

interface

uses
  SysUtils,
  uconstantes,
  classedao;


Type
  TTabela = class(TPersintentObject)
  private
    Fcdtabela: integer;
    Fboreadonly: string;
    Fdssql2: string;
    Fnmtabela: string;
    Fdssql: string;
    Fnmexibe: string;
    procedure Setboreadonly(const Value: string);
    procedure Setcdtabela(const Value: integer);
    procedure Setdssql(const Value: string);
    procedure Setdssql2(const Value: string);
    procedure Setnmexibe(const Value: string);
    procedure Setnmtabela(const Value: string);
  public
    [keyfield]
    property cdtabela : integer read Fcdtabela write Setcdtabela;
    property nmtabela : string read Fnmtabela write Setnmtabela;
    property nmexibe : string read Fnmexibe write Setnmexibe;
    property dssql : string read Fdssql write Setdssql;
    property dssql2 : string read Fdssql2 write Setdssql2;
    property boreadonly : string read Fboreadonly write Setboreadonly;
    function Select(const AValue: Integer):boolean;
  end;

implementation

function TTabela.Select(const AValue: Integer): boolean;
begin
  cdtabela := avalue;
  result := inherited select;
end;

procedure TTabela.Setboreadonly(const Value: String);
begin
  Fboreadonly := Value;
end;

procedure TTabela.Setcdtabela(const Value: integer);
begin
  Fcdtabela := Value;
end;

procedure TTabela.Setdssql(const Value: string);
begin
  Fdssql := Value;
end;

procedure TTabela.Setdssql2(const Value: string);
begin
  Fdssql2 := Value;
end;

procedure TTabela.Setnmexibe(const Value: string);
begin
  Fnmexibe := Value;
end;

procedure TTabela.Setnmtabela(const Value: string);
begin
  Fnmtabela := Value;
end;

end.
