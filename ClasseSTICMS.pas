unit ClasseSTICMS;

interface

uses
  classedao,
  uconstantes;

type
  TSTICMS = class(TPersintentObject)
  private
    Fnmsticms: string;
    Fboicmssubtrib: string;
    Fboentrada: string;
    Fbocte: string;
    Fnusticms: string;
    Fboaliquota: string;
    procedure Setboaliquota(const Value: string);
    procedure Setbocte(const Value: string);
    procedure Setboentrada(const Value: string);
    procedure Setboicmssubtrib(const Value: string);
    procedure Setnmsticms(const Value: string);
    procedure Setnusticms(const Value: string);
  public
    [keyfield]
    property nusticms : string read Fnusticms write Setnusticms;
    property nmsticms : string read Fnmsticms write Setnmsticms;
    property boentrada : string read Fboentrada write Setboentrada;
    property bocte : string read Fbocte write Setbocte;
    property boaliquota : string read Fboaliquota write Setboaliquota;
    property boicmssubtrib : string read Fboicmssubtrib write Setboicmssubtrib;
    function Select(const AValue: String):boolean; overload;
  end;

implementation

{ TSTICMS }

function TSTICMS.Select(const AValue: String): boolean;
begin
  nusticms := avalue;
  result := inherited select;
end;

procedure TSTICMS.Setboaliquota(const Value: string);
begin
  Fboaliquota := Value;
end;

procedure TSTICMS.Setbocte(const Value: string);
begin
  Fbocte := Value;
end;

procedure TSTICMS.Setboentrada(const Value: string);
begin
  Fboentrada := Value;
end;

procedure TSTICMS.Setboicmssubtrib(const Value: string);
begin
  Fboicmssubtrib := Value;
end;

procedure TSTICMS.Setnmsticms(const Value: string);
begin
  Fnmsticms := Value;
end;

procedure TSTICMS.Setnusticms(const Value: string);
begin
  Fnusticms := Value;
end;

end.
