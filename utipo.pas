unit utipo;

interface

uses Controls;

type
  TipoTabela = (ttReport, ttReportUser);
  {
  TItmovtoRecord = record
    cdmovto : string;
    cditmovto : string;
    cdcntcusto : string;
    cdproduto : string;
    qtitem : double;
    qtitem2 : Double;
    vlunitario : currency;
    vltotal : currency;
    cddigitado : string;
    dsobservacao : string;
  end;
  }
  TTarefa = record
    cdordproducao: string;
    cdequipamento: string;
    cdfuncionario: string;
    hrinicio : TTime;
    bohoraextra: Boolean;
  end;
  TItem = Record
    cod_item, descr_item, cod_barra, cod_ant_item, unid_inv, tipo_item, cod_ncm, ex_ipi, cod_gen, cod_lst, aliq_icms:string;
    aliq_icms_ : Double;
  end;
  TParticipante = record
    cod_part, nome, cnpj, cpf, ie, suframa:string;
    cdmunicipio, cduf, cdpais, dsendereco, dsnumero, dscomplemento, nmbairro, nmmunicipio, nucep, sguf, nucxpostal: string;
    cdmunicipioi: Integer;
  end;
  TUnidade = record
    unid, descr : string;
  end;
  TPacienteparentes = record
    NMPARENTE   : string;
    SEXO        : string;
    IDADE       : string;
    PARENTESCO  : string;
    NMPROFISSAO : string;
    VLSALARIO   : double;
  end;
  TPacienteservicosocial = record
    SITTRABALHISTA     : string;
    RAMOATIVIDADE      : string;
    TIPOMORADIA        : string;
    NUCOMODOS          : string;
    TPCONSTRUCAO       : string;
    CONDSANITARIA      : string;
    VLSALARIO          : double;
    VLLUZ              : double;
    VLAGUA             : double;
    VLALUGUEL          : double;
    VLALIMENTACAO      : double;
    BOANTECEONCOLOGICO : string;
    BOEXAMEPREVENTIVO  : string;
    EXAMESPREVENTIVO   : string;
    PARENTES           : array of TPacienteparentes;
    BOPOSSUIPARENTEVALE: string;
    GRAUINSTRUCAO      : string;
    NMPARENTEVALE      : string;
    ENDERECO           : string;
    TELEFONE           : string;
    CELULAR            : string;
    BOVINCULORELIGIAO  : string;
    NMVINCULO          : string;
    DSPARECER          : string;
  end;
  TPacienterimeiravez = record
    DSQPRINCIPAL    : string;
    DSHISTDOENCAAT  : string;
    BOVIROSE        : string;
    NMVIROSE        : string;
    BOALERGIA       : string;
    NMALERGIA       : string;
    BOCIRRURGIA     : string;
    NMCIRRURGIA     : string;
    BOMEDICAMENTO   : string;
    NMMEDICAMENTO   : string;
    BOCARDIOPATIA   : string;
    BOCARDIOTRATA   : string;
    NMCARDIOPATIA   : string;
    BOPNEUMOPATIA   : string;
    BOPNEUMOTRATA   : string;
    NMPNEUMOPATIA   : string;
    BODST           : string;
    BODSTTRATA      : string;
    NMDST           : string;
    BOHPARTERIAL    : string;
    BOHPTRATA       : string;
    BODIABETE       : string;
    BODIATRATA      : string;
    BOTUBERCULOSE   : string;
    BOTUBERTRATA    : string;
    BOESQUITOSSOMOSE: string;
    BOESQUITRATA    : string;
    BOHEMOTRASNFUSAO: string;
    HEMOQUANDO      : string;
    DSOBSHPP        : string;
    BOTABAGISMO     : string;
    QTCIGARROS      : string;
    QTCIGPALHA      : string;
    QTCACHIMBO      : string;
    BOETILISMO      : string;
    QTETILISMO      : string;
    UNIDTPBEBIDA    : string;
    BOAGUAENCANADA  : string;
    BOTEMLUZ        : string;
    BOTEMESGOTO     : string;
    BOUSADROGAS     : string;
    NMTPDROGAS      : string;
    DSOBSHPS        : string;
    BODORME         : string;
    BOALIMENTA      : string;
    BOEVACUA        : string;
    BOMICCAO        : string;
    BOMENARCA       : string;
    BOMENOPAUSA     : string;
    MENARCA         : string;
    MENOPAUSA       : string;
    BOPAIVIVO       : string;
    BOPAISAUDADAVEL : string;
    CAUSAMORTEPAI   : string;
    BOMAEVIVA       : string;
    BOMAESAUDAVEL   : string;
    CAUSAMORTEMAE   : string;
    BOCANCERFAMILIA : string;
    DSCANCERPARENTE : string;
    DSOBSHF         : string;
    DSECTOSCOPIA    : string;
    PERFORMANCE     : string;
    PESO            : string;
    ALTURA          : string;
    DSCABECAPESCOSO : string;
    DSTORAX         : string;
    DSAPCARDIOCO    : string;
    PULSO           : string;
    TENSAODIAST     : string;
    TENSAOSIST      : string;
    DSABDOMEN       : string;
    DSMENBSUPERIOR  : string;
    DSMENBINFERIOR  : string;
    DSOBSEFGERAL    : string;
    DSOROSCOPIA     : string;
    DSLARINGOSPIA   : string;
    DSGINECOLOGIA   : string;
    DSPROCTOLOGICO  : string;
    DSMAMAESQUERDA  : string;
    DSMAMADIREITA   : string;
    DSAXILAS        : string;
    DSLINFONODOS    : string;
    DSOBSLOCO       : string;
  end;
  Tparentes = record
    NMPARENTE   : string;
    SEXO        : string;
    IDADE       : string;
    PARENTESCO  : string;
    NMPROFISSAO : string;
    VLSALARIO   : double;
  end;
  TDiagnostico = record
    NUDIAGTPI     : string;
    NUDIAGHISTTPI : string;
    DIAGTPI       : string;
    DIAGHISTTPI   : string;
    ESTTTPI       : string;
    ESTNTPI       : string;
    ESTMTPI       : string;
    ESTECTPI      : string;
    NUDIAGTPII    : string;
    NUDIAGHISTTPII: string;
    DIAGTPII      : string;
    DIAGHISTTPII  : string;
    ESTTTPII      : string;
    ESTNTPII      : string;
    ESTMTPII      : string;
    ESTECTPII     : string;
  end;
  TTabControle  = array [0..100, 0..100] of string;
  TFBStilo      = (fbThin, fbMedium);
  TFBLado       = (fbTop, fbBottom, fbLeft, fbRight);
  TFBStilos     = set of TFBStilo;
  TFBLados      = set of TFBLado;
  TSubTotal = record
    cdcfop     : string;
    vlcontabil : currency;
    vlbase     : currency;
    vlcredito  : currency;
    vlisentas  : currency;
    vloutras   : currency;
  end;
  TSubTotalA = array of TSubTotal;
  type
    Tacumula = record
      valor: currency;
      num  : string;
  end;
   TImposto = record
    al, vlcfop, vlbase, vloutras, vlisentas, vl, vlbcst, vlst, vlcontabil : currency;
    cdcfop : string;
    borecupera : boolean;
  end;
  Titufp1aA = record
    cduf : integer;
    tpsaient : string;
    vlcontabil, vlbase, vloutras, vlisentas, vlimposto : currency;
  end;
  Titufp1a = array of Titufp1aA;

implementation

end.
{unit utipo;

interface

uses Controls;

type
  TipoTabela = (ttReport, ttReportUser);
  TTarefa = record
    cdordproducao: string;
    cdequipamento: string;
    cdfuncionario: string;
    hrinicio : TTime;
    bohoraextra: Boolean;
  end;
  TItem = Record
    cod_item, descr_item, cod_barra, cod_ant_item, unid_inv, tipo_item, cod_ncm, ex_ipi, cod_gen, cod_lst, aliq_icms:string;
    aliq_icms_ : Double;
  end;
  TParticipante = record
    cod_part, nome, cnpj, cpf, ie, suframa:string;
    cdmunicipio, cduf, cdpais, dsendereco, dsnumero, dscomplemento, nmbairro, nmmunicipio, nucep, sguf, nucxpostal: string;
    cdmunicipioi: Integer;
  end;
  TUnidade = record
    unid, descr : string;
  end;
  TPacienteparentes = record
    NMPARENTE   : string;
    SEXO        : string;
    IDADE       : string;
    PARENTESCO  : string;
    NMPROFISSAO : string;
    VLSALARIO   : double;
  end;
  TPacienteservicosocial = record
    SITTRABALHISTA     : string;
    RAMOATIVIDADE      : string;
    TIPOMORADIA        : string;
    NUCOMODOS          : string;
    TPCONSTRUCAO       : string;
    CONDSANITARIA      : string;
    VLSALARIO          : double;
    VLLUZ              : double;
    VLAGUA             : double;
    VLALUGUEL          : double;
    VLALIMENTACAO      : double;
    BOANTECEONCOLOGICO : string;
    BOEXAMEPREVENTIVO  : string;
    EXAMESPREVENTIVO   : string;
    PARENTES           : array of TPacienteparentes;
    BOPOSSUIPARENTEVALE: string;
    GRAUINSTRUCAO      : string;
    NMPARENTEVALE      : string;
    ENDERECO           : string;
    TELEFONE           : string;
    CELULAR            : string;
    BOVINCULORELIGIAO  : string;
    NMVINCULO          : string;
    DSPARECER          : string;
  end;
  TPacienterimeiravez = record
    DSQPRINCIPAL    : string;
    DSHISTDOENCAAT  : string;
    BOVIROSE        : string;
    NMVIROSE        : string;
    BOALERGIA       : string;
    NMALERGIA       : string;
    BOCIRRURGIA     : string;
    NMCIRRURGIA     : string;
    BOMEDICAMENTO   : string;
    NMMEDICAMENTO   : string;
    BOCARDIOPATIA   : string;
    BOCARDIOTRATA   : string;
    NMCARDIOPATIA   : string;
    BOPNEUMOPATIA   : string;
    BOPNEUMOTRATA   : string;
    NMPNEUMOPATIA   : string;
    BODST           : string;
    BODSTTRATA      : string;
    NMDST           : string;
    BOHPARTERIAL    : string;
    BOHPTRATA       : string;
    BODIABETE       : string;
    BODIATRATA      : string;
    BOTUBERCULOSE   : string;
    BOTUBERTRATA    : string;
    BOESQUITOSSOMOSE: string;
    BOESQUITRATA    : string;
    BOHEMOTRASNFUSAO: string;
    HEMOQUANDO      : string;
    DSOBSHPP        : string;
    BOTABAGISMO     : string;
    QTCIGARROS      : string;
    QTCIGPALHA      : string;
    QTCACHIMBO      : string;
    BOETILISMO      : string;
    QTETILISMO      : string;
    UNIDTPBEBIDA    : string;
    BOAGUAENCANADA  : string;
    BOTEMLUZ        : string;
    BOTEMESGOTO     : string;
    BOUSADROGAS     : string;
    NMTPDROGAS      : string;
    DSOBSHPS        : string;
    BODORME         : string;
    BOALIMENTA      : string;
    BOEVACUA        : string;
    BOMICCAO        : string;
    BOMENARCA       : string;
    BOMENOPAUSA     : string;
    MENARCA         : string;
    MENOPAUSA       : string;
    BOPAIVIVO       : string;
    BOPAISAUDADAVEL : string;
    CAUSAMORTEPAI   : string;
    BOMAEVIVA       : string;
    BOMAESAUDAVEL   : string;
    CAUSAMORTEMAE   : string;
    BOCANCERFAMILIA : string;
    DSCANCERPARENTE : string;
    DSOBSHF         : string;
    DSECTOSCOPIA    : string;
    PERFORMANCE     : string;
    PESO            : string;
    ALTURA          : string;
    DSCABECAPESCOSO : string;
    DSTORAX         : string;
    DSAPCARDIOCO    : string;
    PULSO           : string;
    TENSAODIAST     : string;
    TENSAOSIST      : string;
    DSABDOMEN       : string;
    DSMENBSUPERIOR  : string;
    DSMENBINFERIOR  : string;
    DSOBSEFGERAL    : string;
    DSOROSCOPIA     : string;
    DSLARINGOSPIA   : string;
    DSGINECOLOGIA   : string;
    DSPROCTOLOGICO  : string;
    DSMAMAESQUERDA  : string;
    DSMAMADIREITA   : string;
    DSAXILAS        : string;
    DSLINFONODOS    : string;
    DSOBSLOCO       : string;
  end;
  Tparentes = record
    NMPARENTE   : string;
    SEXO        : string;
    IDADE       : string;
    PARENTESCO  : string;
    NMPROFISSAO : string;
    VLSALARIO   : double;
  end;
  TDiagnostico = record
    NUDIAGTPI     : string;
    NUDIAGHISTTPI : string;
    DIAGTPI       : string;
    DIAGHISTTPI   : string;
    ESTTTPI       : string;
    ESTNTPI       : string;
    ESTMTPI       : string;
    ESTECTPI      : string;
    NUDIAGTPII    : string;
    NUDIAGHISTTPII: string;
    DIAGTPII      : string;
    DIAGHISTTPII  : string;
    ESTTTPII      : string;
    ESTNTPII      : string;
    ESTMTPII      : string;
    ESTECTPII     : string;
  end;
  TTabControle  = array [0..100, 0..100] of string;
  TFBStilo      = (fbThin, fbMedium);
  TFBLado       = (fbTop, fbBottom, fbLeft, fbRight);
  TFBStilos     = set of TFBStilo;
  TFBLados      = set of TFBLado;
  TSubTotal = record
    cdcfop     : integer;
    vlcontabil : currency;
    vlbase     : currency;
    vlimposto  : currency;
    vlisentas  : currency;
    vloutras   : currency;
  end;
  TSubTotalA = array of TSubTotal;
  type
    Tacumula = record
      valor: currency;
      num  : Integer;
  end;
   TImposto = record
    al : currency;
    vlcfop : currency;
    vlbase : currency;
    vloutras : currency;
    vlisentas : currency;
    vl : currency;
    vlbcst : currency;
    vlst : currency;
    vlcontabil : currency;
    cdcfop : integer;
    borecupera : boolean;
  end;

implementation

end.
}
