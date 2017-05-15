unit ClassePeriodicidade;

interface

uses classedao;

Type
  TPeriodicidade = class(TRegistroQuipos)
  private
    FnmPeriodicidade: string;
    FcdPeriodicidade: integer;
    fnumes: integer;
    fboativar: string;
    fnudias: integer;
  public
    [keyfield]
    property cdPeriodicidade : integer read FcdPeriodicidade write fcdPeriodicidade;
    property nmPeriodicidade : string read FnmPeriodicidade write fnmPeriodicidade;
    property boativar : string read fboativar write fboativar;
    property nudias : integer read fnudias write fnudias;
    property numes : integer read fnumes write fnumes;
  end;

implementation

end.
