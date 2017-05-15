unit ClasseOrdServ;

interface

uses
  System.Actions, System.UITypes, data.db,
  ComCtrls, controls, dialogs, ActnList, ExtCtrls, forms, sysutils, classes,
  umontarsql, udatahora, uconstantes, uregistro, uprogressbar, ustrings,
  classeaplicacao, classeretornasql, classeempresa, classeexecutasql, classequery,
  classeregistrainformacao, classegerar, classedao, classeusuario;

Type
  TPrioridade = class(TRegistroQuipos)
  private
    fnucor: integer;
    fnmprioridade: string;
    fnudias: integer;
    fpracrescimo: double;
    fcdprioridade: integer;
  public
    [keyfield]
    property cdprioridade : integer read fcdprioridade write fcdprioridade;
    [Aobrigatorio]
    property nmprioridade : string read fnmprioridade write fnmprioridade;
    [Aobrigatorio]
    property nudias : integer read fnudias write fnudias;
    [Aobrigatorio]
    property nucor : integer read fnucor write fnucor;
    property pracrescimo : double read fpracrescimo write fpracrescimo;
  end;
  TItOrdserv = class(TRegistroQuipos)
  private
    Fvldesconto: currency;
    Fcdformulacao: integer;
    Fvlunitario: currency;
    Ftsfim: TDateTime;
    Fdsobservacao: string;
    Fnmitordserv: string;
    Fcdstitordserv: integer;
    Ftsinicio: TDateTime;
    Fnupesagem: string;
    Fqtitem: double;
    Fcddigitado: string;
    Fcdunidade: integer;
    Fcditetapa: integer;
    Fvltotal: currency;
    Fprdesconto: double;
    Fcditordserv: integer;
    Fqtagua: double;
    Fcdproduto: integer;
    Fcdordserv: integer;
    Fnutemperatura: double;
    Fcdtpgradevalor: integer;
    Fcdservplan: integer;
    Fcdgarantia: integer;
    Fcdequipamento: integer;
    Fnuvibracao: double;
  public
    [keyfield]
    property cditordserv : integer read Fcditordserv write Fcditordserv;
    [fk]
    property cdordserv : integer read Fcdordserv write Fcdordserv;
    [fk]
    property cdequipamento : integer read Fcdequipamento write Fcdequipamento;
    [fk]
    property cdstitordserv : integer read Fcdstitordserv write Fcdstitordserv;
    [fk]
    property cdgarantia : integer read Fcdgarantia write Fcdgarantia;
    [fk]
    property cdunidade : integer read Fcdunidade write Fcdunidade;
    [fk]
    property cdproduto : integer read Fcdproduto write Fcdproduto;
    [fk]
    property cdservplan : integer read Fcdservplan write Fcdservplan;
    [fk]
    property cditetapa : integer read Fcditetapa write Fcditetapa;
    [fk]
    property cdtpgradevalor : integer read Fcdtpgradevalor write Fcdtpgradevalor;
    property cddigitado : string read Fcddigitado write Fcddigitado;
    property vlunitario : currency read Fvlunitario write Fvlunitario;
    property qtitem : double read Fqtitem write Fqtitem;
    property prdesconto : double read Fprdesconto write Fprdesconto;
    property vldesconto : currency read Fvldesconto write Fvldesconto;
    property vltotal : currency read Fvltotal write Fvltotal;
    property nmitordserv : string read Fnmitordserv write Fnmitordserv;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property nupesagem : string read Fnupesagem write Fnupesagem;
    property qtagua : double read Fqtagua write Fqtagua;
    property nutemperatura : double read Fnutemperatura write Fnutemperatura;
    property nuvibracao : double read Fnuvibracao write Fnuvibracao;
    [fk]
    property cdformulacao : integer read Fcdformulacao write Fcdformulacao;
    property tsinicio : TDateTime read Ftsinicio write Ftsinicio;
    property tsfim : TDateTime read Ftsfim write Ftsfim;
  end;
  TItAcessorio = class(TRegistroQuipos)
  private
    Fcditacessorio: integer;
    Fcdacessorio: integer;
    Fqtitem: integer;
    Fcdordserv: integer;
  public
    [keyfield]
    property cditacessorio : integer read Fcditacessorio write Fcditacessorio;
    [fk]
    property cdordserv : integer read Fcdordserv write Fcdordserv;
    [fk]
    property cdacessorio : integer read Fcdacessorio write Fcdacessorio;
    property qtitem : integer read Fqtitem write Fqtitem;
  end;
  TItDefApr = class(TRegistroQuipos)
  private
    Fdsobservacao: string;
    Fcddefeito: integer;
    Fcditdefapr: integer;
    Fcdordserv: integer;
  public
    [keyfield]
    property cditdefapr : integer read Fcditdefapr write Fcditdefapr;
    [fk]
    property cdordserv : integer read Fcdordserv write Fcdordserv;
    [fk]
    property cddefeito : integer read Fcddefeito write Fcddefeito;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
  end;
  TTPOrdserv = class(TRegistroQuipos)
  private
    fcdfuncaoatendente : integer;
    fcdfuncaotecnico : integer;
    fcdfuncaovendedor : integer;
    fbonuano : String;
    fbocor : String;
    fboprioridade : String;
    fbonukm : String;
    fbonubateria : String;
    fbodtaprovacao : String;
    fbohraprovacao : String;
    fbodtprevorcamento : String;
    fbohrprevorcamento : String;
    fboprevorcamentoobrigatorio : String;
    fbodtpreventrega: String;
    fbohrpreventrega : String;
    fbopreventregaobrigatorio : String;
    fbogarantia : String;
    fboprodutoexibircdalternativo : String;
    fboequipamentoguia : String;
    fbodigitarproduto : String;
    fboreportentregasemcomprovante : String;
    fbocomissaovendedor : String;
    fbocomissaotecnico : String;
    fbocomissaoorcado : String;
    fboassinaturadesconto : String;
    fbocomissaoorcadoproduto : String;
    fbocomissaoorcadoservico : String;
    fboetapa : String;
    fbocomissaoatendente : String;
    fborevisao : String;
    fbocomissaoatendenteproduto : String;
    fbocomissaotecnicoproduto : String;
    fbocomissaovendedorproduto : String;
    fbocomissaoatendenteservico : String;
    fboidentificadorcomissaoproduto : String;
    fbocomissaotecnicoservico : String;
    fbocomissaovendedorservico : String;
    fboreportorcamento : String;
    fnugerarcodigo : integer;
    fboequipamentolocal : String;
    fboqtdequipamentoobrigatorio : String;
    fbovendedorobrigatorio : String;
    fboatendenteobrigatorio : String;
    fbotecnicoobrigatorio : String;
    fboqtdequipamento : String;
    fbogradeprodutolocalizacao: String;
    fboprodutoobrigatorio : String;
    fboprodutoinsercaoobrigatorio : String;
    fbonupatrimonio : String;
    fboentrada : String;
    fbosaida : String;
    fbodevolucaosemconserto : String;
    fborepresentante : String;
    fbocliente : String;
    fboalterarvalor : String;
    fbotpgrade : String;
    fboservicoexterno : String;
    fboproduto : String;
    fboprodutoinsercao : String;
    fboacessorio : String;
    fbodefapr : String;
    fbodefenc : String;
    fboobservacao : String;
    fbosolucao : String;
    fboobservacaoanterior : String;
    fboobservacaotpordserv : String;
    fboobsinterna : String;
    fbosolinterna : String;
    fboosanterior : String;
    fboservico : String;
    fbopeca : String;
    fbofoto : String;
    fbodesenho : String;
    fbogeral : String;
    fbopintura : String;
    fboteste : String;
    fbodefeito : String;
    fboavaliacaotecnica : String;
    fboequipamento : String;
    fboequipamentoobrigatorio: String;
    fboatendente : String;
    fbotecnico : String;
    fbovendedor : String;
    fbonukmobrigatorio : String;
    fboreportabertura : String;
    fboreportentrega : String;
    fboreportacompanhamento: String;
    fboreportorcamentocontrato : String;
    fboreportorcamentoavulso : String;
    fbobaixaestoque : String;
    fbodtentradadigitar : String;
    fbohrentradadigitar : String;
    fbodtsaidadigitar : String;
    fbotpvoltagem : String;
    fbotpvoltagemobrigatorio : String;
    Fcdstordserventrega: integer;
    Fboreportaberturasalvar: String;
    Fbolocalservico: String;
    Fboselobalanca: String;
    Fbolacrebalanca: String;
    Fboreportordserv: string;
    Fboacessoriolista: string;
    Fboreportordservdtaprovacao: string;
    Fdslayoutequipamento: string;
    Fdsobservacao: string;
    Fbopreencheratendente: string;
    Fqtitem: integer;
    Fcdtpordserv: integer;
    Fdsobsimpressao: string;
    Fcdetapa: integer;
    Fcdstitordserventrada: integer;
    Fboativar: string;
    Fboexterno: string;
    Fcdstitordservbaixa: integer;
    Fcdtpmovtoentrada: integer;
    Fnmtpordserv: string;
    Fcdtpmovtobaixa: integer;
  public
    [keyfield]
    property cdtpordserv : integer read Fcdtpordserv write Fcdtpordserv;
    [fk]
    property cdetapa : integer read Fcdetapa write Fcdetapa;
    [fk]
    property cdtpmovtobaixa : integer read Fcdtpmovtobaixa write Fcdtpmovtobaixa;
    [fk]
    property cdtpmovtoentrada : integer read Fcdtpmovtoentrada write Fcdtpmovtoentrada;
    [fk]
    property cdstitordservbaixa : integer read Fcdstitordservbaixa write Fcdstitordservbaixa;
    [fk]
    property cdstitordserventrada : integer read Fcdstitordserventrada write Fcdstitordserventrada;
    property nmtpordserv : string read Fnmtpordserv write Fnmtpordserv;
    property dsobservacao : string read Fdsobservacao write Fdsobservacao;
    property dsobsimpressao : string read Fdsobsimpressao write Fdsobsimpressao;
    property boreportordserv : string read Fboreportordserv write Fboreportordserv;
    property boacessoriolista : string read Fboacessoriolista write Fboacessoriolista;
    property qtitem : integer read Fqtitem write Fqtitem;
    property boreportordservdtaprovacao : string read Fboreportordservdtaprovacao write Fboreportordservdtaprovacao;
    property dslayoutequipamento : string read Fdslayoutequipamento write Fdslayoutequipamento;
    property boativar : string read Fboativar write Fboativar;
    property boexterno : string read Fboexterno write Fboexterno;
    property bopreencheratendente : string read Fbopreencheratendente write Fbopreencheratendente;
    [fk]
    property cdfuncaoatendente : integer read fcdfuncaoatendente write fcdfuncaoatendente;
    [fk]
    property cdfuncaotecnico : integer read fcdfuncaotecnico write fcdfuncaotecnico;
    [fk]
    property cdfuncaovendedor : integer read fcdfuncaovendedor write fcdfuncaovendedor;
    property bonuano : String read fbonuano write fbonuano;
    property bocor : String read fbocor write fbocor;
    property boprioridade : String read fboprioridade write fboprioridade;
    property bonukm : String read fbonukm write fbonukm;
    property bonubateria : String read fbonubateria write fbonubateria;
    property bodtaprovacao : String read fbodtaprovacao write fbodtaprovacao;
    property bohraprovacao : String read fbohraprovacao write fbohraprovacao;
    property bodtprevorcamento : String read fbodtprevorcamento write fbodtprevorcamento;
    property bohrprevorcamento : String read fbohrprevorcamento write fbohrprevorcamento;
    property boprevorcamentoobrigatorio : String read fboprevorcamentoobrigatorio write fboprevorcamentoobrigatorio;
    property bodtpreventrega: String read fbodtpreventrega write fbodtpreventrega;
    property bohrpreventrega : String read fbohrpreventrega write fbohrpreventrega;
    property bopreventregaobrigatorio : String read fbopreventregaobrigatorio write fbopreventregaobrigatorio;
    property bogarantia : String read fbogarantia write fbogarantia;
    property boprodutoexibircdalternativo : String read fboprodutoexibircdalternativo write fboprodutoexibircdalternativo;
    property boequipamentoguia : String read fboequipamentoguia write fboequipamentoguia;
    property bodigitarproduto : String read fbodigitarproduto write fbodigitarproduto;
    property boreportentregasemcomprovante : String read fboreportentregasemcomprovante write fboreportentregasemcomprovante;
    property bocomissaovendedor : String read fbocomissaovendedor write fbocomissaovendedor;
    property bocomissaotecnico : String read fbocomissaotecnico write fbocomissaotecnico;
    property bocomissaoorcado : String read fbocomissaoorcado write fbocomissaoorcado;
    property boassinaturadesconto : String read fboassinaturadesconto write fboassinaturadesconto;
    property bocomissaoorcadoproduto : String read fbocomissaoorcadoproduto write fbocomissaoorcadoproduto;
    property bocomissaoorcadoservico : String read fbocomissaoorcadoservico write fbocomissaoorcadoservico;
    property boetapa : String read fboetapa write fboetapa;
    property bocomissaoatendente : String read fbocomissaoatendente write fbocomissaoatendente;
    property borevisao : String read fborevisao write fborevisao;
    property bocomissaoatendenteproduto : String read fbocomissaoatendenteproduto write fbocomissaoatendenteproduto;
    property bocomissaotecnicoproduto : String read fbocomissaotecnicoproduto write fbocomissaotecnicoproduto;
    property bocomissaovendedorproduto : String read fbocomissaovendedorproduto write fbocomissaovendedorproduto;
    property bocomissaoatendenteservico : String read fbocomissaoatendenteservico write fbocomissaoatendenteservico;
    property boidentificadorcomissaoproduto : String read fboidentificadorcomissaoproduto write fboidentificadorcomissaoproduto;
    property bocomissaotecnicoservico : String read fbocomissaotecnicoservico write fbocomissaotecnicoservico;
    property bocomissaovendedorservico : String read fbocomissaovendedorservico write fbocomissaovendedorservico;
    property boreportorcamento : String read fboreportorcamento write fboreportorcamento;
    property nugerarcodigo : integer read fnugerarcodigo write fnugerarcodigo;
    property boequipamentolocal : String read fboequipamentolocal write fboequipamentolocal;
    property boqtdequipamentoobrigatorio : String read fboqtdequipamentoobrigatorio write fboqtdequipamentoobrigatorio;
    property bovendedorobrigatorio : String read fbovendedorobrigatorio write fbovendedorobrigatorio;
    property boatendenteobrigatorio : String read fboatendenteobrigatorio write fboatendenteobrigatorio;
    property botecnicoobrigatorio : String read fbotecnicoobrigatorio write fbotecnicoobrigatorio;
    property boqtdequipamento : String read fboqtdequipamento write fboqtdequipamento;
    property bogradeprodutolocalizacao : String read fbogradeprodutolocalizacao write fbogradeprodutolocalizacao;
    property boprodutoobrigatorio : String read fboprodutoobrigatorio write fboprodutoobrigatorio;
    property boprodutoinsercaoobrigatorio : String read fboprodutoinsercaoobrigatorio write fboprodutoinsercaoobrigatorio;
    property bonupatrimonio : String read fbonupatrimonio write fbonupatrimonio;
    property boentrada : String read fboentrada write fboentrada;
    property bosaida : String read fbosaida write fbosaida;
    property bodevolucaosemconserto : String read fbodevolucaosemconserto write fbodevolucaosemconserto;
    property borepresentante : String read fborepresentante write fborepresentante;
    property bocliente : String read fbocliente write fbocliente;
    property boalterarvalor : String read fboalterarvalor write fboalterarvalor;
    property botpgrade : String read fbotpgrade write fbotpgrade;
    property boservicoexterno : String read fboservicoexterno write fboservicoexterno;
    property boproduto : String read fboproduto write fboproduto;
    property boprodutoinsercao : String read fboprodutoinsercao write fboprodutoinsercao;
    property boacessorio : String read fboacessorio write fboacessorio;
    property bodefapr : String read fbodefapr write fbodefapr;
    property bodefenc : String read fbodefenc write fbodefenc;
    property boobservacao : String read fboobservacao write fboobservacao;
    property bosolucao : String read fbosolucao write fbosolucao;
    property boobservacaoanterior : String read fboobservacaoanterior write fboobservacaoanterior;
    property boobservacaotpordserv : String read fboobservacaotpordserv write fboobservacaotpordserv;
    property boobsinterna : String read fboobsinterna write fboobsinterna;
    property bosolinterna : String read fbosolinterna write fbosolinterna;
    property boosanterior : String read fboosanterior write fboosanterior;
    property boservico : String read fboservico write fboservico;
    property bopeca : String read fbopeca write fbopeca;
    property bofoto : String read fbofoto write fbofoto;
    property bodesenho : String read fbodesenho write fbodesenho;
    property bogeral : String read fbogeral write fbogeral;
    property bopintura : String read fbopintura write fbopintura;
    property boteste : String read fboteste write fboteste;
    property bodefeito : String read fbodefeito write fbodefeito;
    property boavaliacaotecnica : String read fboavaliacaotecnica write fboavaliacaotecnica;
    property boequipamento : String read fboequipamento write fboequipamento;
    property boequipamentoobrigatorio: String read fboequipamentoobrigatorio write fboequipamentoobrigatorio;
    property boatendente : String read fboatendente write fboatendente;
    property botecnico : String read fbotecnico write fbotecnico;
    property bovendedor : String read fbovendedor write fbovendedor;
    property bonukmobrigatorio : String read fbonukmobrigatorio write fbonukmobrigatorio;
    property boreportabertura : String read fboreportabertura write fboreportabertura;
    property boreportaberturasalvar : String read Fboreportaberturasalvar write fboreportaberturasalvar;
    property boreportentrega : String read fboreportentrega write fboreportentrega;
    property boreportacompanhamento: String read fboreportacompanhamento write fboreportacompanhamento;
    property boreportorcamentocontrato : String read fboreportorcamentocontrato write fboreportorcamentocontrato;
    property boreportorcamentoavulso : String read fboreportorcamentoavulso write fboreportorcamentoavulso;
    property bobaixaestoque : String read fbobaixaestoque write fbobaixaestoque;
    property bodtentradadigitar : String read fbodtentradadigitar write fbodtentradadigitar;
    property bohrentradadigitar : String read fbohrentradadigitar write fbohrentradadigitar;
    property bodtsaidadigitar : String read fbodtsaidadigitar write fbodtsaidadigitar;
    property botpvoltagem : String read fbotpvoltagem write fbotpvoltagem;
    property botpvoltagemobrigatorio : String read fbotpvoltagemobrigatorio write fbotpvoltagemobrigatorio;
    property cdstordserventrega : integer read Fcdstordserventrega write fcdstordserventrega;
    property bolocalservico : String read Fbolocalservico write Fbolocalservico;
    property bolacrebalanca : String read Fbolacrebalanca write Fbolacrebalanca;
    property boselobalanca : String read Fboselobalanca write Fboselobalanca;
  end;
  TOrdServ = class(TRegistroQuipos)
  private
    Fprcomissaoprodutoorcado: double;
    Fprcomissaoorcado: double;
    Fprcomissaoorcadoproduto: double;
    Fvlmaoobra: currency;
    Ftppreco: string;
    Ftpprecoproduto: string;
    Fvlproduto: currency;
    Fnubateria: string;
    Fnmcontato: string;
    Fnunffatura: string;
    Fcdcliente: LargeInt;
    Fhrorcadof: TTime;
    Fvlcomissaovendedor: currency;
    Fvlcomissaovendedorproduto: currency;
    Fnufone: string;
    Fnuordserv: integer;
    Fcdordservanterior: integer;
    Fcdcondpagto: integer;
    Fnunfdevolucao: string;
    Fhrentregue: TTime;
    Fdslocalizacaoconserto: string;
    Fprcomissaoatendente: double;
    Fprcomissaoatendenteproduto: double;
    Ftsliberado: TTimeStamp;
    Fdtaprovacao: TDate;
    Fvldesconto: currency;
    Fcdmodelo: integer;
    Fcdfuncionarioentregue: integer;
    Fhrdevolucaosemconserto: TTime;
    Fnuseqequipamento: string;
    Fbomedicao: boolean;
    Fdsdefenc: string;
    Fvlcomissaoservicoconserto: currency;
    Fhrconserto: TTime;
    Fdsavaliacaotecnica: string;
    Fdtsaida: TDate;
    Fprcomissaoservicoorcado: double;
    Fcdfuncionarioconserto: integer;
    Fprcomissaoorcadoservico: double;
    Fprcomissaotecnico: double;
    Fprcomissaotecnicoproduto: double;
    Fbosaida: boolean;
    Fnuimpfechamento: integer;
    Fvlservico: currency;
    Fvlcomissaovendedorservico: currency;
    Fnukm: integer;
    Fnucoleta: string;
    Fdtcomunicacao: TDate;
    Fcdvalvula: integer;
    Fdtorcado: TDate;
    Fdtprevorcamento: TDate;
    Fdtpronta: TDate;
    Fdsobservacao: string;
    Fnuoscliente: string;
    Fnupedido: string;
    Fcdfuncionariovendedor: integer;
    Fprcomissaoatendenteservico: double;
    Fnucontroleinterno: string;
    Fcdclientecobranca: LargeInt;
    Fhrdevolucaosemconsertohora: TTime;
    Fqtitem: double;
    Fhrenvio: TTime;
    Fcdstordserv: integer;
    Fhrconsertohora: TTime;
    Fcdtpordserv: integer;
    Fprcomissaotecnicoservico: double;
    Fdtpreventrega: TDate;
    Fcdatuador: integer;
    Fnupatrimonio: string;
    Fdtgarantia: TDate;
    Fpracrescservico: double;
    Fvltotal: currency;
    Fcdetapa: integer;
    Fnuserie: string;
    Fcdmarca: integer;
    Fcdtpequipamento: integer;
    Fhrdevolucaosemconsertof: TTime;
    Fprcomissaoprodutoconserto: double;
    Fnunf: integer;
    Fcdposicionador: integer;
    Fvlcomissaoprodutoorcado: currency;
    Fdslocalizacaodevolvidoconserto: string;
    Fhrconsertof: TTime;
    Fvlcomissaoorcado: currency;
    Fvlcomissaoorcadoproduto: currency;
    Fdtentrada: TDate;
    Fcdsaida: integer;
    Fdsdevolucaosemconserto: string;
    Fprcomissaovendedor: double;
    Fprcomissaovendedorproduto: double;
    Fboentrada: boolean;
    Fdtpreventregaorcamento: TDate;
    Fhraprovacao: TTime;
    Fdtpedido: TDate;
    Fnuproposta: string;
    Fcditordproducao: integer;
    Fnuano: integer;
    Fvlcomissao: currency;
    Fvlcomissaoproduto: currency;
    Fvlprodutocomissao: currency;
    Fprcustoreparo: double;
    Fvlliquido: currency;
    Fhrresolucao: TTime;
    Fcdcomputadorl: integer;
    Fcdfuncionariodevolvidoconserto: integer;
    Fvlcomissaoatendente: currency;
    Fvlcomissaoatendenteproduto: currency;
    Fdtretornoorcamento: TDate;
    Fdsteste: string;
    Fhrsaida: TTime;
    Fdslocalizacaoorcado: string;
    Fvlfita: currency;
    Fnudiaspreventrega: integer;
    Fcdtpcobranca: integer;
    Fdtentregue: TDate;
    Fprcomissaoservicoconserto: double;
    Fnuestrutura: integer;
    Fnudiasvalidadeorcamento: integer;
    Fcdusuariol: integer;
    Fcdordserv: integer;
    Ftpordserv: TTPOrdserv;
    Fvlcomissaoservicoorcado: currency;
    Fhrorcado: TTime;
    Fdtdevolucaosemconserto: TDate;
    Fvlcomissaoorcadoservico: currency;
    Fvlcomissaotecnico: currency;
    Fvlcomissaotecnicoproduto: currency;
    Fdslocalizacao: string;
    Fhrprevorcamento: TTime;
    Fhrpronta: TTime;
    Fcdtpvoltagem: integer;
    Fcdrepresentante: integer;
    Fcdprioridade: integer;
    Fcdfuncionarioorcado: integer;
    Fdtconserto: TDate;
    Fprcomissaovendedorservico: double;
    Fhratendimento: TTime;
    Fcdcor: integer;
    Fnmentreguepara: string;
    Fvlcomissaoservico: currency;
    Fvlservicocomissao: currency;
    Fdsdefrec: string;
    Fdtnf: TDate;
    Fcdgarantia: integer;
    Fcdequipamento: integer;
    Fvlcomissaoatendenteservico: currency;
    Fbocontrato: boolean;
    Fvlpeca: currency;
    Fhrpreventrega: TTime;
    Fdssolinterna: string;
    Fdssolucao: string;
    Fcditentrada: integer;
    Fcdfuncionarioatendente: integer;
    Fcdcondentrega: integer;
    Fnuentreguedocumento: string;
    Fnudiasexecucao: integer;
    Fvlservicoterceiro: currency;
    Fdtfatura: TDate;
    Fhrorcadohora: TTime;
    Fvlcomissaotecnicoservico: currency;
    Fdsdefeito: string;
    Fboservicoentregue: boolean;
    Fdsobsinterna: string;
    Fdsjustificativa: string;
    Fdtenvio: TDate;
    Fnucomprimento: double;
    Fvlacrescservico: currency;
    Fdtdevolucao: TDate;
    Fcdfuncionariotecnico: integer;
    Fvlfabricar: currency;
    Fhrentrada: TTime;
    Fvlcomissaoprodutoconserto: currency;
    Fboservicointerno: boolean;
    Fcdlocalservico: integer;
    fPrioridade: TPrioridade;
    procedure Setcdlocalservico(const Value: integer);
    function  ExisteStatusMesmoNomeEtapa(cdetapa:string):Boolean;
    function  gerarSQLMudarStatusNomeEtapa(cdetapa, cdordserv:string):string;
    function  PreencherDataSaidaScript(cdordserv:string):string;
    procedure inserirRegistroCheckList(codigo: integer; tipo:string);
  public
    [keyfield]
    property cdordserv : integer read Fcdordserv write fcdordserv;
    [fk]
    property cdlocalservico : integer read Fcdlocalservico write Setcdlocalservico;
    [fk]
    property cdatuador : integer read Fcdatuador write fcdatuador;
    [fk]
    property cdcliente : LargeInt read Fcdcliente write fcdcliente;
    [fk]
    property cdclientecobranca : LargeInt read Fcdclientecobranca write fcdclientecobranca;
    [fk]
    property cdcondentrega : integer read Fcdcondentrega write fcdcondentrega;
    [fk]
    property cdcondpagto : integer read Fcdcondpagto write fcdcondpagto;
    [fk]
    property cdequipamento : integer read Fcdequipamento write fcdequipamento;
    [fk]
    property cdetapa : integer read Fcdetapa write fcdetapa;
    [fk]
    property cdordservanterior : integer read Fcdordservanterior write fcdordservanterior;
    [fk]
    property cdposicionador : integer read Fcdposicionador write fcdposicionador;
    [fk]
    property cdprioridade : integer read Fcdprioridade write fcdprioridade;
    [fk]
    property cdstordserv : integer read Fcdstordserv write fcdstordserv;
    [fk]
    property cdtpordserv : integer read Fcdtpordserv write fcdtpordserv;
    [fk]
    property cdvalvula : integer read Fcdvalvula write fcdvalvula;
    [fk]
    property cdfuncionarioatendente : integer read Fcdfuncionarioatendente write fcdfuncionarioatendente;
    [fk]
    property cdfuncionariotecnico : integer read Fcdfuncionariotecnico write fcdfuncionariotecnico;
    [fk]
    property cdsaida : integer read Fcdsaida write fcdsaida;
    [fk]
    property cdgarantia : integer read Fcdgarantia write fcdgarantia;
    [fk]
    property cdfuncionariovendedor : integer read Fcdfuncionariovendedor write fcdfuncionariovendedor;
    [fk]
    property cdrepresentante : integer read Fcdrepresentante write fcdrepresentante;
    [fk]
    property cditentrada : integer read Fcditentrada write fcditentrada;
    [fk]
    property cdusuariol : integer read Fcdusuariol write fcdusuariol;
    [fk]
    property cdcomputadorl : integer read Fcdcomputadorl write fcdcomputadorl;
    [fk]
    property cdtpequipamento : integer read Fcdtpequipamento write fcdtpequipamento;
    [fk]
    property cdmodelo : integer read Fcdmodelo write fcdmodelo;
    [fk]
    property cdmarca : integer read Fcdmarca write fcdmarca;
    [fk]
    property cdtpcobranca : integer read Fcdtpcobranca write fcdtpcobranca;
    [fk]
    property cditordproducao : integer read Fcditordproducao write fcditordproducao;
    [fk]
    property cdtpvoltagem : integer read Fcdtpvoltagem write fcdtpvoltagem;
    property nuordserv : integer read Fnuordserv write fnuordserv;
    property dtentrada : TDate read Fdtentrada write fdtentrada;
    property hrentrada : TTime read Fhrentrada write fhrentrada;
    property dtsaida : TDate read Fdtsaida write fdtsaida;
    property hrsaida : TTime read Fhrsaida write fhrsaida;
    property dtenvio : TDate read Fdtenvio write fdtenvio;
    property dtcomunicacao : TDate read Fdtcomunicacao write fdtcomunicacao;
    property nucoleta : string read Fnucoleta write fnucoleta;
    property nuproposta : string read Fnuproposta write fnuproposta;
    property nupedido : string read Fnupedido write fnupedido;
    property nuoscliente : string read Fnuoscliente write fnuoscliente;
    property vlservico : currency read Fvlservico write fvlservico;
    property vlpeca : currency read Fvlpeca write fvlpeca;
    property vltotal : currency read Fvltotal write fvltotal;
    property nunf : integer read Fnunf write fnunf;
    property dtnf : TDate read Fdtnf write fdtnf;
    property dtpedido : TDate read Fdtpedido write fdtpedido;
    property dtfatura : TDate read Fdtfatura write fdtfatura;
    property dtdevolucao : TDate read Fdtdevolucao write fdtdevolucao;
    property dtpreventrega : TDate read Fdtpreventrega write fdtpreventrega;
    property nunfdevolucao : string read Fnunfdevolucao write fnunfdevolucao;
    property nunffatura : string read Fnunffatura write fnunffatura;
    property dsobservacao : string read Fdsobservacao write fdsobservacao;
    property dssolucao : string read Fdssolucao write fdssolucao;
    property dsdefenc : string read Fdsdefenc write fdsdefenc;
    property dsdefrec : string read Fdsdefrec write fdsdefrec;
    property pracrescservico : double read Fpracrescservico write fpracrescservico;
    property vlacrescservico : currency read Fvlacrescservico write fvlacrescservico;
    property dsteste : string read Fdsteste write fdsteste;
    property bomedicao : boolean read Fbomedicao write fbomedicao;
    property nmcontato : string read Fnmcontato write fnmcontato;
    property nufone : string read Fnufone write fnufone;
    property hratendimento : TTime read Fhratendimento write fhratendimento;
    property hrresolucao : TTime read Fhrresolucao write fhrresolucao;
    property vldesconto : currency read Fvldesconto write fvldesconto;
    property vlliquido : currency read Fvlliquido write fvlliquido;
    property dsjustificativa : string read Fdsjustificativa write fdsjustificativa;
    property dsobsinterna : string read Fdsobsinterna write fdsobsinterna;
    property dssolinterna : string read Fdssolinterna write fdssolinterna;
    property nuimpfechamento : integer read Fnuimpfechamento write fnuimpfechamento;
    property bocontrato : boolean read Fbocontrato write fbocontrato;
    property nukm : integer read Fnukm write fnukm;
    property nubateria : string read Fnubateria write fnubateria;
    property vlfabricar : currency read Fvlfabricar write fvlfabricar;
    property hrpreventrega : TTime read Fhrpreventrega write fhrpreventrega;
    property dtpronta : TDate read Fdtpronta write fdtpronta;
    property hrpronta : TTime read Fhrpronta write fhrpronta;
    property dtaprovacao : TDate read Fdtaprovacao write fdtaprovacao;
    property hraprovacao : TTime read Fhraprovacao write fhraprovacao;
    property dtprevorcamento : TDate read Fdtprevorcamento write fdtprevorcamento;
    property hrprevorcamento : TTime read Fhrprevorcamento write fhrprevorcamento;
    property nuseqequipamento : string read Fnuseqequipamento write fnuseqequipamento;
    property dslocalizacao : string read Fdslocalizacao write fdslocalizacao;
    property vlproduto : currency read Fvlproduto write fvlproduto;
    property vlservicoterceiro : currency read Fvlservicoterceiro write fvlservicoterceiro;
    property nucontroleinterno : string read Fnucontroleinterno write fnucontroleinterno;
    property tpprecoproduto : string read Ftpprecoproduto write ftpprecoproduto;
    property nudiasvalidadeorcamento : integer read Fnudiasvalidadeorcamento write fnudiasvalidadeorcamento;
    property nudiaspreventrega : integer read Fnudiaspreventrega write fnudiaspreventrega;
    property dtgarantia : TDate read Fdtgarantia write fdtgarantia;
    property boservicoentregue : boolean read Fboservicoentregue write fboservicoentregue;
    property boservicointerno : boolean read Fboservicointerno write fboservicointerno;
    property nudiasexecucao : integer read Fnudiasexecucao write fnudiasexecucao;
    property dtpreventregaorcamento : TDate read Fdtpreventregaorcamento write fdtpreventregaorcamento;
    property prcustoreparo : double read Fprcustoreparo write fprcustoreparo;
    property dtretornoorcamento : TDate read Fdtretornoorcamento write fdtretornoorcamento;
    property tppreco : string read Ftppreco write ftppreco;
    property hrenvio : TTime read Fhrenvio write fhrenvio;
    property vlfita : currency read Fvlfita write fvlfita;
    property vlmaoobra : currency read Fvlmaoobra write fvlmaoobra;
    property tsliberado : TTimeStamp read Ftsliberado write ftsliberado;
    property dsdefeito : string read Fdsdefeito write fdsdefeito;
    property dsavaliacaotecnica : string read Fdsavaliacaotecnica write fdsavaliacaotecnica;
    property nuserie : string read Fnuserie write fnuserie;
    property nucomprimento : double read Fnucomprimento write fnucomprimento;
    property nuestrutura : integer read Fnuestrutura write fnuestrutura;
    property nupatrimonio : string read Fnupatrimonio write fnupatrimonio;
    property boentrada : boolean read Fboentrada write fboentrada;
    property bosaida : boolean read Fbosaida write fbosaida;
    property qtitem : double read Fqtitem write fqtitem;
    property vlprodutocomissao : currency read Fvlprodutocomissao write fvlprodutocomissao;
    property vlservicocomissao : currency read Fvlservicocomissao write fvlservicocomissao;
    property vlcomissaovendedorproduto : currency read Fvlcomissaovendedorproduto write fvlcomissaovendedorproduto;
    property vlcomissaotecnicoproduto : currency read Fvlcomissaotecnicoproduto write fvlcomissaotecnicoproduto;
    property vlcomissaoatendenteproduto : currency read Fvlcomissaoatendenteproduto write fvlcomissaoatendenteproduto;
    property prcomissaovendedorproduto : double read Fprcomissaovendedorproduto write fprcomissaovendedorproduto;
    property prcomissaotecnicoproduto : double read Fprcomissaotecnicoproduto write fprcomissaotecnicoproduto;
    property prcomissaoatendenteproduto : double read Fprcomissaoatendenteproduto write fprcomissaoatendenteproduto;
    property prcomissaovendedorservico : double read Fprcomissaovendedorservico write fprcomissaovendedorservico;
    property prcomissaotecnicoservico : double read Fprcomissaotecnicoservico write fprcomissaotecnicoservico;
    property prcomissaoatendenteservico : double read Fprcomissaoatendenteservico write fprcomissaoatendenteservico;
    property vlcomissaovendedorservico : currency read Fvlcomissaovendedorservico write fvlcomissaovendedorservico;
    property vlcomissaotecnicoservico : currency read Fvlcomissaotecnicoservico write fvlcomissaotecnicoservico;
    property vlcomissaoatendenteservico : currency read Fvlcomissaoatendenteservico write fvlcomissaoatendenteservico;
    property vlcomissaoatendente : currency read Fvlcomissaoatendente write fvlcomissaoatendente;
    property vlcomissaotecnico : currency read Fvlcomissaotecnico write fvlcomissaotecnico;
    property vlcomissaovendedor : currency read Fvlcomissaovendedor write fvlcomissaovendedor;
    property prcomissaoatendente : double read Fprcomissaoatendente write fprcomissaoatendente;
    property prcomissaotecnico : double read Fprcomissaotecnico write fprcomissaotecnico;
    property prcomissaovendedor : double read Fprcomissaovendedor write fprcomissaovendedor;
    property vlcomissaoservico : currency read Fvlcomissaoservico write fvlcomissaoservico;
    property vlcomissaoproduto : currency read Fvlcomissaoproduto write fvlcomissaoproduto;
    property vlcomissao : currency read Fvlcomissao write fvlcomissao;
    property vlcomissaoorcadoproduto : currency read Fvlcomissaoorcadoproduto write fvlcomissaoorcadoproduto;
    property prcomissaoorcadoproduto : double read Fprcomissaoorcadoproduto write fprcomissaoorcadoproduto;
    property prcomissaoorcadoservico : double read Fprcomissaoorcadoservico write fprcomissaoorcadoservico;
    property vlcomissaoorcadoservico : currency read Fvlcomissaoorcadoservico write fvlcomissaoorcadoservico;
    property vlcomissaoorcado : currency read Fvlcomissaoorcado write fvlcomissaoorcado;
    property prcomissaoorcado : double read Fprcomissaoorcado write fprcomissaoorcado;
    property cdfuncionarioconserto : integer read Fcdfuncionarioconserto write fcdfuncionarioconserto;
    property dtconserto : TDate read Fdtconserto write fdtconserto;
    property hrconserto : TTime read Fhrconserto write fhrconserto;
    property hrconsertof : TTime read Fhrconsertof write fhrconsertof;
    property hrconsertohora : TTime read Fhrconsertohora write fhrconsertohora;
    property dslocalizacaoconserto : string read Fdslocalizacaoconserto write fdslocalizacaoconserto;
    property prcomissaoprodutoconserto : double read Fprcomissaoprodutoconserto write fprcomissaoprodutoconserto;
    property vlcomissaoprodutoconserto : currency read Fvlcomissaoprodutoconserto write fvlcomissaoprodutoconserto;
    property prcomissaoservicoconserto : double read Fprcomissaoservicoconserto write fprcomissaoservicoconserto;
    property vlcomissaoservicoconserto : currency read Fvlcomissaoservicoconserto write fvlcomissaoservicoconserto;
    property cdfuncionariodevolvidoconserto : integer read Fcdfuncionariodevolvidoconserto write fcdfuncionariodevolvidoconserto;
    property dtdevolucaosemconserto : TDate read Fdtdevolucaosemconserto write fdtdevolucaosemconserto;
    property hrdevolucaosemconserto : TTime read Fhrdevolucaosemconserto write fhrdevolucaosemconserto;
    property hrdevolucaosemconsertof : TTime read Fhrdevolucaosemconsertof write fhrdevolucaosemconsertof;
    property hrdevolucaosemconsertohora : TTime read Fhrdevolucaosemconsertohora write fhrdevolucaosemconsertohora;
    property dslocalizacaodevolvidoconserto : string read Fdslocalizacaodevolvidoconserto write fdslocalizacaodevolvidoconserto;
    property dsdevolucaosemconserto : string read Fdsdevolucaosemconserto write fdsdevolucaosemconserto;
    property cdfuncionarioorcado : integer read Fcdfuncionarioorcado write fcdfuncionarioorcado;
    property dtorcado : TDate read Fdtorcado write fdtorcado;
    property hrorcado : TTime read Fhrorcado write fhrorcado;
    property hrorcadof : TTime read Fhrorcadof write fhrorcadof;
    property hrorcadohora : TTime read Fhrorcadohora write fhrorcadohora;
    property dslocalizacaoorcado : string read Fdslocalizacaoorcado write fdslocalizacaoorcado;
    property prcomissaoprodutoorcado : double read Fprcomissaoprodutoorcado write fprcomissaoprodutoorcado;
    property vlcomissaoprodutoorcado : currency read Fvlcomissaoprodutoorcado write fvlcomissaoprodutoorcado;
    property prcomissaoservicoorcado : double read Fprcomissaoservicoorcado write fprcomissaoservicoorcado;
    property vlcomissaoservicoorcado : currency read Fvlcomissaoservicoorcado write fvlcomissaoservicoorcado;
    property cdfuncionarioentregue : integer read Fcdfuncionarioentregue write fcdfuncionarioentregue;
    property dtentregue : TDate read Fdtentregue write fdtentregue;
    property hrentregue : TTime read Fhrentregue write fhrentregue;
    property nmentreguepara : string read Fnmentreguepara write fnmentreguepara;
    property nuentreguedocumento : string read Fnuentreguedocumento write fnuentreguedocumento;
    property cdcor : integer read Fcdcor write fcdcor;
    property nuano : integer read Fnuano write fnuano;
    property tpordserv : TTPOrdserv read Ftpordserv write ftpordserv;
    property prioridade : TPrioridade read fPrioridade write fPrioridade;
    constructor create; overload;
    destructor destroy; override;
    function  AlterarEtapa(cdordserv, cdetapa, cdetapaproximo:Integer):boolean;
    function  AlterarEtapaOrdserv(cdordserv, cdetapa, cdetapaproximo:integer):boolean;
    function  checkList(codigo:integer; tipo:string):Boolean;
    function  FinalizarEtapa(cditetapa :string):string;
    function  InserirNovaEtapa(cdordserv, cdetapa :Integer):string;
    procedure limparCheckList(codigo:string);
    function  MudarEtapa(cdordserv, cdetapaproximo:integer):boolean;
    function  QtdItensEtapa(cdetapa:string):integer;
    function  QtdItensEtapaFuncionario(cdetapa, cdfuncionario:string):integer;
    function  setCheckList(codigo: integer; tipo:string):Boolean;
  end;

implementation

uses udlgtabela;

function TOrdserv.QtdItensEtapa(cdetapa:string):integer;
begin
  result := RetornaSQLInteger('select count(*) from ordserv where cdempresa='+empresa.cdempresa.tostring+' and cdetapa='+cdetapa);
end;

function TOrdServ.QtdItensEtapaFuncionario(cdetapa, cdfuncionario:string):integer;
begin
  result := RetornaSQLInteger('select count(*) from itetapa where cdempresa='+empresa.cdempresa.tostring+' and dtfinal is null and cdetapa='+cdetapa+' and cdfuncionario='+cdfuncionario);
end;

procedure TOrdServ.Setcdlocalservico(const Value: integer);
begin
  Fcdlocalservico := Value;
end;

function TOrdServ.AlterarEtapa(cdordserv, cdetapa, cdetapaproximo:integer):boolean;
begin // exibir form para escolher a proxima etapa sem a etapa atual
  AlterarEtapaOrdserv(cdordserv, cdetapa, cdetapaproximo);
  result := true;
end;

function TOrdserv.AlterarEtapaOrdserv(cdordserv, cdetapa, cdetapaproximo:integer):boolean;
var
  resposta : integer;
begin
  result         := false;
  if Empresa.ordserv.workbox.boconfirmarmudancaetapa then
  begin
    resposta := messagedlg('Deseja realmente mudar a '    +#13+
                           'Ordem de Servivo : '+QRegistro.CampodoCampo(_ordserv, _cdordserv, IntToStr(cdordserv), _nuordserv)+#13+
                           'da etapa : '        +qregistro.nomedocodigo(_etapa, cdetapa)  +#13+
                           'para a etapa: '     +qregistro.NomedoCodigo(_etapa, cdetapaproximo)+'?', mtconfirmation, [mbyes, mbno], 0)
  end
  else
  begin
    resposta := mryes;
  end;
  if resposta = mrno then
  begin
    exit;
  end;
  result := MudarEtapa(cdordserv, cdetapaproximo);
end;

function TOrdServ.MudarEtapa(cdordserv, cdetapaproximo:integer):boolean;
var
  sql: TStrings;
  cdstitordservf, cdstitordservi, cditetapa : string;
begin
  result := false;
  sql    := tstringlist.create;
  try
    // obter o último item da Etapa
    cditetapa := RetornaSQLString('select max(cditetapa) from itetapa where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+IntToStr(cdordserv));
    sql.add('update ordserv set cdetapa='+IntToStr(cdetapaproximo)+' where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+IntToStr(cdordserv)+';');
    try
      if cditetapa <> '' then
      begin
        sql.add(FinalizarEtapa  (cditetapa)+';');
      end;
      sql.add(InserirNovaEtapa(cdordserv, cdetapaproximo)+';');
      // verificar se a etapa de destino possui alteracao no status do servico
      cdstitordservi := NomedoCodigo(_etapa, IntToStr(cdetapaproximo), _cdstitordserv+_i);
      cdstitordservf := Nomedocodigo(_etapa, IntToStr(cdetapaproximo), _cdstitordserv+_f);

      if (cdstitordservi <> '') and (cdstitordservf <> '') then
      begin
        sql.add('update itordserv set cdstitordserv='+cdstitordservf+' where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+IntToStr(cdordserv)+' and cdstitordserv='+cdstitordservi+';');
      end;

      if NomedoCodigo(_etapa, IntToStr(cdetapaproximo)) = 'ENTREGUE' then
      begin
        sql.add(PreencherDataSaidaScript(IntToStr(cdordserv))+';');
      end;

      if ExisteStatusMesmoNomeEtapa(IntToStr(cdetapaproximo)) then
      begin
        sql.Add(gerarSQLMudarStatusNomeEtapa(IntToStr(cdetapaproximo), IntToStr(cdordserv))+';');
      end;
      result := ExecutaScript(sql);
    except
      messagedlg('Registro sendo atualizado por outro usuário.'#13'Espere durante certo tempo e depois tente novamente.', mterror, [mbok], 0);
    end;
  finally
    freeandnil(sql);
  end;
end;

function TOrdserv.PreencherDataSaidaScript(cdordserv:string):string;
begin
  result := 'update ordserv set dtsaida='+quotedstr(DtBancos)+' where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+cdordserv;
end;

function TOrdServ.InserirNovaEtapa(cdordserv, cdetapa:integer): string;
begin
  result := 'insert into itetapa(CDORDSERV,CDITETAPA,CDETAPA,CDSTITETAPA,DTINICIO,HRINICIO,'+_sqlreg+
            IntToStr(cdordserv)+','+
            GerarCodigo(_itetapa)+','+
            inttostr(cdetapa)+',1,'+
            quotedstr(dtbancos)+','+
            quotedstr(hrserver)+','+
            sqlregistra;
end;

function TOrdServ.FinalizarEtapa(CDitetapa:string): string;
begin
  result := 'update itetapa '+
            'set dtfinal='+quotedstr(dtbancos)+
            ',hrfinal='+quotedstr(hrserver)+
            ','+_tsalteracao+'='+quotedstr(tsBancos)+','+_cdusuarioa+'='+inttostr(usuario.cdusuario)+','+_cdcomputadora+'='+vgcdcomputador+' '+
            'where cdempresa='+empresa.cdempresa.tostring+' and cditetapa='+cditetapa;
end;

constructor TOrdServ.create;
begin
  inherited;
  ftpordserv := ttpordserv.create;
  fprioridade := tprioridade.create;
end;

function TOrdServ.ExisteStatusMesmoNomeEtapa(cdetapa:string): Boolean;
begin
  result := RetornaSQLInteger('select count(*) '+
                                    'from stordserv '+
                                    'where cdempresa='+empresa.cdempresa.tostring+' '+
                                    'and nmstordserv=(select nmetapa '+
                                                     'from etapa '+
                                                     'where cdempresa='+empresa.cdempresa.tostring+' and cdetapa='+cdetapa+')') > 0;
end;

function TOrdServ.gerarSQLMudarStatusNomeEtapa(cdetapa, cdordserv: string): string;
begin
  result := 'update ordserv '+
            'set cdstordserv=(select cdstordserv '+
                             'from stordserv '+
                             'where cdempresa='+empresa.cdempresa.tostring+' '+
                             'and nmstordserv=(select nmetapa '+
                                              'from etapa '+
                                              'where cdempresa='+empresa.cdempresa.tostring+' and cdetapa='+cdetapa+')) '+
            'where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+cdordserv;
end;

function TOrdServ.checkList(codigo: integer; tipo: string): Boolean;
begin
  if (tipo = _entrada) and (tpordserv.boentrada <> _s) then
  begin
    result := True;
    Exit;
  end;
  if (tipo = _saida) and (tpordserv.bosaida <> _s) then
  begin
    result := True;
    Exit;
  end;
  inserirRegistroCheckList(codigo, tipo);
  result := True;
  if not qregistro.BooleandoCodigo(_ordserv, codigo, _bo+tipo) then
  begin
    Abrir_dlg_Tabela(StrToInt(qregistro.codigodonome(_tabela, UpperCase(_ordserv+tipo))), codigo, _cdordserv, false, false, qregistro.DatadoCodigo(_ordserv, codigo, _dtsaida)=0, false);
    result := setCheckList(codigo, tipo);
    if not result then
    begin
      Abort;
    end;
  end;
end;

function TOrdServ.setCheckList(codigo: integer; tipo: string): Boolean;
begin
  result := RetornaSQLInteger('select count(*) from ordserv'+tipo+' where CDTPRESPOSTACHECKLIST IS NULL and cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+codigo.tostring) = 0;
  if result then
  begin
    ExecutaSQL('update ordserv set bo'+tipo+'=''S'' where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+codigo.tostring);
  end;
end;

procedure TOrdServ.inserirRegistroCheckList(codigo: integer; tipo: string);
var
  q : TClasseQuery;
  sql : TStrings;
begin
  if RegistroExiste(_ordserv+tipo, _cdordserv+'='+codigo.tostring) then
  begin
    Exit;
  end;
  q := TClasseQuery.create;
  sql := TStringList.Create;
  try
    q.q.Open('SELECT CDTPEQUIPAMENTO'+tipo+' '+
             'FROM TPEQUIPAMENTO'+tipo+' '+
             'WHERE BOATIVO=''S'' AND CDEMPRESA='+empresa.cdempresa.tostring+' and cdtpequipamento='+qregistro.StringdoCodigo(_ordserv, codigo, _cdtpequipamento)+' '+
             'ORDER BY NUSEQUENCIA');
    while not q.q.Eof do
    begin
      sql.Add('insert into ordserv'+tipo+
              '(CDORDSERV'+tipo+',CDORDSERV,CDTPEQUIPAMENTO'+tipo+',CDTPRESPOSTACHECKLIST,'+_sqlreg+
              GerarCodigo(_ordserv+tipo)+','+codigo.tostring+','+q.q.fieldbyname(_cdtpequipamento+tipo).AsString+',null,'+SQLRegistra+';');
      q.q.Next;
    end;
    if sql.Count > 0 then
    begin
      ExecutaScript(sql);
    end;
  finally
    freeandnil(q);
    freeandnil(sql);
  end;
end;

procedure TOrdServ.limparCheckList(codigo: string);
begin
  ExecutaSQL('delete from ordserventrada where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+codigo);
  ExecutaSQL('delete from ordservsaida where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+codigo);
  ExecutaSQL('update ordserv set boentrada=null where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+codigo);
  ExecutaSQL('update ordserv set bosaida=null where cdempresa='+empresa.cdempresa.tostring+' and cdordserv='+codigo);
end;

destructor TOrdServ.destroy;
begin
  FreeAndNil(ftpordserv);
  FreeAndNil(fprioridade);
  inherited;
end;

end.
