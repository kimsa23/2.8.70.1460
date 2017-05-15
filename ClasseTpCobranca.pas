unit ClasseTpCobranca;

interface

uses classedao;

Type
  TTpCobranca = class(TRegistroQuipos)
  private
    Fnmtpcobranca: string;
    Fcdconta: integer;
    Fcdmovimentacao: integer;
    Fbobaixarpdv: string;
    Fcdtpcobranca: integer;
    fboavista: string;
  public
    [keyfield]
    property cdtpcobranca : integer read Fcdtpcobranca write fcdtpcobranca;
    property nmtpcobranca : string read Fnmtpcobranca write fnmtpcobranca;
    [fk]
    property cdconta : integer read Fcdconta write fcdconta;
    [fk]
    property cdmovimentacao : integer read Fcdmovimentacao write fcdmovimentacao;
    property bobaixarpdv : string read Fbobaixarpdv write fbobaixarpdv;
    property boavista : string read fboavista write fboavista;
  end;

implementation

end.
