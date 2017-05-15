unit ClasseTpFrete;

interface

uses sysutils,
  classedao,
  uconstantes;

Type
  Ttpfrete = class(TPersintentObject)
  private
    Fnmtpfrete: string;
    Fcdtpfrete: integer;
  public
    [keyfield]
    property cdtpfrete : integer read Fcdtpfrete write fcdtpfrete;
    property nmtpfrete : string read Fnmtpfrete write fnmtpfrete;
  end;

implementation

end.
