unit ClasseCFOP;

interface

uses sysutils,
  classequery, classeretornasql,
  uconstantes, uRegistro, classedao;

Type
  TCFOP = class(TPersintentObject)
  private
    Fbodifal: string;
    Fbocompra: string;
    procedure Setbocompra(const Value: string);
    procedure Setbodifal(const Value: string);
    procedure Setboaceitaicmssubtrib(const Value: string);
    procedure Setboativar(const Value: string);
    procedure Setbocalcularibpt(const Value: string);
    procedure Setbocte(const Value: string);
    procedure Setbodevolucao(const Value: string);
    procedure Setbodiferencialaliquota(const Value: string);
    procedure Setboestoqueterceiro(const Value: string);
    procedure Setboexibirtributos(const Value: string);
    procedure Setbogeracontasreceber(const Value: string);
    procedure Setboicmssubtrib(const Value: string);
    procedure Setbolivroproducao(const Value: string);
    procedure Setbopedido(const Value: string);
    procedure Setbosaidaciapi(const Value: string);
    procedure Setbotributadaciapi(const Value: string);
    procedure Setboufdiferente(const Value: string);
    procedure Setcdcfop(const Value: Integer);
    procedure Setcdcfopdevolucao(const Value: Integer);
    procedure Setcdtpitem(const Value: string);
    procedure Setdscfop(const Value: string);
    procedure Setdsmensagem(const Value: string);
    procedure Setnmcfop(const Value: string);
    procedure Setnudocfiscalicms(const Value: string);
    procedure Setnustcofins(const Value: string);
    procedure Setnustcofinssimples(const Value: string);
    procedure Setnusticms(const Value: string);
    procedure Setnusticmssimples(const Value: string);
    procedure Setnustipi(const Value: string);
    procedure Setnustipisimples(const Value: string);
    procedure Setnustpis(const Value: string);
    procedure Setnustpissimples(const Value: string);
  protected
    Fboexibirtributos: string;
    Fnusticmssimples: string;
    Fcdcfop: Integer;
    Fbodiferencialaliquota: string;
    Fnustpis: string;
    Fnustcofins: string;
    Fbocalcularibpt: string;
    Fboicmssubtrib: string;
    Fboestoqueterceiro: string;
    Fnustpissimples: string;
    Fnustcofinssimples: string;
    Fboufdiferente: string;
    Fboativar: string;
    Fbopedido: string;
    Fbotributadaciapi: string;
    Fnustipi: string;
    Fbosaidaciapi: string;
    Fdscfop: string;
    Fboaceitaicmssubtrib: string;
    Fnustipisimples: string;
    Fcdcfopdevolucao: Integer;
    Fnmcfop: string;
    Fbogeracontasreceber: string;
    Fbolivroproducao: string;
    Fbodevolucao: string;
    Fdsmensagem: string;
    Fbocte: string;
    Fcdtpitem: string;
    Fnudocfiscalicms: string;
    Fnusticms: string;
  public
    [keyfield]
    property cdcfop : Integer read Fcdcfop write Setcdcfop;
    property nusticms : string read Fnusticms write Setnusticms;
    property nustipi : string read Fnustipi write Setnustipi;
    property nustpis : string read Fnustpis write Setnustpis;
    property nustcofins : string read Fnustcofins write Setnustcofins;
    property nudocfiscalicms : string read Fnudocfiscalicms write Setnudocfiscalicms;
    property cdcfopdevolucao : Integer read Fcdcfopdevolucao write Setcdcfopdevolucao;
    property nusticmssimples : string read Fnusticmssimples write Setnusticmssimples;
    property nustcofinssimples : string read Fnustcofinssimples write Setnustcofinssimples;
    property nustipisimples : string read Fnustipisimples write Setnustipisimples;
    property nustpissimples : string read Fnustpissimples write Setnustpissimples;
    property cdtpitem : string read Fcdtpitem write Setcdtpitem;
    property nmcfop : string read Fnmcfop write Setnmcfop;
    property bogeracontasreceber : string read Fbogeracontasreceber write Setbogeracontasreceber;
    property bodiferencialaliquota : string read Fbodiferencialaliquota write Setbodiferencialaliquota;
    property dscfop : string read Fdscfop write Setdscfop;
    property bolivroproducao : string read Fbolivroproducao write Setbolivroproducao;
    property bocte : string read Fbocte write Setbocte;
    property dsmensagem : string read Fdsmensagem write Setdsmensagem;
    property botributadaciapi : string read Fbotributadaciapi write Setbotributadaciapi;
    property bosaidaciapi : string read Fbosaidaciapi write Setbosaidaciapi;
    property boestoqueterceiro : string read Fboestoqueterceiro write Setboestoqueterceiro;
    property boicmssubtrib : string read Fboicmssubtrib write Setboicmssubtrib;
    property boativar : string read Fboativar write Setboativar;
    property boexibirtributos : string read Fboexibirtributos write Setboexibirtributos;
    property bocalcularibpt : string read Fbocalcularibpt write Setbocalcularibpt;
    property bodevolucao : string read Fbodevolucao write Setbodevolucao;
    property boaceitaicmssubtrib : string read Fboaceitaicmssubtrib write Setboaceitaicmssubtrib;
    property bopedido : string read Fbopedido write Setbopedido;
    property boufdiferente : string read Fboufdiferente write Setboufdiferente;
    property bocompra : string read Fbocompra write Setbocompra;
    property bodifal : string read Fbodifal write Setbodifal;
  end;

implementation

procedure TCFOP.Setboaceitaicmssubtrib(const Value: string);
begin
  Fboaceitaicmssubtrib := Value;
end;

procedure TCFOP.Setboativar(const Value: string);
begin
  Fboativar := Value;
end;

procedure TCFOP.Setbocalcularibpt(const Value: string);
begin
  Fbocalcularibpt := Value;
end;

procedure TCFOP.Setbocompra(const Value: string);
begin
  Fbocompra := Value;
end;

procedure TCFOP.Setbocte(const Value: string);
begin
  Fbocte := Value;
end;

procedure TCFOP.Setbodevolucao(const Value: string);
begin
  Fbodevolucao := Value;
end;

procedure TCFOP.Setbodifal(const Value: string);
begin
  Fbodifal := Value;
end;

procedure TCFOP.Setbodiferencialaliquota(const Value: string);
begin
  Fbodiferencialaliquota := Value;
end;

procedure TCFOP.Setboestoqueterceiro(const Value: string);
begin
  Fboestoqueterceiro := Value;
end;

procedure TCFOP.Setboexibirtributos(const Value: string);
begin
  Fboexibirtributos := Value;
end;

procedure TCFOP.Setbogeracontasreceber(const Value: string);
begin
  Fbogeracontasreceber := Value;
end;

procedure TCFOP.Setboicmssubtrib(const Value: string);
begin
  Fboicmssubtrib := Value;
end;

procedure TCFOP.Setbolivroproducao(const Value: string);
begin
  Fbolivroproducao := Value;
end;

procedure TCFOP.Setbopedido(const Value: string);
begin
  Fbopedido := Value;
end;

procedure TCFOP.Setbosaidaciapi(const Value: string);
begin
  Fbosaidaciapi := Value;
end;

procedure TCFOP.Setbotributadaciapi(const Value: string);
begin
  Fbotributadaciapi := Value;
end;

procedure TCFOP.Setboufdiferente(const Value: string);
begin
  Fboufdiferente := Value;
end;

procedure TCFOP.Setcdcfop(const Value: Integer);
begin
  Fcdcfop := Value;
end;

procedure TCFOP.Setcdcfopdevolucao(const Value: Integer);
begin
  Fcdcfopdevolucao := Value;
end;

procedure TCFOP.Setcdtpitem(const Value: string);
begin
  Fcdtpitem := Value;
end;

procedure TCFOP.Setdscfop(const Value: string);
begin
  Fdscfop := Value;
end;

procedure TCFOP.Setdsmensagem(const Value: string);
begin
  Fdsmensagem := Value;
end;

procedure TCFOP.Setnmcfop(const Value: string);
begin
  Fnmcfop := Value;
end;

procedure TCFOP.Setnudocfiscalicms(const Value: string);
begin
  Fnudocfiscalicms := Value;
end;

procedure TCFOP.Setnustcofins(const Value: string);
begin
  Fnustcofins := Value;
end;

procedure TCFOP.Setnustcofinssimples(const Value: string);
begin
  Fnustcofinssimples := Value;
end;

procedure TCFOP.Setnusticms(const Value: string);
begin
  Fnusticms := Value;
end;

procedure TCFOP.Setnusticmssimples(const Value: string);
begin
  Fnusticmssimples := Value;
end;

procedure TCFOP.Setnustipi(const Value: string);
begin
  Fnustipi := Value;
end;

procedure TCFOP.Setnustipisimples(const Value: string);
begin
  Fnustipisimples := Value;
end;

procedure TCFOP.Setnustpis(const Value: string);
begin
  Fnustpis := Value;
end;

procedure TCFOP.Setnustpissimples(const Value: string);
begin
  Fnustpissimples := Value;
end;

end.
