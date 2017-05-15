unit classerepresentante;

interface

uses
  SysUtils,
  uConstantes,
  classeaplicacao, classeempresa, classequery, classedao;

type
  TStRepresentante = class(TRegistroQuipos)
  private
    fbogerarpedido: string;
    fnucor: integer;
    fbogerarcliente: string;
    fcdstrepresentante: integer;
    fboexcluir: string;
    fbogerarinfo: string;
    fbonovo: string;
    fbogerarsaida: string;
    fboalterar: string;
    fnmstrepresentante: string;
  public
    [keyfield]
    property cdstrepresentante : integer read fcdstrepresentante write fcdstrepresentante;
    [AObrigatorio]
    property nmstrepresentante : string read fnmstrepresentante write fnmstrepresentante;
    [AObrigatorio]
    property nucor : integer read fnucor write fnucor;
    [AObrigatorio]
    property bonovo : string read fbonovo write fbonovo;
    [AObrigatorio]
    property boalterar : string read fboalterar write fboalterar;
    [AObrigatorio]
    property boexcluir : string read fboexcluir write fboexcluir;
    [AObrigatorio]
    property bogerarinfo : string read fbogerarinfo write fbogerarinfo;
    [AObrigatorio]
    property bogerarcliente : string read fbogerarcliente write fbogerarcliente;
    [AObrigatorio]
    property bogerarpedido : string read fbogerarpedido write fbogerarpedido;
    [AObrigatorio]
    property bogerarsaida : string read fbogerarsaida write fbogerarsaida;
  end;
  TRepresentante = class(TRegistroQuipos)
  private
    fprcomissao: double;
    fdsendereco: string;
    fcdestcivil: string;
    fnucnpj: string;
    femail: string;
    fnudependentes: integer;
    fnmmae: string;
    fnufax: string;
    fcdmunicipio: integer;
    fdsobservacao: string;
    fnuinscest: string;
    fnmrepresentante: string;
    fnucpf: string;
    fnuidentid: string;
    fnmpai: string;
    fnmbairro: string;
    fnmconjuge: string;
    fcdsexo: string;
    fnucep: string;
    fcdusuario: integer;
    fdtnascimento: TDate;
    fdsnumero: string;
    fnuinss: string;
    fhomepage: string;
    fcdrepresentante: integer;
    fstrepresentante: TStRepresentante;
    fnufone2: string;
    fnufone3: string;
    fcdfuncionario: integer;
    fdscomplemento: string;
    fnufone1: string;
    fnucxpostal: string;
    ftppessoa: string;
    frzsocial: string;
    fcdstrepresentante: integer;
    fcdtpcomissaorepresentante: integer;
    fcduf: integer;
  public
    property strepresentante : TStRepresentante read fstrepresentante write fstrepresentante;
    [keyfield]
    property cdrepresentante : integer read fcdrepresentante write fcdrepresentante;
    [fk]
    property cdfuncionario : integer read fcdfuncionario write fcdfuncionario;
    [fk]
    property cduf : integer read fcduf write fcduf;
    [fk, AObrigatorio]
    property cdstrepresentante : integer read fcdstrepresentante write fcdstrepresentante;
    [fk]
    property cdmunicipio : integer read fcdmunicipio write fcdmunicipio;
    [fk]
    property cdtpcomissaorepresentante : integer read fcdtpcomissaorepresentante write fcdtpcomissaorepresentante;
    [fk]
    property cdusuario : integer read fcdusuario write fcdusuario;
    [AObrigatorio]
    property nmrepresentante : string read fnmrepresentante write fnmrepresentante;
    property rzsocial : string read frzsocial write frzsocial;
    property tppessoa : string read ftppessoa write ftppessoa;
    property dsendereco : string read fdsendereco write fdsendereco;
    property nmbairro : string read fnmbairro write fnmbairro;
    property nucxpostal : string read fnucxpostal write fnucxpostal;
    property nucep : string read fnucep write fnucep;
    property nufone1 : string read fnufone1 write fnufone1;
    property nufone2 : string read fnufone2 write fnufone2;
    property nufone3 : string read fnufone3 write fnufone3;
    property nufax : string read fnufax write fnufax;
    property prcomissao : double read fprcomissao write fprcomissao;
    property nuinscest : string read fnuinscest write fnuinscest;
    property nucnpj : string read fnucnpj write fnucnpj;
    property nuidentid : string read fnuidentid write fnuidentid;
    property nucpf : string read fnucpf write fnucpf;
    property nmpai : string read fnmpai write fnmpai;
    property nmmae : string read fnmmae write fnmmae;
    property nmconjuge : string read fnmconjuge write fnmconjuge;
    property dtnascimento : TDate read fdtnascimento write fdtnascimento;
    property cdsexo : string read fcdsexo write fcdsexo;
    property cdestcivil : string read fcdestcivil write fcdestcivil;
    property email : string read femail write femail;
    property homepage : string read fhomepage write fhomepage;
    property dsobservacao : string read fdsobservacao write fdsobservacao;
    property nuinss : string read fnuinss write fnuinss;
    property nudependentes : integer read fnudependentes write fnudependentes;
    property dsnumero : string read fdsnumero write fdsnumero;
    property dscomplemento : string read fdscomplemento write fdscomplemento;
    constructor create;
    destructor destroy;
  end;

implementation

{ TRepresentante }

constructor TRepresentante.create;
begin
  inherited;
  fstrepresentante := tstrepresentante.create;
end;

destructor TRepresentante.destroy;
begin
  freeandnil(fstrepresentante);
end;

end.
