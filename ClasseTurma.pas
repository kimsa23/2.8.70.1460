unit ClasseTurma;

interface

uses sysutils,
  classefuncionario, classedao,
  uconstantes;

Type
  TTurma = class(TRegistroQuipos)
  private
    FFuncionario : TFuncionarioList;
    Fcdturma: integer;
    Fcdsetor: integer;
    Fnmturma: string;
  public
    property Funcionario : TFuncionarioList read FFuncionario write FFuncionario;
    [keyfield]
    property cdturma : integer read Fcdturma write Fcdturma;
    property nmturma : string read Fnmturma write Fnmturma;
    property cdsetor : integer read Fcdsetor write Fcdsetor;
    constructor create;
    destructor destroy; override;
  end;

implementation

constructor TTurma.create;
begin
  fFuncionario := tFuncionarioList.create;
  inherited;
end;

destructor TTurma.destroy;
begin
  FreeAndNil(fFuncionario);
  inherited;
end;

end.
